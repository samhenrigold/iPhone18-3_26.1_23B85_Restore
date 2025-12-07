uint64_t sub_26C443720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v19 = a3;
  v18 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = type metadata accessor for LamportTimestamp(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SetCatchupData(0);
  v17 = v5;
  sub_26C3DDD48(v5 + *(v16 + 36), v8, &qword_280497468, &unk_26C46D400);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_26C3DE270(v8, &qword_280497468, &unk_26C46D400);
  }

  else
  {
    sub_26C453E5C(v8, v12, type metadata accessor for LamportTimestamp);
    sub_26C4468DC(&qword_280497A90, type metadata accessor for LamportTimestamp, &unk_26C4708A4);
    sub_26C46BF34();
    result = sub_26C453DFC(v12, type metadata accessor for LamportTimestamp);
    if (v4)
    {
      return result;
    }
  }

  v14 = v17;
  if (!*(*v17 + 16) || (type metadata accessor for ValueData(0), sub_26C4468DC(&qword_280497DE0, type metadata accessor for ValueData, &unk_26C46EC84), result = sub_26C46BF14(), !v4))
  {
    if (!*(v14[1] + 16) || (sub_26C4468DC(&qword_280497A90, type metadata accessor for LamportTimestamp, &unk_26C4708A4), result = sub_26C46BF14(), !v4))
    {
      if (!*(v14[2] + 16) || (type metadata accessor for ValueData(0), sub_26C4468DC(&qword_280497DE0, type metadata accessor for ValueData, &unk_26C46EC84), result = sub_26C46BF14(), !v4))
      {
        if (!*(v14[3] + 16))
        {
          return sub_26C46BD04();
        }

        sub_26C4468DC(&qword_280497A90, type metadata accessor for LamportTimestamp, &unk_26C4708A4);
        result = sub_26C46BF14();
        if (!v4)
        {
          return sub_26C46BD04();
        }
      }
    }
  }

  return result;
}

uint64_t sub_26C443B48@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 1) = v4;
  *(a2 + 2) = v4;
  *(a2 + 3) = v4;
  sub_26C46BD14();
  v5 = *(a1 + 36);
  v6 = type metadata accessor for LamportTimestamp(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t sub_26C443BFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_26C46BD24();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_26C443C70(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_26C46BD24();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_26C443D14(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C4468DC(&qword_2804981B0, type metadata accessor for SetCatchupData, &unk_26C46F1EC);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26C443DB4(uint64_t a1)
{
  v2 = sub_26C4468DC(&qword_280497950, type metadata accessor for SetCatchupData, &unk_26C46F224);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26C443E20(uint64_t a1, uint64_t a2)
{
  sub_26C4468DC(&qword_280497950, type metadata accessor for SetCatchupData, &unk_26C46F224);

  return sub_26C46BE84();
}

uint64_t sub_26C443EA0()
{
  v0 = sub_26C46BF74();
  __swift_allocate_value_buffer(v0, qword_280498850);
  __swift_project_value_buffer(v0, qword_280498850);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498098, &qword_26C470BC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980A0, &qword_26C470BC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C46E660;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "modelUUIDPB";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26C46BF44();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "ownerUUIDPB";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "ownershipCounter";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "propertyDataPB";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "ownershipUUIDsToAccountIdentifiersPB";
  *(v15 + 8) = 36;
  *(v15 + 16) = 2;
  v9();
  return sub_26C46BF54();
}

uint64_t sub_26C444134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_26C46BD84();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result == 1)
        {
          sub_26C444304(a1, v5, a2, a3, type metadata accessor for ModelData);
        }

        else if (result == 2)
        {
          sub_26C4443BC(a1, v5, a2, a3, type metadata accessor for ModelData);
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            sub_26C46BE04();
            goto LABEL_5;
          case 4:
            v11 = v4;
            type metadata accessor for ModelData.PropertyDataMap(0);
            sub_26C4468DC(&qword_280497E20, type metadata accessor for ModelData.PropertyDataMap, &unk_26C46EF54);
            break;
          case 5:
            v11 = v4;
            type metadata accessor for ModelData.OwnershipUUIDToAccountIdentifier(0);
            sub_26C4468DC(&qword_280497E00, type metadata accessor for ModelData.OwnershipUUIDToAccountIdentifier, &unk_26C46EDEC);
            break;
          default:
            goto LABEL_5;
        }

        v4 = v11;
        sub_26C46BE14();
      }

LABEL_5:
      result = sub_26C46BD84();
    }
  }

  return result;
}

uint64_t sub_26C444304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  a5(0);
  type metadata accessor for PBUUID(0);
  sub_26C4468DC(&qword_280498050, type metadata accessor for PBUUID, &unk_26C470A0C);
  return sub_26C46BE34();
}

uint64_t sub_26C4443BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  a5(0);
  type metadata accessor for PBUUID(0);
  sub_26C4468DC(&qword_280498050, type metadata accessor for PBUUID, &unk_26C470A0C);
  return sub_26C46BE34();
}

uint64_t sub_26C444474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v27 = a2;
  v28 = a3;
  v26 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - v10;
  v12 = type metadata accessor for PBUUID(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v24 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v23 - v16;
  v25 = type metadata accessor for ModelData(0);
  v18 = *(v25 + 32);
  v29 = v5;
  sub_26C3DDD48(v5 + v18, v11, &qword_280497458, &unk_26C46D3F0);
  v19 = *(v13 + 48);
  if (v19(v11, 1, v12) == 1)
  {
    sub_26C3DE270(v11, &qword_280497458, &unk_26C46D3F0);
  }

  else
  {
    sub_26C453E5C(v11, v17, type metadata accessor for PBUUID);
    sub_26C4468DC(&qword_280498050, type metadata accessor for PBUUID, &unk_26C470A0C);
    sub_26C46BF34();
    result = sub_26C453DFC(v17, type metadata accessor for PBUUID);
    if (v4)
    {
      return result;
    }
  }

  sub_26C3DDD48(v29 + *(v25 + 36), v9, &qword_280497458, &unk_26C46D3F0);
  if (v19(v9, 1, v12) == 1)
  {
    sub_26C3DE270(v9, &qword_280497458, &unk_26C46D3F0);
  }

  else
  {
    v21 = v9;
    v22 = v24;
    sub_26C453E5C(v21, v24, type metadata accessor for PBUUID);
    sub_26C4468DC(&qword_280498050, type metadata accessor for PBUUID, &unk_26C470A0C);
    sub_26C46BF34();
    result = sub_26C453DFC(v22, type metadata accessor for PBUUID);
    if (v4)
    {
      return result;
    }
  }

  if (!*v29 || (result = sub_26C46BF04(), !v4))
  {
    if (!*(*(v29 + 8) + 16) || (type metadata accessor for ModelData.PropertyDataMap(0), sub_26C4468DC(&qword_280497E20, type metadata accessor for ModelData.PropertyDataMap, &unk_26C46EF54), result = sub_26C46BF14(), !v4))
    {
      if (!*(*(v29 + 16) + 16))
      {
        return sub_26C46BD04();
      }

      type metadata accessor for ModelData.OwnershipUUIDToAccountIdentifier(0);
      sub_26C4468DC(&qword_280497E00, type metadata accessor for ModelData.OwnershipUUIDToAccountIdentifier, &unk_26C46EDEC);
      result = sub_26C46BF14();
      if (!v4)
      {
        return sub_26C46BD04();
      }
    }
  }

  return result;
}

uint64_t sub_26C44494C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  v4 = MEMORY[0x277D84F90];
  *(a2 + 8) = MEMORY[0x277D84F90];
  *(a2 + 16) = v4;
  sub_26C46BD14();
  v5 = *(a1 + 32);
  v6 = type metadata accessor for PBUUID(0);
  v9 = *(*(v6 - 8) + 56);
  (v9)((v6 - 8), a2 + v5, 1, 1, v6);
  v7 = a2 + *(a1 + 36);

  return v9(v7, 1, 1, v6);
}

uint64_t sub_26C444A38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_26C46BD24();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_26C444AAC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_26C46BD24();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_26C444B50(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C4468DC(&qword_2804981B8, type metadata accessor for ModelData, &unk_26C46F084);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26C444BF0(uint64_t a1)
{
  v2 = sub_26C4468DC(&qword_280497648, type metadata accessor for ModelData, &unk_26C46F0BC);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26C444C5C(uint64_t a1, uint64_t a2)
{
  sub_26C4468DC(&qword_280497648, type metadata accessor for ModelData, &unk_26C46F0BC);

  return sub_26C46BE84();
}

uint64_t sub_26C444CDC()
{
  v0 = sub_26C46BF74();
  __swift_allocate_value_buffer(v0, qword_280498868);
  __swift_project_value_buffer(v0, qword_280498868);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498098, &qword_26C470BC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980A0, &qword_26C470BC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C46E630;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26C46BF44();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_26C46BF54();
}

uint64_t sub_26C444EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_26C46BD84();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_26C46BE04();
    }

    else if (result == 2)
    {
      sub_26C46BDD4();
    }
  }

  return result;
}

uint64_t sub_26C444F30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_26C46BF04(), !v4))
  {
    v6 = *(v3 + 8);
    v7 = *(v3 + 16);
    v8 = v7 >> 62;
    if ((v7 >> 62) > 1)
    {
      if (v8 != 2)
      {
        goto LABEL_12;
      }

      v9 = *(v6 + 16);
      v10 = *(v6 + 24);
    }

    else
    {
      if (!v8)
      {
        if ((v7 & 0xFF000000000000) == 0)
        {
          goto LABEL_12;
        }

LABEL_11:
        result = sub_26C46BEE4();
        if (v4)
        {
          return result;
        }

        goto LABEL_12;
      }

      v9 = v6;
      v10 = v6 >> 32;
    }

    if (v9 != v10)
    {
      goto LABEL_11;
    }

LABEL_12:
    type metadata accessor for ModelData.PropertyDataMap(0);
    return sub_26C46BD04();
  }

  return result;
}

uint64_t sub_26C44500C@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = xmmword_26C46D3C0;
  return sub_26C46BD14();
}

uint64_t sub_26C445058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_26C46BD24();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_26C4450CC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_26C46BD24();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_26C445170(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C4468DC(&qword_2804981C0, type metadata accessor for ModelData.PropertyDataMap, &unk_26C46EF1C);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26C445210(uint64_t a1)
{
  v2 = sub_26C4468DC(&qword_280497E20, type metadata accessor for ModelData.PropertyDataMap, &unk_26C46EF54);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26C44527C(uint64_t a1, uint64_t a2)
{
  sub_26C4468DC(&qword_280497E20, type metadata accessor for ModelData.PropertyDataMap, &unk_26C46EF54);

  return sub_26C46BE84();
}

uint64_t sub_26C4452F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != *a2 || !sub_26C44DD9C(*(a1 + 8), *(a1 + 16), *(a2 + 8), *(a2 + 16)))
  {
    return 0;
  }

  sub_26C46BD24();
  sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_26C46C1C4() & 1;
}

uint64_t sub_26C4453B4()
{
  v0 = sub_26C46BF74();
  __swift_allocate_value_buffer(v0, qword_280498880);
  __swift_project_value_buffer(v0, qword_280498880);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498098, &qword_26C470BC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980A0, &qword_26C470BC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C46E630;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26C46BF44();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_26C46BF54();
}

uint64_t sub_26C44557C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_26C46BD84();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_26C445DEC(a1, v5, a2, a3, type metadata accessor for ModelData.OwnershipUUIDToAccountIdentifier);
    }

    else if (result == 2)
    {
      sub_26C46BDF4();
    }
  }

  return result;
}

uint64_t sub_26C445620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v17[0] = a1;
  v17[1] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v17 - v6;
  v8 = type metadata accessor for PBUUID(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ModelData.OwnershipUUIDToAccountIdentifier(0);
  sub_26C3DDD48(v4 + *(v12 + 24), v7, &qword_280497458, &unk_26C46D3F0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_26C3DE270(v7, &qword_280497458, &unk_26C46D3F0);
    v13 = v18;
  }

  else
  {
    sub_26C453E5C(v7, v11, type metadata accessor for PBUUID);
    sub_26C4468DC(&qword_280498050, type metadata accessor for PBUUID, &unk_26C470A0C);
    v13 = v18;
    sub_26C46BF34();
    result = sub_26C453DFC(v11, type metadata accessor for PBUUID);
    if (v13)
    {
      return result;
    }
  }

  v15 = v4[1];
  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {
    return sub_26C46BD04();
  }

  result = sub_26C46BEF4();
  if (!v13)
  {
    return sub_26C46BD04();
  }

  return result;
}

uint64_t sub_26C44589C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  sub_26C46BD14();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for PBUUID(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_26C445970(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C4468DC(&qword_2804981C8, type metadata accessor for ModelData.OwnershipUUIDToAccountIdentifier, &unk_26C46EDB4);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26C445A10(uint64_t a1)
{
  v2 = sub_26C4468DC(&qword_280497E00, type metadata accessor for ModelData.OwnershipUUIDToAccountIdentifier, &unk_26C46EDEC);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26C445A7C(uint64_t a1, uint64_t a2)
{
  sub_26C4468DC(&qword_280497E00, type metadata accessor for ModelData.OwnershipUUIDToAccountIdentifier, &unk_26C46EDEC);

  return sub_26C46BE84();
}

uint64_t sub_26C445AFC()
{
  v0 = sub_26C46BF74();
  __swift_allocate_value_buffer(v0, qword_280498898);
  __swift_project_value_buffer(v0, qword_280498898);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498098, &qword_26C470BC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980A0, &qword_26C470BC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C46E620;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "modelUUIDPB";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26C46BF44();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "data";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "ownerUUIDPB";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return sub_26C46BF54();
}

uint64_t sub_26C445D10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_26C46BD84();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_26C445EA4(a1, v5, a2, a3, type metadata accessor for ValueData);
        break;
      case 2:
        sub_26C46BDD4();
        break;
      case 1:
        sub_26C445DEC(a1, v5, a2, a3, type metadata accessor for ValueData);
        break;
    }
  }

  return result;
}

uint64_t sub_26C445DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  a5(0);
  type metadata accessor for PBUUID(0);
  sub_26C4468DC(&qword_280498050, type metadata accessor for PBUUID, &unk_26C470A0C);
  return sub_26C46BE34();
}

uint64_t sub_26C445EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  a5(0);
  type metadata accessor for PBUUID(0);
  sub_26C4468DC(&qword_280498050, type metadata accessor for PBUUID, &unk_26C470A0C);
  return sub_26C46BE34();
}

uint64_t sub_26C445F5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v34 = a3;
  v33 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v31 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - v9;
  v11 = type metadata accessor for PBUUID(0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v29 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - v15;
  v32 = type metadata accessor for ValueData(0);
  v17 = *(v32 + 24);
  v30 = v5;
  sub_26C3DDD48(v5 + v17, v10, &qword_280497458, &unk_26C46D3F0);
  v18 = *(v12 + 48);
  if (v18(v10, 1, v11) == 1)
  {
    sub_26C3DE270(v10, &qword_280497458, &unk_26C46D3F0);
  }

  else
  {
    sub_26C453E5C(v10, v16, type metadata accessor for PBUUID);
    sub_26C4468DC(&qword_280498050, type metadata accessor for PBUUID, &unk_26C470A0C);
    sub_26C46BF34();
    result = sub_26C453DFC(v16, type metadata accessor for PBUUID);
    if (v4)
    {
      return result;
    }
  }

  v21 = v30;
  v20 = v31;
  v22 = *v30;
  v23 = v30[1];
  v24 = v23 >> 62;
  if ((v23 >> 62) > 1)
  {
    if (v24 != 2)
    {
      goto LABEL_14;
    }

    v25 = *(v22 + 16);
    v26 = *(v22 + 24);
  }

  else
  {
    if (!v24)
    {
      if ((v23 & 0xFF000000000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_12;
    }

    v25 = v22;
    v26 = v22 >> 32;
  }

  if (v25 == v26)
  {
    goto LABEL_14;
  }

LABEL_12:
  result = sub_26C46BEE4();
  if (v4)
  {
    return result;
  }

  v20 = v31;
LABEL_14:
  sub_26C3DDD48(v21 + *(v32 + 28), v20, &qword_280497458, &unk_26C46D3F0);
  if (v18(v20, 1, v11) == 1)
  {
    sub_26C3DE270(v20, &qword_280497458, &unk_26C46D3F0);
  }

  else
  {
    v27 = v29;
    sub_26C453E5C(v20, v29, type metadata accessor for PBUUID);
    sub_26C4468DC(&qword_280498050, type metadata accessor for PBUUID, &unk_26C470A0C);
    sub_26C46BF34();
    result = sub_26C453DFC(v27, type metadata accessor for PBUUID);
    if (v4)
    {
      return result;
    }
  }

  return sub_26C46BD04();
}

uint64_t sub_26C446378@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = xmmword_26C46D3C0;
  sub_26C46BD14();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for PBUUID(0);
  v8 = *(*(v5 - 8) + 56);
  (v8)((v5 - 8), &a2[v4], 1, 1, v5);
  v6 = &a2[*(a1 + 28)];

  return v8(v6, 1, 1, v5);
}

uint64_t sub_26C446460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_26C46BD24();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_26C4464D4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_26C46BD24();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_26C446578(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C4468DC(&qword_2804981D0, type metadata accessor for ValueData, &unk_26C46EC4C);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26C446618@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_26C46BF74();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_26C4466B4(uint64_t a1)
{
  v2 = sub_26C4468DC(&qword_280497DE0, type metadata accessor for ValueData, &unk_26C46EC84);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26C446720(uint64_t a1, uint64_t a2)
{
  sub_26C46C814();
  sub_26C46C1B4();
  return sub_26C46C844();
}

uint64_t sub_26C446778(uint64_t a1, uint64_t a2)
{
  sub_26C4468DC(&qword_280497DE0, type metadata accessor for ValueData, &unk_26C46EC84);

  return sub_26C46BE84();
}

uint64_t sub_26C4467F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26C46C814();
  sub_26C46C1B4();
  return sub_26C46C844();
}

uint64_t sub_26C4468DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26C4482C4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_26C448318(uint64_t a1, uint64_t a2)
{
  v44[3] = *MEMORY[0x277D85DE8];
  v42 = type metadata accessor for ModelData.PropertyDataMap(0);
  v4 = MEMORY[0x28223BE20](v42);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v9 = &v38 - v8;
  v10 = *(a1 + 16);
  if (v10 == *(a2 + 16))
  {
    if (v10 && a1 != a2)
    {
      v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v12 = a1 + v11;
      v13 = a2 + v11;
      v14 = *(v7 + 72);
      v40 = 0;
      v41 = v14;
      while (1)
      {
        sub_26C455474(v12, v9, type metadata accessor for ModelData.PropertyDataMap);
        sub_26C455474(v13, v6, type metadata accessor for ModelData.PropertyDataMap);
        if (*v9 != *v6)
        {
LABEL_59:
          sub_26C453DFC(v6, type metadata accessor for ModelData.PropertyDataMap);
          sub_26C453DFC(v9, type metadata accessor for ModelData.PropertyDataMap);
          goto LABEL_60;
        }

        v15 = *(v9 + 1);
        v16 = *(v9 + 2);
        v17 = *(v6 + 1);
        v18 = *(v6 + 2);
        v19 = v16 >> 62;
        v20 = v18 >> 62;
        if (v16 >> 62 == 3)
        {
          break;
        }

        if (v19 > 1)
        {
          if (v19 == 2)
          {
            v27 = *(v15 + 16);
            v26 = *(v15 + 24);
            v24 = __OFSUB__(v26, v27);
            v21 = v26 - v27;
            if (v24)
            {
              goto LABEL_63;
            }

            goto LABEL_22;
          }

          v21 = 0;
          if (v20 > 1)
          {
            goto LABEL_16;
          }
        }

        else if (v19)
        {
          LODWORD(v21) = HIDWORD(v15) - v15;
          if (__OFSUB__(HIDWORD(v15), v15))
          {
            goto LABEL_64;
          }

          v21 = v21;
          if (v20 > 1)
          {
LABEL_16:
            if (v20 != 2)
            {
              if (v21)
              {
                goto LABEL_59;
              }

              goto LABEL_55;
            }

            v23 = *(v17 + 16);
            v22 = *(v17 + 24);
            v24 = __OFSUB__(v22, v23);
            v25 = v22 - v23;
            if (v24)
            {
              __break(1u);
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
LABEL_64:
              __break(1u);
LABEL_65:
              __break(1u);
LABEL_66:
              __break(1u);
LABEL_67:
              __break(1u);
LABEL_68:
              __break(1u);
            }

            goto LABEL_29;
          }
        }

        else
        {
          v21 = BYTE6(v16);
          if (v20 > 1)
          {
            goto LABEL_16;
          }
        }

LABEL_23:
        if (v20)
        {
          LODWORD(v25) = HIDWORD(v17) - v17;
          if (__OFSUB__(HIDWORD(v17), v17))
          {
            goto LABEL_62;
          }

          v25 = v25;
        }

        else
        {
          v25 = BYTE6(v18);
        }

LABEL_29:
        if (v21 != v25)
        {
          goto LABEL_59;
        }

        if (v21 >= 1)
        {
          if (v19 > 1)
          {
            if (v19 == 2)
            {
              v28 = *(v15 + 16);
              v38 = *(v15 + 24);
              v39 = v17;
              v29 = sub_26C46BA04();
              if (v29)
              {
                v30 = sub_26C46BA24();
                if (__OFSUB__(v28, v30))
                {
                  goto LABEL_67;
                }

                v29 += v28 - v30;
              }

              if (__OFSUB__(v38, v28))
              {
                goto LABEL_66;
              }

              goto LABEL_54;
            }

            memset(v44, 0, 14);
          }

          else
          {
            if (v19)
            {
              v39 = *(v6 + 1);
              v31 = v15;
              if (v15 >> 32 < v15)
              {
                goto LABEL_65;
              }

              v32 = sub_26C46BA04();
              if (v32)
              {
                v38 = v32;
                v33 = sub_26C46BA24();
                if (__OFSUB__(v31, v33))
                {
                  goto LABEL_68;
                }

                v29 = v31 - v33 + v38;
              }

              else
              {
                v29 = 0;
              }

LABEL_54:
              sub_26C46BA14();
              v35 = v40;
              sub_26C44D924(v29, v39, v18, v44);
              v40 = v35;
              if ((v44[0] & 1) == 0)
              {
                goto LABEL_59;
              }

              goto LABEL_55;
            }

            v44[0] = *(v9 + 1);
            LOWORD(v44[1]) = v16;
            BYTE2(v44[1]) = BYTE2(v16);
            BYTE3(v44[1]) = BYTE3(v16);
            BYTE4(v44[1]) = BYTE4(v16);
            BYTE5(v44[1]) = BYTE5(v16);
          }

          v34 = v40;
          sub_26C44D924(v44, v17, v18, &v43);
          v40 = v34;
          if (!v43)
          {
            goto LABEL_59;
          }
        }

LABEL_55:
        sub_26C46BD24();
        sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v36 = sub_26C46C1C4();
        sub_26C453DFC(v6, type metadata accessor for ModelData.PropertyDataMap);
        sub_26C453DFC(v9, type metadata accessor for ModelData.PropertyDataMap);
        if (v36)
        {
          v13 += v41;
          v12 += v41;
          if (--v10)
          {
            continue;
          }
        }

        return v36 & 1;
      }

      v21 = 0;
      if (!v15 && v16 == 0xC000000000000000 && v18 >> 62 == 3)
      {
        v21 = 0;
        if (!v17 && v18 == 0xC000000000000000)
        {
          goto LABEL_55;
        }
      }

LABEL_22:
      if (v20 > 1)
      {
        goto LABEL_16;
      }

      goto LABEL_23;
    }

    v36 = 1;
  }

  else
  {
LABEL_60:
    v36 = 0;
  }

  return v36 & 1;
}

uint64_t sub_26C448838(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBUUID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v36 - v9);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980C0, &unk_26C470BD0);
  MEMORY[0x28223BE20](v41);
  v43 = &v36 - v11;
  v44 = type metadata accessor for ModelData.OwnershipUUIDToAccountIdentifier(0);
  v12 = MEMORY[0x28223BE20](v44);
  v45 = (&v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v16 = (&v36 - v15);
  v17 = *(a1 + 16);
  if (v17 != *(a2 + 16))
  {
    goto LABEL_26;
  }

  if (!v17 || a1 == a2)
  {
    v32 = 1;
    return v32 & 1;
  }

  v40 = v4;
  v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v19 = a1 + v18;
  v20 = a2 + v18;
  v38 = &v36 - v15;
  v39 = (v5 + 48);
  v21 = *(v14 + 72);
  v36 = v7;
  v37 = v21;
  while (1)
  {
    sub_26C455474(v19, v16, type metadata accessor for ModelData.OwnershipUUIDToAccountIdentifier);
    v42 = v19;
    v22 = v45;
    sub_26C455474(v20, v45, type metadata accessor for ModelData.OwnershipUUIDToAccountIdentifier);
    v23 = *(v44 + 24);
    v24 = *(v41 + 48);
    v25 = v43;
    sub_26C3DDD48(v16 + v23, v43, &qword_280497458, &unk_26C46D3F0);
    sub_26C3DDD48(v22 + v23, v25 + v24, &qword_280497458, &unk_26C46D3F0);
    v26 = v40;
    v27 = *v39;
    if ((*v39)(v25, 1, v40) == 1)
    {
      v28 = v27(v25 + v24, 1, v26);
      v16 = v38;
      if (v28 != 1)
      {
        goto LABEL_23;
      }

      goto LABEL_13;
    }

    sub_26C3DDD48(v25, v10, &qword_280497458, &unk_26C46D3F0);
    if (v27(v25 + v24, 1, v26) == 1)
    {
      break;
    }

    v29 = v36;
    sub_26C453E5C(v25 + v24, v36, type metadata accessor for PBUUID);
    v16 = v38;
    if (*v10 != *v29 || v10[1] != v29[1])
    {
      sub_26C453DFC(v29, type metadata accessor for PBUUID);
LABEL_21:
      sub_26C453DFC(v10, type metadata accessor for PBUUID);
      v33 = &qword_280497458;
      v34 = &unk_26C46D3F0;
      goto LABEL_24;
    }

    sub_26C46BD24();
    sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v25 = v43;
    v30 = sub_26C46C1C4();
    sub_26C453DFC(v29, type metadata accessor for PBUUID);
    if ((v30 & 1) == 0)
    {
      goto LABEL_21;
    }

    sub_26C453DFC(v10, type metadata accessor for PBUUID);
LABEL_13:
    sub_26C3DE270(v25, &qword_280497458, &unk_26C46D3F0);
    if ((*v16 != *v45 || v16[1] != v45[1]) && (sub_26C46C764() & 1) == 0)
    {
      goto LABEL_25;
    }

    sub_26C46BD24();
    sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v31 = v45;
    v32 = sub_26C46C1C4();
    sub_26C453DFC(v31, type metadata accessor for ModelData.OwnershipUUIDToAccountIdentifier);
    sub_26C453DFC(v16, type metadata accessor for ModelData.OwnershipUUIDToAccountIdentifier);
    if (v32)
    {
      v20 += v37;
      v19 = v42 + v37;
      if (--v17)
      {
        continue;
      }
    }

    return v32 & 1;
  }

  sub_26C453DFC(v10, type metadata accessor for PBUUID);
  v16 = v38;
LABEL_23:
  v33 = &qword_2804980C0;
  v34 = &unk_26C470BD0;
LABEL_24:
  sub_26C3DE270(v25, v33, v34);
LABEL_25:
  sub_26C453DFC(v45, type metadata accessor for ModelData.OwnershipUUIDToAccountIdentifier);
  sub_26C453DFC(v16, type metadata accessor for ModelData.OwnershipUUIDToAccountIdentifier);
LABEL_26:
  v32 = 0;
  return v32 & 1;
}

uint64_t sub_26C448E48(uint64_t a1, uint64_t a2)
{
  v33[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v4 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v7 = *(v4 - 1);
      v6 = *v4;
      v9 = *(i - 1);
      v8 = *i;
      v10 = *v4 >> 62;
      v11 = *i >> 62;
      if (v10 == 3)
      {
        break;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v20 = *(v7 + 16);
          v19 = *(v7 + 24);
          v17 = __OFSUB__(v19, v20);
          v13 = v19 - v20;
          if (v17)
          {
            goto LABEL_62;
          }

          goto LABEL_28;
        }

        v13 = 0;
        if (v11 <= 1)
        {
          goto LABEL_29;
        }
      }

      else if (v10)
      {
        LODWORD(v13) = HIDWORD(v7) - v7;
        if (__OFSUB__(HIDWORD(v7), v7))
        {
          goto LABEL_63;
        }

        v13 = v13;
        if (v11 <= 1)
        {
LABEL_29:
          if (v11)
          {
            LODWORD(v18) = HIDWORD(v9) - v9;
            if (__OFSUB__(HIDWORD(v9), v9))
            {
              __break(1u);
LABEL_61:
              __break(1u);
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
LABEL_64:
              __break(1u);
LABEL_65:
              __break(1u);
LABEL_66:
              __break(1u);
LABEL_67:
              __break(1u);
            }

            v18 = v18;
          }

          else
          {
            v18 = BYTE6(v8);
          }

          goto LABEL_33;
        }
      }

      else
      {
        v13 = BYTE6(v6);
        if (v11 <= 1)
        {
          goto LABEL_29;
        }
      }

LABEL_22:
      if (v11 != 2)
      {
        if (v13)
        {
          return 0;
        }

        goto LABEL_6;
      }

      v16 = *(v9 + 16);
      v15 = *(v9 + 24);
      v17 = __OFSUB__(v15, v16);
      v18 = v15 - v16;
      if (v17)
      {
        goto LABEL_61;
      }

LABEL_33:
      if (v13 != v18)
      {
        return 0;
      }

      if (v13 < 1)
      {
        goto LABEL_6;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v31 = v3;
          v21 = *(v7 + 16);
          v30 = *(v7 + 24);
          sub_26C3DDDB0(v7, v6);
          sub_26C3DDDB0(v9, v8);
          v22 = sub_26C46BA04();
          if (v22)
          {
            v23 = sub_26C46BA24();
            if (__OFSUB__(v21, v23))
            {
              goto LABEL_66;
            }

            v22 += v21 - v23;
          }

          if (__OFSUB__(v30, v21))
          {
            goto LABEL_65;
          }

          sub_26C46BA14();
          v24 = v22;
          v25 = v9;
          v26 = v8;
          v3 = v31;
          goto LABEL_54;
        }

        memset(v33, 0, 14);
        sub_26C3DDDB0(v7, v6);
        sub_26C3DDDB0(v9, v8);
      }

      else
      {
        if (v10)
        {
          if (v7 >> 32 < v7)
          {
            goto LABEL_64;
          }

          sub_26C3DDDB0(v7, v6);
          sub_26C3DDDB0(v9, v8);
          v27 = sub_26C46BA04();
          if (v27)
          {
            v28 = sub_26C46BA24();
            if (__OFSUB__(v7, v28))
            {
              goto LABEL_67;
            }

            v27 += v7 - v28;
          }

          sub_26C46BA14();
          v24 = v27;
          v25 = v9;
          v26 = v8;
LABEL_54:
          sub_26C44D924(v24, v25, v26, v33);
          sub_26C3DDEA8(v9, v8);
          sub_26C3DDEA8(v7, v6);
          if ((v33[0] & 1) == 0)
          {
            return 0;
          }

          goto LABEL_6;
        }

        v33[0] = *(v4 - 1);
        LOWORD(v33[1]) = v6;
        BYTE2(v33[1]) = BYTE2(v6);
        BYTE3(v33[1]) = BYTE3(v6);
        BYTE4(v33[1]) = BYTE4(v6);
        BYTE5(v33[1]) = BYTE5(v6);
        sub_26C3DDDB0(v7, v6);
        sub_26C3DDDB0(v9, v8);
      }

      sub_26C44D924(v33, v9, v8, &v32);
      sub_26C3DDEA8(v9, v8);
      sub_26C3DDEA8(v7, v6);
      if (!v32)
      {
        return 0;
      }

LABEL_6:
      v4 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    if (v7)
    {
      v12 = 0;
    }

    else
    {
      v12 = v6 == 0xC000000000000000;
    }

    v13 = 0;
    v14 = v12 && *i >> 62 == 3;
    if (v14 && !v9 && v8 == 0xC000000000000000)
    {
      goto LABEL_6;
    }

LABEL_28:
    if (v11 <= 1)
    {
      goto LABEL_29;
    }

    goto LABEL_22;
  }

  return 1;
}

uint64_t sub_26C449254(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26C4492B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ValueData(0) - 8;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_26C455474(v13, v10, type metadata accessor for ValueData);
        sub_26C455474(v14, v7, type metadata accessor for ValueData);
        v16 = sub_26C452F50(v10, v7);
        sub_26C453DFC(v7, type metadata accessor for ValueData);
        sub_26C453DFC(v10, type metadata accessor for ValueData);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_26C449468(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBUUID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v36 - v9);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980C0, &unk_26C470BD0);
  MEMORY[0x28223BE20](v42);
  v44 = &v36 - v11;
  v45 = type metadata accessor for LamportTimestamp(0);
  v12 = MEMORY[0x28223BE20](v45);
  v14 = (&v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v17 = (&v36 - v16);
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
    goto LABEL_24;
  }

  if (!v18 || a1 == a2)
  {
    v32 = 1;
    return v32 & 1;
  }

  v40 = v14;
  v41 = v4;
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v20 = a1 + v19;
  v21 = a2 + v19;
  v37 = *(v15 + 72);
  v38 = (v5 + 48);
  v39 = &v36 - v16;
  v36 = v7;
  while (1)
  {
    sub_26C455474(v20, v17, type metadata accessor for LamportTimestamp);
    v43 = v20;
    sub_26C455474(v21, v14, type metadata accessor for LamportTimestamp);
    v22 = *(v45 + 24);
    v23 = *(v42 + 48);
    v24 = v17 + v22;
    v25 = v44;
    sub_26C3DDD48(v24, v44, &qword_280497458, &unk_26C46D3F0);
    sub_26C3DDD48(v14 + v22, v25 + v23, &qword_280497458, &unk_26C46D3F0);
    v26 = *v38;
    v27 = v41;
    if ((*v38)(v25, 1, v41) == 1)
    {
      v28 = v26(v25 + v23, 1, v27) == 1;
      v29 = v25;
      v17 = v39;
      v14 = v40;
      if (!v28)
      {
        goto LABEL_21;
      }

      goto LABEL_13;
    }

    sub_26C3DDD48(v25, v10, &qword_280497458, &unk_26C46D3F0);
    if (v26(v25 + v23, 1, v27) == 1)
    {
      break;
    }

    v30 = v36;
    sub_26C453E5C(v25 + v23, v36, type metadata accessor for PBUUID);
    if (*v10 != *v30 || v10[1] != v30[1])
    {
      sub_26C453DFC(v30, type metadata accessor for PBUUID);
      v17 = v39;
      v14 = v40;
LABEL_19:
      sub_26C453DFC(v10, type metadata accessor for PBUUID);
      v33 = &qword_280497458;
      v34 = &unk_26C46D3F0;
      v29 = v44;
      goto LABEL_22;
    }

    sub_26C46BD24();
    sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v31 = sub_26C46C1C4();
    sub_26C453DFC(v30, type metadata accessor for PBUUID);
    v17 = v39;
    v14 = v40;
    if ((v31 & 1) == 0)
    {
      goto LABEL_19;
    }

    sub_26C453DFC(v10, type metadata accessor for PBUUID);
    v29 = v44;
LABEL_13:
    sub_26C3DE270(v29, &qword_280497458, &unk_26C46D3F0);
    if (*v17 != *v14)
    {
      goto LABEL_23;
    }

    sub_26C46BD24();
    sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v32 = sub_26C46C1C4();
    sub_26C453DFC(v14, type metadata accessor for LamportTimestamp);
    sub_26C453DFC(v17, type metadata accessor for LamportTimestamp);
    if (v32)
    {
      v21 += v37;
      v20 = v43 + v37;
      if (--v18)
      {
        continue;
      }
    }

    return v32 & 1;
  }

  sub_26C453DFC(v10, type metadata accessor for PBUUID);
  v29 = v25;
  v17 = v39;
  v14 = v40;
LABEL_21:
  v33 = &qword_2804980C0;
  v34 = &unk_26C470BD0;
LABEL_22:
  sub_26C3DE270(v29, v33, v34);
LABEL_23:
  sub_26C453DFC(v14, type metadata accessor for LamportTimestamp);
  sub_26C453DFC(v17, type metadata accessor for LamportTimestamp);
LABEL_24:
  v32 = 0;
  return v32 & 1;
}

uint64_t sub_26C449A60(uint64_t a1, uint64_t a2)
{
  v103[3] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for PBUUID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  MEMORY[0x28223BE20](v8 - 8);
  v89 = (&v80 - v9);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980C0, &unk_26C470BD0);
  MEMORY[0x28223BE20](v91);
  v93 = &v80 - v10;
  v92 = type metadata accessor for LamportTimestamp(0);
  v11 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v94 = (&v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  MEMORY[0x28223BE20](v13 - 8);
  v100 = (&v80 - v14);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498118, &qword_26C470C28);
  MEMORY[0x28223BE20](v96);
  v16 = &v80 - v15;
  v95 = type metadata accessor for DictionaryCatchupData.TombstoneTimestamp(0);
  v17 = MEMORY[0x28223BE20](v95);
  v101 = (&v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v21 = (&v80 - v20);
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
    goto LABEL_86;
  }

  if (!v22 || a1 == a2)
  {
    v76 = 1;
    return v76 & 1;
  }

  v83 = v7;
  v87 = 0;
  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v24 = a1 + v23;
  v90 = (v11 + 48);
  v25 = a2 + v23;
  v84 = (v5 + 48);
  v88 = *(v19 + 72);
  v26 = v92;
  v27 = v95;
  v86 = v4;
  v85 = v16;
  while (1)
  {
    v99 = v24;
    sub_26C455474(v24, v21, type metadata accessor for DictionaryCatchupData.TombstoneTimestamp);
    if (!v22)
    {
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
    }

    v98 = v25;
    v28 = v101;
    sub_26C455474(v25, v101, type metadata accessor for DictionaryCatchupData.TombstoneTimestamp);
    v29 = *v21;
    v30 = v21[1];
    v31 = *v28;
    v32 = v28[1];
    v33 = v30 >> 62;
    v34 = v32 >> 62;
    if (v30 >> 62 == 3)
    {
      v35 = 0;
      if (!v29 && v30 == 0xC000000000000000 && v32 >> 62 == 3)
      {
        v35 = 0;
        if (!v31 && v32 == 0xC000000000000000)
        {
          goto LABEL_56;
        }
      }

LABEL_22:
      if (v34 <= 1)
      {
        goto LABEL_23;
      }

      goto LABEL_16;
    }

    if (v33 > 1)
    {
      if (v33 == 2)
      {
        v41 = *(v29 + 16);
        v40 = *(v29 + 24);
        v38 = __OFSUB__(v40, v41);
        v35 = v40 - v41;
        if (v38)
        {
          goto LABEL_91;
        }

        goto LABEL_22;
      }

      v35 = 0;
      if (v34 <= 1)
      {
        goto LABEL_23;
      }
    }

    else if (v33)
    {
      LODWORD(v35) = HIDWORD(v29) - v29;
      if (__OFSUB__(HIDWORD(v29), v29))
      {
        goto LABEL_92;
      }

      v35 = v35;
      if (v34 <= 1)
      {
LABEL_23:
        if (v34)
        {
          LODWORD(v39) = HIDWORD(v31) - v31;
          if (__OFSUB__(HIDWORD(v31), v31))
          {
            goto LABEL_90;
          }

          v39 = v39;
        }

        else
        {
          v39 = BYTE6(v32);
        }

        goto LABEL_29;
      }
    }

    else
    {
      v35 = BYTE6(v30);
      if (v34 <= 1)
      {
        goto LABEL_23;
      }
    }

LABEL_16:
    if (v34 != 2)
    {
      if (v35)
      {
        goto LABEL_85;
      }

      goto LABEL_56;
    }

    v37 = *(v31 + 16);
    v36 = *(v31 + 24);
    v38 = __OFSUB__(v36, v37);
    v39 = v36 - v37;
    if (v38)
    {
      goto LABEL_89;
    }

LABEL_29:
    if (v35 != v39)
    {
      goto LABEL_85;
    }

    if (v35 < 1)
    {
      goto LABEL_56;
    }

    if (v33 > 1)
    {
      if (v33 != 2)
      {
        memset(v103, 0, 14);
LABEL_48:
        v53 = v87;
        sub_26C44D924(v103, v31, v32, &v102);
        v87 = v53;
        if (!v102)
        {
          goto LABEL_85;
        }

        goto LABEL_56;
      }

      v97 = *v28;
      v42 = *(v29 + 16);
      v82 = *(v29 + 24);
      v43 = sub_26C46BA04();
      if (v43)
      {
        v44 = v43;
        v45 = sub_26C46BA24();
        if (__OFSUB__(v42, v45))
        {
          goto LABEL_95;
        }

        v81 = v42 - v45 + v44;
      }

      else
      {
        v81 = 0;
      }

      if (__OFSUB__(v82, v42))
      {
        goto LABEL_94;
      }

      sub_26C46BA14();
      v54 = v81;
    }

    else
    {
      if (!v33)
      {
        v103[0] = *v21;
        LOWORD(v103[1]) = v30;
        BYTE2(v103[1]) = BYTE2(v30);
        BYTE3(v103[1]) = BYTE3(v30);
        BYTE4(v103[1]) = BYTE4(v30);
        BYTE5(v103[1]) = BYTE5(v30);
        goto LABEL_48;
      }

      v97 = *v28;
      v46 = v29;
      v47 = v29 >> 32;
      v82 = v47 - v46;
      if (v47 < v46)
      {
        goto LABEL_93;
      }

      v48 = sub_26C46BA04();
      if (v48)
      {
        v49 = v26;
        v50 = v48;
        v51 = sub_26C46BA24();
        if (__OFSUB__(v46, v51))
        {
          goto LABEL_96;
        }

        v52 = v46 - v51 + v50;
        v26 = v49;
      }

      else
      {
        v52 = 0;
      }

      sub_26C46BA14();
      v54 = v52;
    }

    v55 = v87;
    sub_26C44D924(v54, v97, v32, v103);
    v87 = v55;
    v27 = v95;
    if ((v103[0] & 1) == 0)
    {
      goto LABEL_85;
    }

LABEL_56:
    v97 = v22;
    v56 = *(v27 + 24);
    v57 = *(v96 + 48);
    sub_26C3DDD48(v21 + v56, v16, &qword_280497468, &unk_26C46D400);
    sub_26C3DDD48(v101 + v56, &v16[v57], &qword_280497468, &unk_26C46D400);
    v58 = *v90;
    if ((*v90)(v16, 1, v26) == 1)
    {
      if (v58(&v16[v57], 1, v26) != 1)
      {
        goto LABEL_76;
      }

      goto LABEL_71;
    }

    v59 = v100;
    sub_26C3DDD48(v16, v100, &qword_280497468, &unk_26C46D400);
    v60 = v58(&v16[v57], 1, v26);
    v61 = v86;
    v62 = v94;
    if (v60 == 1)
    {
      break;
    }

    sub_26C453E5C(&v16[v57], v94, type metadata accessor for LamportTimestamp);
    v63 = *(v26 + 24);
    v64 = *(v91 + 48);
    v65 = v93;
    sub_26C3DDD48(v59 + v63, v93, &qword_280497458, &unk_26C46D3F0);
    sub_26C3DDD48(v62 + v63, v65 + v64, &qword_280497458, &unk_26C46D3F0);
    v66 = *v84;
    if ((*v84)(v65, 1, v61) == 1)
    {
      v67 = v66(v65 + v64, 1, v61);
      v68 = v100;
      v27 = v95;
      if (v67 != 1)
      {
        goto LABEL_80;
      }
    }

    else
    {
      v69 = v89;
      sub_26C3DDD48(v65, v89, &qword_280497458, &unk_26C46D3F0);
      v70 = v66(v65 + v64, 1, v61);
      v27 = v95;
      if (v70 == 1)
      {
        sub_26C453DFC(v69, type metadata accessor for PBUUID);
        v62 = v94;
        v68 = v100;
LABEL_80:
        sub_26C3DE270(v65, &qword_2804980C0, &unk_26C470BD0);
        goto LABEL_81;
      }

      v71 = v83;
      sub_26C453E5C(v65 + v64, v83, type metadata accessor for PBUUID);
      if (*v69 != *v71 || v69[1] != v71[1])
      {
        sub_26C453DFC(v71, type metadata accessor for PBUUID);
LABEL_78:
        sub_26C453DFC(v69, type metadata accessor for PBUUID);
        sub_26C3DE270(v93, &qword_280497458, &unk_26C46D3F0);
        v62 = v94;
        v68 = v100;
LABEL_81:
        v16 = v85;
LABEL_82:
        sub_26C453DFC(v62, type metadata accessor for LamportTimestamp);
LABEL_83:
        sub_26C453DFC(v68, type metadata accessor for LamportTimestamp);
        v77 = &qword_280497468;
        v78 = &unk_26C46D400;
        goto LABEL_84;
      }

      sub_26C46BD24();
      sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v72 = sub_26C46C1C4();
      sub_26C453DFC(v71, type metadata accessor for PBUUID);
      if ((v72 & 1) == 0)
      {
        goto LABEL_78;
      }

      sub_26C453DFC(v69, type metadata accessor for PBUUID);
      v65 = v93;
      v62 = v94;
      v68 = v100;
    }

    sub_26C3DE270(v65, &qword_280497458, &unk_26C46D3F0);
    v16 = v85;
    if (*v68 != *v62)
    {
      goto LABEL_82;
    }

    v26 = v92;
    sub_26C46BD24();
    sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v73 = sub_26C46C1C4();
    v68 = v100;
    v74 = v73;
    sub_26C453DFC(v62, type metadata accessor for LamportTimestamp);
    if ((v74 & 1) == 0)
    {
      goto LABEL_83;
    }

    sub_26C453DFC(v68, type metadata accessor for LamportTimestamp);
LABEL_71:
    sub_26C3DE270(v16, &qword_280497468, &unk_26C46D400);
    sub_26C46BD24();
    sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v75 = v101;
    v76 = sub_26C46C1C4();
    sub_26C453DFC(v75, type metadata accessor for DictionaryCatchupData.TombstoneTimestamp);
    sub_26C453DFC(v21, type metadata accessor for DictionaryCatchupData.TombstoneTimestamp);
    if (v76)
    {
      v22 = v97 - 1;
      v25 = v98 + v88;
      v24 = v99 + v88;
      if (v97 != 1)
      {
        continue;
      }
    }

    return v76 & 1;
  }

  sub_26C453DFC(v59, type metadata accessor for LamportTimestamp);
LABEL_76:
  v77 = &qword_280498118;
  v78 = &qword_26C470C28;
LABEL_84:
  sub_26C3DE270(v16, v77, v78);
LABEL_85:
  sub_26C453DFC(v101, type metadata accessor for DictionaryCatchupData.TombstoneTimestamp);
  sub_26C453DFC(v21, type metadata accessor for DictionaryCatchupData.TombstoneTimestamp);
LABEL_86:
  v76 = 0;
  return v76 & 1;
}

uint64_t sub_26C44A748(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ValueData(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v86 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497470, &unk_26C46E870);
  MEMORY[0x28223BE20](v7 - 8);
  v92 = &v75 - v8;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498120, &unk_26C470C30);
  MEMORY[0x28223BE20](v91);
  v10 = &v75 - v9;
  v87 = type metadata accessor for PBUUID(0);
  v90 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v83 = (&v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  MEMORY[0x28223BE20](v12 - 8);
  v84 = (&v75 - v13);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980C0, &unk_26C470BD0);
  MEMORY[0x28223BE20](v88);
  v15 = &v75 - v14;
  v96 = type metadata accessor for LamportTimestamp(0);
  v16 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v93 = (&v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  MEMORY[0x28223BE20](v18 - 8);
  v94 = (&v75 - v19);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498118, &qword_26C470C28);
  MEMORY[0x28223BE20](v95);
  v21 = &v75 - v20;
  v97 = type metadata accessor for PropertyChangedMessage(0);
  v22 = MEMORY[0x28223BE20](v97);
  v99 = (&v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22);
  v26 = &v75 - v25;
  v27 = *(a1 + 16);
  if (v27 != *(a2 + 16))
  {
LABEL_42:
    v68 = 0;
    return v68 & 1;
  }

  if (!v27 || a1 == a2)
  {
    v68 = 1;
    return v68 & 1;
  }

  v28 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v29 = a1 + v28;
  v30 = a2 + v28;
  v31 = (v16 + 48);
  v32 = v30;
  v81 = v4;
  v82 = v31;
  v77 = (v90 + 48);
  v80 = (v5 + 48);
  v78 = *(v24 + 72);
  v85 = v15;
  v98 = (&v75 - v25);
  v76 = v10;
  v79 = v21;
  while (1)
  {
    result = sub_26C455474(v29, v26, type metadata accessor for PropertyChangedMessage);
    if (!v27)
    {
      break;
    }

    v89 = v32;
    v90 = v29;
    v34 = v99;
    sub_26C455474(v32, v99, type metadata accessor for PropertyChangedMessage);
    v35 = *(v97 + 24);
    v36 = *(v95 + 48);
    sub_26C3DDD48(&v26[v35], v21, &qword_280497468, &unk_26C46D400);
    sub_26C3DDD48(v34 + v35, &v21[v36], &qword_280497468, &unk_26C46D400);
    v37 = *v82;
    v38 = v96;
    if ((*v82)(v21, 1, v96) == 1)
    {
      if (v37(&v21[v36], 1, v38) != 1)
      {
        goto LABEL_31;
      }

      sub_26C3DE270(v21, &qword_280497468, &unk_26C46D400);
    }

    else
    {
      v39 = v94;
      sub_26C3DDD48(v21, v94, &qword_280497468, &unk_26C46D400);
      if (v37(&v21[v36], 1, v38) == 1)
      {
        sub_26C453DFC(v39, type metadata accessor for LamportTimestamp);
LABEL_31:
        v70 = &qword_280498118;
        v71 = &qword_26C470C28;
        goto LABEL_39;
      }

      v40 = &v21[v36];
      v41 = v38;
      v42 = v93;
      sub_26C453E5C(v40, v93, type metadata accessor for LamportTimestamp);
      v43 = *(v41 + 24);
      v44 = *(v88 + 48);
      sub_26C3DDD48(v39 + v43, v15, &qword_280497458, &unk_26C46D3F0);
      sub_26C3DDD48(v42 + v43, &v15[v44], &qword_280497458, &unk_26C46D3F0);
      v45 = *v77;
      v46 = v87;
      if ((*v77)(v15, 1, v87) == 1)
      {
        v47 = v45(&v15[v44], 1, v46);
        v48 = v94;
        if (v47 != 1)
        {
          goto LABEL_36;
        }

        sub_26C3DE270(v15, &qword_280497458, &unk_26C46D3F0);
        v49 = v93;
      }

      else
      {
        v50 = v84;
        sub_26C3DDD48(v15, v84, &qword_280497458, &unk_26C46D3F0);
        if (v45(&v15[v44], 1, v46) == 1)
        {
          sub_26C453DFC(v50, type metadata accessor for PBUUID);
          v48 = v94;
LABEL_36:
          v72 = &qword_2804980C0;
          v73 = &unk_26C470BD0;
          goto LABEL_37;
        }

        v51 = &v15[v44];
        v52 = v83;
        sub_26C453E5C(v51, v83, type metadata accessor for PBUUID);
        v48 = v94;
        if (*v50 != *v52 || v50[1] != v52[1])
        {
          sub_26C453DFC(v52, type metadata accessor for PBUUID);
          sub_26C453DFC(v50, type metadata accessor for PBUUID);
          v72 = &qword_280497458;
          v73 = &unk_26C46D3F0;
LABEL_37:
          sub_26C3DE270(v15, v72, v73);
          v49 = v93;
LABEL_38:
          sub_26C453DFC(v49, type metadata accessor for LamportTimestamp);
          sub_26C453DFC(v48, type metadata accessor for LamportTimestamp);
          v70 = &qword_280497468;
          v71 = &unk_26C46D400;
LABEL_39:
          v74 = v21;
LABEL_40:
          sub_26C3DE270(v74, v70, v71);
LABEL_41:
          sub_26C453DFC(v99, type metadata accessor for PropertyChangedMessage);
          sub_26C453DFC(v98, type metadata accessor for PropertyChangedMessage);
          goto LABEL_42;
        }

        v53 = v50;
        sub_26C46BD24();
        v54 = v52;
        sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v55 = sub_26C46C1C4();
        sub_26C453DFC(v54, type metadata accessor for PBUUID);
        sub_26C453DFC(v53, type metadata accessor for PBUUID);
        sub_26C3DE270(v85, &qword_280497458, &unk_26C46D3F0);
        v49 = v93;
        v10 = v76;
        if ((v55 & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      if (*v48 != *v49)
      {
        goto LABEL_38;
      }

      sub_26C46BD24();
      sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v56 = sub_26C46C1C4();
      sub_26C453DFC(v49, type metadata accessor for LamportTimestamp);
      sub_26C453DFC(v48, type metadata accessor for LamportTimestamp);
      sub_26C3DE270(v21, &qword_280497468, &unk_26C46D400);
      if ((v56 & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    if (*v98 != *v99)
    {
      goto LABEL_41;
    }

    v57 = *(v97 + 28);
    v58 = v92;
    v59 = *(v91 + 48);
    sub_26C3DDD48(v98 + v57, v10, &qword_280497470, &unk_26C46E870);
    sub_26C3DDD48(v99 + v57, &v10[v59], &qword_280497470, &unk_26C46E870);
    v60 = *v80;
    v61 = v10;
    v62 = v10;
    v63 = v81;
    if ((*v80)(v61, 1, v81) == 1)
    {
      if (v60((v62 + v59), 1, v63) != 1)
      {
        goto LABEL_34;
      }

      sub_26C3DE270(v62, &qword_280497470, &unk_26C46E870);
      v10 = v62;
      v15 = v85;
      v21 = v79;
    }

    else
    {
      sub_26C3DDD48(v62, v58, &qword_280497470, &unk_26C46E870);
      if (v60((v62 + v59), 1, v63) == 1)
      {
        sub_26C453DFC(v58, type metadata accessor for ValueData);
LABEL_34:
        v70 = &qword_280498120;
        v71 = &unk_26C470C30;
        v74 = v62;
        goto LABEL_40;
      }

      v64 = v86;
      sub_26C453E5C(v62 + v59, v86, type metadata accessor for ValueData);
      v65 = sub_26C452F50(v58, v64);
      sub_26C453DFC(v64, type metadata accessor for ValueData);
      sub_26C453DFC(v58, type metadata accessor for ValueData);
      sub_26C3DE270(v62, &qword_280497470, &unk_26C46E870);
      v10 = v62;
      v15 = v85;
      v21 = v79;
      if ((v65 & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    sub_26C46BD24();
    sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v66 = v98;
    v67 = v99;
    v68 = sub_26C46C1C4();
    sub_26C453DFC(v67, type metadata accessor for PropertyChangedMessage);
    sub_26C453DFC(v66, type metadata accessor for PropertyChangedMessage);
    if (v68)
    {
      v32 = v89 + v78;
      v29 = v90 + v78;
      v69 = v27-- == 1;
      v26 = v98;
      if (!v69)
      {
        continue;
      }
    }

    return v68 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_26C44B3E0(uint64_t a1, uint64_t a2)
{
  __s1[3] = *MEMORY[0x277D85DE8];
  v266 = type metadata accessor for ValueData(0);
  v4 = *(v266 - 8);
  v5 = MEMORY[0x28223BE20](v266);
  v263 = (&v222 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v222 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v265 = (&v222 - v11);
  MEMORY[0x28223BE20](v10);
  v13 = (&v222 - v12);
  v14 = type metadata accessor for PBUUID(0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v240 = (&v222 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x28223BE20](v16);
  v242 = (&v222 - v19);
  v20 = MEMORY[0x28223BE20](v18);
  v246 = (&v222 - v21);
  v22 = MEMORY[0x28223BE20](v20);
  v248 = (&v222 - v23);
  MEMORY[0x28223BE20](v22);
  v238 = (&v222 - v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v241 = (&v222 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = MEMORY[0x28223BE20](v26);
  v243 = (&v222 - v29);
  v30 = MEMORY[0x28223BE20](v28);
  v247 = (&v222 - v31);
  v32 = MEMORY[0x28223BE20](v30);
  v249 = (&v222 - v33);
  MEMORY[0x28223BE20](v32);
  v239 = (&v222 - v34);
  v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980C0, &unk_26C470BD0);
  v35 = MEMORY[0x28223BE20](v264);
  v251 = &v222 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v255 = &v222 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v254 = &v222 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v258 = &v222 - v42;
  MEMORY[0x28223BE20](v41);
  v244 = &v222 - v43;
  v257 = type metadata accessor for LamportTimestamp(0);
  v44 = *(v257 - 8);
  MEMORY[0x28223BE20](v257);
  v252 = (&v222 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  MEMORY[0x28223BE20](v46 - 8);
  v253 = (&v222 - v47);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498118, &qword_26C470C28);
  MEMORY[0x28223BE20](v48);
  v262 = &v222 - v49;
  v256 = type metadata accessor for SetChangedMessage(0);
  v50 = MEMORY[0x28223BE20](v256);
  v52 = &v222 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v261 = &v222 - v54;
  v55 = *(a1 + 16);
  if (v55 != *(a2 + 16))
  {
    goto LABEL_246;
  }

  if (!v55 || a1 == a2)
  {
    v209 = 1;
    return v209 & 1;
  }

  v237 = v4;
  v56 = 0;
  v229 = 0;
  v57 = (*(v53 + 80) + 32) & ~*(v53 + 80);
  v58 = a1 + v57;
  v232 = a2 + v57;
  v231 = (v44 + 48);
  v260 = (v15 + 48);
  v59 = *(v53 + 72);
  v250 = v9;
  v259 = v13;
  v60 = v261;
  v61 = v262;
  v245 = v52;
  v236 = v48;
  v235 = v55;
  v224 = v58;
  v230 = v14;
  v223 = v59;
  while (1)
  {
    v62 = v56;
    v63 = v59 * v56;
    sub_26C455474(v58 + v59 * v56, v60, type metadata accessor for SetChangedMessage);
    v225 = v62;
    if (v62 == v235)
    {
      goto LABEL_255;
    }

    sub_26C455474(v232 + v63, v52, type metadata accessor for SetChangedMessage);
    v64 = *(v256 + 32);
    v65 = *(v48 + 48);
    sub_26C3DDD48(v60 + v64, v61, &qword_280497468, &unk_26C46D400);
    sub_26C3DDD48(&v52[v64], v61 + v65, &qword_280497468, &unk_26C46D400);
    v66 = *v231;
    v67 = v257;
    if ((*v231)(v61, 1, v257) == 1)
    {
      if (v66(v61 + v65, 1, v67) != 1)
      {
        goto LABEL_235;
      }

      sub_26C3DE270(v61, &qword_280497468, &unk_26C46D400);
      v68 = v237;
      v48 = v236;
      v69 = v230;
      goto LABEL_20;
    }

    v70 = v253;
    sub_26C3DDD48(v61, v253, &qword_280497468, &unk_26C46D400);
    if (v66(v61 + v65, 1, v67) == 1)
    {
      sub_26C453DFC(v70, type metadata accessor for LamportTimestamp);
LABEL_235:
      v217 = &qword_280498118;
      v218 = &qword_26C470C28;
      goto LABEL_252;
    }

    v71 = v252;
    sub_26C453E5C(v61 + v65, v252, type metadata accessor for LamportTimestamp);
    v72 = *(v67 + 24);
    v73 = *(v264 + 48);
    v74 = v244;
    sub_26C3DDD48(v70 + v72, v244, &qword_280497458, &unk_26C46D3F0);
    sub_26C3DDD48(v71 + v72, v74 + v73, &qword_280497458, &unk_26C46D3F0);
    v75 = *v260;
    v69 = v230;
    if ((*v260)(v74, 1, v230) != 1)
    {
      v80 = v239;
      sub_26C3DDD48(v74, v239, &qword_280497458, &unk_26C46D3F0);
      if (v75(v74 + v73, 1, v69) == 1)
      {
        sub_26C453DFC(v80, type metadata accessor for PBUUID);
        v77 = v74;
LABEL_249:
        v219 = &qword_2804980C0;
        v220 = &unk_26C470BD0;
      }

      else
      {
        v81 = v238;
        sub_26C453E5C(v74 + v73, v238, type metadata accessor for PBUUID);
        if (*v80 == *v81 && v80[1] == v81[1])
        {
          sub_26C46BD24();
          sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
          v82 = sub_26C46C1C4();
          sub_26C453DFC(v81, type metadata accessor for PBUUID);
          sub_26C453DFC(v80, type metadata accessor for PBUUID);
          v78 = v252;
          sub_26C3DE270(v74, &qword_280497458, &unk_26C46D3F0);
          v79 = v253;
          v61 = v262;
          v48 = v236;
          if ((v82 & 1) == 0)
          {
            goto LABEL_251;
          }

          goto LABEL_18;
        }

        sub_26C453DFC(v81, type metadata accessor for PBUUID);
        sub_26C453DFC(v80, type metadata accessor for PBUUID);
        v219 = &qword_280497458;
        v220 = &unk_26C46D3F0;
        v77 = v74;
      }

      sub_26C3DE270(v77, v219, v220);
      v78 = v252;
      v79 = v253;
      v61 = v262;
LABEL_251:
      sub_26C453DFC(v78, type metadata accessor for LamportTimestamp);
      sub_26C453DFC(v79, type metadata accessor for LamportTimestamp);
      v217 = &qword_280497468;
      v218 = &unk_26C46D400;
LABEL_252:
      sub_26C3DE270(v61, v217, v218);
      goto LABEL_245;
    }

    v76 = v75(v74 + v73, 1, v69) == 1;
    v77 = v74;
    v48 = v236;
    if (!v76)
    {
      goto LABEL_249;
    }

    sub_26C3DE270(v74, &qword_280497458, &unk_26C46D3F0);
    v78 = v252;
    v79 = v253;
    v61 = v262;
LABEL_18:
    if (*v79 != *v78)
    {
      goto LABEL_251;
    }

    sub_26C46BD24();
    sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v83 = sub_26C46C1C4();
    sub_26C453DFC(v78, type metadata accessor for LamportTimestamp);
    sub_26C453DFC(v79, type metadata accessor for LamportTimestamp);
    sub_26C3DE270(v61, &qword_280497468, &unk_26C46D400);
    v68 = v237;
    if ((v83 & 1) == 0)
    {
      goto LABEL_245;
    }

LABEL_20:
    if (*v60 != *v245)
    {
      goto LABEL_245;
    }

    v84 = *(v60 + 8);
    v85 = *(v245 + 1);
    v86 = *(v84 + 16);
    if (v86 != *(v85 + 16))
    {
      goto LABEL_245;
    }

    if (v86 && v84 != v85)
    {
      v87 = 0;
      v88 = (*(v68 + 80) + 32) & ~*(v68 + 80);
      v234 = v84 + v88;
      v233 = v85 + v88;
      v228 = v84;
      v227 = v85;
      v226 = v86;
      while (1)
      {
        v89 = v258;
        if (v87 >= *(v84 + 16))
        {
          __break(1u);
LABEL_254:
          __break(1u);
LABEL_255:
          __break(1u);
LABEL_256:
          __break(1u);
LABEL_257:
          __break(1u);
LABEL_258:
          __break(1u);
LABEL_259:
          __break(1u);
LABEL_260:
          __break(1u);
LABEL_261:
          __break(1u);
LABEL_262:
          __break(1u);
LABEL_263:
          __break(1u);
LABEL_264:
          __break(1u);
LABEL_265:
          __break(1u);
LABEL_266:
          __break(1u);
LABEL_267:
          __break(1u);
LABEL_268:
          __break(1u);
LABEL_269:
          __break(1u);
LABEL_270:
          __break(1u);
LABEL_271:
          __break(1u);
LABEL_272:
          __break(1u);
LABEL_273:
          __break(1u);
LABEL_274:
          __break(1u);
LABEL_275:
          __break(1u);
LABEL_276:
          __break(1u);
LABEL_277:
          __break(1u);
LABEL_278:
          __break(1u);
LABEL_279:
          __break(1u);
LABEL_280:
          __break(1u);
LABEL_281:
          __break(1u);
LABEL_282:
          __break(1u);
LABEL_283:
          __break(1u);
LABEL_284:
          __break(1u);
LABEL_285:
          __break(1u);
LABEL_286:
          __break(1u);
LABEL_287:
          __break(1u);
LABEL_288:
          __break(1u);
LABEL_289:
          __break(1u);
        }

        v90 = *(v68 + 72) * v87;
        sub_26C455474(v234 + v90, v13, type metadata accessor for ValueData);
        if (v87 >= *(v85 + 16))
        {
          goto LABEL_254;
        }

        v91 = v265;
        sub_26C455474(v233 + v90, v265, type metadata accessor for ValueData);
        v92 = *(v266 + 24);
        v93 = *(v264 + 48);
        sub_26C3DDD48(v13 + v92, v89, &qword_280497458, &unk_26C46D3F0);
        sub_26C3DDD48(v91 + v92, v89 + v93, &qword_280497458, &unk_26C46D3F0);
        v94 = *v260;
        if ((*v260)(v89, 1, v69) == 1)
        {
          if (v94(v89 + v93, 1, v69) != 1)
          {
            goto LABEL_227;
          }

          sub_26C3DE270(v89, &qword_280497458, &unk_26C46D3F0);
        }

        else
        {
          v95 = v249;
          sub_26C3DDD48(v89, v249, &qword_280497458, &unk_26C46D3F0);
          if (v94(v89 + v93, 1, v69) == 1)
          {
            sub_26C453DFC(v95, type metadata accessor for PBUUID);
LABEL_227:
            v210 = &qword_2804980C0;
            v211 = &unk_26C470BD0;
LABEL_228:
            v215 = v89;
            goto LABEL_232;
          }

          v96 = v248;
          sub_26C453E5C(v89 + v93, v248, type metadata accessor for PBUUID);
          if (*v95 != *v96 || v95[1] != v96[1])
          {
            sub_26C453DFC(v96, type metadata accessor for PBUUID);
            sub_26C453DFC(v95, type metadata accessor for PBUUID);
            v210 = &qword_280497458;
            v211 = &unk_26C46D3F0;
            goto LABEL_228;
          }

          sub_26C46BD24();
          sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
          v97 = sub_26C46C1C4();
          sub_26C453DFC(v96, type metadata accessor for PBUUID);
          sub_26C453DFC(v95, type metadata accessor for PBUUID);
          sub_26C3DE270(v89, &qword_280497458, &unk_26C46D3F0);
          if ((v97 & 1) == 0)
          {
            goto LABEL_233;
          }
        }

        v98 = *v259;
        v99 = v259[1];
        v101 = *v265;
        v100 = v265[1];
        v102 = v99 >> 62;
        v103 = v100 >> 62;
        if (v99 >> 62 == 3)
        {
          break;
        }

        if (v102 > 1)
        {
          if (v102 == 2)
          {
            v110 = *(v98 + 16);
            v109 = *(v98 + 24);
            v107 = __OFSUB__(v109, v110);
            v104 = v109 - v110;
            if (v107)
            {
              goto LABEL_262;
            }

            goto LABEL_50;
          }

          v104 = 0;
          if (v103 <= 1)
          {
            goto LABEL_51;
          }
        }

        else if (v102)
        {
          LODWORD(v104) = HIDWORD(v98) - v98;
          if (__OFSUB__(HIDWORD(v98), v98))
          {
            goto LABEL_263;
          }

          v104 = v104;
          if (v103 <= 1)
          {
LABEL_51:
            if (v103)
            {
              LODWORD(v108) = HIDWORD(v101) - v101;
              if (__OFSUB__(HIDWORD(v101), v101))
              {
                goto LABEL_259;
              }

              v108 = v108;
            }

            else
            {
              v108 = BYTE6(v100);
            }

            goto LABEL_57;
          }
        }

        else
        {
          v104 = BYTE6(v99);
          if (v103 <= 1)
          {
            goto LABEL_51;
          }
        }

LABEL_44:
        if (v103 != 2)
        {
          if (v104)
          {
            goto LABEL_233;
          }

          goto LABEL_110;
        }

        v106 = *(v101 + 16);
        v105 = *(v101 + 24);
        v107 = __OFSUB__(v105, v106);
        v108 = v105 - v106;
        if (v107)
        {
          goto LABEL_258;
        }

LABEL_57:
        if (v104 != v108)
        {
          goto LABEL_233;
        }

        if (v104 < 1)
        {
          goto LABEL_110;
        }

        if (v102 > 1)
        {
          if (v102 == 2)
          {
            v117 = *(v98 + 16);
            v118 = *(v98 + 24);
            v119 = sub_26C46BA04();
            if (v119)
            {
              v120 = sub_26C46BA24();
              if (__OFSUB__(v117, v120))
              {
                goto LABEL_270;
              }

              v119 += v117 - v120;
            }

            if (__OFSUB__(v118, v117))
            {
              goto LABEL_265;
            }

            sub_26C46BA14();
            v121 = v119;
            v122 = v101;
            v123 = v100;
            v124 = v229;
            goto LABEL_84;
          }

          memset(__s1, 0, 14);
          if (!v103)
          {
LABEL_94:
            __s2 = v101;
            v268 = v100;
            v269 = BYTE2(v100);
            v270 = BYTE3(v100);
            v271 = BYTE4(v100);
            v272 = BYTE5(v100);
            if (memcmp(__s1, &__s2, BYTE6(v100)))
            {
              goto LABEL_233;
            }

            goto LABEL_110;
          }

          if (v103 == 2)
          {
            v128 = *(v101 + 16);
            v129 = *(v101 + 24);
            v115 = sub_26C46BA04();
            if (v115)
            {
              v130 = sub_26C46BA24();
              if (__OFSUB__(v128, v130))
              {
                goto LABEL_287;
              }

              v115 += v128 - v130;
            }

            v107 = __OFSUB__(v129, v128);
            v111 = v129 - v128;
            if (v107)
            {
              goto LABEL_277;
            }

            v116 = sub_26C46BA14();
            if (!v115)
            {
              goto LABEL_292;
            }
          }

          else
          {
            v111 = (v101 >> 32) - v101;
            if (v101 >> 32 < v101)
            {
              goto LABEL_275;
            }

            v134 = sub_26C46BA04();
            if (!v134)
            {
              sub_26C46BA14();
LABEL_291:
              __break(1u);
LABEL_292:
              __break(1u);
LABEL_293:
              __break(1u);
LABEL_294:
              __break(1u);
LABEL_295:
              sub_26C46BA14();
              __break(1u);
LABEL_296:
              sub_26C46BA14();
LABEL_297:
              __break(1u);
LABEL_298:
              __break(1u);
LABEL_299:
              __break(1u);
LABEL_300:
              __break(1u);
LABEL_301:
              result = sub_26C46BA14();
              __break(1u);
              return result;
            }

            v135 = v134;
            v136 = sub_26C46BA24();
            if (__OFSUB__(v101, v136))
            {
              goto LABEL_278;
            }

            v115 = (v101 - v136 + v135);
            v116 = sub_26C46BA14();
            v48 = v236;
            if (!v115)
            {
              goto LABEL_291;
            }
          }
        }

        else
        {
          if (v102)
          {
            v125 = v98;
            if (v98 >> 32 < v98)
            {
              goto LABEL_264;
            }

            v126 = sub_26C46BA04();
            if (v126)
            {
              v127 = sub_26C46BA24();
              if (__OFSUB__(v125, v127))
              {
                goto LABEL_271;
              }

              v126 += v125 - v127;
            }

            v124 = v229;
            sub_26C46BA14();
            v121 = v126;
            v122 = v101;
            v123 = v100;
LABEL_84:
            sub_26C44D924(v121, v122, v123, __s1);
            v229 = v124;
            v48 = v236;
            if ((__s1[0] & 1) == 0)
            {
              goto LABEL_233;
            }

            goto LABEL_110;
          }

          __s1[0] = *v259;
          LOWORD(__s1[1]) = v99;
          BYTE2(__s1[1]) = BYTE2(v99);
          BYTE3(__s1[1]) = BYTE3(v99);
          BYTE4(__s1[1]) = BYTE4(v99);
          BYTE5(__s1[1]) = BYTE5(v99);
          if (!v103)
          {
            goto LABEL_94;
          }

          if (v103 == 1)
          {
            v111 = (v101 >> 32) - v101;
            if (v101 >> 32 < v101)
            {
              goto LABEL_274;
            }

            v112 = sub_26C46BA04();
            if (!v112)
            {
              goto LABEL_295;
            }

            v113 = v112;
            v114 = sub_26C46BA24();
            if (__OFSUB__(v101, v114))
            {
              goto LABEL_279;
            }

            v115 = (v101 - v114 + v113);
            v116 = sub_26C46BA14();
            v48 = v236;
            if (!v115)
            {
              goto LABEL_294;
            }
          }

          else
          {
            v131 = *(v101 + 16);
            v132 = *(v101 + 24);
            v115 = sub_26C46BA04();
            if (v115)
            {
              v133 = sub_26C46BA24();
              if (__OFSUB__(v131, v133))
              {
                goto LABEL_286;
              }

              v115 += v131 - v133;
            }

            v107 = __OFSUB__(v132, v131);
            v111 = v132 - v131;
            if (v107)
            {
              goto LABEL_276;
            }

            v116 = sub_26C46BA14();
            v48 = v236;
            if (!v115)
            {
              goto LABEL_293;
            }
          }
        }

        if (v116 >= v111)
        {
          v137 = v111;
        }

        else
        {
          v137 = v116;
        }

        if (memcmp(__s1, v115, v137))
        {
          goto LABEL_233;
        }

LABEL_110:
        v138 = *(v266 + 28);
        v139 = *(v264 + 48);
        v140 = v254;
        sub_26C3DDD48(v259 + v138, v254, &qword_280497458, &unk_26C46D3F0);
        sub_26C3DDD48(v265 + v138, v140 + v139, &qword_280497458, &unk_26C46D3F0);
        if (v94(v140, 1, v69) == 1)
        {
          if (v94(v140 + v139, 1, v69) != 1)
          {
            goto LABEL_230;
          }

          sub_26C3DE270(v140, &qword_280497458, &unk_26C46D3F0);
        }

        else
        {
          v141 = v247;
          sub_26C3DDD48(v140, v247, &qword_280497458, &unk_26C46D3F0);
          if (v94(v140 + v139, 1, v69) == 1)
          {
            sub_26C453DFC(v141, type metadata accessor for PBUUID);
LABEL_230:
            v210 = &qword_2804980C0;
            v211 = &unk_26C470BD0;
LABEL_231:
            v215 = v140;
LABEL_232:
            sub_26C3DE270(v215, v210, v211);
LABEL_233:
            sub_26C453DFC(v265, type metadata accessor for ValueData);
            v216 = v259;
            goto LABEL_244;
          }

          v142 = v246;
          sub_26C453E5C(v140 + v139, v246, type metadata accessor for PBUUID);
          if (*v141 != *v142 || v141[1] != v142[1])
          {
            sub_26C453DFC(v142, type metadata accessor for PBUUID);
            sub_26C453DFC(v141, type metadata accessor for PBUUID);
            v210 = &qword_280497458;
            v211 = &unk_26C46D3F0;
            goto LABEL_231;
          }

          sub_26C46BD24();
          sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
          v143 = sub_26C46C1C4();
          sub_26C453DFC(v142, type metadata accessor for PBUUID);
          sub_26C453DFC(v141, type metadata accessor for PBUUID);
          sub_26C3DE270(v140, &qword_280497458, &unk_26C46D3F0);
          if ((v143 & 1) == 0)
          {
            goto LABEL_233;
          }
        }

        sub_26C46BD24();
        sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v13 = v259;
        v144 = v265;
        v145 = sub_26C46C1C4();
        sub_26C453DFC(v144, type metadata accessor for ValueData);
        sub_26C453DFC(v13, type metadata accessor for ValueData);
        v60 = v261;
        v61 = v262;
        v68 = v237;
        v84 = v228;
        v85 = v227;
        if ((v145 & 1) == 0)
        {
          goto LABEL_245;
        }

        if (v226 == ++v87)
        {
          goto LABEL_119;
        }
      }

      v104 = 0;
      if (!v98 && v99 == 0xC000000000000000 && v100 >> 62 == 3)
      {
        v104 = 0;
        if (!v101 && v100 == 0xC000000000000000)
        {
          goto LABEL_110;
        }
      }

LABEL_50:
      if (v103 <= 1)
      {
        goto LABEL_51;
      }

      goto LABEL_44;
    }

LABEL_119:
    v146 = *(v60 + 16);
    v147 = *(v245 + 2);
    v148 = *(v146 + 16);
    if (v148 != *(v147 + 16))
    {
      goto LABEL_245;
    }

    if (v148 && v146 != v147)
    {
      break;
    }

LABEL_218:
    sub_26C46BD24();
    sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v52 = v245;
    v209 = sub_26C46C1C4();
    sub_26C453DFC(v52, type metadata accessor for SetChangedMessage);
    sub_26C453DFC(v60, type metadata accessor for SetChangedMessage);
    if (v209)
    {
      v56 = v225 + 1;
      v58 = v224;
      v59 = v223;
      if (v225 + 1 != v235)
      {
        continue;
      }
    }

    return v209 & 1;
  }

  v149 = 0;
  v150 = (*(v68 + 80) + 32) & ~*(v68 + 80);
  v234 = v146 + v150;
  v233 = v147 + v150;
  v228 = v146;
  v227 = v147;
  v226 = v148;
  while (1)
  {
    if (v149 >= *(v146 + 16))
    {
      goto LABEL_256;
    }

    v151 = *(v68 + 72) * v149;
    v152 = v250;
    sub_26C455474(v234 + v151, v250, type metadata accessor for ValueData);
    if (v149 >= *(v147 + 16))
    {
      goto LABEL_257;
    }

    v153 = v263;
    sub_26C455474(v233 + v151, v263, type metadata accessor for ValueData);
    v154 = *(v266 + 24);
    v155 = *(v264 + 48);
    v156 = v255;
    sub_26C3DDD48(v152 + v154, v255, &qword_280497458, &unk_26C46D3F0);
    sub_26C3DDD48(v153 + v154, v156 + v155, &qword_280497458, &unk_26C46D3F0);
    v157 = *v260;
    if ((*v260)(v156, 1, v69) == 1)
    {
      if (v157(v156 + v155, 1, v69) != 1)
      {
        goto LABEL_238;
      }

      sub_26C3DE270(v156, &qword_280497458, &unk_26C46D3F0);
      goto LABEL_132;
    }

    v158 = v243;
    sub_26C3DDD48(v156, v243, &qword_280497458, &unk_26C46D3F0);
    if (v157(v156 + v155, 1, v69) == 1)
    {
      break;
    }

    v159 = v242;
    sub_26C453E5C(v156 + v155, v242, type metadata accessor for PBUUID);
    if (*v158 != *v159 || v158[1] != v159[1])
    {
      sub_26C453DFC(v159, type metadata accessor for PBUUID);
      sub_26C453DFC(v158, type metadata accessor for PBUUID);
      v212 = &qword_280497458;
      v213 = &unk_26C46D3F0;
      v214 = v255;
      goto LABEL_242;
    }

    sub_26C46BD24();
    sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v160 = sub_26C46C1C4();
    sub_26C453DFC(v159, type metadata accessor for PBUUID);
    sub_26C453DFC(v158, type metadata accessor for PBUUID);
    sub_26C3DE270(v255, &qword_280497458, &unk_26C46D3F0);
    if ((v160 & 1) == 0)
    {
      goto LABEL_243;
    }

LABEL_132:
    v161 = *v250;
    v162 = v250[1];
    v164 = *v263;
    v163 = v263[1];
    v165 = v162 >> 62;
    v166 = v163 >> 62;
    if (v162 >> 62 == 3)
    {
      v167 = 0;
      if (!v161 && v162 == 0xC000000000000000 && v163 >> 62 == 3)
      {
        v167 = 0;
        if (!v164 && v163 == 0xC000000000000000)
        {
          goto LABEL_209;
        }
      }

LABEL_154:
      if (v166 <= 1)
      {
        goto LABEL_155;
      }

      goto LABEL_142;
    }

    if (v165 <= 1)
    {
      if (!v165)
      {
        v167 = BYTE6(v162);
        if (v166 <= 1)
        {
          goto LABEL_155;
        }

        goto LABEL_142;
      }

      LODWORD(v167) = HIDWORD(v161) - v161;
      if (__OFSUB__(HIDWORD(v161), v161))
      {
        goto LABEL_266;
      }

      v167 = v167;
      goto LABEL_154;
    }

    if (v165 == 2)
    {
      v172 = *(v161 + 16);
      v171 = *(v161 + 24);
      v107 = __OFSUB__(v171, v172);
      v167 = v171 - v172;
      if (v107)
      {
        goto LABEL_267;
      }

      goto LABEL_154;
    }

    v167 = 0;
    if (v166 <= 1)
    {
LABEL_155:
      if (v166)
      {
        LODWORD(v170) = HIDWORD(v164) - v164;
        if (__OFSUB__(HIDWORD(v164), v164))
        {
          goto LABEL_260;
        }

        v170 = v170;
      }

      else
      {
        v170 = BYTE6(v163);
      }

      goto LABEL_159;
    }

LABEL_142:
    if (v166 != 2)
    {
      if (v167)
      {
        goto LABEL_243;
      }

      goto LABEL_209;
    }

    v169 = *(v164 + 16);
    v168 = *(v164 + 24);
    v107 = __OFSUB__(v168, v169);
    v170 = v168 - v169;
    if (v107)
    {
      goto LABEL_261;
    }

LABEL_159:
    if (v167 != v170)
    {
      goto LABEL_243;
    }

    if (v167 < 1)
    {
      goto LABEL_209;
    }

    if (v165 > 1)
    {
      if (v165 == 2)
      {
        v179 = *(v161 + 16);
        v180 = *(v161 + 24);
        v181 = sub_26C46BA04();
        if (v181)
        {
          v182 = sub_26C46BA24();
          if (__OFSUB__(v179, v182))
          {
            goto LABEL_272;
          }

          v181 += v179 - v182;
        }

        if (__OFSUB__(v180, v179))
        {
          goto LABEL_269;
        }

        sub_26C46BA14();
        v183 = v181;
        v184 = v164;
        v185 = v163;
        v186 = v229;
        goto LABEL_183;
      }

      memset(__s1, 0, 14);
      if (!v166)
      {
LABEL_193:
        __s2 = v164;
        v268 = v163;
        v269 = BYTE2(v163);
        v270 = BYTE3(v163);
        v271 = BYTE4(v163);
        v272 = BYTE5(v163);
        if (memcmp(__s1, &__s2, BYTE6(v163)))
        {
          goto LABEL_243;
        }

        goto LABEL_209;
      }

      if (v166 == 2)
      {
        v190 = *(v164 + 16);
        v191 = *(v164 + 24);
        v177 = sub_26C46BA04();
        if (v177)
        {
          v192 = sub_26C46BA24();
          if (__OFSUB__(v190, v192))
          {
            goto LABEL_289;
          }

          v177 += v190 - v192;
        }

        v107 = __OFSUB__(v191, v190);
        v173 = v191 - v190;
        if (v107)
        {
          goto LABEL_283;
        }

        v178 = sub_26C46BA14();
        v48 = v236;
        if (!v177)
        {
          goto LABEL_298;
        }
      }

      else
      {
        v173 = (v164 >> 32) - v164;
        if (v164 >> 32 < v164)
        {
          goto LABEL_280;
        }

        v196 = sub_26C46BA04();
        if (!v196)
        {
          goto LABEL_296;
        }

        v197 = v196;
        v198 = sub_26C46BA24();
        if (__OFSUB__(v164, v198))
        {
          goto LABEL_284;
        }

        v177 = (v164 - v198 + v197);
        v178 = sub_26C46BA14();
        v48 = v236;
        if (!v177)
        {
          goto LABEL_297;
        }
      }
    }

    else
    {
      if (v165)
      {
        v187 = v161;
        if (v161 >> 32 < v161)
        {
          goto LABEL_268;
        }

        v188 = sub_26C46BA04();
        if (v188)
        {
          v189 = sub_26C46BA24();
          if (__OFSUB__(v187, v189))
          {
            goto LABEL_273;
          }

          v188 += v187 - v189;
        }

        v186 = v229;
        sub_26C46BA14();
        v183 = v188;
        v184 = v164;
        v185 = v163;
LABEL_183:
        sub_26C44D924(v183, v184, v185, __s1);
        v229 = v186;
        v48 = v236;
        if ((__s1[0] & 1) == 0)
        {
          goto LABEL_243;
        }

        goto LABEL_209;
      }

      __s1[0] = *v250;
      LOWORD(__s1[1]) = v162;
      BYTE2(__s1[1]) = BYTE2(v162);
      BYTE3(__s1[1]) = BYTE3(v162);
      BYTE4(__s1[1]) = BYTE4(v162);
      BYTE5(__s1[1]) = BYTE5(v162);
      if (!v166)
      {
        goto LABEL_193;
      }

      if (v166 == 1)
      {
        v173 = (v164 >> 32) - v164;
        if (v164 >> 32 < v164)
        {
          goto LABEL_281;
        }

        v174 = sub_26C46BA04();
        if (!v174)
        {
          goto LABEL_301;
        }

        v175 = v174;
        v176 = sub_26C46BA24();
        if (__OFSUB__(v164, v176))
        {
          goto LABEL_285;
        }

        v177 = (v164 - v176 + v175);
        v178 = sub_26C46BA14();
        v48 = v236;
        if (!v177)
        {
          goto LABEL_300;
        }
      }

      else
      {
        v193 = *(v164 + 16);
        v194 = *(v164 + 24);
        v177 = sub_26C46BA04();
        if (v177)
        {
          v195 = sub_26C46BA24();
          if (__OFSUB__(v193, v195))
          {
            goto LABEL_288;
          }

          v177 += v193 - v195;
        }

        v107 = __OFSUB__(v194, v193);
        v173 = v194 - v193;
        if (v107)
        {
          goto LABEL_282;
        }

        v178 = sub_26C46BA14();
        v48 = v236;
        if (!v177)
        {
          goto LABEL_299;
        }
      }
    }

    if (v178 >= v173)
    {
      v199 = v173;
    }

    else
    {
      v199 = v178;
    }

    if (memcmp(__s1, v177, v199))
    {
      goto LABEL_243;
    }

LABEL_209:
    v200 = *(v266 + 28);
    v201 = *(v264 + 48);
    v202 = v251;
    sub_26C3DDD48(v250 + v200, v251, &qword_280497458, &unk_26C46D3F0);
    sub_26C3DDD48(v263 + v200, v202 + v201, &qword_280497458, &unk_26C46D3F0);
    if (v157(v202, 1, v69) == 1)
    {
      if (v157(v202 + v201, 1, v69) != 1)
      {
        goto LABEL_240;
      }

      sub_26C3DE270(v202, &qword_280497458, &unk_26C46D3F0);
    }

    else
    {
      v203 = v241;
      sub_26C3DDD48(v202, v241, &qword_280497458, &unk_26C46D3F0);
      if (v157(v202 + v201, 1, v69) == 1)
      {
        sub_26C453DFC(v203, type metadata accessor for PBUUID);
LABEL_240:
        v212 = &qword_2804980C0;
        v213 = &unk_26C470BD0;
        goto LABEL_241;
      }

      v204 = v240;
      sub_26C453E5C(v202 + v201, v240, type metadata accessor for PBUUID);
      if (*v203 != *v204 || v203[1] != v204[1])
      {
        sub_26C453DFC(v204, type metadata accessor for PBUUID);
        sub_26C453DFC(v203, type metadata accessor for PBUUID);
        v212 = &qword_280497458;
        v213 = &unk_26C46D3F0;
LABEL_241:
        v214 = v202;
        goto LABEL_242;
      }

      sub_26C46BD24();
      sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v205 = sub_26C46C1C4();
      sub_26C453DFC(v204, type metadata accessor for PBUUID);
      sub_26C453DFC(v203, type metadata accessor for PBUUID);
      sub_26C3DE270(v202, &qword_280497458, &unk_26C46D3F0);
      if ((v205 & 1) == 0)
      {
        goto LABEL_243;
      }
    }

    sub_26C46BD24();
    sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v206 = v250;
    v207 = v263;
    v208 = sub_26C46C1C4();
    sub_26C453DFC(v207, type metadata accessor for ValueData);
    sub_26C453DFC(v206, type metadata accessor for ValueData);
    v13 = v259;
    v60 = v261;
    v61 = v262;
    v68 = v237;
    v146 = v228;
    v147 = v227;
    if ((v208 & 1) == 0)
    {
      goto LABEL_245;
    }

    if (v226 == ++v149)
    {
      goto LABEL_218;
    }
  }

  sub_26C453DFC(v158, type metadata accessor for PBUUID);
LABEL_238:
  v212 = &qword_2804980C0;
  v213 = &unk_26C470BD0;
  v214 = v156;
LABEL_242:
  sub_26C3DE270(v214, v212, v213);
LABEL_243:
  sub_26C453DFC(v263, type metadata accessor for ValueData);
  v216 = v250;
LABEL_244:
  sub_26C453DFC(v216, type metadata accessor for ValueData);
  v60 = v261;
LABEL_245:
  sub_26C453DFC(v245, type metadata accessor for SetChangedMessage);
  sub_26C453DFC(v60, type metadata accessor for SetChangedMessage);
LABEL_246:
  v209 = 0;
  return v209 & 1;
}

uint64_t sub_26C44D76C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DictionaryChangedMessage(0) - 8;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = (&v18 - v9);
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_26C455474(v13, v10, type metadata accessor for DictionaryChangedMessage);
        sub_26C455474(v14, v7, type metadata accessor for DictionaryChangedMessage);
        v16 = sub_26C451934(v10, v7);
        sub_26C453DFC(v7, type metadata accessor for DictionaryChangedMessage);
        sub_26C453DFC(v10, type metadata accessor for DictionaryChangedMessage);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_26C44D924@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_26C46BA04();
    if (v10)
    {
      v11 = sub_26C46BA24();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_26C46BA14();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_26C46BA04();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_26C46BA24();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_26C46BA14();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_26C44DB54(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_26C44DCE4(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_26C3DDEA8(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_26C44D924(v13, a3, a4, &v12);
  v10 = v4;
  sub_26C3DDEA8(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_26C44DCE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_26C46BA04();
  v11 = result;
  if (result)
  {
    result = sub_26C46BA24();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_26C46BA14();
  sub_26C44D924(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_26C44DD9C(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_26C3DDDB0(a3, a4);
          return sub_26C44DB54(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_26C44DF04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBUUID(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v37 = (&v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v39 = (&v37 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v38 = (&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v13 = (&v37 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980C0, &unk_26C470BD0);
  v15 = MEMORY[0x28223BE20](v14);
  v41 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v37 - v17;
  v44 = type metadata accessor for ModelData(0);
  v19 = *(v44 + 32);
  v40 = v14;
  v20 = *(v14 + 48);
  v42 = a1;
  sub_26C3DDD48(a1 + v19, v18, &qword_280497458, &unk_26C46D3F0);
  v43 = a2;
  sub_26C3DDD48(a2 + v19, &v18[v20], &qword_280497458, &unk_26C46D3F0);
  v21 = *(v5 + 48);
  if (v21(v18, 1, v4) != 1)
  {
    sub_26C3DDD48(v18, v13, &qword_280497458, &unk_26C46D3F0);
    if (v21(&v18[v20], 1, v4) == 1)
    {
      v27 = v13;
LABEL_19:
      sub_26C453DFC(v27, type metadata accessor for PBUUID);
      goto LABEL_20;
    }

    v28 = v39;
    sub_26C453E5C(&v18[v20], v39, type metadata accessor for PBUUID);
    if (*v13 == *v28 && v13[1] == v28[1])
    {
      sub_26C46BD24();
      sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v29 = sub_26C46C1C4();
      sub_26C453DFC(v28, type metadata accessor for PBUUID);
      if (v29)
      {
        sub_26C453DFC(v13, type metadata accessor for PBUUID);
        goto LABEL_3;
      }
    }

    else
    {
      sub_26C453DFC(v28, type metadata accessor for PBUUID);
    }

    v30 = v13;
    goto LABEL_27;
  }

  if (v21(&v18[v20], 1, v4) != 1)
  {
LABEL_20:
    v32 = &qword_2804980C0;
    v33 = &unk_26C470BD0;
LABEL_28:
    sub_26C3DE270(v18, v32, v33);
LABEL_29:
    v26 = 0;
    return v26 & 1;
  }

LABEL_3:
  sub_26C3DE270(v18, &qword_280497458, &unk_26C46D3F0);
  v22 = *(v44 + 36);
  v18 = v41;
  v23 = *(v40 + 48);
  v24 = v42;
  sub_26C3DDD48(v42 + v22, v41, &qword_280497458, &unk_26C46D3F0);
  v25 = v43;
  sub_26C3DDD48(v43 + v22, &v18[v23], &qword_280497458, &unk_26C46D3F0);
  if (v21(v18, 1, v4) != 1)
  {
    v31 = v38;
    sub_26C3DDD48(v18, v38, &qword_280497458, &unk_26C46D3F0);
    if (v21(&v18[v23], 1, v4) == 1)
    {
      v27 = v31;
      goto LABEL_19;
    }

    v34 = v37;
    sub_26C453E5C(&v18[v23], v37, type metadata accessor for PBUUID);
    if (*v31 == *v34 && v31[1] == v34[1])
    {
      sub_26C46BD24();
      sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v35 = sub_26C46C1C4();
      sub_26C453DFC(v34, type metadata accessor for PBUUID);
      if (v35)
      {
        sub_26C453DFC(v31, type metadata accessor for PBUUID);
        goto LABEL_5;
      }
    }

    else
    {
      sub_26C453DFC(v34, type metadata accessor for PBUUID);
    }

    v30 = v31;
LABEL_27:
    sub_26C453DFC(v30, type metadata accessor for PBUUID);
    v32 = &qword_280497458;
    v33 = &unk_26C46D3F0;
    goto LABEL_28;
  }

  if (v21(&v18[v23], 1, v4) != 1)
  {
    goto LABEL_20;
  }

LABEL_5:
  sub_26C3DE270(v18, &qword_280497458, &unk_26C46D3F0);
  if (*v24 != *v25 || (sub_26C448318(*(v24 + 8), *(v25 + 8)) & 1) == 0 || (sub_26C448838(*(v24 + 16), *(v25 + 16)) & 1) == 0)
  {
    goto LABEL_29;
  }

  sub_26C46BD24();
  sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v26 = sub_26C46C1C4();
  return v26 & 1;
}

uint64_t sub_26C44E5E0(void *a1, void *a2)
{
  v4 = type metadata accessor for PBUUID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v26 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v24 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980C0, &unk_26C470BD0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - v12;
  v25 = type metadata accessor for ModelData.OwnershipUUIDToAccountIdentifier(0);
  v14 = *(v25 + 24);
  v15 = *(v11 + 56);
  v27 = a1;
  sub_26C3DDD48(a1 + v14, v13, &qword_280497458, &unk_26C46D3F0);
  sub_26C3DDD48(a2 + v14, &v13[v15], &qword_280497458, &unk_26C46D3F0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      goto LABEL_3;
    }

    goto LABEL_9;
  }

  sub_26C3DDD48(v13, v9, &qword_280497458, &unk_26C46D3F0);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_26C453DFC(v9, type metadata accessor for PBUUID);
LABEL_9:
    v19 = &qword_2804980C0;
    v20 = &unk_26C470BD0;
LABEL_16:
    sub_26C3DE270(v13, v19, v20);
    v18 = 0;
    return v18 & 1;
  }

  v21 = v26;
  sub_26C453E5C(&v13[v15], v26, type metadata accessor for PBUUID);
  if (*v9 != *v21 || v9[1] != v21[1])
  {
    sub_26C453DFC(v21, type metadata accessor for PBUUID);
    goto LABEL_15;
  }

  sub_26C46BD24();
  sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v22 = sub_26C46C1C4();
  sub_26C453DFC(v21, type metadata accessor for PBUUID);
  if ((v22 & 1) == 0)
  {
LABEL_15:
    sub_26C453DFC(v9, type metadata accessor for PBUUID);
    v19 = &qword_280497458;
    v20 = &unk_26C46D3F0;
    goto LABEL_16;
  }

  sub_26C453DFC(v9, type metadata accessor for PBUUID);
LABEL_3:
  sub_26C3DE270(v13, &qword_280497458, &unk_26C46D3F0);
  if (*v27 == *a2 && v27[1] == a2[1] || (v17 = sub_26C46C764(), v18 = 0, (v17 & 1) != 0))
  {
    sub_26C46BD24();
    sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v18 = sub_26C46C1C4();
  }

  return v18 & 1;
}

uint64_t sub_26C44EA1C(void *a1, uint64_t *a2)
{
  v68 = type metadata accessor for PBUUID(0);
  v4 = *(v68 - 8);
  v5 = MEMORY[0x28223BE20](v68);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v59 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = (&v59 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v66 = (&v59 - v18);
  MEMORY[0x28223BE20](v17);
  v20 = (&v59 - v19);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980C0, &unk_26C470BD0);
  v21 = MEMORY[0x28223BE20](v67);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v59 - v23;
  MEMORY[0x28223BE20](v22);
  v27 = &v59 - v26;
  v28 = *a1;
  v29 = *a2;
  if (*(a2 + 8) != 1)
  {
    if (v28 != v29)
    {
      goto LABEL_31;
    }

    goto LABEL_11;
  }

  if (!v29)
  {
    if (!v28)
    {
      goto LABEL_11;
    }

LABEL_31:
    v46 = 0;
    return v46 & 1;
  }

  if (v29 != 1)
  {
    if (v28 == 2)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

  if (v28 != 1)
  {
    goto LABEL_31;
  }

LABEL_11:
  v61 = v16;
  v62 = v10;
  v63 = v25;
  v60 = v7;
  v30 = type metadata accessor for OwnershipChangeBroadcastMessage(0);
  v31 = *(v30 + 32);
  v32 = *(v67 + 48);
  v64 = a1;
  v65 = v30;
  sub_26C3DDD48(a1 + v31, v27, &qword_280497458, &unk_26C46D3F0);
  v33 = a2 + v31;
  v34 = a2;
  sub_26C3DDD48(v33, &v27[v32], &qword_280497458, &unk_26C46D3F0);
  v35 = *(v4 + 48);
  v36 = v68;
  if (v35(v27, 1, v68) == 1)
  {
    if (v35(&v27[v32], 1, v36) == 1)
    {
      goto LABEL_13;
    }

    goto LABEL_22;
  }

  sub_26C3DDD48(v27, v20, &qword_280497458, &unk_26C46D3F0);
  if (v35(&v27[v32], 1, v36) == 1)
  {
    sub_26C453DFC(v20, type metadata accessor for PBUUID);
LABEL_22:
    v47 = &qword_2804980C0;
    v48 = &unk_26C470BD0;
LABEL_29:
    v50 = v27;
LABEL_30:
    sub_26C3DE270(v50, v47, v48);
    goto LABEL_31;
  }

  sub_26C453E5C(&v27[v32], v12, type metadata accessor for PBUUID);
  if (*v20 != *v12 || v20[1] != v12[1])
  {
    sub_26C453DFC(v12, type metadata accessor for PBUUID);
    goto LABEL_28;
  }

  sub_26C46BD24();
  sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v49 = sub_26C46C1C4();
  sub_26C453DFC(v12, type metadata accessor for PBUUID);
  if ((v49 & 1) == 0)
  {
LABEL_28:
    sub_26C453DFC(v20, type metadata accessor for PBUUID);
    v47 = &qword_280497458;
    v48 = &unk_26C46D3F0;
    goto LABEL_29;
  }

  sub_26C453DFC(v20, type metadata accessor for PBUUID);
LABEL_13:
  sub_26C3DE270(v27, &qword_280497458, &unk_26C46D3F0);
  v37 = v64;
  v38 = *(v65 + 36);
  v39 = *(v67 + 48);
  sub_26C3DDD48(v64 + v38, v24, &qword_280497458, &unk_26C46D3F0);
  v40 = v68;
  sub_26C3DDD48(v34 + v38, &v24[v39], &qword_280497458, &unk_26C46D3F0);
  if (v35(v24, 1, v40) == 1)
  {
    v41 = v35(&v24[v39], 1, v40);
    v42 = v63;
    if (v41 == 1)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

  v52 = v66;
  sub_26C3DDD48(v24, v66, &qword_280497458, &unk_26C46D3F0);
  v53 = v35(&v24[v39], 1, v40);
  v42 = v63;
  if (v53 == 1)
  {
    sub_26C453DFC(v52, type metadata accessor for PBUUID);
LABEL_35:
    v47 = &qword_2804980C0;
    v48 = &unk_26C470BD0;
    v50 = v24;
    goto LABEL_30;
  }

  v54 = v62;
  sub_26C453E5C(&v24[v39], v62, type metadata accessor for PBUUID);
  if (*v52 != *v54 || v52[1] != v54[1])
  {
    sub_26C453DFC(v54, type metadata accessor for PBUUID);
    goto LABEL_41;
  }

  sub_26C46BD24();
  sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v55 = sub_26C46C1C4();
  sub_26C453DFC(v54, type metadata accessor for PBUUID);
  if ((v55 & 1) == 0)
  {
LABEL_41:
    sub_26C453DFC(v52, type metadata accessor for PBUUID);
    v47 = &qword_280497458;
    v48 = &unk_26C46D3F0;
    v50 = v24;
    goto LABEL_30;
  }

  sub_26C453DFC(v52, type metadata accessor for PBUUID);
LABEL_15:
  sub_26C3DE270(v24, &qword_280497458, &unk_26C46D3F0);
  v43 = *(v65 + 40);
  v44 = *(v67 + 48);
  sub_26C3DDD48(v37 + v43, v42, &qword_280497458, &unk_26C46D3F0);
  v45 = v68;
  sub_26C3DDD48(v34 + v43, v42 + v44, &qword_280497458, &unk_26C46D3F0);
  if (v35(v42, 1, v45) != 1)
  {
    v56 = v61;
    sub_26C3DDD48(v42, v61, &qword_280497458, &unk_26C46D3F0);
    if (v35((v42 + v44), 1, v45) != 1)
    {
      v57 = v60;
      sub_26C453E5C(v42 + v44, v60, type metadata accessor for PBUUID);
      if (*v56 == *v57 && v56[1] == v57[1])
      {
        sub_26C46BD24();
        sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v58 = sub_26C46C1C4();
        sub_26C453DFC(v57, type metadata accessor for PBUUID);
        if (v58)
        {
          sub_26C453DFC(v56, type metadata accessor for PBUUID);
          goto LABEL_17;
        }
      }

      else
      {
        sub_26C453DFC(v57, type metadata accessor for PBUUID);
      }

      sub_26C453DFC(v56, type metadata accessor for PBUUID);
      v47 = &qword_280497458;
      v48 = &unk_26C46D3F0;
      v50 = v42;
      goto LABEL_30;
    }

    sub_26C453DFC(v56, type metadata accessor for PBUUID);
    goto LABEL_44;
  }

  if (v35((v42 + v44), 1, v45) != 1)
  {
LABEL_44:
    v47 = &qword_2804980C0;
    v48 = &unk_26C470BD0;
    v50 = v42;
    goto LABEL_30;
  }

LABEL_17:
  sub_26C3DE270(v42, &qword_280497458, &unk_26C46D3F0);
  if (*(v37 + 3) != *(v34 + 3) || *(v37 + 16) != *(v34 + 16))
  {
    goto LABEL_31;
  }

  sub_26C46BD24();
  sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v46 = sub_26C46C1C4();
  return v46 & 1;
}

uint64_t sub_26C44F40C(void *a1, uint64_t *a2)
{
  v66 = type metadata accessor for PBUUID(0);
  v4 = *(v66 - 8);
  v5 = MEMORY[0x28223BE20](v66);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v57 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = (&v57 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v64 = (&v57 - v18);
  MEMORY[0x28223BE20](v17);
  v20 = (&v57 - v19);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980C0, &unk_26C470BD0);
  v21 = MEMORY[0x28223BE20](v65);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v57 - v23;
  MEMORY[0x28223BE20](v22);
  v27 = &v57 - v26;
  v28 = *a1;
  v29 = *a2;
  if (*(a2 + 8) != 1)
  {
    if (v28 != v29)
    {
      goto LABEL_30;
    }

    goto LABEL_11;
  }

  if (!v29)
  {
    if (!v28)
    {
      goto LABEL_11;
    }

LABEL_30:
    v45 = 0;
    return v45 & 1;
  }

  if (v29 != 1)
  {
    if (v28 == 2)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

  if (v28 != 1)
  {
    goto LABEL_30;
  }

LABEL_11:
  v60 = v25;
  v61 = v10;
  v58 = v7;
  v59 = v16;
  v30 = type metadata accessor for OwnershipHandoffRequestMessage(0);
  v31 = *(v30 + 28);
  v32 = *(v65 + 48);
  v62 = a1;
  v63 = v30;
  sub_26C3DDD48(a1 + v31, v27, &qword_280497458, &unk_26C46D3F0);
  v33 = a2 + v31;
  v34 = a2;
  sub_26C3DDD48(v33, &v27[v32], &qword_280497458, &unk_26C46D3F0);
  v35 = *(v4 + 48);
  v36 = v66;
  if (v35(v27, 1, v66) == 1)
  {
    if (v35(&v27[v32], 1, v36) == 1)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

  sub_26C3DDD48(v27, v20, &qword_280497458, &unk_26C46D3F0);
  if (v35(&v27[v32], 1, v36) == 1)
  {
    sub_26C453DFC(v20, type metadata accessor for PBUUID);
LABEL_21:
    v46 = &qword_2804980C0;
    v47 = &unk_26C470BD0;
LABEL_28:
    v49 = v27;
LABEL_29:
    sub_26C3DE270(v49, v46, v47);
    goto LABEL_30;
  }

  sub_26C453E5C(&v27[v32], v12, type metadata accessor for PBUUID);
  if (*v20 != *v12 || v20[1] != v12[1])
  {
    sub_26C453DFC(v12, type metadata accessor for PBUUID);
    goto LABEL_27;
  }

  sub_26C46BD24();
  sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v48 = sub_26C46C1C4();
  sub_26C453DFC(v12, type metadata accessor for PBUUID);
  if ((v48 & 1) == 0)
  {
LABEL_27:
    sub_26C453DFC(v20, type metadata accessor for PBUUID);
    v46 = &qword_280497458;
    v47 = &unk_26C46D3F0;
    goto LABEL_28;
  }

  sub_26C453DFC(v20, type metadata accessor for PBUUID);
LABEL_13:
  sub_26C3DE270(v27, &qword_280497458, &unk_26C46D3F0);
  v37 = v62;
  v38 = *(v63 + 32);
  v39 = *(v65 + 48);
  sub_26C3DDD48(v62 + v38, v24, &qword_280497458, &unk_26C46D3F0);
  v40 = v66;
  sub_26C3DDD48(v34 + v38, &v24[v39], &qword_280497458, &unk_26C46D3F0);
  if (v35(v24, 1, v40) == 1)
  {
    if (v35(&v24[v39], 1, v40) == 1)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

  v51 = v64;
  sub_26C3DDD48(v24, v64, &qword_280497458, &unk_26C46D3F0);
  if (v35(&v24[v39], 1, v40) == 1)
  {
    sub_26C453DFC(v51, type metadata accessor for PBUUID);
LABEL_34:
    v46 = &qword_2804980C0;
    v47 = &unk_26C470BD0;
    v49 = v24;
    goto LABEL_29;
  }

  v52 = v61;
  sub_26C453E5C(&v24[v39], v61, type metadata accessor for PBUUID);
  if (*v51 != *v52 || v51[1] != v52[1])
  {
    sub_26C453DFC(v52, type metadata accessor for PBUUID);
    goto LABEL_40;
  }

  sub_26C46BD24();
  sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v53 = sub_26C46C1C4();
  sub_26C453DFC(v52, type metadata accessor for PBUUID);
  if ((v53 & 1) == 0)
  {
LABEL_40:
    sub_26C453DFC(v51, type metadata accessor for PBUUID);
    v46 = &qword_280497458;
    v47 = &unk_26C46D3F0;
    v49 = v24;
    goto LABEL_29;
  }

  sub_26C453DFC(v51, type metadata accessor for PBUUID);
LABEL_15:
  sub_26C3DE270(v24, &qword_280497458, &unk_26C46D3F0);
  if (*(v37 + 3) != *(v34 + 3))
  {
    goto LABEL_30;
  }

  v41 = *(v63 + 36);
  v42 = *(v65 + 48);
  v43 = v60;
  sub_26C3DDD48(v37 + v41, v60, &qword_280497458, &unk_26C46D3F0);
  v44 = v66;
  sub_26C3DDD48(v34 + v41, v43 + v42, &qword_280497458, &unk_26C46D3F0);
  if (v35(v43, 1, v44) != 1)
  {
    v54 = v59;
    sub_26C3DDD48(v43, v59, &qword_280497458, &unk_26C46D3F0);
    if (v35((v43 + v42), 1, v44) != 1)
    {
      v55 = v58;
      sub_26C453E5C(v43 + v42, v58, type metadata accessor for PBUUID);
      if (*v54 == *v55 && v54[1] == v55[1])
      {
        sub_26C46BD24();
        sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v56 = sub_26C46C1C4();
        sub_26C453DFC(v55, type metadata accessor for PBUUID);
        if (v56)
        {
          sub_26C453DFC(v54, type metadata accessor for PBUUID);
          goto LABEL_18;
        }
      }

      else
      {
        sub_26C453DFC(v55, type metadata accessor for PBUUID);
      }

      sub_26C453DFC(v54, type metadata accessor for PBUUID);
      v46 = &qword_280497458;
      v47 = &unk_26C46D3F0;
      v49 = v43;
      goto LABEL_29;
    }

    sub_26C453DFC(v54, type metadata accessor for PBUUID);
    goto LABEL_43;
  }

  if (v35((v43 + v42), 1, v44) != 1)
  {
LABEL_43:
    v46 = &qword_2804980C0;
    v47 = &unk_26C470BD0;
    v49 = v43;
    goto LABEL_29;
  }

LABEL_18:
  sub_26C3DE270(v43, &qword_280497458, &unk_26C46D3F0);
  sub_26C46BD24();
  sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v45 = sub_26C46C1C4();
  return v45 & 1;
}

uint64_t sub_26C44FDEC(void *a1, uint64_t *a2)
{
  v72 = type metadata accessor for PBUUID(0);
  v4 = *(v72 - 8);
  v5 = MEMORY[0x28223BE20](v72);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v70 = (&v63 - v9);
  MEMORY[0x28223BE20](v8);
  v11 = (&v63 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v71 = (&v63 - v17);
  MEMORY[0x28223BE20](v16);
  v19 = (&v63 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980C0, &unk_26C470BD0);
  v21 = MEMORY[0x28223BE20](v20);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v63 - v23;
  MEMORY[0x28223BE20](v22);
  v27 = &v63 - v26;
  v28 = *a1;
  v29 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v29)
    {
      if (v29 == 1)
      {
        if (v28 != 1)
        {
          goto LABEL_33;
        }
      }

      else if (v28 != 2)
      {
        goto LABEL_33;
      }
    }

    else if (v28)
    {
      goto LABEL_33;
    }
  }

  else if (v28 != v29)
  {
    goto LABEL_33;
  }

  v65 = v15;
  v66 = v25;
  v64 = v7;
  v30 = type metadata accessor for OwnershipChangeRequestMessage(0);
  v68 = v20;
  v69 = v30;
  v31 = *(v30 + 32);
  v32 = *(v20 + 48);
  v67 = a1;
  sub_26C3DDD48(a1 + v31, v27, &qword_280497458, &unk_26C46D3F0);
  v33 = a2 + v31;
  v34 = a2;
  sub_26C3DDD48(v33, &v27[v32], &qword_280497458, &unk_26C46D3F0);
  v35 = *(v4 + 48);
  v36 = v72;
  if (v35(v27, 1, v72) == 1)
  {
    if (v35(&v27[v32], 1, v36) == 1)
    {
      goto LABEL_13;
    }

LABEL_23:
    v43 = &qword_2804980C0;
    v44 = &unk_26C470BD0;
LABEL_31:
    v47 = v27;
LABEL_32:
    sub_26C3DE270(v47, v43, v44);
    goto LABEL_33;
  }

  sub_26C3DDD48(v27, v19, &qword_280497458, &unk_26C46D3F0);
  if (v35(&v27[v32], 1, v36) == 1)
  {
    sub_26C453DFC(v19, type metadata accessor for PBUUID);
    goto LABEL_23;
  }

  sub_26C453E5C(&v27[v32], v11, type metadata accessor for PBUUID);
  if (*v19 != *v11 || v19[1] != v11[1])
  {
    sub_26C453DFC(v11, type metadata accessor for PBUUID);
    goto LABEL_29;
  }

  sub_26C46BD24();
  sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v45 = sub_26C46C1C4();
  sub_26C453DFC(v11, type metadata accessor for PBUUID);
  if ((v45 & 1) == 0)
  {
LABEL_29:
    v46 = v19;
LABEL_30:
    sub_26C453DFC(v46, type metadata accessor for PBUUID);
    v43 = &qword_280497458;
    v44 = &unk_26C46D3F0;
    goto LABEL_31;
  }

  sub_26C453DFC(v19, type metadata accessor for PBUUID);
LABEL_13:
  sub_26C3DE270(v27, &qword_280497458, &unk_26C46D3F0);
  v37 = *(v69 + 36);
  v38 = *(v68 + 48);
  v39 = v67;
  sub_26C3DDD48(v67 + v37, v24, &qword_280497458, &unk_26C46D3F0);
  v40 = v72;
  sub_26C3DDD48(v34 + v37, &v24[v38], &qword_280497458, &unk_26C46D3F0);
  if (v35(v24, 1, v40) != 1)
  {
    v50 = v71;
    sub_26C3DDD48(v24, v71, &qword_280497458, &unk_26C46D3F0);
    if (v35(&v24[v38], 1, v40) != 1)
    {
      v51 = v70;
      sub_26C453E5C(&v24[v38], v70, type metadata accessor for PBUUID);
      if (*v50 == *v51 && v50[1] == v51[1])
      {
        sub_26C46BD24();
        sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v52 = sub_26C46C1C4();
        sub_26C453DFC(v51, type metadata accessor for PBUUID);
        if (v52)
        {
          sub_26C453DFC(v50, type metadata accessor for PBUUID);
          goto LABEL_15;
        }
      }

      else
      {
        sub_26C453DFC(v51, type metadata accessor for PBUUID);
      }

      sub_26C453DFC(v50, type metadata accessor for PBUUID);
      v43 = &qword_280497458;
      v44 = &unk_26C46D3F0;
      v47 = v24;
      goto LABEL_32;
    }

    sub_26C453DFC(v50, type metadata accessor for PBUUID);
LABEL_37:
    v43 = &qword_2804980C0;
    v44 = &unk_26C470BD0;
    v47 = v24;
    goto LABEL_32;
  }

  if (v35(&v24[v38], 1, v40) != 1)
  {
    goto LABEL_37;
  }

LABEL_15:
  sub_26C3DE270(v24, &qword_280497458, &unk_26C46D3F0);
  v41 = v39[2];
  v42 = v34[2];
  if (*(v39 + 24))
  {
    v41 = v41 != 0;
  }

  if (*(v34 + 24) != 1)
  {
    if (v41 != v42)
    {
      goto LABEL_33;
    }

    goto LABEL_47;
  }

  if (!v42)
  {
    if (v41)
    {
      goto LABEL_33;
    }

    goto LABEL_47;
  }

  if (v41 == 1)
  {
LABEL_47:
    if (*(v39 + 7) != *(v34 + 7))
    {
      goto LABEL_33;
    }

    v53 = *(v69 + 40);
    v54 = *(v68 + 48);
    v55 = v66;
    sub_26C3DDD48(v39 + v53, v66, &qword_280497458, &unk_26C46D3F0);
    v56 = v72;
    sub_26C3DDD48(v34 + v53, v55 + v54, &qword_280497458, &unk_26C46D3F0);
    if (v35(v55, 1, v56) == 1)
    {
      v57 = v35((v55 + v54), 1, v56) == 1;
      v47 = v55;
      if (!v57)
      {
        goto LABEL_54;
      }

LABEL_51:
      sub_26C3DE270(v47, &qword_280497458, &unk_26C46D3F0);
      sub_26C46BD24();
      sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v48 = sub_26C46C1C4();
      return v48 & 1;
    }

    v58 = v56;
    v59 = v65;
    sub_26C3DDD48(v55, v65, &qword_280497458, &unk_26C46D3F0);
    if (v35((v55 + v54), 1, v58) == 1)
    {
      sub_26C453DFC(v59, type metadata accessor for PBUUID);
      v47 = v55;
LABEL_54:
      v43 = &qword_2804980C0;
      v44 = &unk_26C470BD0;
      goto LABEL_32;
    }

    v60 = v64;
    sub_26C453E5C(v55 + v54, v64, type metadata accessor for PBUUID);
    v27 = v55;
    v61 = v59;
    if (*v59 == *v60 && v59[1] == v60[1])
    {
      sub_26C46BD24();
      sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v62 = sub_26C46C1C4();
      sub_26C453DFC(v60, type metadata accessor for PBUUID);
      if (v62)
      {
        sub_26C453DFC(v61, type metadata accessor for PBUUID);
        v47 = v27;
        goto LABEL_51;
      }
    }

    else
    {
      sub_26C453DFC(v60, type metadata accessor for PBUUID);
    }

    v46 = v61;
    goto LABEL_30;
  }

LABEL_33:
  v48 = 0;
  return v48 & 1;
}

uint64_t sub_26C45080C(void *a1, uint64_t *a2)
{
  v66 = type metadata accessor for PBUUID(0);
  v4 = *(v66 - 8);
  v5 = MEMORY[0x28223BE20](v66);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v57 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = (&v57 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v64 = (&v57 - v18);
  MEMORY[0x28223BE20](v17);
  v20 = (&v57 - v19);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980C0, &unk_26C470BD0);
  v21 = MEMORY[0x28223BE20](v65);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v57 - v23;
  MEMORY[0x28223BE20](v22);
  v27 = &v57 - v26;
  v28 = *a1;
  v29 = *a2;
  if (*(a2 + 8) != 1)
  {
    if (v28 != v29)
    {
      goto LABEL_30;
    }

    goto LABEL_11;
  }

  if (!v29)
  {
    if (!v28)
    {
      goto LABEL_11;
    }

LABEL_30:
    v45 = 0;
    return v45 & 1;
  }

  if (v29 != 1)
  {
    if (v28 == 2)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

  if (v28 != 1)
  {
    goto LABEL_30;
  }

LABEL_11:
  v60 = v25;
  v61 = v10;
  v58 = v7;
  v59 = v16;
  v30 = type metadata accessor for OwnershipHandoffReplyMessage(0);
  v31 = *(v30 + 28);
  v32 = *(v65 + 48);
  v62 = a1;
  v63 = v30;
  sub_26C3DDD48(a1 + v31, v27, &qword_280497458, &unk_26C46D3F0);
  v33 = a2 + v31;
  v34 = a2;
  sub_26C3DDD48(v33, &v27[v32], &qword_280497458, &unk_26C46D3F0);
  v35 = *(v4 + 48);
  v36 = v66;
  if (v35(v27, 1, v66) == 1)
  {
    if (v35(&v27[v32], 1, v36) == 1)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

  sub_26C3DDD48(v27, v20, &qword_280497458, &unk_26C46D3F0);
  if (v35(&v27[v32], 1, v36) == 1)
  {
    sub_26C453DFC(v20, type metadata accessor for PBUUID);
LABEL_21:
    v46 = &qword_2804980C0;
    v47 = &unk_26C470BD0;
LABEL_28:
    v49 = v27;
LABEL_29:
    sub_26C3DE270(v49, v46, v47);
    goto LABEL_30;
  }

  sub_26C453E5C(&v27[v32], v12, type metadata accessor for PBUUID);
  if (*v20 != *v12 || v20[1] != v12[1])
  {
    sub_26C453DFC(v12, type metadata accessor for PBUUID);
    goto LABEL_27;
  }

  sub_26C46BD24();
  sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v48 = sub_26C46C1C4();
  sub_26C453DFC(v12, type metadata accessor for PBUUID);
  if ((v48 & 1) == 0)
  {
LABEL_27:
    sub_26C453DFC(v20, type metadata accessor for PBUUID);
    v46 = &qword_280497458;
    v47 = &unk_26C46D3F0;
    goto LABEL_28;
  }

  sub_26C453DFC(v20, type metadata accessor for PBUUID);
LABEL_13:
  sub_26C3DE270(v27, &qword_280497458, &unk_26C46D3F0);
  v37 = v62;
  v38 = *(v63 + 32);
  v39 = *(v65 + 48);
  sub_26C3DDD48(v62 + v38, v24, &qword_280497458, &unk_26C46D3F0);
  v40 = v66;
  sub_26C3DDD48(v34 + v38, &v24[v39], &qword_280497458, &unk_26C46D3F0);
  if (v35(v24, 1, v40) == 1)
  {
    if (v35(&v24[v39], 1, v40) == 1)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

  v51 = v64;
  sub_26C3DDD48(v24, v64, &qword_280497458, &unk_26C46D3F0);
  if (v35(&v24[v39], 1, v40) == 1)
  {
    sub_26C453DFC(v51, type metadata accessor for PBUUID);
LABEL_34:
    v46 = &qword_2804980C0;
    v47 = &unk_26C470BD0;
    v49 = v24;
    goto LABEL_29;
  }

  v52 = v61;
  sub_26C453E5C(&v24[v39], v61, type metadata accessor for PBUUID);
  if (*v51 != *v52 || v51[1] != v52[1])
  {
    sub_26C453DFC(v52, type metadata accessor for PBUUID);
    goto LABEL_40;
  }

  sub_26C46BD24();
  sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v53 = sub_26C46C1C4();
  sub_26C453DFC(v52, type metadata accessor for PBUUID);
  if ((v53 & 1) == 0)
  {
LABEL_40:
    sub_26C453DFC(v51, type metadata accessor for PBUUID);
    v46 = &qword_280497458;
    v47 = &unk_26C46D3F0;
    v49 = v24;
    goto LABEL_29;
  }

  sub_26C453DFC(v51, type metadata accessor for PBUUID);
LABEL_15:
  sub_26C3DE270(v24, &qword_280497458, &unk_26C46D3F0);
  if (*(v37 + 9) != *(v34 + 9))
  {
    goto LABEL_30;
  }

  v41 = *(v63 + 36);
  v42 = *(v65 + 48);
  v43 = v60;
  sub_26C3DDD48(v37 + v41, v60, &qword_280497458, &unk_26C46D3F0);
  v44 = v66;
  sub_26C3DDD48(v34 + v41, v43 + v42, &qword_280497458, &unk_26C46D3F0);
  if (v35(v43, 1, v44) != 1)
  {
    v54 = v59;
    sub_26C3DDD48(v43, v59, &qword_280497458, &unk_26C46D3F0);
    if (v35((v43 + v42), 1, v44) != 1)
    {
      v55 = v58;
      sub_26C453E5C(v43 + v42, v58, type metadata accessor for PBUUID);
      if (*v54 == *v55 && v54[1] == v55[1])
      {
        sub_26C46BD24();
        sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v56 = sub_26C46C1C4();
        sub_26C453DFC(v55, type metadata accessor for PBUUID);
        if (v56)
        {
          sub_26C453DFC(v54, type metadata accessor for PBUUID);
          goto LABEL_18;
        }
      }

      else
      {
        sub_26C453DFC(v55, type metadata accessor for PBUUID);
      }

      sub_26C453DFC(v54, type metadata accessor for PBUUID);
      v46 = &qword_280497458;
      v47 = &unk_26C46D3F0;
      v49 = v43;
      goto LABEL_29;
    }

    sub_26C453DFC(v54, type metadata accessor for PBUUID);
    goto LABEL_43;
  }

  if (v35((v43 + v42), 1, v44) != 1)
  {
LABEL_43:
    v46 = &qword_2804980C0;
    v47 = &unk_26C470BD0;
    v49 = v43;
    goto LABEL_29;
  }

LABEL_18:
  sub_26C3DE270(v43, &qword_280497458, &unk_26C46D3F0);
  sub_26C46BD24();
  sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v45 = sub_26C46C1C4();
  return v45 & 1;
}

uint64_t sub_26C4511EC(void *a1, uint64_t *a2)
{
  v4 = type metadata accessor for PBUUID(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = (&v44 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = (&v44 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980C0, &unk_26C470BD0);
  v18 = MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v18);
  v21 = &v44 - v20;
  v22 = *a1;
  v23 = *a2;
  if (*(a2 + 8) != 1)
  {
    if (v22 != v23)
    {
      goto LABEL_29;
    }

    goto LABEL_11;
  }

  if (!v23)
  {
    if (!v22)
    {
      goto LABEL_11;
    }

LABEL_29:
    v34 = 0;
    return v34 & 1;
  }

  if (v23 != 1)
  {
    if (v22 == 2)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

  if (v22 != 1)
  {
    goto LABEL_29;
  }

LABEL_11:
  v44 = v8;
  v45 = v14;
  v47 = v19;
  v24 = type metadata accessor for OwnershipChangeReplyMessage(0);
  v49 = a2;
  v46 = v24;
  v25 = *(v24 + 32);
  v26 = *(v17 + 48);
  v48 = a1;
  sub_26C3DDD48(a1 + v25, v21, &qword_280497458, &unk_26C46D3F0);
  sub_26C3DDD48(v49 + v25, &v21[v26], &qword_280497458, &unk_26C46D3F0);
  v27 = *(v5 + 48);
  if (v27(v21, 1, v4) == 1)
  {
    if (v27(&v21[v26], 1, v4) == 1)
    {
      goto LABEL_13;
    }

    goto LABEL_20;
  }

  sub_26C3DDD48(v21, v16, &qword_280497458, &unk_26C46D3F0);
  if (v27(&v21[v26], 1, v4) == 1)
  {
    sub_26C453DFC(v16, type metadata accessor for PBUUID);
LABEL_20:
    v35 = &qword_2804980C0;
    v36 = &unk_26C470BD0;
LABEL_27:
    v38 = v21;
LABEL_28:
    sub_26C3DE270(v38, v35, v36);
    goto LABEL_29;
  }

  sub_26C453E5C(&v21[v26], v10, type metadata accessor for PBUUID);
  if (*v16 != *v10 || v16[1] != v10[1])
  {
    sub_26C453DFC(v10, type metadata accessor for PBUUID);
    goto LABEL_26;
  }

  sub_26C46BD24();
  sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v37 = sub_26C46C1C4();
  sub_26C453DFC(v10, type metadata accessor for PBUUID);
  if ((v37 & 1) == 0)
  {
LABEL_26:
    sub_26C453DFC(v16, type metadata accessor for PBUUID);
    v35 = &qword_280497458;
    v36 = &unk_26C46D3F0;
    goto LABEL_27;
  }

  sub_26C453DFC(v16, type metadata accessor for PBUUID);
LABEL_13:
  sub_26C3DE270(v21, &qword_280497458, &unk_26C46D3F0);
  v28 = *(v46 + 36);
  v29 = *(v17 + 48);
  v30 = v47;
  sub_26C3DDD48(v48 + v28, v47, &qword_280497458, &unk_26C46D3F0);
  v31 = v49 + v28;
  v32 = v49;
  sub_26C3DDD48(v31, v30 + v29, &qword_280497458, &unk_26C46D3F0);
  if (v27(v30, 1, v4) != 1)
  {
    v40 = v45;
    sub_26C3DDD48(v30, v45, &qword_280497458, &unk_26C46D3F0);
    if (v27((v30 + v29), 1, v4) != 1)
    {
      v41 = v30 + v29;
      v42 = v44;
      sub_26C453E5C(v41, v44, type metadata accessor for PBUUID);
      if (*v40 == *v42 && v40[1] == v42[1])
      {
        sub_26C46BD24();
        sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v43 = sub_26C46C1C4();
        sub_26C453DFC(v42, type metadata accessor for PBUUID);
        if (v43)
        {
          sub_26C453DFC(v45, type metadata accessor for PBUUID);
          v32 = v49;
          goto LABEL_15;
        }
      }

      else
      {
        sub_26C453DFC(v42, type metadata accessor for PBUUID);
      }

      sub_26C453DFC(v45, type metadata accessor for PBUUID);
      v35 = &qword_280497458;
      v36 = &unk_26C46D3F0;
      v38 = v30;
      goto LABEL_28;
    }

    sub_26C453DFC(v40, type metadata accessor for PBUUID);
    goto LABEL_33;
  }

  if (v27((v30 + v29), 1, v4) != 1)
  {
LABEL_33:
    v35 = &qword_2804980C0;
    v36 = &unk_26C470BD0;
    v38 = v30;
    goto LABEL_28;
  }

LABEL_15:
  sub_26C3DE270(v30, &qword_280497458, &unk_26C46D3F0);
  v33 = v48;
  if (!sub_26C433C6C(v48[2], *(v48 + 24), v32[2]) || *(v33 + 7) != *(v32 + 7))
  {
    goto LABEL_29;
  }

  sub_26C46BD24();
  sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v34 = sub_26C46C1C4();
  return v34 & 1;
}

uint64_t sub_26C451934(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for PBUUID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v26 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v24 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980C0, &unk_26C470BD0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - v12;
  v25 = type metadata accessor for DictionaryChangedMessage(0);
  v14 = *(v25 + 56);
  v15 = *(v11 + 56);
  v27 = a1;
  sub_26C3DDD48(a1 + v14, v13, &qword_280497458, &unk_26C46D3F0);
  sub_26C3DDD48(a2 + v14, &v13[v15], &qword_280497458, &unk_26C46D3F0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_26C3DDD48(v13, v9, &qword_280497458, &unk_26C46D3F0);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v21 = v26;
      sub_26C453E5C(&v13[v15], v26, type metadata accessor for PBUUID);
      if (*v9 == *v21 && v9[1] == v21[1])
      {
        sub_26C46BD24();
        sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v22 = sub_26C46C1C4();
        sub_26C453DFC(v21, type metadata accessor for PBUUID);
        if (v22)
        {
          sub_26C453DFC(v9, type metadata accessor for PBUUID);
          goto LABEL_3;
        }
      }

      else
      {
        sub_26C453DFC(v21, type metadata accessor for PBUUID);
      }

      sub_26C453DFC(v9, type metadata accessor for PBUUID);
      v19 = &qword_280497458;
      v20 = &unk_26C46D3F0;
LABEL_22:
      sub_26C3DE270(v13, v19, v20);
LABEL_23:
      v18 = 0;
      return v18 & 1;
    }

    sub_26C453DFC(v9, type metadata accessor for PBUUID);
LABEL_15:
    v19 = &qword_2804980C0;
    v20 = &unk_26C470BD0;
    goto LABEL_22;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_15;
  }

LABEL_3:
  sub_26C3DE270(v13, &qword_280497458, &unk_26C46D3F0);
  v17 = v27;
  if (*v27 != *a2 || (sub_26C448E48(v27[1], *(a2 + 8)) & 1) == 0 || (sub_26C449254(v17[2], *(a2 + 16)) & 1) == 0 || (sub_26C448E48(v17[3], *(a2 + 24)) & 1) == 0 || (sub_26C4492B0(v17[4], *(a2 + 32)) & 1) == 0 || (sub_26C449254(v17[5], *(a2 + 40)) & 1) == 0 || (sub_26C448E48(v17[6], *(a2 + 48)) & 1) == 0 || (sub_26C4492B0(v17[7], *(a2 + 56)) & 1) == 0 || (sub_26C449254(v17[8], *(a2 + 64)) & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_26C46BD24();
  sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v18 = sub_26C46C1C4();
  return v18 & 1;
}

uint64_t sub_26C451DD4(_DWORD *a1, _DWORD *a2)
{
  v47 = a2;
  v3 = type metadata accessor for ValueData(0);
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x28223BE20](v3);
  v39 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497470, &unk_26C46E870);
  MEMORY[0x28223BE20](v5 - 8);
  v40 = &v38 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498120, &unk_26C470C30);
  MEMORY[0x28223BE20](v41);
  v45 = &v38 - v7;
  v8 = type metadata accessor for LamportTimestamp(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = (&v38 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498118, &qword_26C470C28);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v38 - v17;
  v42 = type metadata accessor for PropertyChangedMessage(0);
  v19 = *(v42 + 24);
  v20 = *(v16 + 56);
  v46 = a1;
  sub_26C3DDD48(a1 + v19, v18, &qword_280497468, &unk_26C46D400);
  v21 = v47;
  sub_26C3DDD48(v47 + v19, &v18[v20], &qword_280497468, &unk_26C46D400);
  v22 = *(v9 + 48);
  if (v22(v18, 1, v8) == 1)
  {
    if (v22(&v18[v20], 1, v8) == 1)
    {
      sub_26C3DE270(v18, &qword_280497468, &unk_26C46D400);
      goto LABEL_9;
    }

LABEL_6:
    v23 = &qword_280498118;
    v24 = &qword_26C470C28;
    v25 = v18;
LABEL_7:
    sub_26C3DE270(v25, v23, v24);
    goto LABEL_18;
  }

  sub_26C3DDD48(v18, v14, &qword_280497468, &unk_26C46D400);
  if (v22(&v18[v20], 1, v8) == 1)
  {
    sub_26C453DFC(v14, type metadata accessor for LamportTimestamp);
    goto LABEL_6;
  }

  sub_26C453E5C(&v18[v20], v11, type metadata accessor for LamportTimestamp);
  v26 = sub_26C4539DC(v14, v11);
  sub_26C453DFC(v11, type metadata accessor for LamportTimestamp);
  sub_26C453DFC(v14, type metadata accessor for LamportTimestamp);
  sub_26C3DE270(v18, &qword_280497468, &unk_26C46D400);
  if ((v26 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if (*v46 != *v21)
  {
    goto LABEL_18;
  }

  v27 = *(v42 + 28);
  v28 = *(v41 + 48);
  v29 = v45;
  sub_26C3DDD48(v46 + v27, v45, &qword_280497470, &unk_26C46E870);
  sub_26C3DDD48(v21 + v27, v29 + v28, &qword_280497470, &unk_26C46E870);
  v30 = v44;
  v31 = *(v43 + 48);
  if (v31(v29, 1, v44) != 1)
  {
    v32 = v40;
    sub_26C3DDD48(v29, v40, &qword_280497470, &unk_26C46E870);
    if (v31(v29 + v28, 1, v30) != 1)
    {
      v33 = v29 + v28;
      v34 = v39;
      sub_26C453E5C(v33, v39, type metadata accessor for ValueData);
      v35 = sub_26C452F50(v32, v34);
      sub_26C453DFC(v34, type metadata accessor for ValueData);
      sub_26C453DFC(v32, type metadata accessor for ValueData);
      sub_26C3DE270(v29, &qword_280497470, &unk_26C46E870);
      if (v35)
      {
        goto LABEL_17;
      }

LABEL_18:
      v36 = 0;
      return v36 & 1;
    }

    sub_26C453DFC(v32, type metadata accessor for ValueData);
    goto LABEL_15;
  }

  if (v31(v29 + v28, 1, v30) != 1)
  {
LABEL_15:
    v23 = &qword_280498120;
    v24 = &unk_26C470C30;
    v25 = v29;
    goto LABEL_7;
  }

  sub_26C3DE270(v29, &qword_280497470, &unk_26C46E870);
LABEL_17:
  sub_26C46BD24();
  sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v36 = sub_26C46C1C4();
  return v36 & 1;
}

uint64_t sub_26C452404(uint64_t a1, uint64_t a2)
{
  if (!sub_26C44DD9C(*a1, *(a1 + 8), *a2, *(a2 + 8)) || *(a1 + 16) != *(a2 + 16) || *(a1 + 20) != *(a2 + 20) || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  type metadata accessor for CatchupResponseMessage(0);
  sub_26C46BD24();
  sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_26C46C1C4() & 1;
}

uint64_t sub_26C4524E4(uint64_t *a1, uint64_t *a2)
{
  if ((sub_26C448E48(*a1, *a2) & 1) == 0 || (sub_26C4492B0(a1[1], a2[1]) & 1) == 0 || (sub_26C449468(a1[2], a2[2]) & 1) == 0 || (sub_26C449A60(a1[3], a2[3]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for DictionaryCatchupData(0);
  sub_26C46BD24();
  sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_26C46C1C4() & 1;
}

uint64_t sub_26C4525C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LamportTimestamp(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v21 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498118, &qword_26C470C28);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  if (!sub_26C44DD9C(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    goto LABEL_8;
  }

  v21 = v7;
  v22 = type metadata accessor for DictionaryCatchupData.TombstoneTimestamp(0);
  v14 = *(v22 + 24);
  v15 = *(v11 + 48);
  sub_26C3DDD48(a1 + v14, v13, &qword_280497468, &unk_26C46D400);
  sub_26C3DDD48(a2 + v14, &v13[v15], &qword_280497468, &unk_26C46D400);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_26C3DE270(v13, &qword_280497468, &unk_26C46D400);
LABEL_11:
      sub_26C46BD24();
      sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_26C46C1C4();
      return v17 & 1;
    }

    goto LABEL_7;
  }

  sub_26C3DDD48(v13, v10, &qword_280497468, &unk_26C46D400);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_26C453DFC(v10, type metadata accessor for LamportTimestamp);
LABEL_7:
    sub_26C3DE270(v13, &qword_280498118, &qword_26C470C28);
    goto LABEL_8;
  }

  v19 = v21;
  sub_26C453E5C(&v13[v15], v21, type metadata accessor for LamportTimestamp);
  v20 = sub_26C4539DC(v10, v19);
  sub_26C453DFC(v19, type metadata accessor for LamportTimestamp);
  sub_26C453DFC(v10, type metadata accessor for LamportTimestamp);
  sub_26C3DE270(v13, &qword_280497468, &unk_26C46D400);
  if (v20)
  {
    goto LABEL_11;
  }

LABEL_8:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_26C45293C(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v3 = type metadata accessor for LamportTimestamp(0);
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x28223BE20](v3);
  v38 = (&v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  MEMORY[0x28223BE20](v5 - 8);
  v39 = (&v37 - v6);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498118, &qword_26C470C28);
  MEMORY[0x28223BE20](v41);
  v44 = &v37 - v7;
  v8 = type metadata accessor for ValueData(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497470, &unk_26C46E870);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498120, &unk_26C470C30);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v37 - v17;
  v40 = type metadata accessor for PropertyCatchupData(0);
  v19 = *(v40 + 20);
  v20 = *(v16 + 56);
  v45 = a1;
  sub_26C3DDD48(a1 + v19, v18, &qword_280497470, &unk_26C46E870);
  sub_26C3DDD48(v46 + v19, &v18[v20], &qword_280497470, &unk_26C46E870);
  v21 = *(v9 + 48);
  if (v21(v18, 1, v8) != 1)
  {
    sub_26C3DDD48(v18, v14, &qword_280497470, &unk_26C46E870);
    if (v21(&v18[v20], 1, v8) != 1)
    {
      sub_26C453E5C(&v18[v20], v11, type metadata accessor for ValueData);
      v25 = sub_26C452F50(v14, v11);
      sub_26C453DFC(v11, type metadata accessor for ValueData);
      sub_26C453DFC(v14, type metadata accessor for ValueData);
      sub_26C3DE270(v18, &qword_280497470, &unk_26C46E870);
      if ((v25 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_26C453DFC(v14, type metadata accessor for ValueData);
LABEL_6:
    v22 = &qword_280498120;
    v23 = &unk_26C470C30;
    v24 = v18;
LABEL_14:
    sub_26C3DE270(v24, v22, v23);
    goto LABEL_15;
  }

  if (v21(&v18[v20], 1, v8) != 1)
  {
    goto LABEL_6;
  }

  sub_26C3DE270(v18, &qword_280497470, &unk_26C46E870);
LABEL_8:
  v26 = *(v40 + 24);
  v27 = *(v41 + 48);
  v28 = v44;
  sub_26C3DDD48(v45 + v26, v44, &qword_280497468, &unk_26C46D400);
  sub_26C3DDD48(v46 + v26, v28 + v27, &qword_280497468, &unk_26C46D400);
  v29 = v43;
  v30 = *(v42 + 48);
  if (v30(v28, 1, v43) == 1)
  {
    if (v30(v28 + v27, 1, v29) == 1)
    {
      sub_26C3DE270(v28, &qword_280497468, &unk_26C46D400);
LABEL_18:
      sub_26C46BD24();
      sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v32 = sub_26C46C1C4();
      return v32 & 1;
    }

    goto LABEL_13;
  }

  v31 = v39;
  sub_26C3DDD48(v28, v39, &qword_280497468, &unk_26C46D400);
  if (v30(v28 + v27, 1, v29) == 1)
  {
    sub_26C453DFC(v31, type metadata accessor for LamportTimestamp);
LABEL_13:
    v22 = &qword_280498118;
    v23 = &qword_26C470C28;
    v24 = v28;
    goto LABEL_14;
  }

  v34 = v28 + v27;
  v35 = v38;
  sub_26C453E5C(v34, v38, type metadata accessor for LamportTimestamp);
  v36 = sub_26C4539DC(v31, v35);
  sub_26C453DFC(v35, type metadata accessor for LamportTimestamp);
  sub_26C453DFC(v31, type metadata accessor for LamportTimestamp);
  sub_26C3DE270(v28, &qword_280497468, &unk_26C46D400);
  if (v36)
  {
    goto LABEL_18;
  }

LABEL_15:
  v32 = 0;
  return v32 & 1;
}

uint64_t sub_26C452F50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBUUID(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v37 = (&v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v42 = (&v37 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v38 = (&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v13 = (&v37 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980C0, &unk_26C470BD0);
  v15 = MEMORY[0x28223BE20](v14);
  v40 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v37 - v17;
  v41 = type metadata accessor for ValueData(0);
  v19 = *(v41 + 24);
  v39 = v14;
  v20 = *(v14 + 48);
  v43 = a1;
  sub_26C3DDD48(a1 + v19, v18, &qword_280497458, &unk_26C46D3F0);
  v44 = a2;
  sub_26C3DDD48(a2 + v19, &v18[v20], &qword_280497458, &unk_26C46D3F0);
  v21 = *(v5 + 48);
  if (v21(v18, 1, v4) == 1)
  {
    if (v21(&v18[v20], 1, v4) == 1)
    {
      goto LABEL_3;
    }

    goto LABEL_9;
  }

  sub_26C3DDD48(v18, v13, &qword_280497458, &unk_26C46D3F0);
  if (v21(&v18[v20], 1, v4) == 1)
  {
    sub_26C453DFC(v13, type metadata accessor for PBUUID);
LABEL_9:
    v28 = &qword_2804980C0;
    v29 = &unk_26C470BD0;
LABEL_16:
    v32 = v18;
LABEL_17:
    sub_26C3DE270(v32, v28, v29);
    goto LABEL_18;
  }

  v30 = v42;
  sub_26C453E5C(&v18[v20], v42, type metadata accessor for PBUUID);
  if (*v13 != *v30 || v13[1] != v30[1])
  {
    sub_26C453DFC(v30, type metadata accessor for PBUUID);
    goto LABEL_15;
  }

  sub_26C46BD24();
  sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v31 = sub_26C46C1C4();
  sub_26C453DFC(v30, type metadata accessor for PBUUID);
  if ((v31 & 1) == 0)
  {
LABEL_15:
    sub_26C453DFC(v13, type metadata accessor for PBUUID);
    v28 = &qword_280497458;
    v29 = &unk_26C46D3F0;
    goto LABEL_16;
  }

  sub_26C453DFC(v13, type metadata accessor for PBUUID);
LABEL_3:
  sub_26C3DE270(v18, &qword_280497458, &unk_26C46D3F0);
  v23 = v43;
  v22 = v44;
  if (!sub_26C44DD9C(*v43, *(v43 + 8), *v44, *(v44 + 8)))
  {
LABEL_18:
    v27 = 0;
    return v27 & 1;
  }

  v24 = v40;
  v25 = *(v41 + 28);
  v26 = *(v39 + 48);
  sub_26C3DDD48(v23 + v25, v40, &qword_280497458, &unk_26C46D3F0);
  sub_26C3DDD48(v22 + v25, v24 + v26, &qword_280497458, &unk_26C46D3F0);
  if (v21(v24, 1, v4) != 1)
  {
    v34 = v38;
    sub_26C3DDD48(v24, v38, &qword_280497458, &unk_26C46D3F0);
    if (v21((v24 + v26), 1, v4) != 1)
    {
      v35 = v37;
      sub_26C453E5C(v24 + v26, v37, type metadata accessor for PBUUID);
      if (*v34 == *v35 && v34[1] == v35[1])
      {
        sub_26C46BD24();
        sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v36 = sub_26C46C1C4();
        sub_26C453DFC(v35, type metadata accessor for PBUUID);
        if (v36)
        {
          sub_26C453DFC(v34, type metadata accessor for PBUUID);
          goto LABEL_6;
        }
      }

      else
      {
        sub_26C453DFC(v35, type metadata accessor for PBUUID);
      }

      sub_26C453DFC(v34, type metadata accessor for PBUUID);
      v28 = &qword_280497458;
      v29 = &unk_26C46D3F0;
      v32 = v24;
      goto LABEL_17;
    }

    sub_26C453DFC(v34, type metadata accessor for PBUUID);
    goto LABEL_22;
  }

  if (v21((v24 + v26), 1, v4) != 1)
  {
LABEL_22:
    v28 = &qword_2804980C0;
    v29 = &unk_26C470BD0;
    v32 = v24;
    goto LABEL_17;
  }

LABEL_6:
  sub_26C3DE270(v24, &qword_280497458, &unk_26C46D3F0);
  sub_26C46BD24();
  sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v27 = sub_26C46C1C4();
  return v27 & 1;
}

uint64_t sub_26C45363C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LamportTimestamp(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v24 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v22 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498118, &qword_26C470C28);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - v12;
  v23 = type metadata accessor for SetChangedMessage(0);
  v14 = *(v23 + 32);
  v15 = *(v11 + 56);
  v25 = a1;
  sub_26C3DDD48(a1 + v14, v13, &qword_280497468, &unk_26C46D400);
  sub_26C3DDD48(a2 + v14, &v13[v15], &qword_280497468, &unk_26C46D400);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_26C3DDD48(v13, v9, &qword_280497468, &unk_26C46D400);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v17 = v24;
      sub_26C453E5C(&v13[v15], v24, type metadata accessor for LamportTimestamp);
      v18 = sub_26C4539DC(v9, v17);
      sub_26C453DFC(v17, type metadata accessor for LamportTimestamp);
      sub_26C453DFC(v9, type metadata accessor for LamportTimestamp);
      sub_26C3DE270(v13, &qword_280497468, &unk_26C46D400);
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_12:
      v20 = 0;
      return v20 & 1;
    }

    sub_26C453DFC(v9, type metadata accessor for LamportTimestamp);
LABEL_6:
    sub_26C3DE270(v13, &qword_280498118, &qword_26C470C28);
    goto LABEL_12;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_26C3DE270(v13, &qword_280497468, &unk_26C46D400);
LABEL_8:
  v19 = v25;
  if (*v25 != *a2 || (sub_26C4492B0(*(v25 + 8), *(a2 + 8)) & 1) == 0 || (sub_26C4492B0(*(v19 + 16), *(a2 + 16)) & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_26C46BD24();
  sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v20 = sub_26C46C1C4();
  return v20 & 1;
}

uint64_t sub_26C4539DC(_DWORD *a1, _DWORD *a2)
{
  v4 = type metadata accessor for PBUUID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v25 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v23 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980C0, &unk_26C470BD0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - v12;
  v24 = type metadata accessor for LamportTimestamp(0);
  v14 = *(v24 + 24);
  v15 = *(v11 + 56);
  v26 = a1;
  sub_26C3DDD48(a1 + v14, v13, &qword_280497458, &unk_26C46D3F0);
  sub_26C3DDD48(a2 + v14, &v13[v15], &qword_280497458, &unk_26C46D3F0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      goto LABEL_3;
    }

    goto LABEL_7;
  }

  sub_26C3DDD48(v13, v9, &qword_280497458, &unk_26C46D3F0);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_26C453DFC(v9, type metadata accessor for PBUUID);
LABEL_7:
    v18 = &qword_2804980C0;
    v19 = &unk_26C470BD0;
LABEL_14:
    sub_26C3DE270(v13, v18, v19);
    goto LABEL_15;
  }

  v20 = v25;
  sub_26C453E5C(&v13[v15], v25, type metadata accessor for PBUUID);
  if (*v9 != *v20 || v9[1] != v20[1])
  {
    sub_26C453DFC(v20, type metadata accessor for PBUUID);
    goto LABEL_13;
  }

  sub_26C46BD24();
  sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v21 = sub_26C46C1C4();
  sub_26C453DFC(v20, type metadata accessor for PBUUID);
  if ((v21 & 1) == 0)
  {
LABEL_13:
    sub_26C453DFC(v9, type metadata accessor for PBUUID);
    v18 = &qword_280497458;
    v19 = &unk_26C46D3F0;
    goto LABEL_14;
  }

  sub_26C453DFC(v9, type metadata accessor for PBUUID);
LABEL_3:
  sub_26C3DE270(v13, &qword_280497458, &unk_26C46D3F0);
  if (*v26 != *a2)
  {
LABEL_15:
    v17 = 0;
    return v17 & 1;
  }

  sub_26C46BD24();
  sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v17 = sub_26C46C1C4();
  return v17 & 1;
}

uint64_t sub_26C453DFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26C453E5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26C453EC4(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for LamportTimestamp(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v24 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v22 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498118, &qword_26C470C28);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - v12;
  v23 = type metadata accessor for SetCatchupData(0);
  v14 = *(v23 + 36);
  v15 = *(v11 + 56);
  v25 = a1;
  sub_26C3DDD48(a1 + v14, v13, &qword_280497468, &unk_26C46D400);
  sub_26C3DDD48(a2 + v14, &v13[v15], &qword_280497468, &unk_26C46D400);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_26C3DDD48(v13, v9, &qword_280497468, &unk_26C46D400);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v17 = v24;
      sub_26C453E5C(&v13[v15], v24, type metadata accessor for LamportTimestamp);
      v18 = sub_26C4539DC(v9, v17);
      sub_26C453DFC(v17, type metadata accessor for LamportTimestamp);
      sub_26C453DFC(v9, type metadata accessor for LamportTimestamp);
      sub_26C3DE270(v13, &qword_280497468, &unk_26C46D400);
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      v20 = 0;
      return v20 & 1;
    }

    sub_26C453DFC(v9, type metadata accessor for LamportTimestamp);
LABEL_6:
    sub_26C3DE270(v13, &qword_280498118, &qword_26C470C28);
    goto LABEL_13;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_26C3DE270(v13, &qword_280497468, &unk_26C46D400);
LABEL_8:
  v19 = v25;
  if ((sub_26C4492B0(*v25, *a2) & 1) == 0 || (sub_26C449468(v19[1], a2[1]) & 1) == 0 || (sub_26C4492B0(v19[2], a2[2]) & 1) == 0 || (sub_26C449468(v19[3], a2[3]) & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_26C46BD24();
  sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v20 = sub_26C46C1C4();
  return v20 & 1;
}

uint64_t sub_26C454274(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SyncMessage.OneOf_Contents(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497650, &unk_26C46D930);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498108, &qword_26C470C18);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_26C3DDD48(a1, &v20 - v13, &qword_280497650, &unk_26C46D930);
  sub_26C3DDD48(a2, &v14[v15], &qword_280497650, &unk_26C46D930);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_26C3DE270(v14, &qword_280497650, &unk_26C46D930);
LABEL_9:
      type metadata accessor for SyncMessage(0);
      sub_26C46BD24();
      sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_26C46C1C4();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_26C3DDD48(v14, v10, &qword_280497650, &unk_26C46D930);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_26C453DFC(v10, type metadata accessor for SyncMessage.OneOf_Contents);
LABEL_6:
    sub_26C3DE270(v14, &qword_280498108, &qword_26C470C18);
    goto LABEL_7;
  }

  sub_26C453E5C(&v14[v15], v7, type metadata accessor for SyncMessage.OneOf_Contents);
  v18 = sub_26C454A44(v10, v7);
  sub_26C453DFC(v7, type metadata accessor for SyncMessage.OneOf_Contents);
  sub_26C453DFC(v10, type metadata accessor for SyncMessage.OneOf_Contents);
  sub_26C3DE270(v14, &qword_280497650, &unk_26C46D930);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_26C4545B8(void *a1, uint64_t *a2)
{
  v4 = type metadata accessor for PBUUID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v27 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980C0, &unk_26C470BD0);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  v14 = *a1;
  v15 = *a2;
  if (*(a2 + 8) != 1)
  {
    if (v14 != v15)
    {
      goto LABEL_27;
    }

    goto LABEL_11;
  }

  if (!v15)
  {
    if (!v14)
    {
      goto LABEL_11;
    }

LABEL_27:
    v22 = 0;
    return v22 & 1;
  }

  if (v15 != 1)
  {
    if (v14 == 2)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

  if (v14 != 1)
  {
    goto LABEL_27;
  }

LABEL_11:
  v16 = type metadata accessor for SyncTransactionMessage(0);
  v17 = *(v16 + 36);
  v18 = a1;
  v19 = *(v11 + 48);
  v27 = v16;
  v28 = v18;
  sub_26C3DDD48(v18 + v17, v13, &qword_280497458, &unk_26C46D3F0);
  sub_26C3DDD48(a2 + v17, &v13[v19], &qword_280497458, &unk_26C46D3F0);
  v20 = *(v5 + 48);
  if (v20(v13, 1, v4) == 1)
  {
    if (v20(&v13[v19], 1, v4) == 1)
    {
      sub_26C3DE270(v13, &qword_280497458, &unk_26C46D3F0);
      goto LABEL_14;
    }

    goto LABEL_20;
  }

  sub_26C3DDD48(v13, v10, &qword_280497458, &unk_26C46D3F0);
  if (v20(&v13[v19], 1, v4) == 1)
  {
    sub_26C453DFC(v10, type metadata accessor for PBUUID);
LABEL_20:
    v23 = &qword_2804980C0;
    v24 = &unk_26C470BD0;
LABEL_26:
    sub_26C3DE270(v13, v23, v24);
    goto LABEL_27;
  }

  sub_26C453E5C(&v13[v19], v7, type metadata accessor for PBUUID);
  if (*v10 != *v7 || v10[1] != v7[1])
  {
    sub_26C453DFC(v7, type metadata accessor for PBUUID);
    sub_26C453DFC(v10, type metadata accessor for PBUUID);
    v23 = &qword_280497458;
    v24 = &unk_26C46D3F0;
    goto LABEL_26;
  }

  sub_26C46BD24();
  sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v25 = sub_26C46C1C4();
  sub_26C453DFC(v7, type metadata accessor for PBUUID);
  sub_26C453DFC(v10, type metadata accessor for PBUUID);
  sub_26C3DE270(v13, &qword_280497458, &unk_26C46D3F0);
  if ((v25 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_14:
  v21 = v28;
  if ((sub_26C44A748(v28[2], a2[2]) & 1) == 0 || (sub_26C44B3E0(v21[3], a2[3]) & 1) == 0 || (sub_26C44D76C(v21[4], a2[4]) & 1) == 0)
  {
    goto LABEL_27;
  }

  sub_26C46BD24();
  sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v22 = sub_26C46C1C4();
  return v22 & 1;
}

uint64_t sub_26C454A44(uint64_t a1, uint64_t a2)
{
  v71 = a2;
  v3 = type metadata accessor for OwnershipHandoffReplyMessage(0);
  MEMORY[0x28223BE20](v3 - 8);
  v67 = (&v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for OwnershipHandoffRequestMessage(0);
  MEMORY[0x28223BE20](v5 - 8);
  v66 = (&v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for OwnershipChangeBroadcastMessage(0);
  MEMORY[0x28223BE20](v7 - 8);
  v65 = (&v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for OwnershipChangeReplyMessage(0);
  MEMORY[0x28223BE20](v9 - 8);
  v64 = (&v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for OwnershipChangeRequestMessage(0);
  MEMORY[0x28223BE20](v11 - 8);
  v63 = (&v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for CatchupResponseMessage(0);
  MEMORY[0x28223BE20](v13 - 8);
  v61 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CatchupRequestMessage(0);
  MEMORY[0x28223BE20](v15 - 8);
  v62 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SyncTransactionMessage(0);
  MEMORY[0x28223BE20](v17 - 8);
  v60 = (&v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for SyncMessage.OneOf_Contents(0);
  v20 = MEMORY[0x28223BE20](v19);
  v70 = (&v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = MEMORY[0x28223BE20](v20);
  v69 = (&v60 - v23);
  v24 = MEMORY[0x28223BE20](v22);
  v68 = (&v60 - v25);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = (&v60 - v27);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = (&v60 - v30);
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v60 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v60 - v36;
  MEMORY[0x28223BE20](v35);
  v39 = (&v60 - v38);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498110, &qword_26C470C20);
  v41 = MEMORY[0x28223BE20](v40 - 8);
  v43 = &v60 - v42;
  v44 = *(v41 + 56);
  sub_26C455474(a1, &v60 - v42, type metadata accessor for SyncMessage.OneOf_Contents);
  sub_26C455474(v71, &v43[v44], type metadata accessor for SyncMessage.OneOf_Contents);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v39 = v69;
        sub_26C455474(v43, v69, type metadata accessor for SyncMessage.OneOf_Contents);
        if (swift_getEnumCaseMultiPayload() != 6)
        {
          v46 = type metadata accessor for OwnershipHandoffRequestMessage;
          goto LABEL_31;
        }

        v53 = v66;
        sub_26C453E5C(&v43[v44], v66, type metadata accessor for OwnershipHandoffRequestMessage);
        v48 = sub_26C44F40C(v39, v53);
        v54 = type metadata accessor for OwnershipHandoffRequestMessage;
      }

      else
      {
        v39 = v70;
        sub_26C455474(v43, v70, type metadata accessor for SyncMessage.OneOf_Contents);
        if (swift_getEnumCaseMultiPayload() != 7)
        {
          v46 = type metadata accessor for OwnershipHandoffReplyMessage;
          goto LABEL_31;
        }

        v53 = v67;
        sub_26C453E5C(&v43[v44], v67, type metadata accessor for OwnershipHandoffReplyMessage);
        v48 = sub_26C45080C(v39, v53);
        v54 = type metadata accessor for OwnershipHandoffReplyMessage;
      }

      goto LABEL_34;
    }

    if (EnumCaseMultiPayload != 4)
    {
      v39 = v68;
      sub_26C455474(v43, v68, type metadata accessor for SyncMessage.OneOf_Contents);
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        v46 = type metadata accessor for OwnershipChangeBroadcastMessage;
        goto LABEL_31;
      }

      v53 = v65;
      sub_26C453E5C(&v43[v44], v65, type metadata accessor for OwnershipChangeBroadcastMessage);
      v48 = sub_26C44EA1C(v39, v53);
      v54 = type metadata accessor for OwnershipChangeBroadcastMessage;
LABEL_34:
      v49 = v54;
      sub_26C453DFC(v53, v54);
      v50 = v39;
      goto LABEL_35;
    }

    sub_26C455474(v43, v28, type metadata accessor for SyncMessage.OneOf_Contents);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v47 = v64;
      sub_26C453E5C(&v43[v44], v64, type metadata accessor for OwnershipChangeReplyMessage);
      v48 = sub_26C4511EC(v28, v47);
      v49 = type metadata accessor for OwnershipChangeReplyMessage;
      sub_26C453DFC(v47, type metadata accessor for OwnershipChangeReplyMessage);
      v50 = v28;
LABEL_35:
      v52 = v49;
      goto LABEL_36;
    }

    v57 = type metadata accessor for OwnershipChangeReplyMessage;
    v58 = v28;
  }

  else if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_26C455474(v43, v34, type metadata accessor for SyncMessage.OneOf_Contents);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v51 = v61;
        sub_26C453E5C(&v43[v44], v61, type metadata accessor for CatchupResponseMessage);
        v48 = sub_26C452404(v34, v51);
        sub_26C453DFC(v51, type metadata accessor for CatchupResponseMessage);
        v50 = v34;
        v52 = type metadata accessor for CatchupResponseMessage;
LABEL_36:
        sub_26C453DFC(v50, v52);
        sub_26C453DFC(v43, type metadata accessor for SyncMessage.OneOf_Contents);
        return v48 & 1;
      }

      v57 = type metadata accessor for CatchupResponseMessage;
      v58 = v34;
    }

    else
    {
      sub_26C455474(v43, v31, type metadata accessor for SyncMessage.OneOf_Contents);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v56 = v63;
        sub_26C453E5C(&v43[v44], v63, type metadata accessor for OwnershipChangeRequestMessage);
        v48 = sub_26C44FDEC(v31, v56);
        v49 = type metadata accessor for OwnershipChangeRequestMessage;
        sub_26C453DFC(v56, type metadata accessor for OwnershipChangeRequestMessage);
        v50 = v31;
        goto LABEL_35;
      }

      v57 = type metadata accessor for OwnershipChangeRequestMessage;
      v58 = v31;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_26C455474(v43, v39, type metadata accessor for SyncMessage.OneOf_Contents);
      if (swift_getEnumCaseMultiPayload())
      {
        v46 = type metadata accessor for SyncTransactionMessage;
LABEL_31:
        v57 = v46;
        v58 = v39;
        goto LABEL_32;
      }

      v53 = v60;
      sub_26C453E5C(&v43[v44], v60, type metadata accessor for SyncTransactionMessage);
      v48 = sub_26C4545B8(v39, v53);
      v54 = type metadata accessor for SyncTransactionMessage;
      goto LABEL_34;
    }

    sub_26C455474(v43, v37, type metadata accessor for SyncMessage.OneOf_Contents);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v55 = v62;
      sub_26C453E5C(&v43[v44], v62, type metadata accessor for CatchupRequestMessage);
      sub_26C46BD24();
      sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v48 = sub_26C46C1C4();
      v49 = type metadata accessor for CatchupRequestMessage;
      sub_26C453DFC(v55, type metadata accessor for CatchupRequestMessage);
      v50 = v37;
      goto LABEL_35;
    }

    v57 = type metadata accessor for CatchupRequestMessage;
    v58 = v37;
  }

LABEL_32:
  sub_26C453DFC(v58, v57);
  sub_26C3DE270(v43, &qword_280498110, &qword_26C470C20);
  v48 = 0;
  return v48 & 1;
}

uint64_t sub_26C455474(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_26C4554DC()
{
  result = qword_280498130;
  if (!qword_280498130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280498130);
  }

  return result;
}

unint64_t sub_26C455530()
{
  result = qword_280498150;
  if (!qword_280498150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280498150);
  }

  return result;
}

unint64_t sub_26C455584()
{
  result = qword_280498160;
  if (!qword_280498160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280498160);
  }

  return result;
}

uint64_t sub_26C455600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26C46BD24();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497470, &unk_26C46E870);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_26C45576C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_26C46BD24();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497470, &unk_26C46E870);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_26C4558D0(uint64_t a1)
{
  sub_26C46BD24();
  if (v1 <= 0x3F)
  {
    sub_26C431884(319, &qword_280497D68, type metadata accessor for ValueData, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_26C431884(319, &qword_280497CB8, type metadata accessor for LamportTimestamp, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_26C4559E0(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_26C46BD24();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_26C455AA0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_26C46BD24();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_26C455B44(uint64_t a1)
{
  sub_26C431D48(319, &qword_280497C98, MEMORY[0x277CC9318]);
  if (v1 <= 0x3F)
  {
    sub_26C431884(319, &qword_2804979E8, type metadata accessor for ValueData, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_26C431884(319, qword_2804979F0, type metadata accessor for LamportTimestamp, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_26C431884(319, &qword_2804981F8, type metadata accessor for DictionaryCatchupData.TombstoneTimestamp, MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          sub_26C46BD24();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_123Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 12)
  {
    v6 = *(a1 + 8) >> 60;
    if (((4 * v6) & 0xC) != 0)
    {
      return 16 - ((4 * v6) & 0xC | (v6 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v12 = sub_26C46BD24();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a2)
    {
      v14 = v12;
      v15 = *(v13 + 48);
      v16 = a1 + *(a3 + 20);

      return v15(v16, a2, v14);
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
      v18 = *(*(v17 - 8) + 48);
      v19 = a1 + *(a3 + 24);

      return v18(v19, a2, v17);
    }
  }
}

void *__swift_store_extra_inhabitant_index_124Tm(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v12 = sub_26C46BD24();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a3)
    {
      v14 = v12;
      v15 = *(v13 + 56);
      v16 = v7 + *(a4 + 20);

      return v15(v16, a2, a2, v14);
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v18 = *(*(v17 - 8) + 56);
      v19 = v7 + *(a4 + 24);

      return v18(v19, a2, a2, v17);
    }
  }

  return result;
}

uint64_t sub_26C455FD0(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_26C46BD24();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_26C456114(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_26C46BD24();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_26C456244(uint64_t a1)
{
  sub_26C431884(319, &qword_2804979E8, type metadata accessor for ValueData, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_26C431884(319, qword_2804979F0, type metadata accessor for LamportTimestamp, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_26C46BD24();
      if (v3 <= 0x3F)
      {
        sub_26C431884(319, &qword_280497CB8, type metadata accessor for LamportTimestamp, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_38Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *(a1 + 8);
    if (v6 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v12 = sub_26C46BD24();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a2)
    {
      v14 = v12;
      v15 = *(v13 + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
      v18 = *(*(v17 - 8) + 48);
      v19 = a1 + *(a3 + 32);

      return v18(v19, a2, v17);
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_39Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v12 = sub_26C46BD24();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a3)
    {
      v14 = v12;
      v15 = *(v13 + 56);
      v16 = v7 + *(a4 + 28);

      return v15(v16, a2, a2, v14);
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v18 = *(*(v17 - 8) + 56);
      v19 = v7 + *(a4 + 32);

      return v18(v19, a2, a2, v17);
    }
  }

  return result;
}

void sub_26C456664(uint64_t a1)
{
  sub_26C431884(319, &qword_280498230, type metadata accessor for ModelData.PropertyDataMap, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_26C431884(319, &qword_280498238, type metadata accessor for ModelData.OwnershipUUIDToAccountIdentifier, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_26C46BD24();
      if (v3 <= 0x3F)
      {
        sub_26C431884(319, &qword_280497C58, type metadata accessor for PBUUID, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_26C4567CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 16) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_26C46BD24();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_26C456898(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *(result + 8) = 0;
    *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_26C46BD24();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26C456958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_26C46BD24();
  if (v6 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26C4569E0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_26C46BD24();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_26C456B24(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_26C46BD24();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_26C456C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  sub_26C46BD24();
  if (v8 <= 0x3F)
  {
    sub_26C431884(319, a5, a6, MEMORY[0x277D83D88]);
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26C456D9C(uint64_t a1, uint64_t a2)
{
  v136 = a2;
  v158 = a1;
  v3 = *v2;
  v5 = *(*v2 + 304);
  v6 = *(*v2 + 328);
  v7 = *(*v2 + 336);
  *v180 = *(*v2 + 280);
  v4 = *v180;
  v179 = *(v3 + 288);
  *&v180[8] = v179;
  v181 = v5;
  v177 = *(v3 + 312);
  v182 = v177;
  v183 = v6;
  v184 = v7;
  v139 = v7;
  type metadata accessor for SyncedDictionary.SyncedDictionaryChangeInfo(255, v180);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280497268, &qword_26C46CFE0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v134 = *(TupleTypeMetadata2 - 8);
  v8 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v133 = (&v131 - v9);
  MEMORY[0x28223BE20](v8);
  v132 = &v131 - v10;
  v11 = v179;
  v171 = sub_26C46C474();
  v176 = *(v171 - 8);
  v12 = MEMORY[0x28223BE20](v171);
  v143 = &v131 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v142 = &v131 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v148 = &v131 - v17;
  v157 = *(v11 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v138 = &v131 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v172 = &v131 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v173 = &v131 - v23;
  v156 = *(v4 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v141 = &v131 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v131 - v27;
  MEMORY[0x28223BE20](v26);
  v146 = &v131 - v29;
  v30 = swift_getTupleTypeMetadata2();
  v167 = sub_26C46C474();
  v31 = *(v167 - 8);
  v32 = MEMORY[0x28223BE20](v167);
  v161 = &v131 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v131 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v39 = &v131 - v38;
  MEMORY[0x28223BE20](v37);
  v155 = &v131 - v40;
  *v180 = sub_26C46C284();
  *&v180[8] = sub_26C46C284();
  *&v180[16] = sub_26C46C284();
  v41 = qword_280498288;
  swift_beginAccess();
  v145 = v2;
  v144 = v41;
  v42 = *(v2 + v41);
  if ((v42 & 0xC000000000000001) != 0)
  {
    v43 = sub_26C46C5C4();
    v160 = 0;
    v44 = 0;
    v45 = 0;
    i = v43 | 0x8000000000000000;
  }

  else
  {
    v46 = -1 << *(v42 + 32);
    v44 = ~v46;
    v47 = *(v42 + 64);
    v160 = v42 + 64;
    v48 = -v46;
    if (v48 < 64)
    {
      v49 = ~(-1 << v48);
    }

    else
    {
      v49 = -1;
    }

    v45 = v49 & v47;
    i = v42;
  }

  *&v179 = v156 + 32;
  v175 = (v157 + 32);
  v154 = v30 - 8;
  v137 = v44;
  v50 = (v44 + 64) >> 6;
  v168 = (v156 + 16);
  v150 = v157 + 16;
  v166 = (v31 + 32);
  v178 = (v157 + 48);
  v170 = (v157 + 8);
  v163 = (v156 + 8);
  v169 = (v176 + 8);

  v176 = v4;
  v52 = v146;
  v174 = v30;
  v140 = v36;
  v53 = 0;
  v151 = v50;
  v153 = v11;
  v149 = v39;
  v147 = v28;
  while (1)
  {
    v152 = v45;
    v162 = v53;
    if ((i & 0x8000000000000000) == 0)
    {
      break;
    }

    if (sub_26C46C5D4())
    {
      sub_26C46C754();
      swift_unknownObjectRelease();
      sub_26C46C754();
      swift_unknownObjectRelease();
      v165 = v45;
      v30 = v174;
      goto LABEL_22;
    }

    v62 = 1;
    v164 = v53;
    v165 = v45;
    v30 = v174;
LABEL_23:
    v63 = *(v30 - 8);
    v64 = v63;
    v65 = *(v63 + 56);
    v66 = v63 + 56;
    v65(v39, v62, 1, v30);
    v67 = *v166;
    v68 = v155;
    (*v166)(v155, v39, v167);
    v69 = *(v64 + 48);
    if ((v69)(v68, 1, v30) == 1)
    {
      v149 = v69;
      v151 = v67;
      v154 = v66;
      v155 = v65;
      sub_26C40B328(i);
      if ((v158 & 0xC000000000000001) != 0)
      {
        v84 = sub_26C46C5C4();
        v162 = 0;
        v85 = 0;
        v86 = 0;
        v87 = v84 | 0x8000000000000000;
      }

      else
      {
        v88 = -1 << *(v158 + 32);
        v85 = ~v88;
        v89 = *(v158 + 64);
        v162 = v158 + 64;
        v90 = -v88;
        if (v90 < 64)
        {
          v91 = ~(-1 << v90);
        }

        else
        {
          v91 = -1;
        }

        v86 = (v91 & v89);
        v87 = v158;
      }

      v92 = v141;
      v93 = v140;
      v152 = v85;
      v160 = (v85 + 64) >> 6;

      v94 = 0;
      v95 = v153;
      for (i = v87; ; v87 = i)
      {
        v165 = v86;
        v164 = v94;
        if ((v87 & 0x8000000000000000) != 0)
        {
          if (sub_26C46C5D4())
          {
            v115 = v176;
            sub_26C46C754();
            swift_unknownObjectRelease();
            v116 = v173;
            sub_26C46C754();
            swift_unknownObjectRelease();
            v117 = *(v30 + 48);
            v101 = v161;
            (*v179)(v161, v52, v115);
            (*v175)(&v101[v117], v116, v95);
            v118 = v101;
            v119 = 0;
          }

          else
          {
            v101 = v161;
            v118 = v161;
            v119 = 1;
          }

          (v155)(v118, v119, 1, v30);
          v99 = v164;
          v172 = v165;
        }

        else
        {
          v96 = v86;
          v97 = v94;
          if (!v86)
          {
            if (v160 <= v94 + 1)
            {
              v98 = v94 + 1;
            }

            else
            {
              v98 = v160;
            }

            v99 = v98 - 1;
            v100 = v94;
            v101 = v161;
            do
            {
              v97 = v100 + 1;
              if (__OFADD__(v100, 1))
              {
                goto LABEL_62;
              }

              if (v97 >= v160)
              {
                (v155)(v161, 1, 1, v30);
                v172 = 0;
                goto LABEL_57;
              }

              v96 = *(v162 + 8 * v97);
              ++v100;
            }

            while (!v96);
          }

          v172 = ((v96 - 1) & v96);
          v102 = __clz(__rbit64(v96)) | (v97 << 6);
          v103 = v156;
          v104 = *(v87 + 48) + *(v156 + 72) * v102;
          v105 = v87;
          v106 = v176;
          (*(v156 + 16))(v52, v104, v176);
          v107 = *(v105 + 56);
          v108 = v52;
          v109 = v173;
          v110 = v157;
          (*(v157 + 16))(v173, v107 + *(v157 + 72) * v102, v95);
          v111 = *(v174 + 48);
          v112 = *(v103 + 32);
          v92 = v141;
          v101 = v161;
          v113 = v108;
          v30 = v174;
          v112(v161, v113, v106);
          v114 = &v101[v111];
          v93 = v140;
          (*(v110 + 32))(v114, v109, v95);
          (v155)(v101, 0, 1, v30);
          v99 = v97;
        }

LABEL_57:
        v151(v93, v101, v167);
        if ((v149)(v93, 1, v30) == 1)
        {
          sub_26C40B328(i);
          *(v145 + v144) = v158;

          v123 = *&v180[16];
          v124 = sub_26C46BCD4();
          v125 = *(v124 - 8);
          v126 = *(v125 + 16);
          v179 = *v180;
          v127 = v132;
          v126(v132, v136, v124);
          (*(v125 + 56))(v127, 0, 1, v124);
          v128 = TupleTypeMetadata2;
          v129 = *(TupleTypeMetadata2 + 48);
          v130 = v133;
          *v133 = v179;
          *(v130 + 2) = v123;
          sub_26C3E9F28(v127, v130 + v129, &qword_280497268, &qword_26C46CFE0);
          sub_26C46BFE4();
          return (*(v134 + 8))(v130, v128);
        }

        v120 = *(v30 + 48);
        v121 = v176;
        (*v179)(v92, v93, v176);
        swift_beginAccess();
        v122 = v143;
        sub_26C46C184();
        swift_endAccess();
        if ((*v178)(v122, 1, v95) == 1)
        {
          (*v169)(v122, v171);
          v52 = v146;
          (*v168)(v146, v92, v121);
          sub_26C46C2E4();
          sub_26C46C2C4();
          (*v163)(v92, v121);
        }

        else
        {
          (*v163)(v92, v121);
          (*v169)(v122, v171);
          v52 = v146;
        }

        result = (*v170)(&v93[v120], v95);
        v94 = v99;
        v86 = v172;
      }
    }

    v70 = v52;
    v71 = *(v30 + 48);
    v72 = v147;
    v73 = v68;
    v4 = v176;
    (*v179)(v147, v68, v176);
    v74 = *v175;
    v11 = v153;
    (*v175)(v172, &v73[v71], v153);
    v75 = v148;
    sub_26C46C184();
    v76 = *v178;
    if ((*v178)(v75, 1, v11) == 1)
    {
      (*v169)(v75, v171);
      v77 = v72;
      goto LABEL_28;
    }

    v78 = v138;
    v74(v138, v75, v11);
    v79 = v78;
    v80 = v172;
    if (sub_26C46C1C4())
    {
      (*v170)(v79, v11);
      v77 = v72;
      v50 = v151;
LABEL_28:
      v81 = v142;
      sub_26C46C184();
      v52 = v70;
      if (v76(v81, 1, v11) == 1)
      {
        (*v169)(v81, v171);
        (*v168)(v70, v77, v4);
        sub_26C46C2E4();
        sub_26C46C2C4();
        (*v170)(v172, v11);
        result = (*v163)(v77, v4);
      }

      else
      {
        (*v170)(v172, v11);
        (*v163)(v77, v4);
        result = (*v169)(v81, v171);
      }

      v53 = v164;
      v45 = v165;
      v30 = v174;
      v39 = v149;
    }

    else
    {
      v82 = v72;
      v52 = v70;
      (*v168)(v70, v82, v4);
      sub_26C46C2E4();
      sub_26C46C2C4();
      v83 = *v170;
      (*v170)(v79, v11);
      v83(v80, v11);
      result = (*v163)(v82, v4);
      v53 = v164;
      v45 = v165;
      v30 = v174;
      v39 = v149;
      v50 = v151;
    }
  }

  v54 = v45;
  if (v45)
  {
LABEL_19:
    v165 = (v54 - 1) & v54;
    v58 = __clz(__rbit64(v54)) | (v53 << 6);
    v59 = i;
    (*(v156 + 16))(v52, *(i + 48) + *(v156 + 72) * v58, v4);
    v60 = *(v59 + 56);
    v50 = v151;
    (*(v157 + 16))(v173, v60 + *(v157 + 72) * v58, v11);
LABEL_22:
    v61 = *(v30 + 48);
    (*v179)(v39, v52, v4);
    (*v175)(&v39[v61], v173, v11);
    v62 = 0;
    v164 = v53;
    goto LABEL_23;
  }

  v55 = v162;
  if (v50 <= v162 + 1)
  {
    v56 = v162 + 1;
  }

  else
  {
    v56 = v50;
  }

  v57 = v56 - 1;
  while (1)
  {
    v53 = v55 + 1;
    if (__OFADD__(v55, 1))
    {
      break;
    }

    if (v53 >= v50)
    {
      v164 = v57;
      v165 = 0;
      v62 = 1;
      goto LABEL_23;
    }

    v54 = *(v160 + 8 * v53);
    ++v55;
    if (v54)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_62:
  __break(1u);
  return result;
}

uint64_t sub_26C45826C(void (*a1)(int *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = a1;
  v19 = a2;
  v6 = type metadata accessor for LamportTimestamp(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v21 = MEMORY[0x277D84F90];
  sub_26C42FBFC(0, v10, 0);
  v11 = v21;
  v12 = (a3 + 32);
  while (1)
  {
    v13 = *v12++;
    v20 = v13;
    v18(&v20);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v21 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_26C42FBFC((v14 > 1), v15 + 1, 1);
      v11 = v21;
    }

    *(v11 + 16) = v15 + 1;
    sub_26C40C2E8(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, type metadata accessor for LamportTimestamp);
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26C458410(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a1;
  v25 = a2;
  v7 = type metadata accessor for LamportTimestamp(0);
  v23 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a4;
  v10 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v29 = MEMORY[0x277D84F90];
  sub_26C42FBFC(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v27 = v4;
    v12 = 0;
    v11 = v29;
    v13 = v26;
    if (v26 <= a3)
    {
      v13 = a3;
    }

    v22 = v13 - a3 + 1;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_17;
      }

      v28 = a3 + v12;
      v15 = v9;
      v16 = v27;
      v24(&v28);
      v27 = v16;
      if (v16)
      {
        goto LABEL_22;
      }

      v29 = v11;
      v18 = *(v11 + 16);
      v17 = *(v11 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_26C42FBFC((v17 > 1), v18 + 1, 1);
        v11 = v29;
      }

      *(v11 + 16) = v18 + 1;
      v19 = v11 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v18;
      v9 = v15;
      sub_26C40C2E8(v15, v19, type metadata accessor for LamportTimestamp);
      if (v26 < a3)
      {
        goto LABEL_18;
      }

      if (v22 == ++v12)
      {
        goto LABEL_19;
      }

      if (v14 == v10)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

uint64_t sub_26C45863C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x616E6F6974636964 && a2 == 0xEA00000000007972 || (sub_26C46C764() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F7473626D6F74 && a2 == 0xEA00000000007365 || (sub_26C46C764() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    return 2;
  }

  else
  {
    v5 = sub_26C46C764();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_26C45876C(char a1)
{
  if (!a1)
  {
    return 0x616E6F6974636964;
  }

  if (a1 == 1)
  {
    return 0x6E6F7473626D6F74;
  }

  return 0x6D617473656D6974;
}

uint64_t sub_26C4587CC(void *a1, uint64_t a2)
{
  v3 = *(a2 + 56);
  v13 = *(a2 + 16);
  v11 = *(a2 + 24);
  v14 = v11;
  v15 = *(a2 + 40);
  v16 = v3;
  v10 = *(a2 + 64);
  v17 = v10;
  type metadata accessor for SyncedDictionary.Element.CodingKeys(255, &v13);
  swift_getWitnessTable();
  v4 = sub_26C46C6E4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26C46C8B4();
  LOBYTE(v13) = 0;
  v8 = v12;
  sub_26C46C6D4();
  if (!v8)
  {
    LOBYTE(v13) = 1;
    type metadata accessor for LamportTimestamp(0);
    sub_26C46B8C4(&qword_280497448, type metadata accessor for LamportTimestamp, &unk_26C46DFB8);
    sub_26C46C6D4();
    LOBYTE(v13) = 2;
    sub_26C46BB54();
    sub_26C46B8C4(&qword_2804973D0, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    sub_26C46C6B4();
    LOBYTE(v13) = 3;
    sub_26C46C6B4();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_26C458ADC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10)
{
  v55 = a2;
  v66 = a1;
  v45 = a9;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v46 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v47 = &v43 - v20;
  v52 = type metadata accessor for LamportTimestamp(0);
  v21 = MEMORY[0x28223BE20](v52);
  v51 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = *(a3 - 8);
  MEMORY[0x28223BE20](v21);
  v54 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = a2;
  v59 = a3;
  v60 = a4;
  v61 = a5;
  v62 = a6;
  v63 = a7;
  v64 = a8;
  v65 = a10;
  type metadata accessor for SyncedDictionary.Element.CodingKeys(255, &v58);
  swift_getWitnessTable();
  v53 = sub_26C46C694();
  v49 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v25 = &v43 - v24;
  v58 = v55;
  v59 = a3;
  v50 = a3;
  v60 = a4;
  v61 = a5;
  v62 = a6;
  v63 = a7;
  v55 = a7;
  v64 = a8;
  v65 = v56;
  v26 = v66;
  v27 = type metadata accessor for SyncedDictionary.Element(0, &v58);
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v43 - v29;
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  v56 = v25;
  v31 = v57;
  sub_26C46C894();
  if (v31)
  {
    return __swift_destroy_boxed_opaque_existential_1(v66);
  }

  v32 = v51;
  v43 = v28;
  v33 = v49;
  v57 = v30;
  v44 = v27;
  LOBYTE(v58) = 0;
  v34 = v50;
  sub_26C46C684();
  (*(v48 + 32))(v57, v54, v34);
  LOBYTE(v58) = 1;
  sub_26C46B8C4(&qword_280497438, type metadata accessor for LamportTimestamp, &unk_26C46DFE0);
  sub_26C46C684();
  v35 = v44;
  sub_26C40C2E8(v32, &v57[*(v44 + 84)], type metadata accessor for LamportTimestamp);
  sub_26C46BB54();
  LOBYTE(v58) = 2;
  sub_26C46B8C4(&qword_2804973B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  v36 = v47;
  sub_26C46C664();
  v37 = v35;
  sub_26C3E9F28(v36, &v57[*(v35 + 88)], &qword_280497430, &unk_26C46D3D0);
  LOBYTE(v58) = 3;
  v38 = v46;
  v39 = v53;
  sub_26C46C664();
  (*(v33 + 8))(v56, v39);
  v40 = v57;
  sub_26C3E9F28(v38, &v57[*(v37 + 92)], &qword_280497430, &unk_26C46D3D0);
  v41 = v43;
  (*(v43 + 16))(v45, v40, v37);
  __swift_destroy_boxed_opaque_existential_1(v66);
  return (*(v41 + 8))(v40, v37);
}

uint64_t sub_26C459198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12)
{
  (*(*(a6 - 8) + 32))(a9, a1, a6);
  v22[0] = a5;
  v22[1] = a6;
  v22[2] = a7;
  v22[3] = a8;
  v23 = a10;
  v24 = a11;
  v25 = a12;
  v20 = type metadata accessor for SyncedDictionary.Element(0, v22);
  sub_26C40C2E8(a2, a9 + v20[21], type metadata accessor for LamportTimestamp);
  sub_26C3E9F28(a3, a9 + v20[22], &qword_280497430, &unk_26C46D3D0);
  return sub_26C3E9F28(a4, a9 + v20[23], &qword_280497430, &unk_26C46D3D0);
}

uint64_t sub_26C4592C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BA8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_26C459338(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83B98];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_26C4593A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83B98];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_26C459414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83B98];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

unint64_t sub_26C459484@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26C3FDAB0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_26C4594B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26C3E184C(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_26C459510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26C45863C(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_26C459568@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26C3FDAB0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_26C459598(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_26C4595EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_26C4596F4(uint64_t a1)
{
  sub_26C46C814();
  sub_26C3FDB28(v3, *v1);
  return sub_26C46C844();
}

uint64_t sub_26C459784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26C3E16D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26C4597CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26C40B6EC();
  *a1 = result;
  return result;
}

uint64_t sub_26C459808(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_26C45985C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t SyncedDictionary.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  SyncedDictionary.init(from:)(a1);
  return v2;
}

void *SyncedDictionary.init(from:)(void *a1)
{
  v2 = v1;
  v158 = a1;
  v3 = *v1;
  v4 = type metadata accessor for LamportTimestamp(0);
  v166 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v142 = &v137 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v143 = &v137 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  MEMORY[0x28223BE20](v8 - 8);
  v175 = &v137 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v161 = &v137 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v160 = &v137 - v13;
  v170 = sub_26C46BB54();
  v165 = *(v170 - 8);
  v14 = MEMORY[0x28223BE20](v170);
  v159 = &v137 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = v3;
  v167 = *(*(v3 + 288) - 8);
  MEMORY[0x28223BE20](v14);
  v174 = &v137 - v16;
  v18 = v17;
  v19 = sub_26C46C474();
  MEMORY[0x28223BE20](v19 - 8);
  v173 = &v137 - v20;
  v21 = *(v3 + 280);
  v22 = *(v3 + 312);
  v23 = *(v3 + 320);
  v24 = *(v3 + 328);
  v25 = *(v3 + 336);
  *&v26 = v21;
  *(&v26 + 1) = v18;
  v27 = v18;
  v184 = v18;
  v207 = v22;
  v208 = v23;
  v28 = v22;
  v189 = v22;
  v29 = v23;
  v172 = v23;
  v209 = v24;
  v210 = v25;
  v30 = v24;
  v171 = v24;
  v31 = v25;
  i = v25;
  v191 = *(v3 + 296);
  v206 = v191;
  v205 = v26;
  v32 = type metadata accessor for SyncedDictionary.Element(0, &v205);
  v181 = *(v32 - 8);
  v33 = MEMORY[0x28223BE20](v32);
  v188 = &v137 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v180 = &v137 - v36;
  v179 = *(v21 - 8);
  v37 = MEMORY[0x28223BE20](v35);
  v192 = &v137 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v190 = &v137 - v39;
  v194 = v40;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v178 = sub_26C46C474();
  v168 = *(v178 - 8);
  v41 = MEMORY[0x28223BE20](v178);
  v177 = &v137 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v176 = &v137 - v43;
  *&v205 = v21;
  *(&v205 + 1) = v27;
  v206 = v191;
  v207 = v28;
  v208 = v29;
  v209 = v30;
  v210 = v31;
  v185 = type metadata accessor for SyncedDictionary.CodingKeys(255, &v205);
  WitnessTable = swift_getWitnessTable();
  v149 = sub_26C46C694();
  v148 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v45 = &v137 - v44;
  v46 = qword_280498260;
  swift_getTupleTypeMetadata2();
  v47 = sub_26C46C284();
  v48 = v189;
  v49 = sub_26C40AFD4(v47, v21, v4, v189);

  v153 = v46;
  *(v2 + v46) = v49;
  v50 = qword_280498268;
  v51 = sub_26C46C284();
  v183 = v4;
  v52 = sub_26C40AFD4(v51, v21, v4, v48);

  v156 = v50;
  *(v2 + v50) = v52;
  v154 = qword_280498270;
  *(v2 + qword_280498270) = 0;
  v155 = qword_280498278;
  *(v2 + qword_280498278) = 0;
  v53 = v184;
  v54 = swift_conformsToProtocol2();
  if (v53)
  {
    v55 = v54 == 0;
  }

  else
  {
    v55 = 1;
  }

  v56 = !v55;
  *(v2 + qword_280498280) = v56;
  v57 = qword_2804988B0;
  v193 = v21;
  *&v205 = v21;
  *(&v205 + 1) = v53;
  v206 = v191;
  v207 = v48;
  v208 = v172;
  v58 = v158;
  v209 = v171;
  v210 = i;
  type metadata accessor for SyncedDictionary.SyncedDictionaryChangeInfo(255, &v205);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280497268, &qword_26C46CFE0);
  swift_getTupleTypeMetadata2();
  sub_26C46C014();
  v59 = sub_26C46C004();
  v151 = v57;
  *(v2 + v57) = v59;
  __swift_project_boxed_opaque_existential_1(v58, v58[3]);
  v60 = v187;
  sub_26C46C894();
  if (!v60)
  {
    sub_26C46C174();
    v199[0] = 0;
    v61 = swift_getWitnessTable();
    v62 = v191;
    v203 = v191;
    v204 = v61;
    swift_getWitnessTable();
    sub_26C46C684();
    v138 = v62;
    v139 = 0;
    v140 = v45;
    v141 = v2;
    v64 = v205;
    v211 = sub_26C46C114();
    v202 = sub_26C46C114();
    v201 = sub_26C46C114();
    result = sub_26C46C114();
    v65 = 0;
    v67 = v64 + 64;
    v66 = *(v64 + 64);
    v163 = v64;
    v68 = 1 << *(v64 + 32);
    v200 = result;
    v69 = -1;
    if (v68 < 64)
    {
      v69 = ~(-1 << v68);
    }

    v70 = v69 & v66;
    v150 = (v68 + 63) >> 6;
    v172 = TupleTypeMetadata2 - 8;
    v71 = v179;
    *&v191 = v179 + 16;
    v72 = v181;
    v162 = v181 + 16;
    WitnessTable = (v179 + 32);
    v185 = (v181 + 32);
    v171 = v168 + 4;
    v168 = (v167 + 2);
    v167 += 7;
    v157 = (v165 + 6);
    v147 = (v165 + 4);
    v146 = (v165 + 2);
    v145 = (v165 + 7);
    v144 = (v165 + 1);
    v166 += 7;
    v165 = (v181 + 8);
    v164 = (v179 + 8);
    v73 = v192;
    v74 = v190;
    for (i = v67; ; v67 = i)
    {
      v82 = v180;
      if (!v70)
      {
        if (v150 <= v65 + 1)
        {
          v84 = v65 + 1;
        }

        else
        {
          v84 = v150;
        }

        v85 = v84 - 1;
        while (1)
        {
          v83 = v65 + 1;
          if (__OFADD__(v65, 1))
          {
            break;
          }

          if (v83 >= v150)
          {
            v70 = 0;
            v96 = 1;
            v65 = v85;
            v92 = TupleTypeMetadata2;
            v95 = v177;
            goto LABEL_29;
          }

          v70 = *(v67 + 8 * v83);
          ++v65;
          if (v70)
          {
            v65 = v83;
            goto LABEL_28;
          }
        }

        __break(1u);
        return result;
      }

      v83 = v65;
LABEL_28:
      v86 = __clz(__rbit64(v70));
      v70 &= v70 - 1;
      v87 = v86 | (v83 << 6);
      v88 = v163;
      v89 = v74;
      v90 = v193;
      (*(v71 + 16))(v89, *(v163 + 48) + *(v71 + 72) * v87, v193);
      v91 = v194;
      (*(v72 + 16))(v82, *(v88 + 56) + *(v72 + 72) * v87, v194);
      v92 = TupleTypeMetadata2;
      v93 = *(TupleTypeMetadata2 + 48);
      v94 = *(v71 + 32);
      v95 = v177;
      v94(v177, v190, v90);
      (*(v72 + 32))(&v95[v93], v82, v91);
      v96 = 0;
      v73 = v192;
LABEL_29:
      v97 = *(v92 - 8);
      (*(v97 + 56))(v95, v96, 1, v92);
      v98 = v176;
      (*v171)(v176, v95, v178);
      v99 = (*(v97 + 48))(v98, 1, v92);
      v100 = v188;
      if (v99 == 1)
      {

        v2 = v141;
        *(v141 + qword_280498288) = v211;
        v120 = v202;
        v121 = v154;
        swift_beginAccess();
        *(v2 + v121) = v120;

        v122 = v201;
        v123 = v155;
        swift_beginAccess();
        *(v2 + v123) = v122;

        v124 = v200;
        v125 = v156;
        swift_beginAccess();
        *(v2 + v125) = v124;

        sub_26C46C174();
        v195[0] = 1;
        v126 = sub_26C46B8C4(&qword_280497438, type metadata accessor for LamportTimestamp, &unk_26C46DFE0);
        v196 = v138;
        v197 = v126;
        swift_getWitnessTable();
        v127 = v149;
        v128 = v140;
        v129 = v139;
        sub_26C46C684();
        if (!v129)
        {
          v130 = v198;
          v131 = v153;
          swift_beginAccess();
          *(v2 + v131) = v130;

          LOBYTE(v198) = 2;
          v132 = v143;
          sub_26C46C684();
          v133 = v148;
          v134 = v142;
          sub_26C46B83C(v132, v142, type metadata accessor for LamportTimestamp);
          *(v2 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__controller) = 0;
          *(v2 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__parentPropertyID) = -1;
          *(v2 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__propertyID) = -1;
          v135 = OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__pendingModelControllers;
          v136 = sub_26C3E8EF0(MEMORY[0x277D84F90]);
          sub_26C46B90C(v132, type metadata accessor for LamportTimestamp);
          (*(v133 + 8))(v128, v127);
          *(v2 + v135) = v136;
          sub_26C40C2E8(v134, v2 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__timestamp, type metadata accessor for LamportTimestamp);
          __swift_destroy_boxed_opaque_existential_1(v158);
          return v2;
        }

        (*(v148 + 8))(v128, v127);
        __swift_destroy_boxed_opaque_existential_1(v158);

        goto LABEL_10;
      }

      v101 = *(v92 + 48);
      v102 = v98;
      v103 = v98;
      v104 = v193;
      (*WitnessTable)(v73, v102, v193);
      (*v185)(v100, &v103[v101], v194);
      v105 = v190;
      v187 = *v191;
      v187(v190, v73, v104);
      v106 = *v168;
      v107 = v173;
      v108 = v184;
      (*v168)(v173, v100, v184);
      (*v167)(v107, 0, 1, v108);
      v74 = v105;
      sub_26C46C174();
      sub_26C46C194();
      v106(v174, v100, v108);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497440, &unk_26C46D3E0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_16;
      }

      swift_unknownObjectRelease();
      v109 = v160;
      sub_26C3DDD48(&v100[v194[22]], v160, &qword_280497430, &unk_26C46D3D0);
      v110 = v170;
      v111 = (*v157)(v109, 1, v170);
      v112 = v161;
      if (v111 == 1)
      {
        break;
      }

      v113 = v159;
      (*v147)(v159, v109, v110);
      v114 = v74;
      v115 = v193;
      v116 = v187;
      v187(v114, v192, v193);
      (*v146)(v112, v113, v110);
      (*v145)(v112, 0, 1, v110);
      sub_26C46C174();
      v117 = v112;
      v76 = v116;
      sub_26C46C194();
      v118 = v192;
      v119 = v115;
      v74 = v190;
      v116(v190, v192, v119);
      sub_26C3DDD48(&v100[v194[23]], v117, &qword_280497430, &unk_26C46D3D0);
      sub_26C46C194();
      (*v144)(v159, v170);
      v75 = v118;
LABEL_17:
      v77 = v193;
      v76(v74, v75, v193);
      v78 = v194;
      v79 = v188;
      v80 = v175;
      sub_26C46B83C(&v188[v194[21]], v175, type metadata accessor for LamportTimestamp);
      (*v166)(v80, 0, 1, v183);
      sub_26C46C174();
      v81 = v78;
      v73 = v192;
      sub_26C46C194();
      (*v165)(v79, v81);
      result = (*v164)(v73, v77);
      v72 = v181;
      v71 = v179;
    }

    sub_26C3DE270(v109, &qword_280497430, &unk_26C46D3D0);
LABEL_16:
    v75 = v192;
    v76 = v187;
    goto LABEL_17;
  }

  __swift_destroy_boxed_opaque_existential_1(v58);
LABEL_10:

  swift_deallocPartialClassInstance();
  return v2;
}

uint64_t SyncedDictionary.encode(to:)(void *a1)
{
  v180 = a1;
  v2 = *v1;
  v155 = type metadata accessor for LamportTimestamp(0);
  v177 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v126 = &v125 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v147 = &v125 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v146 = &v125 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v134 = &v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v150 = &v125 - v11;
  v12 = v1;
  v13 = v2[35];
  v14 = v2[36];
  v15 = v2[37];
  v16 = v2[38];
  v17 = v2[39];
  v18 = v2[40];
  v19 = v2[41];
  v20 = v2[42];
  v21 = v12;
  v189 = v13;
  v190 = v14;
  v191 = v15;
  v192 = v16;
  v193 = v17;
  v194 = v18;
  v195 = v19;
  v196 = v20;
  v166 = type metadata accessor for SyncedDictionary.Element(255, &v189);
  v22 = sub_26C46C474();
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v133 = &v125 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v132 = &v125 - v26;
  v137 = *(v14 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v175 = &v125 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v149 = &v125 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v153 = &v125 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v179 = &v125 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v138 = &v125 - v36;
  v136 = *(v13 - 1);
  v37 = MEMORY[0x28223BE20](v35);
  v174 = &v125 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v148 = &v125 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v178 = &v125 - v42;
  MEMORY[0x28223BE20](v41);
  v165 = &v125 - v43;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v163 = sub_26C46C474();
  v176 = *(v163 - 8);
  v44 = MEMORY[0x28223BE20](v163);
  v173 = &v125 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v162 = &v125 - v46;
  v189 = v13;
  v190 = v14;
  v135 = v14;
  v145 = v15;
  v191 = v15;
  v192 = v16;
  v158 = v16;
  v193 = v17;
  v194 = v18;
  v144 = v18;
  v143 = v19;
  v195 = v19;
  v196 = v20;
  v142 = v20;
  type metadata accessor for SyncedDictionary.CodingKeys(255, &v189);
  swift_getWitnessTable();
  v130 = sub_26C46C6E4();
  v129 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v48 = &v125 - v47;
  __swift_project_boxed_opaque_existential_1(v180, v180[3]);
  v128 = v48;
  sub_26C46C8B4();
  v180 = v13;
  v161 = v17;
  v197 = sub_26C46C114();
  v49 = qword_280498288;
  swift_beginAccess();
  v50 = *&v21[v49];
  if ((v50 & 0xC000000000000001) != 0)
  {
    v51 = sub_26C46C5C4();
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = v51 | 0x8000000000000000;
  }

  else
  {
    v56 = -1 << *(v50 + 32);
    v53 = ~v56;
    v52 = v50 + 64;
    v57 = -v56;
    if (v57 < 64)
    {
      v58 = ~(-1 << v57);
    }

    else
    {
      v58 = -1;
    }

    v54 = v58 & *(v50 + 64);
    v55 = v50;
  }

  v172 = (v136 + 32);
  v152 = qword_280498268;
  v171 = (v137 + 32);
  v160 = TupleTypeMetadata2 - 8;
  v127 = v53;
  v164 = (v53 + 64) >> 6;
  v170 = (v136 + 16);
  v169 = (v137 + 16);
  v159 = (v176 + 32);
  v151 = (v177 + 48);
  v141 = v166 - 8;
  v140 = (v137 + 8);
  v139 = (v136 + 8);

  v60 = 0;
  v154 = v21;
  v61 = v135;
  v62 = v175;
  v63 = v174;
  v64 = v173;
  v157 = v52;
  v167 = v55;
  v65 = v165;
  while (1)
  {
    v156 = v54;
    v176 = v60;
    if ((v55 & 0x8000000000000000) == 0)
    {
      v75 = v54;
      v76 = v60;
      if (!v54)
      {
        if (v164 <= v60 + 1)
        {
          v77 = v60 + 1;
        }

        else
        {
          v77 = v164;
        }

        v78 = v77 - 1;
        v79 = v60;
        v80 = TupleTypeMetadata2;
        while (1)
        {
          v76 = v79 + 1;
          if (__OFADD__(v79, 1))
          {
            break;
          }

          if (v76 >= v164)
          {
            v177 = v78;
            v54 = 0;
            v85 = 1;
            goto LABEL_25;
          }

          v75 = *(v52 + 8 * v76);
          ++v79;
          if (v75)
          {
            v55 = v167;
            goto LABEL_21;
          }
        }

        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        return result;
      }

LABEL_21:
      v54 = (v75 - 1) & v75;
      v81 = v61;
      v82 = __clz(__rbit64(v75)) | (v76 << 6);
      (*(v136 + 16))(v65, *(v55 + 48) + *(v136 + 72) * v82, v180);
      v83 = v138;
      (*(v137 + 16))(v138, *(v55 + 56) + *(v137 + 72) * v82, v81);
      goto LABEL_24;
    }

    if (sub_26C46C5D4())
    {
      sub_26C46C754();
      swift_unknownObjectRelease();
      v83 = v138;
      sub_26C46C754();
      swift_unknownObjectRelease();
      v76 = v176;
      v81 = v61;
LABEL_24:
      v80 = TupleTypeMetadata2;
      v84 = *(TupleTypeMetadata2 + 48);
      v64 = v173;
      (*v172)(v173, v65, v180);
      (*v171)(&v64[v84], v83, v81);
      v85 = 0;
      v177 = v76;
      v61 = v81;
      v62 = v175;
      v63 = v174;
      goto LABEL_25;
    }

    v85 = 1;
    v177 = v176;
    v62 = v175;
    v80 = TupleTypeMetadata2;
LABEL_25:
    v86 = *(v80 - 8);
    (*(v86 + 56))(v64, v85, 1, v80);
    v87 = v162;
    (*v159)();
    if ((*(v86 + 48))(v87, 1, v80) == 1)
    {
      break;
    }

    v176 = v54;
    v88 = v63;
    v89 = *(v80 + 48);
    v90 = v178;
    (*v172)(v178, v87, v180);
    v91 = v179;
    (*v171)(v179, &v87[v89], v61);
    v92 = *v169;
    (*v169)(v153, v91, v61);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497440, &unk_26C46D3E0);
    if (swift_dynamicCast())
    {
      v93 = v91;
      v95 = v185;
      v94 = v186;
      v96 = v180;
      (*v170)(v148, v90, v180);
      v92(v149, v93, v61);
      swift_beginAccess();
      v97 = v150;
      v98 = v155;
      v99 = v161;
      sub_26C46C184();
      swift_endAccess();
      result = (*v151)(v97, 1, v98);
      if (result == 1)
      {
        goto LABEL_38;
      }

      ObjectType = swift_getObjectType();
      v156 = v95;
      v101 = ObjectType;
      v102 = sub_26C3F8720(ObjectType, v94);
      v103 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
      swift_beginAccess();
      v104 = sub_26C46BB54();
      v105 = *(v104 - 8);
      v106 = v146;
      (*(v105 + 16))(v146, v102 + v103, v104);

      (*(v105 + 56))(v106, 0, 1, v104);
      v107 = sub_26C3F8720(v101, v94);
      v108 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownerUUID;
      swift_beginAccess();
      v109 = v107 + v108;
      v110 = v147;
      sub_26C3DDD48(v109, v147, &qword_280497430, &unk_26C46D3D0);

      *&v124 = v99;
      *(&v124 + 1) = v144;
      v111 = v132;
      v61 = v135;
      sub_26C459198(v149, v150, v106, v110, v96, v135, v145, v158, v132, v124, v143, v142);
      (*(*(v166 - 8) + 56))(v111, 0, 1, v166);
      sub_26C46C174();
      sub_26C46C194();
      swift_unknownObjectRelease();
      v63 = v174;
    }

    else
    {
      (*v170)(v88, v90, v180);
      v92(v62, v91, v61);
      swift_beginAccess();
      v66 = v134;
      v67 = v155;
      v68 = v161;
      sub_26C46C184();
      swift_endAccess();
      result = (*v151)(v66, 1, v67);
      if (result == 1)
      {
        goto LABEL_37;
      }

      v69 = v61;
      v70 = sub_26C46BB54();
      v71 = *(*(v70 - 8) + 56);
      v72 = v146;
      v71(v146, 1, 1, v70);
      v73 = v147;
      v71(v147, 1, 1, v70);
      *&v123 = v68;
      *(&v123 + 1) = v144;
      v74 = v133;
      sub_26C459198(v62, v66, v72, v73, v180, v69, v145, v158, v133, v123, v143, v142);
      (*(*(v166 - 8) + 56))(v74, 0, 1, v166);
      sub_26C46C174();
      v63 = v174;
      sub_26C46C194();
      v61 = v69;
    }

    (*v140)(v179, v61);
    result = (*v139)(v178, v180);
    v60 = v177;
    v54 = v176;
    v62 = v175;
    v65 = v165;
    v64 = v173;
    v52 = v157;
    v55 = v167;
  }

  sub_26C40B328(v167);
  v185 = v197;
  LOBYTE(v181) = 0;
  sub_26C46C174();
  WitnessTable = swift_getWitnessTable();
  v113 = v158;
  v187 = v158;
  v188 = WitnessTable;
  swift_getWitnessTable();
  v114 = v130;
  v115 = v128;
  v116 = v131;
  sub_26C46C6D4();
  if (v116)
  {
  }

  else
  {

    v117 = qword_280498260;
    v118 = v154;
    swift_beginAccess();
    v181 = *&v118[v117];
    v184 = 1;
    sub_26C46C174();
    v119 = sub_26C46B8C4(&qword_280497448, type metadata accessor for LamportTimestamp, &unk_26C46DFB8);
    v182 = v113;
    v183 = v119;
    swift_getWitnessTable();
    sub_26C46C6D4();
    v120 = OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__timestamp;
    swift_beginAccess();
    v121 = &v118[v120];
    v122 = v126;
    sub_26C46B83C(v121, v126, type metadata accessor for LamportTimestamp);
    v184 = 2;
    sub_26C46C6D4();
    sub_26C46B90C(v122, type metadata accessor for LamportTimestamp);
  }

  return (*(v129 + 8))(v115, v114);
}

uint64_t SyncedDictionary.__allocating_init(wrappedValue:)(unint64_t a1)
{
  v2 = swift_allocObject();
  SyncedDictionary.init(wrappedValue:)(a1);
  return v2;
}

void *SyncedDictionary.init(wrappedValue:)(unint64_t a1)
{
  v2 = v1;
  v26 = *v1;
  v3 = v26;
  v27 = a1;
  v4 = type metadata accessor for LamportTimestamp(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_280498260;
  v8 = *(v26 + 280);
  swift_getTupleTypeMetadata2();
  v9 = sub_26C46C284();
  v10 = v3[39];
  v11 = sub_26C40AFD4(v9, v8, v4, v10);

  *(v2 + v7) = v11;
  v12 = qword_280498268;
  v13 = sub_26C46C284();
  v14 = sub_26C40AFD4(v13, v8, v4, v10);

  *(v2 + v12) = v14;
  *(v2 + qword_280498270) = 0;
  *(v2 + qword_280498278) = 0;
  v15 = v3[36];
  if (swift_conformsToProtocol2())
  {
    v16 = v15 == 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = !v16;
  *(v2 + qword_280498280) = v17;
  v18 = qword_2804988B0;
  v19 = v3[42];
  v28[0] = v8;
  v28[1] = v15;
  v29 = *(v26 + 296);
  v30 = v10;
  v31 = *(v26 + 320);
  v32 = v19;
  type metadata accessor for SyncedDictionary.SyncedDictionaryChangeInfo(255, v28);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280497268, &qword_26C46CFE0);
  swift_getTupleTypeMetadata2();
  sub_26C46C014();
  *(v2 + v18) = sub_26C46C004();
  swift_getTupleTypeMetadata2();
  v20 = sub_26C46C284();
  v21 = sub_26C40AFD4(v20, v8, v15, v10);

  *(v2 + qword_280498288) = v21;
  *v6 = 0;
  sub_26C46BD14();
  v22 = *(v4 + 24);
  v23 = type metadata accessor for PBUUID(0);
  (*(*(v23 - 8) + 56))(&v6[v22], 1, 1, v23);
  *(v2 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__controller) = 0;
  *(v2 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__parentPropertyID) = -1;
  *(v2 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__propertyID) = -1;
  v24 = OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__pendingModelControllers;
  *(v2 + v24) = sub_26C3E8EF0(MEMORY[0x277D84F90]);
  sub_26C40C2E8(v6, v2 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__timestamp, type metadata accessor for LamportTimestamp);

  sub_26C45C8FC(v27);

  return v2;
}

void sub_26C45C8FC(unint64_t a1)
{
  v434 = a1;
  v3 = *(*v1 + 288);
  v4 = *(*v1 + 296);
  v5 = *(*v1 + 304);
  v6 = *(*v1 + 312);
  v7 = *(*v1 + 320);
  v8 = *(*v1 + 328);
  v9 = *(*v1 + 336);
  v459[0] = *(*v1 + 280);
  v2 = v459[0];
  v459[1] = v3;
  v378 = v4;
  v459[2] = v4;
  v460 = v5;
  v377 = v5;
  v455 = v6;
  v461 = v6;
  v462 = v7;
  v376 = v7;
  v375 = v8;
  v463 = v8;
  v464 = v9;
  v416 = v9;
  type metadata accessor for SyncedDictionary.SyncedDictionaryChangeInfo(255, v459);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280497268, &qword_26C46CFE0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v381 = *(TupleTypeMetadata2 - 8);
  v10 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v380 = &v356[-v11];
  MEMORY[0x28223BE20](v10);
  v379 = &v356[-v12];
  v13 = type metadata accessor for ValueData(0);
  v368 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v372 = &v356[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v364 = &v356[-v16];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v392 = &v356[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x28223BE20](v18);
  v386 = &v356[-v21];
  MEMORY[0x28223BE20](v20);
  v367 = &v356[-v22];
  v410 = type metadata accessor for LamportTimestamp(0);
  v23 = *(v410 - 8);
  v24 = MEMORY[0x28223BE20](v410);
  v402 = &v356[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = MEMORY[0x28223BE20](v24);
  v403 = &v356[-v27];
  MEMORY[0x28223BE20](v26);
  v391 = &v356[-v28];
  v451 = sub_26C46C474();
  v454 = *(v451 - 8);
  v29 = MEMORY[0x28223BE20](v451);
  v363 = &v356[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = MEMORY[0x28223BE20](v29);
  v417 = &v356[-v32];
  v33 = MEMORY[0x28223BE20](v31);
  v422 = &v356[-v34];
  v35 = MEMORY[0x28223BE20](v33);
  v362 = &v356[-v36];
  v37 = MEMORY[0x28223BE20](v35);
  v423 = &v356[-v38];
  v429 = *(v3 - 8);
  v39 = MEMORY[0x28223BE20](v37);
  v421 = &v356[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v41 = MEMORY[0x28223BE20](v39);
  v415 = &v356[-v42];
  v43 = MEMORY[0x28223BE20](v41);
  v447 = &v356[-v44];
  v45 = MEMORY[0x28223BE20](v43);
  v441 = &v356[-v46];
  v428 = *(v2 - 8);
  v47 = MEMORY[0x28223BE20](v45);
  v414 = &v356[-((v48 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v49 = MEMORY[0x28223BE20](v47);
  v51 = &v356[-v50];
  MEMORY[0x28223BE20](v49);
  v442 = &v356[-v52];
  v452 = v2;
  v427 = swift_getTupleTypeMetadata2();
  v446 = sub_26C46C474();
  v453 = *(v446 - 8);
  v53 = MEMORY[0x28223BE20](v446);
  v419 = &v356[-((v54 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v55 = MEMORY[0x28223BE20](v53);
  v420 = &v356[-v56];
  v57 = MEMORY[0x28223BE20](v55);
  v430 = &v356[-v58];
  MEMORY[0x28223BE20](v57);
  v436 = &v356[-v59];
  v412 = type metadata accessor for PBUUID(0);
  v411 = *(v412 - 8);
  MEMORY[0x28223BE20](v412);
  v409 = &v356[-((v60 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v62 = MEMORY[0x28223BE20](v61 - 8);
  v374 = &v356[-((v63 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v64 = MEMORY[0x28223BE20](v62);
  v385 = &v356[-v65];
  v66 = MEMORY[0x28223BE20](v64);
  v373 = &v356[-v67];
  v68 = MEMORY[0x28223BE20](v66);
  v390 = &v356[-v69];
  v70 = MEMORY[0x28223BE20](v68);
  v366 = &v356[-v71];
  MEMORY[0x28223BE20](v70);
  v73 = &v356[-v72];
  v407 = sub_26C46BB54();
  v74 = *(v407 - 8);
  v75 = MEMORY[0x28223BE20](v407);
  v77 = &v356[-((v76 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v78 = MEMORY[0x28223BE20](v75);
  v384 = &v356[-v79];
  v80 = MEMORY[0x28223BE20](v78);
  v388 = &v356[-v81];
  v82 = MEMORY[0x28223BE20](v80);
  v406 = &v356[-v83];
  v84 = MEMORY[0x28223BE20](v82);
  v405 = &v356[-v85];
  MEMORY[0x28223BE20](v84);
  *&v456 = &v356[-v86];
  v87 = type metadata accessor for DictionaryChangedMessage(0);
  MEMORY[0x28223BE20](v87);
  v408 = &v356[-((v88 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v413 = OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__controller;
  v89 = *(v1 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__controller);
  v437 = v1;
  if (v89)
  {
    v450 = v73;
    v90 = *(*v89 + 744);

    if ((v90(v91) & 1) == 0)
    {
      if (qword_280497148 != -1)
      {
        goto LABEL_181;
      }

      goto LABEL_7;
    }

    v1 = v437;
    v73 = v450;
  }

  v450 = v23;
  v448 = v3;
  v449 = v74;
  *&v457 = sub_26C46C284();
  *(&v457 + 1) = sub_26C46C284();
  v458 = sub_26C46C284();
  v92 = *(v1 + v413);
  v433 = v51;
  v389 = v77;
  if (!v92)
  {
    v95 = v407;
    v401 = *(v74 + 56);
    v401(v73, 1, 1, v407);
    v102 = v456;
    if (qword_280497190 != -1)
    {
      goto LABEL_183;
    }

    goto LABEL_12;
  }

  v93 = *(v74 + 16);
  v94 = (v74 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v95 = v407;
  v93(v73, v92 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipUUID, v407);
  v401 = *(v74 + 56);
  v401(v73, 0, 1, v95);
  v96 = v456;
  (*(v74 + 32))(v456, v73, v95);
  v97 = v74;
LABEL_15:
  LODWORD(v456) = *(v437 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__propertyID);
  v104 = v408;
  *v408 = 0;
  v105 = MEMORY[0x277D84F90];
  *(v104 + 1) = MEMORY[0x277D84F90];
  *(v104 + 2) = v105;
  *(v104 + 3) = v105;
  *(v104 + 4) = v105;
  *(v104 + 5) = v105;
  *(v104 + 6) = v105;
  *(v104 + 7) = v105;
  *(v104 + 8) = v105;
  sub_26C46BD14();
  v106 = *(v87 + 56);
  v107 = v411 + 56;
  v108 = *(v411 + 56);
  v108(&v104[v106], 1, 1, v412);
  v109 = v405;
  v93(v405, v96, v95);
  v110 = v93;
  v111 = v406;
  v399 = v110;
  v404 = v94;
  v110(v406, v109, v95);
  v112 = v409;
  sub_26C40F280(v111, v409);
  v113 = *(v97 + 8);
  v113(v96, v95);
  v396 = v97 + 8;
  v395 = v113;
  v113(v109, v95);
  sub_26C3DE270(&v104[v106], &qword_280497458, &unk_26C46D3F0);
  sub_26C40C2E8(v112, &v104[v106], type metadata accessor for PBUUID);
  v411 = v107;
  v397 = v108;
  v108(&v104[v106], 0, 1, v412);
  *v104 = v456;
  v114 = qword_280498288;
  v115 = v437;
  swift_beginAccess();
  v418 = v114;
  v116 = *(v115 + v114);
  if ((v116 & 0xC000000000000001) != 0)
  {
    v117 = sub_26C46C5C4();
    v118 = 0;
    v119 = 0;
    v439 = 0;
    v432 = v117 | 0x8000000000000000;
  }

  else
  {
    v120 = -1 << *(v116 + 32);
    v119 = ~v120;
    v118 = (v116 + 64);
    v121 = -v120;
    if (v121 < 64)
    {
      v122 = ~(-1 << v121);
    }

    else
    {
      v122 = -1;
    }

    v439 = (v122 & *(v116 + 64));
    v432 = v116;
  }

  v87 = v452;
  v123 = v453;
  v74 = v433;
  v124 = v430;
  v125 = v436;
  v126 = v454;
  v383 = qword_280498268;
  *&v456 = v428 + 32;
  v393 = qword_280498280;
  v453 = (v429 + 32);
  v127 = v427;
  v424 = (v427 - 8);
  v369 = v119;
  v425 = (v119 + 64) >> 6;
  v435 = (v428 + 16);
  v431 = (v429 + 16);
  v443 = v123 + 4;
  v454 = (v429 + 48);
  v394 = (v450 + 6);
  v400 = v449 + 7;
  v387 = v449 + 4;
  v365 = (v449 + 6);
  v359 = (v429 + 56);
  v450 = (v126 + 1);
  v449 = (v429 + 8);
  v440 = (v428 + 8);

  v128 = 0;
  v398 = 0;
  v358 = MEMORY[0x277D84F90];
  v360 = MEMORY[0x277D84F90];
  v371 = MEMORY[0x277D84F90];
  v361 = MEMORY[0x277D84F90];
  v370 = MEMORY[0x277D84F90];
  v129 = v441;
  v426 = v118;
  v130 = v439;
  while (1)
  {
    v439 = v130;
    v438 = v128;
    if ((v432 & 0x8000000000000000) == 0)
    {
      if (v130)
      {
        v131 = v74;
        v132 = v124;
        v133 = v130;
        v134 = v128;
        goto LABEL_35;
      }

      if (v425 <= (v128 + 1))
      {
        v138 = (v128 + 1);
      }

      else
      {
        v138 = v425;
      }

      v139 = (v138 - 1);
      v140 = v128;
      v141 = v453;
      while (1)
      {
        v134 = (v140 + 1);
        if (__OFADD__(v140, 1))
        {
          break;
        }

        if (v134 >= v425)
        {
          v131 = v74;
          v135 = v125;
          v444 = v139;
          v445 = 0;
          v146 = 1;
          goto LABEL_37;
        }

        v133 = *&v118[8 * v134];
        ++v140;
        if (v133)
        {
          v131 = v74;
          v132 = v124;
LABEL_35:
          v135 = v125;
          v445 = (v133 - 1) & v133;
          v142 = __clz(__rbit64(v133)) | (v134 << 6);
          v136 = v442;
          v143 = v432;
          (*(v428 + 16))(v442, *(v432 + 48) + *(v428 + 72) * v142, v87);
          v137 = v448;
          (*(v429 + 16))(v129, *(v143 + 56) + *(v429 + 72) * v142, v448);
          v124 = v132;
          v127 = v427;
LABEL_36:
          v144 = *(v127 + 48);
          (*v456)(v124, v136, v87);
          v145 = &v124[v144];
          v141 = v453;
          (*v453)(v145, v129, v137);
          v146 = 0;
          v444 = v134;
          goto LABEL_37;
        }
      }

      __break(1u);
      goto LABEL_167;
    }

    v131 = v74;
    if (sub_26C46C5D4())
    {
      v135 = v125;
      v136 = v442;
      sub_26C46C754();
      v87 = v452;
      swift_unknownObjectRelease();
      v137 = v448;
      sub_26C46C754();
      swift_unknownObjectRelease();
      v134 = v438;
      v445 = v439;
      goto LABEL_36;
    }

    v135 = v125;
    v146 = 1;
    v444 = v438;
    v445 = v439;
    v141 = v453;
LABEL_37:
    v147 = *(v127 - 8);
    v148 = v147;
    v149 = *(v147 + 56);
    v150 = v147 + 56;
    (v149)(v124, v146, 1, v127);
    v151 = v124;
    v152 = *v443;
    (*v443)(v135, v151, v446);
    v153 = *(v148 + 48);
    if (v153(v135, 1, v127) == 1)
    {
      break;
    }

    v154 = *(v127 + 48);
    (*v456)(v131, v135, v87);
    v155 = *v141;
    v96 = v448;
    (*v141)(v447, v135 + v154, v448);
    v156 = v423;
    sub_26C46C184();
    v157 = *v454;
    if ((*v454)(v156, 1, v96) == 1)
    {
      (*v450)(v156, v451);
    }

    else
    {
      v158 = v156;
      v159 = v415;
      v155(v415, v158, v96);
      if ((sub_26C46C1C4() & 1) == 0)
      {
        v74 = v433;
        (*v435)(v442, v433, v87);
        sub_26C46C2E4();
        sub_26C46C2C4();
        v170 = v437;
        swift_beginAccess();
        v162 = v367;
        v171 = v410;
        sub_26C46C184();
        v172 = (*v394)(v162, 1, v171);
        v124 = v430;
        v125 = v436;
        if (v172 == 1)
        {
LABEL_184:
          sub_26C3DE270(v162, &qword_280497468, &unk_26C46D400);
          swift_endAccess();
          sub_26C46C5E4();
          __break(1u);
          return;
        }

        sub_26C40C2E8(v162, v391, type metadata accessor for LamportTimestamp);
        swift_endAccess();
        v173 = *(v170 + v413);
        if (v173)
        {
          v174 = v366;
          v175 = v407;
          v399(v366, v173 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipUUID, v407);
          v401(v174, 0, 1, v175);
          v176 = v388;
          (*v387)(v388, v174, v175);
        }

        else
        {
          v205 = v366;
          v175 = v407;
          v401(v366, 1, 1, v407);
          if (qword_280497190 != -1)
          {
            swift_once();
          }

          v206 = __swift_project_value_buffer(v175, qword_2804985C0);
          v176 = v388;
          v399(v388, v206, v175);
          if ((*v365)(v205, 1, v175) != 1)
          {
            sub_26C3DE270(v205, &qword_280497430, &unk_26C46D3D0);
          }
        }

        v207 = v405;
        v208 = v399;
        v399(v405, v176, v175);
        v208(v406, v207, v175);
        v209 = v409;
        sub_26C40F280(v406, v409);
        v210 = v207;
        v73 = v395;
        (v395)(v210, v175);
        (v73)(v388, v175);
        v95 = *(v410 + 24);
        v102 = v391;
        sub_26C3DE270(v391 + v95, &qword_280497458, &unk_26C46D3F0);
        sub_26C40C2E8(v209, v102 + v95, type metadata accessor for PBUUID);
        v397(v102 + v95, 0, 1, v412);
        v211 = __CFADD__(*v102, 1);
        v357 = *v102 + 1;
        if (v211)
        {
          __break(1u);
LABEL_183:
          swift_once();
LABEL_12:
          v103 = __swift_project_value_buffer(v95, qword_2804985C0);
          v93 = *(v74 + 16);
          v93(v102, v103, v95);
          if ((*(v74 + 48))(v73, 1, v95) != 1)
          {
            sub_26C3DE270(v73, &qword_280497430, &unk_26C46D3D0);
          }

          v97 = v74;
          v94 = (v74 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          v96 = v456;
          goto LABEL_15;
        }

        *v102 = v357;
        v212 = v102;
        v213 = v437;
        sub_26C4608BC(v74, v212);
        if (*(v213 + v393) == 1)
        {
          v460 = v96;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v459);
          v215 = *v431;
          (*v431)(boxed_opaque_existential_0, v447, v96);
          sub_26C3E13DC(v459);
          __swift_destroy_boxed_opaque_existential_1(v459);
          v460 = v96;
          v216 = __swift_allocate_boxed_opaque_existential_0(v459);
          v215(v216, v415, v96);
          v87 = v452;
          v217 = v407;
          v218 = v401;
          v401(v390, 1, 1, v407);
          v219 = v373;
          v218(v373, 1, 1, v217);
          v74 = v433;
          v220 = v390;
          sub_26C3E0D08(v459, v390, v219);
          sub_26C3DE270(v219, &qword_280497430, &unk_26C46D3D0);
          sub_26C3DE270(v220, &qword_280497430, &unk_26C46D3D0);
          sub_26C3DE270(v459, &qword_280497450, &qword_26C471080);
        }

        if (*(v213 + v413) && swift_weakLoadStrong())
        {

          v221 = v87;
          v222 = v398;
          v223 = sub_26C46AB74(v74, v221);
          v225 = v224;
          if (v222)
          {
            v398 = v222;
            sub_26C40B328(v432);
            v344 = *v449;
            (*v449)(v415, v96);
            (v344)(v447, v96);
            v343 = v452;
            v342 = v391;
            goto LABEL_174;
          }

          v226 = v223;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v398 = v225;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v361 = sub_26C42BA84(0, *(v361 + 2) + 1, 1, v361);
          }

          v229 = *(v361 + 2);
          v228 = *(v361 + 3);
          if (v229 >= v228 >> 1)
          {
            v361 = sub_26C42BA84((v228 > 1), v229 + 1, 1, v361);
          }

          v230 = v361;
          *(v361 + 2) = v229 + 1;
          v231 = &v230[16 * v229];
          v232 = v398;
          *(v231 + 4) = v226;
          *(v231 + 5) = v232;
          *(v408 + 3) = v230;
          v233 = v362;
          (*v431)(v362, v415, v96);
          (*v359)(v233, 0, 1, v96);
          sub_26C460AA8(v233, v364);
          v398 = 0;
          (*v450)(v233, v451);
          v234 = v358;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v234 = sub_26C42BCBC(0, v234[2] + 1, 1, v234);
          }

          v236 = v234[2];
          v235 = v234[3];
          if (v236 >= v235 >> 1)
          {
            v234 = sub_26C42BCBC((v235 > 1), v236 + 1, 1, v234);
          }

          v234[2] = v236 + 1;
          sub_26C40C2E8(v364, v234 + ((*(v368 + 80) + 32) & ~*(v368 + 80)) + *(v368 + 72) * v236, type metadata accessor for ValueData);
          *(v408 + 4) = v234;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v360 = sub_26C42BCE4(0, *(v360 + 2) + 1, 1, v360);
          }

          v238 = *(v360 + 2);
          v237 = *(v360 + 3);
          v358 = v234;
          if (v238 >= v237 >> 1)
          {
            v360 = sub_26C42BCE4((v237 > 1), v238 + 1, 1, v360);
          }

          v239 = *v449;
          (*v449)(v415, v96);
          (v239)(v447, v96);
          v87 = v452;
          (*v440)(v74, v452);
          v240 = v360;
          *(v360 + 2) = v238 + 1;
          *&v240[4 * v238 + 32] = v357;
          *(v408 + 5) = v240;
          v118 = v426;
          v124 = v430;
        }

        else
        {
          v241 = *v449;
          (*v449)(v415, v96);
          (v241)(v447, v96);
          (*v440)(v74, v87);
          v118 = v426;
        }

        v204 = &v423;
        goto LABEL_98;
      }

      (*v449)(v159, v96);
    }

    v74 = v433;
    v160 = v422;
    v124 = v430;
    v125 = v436;
    sub_26C46C184();
    if (v157(v160, 1, v96) == 1)
    {
      (*v450)(v160, v451);
      (*v435)(v442, v74, v87);
      sub_26C46C2E4();
      sub_26C46C2C4();
      v161 = v437;
      swift_beginAccess();
      v162 = v386;
      v163 = v410;
      sub_26C46C184();
      v164 = (*v394)(v162, 1, v163);
      v165 = v399;
      if (v164 == 1)
      {
        goto LABEL_184;
      }

      sub_26C40C2E8(v162, v403, type metadata accessor for LamportTimestamp);
      swift_endAccess();
      v166 = *(v161 + v413);
      if (v166)
      {
        v167 = v385;
        v168 = v407;
        (v165)(v385, v166 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipUUID, v407);
        v401(v167, 0, 1, v168);
        v169 = v384;
        (*v387)();
      }

      else
      {
        v177 = v385;
        v168 = v407;
        v401(v385, 1, 1, v407);
        if (qword_280497190 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v168, qword_2804985C0);
        v169 = v384;
        v165();
        if ((*v365)(v177, 1, v168) != 1)
        {
          sub_26C3DE270(v177, &qword_280497430, &unk_26C46D3D0);
        }
      }

      v178 = v405;
      (v165)(v405, v169, v168);
      v179 = v406;
      (v165)(v406, v178, v168);
      v180 = v409;
      sub_26C40F280(v179, v409);
      v181 = v178;
      v182 = v395;
      (v395)(v181, v168);
      v182(v169, v168);
      v183 = *(v410 + 24);
      v184 = v403;
      sub_26C3DE270(v403 + v183, &qword_280497458, &unk_26C46D3F0);
      sub_26C40C2E8(v180, v184 + v183, type metadata accessor for PBUUID);
      v397(v184 + v183, 0, 1, v412);
      v185 = *v184 + 1;
      if (*v184 == -1)
      {
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        swift_once();
LABEL_7:
        v98 = sub_26C46BFA4();
        __swift_project_value_buffer(v98, qword_280498530);
        v99 = sub_26C46BF84();
        v100 = sub_26C46C3D4();
        if (os_log_type_enabled(v99, v100))
        {
          v101 = swift_slowAlloc();
          *v101 = 0;
          _os_log_impl(&dword_26C3D6000, v99, v100, "SyncedDictionary: Property not registered or is owned by somebody else", v101, 2u);
          MEMORY[0x26D6A18D0](v101, -1, -1);
        }

LABEL_10:

        return;
      }

      *v184 = v185;
      v74 = v433;
      v186 = v184;
      v187 = v437;
      sub_26C46114C(v433, v186);
      if (*(v187 + v393) == 1)
      {
        v460 = v96;
        v188 = __swift_allocate_boxed_opaque_existential_0(v459);
        (*v431)(v188, v447, v96);
        sub_26C3E13DC(v459);
        __swift_destroy_boxed_opaque_existential_1(v459);
      }

      v118 = v426;
      v125 = v436;
      if (*(v187 + v413) && swift_weakLoadStrong())
      {

        v189 = v87;
        v190 = v398;
        v191 = sub_26C46AB74(v74, v189);
        v398 = v190;
        if (v190)
        {
          goto LABEL_168;
        }

        v193 = v191;
        v194 = v192;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v370 = sub_26C42BA84(0, *(v370 + 2) + 1, 1, v370);
        }

        v196 = *(v370 + 2);
        v195 = *(v370 + 3);
        if (v196 >= v195 >> 1)
        {
          v370 = sub_26C42BA84((v195 > 1), v196 + 1, 1, v370);
        }

        v197 = v370;
        *(v370 + 2) = v196 + 1;
        v198 = &v197[16 * v196];
        *(v198 + 4) = v193;
        *(v198 + 5) = v194;
        *(v408 + 1) = v197;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v371 = sub_26C42BCE4(0, *(v371 + 2) + 1, 1, v371);
        }

        v200 = *(v371 + 2);
        v199 = *(v371 + 3);
        if (v200 >= v199 >> 1)
        {
          v371 = sub_26C42BCE4((v199 > 1), v200 + 1, 1, v371);
        }

        (*v449)();
        v201 = v452;
        (*v440)(v74, v452);
        v202 = v371;
        *(v371 + 2) = v200 + 1;
        v203 = &v202[4 * v200];
        v87 = v201;
        *(v203 + 8) = v185;
        *(v408 + 2) = v202;
        v118 = v426;
      }

      else
      {
        (*v449)(v447, v96);
        (*v440)(v74, v87);
      }

      v204 = &v435;
LABEL_98:
      sub_26C46B90C(*(v204 - 32), type metadata accessor for LamportTimestamp);
      v128 = v444;
      v130 = v445;
      v129 = v441;
    }

    else
    {
      (*v449)(v447, v96);
      (*v440)(v74, v87);
      (*v450)(v160, v451);
      v128 = v444;
      v130 = v445;
      v129 = v441;
      v118 = v426;
    }
  }

  v430 = v152;
  v425 = v150;
  v444 = v149;
  sub_26C40B328(v432);
  if ((v434 & 0xC000000000000001) != 0)
  {
    v242 = sub_26C46C5C4();
    v243 = 0;
    v244 = 0;
    v439 = 0;
    v436 = v242 | 0x8000000000000000;
  }

  else
  {
    v245 = -1 << *(v434 + 32);
    v244 = ~v245;
    v243 = v434 + 64;
    v246 = -v245;
    if (v246 < 64)
    {
      v247 = ~(-1 << v246);
    }

    else
    {
      v247 = -1;
    }

    v439 = (v247 & *(v434 + 64));
    v436 = v434;
  }

  v248 = v414;
  v249 = v442;
  v74 = v440;
  v250 = v444;
  v96 = v448;
  v422 = qword_280498260;
  v423 = v244;
  v433 = ((v244 + 64) >> 6);

  v251 = 0;
  v424 = MEMORY[0x277D84F90];
  v426 = MEMORY[0x277D84F90];
  v415 = MEMORY[0x277D84F90];
  v432 = v243;
  v252 = v439;
  while (2)
  {
    v439 = v252;
    v438 = v251;
    if ((v436 & 0x8000000000000000) != 0)
    {
      if (sub_26C46C5D4())
      {
        sub_26C46C754();
        swift_unknownObjectRelease();
        v255 = v441;
        sub_26C46C754();
        swift_unknownObjectRelease();
        v256 = *(v127 + 48);
        v257 = v419;
        (*v456)();
        (*v453)(&v257[v256], v255, v96);
        (v444)(v257, 0, 1, v127);
      }

      else
      {
        v257 = v419;
        (v250)(v419, 1, 1, v127);
      }

      v445 = v438;
      v447 = v439;
      goto LABEL_122;
    }

    if (!v252)
    {
      if (v433 <= v251 + 1)
      {
        v258 = v251 + 1;
      }

      else
      {
        v258 = v433;
      }

      v259 = v258 - 1;
      v260 = v251;
      while (1)
      {
        v254 = v260 + 1;
        if (__OFADD__(v260, 1))
        {
          break;
        }

        if (v254 >= v433)
        {
          v445 = v259;
          v257 = v419;
          (v250)(v419, 1, 1, v127);
          v447 = 0;
          goto LABEL_122;
        }

        v253 = *(v243 + 8 * v254);
        ++v260;
        if (v253)
        {
          goto LABEL_118;
        }
      }

LABEL_167:
      __break(1u);
LABEL_168:
      sub_26C40B328(v432);
      (*v449)(v447, v96);
      v341 = &v435;
      goto LABEL_172;
    }

    v253 = v252;
    v254 = v251;
LABEL_118:
    v447 = ((v253 - 1) & v253);
    v261 = __clz(__rbit64(v253)) | (v254 << 6);
    v262 = v428;
    v263 = v436;
    v264 = v452;
    (*(v428 + 16))(v249, *(v436 + 48) + *(v428 + 72) * v261, v452);
    v265 = v429;
    v266 = *(v263 + 56) + *(v429 + 72) * v261;
    v267 = v249;
    v268 = v441;
    v96 = v448;
    (*(v429 + 16))(v441, v266, v448);
    v269 = *(v427 + 48);
    v270 = *(v262 + 32);
    v271 = v419;
    v272 = v267;
    v127 = v427;
    v270(v419, v272, v264);
    v273 = v268;
    v257 = v271;
    (*(v265 + 32))(&v271[v269], v273, v96);
    (v444)(v271, 0, 1, v127);
    v445 = v254;
    v248 = v414;
    v74 = v440;
LABEL_122:
    v274 = v420;
    (v430)(v420, v257, v446);
    if (v153(v274, 1, v127) == 1)
    {
      sub_26C40B328(v436);
      v328 = v437;
      *(v437 + v418) = v434;

      v329 = v458;
      v330 = sub_26C46BCD4();
      v331 = *(*(v330 - 8) + 56);
      v456 = v457;
      v332 = v379;
      v331(v379, 1, 1, v330);
      v333 = TupleTypeMetadata2;
      v334 = *(TupleTypeMetadata2 + 48);
      v335 = v380;
      *v380 = v456;
      *(v335 + 2) = v329;
      sub_26C3E9F28(v332, v335 + v334, &qword_280497268, &qword_26C46CFE0);
      sub_26C46BFE4();
      (*(v381 + 8))(v335, v333);
      if (*(v328 + v413) && (Strong = swift_weakLoadStrong()) != 0)
      {
        v337 = Strong;

        v338 = sub_26C3EA940();
        if (v338 && *(v337 + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_options) != 1)
        {
          sub_26C46B90C(v408, type metadata accessor for DictionaryChangedMessage);

          goto LABEL_10;
        }

        MEMORY[0x28223BE20](v338);
        v339 = v408;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497478, &qword_26C46D410);
        sub_26C46BB64();

        v340 = v339;
      }

      else
      {
        v340 = v408;
      }

      sub_26C46B90C(v340, type metadata accessor for DictionaryChangedMessage);
      return;
    }

    v275 = *(v127 + 48);
    v276 = v452;
    (*v456)(v248, v274, v452);
    v277 = &v274[v275];
    v278 = v421;
    (*v453)(v421, v277, v96);
    swift_beginAccess();
    v279 = v417;
    sub_26C46C184();
    swift_endAccess();
    if ((*v454)(v279, 1, v96) != 1)
    {
      (*v449)(v278, v96);
      (*v74)(v248, v276);
      (*v450)(v279, v451);
      v251 = v445;
      v252 = v447;
      v249 = v442;
LABEL_125:
      v250 = v444;
      v243 = v432;
      continue;
    }

    break;
  }

  v391 = *v450;
  (v391)(v279, v451);
  (*v435)(v442, v248, v276);
  sub_26C46C2E4();
  sub_26C46C2C4();
  v280 = v437;
  swift_beginAccess();
  v281 = v392;
  v282 = v410;
  sub_26C46C184();
  swift_endAccess();
  v403 = *v394;
  if ((v403)(v281, 1, v282) == 1)
  {
    v283 = v402;
    *v402 = 0;
    sub_26C46BD14();
    v284 = v283 + *(v282 + 24);
    v285 = v392;
    v397(v284, 1, 1, v412);
    v286 = (v403)(v285, 1, v282);
    v287 = v374;
    if (v286 != 1)
    {
      sub_26C3DE270(v285, &qword_280497468, &unk_26C46D400);
    }
  }

  else
  {
    sub_26C40C2E8(v392, v402, type metadata accessor for LamportTimestamp);
    v287 = v374;
  }

  v288 = *(v280 + v413);
  if (v288)
  {
    v289 = v407;
    v290 = v399;
    v399(v287, v288 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipUUID, v407);
    v401(v287, 0, 1, v289);
    v291 = v389;
    (*v387)(v389, v287, v289);
  }

  else
  {
    v289 = v407;
    v401(v287, 1, 1, v407);
    if (qword_280497190 != -1)
    {
      swift_once();
    }

    v292 = __swift_project_value_buffer(v289, qword_2804985C0);
    v291 = v389;
    v290 = v399;
    v399(v389, v292, v289);
    if ((*v365)(v287, 1, v289) != 1)
    {
      sub_26C3DE270(v287, &qword_280497430, &unk_26C46D3D0);
    }
  }

  v293 = v405;
  v290(v405, v291, v289);
  v294 = v290;
  v295 = v406;
  v294(v406, v293, v289);
  sub_26C40F280(v295, v409);
  v296 = v395;
  (v395)(v293, v289);
  v296(v389, v289);
  v297 = *(v410 + 24);
  v298 = v402;
  sub_26C3DE270(v402 + v297, &qword_280497458, &unk_26C46D3F0);
  sub_26C40C2E8(v409, v298 + v297, type metadata accessor for PBUUID);
  v397(v298 + v297, 0, 1, v412);
  v299 = *v298 + 1;
  if (*v298 == -1)
  {
    goto LABEL_180;
  }

  LODWORD(v403) = *v298 + 1;
  *v298 = v299;
  v300 = v298;
  v301 = v437;
  sub_26C461398(v248, v300);
  if (*(v301 + v393))
  {
    v460 = v96;
    v302 = __swift_allocate_boxed_opaque_existential_0(v459);
    (*v431)(v302, v421, v96);
    v303 = v407;
    v304 = v401;
    v401(v390, 1, 1, v407);
    v305 = v373;
    v304(v373, 1, 1, v303);
    v301 = v437;
    v306 = v390;
    sub_26C3E0D08(v459, v390, v305);
    sub_26C3DE270(v305, &qword_280497430, &unk_26C46D3D0);
    sub_26C3DE270(v306, &qword_280497430, &unk_26C46D3D0);
    sub_26C3DE270(v459, &qword_280497450, &qword_26C471080);
  }

  v74 = v440;
  v307 = v449;
  v249 = v442;
  if (!*(v301 + v413) || !swift_weakLoadStrong())
  {
    (*v307)(v421, v96);
    (*v74)(v248, v276);
LABEL_157:
    sub_26C46B90C(v402, type metadata accessor for LamportTimestamp);
    v251 = v445;
    v252 = v447;
    goto LABEL_125;
  }

  v308 = v276;
  v309 = v398;
  v310 = sub_26C46AB74(v248, v308);
  v398 = v309;
  if (v309)
  {
    sub_26C40B328(v436);
    (*v307)(v421, v96);
    goto LABEL_171;
  }

  v312 = v310;
  v388 = v311;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v426 = sub_26C42BA84(0, *(v426 + 2) + 1, 1, v426);
  }

  v314 = *(v426 + 2);
  v313 = *(v426 + 3);
  v315 = v314 + 1;
  if (v314 >= v313 >> 1)
  {
    v327 = sub_26C42BA84((v313 > 1), v314 + 1, 1, v426);
    v315 = v314 + 1;
    v426 = v327;
  }

  v316 = v426;
  *(v426 + 2) = v315;
  v317 = &v316[16 * v314];
  v318 = v388;
  *(v317 + 4) = v312;
  *(v317 + 5) = v318;
  *(v408 + 6) = v316;
  v319 = v363;
  (*v431)(v363, v421, v96);
  (*v359)(v319, 0, 1, v96);
  v320 = v398;
  sub_26C460AA8(v319, v372);
  v398 = v320;
  if (!v320)
  {
    (v391)(v319, v451);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v424 = sub_26C42BCBC(0, v424[2] + 1, 1, v424);
    }

    v322 = v424[2];
    v321 = v424[3];
    if (v322 >= v321 >> 1)
    {
      v424 = sub_26C42BCBC((v321 > 1), v322 + 1, 1, v424);
    }

    v323 = v424;
    v424[2] = v322 + 1;
    sub_26C40C2E8(v372, v323 + ((*(v368 + 80) + 32) & ~*(v368 + 80)) + *(v368 + 72) * v322, type metadata accessor for ValueData);
    *(v408 + 7) = v323;
    v324 = v415;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v324 = sub_26C42BCE4(0, *(v324 + 2) + 1, 1, v324);
    }

    v326 = *(v324 + 2);
    v325 = *(v324 + 3);
    if (v326 >= v325 >> 1)
    {
      v324 = sub_26C42BCE4((v325 > 1), v326 + 1, 1, v324);
    }

    (*v449)();
    (*v74)(v248, v452);
    *(v324 + 2) = v326 + 1;
    *&v324[4 * v326 + 32] = v403;
    v415 = v324;
    *(v408 + 8) = v324;
    goto LABEL_157;
  }

  sub_26C40B328(v436);
  (v391)(v319, v451);
  (*v449)(v421, v96);
LABEL_171:
  v74 = v248;
  v341 = &v434;
LABEL_172:
  v342 = *(v341 - 32);
  v343 = v452;
LABEL_174:
  (*v440)(v74, v343);

  sub_26C46B90C(v342, type metadata accessor for LamportTimestamp);
  sub_26C46B90C(v408, type metadata accessor for DictionaryChangedMessage);
  if (qword_280497148 != -1)
  {
    swift_once();
  }

  v345 = sub_26C46BFA4();
  __swift_project_value_buffer(v345, qword_280498530);
  v346 = v398;
  v347 = v398;
  v348 = sub_26C46BF84();
  v349 = sub_26C46C3E4();

  if (os_log_type_enabled(v348, v349))
  {
    v350 = swift_slowAlloc();
    v351 = swift_slowAlloc();
    v459[0] = v351;
    *v350 = 136315138;
    *&v457 = v346;
    v352 = v346;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497460, qword_26C46DAA0);
    v353 = sub_26C46C1D4();
    v355 = sub_26C3E80A8(v353, v354, v459);

    *(v350 + 4) = v355;
    _os_log_impl(&dword_26C3D6000, v348, v349, "SyncedDictionary: failed to encode data in setter: %s", v350, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v351);
    MEMORY[0x26D6A18D0](v351, -1, -1);
    MEMORY[0x26D6A18D0](v350, -1, -1);
  }

  else
  {
  }
}

uint64_t SyncedDictionary.wrappedValue.getter()
{
  sub_26C46AD0C();
}

uint64_t SyncedDictionary.wrappedValue.setter(uint64_t a1)
{
  sub_26C46AD50(a1);
}

void (*SyncedDictionary.wrappedValue.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = qword_280498288;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);

  return sub_26C4607EC;
}

void sub_26C4607EC(void **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 3);
  if (a2)
  {

    sub_26C45C8FC(v4);
  }

  else
  {
    sub_26C45C8FC(v3);
  }

  free(v2);
}

uint64_t sub_26C460868@<X0>(uint64_t *a2@<X8>)
{
  *a2 = sub_26C46C284();
  a2[1] = sub_26C46C284();
  result = sub_26C46C284();
  a2[2] = result;
  return result;
}

uint64_t sub_26C4608BC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v15 - v8;
  v10 = *(v5 + 280);
  MEMORY[0x28223BE20](v7);
  (*(v12 + 16))(&v15 - v11, a1, v10);
  sub_26C46B83C(a2, v9, type metadata accessor for LamportTimestamp);
  v13 = type metadata accessor for LamportTimestamp(0);
  (*(*(v13 - 8) + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_26C46C174();
  sub_26C46C194();
  return swift_endAccess();
}

uint64_t sub_26C460AA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v70 = a1;
  v4 = *v2;
  v5 = *v2;
  v67 = v3;
  v68 = v5;
  v6 = *(v4 + 288);
  v7 = sub_26C46C474();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v66 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v65 = &v61 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v61 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v61 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v61 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v24 = MEMORY[0x28223BE20](v23);
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v61 - v26;
  MEMORY[0x28223BE20](v25);
  v32 = &v61 - v31;
  if (*(v2 + qword_280498280))
  {
    v62 = v28;
    v63 = v30;
    v61 = v29;
    v33 = v70;
    v64 = *(v8 + 16);
    v64(v15, v70, v7);
    if ((*(*(v6 - 8) + 48))(v15, 1, v6) == 1)
    {
      (*(v8 + 8))(v15, v7);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497440, &unk_26C46D3E0);
      if (swift_dynamicCast())
      {
        v43 = v73;
        ObjectType = swift_getObjectType();
        v45 = sub_26C3F8720(ObjectType, v43);
        v46 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
        swift_beginAccess();
        v47 = sub_26C46BB54();
        v48 = *(v47 - 8);
        v49 = v61;
        (*(v48 + 16))(v61, v45 + v46, v47);

        v50 = *(v48 + 56);
        v50(v49, 0, 1, v47);
        v51 = v65;
        v64(v65, v70, v7);
        v52 = v62;
        v50(v62, 1, 1, v47);
        v53 = v68;
        v72 = *(v68 + 320);
        swift_getWitnessTable();
        v71 = *(v53 + 328);
        WitnessTable = swift_getWitnessTable();
        sub_26C40C88C(v49, v51, v52, v7, WitnessTable, v69);
        return swift_unknownObjectRelease();
      }
    }

    v56 = sub_26C46BB54();
    v57 = *(*(v56 - 8) + 56);
    v57(v22, 1, 1, v56);
    v58 = v66;
    v64(v66, v33, v7);
    v59 = v63;
    v57(v63, 1, 1, v56);
    v60 = v68;
    v75 = *(v68 + 320);
    swift_getWitnessTable();
    v74 = *(v60 + 328);
    v37 = swift_getWitnessTable();
    v38 = v69;
    v39 = v22;
    v40 = v58;
    v41 = v59;
    v42 = v7;
  }

  else
  {
    v34 = sub_26C46BB54();
    v35 = *(*(v34 - 8) + 56);
    v35(v32, 1, 1, v34);
    (*(v8 + 16))(v17, v70, v7);
    v35(v27, 1, 1, v34);
    v36 = v68;
    v77 = *(v68 + 320);
    swift_getWitnessTable();
    v76 = *(v36 + 328);
    v37 = swift_getWitnessTable();
    v38 = v69;
    v39 = v32;
    v40 = v17;
    v41 = v27;
    v42 = v7;
  }

  return sub_26C40C88C(v39, v40, v41, v42, v37, v38);
}

uint64_t sub_26C46114C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v15 - v8;
  v10 = *(v5 + 280);
  MEMORY[0x28223BE20](v7);
  (*(v12 + 16))(&v15 - v11, a1, v10);
  sub_26C46B83C(a2, v9, type metadata accessor for LamportTimestamp);
  v13 = type metadata accessor for LamportTimestamp(0);
  (*(*(v13 - 8) + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_26C46C174();
  sub_26C46C194();
  swift_endAccess();
  swift_beginAccess();
  sub_26C46C134();
  swift_endAccess();
  return sub_26C3DE270(v9, &qword_280497468, &unk_26C46D400);
}

uint64_t sub_26C461398(uint64_t a1, uint64_t a2)
{
  v13 = a2;
  v4 = *(*v2 + 280);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v13 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13 - v9;
  swift_beginAccess();
  v11 = type metadata accessor for LamportTimestamp(255);
  sub_26C46C174();
  sub_26C46C134();
  swift_endAccess();
  sub_26C3DE270(v10, &qword_280497468, &unk_26C46D400);
  (*(v5 + 16))(v7, a1, v4);
  sub_26C46B83C(v13, v10, type metadata accessor for LamportTimestamp);
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  swift_beginAccess();
  sub_26C46C194();
  return swift_endAccess();
}

void *sub_26C4615E4@<X0>(uint64_t a3@<X8>)
{
  v6 = *v3;
  v7 = *(*v3 + 280);
  v8 = sub_26C46C474();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v13 - v9;
  if (qword_280497160 != -1)
  {
    swift_once();
  }

  sub_26C46C2E4();
  v13[1] = *(v6 + 296);
  swift_getWitnessTable();
  result = sub_26C46BA34();
  if (!v4)
  {
    v13[0] = v13[3];
    swift_getWitnessTable();
    sub_26C46C3B4();

    v12 = *(v7 - 8);
    result = (*(v12 + 48))(v10, 1, v7);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      return (*(v12 + 32))(a3, v10, v7);
    }
  }

  return result;
}

uint64_t sub_26C461808@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t sub_26C461818(uint64_t *a1, uint64_t a2)
{
  v277 = a2;
  v319 = 0;
  v4 = *v2;
  v6 = *(*v2 + 304);
  v7 = *(*v2 + 312);
  v8 = *(*v2 + 320);
  v324 = *(*v2 + 280);
  v5 = v324;
  v317 = *(v4 + 288);
  v325 = v317;
  v326 = v6;
  v327 = v7;
  v318 = v7;
  v296 = v8;
  v328 = v8;
  v263 = *(v4 + 328);
  v329 = v263;
  type metadata accessor for SyncedDictionary.SyncedDictionaryChangeInfo(255, &v324);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280497268, &qword_26C46CFE0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v275 = *(TupleTypeMetadata2 - 8);
  v9 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v274 = (&v245 - v10);
  MEMORY[0x28223BE20](v9);
  v273 = &v245 - v11;
  v282 = type metadata accessor for PBUUID(0);
  v262 = *(v282 - 8);
  v12 = MEMORY[0x28223BE20](v282);
  v256 = (&v245 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v12);
  v255 = (&v245 - v15);
  v16 = MEMORY[0x28223BE20](v14);
  v254 = (&v245 - v17);
  MEMORY[0x28223BE20](v16);
  v253 = (&v245 - v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v258 = &v245 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v268 = &v245 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v252 = &v245 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v267 = &v245 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v257 = &v245 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v266 = &v245 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v251 = &v245 - v33;
  MEMORY[0x28223BE20](v32);
  v265 = &v245 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v36 = MEMORY[0x28223BE20](v35 - 8);
  v271 = &v245 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v281 = (&v245 - v39);
  v40 = MEMORY[0x28223BE20](v38);
  v250 = &v245 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v249 = (&v245 - v43);
  v44 = MEMORY[0x28223BE20](v42);
  v270 = (&v245 - v45);
  MEMORY[0x28223BE20](v44);
  v280 = (&v245 - v46);
  v284 = type metadata accessor for ValueData(0);
  v295 = *(v284 - 8);
  MEMORY[0x28223BE20](v284);
  v308 = &v245 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v317;
  v288 = sub_26C46C474();
  v49 = *(v288 - 8);
  v50 = MEMORY[0x28223BE20](v288);
  v264 = &v245 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x28223BE20](v50);
  v300 = &v245 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v279 = (&v245 - v55);
  *&v317 = v48;
  v56 = *(v48 - 8);
  v57 = MEMORY[0x28223BE20](v54);
  v248 = &v245 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x28223BE20](v57);
  v310 = &v245 - v60;
  MEMORY[0x28223BE20](v59);
  v269 = &v245 - v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  v63 = MEMORY[0x28223BE20](v62 - 8);
  v283 = &v245 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = MEMORY[0x28223BE20](v63);
  v294 = &v245 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v289 = &v245 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v71 = (&v245 - v70);
  MEMORY[0x28223BE20](v69);
  v298 = &v245 - v72;
  v313 = type metadata accessor for LamportTimestamp(0);
  v73 = *(v313 - 8);
  v74 = MEMORY[0x28223BE20](v313 - 8);
  v278 = (&v245 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0));
  v76 = MEMORY[0x28223BE20](v74);
  v293 = (&v245 - v77);
  v78 = MEMORY[0x28223BE20](v76);
  v291 = (&v245 - v79);
  v80 = MEMORY[0x28223BE20](v78);
  v290 = (&v245 - v81);
  v82 = MEMORY[0x28223BE20](v80);
  v306 = &v245 - v83;
  v84 = MEMORY[0x28223BE20](v82);
  v312 = (&v245 - v85);
  v86 = *(v5 - 8);
  v87 = MEMORY[0x28223BE20](v84);
  v292 = &v245 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = MEMORY[0x28223BE20](v87);
  v309 = &v245 - v90;
  MEMORY[0x28223BE20](v89);
  v286 = &v245 - v91;
  *&v322 = sub_26C46C284();
  *(&v322 + 1) = sub_26C46C284();
  v323 = sub_26C46C284();
  v316 = a1;
  v92 = a1[3];
  v93 = *(v92 + 16);
  v302 = qword_280498260;
  v303 = qword_280498268;
  v299 = qword_280498280;
  v314 = qword_280498288;
  *&v320 = v2;
  swift_beginAccess();
  v311 = v73;
  v307 = v93;
  v261 = v49;
  v260 = v56;
  v259 = v86;
  if (!v93)
  {
LABEL_21:
    v330 = *v316;
    v118 = *(v330 + 16);

    v120 = v317;
    v121 = v291;
    v122 = v292;
    v301 = v118;
    if (!v118)
    {
LABEL_74:
      sub_26C3DE270(&v330, &qword_280498490, &qword_26C471088);
      goto LABEL_82;
    }

    v123 = 0;
    v124 = v311 + 48;
    v247 = (v260 + 48);
    v246 = (v260 + 32);
    v290 = (v260 + 16);
    v304 = (v260 + 8);
    ++v261;
    v285 = (v262 + 48);
    v287 = (v259 + 16);
    v286 = (v260 + 56);
    v297 = (v259 + 8);
    v298 = v263;
    v125 = (v119 + 40);
    v307 = v5;
    v289 = v311 + 48;
    while (1)
    {
      v139 = v124;
      v140 = *(v125 - 1);
      v138 = *v125;
      v315 = v125;
      sub_26C3DDDB0(v140, v138);
      v141 = v319;
      sub_26C4615E4(v122);
      v319 = v141;
      if (v141)
      {
        sub_26C3DE270(&v330, &qword_280498490, &qword_26C471088);
        v126 = v140;
        v127 = v138;
        goto LABEL_76;
      }

      v142 = v316[1];
      if (v123 >= *(v142 + 16))
      {
        goto LABEL_84;
      }

      sub_26C46B83C(v142 + ((*(v295 + 80) + 32) & ~*(v295 + 80)) + *(v295 + 72) * v123, v308, type metadata accessor for ValueData);
      v143 = v319;
      sub_26C40CC14(v120, v296, v310);
      v319 = v143;
      if (v143)
      {
        sub_26C3DDEA8(v140, v138);
        sub_26C46B90C(v308, type metadata accessor for ValueData);
        (*v297)(v122, v5);
        sub_26C3DE270(&v330, &qword_280498490, &qword_26C471088);
        goto LABEL_78;
      }

      v144 = v316[2];
      if (v123 >= *(v144 + 16))
      {
        goto LABEL_85;
      }

      v312 = v140;
      v145 = v311;
      sub_26C46B83C(v144 + ((*(v311 + 80) + 32) & ~*(v311 + 80)) + *(v311 + 72) * v123, v121, type metadata accessor for LamportTimestamp);
      swift_beginAccess();
      v146 = v294;
      v147 = v121;
      v148 = v313;
      sub_26C46C184();
      v149 = *(v145 + 48);
      v124 = v139;
      if (v149(v146, 1, v148) != 1)
      {
        v168 = v293;
        sub_26C40C2E8(v146, v293, type metadata accessor for LamportTimestamp);
        swift_endAccess();
        v169 = sub_26C41111C(v168, v147);
        v121 = v147;
        v137 = v315;
        if (v169)
        {
          v306 = v138;
          v305 = v123;
          v132 = v290;
          if (*(v320 + v299) == 1)
          {
            swift_beginAccess();
            v170 = v264;
            v171 = v317;
            sub_26C46C184();
            v172 = (*v247)(v170, 1, v171);
            v173 = v310;
            if (v172 == 1)
            {
              (*v261)(v170, v288);
              swift_endAccess();
            }

            else
            {
              v188 = v248;
              (*v246)(v248, v170, v171);
              swift_endAccess();
              v326 = v171;
              boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v324);
              (*v132)(boxed_opaque_existential_0, v188, v171);
              sub_26C3E13DC(&v324);
              (*v304)(v188, v171);
              __swift_destroy_boxed_opaque_existential_1(&v324);
            }

            v190 = v282;
            v191 = v285;
            v326 = v171;
            v192 = __swift_allocate_boxed_opaque_existential_0(&v324);
            (*v132)(v192, v173, v171);
            v193 = *(v284 + 24);
            v194 = v308;
            v195 = v265;
            sub_26C3DDD48(v308 + v193, v265, &qword_280497458, &unk_26C46D3F0);
            v196 = *v191;
            v197 = 1;
            v198 = (*v191)(v195, 1, v190);
            sub_26C3DE270(v195, &qword_280497458, &unk_26C46D3F0);
            v199 = v190;
            if (v198 != 1)
            {
              v200 = v251;
              sub_26C3DDD48(v194 + v193, v251, &qword_280497458, &unk_26C46D3F0);
              if (v196(v200, 1, v190) == 1)
              {
                v201 = v253;
                *v253 = 0;
                v201[1] = 0;
                sub_26C46BD14();
                v202 = v196;
                if (v196(v200, 1, v190) != 1)
                {
                  sub_26C3DE270(v200, &qword_280497458, &unk_26C46D3F0);
                }
              }

              else
              {
                v202 = v196;
                v201 = v253;
                sub_26C40C2E8(v200, v253, type metadata accessor for PBUUID);
              }

              sub_26C40F3CC();
              sub_26C46B90C(v201, type metadata accessor for PBUUID);
              v197 = 0;
              v194 = v308;
              v196 = v202;
            }

            v214 = sub_26C46BB54();
            v215 = *(v214 - 8);
            v129 = 1;
            v279 = *(v215 + 56);
            v272 = (v215 + 56);
            v279(v280, v197, 1, v214);
            v216 = v199;
            v217 = *(v284 + 28);
            v218 = v266;
            sub_26C3DDD48(v194 + v217, v266, &qword_280497458, &unk_26C46D3F0);
            LODWORD(v216) = v196(v218, 1, v216);
            sub_26C3DE270(v218, &qword_280497458, &unk_26C46D3F0);
            v164 = v216 == 1;
            v5 = v307;
            if (!v164)
            {
              v219 = v257;
              sub_26C3DDD48(v308 + v217, v257, &qword_280497458, &unk_26C46D3F0);
              v220 = v282;
              if (v196(v219, 1, v282) == 1)
              {
                v128 = v254;
                *v254 = 0;
                v128[1] = 0;
                sub_26C46BD14();
                if (v196(v219, 1, v220) != 1)
                {
                  sub_26C3DE270(v257, &qword_280497458, &unk_26C46D3F0);
                }
              }

              else
              {
                v128 = v254;
                sub_26C40C2E8(v219, v254, type metadata accessor for PBUUID);
              }

              sub_26C40F3CC();
              sub_26C46B90C(v128, type metadata accessor for PBUUID);
              v129 = 0;
            }

            v130 = v270;
            v279(v270, v129, 1, v214);
            v131 = v280;
            sub_26C3E0D08(&v324, v280, v130);
            sub_26C3DE270(v130, &qword_280497430, &unk_26C46D3D0);
            sub_26C3DE270(v131, &qword_280497430, &unk_26C46D3D0);
            sub_26C3DE270(&v324, &qword_280497450, &qword_26C471080);
            v122 = v292;
            v132 = v290;
          }

          v133 = *v287;
          v134 = v309;
          (*v287)(v309, v122, v5);
          v135 = v300;
          v136 = v317;
          (*v132)(v300, v310, v317);
          (*v286)(v135, 0, 1, v136);
          swift_beginAccess();
          sub_26C46C174();
          v122 = v292;
          sub_26C46C194();
          swift_endAccess();
          v133(v134, v122, v5);
          sub_26C46C2E4();
          sub_26C46C2C4();
          v121 = v291;
          sub_26C4608BC(v122, v291);
          v124 = v289;
          v123 = v305;
          v137 = v315;
          v138 = v306;
        }

        sub_26C3DDEA8(v312, v138);
        sub_26C46B90C(v293, type metadata accessor for LamportTimestamp);
        sub_26C46B90C(v121, type metadata accessor for LamportTimestamp);
        v120 = v317;
        (*v304)(v310, v317);
        sub_26C46B90C(v308, type metadata accessor for ValueData);
        (*v297)(v122, v5);
        goto LABEL_29;
      }

      v306 = v138;
      sub_26C3DE270(v146, &qword_280497468, &unk_26C46D400);
      swift_endAccess();
      swift_beginAccess();
      v150 = v283;
      sub_26C46C184();
      if (v149(v150, 1, v148) == 1)
      {
        break;
      }

      v174 = v278;
      sub_26C40C2E8(v150, v278, type metadata accessor for LamportTimestamp);
      swift_endAccess();
      v175 = v291;
      if (sub_26C41111C(v174, v291))
      {
        v305 = v123;
        v176 = *v287;
        v177 = v309;
        v178 = v292;
        (*v287)(v309, v292, v307);
        v179 = v300;
        v180 = v317;
        v279 = *v290;
        (v279)(v300, v310, v317);
        (*v286)(v179, 0, 1, v180);
        v181 = v320;
        swift_beginAccess();
        sub_26C46C174();
        v122 = v178;
        sub_26C46C194();
        swift_endAccess();
        v176(v177, v178, v307);
        v5 = v307;
        sub_26C46C2E4();
        sub_26C46C2C4();
        sub_26C461398(v178, v175);
        if (*(v181 + v299) == 1)
        {
          v182 = v317;
          v326 = v317;
          v183 = __swift_allocate_boxed_opaque_existential_0(&v324);
          v184 = v310;
          (v279)(v183, v310, v182);
          v185 = v249;
          sub_26C40CE7C(v249);
          v186 = v250;
          sub_26C40D13C(v250);
          sub_26C3E0D08(&v324, v185, v186);
          sub_26C3DDEA8(v312, v306);
          sub_26C3DE270(v186, &qword_280497430, &unk_26C46D3D0);
          v187 = v185;
          v122 = v292;
          sub_26C3DE270(v187, &qword_280497430, &unk_26C46D3D0);
          sub_26C46B90C(v174, type metadata accessor for LamportTimestamp);
          sub_26C46B90C(v175, type metadata accessor for LamportTimestamp);
          (*v304)(v184, v182);
          sub_26C46B90C(v308, type metadata accessor for ValueData);
          (*v297)(v122, v5);
          sub_26C3DE270(&v324, &qword_280497450, &qword_26C471080);
          v120 = v182;
        }

        else
        {
          sub_26C3DDEA8(v312, v306);
          sub_26C46B90C(v174, type metadata accessor for LamportTimestamp);
          sub_26C46B90C(v175, type metadata accessor for LamportTimestamp);
          v120 = v317;
          (*v304)(v310, v317);
          sub_26C46B90C(v308, type metadata accessor for ValueData);
          (*v297)(v122, v5);
        }

        v121 = v175;
LABEL_57:
        v124 = v289;
        v123 = v305;
        goto LABEL_73;
      }

      sub_26C3DDEA8(v312, v306);
      sub_26C46B90C(v174, type metadata accessor for LamportTimestamp);
      sub_26C46B90C(v175, type metadata accessor for LamportTimestamp);
      v120 = v317;
      (*v304)(v310, v317);
      sub_26C46B90C(v308, type metadata accessor for ValueData);
      v122 = v292;
      (*v297)(v292, v5);
      v121 = v175;
LABEL_73:
      v137 = v315;
LABEL_29:
      v123 = (v123 + 1);
      v125 = (v137 + 16);
      if (v301 == v123)
      {
        goto LABEL_74;
      }
    }

    v305 = v123;
    sub_26C3DE270(v150, &qword_280497468, &unk_26C46D400);
    swift_endAccess();
    v151 = *v287;
    v152 = v309;
    (*v287)(v309, v122, v307);
    v153 = v122;
    v154 = v310;
    v155 = v300;
    v120 = v317;
    v279 = *v290;
    (v279)(v300, v310, v317);
    (*v286)(v155, 0, 1, v120);
    v156 = v320;
    swift_beginAccess();
    sub_26C46C174();
    sub_26C46C194();
    swift_endAccess();
    v151(v152, v153, v307);
    v5 = v307;
    sub_26C46C2E4();
    sub_26C46C2C4();
    v121 = v291;
    sub_26C461398(v153, v291);
    if (*(v156 + v299) == 1)
    {
      v326 = v120;
      v157 = __swift_allocate_boxed_opaque_existential_0(&v324);
      (v279)(v157, v154, v120);
      v158 = *(v284 + 24);
      v159 = v308;
      v160 = v267;
      sub_26C3DDD48(v308 + v158, v267, &qword_280497458, &unk_26C46D3F0);
      v161 = *v285;
      v162 = v282;
      v163 = (*v285)(v160, 1, v282);
      sub_26C3DE270(v160, &qword_280497458, &unk_26C46D3F0);
      v164 = v163 == 1;
      v165 = 1;
      v124 = v289;
      if (!v164)
      {
        v166 = v252;
        sub_26C3DDD48(v159 + v158, v252, &qword_280497458, &unk_26C46D3F0);
        if ((v161)(v166, 1, v162) == 1)
        {
          v167 = v255;
          *v255 = 0;
          v167[1] = 0;
          sub_26C46BD14();
          if ((v161)(v166, 1, v162) != 1)
          {
            sub_26C3DE270(v166, &qword_280497458, &unk_26C46D3F0);
          }
        }

        else
        {
          v167 = v255;
          sub_26C40C2E8(v166, v255, type metadata accessor for PBUUID);
        }

        sub_26C40F3CC();
        sub_26C46B90C(v167, type metadata accessor for PBUUID);
        v165 = 0;
        v159 = v308;
        v162 = v282;
      }

      v203 = sub_26C46BB54();
      v204 = *(v203 - 8);
      v205 = *(v204 + 56);
      v206 = 1;
      v279 = v203;
      v272 = v205;
      v269 = (v204 + 56);
      (v205)(v281, v165, 1);
      v207 = *(v284 + 28);
      v208 = v268;
      sub_26C3DDD48(v159 + v207, v268, &qword_280497458, &unk_26C46D3F0);
      v209 = (v161)(v208, 1, v162);
      sub_26C3DE270(v208, &qword_280497458, &unk_26C46D3F0);
      v164 = v209 == 1;
      v5 = v307;
      v123 = v305;
      if (!v164)
      {
        v210 = v159 + v207;
        v211 = v258;
        sub_26C3DDD48(v210, v258, &qword_280497458, &unk_26C46D3F0);
        v212 = v282;
        if ((v161)(v211, 1, v282) == 1)
        {
          v213 = v256;
          *v256 = 0;
          v213[1] = 0;
          sub_26C46BD14();
          if ((v161)(v211, 1, v212) != 1)
          {
            sub_26C3DE270(v258, &qword_280497458, &unk_26C46D3F0);
          }
        }

        else
        {
          v213 = v256;
          sub_26C40C2E8(v211, v256, type metadata accessor for PBUUID);
        }

        sub_26C40F3CC();
        sub_26C46B90C(v213, type metadata accessor for PBUUID);
        v206 = 0;
        v159 = v308;
      }

      v221 = v271;
      (v272)(v271, v206, 1, v279);
      v222 = v281;
      sub_26C3E0D08(&v324, v281, v221);
      sub_26C3DDEA8(v312, v306);
      sub_26C3DE270(v221, &qword_280497430, &unk_26C46D3D0);
      sub_26C3DE270(v222, &qword_280497430, &unk_26C46D3D0);
      sub_26C46B90C(v121, type metadata accessor for LamportTimestamp);
      v120 = v317;
      (*v304)(v310, v317);
      sub_26C46B90C(v159, type metadata accessor for ValueData);
      v122 = v292;
      (*v297)(v292, v5);
      sub_26C3DE270(&v324, &qword_280497450, &qword_26C471080);
      goto LABEL_73;
    }

    sub_26C3DDEA8(v312, v306);
    sub_26C46B90C(v121, type metadata accessor for LamportTimestamp);
    (*v304)(v154, v120);
    sub_26C46B90C(v308, type metadata accessor for ValueData);
    (*v297)(v153, v5);
    v122 = v153;
    goto LABEL_57;
  }

  v297 = v71;
  v94 = 0;
  v305 = (v73 + 48);
  v304 = (v86 + 8);
  v301 = (v86 + 16);
  v287 = (v73 + 56);
  v272 = (v56 + 48);
  v247 = (v56 + 32);
  v246 = (v56 + 16);
  v245 = (v56 + 8);
  v285 = v49 + 1;
  v95 = (v92 + 40);
  v96 = v312;
  v97 = v286;
  while (1)
  {
    v102 = *(v95 - 1);
    v101 = *v95;
    sub_26C3DDDB0(v102, *v95);
    v315 = v101;
    v103 = v319;
    sub_26C4615E4(v97);
    v319 = v103;
    if (v103)
    {
      break;
    }

    v104 = v316[4];
    if (v94 >= *(v104 + 16))
    {
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      swift_once();
      goto LABEL_79;
    }

    sub_26C46B83C(v104 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v94, v96, type metadata accessor for LamportTimestamp);
    v324 = *(v320 + v314);
    sub_26C46C144();
    swift_getWitnessTable();
    if (sub_26C46C224())
    {
      swift_beginAccess();
      v105 = v298;
      v106 = v313;
      sub_26C46C184();
      swift_endAccess();
      result = (*v305)(v105, 1, v106);
      if (result == 1)
      {
        __break(1u);
        return result;
      }

      v108 = v306;
      sub_26C40C2E8(v105, v306, type metadata accessor for LamportTimestamp);
      v96 = v312;
      v109 = sub_26C41111C(v108, v312);
      v73 = v311;
      if (v109)
      {
        if (*(v320 + v299) == 1)
        {
          swift_beginAccess();
          v110 = v279;
          v111 = v317;
          sub_26C46C184();
          if ((*v272)(v110, 1, v111) == 1)
          {
            (*v285)(v110, v288);
            swift_endAccess();
          }

          else
          {
            v98 = v269;
            (*v247)(v269, v110, v111);
            swift_endAccess();
            v326 = v111;
            v99 = __swift_allocate_boxed_opaque_existential_0(&v324);
            (*v246)(v99, v98, v111);
            sub_26C3E13DC(&v324);
            (*v245)(v98, v111);
            __swift_destroy_boxed_opaque_existential_1(&v324);
          }
        }

        swift_beginAccess();
        sub_26C46C174();
        v100 = v300;
        sub_26C46C134();
        swift_endAccess();
        (*v285)(v100, v288);
        (*v301)(v309, v97, v5);
        sub_26C46C2E4();
        sub_26C46C2C4();
        v96 = v312;
        sub_26C46114C(v97, v312);
      }

      sub_26C3DDEA8(v102, v315);
      sub_26C46B90C(v306, type metadata accessor for LamportTimestamp);
    }

    else
    {
      swift_beginAccess();
      v112 = v297;
      v113 = v313;
      sub_26C46C184();
      if ((*v305)(v112, 1, v113) == 1)
      {
        sub_26C3DE270(v112, &qword_280497468, &unk_26C46D400);
        swift_endAccess();
        (*v301)(v309, v97, v5);
        v114 = v312;
        v115 = v289;
        sub_26C46B83C(v312, v289, type metadata accessor for LamportTimestamp);
        (*v287)(v115, 0, 1, v113);
        swift_beginAccess();
        v96 = v114;
        v97 = v286;
        sub_26C46C174();
        sub_26C46C194();
        swift_endAccess();
        sub_26C3DDEA8(v102, v315);
LABEL_20:
        v73 = v311;
        goto LABEL_6;
      }

      v116 = v290;
      sub_26C40C2E8(v112, v290, type metadata accessor for LamportTimestamp);
      swift_endAccess();
      v96 = v312;
      if ((sub_26C41111C(v116, v312) & 1) == 0)
      {
        sub_26C3DDEA8(v102, v315);
        sub_26C46B90C(v116, type metadata accessor for LamportTimestamp);
        goto LABEL_20;
      }

      (*v301)(v309, v97, v5);
      v117 = v289;
      sub_26C46B83C(v312, v289, type metadata accessor for LamportTimestamp);
      (*v287)(v117, 0, 1, v313);
      swift_beginAccess();
      sub_26C46C174();
      v96 = v312;
      sub_26C46C194();
      swift_endAccess();
      sub_26C3DDEA8(v102, v315);
      sub_26C46B90C(v290, type metadata accessor for LamportTimestamp);
      v73 = v311;
    }

LABEL_6:
    ++v94;
    v95 += 2;
    sub_26C46B90C(v96, type metadata accessor for LamportTimestamp);
    (*v304)(v97, v5);
    if (v307 == v94)
    {
      goto LABEL_21;
    }
  }

  v126 = v102;
  v127 = v315;
LABEL_76:
  sub_26C3DDEA8(v126, v127);
LABEL_78:
  if (qword_280497148 != -1)
  {
    goto LABEL_86;
  }

LABEL_79:
  v223 = sub_26C46BFA4();
  __swift_project_value_buffer(v223, qword_280498530);
  v224 = v319;
  v225 = v319;
  v226 = sub_26C46BF84();
  v227 = sub_26C46C3E4();

  if (os_log_type_enabled(v226, v227))
  {
    v228 = swift_slowAlloc();
    v229 = swift_slowAlloc();
    v324 = v229;
    *v228 = 136315138;
    v230 = v319;
    v321 = v319;
    v231 = v319;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497460, qword_26C46DAA0);
    v232 = sub_26C46C1D4();
    v234 = sub_26C3E80A8(v232, v233, &v324);

    *(v228 + 4) = v234;
    _os_log_impl(&dword_26C3D6000, v226, v227, "SyncedDictionary: failed to decode data when handling message: %s", v228, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v229);
    MEMORY[0x26D6A18D0](v229, -1, -1);
    MEMORY[0x26D6A18D0](v228, -1, -1);
  }

  else
  {
  }

LABEL_82:
  v235 = v277;
  v236 = TupleTypeMetadata2;
  v237 = v275;
  v238 = v323;
  v239 = sub_26C46BCD4();
  v240 = *(v239 - 8);
  v241 = *(v240 + 16);
  v320 = v322;
  v242 = v273;
  v241(v273, v235, v239);
  (*(v240 + 56))(v242, 0, 1, v239);
  v243 = *(v236 + 48);
  v244 = v274;
  *v274 = v320;
  *(v244 + 2) = v238;
  sub_26C3E9F28(v242, v244 + v243, &qword_280497268, &qword_26C46CFE0);
  sub_26C46BFE4();
  return (*(v237 + 8))(v244, v236);
}

uint64_t sub_26C46460C(void *a1, uint64_t a2)
{
  v49 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v47 - v5;
  v7 = type metadata accessor for PBUUID(0);
  v47 = *(v7 - 8);
  v48 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = (&v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v47 - v11;
  v13 = sub_26C46BB54();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v19 = &v47 - v18;
  v50 = v2;
  v20 = *(v2 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__controller);
  if (!v20)
  {
    (*(v17 + 56))(v12, 1, 1, v13);
    goto LABEL_7;
  }

  v21 = v17;
  v22 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownerUUID;
  swift_beginAccess();
  v23 = v20 + v22;
  v24 = v21;
  sub_26C3DDD48(v23, v12, &qword_280497430, &unk_26C46D3D0);
  if ((*(v21 + 48))(v12, 1, v13) == 1)
  {
LABEL_7:
    sub_26C3DE270(v12, &qword_280497430, &unk_26C46D3D0);
LABEL_8:
    v51[0] = a1[6];

    sub_26C46A8F8(v28);
    v29 = v51[0];
    v51[0] = a1[7];

    sub_26C46AA18(v30, sub_26C42BCBC, type metadata accessor for ValueData);
    v31 = v51[0];
    v51[0] = a1[8];

    v33 = sub_26C46A80C(v32);
    v34 = v51[0];
    MEMORY[0x28223BE20](v33);
    *(&v47 - 2) = a1;
    v35 = sub_26C45826C(sub_26C46B9E8, (&v47 - 4), v34);

    v38 = a1[1];
    v37 = a1[2];
    MEMORY[0x28223BE20](v36);
    *(&v47 - 2) = a1;

    v39 = sub_26C45826C(sub_26C46B8A4, (&v47 - 4), v37);
    v51[0] = v29;
    v51[1] = v31;
    v51[2] = v35;
    v51[3] = v38;
    v51[4] = v39;
    sub_26C461818(v51, v49);
    v56 = v29;
    sub_26C3DE270(&v56, &qword_280498490, &qword_26C471088);
    v55 = v31;
    sub_26C3DE270(&v55, &qword_280498498, &qword_26C471090);
    v54 = v35;
    sub_26C3DE270(&v54, qword_2804984A0, qword_26C471098);
    v53 = v38;
    sub_26C3DE270(&v53, &qword_280498490, &qword_26C471088);
    v52 = v39;
    return sub_26C3DE270(&v52, qword_2804984A0, qword_26C471098);
  }

  (*(v21 + 32))(v19, v12, v13);
  v25 = type metadata accessor for DictionaryChangedMessage(0);
  sub_26C3DDD48(a1 + *(v25 + 56), v6, &qword_280497458, &unk_26C46D3F0);
  v26 = v48;
  v27 = *(v47 + 48);
  if (v27(v6, 1, v48) == 1)
  {
    *v9 = 0;
    v9[1] = 0;
    sub_26C46BD14();
    if (v27(v6, 1, v26) != 1)
    {
      sub_26C3DE270(v6, &qword_280497458, &unk_26C46D3F0);
    }
  }

  else
  {
    sub_26C40C2E8(v6, v9, type metadata accessor for PBUUID);
  }

  sub_26C40F3CC();
  sub_26C46B90C(v9, type metadata accessor for PBUUID);
  sub_26C46B8C4(&qword_2804975A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v41 = sub_26C46C1C4();
  v42 = *(v24 + 8);
  v42(v16, v13);
  if (v41)
  {
    v42(v19, v13);
    goto LABEL_8;
  }

  if (qword_280497148 != -1)
  {
    swift_once();
  }

  v43 = sub_26C46BFA4();
  __swift_project_value_buffer(v43, qword_280498530);
  v44 = sub_26C46BF84();
  v45 = sub_26C46C3D4();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_26C3D6000, v44, v45, "SyncedDictionary: Cannot apply dictionary change message. Not the current owner or unowned", v46, 2u);
    MEMORY[0x26D6A18D0](v46, -1, -1);
  }

  return (v42)(v19, v13);
}

uint64_t sub_26C464D18@<X0>(int *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v42 = a3;
  v44 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v37 - v5;
  v7 = type metadata accessor for PBUUID(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v41 = (&v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v12 = (&v37 - v11);
  v13 = sub_26C46BB54();
  v38 = *(v13 - 8);
  v39 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v37 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v37 - v20;
  v40 = *v44;
  v22 = type metadata accessor for DictionaryChangedMessage(0);
  sub_26C3DDD48(a2 + *(v22 + 56), v6, &qword_280497458, &unk_26C46D3F0);
  v44 = v8;
  v23 = *(v8 + 48);
  v24 = v23(v6, 1, v7);
  v43 = v7;
  if (v24 == 1)
  {
    *v12 = 0;
    v12[1] = 0;
    sub_26C46BD14();
    if (v23(v6, 1, v7) != 1)
    {
      sub_26C3DE270(v6, &qword_280497458, &unk_26C46D3F0);
    }
  }

  else
  {
    sub_26C40C2E8(v6, v12, type metadata accessor for PBUUID);
  }

  sub_26C40F3CC();
  sub_26C46B90C(v12, type metadata accessor for PBUUID);
  v25 = v42;
  *v42 = 0;
  v26 = type metadata accessor for LamportTimestamp(0);
  sub_26C46BD14();
  v27 = *(v26 + 24);
  v28 = *(v44 + 7);
  v44 += 14;
  v37 = v28;
  v28(&v25[v27], 1, 1, v43);
  v29 = v38;
  v30 = *(v38 + 16);
  v31 = v19;
  v32 = v19;
  v33 = v39;
  v30(v32, v21, v39);
  v30(v16, v31, v33);
  v34 = v41;
  sub_26C40F280(v16, v41);
  v35 = *(v29 + 8);
  v35(v31, v33);
  v35(v21, v33);
  sub_26C3DE270(&v25[v27], &qword_280497458, &unk_26C46D3F0);
  sub_26C40C2E8(v34, &v25[v27], type metadata accessor for PBUUID);
  result = v37(&v25[v27], 0, 1, v43);
  *v25 = v40;
  return result;
}

uint64_t sub_26C465134(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v74 = a3;
  v7 = *v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  MEMORY[0x28223BE20](v8 - 8);
  v77 = &v68 - v9;
  v10 = type metadata accessor for LamportTimestamp(0);
  v79 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v81 = (&v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for DictionaryCatchupData.TombstoneTimestamp(0);
  v80 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v76 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v73 = (&v68 - v15);
  v16 = sub_26C46BD44();
  MEMORY[0x28223BE20](v16 - 8);
  v17 = type metadata accessor for DictionaryCatchupData(0);
  MEMORY[0x28223BE20](v17);
  v19 = (&v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v3 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__controller);
  v78 = v10;
  if (v20)
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v22 = *(Strong + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_options);

      if ((v22 & 1) == 0)
      {
        v72 = v19;
        if (qword_280497148 != -1)
        {
          swift_once();
        }

        v70 = a1;
        v71 = a2;
        v75 = v12;
        v23 = sub_26C46BFA4();
        __swift_project_value_buffer(v23, qword_280498530);
        v24 = sub_26C46BF84();
        v25 = sub_26C46C404();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 0;
          _os_log_impl(&dword_26C3D6000, v24, v25, "SyncedDictionary: clearing existing data due to catchup response and replaceFromLeader option", v26, 2u);
          MEMORY[0x26D6A18D0](v26, -1, -1);
        }

        v27 = v7[35];
        v28 = v7[36];
        swift_getTupleTypeMetadata2();
        v29 = sub_26C46C284();
        v30 = v7[39];
        v31 = sub_26C40AFD4(v29, v27, v28, v30);

        v32 = qword_280498288;
        swift_beginAccess();
        *(v4 + v32) = v31;

        swift_getTupleTypeMetadata2();
        v33 = sub_26C46C284();
        v34 = sub_26C40AFD4(v33, v27, v10, v30);

        v35 = qword_280498260;
        swift_beginAccess();
        *(v4 + v35) = v34;

        v36 = sub_26C46C284();
        v37 = sub_26C40AFD4(v36, v27, v78, v30);

        v38 = qword_280498268;
        swift_beginAccess();
        *(v4 + v38) = v37;

        v19 = v72;
        v12 = v75;
        a2 = v71;
        a1 = v70;
      }
    }
  }

  v84 = 0;
  v82 = 0u;
  v83 = 0u;
  sub_26C3DDDB0(a1, a2);
  sub_26C46BD34();
  sub_26C46B8C4(&qword_280497E90, type metadata accessor for DictionaryCatchupData, &unk_26C46F4F4);
  sub_26C46BE54();
  v40 = *v19;
  v39 = v19[1];
  v42 = v19[2];
  v41 = v19[3];
  v43 = *(v41 + 16);
  if (v43)
  {
    v75 = v12;
    v72 = v19;
    v71 = v4;
    *&v82 = MEMORY[0x277D84F90];
    v68 = v40;

    v69 = v39;

    v70 = v42;

    sub_26C42FC40(0, v43, 0);
    v44 = v82;
    v45 = v41 + ((*(v80 + 80) + 32) & ~*(v80 + 80));
    v80 = *(v80 + 72);
    v46 = v45;
    v47 = v43;
    v48 = v73;
    do
    {
      sub_26C46B83C(v46, v48, type metadata accessor for DictionaryCatchupData.TombstoneTimestamp);
      v50 = *v48;
      v49 = v48[1];
      sub_26C3DDDB0(*v48, v49);
      sub_26C46B90C(v48, type metadata accessor for DictionaryCatchupData.TombstoneTimestamp);
      *&v82 = v44;
      v52 = *(v44 + 16);
      v51 = *(v44 + 24);
      if (v52 >= v51 >> 1)
      {
        sub_26C42FC40((v51 > 1), v52 + 1, 1);
        v48 = v73;
        v44 = v82;
      }

      *(v44 + 16) = v52 + 1;
      v53 = v44 + 16 * v52;
      *(v53 + 32) = v50;
      *(v53 + 40) = v49;
      v46 += v80;
      --v47;
    }

    while (v47);
    *&v82 = MEMORY[0x277D84F90];
    sub_26C42FBFC(0, v43, 0);
    v54 = v82;
    v55 = (v79 + 48);
    v56 = v75;
    do
    {
      v57 = v76;
      sub_26C46B83C(v45, v76, type metadata accessor for DictionaryCatchupData.TombstoneTimestamp);
      v58 = v77;
      sub_26C3DDD48(v57 + *(v56 + 24), v77, &qword_280497468, &unk_26C46D400);
      v59 = *v55;
      v60 = v78;
      if ((*v55)(v58, 1, v78) == 1)
      {
        v61 = v81;
        *v81 = 0;
        sub_26C46BD14();
        sub_26C46B90C(v57, type metadata accessor for DictionaryCatchupData.TombstoneTimestamp);
        v62 = *(v60 + 24);
        v63 = type metadata accessor for PBUUID(0);
        v64 = v61 + v62;
        v56 = v75;
        (*(*(v63 - 8) + 56))(v64, 1, 1, v63);
        if (v59(v58, 1, v60) != 1)
        {
          sub_26C3DE270(v58, &qword_280497468, &unk_26C46D400);
        }
      }

      else
      {
        sub_26C46B90C(v57, type metadata accessor for DictionaryCatchupData.TombstoneTimestamp);
        sub_26C40C2E8(v58, v81, type metadata accessor for LamportTimestamp);
      }

      *&v82 = v54;
      v66 = *(v54 + 16);
      v65 = *(v54 + 24);
      if (v66 >= v65 >> 1)
      {
        sub_26C42FBFC((v65 > 1), v66 + 1, 1);
        v54 = v82;
      }

      *(v54 + 16) = v66 + 1;
      sub_26C40C2E8(v81, v54 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v66, type metadata accessor for LamportTimestamp);
      v45 += v80;
      --v43;
    }

    while (v43);
    v19 = v72;
    v42 = v70;
    v39 = v69;
    v40 = v68;
  }

  else
  {

    v54 = MEMORY[0x277D84F90];
    v44 = MEMORY[0x277D84F90];
  }

  *&v82 = v40;
  *(&v82 + 1) = v39;
  *&v83 = v42;
  *(&v83 + 1) = v44;
  v84 = v54;
  sub_26C461818(&v82, v74);
  v89 = v40;
  sub_26C3DE270(&v89, &qword_280498490, &qword_26C471088);
  v88 = v39;
  sub_26C3DE270(&v88, &qword_280498498, &qword_26C471090);
  v87 = v42;
  sub_26C3DE270(&v87, qword_2804984A0, qword_26C471098);
  v86 = v44;
  sub_26C3DE270(&v86, &qword_280498490, &qword_26C471088);
  v85 = v54;
  sub_26C3DE270(&v85, qword_2804984A0, qword_26C471098);
  return sub_26C46B90C(v19, type metadata accessor for DictionaryCatchupData);
}

uint64_t sub_26C465CCC()
{
  v185 = *v0;
  v1 = v185;
  v149 = type metadata accessor for DictionaryCatchupData(0);
  MEMORY[0x28223BE20](v149);
  v151 = (&v148 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  MEMORY[0x28223BE20](v3 - 8);
  v197 = &v148 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v166 = &v148 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v165 = &v148 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v158 = &v148 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v157 = &v148 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v156 = &v148 - v15;
  MEMORY[0x28223BE20](v14);
  v155 = &v148 - v16;
  v17 = type metadata accessor for ValueData(0);
  v175 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v176 = &v148 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v162 = &v148 - v21;
  MEMORY[0x28223BE20](v20);
  v161 = &v148 - v22;
  v23 = v1[35];
  v24 = v1[36];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v26 = *(TupleTypeMetadata2 - 8);
  v27 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v196 = &v148 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v164 = &v148 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v154 = &v148 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v153 = &v148 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v163 = &v148 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v204 = &v148 - v38;
  v170 = *(v24 - 8);
  v39 = MEMORY[0x28223BE20](v37);
  v172 = &v148 - v40;
  v169 = *(v23 - 8);
  MEMORY[0x28223BE20](v39);
  v171 = &v148 - v41;
  v42 = sub_26C46C474();
  MEMORY[0x28223BE20](v42 - 8);
  v44 = &v148 - v43;
  v45 = qword_280498288;
  swift_beginAccess();
  v46 = v1[39];

  v190 = v23;
  v209 = v24;
  v180 = v46;
  v47 = sub_26C46C154();

  v48 = v47 & ~(v47 >> 63);
  v49 = MEMORY[0x277D84F90];
  v199 = sub_26C42BCBC(0, v48, 0, MEMORY[0x277D84F90]);
  v201 = sub_26C42BC94(0, v199[2], 0, v49);
  v150 = v45;
  v200 = v0;
  v50 = *(v0 + v45);
  if ((v50 & 0xC000000000000001) != 0)
  {
    v51 = sub_26C46C5C4();
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = v51 | 0x8000000000000000;
  }

  else
  {
    v56 = -1 << *(v50 + 32);
    v53 = ~v56;
    v52 = v50 + 64;
    v57 = -v56;
    if (v57 < 64)
    {
      v58 = ~(-1 << v57);
    }

    else
    {
      v58 = -1;
    }

    v54 = v58 & *(v50 + 64);
    v55 = v50;
  }

  v179 = qword_280498280;
  v194 = (v169 + 32);
  v193 = (v170 + 32);
  v174 = qword_280498268;
  v184 = (v26 + 56);
  v152 = v53;
  v186 = (v53 + 64) >> 6;
  v168 = v169 + 16;
  v167 = v170 + 16;
  v182 = (v26 + 48);
  v178 = (v26 + 16);
  v198 = (v169 + 8);
  v177 = (v26 + 8);
  v173 = (v170 + 8);

  v60 = 0;
  v61 = v190;
  v206 = TupleTypeMetadata2;
  v188 = v44;
  v183 = v52;
  v181 = v55;
  v62 = v54;
  while (1)
  {
    v187 = v62;
    v189 = v60;
    if ((v55 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (!sub_26C46C5D4())
    {
      (*v184)(v44, 1, 1, TupleTypeMetadata2);
LABEL_45:
      sub_26C40B328(v55);
      v137 = v200;
      v207 = *(v200 + v150);
      v138 = v180;
      sub_26C46C144();

      swift_getWitnessTable();
      v88 = sub_26C46C2F4();
      v139 = qword_280498260;
      swift_beginAccess();
      v140 = *(v137 + v139);
      v141 = v185[37];
      v142 = v185[38];

      v143 = v151;
      v144 = v140;
      v145 = v203;
      sub_26C40E43C(v88, v199, v201, v144, v61, v141, v142, v138, v151);
      v203 = v145;
      if (!v145)
      {
        sub_26C46B8C4(&qword_280497E90, type metadata accessor for DictionaryCatchupData, &unk_26C46F4F4);
        v146 = v203;
        v88 = sub_26C46BE64();
        sub_26C46B90C(v143, type metadata accessor for DictionaryCatchupData);
        v203 = v146;
      }

      return v88;
    }

    v65 = v171;
    sub_26C46C754();
    swift_unknownObjectRelease();
    v66 = v172;
    v67 = v209;
    sub_26C46C754();
    swift_unknownObjectRelease();
    v68 = *(TupleTypeMetadata2 + 48);
    v69 = v65;
    v70 = v61;
    (*v194)(v44, v69, v61);
    (*v193)(&v44[v68], v66, v67);
    (*v184)(v44, 0, 1, TupleTypeMetadata2);
    v71 = v60;
    v195 = v187;
LABEL_21:
    if ((*v182)(v44, 1, TupleTypeMetadata2) == 1)
    {
      v55 = v181;
      v61 = v70;
      goto LABEL_45;
    }

    v191 = v71;
    v82 = *(TupleTypeMetadata2 + 48);
    v83 = v70;
    v84 = v204;
    (*v194)();
    (*v193)(&v84[v82], &v44[v82], v209);
    v85 = *(v200 + v179);
    v86 = v178;
    v192 = v178 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    if (v85 != 1)
    {
      v88 = v83;
      v110 = sub_26C46BB54();
      v111 = *(*(v110 - 8) + 56);
      v112 = v165;
      v111(v165, 1, 1, v110);
      v113 = v164;
      v202 = *v86;
      v202(v164, v84, TupleTypeMetadata2);
      v114 = *(TupleTypeMetadata2 + 48);
      v115 = v166;
      v111(v166, 1, 1, v110);
      v116 = v203;
      sub_26C40C88C(v112, &v113[v114], v115, v209, v185[41], v176);
      v203 = v116;
      if (v116)
      {
        (*v177)(v204, v206);
        sub_26C40B328(v181);

        (*v198)(v113, v88);
        return v88;
      }

      v117 = *v198;
      (*v198)(v113, v88);
      v104 = v199;
      v106 = v199[2];
      v118 = v199[3];
      v107 = v106 + 1;
      v205 = v117;
      if (v106 >= v118 >> 1)
      {
        v104 = sub_26C42BCBC((v118 > 1), v106 + 1, 1, v199);
      }

      v109 = v176;
      v108 = v175;
      v44 = v188;
      goto LABEL_36;
    }

    v87 = v163;
    v202 = *v178;
    v202(v163, v84, TupleTypeMetadata2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497440, &unk_26C46D3E0);
    v88 = TupleTypeMetadata2;
    if (!swift_dynamicCast())
    {
      v205 = *v198;
      v205(v87, v83);
      v119 = sub_26C46BB54();
      v120 = *(*(v119 - 8) + 56);
      v121 = v157;
      v120(v157, 1, 1, v119);
      v122 = v154;
      v202(v154, v84, TupleTypeMetadata2);
      v123 = *(TupleTypeMetadata2 + 48);
      v88 = v122;
      v124 = v158;
      v120(v158, 1, 1, v119);
      v125 = v203;
      sub_26C40C88C(v121, v88 + v123, v124, v209, v185[41], v162);
      v203 = v125;
      if (v125)
      {
        (*v177)(v204, v206);
        sub_26C40B328(v181);

        v147 = v88;
        goto LABEL_49;
      }

      v205(v88, v190);
      v104 = v199;
      v106 = v199[2];
      v126 = v199[3];
      v107 = v106 + 1;
      if (v106 >= v126 >> 1)
      {
        v104 = sub_26C42BCBC((v126 > 1), v106 + 1, 1, v199);
      }

      v109 = v162;
      v44 = v188;
      v108 = v175;
LABEL_36:
      v103 = v202;
      goto LABEL_37;
    }

    v89 = v208;
    v160 = v208;
    v205 = *v198;
    v205(v87, v83);
    ObjectType = swift_getObjectType();
    v90 = sub_26C3F8720(ObjectType, v89);
    v91 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
    swift_beginAccess();
    v92 = sub_26C46BB54();
    v93 = *(v92 - 8);
    v94 = v155;
    (*(v93 + 16))(v155, v90 + v91, v92);

    (*(v93 + 56))(v94, 0, 1, v92);
    v95 = v153;
    v96 = v202;
    v202(v153, v204, v88);
    v97 = *(v88 + 48);
    v98 = sub_26C3F8720(ObjectType, v160);
    v99 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownerUUID;
    swift_beginAccess();
    v100 = v98 + v99;
    v101 = v156;
    sub_26C3DDD48(v100, v156, &qword_280497430, &unk_26C46D3D0);

    v102 = v203;
    sub_26C40C88C(v94, &v95[v97], v101, v209, v185[41], v161);
    v203 = v102;
    if (v102)
    {
      sub_26C40B328(v181);
      swift_unknownObjectRelease();
      (*v177)(v204, v206);

      v147 = v95;
LABEL_49:
      v205(v147, v190);
      return v88;
    }

    v103 = v96;
    v205(v95, v190);
    v104 = v199;
    v106 = v199[2];
    v105 = v199[3];
    v107 = v106 + 1;
    if (v106 >= v105 >> 1)
    {
      v104 = sub_26C42BCBC((v105 > 1), v106 + 1, 1, v199);
    }

    v108 = v175;
    v44 = v188;
    swift_unknownObjectRelease();
    v109 = v161;
LABEL_37:
    v104[2] = v107;
    v127 = (*(v108 + 80) + 32) & ~*(v108 + 80);
    v199 = v104;
    sub_26C40C2E8(v109, v104 + v127 + *(v108 + 72) * v106, type metadata accessor for ValueData);
    v128 = v204;
    v103(v196, v204, v206);
    swift_beginAccess();
    v129 = type metadata accessor for LamportTimestamp(0);
    v130 = v197;
    v61 = v190;
    sub_26C46C184();
    swift_endAccess();
    v131 = *(v129 - 8);
    result = (*(v131 + 48))(v130, 1, v129);
    if (result == 1)
    {
      goto LABEL_52;
    }

    v133 = v201[2];
    v132 = v201[3];
    if (v133 >= v132 >> 1)
    {
      v201 = sub_26C42BC94((v132 > 1), v133 + 1, 1, v201);
    }

    TupleTypeMetadata2 = v206;
    v134 = *(v206 + 48);
    (*v177)(v128, v206);
    v135 = v201;
    v201[2] = v133 + 1;
    sub_26C40C2E8(v197, v135 + ((*(v131 + 80) + 32) & ~*(v131 + 80)) + *(v131 + 72) * v133, type metadata accessor for LamportTimestamp);
    v136 = v196;
    (*v173)(&v196[v134], v209);
    result = (v205)(v136, v61);
    v60 = v191;
    v62 = v195;
    v52 = v183;
    v55 = v181;
  }

  if (v62)
  {
    v63 = v62;
    v64 = v60;
LABEL_20:
    v195 = (v63 - 1) & v63;
    v74 = __clz(__rbit64(v63)) | (v64 << 6);
    v75 = v169;
    (*(v169 + 16))(v171, *(v55 + 48) + *(v169 + 72) * v74, v61);
    v76 = *(v55 + 56);
    v77 = v170;
    v78 = v172;
    v79 = v209;
    (*(v170 + 16))(v172, v76 + *(v170 + 72) * v74, v209);
    TupleTypeMetadata2 = v206;
    v80 = *(v206 + 48);
    v81 = *(v75 + 32);
    v44 = v188;
    v70 = v61;
    v81();
    (*(v77 + 32))(&v44[v80], v78, v79);
    (*v184)(v44, 0, 1, TupleTypeMetadata2);
    v71 = v64;
    goto LABEL_21;
  }

  if (v186 <= v60 + 1)
  {
    v72 = v60 + 1;
  }

  else
  {
    v72 = v186;
  }

  v71 = v72 - 1;
  v73 = v60;
  while (1)
  {
    v64 = v73 + 1;
    if (__OFADD__(v73, 1))
    {
      break;
    }

    if (v64 >= v186)
    {
      v70 = v61;
      (*v184)(v44, 1, 1, TupleTypeMetadata2);
      v195 = 0;
      goto LABEL_21;
    }

    v63 = *(v52 + 8 * v64);
    ++v73;
    if (v63)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}

uint64_t sub_26C46726C()
{
  v197 = *v0;
  v1 = v197;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v182 = (&v180 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v186 = (&v180 - v5);
  v233 = type metadata accessor for PBUUID(0);
  v207 = *(v233 - 8);
  v6 = MEMORY[0x28223BE20](v233);
  v184 = (&v180 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v6);
  v196 = (&v180 - v9);
  MEMORY[0x28223BE20](v8);
  v187 = (&v180 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v183 = &v180 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v191 = &v180 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v188 = &v180 - v17;
  MEMORY[0x28223BE20](v16);
  v202 = &v180 - v18;
  v232 = sub_26C46BB54();
  v226 = *(v232 - 8);
  v19 = MEMORY[0x28223BE20](v232);
  v213 = &v180 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v195 = &v180 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v194 = &v180 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v180 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v180 - v29;
  MEMORY[0x28223BE20](v28);
  v218 = &v180 - v31;
  v32 = type metadata accessor for LamportTimestamp(0);
  v211 = *(v32 - 8);
  v33 = MEMORY[0x28223BE20](v32);
  v35 = &v180 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v33);
  v223 = (&v180 - v37);
  v38 = MEMORY[0x28223BE20](v36);
  v210 = &v180 - v39;
  v40 = *(v1 + 280);
  v41 = *(v40 - 8);
  v42 = MEMORY[0x28223BE20](v38);
  v190 = &v180 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v42);
  v220 = &v180 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v201 = &v180 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v222 = &v180 - v49;
  MEMORY[0x28223BE20](v48);
  v208 = &v180 - v50;
  v230 = v51;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v217 = sub_26C46C474();
  v53 = *(v217 - 8);
  v54 = MEMORY[0x28223BE20](v217);
  v212 = &v180 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x28223BE20](v54);
  v192 = &v180 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v205 = &v180 - v59;
  MEMORY[0x28223BE20](v58);
  v204 = &v180 - v60;
  v61 = qword_280498268;
  swift_beginAccess();
  v215 = v0;
  v185 = v61;
  v62 = *(v0 + v61);
  v63 = v62 + 64;
  v64 = 1 << *(v62 + 32);
  v65 = -1;
  if (v64 < 64)
  {
    v65 = ~(-1 << v64);
  }

  v66 = v65 & *(v62 + 64);
  v181 = (v64 + 63) >> 6;
  v221 = TupleTypeMetadata2;
  v203 = TupleTypeMetadata2 - 8;
  v224 = (v41 + 16);
  v229 = (v41 + 32);
  v216 = (v53 + 32);
  v67 = v207 + 6;
  v228 = (v226 + 2);
  ++v226;
  v209 = v41;
  v214 = (v41 + 8);
  v207 += 7;
  v193 = (v211 + 56);
  v189 = v62;

  v69 = 0;
  v225 = v27;
  v227 = v30;
  v206 = v35;
  v231 = v40;
  v219 = v67;
  v200 = v63;
  while (v66)
  {
    v76 = v69;
LABEL_16:
    v80 = __clz(__rbit64(v66));
    v66 &= v66 - 1;
    v81 = v80 | (v76 << 6);
    v82 = v189;
    v83 = v209;
    v84 = v208;
    (*(v209 + 16))(v208, *(v189 + 48) + *(v209 + 72) * v81, v40);
    v85 = *(v82 + 56) + *(v211 + 72) * v81;
    v86 = v210;
    sub_26C46B83C(v85, v210, type metadata accessor for LamportTimestamp);
    v79 = v221;
    v87 = *(v221 + 48);
    v88 = v205;
    (*(v83 + 32))(v205, v84, v40);
    sub_26C40C2E8(v86, &v88[v87], type metadata accessor for LamportTimestamp);
    v89 = 0;
LABEL_17:
    v90 = *(v79 - 8);
    v91 = v90;
    v92 = *(v90 + 56);
    v93 = (v90 + 56);
    v92(v88, v89, 1, v79);
    v94 = *v216;
    v95 = v204;
    (*v216)(v204, v88, v217);
    v98 = *(v91 + 48);
    v97 = (v91 + 48);
    v96 = v98;
    if ((v98)(v95, 1, v79) == 1)
    {
      v204 = v96;
      v205 = v94;
      v222 = v93;
      v223 = v92;
      v218 = v97;

      v122 = qword_280498260;
      v123 = v215;
      swift_beginAccess();
      v198 = v122;
      v124 = *(v123 + v122);
      v125 = v124 + 64;
      v126 = 1 << *(v124 + 32);
      v127 = -1;
      if (v126 < 64)
      {
        v127 = ~(-1 << v126);
      }

      v128 = v127 & *(v124 + 64);
      v189 = (v126 + 63) >> 6;
      v199 = v124;

      v129 = 0;
      v130 = v206;
      v131 = v219;
      v132 = v231;
      v203 = v125;
      v133 = v212;
      while (1)
      {
        v134 = v223;
        if (!v128)
        {
          break;
        }

        v135 = v129;
LABEL_48:
        v139 = __clz(__rbit64(v128));
        v128 &= v128 - 1;
        v140 = v139 | (v135 << 6);
        v141 = v199;
        v142 = v209;
        v143 = v208;
        (*(v209 + 16))(v208, *(v199 + 48) + *(v209 + 72) * v140, v132);
        v144 = *(v141 + 56) + *(v211 + 72) * v140;
        v145 = v210;
        sub_26C46B83C(v144, v210, type metadata accessor for LamportTimestamp);
        v146 = v221;
        v147 = *(v221 + 48);
        v148 = *(v142 + 32);
        v133 = v212;
        v148(v212, v143, v132);
        v149 = &v133[v147];
        v138 = v146;
        sub_26C40C2E8(v145, v149, type metadata accessor for LamportTimestamp);
        v150 = 0;
        v131 = v219;
        v134 = v223;
LABEL_49:
        v134(v133, v150, 1, v138);
        v151 = v192;
        (v205)(v192, v133, v217);
        if ((v204)(v151, 1, v138) == 1)
        {
        }

        v152 = *(v138 + 48);
        (*v229)(v220, v151, v132);
        sub_26C40C2E8(&v151[v152], v130, type metadata accessor for LamportTimestamp);
        v153 = *(v230 + 24);
        v154 = v191;
        sub_26C3DDD48(v130 + v153, v191, &qword_280497458, &unk_26C46D3F0);
        v155 = *v131;
        v156 = (*v131)(v154, 1, v233);
        sub_26C3DE270(v154, &qword_280497458, &unk_26C46D3F0);
        if (v156 == 1)
        {
          v157 = v228;
          if (qword_280497190 != -1)
          {
            swift_once();
          }

          v158 = v232;
          v159 = __swift_project_value_buffer(v232, qword_2804985C0);
          (*v157)(v213, v159, v158);
        }

        else
        {
          v160 = v183;
          sub_26C3DDD48(v130 + v153, v183, &qword_280497458, &unk_26C46D3F0);
          v161 = v155(v160, 1, v233);
          v157 = v228;
          if (v161 == 1)
          {
            v162 = v184;
            *v184 = 0;
            v162[1] = 0;
            v163 = v233;
            sub_26C46BD14();
            if (v155(v160, 1, v163) != 1)
            {
              sub_26C3DE270(v160, &qword_280497458, &unk_26C46D3F0);
            }
          }

          else
          {
            v162 = v184;
            sub_26C40C2E8(v160, v184, type metadata accessor for PBUUID);
          }

          sub_26C40F3CC();
          sub_26C46B90C(v162, type metadata accessor for PBUUID);
          v158 = v232;
        }

        if (qword_280497190 != -1)
        {
          swift_once();
        }

        v164 = __swift_project_value_buffer(v158, qword_2804985C0);
        v165 = *v157;
        v166 = v227;
        (*v157)(v227, v164, v158);
        v167 = v213;
        v168 = sub_26C46BB14();
        v169 = *v226;
        (*v226)(v166, v158);
        v169(v167, v158);
        v132 = v231;
        if (v168)
        {
          result = (*v224)(v190, v220, v231);
          v170 = *(v215 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__controller);
          if (!v170)
          {
            goto LABEL_72;
          }

          v171 = v227;
          v172 = v232;
          v165(v227, v170 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipUUID, v232);
          result = (v165)(v225, v171, v172);
          v173 = *v206 + 1;
          if (*v206 == -1)
          {
            goto LABEL_70;
          }

          v174 = v182;
          *v182 = 0;
          v175 = v230;
          LODWORD(v202) = v173;
          sub_26C46BD14();
          v200 = *(v175 + 24);
          v201 = *v207;
          (v201)(v174 + v200, 1, 1, v233);
          v176 = v194;
          v165(v194, v225, v172);
          v177 = v195;
          v165(v195, v176, v172);
          v178 = v196;
          sub_26C40F280(v177, v196);
          v169(v176, v172);
          v169(v225, v172);
          v169(v171, v172);
          v179 = v200;
          sub_26C3DE270(v174 + v200, &qword_280497458, &unk_26C46D3F0);
          sub_26C40C2E8(v178, v174 + v179, type metadata accessor for PBUUID);
          (v201)(v174 + v179, 0, 1, v233);
          *v174 = v202;
          (*v193)(v174, 0, 1, v230);
          swift_beginAccess();
          v132 = v231;
          sub_26C46C174();
          v131 = v219;
          sub_26C46C194();
          swift_endAccess();
        }

        v130 = v206;
        sub_26C46B90C(v206, type metadata accessor for LamportTimestamp);
        result = (*v214)(v220, v132);
        v133 = v212;
        v125 = v203;
      }

      if (v189 <= v129 + 1)
      {
        v136 = v129 + 1;
      }

      else
      {
        v136 = v189;
      }

      v137 = v136 - 1;
      v138 = v221;
      while (1)
      {
        v135 = v129 + 1;
        if (__OFADD__(v129, 1))
        {
          goto LABEL_68;
        }

        if (v135 >= v189)
        {
          v128 = 0;
          v150 = 1;
          v129 = v137;
          goto LABEL_49;
        }

        v128 = *(v125 + 8 * v135);
        ++v129;
        if (v128)
        {
          v129 = v135;
          goto LABEL_48;
        }
      }
    }

    v99 = *(v79 + 48);
    (*v229)(v222, v95, v231);
    v100 = v223;
    sub_26C40C2E8(&v95[v99], v223, type metadata accessor for LamportTimestamp);
    v101 = *(v230 + 24);
    v102 = v202;
    sub_26C3DDD48(v100 + v101, v202, &qword_280497458, &unk_26C46D3F0);
    v103 = *v219;
    v104 = (*v219)(v102, 1, v233);
    sub_26C3DE270(v102, &qword_280497458, &unk_26C46D3F0);
    if (v104 == 1)
    {
      if (qword_280497190 != -1)
      {
        swift_once();
      }

      v105 = v232;
      v106 = __swift_project_value_buffer(v232, qword_2804985C0);
      (*v228)(v218, v106, v105);
    }

    else
    {
      v107 = v188;
      sub_26C3DDD48(v100 + v101, v188, &qword_280497458, &unk_26C46D3F0);
      if (v103(v107, 1, v233) == 1)
      {
        v108 = v187;
        *v187 = 0;
        v108[1] = 0;
        v109 = v107;
        v110 = v233;
        sub_26C46BD14();
        v111 = v103(v109, 1, v110);
        v105 = v232;
        if (v111 != 1)
        {
          sub_26C3DE270(v188, &qword_280497458, &unk_26C46D3F0);
        }
      }

      else
      {
        v108 = v187;
        sub_26C40C2E8(v107, v187, type metadata accessor for PBUUID);
        v105 = v232;
      }

      sub_26C40F3CC();
      sub_26C46B90C(v108, type metadata accessor for PBUUID);
    }

    if (qword_280497190 != -1)
    {
      swift_once();
    }

    v112 = __swift_project_value_buffer(v105, qword_2804985C0);
    v113 = v227;
    v114 = *v228;
    (*v228)(v227, v112, v105);
    v115 = v218;
    v116 = sub_26C46BB14();
    v117 = *v226;
    (*v226)(v113, v105);
    v117(v115, v105);
    v40 = v231;
    if (v116)
    {
      result = (*v224)(v201, v222, v231);
      v118 = *(v215 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__controller);
      v119 = v223;
      if (!v118)
      {
        goto LABEL_71;
      }

      v120 = v227;
      v114(v227, v118 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipUUID, v105);
      result = (v114)(v225, v120, v105);
      v121 = *v119 + 1;
      if (*v119 == -1)
      {
        goto LABEL_69;
      }

      v70 = v186;
      *v186 = 0;
      v71 = v230;
      LODWORD(v199) = v121;
      sub_26C46BD14();
      v72 = *(v71 + 24);
      v198 = *v207;
      (v198)(v70 + v72, 1, 1, v233);
      v73 = v194;
      v114(v194, v225, v232);
      v74 = v195;
      v114(v195, v73, v232);
      v75 = v196;
      sub_26C40F280(v74, v196);
      v117(v73, v232);
      v117(v225, v232);
      v117(v227, v232);
      sub_26C3DE270(v70 + v72, &qword_280497458, &unk_26C46D3F0);
      sub_26C40C2E8(v75, v70 + v72, type metadata accessor for PBUUID);
      v40 = v231;
      (v198)(v70 + v72, 0, 1, v233);
      *v70 = v199;
      (*v193)(v70, 0, 1, v230);
      swift_beginAccess();
      sub_26C46C174();
      sub_26C46C194();
      swift_endAccess();
    }

    sub_26C46B90C(v223, type metadata accessor for LamportTimestamp);
    result = (*v214)(v222, v40);
    v63 = v200;
  }

  if (v181 <= v69 + 1)
  {
    v77 = v69 + 1;
  }

  else
  {
    v77 = v181;
  }

  v78 = v77 - 1;
  v79 = v221;
  while (1)
  {
    v76 = v69 + 1;
    if (__OFADD__(v69, 1))
    {
      break;
    }

    if (v76 >= v181)
    {
      v66 = 0;
      v89 = 1;
      v69 = v78;
      v88 = v205;
      goto LABEL_17;
    }

    v66 = *(v63 + 8 * v76);
    ++v69;
    if (v66)
    {
      v69 = v76;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
  return result;
}

uint64_t sub_26C468A68()
{
  v1 = v0;
  v2 = *v0;
  v82 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = (v63 - v8);
  v10 = *(v2 + 288);
  v65 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v7);
  v13 = v63 - v12;
  v14 = *(v2 + 280);
  v64 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v11);
  v70 = v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = v63 - v17;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v81 = sub_26C46C474();
  v20 = *(v81 - 8);
  v21 = MEMORY[0x28223BE20](v81);
  v69 = v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v21);
  if (*(v1 + qword_280498280) != 1)
  {
    return result;
  }

  v79 = v63 - v24;
  v85 = v10;
  v72 = v9;
  v73 = v6;
  v25 = qword_280498288;
  swift_beginAccess();
  v26 = *(v1 + v25);
  v68 = v13;
  v66 = v18;
  if ((v26 & 0xC000000000000001) != 0)
  {
    v27 = sub_26C46C5C4();
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v80 = v27 | 0x8000000000000000;
  }

  else
  {
    v31 = -1 << *(v26 + 32);
    v29 = ~v31;
    v28 = v26 + 64;
    v32 = -v31;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    else
    {
      v33 = -1;
    }

    v30 = v33 & *(v26 + 64);
    v80 = v26;
  }

  v34 = v70;
  v35 = v69;
  v76 = qword_280498270;
  v84 = (v64 + 32);
  v77 = qword_280498278;
  v83 = (v65 + 32);
  v75 = TupleTypeMetadata2 - 8;
  v63[0] = v29;
  v36 = (v29 + 64) >> 6;
  v63[2] = v64 + 16;
  v63[1] = v65 + 16;
  v74 = (v20 + 32);
  v71 = (v64 + 8);

  v37 = 0;
  v67 = v1;
  v78 = v28;
  while ((v80 & 0x8000000000000000) != 0)
  {
    if (sub_26C46C5D4())
    {
      sub_26C46C754();
      swift_unknownObjectRelease();
      v46 = v68;
      v47 = v85;
      sub_26C46C754();
      swift_unknownObjectRelease();
      v39 = v37;
      v87 = v30;
      goto LABEL_23;
    }

    v49 = 1;
    v86 = v37;
    v87 = v30;
LABEL_24:
    v50 = *(TupleTypeMetadata2 - 8);
    (*(v50 + 56))(v35, v49, 1, TupleTypeMetadata2);
    v51 = v79;
    (*v74)(v79, v35, v81);
    if ((*(v50 + 48))(v51, 1, TupleTypeMetadata2) == 1)
    {
      sub_26C40B328(v80);
      v61 = v76;
      swift_beginAccess();
      *(v1 + v61) = 0;

      v62 = v77;
      swift_beginAccess();
      *(v1 + v62) = 0;
    }

    v52 = *(TupleTypeMetadata2 + 48);
    (*v84)(v34, v51, v14);
    v53 = v85;
    v88[3] = v85;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v88);
    (*v83)(boxed_opaque_existential_0, &v51[v52], v53);
    v55 = v76;
    swift_beginAccess();
    if (*(v1 + v55))
    {
      sub_26C46BB54();
      v56 = v72;
      sub_26C46C184();
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
      v57 = sub_26C46BB54();
      v56 = v72;
      (*(*(v57 - 8) + 56))(v72, 1, 1, v57);
    }

    v58 = v73;
    v59 = v77;
    swift_beginAccess();
    v28 = v78;
    if (*(v1 + v59))
    {
      sub_26C46BB54();
      sub_26C46C184();
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
      v60 = sub_26C46BB54();
      (*(*(v60 - 8) + 56))(v58, 1, 1, v60);
    }

    sub_26C3E0D08(v88, v56, v58);
    sub_26C3DE270(v58, &qword_280497430, &unk_26C46D3D0);
    sub_26C3DE270(v56, &qword_280497430, &unk_26C46D3D0);
    (*v71)(v34, v14);
    result = sub_26C3DE270(v88, &qword_280497450, &qword_26C471080);
    v37 = v86;
    v30 = v87;
  }

  v38 = v30;
  v39 = v37;
  if (v30)
  {
LABEL_20:
    v87 = (v38 - 1) & v38;
    v43 = __clz(__rbit64(v38)) | (v39 << 6);
    v44 = v80;
    (*(v64 + 16))(v66, *(v80 + 48) + *(v64 + 72) * v43, v14);
    v45 = *(v44 + 56) + *(v65 + 72) * v43;
    v46 = v68;
    v47 = v85;
    (*(v65 + 16))(v68, v45, v85);
LABEL_23:
    v48 = *(TupleTypeMetadata2 + 48);
    v35 = v69;
    (*v84)();
    (*v83)(&v35[v48], v46, v47);
    v49 = 0;
    v86 = v39;
    v1 = v67;
    v34 = v70;
    goto LABEL_24;
  }

  if (v36 <= v37 + 1)
  {
    v40 = v37 + 1;
  }

  else
  {
    v40 = v36;
  }

  v41 = v40 - 1;
  v42 = v37;
  while (1)
  {
    v39 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      break;
    }

    if (v39 >= v36)
    {
      v86 = v41;
      v87 = 0;
      v49 = 1;
      goto LABEL_24;
    }

    v38 = *(v28 + 8 * v39);
    ++v42;
    if (v38)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26C4693B0(uint64_t a1)
{
  v50 = a1;
  v2 = *(*v1 + 288);
  v52 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](a1);
  v64 = v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v49 - v6;
  v9 = *(v8 + 280);
  v51 = *(v9 - 8);
  MEMORY[0x28223BE20](v5);
  v11 = v49 - v10;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v66 = sub_26C46C474();
  v13 = *(v66 - 8);
  v14 = MEMORY[0x28223BE20](v66);
  v16 = v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v14);
  v57 = v49 - v18;
  if (*(v1 + qword_280498280) != 1)
  {
    return result;
  }

  v67 = v2;
  v19 = qword_280498288;
  swift_beginAccess();
  v20 = *(v1 + v19);
  v55 = v11;
  v56 = v7;
  if ((v20 & 0xC000000000000001) != 0)
  {
    v21 = sub_26C46C5C4();
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v65 = v21 | 0x8000000000000000;
  }

  else
  {
    v25 = -1 << *(v20 + 32);
    v23 = ~v25;
    v22 = v20 + 64;
    v26 = -v25;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    else
    {
      v27 = -1;
    }

    v24 = v27 & *(v20 + 64);
    v65 = v20;
  }

  v28 = v57;
  v53 = (v51 + 32);
  v29 = (v52 + 32);
  v63 = TupleTypeMetadata2 - 8;
  v49[0] = v23;
  v30 = (v23 + 64) >> 6;
  v49[2] = v51 + 16;
  v49[1] = v52 + 16;
  v62 = (v13 + 32);
  v59 = (v51 + 8);

  v31 = 0;
  v60 = v9;
  v54 = v16;
  v58 = v22;
  while (1)
  {
    v61 = v24;
    if ((v65 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (!sub_26C46C5D4())
    {
      v44 = 1;
      v48 = v24;
      v36 = v31;
      v68 = v48;
      goto LABEL_23;
    }

    sub_26C46C754();
    swift_unknownObjectRelease();
    v41 = v56;
    v42 = v67;
    sub_26C46C754();
    swift_unknownObjectRelease();
    v34 = v31;
    v68 = v24;
LABEL_22:
    v43 = *(TupleTypeMetadata2 + 48);
    v16 = v54;
    (*v53)();
    (*v29)(&v16[v43], v41, v42);
    v44 = 0;
    v36 = v34;
    v28 = v57;
LABEL_23:
    v22 = v58;
LABEL_24:
    v45 = *(TupleTypeMetadata2 - 8);
    (*(v45 + 56))(v16, v44, 1, TupleTypeMetadata2);
    (*v62)(v28, v16, v66);
    if ((*(v45 + 48))(v28, 1, TupleTypeMetadata2) == 1)
    {
      return sub_26C40B328(v65);
    }

    (*v29)(v64, &v28[*(TupleTypeMetadata2 + 48)], v67);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497440, &unk_26C46D3E0);
    if (swift_dynamicCast())
    {
      v46 = v69;
      ObjectType = swift_getObjectType();
      sub_26C3F8720(ObjectType, v46);
      sub_26C415270(v50);
      swift_unknownObjectRelease();
    }

    v9 = v60;
    v32 = v68;
    result = (*v59)(v28, v60);
    v31 = v36;
    v24 = v32;
  }

  v33 = v24;
  v34 = v31;
  if (v24)
  {
LABEL_19:
    v68 = (v33 - 1) & v33;
    v38 = __clz(__rbit64(v33)) | (v34 << 6);
    v39 = v65;
    (*(v51 + 16))(v55, *(v65 + 48) + *(v51 + 72) * v38, v9);
    v40 = *(v39 + 56) + *(v52 + 72) * v38;
    v41 = v56;
    v42 = v67;
    (*(v52 + 16))(v56, v40, v67);
    goto LABEL_22;
  }

  if (v30 <= v31 + 1)
  {
    v35 = v31 + 1;
  }

  else
  {
    v35 = v30;
  }

  v36 = v35 - 1;
  v37 = v31;
  while (1)
  {
    v34 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v34 >= v30)
    {
      v68 = 0;
      v44 = 1;
      goto LABEL_24;
    }

    v33 = *(v22 + 8 * v34);
    ++v37;
    if (v33)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26C469A30()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_26C46BB54();
  v68 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = *(*(v2 + 288) - 8);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v67 - v8;
  v10 = *(v2 + 280);
  v74 = *(v10 - 8);
  MEMORY[0x28223BE20](v7);
  v12 = &v67 - v11;
  v88 = v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v87 = sub_26C46C474();
  v15 = *(v87 - 8);
  v16 = MEMORY[0x28223BE20](v87);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v16);
  v21 = &v67 - v20;
  if (*(v1 + qword_280498280) != 1)
  {
    return result;
  }

  v79 = v9;
  v22 = qword_280498288;
  swift_beginAccess();
  v23 = *(v1 + v22);
  if ((v23 & 0xC000000000000001) != 0)
  {
    v24 = sub_26C46C5C4();
    v86 = 0;
    v25 = 0;
    v95 = 0;
    v85 = v24 | 0x8000000000000000;
  }

  else
  {
    v26 = -1 << *(v23 + 32);
    v25 = ~v26;
    v27 = *(v23 + 64);
    v86 = v23 + 64;
    v28 = -v26;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    else
    {
      v29 = -1;
    }

    v95 = v29 & v27;
    v85 = v23;
  }

  v78 = v12;
  v76 = (v74 + 32);
  v93 = (v75 + 32);
  v83 = TupleTypeMetadata2 - 8;
  v67 = v25;
  v84 = (v25 + 64) >> 6;
  v73 = v74 + 16;
  v72 = v75 + 16;
  v82 = (v15 + 32);
  v70 = (v68 + 16);
  v71 = (v68 + 8);
  v80 = (v74 + 8);

  v30 = 0;
  v69 = v6;
  v81 = v10;
  v77 = TupleTypeMetadata2;
  v90 = v18;
  v89 = v21;
  v31 = v85;
  while (1)
  {
    ObjectType = v30;
    v92 = v95;
    if ((v31 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (sub_26C46C5D4())
    {
      v38 = v6;
      v39 = v1;
      v40 = v3;
      v42 = v78;
      sub_26C46C754();
      swift_unknownObjectRelease();
      v44 = v10;
      v45 = v79;
      v46 = v88;
      sub_26C46C754();
      swift_unknownObjectRelease();
      v34 = ObjectType;
      v95 = v92;
      goto LABEL_23;
    }

    v49 = 1;
    v94 = ObjectType;
    v95 = v92;
LABEL_26:
    v46 = v88;
LABEL_27:
    v50 = *(TupleTypeMetadata2 - 8);
    (*(v50 + 56))(v18, v49, 1, TupleTypeMetadata2);
    (*v82)(v21, v18, v87);
    if ((*(v50 + 48))(v21, 1, TupleTypeMetadata2) == 1)
    {
      return sub_26C40B328(v85);
    }

    v51 = *(TupleTypeMetadata2 + 48);
    v99[3] = v46;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v99);
    (*v93)(boxed_opaque_existential_0, &v21[v51], v46);
    sub_26C3DE214(v99, v98);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497440, &unk_26C46D3E0);
    if (swift_dynamicCast())
    {
      v53 = v97;
      ObjectType = swift_getObjectType();
      v92 = v53;
      v54 = sub_26C3F8720(ObjectType, v53);
      v55 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
      swift_beginAccess();
      (*v70)(v6, v54 + v55, v3);
      v56 = OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__pendingModelControllers;
      swift_beginAccess();
      v57 = sub_26C42C210(v6);
      if (v58)
      {
        v59 = v57;
        v60 = v3;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v62 = *(v1 + v56);
        v96 = v62;
        *(v1 + v56) = 0x8000000000000000;
        v63 = v1;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_26C42EBCC();
          v62 = v96;
        }

        v64 = *(v68 + 8);
        v64(*(v62 + 48) + *(v68 + 72) * v59, v60);

        sub_26C42D490(v59, v62);
        v65 = v69;
        v64(v69, v60);
        *(v63 + v56) = v62;
        v1 = v63;
        v6 = v65;
        v3 = v60;
      }

      else
      {
        (*v71)(v6, v3);
      }

      v10 = v81;
      swift_endAccess();
      v21 = v89;
      if (*(v1 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__controller) && swift_weakLoadStrong())
      {
        v66 = sub_26C3F8720(ObjectType, v92);
        sub_26C3EA514(v66);
        swift_unknownObjectRelease();

        v6 = v69;
      }

      else
      {
        swift_unknownObjectRelease();
      }

      v18 = v90;
    }

    else
    {
      v10 = v81;
    }

    __swift_destroy_boxed_opaque_existential_1(v99);
    result = (*v80)(v21, v10);
    v31 = v85;
    v30 = v94;
  }

  v32 = v30;
  v33 = v95;
  v34 = v32;
  if (v95)
  {
LABEL_20:
    v38 = v6;
    v39 = v1;
    v40 = v3;
    v95 = (v33 - 1) & v33;
    v41 = __clz(__rbit64(v33)) | (v34 << 6);
    v42 = v78;
    (*(v74 + 16))(v78, *(v31 + 48) + *(v74 + 72) * v41, v10);
    v43 = *(v31 + 56) + *(v75 + 72) * v41;
    v44 = v10;
    v45 = v79;
    v46 = v88;
    (*(v75 + 16))(v79, v43, v88);
LABEL_23:
    v47 = *(v77 + 48);
    v18 = v90;
    v48 = v42;
    TupleTypeMetadata2 = v77;
    (*v76)(v90, v48, v44);
    (*v93)(&v18[v47], v45, v46);
    v49 = 0;
    v94 = v34;
    v3 = v40;
    v1 = v39;
    v6 = v38;
    v21 = v89;
    goto LABEL_27;
  }

  if (v84 <= v32 + 1)
  {
    v35 = v32 + 1;
  }

  else
  {
    v35 = v84;
  }

  v36 = v35 - 1;
  v37 = v32;
  while (1)
  {
    v34 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v34 >= v84)
    {
      v94 = v36;
      v95 = 0;
      v49 = 1;
      goto LABEL_26;
    }

    v33 = *(v86 + 8 * v34);
    ++v37;
    if (v33)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t SyncedDictionary.SyncedDictionaryChangeInfo.keysRemoved.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t SyncedDictionary.SyncedDictionaryChangeInfo.keysChanged.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t SyncedDictionary.SyncedDictionaryChangeInfo.keysAdded.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t SyncedDictionary.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_26C46BFF4();
}

uint64_t sub_26C46A5C8()
{
}

uint64_t SyncedDictionary.deinit()
{
  sub_26C46B90C(v0 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__timestamp, type metadata accessor for LamportTimestamp);

  return v0;
}

uint64_t SyncedDictionary.__deallocating_deinit()
{
  SyncedDictionary.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_26C46A790@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = SyncedDictionary.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

char *sub_26C46A80C(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_26C42BCE4(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[4 * v7 + 32], v6 + 32, 4 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_26C46A8F8(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_26C42BA84(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_26C46AA18(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_26C46AB74(uint64_t a1, uint64_t a2)
{
  if (qword_280497158 != -1)
  {
    swift_once();
  }

  sub_26C410654(a2, a2);
  v4 = *(a2 - 8);
  swift_allocObject();
  v5 = sub_26C46C264();
  (*(v4 + 16))(v6, a1, a2);
  sub_26C40D3FC(v5, a2);
  sub_26C46C2E4();
  swift_getWitnessTable();
  v7 = sub_26C46BA74();

  return v7;
}

uint64_t sub_26C46AD0C()
{
  v1 = qword_280498288;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_26C46AD54@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_26C46AD0C();
}

uint64_t sub_26C46AD90(void *a1)
{

  sub_26C46AD50(v1);
}

__n128 sub_26C46ADE0(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_26C46AEE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_26C46AF30(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for LamportTimestamp(319);
    if (v2 <= 0x3F)
    {
      sub_26C3E959C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_26C46AFD0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v37 = sub_26C46BD24();
  v8 = *(v37 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_26C46BB54() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  v14 = v13 - 1;
  if (!v13)
  {
    v14 = 0;
  }

  if (v14 <= v10)
  {
    v14 = v10;
  }

  v15 = *(v8 + 80);
  if (v9)
  {
    v16 = -2;
  }

  else
  {
    v16 = -1;
  }

  v17 = *(v11 + 80);
  v18 = *(v11 + 64);
  if (v13)
  {
    v19 = v18;
  }

  else
  {
    v19 = v18 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v20 = v15 | 7;
  v21 = v16 + *(v8 + 64) - ((-17 - v15) | v15) - ((((-5 - v15) | v15) - ((v15 | 7) + *(v8 + 64))) | v15 | 7);
  v22 = (v15 | 7) + *(v6 + 64);
  if (a2 > v14)
  {
    v23 = ((v19 + v17 + (((v22 & ~v20) + v17 + v21) & ~v17)) & ~v17) + v19;
    v24 = 8 * v23;
    if (v23 <= 3)
    {
      v26 = ((a2 - v14 + ~(-1 << v24)) >> v24) + 1;
      if (HIWORD(v26))
      {
        v25 = *(a1 + v23);
        if (!v25)
        {
          goto LABEL_37;
        }

        goto LABEL_24;
      }

      if (v26 > 0xFF)
      {
        v25 = *(a1 + v23);
        if (!*(a1 + v23))
        {
          goto LABEL_37;
        }

        goto LABEL_24;
      }

      if (v26 < 2)
      {
LABEL_37:
        if (v14)
        {
          goto LABEL_38;
        }

        return 0;
      }
    }

    v25 = *(a1 + v23);
    if (!*(a1 + v23))
    {
      goto LABEL_37;
    }

LABEL_24:
    v27 = (v25 - 1) << v24;
    if (v23 > 3)
    {
      v27 = 0;
    }

    if (v23)
    {
      if (v23 <= 3)
      {
        v28 = v23;
      }

      else
      {
        v28 = 4;
      }

      if (v28 > 2)
      {
        if (v28 == 3)
        {
          v29 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v29 = *a1;
        }
      }

      else if (v28 == 1)
      {
        v29 = *a1;
      }

      else
      {
        v29 = *a1;
      }
    }

    else
    {
      v29 = 0;
    }

    return v14 + (v29 | v27) + 1;
  }

LABEL_38:
  if (v7 == v14)
  {
    v30 = *(v6 + 48);
    v31 = a1;
    v32 = v7;
    v33 = v5;
  }

  else
  {
    v35 = (a1 + v22) & ~v20;
    if (v9 != v14)
    {
      v36 = (*(v12 + 48))((v35 + v17 + v21) & ~v17);
      if (v36 >= 2)
      {
        return v36 - 1;
      }

      else
      {
        return 0;
      }
    }

    v30 = *(v8 + 48);
    v31 = ((v15 + v35 + 4) & ~v15);
    v32 = v9;
    v33 = v37;
  }

  return v30(v31, v32, v33);
}

void sub_26C46B33C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v47 = *(a4 + 24);
  v6 = *(v47 - 8);
  v46 = v6;
  v7 = *(v6 + 84);
  v45 = sub_26C46BD24();
  v8 = *(v45 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = 0;
  v12 = *(sub_26C46BB54() - 8);
  v13 = v12;
  v14 = *(v12 + 84);
  v15 = v14 - 1;
  if (!v14)
  {
    v15 = 0;
  }

  if (v15 <= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(v8 + 80);
  v18 = *(v6 + 64);
  v19 = *(v12 + 80);
  v20 = *(v12 + 64);
  v21 = v17 | 7;
  v22 = -2;
  if (!v9)
  {
    v22 = -1;
  }

  v23 = v22 + *(v8 + 64) - ((-17 - v17) | v17) - ((((-5 - v17) | v17) - ((v17 | 7) + *(v8 + 64))) | v17 | 7);
  v24 = v21 + v18;
  v25 = (((v21 + v18) & ~v21) + v19 + v23) & ~v19;
  if (v14)
  {
    v26 = v20;
  }

  else
  {
    v26 = v20 + 1;
  }

  v27 = ((v26 + v19 + v25) & ~v19) + v26;
  if (a3 <= v16)
  {
    goto LABEL_25;
  }

  if (v27 <= 3)
  {
    v28 = ((a3 - v16 + ~(-1 << (8 * v27))) >> (8 * v27)) + 1;
    if (HIWORD(v28))
    {
      v11 = 4;
      if (v16 >= a2)
      {
        goto LABEL_35;
      }

LABEL_26:
      v30 = ~v16 + a2;
      if (v27 >= 4)
      {
        bzero(a1, v27);
        *a1 = v30;
        v31 = 1;
        if (v11 > 1)
        {
          goto LABEL_67;
        }

        goto LABEL_64;
      }

      v31 = (v30 >> (8 * v27)) + 1;
      if (v27)
      {
        v32 = v30 & ~(-1 << (8 * v27));
        bzero(a1, v27);
        if (v27 != 3)
        {
          if (v27 == 2)
          {
            *a1 = v32;
            if (v11 > 1)
            {
LABEL_67:
              if (v11 == 2)
              {
                *&a1[v27] = v31;
              }

              else
              {
                *&a1[v27] = v31;
              }

              return;
            }
          }

          else
          {
            *a1 = v30;
            if (v11 > 1)
            {
              goto LABEL_67;
            }
          }

LABEL_64:
          if (v11)
          {
            a1[v27] = v31;
          }

          return;
        }

        *a1 = v32;
        a1[2] = BYTE2(v32);
      }

      if (v11 > 1)
      {
        goto LABEL_67;
      }

      goto LABEL_64;
    }

    if (v28 < 0x100)
    {
      v29 = 1;
    }

    else
    {
      v29 = 2;
    }

    if (v28 >= 2)
    {
      v11 = v29;
    }

    else
    {
      v11 = 0;
    }

LABEL_25:
    if (v16 >= a2)
    {
      goto LABEL_35;
    }

    goto LABEL_26;
  }

  v11 = 1;
  if (v16 < a2)
  {
    goto LABEL_26;
  }

LABEL_35:
  v33 = a1;
  if (v11 > 1)
  {
    if (v11 != 2)
    {
      *&a1[v27] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_42;
    }

    *&a1[v27] = 0;
LABEL_41:
    if (!a2)
    {
      return;
    }

    goto LABEL_42;
  }

  if (!v11)
  {
    goto LABEL_41;
  }

  a1[v27] = 0;
  if (!a2)
  {
    return;
  }

LABEL_42:
  if (v7 == v16)
  {
    v34 = v47;
    v35 = *(v46 + 56);
    v36 = a2;
    v37 = v7;
LABEL_46:

    v35(v33, v36, v37, v34);
    return;
  }

  v38 = &a1[v24] & ~v21;
  if (v9 == v16)
  {
    v35 = *(v8 + 56);
    v33 = ((v17 + v38 + 4) & ~v17);
    v36 = a2;
    v37 = v9;
    v34 = v45;
    goto LABEL_46;
  }

  v39 = v38 + v19 + v23;
  v40 = (v39 & ~v19);
  if (v15 >= a2)
  {
    v44 = *(v13 + 56);

    v44(v39 & ~v19, (a2 + 1));
  }

  else
  {
    if (v26 <= 3)
    {
      v41 = ~(-1 << (8 * v26));
    }

    else
    {
      v41 = -1;
    }

    if (v26)
    {
      v42 = v41 & (~v15 + a2);
      if (v26 <= 3)
      {
        v43 = v26;
      }

      else
      {
        v43 = 4;
      }

      bzero(v40, v26);
      if (v43 > 2)
      {
        if (v43 == 3)
        {
          *v40 = v42;
          v40[2] = BYTE2(v42);
        }

        else
        {
          *v40 = v42;
        }
      }

      else if (v43 == 1)
      {
        *v40 = v42;
      }

      else
      {
        *v40 = v42;
      }
    }
  }
}

uint64_t sub_26C46B83C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26C46B8C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26C46B90C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}