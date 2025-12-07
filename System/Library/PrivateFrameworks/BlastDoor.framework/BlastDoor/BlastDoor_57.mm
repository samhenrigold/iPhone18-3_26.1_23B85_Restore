uint64_t sub_21450D3E8(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) + *(a1 + 24);
  v4 = *a1;
  v5 = *v3;
  v6 = *(v3 + 8);
  if (a2)
  {
    sub_21402D9F8(*a1, v2);
    sub_213FDC6BC(v5, v6);
    *v3 = v4;
    *(v3 + 8) = v2;

    return sub_213FB54FC(v4, v2);
  }

  else
  {
    result = sub_213FDC6BC(*v3, *(v3 + 8));
    *v3 = v4;
    *(v3 + 8) = v2;
  }

  return result;
}

double sub_21450D4B8()
{
  v1 = v0 + *(type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent(0) + 28);
  sub_213FDC6BC(*v1, *(v1 + 8));
  result = 0.0;
  *v1 = xmmword_2146E68C0;
  return result;
}

uint64_t sub_21450D598@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v2 = *(type metadata accessor for NearbyProtoJoinResponseContent(0) + 20);
  v3 = type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation(0);
  (*(*(v3 - 8) + 56))(&a1[v2], 1, 1, v3);
  return sub_2146D8DE8();
}

uint64_t sub_21450D684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_2146D8E78();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        type metadata accessor for NearbyProtoConnectionRequest(0);
        sub_2146D8F38();
      }

      else if (result == 4)
      {
        type metadata accessor for NearbyProtoConnectionRequest(0);
        sub_2146D8EC8();
      }
    }

    else if (result == 1 || result == 2)
    {
      sub_2146D8F48();
    }
  }

  return result;
}

uint64_t sub_21450D778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_2146D90A8(), !v4))
  {
    v11 = v3[3];
    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v12 || (result = sub_2146D90A8(), !v4))
    {
      result = sub_21450D86C(v3, a1, a2, a3);
      if (!v4)
      {
        sub_21450D8E4(v3, a1, a2, a3);
        type metadata accessor for NearbyProtoConnectionRequest(0);
        return sub_2146D8DD8();
      }
    }
  }

  return result;
}

uint64_t sub_21450D86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for NearbyProtoConnectionRequest(0);
  if (*(a1 + *(result + 28) + 8))
  {
    return sub_2146D90A8();
  }

  return result;
}

uint64_t sub_21450D8E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for NearbyProtoConnectionRequest(0);
  v6 = a1 + *(result + 32);
  v7 = *(v6 + 8);
  if (v7 >> 60 != 15)
  {
    v8 = *v6;
    sub_21402D9F8(*v6, *(v6 + 8));
    sub_2146D9048();
    return sub_213FDC6BC(v8, v7);
  }

  return result;
}

double sub_21450D9D0@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  sub_2146D8DE8();
  v4 = *(a1 + 32);
  v5 = (a2 + *(a1 + 28));
  *v5 = 0;
  v5[1] = 0;
  result = 0.0;
  *(a2 + v4) = xmmword_2146E68C0;
  return result;
}

uint64_t sub_21450DA70(uint64_t a1, uint64_t a2)
{
  v4 = sub_21451415C(&qword_27C9150B8, type metadata accessor for NearbyProtoConnectionRequest, aYr_0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21450DB10(uint64_t a1)
{
  v2 = sub_21451415C(&qword_27C914F18, type metadata accessor for NearbyProtoConnectionRequest, byte_214758590);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21450DB7C(uint64_t a1, uint64_t a2)
{
  sub_21451415C(&qword_27C914F18, type metadata accessor for NearbyProtoConnectionRequest, byte_214758590);

  return sub_2146D9008();
}

uint64_t sub_21450DC38(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_2146D9148();
  __swift_allocate_value_buffer(v6, a2);
  __swift_project_value_buffer(v6, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v7 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v8 = *(*v7 + 72);
  v9 = (*(*v7 + 80) + 32) & ~*(*v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2146E68F0;
  v11 = (v10 + v9);
  v12 = v11 + v7[14];
  *v11 = 1;
  *v12 = "identifier";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v13 = *MEMORY[0x277D21870];
  v14 = sub_2146D9118();
  v15 = *(*(v14 - 8) + 104);
  (v15)(v12, v13, v14);
  v16 = v11 + v8 + v7[14];
  *(v11 + v8) = 2;
  *v16 = "handle";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v15();
  v17 = v7[14];
  v18 = (v11 + 2 * v8);
  *v18 = 3;
  v19 = v18 + v17;
  *v19 = a3;
  *(v19 + 1) = a4;
  v19[16] = 2;
  v15();
  v20 = (v11 + 3 * v8);
  v21 = v20 + v7[14];
  *v20 = 4;
  *v21 = a5;
  *(v21 + 1) = 8;
  v21[16] = 2;
  v15();
  return sub_2146D9128();
}

uint64_t sub_21450DE9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_2146D8E78();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        sub_21450DF68(v5, a1, a2, a3);
      }

      else if (result == 4)
      {
        sub_21450E534(v5, a1, a2, a3);
      }
    }

    else if (result == 1 || result == 2)
    {
      sub_2146D8F48();
    }
  }

  return result;
}

uint64_t sub_21450DF68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for NearbyProtoConnectionResponseContent.DeniedContent(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v44 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v45 = &v40 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914EC0, qword_214758530);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v40 - v11;
  v13 = type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v40 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9150E0, &qword_214759238);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v47 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v40 - v23;
  v46 = v6;
  v25 = *(v6 + 56);
  v49 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v40 - v23, 1, 1, v26);
  v28 = *(type metadata accessor for NearbyProtoConnectionResponseContent(0) + 24);
  v43 = a1;
  v41 = v28;
  sub_213FB2E54(a1 + v28, v12, &qword_27C914EC0, qword_214758530);
  v42 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_213FB2DF4(v12, &qword_27C914EC0, qword_214758530);
    v30 = v13;
    v31 = v49;
  }

  else
  {
    sub_21450B2C0(v12, v19, type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation);
    sub_21450B2C0(v19, v17, type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21450ACF8(v17, type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation);
      v31 = v49;
    }

    else
    {
      sub_213FB2DF4(v24, &qword_27C9150E0, &qword_214759238);
      v32 = v17;
      v33 = v45;
      sub_21450B2C0(v32, v45, type metadata accessor for NearbyProtoConnectionResponseContent.DeniedContent);
      sub_21450B2C0(v33, v24, type metadata accessor for NearbyProtoConnectionResponseContent.DeniedContent);
      v31 = v49;
      v27(v24, 0, 1, v49);
    }
  }

  v34 = v47;
  sub_21451415C(&qword_27C914F60, type metadata accessor for NearbyProtoConnectionResponseContent.DeniedContent, byte_2147589C8);
  v35 = v48;
  sub_2146D8F98();
  if (v35)
  {
    return sub_213FB2DF4(v24, &qword_27C9150E0, &qword_214759238);
  }

  sub_213FB2E54(v24, v34, &qword_27C9150E0, &qword_214759238);
  if ((*(v46 + 48))(v34, 1, v31) == 1)
  {
    sub_213FB2DF4(v24, &qword_27C9150E0, &qword_214759238);
    return sub_213FB2DF4(v34, &qword_27C9150E0, &qword_214759238);
  }

  else
  {
    v37 = v44;
    sub_21450B2C0(v34, v44, type metadata accessor for NearbyProtoConnectionResponseContent.DeniedContent);
    if (v29 != 1)
    {
      sub_2146D8E88();
    }

    sub_213FB2DF4(v24, &qword_27C9150E0, &qword_214759238);
    v38 = v43;
    v39 = v41;
    sub_213FB2DF4(v43 + v41, &qword_27C914EC0, qword_214758530);
    sub_21450B2C0(v37, v38 + v39, type metadata accessor for NearbyProtoConnectionResponseContent.DeniedContent);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v38 + v39, 0, 1, v30);
  }
}

uint64_t sub_21450E534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v44 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v45 = &v40 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914EC0, qword_214758530);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v40 - v11;
  v13 = type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v40 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9150E8, &qword_214759240);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v47 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v40 - v23;
  v46 = v6;
  v25 = *(v6 + 56);
  v49 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v40 - v23, 1, 1, v26);
  v28 = *(type metadata accessor for NearbyProtoConnectionResponseContent(0) + 24);
  v43 = a1;
  v41 = v28;
  sub_213FB2E54(a1 + v28, v12, &qword_27C914EC0, qword_214758530);
  v42 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_213FB2DF4(v12, &qword_27C914EC0, qword_214758530);
    v30 = v13;
  }

  else
  {
    sub_21450B2C0(v12, v19, type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation);
    sub_21450B2C0(v19, v17, type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_213FB2DF4(v24, &qword_27C9150E8, &qword_214759240);
      v31 = v17;
      v32 = v45;
      sub_21450B2C0(v31, v45, type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent);
      sub_21450B2C0(v32, v24, type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent);
      v33 = v49;
      v27(v24, 0, 1, v49);
      goto LABEL_7;
    }

    sub_21450ACF8(v17, type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation);
  }

  v33 = v49;
LABEL_7:
  v34 = v47;
  sub_21451415C(&qword_27C914F48, type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent, a1r);
  v35 = v48;
  sub_2146D8F98();
  if (v35)
  {
    return sub_213FB2DF4(v24, &qword_27C9150E8, &qword_214759240);
  }

  sub_213FB2E54(v24, v34, &qword_27C9150E8, &qword_214759240);
  if ((*(v46 + 48))(v34, 1, v33) == 1)
  {
    sub_213FB2DF4(v24, &qword_27C9150E8, &qword_214759240);
    return sub_213FB2DF4(v34, &qword_27C9150E8, &qword_214759240);
  }

  else
  {
    v37 = v44;
    sub_21450B2C0(v34, v44, type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent);
    if (v29 != 1)
    {
      sub_2146D8E88();
    }

    sub_213FB2DF4(v24, &qword_27C9150E8, &qword_214759240);
    v38 = v43;
    v39 = v41;
    sub_213FB2DF4(v43 + v41, &qword_27C914EC0, qword_214758530);
    sub_21450B2C0(v37, v38 + v39, type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v38 + v39, 0, 1, v30);
  }
}

uint64_t sub_21450EAFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914EC0, qword_214758530);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = v3[1];
  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13 || (result = sub_2146D90A8(), !v4))
  {
    v15 = v3[3];
    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v16 || (result = sub_2146D90A8(), !v4))
    {
      v17 = type metadata accessor for NearbyProtoConnectionResponseContent(0);
      sub_213FB2E54(v5 + *(v17 + 24), v11, &qword_27C914EC0, qword_214758530);
      v18 = type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation(0);
      if ((*(*(v18 - 8) + 48))(v11, 1, v18) == 1)
      {
        return sub_2146D8DD8();
      }

      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_21450EF4C(v5, a1, a2, a3);
      }

      else
      {
        sub_21450ED08(v5, a1, a2, a3);
      }

      result = sub_21450ACF8(v11, type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation);
      if (!v4)
      {
        return sub_2146D8DD8();
      }
    }
  }

  return result;
}

uint64_t sub_21450ED08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914EC0, qword_214758530);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for NearbyProtoConnectionResponseContent.DeniedContent(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NearbyProtoConnectionResponseContent(0);
  sub_213FB2E54(a1 + *(v11 + 24), v7, &qword_27C914EC0, qword_214758530);
  v12 = type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_213FB2DF4(v7, &qword_27C914EC0, qword_214758530);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_21450B2C0(v7, v10, type metadata accessor for NearbyProtoConnectionResponseContent.DeniedContent);
    sub_21451415C(&qword_27C914F60, type metadata accessor for NearbyProtoConnectionResponseContent.DeniedContent, byte_2147589C8);
    sub_2146D90F8();
    return sub_21450ACF8(v10, type metadata accessor for NearbyProtoConnectionResponseContent.DeniedContent);
  }

  result = sub_21450ACF8(v7, type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation);
  __break(1u);
  return result;
}

uint64_t sub_21450EF4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914EC0, qword_214758530);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NearbyProtoConnectionResponseContent(0);
  sub_213FB2E54(a1 + *(v11 + 24), v7, &qword_27C914EC0, qword_214758530);
  v12 = type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_213FB2DF4(v7, &qword_27C914EC0, qword_214758530);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21450B2C0(v7, v10, type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent);
    sub_21451415C(&qword_27C914F48, type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent, a1r);
    sub_2146D90F8();
    return sub_21450ACF8(v10, type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent);
  }

  result = sub_21450ACF8(v7, type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation);
  __break(1u);
  return result;
}

uint64_t sub_21450F1DC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  v3 = *(a1 + 24);
  v4 = type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation(0);
  (*(*(v4 - 8) + 56))(&a2[v3], 1, 1, v4);
  return sub_2146D8DE8();
}

uint64_t sub_21450F280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_2146D8DF8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_21450F2F4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_2146D8DF8();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_21450F3BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21451415C(&qword_27C9150B0, type metadata accessor for NearbyProtoConnectionResponseContent, byte_214758770);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21450F45C(uint64_t a1)
{
  v2 = sub_21451415C(&qword_27C914F30, type metadata accessor for NearbyProtoConnectionResponseContent, byte_2147586F8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21450F4C8(uint64_t a1, uint64_t a2)
{
  sub_21451415C(&qword_27C914F30, type metadata accessor for NearbyProtoConnectionResponseContent, byte_2147586F8);

  return sub_2146D9008();
}

uint64_t sub_21450F548()
{
  result = MEMORY[0x2160545D0](0xD000000000000010, 0x800000021479D140);
  qword_27C914DF0 = 0xD00000000000001CLL;
  *algn_27C914DF8 = 0x800000021479D0C0;
  return result;
}

uint64_t sub_21450F5E4()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27C914E00);
  __swift_project_value_buffer(v0, qword_27C914E00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2146EA710;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "invitationData";
  *(v4 + 8) = 14;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_2146D9118();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_2146D9128();
}

uint64_t sub_21450F774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_2146D8E78();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_2146D8ED8();
    }
  }

  return result;
}

uint64_t sub_21450F7E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2 || *(v5 + 16) == *(v5 + 24))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v7)
  {
    if (v5 == v5 >> 32)
    {
      goto LABEL_10;
    }

LABEL_9:
    result = sub_2146D9048();
    if (v4)
    {
      return result;
    }

    goto LABEL_10;
  }

  if ((v6 & 0xFF000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent(0);
  return sub_2146D8DD8();
}

uint64_t sub_21450F97C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21451415C(&qword_27C9150A8, type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent, byte_2147588D8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21450FA1C(uint64_t a1)
{
  v2 = sub_21451415C(&qword_27C914F48, type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent, a1r);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21450FA88(uint64_t a1, uint64_t a2)
{
  sub_21451415C(&qword_27C914F48, type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent, a1r);

  return sub_2146D9008();
}

uint64_t sub_21450FB04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!sub_214466780(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    return 0;
  }

  sub_2146D8DF8();
  sub_21451415C(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_2146D9578() & 1;
}

uint64_t sub_21450FBB0()
{
  result = MEMORY[0x2160545D0](0x436465696E65442ELL, 0xEE00746E65746E6FLL);
  qword_27C914E18 = 0xD00000000000001CLL;
  unk_27C914E20 = 0x800000021479D0C0;
  return result;
}

uint64_t sub_21450FCF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21451415C(&qword_27C9150A0, type metadata accessor for NearbyProtoConnectionResponseContent.DeniedContent, aN_13);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21450FD90(uint64_t a1)
{
  v2 = sub_21451415C(&qword_27C914F60, type metadata accessor for NearbyProtoConnectionResponseContent.DeniedContent, byte_2147589C8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21450FDFC(uint64_t a1, uint64_t a2)
{
  sub_21451415C(&qword_27C914F60, type metadata accessor for NearbyProtoConnectionResponseContent.DeniedContent, byte_2147589C8);

  return sub_2146D9008();
}

uint64_t sub_21450FE94()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27C914E40);
  __swift_project_value_buffer(v0, qword_27C914E40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E68F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "displayName";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "userInfo";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "wantsTokenURI";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_214510104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_2146D8E78();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result > 3)
    {
      if (result == 4)
      {
        type metadata accessor for NearbyProtoJoinRequestContent(0);
        sub_2146D8EC8();
      }

      else if (result == 5)
      {
        type metadata accessor for NearbyProtoJoinRequestContent(0);
        sub_2146D8E98();
      }
    }

    else if (result == 1)
    {
      sub_2146D8F48();
    }

    else if (result == 3)
    {
      type metadata accessor for NearbyProtoJoinRequestContent(0);
      sub_2146D8F38();
    }
  }

  return result;
}

uint64_t sub_21451021C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_2146D90A8(), !v4))
  {
    result = sub_214510310(v3, a1, a2, a3);
    if (!v4)
    {
      sub_2145122A4(v3, a1, a2, a3, type metadata accessor for NearbyProtoJoinRequestContent, 4);
      sub_214510388(v3, a1, a2, a3);
      type metadata accessor for NearbyProtoJoinRequestContent(0);
      return sub_2146D8DD8();
    }
  }

  return result;
}

uint64_t sub_214510310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for NearbyProtoJoinRequestContent(0);
  if (*(a1 + *(result + 24) + 8))
  {
    return sub_2146D90A8();
  }

  return result;
}

uint64_t sub_214510388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for NearbyProtoJoinRequestContent(0);
  if (*(a1 + *(result + 32)) != 2)
  {
    return sub_2146D9028();
  }

  return result;
}

double sub_21451044C@<D0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  sub_2146D8DE8();
  v4 = a1[7];
  v5 = (a2 + a1[6]);
  *v5 = 0;
  v5[1] = 0;
  result = 0.0;
  *(a2 + v4) = xmmword_2146E68C0;
  *(a2 + a1[8]) = 2;
  return result;
}

uint64_t sub_2145104F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21451415C(&qword_27C915098, type metadata accessor for NearbyProtoJoinRequestContent, byte_214758BA8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_214510594(uint64_t a1)
{
  v2 = sub_21451415C(&qword_27C914F78, type metadata accessor for NearbyProtoJoinRequestContent, aAo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_214510600(uint64_t a1, uint64_t a2)
{
  sub_21451415C(&qword_27C914F78, type metadata accessor for NearbyProtoJoinRequestContent, aAo);

  return sub_2146D9008();
}

uint64_t sub_21451069C()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27C914E58);
  __swift_project_value_buffer(v0, qword_27C914E58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E68D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "denied";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 4;
  *v11 = "approved";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_2145108D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_2146D8E78();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 4:
        sub_214510F54(v5, a1, a2, a3);
        break;
      case 3:
        sub_214510988(v5, a1, a2, a3);
        break;
      case 1:
        sub_2146D8F48();
        break;
    }
  }

  return result;
}

uint64_t sub_214510988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for NearbyProtoJoinResponseContent.DeniedContent(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v44 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v45 = &v40 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914EC8, &unk_214784480);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v40 - v11;
  v13 = type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v40 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9150C8, &qword_214759220);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v47 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v40 - v23;
  v46 = v6;
  v25 = *(v6 + 56);
  v49 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v40 - v23, 1, 1, v26);
  v28 = *(type metadata accessor for NearbyProtoJoinResponseContent(0) + 20);
  v43 = a1;
  v41 = v28;
  sub_213FB2E54(a1 + v28, v12, &qword_27C914EC8, &unk_214784480);
  v42 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_213FB2DF4(v12, &qword_27C914EC8, &unk_214784480);
    v30 = v13;
    v31 = v49;
  }

  else
  {
    sub_21450B2C0(v12, v19, type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation);
    sub_21450B2C0(v19, v17, type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21450ACF8(v17, type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation);
      v31 = v49;
    }

    else
    {
      sub_213FB2DF4(v24, &qword_27C9150C8, &qword_214759220);
      v32 = v17;
      v33 = v45;
      sub_21450B2C0(v32, v45, type metadata accessor for NearbyProtoJoinResponseContent.DeniedContent);
      sub_21450B2C0(v33, v24, type metadata accessor for NearbyProtoJoinResponseContent.DeniedContent);
      v31 = v49;
      v27(v24, 0, 1, v49);
    }
  }

  v34 = v47;
  sub_21451415C(&qword_27C914FC0, type metadata accessor for NearbyProtoJoinResponseContent.DeniedContent, aK_2);
  v35 = v48;
  sub_2146D8F98();
  if (v35)
  {
    return sub_213FB2DF4(v24, &qword_27C9150C8, &qword_214759220);
  }

  sub_213FB2E54(v24, v34, &qword_27C9150C8, &qword_214759220);
  if ((*(v46 + 48))(v34, 1, v31) == 1)
  {
    sub_213FB2DF4(v24, &qword_27C9150C8, &qword_214759220);
    return sub_213FB2DF4(v34, &qword_27C9150C8, &qword_214759220);
  }

  else
  {
    v37 = v44;
    sub_21450B2C0(v34, v44, type metadata accessor for NearbyProtoJoinResponseContent.DeniedContent);
    if (v29 != 1)
    {
      sub_2146D8E88();
    }

    sub_213FB2DF4(v24, &qword_27C9150C8, &qword_214759220);
    v38 = v43;
    v39 = v41;
    sub_213FB2DF4(v43 + v41, &qword_27C914EC8, &unk_214784480);
    sub_21450B2C0(v37, v38 + v39, type metadata accessor for NearbyProtoJoinResponseContent.DeniedContent);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v38 + v39, 0, 1, v30);
  }
}

uint64_t sub_214510F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v44 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v45 = &v40 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914EC8, &unk_214784480);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v40 - v11;
  v13 = type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v40 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9150D0, &qword_214759228);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v47 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v40 - v23;
  v46 = v6;
  v25 = *(v6 + 56);
  v49 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v40 - v23, 1, 1, v26);
  v28 = *(type metadata accessor for NearbyProtoJoinResponseContent(0) + 20);
  v43 = a1;
  v41 = v28;
  sub_213FB2E54(a1 + v28, v12, &qword_27C914EC8, &unk_214784480);
  v42 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_213FB2DF4(v12, &qword_27C914EC8, &unk_214784480);
    v30 = v13;
  }

  else
  {
    sub_21450B2C0(v12, v19, type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation);
    sub_21450B2C0(v19, v17, type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_213FB2DF4(v24, &qword_27C9150D0, &qword_214759228);
      v31 = v17;
      v32 = v45;
      sub_21450B2C0(v31, v45, type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent);
      sub_21450B2C0(v32, v24, type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent);
      v33 = v49;
      v27(v24, 0, 1, v49);
      goto LABEL_7;
    }

    sub_21450ACF8(v17, type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation);
  }

  v33 = v49;
LABEL_7:
  v34 = v47;
  sub_21451415C(&qword_27C914FA8, type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent, byte_214758E00);
  v35 = v48;
  sub_2146D8F98();
  if (v35)
  {
    return sub_213FB2DF4(v24, &qword_27C9150D0, &qword_214759228);
  }

  sub_213FB2E54(v24, v34, &qword_27C9150D0, &qword_214759228);
  if ((*(v46 + 48))(v34, 1, v33) == 1)
  {
    sub_213FB2DF4(v24, &qword_27C9150D0, &qword_214759228);
    return sub_213FB2DF4(v34, &qword_27C9150D0, &qword_214759228);
  }

  else
  {
    v37 = v44;
    sub_21450B2C0(v34, v44, type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent);
    if (v29 != 1)
    {
      sub_2146D8E88();
    }

    sub_213FB2DF4(v24, &qword_27C9150D0, &qword_214759228);
    v38 = v43;
    v39 = v41;
    sub_213FB2DF4(v43 + v41, &qword_27C914EC8, &unk_214784480);
    sub_21450B2C0(v37, v38 + v39, type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v38 + v39, 0, 1, v30);
  }
}

uint64_t sub_21451151C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914EC8, &unk_214784480);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v18 - v11;
  v13 = v3[1];
  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    result = sub_2146D90A8();
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  v16 = type metadata accessor for NearbyProtoJoinResponseContent(0);
  sub_213FB2E54(v6 + *(v16 + 20), v12, &qword_27C914EC8, &unk_214784480);
  v17 = type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation(0);
  if ((*(*(v17 - 8) + 48))(v12, 1, v17) == 1)
  {
    return sub_2146D8DD8();
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_214511934(v6, a1, a2, a3);
  }

  else
  {
    sub_2145116F0(v6, a1, a2, a3);
  }

  result = sub_21450ACF8(v12, type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation);
  if (!v5)
  {
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_2145116F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914EC8, &unk_214784480);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for NearbyProtoJoinResponseContent.DeniedContent(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NearbyProtoJoinResponseContent(0);
  sub_213FB2E54(a1 + *(v11 + 20), v7, &qword_27C914EC8, &unk_214784480);
  v12 = type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_213FB2DF4(v7, &qword_27C914EC8, &unk_214784480);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_21450B2C0(v7, v10, type metadata accessor for NearbyProtoJoinResponseContent.DeniedContent);
    sub_21451415C(&qword_27C914FC0, type metadata accessor for NearbyProtoJoinResponseContent.DeniedContent, aK_2);
    sub_2146D90F8();
    return sub_21450ACF8(v10, type metadata accessor for NearbyProtoJoinResponseContent.DeniedContent);
  }

  result = sub_21450ACF8(v7, type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation);
  __break(1u);
  return result;
}

uint64_t sub_214511934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914EC8, &unk_214784480);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NearbyProtoJoinResponseContent(0);
  sub_213FB2E54(a1 + *(v11 + 20), v7, &qword_27C914EC8, &unk_214784480);
  v12 = type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_213FB2DF4(v7, &qword_27C914EC8, &unk_214784480);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21450B2C0(v7, v10, type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent);
    sub_21451415C(&qword_27C914FA8, type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent, byte_214758E00);
    sub_2146D90F8();
    return sub_21450ACF8(v10, type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent);
  }

  result = sub_21450ACF8(v7, type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation);
  __break(1u);
  return result;
}

uint64_t sub_214511BC4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v3 = *(a1 + 20);
  v4 = type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation(0);
  (*(*(v4 - 8) + 56))(&a2[v3], 1, 1, v4);
  return sub_2146D8DE8();
}

uint64_t sub_214511C94(uint64_t a1, uint64_t a2)
{
  v4 = sub_21451415C(&qword_27C915090, type metadata accessor for NearbyProtoJoinResponseContent, aQk);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_214511D34(uint64_t a1)
{
  v2 = sub_21451415C(&qword_27C914F90, type metadata accessor for NearbyProtoJoinResponseContent, byte_214758C98);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_214511DA0(uint64_t a1, uint64_t a2)
{
  sub_21451415C(&qword_27C914F90, type metadata accessor for NearbyProtoJoinResponseContent, byte_214758C98);

  return sub_2146D9008();
}

uint64_t sub_214511E20()
{
  result = MEMORY[0x2160545D0](0xD000000000000010, 0x800000021479D140);
  qword_27C914E70 = 0xD000000000000016;
  *algn_27C914E78 = 0x800000021479D100;
  return result;
}

uint64_t sub_214511EBC()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27C914E80);
  __swift_project_value_buffer(v0, qword_27C914E80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E68D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "sessionIdentifier";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "memberHandles";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "userInfo";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_2145120F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_2146D8E78();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent(0);
        sub_2146D8EC8();
        break;
      case 2:
        sub_2146D8F18();
        break;
      case 1:
        sub_2146D8F48();
        break;
    }
  }

  return result;
}

uint64_t sub_2145121BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_2146D90A8(), !v4))
  {
    if (!*(v3[2] + 16) || (result = sub_2146D9088(), !v4))
    {
      result = sub_2145122A4(v3, a1, a2, a3, type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent, 3);
      if (!v4)
      {
        type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent(0);
        return sub_2146D8DD8();
      }
    }
  }

  return result;
}

uint64_t sub_2145122A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  result = a5(0);
  v8 = a1 + *(result + 28);
  v9 = *(v8 + 8);
  if (v9 >> 60 != 15)
  {
    v10 = *v8;
    sub_21402D9F8(*v8, *(v8 + 8));
    sub_2146D9048();
    return sub_213FDC6BC(v10, v9);
  }

  return result;
}

double sub_2145123A0@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = MEMORY[0x277D84F90];
  sub_2146D8DE8();
  result = 0.0;
  *(a2 + *(a1 + 28)) = xmmword_2146E68C0;
  return result;
}

uint64_t sub_21451244C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21451415C(&qword_27C915088, type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent, byte_214758E78);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2145124EC(uint64_t a1)
{
  v2 = sub_21451415C(&qword_27C914FA8, type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent, byte_214758E00);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_214512558(uint64_t a1, uint64_t a2)
{
  sub_21451415C(&qword_27C914FA8, type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent, byte_214758E00);

  return sub_2146D9008();
}

uint64_t sub_2145125D8()
{
  result = MEMORY[0x2160545D0](0x436465696E65442ELL, 0xEE00746E65746E6FLL);
  qword_27C914E98 = 0xD000000000000016;
  unk_27C914EA0 = 0x800000021479D100;
  return result;
}

uint64_t sub_214512678(void *a1, void *a2, void *a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  v4 = *a2;

  return v4;
}

uint64_t sub_2145126E0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_2146D9148();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_2146D9138();
}

uint64_t sub_21451274C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_2146D9148();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_2145127E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  do
  {
    result = sub_2146D8E78();
  }

  while (!v3 && (v5 & 1) == 0);
  return result;
}

uint64_t sub_214512888(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  sub_2146DA958();
  a1(0);
  sub_21451415C(a2, a3, a4);
  sub_2146D94E8();
  return sub_2146DA9B8();
}

uint64_t sub_214512938(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  if (*a3 != -1)
  {
    v8 = a4;
    swift_once();
    a4 = v8;
  }

  v6 = *a4;

  return v6;
}

uint64_t sub_214512998(uint64_t a1, uint64_t a2)
{
  v4 = sub_21451415C(&qword_27C915080, type metadata accessor for NearbyProtoJoinResponseContent.DeniedContent, byte_214758FE0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_214512A38(uint64_t a1)
{
  v2 = sub_21451415C(&qword_27C914FC0, type metadata accessor for NearbyProtoJoinResponseContent.DeniedContent, aK_2);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_214512AA4(uint64_t a1, uint64_t a2)
{
  sub_21451415C(&qword_27C914FC0, type metadata accessor for NearbyProtoJoinResponseContent.DeniedContent, aK_2);

  return sub_2146D9008();
}

uint64_t sub_214512B20(void *a1, void *a2)
{
  v4 = type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914EC0, qword_214758530);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9150D8, &qword_214759230);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  if (*a1 != *a2 && (sub_2146DA6A8() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_2146DA6A8() & 1) == 0)
  {
    goto LABEL_12;
  }

  v21 = v7;
  v22 = type metadata accessor for NearbyProtoConnectionResponseContent(0);
  v14 = *(v22 + 24);
  v15 = *(v11 + 48);
  sub_213FB2E54(a1 + v14, v13, &qword_27C914EC0, qword_214758530);
  sub_213FB2E54(a2 + v14, &v13[v15], &qword_27C914EC0, qword_214758530);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_213FB2DF4(v13, &qword_27C914EC0, qword_214758530);
LABEL_14:
      sub_2146D8DF8();
      sub_21451415C(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_2146D9578();
      return v17 & 1;
    }

    goto LABEL_11;
  }

  sub_213FB2E54(v13, v10, &qword_27C914EC0, qword_214758530);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_21450ACF8(v10, type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation);
LABEL_11:
    sub_213FB2DF4(v13, &qword_27C9150D8, &qword_214759230);
    goto LABEL_12;
  }

  v18 = v21;
  sub_21450B2C0(&v13[v15], v21, type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation);
  v19 = sub_214512ED4(v10, v18);
  sub_21450ACF8(v18, type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation);
  sub_21450ACF8(v10, type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation);
  sub_213FB2DF4(v13, &qword_27C914EC0, qword_214758530);
  if (v19)
  {
    goto LABEL_14;
  }

LABEL_12:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_214512ED4(uint64_t a1, uint64_t a2)
{
  v26 = type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent(0);
  MEMORY[0x28223BE20](v26);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NearbyProtoConnectionResponseContent.DeniedContent(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9150F8, &qword_214759250);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v25 - v17;
  v19 = *(v16 + 56);
  sub_21450B6F8(a1, &v25 - v17, type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation);
  sub_21450B6F8(a2, &v18[v19], type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_21450B6F8(v18, v14, type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_21450B2C0(&v18[v19], v8, type metadata accessor for NearbyProtoConnectionResponseContent.DeniedContent);
      sub_2146D8DF8();
      sub_21451415C(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v21 = sub_2146D9578();
      sub_21450ACF8(v8, type metadata accessor for NearbyProtoConnectionResponseContent.DeniedContent);
      sub_21450ACF8(v14, type metadata accessor for NearbyProtoConnectionResponseContent.DeniedContent);
      sub_21450ACF8(v18, type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation);
      return v21 & 1;
    }

    v22 = type metadata accessor for NearbyProtoConnectionResponseContent.DeniedContent;
    v23 = v14;
    goto LABEL_9;
  }

  sub_21450B6F8(v18, v12, type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v22 = type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent;
    v23 = v12;
LABEL_9:
    sub_21450ACF8(v23, v22);
    sub_213FB2DF4(v18, &qword_27C9150F8, &qword_214759250);
LABEL_13:
    v21 = 0;
    return v21 & 1;
  }

  sub_21450B2C0(&v18[v19], v5, type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent);
  if (!sub_214466780(*v12, *(v12 + 1), *v5, *(v5 + 1)))
  {
    sub_21450ACF8(v5, type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent);
    goto LABEL_12;
  }

  sub_2146D8DF8();
  sub_21451415C(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v20 = sub_2146D9578();
  sub_21450ACF8(v5, type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent);
  if ((v20 & 1) == 0)
  {
LABEL_12:
    sub_21450ACF8(v12, type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent);
    sub_21450ACF8(v18, type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation);
    goto LABEL_13;
  }

  sub_21450ACF8(v12, type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent);
  sub_21450ACF8(v18, type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation);
  v21 = 1;
  return v21 & 1;
}

uint64_t sub_214513420(void *a1, void *a2)
{
  v4 = type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914EC8, &unk_214784480);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9150C0, &qword_214759218);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  if (*a1 != *a2 && (sub_2146DA6A8() & 1) == 0)
  {
    goto LABEL_9;
  }

  v21 = v7;
  v22 = type metadata accessor for NearbyProtoJoinResponseContent(0);
  v14 = *(v22 + 20);
  v15 = *(v11 + 48);
  sub_213FB2E54(a1 + v14, v13, &qword_27C914EC8, &unk_214784480);
  sub_213FB2E54(a2 + v14, &v13[v15], &qword_27C914EC8, &unk_214784480);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_213FB2DF4(v13, &qword_27C914EC8, &unk_214784480);
LABEL_11:
      sub_2146D8DF8();
      sub_21451415C(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_2146D9578();
      return v17 & 1;
    }

    goto LABEL_8;
  }

  sub_213FB2E54(v13, v10, &qword_27C914EC8, &unk_214784480);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_21450ACF8(v10, type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation);
LABEL_8:
    sub_213FB2DF4(v13, &qword_27C9150C0, &qword_214759218);
    goto LABEL_9;
  }

  v18 = v21;
  sub_21450B2C0(&v13[v15], v21, type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation);
  v19 = sub_2145137B0(v10, v18);
  sub_21450ACF8(v18, type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation);
  sub_21450ACF8(v10, type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation);
  sub_213FB2DF4(v13, &qword_27C914EC8, &unk_214784480);
  if (v19)
  {
    goto LABEL_11;
  }

LABEL_9:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_2145137B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for NearbyProtoJoinResponseContent.DeniedContent(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = (&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9150F0, &qword_214759248);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v27 - v18;
  v20 = *(v17 + 56);
  sub_21450B6F8(a1, &v27 - v18, type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation);
  sub_21450B6F8(a2, &v19[v20], type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21450B6F8(v19, v13, type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21450B2C0(&v19[v20], v6, type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent);
      v21 = sub_214513B64(v13, v6);
      sub_21450ACF8(v6, type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent);
      v22 = v13;
      v23 = type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent;
LABEL_9:
      sub_21450ACF8(v22, v23);
      sub_21450ACF8(v19, type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation);
      return v21 & 1;
    }

    v24 = type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent;
    v25 = v13;
  }

  else
  {
    sub_21450B6F8(v19, v15, type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_21450B2C0(&v19[v20], v9, type metadata accessor for NearbyProtoJoinResponseContent.DeniedContent);
      sub_2146D8DF8();
      sub_21451415C(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v21 = sub_2146D9578();
      sub_21450ACF8(v9, type metadata accessor for NearbyProtoJoinResponseContent.DeniedContent);
      v22 = v15;
      v23 = type metadata accessor for NearbyProtoJoinResponseContent.DeniedContent;
      goto LABEL_9;
    }

    v24 = type metadata accessor for NearbyProtoJoinResponseContent.DeniedContent;
    v25 = v15;
  }

  sub_21450ACF8(v25, v24);
  sub_213FB2DF4(v19, &qword_27C9150F0, &qword_214759248);
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_214513B64(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_2146DA6A8() & 1) == 0 || (sub_2143D53BC(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent(0) + 28);
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v10 = *v8;
  v9 = v8[1];
  if (v6 >> 60 != 15)
  {
    if (v9 >> 60 != 15)
    {
      sub_213FDCA18(v7, v6);
      sub_213FDCA18(v10, v9);
      v12 = sub_214466780(v7, v6, v10, v9);
      sub_213FDC6BC(v10, v9);
      sub_213FDC6BC(v7, v6);
      if (v12)
      {
        goto LABEL_14;
      }

      return 0;
    }

LABEL_11:
    sub_213FDCA18(v7, v6);
    sub_213FDCA18(v10, v9);
    sub_213FDC6BC(v7, v6);
    sub_213FDC6BC(v10, v9);
    return 0;
  }

  if (v9 >> 60 != 15)
  {
    goto LABEL_11;
  }

  sub_213FDCA18(v7, v6);
  sub_213FDCA18(v10, v9);
  sub_213FDC6BC(v7, v6);
LABEL_14:
  sub_2146D8DF8();
  sub_21451415C(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_2146D9578() & 1;
}

uint64_t sub_214513D24(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_2146DA6A8() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for NearbyProtoJoinRequestContent(0);
  v6 = v5[6];
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v9[1];
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }

    v11 = *v7 == *v9 && v8 == v10;
    if (!v11 && (sub_2146DA6A8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v12 = v5[7];
  v14 = *(a1 + v12);
  v13 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  v17 = *v15;
  v16 = v15[1];
  if (v13 >> 60 == 15)
  {
    if (v16 >> 60 == 15)
    {
      sub_213FDCA18(v14, v13);
      sub_213FDCA18(v17, v16);
      sub_213FDC6BC(v14, v13);
      goto LABEL_22;
    }

LABEL_19:
    sub_213FDCA18(v14, v13);
    sub_213FDCA18(v17, v16);
    sub_213FDC6BC(v14, v13);
    sub_213FDC6BC(v17, v16);
    return 0;
  }

  if (v16 >> 60 == 15)
  {
    goto LABEL_19;
  }

  sub_213FDCA18(v14, v13);
  sub_213FDCA18(v17, v16);
  v19 = sub_214466780(v14, v13, v17, v16);
  sub_213FDC6BC(v17, v16);
  sub_213FDC6BC(v14, v13);
  if (!v19)
  {
    return 0;
  }

LABEL_22:
  v20 = v5[8];
  v21 = *(a1 + v20);
  v22 = *(a2 + v20);
  if (v21 != 2)
  {
    if (v22 != 2 && ((v21 ^ v22) & 1) == 0)
    {
      goto LABEL_27;
    }

    return 0;
  }

  if (v22 != 2)
  {
    return 0;
  }

LABEL_27:
  sub_2146D8DF8();
  sub_21451415C(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_2146D9578() & 1;
}

uint64_t sub_214513F48(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_2146DA6A8() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_2146DA6A8() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for NearbyProtoConnectionRequest(0);
  v7 = *(v6 + 28);
  v8 = (a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = v10[1];
  if (v9)
  {
    if (!v11)
    {
      return 0;
    }

    v12 = *v8 == *v10 && v9 == v11;
    if (!v12 && (sub_2146DA6A8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v13 = *(v6 + 32);
  v15 = *(a1 + v13);
  v14 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v18 = *v16;
  v17 = v16[1];
  if (v14 >> 60 != 15)
  {
    if (v17 >> 60 == 15)
    {
      goto LABEL_24;
    }

    sub_213FDCA18(v15, v14);
    sub_213FDCA18(v18, v17);
    v20 = sub_214466780(v15, v14, v18, v17);
    sub_213FDC6BC(v18, v17);
    sub_213FDC6BC(v15, v14);
    if (v20)
    {
      goto LABEL_27;
    }

    return 0;
  }

  if (v17 >> 60 != 15)
  {
LABEL_24:
    sub_213FDCA18(v15, v14);
    sub_213FDCA18(v18, v17);
    sub_213FDC6BC(v15, v14);
    sub_213FDC6BC(v18, v17);
    return 0;
  }

  sub_213FDCA18(v15, v14);
  sub_213FDCA18(v18, v17);
  sub_213FDC6BC(v15, v14);
LABEL_27:
  sub_2146D8DF8();
  sub_21451415C(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_2146D9578() & 1;
}

uint64_t sub_21451415C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t keypath_get_13Tm@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t *a3@<X8>)
{
  v4 = (a1 + *(a2(0) + 28));
  v5 = *v4;
  v6 = v4[1];
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v4;
  }

  v8 = 0xC000000000000000;
  if (v6 >> 60 != 15)
  {
    v8 = v6;
  }

  *a3 = v7;
  a3[1] = v8;

  return sub_213FDCA18(v5, v6);
}

void sub_214514B30(uint64_t a1)
{
  sub_2146D8DF8();
  if (v1 <= 0x3F)
  {
    sub_214515388(319, &qword_280B34BE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_214515388(319, &qword_280B2FDD0, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_214514C4C(uint64_t a1)
{
  sub_214515024(319, &qword_27C914FF0, type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation);
  if (v1 <= 0x3F)
  {
    sub_2146D8DF8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_214514D50(uint64_t a1)
{
  result = sub_2146D8DF8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_214514E1C(uint64_t a1)
{
  sub_2146D8DF8();
  if (v1 <= 0x3F)
  {
    sub_214515388(319, &qword_280B34BE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_214515388(319, &qword_280B2FDD0, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_214515388(319, &qword_280B34BD8, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_214514F74(uint64_t a1)
{
  sub_214515024(319, &qword_27C915048, type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation);
  if (v1 <= 0x3F)
  {
    sub_2146D8DF8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_214515024(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2146D9D38();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2145150A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2146D8DF8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2146D8DF8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_21451529C(uint64_t a1)
{
  sub_214515388(319, &qword_27C914C18, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_2146D8DF8();
    if (v2 <= 0x3F)
    {
      sub_214515388(319, &qword_280B2FDD0, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_214515388(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_21451550C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[3] = 0;
  v5[4] = 0;
  v5[2] = sub_213FDC8D0;
  *(v4 + 16) = sub_214059804;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_214032610;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

uint64_t sub_21451565C@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MessagingCharacteristic(0) + 24));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  LOBYTE(v3) = *(v3 + 25);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 25) = v3;
}

__n128 sub_2145156DC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = (v1 + *(type metadata accessor for MessagingCharacteristic(0) + 24));

  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u8[8] = v4;
  v6[1].n128_u8[9] = v5;
  return result;
}

uint64_t sub_214515744@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MessagingCharacteristic(0) + 36));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  v8 = *(v3 + 25);
  LOBYTE(v3) = *(v3 + 26);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 25) = v8;
  *(a1 + 26) = v3;
}

__n128 sub_2145157AC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = a1[1].n128_u8[10];
  v7 = (v1 + *(type metadata accessor for MessagingCharacteristic(0) + 36));

  result = *a1;
  *v7 = *a1;
  v7[1].n128_u64[0] = v3;
  v7[1].n128_u8[8] = v4;
  v7[1].n128_u8[9] = v5;
  v7[1].n128_u8[10] = v6;
  return result;
}

uint64_t sub_21451581C@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MessagingCharacteristic(0) + 48));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

__n128 sub_214515888(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for MessagingCharacteristic(0) + 48));
  v7 = v6[1].n128_i64[0];
  v8 = v6[1].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_214515900()
{
  v1 = v0 + *(type metadata accessor for MessagingCharacteristic(0) + 24);
  if ((*(v1 + 24) & 1) == 0)
  {
    return *(v1 + 16);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214515974()
{
  v1 = v0 + *(type metadata accessor for MessagingCharacteristic(0) + 36);
  if ((*(v1 + 25) & 1) == 0)
  {
    return *(v1 + 16);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2145159F0()
{
  v1 = v0 + *(type metadata accessor for MessagingCharacteristic(0) + 48);
  if (*(v1 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 16);

    return v2;
  }

  return result;
}

uint64_t sub_214515ABC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 25);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
}

__n128 sub_214515AE0(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u8[8] = v4;
  v1[1].n128_u8[9] = v5;
  return result;
}

uint64_t sub_214515B38@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 57);
  v6 = *(v1 + 58);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
  *(a1 + 26) = v6;
}

__n128 sub_214515B64(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = a1[1].n128_u8[10];

  result = *a1;
  v1[2] = *a1;
  v1[3].n128_u64[0] = v3;
  v1[3].n128_u8[8] = v4;
  v1[3].n128_u8[9] = v5;
  v1[3].n128_u8[10] = v6;
  return result;
}

uint64_t sub_214515BC4()
{
  if ((*(v0 + 24) & 1) == 0)
  {
    return *(v0 + 16);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214515C28()
{
  if ((*(v0 + 57) & 1) == 0)
  {
    return *(v0 + 48);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

unint64_t sub_214515D48@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SwiftRegexValidator(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  v17 = xmmword_2146E9BF0;
  *(inited + 16) = xmmword_2146E9BF0;
  v7 = swift_initStackObject();
  *(v7 + 16) = v17;
  if (qword_27C903298 != -1)
  {
    swift_once();
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v9 = __swift_project_value_buffer(v8, qword_27CA19F60);
  (*(*(v8 - 8) + 16))(&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v10 = swift_allocObject();
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  sub_2144A041C(v5, v12 + v11);
  *(v10 + 16) = sub_214306D5C;
  *(v10 + 24) = v12;
  *(v7 + 32) = v10;
  v13 = sub_2142E0070(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v14 = swift_allocObject();
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v14 + 16) = sub_214032610;
  *(v14 + 24) = v15;
  *(inited + 32) = v14;
  return sub_214042A28(inited, a1);
}

uint64_t sub_214515FAC@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ChatCharacteristic(0) + 32));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  LOBYTE(v3) = *(v3 + 25);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 25) = v3;
}

__n128 sub_21451602C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = (v1 + *(type metadata accessor for ChatCharacteristic(0) + 32));

  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u8[8] = v4;
  v6[1].n128_u8[9] = v5;
  return result;
}

uint64_t sub_214516094@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ChatCharacteristic(0) + 36));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  LOBYTE(v3) = *(v3 + 25);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 25) = v3;
}

__n128 sub_2145160F4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = (v1 + *(type metadata accessor for ChatCharacteristic(0) + 36));

  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u8[8] = v4;
  v6[1].n128_u8[9] = v5;
  return result;
}

uint64_t sub_21451615C@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ChatCharacteristic(0) + 40));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  v8 = *(v3 + 25);
  LOBYTE(v3) = *(v3 + 26);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 25) = v8;
  *(a1 + 26) = v3;
}

__n128 sub_2145161C4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = a1[1].n128_u8[10];
  v7 = (v1 + *(type metadata accessor for ChatCharacteristic(0) + 40));

  result = *a1;
  *v7 = *a1;
  v7[1].n128_u64[0] = v3;
  v7[1].n128_u8[8] = v4;
  v7[1].n128_u8[9] = v5;
  v7[1].n128_u8[10] = v6;
  return result;
}

uint64_t sub_214516234@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ChatCharacteristic(0) + 44));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  v8 = *(v3 + 25);
  LOBYTE(v3) = *(v3 + 26);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 25) = v8;
  *(a1 + 26) = v3;
}

__n128 sub_21451629C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = a1[1].n128_u8[10];
  v7 = (v1 + *(type metadata accessor for ChatCharacteristic(0) + 44));

  result = *a1;
  *v7 = *a1;
  v7[1].n128_u64[0] = v3;
  v7[1].n128_u8[8] = v4;
  v7[1].n128_u8[9] = v5;
  v7[1].n128_u8[10] = v6;
  return result;
}

uint64_t sub_21451630C@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ChatCharacteristic(0) + 52));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

__n128 sub_214516378(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for ChatCharacteristic(0) + 52));
  v7 = v6[1].n128_i64[0];
  v8 = v6[1].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2145163F4()
{
  v1 = v0 + *(type metadata accessor for ChatCharacteristic(0) + 32);
  if ((*(v1 + 24) & 1) == 0)
  {
    return *(v1 + 16);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214516468()
{
  v1 = v0 + *(type metadata accessor for ChatCharacteristic(0) + 36);
  if ((*(v1 + 24) & 1) == 0)
  {
    return *(v1 + 16);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2145164DC()
{
  v1 = v0 + *(type metadata accessor for ChatCharacteristic(0) + 40);
  if ((*(v1 + 25) & 1) == 0)
  {
    return *(v1 + 16);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214516558()
{
  v1 = v0 + *(type metadata accessor for ChatCharacteristic(0) + 44);
  if ((*(v1 + 25) & 1) == 0)
  {
    return *(v1 + 16);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2145165D4()
{
  v1 = v0 + *(type metadata accessor for ChatCharacteristic(0) + 52);
  if (*(v1 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 16);

    return v2;
  }

  return result;
}

unint64_t sub_2145166A0@<X0>(uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v10 = swift_allocObject();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2146ED240;
  *(v10 + 16) = a2;
  *(v10 + 24) = v11;
  *(v9 + 32) = v10;
  v12 = sub_2142DFFF8(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F30, &unk_2147319A0);
  v13 = swift_allocObject();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v13 + 16) = a4;
  *(v13 + 24) = v14;
  *(inited + 32) = v13;
  return sub_2140428D0(inited, a5);
}

uint64_t sub_214516844@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 25);
  v6 = *(v1 + 26);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
  *(a1 + 26) = v6;
}

__n128 sub_214516870(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = a1[1].n128_u8[10];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u8[8] = v4;
  v1[1].n128_u8[9] = v5;
  v1[1].n128_u8[10] = v6;
  return result;
}

uint64_t sub_2145168D0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 57);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
}

__n128 sub_2145168F4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];

  result = *a1;
  v1[2] = *a1;
  v1[3].n128_u64[0] = v3;
  v1[3].n128_u8[8] = v4;
  v1[3].n128_u8[9] = v5;
  return result;
}

uint64_t sub_21451694C@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FileTransferCharacteristic(0) + 36));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

__n128 sub_2145169D8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for FileTransferCharacteristic(0) + 36));
  v7 = v6[1].n128_i64[0];
  v8 = v6[1].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_214516A50@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FileTransferCharacteristic(0) + 40));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

__n128 sub_214516ABC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for FileTransferCharacteristic(0) + 40));
  v7 = v6[1].n128_i64[0];
  v8 = v6[1].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_214516B34@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FileTransferCharacteristic(0) + 48));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  LOBYTE(v3) = *(v3 + 25);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 25) = v3;
}

__n128 sub_214516B94(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = (v1 + *(type metadata accessor for FileTransferCharacteristic(0) + 48));

  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u8[8] = v4;
  v6[1].n128_u8[9] = v5;
  return result;
}

uint64_t sub_214516BFC()
{
  if ((*(v0 + 25) & 1) == 0)
  {
    return *(v0 + 16);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214516C68()
{
  if ((*(v0 + 56) & 1) == 0)
  {
    return *(v0 + 48);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214516CCC()
{
  v1 = v0 + *(type metadata accessor for FileTransferCharacteristic(0) + 36);
  if (*(v1 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 16);

    return v2;
  }

  return result;
}

uint64_t sub_214516D5C()
{
  v1 = v0 + *(type metadata accessor for FileTransferCharacteristic(0) + 40);
  if (*(v1 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 16);

    return v2;
  }

  return result;
}

uint64_t sub_214516DEC()
{
  v1 = v0 + *(type metadata accessor for FileTransferCharacteristic(0) + 48);
  if ((*(v1 + 24) & 1) == 0)
  {
    return *(v1 + 16);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214516E60@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_214517048@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = type metadata accessor for MessagingCharacteristic(0);
  v5 = a1 + *(result + 24);
  if (*(v5 + 24))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v5 + 16);
  }

  return result;
}

uint64_t (*sub_214517108(uint64_t a1))(uint64_t *a1)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for MessagingCharacteristic(0) + 24);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  if (*(v4 + 24))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = *(v4 + 16);
    return sub_21451BC94;
  }

  return result;
}

uint64_t sub_2145171B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for MessagingCharacteristic(0) + 24));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  LOBYTE(v3) = *(v3 + 25);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 25) = v3;
}

uint64_t sub_214517214(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = *(a1 + 25);
  v7 = a2 + *(type metadata accessor for MessagingCharacteristic(0) + 24);

  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 25) = v6;
  return result;
}

uint64_t (*sub_214517290(uint64_t *a1))()
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
  v5 = *(type metadata accessor for MessagingCharacteristic(0) + 24);
  *(v4 + 28) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = *(v6 + 24);
  LOBYTE(v6) = *(v6 + 25);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 25) = v6;

  return sub_21451BCAC;
}

uint64_t sub_21451733C@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MessagingCharacteristic(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t sub_214517370(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for MessagingCharacteristic(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t sub_21451740C(char a1)
{
  result = type metadata accessor for MessagingCharacteristic(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t sub_214517484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = type metadata accessor for MessagingCharacteristic(0);
  v5 = a1 + *(result + 36);
  if (*(v5 + 25))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v6 = *(v5 + 24);
    *a2 = *(v5 + 16);
    *(a2 + 8) = v6 & 1;
  }

  return result;
}

uint64_t (*sub_214517560(uint64_t a1))()
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for MessagingCharacteristic(0) + 36);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  if (*(v4 + 25))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v5 = *(v4 + 24);
    *a1 = *(v4 + 16);
    *(a1 + 8) = v5 & 1;
    return sub_2144B95CC;
  }

  return result;
}

uint64_t sub_214517614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for MessagingCharacteristic(0) + 36));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  v8 = *(v3 + 25);
  LOBYTE(v3) = *(v3 + 26);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 25) = v8;
  *(a2 + 26) = v3;
}

uint64_t sub_214517680(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = *(a1 + 25);
  v7 = *(a1 + 26);
  v8 = a2 + *(type metadata accessor for MessagingCharacteristic(0) + 36);

  *v8 = v3;
  *(v8 + 8) = v2;
  *(v8 + 16) = v4;
  *(v8 + 24) = v5;
  *(v8 + 25) = v6;
  *(v8 + 26) = v7;
  return result;
}

void (*sub_214517704(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(type metadata accessor for MessagingCharacteristic(0) + 36);
  *(v4 + 28) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = *(v6 + 24);
  v11 = *(v6 + 25);
  LOBYTE(v6) = *(v6 + 26);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 25) = v11;
  *(v4 + 26) = v6;

  return sub_2144B95D0;
}

void sub_214517968(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for MessagingCharacteristic(0) + 48);
  v4 = *(v3 + 24);
  if (v4 == 1)
  {
    sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }
}

double sub_214517A04(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for MessagingCharacteristic(0);
  sub_214031B48(v1, v2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_214517ACC(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for MessagingCharacteristic(0) + 48);
  v10[0] = a1;
  v10[1] = a2;
  v6 = *v5;
  v9 = *(v5 + 32);
  v8[0] = 0x6E776F6E6B6E753CLL;
  v8[1] = 0xE90000000000003ELL;
  v8[2] = 0xD00000000000001CLL;
  v8[3] = 0x800000021478A360;
  if (v6(v10, &v9, v8))
  {
    sub_213FDC6D0(*(v5 + 16), *(v5 + 24));

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_214517C1C(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for MessagingCharacteristic(0) + 48);
  *(v4 + 40) = v5;
  v6 = v1 + v5;
  v7 = *(v1 + v5 + 16);
  *(v4 + 24) = v7;
  v8 = *(v6 + 24);
  *(v4 + 32) = v8;
  if (v8 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v7;
    *(v4 + 8) = v8;

    return sub_21439DFA8;
  }

  return result;
}

uint64_t sub_214517D08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for MessagingCharacteristic(0) + 48));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

uint64_t sub_214517D78(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for MessagingCharacteristic(0) + 48);
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);

  sub_213FDC9D0(v4, v5);

  result = sub_213FDC6D0(v8, v9);
  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  return result;
}

void (*sub_214517E10(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(type metadata accessor for MessagingCharacteristic(0) + 48);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 32) = v6;

  sub_213FDC9D0(v9, v10);
  return sub_21439DFAC;
}

uint64_t (*sub_214517EC0(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  if (*(v1 + 24))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = *(v1 + 16);
    return sub_2143D0368;
  }

  return result;
}

void (*sub_214517F48(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 25);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;

  return sub_2143D0480;
}

uint64_t (*sub_214518008(uint64_t a1))()
{
  *(a1 + 16) = v1;
  if (*(v1 + 57))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 56);
    *a1 = *(v1 + 48);
    *(a1 + 8) = v2 & 1;
    return sub_2144B6B08;
  }

  return result;
}

void (*sub_21451809C(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 57);
  v9 = *(v1 + 58);
  *v4 = *(v1 + 32);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;
  *(v4 + 26) = v9;

  return sub_2144B6C50;
}

uint64_t sub_21451813C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StandaloneMsgCharacteristic(0) + 24);
  v4 = sub_2146D8958();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_2145181D8(uint64_t a1)
{
  v3 = *(type metadata accessor for StandaloneMsgCharacteristic(0) + 24);
  v4 = sub_2146D8958();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t (*sub_2145182A4(uint64_t a1))()
{
  *(a1 + 16) = v1;
  if (*(v1 + 25))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 24);
    *a1 = *(v1 + 16);
    *(a1 + 8) = v2 & 1;
    return sub_2144B6910;
  }

  return result;
}

void (*sub_214518338(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 25);
  v9 = *(v1 + 26);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;
  *(v4 + 26) = v9;

  return sub_2145183D8;
}

uint64_t sub_214518544(char a1)
{
  result = type metadata accessor for ChatCharacteristic(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t sub_2145185E0(char a1)
{
  result = type metadata accessor for ChatCharacteristic(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t sub_214518658@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = type metadata accessor for ChatCharacteristic(0);
  v5 = a1 + *(result + 32);
  if (*(v5 + 24))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v5 + 16);
  }

  return result;
}

uint64_t (*sub_214518718(uint64_t a1))(uint64_t *a1)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for ChatCharacteristic(0) + 32);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  if (*(v4 + 24))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = *(v4 + 16);
    return sub_2145187C0;
  }

  return result;
}

uint64_t sub_2145187EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for ChatCharacteristic(0) + 32));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  LOBYTE(v3) = *(v3 + 25);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 25) = v3;
}

uint64_t sub_214518850(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = *(a1 + 25);
  v7 = a2 + *(type metadata accessor for ChatCharacteristic(0) + 32);

  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 25) = v6;
  return result;
}

uint64_t (*sub_2145188CC(uint64_t *a1))()
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
  v5 = *(type metadata accessor for ChatCharacteristic(0) + 32);
  *(v4 + 28) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = *(v6 + 24);
  LOBYTE(v6) = *(v6 + 25);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 25) = v6;

  return sub_214518978;
}

uint64_t sub_21451897C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = type metadata accessor for ChatCharacteristic(0);
  v5 = a1 + *(result + 36);
  if (*(v5 + 24))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v5 + 16);
  }

  return result;
}

uint64_t (*sub_214518A3C(uint64_t a1))(uint64_t *a1)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for ChatCharacteristic(0) + 36);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  if (*(v4 + 24))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = *(v4 + 16);
    return sub_21451BC94;
  }

  return result;
}

uint64_t sub_214518AE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for ChatCharacteristic(0) + 36));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  LOBYTE(v3) = *(v3 + 25);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 25) = v3;
}

uint64_t sub_214518B48(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = *(a1 + 25);
  v7 = a2 + *(type metadata accessor for ChatCharacteristic(0) + 36);

  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 25) = v6;
  return result;
}

uint64_t (*sub_214518BC4(uint64_t *a1))()
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
  v5 = *(type metadata accessor for ChatCharacteristic(0) + 36);
  *(v4 + 28) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = *(v6 + 24);
  LOBYTE(v6) = *(v6 + 25);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 25) = v6;

  return sub_21451BCAC;
}

uint64_t sub_214518C70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = type metadata accessor for ChatCharacteristic(0);
  v5 = a1 + *(result + 40);
  if (*(v5 + 25))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v6 = *(v5 + 24);
    *a2 = *(v5 + 16);
    *(a2 + 8) = v6 & 1;
  }

  return result;
}

uint64_t (*sub_214518D4C(uint64_t a1))()
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for ChatCharacteristic(0) + 40);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  if (*(v4 + 25))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v5 = *(v4 + 24);
    *a1 = *(v4 + 16);
    *(a1 + 8) = v5 & 1;
    return sub_2144B5BC4;
  }

  return result;
}

uint64_t sub_214518E00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for ChatCharacteristic(0) + 40));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  v8 = *(v3 + 25);
  LOBYTE(v3) = *(v3 + 26);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 25) = v8;
  *(a2 + 26) = v3;
}

uint64_t sub_214518E6C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = *(a1 + 25);
  v7 = *(a1 + 26);
  v8 = a2 + *(type metadata accessor for ChatCharacteristic(0) + 40);

  *v8 = v3;
  *(v8 + 8) = v2;
  *(v8 + 16) = v4;
  *(v8 + 24) = v5;
  *(v8 + 25) = v6;
  *(v8 + 26) = v7;
  return result;
}

void (*sub_214518EF0(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(type metadata accessor for ChatCharacteristic(0) + 40);
  *(v4 + 28) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = *(v6 + 24);
  v11 = *(v6 + 25);
  LOBYTE(v6) = *(v6 + 26);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 25) = v11;
  *(v4 + 26) = v6;

  return sub_2144B5D6C;
}

uint64_t sub_214518FA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = type metadata accessor for ChatCharacteristic(0);
  v5 = a1 + *(result + 44);
  if (*(v5 + 25))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v6 = *(v5 + 24);
    *a2 = *(v5 + 16);
    *(a2 + 8) = v6 & 1;
  }

  return result;
}

uint64_t (*sub_214519080(uint64_t a1))()
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for ChatCharacteristic(0) + 44);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  if (*(v4 + 25))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v5 = *(v4 + 24);
    *a1 = *(v4 + 16);
    *(a1 + 8) = v5 & 1;
    return sub_2144B95CC;
  }

  return result;
}

uint64_t sub_214519134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for ChatCharacteristic(0) + 44));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  v8 = *(v3 + 25);
  LOBYTE(v3) = *(v3 + 26);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 25) = v8;
  *(a2 + 26) = v3;
}

uint64_t sub_2145191A0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = *(a1 + 25);
  v7 = *(a1 + 26);
  v8 = a2 + *(type metadata accessor for ChatCharacteristic(0) + 44);

  *v8 = v3;
  *(v8 + 8) = v2;
  *(v8 + 16) = v4;
  *(v8 + 24) = v5;
  *(v8 + 25) = v6;
  *(v8 + 26) = v7;
  return result;
}

void (*sub_214519224(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(type metadata accessor for ChatCharacteristic(0) + 44);
  *(v4 + 28) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = *(v6 + 24);
  v11 = *(v6 + 25);
  LOBYTE(v6) = *(v6 + 26);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 25) = v11;
  *(v4 + 26) = v6;

  return sub_2144B95D0;
}

uint64_t sub_2145192FC(char a1)
{
  result = type metadata accessor for ChatCharacteristic(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

void sub_214519374(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for ChatCharacteristic(0) + 52);
  v4 = *(v3 + 24);
  if (v4 == 1)
  {
    sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }
}

double sub_214519410(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for ChatCharacteristic(0);
  sub_214031B48(v1, v2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_2145194D8(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for ChatCharacteristic(0) + 52);
  v10[0] = a1;
  v10[1] = a2;
  v6 = *v5;
  v9 = *(v5 + 32);
  v8[0] = 0x6E776F6E6B6E753CLL;
  v8[1] = 0xE90000000000003ELL;
  v8[2] = 0xD00000000000001CLL;
  v8[3] = 0x800000021478A360;
  if (v6(v10, &v9, v8))
  {
    sub_213FDC6D0(*(v5 + 16), *(v5 + 24));

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_214519628(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for ChatCharacteristic(0) + 52);
  *(v4 + 40) = v5;
  v6 = v1 + v5;
  v7 = *(v1 + v5 + 16);
  *(v4 + 24) = v7;
  v8 = *(v6 + 24);
  *(v4 + 32) = v8;
  if (v8 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v7;
    *(v4 + 8) = v8;

    return sub_21409E1C0;
  }

  return result;
}

uint64_t sub_214519714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for ChatCharacteristic(0) + 52));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

uint64_t sub_214519784(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for ChatCharacteristic(0) + 52);
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);

  sub_213FDC9D0(v4, v5);

  result = sub_213FDC6D0(v8, v9);
  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  return result;
}

void (*sub_21451981C(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(type metadata accessor for ChatCharacteristic(0) + 52);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 32) = v6;

  sub_213FDC9D0(v9, v10);
  return sub_21409E45C;
}

uint64_t (*sub_2145198C8(uint64_t a1))()
{
  *(a1 + 16) = v1;
  if (*(v1 + 25))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 24);
    *a1 = *(v1 + 16);
    *(a1 + 8) = v2 & 1;
    return sub_21451BC98;
  }

  return result;
}

void (*sub_21451995C(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 25);
  v9 = *(v1 + 26);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;
  *(v4 + 26) = v9;

  return sub_21451BCB0;
}

uint64_t sub_2145199FC@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 56))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(result + 48);
  }

  return result;
}

uint64_t (*sub_214519A80(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  if (*(v1 + 56))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = *(v1 + 48);
    return sub_214519B08;
  }

  return result;
}

void (*sub_214519B30(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 57);
  *v4 = *(v1 + 32);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;

  return sub_214441F1C;
}

void sub_214519DA8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for FileTransferCharacteristic(0) + 36);
  v4 = *(v3 + 24);
  if (v4 == 1)
  {
    sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }
}

double sub_214519E44(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for FileTransferCharacteristic(0);
  sub_214031B48(v1, v2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_214519F0C(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for FileTransferCharacteristic(0) + 36);
  v10[0] = a1;
  v10[1] = a2;
  v6 = *v5;
  v9 = *(v5 + 32);
  v8[0] = 0x6E776F6E6B6E753CLL;
  v8[1] = 0xE90000000000003ELL;
  v8[2] = 0xD00000000000001CLL;
  v8[3] = 0x800000021478A360;
  if (v6(v10, &v9, v8))
  {
    sub_213FDC6D0(*(v5 + 16), *(v5 + 24));

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_21451A05C(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for FileTransferCharacteristic(0) + 36);
  *(v4 + 40) = v5;
  v6 = v1 + v5;
  v7 = *(v1 + v5 + 16);
  *(v4 + 24) = v7;
  v8 = *(v6 + 24);
  *(v4 + 32) = v8;
  if (v8 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v7;
    *(v4 + 8) = v8;

    return sub_21439DFA8;
  }

  return result;
}

uint64_t sub_21451A148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for FileTransferCharacteristic(0) + 36));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

uint64_t sub_21451A1B8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for FileTransferCharacteristic(0) + 36);
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);

  sub_213FDC9D0(v4, v5);

  result = sub_213FDC6D0(v8, v9);
  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  return result;
}

void (*sub_21451A250(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(type metadata accessor for FileTransferCharacteristic(0) + 36);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 32) = v6;

  sub_213FDC9D0(v9, v10);
  return sub_21439DFAC;
}

void sub_21451A2FC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for FileTransferCharacteristic(0) + 40);
  v4 = *(v3 + 24);
  if (v4 == 1)
  {
    sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }
}

double sub_21451A398(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for FileTransferCharacteristic(0);
  sub_214031B48(v1, v2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_21451A460(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for FileTransferCharacteristic(0) + 40);
  v10[0] = a1;
  v10[1] = a2;
  v6 = *v5;
  v9 = *(v5 + 32);
  v8[0] = 0x6E776F6E6B6E753CLL;
  v8[1] = 0xE90000000000003ELL;
  v8[2] = 0xD00000000000001CLL;
  v8[3] = 0x800000021478A360;
  if (v6(v10, &v9, v8))
  {
    sub_213FDC6D0(*(v5 + 16), *(v5 + 24));

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_21451A5B0(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for FileTransferCharacteristic(0) + 40);
  *(v4 + 40) = v5;
  v6 = v1 + v5;
  v7 = *(v1 + v5 + 16);
  *(v4 + 24) = v7;
  v8 = *(v6 + 24);
  *(v4 + 32) = v8;
  if (v8 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v7;
    *(v4 + 8) = v8;

    return sub_21439DFA8;
  }

  return result;
}

uint64_t sub_21451A69C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for FileTransferCharacteristic(0) + 40));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

uint64_t sub_21451A70C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for FileTransferCharacteristic(0) + 40);
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);

  sub_213FDC9D0(v4, v5);

  result = sub_213FDC6D0(v8, v9);
  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  return result;
}

void (*sub_21451A7A4(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(type metadata accessor for FileTransferCharacteristic(0) + 40);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 32) = v6;

  sub_213FDC9D0(v9, v10);
  return sub_21439DFAC;
}

uint64_t sub_21451A874(char a1)
{
  result = type metadata accessor for FileTransferCharacteristic(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t sub_21451A8EC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = type metadata accessor for FileTransferCharacteristic(0);
  v5 = a1 + *(result + 48);
  if (*(v5 + 24))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v5 + 16);
  }

  return result;
}

uint64_t (*sub_21451A9AC(uint64_t a1))(uint64_t *a1)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for FileTransferCharacteristic(0) + 48);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  if (*(v4 + 24))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = *(v4 + 16);
    return sub_21451BC94;
  }

  return result;
}

uint64_t sub_21451AA54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for FileTransferCharacteristic(0) + 48));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  LOBYTE(v3) = *(v3 + 25);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 25) = v3;
}

uint64_t sub_21451AAB8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = *(a1 + 25);
  v7 = a2 + *(type metadata accessor for FileTransferCharacteristic(0) + 48);

  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 25) = v6;
  return result;
}

uint64_t (*sub_21451AB34(uint64_t *a1))()
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
  v5 = *(type metadata accessor for FileTransferCharacteristic(0) + 48);
  *(v4 + 28) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = *(v6 + 24);
  LOBYTE(v6) = *(v6 + 25);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 25) = v6;

  return sub_21451BCAC;
}

void sub_21451ABE0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4] + *(*a1 + 7);
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 25);
  if (a2)
  {

    *v3 = v5;
    *(v3 + 8) = v4;
    *(v3 + 16) = v6;
    *(v3 + 24) = v7;
    *(v3 + 25) = v8;
  }

  else
  {

    *v3 = v5;
    *(v3 + 8) = v4;
    *(v3 + 16) = v6;
    *(v3 + 24) = v7;
    *(v3 + 25) = v8;
  }

  free(v2);
}

unint64_t sub_21451AC94@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 4;
  if (result < 4)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_21451AF98(char a1)
{
  result = type metadata accessor for ChatbotCharacteristic(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t sub_21451B034(char a1)
{
  result = type metadata accessor for ChatbotCharacteristic(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t sub_21451B0AC@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ChatbotCharacteristic(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t sub_21451B0E0(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ChatbotCharacteristic(0);
  *(v1 + *(result + 36)) = v2;
  return result;
}

unint64_t sub_21451B15C()
{
  result = qword_27C915100;
  if (!qword_27C915100)
  {
    result = swift_getWitnessTable(aA_36, &type metadata for MessagingCharacteristic.OneToManyTech, v0, v1);
    atomic_store(result, &qword_27C915100);
  }

  return result;
}

uint64_t sub_21451B1B0(uint64_t a1)
{
  *(a1 + 8) = sub_21451B234(&qword_27C909268, type metadata accessor for MessagingCharacteristic, aIM4);
  result = sub_21451B234(&qword_27C9092A8, type metadata accessor for MessagingCharacteristic, byte_2146FCFE8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21451B234(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21451B27C(uint64_t a1)
{
  *(a1 + 8) = sub_21451B234(&qword_27C909548, type metadata accessor for StandaloneMsgCharacteristic, byte_2146FD010);
  result = sub_21451B234(&qword_27C909598, type metadata accessor for StandaloneMsgCharacteristic, byte_2146FD038);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21451B300(uint64_t a1)
{
  *(a1 + 8) = sub_21451B234(&qword_27C909558, type metadata accessor for ChatCharacteristic, byte_2146FD060);
  result = sub_21451B234(&qword_27C9095A8, type metadata accessor for ChatCharacteristic, aQM);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21451B384(uint64_t a1)
{
  *(a1 + 8) = sub_21451B234(&qword_27C909570, type metadata accessor for FileTransferCharacteristic, aYfm);
  result = sub_21451B234(&qword_27C9095C0, type metadata accessor for FileTransferCharacteristic, byte_2146FD0D8);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21451B40C()
{
  result = qword_27C915108;
  if (!qword_27C915108)
  {
    result = swift_getWitnessTable(byte_2147593E8, &type metadata for ChatbotCharacteristic.ChatbotMessageTech, v0, v1);
    atomic_store(result, &qword_27C915108);
  }

  return result;
}

uint64_t sub_21451B460(uint64_t a1)
{
  *(a1 + 8) = sub_21451B234(&qword_27C909580, type metadata accessor for ChatbotCharacteristic, aFml9);
  result = sub_21451B234(&qword_27C9095D0, type metadata accessor for ChatbotCharacteristic, byte_2146FD128);
  *(a1 + 16) = result;
  return result;
}

uint64_t keypath_get_38Tm@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 25);
  v6 = *(a1 + 26);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 25) = v5;
  *(a2 + 26) = v6;
}

void sub_21451B53C(uint64_t a1)
{
  sub_21451B6F0(319, &qword_27C915120, type metadata accessor for StandaloneMsgCharacteristic);
  if (v1 <= 0x3F)
  {
    sub_21451B6F0(319, &qword_27C915128, type metadata accessor for ChatCharacteristic);
    if (v2 <= 0x3F)
    {
      sub_21451B744(319, v2, v3, v4);
      if (v5 <= 0x3F)
      {
        sub_21409A2B4(319, &qword_280B2E560, &qword_27C904798, qword_21473CFD0);
        if (v6 <= 0x3F)
        {
          sub_21451B6F0(319, &qword_27C915130, type metadata accessor for FileTransferCharacteristic);
          if (v7 <= 0x3F)
          {
            sub_21451B6F0(319, &qword_27C915138, type metadata accessor for ChatbotCharacteristic);
            if (v8 <= 0x3F)
            {
              sub_21409A2B4(319, &qword_280B2E570, &qword_27C904008, &qword_2146EC050);
              if (v9 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_21451B6F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2146D9D38();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21451B744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_27C9050E0)
  {
    v4 = type metadata accessor for Validated(0, MEMORY[0x277D83B88], a3, a4);
    if (!v5)
    {
      atomic_store(v4, &qword_27C9050E0);
    }
  }
}

void sub_21451B7CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21451B744(319, a2, a3, a4);
  if (v4 <= 0x3F)
  {
    sub_21409A2B4(319, &qword_280B2E560, &qword_27C904798, qword_21473CFD0);
    if (v5 <= 0x3F)
    {
      sub_2146D8958();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21451B8A8(uint64_t a1)
{
  sub_21409A2B4(319, &qword_280B2E560, &qword_27C904798, qword_21473CFD0);
  if (v1 <= 0x3F)
  {
    sub_21451B6F0(319, &qword_280B30B80, MEMORY[0x277CC9260]);
    if (v2 <= 0x3F)
    {
      sub_21451B744(319, v2, v3, v4);
      if (v5 <= 0x3F)
      {
        sub_21409A2B4(319, &qword_280B2E570, &qword_27C904008, &qword_2146EC050);
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21451B9F8(uint64_t a1)
{
  sub_21409A2B4(319, &qword_280B2E560, &qword_27C904798, qword_21473CFD0);
  if (v1 <= 0x3F)
  {
    sub_21451B744(319, v1, v2, v3);
    if (v4 <= 0x3F)
    {
      sub_21451B6F0(319, &qword_280B30B80, MEMORY[0x277CC9260]);
      if (v5 <= 0x3F)
      {
        sub_21409A2B4(319, &qword_280B2E570, &qword_27C904008, &qword_2146EC050);
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21451BB38(uint64_t a1)
{
  sub_21451B6F0(319, &qword_280B30B80, MEMORY[0x277CC9260]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_21451BBEC()
{
  result = qword_27C915180;
  if (!qword_27C915180)
  {
    result = swift_getWitnessTable(aQ_31, &type metadata for ChatbotCharacteristic.ChatbotMessageTech, v0, v1);
    atomic_store(result, &qword_27C915180);
  }

  return result;
}

unint64_t sub_21451BC40()
{
  result = qword_27C915188;
  if (!qword_27C915188)
  {
    result = swift_getWitnessTable(byte_2147592F0, &type metadata for MessagingCharacteristic.OneToManyTech, v0, v1);
    atomic_store(result, &qword_27C915188);
  }

  return result;
}

__n128 sub_21451BDB4@<Q0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = v4;
  v9 = a1(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - v10;
  sub_21451DAA8(v7, &v16 - v10, a2);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_21451D74C(v11, a3);
    result.n128_u64[0] = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 80) = 0u;
    *(a4 + 96) = 0u;
    *(a4 + 112) = 0;
  }

  else
  {
    v13 = *(v11 + 5);
    *(a4 + 64) = *(v11 + 4);
    *(a4 + 80) = v13;
    *(a4 + 96) = *(v11 + 6);
    *(a4 + 112) = v11[112];
    v14 = *(v11 + 1);
    *a4 = *v11;
    *(a4 + 16) = v14;
    result = *(v11 + 2);
    v15 = *(v11 + 3);
    *(a4 + 32) = result;
    *(a4 + 48) = v15;
  }

  return result;
}

uint64_t sub_21451BEF4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = v4;
  v9 = a1(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  sub_21451DAA8(v7, &v15 - v10, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21451DB10(v11, a4, type metadata accessor for Chatbot.Action);
    v12 = 0;
  }

  else
  {
    sub_21451D74C(v11, a3);
    v12 = 1;
  }

  v13 = type metadata accessor for Chatbot.Action(0);
  return (*(*(v13 - 8) + 56))(a4, v12, 1, v13);
}

uint64_t sub_21451C060@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = v4;
  v9 = a1(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - v10;
  sub_21451DAA8(v7, &v17 - v10, a2);
  result = swift_getEnumCaseMultiPayload();
  if (result == 2)
  {
    v13 = *v11;
    v14 = *(v11 + 1);
    v15 = v11[32];
    v16 = *(v11 + 5);
  }

  else
  {
    result = sub_21451D74C(v11, a3);
    v15 = 0;
    v16 = 0;
    v13 = 0uLL;
    v14 = 0uLL;
  }

  *a4 = v13;
  *(a4 + 16) = v14;
  *(a4 + 32) = v15;
  *(a4 + 40) = v16;
  return result;
}

__n128 sub_21451C1C8@<Q0>(_OWORD *a1@<X8>)
{
  v3 = type metadata accessor for Chatbot.Action.ActionType(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for Chatbot.Action(0);
  sub_21451DAA8(v1 + *(v6 + 20), v5, type metadata accessor for Chatbot.Action.ActionType);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_21451D74C(v5, type metadata accessor for Chatbot.Action.ActionType);
    result.n128_u64[0] = 0;
    *a1 = 0u;
    a1[1] = 0u;
    a1[2] = 0u;
    a1[3] = 0u;
    *(a1 + 57) = 0u;
  }

  else
  {
    sub_2143277E4(v5, v9);
    sub_2143277E4(v9, v10);
    v8 = v11[0];
    a1[2] = v10[2];
    a1[3] = v8;
    *(a1 + 57) = *(v11 + 9);
    result = v10[1];
    *a1 = v10[0];
    a1[1] = result;
  }

  return result;
}

uint64_t sub_21451C2E0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Chatbot.Action.ActionType(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Chatbot.Action(0);
  sub_21451DAA8(v1 + *(v6 + 20), v5, type metadata accessor for Chatbot.Action.ActionType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21451DB10(v5, a1, type metadata accessor for Chatbot.DialerAction);
    v7 = 0;
  }

  else
  {
    sub_21451D74C(v5, type metadata accessor for Chatbot.Action.ActionType);
    v7 = 1;
  }

  v8 = type metadata accessor for Chatbot.DialerAction(0);
  return (*(*(v8 - 8) + 56))(a1, v7, 1, v8);
}

uint64_t sub_21451C420@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Chatbot.Action.ActionType(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Chatbot.Action(0);
  sub_21451DAA8(v1 + *(v6 + 20), v5, type metadata accessor for Chatbot.Action.ActionType);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_21451DB10(v5, a1, type metadata accessor for Chatbot.MapAction);
    v7 = 0;
  }

  else
  {
    sub_21451D74C(v5, type metadata accessor for Chatbot.Action.ActionType);
    v7 = 1;
  }

  v8 = type metadata accessor for Chatbot.MapAction(0);
  return (*(*(v8 - 8) + 56))(a1, v7, 1, v8);
}

uint64_t sub_21451C560@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Chatbot.Action.ActionType(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Chatbot.Action(0);
  sub_21451DAA8(v1 + *(v6 + 20), v5, type metadata accessor for Chatbot.Action.ActionType);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_21451DB10(v5, a1, type metadata accessor for Chatbot.CalendarAction);
    v7 = 0;
  }

  else
  {
    sub_21451D74C(v5, type metadata accessor for Chatbot.Action.ActionType);
    v7 = 1;
  }

  v8 = type metadata accessor for Chatbot.CalendarAction(0);
  return (*(*(v8 - 8) + 56))(a1, v7, 1, v8);
}

double sub_21451C6A0@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Chatbot.Action.ActionType(0);
  MEMORY[0x28223BE20](v3);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for Chatbot.Action(0);
  sub_21451DAA8(v1 + *(v6 + 20), v5, type metadata accessor for Chatbot.Action.ActionType);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v7 = v5[3];
    *(a1 + 32) = v5[2];
    *(a1 + 48) = v7;
    *(a1 + 57) = *(v5 + 57);
    v8 = v5[1];
    *a1 = *v5;
    *(a1 + 16) = v8;
  }

  else
  {
    sub_21451D74C(v5, type metadata accessor for Chatbot.Action.ActionType);
    *&v8 = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0x1FFFFFFFE00;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0;
  }

  return *&v8;
}

uint64_t sub_21451C7AC@<X0>(BOOL *a1@<X8>)
{
  v3 = type metadata accessor for Chatbot.Action.ActionType(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Chatbot.Action(0);
  sub_21451DAA8(v1 + *(v6 + 20), v5, type metadata accessor for Chatbot.Action.ActionType);
  result = swift_getEnumCaseMultiPayload();
  v8 = result;
  if (result != 5)
  {
    result = sub_21451D74C(v5, type metadata accessor for Chatbot.Action.ActionType);
  }

  *a1 = v8 != 5;
  return result;
}

uint64_t sub_21451C890@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for Chatbot.Action.ActionType(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Chatbot.Action(0);
  sub_21451DAA8(v1 + *(v6 + 20), v5, type metadata accessor for Chatbot.Action.ActionType);
  result = swift_getEnumCaseMultiPayload();
  if (result == 6)
  {
    v8 = *v5;
  }

  else
  {
    result = sub_21451D74C(v5, type metadata accessor for Chatbot.Action.ActionType);
    v8 = 2;
  }

  *a1 = v8;
  return result;
}

uint64_t sub_21451C974@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Chatbot.DialerAction(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21451DAA8(v2, v6, type metadata accessor for Chatbot.DialerAction);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_21451D74C(v6, type metadata accessor for Chatbot.DialerAction);
    v7 = 1;
  }

  else
  {
    sub_21451DB10(v6, a1, type metadata accessor for Chatbot.DialerAction.DialPhoneNumber);
    v7 = 0;
  }

  v8 = type metadata accessor for Chatbot.DialerAction.DialPhoneNumber(0);
  return (*(*(v8 - 8) + 56))(a1, v7, 1, v8);
}

uint64_t sub_21451CAA8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Chatbot.DialerAction(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21451DAA8(v2, v6, type metadata accessor for Chatbot.DialerAction);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21451DB10(v6, a1, type metadata accessor for Chatbot.DialerAction.DialEnrichedCall);
    v7 = 0;
  }

  else
  {
    sub_21451D74C(v6, type metadata accessor for Chatbot.DialerAction);
    v7 = 1;
  }

  v8 = type metadata accessor for Chatbot.DialerAction.DialEnrichedCall(0);
  return (*(*(v8 - 8) + 56))(a1, v7, 1, v8);
}

uint64_t sub_21451CBE0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Chatbot.DialerAction(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21451DAA8(v2, v6, type metadata accessor for Chatbot.DialerAction);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_21451DB10(v6, a1, type metadata accessor for Chatbot.DialerAction.DialVideoCall);
    v7 = 0;
  }

  else
  {
    sub_21451D74C(v6, type metadata accessor for Chatbot.DialerAction);
    v7 = 1;
  }

  v8 = type metadata accessor for Chatbot.DialerAction.DialVideoCall(0);
  return (*(*(v8 - 8) + 56))(a1, v7, 1, v8);
}

uint64_t sub_21451CD18@<X0>(_OWORD *a1@<X8>)
{
  sub_2143277E4(v1, v8);
  sub_2143277E4(v8, v9);
  v3 = v10[0];
  a1[2] = v9[2];
  a1[3] = v3;
  *(a1 + 57) = *(v10 + 9);
  v4 = v9[1];
  *a1 = v9[0];
  a1[1] = v4;
  sub_2143277E4(v8, v7);
  return sub_21431B084(v7, v6);
}

uint64_t sub_21451CD90@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Chatbot.Message(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21451DAA8(v2, v6, type metadata accessor for Chatbot.Message);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21451D74C(v6, type metadata accessor for Chatbot.Message);
    v7 = 1;
  }

  else
  {
    sub_21451DB10(v6, a1, type metadata accessor for Chatbot.GeneralPurposeCardMessage);
    v7 = 0;
  }

  v8 = type metadata accessor for Chatbot.GeneralPurposeCardMessage(0);
  return (*(*(v8 - 8) + 56))(a1, v7, 1, v8);
}

uint64_t sub_21451CEC8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Chatbot.Message(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21451DAA8(v2, v6, type metadata accessor for Chatbot.Message);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21451DB10(v6, a1, type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage);
    v7 = 0;
  }

  else
  {
    sub_21451D74C(v6, type metadata accessor for Chatbot.Message);
    v7 = 1;
  }

  v8 = type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage(0);
  return (*(*(v8 - 8) + 56))(a1, v7, 1, v8);
}

uint64_t sub_21451D000@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Chatbot.RootMessage(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21451DAA8(v2, v6, type metadata accessor for Chatbot.RootMessage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21451D74C(v6, type metadata accessor for Chatbot.RootMessage);
    v7 = 1;
  }

  else
  {
    sub_21451DB10(v6, a1, type metadata accessor for Chatbot.Message);
    v7 = 0;
  }

  v8 = type metadata accessor for Chatbot.Message(0);
  return (*(*(v8 - 8) + 56))(a1, v7, 1, v8);
}

uint64_t sub_21451D138()
{
  v1 = type metadata accessor for Chatbot.RootMessage(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21451DAA8(v0, v3, type metadata accessor for Chatbot.RootMessage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return *v3;
  }

  sub_21451D74C(v3, type metadata accessor for Chatbot.RootMessage);
  return 0;
}

__n128 sub_21451D248@<Q0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = v4;
  v9 = a1(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - v10;
  sub_21451DAA8(v7, &v16 - v10, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21451D74C(v11, a3);
    result.n128_u64[0] = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 80) = 0u;
    *(a4 + 96) = 0u;
    *(a4 + 112) = 0;
  }

  else
  {
    v13 = *(v11 + 5);
    *(a4 + 64) = *(v11 + 4);
    *(a4 + 80) = v13;
    *(a4 + 96) = *(v11 + 6);
    *(a4 + 112) = v11[112];
    v14 = *(v11 + 1);
    *a4 = *v11;
    *(a4 + 16) = v14;
    result = *(v11 + 2);
    v15 = *(v11 + 3);
    *(a4 + 32) = result;
    *(a4 + 48) = v15;
  }

  return result;
}

uint64_t sub_21451D38C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21451DAA8(v2, v6, type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21451DB10(v6, a1, type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.HorizontalLayout);
    v7 = 0;
  }

  else
  {
    sub_21451D74C(v6, type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout);
    v7 = 1;
  }

  v8 = type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.HorizontalLayout(0);
  return (*(*(v8 - 8) + 56))(a1, v7, 1, v8);
}

uint64_t sub_21451D4C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21451DAA8(v2, v6, type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21451D74C(v6, type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout);
    v7 = 1;
  }

  else
  {
    sub_21451DB10(v6, a1, type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.VerticalLayout);
    v7 = 0;
  }

  v8 = type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.VerticalLayout(0);
  return (*(*(v8 - 8) + 56))(a1, v7, 1, v8);
}

uint64_t sub_21451D5FC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Chatbot.MapAction(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21451DAA8(v1, v5, type metadata accessor for Chatbot.MapAction);
  v6 = type metadata accessor for Chatbot.MapAction.ShowLocation(0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_21451D74C(v5, type metadata accessor for Chatbot.MapAction);
    v8 = 1;
  }

  else
  {
    sub_21451DB10(v5, a1, type metadata accessor for Chatbot.MapAction.ShowLocation);
    v8 = 0;
  }

  return (*(v7 + 56))(a1, v8, 1, v6);
}

uint64_t sub_21451D74C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_21451D7AC()
{
  v1 = type metadata accessor for Chatbot.MapAction(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21451DAA8(v0, v3, type metadata accessor for Chatbot.MapAction);
  v4 = type metadata accessor for Chatbot.MapAction.ShowLocation(0);
  v5 = (*(*(v4 - 8) + 48))(v3, 1, v4) == 1;
  sub_21451D74C(v3, type metadata accessor for Chatbot.MapAction);
  return v5;
}

uint64_t sub_21451D894@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 28);
  if ((v3 & 0x80) != 0)
  {
    v3 = 0;
    *(a1 + 48) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  else
  {
    v5 = v1[5];
    v4 = v1[6];
    v7 = v1[3];
    v6 = v1[4];
    v9 = v1[1];
    v8 = v1[2];
    v10 = *v1;
    *a1 = *v1;
    *(a1 + 8) = v9;
    *(a1 + 16) = v8;
    *(a1 + 24) = v7;
    *(a1 + 32) = v6;
    *(a1 + 40) = v5;
    *(a1 + 48) = v4;
    v13[0] = v10;
    v13[1] = v9;
    v13[2] = v8;
    v13[3] = v7;
    v13[4] = v6;
    v13[5] = v5;
    v13[6] = v4;
    v14 = v3;
    result = sub_21431B60C(v13, &v12);
  }

  *(a1 + 56) = v3;
  return result;
}

uint64_t sub_21451D928@<X0>(uint64_t a1@<X8>)
{
  if ((v1[7] & 0x80) != 0)
  {
    v4 = v1[3];
    v8 = *(v1 + 1);
    v3 = *v1;
    v5 = *(v1 + 32);

    v6 = v8;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0uLL;
  }

  *a1 = v3;
  *(a1 + 8) = v6;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_21451D9B8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Chatbot.CalendarAction(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21451DAA8(v1, v5, type metadata accessor for Chatbot.CalendarAction);
  sub_21451DB10(v5, a1, type metadata accessor for Chatbot.CalendarAction.CreateEvent);
  Event = type metadata accessor for Chatbot.CalendarAction.CreateEvent(0);
  return (*(*(Event - 8) + 56))(a1, 0, 1, Event);
}

uint64_t sub_21451DAA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21451DB10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_21451DB78@<D0>(uint64_t a1@<X8>)
{
  v2 = v1[4];
  if (v2 < 0)
  {
    result = 0.0;
    *(a1 + 57) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {
    v3 = *(v1 + 72);
    v5 = v1[7];
    v4 = v1[8];
    v7 = v1[5];
    v6 = v1[6];
    v9 = v1[2];
    v8 = v1[3];
    v10 = *v1;
    v11 = v1[1];
    *a1 = *v1;
    *(a1 + 8) = v11;
    *(a1 + 16) = v9;
    *(a1 + 24) = v8;
    *(a1 + 32) = v2;
    *(a1 + 40) = v7;
    *(a1 + 48) = v6;
    *(a1 + 56) = v5;
    *(a1 + 64) = v4;
    *(a1 + 72) = v3;
    v14[0] = v10;
    v14[1] = v11;
    v14[2] = v9;
    v14[3] = v8;
    v14[4] = v2;
    v14[5] = v7;
    v14[6] = v6;
    v14[7] = v5;
    v14[8] = v4;
    v15 = v3;
    sub_21431B8B4(v14, &v13);
  }

  return result;
}

uint64_t sub_21451DC00@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[4];
  if (v3 < 0)
  {
    v5 = v1[3];
    v9 = *(v1 + 1);
    v4 = *v1;
    v6 = v3 & 0x1FF;

    v7 = v9;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0uLL;
  }

  *a1 = v4;
  *(a1 + 8) = v7;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  return result;
}

void sub_21451DC98(BOOL *a3@<X8>)
{
  v4 = sub_2146DA098();

  *a3 = v4 != 0;
}

uint64_t sub_21451DD0C()
{
  sub_2146DA958();
  sub_2146D9698();
  return sub_2146DA9B8();
}

uint64_t sub_21451DD80(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();
  return sub_2146DA9B8();
}

void sub_21451DDD4(BOOL *a2@<X8>)
{
  v3 = sub_2146DA098();

  *a2 = v3 != 0;
}

uint64_t sub_21451DE48()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9151A8, &qword_214759788);
  inited = swift_initStackObject();
  *(inited + 32) = 0;
  *(inited + 16) = xmmword_2147486B0;
  *(inited + 64) = &type metadata for ATXHeaderValidator;
  *(inited + 72) = &off_28268CA78;
  *(inited + 40) = 0;
  *(inited + 48) = &unk_282658940;
  *(inited + 80) = 1;
  *(inited + 112) = &type metadata for AVCIHeaderValidator;
  *(inited + 120) = &off_28268CA50;
  *(inited + 88) = 1;
  *(inited + 96) = 4;
  *(inited + 104) = &unk_282658A80;
  *(inited + 128) = 2;
  *(inited + 160) = &type metadata for HEICHeaderValidator;
  *(inited + 168) = &off_28268CA28;
  *(inited + 136) = 2;
  *(inited + 144) = 4;
  *(inited + 152) = &unk_282658AD0;
  *(inited + 176) = 3;
  *(inited + 208) = &type metadata for MSF1HeaderValidator;
  *(inited + 216) = &off_28268CA00;
  *(inited + 184) = 3;
  *(inited + 192) = 4;
  *(inited + 200) = &unk_282658B20;
  *(inited + 224) = 4;
  *(inited + 256) = &type metadata for MIF1HeaderValidator;
  *(inited + 264) = &off_28268C9D8;
  *(inited + 232) = 4;
  *(inited + 240) = 4;
  *(inited + 248) = &unk_282658B70;
  *(inited + 272) = 5;
  *(inited + 304) = &type metadata for AVIFHeaderValidator;
  *(inited + 312) = &off_28268C9B0;
  *(inited + 280) = 5;
  *(inited + 288) = 4;
  *(inited + 296) = &unk_282658BC0;
  *(inited + 320) = 6;
  *(inited + 352) = &type metadata for AVISHeaderValidator;
  *(inited + 360) = &off_28268C988;
  *(inited + 328) = 6;
  *(inited + 336) = 4;
  *(inited + 344) = &unk_282658C10;
  *(inited + 368) = 7;
  *(inited + 400) = &type metadata for HEIFHeaderValidator;
  *(inited + 408) = &off_28268C960;
  *(inited + 376) = 7;
  *(inited + 384) = 4;
  *(inited + 392) = &unk_28265A2C0;
  *(inited + 416) = 8;
  *(inited + 448) = &type metadata for HEIFJPEGHeaderValidator;
  *(inited + 456) = &off_28268C938;
  *(inited + 424) = 8;
  *(inited + 432) = &unk_282658990;
  *(inited + 464) = 9;
  *(inited + 496) = &type metadata for JPEGEXTHeaderValidator;
  *(inited + 504) = &off_28268C910;
  *(inited + 472) = 9;
  *(inited + 480) = &unk_28265A2E8;
  *(inited + 512) = 10;
  *(inited + 544) = &type metadata for MPOHeaderValidator;
  *(inited + 552) = &off_28268C8E8;
  *(inited + 520) = 10;
  *(inited + 528) = &unk_282658E90;
  *(inited + 560) = 11;
  *(inited + 592) = &type metadata for JPEGHeaderValidator;
  *(inited + 600) = &off_28268C8C0;
  *(inited + 568) = 11;
  *(inited + 576) = &unk_28265A310;
  *(inited + 608) = 12;
  *(inited + 640) = &type metadata for PNGHeaderValidator;
  *(inited + 648) = &off_28268C898;
  *(inited + 616) = 12;
  *(inited + 624) = &unk_2826589E0;
  *(inited + 656) = 13;
  *(inited + 688) = &type metadata for WEBPHeaderValidator;
  *(inited + 696) = &off_28268C870;
  *(inited + 664) = 13;
  *(inited + 672) = &unk_282658F78;
  *(inited + 704) = 14;
  *(inited + 736) = &type metadata for TIFFHeaderValidator;
  *(inited + 744) = &off_28268C848;
  *(inited + 712) = 14;
  *(inited + 720) = &unk_282659020;
  *(inited + 752) = 15;
  *(inited + 784) = &type metadata for BMPHeaderValidator;
  *(inited + 792) = &off_28268C820;
  *(inited + 760) = 15;
  *(inited + 768) = &unk_28265A338;
  *(inited + 800) = 16;
  *(inited + 832) = &type metadata for GIFHeaderValidator;
  *(inited + 840) = &off_28268C7F8;
  *(inited + 808) = 16;
  *(inited + 816) = &unk_2826590A8;
  *(inited + 848) = 17;
  *(inited + 880) = &type metadata for JPEGXLCodeStreamHeaderValidator;
  *(inited + 888) = &off_28268C7D0;
  *(inited + 856) = 17;
  *(inited + 864) = &unk_28265A360;
  *(inited + 896) = 18;
  *(inited + 928) = &type metadata for JPEGXLContainerHeaderValidator;
  *(inited + 936) = &off_28268C7A8;
  *(inited + 904) = 18;
  *(inited + 912) = &unk_282658A30;
  v1 = sub_214046B5C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904060, &qword_214759790);
  result = swift_arrayDestroy();
  off_27C915190 = v1;
  return result;
}

Swift::Bool __swiftcall Data.hasValidHeader(for:)(BlastDoor::ImageHeader a1)
{
  v3 = v2;
  v4 = v1;
  v5 = *a1;
  if (qword_27C9031C8 != -1)
  {
    v13 = v5;
    swift_once();
    v5 = v13;
  }

  v6 = off_27C915190;
  if (*(off_27C915190 + 2) && (v7 = sub_21408C650(v5), (v8 & 1) != 0))
  {
    sub_214053840(v6[7] + 40 * v7, v14);
    sub_214047B54(v14, v15);
    v9 = v16;
    v10 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v11 = (*(v10 + 32))(v4, v3, v9, v10);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

BlastDoor::ImageHeader __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Data.sniffedImageUTType()()
{
  v3 = v1;
  v4 = v0;
  v13 = v2;
  if (qword_27C9031C8 != -1)
  {
    swift_once();
  }

  v5 = 0;
  v6 = off_27C915190;
  while (1)
  {
    if (!v6[2] || (v7 = byte_28265A388[v5 + 32], v8 = sub_21408C650(v7), (v9 & 1) == 0))
    {
      sub_21451EB54();
      swift_allocError();
      return swift_willThrow();
    }

    sub_214053840(v6[7] + 40 * v8, v14);
    sub_214047B54(v14, v15);
    v10 = v16;
    v11 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    if ((*(v11 + 32))(v4, v3, v10, v11))
    {
      break;
    }

    ++v5;
    result = __swift_destroy_boxed_opaque_existential_1(v15);
    if (v5 == 19)
    {
      *v13 = 19;
      return result;
    }
  }

  *v13 = v7;
  return __swift_destroy_boxed_opaque_existential_1(v15);
}

Swift::Bool __swiftcall Data.isAnimatedPNG()()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_2146D95F8();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_79;
    }

    v7 = *(v3 + 16);
    v6 = *(v3 + 24);
    v8 = __OFSUB__(v6, v7);
    v9 = v6 - v7;
    if (v8)
    {
      goto LABEL_91;
    }

    if (v9 < 8)
    {
      goto LABEL_79;
    }
  }

  else if (v5)
  {
    if (__OFSUB__(HIDWORD(v3), v3))
    {
      goto LABEL_92;
    }

    if (HIDWORD(v3) - v3 < 8)
    {
      goto LABEL_79;
    }
  }

  else if (BYTE6(v2) < 8uLL)
  {
    goto LABEL_79;
  }

  v52 = 12;
  if (!Data.hasValidHeader(for:)(&v52))
  {
    goto LABEL_79;
  }

  v51 = 8;
  if (v5 == 2)
  {
    v12 = *(v3 + 16);
    v11 = *(v3 + 24);
    v10 = v11 - v12;
    if (__OFSUB__(v11, v12))
    {
      goto LABEL_101;
    }
  }

  else
  {
    if (v5 != 1)
    {
      goto LABEL_19;
    }

    if (__OFSUB__(HIDWORD(v3), v3))
    {
      goto LABEL_100;
    }

    v10 = HIDWORD(v3) - v3;
  }

  if ((v10 & 0x8000000000000000) == 0)
  {
    goto LABEL_20;
  }

  __break(1u);
LABEL_19:
  v10 = BYTE6(v2);
LABEL_20:
  v13 = sub_21451E980(&v51, v3, v2);
  if ((v13 & 0x100000000) != 0 || (v14 = v13) == 0)
  {
LABEL_79:
    v47 = 0;
    return v47 & 1;
  }

  v15 = v51;
  v16 = __OFSUB__(HIDWORD(v3), v3);
  v49 = v16;
  v50 = v10;
  while (1)
  {
    v17 = v14;
    v18 = v14 + v15;
    if (__CFADD__(v14, v15))
    {
      break;
    }

    v19 = __CFADD__(v18, 8);
    v20 = v18 + 8;
    if (v19)
    {
      goto LABEL_83;
    }

    if (v20 >= v10)
    {
      goto LABEL_79;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        v23 = *(v3 + 16);
        v22 = *(v3 + 24);
        v8 = __OFSUB__(v22, v23);
        v21 = v22 - v23;
        if (v8)
        {
          goto LABEL_94;
        }
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v21 = BYTE6(v2);
      if (v5)
      {
        v21 = HIDWORD(v3) - v3;
        if (v49)
        {
          goto LABEL_93;
        }
      }
    }

    v24 = v15 + 4;
    if (v15 >= 0xFFFFFFFFFFFFFFFCLL)
    {
      goto LABEL_84;
    }

    if ((v21 & 0x8000000000000000) != 0 || v21 < v24)
    {
      v24 = v15;
    }

    else
    {
      if ((v24 | v15) < 0)
      {
        goto LABEL_89;
      }

      if (v24 < v15)
      {
        goto LABEL_90;
      }

      v25 = sub_2146D8A78();
      v27 = v26;
      sub_2146D95E8();
      sub_2146D95C8();
      v28 = sub_2146DA098();

      sub_213FB54FC(v25, v27);
      if (v28 > 1)
      {
        v10 = v50;
        if (v28 == 2)
        {
LABEL_81:
          v48 = sub_2146DA6A8();

          v47 = v48 ^ 1;
          return v47 & 1;
        }

        if (v28 == 3)
        {

          goto LABEL_79;
        }
      }

      else
      {
        v10 = v50;
        if (v28 <= 1)
        {
          goto LABEL_81;
        }
      }
    }

    v29 = v24 + v17 + 4;
    if (__CFADD__(v24, v17 + 4))
    {
      goto LABEL_85;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        v32 = *(v3 + 16);
        v31 = *(v3 + 24);
        v8 = __OFSUB__(v31, v32);
        v30 = v31 - v32;
        if (v8)
        {
          goto LABEL_95;
        }
      }

      else
      {
        v30 = 0;
      }
    }

    else
    {
      v30 = BYTE6(v2);
      if (v5)
      {
        v30 = HIDWORD(v3) - v3;
        if (v49)
        {
          goto LABEL_96;
        }
      }
    }

    v15 = v29 + 4;
    if (v29 >= 0xFFFFFFFFFFFFFFFCLL)
    {
      goto LABEL_86;
    }

    if ((v30 & 0x8000000000000000) != 0 || v30 < v15)
    {
      goto LABEL_79;
    }

    if (((v15 | v29) & 0x8000000000000000) != 0)
    {
      goto LABEL_87;
    }

    if (v15 < v29)
    {
      goto LABEL_88;
    }

    v33 = sub_2146D8A78();
    v34 = v33;
    v36 = v35;
    v37 = v35 >> 62;
    if ((v35 >> 62) > 1)
    {
      if (v37 != 2)
      {
        LODWORD(v33) = 0;
        goto LABEL_26;
      }

      v43 = *(v33 + 16);
      v44 = sub_2146D8728();
      if (!v44)
      {
        goto LABEL_102;
      }

      v45 = v44;
      v46 = sub_2146D8758();
      if (__OFSUB__(v43, v46))
      {
        goto LABEL_98;
      }

      v41 = (v43 - v46 + v45);
      sub_2146D8748();
      if (!v41)
      {
        goto LABEL_103;
      }

      goto LABEL_76;
    }

    if (v37)
    {
      if (v33 > v33 >> 32)
      {
        goto LABEL_97;
      }

      v38 = sub_2146D8728();
      if (!v38)
      {
        goto LABEL_104;
      }

      v39 = v38;
      v40 = sub_2146D8758();
      if (__OFSUB__(v34, v40))
      {
        goto LABEL_99;
      }

      v41 = (v34 - v40 + v39);
      result = sub_2146D8748();
      if (!v41)
      {
        goto LABEL_105;
      }

LABEL_76:
      LODWORD(v33) = *v41;
      v10 = v50;
    }

LABEL_26:
    v14 = _OSSwapInt32(v33);
    sub_213FB54FC(v34, v36);
    if (!v14)
    {
      goto LABEL_79;
    }
  }

  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
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
  sub_2146D8748();
LABEL_103:
  __break(1u);
LABEL_104:
  result = sub_2146D8748();
  __break(1u);
LABEL_105:
  __break(1u);
  return result;
}

uint64_t sub_21451E980(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v4 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a3);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    v5 = 0;
    goto LABEL_11;
  }

  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = __OFSUB__(v6, v7);
  v5 = v6 - v7;
  if (v8)
  {
    __break(1u);
LABEL_8:
    LODWORD(v5) = HIDWORD(a2) - a2;
    if (__OFSUB__(HIDWORD(a2), a2))
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v5 = v5;
  }

LABEL_11:
  v9 = *a1;
  v10 = *a1 + 4;
  if (*a1 >= 0xFFFFFFFFFFFFFFFCLL)
  {
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v11 = v5 >= 0 && v5 >= v10;
  v12 = !v11;
  if (!v11)
  {
    v13 = 0;
    return v13 | (v12 << 32);
  }

  if ((v10 | v9) < 0)
  {
    goto LABEL_39;
  }

  if (v10 < v9)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v14 = sub_2146D8A78();
  v15 = v14;
  v17 = v16;
  v18 = v16 >> 62;
  if ((v16 >> 62) > 1)
  {
    if (v18 != 2)
    {
      LODWORD(v14) = 0;
      goto LABEL_36;
    }

    v19 = *(v14 + 16);
    v20 = sub_2146D8728();
    if (!v20)
    {
      goto LABEL_45;
    }

    v21 = v20;
    v22 = sub_2146D8758();
    if (!__OFSUB__(v19, v22))
    {
      v23 = (v19 - v22 + v21);
      sub_2146D8748();
      if (v23)
      {
LABEL_34:
        LODWORD(v14) = *v23;
LABEL_36:
        v28 = _OSSwapInt32(v14);
        sub_213FB54FC(v15, v17);
        *a1 = v10;
        v13 = v28;
        return v13 | (v12 << 32);
      }

      goto LABEL_46;
    }

    goto LABEL_43;
  }

  if (!v18)
  {
    goto LABEL_36;
  }

  if (v14 > v14 >> 32)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    sub_2146D8748();
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v24 = sub_2146D8728();
  if (!v24)
  {
LABEL_47:
    result = sub_2146D8748();
    __break(1u);
    goto LABEL_48;
  }

  v25 = v24;
  v26 = sub_2146D8758();
  if (__OFSUB__(v15, v26))
  {
    goto LABEL_44;
  }

  v23 = (v15 - v26 + v25);
  result = sub_2146D8748();
  if (v23)
  {
    goto LABEL_34;
  }

LABEL_48:
  __break(1u);
  return result;
}

unint64_t sub_21451EB54()
{
  result = qword_27C915198;
  if (!qword_27C915198)
  {
    result = swift_getWitnessTable(aY_34, &type metadata for ImageHeaderError, v0, v1);
    atomic_store(result, &qword_27C915198);
  }

  return result;
}

unint64_t sub_21451EBAC()
{
  result = qword_27C9151A0;
  if (!qword_27C9151A0)
  {
    result = swift_getWitnessTable(aI_31, &type metadata for ImageHeaderError, v0, v1);
    atomic_store(result, &qword_27C9151A0);
  }

  return result;
}

void sub_21451EC18(unint64_t a1@<X0>, void (*a2)(void)@<X1>, unint64_t a3@<X8>)
{
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v20 = a2;
      v6 = 0;
      v7 = a1 & 0xC000000000000001;
      do
      {
        if (v7)
        {
          v8 = MEMORY[0x216054E00](v6, a1);
        }

        else
        {
          if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v8 = *(a1 + 8 * v6 + 32);
        }

        v9 = v8;
        v10 = (v6 + 1);
        if (__OFADD__(v6, 1))
        {
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          v14 = MEMORY[0x216054E00](a3, a1);
          goto LABEL_27;
        }

        [v8 open];

        ++v6;
      }

      while (v10 != v5);
      v20();
      a3 = 0;
      v6 = &off_27817C000;
      if (v19)
      {
        while (1)
        {
          if (v7)
          {
            v11 = MEMORY[0x216054E00](a3, a1);
          }

          else
          {
            if (a3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_22;
            }

            v11 = *(a1 + 8 * a3 + 32);
          }

          v12 = v11;
          v13 = a3 + 1;
          if (__OFADD__(a3, 1))
          {
            goto LABEL_21;
          }

          [v11 close];

          ++a3;
          if (v13 == v5)
          {
            return;
          }
        }
      }

      while (1)
      {
        if (v7)
        {
          goto LABEL_23;
        }

        if (a3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v14 = *(a1 + 8 * a3 + 32);
LABEL_27:
        v15 = v14;
        v16 = a3 + 1;
        if (__OFADD__(a3, 1))
        {
          break;
        }

        [v14 *(v6 + 320)];

        ++a3;
        if (v16 == v5)
        {
          return;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      v17 = a2;
      v18 = sub_2146DA028();
      a2 = v17;
      v5 = v18;
    }

    while (v18);
  }

  a2();
}

unint64_t sub_21451EE30()
{
  result = qword_27C9151B0[0];
  if (!qword_27C9151B0[0])
  {
    result = swift_getWitnessTable(byte_2147597E8, &type metadata for StreamError, v0, v1);
    atomic_store(result, qword_27C9151B0);
  }

  return result;
}

uint64_t sub_21451EE84(uint64_t a1, uint64_t a2)
{
  v4 = sub_2146D86D8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v16 - v9;
  v11 = sub_2146D96A8();
  sub_2146D86B8();
  sub_2146D86A8();
  if ((v11 - 1) > 9)
  {
    (*(v5 + 8))(v10, v4);
    v13 = 0;
  }

  else
  {
    v16[0] = a1;
    v16[1] = a2;
    sub_2146D86C8();
    sub_214069AD8();
    sub_2146D9DC8();
    v13 = v12;
    v14 = *(v5 + 8);
    v14(v8, v4);
    v14(v10, v4);
  }

  return v13 & 1;
}

uint64_t sub_21451F070()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21451F0C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for CSDMHandleProto(0);
  v7 = v6;
  v8 = *(a1 + *(v6 + 20));
  if (*(a1 + *(v6 + 20)))
  {
    if (v8 == 4)
    {
      goto LABEL_8;
    }

    v9 = (a1 + *(v6 + 24));
    v10 = v9[1];
    if (!v10)
    {
      goto LABEL_8;
    }

    v11 = *v9;
    if (v8 != 1)
    {
      if (v8 == 2)
      {
        v64 = v3;
        v54 = a2;

        v57 = 0;
        v58 = v11;
        v72 = 0;
        v66 = 2;
        v78 = v10;
        goto LABEL_14;
      }

      if (v8 == 3)
      {
        v64 = v3;
        v54 = a2;

        v57 = v11;
        v58 = 0;
        v78 = 0;
        v66 = 3;
        v72 = v10;
LABEL_14:
        v81 = 0;
        v10 = 0;
        goto LABEL_16;
      }

LABEL_8:
      sub_2145350E4();
      swift_allocError();
      *v12 = 0;
      swift_willThrow();
      return sub_2145351E4(a1, type metadata accessor for CSDMHandleProto);
    }

    v64 = v3;
    v54 = a2;
    v81 = *v9;

    v57 = 0;
    v58 = 0;
    v72 = 0;
    v78 = 0;
    v66 = 1;
  }

  else
  {
    v13 = (a1 + *(v6 + 24));
    v14 = v13[1];
    v64 = v3;
    if (v14)
    {
      v15 = *v13;
      v10 = v14;
    }

    else
    {
      v15 = 0;
      v10 = 0xE000000000000000;
    }

    v54 = a2;
    v81 = v15;

    v57 = 0;
    v58 = 0;
    v72 = 0;
    v78 = 0;
    v66 = 0;
  }

LABEL_16:
  v16 = (a1 + *(v7 + 28));
  v17 = *v16;
  v18 = v16[1];
  v60 = a1;
  v19 = (a1 + *(v7 + 32));
  v20 = v19[1];
  v55 = *v19;
  v56 = v17;

  sub_214650EB4(&v86);
  v21 = v86;
  v22 = v87;
  v24 = v88;
  v23 = v89;
  v25 = v90;
  sub_214651000(&v122);
  v82 = v122;
  v84 = v123;
  v132 = v124;
  v85 = v125;
  v83 = v126;
  sub_214651034(v120);
  v75 = v120[2];
  v76 = v120[0];
  v79 = v120[1];
  v80 = v120[3];
  v77 = v121;
  sub_214651068(v118);
  v69 = v118[2];
  v70 = v118[0];
  v73 = v118[1];
  v74 = v118[3];
  v71 = v119;
  sub_2146511B4(v116);
  v62 = v116[1];
  v63 = v116[0];
  v67 = v116[2];
  v68 = v116[3];
  v61 = v117;
  v122 = v81;
  v123 = v10;
  v59 = v25;
  LOBYTE(v120[0]) = v25;
  v86 = 0xD000000000000018;
  v87 = 0x800000021478CEC0;
  v88 = 0xD00000000000001CLL;
  v89 = 0x800000021478A360;

  sub_213FDC9D0(v24, v23);
  v26 = v64;
  v65 = v21;
  v27 = v21(&v122, v120, &v86);
  if (v26)
  {

    v28 = v61;
    v29 = v22;
LABEL_21:

    sub_213FDC6D0(v24, v23);
    v32 = v24;
    v33 = v66;
    v35 = v62;
    v34 = v63;
    v36 = v65;
    v37 = v29;
LABEL_22:
    a1 = v60;
    v38 = v59;
    v39 = v69;
    v40 = v75;
LABEL_23:
    LOBYTE(v86) = v33;
    *(&v86 + 1) = v131[0];
    HIDWORD(v86) = *(v131 + 3);
    v87 = v36;
    v88 = v37;
    v89 = v32;
    v90 = v23;
    v91 = v38;
    *v92 = *v130;
    *&v92[3] = *&v130[3];
    v93 = v82;
    v94 = v84;
    v95 = v132;
    v96 = v85;
    v97 = v83;
    *&v98[3] = *&v129[3];
    *v98 = *v129;
    v99 = v76;
    v100 = v79;
    v101 = v40;
    v102 = v80;
    v103 = v77;
    *&v104[3] = *&v128[3];
    *v104 = *v128;
    v105 = v70;
    v106 = v73;
    v107 = v39;
    v108 = v74;
    v109 = v71;
    *&v110[3] = *&v127[3];
    *v110 = *v127;
    v111 = v34;
    v112 = v35;
    v113 = v67;
    v114 = v68;
    v115 = v28;
    sub_2142E5ED4(&v86);
    return sub_2145351E4(a1, type metadata accessor for CSDMHandleProto);
  }

  v53 = v18;
  v52 = v10;
  if ((v27 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v31 = 0xD000000000000018;
    v31[1] = 0x800000021478CEC0;
    v31[2] = 0xD00000000000001CLL;
    v31[3] = 0x800000021478A360;
    swift_willThrow();

    v28 = v61;
    v29 = v22;
    goto LABEL_21;
  }

  sub_213FDC6D0(v24, v23);

  sub_213FDC6D0(v24, v23);
  v122 = v58;
  v123 = v78;
  LOBYTE(v120[0]) = v83;
  v86 = 0xD000000000000016;
  v87 = 0x800000021478CEE0;
  v88 = 0xD00000000000001CLL;
  v89 = 0x800000021478A360;

  sub_213FDC9D0(v132, v85);
  v30 = v82(&v122, v120, &v86);
  v28 = v61;
  v35 = v62;
  v34 = v63;
  if ((v30 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v44 = 0xD000000000000016;
    v44[1] = 0x800000021478CEE0;
    v44[2] = 0xD00000000000001CLL;
    v44[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6D0(v132, v85);
    v32 = v81;
    v37 = v22;
    v23 = v52;
    v33 = v66;
    v36 = v21;
    goto LABEL_22;
  }

  v42 = v132;
  sub_213FDC6D0(v132, v85);

  sub_213FDC6D0(v42, v85);
  v122 = v57;
  v123 = v72;
  LOBYTE(v120[0]) = v77;
  v86 = 0xD000000000000017;
  v87 = 0x800000021478CF00;
  v88 = 0xD00000000000001CLL;
  v89 = 0x800000021478A360;

  sub_213FDC9D0(v75, v80);
  v43 = v76(&v122, v120, &v86);
  if ((v43 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v46 = 0xD000000000000017;
    v46[1] = 0x800000021478CF00;
    v46[2] = 0xD00000000000001CLL;
    v46[3] = 0x800000021478A360;
    swift_willThrow();

    v40 = v75;
    sub_213FDC6D0(v75, v80);
    v32 = v81;
    v23 = v52;
    v132 = v58;
    v85 = v78;
    v33 = v66;
    v36 = v21;
    a1 = v60;
    v37 = v22;
    v38 = v59;
    v39 = v69;
    goto LABEL_23;
  }

  sub_213FDC6D0(v75, v80);

  sub_213FDC6D0(v75, v80);
  v122 = v56;
  v123 = v53;
  LOBYTE(v120[0]) = v71;
  v132 = 0xD000000000000019;
  v86 = 0xD000000000000019;
  v87 = 0x800000021478CF20;
  v88 = 0xD00000000000001CLL;
  v89 = 0x800000021478A360;

  sub_213FDC9D0(v69, v74);
  v45 = v70(&v122, v120, &v86);
  v47 = v132;
  if ((v45 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v49 = v47;
    v49[1] = 0x800000021478CF20;
    v49[2] = 0xD00000000000001CLL;
    v49[3] = 0x800000021478A360;
    swift_willThrow();

    v40 = v57;

    v39 = v69;
    sub_213FDC6D0(v69, v74);
    v32 = v81;
    v23 = v52;
    v132 = v58;
    v85 = v78;
    v80 = v72;
LABEL_34:
    v33 = v66;
    v36 = v21;
    a1 = v60;
    v37 = v22;
    v38 = v59;
    goto LABEL_23;
  }

  sub_213FDC6D0(v69, v74);

  sub_213FDC6D0(v69, v74);
  v122 = v55;
  v123 = v20;
  LOBYTE(v120[0]) = v61;
  v86 = 0xD00000000000001ALL;
  v87 = 0x800000021478CF40;
  v88 = 0xD00000000000001CLL;
  v89 = 0x800000021478A360;

  sub_213FDC9D0(v67, v68);
  v48 = v63(&v122, v120, &v86);
  if ((v48 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v51 = 0xD00000000000001ALL;
    v51[1] = 0x800000021478CF40;
    v51[2] = 0xD00000000000001CLL;
    v51[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6D0(v67, v68);
    v32 = v81;
    v23 = v52;
    v132 = v58;
    v85 = v78;
    v39 = v56;
    v40 = v57;
    v80 = v72;
    v74 = v53;
    goto LABEL_34;
  }

  sub_213FDC6D0(v67, v68);

  sub_213FDC6D0(v67, v68);
  result = sub_2145351E4(v60, type metadata accessor for CSDMHandleProto);
  *v54 = v66;
  *(v54 + 1) = v131[0];
  *(v54 + 4) = *(v131 + 3);
  *(v54 + 8) = v21;
  *(v54 + 16) = v22;
  *(v54 + 24) = v81;
  *(v54 + 32) = v52;
  *(v54 + 40) = v59;
  *(v54 + 41) = *v130;
  *(v54 + 44) = *&v130[3];
  *(v54 + 48) = v82;
  *(v54 + 56) = v84;
  *(v54 + 64) = v58;
  *(v54 + 72) = v78;
  *(v54 + 80) = v83;
  *(v54 + 84) = *&v129[3];
  *(v54 + 81) = *v129;
  *(v54 + 88) = v76;
  *(v54 + 96) = v79;
  *(v54 + 104) = v57;
  *(v54 + 112) = v72;
  *(v54 + 120) = v77;
  *(v54 + 124) = *&v128[3];
  *(v54 + 121) = *v128;
  *(v54 + 128) = v70;
  *(v54 + 136) = v73;
  *(v54 + 144) = v56;
  *(v54 + 152) = v53;
  *(v54 + 160) = v71;
  v50 = *v127;
  *(v54 + 164) = *&v127[3];
  *(v54 + 161) = v50;
  *(v54 + 168) = v63;
  *(v54 + 176) = v62;
  *(v54 + 184) = v55;
  *(v54 + 192) = v20;
  *(v54 + 200) = v61;
  return result;
}

void sub_21451FCE4(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *a2;
  if (v4 <= 1)
  {
    if (!*a2)
    {
      v7 = type metadata accessor for CSDMHandleProto(0);
      *(a1 + v7[5]) = 0;
      v10 = *(a2 + 19);
      if (v10)
      {
        goto LABEL_19;
      }

LABEL_12:
      v11 = *(a2 + 24);
      if (!v11)
      {
        return;
      }

      goto LABEL_21;
    }

    if (v4 == 1)
    {
      v5 = type metadata accessor for CSDMHandleProto(0);
      *(a1 + *(v5 + 20)) = 1;
      v6 = *(a2 + 4);
      if (v6)
      {
        if (v6 != 1)
        {
          v7 = v5;
          v8 = *(a2 + 3);
          goto LABEL_18;
        }

LABEL_28:
        sub_2146DA018();
        __break(1u);
        return;
      }

      goto LABEL_25;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v4 == 2)
  {
    v9 = type metadata accessor for CSDMHandleProto(0);
    *(a1 + *(v9 + 20)) = 2;
    v6 = *(a2 + 9);
    if (!v6)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if (v6 == 1)
    {
      goto LABEL_28;
    }

    v7 = v9;
    v8 = *(a2 + 8);
  }

  else
  {
    if (v4 != 3)
    {
      goto LABEL_24;
    }

    v12 = type metadata accessor for CSDMHandleProto(0);
    *(a1 + *(v12 + 20)) = 3;
    v6 = *(a2 + 14);
    if (!v6)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if (v6 == 1)
    {
      goto LABEL_28;
    }

    v7 = v12;
    v8 = *(a2 + 13);
  }

LABEL_18:
  v13 = (a1 + v7[6]);

  *v13 = v8;
  v13[1] = v6;
  v10 = *(a2 + 19);
  if (!v10)
  {
    goto LABEL_12;
  }

LABEL_19:
  if (v10 == 1)
  {
    goto LABEL_28;
  }

  v14 = *(a2 + 18);
  v15 = (a1 + v7[7]);

  *v15 = v14;
  v15[1] = v10;
  v11 = *(a2 + 24);
  if (!v11)
  {
    return;
  }

LABEL_21:
  if (v11 == 1)
  {
    goto LABEL_28;
  }

  v16 = *(a2 + 23);
  v17 = (a1 + v7[8]);

  *v17 = v16;
  v17[1] = v11;
}

void sub_21451FEE0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v3 = type metadata accessor for CSDMHandleProto(0);
  v4 = *(v3 - 1);
  v5 = MEMORY[0x28223BE20](v3);
  v91 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v97 = (&v85 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C903788, "Į\r");
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v90 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v95 = &v85 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v85 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v85 - v16;
  v18 = type metadata accessor for CSDMConversationMemberProto(0);
  v19 = *(v18 + 20);
  v20 = *(v18 + 24);
  v98 = v18;
  v21 = (a1 + v19);
  v93 = *v21;
  LODWORD(v92) = *(v21 + 4);
  sub_213FB2E54(a1 + v20, v17, &unk_27C903788, "Į\r");
  v24 = *(v4 + 48);
  v23 = v4 + 48;
  v22 = v24;
  v25 = v24(v17, 1, v3);
  sub_213FB2DF4(v17, &unk_27C903788, "Į\r");
  if (v25 == 1)
  {
    v96 = v23;
    v97 = v22;
    sub_214535098(&v166);
    v26 = v98;
  }

  else
  {
    sub_213FB2E54(a1 + v20, v15, &unk_27C903788, "Į\r");
    v27 = v22;
    if (v22(v15, 1, v3) == 1)
    {
      v28 = v97;
      sub_2146D8DE8();
      *(v28 + v3[5]) = 4;
      v29 = (v28 + v3[6]);
      *v29 = 0;
      v29[1] = 0;
      v30 = (v28 + v3[7]);
      *v30 = 0;
      v30[1] = 0;
      v31 = (v28 + v3[8]);
      *v31 = 0;
      v31[1] = 0;
      v32 = v27(v15, 1, v3);
      v26 = v98;
      if (v32 != 1)
      {
        sub_213FB2DF4(v15, &unk_27C903788, "Į\r");
      }
    }

    else
    {
      v28 = v97;
      sub_214534FEC(v15, v97, type metadata accessor for CSDMHandleProto);
      v26 = v98;
    }

    v33 = v178;
    sub_21451F0C0(v28, v111);
    if (v33)
    {
      sub_2145351E4(a1, type metadata accessor for CSDMConversationMemberProto);
      return;
    }

    v96 = v23;
    v97 = v27;
    v178 = 0;
    v164 = *&v111[160];
    v165[0] = *&v111[176];
    *(v165 + 9) = *&v111[185];
    v160 = *&v111[96];
    v161 = *&v111[112];
    v163 = *&v111[144];
    v162 = *&v111[128];
    v156 = *&v111[32];
    v157 = *&v111[48];
    v159 = *&v111[80];
    v158 = *&v111[64];
    v155 = *&v111[16];
    v154 = *v111;
    nullsub_1();
    v176 = v164;
    v177[0] = v165[0];
    *(v177 + 9) = *(v165 + 9);
    v172 = v160;
    v173 = v161;
    v175 = v163;
    v174 = v162;
    v168 = v156;
    v169 = v157;
    v171 = v159;
    v170 = v158;
    v167 = v155;
    v166 = v154;
  }

  v34 = *(v26 + 32);
  v35 = (a1 + *(v26 + 28));
  v36 = v35[1];
  v89 = *v35;
  v37 = v95;
  sub_213FB2E54(a1 + v34, v95, &unk_27C903788, "Į\r");
  v38 = v3;
  v39 = v97(v37, 1, v3);

  sub_213FB2DF4(v37, &unk_27C903788, "Į\r");
  v94 = a1;
  if (v39 == 1)
  {
    v40 = v36;
    sub_214535098(&v154);
  }

  else
  {
    v41 = v90;
    sub_213FB2E54(a1 + v34, v90, &unk_27C903788, "Į\r");
    v42 = v97;
    v43 = v97(v41, 1, v38);
    v44 = v178;
    if (v43 == 1)
    {
      v45 = v91;
      sub_2146D8DE8();
      *(v45 + v38[5]) = 4;
      v46 = (v45 + v38[6]);
      *v46 = 0;
      v46[1] = 0;
      v47 = (v45 + v38[7]);
      *v47 = 0;
      v47[1] = 0;
      v48 = (v45 + v38[8]);
      *v48 = 0;
      v48[1] = 0;
      if (v42(v41, 1, v38) != 1)
      {
        sub_213FB2DF4(v41, &unk_27C903788, "Į\r");
      }
    }

    else
    {
      v45 = v91;
      sub_214534FEC(v41, v91, type metadata accessor for CSDMHandleProto);
    }

    sub_21451F0C0(v45, v111);
    a1 = v94;
    if (v44)
    {
      sub_2145351E4(v94, type metadata accessor for CSDMConversationMemberProto);
      sub_213FB2DF4(&v166, &qword_27C905AD0, &unk_214759900);

      return;
    }

    v40 = v36;
    v178 = 0;
    v109 = *&v111[160];
    v110[0] = *&v111[176];
    *(v110 + 9) = *&v111[185];
    v105 = *&v111[96];
    v106 = *&v111[112];
    v107 = *&v111[128];
    v108 = *&v111[144];
    v101 = *&v111[32];
    v102 = *&v111[48];
    v103 = *&v111[64];
    v104 = *&v111[80];
    v99 = *v111;
    v100 = *&v111[16];
    nullsub_1();
    v164 = v109;
    v165[0] = v110[0];
    *(v165 + 9) = *(v110 + 9);
    v160 = v105;
    v161 = v106;
    v163 = v108;
    v162 = v107;
    v156 = v101;
    v157 = v102;
    v159 = v104;
    v158 = v103;
    v155 = v100;
    v154 = v99;
  }

  v49 = (a1 + *(v98 + 36));
  v50 = *v49;
  v51 = *(v49 + 8);
  v52 = (a1 + *(v98 + 40));
  v54 = *v52;
  v53 = v52[1];
  v96 = v50;
  v97 = v54;
  v98 = v53;

  sub_213FB2E54(&v166, v111, &qword_27C905AD0, &unk_214759900);
  sub_213FB2E54(&v154, v111, &qword_27C905AD0, &unk_214759900);
  sub_214651940(&v99);
  *&v137[147] = v175;
  *&v137[163] = v176;
  *&v137[179] = v177[0];
  *&v137[188] = *(v177 + 9);
  *&v137[83] = v171;
  *&v137[99] = v172;
  *&v137[115] = v173;
  *&v137[131] = v174;
  *&v137[19] = v167;
  *&v137[35] = v168;
  *&v137[51] = v169;
  *&v137[67] = v170;
  *&v137[3] = v166;
  *&v111[151] = v163;
  *&v111[167] = v164;
  *&v111[183] = v165[0];
  *&v111[192] = *(v165 + 9);
  *&v111[87] = v159;
  *&v111[103] = v160;
  *&v111[119] = v161;
  *&v111[135] = v162;
  *&v111[23] = v155;
  *&v111[39] = v156;
  *&v111[55] = v157;
  v55 = v99;
  v56 = v100;
  *&v111[71] = v158;
  *&v111[7] = v154;
  v136 = v51;
  LODWORD(v91) = v92;
  v151 = *&v111[160];
  v152 = *&v111[176];
  v153[0] = *(v165 + 9);
  v147 = *&v111[96];
  v148 = *&v111[112];
  v150 = *&v111[144];
  v149 = *&v111[128];
  v143 = *&v111[32];
  v144 = *&v111[48];
  v146 = *&v111[80];
  v145 = *&v111[64];
  v142 = *&v111[16];
  v141 = *v111;
  LODWORD(v90) = v51;
  *&v99 = v89;
  *(&v99 + 1) = v40;
  LODWORD(v95) = v101;
  v138[0] = v101;
  *v111 = 0xD00000000000001FLL;
  *&v111[8] = 0x800000021478CF60;
  *&v111[16] = 0xD00000000000001CLL;
  *&v111[24] = 0x800000021478A360;

  v86 = v56;
  sub_213FDC9D0(v56, *(&v56 + 1));
  v87 = *(&v55 + 1);
  v57 = v178;
  v92 = v55;
  v58 = (v55)(&v99, v138, v111);
  if (v57)
  {
    v178 = v57;
  }

  else
  {
    if (v58)
    {
      v59 = v86;
      sub_213FDC6D0(v86, *(&v56 + 1));
      v60 = v40;

      sub_213FB2DF4(&v166, &qword_27C905AD0, &unk_214759900);
      sub_213FB2DF4(&v154, &qword_27C905AD0, &unk_214759900);
      v61 = v87;

      sub_213FDC6D0(v59, *(&v56 + 1));
      sub_2145351E4(v94, type metadata accessor for CSDMConversationMemberProto);
      v62 = *&v137[128];
      v63 = v88;
      *(v88 + 149) = *&v137[144];
      v64 = *&v137[176];
      *(v63 + 165) = *&v137[160];
      *(v63 + 181) = v64;
      *(v63 + 193) = *&v137[188];
      v65 = *&v137[64];
      *(v63 + 85) = *&v137[80];
      v66 = *&v137[112];
      *(v63 + 101) = *&v137[96];
      *(v63 + 117) = v66;
      *(v63 + 133) = v62;
      v67 = *v137;
      *(v63 + 21) = *&v137[16];
      v68 = *&v137[48];
      *(v63 + 37) = *&v137[32];
      *(v63 + 53) = v68;
      *(v63 + 69) = v65;
      *(v63 + 5) = v67;
      v69 = v151;
      v70 = v153[0];
      *(v63 + 425) = v152;
      *(v63 + 441) = v70;
      v71 = v147;
      v72 = v149;
      v73 = v150;
      *(v63 + 361) = v148;
      *(v63 + 377) = v72;
      *(v63 + 393) = v73;
      *(v63 + 409) = v69;
      v74 = v143;
      v75 = v145;
      v76 = v146;
      *(v63 + 297) = v144;
      *(v63 + 313) = v75;
      *(v63 + 329) = v76;
      *(v63 + 345) = v71;
      v77 = v142;
      *(v63 + 249) = v141;
      *v63 = v93;
      *(v63 + 4) = v91;
      *(v63 + 216) = v92;
      *(v63 + 224) = v61;
      *(v63 + 232) = v89;
      *(v63 + 240) = v60;
      *(v63 + 248) = v95;
      v78 = *(v153 + 15);
      *(v63 + 265) = v77;
      *(v63 + 281) = v74;
      v79 = v96;
      *(v63 + 456) = v78;
      *(v63 + 464) = v79;
      *(v63 + 472) = v90;
      v80 = v98;
      *(v63 + 480) = v97;
      *(v63 + 488) = v80;
      return;
    }

    sub_214031C4C();
    v81 = swift_allocError();
    *v82 = 0xD00000000000001FLL;
    v82[1] = 0x800000021478CF60;
    v82[2] = 0xD00000000000001CLL;
    v82[3] = 0x800000021478A360;
    v178 = v81;
    swift_willThrow();
  }

  sub_213FB2DF4(&v166, &qword_27C905AD0, &unk_214759900);
  sub_213FB2DF4(&v154, &qword_27C905AD0, &unk_214759900);

  v83 = v87;

  v84 = v86;
  sub_213FDC6D0(v86, *(&v56 + 1));
  *&v111[149] = *&v137[144];
  *&v111[165] = *&v137[160];
  *&v111[181] = *&v137[176];
  *&v111[193] = *&v137[188];
  *&v111[85] = *&v137[80];
  *&v111[101] = *&v137[96];
  *&v111[117] = *&v137[112];
  *&v111[133] = *&v137[128];
  *&v111[21] = *&v137[16];
  *&v111[37] = *&v137[32];
  *&v111[53] = *&v137[48];
  *&v111[69] = *&v137[64];
  *&v111[5] = *v137;
  v129 = v152;
  *v130 = v153[0];
  v125 = v148;
  v126 = v149;
  v127 = v150;
  v128 = v151;
  v121 = v144;
  v122 = v145;
  v123 = v146;
  v124 = v147;
  v119 = v142;
  v120 = v143;
  *v111 = v93;
  v111[4] = v91;
  *v112 = *v140;
  *&v112[3] = *&v140[3];
  v113 = v92;
  v114 = v83;
  v115 = v84;
  v116 = *(&v56 + 1);
  v117 = v95;
  v118 = v141;
  *&v130[15] = *(v153 + 15);
  v131 = v96;
  v132 = v90;
  *v133 = v139[0];
  *&v133[3] = *(v139 + 3);
  v134 = v97;
  v135 = v98;
  sub_2142E6080(v111);
  sub_2145351E4(v94, type metadata accessor for CSDMConversationMemberProto);
}

void sub_214520B70(uint64_t a1, int *a2)
{
  v4 = type metadata accessor for CSDMHandleProto(0);
  v52 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 4);
  if ((v7 & 1) == 0)
  {
    v8 = *a2;
    v9 = a1 + *(type metadata accessor for CSDMConversationMemberProto(0) + 20);
    *v9 = v8;
    *(v9 + 4) = v7;
  }

  v10 = *(a2 + 38);
  v11 = *(a2 + 46);
  v90 = *(a2 + 42);
  v91[0] = v11;
  *(v91 + 9) = *(a2 + 193);
  v12 = *(a2 + 22);
  v13 = *(a2 + 30);
  v86 = *(a2 + 26);
  v87 = v13;
  v88 = *(a2 + 34);
  v89 = v10;
  v14 = *(a2 + 6);
  v15 = *(a2 + 14);
  v82 = *(a2 + 10);
  v83 = v15;
  v84 = *(a2 + 18);
  v85 = v12;
  v80 = *(a2 + 2);
  v81 = v14;
  v16 = *(a2 + 38);
  v17 = *(a2 + 46);
  v102 = *(a2 + 42);
  v103[0] = v17;
  *(v103 + 9) = *(a2 + 193);
  v18 = *(a2 + 22);
  v19 = *(a2 + 30);
  v98 = *(a2 + 26);
  v99 = v19;
  v20 = *(a2 + 34);
  v101 = v16;
  v100 = v20;
  v21 = *(a2 + 6);
  v22 = *(a2 + 14);
  v94 = *(a2 + 10);
  v95 = v22;
  v23 = *(a2 + 18);
  v97 = v18;
  v96 = v23;
  v24 = *(a2 + 2);
  v93 = v21;
  v92 = v24;
  enum_tag_for_layout_string_9BlastDoor23CSDMConversationMessageVSg_0 = get_enum_tag_for_layout_string_9BlastDoor23CSDMConversationMessageVSg_0(&v92);
  if (enum_tag_for_layout_string_9BlastDoor23CSDMConversationMessageVSg_0 != 1)
  {
    v115[12] = v102;
    v116[0] = v103[0];
    *(v116 + 9) = *(v103 + 9);
    v115[8] = v98;
    v115[9] = v99;
    v115[11] = v101;
    v115[10] = v100;
    v115[4] = v94;
    v115[5] = v95;
    v115[7] = v97;
    v115[6] = v96;
    v115[3] = v93;
    v115[2] = v92;
    MEMORY[0x28223BE20](enum_tag_for_layout_string_9BlastDoor23CSDMConversationMessageVSg_0);
    v114 = v90;
    v115[0] = v91[0];
    *(v115 + 9) = *(v91 + 9);
    v110 = v86;
    v111 = v87;
    v113 = v89;
    v112 = v88;
    v106 = v82;
    v107 = v83;
    v109 = v85;
    v108 = v84;
    v105 = v81;
    v104 = v80;
    sub_2142E5FD0(&v104, &v68);
    sub_214534FA4(&qword_27C903C20, type metadata accessor for CSDMHandleProto, byte_2146E9208);
    v26 = v117;
    sub_2146D9018();
    v117 = v26;
    sub_213FB2DF4(&v80, &qword_27C905AD0, &unk_214759900);
    v27 = *(type metadata accessor for CSDMConversationMemberProto(0) + 24);
    sub_213FB2DF4(a1 + v27, &unk_27C903788, "Į\r");
    sub_214534FEC(v6, a1 + v27, type metadata accessor for CSDMHandleProto);
    (*(v52 + 56))(a1 + v27, 0, 1, v4);
  }

  v28 = *(a2 + 30);
  if (v28)
  {
    if (v28 == 1)
    {
      sub_2146DA018();
      __break(1u);
      return;
    }

    v29 = *(a2 + 29);
    v30 = (a1 + *(type metadata accessor for CSDMConversationMemberProto(0) + 28));

    *v30 = v29;
    v30[1] = v28;
  }

  v31 = *(a2 + 25);
  v32 = *(a2 + 27);
  v66 = *(a2 + 26);
  v67[0] = v32;
  *(v67 + 9) = *(a2 + 441);
  v33 = *(a2 + 21);
  v34 = *(a2 + 23);
  v62 = *(a2 + 22);
  v63 = v34;
  v35 = *(a2 + 23);
  v36 = *(a2 + 25);
  v64 = *(a2 + 24);
  v65 = v36;
  v37 = *(a2 + 17);
  v38 = *(a2 + 19);
  v58 = *(a2 + 18);
  v59 = v38;
  v39 = *(a2 + 19);
  v40 = *(a2 + 21);
  v60 = *(a2 + 20);
  v61 = v40;
  v41 = *(a2 + 17);
  v56 = *(a2 + 16);
  v57 = v41;
  v42 = *(a2 + 27);
  v78 = v66;
  v79[0] = v42;
  *(v79 + 9) = *(a2 + 441);
  v74 = v62;
  v75 = v35;
  v76 = v64;
  v77 = v31;
  v70 = v58;
  v71 = v39;
  v72 = v60;
  v73 = v33;
  v68 = v56;
  v69 = v37;
  v43 = get_enum_tag_for_layout_string_9BlastDoor23CSDMConversationMessageVSg_0(&v68);
  if (v43 != 1)
  {
    v114 = v78;
    v115[0] = v79[0];
    *(v115 + 9) = *(v79 + 9);
    v110 = v74;
    v111 = v75;
    v113 = v77;
    v112 = v76;
    v106 = v70;
    v107 = v71;
    v109 = v73;
    v108 = v72;
    v105 = v69;
    v104 = v68;
    MEMORY[0x28223BE20](v43);
    v54[10] = v66;
    v55[0] = v67[0];
    *(v55 + 9) = *(v67 + 9);
    v54[6] = v62;
    v54[7] = v63;
    v54[8] = v64;
    v54[9] = v65;
    v54[2] = v58;
    v54[3] = v59;
    v54[4] = v60;
    v54[5] = v61;
    v54[0] = v56;
    v54[1] = v57;
    sub_2142E5FD0(v54, &v53);
    sub_214534FA4(&qword_27C903C20, type metadata accessor for CSDMHandleProto, byte_2146E9208);
    sub_2146D9018();
    sub_213FB2DF4(&v56, &qword_27C905AD0, &unk_214759900);
    v45 = *(type metadata accessor for CSDMConversationMemberProto(0) + 32);
    sub_213FB2DF4(a1 + v45, &unk_27C903788, "Į\r");
    sub_214534FEC(v6, a1 + v45, type metadata accessor for CSDMHandleProto);
    (*(v52 + 56))(a1 + v45, 0, 1, v4);
    v44 = *(a2 + 472);
    if (v44)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v44 = *(a2 + 472);
  if ((v44 & 1) == 0)
  {
LABEL_12:
    v46 = *(a2 + 58);
    v47 = a1 + *(type metadata accessor for CSDMConversationMemberProto(0) + 36);
    *v47 = v46;
    *(v47 + 8) = v44;
  }

LABEL_13:
  v48 = *(a2 + 61);
  if (v48)
  {
    v49 = *(a2 + 60);
    v50 = (a1 + *(type metadata accessor for CSDMConversationMemberProto(0) + 40));

    *v50 = v49;
    v50[1] = v48;
  }
}

void sub_214521240(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == 1)
    {
      goto LABEL_10;
    }

    v5 = *(a2 + 16);
    v6 = (a1 + *(type metadata accessor for CSDMConversationReportProto(0) + 20));

    *v6 = v5;
    v6[1] = v4;
  }

  v7 = *(a2 + 48);
  if ((v7 & 1) == 0)
  {
    v8 = *(a2 + 40);
    v9 = a1 + *(type metadata accessor for CSDMConversationReportProto(0) + 24);
    *v9 = v8;
    *(v9 + 8) = v7;
  }

  v10 = *(a2 + 80);
  if (v10)
  {
    if (v10 != 1)
    {
      v11 = *(a2 + 72);
      v12 = (a1 + *(type metadata accessor for CSDMConversationReportProto(0) + 28));

      *v12 = v11;
      v12[1] = v10;
      return;
    }

LABEL_10:
    sub_2146DA018();
    __break(1u);
  }
}

uint64_t sub_21452135C@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v98 = a2;
  v3 = type metadata accessor for CSDMHandleProto(0);
  v4 = *(v3 - 1);
  MEMORY[0x28223BE20](v3);
  v140 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C903788, "Į\r");
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v139 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v96 - v9;
  v11 = *(type metadata accessor for CSDMConversationParticipantProto(0) + 20);
  v132 = a1;
  v12 = *(a1 + v11);
  swift_beginAccess();
  v131 = *(v12 + 16);
  v129 = *(v12 + 20);
  swift_beginAccess();
  v130 = *(v12 + 24);
  v128 = *(v12 + 32);
  v13 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__handle;
  swift_beginAccess();
  sub_213FB2E54(v12 + v13, v10, &unk_27C903788, "Į\r");
  v14 = *(v4 + 48);
  v15 = v14(v10, 1, v3);
  sub_213FB2DF4(v10, &unk_27C903788, "Į\r");
  if (v15 == 1)
  {
    sub_214535098(&v224);
  }

  else
  {
    v16 = v12 + v13;
    v17 = v139;
    sub_213FB2E54(v16, v139, &unk_27C903788, "Į\r");
    if (v14(v17, 1, v3) == 1)
    {
      v18 = v140;
      sub_2146D8DE8();
      *(v18 + v3[5]) = 4;
      v19 = (v18 + v3[6]);
      *v19 = 0;
      v19[1] = 0;
      v20 = (v18 + v3[7]);
      *v20 = 0;
      v20[1] = 0;
      v21 = (v18 + v3[8]);
      *v21 = 0;
      v21[1] = 0;
      v22 = v14(v17, 1, v3);
      v23 = v236;
      if (v22 != 1)
      {
        sub_213FB2DF4(v17, &unk_27C903788, "Į\r");
      }
    }

    else
    {
      v18 = v140;
      sub_214534FEC(v17, v140, type metadata accessor for CSDMHandleProto);
      v23 = v236;
    }

    sub_21451F0C0(v18, &v153);
    if (v23)
    {
      return sub_2145351E4(v132, type metadata accessor for CSDMConversationParticipantProto);
    }

    v236 = 0;
    v151 = *&v154[144];
    v152[0] = *&v154[160];
    *(v152 + 9) = *&v154[169];
    v147 = *&v154[80];
    v148 = *&v154[96];
    v149 = *&v154[112];
    v150 = *&v154[128];
    v143 = *&v154[16];
    v144 = *&v154[32];
    v145 = *&v154[48];
    v146 = *&v154[64];
    v141 = v153;
    v142 = *v154;
    nullsub_1();
    v234 = v151;
    v235[0] = v152[0];
    *(v235 + 9) = *(v152 + 9);
    v230 = v147;
    v231 = v148;
    v233 = v150;
    v232 = v149;
    v226 = v143;
    v227 = v144;
    v229 = v146;
    v228 = v145;
    v225 = v142;
    v224 = v141;
  }

  v25 = (v12 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__avcData);
  swift_beginAccess();
  v26 = v25[1];
  v138 = *v25;
  v139 = v26;
  if (v26 >> 60 != 15)
  {
    sub_213FDCA18(v138, v139);
  }

  v27 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isMomentsAvailable;
  swift_beginAccess();
  v125 = *(v12 + v27);
  v28 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isScreenSharingAvailable;
  swift_beginAccess();
  v124 = *(v12 + v28);
  v29 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGondolaCallingAvailable;
  swift_beginAccess();
  v30 = *(v12 + v29);
  v31 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPersonaAvailable;
  swift_beginAccess();
  v32 = *(v12 + v31);
  v33 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isLightweight;
  swift_beginAccess();
  v123 = *(v12 + v33);
  v34 = (v12 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__sharePlayProtocolVersion);
  swift_beginAccess();
  v126 = *v34;
  v136 = *(v34 + 4);
  v35 = (v12 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__options);
  swift_beginAccess();
  v36 = *v35;
  v135 = *(v35 + 4);
  v37 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGftdowngradeToOneToOneAvailable;
  swift_beginAccess();
  if (*(v12 + v37) == 2)
  {
    v38 = 2;
  }

  else
  {
    v38 = 1;
  }

  v39 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__guestModeEnabled;
  swift_beginAccess();
  v40 = *(v12 + v39);
  v41 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusNdowngradeAvailable;
  swift_beginAccess();
  v42 = *(v12 + v41);
  v43 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__avMode;
  result = swift_beginAccess();
  v127 = *(v12 + v43);
  if (v127 > 3)
  {
    __break(1u);
LABEL_27:
    __break(1u);
    return result;
  }

  v111 = v32;
  v113 = v30;
  v44 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsLeaveContext;
  swift_beginAccess();
  v118 = *(v12 + v44);
  v45 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneScreenSharingAvailable;
  swift_beginAccess();
  v117 = *(v12 + v45);
  v46 = (v12 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__personaHandshakeData);
  swift_beginAccess();
  v47 = v46[1];
  v137 = *v46;
  v140 = v47;
  if (v47 >> 60 != 15)
  {
    sub_213FDCA18(v137, v140);
  }

  v119 = v42;
  v120 = v40;
  v121 = v38;
  v122 = v36;
  v48 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isSpatialPersonaEnabled;
  swift_beginAccess();
  v116 = *(v12 + v48);
  v49 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneAvlessAvailable;
  swift_beginAccess();
  v115 = *(v12 + v49);
  v50 = (v12 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionFeatureVersion);
  swift_beginAccess();
  v114 = *v50;
  v134 = *(v50 + 4);
  v51 = (v12 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionCallEstablishmentVersion);
  swift_beginAccess();
  v112 = *v51;
  v133 = *(v51 + 4);
  v52 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneVisionToVisionAvailable;
  swift_beginAccess();
  v110 = *(v12 + v52);
  v53 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsRequestToScreenShare;
  swift_beginAccess();
  v109 = *(v12 + v53);
  v54 = (v12 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__spatialPersonaGenerationCounter);
  swift_beginAccess();
  v108 = *v54;
  v55 = *(v54 + 4);
  v56 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPhotosSharePlayAvailable;
  swift_beginAccess();
  v107 = *(v12 + v56);
  v57 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__presentationMode;
  result = swift_beginAccess();
  v106 = *(v12 + v57);
  if (v106 > 3)
  {
    goto LABEL_27;
  }

  v58 = (v12 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__stableDeviceIdentifier);
  swift_beginAccess();
  v59 = *v58;
  v60 = v58[1];
  v61 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isTranslationAvailable;
  swift_beginAccess();
  v105 = *(v12 + v61);

  sub_213FB2E54(&v224, &v153, &qword_27C905AD0, &unk_214759900);
  sub_213FDCA18(v138, v139);
  v62 = v140;
  sub_213FDCA18(v137, v140);
  sub_214651EB4(&v153);
  *(&v209[9] + 7) = v233;
  *(&v209[10] + 7) = v234;
  *(&v209[11] + 7) = v235[0];
  v209[12] = *(v235 + 9);
  *(&v209[5] + 7) = v229;
  *(&v209[6] + 7) = v230;
  *(&v209[7] + 7) = v231;
  *(&v209[8] + 7) = v232;
  *(&v209[1] + 7) = v225;
  *(&v209[2] + 7) = v226;
  *(&v209[3] + 7) = v227;
  *(&v209[4] + 7) = v228;
  v63 = v153;
  v65 = *v154;
  v64 = *&v154[8];
  LOBYTE(v203[0]) = v129;
  v210[0] = v128;
  *(v209 + 7) = v224;
  v208 = v136;
  v207 = v135;
  v206 = v134;
  v205 = v133;
  v128 = v154[16];
  v129 = v55;
  v204 = v55;
  v100 = LOBYTE(v203[0]);
  v101 = v210[0];
  v203[0] = v59;
  v203[1] = v60;
  v210[0] = v154[16];
  *&v153 = 0xD000000000000032;
  *(&v153 + 1) = 0x800000021478CFE0;
  *v154 = 0xD00000000000001CLL;
  *&v154[8] = 0x800000021478A360;
  v99 = 0x800000021478A360;

  v102 = v65;
  v103 = v64;
  sub_213FDC9D0(v65, v64);
  v66 = v236;
  v104 = v63;
  v67 = (v63)(v203, v210, &v153);
  v236 = v66;
  if (v66)
  {
    sub_213FB2DF4(&v224, &qword_27C905AD0, &unk_214759900);

    v68 = v137;
    sub_213FDC6BC(v137, v62);
  }

  else
  {
    v96 = v59;
    v97 = v60;
    if (v67)
    {
      v69 = v102;
      v70 = v103;
      sub_213FDC6D0(v102, v103);
      sub_213FB2DF4(&v224, &qword_27C905AD0, &unk_214759900);
      v71 = v137;
      v72 = v140;
      sub_213FDC6BC(v137, v140);
      v73 = v138;
      v74 = v139;
      sub_213FDC6BC(v138, v139);

      sub_213FDC6D0(v69, v70);
      result = sub_2145351E4(v132, type metadata accessor for CSDMConversationParticipantProto);
      v75 = v98;
      *v98 = v131;
      *(v75 + 4) = v100;
      *(v75 + 1) = v130;
      *(v75 + 16) = v101;
      *(v75 + 29) = v73;
      *(v75 + 30) = v74;
      v76 = v124;
      *(v75 + 248) = v125;
      *(v75 + 249) = v76;
      *(v75 + 250) = v113;
      *(v75 + 251) = v111;
      *(v75 + 252) = v123;
      v77 = v209[8];
      *(v75 + 161) = v209[9];
      v78 = v209[11];
      *(v75 + 177) = v209[10];
      *(v75 + 193) = v78;
      *(v75 + 209) = v209[12];
      v79 = v209[4];
      *(v75 + 97) = v209[5];
      v80 = v209[7];
      *(v75 + 113) = v209[6];
      *(v75 + 129) = v80;
      *(v75 + 145) = v77;
      v81 = v209[0];
      *(v75 + 33) = v209[1];
      v82 = v209[3];
      *(v75 + 49) = v209[2];
      *(v75 + 65) = v82;
      *(v75 + 81) = v79;
      *(v75 + 17) = v81;
      v75[64] = v126;
      *(v75 + 260) = v136;
      v75[66] = v122;
      *(v75 + 268) = v135;
      v83 = v120;
      *(v75 + 269) = v121;
      *(v75 + 270) = v83;
      *(v75 + 271) = v119;
      *(v75 + 272) = v127;
      v84 = v117;
      *(v75 + 273) = v118;
      *(v75 + 274) = v84;
      *(v75 + 35) = v71;
      *(v75 + 36) = v72;
      v85 = v115;
      *(v75 + 296) = v116;
      *(v75 + 297) = v85;
      v75[75] = v114;
      *(v75 + 304) = v134;
      v75[77] = v112;
      *(v75 + 312) = v133;
      v86 = v109;
      *(v75 + 313) = v110;
      *(v75 + 314) = v86;
      v75[79] = v108;
      *(v75 + 320) = v129;
      v87 = v106;
      *(v75 + 321) = v107;
      *(v75 + 322) = v87;
      *(v75 + 41) = v104;
      *(v75 + 42) = *(&v63 + 1);
      v88 = v97;
      *(v75 + 43) = v96;
      *(v75 + 44) = v88;
      *(v75 + 360) = v128;
      *(v75 + 361) = v105;
      return result;
    }

    sub_214031C4C();
    v89 = swift_allocError();
    *v90 = 0xD000000000000032;
    v90[1] = 0x800000021478CFE0;
    v91 = v99;
    v90[2] = 0xD00000000000001CLL;
    v90[3] = v91;
    v236 = v89;
    swift_willThrow();

    sub_213FB2DF4(&v224, &qword_27C905AD0, &unk_214759900);

    v68 = v137;
    sub_213FDC6BC(v137, v140);
  }

  v92 = v138;
  v93 = v139;
  sub_213FDC6BC(v138, v139);

  v95 = v102;
  v94 = v103;
  sub_213FDC6D0(v102, v103);
  LODWORD(v153) = v131;
  BYTE4(v153) = v100;
  *(&v153 + 1) = v130;
  v154[0] = v101;
  v156 = v92;
  v157 = v93;
  v158 = v125;
  v159 = v124;
  v160 = v113;
  v161 = v111;
  v162 = v123;
  v165 = v126;
  v167 = v217;
  *(&v153 + 5) = v222;
  BYTE7(v153) = v223;
  *v155 = *v221;
  v163 = v219;
  *&v154[145] = v209[9];
  *&v154[161] = v209[10];
  *&v154[177] = v209[11];
  *&v154[193] = v209[12];
  *&v154[81] = v209[5];
  *&v154[97] = v209[6];
  *&v154[113] = v209[7];
  *&v154[129] = v209[8];
  *&v154[17] = v209[1];
  *&v154[33] = v209[2];
  *&v154[49] = v209[3];
  *&v154[65] = v209[4];
  *&v154[1] = v209[0];
  *&v155[3] = *&v221[3];
  v164 = v220;
  v166 = v136;
  v168 = v218;
  v169 = v122;
  v170 = v135;
  v171 = v121;
  v172 = v120;
  v173 = v119;
  v174 = v127;
  v175 = v118;
  v176 = v117;
  v177 = v215;
  v178 = v216;
  v179 = v68;
  v180 = v140;
  v181 = v116;
  v182 = v115;
  v183 = v114;
  v184 = v134;
  v185 = v213;
  v186 = v214;
  v187 = v112;
  v188 = v133;
  v189 = v110;
  v190 = v109;
  v191 = v108;
  v192 = v129;
  v193 = v107;
  v194 = v106;
  v195 = v211;
  v196 = v212;
  v197 = v104;
  v198 = *(&v63 + 1);
  v199 = v95;
  v200 = v94;
  v201 = v128;
  v202 = v105;
  sub_2142E6530(&v153);
  return sub_2145351E4(v132, type metadata accessor for CSDMConversationParticipantProto);
}

void sub_214522200(uint64_t a1, int *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C903788, "Į\r");
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v222 - v5;
  v7 = type metadata accessor for CSDMHandleProto(0);
  v222 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v223 = &v222 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2[1] & 1) == 0)
  {
    v9 = *a2;
    v10 = *(type metadata accessor for CSDMConversationParticipantProto(0) + 20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(a1 + v10);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      type metadata accessor for CSDMConversationParticipantProto._StorageClass(0);
      swift_allocObject();
      v13 = sub_21402DBE4(v12);

      *(a1 + v10) = v13;
      v12 = v13;
    }

    swift_beginAccess();
    *(v12 + 16) = v9;
    *(v12 + 20) = 0;
  }

  if ((a2[4] & 1) == 0)
  {
    v14 = *(a2 + 1);
    v15 = *(type metadata accessor for CSDMConversationParticipantProto(0) + 20);
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(a1 + v15);
    if ((v16 & 1) == 0)
    {
      type metadata accessor for CSDMConversationParticipantProto._StorageClass(0);
      swift_allocObject();
      v18 = sub_21402DBE4(v17);

      *(a1 + v15) = v18;
      v17 = v18;
    }

    swift_beginAccess();
    *(v17 + 24) = v14;
    *(v17 + 32) = 0;
  }

  v19 = *(a2 + 42);
  v20 = *(a2 + 50);
  v237 = *(a2 + 46);
  v238[0] = v20;
  *(v238 + 9) = *(a2 + 209);
  v21 = *(a2 + 26);
  v22 = *(a2 + 34);
  v233 = *(a2 + 30);
  v234 = v22;
  v23 = *(a2 + 38);
  v236 = v19;
  v235 = v23;
  v24 = *(a2 + 10);
  v25 = *(a2 + 18);
  v229 = *(a2 + 14);
  v230 = v25;
  v26 = *(a2 + 22);
  v232 = v21;
  v231 = v26;
  v27 = *(a2 + 6);
  v228 = v24;
  v227 = v27;
  v28 = *(a2 + 42);
  v29 = *(a2 + 50);
  v249 = *(a2 + 46);
  v250[0] = v29;
  *(v250 + 9) = *(a2 + 209);
  v30 = *(a2 + 26);
  v31 = *(a2 + 34);
  v245 = *(a2 + 30);
  v246 = v31;
  v32 = *(a2 + 38);
  v248 = v28;
  v247 = v32;
  v33 = *(a2 + 10);
  v34 = *(a2 + 18);
  v241 = *(a2 + 14);
  v242 = v34;
  v35 = *(a2 + 22);
  v244 = v30;
  v243 = v35;
  v36 = *(a2 + 6);
  v240 = v33;
  v239 = v36;
  enum_tag_for_layout_string_9BlastDoor23CSDMConversationMessageVSg_0 = get_enum_tag_for_layout_string_9BlastDoor23CSDMConversationMessageVSg_0(&v239);
  if (enum_tag_for_layout_string_9BlastDoor23CSDMConversationMessageVSg_0 != 1)
  {
    v250[12] = v249;
    v251[0] = v250[0];
    *(v251 + 9) = *(v250 + 9);
    v250[8] = v245;
    v250[9] = v246;
    v250[11] = v248;
    v250[10] = v247;
    v250[4] = v241;
    v250[5] = v242;
    v250[7] = v244;
    v250[6] = v243;
    v250[3] = v240;
    v250[2] = v239;
    MEMORY[0x28223BE20](enum_tag_for_layout_string_9BlastDoor23CSDMConversationMessageVSg_0);
    v225[10] = v237;
    v226[0] = v238[0];
    *(v226 + 9) = *(v238 + 9);
    v225[6] = v233;
    v225[7] = v234;
    v225[8] = v235;
    v225[9] = v236;
    v225[2] = v229;
    v225[3] = v230;
    v225[4] = v231;
    v225[5] = v232;
    v225[0] = v227;
    v225[1] = v228;
    sub_2142E5FD0(v225, &v224);
    sub_214534FA4(&qword_27C903C20, type metadata accessor for CSDMHandleProto, byte_2146E9208);
    v38 = v252;
    sub_2146D9018();
    v252 = v38;
    v39 = *(type metadata accessor for CSDMConversationParticipantProto(0) + 20);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_213FB2DF4(&v227, &qword_27C905AD0, &unk_214759900);
      v40 = *(a1 + v39);
    }

    else
    {
      type metadata accessor for CSDMConversationParticipantProto._StorageClass(0);
      swift_allocObject();

      v40 = sub_21402DBE4(v41);

      sub_213FB2DF4(&v227, &qword_27C905AD0, &unk_214759900);

      *(a1 + v39) = v40;
    }

    sub_214534FEC(v223, v6, type metadata accessor for CSDMHandleProto);
    (*(v222 + 56))(v6, 0, 1, v7);
    v42 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__handle;
    swift_beginAccess();
    sub_21402EDB8(v6, v40 + v42, &unk_27C903788, "Į\r");
    swift_endAccess();
  }

  v43 = *(a2 + 30);
  if (v43 >> 60 != 15)
  {
    v44 = *(a2 + 29);
    v45 = *(type metadata accessor for CSDMConversationParticipantProto(0) + 20);
    sub_21402D9F8(v44, v43);
    v46 = swift_isUniquelyReferenced_nonNull_native();
    v47 = *(a1 + v45);
    if ((v46 & 1) == 0)
    {
      type metadata accessor for CSDMConversationParticipantProto._StorageClass(0);
      swift_allocObject();
      v48 = sub_21402DBE4(v47);

      *(a1 + v45) = v48;
      v47 = v48;
    }

    v49 = (v47 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__avcData);
    swift_beginAccess();
    v50 = *v49;
    v51 = v49[1];
    *v49 = v44;
    v49[1] = v43;
    sub_213FDC6BC(v50, v51);
  }

  v52 = *(a2 + 248);
  if (v52 != 2)
  {
    v53 = *(type metadata accessor for CSDMConversationParticipantProto(0) + 20);
    v54 = swift_isUniquelyReferenced_nonNull_native();
    v55 = *(a1 + v53);
    if ((v54 & 1) == 0)
    {
      type metadata accessor for CSDMConversationParticipantProto._StorageClass(0);
      swift_allocObject();
      v56 = sub_21402DBE4(v55);

      *(a1 + v53) = v56;
      v55 = v56;
    }

    v57 = v52 & 1;
    v58 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isMomentsAvailable;
    swift_beginAccess();
    *(v55 + v58) = v57;
  }

  v59 = *(a2 + 249);
  if (v59 != 2)
  {
    v60 = *(type metadata accessor for CSDMConversationParticipantProto(0) + 20);
    v61 = swift_isUniquelyReferenced_nonNull_native();
    v62 = *(a1 + v60);
    if ((v61 & 1) == 0)
    {
      type metadata accessor for CSDMConversationParticipantProto._StorageClass(0);
      swift_allocObject();
      v63 = sub_21402DBE4(v62);

      *(a1 + v60) = v63;
      v62 = v63;
    }

    v64 = v59 & 1;
    v65 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isScreenSharingAvailable;
    swift_beginAccess();
    *(v62 + v65) = v64;
  }

  v66 = *(a2 + 250);
  if (v66 != 2)
  {
    v67 = *(type metadata accessor for CSDMConversationParticipantProto(0) + 20);
    v68 = swift_isUniquelyReferenced_nonNull_native();
    v69 = *(a1 + v67);
    if ((v68 & 1) == 0)
    {
      type metadata accessor for CSDMConversationParticipantProto._StorageClass(0);
      swift_allocObject();
      v70 = sub_21402DBE4(v69);

      *(a1 + v67) = v70;
      v69 = v70;
    }

    v71 = v66 & 1;
    v72 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGondolaCallingAvailable;
    swift_beginAccess();
    *(v69 + v72) = v71;
  }

  v73 = *(a2 + 251);
  if (v73 != 2)
  {
    v74 = *(type metadata accessor for CSDMConversationParticipantProto(0) + 20);
    v75 = swift_isUniquelyReferenced_nonNull_native();
    v76 = *(a1 + v74);
    if ((v75 & 1) == 0)
    {
      type metadata accessor for CSDMConversationParticipantProto._StorageClass(0);
      swift_allocObject();
      v77 = sub_21402DBE4(v76);

      *(a1 + v74) = v77;
      v76 = v77;
    }

    v78 = v73 & 1;
    v79 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPersonaAvailable;
    swift_beginAccess();
    *(v76 + v79) = v78;
  }

  v80 = *(a2 + 252);
  if (v80 == 2)
  {
    if (a2[65])
    {
      goto LABEL_36;
    }
  }

  else
  {
    v81 = *(type metadata accessor for CSDMConversationParticipantProto(0) + 20);
    v82 = swift_isUniquelyReferenced_nonNull_native();
    v83 = *(a1 + v81);
    if ((v82 & 1) == 0)
    {
      type metadata accessor for CSDMConversationParticipantProto._StorageClass(0);
      swift_allocObject();
      v84 = sub_21402DBE4(v83);

      *(a1 + v81) = v84;
      v83 = v84;
    }

    v85 = v80 & 1;
    v86 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isLightweight;
    swift_beginAccess();
    *(v83 + v86) = v85;
    if (a2[65])
    {
LABEL_36:
      if (a2[67])
      {
        goto LABEL_47;
      }

      goto LABEL_44;
    }
  }

  v87 = a2[64];
  v88 = *(type metadata accessor for CSDMConversationParticipantProto(0) + 20);
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v90 = *(a1 + v88);
  if ((v89 & 1) == 0)
  {
    type metadata accessor for CSDMConversationParticipantProto._StorageClass(0);
    swift_allocObject();
    v91 = sub_21402DBE4(v90);

    *(a1 + v88) = v91;
    v90 = v91;
  }

  v92 = v90 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__sharePlayProtocolVersion;
  swift_beginAccess();
  *v92 = v87;
  *(v92 + 4) = 0;
  if ((a2[67] & 1) == 0)
  {
LABEL_44:
    v93 = a2[66];
    v94 = *(type metadata accessor for CSDMConversationParticipantProto(0) + 20);
    v95 = swift_isUniquelyReferenced_nonNull_native();
    v96 = *(a1 + v94);
    if ((v95 & 1) == 0)
    {
      type metadata accessor for CSDMConversationParticipantProto._StorageClass(0);
      swift_allocObject();
      v97 = sub_21402DBE4(v96);

      *(a1 + v94) = v97;
      v96 = v97;
    }

    v98 = v96 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__options;
    swift_beginAccess();
    *v98 = v93;
    *(v98 + 4) = 0;
  }

LABEL_47:
  v99 = *(a2 + 269);
  if (v99 != 2)
  {
    v100 = *(type metadata accessor for CSDMConversationParticipantProto(0) + 20);
    v101 = swift_isUniquelyReferenced_nonNull_native();
    v102 = *(a1 + v100);
    if ((v101 & 1) == 0)
    {
      type metadata accessor for CSDMConversationParticipantProto._StorageClass(0);
      swift_allocObject();
      v103 = sub_21402DBE4(v102);

      *(a1 + v100) = v103;
      v102 = v103;
    }

    v104 = v99 & 1;
    v105 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGftdowngradeToOneToOneAvailable;
    swift_beginAccess();
    *(v102 + v105) = v104;
  }

  v106 = *(a2 + 270);
  if (v106 != 2)
  {
    v107 = *(type metadata accessor for CSDMConversationParticipantProto(0) + 20);
    v108 = swift_isUniquelyReferenced_nonNull_native();
    v109 = *(a1 + v107);
    if ((v108 & 1) == 0)
    {
      type metadata accessor for CSDMConversationParticipantProto._StorageClass(0);
      swift_allocObject();
      v110 = sub_21402DBE4(v109);

      *(a1 + v107) = v110;
      v109 = v110;
    }

    v111 = v106 & 1;
    v112 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__guestModeEnabled;
    swift_beginAccess();
    *(v109 + v112) = v111;
  }

  v113 = *(a2 + 271);
  if (v113 != 2)
  {
    v114 = *(type metadata accessor for CSDMConversationParticipantProto(0) + 20);
    v115 = swift_isUniquelyReferenced_nonNull_native();
    v116 = *(a1 + v114);
    if ((v115 & 1) == 0)
    {
      type metadata accessor for CSDMConversationParticipantProto._StorageClass(0);
      swift_allocObject();
      v117 = sub_21402DBE4(v116);

      *(a1 + v114) = v117;
      v116 = v117;
    }

    v118 = v113 & 1;
    v119 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusNdowngradeAvailable;
    swift_beginAccess();
    *(v116 + v119) = v118;
  }

  v120 = *(a2 + 272);
  if (v120 >= 3)
  {
    if (v120 != 3)
    {
      __break(1u);
      goto LABEL_125;
    }
  }

  else
  {
    v121 = *(type metadata accessor for CSDMConversationParticipantProto(0) + 20);
    v122 = swift_isUniquelyReferenced_nonNull_native();
    v123 = *(a1 + v121);
    if ((v122 & 1) == 0)
    {
      type metadata accessor for CSDMConversationParticipantProto._StorageClass(0);
      swift_allocObject();
      v124 = sub_21402DBE4(v123);

      *(a1 + v121) = v124;
      v123 = v124;
    }

    v125 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__avMode;
    swift_beginAccess();
    *(v123 + v125) = v120;
  }

  v126 = *(a2 + 273);
  if (v126 != 2)
  {
    v127 = *(type metadata accessor for CSDMConversationParticipantProto(0) + 20);
    v128 = swift_isUniquelyReferenced_nonNull_native();
    v129 = *(a1 + v127);
    if ((v128 & 1) == 0)
    {
      type metadata accessor for CSDMConversationParticipantProto._StorageClass(0);
      swift_allocObject();
      v130 = sub_21402DBE4(v129);

      *(a1 + v127) = v130;
      v129 = v130;
    }

    v131 = v126 & 1;
    v132 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsLeaveContext;
    swift_beginAccess();
    *(v129 + v132) = v131;
  }

  v133 = *(a2 + 274);
  if (v133 != 2)
  {
    v134 = *(type metadata accessor for CSDMConversationParticipantProto(0) + 20);
    v135 = swift_isUniquelyReferenced_nonNull_native();
    v136 = *(a1 + v134);
    if ((v135 & 1) == 0)
    {
      type metadata accessor for CSDMConversationParticipantProto._StorageClass(0);
      swift_allocObject();
      v137 = sub_21402DBE4(v136);

      *(a1 + v134) = v137;
      v136 = v137;
    }

    v138 = v133 & 1;
    v139 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneScreenSharingAvailable;
    swift_beginAccess();
    *(v136 + v139) = v138;
  }

  v140 = *(a2 + 36);
  if (v140 >> 60 != 15)
  {
    v141 = *(a2 + 35);
    v142 = *(type metadata accessor for CSDMConversationParticipantProto(0) + 20);
    sub_21402D9F8(v141, v140);
    v143 = swift_isUniquelyReferenced_nonNull_native();
    v144 = *(a1 + v142);
    if ((v143 & 1) == 0)
    {
      type metadata accessor for CSDMConversationParticipantProto._StorageClass(0);
      swift_allocObject();
      v145 = sub_21402DBE4(v144);

      *(a1 + v142) = v145;
      v144 = v145;
    }

    v146 = (v144 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__personaHandshakeData);
    swift_beginAccess();
    v147 = *v146;
    v148 = v146[1];
    *v146 = v141;
    v146[1] = v140;
    sub_213FDC6BC(v147, v148);
  }

  v149 = *(a2 + 296);
  if (v149 != 2)
  {
    v150 = *(type metadata accessor for CSDMConversationParticipantProto(0) + 20);
    v151 = swift_isUniquelyReferenced_nonNull_native();
    v152 = *(a1 + v150);
    if ((v151 & 1) == 0)
    {
      type metadata accessor for CSDMConversationParticipantProto._StorageClass(0);
      swift_allocObject();
      v153 = sub_21402DBE4(v152);

      *(a1 + v150) = v153;
      v152 = v153;
    }

    v154 = v149 & 1;
    v155 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isSpatialPersonaEnabled;
    swift_beginAccess();
    *(v152 + v155) = v154;
  }

  v156 = *(a2 + 297);
  if (v156 == 2)
  {
    if (a2[76])
    {
      goto LABEL_83;
    }
  }

  else
  {
    v157 = *(type metadata accessor for CSDMConversationParticipantProto(0) + 20);
    v158 = swift_isUniquelyReferenced_nonNull_native();
    v159 = *(a1 + v157);
    if ((v158 & 1) == 0)
    {
      type metadata accessor for CSDMConversationParticipantProto._StorageClass(0);
      swift_allocObject();
      v160 = sub_21402DBE4(v159);

      *(a1 + v157) = v160;
      v159 = v160;
    }

    v161 = v156 & 1;
    v162 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneAvlessAvailable;
    swift_beginAccess();
    *(v159 + v162) = v161;
    if (a2[76])
    {
LABEL_83:
      if (a2[78])
      {
        goto LABEL_94;
      }

      goto LABEL_91;
    }
  }

  v163 = a2[75];
  v164 = *(type metadata accessor for CSDMConversationParticipantProto(0) + 20);
  v165 = swift_isUniquelyReferenced_nonNull_native();
  v166 = *(a1 + v164);
  if ((v165 & 1) == 0)
  {
    type metadata accessor for CSDMConversationParticipantProto._StorageClass(0);
    swift_allocObject();
    v167 = sub_21402DBE4(v166);

    *(a1 + v164) = v167;
    v166 = v167;
  }

  v168 = v166 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionFeatureVersion;
  swift_beginAccess();
  *v168 = v163;
  *(v168 + 4) = 0;
  if ((a2[78] & 1) == 0)
  {
LABEL_91:
    v169 = a2[77];
    v170 = *(type metadata accessor for CSDMConversationParticipantProto(0) + 20);
    v171 = swift_isUniquelyReferenced_nonNull_native();
    v172 = *(a1 + v170);
    if ((v171 & 1) == 0)
    {
      type metadata accessor for CSDMConversationParticipantProto._StorageClass(0);
      swift_allocObject();
      v173 = sub_21402DBE4(v172);

      *(a1 + v170) = v173;
      v172 = v173;
    }

    v174 = v172 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionCallEstablishmentVersion;
    swift_beginAccess();
    *v174 = v169;
    *(v174 + 4) = 0;
  }

LABEL_94:
  v175 = *(a2 + 313);
  if (v175 != 2)
  {
    v176 = *(type metadata accessor for CSDMConversationParticipantProto(0) + 20);
    v177 = swift_isUniquelyReferenced_nonNull_native();
    v178 = *(a1 + v176);
    if ((v177 & 1) == 0)
    {
      type metadata accessor for CSDMConversationParticipantProto._StorageClass(0);
      swift_allocObject();
      v179 = sub_21402DBE4(v178);

      *(a1 + v176) = v179;
      v178 = v179;
    }

    v180 = v175 & 1;
    v181 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneVisionToVisionAvailable;
    swift_beginAccess();
    *(v178 + v181) = v180;
  }

  v182 = *(a2 + 314);
  if (v182 != 2)
  {
    v183 = *(type metadata accessor for CSDMConversationParticipantProto(0) + 20);
    v184 = swift_isUniquelyReferenced_nonNull_native();
    v185 = *(a1 + v183);
    if ((v184 & 1) == 0)
    {
      type metadata accessor for CSDMConversationParticipantProto._StorageClass(0);
      swift_allocObject();
      v186 = sub_21402DBE4(v185);

      *(a1 + v183) = v186;
      v185 = v186;
    }

    v187 = v182 & 1;
    v188 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsRequestToScreenShare;
    swift_beginAccess();
    *(v185 + v188) = v187;
  }

  if ((a2[80] & 1) == 0)
  {
    v189 = a2[79];
    v190 = *(type metadata accessor for CSDMConversationParticipantProto(0) + 20);
    v191 = swift_isUniquelyReferenced_nonNull_native();
    v192 = *(a1 + v190);
    if ((v191 & 1) == 0)
    {
      type metadata accessor for CSDMConversationParticipantProto._StorageClass(0);
      swift_allocObject();
      v193 = sub_21402DBE4(v192);

      *(a1 + v190) = v193;
      v192 = v193;
    }

    v194 = v192 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__spatialPersonaGenerationCounter;
    swift_beginAccess();
    *v194 = v189;
    *(v194 + 4) = 0;
  }

  v195 = *(a2 + 321);
  if (v195 != 2)
  {
    v196 = *(type metadata accessor for CSDMConversationParticipantProto(0) + 20);
    v197 = swift_isUniquelyReferenced_nonNull_native();
    v198 = *(a1 + v196);
    if ((v197 & 1) == 0)
    {
      type metadata accessor for CSDMConversationParticipantProto._StorageClass(0);
      swift_allocObject();
      v199 = sub_21402DBE4(v198);

      *(a1 + v196) = v199;
      v198 = v199;
    }

    v200 = v195 & 1;
    v201 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPhotosSharePlayAvailable;
    swift_beginAccess();
    *(v198 + v201) = v200;
  }

  v202 = *(a2 + 322);
  if (v202 >= 3)
  {
    if (v202 == 3)
    {
      goto LABEL_115;
    }

LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  v203 = *(type metadata accessor for CSDMConversationParticipantProto(0) + 20);
  v204 = swift_isUniquelyReferenced_nonNull_native();
  v205 = *(a1 + v203);
  if ((v204 & 1) == 0)
  {
    type metadata accessor for CSDMConversationParticipantProto._StorageClass(0);
    swift_allocObject();
    v206 = sub_21402DBE4(v205);

    *(a1 + v203) = v206;
    v205 = v206;
  }

  v207 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__presentationMode;
  swift_beginAccess();
  *(v205 + v207) = v202;
LABEL_115:
  v208 = *(a2 + 44);
  if (v208)
  {
    if (v208 != 1)
    {
      v209 = *(a2 + 43);
      v210 = *(type metadata accessor for CSDMConversationParticipantProto(0) + 20);

      v211 = swift_isUniquelyReferenced_nonNull_native();
      v212 = *(a1 + v210);
      if ((v211 & 1) == 0)
      {
        type metadata accessor for CSDMConversationParticipantProto._StorageClass(0);
        swift_allocObject();
        v213 = sub_21402DBE4(v212);

        *(a1 + v210) = v213;
        v212 = v213;
      }

      v214 = (v212 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__stableDeviceIdentifier);
      swift_beginAccess();
      *v214 = v209;
      v214[1] = v208;

      goto LABEL_120;
    }

LABEL_126:
    sub_2146DA018();
    __break(1u);
    return;
  }

LABEL_120:
  v215 = *(a2 + 361);
  if (v215 != 2)
  {
    v216 = *(type metadata accessor for CSDMConversationParticipantProto(0) + 20);
    v217 = swift_isUniquelyReferenced_nonNull_native();
    v218 = *(a1 + v216);
    if ((v217 & 1) == 0)
    {
      type metadata accessor for CSDMConversationParticipantProto._StorageClass(0);
      swift_allocObject();
      v219 = sub_21402DBE4(v218);

      *(a1 + v216) = v219;
      v218 = v219;
    }

    v220 = v215 & 1;
    v221 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isTranslationAvailable;
    swift_beginAccess();
    *(v218 + v221) = v220;
  }
}

void sub_214523558(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == 1)
    {
      goto LABEL_10;
    }

    v5 = *(a2 + 16);
    v6 = (a1 + *(type metadata accessor for CSDMConversationActivitySceneAssociationBehaviorProto(0) + 20));

    *v6 = v5;
    v6[1] = v4;
  }

  v7 = *(a2 + 33);
  if (v7 != 2)
  {
    *(a1 + *(type metadata accessor for CSDMConversationActivitySceneAssociationBehaviorProto(0) + 24)) = v7;
  }

  v8 = *(a2 + 64);
  if (v8)
  {
    if (v8 != 1)
    {
      v9 = *(a2 + 56);
      v10 = (a1 + *(type metadata accessor for CSDMConversationActivitySceneAssociationBehaviorProto(0) + 28));

      *v10 = v9;
      v10[1] = v8;
      return;
    }

LABEL_10:
    sub_2146DA018();
    __break(1u);
  }
}

double sub_21452366C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v90 = type metadata accessor for CSDMConversationActivitySceneAssociationBehaviorProto(0);
  v3 = *(v90 - 1);
  MEMORY[0x28223BE20](v90);
  v93 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9036F0, "а\r");
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v85 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v74 - v8;
  v10 = type metadata accessor for CSDMConversationActivityMetadataProto(0);
  v11 = v10[6];
  v12 = (a1 + v10[5]);
  v14 = *v12;
  v13 = v12[1];
  v86 = v14;
  v98 = v13;
  v87 = *(a1 + v11);
  v15 = v10[8];
  v16 = (a1 + v10[7]);
  v18 = *v16;
  v17 = v16[1];
  v89 = v18;
  v133 = v17;
  v19 = *(a1 + v15 + 8);
  v75 = *(a1 + v15);
  v97 = v19;
  v20 = (a1 + v10[9]);
  v22 = *v20;
  v21 = v20[1];
  if (v21 >> 60 != 15)
  {
    sub_213FDCA18(v22, v21);
  }

  v95 = v22;
  v96 = v21;
  v23 = v10[11];
  v24 = (a1 + v10[10]);
  v88 = *v24;
  v91 = *(v24 + 4);
  sub_213FB2E54(a1 + v23, v9, &unk_27C9036F0, "а\r");
  v25 = a1;
  v26 = *(v3 + 48);
  v27 = v90;
  v28 = v26(v9, 1, v90);

  sub_213FB2DF4(v9, &unk_27C9036F0, "а\r");
  v94 = v25;
  if (v28 == 1)
  {
    v131 = 0u;
    memset(v132, 0, 25);
    v129 = 0u;
    v130 = 0u;
  }

  else
  {
    v29 = v85;
    sub_213FB2E54(v25 + v23, v85, &unk_27C9036F0, "а\r");
    if (v26(v29, 1, v27) == 1)
    {
      v30 = v93;
      sub_2146D8DE8();
      v31 = (v30 + v27[5]);
      *v31 = 0;
      v31[1] = 0;
      *(v30 + v27[6]) = 2;
      v32 = (v30 + v27[7]);
      *v32 = 0;
      v32[1] = 0;
      if (v26(v29, 1, v27) != 1)
      {
        sub_213FB2DF4(v29, &unk_27C9036F0, "а\r");
      }
    }

    else
    {
      sub_214534FEC(v29, v93, type metadata accessor for CSDMConversationActivitySceneAssociationBehaviorProto);
    }

    v33 = (v93 + v27[5]);
    v34 = *v33;
    v35 = v33[1];
    v36 = v93 + v27[7];
    v37 = *v36;
    v38 = *(v36 + 8);
    v39 = *(v93 + v27[6]);

    v40 = v34;
    v41 = v92;
    sub_2140E176C(v40, v35, v39, v37, v38, &v99);
    if (v41)
    {
      sub_2145351E4(v93, type metadata accessor for CSDMConversationActivitySceneAssociationBehaviorProto);
      sub_2145351E4(v94, type metadata accessor for CSDMConversationActivityMetadataProto);
      sub_213FDC6BC(v95, v96);

      return result;
    }

    v92 = 0;
    sub_2145351E4(v93, type metadata accessor for CSDMConversationActivitySceneAssociationBehaviorProto);
    v131 = v101;
    v132[0] = v102[0];
    *(v132 + 9) = *(v102 + 9);
    v129 = v99;
    v130 = v100;
  }

  v43 = *(v94 + v10[12]);
  v44 = (v94 + v10[13]);
  v79 = *v44;
  v80 = v43;
  v45 = *(v44 + 4);
  sub_213FB2E54(&v129, &v99, &qword_27C905BB0, &qword_2146F3FF0);
  sub_213FDCA18(v95, v96);
  sub_214652544(&v99);
  v46 = v99;
  v47 = v100;
  v48 = v101;
  sub_214652690(&v118);
  *&v124[19] = v130;
  *&v124[35] = v131;
  *&v124[51] = v132[0];
  *&v124[60] = *(v132 + 9);
  v82 = v118;
  v90 = v120;
  v84 = v121;
  v85 = v119;
  v83 = v122;
  *&v124[3] = v129;
  v81 = v45;
  v123 = v45;
  v118 = v89;
  v119 = v133;
  v78 = v48;
  v125[0] = v48;
  *&v99 = 0xD000000000000026;
  *(&v99 + 1) = 0x800000021478D0C0;
  *&v100 = 0xD00000000000001CLL;
  *(&v100 + 1) = 0x800000021478A360;
  v93 = 0x800000021478A360;

  v76 = *(&v47 + 1);
  v77 = v47;
  sub_213FDC9D0(v47, *(&v47 + 1));
  v49 = v92;
  v92 = v46;
  v50 = (v46)(&v118, v125, &v99);
  if (v49)
  {
    sub_213FB2DF4(&v129, &qword_27C905BB0, &qword_2146F3FF0);
LABEL_17:

    v60 = v95;
    v59 = v96;
    sub_213FDC6BC(v95, v96);
    v54 = *(&v46 + 1);

    v62 = v76;
    v61 = v77;
    v63 = v77;
    v64 = v76;
LABEL_18:
    sub_213FDC6D0(v63, v64);
    v111 = *v124;
    *&v114[12] = *&v124[60];
    *v114 = *&v124[48];
    v113 = *&v124[32];
    *&v99 = v86;
    *(&v99 + 1) = v98;
    LOBYTE(v100) = v87;
    *(&v100 + 1) = *v128;
    DWORD1(v100) = *&v128[3];
    *(&v100 + 1) = v92;
    *&v101 = v54;
    *(&v101 + 1) = v61;
    *&v102[0] = v62;
    BYTE8(v102[0]) = v78;
    *(v102 + 9) = *v127;
    HIDWORD(v102[0]) = *&v127[3];
    *&v102[1] = v82;
    *(&v102[1] + 1) = v85;
    v103 = v90;
    v104 = v84;
    v105 = v83;
    *&v106[3] = *(v126 + 3);
    *v106 = v126[0];
    v107 = v60;
    v108 = v59;
    v109 = v88;
    v110 = v91;
    v112 = *&v124[16];
    v115 = v80;
    v116 = v79;
    v117 = v81;
    sub_2142E6A98(&v99);
    sub_2145351E4(v94, type metadata accessor for CSDMConversationActivityMetadataProto);
    return result;
  }

  if ((v50 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v57 = 0xD000000000000026;
    v57[1] = 0x800000021478D0C0;
    v58 = v93;
    v57[2] = 0xD00000000000001CLL;
    v57[3] = v58;
    swift_willThrow();

    sub_213FB2DF4(&v129, &qword_27C905BB0, &qword_2146F3FF0);
    goto LABEL_17;
  }

  v52 = v76;
  v51 = v77;
  sub_213FDC6D0(v77, v76);
  v53 = v93;

  v54 = *(&v46 + 1);

  sub_213FDC6D0(v51, v52);
  v55 = v97;
  v118 = v75;
  v119 = v97;
  v125[0] = v83;
  *&v99 = 0xD000000000000029;
  *(&v99 + 1) = 0x800000021478D0F0;
  *&v100 = 0xD00000000000001CLL;
  *(&v100 + 1) = v53;

  sub_213FDC9D0(v90, v84);
  v56 = v82(&v118, v125, &v99);
  v62 = v133;
  v61 = v89;
  if ((v56 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v72 = 0xD000000000000029;
    v72[1] = 0x800000021478D0F0;
    v73 = v93;
    v72[2] = 0xD00000000000001CLL;
    v72[3] = v73;
    swift_willThrow();

    sub_213FB2DF4(&v129, &qword_27C905BB0, &qword_2146F3FF0);

    v60 = v95;
    v59 = v96;
    sub_213FDC6BC(v95, v96);

    v63 = v90;
    v64 = v84;
    goto LABEL_18;
  }

  v65 = v84;
  sub_213FDC6D0(v90, v84);
  sub_213FB2DF4(&v129, &qword_27C905BB0, &qword_2146F3FF0);
  sub_213FDC6BC(v95, v96);
  v66 = v85;

  sub_213FDC6D0(v90, v65);
  sub_2145351E4(v94, type metadata accessor for CSDMConversationActivityMetadataProto);
  v67 = v74;
  *(v74 + 185) = *&v124[60];
  v68 = *&v124[32];
  *(v67 + 173) = *&v124[48];
  *(v67 + 157) = v68;
  v69 = *v124;
  result = *&v124[16];
  *(v67 + 141) = *&v124[16];
  v70 = v98;
  *v67 = v86;
  *(v67 + 8) = v70;
  *(v67 + 16) = v87;
  *(v67 + 24) = v92;
  *(v67 + 32) = *(&v46 + 1);
  *(v67 + 40) = v61;
  *(v67 + 48) = v62;
  *(v67 + 56) = v78;
  *(v67 + 64) = v82;
  *(v67 + 72) = v66;
  *(v67 + 80) = v75;
  *(v67 + 88) = v55;
  *(v67 + 96) = v83;
  v71 = v96;
  *(v67 + 104) = v95;
  *(v67 + 112) = v71;
  *(v67 + 120) = v88;
  *(v67 + 124) = v91;
  *(v67 + 125) = v69;
  LODWORD(v71) = v79;
  *(v67 + 201) = v80;
  *(v67 + 204) = v71;
  *(v67 + 208) = v81;
  return result;
}

void sub_214524048(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for CSDMConversationActivitySceneAssociationBehaviorProto(0);
  v48 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v36 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2[1];
  if (v7)
  {
    v8 = *a2;
    v9 = (a1 + *(type metadata accessor for CSDMConversationActivityMetadataProto(0) + 20));

    *v9 = v8;
    v9[1] = v7;
  }

  v10 = *(a2 + 16);
  if (v10 != 2)
  {
    v5 = type metadata accessor for CSDMConversationActivityMetadataProto(0);
    *(a1 + *(v5 + 24)) = v10;
  }

  v11 = a2[6];
  if (v11)
  {
    if (v11 == 1)
    {
      goto LABEL_22;
    }

    v12 = a2[5];
    v13 = (a1 + *(type metadata accessor for CSDMConversationActivityMetadataProto(0) + 28));

    *v13 = v12;
    v13[1] = v11;
  }

  v14 = a2[11];
  if (v14)
  {
    if (v14 != 1)
    {
      v15 = a2[10];
      v16 = (a1 + *(type metadata accessor for CSDMConversationActivityMetadataProto(0) + 32));

      *v16 = v15;
      v16[1] = v14;
      goto LABEL_11;
    }

LABEL_22:
    sub_2146DA018();
    __break(1u);
    return;
  }

LABEL_11:
  v17 = a2[14];
  if (v17 >> 60 != 15)
  {
    v18 = a2[13];
    v19 = (a1 + *(type metadata accessor for CSDMConversationActivityMetadataProto(0) + 36));
    v35 = a1;
    v21 = *v19;
    v20 = v19[1];
    sub_21402D9F8(v18, v17);
    a1 = v35;
    v5 = sub_213FDC6BC(v21, v20);
    *v19 = v18;
    v19[1] = v17;
  }

  v22 = *(a2 + 124);
  if ((v22 & 1) == 0)
  {
    v23 = *(a2 + 30);
    v5 = type metadata accessor for CSDMConversationActivityMetadataProto(0);
    v24 = a1 + *(v5 + 40);
    *v24 = v23;
    *(v24 + 4) = v22;
  }

  v25 = *(a2 + 9);
  v40[0] = *(a2 + 8);
  v40[1] = v25;
  v26 = *(a2 + 11);
  v40[2] = *(a2 + 10);
  v41[0] = v26;
  *(v41 + 9) = *(a2 + 185);
  if (*&v40[0])
  {
    v42 = *&v40[0];
    v44 = *(a2 + 19);
    v45 = *(a2 + 21);
    v46 = *(a2 + 23);
    v47 = *(a2 + 200);
    v43 = *(a2 + 17);
    MEMORY[0x28223BE20](v5);
    v27 = *(a2 + 11);
    v38[2] = *(a2 + 10);
    v39[0] = v27;
    *(v39 + 9) = *(a2 + 185);
    v28 = *(a2 + 9);
    v38[0] = *(a2 + 8);
    v38[1] = v28;
    sub_2142E6A3C(v38, &v37);
    sub_214534FA4(&qword_27C903B40, type metadata accessor for CSDMConversationActivitySceneAssociationBehaviorProto, aAr_0);
    v29 = v36;
    sub_2146D9018();
    sub_213FB2DF4(v40, &qword_27C905BB0, &qword_2146F3FF0);
    v30 = *(type metadata accessor for CSDMConversationActivityMetadataProto(0) + 44);
    sub_213FB2DF4(a1 + v30, &unk_27C9036F0, "а\r");
    sub_214534FEC(v29, a1 + v30, type metadata accessor for CSDMConversationActivitySceneAssociationBehaviorProto);
    (*(v48 + 56))(a1 + v30, 0, 1, v4);
  }

  v31 = *(a2 + 201);
  if (v31 != 2)
  {
    *(a1 + *(type metadata accessor for CSDMConversationActivityMetadataProto(0) + 48)) = v31;
  }

  v32 = *(a2 + 208);
  if ((v32 & 1) == 0)
  {
    v33 = *(a2 + 51);
    v34 = a1 + *(type metadata accessor for CSDMConversationActivityMetadataProto(0) + 52);
    *v34 = v33;
    *(v34 + 4) = v32;
  }
}