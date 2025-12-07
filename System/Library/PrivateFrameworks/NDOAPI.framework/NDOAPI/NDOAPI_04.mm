uint64_t sub_22DE511C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DDF2564(&qword_27DA382C0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE51264(uint64_t a1)
{
  v2 = sub_22DDF2564(&qword_27DA381E0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE512D0(uint64_t a1, uint64_t a2)
{
  sub_22DDF2564(&qword_27DA381E0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData);

  return sub_22DEC4A44();
}

uint64_t sub_22DE513AC()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA37FF0);
  __swift_project_value_buffer(v0, qword_27DA37FF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC7C40;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "dismiss_sheet_title";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "dismiss_sheet_content";
  *(v10 + 8) = 21;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "accept_action";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "dismiss_action";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "reject_action";
  *(v15 + 8) = 13;
  *(v15 + 16) = 2;
  v9();
  return sub_22DEC4AF4();
}

uint64_t sub_22DE51664()
{
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  v1 = OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__acceptAction;
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__dismissAction, 1, 1, v2);
  result = (v3)(v0 + OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__rejectAction, 1, 1, v2);
  qword_27DA38008 = v0;
  return result;
}

uint64_t sub_22DE5174C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D88, &unk_22DEC8210);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - v4;
  *(v1 + 32) = 0u;
  *(v1 + 16) = 0u;
  v6 = OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__acceptAction;
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v8 = *(*(v7 - 8) + 56);
  v8(v1 + v6, 1, 1, v7);
  v9 = OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__dismissAction;
  v8(v1 + OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__dismissAction, 1, 1, v7);
  v19 = OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__rejectAction;
  v8(v1 + OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__rejectAction, 1, 1, v7);
  swift_beginAccess();
  v10 = a1[2];
  v11 = a1[3];
  swift_beginAccess();
  *(v1 + 16) = v10;
  *(v1 + 24) = v11;
  swift_beginAccess();
  v12 = a1[4];
  v13 = a1[5];
  swift_beginAccess();
  *(v1 + 32) = v12;
  *(v1 + 40) = v13;
  v14 = OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__acceptAction;
  swift_beginAccess();
  sub_22DDF0028(a1 + v14, v5, &qword_27DA37D88, &unk_22DEC8210);
  swift_beginAccess();

  sub_22DDF0208(v5, v1 + v6, &qword_27DA37D88, &unk_22DEC8210);
  swift_endAccess();
  v15 = OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__dismissAction;
  swift_beginAccess();
  sub_22DDF0028(a1 + v15, v5, &qword_27DA37D88, &unk_22DEC8210);
  swift_beginAccess();
  sub_22DDF0208(v5, v1 + v9, &qword_27DA37D88, &unk_22DEC8210);
  swift_endAccess();
  v16 = OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__rejectAction;
  swift_beginAccess();
  sub_22DDF0028(a1 + v16, v5, &qword_27DA37D88, &unk_22DEC8210);

  v17 = v19;
  swift_beginAccess();
  sub_22DDF0208(v5, v1 + v17, &qword_27DA37D88, &unk_22DEC8210);
  swift_endAccess();
  return v1;
}

uint64_t sub_22DE51A4C()
{

  sub_22DDEF284(v0 + OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__acceptAction, &qword_27DA37D88, &unk_22DEC8210);
  sub_22DDEF284(v0 + OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__dismissAction, &qword_27DA37D88, &unk_22DEC8210);
  sub_22DDEF284(v0 + OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__rejectAction, &qword_27DA37D88, &unk_22DEC8210);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_22DE51B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_22DEC4954();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        sub_22DDF03C8(a2, a1, a3, a4);
      }

      else if (result == 2)
      {
        sub_22DDF044C(a2, a1, a3, a4);
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          sub_22DE51C88(a2, a1, a3, a4);
          break;
        case 4:
          sub_22DE51D64(a2, a1, a3, a4);
          break;
        case 5:
          sub_22DE51E40(a2, a1, a3, a4);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_22DE51C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  sub_22DDF2564(&qword_28145D7E0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  sub_22DEC49E4();
  return swift_endAccess();
}

uint64_t sub_22DE51D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  sub_22DDF2564(&qword_28145D7E0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  sub_22DEC49E4();
  return swift_endAccess();
}

uint64_t sub_22DE51E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  sub_22DDF2564(&qword_28145D7E0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  sub_22DEC49E4();
  return swift_endAccess();
}

uint64_t sub_22DE51F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_22DE51FF4(a1, a2, a3, a4);
  if (!v4)
  {
    sub_22DE52090(a1, a2, a3, a4);
    sub_22DE5212C(a1, a2, a3, a4);
    sub_22DE52354(a1, a2, a3, a4);
    return sub_22DE5257C(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_22DE51FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 24))
  {

    sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE52090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 40))
  {

    sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE5212C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D88, &unk_22DEC8210);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__acceptAction;
  swift_beginAccess();
  sub_22DDF0028(a1 + v12, v7, &qword_27DA37D88, &unk_22DEC8210);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22DDEF284(v7, &qword_27DA37D88, &unk_22DEC8210);
  }

  sub_22DE4633C(v7, v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  sub_22DDF2564(&qword_28145D7E0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  sub_22DEC4AD4();
  return sub_22DE58C34(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
}

uint64_t sub_22DE52354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D88, &unk_22DEC8210);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__dismissAction;
  swift_beginAccess();
  sub_22DDF0028(a1 + v12, v7, &qword_27DA37D88, &unk_22DEC8210);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22DDEF284(v7, &qword_27DA37D88, &unk_22DEC8210);
  }

  sub_22DE4633C(v7, v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  sub_22DDF2564(&qword_28145D7E0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  sub_22DEC4AD4();
  return sub_22DE58C34(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
}

uint64_t sub_22DE5257C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D88, &unk_22DEC8210);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__rejectAction;
  swift_beginAccess();
  sub_22DDF0028(a1 + v12, v7, &qword_27DA37D88, &unk_22DEC8210);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22DDEF284(v7, &qword_27DA37D88, &unk_22DEC8210);
  }

  sub_22DE4633C(v7, v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  sub_22DDF2564(&qword_28145D7E0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  sub_22DEC4AD4();
  return sub_22DE58C34(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
}

BOOL sub_22DE527E8(void *a1, void *a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v81 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v70[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38310, &unk_22DECA250);
  v7 = MEMORY[0x28223BE20](v80);
  v9 = &v70[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x28223BE20](v7);
  v78 = &v70[-v11];
  MEMORY[0x28223BE20](v10);
  v13 = &v70[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D88, &unk_22DEC8210);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v75 = &v70[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v15);
  v76 = &v70[-v18];
  v19 = MEMORY[0x28223BE20](v17);
  v77 = &v70[-v20];
  v21 = MEMORY[0x28223BE20](v19);
  v79 = &v70[-v22];
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v70[-v24];
  MEMORY[0x28223BE20](v23);
  v27 = &v70[-v26];
  swift_beginAccess();
  v28 = a1[2];
  v29 = a1[3];
  swift_beginAccess();
  v30 = a2[3];
  if (v29)
  {
    if (!v30 || (v28 != a2[2] || v29 != v30) && (sub_22DEC50E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v30)
  {
    return 0;
  }

  swift_beginAccess();
  v31 = a1[4];
  v32 = a1[5];
  swift_beginAccess();
  v33 = a2[5];
  if (v32)
  {
    if (!v33 || (v31 != a2[4] || v32 != v33) && (sub_22DEC50E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v33)
  {
    return 0;
  }

  v74 = v6;
  v73 = v9;
  v34 = v4;
  v35 = OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__acceptAction;
  swift_beginAccess();
  sub_22DDF0028(a1 + v35, v27, &qword_27DA37D88, &unk_22DEC8210);
  v36 = OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__acceptAction;
  swift_beginAccess();
  v37 = *(v80 + 48);
  sub_22DDF0028(v27, v13, &qword_27DA37D88, &unk_22DEC8210);
  v38 = a2 + v36;
  v39 = v34;
  sub_22DDF0028(v38, &v13[v37], &qword_27DA37D88, &unk_22DEC8210);
  v41 = v81 + 48;
  v40 = *(v81 + 48);
  if (v40(v13, 1, v39) == 1)
  {

    sub_22DDEF284(v27, &qword_27DA37D88, &unk_22DEC8210);
    if (v40(&v13[v37], 1, v39) == 1)
    {
      v72 = v40;
      v81 = v41;
      sub_22DDEF284(v13, &qword_27DA37D88, &unk_22DEC8210);
      goto LABEL_22;
    }

LABEL_20:
    v44 = v13;
LABEL_28:
    sub_22DDEF284(v44, &qword_27DA38310, &unk_22DECA250);
    goto LABEL_29;
  }

  sub_22DDF0028(v13, v25, &qword_27DA37D88, &unk_22DEC8210);
  v42 = v40(&v13[v37], 1, v39);
  v43 = v74;
  if (v42 == 1)
  {

    sub_22DDEF284(v27, &qword_27DA37D88, &unk_22DEC8210);
    sub_22DE58C34(v25, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    goto LABEL_20;
  }

  v72 = v40;
  v81 = v41;
  sub_22DE4633C(&v13[v37], v74, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);

  v45 = static Com_Apple_Sse_Ocean_Ndo_Api_CTLink.== infix(_:_:)(v25, v43);
  sub_22DE58C34(v43, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  sub_22DDEF284(v27, &qword_27DA37D88, &unk_22DEC8210);
  sub_22DE58C34(v25, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  sub_22DDEF284(v13, &qword_27DA37D88, &unk_22DEC8210);
  if ((v45 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_22:
  v46 = OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__dismissAction;
  swift_beginAccess();
  v47 = v39;
  v48 = v79;
  sub_22DDF0028(a1 + v46, v79, &qword_27DA37D88, &unk_22DEC8210);
  v49 = OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__dismissAction;
  swift_beginAccess();
  v50 = *(v80 + 48);
  v51 = v78;
  sub_22DDF0028(v48, v78, &qword_27DA37D88, &unk_22DEC8210);
  v52 = v51;
  sub_22DDF0028(a2 + v49, &v51[v50], &qword_27DA37D88, &unk_22DEC8210);
  v53 = v81;
  v54 = v72;
  if (v72(v51, 1, v47) != 1)
  {
    v58 = v77;
    sub_22DDF0028(v51, v77, &qword_27DA37D88, &unk_22DEC8210);
    v59 = v54(&v51[v50], 1, v47);
    v56 = v73;
    if (v59 == 1)
    {
      sub_22DDEF284(v79, &qword_27DA37D88, &unk_22DEC8210);
      sub_22DE58C34(v58, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
      goto LABEL_27;
    }

    v57 = v47;
    v81 = v53;
    v61 = v74;
    sub_22DE4633C(v52 + v50, v74, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    v71 = static Com_Apple_Sse_Ocean_Ndo_Api_CTLink.== infix(_:_:)(v58, v61);
    sub_22DE58C34(v61, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    sub_22DDEF284(v79, &qword_27DA37D88, &unk_22DEC8210);
    sub_22DE58C34(v58, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    sub_22DDEF284(v52, &qword_27DA37D88, &unk_22DEC8210);
    if (v71)
    {
      goto LABEL_33;
    }

LABEL_29:

    return 0;
  }

  sub_22DDEF284(v48, &qword_27DA37D88, &unk_22DEC8210);
  v55 = v54(&v51[v50], 1, v47);
  v56 = v73;
  if (v55 != 1)
  {
LABEL_27:
    v44 = v52;
    goto LABEL_28;
  }

  v57 = v47;
  v81 = v53;
  sub_22DDEF284(v52, &qword_27DA37D88, &unk_22DEC8210);
LABEL_33:
  v62 = OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__rejectAction;
  swift_beginAccess();
  v63 = v76;
  sub_22DDF0028(a1 + v62, v76, &qword_27DA37D88, &unk_22DEC8210);
  v64 = OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__rejectAction;
  swift_beginAccess();
  v65 = *(v80 + 48);
  sub_22DDF0028(v63, v56, &qword_27DA37D88, &unk_22DEC8210);
  sub_22DDF0028(a2 + v64, v56 + v65, &qword_27DA37D88, &unk_22DEC8210);
  v66 = v72;
  if (v72(v56, 1, v57) == 1)
  {

    sub_22DDEF284(v63, &qword_27DA37D88, &unk_22DEC8210);
    if (v66(v56 + v65, 1, v57) == 1)
    {
      sub_22DDEF284(v56, &qword_27DA37D88, &unk_22DEC8210);
      return 1;
    }

    goto LABEL_38;
  }

  v67 = v75;
  sub_22DDF0028(v56, v75, &qword_27DA37D88, &unk_22DEC8210);
  if (v66(v56 + v65, 1, v57) == 1)
  {

    sub_22DDEF284(v63, &qword_27DA37D88, &unk_22DEC8210);
    sub_22DE58C34(v67, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
LABEL_38:
    sub_22DDEF284(v56, &qword_27DA38310, &unk_22DECA250);
    return 0;
  }

  v68 = v74;
  sub_22DE4633C(v56 + v65, v74, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  v69 = static Com_Apple_Sse_Ocean_Ndo_Api_CTLink.== infix(_:_:)(v67, v68);

  sub_22DE58C34(v68, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  sub_22DDEF284(v63, &qword_27DA37D88, &unk_22DEC8210);
  sub_22DE58C34(v67, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  sub_22DDEF284(v56, &qword_27DA37D88, &unk_22DEC8210);
  return (v69 & 1) != 0;
}

uint64_t sub_22DE533A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DDF2564(&qword_27DA382B8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE53440(uint64_t a1)
{
  v2 = sub_22DDF2564(&qword_27DA381F8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE534AC(uint64_t a1, uint64_t a2)
{
  sub_22DDF2564(&qword_27DA381F8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData);

  return sub_22DEC4A44();
}

uint64_t sub_22DE53588()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA38010);
  __swift_project_value_buffer(v0, qword_27DA38010);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC81D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "follow_up_id";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "follow_up_client";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_22DEC4954();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData(0);
        sub_22DEC49C4();
      }

      else if (result == 2)
      {
        sub_22DE53860(a1, v5, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData, sub_22DE5BCA4, &type metadata for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpClient);
      }

      result = sub_22DEC4954();
    }
  }

  return result;
}

uint64_t sub_22DE53860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t a7)
{
  a5(0);
  a6();
  return sub_22DEC4984();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DE546D4(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData);
  if (!v4)
  {
    sub_22DE5396C(v3, a1, a2, a3);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DE5396C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData(0);
  if (*(a1 + *(result + 24)) != 2)
  {
    sub_22DE5BCA4();
    return sub_22DEC4A74();
  }

  return result;
}

uint64_t sub_22DE53A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v5 = *(a1 + 24);
  v6 = (a2 + *(a1 + 20));
  *v6 = 0;
  v6[1] = 0;
  *(a2 + v5) = 2;
  return result;
}

uint64_t sub_22DE53ACC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DDF2564(&qword_27DA382B0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE53B6C(uint64_t a1)
{
  v2 = sub_22DDF2564(&qword_27DA38210, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE53BD8(uint64_t a1, uint64_t a2)
{
  sub_22DDF2564(&qword_27DA38210, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData);

  return sub_22DEC4A44();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CoverageData.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_22DEC4954();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_22DEC49B4();
    }
  }

  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CoverageData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (result = sub_22DEC4AA4(), !v4))
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageData(0);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DE53E3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DDF2564(&qword_27DA382A8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE53EDC(uint64_t a1)
{
  v2 = sub_22DDF2564(&qword_28145C558, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE53F48(uint64_t a1, uint64_t a2)
{
  sub_22DDF2564(&qword_28145C558, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageData);

  return sub_22DEC4A44();
}

uint64_t sub_22DE53FC4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_22DE2F604(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  sub_22DEC48B4();
  sub_22DDF2564(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22DEC4BF4() & 1;
}

uint64_t sub_22DE54088()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA38028);
  __swift_project_value_buffer(v0, qword_27DA38028);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_22DEC81E0;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "notification_id";
  *(v4 + 8) = 15;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21888];
  v6 = sub_22DEC4AE4();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "header";
  *(v8 + 8) = 6;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "title";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "body";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "footer";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "interruption_level";
  *(v16 + 1) = 18;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "action_url";
  *(v18 + 1) = 10;
  v18[16] = 2;
  v7();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_NotificationData.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_22DEC4954();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result <= 3)
    {
      if (result == 1 || result == 2 || result == 3)
      {
LABEL_2:
        type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData(0);
        sub_22DEC49C4();
      }
    }

    else
    {
      if (result <= 5)
      {
        goto LABEL_2;
      }

      if (result == 6)
      {
        sub_22DE54508(a1, v5, a2, a3);
      }

      else if (result == 7)
      {
        goto LABEL_2;
      }
    }
  }
}

uint64_t sub_22DE54508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData(0);
  sub_22DE5BC50();
  return sub_22DEC4984();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_NotificationData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DE546D4(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData);
  if (!v4)
  {
    sub_22DE54750(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData);
    sub_22DE4DD64(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData, 3);
    sub_22DE4DDE8(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData, 4);
    sub_22DE547CC(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData, 5);
    sub_22DE54850(v3, a1, a2, a3);
    sub_22DE548DC(v3, a1, a2, a3);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DE546D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 20) + 8))
  {
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE54750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 24) + 8))
  {
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE547CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  result = a5(0);
  if (*(a1 + *(result + 36) + 8))
  {
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE54850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData(0);
  if (*(a1 + *(result + 40)) != 4)
  {
    sub_22DE5BC50();
    return sub_22DEC4A74();
  }

  return result;
}

uint64_t sub_22DE548DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData(0);
  if (*(a1 + *(result + 44) + 8))
  {
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE5499C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  v8 = a1[8];
  v9 = (a2 + a1[7]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a2 + v8);
  *v10 = 0;
  v10[1] = 0;
  v11 = a1[10];
  v12 = (a2 + a1[9]);
  *v12 = 0;
  v12[1] = 0;
  *(a2 + v11) = 4;
  v13 = (a2 + a1[11]);
  *v13 = 0;
  v13[1] = 0;
  return result;
}

uint64_t sub_22DE54A58(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DDF2564(&qword_27DA382A0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE54AF8(uint64_t a1)
{
  v2 = sub_22DDF2564(&qword_27DA38230, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE54B64(uint64_t a1, uint64_t a2)
{
  sub_22DDF2564(&qword_27DA38230, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData);

  return sub_22DEC4A44();
}

uint64_t sub_22DE54C00()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA38040);
  __swift_project_value_buffer(v0, qword_27DA38040);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC81D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "title";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "action_url";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_22DEC4954();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData(0);
      sub_22DEC49C4();
    }
  }

  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DE546D4(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
  if (!v4)
  {
    sub_22DE54750(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DE54F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v5 = *(a1 + 24);
  v6 = (a2 + *(a1 + 20));
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t sub_22DE55008(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DDF2564(&qword_27DA38298, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE550A8(uint64_t a1)
{
  v2 = sub_22DDF2564(&qword_27DA38248, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE55114(uint64_t a1, uint64_t a2)
{
  sub_22DDF2564(&qword_27DA38248, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);

  return sub_22DEC4A44();
}

uint64_t sub_22DE551B0()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA38058);
  __swift_project_value_buffer(v0, qword_27DA38058);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_22DEC7C40;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "alert_id";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = sub_22DEC4AE4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "title";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "message";
  *(v11 + 1) = 7;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "default_button";
  *(v13 + 1) = 14;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "alternate_button";
  *(v14 + 8) = 16;
  *(v14 + 16) = 2;
  v8();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AlertData.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_22DEC4954();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1 || result == 2)
      {
LABEL_2:
        type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData(0);
        sub_22DEC49C4();
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          goto LABEL_2;
        case 4:
          sub_22DE55584(a1, v5, a2, a3);
          break;
        case 5:
          sub_22DE55638(a1, v5, a2, a3);
          break;
      }
    }
  }
}

uint64_t sub_22DE55584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData(0);
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData(0);
  sub_22DDF2564(&qword_27DA38248, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
  return sub_22DEC49E4();
}

uint64_t sub_22DE55638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData(0);
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData(0);
  sub_22DDF2564(&qword_27DA38248, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
  return sub_22DEC49E4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AlertData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DE546D4(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData);
  if (!v4)
  {
    sub_22DE54750(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData);
    sub_22DE4DD64(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData, 3);
    sub_22DE557E4(v3, a1, a2, a3);
    sub_22DE55A00(v3, a1, a2, a3);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DE557E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37C10, &unk_22DEC7590);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData(0);
  sub_22DDF0028(a1 + *(v12 + 32), v7, &qword_27DA37C10, &unk_22DEC7590);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22DDEF284(v7, &qword_27DA37C10, &unk_22DEC7590);
  }

  sub_22DE4633C(v7, v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
  sub_22DDF2564(&qword_27DA38248, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
  sub_22DEC4AD4();
  return sub_22DE58C34(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
}

uint64_t sub_22DE55A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37C10, &unk_22DEC7590);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData(0);
  sub_22DDF0028(a1 + *(v12 + 36), v7, &qword_27DA37C10, &unk_22DEC7590);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22DDEF284(v7, &qword_27DA37C10, &unk_22DEC7590);
  }

  sub_22DE4633C(v7, v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
  sub_22DDF2564(&qword_27DA38248, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
  sub_22DEC4AD4();
  return sub_22DE58C34(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
}

uint64_t sub_22DE55C64@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v4 = a1[6];
  v5 = (a2 + a1[5]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a2 + v4);
  *v6 = 0;
  v6[1] = 0;
  v7 = a1[8];
  v8 = (a2 + a1[7]);
  *v8 = 0;
  v8[1] = 0;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData(0);
  v12 = *(*(v9 - 8) + 56);
  (v12)((v9 - 8), a2 + v7, 1, 1, v9);
  v10 = a2 + a1[9];

  return v12(v10, 1, 1, v9);
}

uint64_t sub_22DE55D84(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DDF2564(&qword_27DA38290, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE55E24(uint64_t a1)
{
  v2 = sub_22DDF2564(&qword_27DA38260, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE55E90(uint64_t a1, uint64_t a2)
{
  sub_22DDF2564(&qword_27DA38260, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData);

  return sub_22DEC4A44();
}

uint64_t sub_22DE55F44(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v9 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22DEC5F50;
  v11 = v10 + v9 + v8[14];
  *(v10 + v9) = 1;
  *v11 = a3;
  *(v11 + 8) = a4;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x277D21888];
  v13 = sub_22DEC4AE4();
  (*(*(v13 - 8) + 104))(v11, v12, v13);
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_22DEC4954();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData(0);
      sub_22DEC49C4();
    }
  }

  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DE546D4(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData);
  if (!v4)
  {
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DE56214(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_22DEC5184();
  a1(0);
  sub_22DDF2564(a2, a3, a4);
  sub_22DEC4BE4();
  return sub_22DEC51A4();
}

uint64_t sub_22DE5629C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v5 = (a2 + *(a1 + 20));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t sub_22DE5631C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DDF2564(&qword_27DA38288, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE563BC(uint64_t a1)
{
  v2 = sub_22DDF2564(&qword_27DA38278, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE56428(uint64_t a1, uint64_t a2)
{
  sub_22DDF2564(&qword_27DA38278, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData);

  return sub_22DEC4A44();
}

uint64_t _s6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData(0);
  v5 = *(v4 + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_22DEC50E4();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }

LABEL_10:
    v13 = *(v4 + 24);
    v14 = *(a1 + v13);
    v15 = *(a2 + v13);
    if (v14 == 2)
    {
      if (v15 != 2)
      {
        return 0;
      }
    }

    else if (v15 == 2 || ((v15 ^ v14) & 1) != 0)
    {
      return 0;
    }

    sub_22DEC48B4();
    sub_22DDF2564(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_22DEC4BF4() & 1;
  }

  if (!v9)
  {
    goto LABEL_10;
  }

  return 0;
}

uint64_t _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData(0) + 20);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = v7[1];
  if (v6)
  {
    if (v8)
    {
      v9 = *v5 == *v7 && v6 == v8;
      if (v9 || (sub_22DEC50E4() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!v8)
  {
LABEL_8:
    sub_22DEC48B4();
    sub_22DDF2564(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_22DEC4BF4() & 1;
  }

  return 0;
}

uint64_t _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_NotificationDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_22DEC50E4();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }

    if (*v14 != *v16 || v15 != v17)
    {
      v19 = v4;
      v20 = sub_22DEC50E4();
      v4 = v19;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  v21 = v4[7];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (v23)
  {
    if (!v25)
    {
      return 0;
    }

    if (*v22 != *v24 || v23 != v25)
    {
      v27 = v4;
      v28 = sub_22DEC50E4();
      v4 = v27;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v25)
  {
    return 0;
  }

  v29 = v4[8];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  v33 = v32[1];
  if (v31)
  {
    if (!v33)
    {
      return 0;
    }

    if (*v30 != *v32 || v31 != v33)
    {
      v35 = v4;
      v36 = sub_22DEC50E4();
      v4 = v35;
      if ((v36 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v33)
  {
    return 0;
  }

  v37 = v4[9];
  v38 = (a1 + v37);
  v39 = *(a1 + v37 + 8);
  v40 = (a2 + v37);
  v41 = v40[1];
  if (v39)
  {
    if (!v41)
    {
      return 0;
    }

    if (*v38 != *v40 || v39 != v41)
    {
      v42 = v4;
      v43 = sub_22DEC50E4();
      v4 = v42;
      if ((v43 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v41)
  {
    return 0;
  }

  v44 = v4[10];
  v45 = *(a1 + v44);
  v46 = *(a2 + v44);
  if (v45 == 4)
  {
    if (v46 != 4)
    {
      return 0;
    }
  }

  else if (v45 != v46)
  {
    return 0;
  }

  v47 = v4[11];
  v48 = (a1 + v47);
  v49 = *(a1 + v47 + 8);
  v50 = (a2 + v47);
  v51 = v50[1];
  if (v49)
  {
    if (!v51 || (*v48 != *v50 || v49 != v51) && (sub_22DEC50E4() & 1) == 0)
    {
      return 0;
    }

LABEL_53:
    sub_22DEC48B4();
    sub_22DDF2564(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_22DEC4BF4() & 1;
  }

  if (!v51)
  {
    goto LABEL_53;
  }

  return 0;
}

uint64_t _s6NDOAPI42Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequestV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest(0);
  v5 = *(v4 + 24);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 7)
  {
    if (v7 != 7)
    {
      return 0;
    }
  }

  else if (v7 == 7 || qword_22DECA2E0[v6] != qword_22DECA2E0[v7])
  {
    return 0;
  }

  v8 = *(v4 + 28);
  v9 = (a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  v12 = v11[1];
  if (v10)
  {
    if (!v12)
    {
      return 0;
    }

    if (*v9 != *v11 || v10 != v12)
    {
      v14 = v4;
      v15 = sub_22DEC50E4();
      v4 = v14;
      if ((v15 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v12)
  {
    return 0;
  }

  v16 = v4;
  if (sub_22DEAFB4C(*a1, *a2))
  {
    v17 = *(v16 + 32);
    v18 = (a1 + v17);
    v19 = *(a1 + v17 + 8);
    v20 = (a2 + v17);
    v21 = v20[1];
    if (v19)
    {
      if (!v21)
      {
        return 0;
      }

      v22 = *v18 == *v20 && v19 == v21;
      if (!v22 && (sub_22DEC50E4() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      sub_22DEC48B4();
      sub_22DDF2564(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      return sub_22DEC4BF4() & 1;
    }

    if (!v21)
    {
      goto LABEL_23;
    }
  }

  return 0;
}

uint64_t _s6NDOAPI43Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponseV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse(0) + 28);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = *(a2 + v4 + 8);
  if (v6)
  {
    if (!v8)
    {
      return 0;
    }
  }

  else
  {
    if (*v5 != *v7)
    {
      LOBYTE(v8) = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  if (sub_22DE30B30(*a1, *a2) & 1) != 0 && (sub_22DEAFE24(a1[1], a2[1]))
  {
    sub_22DEC48B4();
    sub_22DDF2564(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_22DEC4BF4() & 1;
  }

  return 0;
}

uint64_t _s6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_CIResponseV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v3 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse(0);
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x28223BE20](v3);
  v38 = (&v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BC8, qword_22DEC7358);
  MEMORY[0x28223BE20](v5 - 8);
  v39 = (&v37 - v6);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38348, &unk_22DECA290);
  MEMORY[0x28223BE20](v41);
  v44 = &v37 - v7;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38088, &unk_22DEC8220);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38350, &unk_22DED04F0);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v37 - v17;
  v40 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIResponse(0);
  v19 = *(v40 + 20);
  v20 = *(v16 + 56);
  v45 = a1;
  sub_22DDF0028(a1 + v19, v18, &qword_27DA38088, &unk_22DEC8220);
  sub_22DDF0028(v46 + v19, &v18[v20], &qword_27DA38088, &unk_22DEC8220);
  v21 = *(v9 + 48);
  if (v21(v18, 1, v8) != 1)
  {
    sub_22DDF0028(v18, v14, &qword_27DA38088, &unk_22DEC8220);
    if (v21(&v18[v20], 1, v8) != 1)
    {
      sub_22DE4633C(&v18[v20], v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
      v25 = static Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta.== infix(_:_:)(v14, v11);
      sub_22DE58C34(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
      sub_22DE58C34(v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
      sub_22DDEF284(v18, &qword_27DA38088, &unk_22DEC8220);
      if ((v25 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_22DE58C34(v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
LABEL_6:
    v22 = &qword_27DA38350;
    v23 = &unk_22DED04F0;
    v24 = v18;
LABEL_14:
    sub_22DDEF284(v24, v22, v23);
    goto LABEL_15;
  }

  if (v21(&v18[v20], 1, v8) != 1)
  {
    goto LABEL_6;
  }

  sub_22DDEF284(v18, &qword_27DA38088, &unk_22DEC8220);
LABEL_8:
  v26 = *(v40 + 24);
  v27 = *(v41 + 48);
  v28 = v44;
  sub_22DDF0028(v45 + v26, v44, &qword_27DA37BC8, qword_22DEC7358);
  sub_22DDF0028(v46 + v26, v28 + v27, &qword_27DA37BC8, qword_22DEC7358);
  v29 = v43;
  v30 = *(v42 + 48);
  if (v30(v28, 1, v43) == 1)
  {
    if (v30(v28 + v27, 1, v29) == 1)
    {
      sub_22DDEF284(v28, &qword_27DA37BC8, qword_22DEC7358);
LABEL_18:
      sub_22DEC48B4();
      sub_22DDF2564(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v32 = sub_22DEC4BF4();
      return v32 & 1;
    }

    goto LABEL_13;
  }

  v31 = v39;
  sub_22DDF0028(v28, v39, &qword_27DA37BC8, qword_22DEC7358);
  if (v30(v28 + v27, 1, v29) == 1)
  {
    sub_22DE58C34(v31, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse);
LABEL_13:
    v22 = &qword_27DA38348;
    v23 = &unk_22DECA290;
    v24 = v28;
    goto LABEL_14;
  }

  v34 = v28 + v27;
  v35 = v38;
  sub_22DE4633C(v34, v38, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse);
  v36 = _s6NDOAPI43Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponseV2eeoiySbAC_ACtFZ_0(v31, v35);
  sub_22DE58C34(v35, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse);
  sub_22DE58C34(v31, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse);
  sub_22DDEF284(v28, &qword_27DA37BC8, qword_22DEC7358);
  if (v36)
  {
    goto LABEL_18;
  }

LABEL_15:
  v32 = 0;
  return v32 & 1;
}

uint64_t sub_22DE571E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = *(a3(0) + 20);
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);
  if (v8 != v9)
  {

    v10 = a4(v8, v9);

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  sub_22DEC48B4();
  sub_22DDF2564(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22DEC4BF4() & 1;
}

uint64_t _s6NDOAPI43Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData(0);
  v5 = *(v4 + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_22DEC50E4();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = *(v4 + 24);
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (v17)
    {
      v18 = *v14 == *v16 && v15 == v17;
      if (v18 || (sub_22DEC50E4() & 1) != 0)
      {
        goto LABEL_17;
      }
    }
  }

  else if (!v17)
  {
LABEL_17:
    sub_22DEC48B4();
    sub_22DDF2564(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_22DEC4BF4() & 1;
  }

  return 0;
}

uint64_t _s6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_AlertDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v62 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37C10, &unk_22DEC7590);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v57 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38370, &qword_22DECA2B8);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v57 - v17;
  v19 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData(0);
  v20 = v19[5];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = v23[1];
  if (v22)
  {
    if (!v24)
    {
      goto LABEL_38;
    }

    if (*v21 != *v23 || v22 != v24)
    {
      v61 = v18;
      v26 = v19;
      v27 = sub_22DEC50E4();
      v19 = v26;
      v18 = v61;
      if ((v27 & 1) == 0)
      {
        goto LABEL_38;
      }
    }
  }

  else if (v24)
  {
    goto LABEL_38;
  }

  v28 = v19[6];
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 8);
  v31 = (a2 + v28);
  v32 = v31[1];
  if (v30)
  {
    if (!v32)
    {
      goto LABEL_38;
    }

    if (*v29 != *v31 || v30 != v32)
    {
      v61 = v18;
      v33 = v19;
      v34 = sub_22DEC50E4();
      v19 = v33;
      v18 = v61;
      if ((v34 & 1) == 0)
      {
        goto LABEL_38;
      }
    }
  }

  else if (v32)
  {
    goto LABEL_38;
  }

  v35 = v19[7];
  v36 = (a1 + v35);
  v37 = *(a1 + v35 + 8);
  v38 = (a2 + v35);
  v39 = v38[1];
  if (v37)
  {
    if (!v39)
    {
      goto LABEL_38;
    }

    v61 = v5;
    if (*v36 != *v38 || v37 != v39)
    {
      v40 = v19;
      v41 = sub_22DEC50E4();
      v19 = v40;
      if ((v41 & 1) == 0)
      {
        goto LABEL_38;
      }
    }
  }

  else
  {
    v61 = v5;
    if (v39)
    {
      goto LABEL_38;
    }
  }

  v59 = v19;
  v42 = v19[8];
  v43 = *(v13 + 48);
  sub_22DDF0028(a1 + v42, v18, &qword_27DA37C10, &unk_22DEC7590);
  v60 = v43;
  sub_22DDF0028(a2 + v42, &v18[v43], &qword_27DA37C10, &unk_22DEC7590);
  v44 = v61 + 48;
  v45 = *(v61 + 6);
  if (v45(v18, 1, v4) != 1)
  {
    sub_22DDF0028(v18, v12, &qword_27DA37C10, &unk_22DEC7590);
    v58 = v45;
    v61 = v44;
    if (v45(&v18[v60], 1, v4) != 1)
    {
      v47 = v62;
      sub_22DE4633C(&v18[v60], v62, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
      v48 = _s6NDOAPI43Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonDataV2eeoiySbAC_ACtFZ_0(v12, v47);
      sub_22DE58C34(v47, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
      sub_22DE58C34(v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
      sub_22DDEF284(v18, &qword_27DA37C10, &unk_22DEC7590);
      if ((v48 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_31;
    }

    sub_22DE58C34(v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
LABEL_29:
    v46 = v18;
LABEL_37:
    sub_22DDEF284(v46, &qword_27DA38370, &qword_22DECA2B8);
    goto LABEL_38;
  }

  if (v45(&v18[v60], 1, v4) != 1)
  {
    goto LABEL_29;
  }

  v58 = v45;
  sub_22DDEF284(v18, &qword_27DA37C10, &unk_22DEC7590);
LABEL_31:
  v49 = v59[9];
  v50 = *(v13 + 48);
  sub_22DDF0028(a1 + v49, v16, &qword_27DA37C10, &unk_22DEC7590);
  sub_22DDF0028(a2 + v49, &v16[v50], &qword_27DA37C10, &unk_22DEC7590);
  v51 = v58;
  if (v58(v16, 1, v4) == 1)
  {
    if (v51(&v16[v50], 1, v4) == 1)
    {
      sub_22DDEF284(v16, &qword_27DA37C10, &unk_22DEC7590);
LABEL_41:
      sub_22DEC48B4();
      sub_22DDF2564(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v52 = sub_22DEC4BF4();
      return v52 & 1;
    }

    goto LABEL_36;
  }

  sub_22DDF0028(v16, v10, &qword_27DA37C10, &unk_22DEC7590);
  if (v51(&v16[v50], 1, v4) == 1)
  {
    sub_22DE58C34(v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
LABEL_36:
    v46 = v16;
    goto LABEL_37;
  }

  v54 = &v16[v50];
  v55 = v62;
  sub_22DE4633C(v54, v62, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
  v56 = _s6NDOAPI43Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonDataV2eeoiySbAC_ACtFZ_0(v10, v55);
  sub_22DE58C34(v55, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
  sub_22DE58C34(v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
  sub_22DDEF284(v16, &qword_27DA37C10, &unk_22DEC7590);
  if (v56)
  {
    goto LABEL_41;
  }

LABEL_38:
  v52 = 0;
  return v52 & 1;
}

uint64_t _s6NDOAPI34Com_Apple_Sse_Ocean_Ndo_Api_ActionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BC0, &qword_22DEC7350);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F58, &qword_22DEC8188);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action(0);
  v15 = v14[7];
  v16 = *(a1 + v15);
  v17 = *(a2 + v15);
  if (v16 == 7)
  {
    if (v17 != 7)
    {
      goto LABEL_11;
    }
  }

  else if (v16 != v17)
  {
    goto LABEL_11;
  }

  v18 = a1;
  v19 = *(v11 + 48);
  v27 = v18;
  sub_22DDF0028(v18, v13, &qword_27DA37BC0, &qword_22DEC7350);
  v28 = a2;
  sub_22DDF0028(a2, &v13[v19], &qword_27DA37BC0, &qword_22DEC7350);
  v20 = *(v5 + 48);
  if (v20(v13, 1, v4) != 1)
  {
    sub_22DDF0028(v13, v10, &qword_27DA37BC0, &qword_22DEC7350);
    if (v20(&v13[v19], 1, v4) != 1)
    {
      sub_22DE4633C(&v13[v19], v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
      v23 = _s6NDOAPI34Com_Apple_Sse_Ocean_Ndo_Api_ActionV06OneOf_H4DataO2eeoiySbAE_AEtFZ_0(v10, v7);
      sub_22DE58C34(v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
      sub_22DE58C34(v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
      sub_22DDEF284(v13, &qword_27DA37BC0, &qword_22DEC7350);
      if ((v23 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_14;
    }

    sub_22DE58C34(v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
LABEL_10:
    sub_22DDEF284(v13, &qword_27DA37F58, &qword_22DEC8188);
    goto LABEL_11;
  }

  if (v20(&v13[v19], 1, v4) != 1)
  {
    goto LABEL_10;
  }

  sub_22DDEF284(v13, &qword_27DA37BC0, &qword_22DEC7350);
LABEL_14:
  v24 = v14[8];
  v25 = *(v27 + v24);
  v26 = *(v28 + v24);
  if (v25 == 2)
  {
    if (v26 != 2)
    {
      goto LABEL_11;
    }
  }

  else if (v26 == 2 || ((v25 ^ v26) & 1) != 0)
  {
    goto LABEL_11;
  }

  if (sub_22DEAFB4C(*(v27 + v14[5]), *(v28 + v14[5])))
  {
    sub_22DEC48B4();
    sub_22DDF2564(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v21 = sub_22DEC4BF4();
    return v21 & 1;
  }

LABEL_11:
  v21 = 0;
  return v21 & 1;
}

uint64_t _s6NDOAPI50Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetailsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }
  }

  else if (v7 == 2 || ((v6 ^ v7) & 1) != 0)
  {
    return 0;
  }

  v8 = v4[6];
  v9 = (a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  v12 = v11[1];
  if (v10)
  {
    if (!v12)
    {
      return 0;
    }

    if (*v9 != *v11 || v10 != v12)
    {
      v14 = v4;
      v15 = sub_22DEC50E4();
      v4 = v14;
      if ((v15 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v12)
  {
    return 0;
  }

  v16 = v4[7];
  v17 = (a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  v20 = v19[1];
  if (v18)
  {
    if (!v20)
    {
      return 0;
    }

    if (*v17 != *v19 || v18 != v20)
    {
      v22 = v4;
      v23 = sub_22DEC50E4();
      v4 = v22;
      if ((v23 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v20)
  {
    return 0;
  }

  v24 = v4[8];
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 8);
  v27 = (a2 + v24);
  v28 = v27[1];
  if (v26)
  {
    if (!v28)
    {
      return 0;
    }

    if (*v25 != *v27 || v26 != v28)
    {
      v30 = v4;
      v31 = sub_22DEC50E4();
      v4 = v30;
      if ((v31 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v28)
  {
    return 0;
  }

  v32 = v4[9];
  v33 = (a1 + v32);
  v34 = *(a1 + v32 + 8);
  v35 = (a2 + v32);
  v36 = v35[1];
  if (v34)
  {
    if (!v36 || (*v33 != *v35 || v34 != v36) && (sub_22DEC50E4() & 1) == 0)
    {
      return 0;
    }

LABEL_38:
    sub_22DEC48B4();
    sub_22DDF2564(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_22DEC4BF4() & 1;
  }

  if (!v36)
  {
    goto LABEL_38;
  }

  return 0;
}

uint64_t _s6NDOAPI34Com_Apple_Sse_Ocean_Ndo_Api_ActionV06OneOf_H4DataO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v79 = a1;
  v80 = a2;
  v76 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData(0);
  MEMORY[0x28223BE20](v76);
  v77 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData(0);
  MEMORY[0x28223BE20](v3 - 8);
  v74 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData(0);
  MEMORY[0x28223BE20](v5 - 8);
  v73 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageData(0);
  MEMORY[0x28223BE20](v70);
  v75 = (&v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData(0);
  MEMORY[0x28223BE20](v8 - 8);
  v72 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0);
  MEMORY[0x28223BE20](v10);
  v71 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData(0);
  v13 = MEMORY[0x28223BE20](v12);
  v78 = (&v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v69 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v69 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = (&v69 - v22);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v69 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v69 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38388, &unk_22DECA2D0);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v32 = &v69 - v31;
  v33 = *(v30 + 56);
  sub_22DE58BCC(v79, &v69 - v31, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
  sub_22DE58BCC(v80, &v32[v33], type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_22DE58BCC(v32, v26, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v35 = &v32[v33];
          v36 = v72;
          sub_22DE4633C(v35, v72, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData);
          v37 = _s6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpDataV2eeoiySbAC_ACtFZ_0(v26, v36);
          v38 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData;
          sub_22DE58C34(v36, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData);
          v39 = v26;
LABEL_14:
          v41 = v38;
          goto LABEL_15;
        }

        v42 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData;
        v43 = v26;
        goto LABEL_33;
      }

      sub_22DE58BCC(v32, v23, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v46 = &v32[v33];
        v47 = v75;
        sub_22DE4633C(v46, v75, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageData);
        if (sub_22DE2F604(*v23, *v47))
        {
          sub_22DEC48B4();
          sub_22DDF2564(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
          if (sub_22DEC4BF4())
          {
            v48 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageData;
            v49 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageData;
            v50 = v47;
LABEL_43:
            sub_22DE58C34(v50, v48);
            v63 = v23;
            goto LABEL_44;
          }
        }

        v64 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageData;
        v65 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageData;
        v66 = v47;
        goto LABEL_46;
      }

      v57 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageData;
      goto LABEL_32;
    }

    sub_22DE58BCC(v32, v28, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
    if (!swift_getEnumCaseMultiPayload())
    {
      v58 = v71;
      sub_22DE4633C(&v32[v33], v71, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData);
      v59 = *(v10 + 20);
      v60 = *&v28[v59];
      v61 = *(v58 + v59);
      if (v60 == v61 || (, , v62 = sub_22DE503FC(v60, v61), , , v62))
      {
        sub_22DEC48B4();
        sub_22DDF2564(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        if (sub_22DEC4BF4())
        {
          v49 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData;
          sub_22DE58C34(v58, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData);
          v63 = v28;
LABEL_44:
          sub_22DE58C34(v63, v49);
          sub_22DE58C34(v32, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
          v37 = 1;
          return v37 & 1;
        }
      }

      v65 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData;
      sub_22DE58C34(v58, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData);
      v67 = v28;
LABEL_47:
      sub_22DE58C34(v67, v65);
      sub_22DE58C34(v32, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
      goto LABEL_48;
    }

    v42 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData;
    v43 = v28;
LABEL_33:
    sub_22DE58C34(v43, v42);
    sub_22DDEF284(v32, &qword_27DA38388, &unk_22DECA2D0);
LABEL_48:
    v37 = 0;
    return v37 & 1;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_22DE58BCC(v32, v20, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v44 = &v32[v33];
      v45 = v73;
      sub_22DE4633C(v44, v73, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData);
      v37 = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_NotificationDataV2eeoiySbAC_ACtFZ_0(v20, v45);
      v38 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData;
      sub_22DE58C34(v45, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData);
      v39 = v20;
      goto LABEL_14;
    }

    v42 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData;
    v43 = v20;
    goto LABEL_33;
  }

  if (EnumCaseMultiPayload != 4)
  {
    v23 = v78;
    sub_22DE58BCC(v32, v78, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      v57 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData;
LABEL_32:
      v42 = v57;
      v43 = v23;
      goto LABEL_33;
    }

    v51 = v77;
    sub_22DE4633C(&v32[v33], v77, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData);
    v52 = *(v76 + 20);
    v53 = (v23 + v52);
    v54 = *(v23 + v52 + 8);
    v55 = (v51 + v52);
    v56 = v55[1];
    if (v54)
    {
      if (!v56 || (*v53 != *v55 || v54 != v56) && (sub_22DEC50E4() & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    else if (v56)
    {
LABEL_45:
      v64 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData;
      v65 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData;
      v66 = v51;
LABEL_46:
      sub_22DE58C34(v66, v64);
      v67 = v23;
      goto LABEL_47;
    }

    sub_22DEC48B4();
    sub_22DDF2564(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    if (sub_22DEC4BF4())
    {
      v48 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData;
      v49 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData;
      v50 = v51;
      goto LABEL_43;
    }

    goto LABEL_45;
  }

  sub_22DE58BCC(v32, v17, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    v42 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData;
    v43 = v17;
    goto LABEL_33;
  }

  v40 = v74;
  sub_22DE4633C(&v32[v33], v74, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData);
  v37 = _s6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_AlertDataV2eeoiySbAC_ACtFZ_0(v17, v40);
  sub_22DE58C34(v40, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData);
  v39 = v17;
  v41 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData;
LABEL_15:
  sub_22DE58C34(v39, v41);
  sub_22DE58C34(v32, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
  return v37 & 1;
}

uint64_t sub_22DE58BCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22DE58C34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_22DE58CD8()
{
  result = qword_27DA38100;
  if (!qword_27DA38100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA38100);
  }

  return result;
}

unint64_t sub_22DE58D30()
{
  result = qword_27DA38108;
  if (!qword_27DA38108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA38108);
  }

  return result;
}

unint64_t sub_22DE58D88()
{
  result = qword_27DA38110;
  if (!qword_27DA38110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA38110);
  }

  return result;
}

unint64_t sub_22DE58E10()
{
  result = qword_27DA38128;
  if (!qword_27DA38128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA38128);
  }

  return result;
}

unint64_t sub_22DE58E68()
{
  result = qword_27DA38130;
  if (!qword_27DA38130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA38130);
  }

  return result;
}

unint64_t sub_22DE58EC0()
{
  result = qword_27DA38138;
  if (!qword_27DA38138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA38138);
  }

  return result;
}

unint64_t sub_22DE58F48()
{
  result = qword_27DA38150;
  if (!qword_27DA38150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA38150);
  }

  return result;
}

unint64_t sub_22DE58FA0()
{
  result = qword_27DA38158;
  if (!qword_27DA38158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA38158);
  }

  return result;
}

unint64_t sub_22DE58FF8()
{
  result = qword_27DA38160;
  if (!qword_27DA38160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA38160);
  }

  return result;
}

unint64_t sub_22DE59080()
{
  result = qword_28145CBB0;
  if (!qword_28145CBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28145CBB0);
  }

  return result;
}

unint64_t sub_22DE590D8()
{
  result = qword_28145CBB8;
  if (!qword_28145CBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28145CBB8);
  }

  return result;
}

unint64_t sub_22DE59130()
{
  result = qword_28145CBA8;
  if (!qword_28145CBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28145CBA8);
  }

  return result;
}

unint64_t sub_22DE591B8()
{
  result = qword_28145C060;
  if (!qword_28145C060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28145C060);
  }

  return result;
}

unint64_t sub_22DE59210()
{
  result = qword_28145C068;
  if (!qword_28145C068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28145C068);
  }

  return result;
}

unint64_t sub_22DE59268()
{
  result = qword_28145C058;
  if (!qword_28145C058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28145C058);
  }

  return result;
}

uint64_t sub_22DE592EC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Com_Apple_Sse_Ocean_Ndo_Api_NotificationInterruptionLevel(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Com_Apple_Sse_Ocean_Ndo_Api_NotificationInterruptionLevel(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_22DE5A4F8(uint64_t a1)
{
  sub_22DE5A8CC(319, &qword_28145ADA0, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_22DEC48B4();
    if (v2 <= 0x3F)
    {
      sub_22DE5B33C(319, &qword_28145C050, &type metadata for Com_Apple_Sse_Ocean_Ndo_Api_CheckInTrigger, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_22DE5B33C(319, &qword_28145AD88, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22DE5A62C(uint64_t a1)
{
  sub_22DEC48B4();
  if (v1 <= 0x3F)
  {
    sub_22DE5A728(319, qword_28145C448, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_22DE5A728(319, qword_28145BD58, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22DE5A728(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22DE5A7B4(uint64_t a1)
{
  sub_22DE5A728(319, &qword_28145AD80, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_22DE5A8CC(319, &qword_28145AD98, MEMORY[0x277CC9318]);
    if (v2 <= 0x3F)
    {
      sub_22DEC48B4();
      if (v3 <= 0x3F)
      {
        sub_22DE5B33C(319, &qword_28145AD00, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22DE5A8CC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_22DEC4BC4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22DE5A94C(uint64_t a1)
{
  sub_22DE5A728(319, qword_28145D948, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_22DE5A8CC(319, &qword_28145ADA0, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_22DEC48B4();
      if (v3 <= 0x3F)
      {
        sub_22DE5B33C(319, &qword_28145CBA0, &type metadata for Com_Apple_Sse_Ocean_Ndo_Api_ActionType, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_22DE5B33C(319, &qword_28145AD28, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_22DE5AAA0(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageData(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData(319);
            if (v7 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_22DE5AB8C(uint64_t a1)
{
  sub_22DEC48B4();
  if (v1 <= 0x3F)
  {
    sub_22DE5B33C(319, &qword_28145AD28, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_22DE5B33C(319, &qword_28145AD88, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_22DE5ACB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_22DEC48B4();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22DEC48B4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22DEC48B4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_22DE5AF1C(uint64_t a1)
{
  sub_22DEC48B4();
  if (v1 <= 0x3F)
  {
    sub_22DE5B33C(319, &qword_28145AD88, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_22DE5B33C(319, qword_28145BE70, &type metadata for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpClient, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_175Tm(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22DEC48B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_176Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_22DEC48B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_22DE5B178(uint64_t a1)
{
  sub_22DE5B33C(319, &qword_28145AD38, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_22DEC48B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22DE5B248(uint64_t a1)
{
  sub_22DEC48B4();
  if (v1 <= 0x3F)
  {
    sub_22DE5B33C(319, &qword_28145AD88, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_22DE5B33C(319, qword_28145AE70, &type metadata for Com_Apple_Sse_Ocean_Ndo_Api_NotificationInterruptionLevel, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22DE5B33C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_22DE5B3B4(uint64_t a1)
{
  sub_22DEC48B4();
  if (v1 <= 0x3F)
  {
    sub_22DE5B33C(319, &qword_28145AD88, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22DE5B484(uint64_t a1)
{
  sub_22DEC48B4();
  if (v1 <= 0x3F)
  {
    sub_22DE5B33C(319, &qword_28145AD88, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_22DE5A728(319, qword_28145BE28, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_245Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22DEC48B4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_246Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22DEC48B4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_22DE5B72C(uint64_t a1)
{
  sub_22DEC48B4();
  if (v1 <= 0x3F)
  {
    sub_22DE5B33C(319, &qword_28145AD88, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22DE5B7DC(uint64_t a1)
{
  sub_22DE5A728(319, qword_28145C6F8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_22DE5A728(319, qword_28145B628, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_22DE5A728(319, qword_28145C0F0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_22DE5B978(uint64_t a1)
{
  sub_22DE5A728(319, qword_28145B140, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_22DE5A728(319, qword_28145B428, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_22DE5BAD8(uint64_t a1)
{
  sub_22DE5A728(319, qword_28145D790, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_22DE5BBA8()
{
  result = qword_28145C070;
  if (!qword_28145C070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28145C070);
  }

  return result;
}

unint64_t sub_22DE5BBFC()
{
  result = qword_28145CBC0;
  if (!qword_28145CBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28145CBC0);
  }

  return result;
}

unint64_t sub_22DE5BC50()
{
  result = qword_27DA382F8;
  if (!qword_27DA382F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA382F8);
  }

  return result;
}

unint64_t sub_22DE5BCA4()
{
  result = qword_27DA38300;
  if (!qword_27DA38300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA38300);
  }

  return result;
}

unint64_t sub_22DE5BCF8()
{
  result = qword_27DA38308;
  if (!qword_27DA38308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA38308);
  }

  return result;
}

uint64_t sub_22DE5BE44(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE627B4();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_22DE5BEB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE62760();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_22DE5BF2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE6270C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_22DE5BFB0(uint64_t a1, uint64_t a2)
{
  sub_22DEC5184();
  sub_22DEC4BE4();
  return sub_22DEC51A4();
}

uint64_t sub_22DE5C000(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE626B8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_22DE5C04C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22DEC5184();
  sub_22DEC4BE4();
  return sub_22DEC51A4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData.style.setter()
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData(0);
  *(v0 + *(result + 20)) = 0;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData.style.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData(0) + 20);
  return sub_22DE5C140;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData.category.setter()
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData(0);
  *(v0 + *(result + 24)) = 0;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData.category.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData(0) + 24);
  return sub_22DE62828;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData.action.setter()
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData(0);
  *(v0 + *(result + 28)) = 0;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData.action.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData(0) + 28);
  return sub_22DE62828;
}

int *Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData.init()@<X0>(uint64_t a2@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData(0);
  *(a2 + result[5]) = 1;
  *(a2 + result[6]) = 1;
  *(a2 + result[7]) = 1;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps.alert.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38450, &qword_22DECA320);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps(0);
  sub_22DDF0028(v1 + *(v6 + 20), v5, &qword_27DA38450, &qword_22DECA320);
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_22DE616F0(v5, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  *(a1 + v7[5]) = 1;
  *(a1 + v7[6]) = 1;
  *(a1 + v7[7]) = 1;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_22DDEF284(v5, &qword_27DA38450, &qword_22DECA320);
  }

  return result;
}

uint64_t sub_22DE5C524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38450, &qword_22DECA320);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps(0);
  sub_22DDF0028(a1 + *(v7 + 20), v6, &qword_27DA38450, &qword_22DECA320);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_22DE616F0(v6, a2, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  *(a2 + v8[5]) = 1;
  *(a2 + v8[6]) = 1;
  *(a2 + v8[7]) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_22DDEF284(v6, &qword_27DA38450, &qword_22DECA320);
  }

  return result;
}

uint64_t sub_22DE5C698(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DE61758(a1, v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData);
  v8 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps(0) + 20);
  sub_22DDEF284(a2 + v8, &qword_27DA38450, &qword_22DECA320);
  sub_22DE616F0(v7, a2 + v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps.alert.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps(0) + 20);
  sub_22DDEF284(v1 + v3, &qword_27DA38450, &qword_22DECA320);
  sub_22DE616F0(a1, v1 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData);
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps.alert.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38450, &qword_22DECA320) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps(0) + 20);
  *(v5 + 12) = v15;
  sub_22DDF0028(v1 + v15, v8, &qword_27DA38450, &qword_22DECA320);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    *(v14 + v9[5]) = 1;
    *(v14 + v9[6]) = 1;
    *(v14 + v9[7]) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      sub_22DDEF284(v8, &qword_27DA38450, &qword_22DECA320);
    }
  }

  else
  {
    sub_22DE616F0(v8, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData);
  }

  return sub_22DE5CAA0;
}

BOOL Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps.hasAlert.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38450, &qword_22DECA320);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps(0);
  sub_22DDF0028(v0 + *(v4 + 20), v3, &qword_27DA38450, &qword_22DECA320);
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_22DDEF284(v3, &qword_27DA38450, &qword_22DECA320);
  return v6;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps.clearAlert()()
{
  v1 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps(0) + 20);
  sub_22DDEF284(v0 + v1, &qword_27DA38450, &qword_22DECA320);
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps.init()@<X0>(uint64_t a2@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps(0) + 20);
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a2 + v3, 1, 1, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData.eventID.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData(0) + 28));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_22DE5CD60@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData(0) + 28));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_22DE5CDC4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData(0) + 28));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData.eventID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData.eventID.modify(uint64_t *a1))()
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
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData(0) + 28);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData.clearEventID()()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData(0) + 28));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData.eventEpoch.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData(0) + 32));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData.eventEpoch.setter(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData.eventEpoch.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData(0) + 32);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_22DE39A60;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData.clearEventEpoch()()
{
  v1 = v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData(0) + 32);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData.additionalHeaders.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData(0) + 24);
  v4 = sub_22DEC48B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData(0) + 24);
  v4 = sub_22DEC48B4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData.init()@<X0>(unint64_t *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = sub_22DE0501C(MEMORY[0x277D84F90]);
  a1[1] = sub_22DE0501C(v2);
  v3 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData(0);
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v5 = (a1 + *(v3 + 28));
  *v5 = 0;
  v5[1] = 0;
  v6 = a1 + *(v3 + 32);
  *v6 = 0;
  v6[8] = 1;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload.ops.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38458, &qword_22DECA328);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0);
  sub_22DDF0028(v1 + *(v6 + 24), v5, &qword_27DA38458, &qword_22DECA328);
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_22DE616F0(v5, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v9 = *(v7 + 20);
  v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData(0);
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_22DDEF284(v5, &qword_27DA38458, &qword_22DECA328);
  }

  return result;
}

uint64_t sub_22DE5D470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38458, &qword_22DECA328);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0);
  sub_22DDF0028(a1 + *(v7 + 24), v6, &qword_27DA38458, &qword_22DECA328);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_22DE616F0(v6, a2, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v10 = *(v8 + 20);
  v11 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData(0);
  (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_22DDEF284(v6, &qword_27DA38458, &qword_22DECA328);
  }

  return result;
}

uint64_t sub_22DE5D60C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DE61758(a1, v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps);
  v8 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0) + 24);
  sub_22DDEF284(a2 + v8, &qword_27DA38458, &qword_22DECA328);
  sub_22DE616F0(v7, a2 + v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload.ops.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0) + 24);
  sub_22DDEF284(v1 + v3, &qword_27DA38458, &qword_22DECA328);
  sub_22DE616F0(a1, v1 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps);
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload.ops.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38458, &qword_22DECA328) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0) + 24);
  *(v5 + 12) = v15;
  sub_22DDF0028(v1 + v15, v8, &qword_27DA38458, &qword_22DECA328);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v17 = *(v9 + 20);
    v18 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    if (v16(v8, 1, v9) != 1)
    {
      sub_22DDEF284(v8, &qword_27DA38458, &qword_22DECA328);
    }
  }

  else
  {
    sub_22DE616F0(v8, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps);
  }

  return sub_22DE5DA3C;
}

void sub_22DE5DA64(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v8 = *a1;
  v9 = *(*a1 + 12);
  v10 = (*a1)[4];
  v11 = (*a1)[5];
  v12 = (*a1)[2];
  v13 = (*a1)[3];
  v14 = **a1;
  v15 = (*a1)[1];
  if (a2)
  {
    sub_22DE61758(v11, v10, a5);
    sub_22DDEF284(v14 + v9, a3, a4);
    sub_22DE616F0(v10, v14 + v9, a5);
    (*(v13 + 56))(v14 + v9, 0, 1, v12);
    sub_22DE617C0(v11, a5);
  }

  else
  {
    sub_22DDEF284(v14 + v9, a3, a4);
    sub_22DE616F0(v11, v14 + v9, a5);
    (*(v13 + 56))(v14 + v9, 0, 1, v12);
  }

  free(v11);
  free(v10);
  free(v15);

  free(v8);
}

BOOL Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload.hasOps.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38458, &qword_22DECA328);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0);
  sub_22DDF0028(v0 + *(v4 + 24), v3, &qword_27DA38458, &qword_22DECA328);
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_22DDEF284(v3, &qword_27DA38458, &qword_22DECA328);
  return v6;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload.clearOps()()
{
  v1 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0) + 24);
  sub_22DDEF284(v0 + v1, &qword_27DA38458, &qword_22DECA328);
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload.cmd.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0) + 28));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload.cmd.setter(int a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload.cmd.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0) + 28);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_22DE5DDF0;
}

uint64_t sub_22DE5DDF0(uint64_t result)
{
  v1 = *result + *(result + 12);
  *v1 = *(result + 8);
  *(v1 + 4) = 0;
  return result;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload.clearCmd()()
{
  v1 = v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload.altDsid.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0) + 32));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_22DE5DEC0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0) + 32));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_22DE5DF24(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0) + 32));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload.altDsid.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload.altDsid.modify(uint64_t *a1))()
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
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0) + 32);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload.clearAltDsid()()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0) + 32));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload.txnID.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0) + 36));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_22DE5E12C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0) + 36));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_22DE5E190(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0) + 36));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload.txnID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0) + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload.txnID.modify(uint64_t *a1))()
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
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0) + 36);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE2D1BC;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload.clearTxnID()()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0) + 36));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload.appData.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0) + 20);
  v4 = sub_22DEC48B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0) + 20);
  v4 = sub_22DEC48B4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload.init()@<X0>(char *a1@<X8>)
{
  *a1 = sub_22DE0501C(MEMORY[0x277D84F90]);
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0);
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v3 = v2[6];
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps(0);
  result = (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v6 = &a1[v2[7]];
  *v6 = 0;
  v6[4] = 1;
  v7 = &a1[v2[8]];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &a1[v2[9]];
  *v8 = 0;
  *(v8 + 1) = 0;
  return result;
}

uint64_t sub_22DE5E734()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA383F0);
  __swift_project_value_buffer(v0, qword_27DA383F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC77C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "style";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "category";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "action";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v9();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_22DEC4954();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_22DE5EB0C(a1, v5, a2, a3);
        break;
      case 2:
        sub_22DE5EA98(a1, v5, a2, a3);
        break;
      case 1:
        sub_22DE5EA24(a1, v5, a2, a3);
        break;
    }
  }

  return result;
}

uint64_t sub_22DE5EA24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData(0);
  sub_22DE627B4();
  return sub_22DEC4984();
}

uint64_t sub_22DE5EA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData(0);
  sub_22DE62760();
  return sub_22DEC4984();
}

uint64_t sub_22DE5EB0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData(0);
  sub_22DE6270C();
  return sub_22DEC4984();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DE5EC08(v3, a1, a2, a3);
  if (!v4)
  {
    sub_22DE5EC88(v3, a1, a2, a3);
    sub_22DE5ED08(v3, a1, a2, a3);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DE5EC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData(0);
  if ((*(a1 + *(result + 20)) & 1) == 0)
  {
    sub_22DE627B4();
    return sub_22DEC4A74();
  }

  return result;
}

uint64_t sub_22DE5EC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData(0);
  if ((*(a1 + *(result + 24)) & 1) == 0)
  {
    sub_22DE62760();
    return sub_22DEC4A74();
  }

  return result;
}

uint64_t sub_22DE5ED08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData(0);
  if ((*(a1 + *(result + 28)) & 1) == 0)
  {
    sub_22DE6270C();
    return sub_22DEC4A74();
  }

  return result;
}

uint64_t sub_22DE5EDD4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v5 = a1[6];
  *(a2 + a1[5]) = 1;
  *(a2 + v5) = 1;
  *(a2 + a1[7]) = 1;
  return result;
}

uint64_t sub_22DE5EE60(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE61820(&qword_27DA38600, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE5EF00(uint64_t a1)
{
  v2 = sub_22DE61820(&qword_27DA38528, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE5EF6C(uint64_t a1, uint64_t a2)
{
  sub_22DE61820(&qword_27DA38528, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData);

  return sub_22DEC4A44();
}

uint64_t sub_22DE5F020(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v9 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22DEC5F50;
  v11 = v10 + v9 + v8[14];
  *(v10 + v9) = 1;
  *v11 = a3;
  *(v11 + 8) = a4;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x277D21870];
  v13 = sub_22DEC4AE4();
  (*(*(v13 - 8) + 104))(v11, v12, v13);
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_22DEC4954();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_22DE5F224(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_22DE5F224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps(0);
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData(0);
  sub_22DE61820(&qword_27DA38528, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData);
  return sub_22DEC49E4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DE5F330(v3, a1, a2, a3);
  if (!v4)
  {
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DE5F330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38450, &qword_22DECA320);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps(0);
  sub_22DDF0028(a1 + *(v12 + 20), v7, &qword_27DA38450, &qword_22DECA320);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22DDEF284(v7, &qword_27DA38450, &qword_22DECA320);
  }

  sub_22DE616F0(v7, v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData);
  sub_22DE61820(&qword_27DA38528, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData);
  sub_22DEC4AD4();
  return sub_22DE617C0(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData);
}

uint64_t sub_22DE5F58C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_22DE5F650(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE61820(&qword_27DA385F8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE5F6F0(uint64_t a1)
{
  v2 = sub_22DE61820(&qword_27DA38540, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE5F75C(uint64_t a1, uint64_t a2)
{
  sub_22DE61820(&qword_27DA38540, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps);

  return sub_22DEC4A44();
}

uint64_t sub_22DE5F7F8()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA38420);
  __swift_project_value_buffer(v0, qword_27DA38420);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC7570;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "event_id";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "event_epoch";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "body_data";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "additional_headers";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DEC4954();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3 || result == 4)
        {
          sub_22DEC4884();
          sub_22DEC4944();
        }
      }

      else if (result == 1)
      {
        type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData(0);
        sub_22DEC49C4();
      }

      else if (result == 2)
      {
        type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData(0);
        sub_22DEC49A4();
      }

      result = sub_22DEC4954();
    }
  }

  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DE5FCE4(v3, a1, a2, a3);
  if (!v4)
  {
    sub_22DE5FD5C(v3, a1, a2, a3);
    if (*(*v3 + 16))
    {
      sub_22DEC4884();
      sub_22DEC4A54();
    }

    if (*(v3[1] + 16))
    {
      sub_22DEC4884();
      sub_22DEC4A54();
    }

    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData(0);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DE5FCE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData(0);
  if (*(a1 + *(result + 28) + 8))
  {
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE5FD5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData(0);
  if ((*(a1 + *(result + 32) + 8) & 1) == 0)
  {
    return sub_22DEC4A94();
  }

  return result;
}

uint64_t sub_22DE5FE20@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  *a2 = sub_22DE0501C(MEMORY[0x277D84F90]);
  a2[1] = sub_22DE0501C(v4);
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v6 = *(a1 + 32);
  v7 = (a2 + *(a1 + 28));
  *v7 = 0;
  v7[1] = 0;
  v8 = a2 + v6;
  *v8 = 0;
  v8[8] = 1;
  return result;
}

uint64_t sub_22DE5FEE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE61820(&qword_27DA385F0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE5FF80(uint64_t a1)
{
  v2 = sub_22DE61820(&qword_27DA38558, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE5FFEC(uint64_t a1, uint64_t a2)
{
  sub_22DE61820(&qword_27DA38558, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData);

  return sub_22DEC4A44();
}

uint64_t sub_22DE60088()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA38438);
  __swift_project_value_buffer(v0, qword_27DA38438);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC7C40;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "ops";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "cmd";
  *(v10 + 8) = 3;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "alt_dsid";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "txn_id";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "app_data";
  *(v15 + 8) = 8;
  *(v15 + 16) = 2;
  v9();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_22DEC4954();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result <= 2)
      {
        if (result == 1)
        {
          sub_22DE604B0(a1, v5, a2, a3);
        }

        else if (result == 2)
        {
          type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0);
          sub_22DEC4994();
        }
      }

      else if (result == 3 || result == 4)
      {
        type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0);
        sub_22DEC49C4();
      }

      else if (result == 5)
      {
        sub_22DEC4884();
        sub_22DEC4944();
      }

      result = sub_22DEC4954();
    }
  }

  return result;
}

uint64_t sub_22DE604B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0);
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps(0);
  sub_22DE61820(&qword_27DA38540, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps);
  return sub_22DEC49E4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DE60678(v3, a1, a2, a3);
  if (!v4)
  {
    sub_22DE60888(v3, a1, a2, a3);
    sub_22DE60900(v3, a1, a2, a3);
    sub_22DE60978(v3, a1, a2, a3);
    if (*(*v3 + 16))
    {
      sub_22DEC4884();
      sub_22DEC4A54();
    }

    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DE60678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38458, &qword_22DECA328);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0);
  sub_22DDF0028(a1 + *(v12 + 24), v7, &qword_27DA38458, &qword_22DECA328);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22DDEF284(v7, &qword_27DA38458, &qword_22DECA328);
  }

  sub_22DE616F0(v7, v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps);
  sub_22DE61820(&qword_27DA38540, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps);
  sub_22DEC4AD4();
  return sub_22DE617C0(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps);
}

uint64_t sub_22DE60888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0);
  if ((*(a1 + *(result + 28) + 4) & 1) == 0)
  {
    return sub_22DEC4A84();
  }

  return result;
}

uint64_t sub_22DE60900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0);
  if (*(a1 + *(result + 32) + 8))
  {
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE60978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0);
  if (*(a1 + *(result + 36) + 8))
  {
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE60A3C(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_22DEC5184();
  a1(0);
  sub_22DE61820(a2, a3, a4);
  sub_22DEC4BE4();
  return sub_22DEC51A4();
}

uint64_t sub_22DE60AC4@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = sub_22DE0501C(MEMORY[0x277D84F90]);
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v4 = a1[6];
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps(0);
  result = (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v7 = a1[8];
  v8 = &a2[a1[7]];
  *v8 = 0;
  v8[4] = 1;
  v9 = &a2[v7];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &a2[a1[9]];
  *v10 = 0;
  *(v10 + 1) = 0;
  return result;
}

uint64_t sub_22DE60BC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE61820(&qword_27DA385E8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE60C64(uint64_t a1)
{
  v2 = sub_22DE61820(&qword_27DA38570, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE60CD0(uint64_t a1, uint64_t a2)
{
  sub_22DE61820(&qword_27DA38570, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload);

  return sub_22DEC4A44();
}

uint64_t _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInDataV2eeoiySbAC_ACtFZ_0(void *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_CheckInData(0);
  v5 = *(v4 + 28);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    v10 = *v6 == *v8 && v7 == v9;
    if (!v10 && (sub_22DEC50E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v11 = *(v4 + 32);
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = *(a2 + v11 + 8);
  if (v13)
  {
    if (!v15)
    {
      return 0;
    }
  }

  else
  {
    if (*v12 != *v14)
    {
      LOBYTE(v15) = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  if (sub_22DEAFB4C(*a1, *a2) & 1) != 0 && (sub_22DEAFB4C(a1[1], a2[1]))
  {
    sub_22DEC48B4();
    sub_22DE61820(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_22DEC4BF4() & 1;
  }

  return 0;
}

uint64_t _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayloadV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v39 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38458, &qword_22DECA328);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38628, &unk_22DECAFF0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - v12;
  v40 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_APNSPayload(0);
  v41 = a1;
  v14 = v40[6];
  v15 = *(v11 + 56);
  sub_22DDF0028(a1 + v14, v13, &qword_27DA38458, &qword_22DECA328);
  sub_22DDF0028(a2 + v14, &v13[v15], &qword_27DA38458, &qword_22DECA328);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_22DDF0028(v13, v9, &qword_27DA38458, &qword_22DECA328);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v19 = v39;
      sub_22DE616F0(&v13[v15], v39, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps);
      v20 = _s6NDOAPI41Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOpsV2eeoiySbAC_ACtFZ_0(v9, v19);
      sub_22DE617C0(v19, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps);
      sub_22DE617C0(v9, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps);
      sub_22DDEF284(v13, &qword_27DA38458, &qword_22DECA328);
      if ((v20 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_22DE617C0(v9, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps);
LABEL_6:
    sub_22DDEF284(v13, &qword_27DA38628, &unk_22DECAFF0);
    goto LABEL_7;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_22DDEF284(v13, &qword_27DA38458, &qword_22DECA328);
LABEL_10:
  v21 = v40;
  v22 = v41;
  v23 = v40[7];
  v24 = (v41 + v23);
  v25 = *(v41 + v23 + 4);
  v26 = (a2 + v23);
  v27 = *(a2 + v23 + 4);
  if (v25)
  {
    if (!v27)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v24 != *v26)
    {
      LOBYTE(v27) = 1;
    }

    if (v27)
    {
      goto LABEL_7;
    }
  }

  v28 = v40[8];
  v29 = (v41 + v28);
  v30 = *(v41 + v28 + 8);
  v31 = (a2 + v28);
  v32 = v31[1];
  if (v30)
  {
    if (!v32 || (*v29 != *v31 || v30 != v32) && (sub_22DEC50E4() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v32)
  {
    goto LABEL_7;
  }

  v33 = v21[9];
  v34 = (v22 + v33);
  v35 = *(v22 + v33 + 8);
  v36 = (a2 + v33);
  v37 = v36[1];
  if (v35)
  {
    if (!v37 || (*v34 != *v36 || v35 != v37) && (sub_22DEC50E4() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v37)
  {
    goto LABEL_7;
  }

  if (sub_22DEAFB4C(*v22, *a2))
  {
    sub_22DEC48B4();
    sub_22DE61820(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v17 = sub_22DEC4BF4();
    return v17 & 1;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s6NDOAPI42Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData(0);
  if (*(a1 + v4[5]) != *(a2 + v4[5]) || *(a1 + v4[6]) != *(a2 + v4[6]) || *(a1 + v4[7]) != *(a2 + v4[7]))
  {
    return 0;
  }

  sub_22DEC48B4();
  sub_22DE61820(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22DEC4BF4() & 1;
}

uint64_t _s6NDOAPI41Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOpsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v21[0] = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38450, &qword_22DECA320);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38630, &qword_22DECB008);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = v21 - v12;
  v14 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps(0) + 20);
  v15 = *(v11 + 56);
  v21[1] = a1;
  sub_22DDF0028(a1 + v14, v13, &qword_27DA38450, &qword_22DECA320);
  sub_22DDF0028(a2 + v14, &v13[v15], &qword_27DA38450, &qword_22DECA320);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_22DDEF284(v13, &qword_27DA38450, &qword_22DECA320);
LABEL_9:
      sub_22DEC48B4();
      sub_22DE61820(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_22DEC4BF4();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_22DDF0028(v13, v9, &qword_27DA38450, &qword_22DECA320);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_22DE617C0(v9, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData);
LABEL_6:
    sub_22DDEF284(v13, &qword_27DA38630, &qword_22DECB008);
    goto LABEL_7;
  }

  v18 = v21[0];
  sub_22DE616F0(&v13[v15], v21[0], type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData);
  v19 = _s6NDOAPI42Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertDataV2eeoiySbAC_ACtFZ_0(v9, v18);
  sub_22DE617C0(v18, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData);
  sub_22DE617C0(v9, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData);
  sub_22DDEF284(v13, &qword_27DA38450, &qword_22DECA320);
  if (v19)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_22DE616F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22DE61758(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22DE617C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22DE61820(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22DE6186C()
{
  result = qword_27DA38480;
  if (!qword_27DA38480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA38480);
  }

  return result;
}

unint64_t sub_22DE618C4()
{
  result = qword_27DA38488;
  if (!qword_27DA38488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA38488);
  }

  return result;
}

unint64_t sub_22DE6191C()
{
  result = qword_27DA38490;
  if (!qword_27DA38490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA38490);
  }

  return result;
}

unint64_t sub_22DE619A4()
{
  result = qword_27DA384A8;
  if (!qword_27DA384A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA384A8);
  }

  return result;
}

unint64_t sub_22DE619FC()
{
  result = qword_27DA384B0;
  if (!qword_27DA384B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA384B0);
  }

  return result;
}

unint64_t sub_22DE61A54()
{
  result = qword_27DA384B8;
  if (!qword_27DA384B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA384B8);
  }

  return result;
}

unint64_t sub_22DE61ADC()
{
  result = qword_27DA384D0;
  if (!qword_27DA384D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA384D0);
  }

  return result;
}

unint64_t sub_22DE61B34()
{
  result = qword_27DA384D8;
  if (!qword_27DA384D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA384D8);
  }

  return result;
}

unint64_t sub_22DE61B8C()
{
  result = qword_27DA384E0;
  if (!qword_27DA384E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA384E0);
  }

  return result;
}

unint64_t sub_22DE61C14()
{
  result = qword_27DA384F8;
  if (!qword_27DA384F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA384F8);
  }

  return result;
}

unint64_t sub_22DE61C6C()
{
  result = qword_27DA38500;
  if (!qword_27DA38500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA38500);
  }

  return result;
}

unint64_t sub_22DE61CC4()
{
  result = qword_27DA38508;
  if (!qword_27DA38508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA38508);
  }

  return result;
}

void sub_22DE62230(uint64_t a1)
{
  sub_22DEC48B4();
  if (v1 <= 0x3F)
  {
    sub_22DE33AAC(319, &qword_27DA38590);
    if (v2 <= 0x3F)
    {
      sub_22DE33AAC(319, &qword_27DA38598);
      if (v3 <= 0x3F)
      {
        sub_22DE33AAC(319, &qword_27DA385A0);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22DE6233C(uint64_t a1)
{
  sub_22DEC48B4();
  if (v1 <= 0x3F)
  {
    sub_22DE62664(319, &qword_27DA385B8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertData);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22DE62404(uint64_t a1)
{
  sub_22DE624D8();
  if (v1 <= 0x3F)
  {
    sub_22DEC48B4();
    if (v2 <= 0x3F)
    {
      sub_22DE33AAC(319, &qword_28145AD88);
      if (v3 <= 0x3F)
      {
        sub_22DE33AAC(319, &qword_28145AD00);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22DE624D8()
{
  if (!qword_28145ADA0)
  {
    v0 = sub_22DEC4BC4();
    if (!v1)
    {
      atomic_store(v0, &qword_28145ADA0);
    }
  }
}

void sub_22DE6255C(uint64_t a1)
{
  sub_22DE624D8();
  if (v1 <= 0x3F)
  {
    sub_22DEC48B4();
    if (v2 <= 0x3F)
    {
      sub_22DE62664(319, &qword_27DA385E0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Apns_AlertOps);
      if (v3 <= 0x3F)
      {
        sub_22DE33AAC(319, &qword_28145AD08);
        if (v4 <= 0x3F)
        {
          sub_22DE33AAC(319, &qword_28145AD88);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_22DE62664(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22DEC4EB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_22DE626B8()
{
  result = qword_27DA38608;
  if (!qword_27DA38608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA38608);
  }

  return result;
}

unint64_t sub_22DE6270C()
{
  result = qword_27DA38610;
  if (!qword_27DA38610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA38610);
  }

  return result;
}

unint64_t sub_22DE62760()
{
  result = qword_27DA38618;
  if (!qword_27DA38618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA38618);
  }

  return result;
}

unint64_t sub_22DE627B4()
{
  result = qword_27DA38620;
  if (!qword_27DA38620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA38620);
  }

  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta.init()@<X0>(uint64_t a2@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v3 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v4 = (a2 + v3[5]);
  *v4 = 0;
  v4[1] = 0;
  v5 = a2 + v3[6];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = v3[7];
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta.requestEpoch.setter(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Locale.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0);
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v4 = (a1 + v2[6]);
  *v4 = 0;
  v4[1] = 0;
  v5 = (a1 + v2[7]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a1 + v2[8]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a1 + v2[9]);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a1 + v2[10]);
  *v8 = 0;
  v8[1] = 0;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Locale.deviceRegion.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Locale.deviceTimezone.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Locale.closestCity.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0) + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Locale.storefrontCountry.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0) + 40));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta.locale.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0) + 28);
  sub_22DDEF284(v1 + v3, &qword_27DA37AD8, &qword_22DECB040);
  sub_22DE62BD4(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t sub_22DE62BD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

int *Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta.init()@<X0>(uint64_t a2@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v4 = (a2 + result[5]);
  *v4 = 0;
  v4[1] = 0;
  v5 = (a2 + result[6]);
  *v5 = 0;
  v5[1] = 0;
  v6 = a2 + result[7];
  *v6 = 0;
  *(v6 + 8) = 1;
  return result;
}

NDOAPI::Com_Apple_Sse_Ocean_Ndo_Api_CommonHeaders_optional __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_CommonHeaders.init(rawValue:)(Swift::Int rawValue)
{
  if ((rawValue - 1) > 0xF)
  {
    *v1 = 7;
  }

  else
  {
    *v1 = byte_22DECB030[rawValue - 1];
  }

  return rawValue;
}

uint64_t sub_22DE62D28(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE68A24();

  return MEMORY[0x28217E238](a1, a2, v4);
}

NDOAPI::Com_Apple_Sse_Ocean_Ndo_Api_RequestHeaders_optional __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_RequestHeaders.init(rawValue:)(Swift::Int rawValue)
{
  if ((rawValue - 1) > 0x1D)
  {
    *v1 = 16;
  }

  else
  {
    *v1 = byte_22DECBA78[rawValue - 1];
  }

  return rawValue;
}

uint64_t sub_22DE62E2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE689D0();

  return MEMORY[0x28217E238](a1, a2, v4);
}

NDOAPI::Com_Apple_Sse_Ocean_Ndo_Api_ResponseHeaders_optional __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_ResponseHeaders.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x2010003u >> (8 * rawValue);
  if (rawValue >= 4)
  {
    LOBYTE(v2) = 3;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_22DE62EFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE6897C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_Locale.deviceLanguage.modify(uint64_t *a1))()
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
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Locale.preferredLanguages.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Locale.deviceRegion.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0) + 28));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_22DE6311C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0) + 28));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_22DE63180(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0) + 28));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_Locale.deviceRegion.modify(uint64_t *a1))()
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
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0) + 28);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_Locale.clearDeviceRegion()()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0) + 28));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Locale.deviceTimezone.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0) + 32));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_22DE63340@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0) + 32));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_22DE633A4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0) + 32));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_Locale.deviceTimezone.modify(uint64_t *a1))()
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
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0) + 32);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_Locale.clearDeviceTimezone()()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0) + 32));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Locale.closestCity.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0) + 36));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_22DE63564@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0) + 36));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_22DE635C8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0) + 36));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_Locale.closestCity.modify(uint64_t *a1))()
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
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0) + 36);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE2D1BC;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_Locale.clearClosestCity()()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0) + 36));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Locale.storefrontCountry.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0) + 40));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_22DE63788@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0) + 40));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_22DE637EC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0) + 40));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_Locale.storefrontCountry.modify(uint64_t *a1))()
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
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0) + 40);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_Locale.clearStorefrontCountry()()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0) + 40));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Locale.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0) + 20);
  v4 = sub_22DEC48B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Locale.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0) + 20);
  v4 = sub_22DEC48B4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta.requestID.modify(uint64_t *a1))()
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
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0) + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta.requestEpoch.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0) + 24));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta.requestEpoch.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0) + 24);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_22DE39A60;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta.clearRequestEpoch()()
{
  v1 = v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta.locale.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37AD8, &qword_22DECB040);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  sub_22DE63E20(v1 + *(v6 + 28), v5);
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_22DE62BD4(v5, a1);
  }

  *a1 = MEMORY[0x277D84F90];
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v9 = (a1 + v7[6]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a1 + v7[7]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a1 + v7[8]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a1 + v7[9]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (a1 + v7[10]);
  *v13 = 0;
  v13[1] = 0;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_22DDEF284(v5, &qword_27DA37AD8, &qword_22DECB040);
  }

  return result;
}

uint64_t sub_22DE63E20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37AD8, &qword_22DECB040);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DE63E90@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37AD8, &qword_22DECB040);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  sub_22DE63E20(a1 + *(v7 + 28), v6);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_22DE62BD4(v6, a2);
  }

  *a2 = MEMORY[0x277D84F90];
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v10 = (a2 + v8[6]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a2 + v8[7]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a2 + v8[8]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (a2 + v8[9]);
  *v13 = 0;
  v13[1] = 0;
  v14 = (a2 + v8[10]);
  *v14 = 0;
  v14[1] = 0;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_22DDEF284(v6, &qword_27DA37AD8, &qword_22DECB040);
  }

  return result;
}

uint64_t sub_22DE64010(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DE64468(a1, v7);
  v8 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0) + 28);
  sub_22DDEF284(a2 + v8, &qword_27DA37AD8, &qword_22DECB040);
  sub_22DE62BD4(v7, a2 + v8);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta.locale.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37AD8, &qword_22DECB040) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0) + 28);
  *(v5 + 12) = v15;
  sub_22DE63E20(v1 + v15, v8);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v17 = (v14 + v9[6]);
    *v17 = 0;
    v17[1] = 0;
    v18 = (v14 + v9[7]);
    *v18 = 0;
    v18[1] = 0;
    v19 = (v14 + v9[8]);
    *v19 = 0;
    v19[1] = 0;
    v20 = (v14 + v9[9]);
    *v20 = 0;
    v20[1] = 0;
    v21 = (v14 + v9[10]);
    *v21 = 0;
    v21[1] = 0;
    if (v16(v8, 1, v9) != 1)
    {
      sub_22DDEF284(v8, &qword_27DA37AD8, &qword_22DECB040);
    }
  }

  else
  {
    sub_22DE62BD4(v8, v14);
  }

  return sub_22DE64350;
}

void sub_22DE64350(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_22DE64468((*a1)[5], v4);
    sub_22DDEF284(v9 + v3, &qword_27DA37AD8, &qword_22DECB040);
    sub_22DE62BD4(v4, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_22DE644CC(v5);
  }

  else
  {
    sub_22DDEF284(v9 + v3, &qword_27DA37AD8, &qword_22DECB040);
    sub_22DE62BD4(v5, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t sub_22DE64468(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DE644CC(uint64_t a1)
{
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta.hasLocale.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37AD8, &qword_22DECB040);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  sub_22DE63E20(v0 + *(v4 + 28), v3);
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_22DDEF284(v3, &qword_27DA37AD8, &qword_22DECB040);
  return v6;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta.clearLocale()()
{
  v1 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0) + 28);
  sub_22DDEF284(v0 + v1, &qword_27DA37AD8, &qword_22DECB040);
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_22DE646E0(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_22DE6473C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  v4 = (a1 + *(a2(0) + 20));
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *a3 = v6;
  a3[1] = v7;
}

uint64_t sub_22DE647A4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (a2 + *((a5)(0, a2, a3, a4) + 20));

  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t sub_22DE64814(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 20));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta.status.modify(uint64_t *a1))()
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
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0) + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

uint64_t sub_22DE64958(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t sub_22DE649B0(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_22DE64A0C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  v4 = (a1 + *(a2(0) + 24));
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *a3 = v6;
  a3[1] = v7;
}

uint64_t sub_22DE64A74(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (a2 + *((a5)(0, a2, a3, a4) + 24));

  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t sub_22DE64AE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 24));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta.responseID.modify(uint64_t *a1))()
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
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

uint64_t sub_22DE64C28(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta.responseEpoch.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0) + 28));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta.responseEpoch.setter(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta.responseEpoch.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0) + 28);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_22DE68A88;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta.clearResponseEpoch()()
{
  v1 = v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0) + 28);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t sub_22DE64DBC()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA38638);
  __swift_project_value_buffer(v0, qword_27DA38638);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_22DEC81E0;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "CONTENT_TYPE";
  *(v4 + 8) = 12;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_22DEC4AE4();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "CONTENT_ENCODING";
  *(v8 + 8) = 16;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "CACHE_CONTROL";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 12;
  *v12 = "X_APPLE_AUTH_TOKEN";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 13;
  *v14 = "X_APPLE_AUTH_TIMESTAMP";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 15;
  *v16 = "X_APPLE_REQUEST_ID";
  *(v16 + 1) = 18;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 16;
  *v18 = "X_APPLE_SESSION_ID";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v7();
  return sub_22DEC4AF4();
}

uint64_t sub_22DE65104()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA38650);
  __swift_project_value_buffer(v0, qword_27DA38650);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_22DECB010;
  v4 = v38 + v3;
  v5 = v38 + v3 + v1[14];
  *(v38 + v3) = 1;
  *v5 = "ACCEPT";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_22DEC4AE4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "ACCEPT_LANGUAGE";
  *(v9 + 8) = 15;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "USER_AGENT";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "RETRY_COUNT";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 10;
  *v15 = "X_APPLE_BAA";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 11;
  *v17 = "X_APPLE_BAA_S";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 20;
  *v19 = "X_APPLE_I_LOCALE";
  *(v19 + 1) = 16;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 21;
  *v21 = "X_APPLE_I_IDENTITY_ID";
  *(v21 + 1) = 21;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 22;
  *v22 = "X_APPLE_I_MD";
  *(v22 + 8) = 12;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 23;
  *v24 = "X_APPLE_I_MD_M";
  *(v24 + 1) = 14;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 24;
  *v26 = "X_APPLE_I_MD_RINFO";
  *(v26 + 1) = 18;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 25;
  *v28 = "X_APPLE_APP_INFO";
  *(v28 + 1) = 16;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 26;
  *v30 = "X_MME_DEVICE_ID";
  *(v30 + 1) = 15;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 27;
  *v32 = "X_MME_CLIENT_INFO";
  *(v32 + 1) = 17;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 28;
  *v34 = "X_APPLE_GS_TOKEN";
  *(v34 + 1) = 16;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 30;
  *v36 = "X_APPLE_UNIVERSAL_CODE";
  *(v36 + 1) = 22;
  v36[16] = 2;
  v8();
  return sub_22DEC4AF4();
}

uint64_t sub_22DE6568C()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA38668);
  __swift_project_value_buffer(v0, qword_27DA38668);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC77C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "EXPIRES";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "RETRY_AFTER";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "X_APPLE_UNIVERSAL";
  *(v11 + 8) = 17;
  *(v11 + 16) = 2;
  v9();
  return sub_22DEC4AF4();
}

uint64_t sub_22DE65904()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_28145D5A8);
  __swift_project_value_buffer(v0, qword_28145D5A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DECB020;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "device_language";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "preferred_languages";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "device_region";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "device_timezone";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "closest_city";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "storefront_country";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v9();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Locale.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_22DEC4954();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      if (result == 4 || result == 5 || result == 6)
      {
LABEL_2:
        type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0);
        v3 = 0;
        sub_22DEC49C4();
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          goto LABEL_2;
        case 2:
          sub_22DEC49B4();
          break;
        case 3:
          goto LABEL_2;
      }
    }
  }
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Locale.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DE670B4(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale, 1);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      sub_22DEC4AA4();
    }

    sub_22DE65E3C(v3, a1, a2, a3);
    sub_22DE65EB4(v3, a1, a2, a3);
    sub_22DE65F2C(v3, a1, a2, a3);
    sub_22DE65FA4(v3, a1, a2, a3);
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DE65E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0);
  if (*(a1 + *(result + 28) + 8))
  {
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE65EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0);
  if (*(a1 + *(result + 32) + 8))
  {
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE65F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0);
  if (*(a1 + *(result + 36) + 8))
  {
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE65FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0);
  if (*(a1 + *(result + 40) + 8))
  {
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE66068@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v5 = a1[7];
  v6 = (a2 + a1[6]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  v8 = a1[9];
  v9 = (a2 + a1[8]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a2 + v8);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a2 + a1[10]);
  *v11 = 0;
  v11[1] = 0;
  return result;
}

uint64_t sub_22DE66124(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE67B8C(&qword_27DA38738, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_Locale);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE661C4(uint64_t a1)
{
  v2 = sub_22DE67B8C(&qword_28145D598, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_Locale);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE66230(uint64_t a1, uint64_t a2)
{
  sub_22DE67B8C(&qword_28145D598, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_Locale);

  return sub_22DEC4A44();
}

uint64_t sub_22DE662CC()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_28145C758);
  __swift_project_value_buffer(v0, qword_28145C758);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC77C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "request_id";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "request_epoch";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "locale";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v9();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_22DEC4954();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_22DE665EC(a1, v5, a2, a3);
        break;
      case 2:
        type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
        sub_22DEC49A4();
        break;
      case 1:
        type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
        sub_22DEC49C4();
        break;
    }
  }

  return result;
}

uint64_t sub_22DE665EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0);
  sub_22DE67B8C(&qword_28145D598, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_Locale);
  return sub_22DEC49E4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DE67038(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  if (!v4)
  {
    sub_22DE6673C(v3, a1, a2, a3);
    sub_22DE667B4(v3, a1, a2, a3);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DE6673C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  if ((*(a1 + *(result + 24) + 8) & 1) == 0)
  {
    return sub_22DEC4A94();
  }

  return result;
}

uint64_t sub_22DE667B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37AD8, &qword_22DECB040);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  sub_22DE63E20(a1 + *(v12 + 28), v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22DDEF284(v7, &qword_27DA37AD8, &qword_22DECB040);
  }

  sub_22DE62BD4(v7, v11);
  sub_22DE67B8C(&qword_28145D598, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_Locale);
  sub_22DEC4AD4();
  return sub_22DE644CC(v11);
}

uint64_t sub_22DE669E0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v4 = a1[6];
  v5 = (a2 + a1[5]);
  *v5 = 0;
  v5[1] = 0;
  v6 = a2 + v4;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a1[7];
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a2 + v7, 1, 1, v8);
}

uint64_t sub_22DE66AC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE67B8C(&qword_27DA38730, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE66B60(uint64_t a1)
{
  v2 = sub_22DE67B8C(&qword_28145C748, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE66BCC(uint64_t a1, uint64_t a2)
{
  sub_22DE67B8C(&qword_28145C748, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);

  return sub_22DEC4A44();
}

uint64_t sub_22DE66C68()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_28145C4A8);
  __swift_project_value_buffer(v0, qword_28145C4A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC77C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "status";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "response_id";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "response_epoch";
  *(v11 + 8) = 14;
  *(v11 + 16) = 2;
  v9();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_22DEC4954();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
      sub_22DEC49A4();
    }

    else if (result == 2 || result == 1)
    {
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
      sub_22DEC49C4();
    }
  }

  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DE67038(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  if (!v4)
  {
    sub_22DE670B4(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta, 2);
    sub_22DE67138(v3, a1, a2, a3);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DE67038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 20) + 8))
  {
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE670B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  result = a5(0);
  if (*(a1 + *(result + 24) + 8))
  {
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE67138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  if ((*(a1 + *(result + 28) + 8) & 1) == 0)
  {
    return sub_22DEC4A94();
  }

  return result;
}

uint64_t sub_22DE671FC(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_22DEC5184();
  a1(0);
  sub_22DE67B8C(a2, a3, a4);
  sub_22DEC4BE4();
  return sub_22DEC51A4();
}

uint64_t sub_22DE67284@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  v8 = a2 + a1[7];
  *v8 = 0;
  *(v8 + 8) = 1;
  return result;
}

uint64_t sub_22DE67320(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE67B8C(&qword_27DA38728, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE673C0(uint64_t a1)
{
  v2 = sub_22DE67B8C(&qword_28145C498, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE6742C(uint64_t a1, uint64_t a2)
{
  sub_22DE67B8C(&qword_28145C498, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);

  return sub_22DEC4A44();
}

uint64_t _s6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_ResponseMetaV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_22DEC50E4();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (!v15)
  {
    if (!v17)
    {
      goto LABEL_19;
    }

    return 0;
  }

  if (!v17)
  {
    return 0;
  }

  if (*v14 != *v16 || v15 != v17)
  {
    v19 = v4;
    v20 = sub_22DEC50E4();
    v4 = v19;
    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_19:
  v21 = v4[7];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = *(a2 + v21 + 8);
  if (v23)
  {
    if (!v25)
    {
      return 0;
    }
  }

  else
  {
    if (*v22 != *v24)
    {
      LOBYTE(v25) = 1;
    }

    if (v25)
    {
      return 0;
    }
  }

  sub_22DEC48B4();
  sub_22DE67B8C(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22DEC4BF4() & 1;
}

uint64_t _s6NDOAPI39Com_Apple_Sse_Ocean_Ndo_Api_RequestMetaV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37AD8, &qword_22DECB040);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v34 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38758, &unk_22DECBA30);
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - v12;
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v15 = v14[5];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v18[1];
  if (v17)
  {
    if (!v19)
    {
      goto LABEL_22;
    }

    if (*v16 != *v18 || v17 != v19)
    {
      v21 = v14;
      v22 = sub_22DEC50E4();
      v14 = v21;
      if ((v22 & 1) == 0)
      {
        goto LABEL_22;
      }
    }
  }

  else if (v19)
  {
    goto LABEL_22;
  }

  v23 = v14[6];
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  v27 = *(a2 + v23 + 8);
  if (v25)
  {
    if (!v27)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (*v24 != *v26)
    {
      LOBYTE(v27) = 1;
    }

    if (v27)
    {
      goto LABEL_22;
    }
  }

  v28 = v14[7];
  v29 = *(v11 + 48);
  sub_22DE63E20(a1 + v28, v13);
  sub_22DE63E20(a2 + v28, &v13[v29]);
  v30 = *(v5 + 48);
  if (v30(v13, 1, v4) == 1)
  {
    if (v30(&v13[v29], 1, v4) == 1)
    {
      sub_22DDEF284(v13, &qword_27DA37AD8, &qword_22DECB040);
LABEL_25:
      sub_22DEC48B4();
      sub_22DE67B8C(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v31 = sub_22DEC4BF4();
      return v31 & 1;
    }

    goto LABEL_21;
  }

  sub_22DE63E20(v13, v10);
  if (v30(&v13[v29], 1, v4) == 1)
  {
    sub_22DE644CC(v10);
LABEL_21:
    sub_22DDEF284(v13, &qword_27DA38758, &unk_22DECBA30);
    goto LABEL_22;
  }

  sub_22DE62BD4(&v13[v29], v7);
  v33 = _s6NDOAPI34Com_Apple_Sse_Ocean_Ndo_Api_LocaleV2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_22DE644CC(v7);
  sub_22DE644CC(v10);
  sub_22DDEF284(v13, &qword_27DA37AD8, &qword_22DECB040);
  if (v33)
  {
    goto LABEL_25;
  }

LABEL_22:
  v31 = 0;
  return v31 & 1;
}

uint64_t _s6NDOAPI34Com_Apple_Sse_Ocean_Ndo_Api_LocaleV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0);
  v5 = v4[6];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    v10 = *v6 == *v8 && v7 == v9;
    if (!v10 && (sub_22DEC50E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (sub_22DE2F604(*a1, *a2))
  {
    v11 = v4[7];
    v12 = (a1 + v11);
    v13 = *(a1 + v11 + 8);
    v14 = (a2 + v11);
    v15 = v14[1];
    if (v13)
    {
      if (!v15)
      {
        return 0;
      }

      v16 = *v12 == *v14 && v13 == v15;
      if (!v16 && (sub_22DEC50E4() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v15)
    {
      return 0;
    }

    v17 = v4[8];
    v18 = (a1 + v17);
    v19 = *(a1 + v17 + 8);
    v20 = (a2 + v17);
    v21 = v20[1];
    if (v19)
    {
      if (!v21)
      {
        return 0;
      }

      v22 = *v18 == *v20 && v19 == v21;
      if (!v22 && (sub_22DEC50E4() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v21)
    {
      return 0;
    }

    v23 = v4[9];
    v24 = (a1 + v23);
    v25 = *(a1 + v23 + 8);
    v26 = (a2 + v23);
    v27 = v26[1];
    if (v25)
    {
      if (!v27 || (*v24 != *v26 || v25 != v27) && (sub_22DEC50E4() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v27)
    {
      return 0;
    }

    v28 = v4[10];
    v29 = (a1 + v28);
    v30 = *(a1 + v28 + 8);
    v31 = (a2 + v28);
    v32 = v31[1];
    if (v30)
    {
      if (v32 && (*v29 == *v31 && v30 == v32 || (sub_22DEC50E4() & 1) != 0))
      {
        goto LABEL_41;
      }
    }

    else if (!v32)
    {
LABEL_41:
      sub_22DEC48B4();
      sub_22DE67B8C(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      return sub_22DEC4BF4() & 1;
    }
  }

  return 0;
}

uint64_t sub_22DE67B8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22DE67BD8()
{
  result = qword_27DA38698;
  if (!qword_27DA38698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA38698);
  }

  return result;
}

unint64_t sub_22DE67C30()
{
  result = qword_27DA386A0;
  if (!qword_27DA386A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA386A0);
  }

  return result;
}

unint64_t sub_22DE67C88()
{
  result = qword_27DA386A8;
  if (!qword_27DA386A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA386A8);
  }

  return result;
}

unint64_t sub_22DE67D10()
{
  result = qword_27DA386C0;
  if (!qword_27DA386C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA386C0);
  }

  return result;
}

unint64_t sub_22DE67D68()
{
  result = qword_27DA386C8;
  if (!qword_27DA386C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA386C8);
  }

  return result;
}

unint64_t sub_22DE67DC0()
{
  result = qword_27DA386D0;
  if (!qword_27DA386D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA386D0);
  }

  return result;
}

unint64_t sub_22DE67E48()
{
  result = qword_27DA386E8;
  if (!qword_27DA386E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA386E8);
  }

  return result;
}

unint64_t sub_22DE67EA0()
{
  result = qword_27DA386F0;
  if (!qword_27DA386F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA386F0);
  }

  return result;
}

unint64_t sub_22DE67EF8()
{
  result = qword_27DA386F8;
  if (!qword_27DA386F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA386F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Com_Apple_Sse_Ocean_Ndo_Api_RequestHeaders(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Com_Apple_Sse_Ocean_Ndo_Api_RequestHeaders(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Com_Apple_Sse_Ocean_Ndo_Api_ResponseHeaders(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Com_Apple_Sse_Ocean_Ndo_Api_ResponseHeaders(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_22DE685B4(uint64_t a1)
{
  sub_22DE687C8(319, &qword_28145AD38, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_22DEC48B4();
    if (v2 <= 0x3F)
    {
      sub_22DE687C8(319, &qword_28145AD88, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22DE686CC(uint64_t a1)
{
  sub_22DEC48B4();
  if (v1 <= 0x3F)
  {
    sub_22DE687C8(319, &qword_28145AD88, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_22DE687C8(319, &qword_28145AD00, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_22DE68818(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22DE687C8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_22DE68818(uint64_t a1)
{
  if (!qword_28145D538[0])
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(255);
    v1 = sub_22DEC4EB4();
    if (!v2)
    {
      atomic_store(v1, qword_28145D538);
    }
  }
}

void sub_22DE68898(uint64_t a1)
{
  sub_22DEC48B4();
  if (v1 <= 0x3F)
  {
    sub_22DE687C8(319, &qword_28145AD88, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_22DE687C8(319, &qword_28145AD00, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_22DE6897C()
{
  result = qword_27DA38740;
  if (!qword_27DA38740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA38740);
  }

  return result;
}

unint64_t sub_22DE689D0()
{
  result = qword_27DA38748;
  if (!qword_27DA38748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA38748);
  }

  return result;
}

unint64_t sub_22DE68A24()
{
  result = qword_27DA38750;
  if (!qword_27DA38750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA38750);
  }

  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCResponse.data.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37DD0, &qword_22DECBB20);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCResponse(0);
  sub_22DDF0028(v1 + *(v6 + 24), v5, &qword_27DA37DD0, &qword_22DECBB20);
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_22DE6B268(v5, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse);
  }

  *a1 = MEMORY[0x277D84F90];
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_22DDEF284(v5, &qword_27DA37DD0, &qword_22DECBB20);
  }

  return result;
}

NDOAPI::Com_Apple_Sse_Ocean_Ndo_Api_CCItemType_optional __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_CCItemType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x40302010005uLL >> (8 * rawValue);
  if (rawValue >= 6)
  {
    LOBYTE(v2) = 5;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_22DE68CB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE81C44();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCRequest.meta.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  v6 = *(v1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCRequest(0) + 20));
  v7 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CCRequestP33_2E671CB3414F520C2731BDA23B038D1C13_StorageClass__meta;
  swift_beginAccess();
  sub_22DDF0028(v6 + v7, v5, &qword_27DA37A38, &unk_22DEC6570);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_22DE6B268(v5, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v10 = (a1 + v8[5]);
  *v10 = 0;
  v10[1] = 0;
  v11 = a1 + v8[6];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = v8[7];
  v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0);
  (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_22DDEF284(v5, &qword_27DA37A38, &unk_22DEC6570);
  }

  return result;
}

uint64_t sub_22DE68EF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DE73990(a1, v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  v11 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCRequest._StorageClass(0);
    swift_allocObject();
    v13 = sub_22DE73744(v13);
    *(a2 + v11) = v13;
  }

  sub_22DE6B268(v10, v6, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  (*(v8 + 56))(v6, 0, 1, v7);
  v14 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CCRequestP33_2E671CB3414F520C2731BDA23B038D1C13_StorageClass__meta;
  swift_beginAccess();
  sub_22DDF0208(v6, v13 + v14, &qword_27DA37A38, &unk_22DEC6570);
  return swift_endAccess();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCRequest.meta.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCRequest._StorageClass(0);
    swift_allocObject();
    v9 = sub_22DE73744(v9);
    *(v2 + v7) = v9;
  }

  sub_22DE6B268(a1, v6, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  v11 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CCRequestP33_2E671CB3414F520C2731BDA23B038D1C13_StorageClass__meta;
  swift_beginAccess();
  sub_22DDF0208(v6, v9 + v11, &qword_27DA37A38, &unk_22DEC6570);
  return swift_endAccess();
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_CCRequest.meta.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCRequest(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CCRequestP33_2E671CB3414F520C2731BDA23B038D1C13_StorageClass__meta;
  swift_beginAccess();
  sub_22DDF0028(v16 + v17, v8, &qword_27DA37A38, &unk_22DEC6570);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v19 = (v14 + v9[5]);
    *v19 = 0;
    v19[1] = 0;
    v20 = v14 + v9[6];
    *v20 = 0;
    *(v20 + 8) = 1;
    v21 = v9[7];
    v22 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0);
    (*(*(v22 - 8) + 56))(v14 + v21, 1, 1, v22);
    if (v18(v8, 1, v9) != 1)
    {
      sub_22DDEF284(v8, &qword_27DA37A38, &unk_22DEC6570);
    }
  }

  else
  {
    sub_22DE6B268(v8, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  }

  return sub_22DE69508;
}

void sub_22DE69508(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_22DE73990(*(v2 + 120), *(v2 + 112), type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCRequest._StorageClass(0);
      swift_allocObject();
      v6 = sub_22DE73744(v6);
      *(v8 + v7) = v6;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v11 = *(v2 + 96);
    v12 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_22DE6B268(v10, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
    (*(v12 + 56))(v14, 0, 1, v11);
    v15 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CCRequestP33_2E671CB3414F520C2731BDA23B038D1C13_StorageClass__meta;
    swift_beginAccess();
    sub_22DDF0208(v14, v6 + v15, &qword_27DA37A38, &unk_22DEC6570);
    swift_endAccess();
    sub_22DE739F8(v9, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  }

  else
  {
    v16 = *(v2 + 72);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v16 + v3);
    if ((v17 & 1) == 0)
    {
      v19 = *(v2 + 128);
      v20 = *(v2 + 72);
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCRequest._StorageClass(0);
      swift_allocObject();
      v18 = sub_22DE73744(v18);
      *(v20 + v19) = v18;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v21 = *(v2 + 96);
    v22 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_22DE6B268(v9, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
    (*(v22 + 56))(v14, 0, 1, v21);
    v23 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CCRequestP33_2E671CB3414F520C2731BDA23B038D1C13_StorageClass__meta;
    swift_beginAccess();
    sub_22DDF0208(v14, v18 + v23, &qword_27DA37A38, &unk_22DEC6570);
    swift_endAccess();
  }

  free(v9);
  free(v10);
  free(v13);
  free(v14);

  free(v2);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCRequest.common.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A40, &unk_22DEC7330);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = *(v1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCRequest(0) + 20));
  v7 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CCRequestP33_2E671CB3414F520C2731BDA23B038D1C13_StorageClass__common;
  swift_beginAccess();
  sub_22DDF0028(v6 + v7, v5, &qword_27DA37A40, &unk_22DEC7330);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_22DE6B268(v5, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
  }

  v10 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 1) = v10;
  *(a1 + 2) = v10;
  *(a1 + 3) = v10;
  *(a1 + 4) = v10;
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v11 = v8[10];
  v12 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_UserData(0);
  (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
  v13 = &a1[v8[11]];
  *v13 = 0;
  v13[8] = 1;
  v14 = &a1[v8[12]];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &a1[v8[13]];
  *v15 = 0;
  *(v15 + 1) = 0;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_22DDEF284(v5, &qword_27DA37A40, &unk_22DEC7330);
  }

  return result;
}

uint64_t sub_22DE699C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A40, &unk_22DEC7330);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DE73990(a1, v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
  v11 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCRequest._StorageClass(0);
    swift_allocObject();
    v13 = sub_22DE73744(v13);
    *(a2 + v11) = v13;
  }

  sub_22DE6B268(v10, v6, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
  (*(v8 + 56))(v6, 0, 1, v7);
  v14 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CCRequestP33_2E671CB3414F520C2731BDA23B038D1C13_StorageClass__common;
  swift_beginAccess();
  sub_22DDF0208(v6, v13 + v14, &qword_27DA37A40, &unk_22DEC7330);
  return swift_endAccess();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCRequest.common.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A40, &unk_22DEC7330);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCRequest._StorageClass(0);
    swift_allocObject();
    v9 = sub_22DE73744(v9);
    *(v2 + v7) = v9;
  }

  sub_22DE6B268(a1, v6, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
  v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  v11 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CCRequestP33_2E671CB3414F520C2731BDA23B038D1C13_StorageClass__common;
  swift_beginAccess();
  sub_22DDF0208(v6, v9 + v11, &qword_27DA37A40, &unk_22DEC7330);
  return swift_endAccess();
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_CCRequest.common.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A40, &unk_22DEC7330) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCRequest(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CCRequestP33_2E671CB3414F520C2731BDA23B038D1C13_StorageClass__common;
  swift_beginAccess();
  sub_22DDF0028(v16 + v17, v8, &qword_27DA37A40, &unk_22DEC7330);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    v19 = MEMORY[0x277D84F90];
    *v14 = MEMORY[0x277D84F90];
    *(v14 + 1) = v19;
    *(v14 + 2) = v19;
    *(v14 + 3) = v19;
    *(v14 + 4) = v19;
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v20 = v9[10];
    v21 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_UserData(0);
    (*(*(v21 - 8) + 56))(&v14[v20], 1, 1, v21);
    v22 = &v14[v9[11]];
    *v22 = 0;
    v22[8] = 1;
    v23 = &v14[v9[12]];
    *v23 = 0;
    *(v23 + 1) = 0;
    v24 = &v14[v9[13]];
    *v24 = 0;
    *(v24 + 1) = 0;
    if (v18(v8, 1, v9) != 1)
    {
      sub_22DDEF284(v8, &qword_27DA37A40, &unk_22DEC7330);
    }
  }

  else
  {
    sub_22DE6B268(v8, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
  }

  return sub_22DE69FF4;
}

void sub_22DE69FF4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_22DE73990(*(v2 + 120), *(v2 + 112), type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCRequest._StorageClass(0);
      swift_allocObject();
      v6 = sub_22DE73744(v6);
      *(v8 + v7) = v6;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v11 = *(v2 + 96);
    v12 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_22DE6B268(v10, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
    (*(v12 + 56))(v14, 0, 1, v11);
    v15 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CCRequestP33_2E671CB3414F520C2731BDA23B038D1C13_StorageClass__common;
    swift_beginAccess();
    sub_22DDF0208(v14, v6 + v15, &qword_27DA37A40, &unk_22DEC7330);
    swift_endAccess();
    sub_22DE739F8(v9, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
  }

  else
  {
    v16 = *(v2 + 72);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v16 + v3);
    if ((v17 & 1) == 0)
    {
      v19 = *(v2 + 128);
      v20 = *(v2 + 72);
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCRequest._StorageClass(0);
      swift_allocObject();
      v18 = sub_22DE73744(v18);
      *(v20 + v19) = v18;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v21 = *(v2 + 96);
    v22 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_22DE6B268(v9, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
    (*(v22 + 56))(v14, 0, 1, v21);
    v23 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CCRequestP33_2E671CB3414F520C2731BDA23B038D1C13_StorageClass__common;
    swift_beginAccess();
    sub_22DDF0208(v14, v18 + v23, &qword_27DA37A40, &unk_22DEC7330);
    swift_endAccess();
  }

  free(v9);
  free(v10);
  free(v13);
  free(v14);

  free(v2);
}

BOOL sub_22DE6A274(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17 - v10;
  v12 = *(v4 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCRequest(0) + 20));
  v13 = *a3;
  swift_beginAccess();
  sub_22DDF0028(v12 + v13, v11, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v11, 1, v14) != 1;
  sub_22DDEF284(v11, a1, a2);
  return v15;
}

uint64_t sub_22DE6A3BC(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v9 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - v11;
  v13 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v4 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCRequest._StorageClass(0);
    swift_allocObject();
    v15 = sub_22DE73744(v15);
    *(v9 + v13) = v15;
  }

  v16 = a3(0);
  (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  v17 = *a4;
  swift_beginAccess();
  sub_22DDF0208(v12, v15 + v17, a1, a2);
  return swift_endAccess();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCRequest.init()@<X0>(uint64_t a2@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCRequest(0) + 20);
  if (qword_27DA37820 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_27DA38790;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCResponse.meta.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38088, &unk_22DEC8220);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCResponse(0);
  sub_22DDF0028(v1 + *(v6 + 20), v5, &qword_27DA38088, &unk_22DEC8220);
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_22DE6B268(v5, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v9 = (a1 + v7[5]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a1 + v7[6]);
  *v10 = 0;
  v10[1] = 0;
  v11 = a1 + v7[7];
  *v11 = 0;
  *(v11 + 8) = 1;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_22DDEF284(v5, &qword_27DA38088, &unk_22DEC8220);
  }

  return result;
}

uint64_t sub_22DE6A72C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38088, &unk_22DEC8220);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCResponse(0);
  sub_22DDF0028(a1 + *(v7 + 20), v6, &qword_27DA38088, &unk_22DEC8220);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_22DE6B268(v6, a2, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v10 = (a2 + v8[5]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a2 + v8[6]);
  *v11 = 0;
  v11[1] = 0;
  v12 = a2 + v8[7];
  *v12 = 0;
  *(v12 + 8) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_22DDEF284(v6, &qword_27DA38088, &unk_22DEC8220);
  }

  return result;
}

uint64_t sub_22DE6A8B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DE73990(a1, v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  v8 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCResponse(0) + 20);
  sub_22DDEF284(a2 + v8, &qword_27DA38088, &unk_22DEC8220);
  sub_22DE6B268(v7, a2 + v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCResponse.meta.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCResponse(0) + 20);
  sub_22DDEF284(v1 + v3, &qword_27DA38088, &unk_22DEC8220);
  sub_22DE6B268(a1, v1 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_CCResponse.meta.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38088, &unk_22DEC8220) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCResponse(0) + 20);
  *(v5 + 12) = v15;
  sub_22DDF0028(v1 + v15, v8, &qword_27DA38088, &unk_22DEC8220);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v17 = (v14 + v9[5]);
    *v17 = 0;
    v17[1] = 0;
    v18 = (v14 + v9[6]);
    *v18 = 0;
    v18[1] = 0;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 8) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      sub_22DDEF284(v8, &qword_27DA38088, &unk_22DEC8220);
    }
  }

  else
  {
    sub_22DE6B268(v8, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  }

  return sub_22DE6ACD4;
}

void sub_22DE6ACD4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_22DE73990((*a1)[5], v4, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
    sub_22DDEF284(v9 + v3, &qword_27DA38088, &unk_22DEC8220);
    sub_22DE6B268(v4, v9 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_22DE739F8(v5, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  }

  else
  {
    sub_22DDEF284(v9 + v3, &qword_27DA38088, &unk_22DEC8220);
    sub_22DE6B268(v5, v9 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t sub_22DE6AEB4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37DD0, &qword_22DECBB20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCResponse(0);
  sub_22DDF0028(a1 + *(v7 + 24), v6, &qword_27DA37DD0, &qword_22DECBB20);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_22DE6B268(v6, a2, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse);
  }

  *a2 = MEMORY[0x277D84F90];
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_22DDEF284(v6, &qword_27DA37DD0, &qword_22DECBB20);
  }

  return result;
}

uint64_t sub_22DE6B01C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DE73990(a1, v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse);
  v8 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCResponse(0) + 24);
  sub_22DDEF284(a2 + v8, &qword_27DA37DD0, &qword_22DECBB20);
  sub_22DE6B268(v7, a2 + v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCResponse.data.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCResponse(0) + 24);
  sub_22DDEF284(v1 + v3, &qword_27DA37DD0, &qword_22DECBB20);
  sub_22DE6B268(a1, v1 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse);
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse(0);
  return _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
}

uint64_t sub_22DE6B268(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_CCResponse.data.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37DD0, &qword_22DECBB20) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCResponse(0) + 24);
  *(v5 + 12) = v15;
  sub_22DDF0028(v1 + v15, v8, &qword_27DA37DD0, &qword_22DECBB20);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_22DDEF284(v8, &qword_27DA37DD0, &qword_22DECBB20);
    }
  }

  else
  {
    sub_22DE6B268(v8, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse);
  }

  return sub_22DE6B50C;
}

void sub_22DE6B50C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_22DE73990((*a1)[5], v4, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse);
    sub_22DDEF284(v9 + v3, &qword_27DA37DD0, &qword_22DECBB20);
    sub_22DE6B268(v4, v9 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_22DE739F8(v5, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse);
  }

  else
  {
    sub_22DDEF284(v9 + v3, &qword_27DA37DD0, &qword_22DECBB20);
    sub_22DE6B268(v5, v9 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCResponse.init()@<X0>(uint64_t a2@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v3 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCResponse(0);
  v4 = *(v3 + 20);
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(v3 + 24);
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_CCSection.header.modify(uint64_t *a1))()
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
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCSection.isExpandable.setter(char a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_CCSection.isExpandable.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_22DE2CCE4;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCSection.expandThreshold.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection(0) + 32));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCSection.expandThreshold.setter(int a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_CCSection.expandThreshold.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection(0) + 32);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_22DE5DDF0;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_CCSection.clearExpandThreshold()()
{
  v1 = v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCSection.items.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_CCSection.expandLabel.modify(uint64_t *a1))()
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
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection(0) + 36);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE2D1BC;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_CCSection.footer.modify(uint64_t *a1))()
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
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection(0) + 40);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}