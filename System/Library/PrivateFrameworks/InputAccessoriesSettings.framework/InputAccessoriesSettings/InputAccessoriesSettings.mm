uint64_t sub_254BA9858(uint64_t *a1)
{
  sub_254BC99E4();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_254BA9938@<X0>(_BYTE *a1@<X8>)
{
  result = sub_254BC9954();
  *a1 = result & 1;
  return result;
}

uint64_t sub_254BA99F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F751B70, &qword_254BCA7A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_254BA9A90()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_254BA9AD0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_254BA9BB8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_254BAED88(v1, v2);
}

uint64_t sub_254BA9BFC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_254BAF0A8(v1, v2);
}

uint64_t sub_254BA9CEC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_254BA9D24()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_254BA9D64()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_254BAA120()
{
  result = qword_27F751AB0;
  if (!qword_27F751AB0)
  {
    type metadata accessor for ACMTRMConfigProxy_PolicyMode();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F751AB0);
  }

  return result;
}

void type metadata accessor for ACMTRMConfigProxy_PolicyMode()
{
  if (!qword_27F751AB8[0])
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, qword_27F751AB8);
    }
  }
}

id sub_254BAA1C8()
{
  type metadata accessor for InputAccessoriesSettings(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_281535EB8 = result;
  return result;
}

uint64_t sub_254BAA220()
{
  sub_254BC9D94();
  sub_254BC9DB4();
  return sub_254BC9DC4();
}

uint64_t sub_254BAA294(uint64_t a1)
{
  sub_254BC9D94();
  sub_254BC9DB4();
  return sub_254BC9DC4();
}

_DWORD *sub_254BAA2F8@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_254BAA31C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_254BAA38C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_254BAA4CC(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_254BAA730@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v20 = a2;
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v24 = MEMORY[0x277D84A98];
  v25 = v3;
  v26 = MEMORY[0x277D84AA8];
  v27 = v2;
  v4 = sub_254BC99E4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - v6;
  WitnessTable = swift_getWitnessTable();
  v24 = v4;
  v25 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v10 = *(OpaqueTypeMetadata2 - 8);
  v11 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  v21 = v3;
  v22 = v2;
  v23 = v19;
  sub_254BC99D4();
  sub_254BC9A34();
  (*(v5 + 8))(v7, v4);
  v16 = *(v10 + 16);
  v16(v15, v13, OpaqueTypeMetadata2);
  v17 = *(v10 + 8);
  v17(v13, OpaqueTypeMetadata2);
  v16(v20, v15, OpaqueTypeMetadata2);
  return (v17)(v15, OpaqueTypeMetadata2);
}

uint64_t sub_254BAA9A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 16);
  v8(v7);
  (v8)(a3, v7, a2);
  return (*(v5 + 8))(v7, a2);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_254BAAB0C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_254BAAB54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_254BAABBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F751B40, &qword_254BCA728);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  sub_254BAAE34(a1, a2, &v16 - v7);
  v18 = a1;
  v19 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F751B48, &qword_254BCA730);
  sub_254BC9AC4();
  v9 = *(v17 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings_title);
  v10 = *(v17 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings_title + 8);

  v18 = v9;
  v19 = v10;
  sub_254BAD59C(&qword_27F751B50, &qword_27F751B40, &qword_254BCA728, &unk_254BCA608);
  sub_254BAC9A4();
  sub_254BC9AA4();

  sub_254BACEB4(v8, &qword_27F751B40, &qword_254BCA728);
  v18 = a1;
  v19 = a2;
  sub_254BC9AC4();
  v11 = v17;
  swift_getKeyPath();
  v18 = v11;
  sub_254BAD0DC(&qword_281535D88, type metadata accessor for InputAccessoriesSettings, &protocol conformance descriptor for InputAccessoriesSettings);
  sub_254BC97E4();

  LOBYTE(v9) = *(v11 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__managed);

  KeyPath = swift_getKeyPath();
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F751B60, &qword_254BCA790);
  v15 = (a3 + *(result + 36));
  *v15 = KeyPath;
  v15[1] = sub_254BACE94;
  v15[2] = v13;
  return result;
}

uint64_t sub_254BAAE34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v57 = a3;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F751B68, &qword_254BCA798);
  v58 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v49 = &v48 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F751B70, &qword_254BCA7A0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v56 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v48 - v9;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F751B78, &qword_254BCA7A8);
  v54 = *(v55 - 8);
  v11 = MEMORY[0x28223BE20](v55);
  v53 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v48 - v13;
  v60 = a1;
  v61 = a2;
  sub_254BABE24(v70);
  sub_254BAC028(a1, a2, &v66);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F751B80, &qword_254BCA7B0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F751B88, &qword_254BCA7B8);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F751B90, &qword_254BCA7C0);
  sub_254BAD010(&qword_27F751B98, &qword_27F751B80, &qword_254BCA7B0, MEMORY[0x277CE0340]);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F751BA0, &qword_254BCA7C8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F751BA8, &qword_254BCA7D0);
  v17 = sub_254BC9984();
  v18 = sub_254BAD59C(&qword_27F751BB0, &qword_27F751BA8, &qword_254BCA7D0, MEMORY[0x277CDF038]);
  v62 = v16;
  v63 = v17;
  v19 = v14;
  v64 = v18;
  v65 = MEMORY[0x277CDDDA0];
  v20 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v62 = v15;
  v63 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_254BAD59C(&qword_27F751BB8, &qword_27F751B90, &qword_254BCA7C0, MEMORY[0x277CE14C0]);
  sub_254BC9B14();
  v66 = a1;
  v67 = a2;
  v52 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F751B48, &qword_254BCA730);
  sub_254BC9AC4();
  v22 = v70[0];
  swift_getKeyPath();
  v66 = v22;
  sub_254BAD0DC(&qword_281535D88, type metadata accessor for InputAccessoriesSettings, &protocol conformance descriptor for InputAccessoriesSettings);
  sub_254BC97E4();
  v23 = v58;

  LODWORD(v14) = *(v22 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__hidrmEnabled);
  v24 = v59;

  if (v14 == 1)
  {
    v51 = a1;
    v66 = a1;
    v67 = v52;
    sub_254BC9AC4();
    v25 = v70[0];
    swift_getKeyPath();
    v66 = v25;
    sub_254BC97E4();

    v26 = OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__accessories;
    swift_beginAccess();
    v27 = *(v25 + v26);

    if (v27 >> 62)
    {
      v28 = sub_254BC9D74();
    }

    else
    {
      v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v28)
    {
      v48 = v19;
      v50 = v10;
      MEMORY[0x28223BE20](v29);
      sub_254BC9994();
      if (qword_281535C60 != -1)
      {
        swift_once();
      }

      v30 = qword_281535EB8;
      v66 = sub_254BC9A24();
      v67 = v31;
      v68 = v32 & 1;
      v69 = v33;
      sub_254BC9994();
      v34 = v30;
      v70[0] = sub_254BC9A24();
      v70[1] = v35;
      v71 = v36 & 1;
      v72 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F751BC8, &qword_254BCA830);
      sub_254BACF1C();
      v38 = v49;
      sub_254BC9B14();
      v23 = v58;
      v10 = v50;
      v24 = v59;
      (*(v58 + 32))(v50, v38, v59);
      v20 = 0;
      v19 = v48;
    }

    else
    {
      v20 = 1;
    }
  }

  (*(v23 + 56))(v10, v20, 1, v24);
  v39 = v54;
  v40 = *(v54 + 16);
  v41 = v53;
  v42 = v55;
  v40(v53, v19, v55);
  v43 = v56;
  sub_254BA99F0(v10, v56);
  v44 = v57;
  v40(v57, v41, v42);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F751BC0, &qword_254BCA800);
  sub_254BA99F0(v43, &v44[*(v45 + 48)]);
  sub_254BACEB4(v10, &qword_27F751B70, &qword_254BCA7A0);
  v46 = *(v39 + 8);
  v46(v19, v42);
  sub_254BACEB4(v43, &qword_27F751B70, &qword_254BCA7A0);
  return (v46)(v41, v42);
}

uint64_t sub_254BAB708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v5 = sub_254BC9984();
  v6 = *(v5 - 8);
  v30 = v5;
  v31 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F751BA8, &qword_254BCA7D0);
  v27 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F751BA0, &qword_254BCA7C8);
  v13 = *(v12 - 8);
  v28 = v12;
  v29 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - v14;
  sub_254BC9C54();

  v16 = sub_254BC9C44();
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  v17[2] = v16;
  v17[3] = v18;
  v17[4] = a1;
  v17[5] = a2;

  v19 = sub_254BC9C44();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = v18;
  v20[4] = a1;
  v20[5] = a2;
  sub_254BC9AE4();
  v37 = v33;
  v38 = v34;
  v39 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F751C18, &qword_254BCA8C8);
  sub_254BAD2CC();
  sub_254BAD320();
  sub_254BC9AD4();
  sub_254BC9974();
  v21 = sub_254BAD59C(&qword_27F751BB0, &qword_27F751BA8, &qword_254BCA7D0, MEMORY[0x277CDF038]);
  v22 = MEMORY[0x277CDDDA0];
  v23 = v30;
  sub_254BC9A64();
  (*(v31 + 8))(v8, v23);
  (*(v27 + 8))(v11, v9);
  v33 = v9;
  v34 = v23;
  v35 = v21;
  v36 = v22;
  swift_getOpaqueTypeConformance2();
  v24 = v28;
  sub_254BC9A74();
  return (*(v29 + 8))(v15, v24);
}

uint64_t sub_254BABB20@<X0>(_BYTE *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F751B48, &qword_254BCA730);
  sub_254BC9AC4();
  swift_getKeyPath();
  sub_254BAD0DC(&qword_281535D88, type metadata accessor for InputAccessoriesSettings, &protocol conformance descriptor for InputAccessoriesSettings);
  sub_254BC97E4();

  v4 = *(v6 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__hostTRM);

  *a3 = v4;
  return result;
}

uint64_t sub_254BABBFC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F751B48, &qword_254BCA730);
  sub_254BC9AC4();
  sub_254BAE70C(v5);
}

uint64_t sub_254BABC5C()
{
  sub_254BAE130();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F751C40, &qword_254BCA8D8);
  type metadata accessor for ACMTRMConfigProxy_PolicyMode();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F751C38, &qword_254BCA8D0);
  sub_254BAD59C(&qword_27F751C48, &qword_27F751C40, &qword_254BCA8D8, MEMORY[0x277D83980]);
  sub_254BAD59C(&qword_27F751C30, &qword_27F751C38, &qword_254BCA8D0, MEMORY[0x277CDD7E8]);
  sub_254BAD3D0();
  return sub_254BC9AF4();
}

uint64_t sub_254BABD8C(char *a1)
{
  v4 = *a1;
  v3[16] = v4;
  v1 = sub_254BAD2CC();
  return MEMORY[0x259C25FD0](&v4, sub_254BAD424, v3, &type metadata for TransportRestrictedMode, MEMORY[0x277CE0BD8], v1, MEMORY[0x277CE0BC8]);
}

double sub_254BABE04@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_254BCA660;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
  return result;
}

double sub_254BABE24@<D0>(uint64_t a1@<X8>)
{
  *(&v8 + 1) = &type metadata for InputAccessoriesSettingsFeatureFlags;
  v9 = sub_254BAD124();
  v2 = sub_254BC9834();
  __swift_destroy_boxed_opaque_existential_1(&v7);
  if (v2)
  {
    sub_254BC9994();
    if (qword_281535C60 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  sub_254BC9994();
  if (qword_281535C60 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  v3 = qword_281535EB8;
  sub_254BC9A24();
  sub_254BC99A4();
  result = *&v7;
  v5 = v8;
  v6 = v9;
  *a1 = v7;
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_254BAC028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v37[3] = &type metadata for InputAccessoriesSettingsFeatureFlags;
  v37[4] = sub_254BAD124();
  v6 = sub_254BC9834();
  __swift_destroy_boxed_opaque_existential_1(v37);
  if (v6)
  {
    sub_254BC9994();
    if (qword_281535C60 != -1)
    {
      swift_once();
    }

    v7 = qword_281535EB8;
    v8 = sub_254BC9A24();
    v10 = v9;
    v12 = v11;
    v14 = v13 & 1;
    sub_254BAD208(v8, v9, v13 & 1);
  }

  else
  {
    v8 = 0;
    v10 = 0;
    v14 = 0;
    v12 = 0;
  }

  v37[0] = a1;
  v37[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F751B48, &qword_254BCA730);
  sub_254BC9AC4();
  swift_getKeyPath();
  v37[0] = v36;
  sub_254BAD0DC(&qword_281535D88, type metadata accessor for InputAccessoriesSettings, &protocol conformance descriptor for InputAccessoriesSettings);
  sub_254BC97E4();

  v15 = *(v36 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__trmDescription);
  v16 = *(v36 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__trmDescription + 8);
  v17 = *(v36 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__trmDescription + 16);
  v18 = *(v36 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__trmDescription + 24);
  sub_254BAD1C4(v15, v16, v17, v18);

  if (v18)
  {
    sub_254BC99C4();
    v19 = v17 & 1;
    LOBYTE(v37[0]) = v19;
    v34 = v10;
    v35 = v8;
    v20 = sub_254BC9A14();
    v22 = v21;
    v33 = v12;
    v24 = v23;

    sub_254BAD25C(v15, v16, v19);

    LODWORD(v37[0]) = sub_254BC99B4();
    v15 = sub_254BC99F4();
    v16 = v25;
    v27 = v26;
    v18 = v28;
    v29 = v24 & 1;
    v30 = v20;
    v8 = v35;
    v31 = v22;
    v12 = v33;
    v10 = v34;
    sub_254BAD25C(v30, v31, v29);

    v17 = v27 & 1;
  }

  sub_254BAD1C4(v8, v10, v14, v12);
  sub_254BAD1C4(v15, v16, v17, v18);
  sub_254BAD218(v8, v10, v14, v12);
  *a3 = v8;
  a3[1] = v10;
  a3[2] = v14;
  a3[3] = v12;
  a3[4] = v15;
  a3[5] = v16;
  a3[6] = v17;
  a3[7] = v18;
  sub_254BAD218(v15, v16, v17, v18);
  return sub_254BAD218(v8, v10, v14, v12);
}

uint64_t sub_254BAC378(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F751B48, &qword_254BCA730);
  sub_254BC9AC4();
  swift_getKeyPath();
  sub_254BAD0DC(&qword_281535D88, type metadata accessor for InputAccessoriesSettings, &protocol conformance descriptor for InputAccessoriesSettings);
  sub_254BC97E4();

  swift_beginAccess();

  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F751BE8, &qword_254BCA840);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F751BF0, &qword_254BCA848);
  sub_254BAD59C(&qword_27F751BF8, &qword_27F751BE8, &qword_254BCA840, MEMORY[0x277D83980]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F751BD8, &qword_254BCA838);
  sub_254BAD010(&qword_27F751BE0, &qword_27F751BD8, &qword_254BCA838, MEMORY[0x277CDD8F8]);
  swift_getOpaqueTypeConformance2();
  sub_254BAD0DC(&qword_27F751C00, type metadata accessor for InputAccessoriesSettings.Accessory, &unk_254BCAD44);
  return sub_254BC9B04();
}

uint64_t sub_254BAC5FC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F751BD8, &qword_254BCA838);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - v8;
  v10 = *a1;
  sub_254BC9944();
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = v10;
  sub_254BAD010(&qword_27F751BE0, &qword_27F751BD8, &qword_254BCA838, MEMORY[0x277CDD8F8]);

  sub_254BC9A84();

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_254BAC7DC@<X0>(uint64_t a1@<X0>, void *a3@<X2>, uint64_t a4@<X8>)
{
  swift_getKeyPath();
  sub_254BAD0DC(&qword_27F751C08, type metadata accessor for InputAccessoriesSettings.Accessory, &unk_254BCAD00);
  sub_254BC97E4();

  v7 = (a1 + *a3);
  v8 = v7[1];
  *a4 = *v7;
  *(a4 + 8) = v8;
  *(a4 + 16) = 0;
  *(a4 + 24) = MEMORY[0x277D84F90];
}

uint64_t sub_254BAC8A8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F751B48, &qword_254BCA730);
  sub_254BC9AC4();

  return sub_254BC9894();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_254BAC9A4()
{
  result = qword_27F751B58;
  if (!qword_27F751B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F751B58);
  }

  return result;
}

uint64_t sub_254BACA34@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_254BAD0DC(&qword_281535D88, type metadata accessor for InputAccessoriesSettings, &protocol conformance descriptor for InputAccessoriesSettings);
  sub_254BC97E4();

  v4 = *(v3 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__trmDescription);
  v5 = *(v3 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__trmDescription + 8);
  v6 = *(v3 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__trmDescription + 16);
  v7 = *(v3 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__trmDescription + 24);
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return sub_254BAD1C4(v4, v5, v6, v7);
}

uint64_t sub_254BACAF4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  sub_254BAD1C4(*a1, v2, v3, v4);
  return sub_254BAFD58(v1, v2, v3, v4);
}

uint64_t sub_254BACB68@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_254BAD0DC(&qword_281535D88, type metadata accessor for InputAccessoriesSettings, &protocol conformance descriptor for InputAccessoriesSettings);
  sub_254BC97E4();

  *a4 = *(v6 + *a3);
  return result;
}

uint64_t sub_254BACC84@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_254BAD0DC(&qword_27F751C08, type metadata accessor for InputAccessoriesSettings.Accessory, &unk_254BCAD00);
  sub_254BC97E4();

  v7 = (v6 + *a3);
  v8 = v7[1];
  *a4 = *v7;
  a4[1] = v8;
}

uint64_t keypath_set_24Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_254BACDA0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_254BAD0DC(&qword_281535D88, type metadata accessor for InputAccessoriesSettings, &protocol conformance descriptor for InputAccessoriesSettings);
  sub_254BC97E4();

  v4 = OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__accessories;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_254BACEB4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_254BACF1C()
{
  result = qword_27F751BD0;
  if (!qword_27F751BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F751BC8, &qword_254BCA830);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F751BD8, &qword_254BCA838);
    sub_254BAD010(&qword_27F751BE0, &qword_27F751BD8, &qword_254BCA838, MEMORY[0x277CDD8F8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F751BD0);
  }

  return result;
}

uint64_t sub_254BAD010(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_254BAD0DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_254BAD124()
{
  result = qword_27F751C10;
  if (!qword_27F751C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F751C10);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_254BAD1C4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_254BAD208(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_254BAD208(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_254BAD218(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_254BAD25C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_254BAD25C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t objectdestroy_35Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_254BAD2CC()
{
  result = qword_27F751C20;
  if (!qword_27F751C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F751C20);
  }

  return result;
}

unint64_t sub_254BAD320()
{
  result = qword_27F751C28;
  if (!qword_27F751C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F751C18, &qword_254BCA8C8);
    sub_254BAD59C(&qword_27F751C30, &qword_27F751C38, &qword_254BCA8D0, MEMORY[0x277CDD7E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F751C28);
  }

  return result;
}

unint64_t sub_254BAD3D0()
{
  result = qword_27F751C50;
  if (!qword_27F751C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F751C50);
  }

  return result;
}

uint64_t sub_254BAD424@<X0>(uint64_t a1@<X8>)
{
  result = sub_254BAD9DC(*(v1 + 16));
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
  return result;
}

unint64_t sub_254BAD460()
{
  result = qword_27F751C58;
  if (!qword_27F751C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F751B60, &qword_254BCA790);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F751B40, &qword_254BCA728);
    sub_254BAD59C(&qword_27F751B50, &qword_27F751B40, &qword_254BCA728, &unk_254BCA608);
    sub_254BAC9A4();
    swift_getOpaqueTypeConformance2();
    sub_254BAD59C(&qword_27F751C60, &qword_27F751C68, &qword_254BCA908, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F751C58);
  }

  return result;
}

uint64_t sub_254BAD59C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t getEnumTagSinglePayload for InputAccessoriesSettingsFeatureFlags(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for InputAccessoriesSettingsFeatureFlags(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_254BAD6D8()
{
  result = qword_27F751C70;
  if (!qword_27F751C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F751C70);
  }

  return result;
}

uint64_t sub_254BAD734()
{
  sub_254BC9D94();
  MEMORY[0x259C26440](0);
  return sub_254BC9DC4();
}

uint64_t sub_254BAD7A0(uint64_t a1)
{
  sub_254BC9D94();
  MEMORY[0x259C26440](0);
  return sub_254BC9DC4();
}

uint64_t getEnumTagSinglePayload for TransportRestrictedMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TransportRestrictedMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_254BAD978()
{
  result = qword_27F751C78;
  if (!qword_27F751C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F751C40, &qword_254BCA8D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F751C78);
  }

  return result;
}

uint64_t sub_254BAD9DC(unsigned __int8 a1)
{
  v1 = sub_254BC97C4();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_254BC9BA4();
  MEMORY[0x28223BE20](v2 - 8);
  sub_254BC9B94();
  if (qword_281535C60 != -1)
  {
    swift_once();
  }

  v3 = qword_281535EB8;
  sub_254BC97B4();
  return sub_254BC9BC4();
}

uint64_t sub_254BADBD8()
{
  v1 = *v0;
  sub_254BC9D94();
  MEMORY[0x259C26440](v1);
  return sub_254BC9DC4();
}

uint64_t sub_254BADC4C(uint64_t a1)
{
  v2 = *v1;
  sub_254BC9D94();
  MEMORY[0x259C26440](v2);
  return sub_254BC9DC4();
}

void *sub_254BADCA8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_254BAE130();
  *a1 = result;
  return result;
}

unint64_t sub_254BADCD4()
{
  result = qword_27F751C80;
  if (!qword_27F751C80)
  {
    type metadata accessor for ACMTRMConfigProxy_PolicyMode();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F751C80);
  }

  return result;
}

unint64_t sub_254BADD30()
{
  result = qword_27F751C88;
  if (!qword_27F751C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F751C88);
  }

  return result;
}

uint64_t sub_254BADD84(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_254BADDD0@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_254BADE00@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    *a2 = result;
    return result;
  }

  __break(1u);
  return result;
}

void *sub_254BADE50(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

_BYTE **sub_254BADE70(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_254BADE80@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_254BADEB0(char a1)
{
  v1 = ACMTRMConfigProxy_PolicyMode_Set(dword_254BCAB3C[a1]);
  if (v1)
  {
    v2 = v1;
    if (qword_281535C68 != -1)
    {
      swift_once();
    }

    v3 = sub_254BC9924();
    __swift_project_value_buffer(v3, qword_281535EC0);
    oslog = sub_254BC9904();
    v4 = sub_254BC9CC4();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 67109120;
      *(v5 + 4) = v2;
      _os_log_impl(&dword_254BA8000, oslog, v4, "Could not set TRM. (Status: %d)", v5, 8u);
      MEMORY[0x259C26A50](v5, -1, -1);
    }
  }
}

uint64_t sub_254BADFDC()
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = 1;
  Presentation = ACMTRMConfigProxy_PolicyMode_GetPresentation(&v7);
  if (Presentation)
  {
    v1 = Presentation;
    if (qword_281535C68 != -1)
    {
      swift_once();
    }

    v2 = sub_254BC9924();
    __swift_project_value_buffer(v2, qword_281535EC0);
    v3 = sub_254BC9904();
    v4 = sub_254BC9CC4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 67109120;
      *(v5 + 4) = v1;
      _os_log_impl(&dword_254BA8000, v3, v4, "Could not get TRM. (Status: %d)", v5, 8u);
      MEMORY[0x259C26A50](v5, -1, -1);
    }
  }

  if (v7 >= 6uLL)
  {
    return 3;
  }

  else
  {
    return (0x20403010003uLL >> (8 * v7));
  }
}

void *sub_254BAE130()
{
  v15 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v0 = ACMTRMConfigProxy_PolicyModePresentationFlags_Get(&v14);
  if (v0)
  {
    v1 = v0;
    if (qword_281535C68 != -1)
    {
      swift_once();
    }

    v2 = sub_254BC9924();
    __swift_project_value_buffer(v2, qword_281535EC0);
    v3 = sub_254BC9904();
    v4 = sub_254BC9CC4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 67109120;
      *(v5 + 4) = v1;
      _os_log_impl(&dword_254BA8000, v3, v4, "Could not get TRM config flags. (Status: %d)", v5, 8u);
      MEMORY[0x259C26A50](v5, -1, -1);
    }
  }

  if (qword_281535C68 != -1)
  {
    swift_once();
  }

  v6 = sub_254BC9924();
  __swift_project_value_buffer(v6, qword_281535EC0);
  sub_254BAD6B8();
  v7 = sub_254BC9904();
  v8 = sub_254BC9CD4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 68157952;
    *(v9 + 4) = 8;
    *(v9 + 8) = 1026;
    swift_beginAccess();
    *(v9 + 10) = v14;
    _os_log_impl(&dword_254BA8000, v7, v8, "Policy mode presentation flags: 0x%{public}.*X.", v9, 0xEu);
    MEMORY[0x259C26A50](v9, -1, -1);
  }

  swift_beginAccess();
  if ((v14 & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v11 = &unk_28670B1F0;
  if ((v14 & 0x10) != 0)
  {
    v12 = &unk_28670B1A0;
  }

  else
  {
    v11 = &unk_28670B218;
    v12 = &unk_28670B1C8;
  }

  if ((v14 & 8) != 0)
  {
    v11 = v12;
  }

  v13 = &unk_28670B150;
  if ((v14 & 0x10) == 0)
  {
    v13 = &unk_28670B178;
  }

  if ((v14 & 0x20) != 0)
  {
    return v13;
  }

  else
  {
    return v11;
  }
}

uint64_t ACMTRMConfigProxy_PolicyModePresentationFlags_Get(uint64_t a1)
{
  if (!a1)
  {
    return 4294967293;
  }

  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v6 = -5;
  v1 = ACMKernelControl(18);
  if (!v1)
  {
    v1 = *(v4 + 6);
  }

  _Block_object_dispose(&v3, 8);
  return v1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t ACMTRMConfigProxy_PolicyMode_GetPresentation(_DWORD *a1)
{
  if (!a1)
  {
    return 4294967293;
  }

  v4 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = -5;
  v11 = 17;
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __ACMTRMEnv_Get_block_invoke;
  v8 = &unk_2797AD670;
  v9 = &v12;
  v10 = &v4;
  v2 = ACMKernelControl(18);
  if (v2)
  {
    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v2 = *(v13 + 6);
    _Block_object_dispose(&v12, 8);
    if (!v2)
    {
      *a1 = v4;
    }
  }

  return v2;
}

uint64_t sub_254BAE664()
{
  swift_getKeyPath();
  sub_254BB2320(&qword_281535D88, type metadata accessor for InputAccessoriesSettings, &protocol conformance descriptor for InputAccessoriesSettings);
  sub_254BC97E4();

  return *(v0 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__hostTRM);
}

void sub_254BAE70C(char a1)
{
  swift_getKeyPath();
  sub_254BB2320(&qword_281535D88, type metadata accessor for InputAccessoriesSettings, &protocol conformance descriptor for InputAccessoriesSettings);
  sub_254BC97E4();

  if (*(v1 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__hostTRM) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_254BC97D4();

    sub_254BADEB0(a1);
    sub_254BB1A80();
  }
}

uint64_t sub_254BAE868()
{
  swift_getKeyPath();
  sub_254BB2320(&qword_281535D88, type metadata accessor for InputAccessoriesSettings, &protocol conformance descriptor for InputAccessoriesSettings);
  sub_254BC97E4();

  v1 = *(v0 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__trmDescription);
  sub_254BAD1C4(v1, *(v0 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__trmDescription + 8), *(v0 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__trmDescription + 16), *(v0 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__trmDescription + 24));
  return v1;
}

uint64_t sub_254BAE950()
{
  swift_getKeyPath();
  sub_254BB2320(&qword_281535D88, type metadata accessor for InputAccessoriesSettings, &protocol conformance descriptor for InputAccessoriesSettings);
  sub_254BC97E4();

  swift_beginAccess();
}

uint64_t sub_254BAEA38(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_254BB2320(&qword_27F751C08, type metadata accessor for InputAccessoriesSettings.Accessory, &unk_254BCAD00);
  sub_254BC97E4();

  v4 = *(v2 + *a2);

  return v4;
}

uint64_t InputAccessoriesSettings.icon.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings_icon;
  v4 = sub_254BC9B74();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InputAccessoriesSettings.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings_title);

  return v1;
}

uint64_t InputAccessoriesSettings.status.getter()
{
  swift_getKeyPath();
  sub_254BB2320(&qword_281535D88, type metadata accessor for InputAccessoriesSettings, &protocol conformance descriptor for InputAccessoriesSettings);
  sub_254BC97E4();

  v1 = *(v0 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__status);

  return v1;
}

uint64_t sub_254BAEC70@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_254BB2320(&qword_281535D88, type metadata accessor for InputAccessoriesSettings, &protocol conformance descriptor for InputAccessoriesSettings);
  sub_254BC97E4();

  v4 = *(v3 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__status + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__status);
  a2[1] = v4;
}

uint64_t sub_254BAED28(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_254BAED88(v1, v2);
}

uint64_t sub_254BAED88(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__status);
  v6 = *(v2 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__status) == a1 && *(v2 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__status + 8) == a2;
  if (v6 || (sub_254BC9D84() & 1) != 0)
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_254BB2320(&qword_281535D88, type metadata accessor for InputAccessoriesSettings, &protocol conformance descriptor for InputAccessoriesSettings);
    sub_254BC97D4();
  }
}

uint64_t InputAccessoriesSettings.disabledReason.getter()
{
  swift_getKeyPath();
  sub_254BB2320(&qword_281535D88, type metadata accessor for InputAccessoriesSettings, &protocol conformance descriptor for InputAccessoriesSettings);
  sub_254BC97E4();

  v1 = *(v0 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__disabledReason);

  return v1;
}

uint64_t sub_254BAEFB0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_254BB2320(&qword_281535D88, type metadata accessor for InputAccessoriesSettings, &protocol conformance descriptor for InputAccessoriesSettings);
  sub_254BC97E4();

  v4 = *(v3 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__disabledReason + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__disabledReason);
  a2[1] = v4;
}

uint64_t sub_254BAF068(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_254BAF0A8(v1, v2);
}

uint64_t sub_254BAF0A8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__disabledReason);
  v6 = *(v2 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__disabledReason + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (sub_254BC9D84() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_254BB2320(&qword_281535D88, type metadata accessor for InputAccessoriesSettings, &protocol conformance descriptor for InputAccessoriesSettings);
    sub_254BC97D4();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

void *InputAccessoriesSettings.content.getter@<X0>(void *a1@<X8>)
{
  if (qword_281535DA8 != -1)
  {
    swift_once();
  }

  result = sub_254BC9AB4();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_254BAF2E0(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_254BB2320(&qword_281535D88, type metadata accessor for InputAccessoriesSettings, &protocol conformance descriptor for InputAccessoriesSettings);
  sub_254BC97E4();

  return *(v2 + *a2);
}

uint64_t sub_254BAF380@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_254BB2320(&qword_281535D88, type metadata accessor for InputAccessoriesSettings, &protocol conformance descriptor for InputAccessoriesSettings);
  sub_254BC97E4();

  *a2 = *(v3 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__available);
  return result;
}

uint64_t sub_254BAF4CC()
{
  type metadata accessor for InputAccessoriesSettings(0);
  swift_allocObject();
  result = sub_254BB0F50();
  qword_281535DB0 = result;
  return result;
}

uint64_t static InputAccessoriesSettings.shared.getter()
{
  if (qword_281535DA8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_254BAF568@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_254BB2320(&qword_281535D88, type metadata accessor for InputAccessoriesSettings, &protocol conformance descriptor for InputAccessoriesSettings);
  sub_254BC97E4();

  *a2 = *(v3 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__hostTRM);
  return result;
}

uint64_t sub_254BAF640(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__hostTRM) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_254BB2320(&qword_281535D88, type metadata accessor for InputAccessoriesSettings, &protocol conformance descriptor for InputAccessoriesSettings);
    sub_254BC97D4();
  }

  return result;
}

IONotificationPortRef sub_254BAF750()
{
  *(v0 + 48) = 0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v1 = *MEMORY[0x277CD2898];
  v2 = IOServiceMatching("AppleCredentialManager");
  *(v0 + 32) = IOServiceGetMatchingService(v1, v2);
  result = IONotificationPortCreate(v1);
  if (result)
  {
    *(v0 + 40) = result;
    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_254BAF7B4()
{
  IONotificationPortDestroy(*(v0 + 40));
  sub_254BB66C0(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 52, 7);
}

uint64_t sub_254BAF7F4(uint64_t a1)
{
  result = swift_beginAccess();
  if (!*(a1 + 48))
  {
    v3 = *(a1 + 32);
    v4 = sub_254BC9BB4();
    CFProperty = IORegistryEntryCreateCFProperty(v3, v4, *MEMORY[0x277CBECE8], 0);

    if (CFProperty && swift_dynamicCast())
    {
      v6 = v15;
    }

    else
    {
      v6 = 0;
    }

    if (qword_281535C68 != -1)
    {
      swift_once();
    }

    v7 = sub_254BC9924();
    __swift_project_value_buffer(v7, qword_281535EC0);
    v8 = sub_254BC9904();
    v9 = sub_254BC9CB4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 67109120;
      *(v10 + 4) = v6;
      _os_log_impl(&dword_254BA8000, v8, v9, "HIDRM_PolicyEnabled value: %{BOOL}d", v10, 8u);
      MEMORY[0x259C26A50](v10, -1, -1);
    }

    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = *(a1 + 24);

      v11(v6);
      sub_254BB66C0(v11, v12);
    }

    v13 = *(a1 + 40);
    sub_254BB66D0();
    v14 = sub_254BC9CE4();
    IONotificationPortSetDispatchQueue(v13, v14);

    swift_beginAccess();
    IOServiceAddInterestNotification(v13, v3, "IOGeneralInterest", sub_254BAFA28, a1, (a1 + 48));
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_254BAFA30(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_254BAFA74(uint64_t a1, uint64_t a2)
{
  v5 = sub_254BC9B24();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = sub_254BC9B44();
  v9 = *(v15[0] - 8);
  MEMORY[0x28223BE20](v15[0]);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254BB66D0();
  v12 = sub_254BC9CE4();
  aBlock[4] = a1;
  v17 = v2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_254BAFA30;
  aBlock[3] = a2;
  v13 = _Block_copy(aBlock);

  sub_254BC9B34();
  v15[1] = MEMORY[0x277D84F90];
  sub_254BB2320(&qword_27F751CE0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F751CE8, &qword_254BCAED8);
  sub_254BB673C();
  sub_254BC9D14();
  MEMORY[0x259C26390](0, v11, v8, v13);
  _Block_release(v13);

  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v15[0]);
}

uint64_t sub_254BAFD00(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 48))
  {
    IONotificationPortSetDispatchQueue(*(a1 + 40), 0);
    return IOObjectRelease(*(a1 + 48));
  }

  return result;
}

uint64_t sub_254BAFD58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a3;
  v8 = a1;
  v9 = (v4 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__trmDescription);
  v11 = *(v4 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__trmDescription);
  v10 = *(v4 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__trmDescription + 8);
  v13 = *(v4 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__trmDescription + 16);
  v12 = *(v4 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__trmDescription + 24);
  if (!v12)
  {
    if (!a4)
    {
      v19 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_254BB2320(&qword_281535D88, type metadata accessor for InputAccessoriesSettings, &protocol conformance descriptor for InputAccessoriesSettings);
    sub_254BC97D4();
    sub_254BAD218(v8, a2, v6, a4);
  }

  if (!a4)
  {
    goto LABEL_6;
  }

  v14 = a2;
  v16 = *(v4 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__trmDescription + 8);
  sub_254BAD208(*(v4 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__trmDescription), v10, v13 & 1);

  v17 = sub_254BC9A04();
  v18 = v16;
  v6 = a3;
  a2 = v14;
  v8 = a1;
  sub_254BAD218(v11, v18, v13, v12);
  if ((v17 & 1) == 0)
  {
    goto LABEL_6;
  }

  v11 = *v9;
  v10 = v9[1];
  v13 = v9[2];
  v19 = v9[3];
LABEL_8:
  *v9 = v8;
  v9[1] = a2;
  v9[2] = v6;
  v9[3] = a4;

  return sub_254BAD218(v11, v10, v13, v19);
}

uint64_t sub_254BAFF70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a1 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__trmDescription);
  v6 = *(a1 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__trmDescription);
  v7 = *(a1 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__trmDescription + 8);
  v8 = *(a1 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__trmDescription + 16);
  v9 = *(a1 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__trmDescription + 24);
  *v5 = a2;
  v5[1] = a3;
  v5[2] = a4;
  v5[3] = a5;
  sub_254BAD1C4(a2, a3, a4, a5);
  return sub_254BAD218(v6, v7, v8, v9);
}

uint64_t sub_254BB0010(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) == (result & 1))
  {
    *(v4 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_254BB2320(&qword_281535D88, type metadata accessor for InputAccessoriesSettings, &protocol conformance descriptor for InputAccessoriesSettings);
    sub_254BC97D4();
  }

  return result;
}

uint64_t sub_254BB013C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = (v5 + *a3);
  v9 = *v8 == a1 && v8[1] == a2;
  if (v9 || (sub_254BC9D84() & 1) != 0)
  {
    *v8 = a1;
    v8[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_254BB2320(&qword_27F751C08, type metadata accessor for InputAccessoriesSettings.Accessory, &unk_254BCAD00);
    sub_254BC97D4();
  }
}

uint64_t sub_254BB02CC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_254BC97C4();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_254BC9BA4();
  MEMORY[0x28223BE20](v5 - 8);
  v29 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_254BC9874();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v26 - v12;
  v14 = (v1 + OBJC_IVAR____TtCC24InputAccessoriesSettings24InputAccessoriesSettings9Accessory__name);
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  v15 = (v1 + OBJC_IVAR____TtCC24InputAccessoriesSettings24InputAccessoriesSettings9Accessory__status);
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  sub_254BC9814();
  v16 = OBJC_IVAR____TtCC24InputAccessoriesSettings24InputAccessoriesSettings9Accessory_device;
  v17 = sub_254BC98B4();
  v27 = *(v17 - 8);
  v28 = v17;
  (*(v27 + 16))(v2 + v16, a1);
  v18 = sub_254BC9844();
  sub_254BB013C(v18, v19, &OBJC_IVAR____TtCC24InputAccessoriesSettings24InputAccessoriesSettings9Accessory__name, &unk_254BCADE8, sub_254BB5A10);
  sub_254BC9884();
  (*(v8 + 104))(v11, *MEMORY[0x277D0EF18], v7);
  sub_254BB2320(&qword_27F751D28, MEMORY[0x277D0EF20], MEMORY[0x277D0EF28]);
  sub_254BC9BF4();
  sub_254BC9BF4();
  if (v32 == v30 && v33 == v31)
  {
    v20 = *(v8 + 8);
    v20(v11, v7);
    v20(v13, v7);
  }

  else
  {
    v26[3] = sub_254BC9D84();
    v21 = *(v8 + 8);
    v21(v11, v7);
    v21(v13, v7);
  }

  sub_254BC9B94();
  if (qword_281535C60 != -1)
  {
    swift_once();
  }

  v22 = qword_281535EB8;
  sub_254BC97B4();
  v23 = sub_254BC9BC4();
  sub_254BB013C(v23, v24, &OBJC_IVAR____TtCC24InputAccessoriesSettings24InputAccessoriesSettings9Accessory__status, &unk_254BCAE10, sub_254BB5A30);
  (*(v27 + 8))(a1, v28);
  return v2;
}

uint64_t sub_254BB0754()
{
  v0 = sub_254BC97C4();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_254BC9BA4();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_254BC9874();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, *MEMORY[0x277D0EF18], v2);
  sub_254BB2320(&qword_27F751D28, MEMORY[0x277D0EF20], MEMORY[0x277D0EF28]);
  sub_254BC9BF4();
  sub_254BC9BF4();
  if (v10[4] == v10[2] && v10[5] == v10[3])
  {
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    sub_254BC9D84();
    (*(v3 + 8))(v5, v2);
  }

  sub_254BC9B94();
  if (qword_281535C60 != -1)
  {
    swift_once();
  }

  v6 = qword_281535EB8;
  sub_254BC97B4();
  v7 = sub_254BC9BC4();
  return sub_254BB013C(v7, v8, &OBJC_IVAR____TtCC24InputAccessoriesSettings24InputAccessoriesSettings9Accessory__status, &unk_254BCAE10, sub_254BB5A30);
}

uint64_t sub_254BB0A80()
{
  v1 = OBJC_IVAR____TtCC24InputAccessoriesSettings24InputAccessoriesSettings9Accessory_device;
  v2 = sub_254BC98B4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtCC24InputAccessoriesSettings24InputAccessoriesSettings9Accessory___observationRegistrar;
  v4 = sub_254BC9824();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t sub_254BB0B84()
{
  sub_254BC9D94();
  sub_254BC98B4();
  sub_254BB2320(&qword_27F751CD0, MEMORY[0x277D0EF30], MEMORY[0x277D0EF38]);
  sub_254BC9B84();
  return sub_254BC9DC4();
}

uint64_t sub_254BB0C24(uint64_t a1)
{
  sub_254BC98B4();
  sub_254BB2320(&qword_27F751CD0, MEMORY[0x277D0EF30], MEMORY[0x277D0EF38]);
  return sub_254BC9B84();
}

uint64_t sub_254BB0CAC(uint64_t a1)
{
  sub_254BC9D94();
  sub_254BC98B4();
  sub_254BB2320(&qword_27F751CD0, MEMORY[0x277D0EF30], MEMORY[0x277D0EF38]);
  sub_254BC9B84();
  return sub_254BC9DC4();
}

uint64_t sub_254BB0D48@<X0>(uint64_t *a1@<X8>)
{
  result = sub_254BC9D34();
  *a1 = result;
  return result;
}

uint64_t sub_254BB0D90(unint64_t a1)
{
  v3 = OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__accessories;
  swift_beginAccess();

  v5 = sub_254BB637C(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_254BB2320(&qword_281535D88, type metadata accessor for InputAccessoriesSettings, &protocol conformance descriptor for InputAccessoriesSettings);
    sub_254BC97D4();
  }
}

uint64_t sub_254BB0EE0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__accessories;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t sub_254BB0F50()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F751CF8, &qword_254BCAEE0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v29 - v3;
  v5 = sub_254BC97C4();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_254BC9BA4();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_254BC9B54();
  MEMORY[0x28223BE20](v7);
  (*(v9 + 104))(v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D4D808]);
  sub_254BC9B64();
  v10 = (v0 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings_title);
  sub_254BC9B94();
  if (qword_281535C60 != -1)
  {
    swift_once();
  }

  v11 = qword_281535EB8;
  sub_254BC97B4();
  *v10 = sub_254BC9BC4();
  v10[1] = v12;
  v13 = (v0 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__status);
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v14 = (v0 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__disabledReason);
  *v14 = 0;
  v14[1] = 0;
  *(v0 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__available) = 0;
  *(v0 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__managed) = 0;
  *(v0 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__hostTRM) = 3;
  v15 = OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings_trmObserver;
  type metadata accessor for InputAccessoriesSettings.TRMObserver();
  v16 = swift_allocObject();
  sub_254BAF750();
  *(v1 + v15) = v16;
  *(v1 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__trmEnabled) = 0;
  v17 = (v1 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__trmDescription);
  *v17 = 0u;
  v17[1] = 0u;
  *(v1 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__hidrmEnabled) = 0;
  v18 = OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings_hidRMClient;
  sub_254BC98F4();
  *(v1 + v18) = sub_254BC98E4();
  *(v1 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__accessories) = MEMORY[0x277D84F90];
  sub_254BC9814();
  sub_254BB14AC();
  swift_getKeyPath();
  v29[0] = v1;
  sub_254BB2320(&qword_281535D88, type metadata accessor for InputAccessoriesSettings, &protocol conformance descriptor for InputAccessoriesSettings);
  sub_254BC97E4();

  if (*(v1 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__available) == 1)
  {
    sub_254BB1A80();
    v19 = *(v1 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings_trmObserver);
    v20 = swift_allocObject();
    swift_weakInit();
    v21 = *(v19 + 16);
    v22 = *(v19 + 24);
    *(v19 + 16) = sub_254BB67B8;
    *(v19 + 24) = v20;

    sub_254BB66C0(v21, v22);

    sub_254BAFA74(sub_254BB80D4, &block_descriptor_104);

    v23 = sub_254BC9C74();
    (*(*(v23 - 8) + 56))(v4, 1, 1, v23);
    v24 = swift_allocObject();
    swift_weakInit();
    sub_254BC9C54();

    v25 = sub_254BC9C44();
    v26 = swift_allocObject();
    v27 = MEMORY[0x277D85700];
    v26[2] = v25;
    v26[3] = v27;
    v26[4] = v24;

    sub_254BB4D60(0, 0, v4, &unk_254BCAEF0, v26);
  }

  return v1;
}

void sub_254BB14AC()
{
  v1 = v0;
  v21 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v2 = ACMTRMGetStatusFlagsTm(&v20, 15);
  if (v2)
  {
    v3 = v2;
    if (qword_281535C68 != -1)
    {
      swift_once();
    }

    v4 = sub_254BC9924();
    __swift_project_value_buffer(v4, qword_281535EC0);
    v5 = sub_254BC9904();
    v6 = sub_254BC9CC4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67109120;
      *(v7 + 4) = v3;
      _os_log_impl(&dword_254BA8000, v5, v6, "Could not get TRM config flags. (Status: %d)", v7, 8u);
      MEMORY[0x259C26A50](v7, -1, -1);
    }
  }

  if (qword_281535C68 != -1)
  {
    swift_once();
  }

  v8 = sub_254BC9924();
  __swift_project_value_buffer(v8, qword_281535EC0);
  sub_254BAD6B8();
  v9 = sub_254BC9904();
  v10 = sub_254BC9CD4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 68157952;
    *(v11 + 4) = 8;
    *(v11 + 8) = 1026;
    swift_beginAccess();
    *(v11 + 10) = v20;
    _os_log_impl(&dword_254BA8000, v9, v10, "Policy mode presentation flags: 0x%{public}.*X.", v11, 0xEu);
    MEMORY[0x259C26A50](v11, -1, -1);
  }

  swift_beginAccess();
  v12 = v20;
  if (v20)
  {
    if (*(v1 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__available))
    {
      *(v1 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__available) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_254BB2320(&qword_281535D88, type metadata accessor for InputAccessoriesSettings, &protocol conformance descriptor for InputAccessoriesSettings);
      sub_254BC97D4();
    }

    v15 = OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__managed;
    if (((v12 >> 2) & 1 ^ *(v1 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__managed)))
    {
      v16 = swift_getKeyPath();
      MEMORY[0x28223BE20](v16);
      sub_254BB2320(&qword_281535D88, type metadata accessor for InputAccessoriesSettings, &protocol conformance descriptor for InputAccessoriesSettings);
      sub_254BC97D4();
    }

    else
    {
      *(v1 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__managed) = (v12 & 4) >> 2;
    }

    swift_getKeyPath();
    sub_254BB2320(&qword_281535D88, type metadata accessor for InputAccessoriesSettings, &protocol conformance descriptor for InputAccessoriesSettings);
    sub_254BC97E4();

    if (*(v1 + v15) == 1)
    {
      v17 = sub_254BC9904();
      v18 = sub_254BC9CD4();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_254BA8000, v17, v18, "UI managed.", v19, 2u);
        MEMORY[0x259C26A50](v19, -1, -1);
      }
    }
  }

  else if (*(v1 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__available))
  {
    v13 = swift_getKeyPath();
    MEMORY[0x28223BE20](v13);
    sub_254BB2320(&qword_281535D88, type metadata accessor for InputAccessoriesSettings, &protocol conformance descriptor for InputAccessoriesSettings);
    sub_254BC97D4();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__available) = 0;
  }
}

void sub_254BB1A80()
{
  v1 = sub_254BADFDC();
  v2 = OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__hostTRM;
  if (*(v0 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__hostTRM) != v1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_254BB2320(&qword_281535D88, type metadata accessor for InputAccessoriesSettings, &protocol conformance descriptor for InputAccessoriesSettings);
    sub_254BC97D4();
  }

  swift_getKeyPath();
  sub_254BB2320(&qword_281535D88, type metadata accessor for InputAccessoriesSettings, &protocol conformance descriptor for InputAccessoriesSettings);
  sub_254BC97E4();

  v4 = sub_254BAD9DC(*(v0 + v2));
  sub_254BAED88(v4, v5);
  sub_254BB2380();
}

uint64_t sub_254BB1C1C(char a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a1)
    {
      v9[3] = &type metadata for InputAccessoriesSettingsFeatureFlags;
      v9[4] = sub_254BAD124();
      v5 = sub_254BC9834();
      __swift_destroy_boxed_opaque_existential_1(v9);
      v6 = (v4 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__hidrmEnabled);
      if ((v5 & 1) == *(v4 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__hidrmEnabled))
      {
LABEL_4:
        *v6 = v5 & 1;

        goto LABEL_7;
      }
    }

    else
    {
      v5 = 0;
      v6 = (Strong + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__hidrmEnabled);
      if ((*(Strong + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__hidrmEnabled) & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v9[0] = v4;
    sub_254BB2320(&qword_281535D88, type metadata accessor for InputAccessoriesSettings, &protocol conformance descriptor for InputAccessoriesSettings);
    sub_254BC97D4();
  }

LABEL_7:
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_254BB14AC();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_254BB1A80();
  }

  return result;
}

uint64_t InputAccessoriesSettings.deinit()
{
  v1 = v0;

  sub_254BAFA74(sub_254BB671C, &block_descriptor);

  v2 = OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings_icon;
  v3 = sub_254BC9B74();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  sub_254BAD218(*(v1 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__trmDescription), *(v1 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__trmDescription + 8), *(v1 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__trmDescription + 16), *(v1 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__trmDescription + 24));

  v4 = OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings___observationRegistrar;
  v5 = sub_254BC9824();
  (*(*(v5 - 8) + 8))(v1 + v4, v5);
  return v1;
}

uint64_t InputAccessoriesSettings.__deallocating_deinit()
{
  InputAccessoriesSettings.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_254BB1FE4(uint64_t a1)
{
  result = sub_254BC9B74();
  if (v2 <= 0x3F)
  {
    result = sub_254BC9824();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_254BB2168(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_254BB21A0(uint64_t a1)
{
  result = sub_254BC98B4();
  if (v2 <= 0x3F)
  {
    result = sub_254BC9824();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_254BB2278()
{
  result = qword_27F751CC0;
  if (!qword_27F751CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F751CC0);
  }

  return result;
}

uint64_t sub_254BB2320(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_254BB2380()
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = v0 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__trmDescription;
  if (*(v0 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__trmDescription + 24))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v28 = v0;
    sub_254BB2320(&qword_281535D88, type metadata accessor for InputAccessoriesSettings, &protocol conformance descriptor for InputAccessoriesSettings);
    sub_254BC97D4();
  }

  else
  {
    *v1 = 0u;
    *(v1 + 16) = 0u;
  }

  swift_getKeyPath();
  v28 = v0;
  sub_254BB2320(&qword_281535D88, type metadata accessor for InputAccessoriesSettings, &protocol conformance descriptor for InputAccessoriesSettings);
  sub_254BC97E4();

  if ((*(v0 + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__managed) & 1) == 0)
  {
    if (qword_281535C68 != -1)
    {
      swift_once();
    }

    v14 = sub_254BC9924();
    __swift_project_value_buffer(v14, qword_281535EC0);
    v6 = sub_254BC9904();
    v15 = sub_254BC9CD4();
    if (!os_log_type_enabled(v6, v15))
    {
      goto LABEL_16;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "Selector enabled. Skipping TRM status checks..";
    goto LABEL_14;
  }

  v27 = 0;
  v3 = ACMTRMGetStatusFlagsTm(&v27, 7);
  if (v3)
  {
    v4 = v3;
    if (qword_281535C68 != -1)
    {
      swift_once();
    }

    v5 = sub_254BC9924();
    __swift_project_value_buffer(v5, qword_281535EC0);
    v6 = sub_254BC9904();
    v7 = sub_254BC9CC4();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_16;
    }

    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = v4;
    v9 = "Could not get TRM status. (Status: %d)";
    v10 = v7;
    v11 = v6;
    v12 = v8;
    v13 = 8;
LABEL_15:
    _os_log_impl(&dword_254BA8000, v11, v10, v9, v12, v13);
    MEMORY[0x259C26A50](v8, -1, -1);
LABEL_16:

    return;
  }

  if (qword_281535C68 != -1)
  {
    swift_once();
  }

  v16 = sub_254BC9924();
  __swift_project_value_buffer(v16, qword_281535EC0);
  sub_254BAD6B8();
  v17 = sub_254BC9904();
  v18 = sub_254BC9CD4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 68157952;
    *(v19 + 4) = 8;
    *(v19 + 8) = 1026;
    swift_beginAccess();
    *(v19 + 10) = v27;
    _os_log_impl(&dword_254BA8000, v17, v18, "TRM status flags: 0x%{public}.*X.", v19, 0xEu);
    MEMORY[0x259C26A50](v19, -1, -1);
  }

  swift_beginAccess();
  if ((v27 & 2) == 0 && (v27 & 4) == 0 && (v27 & 8) == 0 && (v27 & 0x10) == 0 && (v27 & 0x20) == 0 && (v27 & 0x40) == 0 && (v27 & 0x80) == 0 && (v27 & 0x100) == 0 && (v27 & 0x200) == 0 && (v27 & 0x400) == 0 && (v27 & 0x800) == 0 && (v27 & 0x1000) == 0 && (v27 & 0x2000) == 0 && (v27 & 0x4000) == 0 && (v27 & 0x8000) == 0 && (v27 & 0x10000) == 0 && (v27 & 0x20000) == 0)
  {
    if ((v27 & 0x40000) != 0)
    {
      if (*(v1 + 24))
      {
        v25 = swift_getKeyPath();
        MEMORY[0x28223BE20](v25);
        sub_254BC97D4();
      }

      else
      {
        *v1 = 0u;
        *(v1 + 16) = 0u;
      }

      v6 = sub_254BC9904();
      v15 = sub_254BC9CD4();
      if (!os_log_type_enabled(v6, v15))
      {
        goto LABEL_16;
      }

      v8 = swift_slowAlloc();
      *v8 = 0;
      v9 = "TRM is disabled due to internal build.";
    }

    else
    {
      if ((v27 & 0x80000) == 0)
      {
        if ((v27 & 0x100000) == 0 && (v27 & 0x200000) == 0)
        {
          return;
        }

        goto LABEL_43;
      }

      if (*(v1 + 24))
      {
        v26 = swift_getKeyPath();
        MEMORY[0x28223BE20](v26);
        sub_254BC97D4();
      }

      else
      {
        *v1 = 0u;
        *(v1 + 16) = 0u;
      }

      v6 = sub_254BC9904();
      v15 = sub_254BC9CD4();
      if (!os_log_type_enabled(v6, v15))
      {
        goto LABEL_16;
      }

      v8 = swift_slowAlloc();
      *v8 = 0;
      v9 = "TRM is disabled due to dev-fused device.";
    }

LABEL_14:
    v10 = v15;
    v11 = v6;
    v12 = v8;
    v13 = 2;
    goto LABEL_15;
  }

LABEL_43:
  sub_254BC9994();
  if (qword_281535C60 != -1)
  {
    swift_once();
  }

  v20 = qword_281535EB8;
  v21 = sub_254BC9A24();
  sub_254BAFD58(v21, v23, v22 & 1, v24);
}

uint64_t sub_254BB2C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[26] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F751CF8, &qword_254BCAEE0);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v5 = sub_254BC9874();
  v4[33] = v5;
  v4[34] = *(v5 - 8);
  v4[35] = swift_task_alloc();
  v6 = sub_254BC98B4();
  v4[36] = v6;
  v7 = *(v6 - 8);
  v4[37] = v7;
  v4[38] = *(v7 + 64);
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  v4[49] = swift_task_alloc();
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();
  v8 = sub_254BC98C4();
  v4[52] = v8;
  v4[53] = *(v8 - 8);
  v4[54] = swift_task_alloc();
  v4[55] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F751D00, &qword_254BCAF10);
  v4[56] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F751D08, &qword_254BCAF18);
  v4[57] = v9;
  v4[58] = *(v9 - 8);
  v4[59] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F751D10, &qword_254BCAF20);
  v4[60] = v10;
  v4[61] = *(v10 - 8);
  v4[62] = swift_task_alloc();
  v4[63] = swift_task_alloc();
  v4[64] = sub_254BC9C54();
  v4[65] = sub_254BC9C44();
  v12 = sub_254BC9C34();
  v4[66] = v12;
  v4[67] = v11;

  return MEMORY[0x2822009F8](sub_254BB3048, v12, v11);
}

uint64_t sub_254BB3048()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(v0 + 544) = *(Strong + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings_hidRMClient);

    sub_254BC98F4();
    sub_254BB2320(&qword_27F751D18, MEMORY[0x277D0EF58], MEMORY[0x277D0EF60]);
    v3 = sub_254BC9C34();

    return MEMORY[0x2822009F8](sub_254BB338C, v3, v2);
  }

  else
  {

    if (qword_281535C68 != -1)
    {
      swift_once();
    }

    v4 = sub_254BC9924();
    __swift_project_value_buffer(v4, qword_281535EC0);
    v5 = sub_254BC9904();
    v6 = sub_254BC9CD4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_254BA8000, v5, v6, "Could not subscribe to HID RM client notifications.", v7, 2u);
      MEMORY[0x259C26A50](v7, -1, -1);
    }

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_254BB338C()
{
  sub_254BC98D4();

  v1 = *(v0 + 536);
  v2 = *(v0 + 528);

  return MEMORY[0x2822009F8](sub_254BB3400, v2, v1);
}

uint64_t sub_254BB3400()
{
  (*(*(v0 + 488) + 32))(*(v0 + 504), *(v0 + 496), *(v0 + 480));
  sub_254BC9C84();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  *(v0 + 568) = *MEMORY[0x277D0EF40];
  *(v0 + 572) = *MEMORY[0x277D0EF48];
  *(v0 + 576) = *MEMORY[0x277D0EF50];
  v1 = sub_254BC9C44();
  *(v0 + 552) = v1;
  v2 = swift_task_alloc();
  *(v0 + 560) = v2;
  *v2 = v0;
  v2[1] = sub_254BB3560;
  v3 = *(v0 + 448);
  v4 = *(v0 + 456);
  v5 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v3, v1, v5, v4);
}

uint64_t sub_254BB3560()
{
  v1 = *v0;

  v2 = *(v1 + 536);
  v3 = *(v1 + 528);

  return MEMORY[0x2822009F8](sub_254BB36A4, v3, v2);
}

uint64_t sub_254BB36A4()
{
  v237 = v0;
  v1 = *(v0 + 448);
  v2 = *(v0 + 416);
  v3 = *(v0 + 424);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 504);
    v5 = *(v0 + 480);
    v6 = *(v0 + 488);
    v8 = *(v0 + 464);
    v7 = *(v0 + 472);
    v9 = *(v0 + 456);

    (*(v8 + 8))(v7, v9);
    (*(v6 + 8))(v4, v5);
LABEL_5:

    v19 = *(v0 + 8);

    return v19();
  }

  (*(v3 + 32))(*(v0 + 440), v1, v2);
  if (sub_254BC9CA4())
  {
    v10 = *(v0 + 504);
    v11 = *(v0 + 480);
    v12 = *(v0 + 488);
    v14 = *(v0 + 464);
    v13 = *(v0 + 472);
    v15 = *(v0 + 456);
    v16 = *(v0 + 440);
    v17 = *(v0 + 416);
    v18 = *(v0 + 424);

    (*(v18 + 8))(v16, v17);
    (*(v14 + 8))(v13, v15);
    (*(v12 + 8))(v10, v11);
    goto LABEL_5;
  }

  v21 = *(v0 + 568);
  v22 = *(v0 + 432);
  v23 = *(v0 + 416);
  v24 = *(v0 + 424);
  (*(v24 + 16))(v22, *(v0 + 440), v23);
  v25 = (*(v24 + 88))(v22, v23);
  if (v25 == v21)
  {
    v26 = *(v0 + 432);
    v27 = *(v0 + 408);
    v28 = *(v0 + 288);
    v29 = *(v0 + 296);
    (*(*(v0 + 424) + 96))(v26, *(v0 + 416));
    v233 = *(v29 + 32);
    v233(v27, v26, v28);
    if (qword_281535C68 != -1)
    {
      swift_once();
    }

    v30 = *(v0 + 400);
    v31 = *(v0 + 408);
    v33 = *(v0 + 384);
    v32 = *(v0 + 392);
    v34 = *(v0 + 288);
    v35 = *(v0 + 296);
    v36 = sub_254BC9924();
    __swift_project_value_buffer(v36, qword_281535EC0);
    v37 = *(v35 + 16);
    v37(v30, v31, v34);
    v37(v32, v31, v34);
    v230 = v37;
    v37(v33, v31, v34);
    v38 = sub_254BC9904();
    v39 = sub_254BC9CD4();
    v40 = os_log_type_enabled(v38, v39);
    v42 = *(v0 + 392);
    v41 = *(v0 + 400);
    v43 = *(v0 + 384);
    v45 = *(v0 + 288);
    v44 = *(v0 + 296);
    if (v40)
    {
      v212 = *(v0 + 384);
      logc = v38;
      v46 = *(v0 + 272);
      v47 = *(v0 + 280);
      v206 = *(v0 + 264);
      v215 = v39;
      v48 = swift_slowAlloc();
      v221 = swift_slowAlloc();
      v236 = v221;
      *v48 = 136315906;
      *(v48 + 4) = sub_254BB5CD0(0xD000000000000011, 0x8000000254BCC750, &v236);
      *(v48 + 12) = 2048;
      v49 = sub_254BC98A4();
      v50 = *(v44 + 8);
      (v50)(v41, v45);
      *(v48 + 14) = v49;
      *(v48 + 22) = 2080;
      sub_254BC9884();
      v51 = sub_254BC9864();
      v53 = v52;
      (*(v46 + 8))(v47, v206);
      (v50)(v42, v45);
      v54 = sub_254BB5CD0(v51, v53, &v236);

      *(v48 + 24) = v54;
      *(v48 + 32) = 2080;
      v55 = sub_254BC9844();
      v57 = v56;
      (v50)(v212, v45);
      v58 = sub_254BB5CD0(v55, v57, &v236);

      *(v48 + 34) = v58;
      _os_log_impl(&dword_254BA8000, logc, v215, "Device added: <%s: service ID = %llu, state = %s, description: %s>", v48, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x259C26A50](v221, -1, -1);
      MEMORY[0x259C26A50](v48, -1, -1);
    }

    else
    {
      v50 = *(v44 + 8);
      (v50)(*(v0 + 400), *(v0 + 288));

      (v50)(v43, v45);
      (v50)(v42, v45);
    }

    if (swift_weakLoadStrong())
    {
      log = v50;
      v91 = *(v0 + 408);
      v92 = *(v0 + 376);
      v208 = *(v0 + 296);
      v93 = *(v0 + 288);
      v94 = *(v0 + 256);
      v217 = *(v0 + 248);
      v95 = sub_254BC9C74();
      v96 = *(v95 - 8);
      (*(v96 + 56))(v94, 1, 1, v95);
      v97 = swift_allocObject();
      swift_weakInit();
      v230(v92, v91, v93);

      v98 = sub_254BC9C44();
      v99 = (*(v208 + 80) + 40) & ~*(v208 + 80);
      v100 = swift_allocObject();
      v101 = MEMORY[0x277D85700];
      *(v100 + 2) = v98;
      *(v100 + 3) = v101;
      *(v100 + 4) = v97;
      v233(&v100[v99], v92, v93);

      sub_254BB6968(v94, v217);
      LODWORD(v99) = (*(v96 + 48))(v217, 1, v95);

      v102 = *(v0 + 248);
      if (v99 == 1)
      {
        sub_254BB69D8(*(v0 + 248));
      }

      else
      {
        sub_254BC9C64();
        (*(v96 + 8))(v102, v95);
      }

      v140 = *(v100 + 2);
      swift_unknownObjectRetain();

      v141 = log;
      if (v140)
      {
        swift_getObjectType();
        v142 = sub_254BC9C34();
        v144 = v143;
        swift_unknownObjectRelease();
      }

      else
      {
        v142 = 0;
        v144 = 0;
      }

      sub_254BB69D8(*(v0 + 256));
      v166 = swift_allocObject();
      *(v166 + 16) = &unk_254BCAF68;
      *(v166 + 24) = v100;
      if (v144 | v142)
      {
        *(v0 + 80) = 0;
        *(v0 + 88) = 0;
        *(v0 + 96) = v142;
        *(v0 + 104) = v144;
      }

      v167 = *(v0 + 440);
      v169 = *(v0 + 416);
      v168 = *(v0 + 424);
      v170 = *(v0 + 408);
      v171 = *(v0 + 288);
LABEL_57:
      swift_task_create();

      v141(v170, v171);
      (*(v168 + 8))(v167, v169);
      goto LABEL_66;
    }

    v136 = *(v0 + 440);
    v137 = *(v0 + 416);
    v138 = *(v0 + 424);
    v139 = *(v0 + 408);
  }

  else
  {
    if (v25 != *(v0 + 572))
    {
      if (v25 == *(v0 + 576))
      {
        v103 = *(v0 + 432);
        v104 = *(v0 + 336);
        v105 = *(v0 + 288);
        v106 = *(v0 + 296);
        (*(*(v0 + 424) + 96))(v103, *(v0 + 416));
        v235 = *(v106 + 32);
        v235(v104, v103, v105);
        if (qword_281535C68 != -1)
        {
          swift_once();
        }

        v107 = *(v0 + 328);
        v108 = *(v0 + 336);
        v110 = *(v0 + 312);
        v109 = *(v0 + 320);
        v111 = *(v0 + 288);
        v112 = *(v0 + 296);
        v113 = sub_254BC9924();
        __swift_project_value_buffer(v113, qword_281535EC0);
        v114 = *(v112 + 16);
        v114(v107, v108, v111);
        v114(v109, v108, v111);
        v232 = v114;
        v114(v110, v108, v111);
        v115 = sub_254BC9904();
        v116 = sub_254BC9CD4();
        v117 = os_log_type_enabled(v115, v116);
        v119 = *(v0 + 320);
        v118 = *(v0 + 328);
        v120 = *(v0 + 312);
        v122 = *(v0 + 288);
        v121 = *(v0 + 296);
        if (v117)
        {
          v214 = *(v0 + 312);
          loge = v115;
          v123 = *(v0 + 272);
          v124 = *(v0 + 280);
          v209 = *(v0 + 264);
          v218 = v116;
          v125 = swift_slowAlloc();
          v223 = swift_slowAlloc();
          v236 = v223;
          *v125 = 136315906;
          *(v125 + 4) = sub_254BB5CD0(0xD000000000000011, 0x8000000254BCC750, &v236);
          *(v125 + 12) = 2048;
          v126 = sub_254BC98A4();
          v127 = *(v121 + 8);
          (v127)(v118, v122);
          *(v125 + 14) = v126;
          *(v125 + 22) = 2080;
          sub_254BC9884();
          v128 = sub_254BC9864();
          v130 = v129;
          (*(v123 + 8))(v124, v209);
          (v127)(v119, v122);
          v131 = sub_254BB5CD0(v128, v130, &v236);

          *(v125 + 24) = v131;
          *(v125 + 32) = 2080;
          v132 = sub_254BC9844();
          v134 = v133;
          (v127)(v214, v122);
          v135 = sub_254BB5CD0(v132, v134, &v236);

          *(v125 + 34) = v135;
          _os_log_impl(&dword_254BA8000, loge, v218, "Device state changed: <%s: service ID = %llu, state = %s, description: %s>", v125, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x259C26A50](v223, -1, -1);
          MEMORY[0x259C26A50](v125, -1, -1);
        }

        else
        {
          v127 = *(v121 + 8);
          (v127)(*(v0 + 328), *(v0 + 288));

          (v127)(v120, v122);
          (v127)(v119, v122);
        }

        if (swift_weakLoadStrong())
        {
          logb = v127;
          v176 = *(v0 + 376);
          v177 = *(v0 + 336);
          v211 = *(v0 + 296);
          v178 = *(v0 + 288);
          v179 = *(v0 + 224);
          v220 = *(v0 + 216);
          v180 = sub_254BC9C74();
          v181 = *(v180 - 8);
          (*(v181 + 56))(v179, 1, 1, v180);
          v182 = swift_allocObject();
          swift_weakInit();
          v232(v176, v177, v178);

          v183 = sub_254BC9C44();
          v184 = (*(v211 + 80) + 40) & ~*(v211 + 80);
          v185 = swift_allocObject();
          v186 = MEMORY[0x277D85700];
          *(v185 + 2) = v183;
          *(v185 + 3) = v186;
          *(v185 + 4) = v182;
          v235(&v185[v184], v176, v178);

          sub_254BB6968(v179, v220);
          LODWORD(v184) = (*(v181 + 48))(v220, 1, v180);

          v187 = *(v0 + 216);
          if (v184 == 1)
          {
            sub_254BB69D8(*(v0 + 216));
          }

          else
          {
            sub_254BC9C64();
            (*(v181 + 8))(v187, v180);
          }

          v189 = *(v185 + 2);
          swift_unknownObjectRetain();

          v127 = logb;
          if (v189)
          {
            swift_getObjectType();
            v190 = sub_254BC9C34();
            v192 = v191;
            swift_unknownObjectRelease();
          }

          else
          {
            v190 = 0;
            v192 = 0;
          }

          sub_254BB69D8(*(v0 + 224));
          v193 = swift_allocObject();
          *(v193 + 16) = &unk_254BCAF30;
          *(v193 + 24) = v185;
          if (v192 | v190)
          {
            *(v0 + 16) = 0;
            *(v0 + 24) = 0;
            *(v0 + 32) = v190;
            *(v0 + 40) = v192;
          }

          swift_task_create();
        }

        v195 = *(v0 + 432);
        v194 = *(v0 + 440);
        v196 = *(v0 + 416);
        v197 = *(v0 + 424);
        v198 = *(v0 + 264);
        v199 = *(v0 + 272);
        (v127)(*(v0 + 336), *(v0 + 288));
        (*(v197 + 8))(v194, v196);
        v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F751D20, &qword_254BCAF40);
        (*(v199 + 8))(v195 + *(v200 + 48), v198);
      }

      else
      {
        if (qword_281535C68 != -1)
        {
          swift_once();
        }

        v157 = sub_254BC9924();
        __swift_project_value_buffer(v157, qword_281535EC0);
        v158 = sub_254BC9904();
        v159 = sub_254BC9CC4();
        if (os_log_type_enabled(v158, v159))
        {
          v160 = swift_slowAlloc();
          *v160 = 0;
          _os_log_impl(&dword_254BA8000, v158, v159, "Unknown HID RM client notification type. Ignoring..", v160, 2u);
          MEMORY[0x259C26A50](v160, -1, -1);
        }

        v162 = *(v0 + 432);
        v161 = *(v0 + 440);
        v163 = *(v0 + 416);
        v164 = *(v0 + 424);

        v165 = *(v164 + 8);
        v165(v161, v163);
        v165(v162, v163);
      }

      goto LABEL_66;
    }

    v59 = *(v0 + 432);
    v60 = *(v0 + 368);
    v61 = *(v0 + 288);
    v62 = *(v0 + 296);
    (*(*(v0 + 424) + 96))(v59, *(v0 + 416));
    v234 = *(v62 + 32);
    v234(v60, v59, v61);
    if (qword_281535C68 != -1)
    {
      swift_once();
    }

    v63 = *(v0 + 360);
    v64 = *(v0 + 368);
    v66 = *(v0 + 344);
    v65 = *(v0 + 352);
    v67 = *(v0 + 288);
    v68 = *(v0 + 296);
    v69 = sub_254BC9924();
    __swift_project_value_buffer(v69, qword_281535EC0);
    v70 = *(v68 + 16);
    v70(v63, v64, v67);
    v70(v65, v64, v67);
    v231 = v70;
    v70(v66, v64, v67);
    v71 = sub_254BC9904();
    v72 = sub_254BC9CD4();
    v73 = os_log_type_enabled(v71, v72);
    v75 = *(v0 + 352);
    v74 = *(v0 + 360);
    v76 = *(v0 + 344);
    v78 = *(v0 + 288);
    v77 = *(v0 + 296);
    if (v73)
    {
      v213 = *(v0 + 344);
      logd = v71;
      v79 = *(v0 + 272);
      v80 = *(v0 + 280);
      v207 = *(v0 + 264);
      v216 = v72;
      v81 = swift_slowAlloc();
      v222 = swift_slowAlloc();
      v236 = v222;
      *v81 = 136315906;
      *(v81 + 4) = sub_254BB5CD0(0xD000000000000011, 0x8000000254BCC750, &v236);
      *(v81 + 12) = 2048;
      v82 = sub_254BC98A4();
      v50 = *(v77 + 8);
      (v50)(v74, v78);
      *(v81 + 14) = v82;
      *(v81 + 22) = 2080;
      sub_254BC9884();
      v83 = sub_254BC9864();
      v85 = v84;
      (*(v79 + 8))(v80, v207);
      (v50)(v75, v78);
      v86 = sub_254BB5CD0(v83, v85, &v236);

      *(v81 + 24) = v86;
      *(v81 + 32) = 2080;
      v87 = sub_254BC9844();
      v89 = v88;
      (v50)(v213, v78);
      v90 = sub_254BB5CD0(v87, v89, &v236);

      *(v81 + 34) = v90;
      _os_log_impl(&dword_254BA8000, logd, v216, "Device removed: <%s: service ID = %llu, state = %s, description: %s>", v81, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x259C26A50](v222, -1, -1);
      MEMORY[0x259C26A50](v81, -1, -1);
    }

    else
    {
      v50 = *(v77 + 8);
      (v50)(*(v0 + 360), *(v0 + 288));

      (v50)(v76, v78);
      (v50)(v75, v78);
    }

    if (swift_weakLoadStrong())
    {
      loga = v50;
      v145 = *(v0 + 368);
      v146 = *(v0 + 376);
      v210 = *(v0 + 296);
      v147 = *(v0 + 288);
      v148 = *(v0 + 240);
      v219 = *(v0 + 232);
      v149 = sub_254BC9C74();
      v150 = *(v149 - 8);
      (*(v150 + 56))(v148, 1, 1, v149);
      v151 = swift_allocObject();
      swift_weakInit();
      v231(v146, v145, v147);

      v152 = sub_254BC9C44();
      v153 = (*(v210 + 80) + 40) & ~*(v210 + 80);
      v154 = swift_allocObject();
      v155 = MEMORY[0x277D85700];
      *(v154 + 2) = v152;
      *(v154 + 3) = v155;
      *(v154 + 4) = v151;
      v234(&v154[v153], v146, v147);

      sub_254BB6968(v148, v219);
      LODWORD(v153) = (*(v150 + 48))(v219, 1, v149);

      v156 = *(v0 + 232);
      if (v153 == 1)
      {
        sub_254BB69D8(*(v0 + 232));
      }

      else
      {
        sub_254BC9C64();
        (*(v150 + 8))(v156, v149);
      }

      v172 = *(v154 + 2);
      swift_unknownObjectRetain();

      v141 = loga;
      if (v172)
      {
        swift_getObjectType();
        v173 = sub_254BC9C34();
        v175 = v174;
        swift_unknownObjectRelease();
      }

      else
      {
        v173 = 0;
        v175 = 0;
      }

      sub_254BB69D8(*(v0 + 240));
      v188 = swift_allocObject();
      *(v188 + 16) = &unk_254BCAF50;
      *(v188 + 24) = v154;
      if (v175 | v173)
      {
        *(v0 + 48) = 0;
        *(v0 + 56) = 0;
        *(v0 + 64) = v173;
        *(v0 + 72) = v175;
      }

      v167 = *(v0 + 440);
      v169 = *(v0 + 416);
      v168 = *(v0 + 424);
      v170 = *(v0 + 368);
      v171 = *(v0 + 288);
      goto LABEL_57;
    }

    v136 = *(v0 + 440);
    v137 = *(v0 + 416);
    v138 = *(v0 + 424);
    v139 = *(v0 + 368);
  }

  (v50)(v139, *(v0 + 288));
  (*(v138 + 8))(v136, v137);
LABEL_66:
  v201 = sub_254BC9C44();
  *(v0 + 552) = v201;
  v202 = swift_task_alloc();
  *(v0 + 560) = v202;
  *v202 = v0;
  v202[1] = sub_254BB3560;
  v203 = *(v0 + 448);
  v204 = *(v0 + 456);
  v205 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v203, v201, v205, v204);
}

uint64_t sub_254BB4D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F751CF8, &qword_254BCAEE0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_254BB6968(a3, v25 - v10);
  v12 = sub_254BC9C74();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_254BB69D8(v11);
  }

  else
  {
    sub_254BC9C64();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_254BC9C34();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_254BC9BD4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_254BB69D8(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_254BB69D8(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_254BB5020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v6 = sub_254BC9874();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  sub_254BC9C54();
  v5[14] = sub_254BC9C44();
  v8 = sub_254BC9C34();

  return MEMORY[0x2822009F8](sub_254BB5114, v8, v7);
}

uint64_t sub_254BB5114()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[10];
    swift_getKeyPath();
    v0[8] = v2;
    sub_254BB2320(&qword_281535D88, type metadata accessor for InputAccessoriesSettings, &protocol conformance descriptor for InputAccessoriesSettings);
    sub_254BC97E4();

    v4 = OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__accessories;
    swift_beginAccess();
    v5 = *(v2 + v4);
    v6 = swift_task_alloc();
    *(v6 + 16) = v3;

    v7 = sub_254BB5304(sub_254BB8094, v6, v5);

    if (v7)
    {
      v9 = v0[12];
      v8 = v0[13];
      v10 = v0[11];

      sub_254BC9884();
      sub_254BB0754();

      (*(v9 + 8))(v8, v10);
    }

    else
    {
    }
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_254BB5304(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_16:
    v5 = sub_254BC9D74();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x259C263E0](v6, a3);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            return v7;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(a3 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        v12 = v7;
        v9 = a1(&v12);
        if (v3)
        {
          goto LABEL_14;
        }

        if (v9)
        {
          return v7;
        }

        ++v6;
      }

      while (v8 != v5);
    }
  }

  return 0;
}

uint64_t sub_254BB5428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v6 = sub_254BC98B4();
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();
  sub_254BC9C54();
  v5[16] = sub_254BC9C44();
  v8 = sub_254BC9C34();

  return MEMORY[0x2822009F8](sub_254BB551C, v8, v7);
}

uint64_t sub_254BB551C()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[15];
    (*(v0[14] + 16))(v3, v0[12], v0[13]);
    type metadata accessor for InputAccessoriesSettings.Accessory(0);
    v4 = swift_allocObject();
    sub_254BB02CC(v3);
    swift_getKeyPath();
    v0[8] = v2;
    sub_254BB2320(&qword_281535D88, type metadata accessor for InputAccessoriesSettings, &protocol conformance descriptor for InputAccessoriesSettings);
    sub_254BC97E4();

    v0[9] = v2;
    swift_getKeyPath();
    sub_254BC9804();

    v5 = OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__accessories;
    swift_beginAccess();
    sub_254BB7380(v4, (v2 + v5));
    swift_endAccess();

    v0[10] = v2;
    swift_getKeyPath();
    sub_254BC97F4();
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_254BB571C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v6 = sub_254BC98B4();
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();
  sub_254BC9C54();
  v5[16] = sub_254BC9C44();
  v8 = sub_254BC9C34();

  return MEMORY[0x2822009F8](sub_254BB5810, v8, v7);
}

uint64_t sub_254BB5810()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[15];
    (*(v0[14] + 16))(v3, v0[12], v0[13]);
    type metadata accessor for InputAccessoriesSettings.Accessory(0);
    v4 = swift_allocObject();
    sub_254BB02CC(v3);
    swift_getKeyPath();
    v0[8] = v2;
    sub_254BB2320(&qword_281535D88, type metadata accessor for InputAccessoriesSettings, &protocol conformance descriptor for InputAccessoriesSettings);
    sub_254BC97E4();

    v0[9] = v2;
    swift_getKeyPath();
    sub_254BC9804();

    v5 = OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__accessories;
    swift_beginAccess();
    sub_254BB7BBC(v4, (v2 + v5));
    swift_endAccess();

    v0[10] = v2;
    swift_getKeyPath();
    sub_254BC97F4();
  }

  v6 = v0[1];

  return v6();
}

unint64_t sub_254BB5A50(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_254BB6318(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_254BB5AE0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_254BB5BD8;

  return v6(a1);
}

uint64_t sub_254BB5BD8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_254BB5CD0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_254BB5D9C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_254BB8034(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_254BB5D9C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_254BB5EA8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_254BC9D64();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_254BB5EA8(uint64_t a1, unint64_t a2)
{
  v3 = sub_254BB5EF4(a1, a2);
  sub_254BB6024(&unk_28670B240);
  return v3;
}

void *sub_254BB5EF4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_254BB6110(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_254BC9D64();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_254BC9BE4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_254BB6110(v10, 0);
        result = sub_254BC9D24();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_254BB6024(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
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

  result = sub_254BB6184(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_254BB6110(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F751D30, &qword_254BCAF78);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_254BB6184(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F751D30, &qword_254BCAF78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_254BB6278(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_254BC9D74();
LABEL_9:
  result = sub_254BC9D54();
  *v2 = result;
  return result;
}

uint64_t sub_254BB6318(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_254BC9D74();
  }

  return sub_254BC9D54();
}

uint64_t sub_254BB637C(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      LOBYTE(v4) = 1;
      return v4 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v4 = v12 - 4;
        v13 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          MEMORY[0x259C263E0](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v4 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          if (!v11)
          {
LABEL_24:
            if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            goto LABEL_26;
          }
        }

        MEMORY[0x259C263E0](v12 - 4, a2);
LABEL_26:
        LOBYTE(v4) = sub_254BC9854();

        if (v4)
        {
          ++v12;
          if (v13 != v5)
          {
            continue;
          }
        }

        return v4 & 1;
      }
    }

    v14 = (v3 + 32);
    v15 = (a2 + 32);
    v16 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v17 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v18 = v5 - 1;
    while (1)
    {
      if (!v16)
      {
        goto LABEL_40;
      }

      if (!v17)
      {
        break;
      }

      v19 = *v14++;
      a2 = v19;
      v20 = *v15++;
      v3 = v20;

      v4 = sub_254BC9854();

      v22 = v18-- != 0;
      if (v4)
      {
        --v17;
        --v16;
        if (v22)
        {
          continue;
        }
      }

      return v4 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_254BC9D74();
  }

  result = sub_254BC9D74();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  LOBYTE(v4) = 0;
  return v4 & 1;
}

uint64_t sub_254BB6674(void *a1)
{
  v2 = v1[4];
  v3 = (v1[2] + *a1);
  *v3 = v1[3];
  v3[1] = v2;
}

uint64_t sub_254BB66C0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_254BB66D0()
{
  result = qword_27F751CD8;
  if (!qword_27F751CD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F751CD8);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_254BB673C()
{
  result = qword_27F751CF0;
  if (!qword_27F751CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F751CE8, &qword_254BCAED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F751CF0);
  }

  return result;
}

uint64_t sub_254BB67C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_254BB6874;

  return sub_254BB2C68(a1, v4, v5, v6);
}

uint64_t sub_254BB6874()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_254BB6968(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F751CF8, &qword_254BCAEE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_254BB69D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F751CF8, &qword_254BCAEE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_254BB6A40(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_254BB8258;

  return sub_254BB5AE0(a1, v4);
}

uint64_t sub_254BB6AF8(uint64_t a1)
{
  v4 = *(sub_254BC98B4() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_254BB8258;

  return sub_254BB5020(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_254BB6BF0(uint64_t a1)
{
  v4 = *(sub_254BC98B4() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_254BB8258;

  return sub_254BB571C(a1, v6, v7, v8, v1 + v5);
}

uint64_t objectdestroy_74Tm()
{
  v1 = sub_254BC98B4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_254BB6DB4(uint64_t a1)
{
  v4 = *(sub_254BC98B4() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_254BB8258;

  return sub_254BB5428(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_254BB6EAC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_254BB6874;

  return sub_254BB5AE0(a1, v4);
}

uint64_t sub_254BB6F64(uint64_t result, int a2)
{
  if (a2 == -536870608 && result != 0)
  {
    type metadata accessor for InputAccessoriesSettings.TRMObserver();
    swift_unknownObjectRetain();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = v3;
      v5 = *(v3 + 32);
      v6 = sub_254BC9BB4();
      CFProperty = IORegistryEntryCreateCFProperty(v5, v6, *MEMORY[0x277CBECE8], 0);

      if (CFProperty && swift_dynamicCast())
      {
        v8 = v15;
      }

      else
      {
        v8 = 0;
      }

      if (qword_281535C68 != -1)
      {
        swift_once();
      }

      v9 = sub_254BC9924();
      __swift_project_value_buffer(v9, qword_281535EC0);
      v10 = sub_254BC9904();
      v11 = sub_254BC9CB4();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 67109120;
        *(v12 + 4) = v8;
        _os_log_impl(&dword_254BA8000, v10, v11, "HIDRM_PolicyEnabled value: %{BOOL}d", v12, 8u);
        MEMORY[0x259C26A50](v12, -1, -1);
      }

      v13 = *(v4 + 16);
      if (v13)
      {
        v14 = *(v4 + 24);

        v13(v8);
        sub_254BB66C0(v13, v14);
      }

      return swift_unknownObjectRelease();
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_254BB7174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for InputAccessoriesSettings.Accessory(0);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = result - v7;
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_254BC9D74();
    v15 = result - v7;
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_254BC9D74();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = result + v11;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;

    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_254BB7294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    if (!v9)
    {
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_254BC9D74();
  if (result < v6)
  {
    goto LABEL_15;
  }

LABEL_4:
  v11 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = 1 - v11;
  if (__OFSUB__(1, v11))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v13 = sub_254BC9D74();
  }

  else
  {
    v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = v13 + v12;
  if (v14)
  {
    goto LABEL_18;
  }

  sub_254BB6278(result, 1);

  return sub_254BB7174(v7, v6, 1, v4);
}

void sub_254BB7380(uint64_t a1, unint64_t *a2)
{
  v3 = *a2;
  v44 = *a2 >> 62;
  if (v44)
  {
LABEL_43:
    v4 = sub_254BC9D74();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v50 = (a1 + OBJC_IVAR____TtCC24InputAccessoriesSettings24InputAccessoriesSettings9Accessory__name);
  if (!v4)
  {
LABEL_22:

    MEMORY[0x259C262A0](v18);
    if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_254BC9C14();
    }

    sub_254BC9C24();
    if (qword_281535C68 != -1)
    {
      swift_once();
    }

    v19 = sub_254BC9924();
    __swift_project_value_buffer(v19, qword_281535EC0);

    v20 = sub_254BC9904();
    v21 = sub_254BC9CD4();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v52[0] = v23;
      *v22 = 136315138;
      swift_getKeyPath();
      sub_254BB2320(&qword_27F751C08, type metadata accessor for InputAccessoriesSettings.Accessory, &unk_254BCAD00);
      sub_254BC97E4();

      v24 = *v50;
      v25 = v50[1];

      v26 = sub_254BB5CD0(v24, v25, v52);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_254BA8000, v20, v21, "[Insert] Append device (%s).", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x259C26A50](v23, -1, -1);
      v27 = v22;
LABEL_32:
      MEMORY[0x259C26A50](v27, -1, -1);
    }

    goto LABEL_33;
  }

  v5 = 0;
  v46 = v4;
  v48 = v3 & 0xC000000000000001;
  v49 = v3 & 0xFFFFFFFFFFFFFF8;
  v47 = v3;
  while (1)
  {
    if (v48)
    {
      v8 = MEMORY[0x259C263E0](v5, v3);
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    else
    {
      if (v5 >= *(v49 + 16))
      {
        __break(1u);
        goto LABEL_43;
      }

      v8 = *(v3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_21;
      }
    }

    v51 = v9;
    swift_getKeyPath();
    v52[0] = v8;
    sub_254BB2320(&qword_27F751C08, type metadata accessor for InputAccessoriesSettings.Accessory, &unk_254BCAD00);
    sub_254BC97E4();

    v10 = a1;
    v11 = (v8 + OBJC_IVAR____TtCC24InputAccessoriesSettings24InputAccessoriesSettings9Accessory__name);
    v13 = *(v8 + OBJC_IVAR____TtCC24InputAccessoriesSettings24InputAccessoriesSettings9Accessory__name);
    v12 = *(v8 + OBJC_IVAR____TtCC24InputAccessoriesSettings24InputAccessoriesSettings9Accessory__name + 8);
    swift_getKeyPath();
    v52[0] = v10;

    v14 = v10;
    sub_254BC97E4();

    if (v13 == *v50 && v12 == v50[1])
    {
      break;
    }

    v16 = sub_254BC9D84();

    if (v16)
    {
      goto LABEL_17;
    }

    swift_getKeyPath();
    v52[0] = v8;
    sub_254BC97E4();

    v6 = v11[1];
    v52[0] = *v11;
    v52[1] = v6;
    swift_getKeyPath();
    a1 = v14;

    sub_254BC97E4();

    sub_254BAC9A4();

    v7 = sub_254BC9D04();

    if (v7 == 1)
    {
      if (v44)
      {
        v35 = sub_254BC9D74();
      }

      else
      {
        v35 = *(v49 + 16);
      }

      if (v35 < v5)
      {
        __break(1u);
      }

      else
      {

        sub_254BB7294(v5, v5, v14);

        if (qword_281535C68 == -1)
        {
LABEL_39:
          v36 = sub_254BC9924();
          __swift_project_value_buffer(v36, qword_281535EC0);

          v37 = sub_254BC9904();
          v38 = sub_254BC9CD4();

          if (os_log_type_enabled(v37, v38))
          {
            v39 = swift_slowAlloc();
            v40 = swift_slowAlloc();
            v52[0] = v40;
            *v39 = 136315394;
            swift_getKeyPath();
            sub_254BC97E4();

            v41 = *v50;
            v42 = v50[1];

            v43 = sub_254BB5CD0(v41, v42, v52);

            *(v39 + 4) = v43;
            *(v39 + 12) = 2048;
            *(v39 + 14) = v5;
            _os_log_impl(&dword_254BA8000, v37, v38, "[Insert] Insert device (%s) at index %ld.", v39, 0x16u);
            __swift_destroy_boxed_opaque_existential_1(v40);
            MEMORY[0x259C26A50](v40, -1, -1);
            MEMORY[0x259C26A50](v39, -1, -1);
          }

          return;
        }
      }

      swift_once();
      goto LABEL_39;
    }

LABEL_6:
    ++v5;
    v3 = v47;
    if (v51 == v46)
    {
      goto LABEL_22;
    }
  }

LABEL_17:
  a1 = v14;
  v17 = sub_254BC9854();

  if ((v17 & 1) == 0)
  {
    goto LABEL_6;
  }

  if (qword_281535C68 != -1)
  {
    swift_once();
  }

  v28 = sub_254BC9924();
  __swift_project_value_buffer(v28, qword_281535EC0);

  v20 = sub_254BC9904();
  v29 = sub_254BC9CD4();

  if (os_log_type_enabled(v20, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v52[0] = v31;
    *v30 = 134218242;
    *(v30 + 4) = -1;
    *(v30 + 12) = 2080;
    swift_getKeyPath();
    sub_254BC97E4();

    v32 = *v50;
    v33 = v50[1];

    v34 = sub_254BB5CD0(v32, v33, v52);

    *(v30 + 14) = v34;
    _os_log_impl(&dword_254BA8000, v20, v29, "[Insert] Negative index found %ld. Attempting to add existing device (%s). Ignored.", v30, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v31);
    MEMORY[0x259C26A50](v31, -1, -1);
    v27 = v30;
    goto LABEL_32;
  }

LABEL_33:
}

void sub_254BB7BBC(uint64_t a1, unint64_t *a2)
{
  v3 = *a2;
  v4 = *a2 & 0xFFFFFFFFFFFFFF8;
  if (*a2 >> 62)
  {
LABEL_27:
    v5 = sub_254BC9D74();
  }

  else
  {
    v5 = *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (v5 != v6)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      MEMORY[0x259C263E0](v6, v3);
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }
    }

    v7 = sub_254BC9854();

    if (v7)
    {
      sub_254BB5A50(v6);

      if (qword_281535C68 != -1)
      {
        swift_once();
      }

      v18 = sub_254BC9924();
      __swift_project_value_buffer(v18, qword_281535EC0);

      oslog = sub_254BC9904();
      v19 = sub_254BC9CD4();

      if (os_log_type_enabled(oslog, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v27 = v21;
        *v20 = 136315394;
        swift_getKeyPath();
        sub_254BB2320(&qword_27F751C08, type metadata accessor for InputAccessoriesSettings.Accessory, &unk_254BCAD00);
        sub_254BC97E4();

        v22 = a1 + OBJC_IVAR____TtCC24InputAccessoriesSettings24InputAccessoriesSettings9Accessory__name;
        v23 = *(a1 + OBJC_IVAR____TtCC24InputAccessoriesSettings24InputAccessoriesSettings9Accessory__name);
        v24 = *(v22 + 8);

        v25 = sub_254BB5CD0(v23, v24, &v27);

        *(v20 + 4) = v25;
        *(v20 + 12) = 2048;
        *(v20 + 14) = v6;
        _os_log_impl(&dword_254BA8000, oslog, v19, "[Evict] Remove device (%s) at index %ld.", v20, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v21);
        MEMORY[0x259C26A50](v21, -1, -1);
        v17 = v20;
        goto LABEL_21;
      }

      goto LABEL_22;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_26;
    }
  }

  if (qword_281535C68 != -1)
  {
    swift_once();
  }

  v9 = sub_254BC9924();
  __swift_project_value_buffer(v9, qword_281535EC0);

  oslog = sub_254BC9904();
  v10 = sub_254BC9CD4();

  if (os_log_type_enabled(oslog, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27 = v12;
    *v11 = 136315138;
    swift_getKeyPath();
    sub_254BB2320(&qword_27F751C08, type metadata accessor for InputAccessoriesSettings.Accessory, &unk_254BCAD00);
    sub_254BC97E4();

    v13 = a1 + OBJC_IVAR____TtCC24InputAccessoriesSettings24InputAccessoriesSettings9Accessory__name;
    v14 = *(a1 + OBJC_IVAR____TtCC24InputAccessoriesSettings24InputAccessoriesSettings9Accessory__name);
    v15 = *(v13 + 8);

    v16 = sub_254BB5CD0(v14, v15, &v27);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_254BA8000, oslog, v10, "[Evict] Device (%s) not found. Ignored.", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x259C26A50](v12, -1, -1);
    v17 = v11;
LABEL_21:
    MEMORY[0x259C26A50](v17, -1, -1);

    return;
  }

LABEL_22:
}

uint64_t sub_254BB8034(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t ACMTRMGetStatusFlagsTm(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 4294967293;
  }

  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = -5;
  v2 = ACMKernelControl(18);
  if (!v2)
  {
    v2 = *(v5 + 6);
  }

  _Block_object_dispose(&v4, 8);
  return v2;
}

uint64_t sub_254BB81C0()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC24InputAccessoriesSettings24InputAccessoriesSettings__disabledReason);
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_254BB82C0()
{
  v0 = sub_254BC9924();
  __swift_allocate_value_buffer(v0, qword_281535EC0);
  __swift_project_value_buffer(v0, qword_281535EC0);
  return sub_254BC9914();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

const char *acm_mem_alloc_info(const char *result, const void *a2, uint64_t a3, const char *a4, int a5, const char *a6)
{
  if (a2)
  {
    _allocatedMem_0 += a3;
  }

  if (gACMLoggingLevel <= 0x1Eu)
  {
    v6 = "NULL";
    if (result)
    {
      v7 = result;
    }

    else
    {
      v7 = "NULL";
    }

    if (a4)
    {
      v8 = a4;
    }

    else
    {
      v8 = "NULL";
    }

    if (a6)
    {
      v6 = a6;
    }

    return printf("%s: %s: mem: type=%s ptr=%p size=%u (total=%u raw=%u data=%u types=%u) %s:%d (%s).\n", "ACM", "acm_mem_alloc_info", v7, a2, a3, _allocatedMem_0, 0, _allocatedMem_2, _allocatedMem_3, v8, a5, v6);
  }

  return result;
}

const char *acm_mem_free_info(const char *result, const void *a2, unint64_t a3, const char *a4, int a5, const char *a6)
{
  if (a2)
  {
    v6 = _allocatedMem_0 - a3;
    if (_allocatedMem_0 < a3)
    {
      v6 = 0;
    }

    _allocatedMem_0 = v6;
  }

  if (gACMLoggingLevel <= 0x1Eu)
  {
    v7 = "NULL";
    if (result)
    {
      v8 = result;
    }

    else
    {
      v8 = "NULL";
    }

    if (a4)
    {
      v9 = a4;
    }

    else
    {
      v9 = "NULL";
    }

    if (a6)
    {
      v7 = a6;
    }

    return printf("%s: %s: mem: type=%s ptr=%p size=%u (total=%u raw=%u data=%u types=%u) %s:%d (%s).\n", "ACM", "acm_mem_free_info", v8, a2, a3, _allocatedMem_0, 0, _allocatedMem_2, _allocatedMem_3, v9, a5, v7);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0(void *a1, rsize_t __n)
{

  return memset_s(a1, __n, 0, __n);
}

uint64_t DeserializeVerifyAclConstraint(int a1, uint64_t a2, unsigned int a3, _OWORD *a4, void *a5, _DWORD *a6, void *a7, unsigned int *a8, BOOL *a9, _DWORD *a10, void *a11, _DWORD *a12)
{
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v12 = 4294967293;
  if (a2 && a4 && a5 && a6 && a9 && a10 && a11 && a12 && a3 >= 0x10)
  {
    v16 = a3;
    *a4 = *a2;
    v37 = 16;
    if ((a3 & 0xFFFFFFFC) == 0x10)
    {
      v12 = 4294967293;
    }

    else
    {
      v20 = *(a2 + 16);
      v37 = 20;
      v21 = acm_mem_alloc_data(v20);
      acm_mem_alloc_info("<data>", v21, v20, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 534, "DeserializeVerifyAclConstraint");
      if (v21)
      {
        if (v16 - 20 < v20)
        {
          goto LABEL_24;
        }

        memcpy(v21, (a2 + 20), v20);
        v22 = v20 + 20;
        v37 = v20 + 20;
        v33 = a5;
        if (a1 != 32)
        {
          v26 = 0;
          v34 = 0;
          goto LABEL_19;
        }

        if (v16 - v22 < 4)
        {
LABEL_24:
          v26 = 0;
          v34 = 0;
        }

        else
        {
          v31 = a7;
          v23 = a8;
          v24 = *(a2 + v22);
          v25 = v20 + 24;
          v37 = v20 + 24;
          v26 = acm_mem_alloc_data(v24);
          acm_mem_alloc_info("<data>", v26, v24, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 546, "DeserializeVerifyAclConstraint");
          v34 = v24;
          if (!v26)
          {
            v12 = 4294967292;
LABEL_26:
            acm_mem_free_info("<data>", v21, v20, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 582, "DeserializeVerifyAclConstraint");
            acm_mem_free_data(v21, v20);
            if (v26)
            {
              acm_mem_free_info("<data>", v26, v34, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 585, "DeserializeVerifyAclConstraint");
              acm_mem_free_data(v26, v34);
            }

            goto LABEL_30;
          }

          if (v16 - v25 >= v24)
          {
            memcpy(v26, (a2 + v25), v24);
            v22 = v25 + v24;
            v37 = v25 + v24;
            a8 = v23;
            a7 = v31;
LABEL_19:
            if (v22 != v16)
            {
              v27 = *(a2 + v22) != 0;
              v37 = v22 + 1;
              if (v16 - (v22 + 1) >= 4)
              {
                v32 = v20;
                v28 = v26;
                v29 = *(a2 + v22 + 1);
                v37 = v22 + 5;
                v12 = deserializeParameters(a2, v16, &v37, &v36, &v35);
                if (!v12)
                {
                  *v33 = v21;
                  *a7 = v28;
                  *a8 = v34;
                  *a6 = v32;
                  *a9 = v27;
                  *a10 = v29;
                  *a11 = v36;
                  *a12 = v35;
                  return v12;
                }

                v26 = v28;
                v20 = v32;
                goto LABEL_26;
              }
            }
          }
        }

        v12 = 4294967293;
        goto LABEL_26;
      }

      v12 = 4294967292;
    }
  }

LABEL_30:
  if (v36)
  {
    Util_SafeDeallocParameters(v36, v35);
  }

  return v12;
}

uint64_t DeserializeProcessAcl(uint64_t a1, unsigned int a2, _OWORD *a3, void *a4, _DWORD *a5, void *a6, unsigned int *a7, _DWORD *a8, void *a9, _DWORD *a10)
{
  v39 = 0;
  v40 = 0;
  v38 = 0;
  v10 = 4294967293;
  if (a1)
  {
    if (a3)
    {
      v11 = a4;
      if (a4)
      {
        if (a5)
        {
          v13 = a6;
          if (a6)
          {
            v14 = a7;
            if (a7)
            {
              v15 = a8;
              if (a8)
              {
                if (a9 && a10 && a2 >= 0x10)
                {
                  v17 = a2;
                  *a3 = *a1;
                  v40 = 16;
                  if ((a2 & 0xFFFFFFFC) == 0x10)
                  {
                    v10 = 4294967293;
                  }

                  else
                  {
                    v18 = *(a1 + 16);
                    v40 = 20;
                    v19 = acm_mem_alloc_data(v18);
                    acm_mem_alloc_info("<data>", v19, v18, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 724, "DeserializeProcessAcl");
                    if (v19)
                    {
                      if (v17 - 20 < v18 || (memcpy(v19, (a1 + 20), v18), v40 = v18 + 20, v17 - (v18 + 20) < 4))
                      {
                        v32 = 0;
                        v37 = 0;
                        v10 = 4294967293;
                      }

                      else
                      {
                        v36 = a5;
                        v20 = *(a1 + v18 + 20);
                        v21 = v18 + 24;
                        v40 = v18 + 24;
                        v37 = v20;
                        if (!v20)
                        {
                          v35 = 0;
                          goto LABEL_20;
                        }

                        v33 = v11;
                        v22 = v13;
                        v23 = v14;
                        v24 = v15;
                        v25 = v20;
                        v26 = acm_mem_alloc_data(v20);
                        acm_mem_alloc_info("<data>", v26, v25, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 736, "DeserializeProcessAcl");
                        if (v26)
                        {
                          v27 = v26;
                          if (v17 - v21 >= v25)
                          {
                            v13 = v22;
                            v35 = v27;
                            memcpy(v27, (a1 + v21), v25);
                            v21 += v25;
                            v40 = v21;
                            v15 = v24;
                            v14 = v23;
                            v11 = v33;
LABEL_20:
                            if (v17 - v21 < 4)
                            {
                              v10 = 4294967293;
                            }

                            else
                            {
                              v34 = v18;
                              v28 = v19;
                              v29 = v15;
                              v30 = *(a1 + v21);
                              v40 = v21 + 4;
                              v10 = deserializeParameters(a1, v17, &v40, &v39, &v38);
                              if (!v10)
                              {
                                *v11 = v28;
                                *v36 = v34;
                                *v13 = v35;
                                *v14 = v37;
                                *v29 = v30;
                                *a9 = v39;
                                *a10 = v38;
                                return v10;
                              }

                              v19 = v28;
                              v18 = v34;
                            }

                            v32 = v35;
                            goto LABEL_32;
                          }

                          v10 = 4294967293;
                          v32 = v26;
                        }

                        else
                        {
                          v32 = 0;
                          v10 = 4294967292;
                        }
                      }

LABEL_32:
                      acm_mem_free_info("<data>", v19, v18, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 765, "DeserializeProcessAcl");
                      acm_mem_free_data(v19, v18);
                      if (v32)
                      {
                        acm_mem_free_info("<data>", v32, v37, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 768, "DeserializeProcessAcl");
                        acm_mem_free_data(v32, v37);
                      }

                      goto LABEL_34;
                    }

                    v10 = 4294967292;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_34:
  if (v39)
  {
    Util_SafeDeallocParameters(v39, v38);
  }

  return v10;
}

uint64_t getRequirementDataSizeForVersion(unsigned int a1, _DWORD *a2)
{
  if (!a2)
  {
    getRequirementDataSizeForVersion_cold_2();
  }

  if (a1 > 1)
  {
    return a2[3];
  }

  v2 = *a2 - 1;
  if (v2 >= 0x1C || ((0xFFE7FE7u >> v2) & 1) == 0)
  {
    getRequirementDataSizeForVersion_cold_1();
  }

  return qword_254BCAF80[v2];
}

uint64_t OUTLINED_FUNCTION_0_0@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  a2 = a1;

  return serializeParameters(v4, v3, v2, &a2);
}

uint64_t OUTLINED_FUNCTION_1()
{

  return memcmp(v1, v0, 0x20uLL);
}

uint64_t OUTLINED_FUNCTION_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = 0;
  *a4 = 24;
  return result;
}

uint64_t OUTLINED_FUNCTION_3(uint64_t a1, void *a2)
{
  result = 0;
  *a2 = 16;
  return result;
}

uint64_t OUTLINED_FUNCTION_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  a9 = *v9 - v12;
  v16 = *(v14 + 8 * v13);

  return SerializeRequirement(v11, v16, v10 + v12, &a9);
}

uint64_t OUTLINED_FUNCTION_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11)
{

  return getLengthOfParameters(a2, a3, &a11);
}

uint64_t OUTLINED_FUNCTION_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  a10 = 0;
  a11 = 0;

  return DeserializeRequirement(v22 + v24, v23 - v24, &a11, &a10, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

__n128 OUTLINED_FUNCTION_12(__n128 *a1, uint64_t a2, __n128 *a3, _DWORD *a4)
{
  result = *a1;
  *a3 = *a1;
  *a4 = a1[1].n128_u32[0];
  return result;
}

__n128 OUTLINED_FUNCTION_17@<Q0>(unsigned __int32 a1@<W1>, unsigned __int32 a2@<W2>, __n128 *a3@<X3>, void *a4@<X4>, __n128 *a5@<X8>)
{
  result = *a5;
  *a3 = *a5;
  a3[1].n128_u32[0] = a1;
  a3[1].n128_u32[1] = a2;
  *a4 = 24;
  return result;
}

uint64_t serializeParameters(uint64_t a1, int a2, uint64_t a3, uint64_t *a4)
{
  LODWORD(v6) = a2;
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "serializeParameters");
  }

  v8 = 70;
  v9 = 4294967293;
  if (a3 && a4)
  {
    v10 = *a4;
    *(a3 + v10) = v6;
    v11 = v10 + 4;
    if (v6)
    {
      v6 = v6;
      while (1)
      {
        *__src = *a1;
        __n = *(a1 + 16);
        v12 = checkParameter(__src);
        if (v12)
        {
          break;
        }

        v13 = (a3 + v11);
        v14 = __n;
        *v13 = __src[0];
        v13[1] = v14;
        v11 += 8;
        if (v14)
        {
          memcpy((a3 + v11), __src[1], v14);
          v11 += v14;
        }

        a1 += 24;
        if (!--v6)
        {
          goto LABEL_11;
        }
      }

      v9 = v12;
      v8 = 70;
    }

    else
    {
LABEL_11:
      v9 = 0;
      *a4 = v11;
      v8 = 10;
    }
  }

  if (v8 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "serializeParameters", v9);
  }

  return v9;
}

uint64_t deserializeParameters(uint64_t a1, unint64_t a2, unint64_t *a3, void *size, _DWORD *a5)
{
  v10 = 0x27F751000uLL;
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "deserializeParameters");
  }

  v11 = 70;
  v12 = 4294967293;
  if (!a1 || !a3 || !size || !a5)
  {
    goto LABEL_24;
  }

  v13 = *a3;
  if (a2 <= *a3)
  {
    goto LABEL_22;
  }

  if (a2 - *a3 < 4 || (v14 = *(a1 + v13), v14 > 0xA))
  {
    v11 = 70;
    v12 = 4294967293;
    goto LABEL_24;
  }

  v13 += 4;
  if (!v14)
  {
LABEL_22:
    v20 = 0;
    v21 = 0;
LABEL_23:
    v12 = 0;
    *size = v21;
    *a5 = v20;
    v11 = 10;
    *a3 = v13;
    goto LABEL_24;
  }

  v15 = acm_mem_alloc_typed(24 * v14, 0x1080040388D5D28uLL);
  acm_mem_alloc_info("array of ACMParameter", v15, 24 * v14, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 196, "deserializeParameters");
  if (!v15)
  {
    v11 = 70;
    v12 = 4294967292;
    goto LABEL_24;
  }

  v25 = a5;
  v23 = v15;
  v24 = v14;
  v16 = v14;
  while (1)
  {
    *(v15 + 1) = 0;
    if (a2 - v13 < 8 || (*v15 = *(a1 + v13), a2 - (v13 + 4) < 4) || (v17 = *(a1 + v13 + 4), v15[4] = v17, v13 += 8, a2 - v13 < v17))
    {
      v11 = 70;
      v12 = 4294967293;
      goto LABEL_30;
    }

    v18 = checkParameter(v15);
    if (v18)
    {
      v12 = v18;
      v11 = 70;
      goto LABEL_30;
    }

    if (v17)
    {
      break;
    }

LABEL_20:
    v15 += 6;
    if (!--v16)
    {
      v10 = 0x27F751000;
      a5 = v25;
      v21 = v23;
      v20 = v24;
      goto LABEL_23;
    }
  }

  v19 = acm_mem_alloc_data(v17);
  acm_mem_alloc_info("<data>", v19, v17, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 214, "deserializeParameters");
  *(v15 + 1) = v19;
  if (v19)
  {
    memcpy(v19, (a1 + v13), v15[4]);
    v13 += v15[4];
    goto LABEL_20;
  }

  v11 = 70;
  v12 = 4294967292;
LABEL_30:
  v10 = 0x27F751000;
LABEL_24:
  if (v11 >= *(v10 + 3384))
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "deserializeParameters", v12);
  }

  return v12;
}

uint64_t checkParameter(_DWORD *a1)
{
  if (!a1)
  {
    return 4294967293;
  }

  switch(*a1)
  {
    case 0:
    case 0xC:
      if (a1[4])
      {
        return 4294967293;
      }

      break;
    case 1:
    case 4:
    case 5:
    case 0xA:
      if (a1[4] != 4)
      {
        return 4294967293;
      }

      break;
    case 2:
    case 6:
    case 7:
      if (a1[4] != 16)
      {
        return 4294967293;
      }

      break;
    case 3:
      if ((a1[4] - 1001) < 0xFFFFFC18)
      {
        return 4294967293;
      }

      break;
    case 8:
    case 9:
    case 0xD:
    case 0xE:
      if (a1[4] != 1)
      {
        return 4294967293;
      }

      break;
    case 0xB:
      if (a1[4] > 0x400u)
      {
        return 4294967293;
      }

      break;
    default:
      return 4294967293;
  }

  return 0;
}

uint64_t crypto_encryptedTextLength(int a1, uint64_t a2)
{
  v2 = a2 + 32;
  if (a1 != 1)
  {
    v2 = 0;
  }

  if (a1 == 2)
  {
    return a2 + 33;
  }

  else
  {
    return v2;
  }
}

unint64_t crypto_plainTextLength(int a1, unint64_t a2)
{
  v2 = a2 - 33;
  v3 = a2 - 32;
  if (a2 <= 0x20)
  {
    v2 = 0;
  }

  if (a2 <= 0x1F)
  {
    v3 = 0;
  }

  if (a1 != 1)
  {
    v3 = 0;
  }

  if (a1 == 2)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t checkCCError(int a1, const char *a2)
{
  if (a1)
  {
    if (gACMLoggingLevel <= 0x46u)
    {
      printf("%s: %s: CoreCrypto - %s() failed, ccErr: %d.\n", "ACM", "checkCCError", a2, a1);
    }

    return 4294967264;
  }

  else
  {
    if (gACMLoggingLevel <= 0x1Eu)
    {
      printf("%s: %s: CoreCrypto - %s() succeeded, ccErr: %d.\n", "ACM", "checkCCError", a2, 0);
    }

    return 0;
  }
}

void OUTLINED_FUNCTION_3_0(uint64_t a1, size_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  bzero(&a9 - a2, a2);
}

uint64_t OUTLINED_FUNCTION_4_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, __int128 a14)
{
  a13 = 0u;
  a14 = 0u;

  return crypto_generateKeyFromSharedInfo(v14, a4, a5, a2, a3, a8, &a13);
}

uint64_t generateRandom(uint64_t a1, uint64_t a2)
{
  v2 = 70;
  v3 = 4294967293;
  if (!a1 || !a2)
  {
    goto LABEL_14;
  }

  v6 = platform_rng_state;
  if (platform_rng_state)
  {
    v3 = 0;
  }

  else
  {
    platform_rng_state = ccrng();
    v3 = checkCCError(-1, "ccrng");
    if (v3)
    {
      v6 = 0;
      v7 = 70;
      goto LABEL_8;
    }

    v6 = platform_rng_state;
  }

  v7 = 10;
LABEL_8:
  if (v7 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "platform_rng", v3);
  }

  v2 = 70;
  if (!v3)
  {
    v8 = (*v6)(v6, a2, a1);
    checkCCError(v8, "platform_rng");
    OUTLINED_FUNCTION_11_0();
    if (v9)
    {
      v2 = 10;
    }

    else
    {
      v2 = 70;
    }
  }

LABEL_14:
  if (v2 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "generateRandom", v3);
  }

  return v3;
}

void crypto_encryptText_version1()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_9_0();
  v22 = *MEMORY[0x277D85DE8];
  ccaes_gcm_encrypt_mode();
  ccgcm_context_size();
  OUTLINED_FUNCTION_6_0();
  v6 = MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_0(v6, v7, v8, v9, v10, v11, v12, v13, v20);
  if (v4)
  {
    if (v2)
    {
      if (v1)
      {
        if (v3)
        {
          if (v0)
          {
            v14 = v1 + 32;
            if (v1 != -32)
            {
              if (v14 > *v0 || (OUTLINED_FUNCTION_2_0(), v15 = ccgcm_init(), !checkCCError(v15, "ccgcm_init")) && !generateRandom(v3, 16) && (OUTLINED_FUNCTION_0_1(), v16 = ccgcm_set_iv(), !checkCCError(v16, "ccgcm_set_iv")) && (OUTLINED_FUNCTION_2_0(), v17 = ccgcm_update(), !checkCCError(v17, "ccgcm_update")) && (OUTLINED_FUNCTION_0_1(), v18 = ccgcm_finalize(), !checkCCError(v18, "ccgcm_finalize")))
              {
                *v0 = v14;
              }
            }
          }
        }
      }
    }
  }

  ccgcm_context_size();
  cc_clear();
  OUTLINED_FUNCTION_5_0();
  if (v19)
  {
    OUTLINED_FUNCTION_12_0();
    printf("%s: %s: returning, err = %ld.\n", v21, v22, v23);
  }

  OUTLINED_FUNCTION_15_0();
}

void crypto_encryptText_version2()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_9_0();
  v26 = *MEMORY[0x277D85DE8];
  ccaes_gcm_encrypt_mode();
  ccgcm_context_size();
  OUTLINED_FUNCTION_6_0();
  v6 = MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_0(v6, v7, v8, v9, v10, v11, v12, v13, v24);
  if (v4)
  {
    if (v2)
    {
      if (v1)
      {
        if (v3)
        {
          if (v0)
          {
            v14 = v1 + 33;
            if (v1 != -33)
            {
              if (v14 > *v0 || (OUTLINED_FUNCTION_2_0(), v15 = ccgcm_init(), !checkCCError(v15, "ccgcm_init")) && (*v3 = 2, v16 = (v3 + 1), OUTLINED_FUNCTION_13_0(), !v17) && !generateRandom(v16, 16) && (OUTLINED_FUNCTION_0_1(), v18 = ccgcm_set_iv(), !checkCCError(v18, "ccgcm_set_iv")) && (v19 = v16 + 16, OUTLINED_FUNCTION_13_0(), !v20) && (OUTLINED_FUNCTION_2_0(), v21 = ccgcm_update(), !checkCCError(v21, "ccgcm_update")) && !__CFADD__(v19, v1) && (OUTLINED_FUNCTION_0_1(), v22 = ccgcm_finalize(), !checkCCError(v22, "ccgcm_finalize")))
              {
                *v0 = v14;
              }
            }
          }
        }
      }
    }
  }

  ccgcm_context_size();
  cc_clear();
  OUTLINED_FUNCTION_5_0();
  if (v23)
  {
    OUTLINED_FUNCTION_12_0();
    printf("%s: %s: returning, err = %ld.\n", v25, v26, v27);
  }

  OUTLINED_FUNCTION_15_0();
}

void crypto_decryptText_version1()
{
  OUTLINED_FUNCTION_14_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  ccaes_gcm_decrypt_mode();
  ccgcm_context_size();
  OUTLINED_FUNCTION_6_0();
  v11 = MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_0(v11, v12, v13, v14, v15, v16, v17, v18, v25);
  if (v9)
  {
    if (v7)
    {
      if (v5)
      {
        if (v3)
        {
          if (v1)
          {
            v19 = v5 >= 0x20;
            v20 = v5 - 32;
            if (v19)
            {
              if (*v1 < v20 || (OUTLINED_FUNCTION_2_0(), v21 = ccgcm_init(), !checkCCError(v21, "ccgcm_init")) && (OUTLINED_FUNCTION_0_1(), v22 = ccgcm_set_iv(), !checkCCError(v22, "ccgcm_set_iv")) && (OUTLINED_FUNCTION_2_0(), v23 = ccgcm_update(), !checkCCError(v23, "ccgcm_update")) && (OUTLINED_FUNCTION_0_1(), ccgcm_finalize(), v24 = cc_cmp_safe(), !checkCCError(v24, "cc_cmp_safe")))
              {
                *v1 = v20;
              }
            }
          }
        }
      }
    }
  }

  ccgcm_context_size();
  cc_clear();
  OUTLINED_FUNCTION_5_0();
  if (v19)
  {
    OUTLINED_FUNCTION_12_0();
    printf("%s: %s: returning, err = %ld.\n", v26, 0, 0);
  }

  OUTLINED_FUNCTION_15_0();
}

void crypto_decryptText_version2()
{
  OUTLINED_FUNCTION_14_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  ccaes_gcm_decrypt_mode();
  ccgcm_context_size();
  OUTLINED_FUNCTION_6_0();
  v11 = MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_0(v11, v12, v13, v14, v15, v16, v17, v18, v27);
  if (v9)
  {
    if (v7)
    {
      if (v5)
      {
        if (v3)
        {
          if (v1)
          {
            if (v5 >= 0x22)
            {
              v19 = v5 - 33;
              if (*v1 < v19 || (OUTLINED_FUNCTION_13_0(), !v20) && *v7 == 2 && (OUTLINED_FUNCTION_2_0(), v21 = ccgcm_init(), !checkCCError(v21, "ccgcm_init")) && (OUTLINED_FUNCTION_0_1(), v22 = ccgcm_set_iv(), !checkCCError(v22, "ccgcm_set_iv")) && (OUTLINED_FUNCTION_13_0(), !v23) && (OUTLINED_FUNCTION_2_0(), v24 = ccgcm_update(), !checkCCError(v24, "ccgcm_update")) && !__CFADD__(v7 + 17, v19) && (OUTLINED_FUNCTION_0_1(), ccgcm_finalize(), v25 = cc_cmp_safe(), !checkCCError(v25, "cc_cmp_safe")))
              {
                *v1 = v19;
              }
            }
          }
        }
      }
    }
  }

  ccgcm_context_size();
  cc_clear();
  OUTLINED_FUNCTION_5_0();
  if (v26)
  {
    OUTLINED_FUNCTION_12_0();
    printf("%s: %s: returning, err = %ld.\n", v28, 0, 0);
  }

  OUTLINED_FUNCTION_15_0();
}

uint64_t LibCall_ACMKernelControl_Block(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v1;
  v19 = *MEMORY[0x277D85DE8];
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMKernelControl_Block");
  }

  bzero(v18, 0x2000uLL);
  v17 = 0x2000;
  v13 = LibCall_ACMKernelControl(v12, v11, v9, v7, v5, v18, &v17);
  if (v3)
  {
    if (v17)
    {
      v14 = v18;
    }

    else
    {
      v14 = 0;
    }

    (*(v3 + 16))(v3, v14);
  }

  if (v13)
  {
    v15 = 70;
  }

  else
  {
    v15 = 10;
  }

  if (v15 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMKernelControl_Block", v13);
  }

  return v13;
}

uint64_t LibCall_ACMSEPControl_Block(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24[128] = *MEMORY[0x277D85DE8];
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMSEPControl_Block");
  }

  bzero(v24, 0x400uLL);
  LibCall_ACMSEPControl(a1, a2, a3, a4, a5, a6, a7, v24, &v23, v21, v22, 1024, v24[0], v24[1], v24[2], v24[3], v24[4], v24[5], v24[6], v24[7], v24[8]);
  v17 = v16;
  if (a8)
  {
    if (v23)
    {
      v18 = v24;
    }

    else
    {
      v18 = 0;
    }

    (*(a8 + 16))(a8, v18);
  }

  if (v17)
  {
    v19 = 70;
  }

  else
  {
    v19 = 10;
  }

  if (v19 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMSEPControl_Block", v17);
  }

  return v17;
}

uint64_t LibCall_ACMGlobalContextVerifyPolicy_Block(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMGlobalContextVerifyPolicy_Block");
  }

  v15 = 0;
  result = LibCall_ACMContextCreate(a1, a2, &v15, 0, 0, 1);
  if (result)
  {
    if (a7)
    {
      result = (*(a7 + 16))(a7, result, 0, 0);
    }
  }

  else
  {
    result = LibCall_ACMContextVerifyPolicyEx_Block(a1, a2, v15, a3, a4, a5, a6, 0xFFFFFFFFLL, a7);
  }

  if (v15)
  {
    result = LibCall_ACMContextDelete(a1, a2, v15, 1);
  }

  if (gACMLoggingLevel <= 0xAu)
  {
    return printf("%s: %s: returning.\n", "ACM", "LibCall_ACMGlobalContextVerifyPolicy_Block");
  }

  return result;
}

uint64_t LibCall_ACMGetAclAuthMethod_Block(uint64_t result, uint64_t a2, __n128 *a3, uint64_t a4)
{
  v7 = result;
  v14 = *MEMORY[0x277D85DE8];
  if (gACMLoggingLevel <= 0xAu)
  {
    result = printf("%s: %s: called.\n", "ACM", "LibCall_ACMGetAclAuthMethod_Block");
  }

  memset(v13, 0, sizeof(v13));
  v11 = 256;
  if (v7 && a3 && a4)
  {
    v12 = 0uLL;
    v10 = 16;
    AclAuthMethod_Serialize = LibSer_GetAclAuthMethod_Serialize(a3, &v12, &v10);
    if (!v9 && v10 == 16)
    {
      v7(a2, 31, 0, &v12, 16, v13, &v11, AclAuthMethod_Serialize);
    }

    goto LABEL_9;
  }

  if (a4)
  {
LABEL_9:
    result = (*(a4 + 16))(a4);
  }

  if (gACMLoggingLevel <= 0xAu)
  {
    return printf("%s: %s: returning.\n", "ACM", "LibCall_ACMGetAclAuthMethod_Block");
  }

  return result;
}

uint64_t verifyAclConstraintForOperationCommandInternal(uint64_t result, int a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, uint64_t a6, const void *a7, uint64_t a8, char a9, uint64_t a10, int a11, int a12, uint64_t a13)
{
  v20 = result;
  if (gACMLoggingLevel <= 0xAu)
  {
    result = printf("%s: %s: called.\n", "ACM", "verifyAclConstraintForOperationCommandInternal");
  }

  v25 = 0;
  v24 = 0;
  if (a4 && a5 && a6 && a13)
  {
    v21 = verifyAclConstraintInternal(v20, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, &v24, &v25);
    v22 = v25;
    v23 = v24;
  }

  else
  {
    if (!a13)
    {
      goto LABEL_10;
    }

    v22 = 0;
    v23 = 0;
    v21 = 4294967293;
  }

  (*(a13 + 16))(a13, v21, v23, v22);
  result = v25;
  if (v25)
  {
    result = Util_DeallocRequirement(v25);
  }

LABEL_10:
  if (gACMLoggingLevel <= 0xAu)
  {
    return printf("%s: %s: returning.\n", "ACM", "verifyAclConstraintForOperationCommandInternal");
  }

  return result;
}

uint64_t Util_GetBitCount(uint64_t a1)
{
  v1 = vcnt_s8(a1);
  v1.i16[0] = vaddlv_u8(v1);
  return v1.u32[0];
}

BOOL Util_isNullOrZeroMemory(_BYTE *a1, uint64_t a2)
{
  if (!a1)
  {
    return 1;
  }

  if (*a1)
  {
    return 0;
  }

  return memcmp(a1, a1 + 1, a2 - 1) == 0;
}

BOOL Util_isNonNullEqualMemory(void *__s1, size_t __n, void *__s2, uint64_t a4)
{
  if (__n != a4)
  {
    return 0;
  }

  result = 0;
  if (__s1)
  {
    if (__s2)
    {
      return memcmp(__s1, __s2, __n) == 0;
    }
  }

  return result;
}

char *Util_hexDumpToStrHelper(char *result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!result && a2)
  {
    Util_hexDumpToStrHelper_cold_2();
  }

  if (!a3 && a4)
  {
    Util_hexDumpToStrHelper_cold_1();
  }

  if (a2 >= a4)
  {
    v4 = a4;
  }

  else
  {
    v4 = a2;
  }

  if (v4)
  {
    v5 = (a3 + 1);
    do
    {
      *(v5 - 1) = a0123456789abcd[*result >> 4];
      v6 = *result++;
      *v5 = a0123456789abcd[v6 & 0xF];
      v5 += 2;
      --v4;
    }

    while (v4);
  }

  return result;
}

unint64_t Util_KeybagLockStateToEnvVar(unsigned int a1)
{
  v1 = 0x2010103020201uLL >> (8 * a1);
  if (a1 >= 7)
  {
    LOBYTE(v1) = 1;
  }

  return v1 & 3;
}

void Util_SafeDeallocParameters(unsigned int *result, unsigned int a2)
{
  if (result)
  {
    v3 = a2;
    if (a2)
    {
      v4 = result + 4;
      v5 = a2;
      do
      {
        v6 = *(v4 - 1);
        if (v6)
        {
          v7 = *v4;
          acm_mem_free_info("<data>", *(v4 - 1), v7, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 118, "Util_SafeDeallocParameters");
          acm_mem_free_data(v6, v7);
        }

        v4 += 6;
        --v5;
      }

      while (v5);
    }

    acm_mem_free_info("array of ACMParameter", result, 24 * v3, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 121, "Util_SafeDeallocParameters");

    acm_mem_free(result, 24 * v3);
  }
}

uint64_t ACMContextCreateWithFlags(uint64_t *a1, uint64_t a2)
{
  v14[2] = *MEMORY[0x277D85DE8];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v10 = "ACMLib";
    v11 = 2080;
    v12 = "ACMContextCreateWithFlags";
    _os_log_impl(&dword_254BA8000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v8 = 0;
  v4 = LibCall_ACMContextCreate(ioKitTransport, &v8, a1, a2, &_logLevel, 1);
  if (v4)
  {
    updateLogLevelFromKext();
    v5 = 70;
  }

  else
  {
    v5 = 10;
    if (a1 && _logLevel <= 0x28u)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v6 = *a1;
        if (*a1)
        {
          LODWORD(v6) = *(v6 + 16);
        }

        *buf = 136315906;
        v10 = "ACMLib";
        v11 = 2080;
        v12 = "ACMContextCreateWithFlags";
        v13 = 1024;
        LODWORD(v14[0]) = v6;
        WORD2(v14[0]) = 1024;
        *(v14 + 6) = a2;
        _os_log_impl(&dword_254BA8000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: CS[%u] created (flags=0x%x).\n", buf, 0x22u);
      }

      v5 = 10;
    }
  }

  if (v5 >= _logLevel && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v10 = "ACMLib";
    v11 = 2080;
    v12 = "ACMContextCreateWithFlags";
    v13 = 2048;
    v14[0] = v4;
    _os_log_impl(&dword_254BA8000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  return v4;
}

uint64_t ACMContextCreateWithExternalForm(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v10 = "ACMLib";
    v11 = 2080;
    v12 = "ACMContextCreateWithExternalForm";
    _os_log_impl(&dword_254BA8000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v8 = 0;
  v4 = LibCall_ACMContextCreateWithExternalForm(ioKitTransport, &v8, a1, a2, &_logLevel, 1);
  if (v4)
  {
    if (_logLevel <= 0x28u && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = *(v4 + 16);
      *buf = 136315650;
      v10 = "ACMLib";
      v11 = 2080;
      v12 = "ACMContextCreateWithExternalForm";
      v13 = 1024;
      LODWORD(v14) = v5;
      _os_log_impl(&dword_254BA8000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: CS[%u] acquired.\n", buf, 0x1Cu);
    }

    v6 = 30;
  }

  else
  {
    updateLogLevelFromKext();
    v6 = 70;
  }

  if (v6 >= _logLevel && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v10 = "ACMLib";
    v11 = 2080;
    v12 = "ACMContextCreateWithExternalForm";
    v13 = 2048;
    v14 = v4;
    _os_log_impl(&dword_254BA8000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: returning, -> ctx = %p.\n", buf, 0x20u);
  }

  return v4;
}

uint64_t ACMContextDelete(_DWORD *a1, uint64_t a2)
{
  v2 = a2;
  v16[2] = *MEMORY[0x277D85DE8];
  v4 = _logLevel;
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "ACMLib";
    v13 = 2080;
    v14 = "ACMContextDelete";
    _os_log_impl(&dword_254BA8000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
    v4 = _logLevel;
  }

  if (a1 && v4 <= 0x28 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = a1[4];
    v6 = "NO";
    *buf = 136315906;
    v12 = "ACMLib";
    v14 = "ACMContextDelete";
    v13 = 2080;
    if (v2)
    {
      v6 = "YES";
    }

    v15 = 1024;
    LODWORD(v16[0]) = v5;
    WORD2(v16[0]) = 2080;
    *(v16 + 6) = v6;
    _os_log_impl(&dword_254BA8000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: CS[%u] deleted (contextDestroyed=%s).\n", buf, 0x26u);
  }

  v10 = a1;
  v7 = LibCall_ACMContextDelete(ioKitTransport, &v10, a1, v2);
  if (v7)
  {
    v8 = 70;
  }

  else
  {
    v8 = 10;
  }

  if (v8 >= _logLevel && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v12 = "ACMLib";
    v13 = 2080;
    v14 = "ACMContextDelete";
    v15 = 2048;
    v16[0] = v7;
    _os_log_impl(&dword_254BA8000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  return v7;
}

void ACMContextGetExternalForm(const void *a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "ACMLib";
    v6 = 2080;
    v7 = "ACMContextGetExternalForm";
    _os_log_impl(&dword_254BA8000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: called.\n", &v4, 0x16u);
  }

  if (a1 && a2)
  {
    if (!init() && !performCommand(a1, 19, 0, a1, 0x10uLL, 0, 0))
    {
      (*(a2 + 16))(a2, a1, 16);
      goto LABEL_9;
    }
  }

  else if (!a2)
  {
    goto LABEL_9;
  }

  ACMContextGetExternalForm_cold_1(a2);
LABEL_9:
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "ACMLib";
    v6 = 2080;
    v7 = "ACMContextGetExternalForm";
    _os_log_impl(&dword_254BA8000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: returning.\n", &v4, 0x16u);
  }
}

uint64_t ACMContextRemoveCredentialsByType(_OWORD *a1, uint64_t a2)
{
  v2 = a2;
  v9 = *MEMORY[0x277D85DE8];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "ACMLib";
    v7 = 2080;
    v8 = "ACMContextRemoveCredentialsByType";
    _os_log_impl(&dword_254BA8000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: called.\n", &v5, 0x16u);
  }

  return ACMContextRemoveCredentialsByTypeAndScope(a1, v2, 1);
}

uint64_t ACMContextContainsCredentialType(uint64_t a1, int a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "ACMLib";
    v7 = 2080;
    v8 = "ACMContextContainsCredentialType";
    _os_log_impl(&dword_254BA8000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: called.\n", &v5, 0x16u);
  }

  return ACMContextContainsCredentialTypeEx(a1, a2, 0);
}

uint64_t ACMContextVerifyPolicy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "ACMLib";
    v12 = 2080;
    v13 = "ACMContextVerifyPolicy";
    _os_log_impl(&dword_254BA8000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v9 = a1;
  v6 = LibCall_ACMContextVerifyPolicy_Block(ioKitTransport, &v9, a1, a2, a3);
  if (v6)
  {
    v7 = 70;
  }

  else
  {
    v7 = 10;
  }

  if (v7 >= _logLevel && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v11 = "ACMLib";
    v12 = 2080;
    v13 = "ACMContextVerifyPolicy";
    v14 = 2048;
    v15 = v6;
    _os_log_impl(&dword_254BA8000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  return v6;
}

uint64_t ACMContextVerifyPolicyWithPreflight(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v13 = "ACMLib";
    v14 = 2080;
    v15 = "ACMContextVerifyPolicyWithPreflight";
    _os_log_impl(&dword_254BA8000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v11 = a1;
  v8 = LibCall_ACMContextVerifyPolicyWithPreflight_Block(ioKitTransport, &v11, a1, a2, a3, a4);
  if (v8)
  {
    v9 = 70;
  }

  else
  {
    v9 = 10;
  }

  if (v9 >= _logLevel && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v13 = "ACMLib";
    v14 = 2080;
    v15 = "ACMContextVerifyPolicyWithPreflight";
    v16 = 2048;
    v17 = v8;
    _os_log_impl(&dword_254BA8000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  return v8;
}

void ACMContextVerifyPolicyEx(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19 = *MEMORY[0x277D85DE8];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v16 = "ACMLib";
    v17 = 2080;
    v18 = "ACMContextVerifyPolicyEx";
    _os_log_impl(&dword_254BA8000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v14 = a1;
  LibCall_ACMContextVerifyPolicyEx_Block(ioKitTransport, &v14, a1, a2, a3, a4, a5, a6, a7);
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v16 = "ACMLib";
    v17 = 2080;
    v18 = "ACMContextVerifyPolicyEx";
    _os_log_impl(&dword_254BA8000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: returning.\n", buf, 0x16u);
  }
}

void ACMGlobalContextVerifyPolicy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = *MEMORY[0x277D85DE8];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v13 = "ACMLib";
    v14 = 2080;
    v15 = "ACMGlobalContextVerifyPolicy";
    _os_log_impl(&dword_254BA8000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v11 = 0;
  v10 = ACMContextCreateWithFlags(&v11, 0);
  if (v10)
  {
    if (a5)
    {
      (*(a5 + 16))(a5, v10, 0, 0);
    }
  }

  else
  {
    ACMContextVerifyPolicyEx(v11, a1, a2, a3, a4, 0xFFFFFFFFLL, a5);
  }

  if (v11)
  {
    ACMContextDelete(v11, 1);
  }

  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v13 = "ACMLib";
    v14 = 2080;
    v15 = "ACMGlobalContextVerifyPolicy";
    _os_log_impl(&dword_254BA8000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: returning.\n", buf, 0x16u);
  }
}

uint64_t ACMContextGetTrackingNumber(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t ACMParseAclAndCopyConstraintCharacteristics(const void *a1, uint64_t a2, uint64_t a3)
{
  v27 = *MEMORY[0x277D85DE8];
  __n = 4096;
  size = 0;
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v22 = "ACMLib";
    v23 = 2080;
    v24 = "ACMParseAclAndCopyConstraintCharacteristics";
    _os_log_impl(&dword_254BA8000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v6 = 4294967293;
  if (!a1 || !a2 || !a3)
  {
    goto LABEL_28;
  }

  SerializedProcessAclSize = init();
  if (SerializedProcessAclSize || (SerializedProcessAclSize = GetSerializedProcessAclSize(0, a1, a2, 0, 0, 0, 0, 0, &size), SerializedProcessAclSize))
  {
    v6 = SerializedProcessAclSize;
LABEL_28:
    (*(a3 + 16))(a3, v6, 0, 4096);
    goto LABEL_19;
  }

  v8 = size;
  v9 = acm_mem_alloc_data(size);
  acm_mem_alloc_info("<data>", v9, v8, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 727, "ACMParseAclAndCopyConstraintCharacteristics");
  if (!v9)
  {
    v6 = 4294967292;
    goto LABEL_28;
  }

  v10 = SerializeProcessAcl(0, a1, a2, 0, 0, 0, 0, 0, v9, &size);
  if (v10)
  {
    v6 = v10;
    v12 = 0;
    v14 = 0;
    v11 = 4096;
    goto LABEL_15;
  }

  v11 = 4096;
  v12 = acm_mem_alloc_data(0x1000uLL);
  acm_mem_alloc_info("<data>", v12, 4096, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 733, "ACMParseAclAndCopyConstraintCharacteristics");
  if (!v12)
  {
    v14 = 0;
LABEL_31:
    v6 = 4294967292;
    goto LABEL_15;
  }

  v13 = performCommand(0, 20, 0, v9, size, v12, &__n);
  v11 = __n;
  if (v13)
  {
    v6 = v13;
    v14 = 0;
    goto LABEL_15;
  }

  v14 = acm_mem_alloc_data(__n);
  acm_mem_alloc_info("<data>", v14, v11, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 739, "ACMParseAclAndCopyConstraintCharacteristics");
  v11 = __n;
  if (!v14)
  {
    goto LABEL_31;
  }

  memcpy(v14, v12, __n);
  v6 = 0;
  v11 = __n;
LABEL_15:
  (*(a3 + 16))(a3, v6, v14, v11);
  v15 = size;
  acm_mem_free_info("<data>", v9, size, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 750, "ACMParseAclAndCopyConstraintCharacteristics");
  acm_mem_free_data(v9, v15);
  if (v12)
  {
    acm_mem_free_info("<data>", v12, 0x1000uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 753, "ACMParseAclAndCopyConstraintCharacteristics");
    acm_mem_free_data(v12, 0x1000uLL);
  }

  if (v14)
  {
    v16 = __n;
    acm_mem_free_info("<data>", v14, __n, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 756, "ACMParseAclAndCopyConstraintCharacteristics");
    acm_mem_free_data(v14, v16);
  }

LABEL_19:
  if (v6)
  {
    v17 = 70;
  }

  else
  {
    v17 = 10;
  }

  if (v17 >= _logLevel && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v22 = "ACMLib";
    v23 = 2080;
    v24 = "ACMParseAclAndCopyConstraintCharacteristics";
    v25 = 2048;
    v26 = v6;
    _os_log_impl(&dword_254BA8000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  return v6;
}

void ACMGetAclAuthMethod(__n128 *a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v6 = "ACMLib";
    v7 = 2080;
    v8 = "ACMGetAclAuthMethod";
    _os_log_impl(&dword_254BA8000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v4 = a1;
  LibCall_ACMGetAclAuthMethod_Block(ioKitTransport, &v4, a1, a2);
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v6 = "ACMLib";
    v7 = 2080;
    v8 = "ACMGetAclAuthMethod";
    _os_log_impl(&dword_254BA8000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: returning.\n", buf, 0x16u);
  }
}

uint64_t ACMSetEnvironmentVariable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v16 = *MEMORY[0x277D85DE8];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v9 = "ACMLib";
    v10 = 2080;
    v11 = "ACMSetEnvironmentVariable";
    _os_log_impl(&dword_254BA8000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  LibCall_ACMSetEnvironmentVariable();
  v5 = v4;
  if (v4)
  {
    v6 = 70;
  }

  else
  {
    v6 = 10;
  }

  if (v6 >= _logLevel && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v9 = "ACMLib";
    v10 = 2080;
    v11 = "ACMSetEnvironmentVariable";
    v12 = 2048;
    v13 = v5;
    v14 = 1024;
    v15 = v3;
    _os_log_impl(&dword_254BA8000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld, var=%u.\n", buf, 0x26u);
  }

  return v5;
}

uint64_t ACMSetEnvironmentVariableWithAccessPolicy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a1;
  v19 = *MEMORY[0x277D85DE8];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "ACMLib";
    v13 = 2080;
    v14 = "ACMSetEnvironmentVariableWithAccessPolicy";
    _os_log_impl(&dword_254BA8000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  LibCall_ACMSetEnvironmentVariable();
  v8 = v7;
  if (v7)
  {
    v9 = 70;
  }

  else
  {
    v9 = 10;
  }

  if (v9 >= _logLevel && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v12 = "ACMLib";
    v13 = 2080;
    v14 = "ACMSetEnvironmentVariableWithAccessPolicy";
    v15 = 2048;
    v16 = v8;
    v17 = 1024;
    v18 = v6;
    _os_log_impl(&dword_254BA8000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld, var=%u.\n", buf, 0x26u);
  }

  return v8;
}

uint64_t ACMGetEnvironmentVariable(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v9 = "ACMLib";
    v10 = 2080;
    v11 = "ACMGetEnvironmentVariable";
    _os_log_impl(&dword_254BA8000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v7 = 0;
  v4 = LibCall_ACMGetEnvironmentVariable_Block(ioKitTransport, &v7, a1, a2);
  if (v4)
  {
    v5 = 70;
  }

  else
  {
    v5 = 10;
  }

  if (v5 >= _logLevel && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v9 = "ACMLib";
    v10 = 2080;
    v11 = "ACMGetEnvironmentVariable";
    v12 = 2048;
    v13 = v4;
    v14 = 1024;
    v15 = a1;
    _os_log_impl(&dword_254BA8000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld, var=%u.\n", buf, 0x26u);
  }

  return v4;
}

uint64_t ACMKernelControl(int a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v6 = "ACMLib";
    v7 = 2080;
    v8 = "ACMKernelControl";
    _os_log_impl(&dword_254BA8000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v2 = LibCall_ACMKernelControl_Block(ioKitTransport);
  if (v2)
  {
    v3 = 70;
  }

  else
  {
    v3 = 10;
  }

  if (v3 >= _logLevel && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v6 = "ACMLib";
    v7 = 2080;
    v8 = "ACMKernelControl";
    v9 = 2048;
    v10 = v2;
    v11 = 1024;
    v12 = a1;
    _os_log_impl(&dword_254BA8000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld, code=%u.\n", buf, 0x26u);
  }

  return v2;
}

void ACMGlobalContextCredentialGetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = a1;
  v11 = *MEMORY[0x277D85DE8];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v8 = "ACMLib";
    v9 = 2080;
    v10 = "ACMGlobalContextCredentialGetProperty";
    _os_log_impl(&dword_254BA8000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v6 = 0;
  LibCall_ACMGlobalContextCredentialGetProperty_Block(ioKitTransport, &v6, v5, v4, a3);
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v8 = "ACMLib";
    v9 = 2080;
    v10 = "ACMGlobalContextCredentialGetProperty";
    _os_log_impl(&dword_254BA8000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: returning.\n", buf, 0x16u);
  }
}

void ACMContextCredentialGetProperty(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v6 = a2;
  v30 = *MEMORY[0x277D85DE8];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "ACMLib";
    *&buf[12] = 2080;
    *&buf[14] = "ACMContextCredentialGetProperty";
    _os_log_impl(&dword_254BA8000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  memset(buf, 0, sizeof(buf));
  v10 = 256;
  if (a4)
  {
    v9 = a1;
    v8 = LibCall_ACMContextCredentialGetProperty(ioKitTransport, &v9, a1, v6, v5, buf, &v10);
    (*(a4 + 16))(a4, v8, buf, v10);
  }

  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *v11 = 136315394;
    v12 = "ACMLib";
    v13 = 2080;
    v14 = "ACMContextCredentialGetProperty";
    _os_log_impl(&dword_254BA8000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: returning.\n", v11, 0x16u);
  }
}

uint64_t ACMContextSetData(uint64_t a1, int a2, int a3, int a4)
{
  v17 = *MEMORY[0x277D85DE8];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v11 = 136315394;
    v12 = "ACMLib";
    v13 = 2080;
    v14 = "ACMContextSetData";
    _os_log_impl(&dword_254BA8000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: called.\n", &v11, 0x16u);
  }

  v8 = ACMContextSetDataEx(a1, a2, 0, 0, a3, a4);
  if (v8)
  {
    v9 = 70;
  }

  else
  {
    v9 = 10;
  }

  if (v9 >= _logLevel && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v11 = 136315650;
    v12 = "ACMLib";
    v13 = 2080;
    v14 = "ACMContextSetData";
    v15 = 2048;
    v16 = v8;
    _os_log_impl(&dword_254BA8000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", &v11, 0x20u);
  }

  return v8;
}

uint64_t ACMContextSetDataEx(uint64_t a1, int a2, int a3, int a4, int a5, int a6)
{
  v20 = *MEMORY[0x277D85DE8];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "ACMLib";
    *&buf[12] = 2080;
    *&buf[14] = "ACMContextSetDataEx";
    _os_log_impl(&dword_254BA8000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v12 = LibCall_ACMContextSetData(ioKitTransport, &v16, a1, a2, a3, a4, a5, a6, v15, a1, *buf, *&buf[8], *&buf[16], v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);
  if (v12)
  {
    v13 = 70;
  }

  else
  {
    v13 = 10;
  }

  if (v13 >= _logLevel && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    *&buf[4] = "ACMLib";
    *&buf[12] = 2080;
    *&buf[14] = "ACMContextSetDataEx";
    *&buf[22] = 2048;
    v18 = v12;
    _os_log_impl(&dword_254BA8000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  return v12;
}

uint64_t ACMContextGetData(uint64_t a1, int a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "ACMLib";
    v11 = 2080;
    v12 = "ACMContextGetData";
    _os_log_impl(&dword_254BA8000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: called.\n", &v9, 0x16u);
  }

  Data = ACMContextGetDataEx(a1, a2, 0, 0, a3);
  if (Data)
  {
    v7 = 70;
  }

  else
  {
    v7 = 10;
  }

  if (v7 >= _logLevel && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = 136315650;
    v10 = "ACMLib";
    v11 = 2080;
    v12 = "ACMContextGetData";
    v13 = 2048;
    v14 = Data;
    _os_log_impl(&dword_254BA8000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", &v9, 0x20u);
  }

  return Data;
}

uint64_t ACMContextGetDataProperty(uint64_t a1, unsigned __int16 a2, unsigned __int16 a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v11 = 136315394;
    v12 = "ACMLib";
    v13 = 2080;
    v14 = "ACMContextGetDataProperty";
    _os_log_impl(&dword_254BA8000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: called.\n", &v11, 0x16u);
  }

  Data = ACMContextGetData(a1, a2 | (a3 << 16), a4);
  if (Data)
  {
    v9 = 70;
  }

  else
  {
    v9 = 10;
  }

  if (v9 >= _logLevel && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v11 = 136315650;
    v12 = "ACMLib";
    v13 = 2080;
    v14 = "ACMContextGetDataProperty";
    v15 = 2048;
    v16 = Data;
    _os_log_impl(&dword_254BA8000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", &v11, 0x20u);
  }

  return Data;
}

uint64_t ACMContextCopyData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = *MEMORY[0x277D85DE8];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v15 = "ACMLib";
    v16 = 2080;
    v17 = "ACMContextCopyData";
    _os_log_impl(&dword_254BA8000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v13 = 0;
  v10 = LibCall_ACMContextCopyData(ioKitTransport, &v13, a1, a2, a3, a4);
  if (v10)
  {
    v11 = 70;
  }

  else
  {
    v11 = 10;
  }

  if (v11 >= _logLevel && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v15 = "ACMLib";
    v16 = 2080;
    v17 = "ACMContextCopyData";
    v18 = 2048;
    v19 = v10;
    _os_log_impl(&dword_254BA8000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  return v10;
}

uint64_t ACMContextGetInfo(__int128 *a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v16 = *MEMORY[0x277D85DE8];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "ACMLib";
    v12 = 2080;
    v13 = "ACMContextGetInfo";
    _os_log_impl(&dword_254BA8000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v9 = a1;
  v6 = LibCall_ACMContextGetInfo(ioKitTransport, &v9, a1, v4, a3);
  if (v6)
  {
    v7 = 70;
  }

  else
  {
    v7 = 10;
  }

  if (v7 >= _logLevel && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v11 = "ACMLib";
    v12 = 2080;
    v13 = "ACMContextGetInfo";
    v14 = 2048;
    v15 = v6;
    _os_log_impl(&dword_254BA8000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  return v6;
}

void updateLogLevelFromKext()
{
  v7 = *MEMORY[0x277D85DE8];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v4 = "ACMLib";
    v5 = 2080;
    v6 = "updateLogLevelFromKext";
    _os_log_impl(&dword_254BA8000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  output = 0;
  outputCnt = 1;
  if (IOConnectCallScalarMethod(dword_281535EF4[0], 2u, 0, 0, &output, &outputCnt))
  {
    goto LABEL_12;
  }

  v0 = output;
  _logLevel = output;
  if (output <= 0x1EuLL && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    updateLogLevelFromKext_cold_1();
LABEL_12:
    v0 = _logLevel;
  }

  if (v0 <= 0xA && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v4 = "ACMLib";
    v5 = 2080;
    v6 = "updateLogLevelFromKext";
    _os_log_impl(&dword_254BA8000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: %s: returning.\n", buf, 0x16u);
  }
}

uint64_t OUTLINED_FUNCTION_17_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, size_t a5)
{

  return performCommand(a1, a2, 0, v5, a5, 0, 0);
}

uint64_t ioKitTransport(uint64_t *a1, uint64_t a2, uint64_t a3, const void *a4, size_t a5, void *a6, size_t *a7)
{
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v14, v15, v16, v17, v18, 0x16u);
  }

  if (a1)
  {
    v19 = init();
    v20 = 70;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = performCommand(*a1, a2, a3, a4, a5, a6, a7);
      if (v21)
      {
        v20 = 70;
      }

      else
      {
        v20 = 10;
      }
    }
  }

  else
  {
    v20 = 70;
    v21 = 4294967293;
  }

  if (v20 >= _logLevel && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v22, v23, v24, v25, v26, 0x20u);
  }

  return v21;
}

uint64_t init()
{
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_5_2();
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v0, v1, v2, v3, v4, 0x16u);
  }

  if (_MergedGlobals)
  {
    v5 = 0;
  }

  else
  {
    v6 = *MEMORY[0x277CD28A0];
    v7 = IOServiceMatching("AppleCredentialManager");
    MatchingService = IOServiceGetMatchingService(v6, v7);
    if (!MatchingService)
    {
      v10 = 70;
      v5 = 4294967291;
      goto LABEL_10;
    }

    v9 = MatchingService;
    v5 = IOServiceOpen(MatchingService, *MEMORY[0x277D85F48], 0, dword_281535EF4);
    if (v5)
    {
      v10 = 70;
      goto LABEL_10;
    }

    IOObjectRelease(v9);
    _MergedGlobals = 1;
  }

  v10 = 10;
LABEL_10:
  if (v10 >= _logLevel && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v11, v12, v13, v14, v15, 0x20u);
  }

  return v5;
}

uint64_t performCommand(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, size_t a5, void *a6, size_t *a7)
{
  v11 = a3;
  v12 = a2;
  v50 = *MEMORY[0x277D85DE8];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_4_2();
    _os_log_impl(v13, v14, v15, v16, v17, 0x16u);
  }

  inputStructCnt = 0;
  v18 = LibCall_BuildCommand(v12, 0, v11, a4, a5, &inputStructCnt);
  if (v18)
  {
    v19 = v18;
    if (!a6 && a7)
    {
      v21 = 4294967293;
    }

    else
    {
      if (a7)
      {
        v20 = *a7;
      }

      else
      {
        v20 = 0;
      }

      v41 = v20;
      v21 = IOConnectCallStructMethod(dword_281535EF4[0], 0, v18, inputStructCnt, a6, &v41);
      if (v21)
      {
        if (_logLevel <= 0x46u && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          OUTLINED_FUNCTION_6_1();
          OUTLINED_FUNCTION_27();
          v46 = v22;
          v47 = v21;
          v48 = v22;
          v49 = v21;
          OUTLINED_FUNCTION_4_2();
          _os_log_impl(v23, v24, v25, v26, v27, 0x2Eu);
        }
      }

      else
      {
        if (_logLevel <= 0x28u && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          OUTLINED_FUNCTION_6_1();
          OUTLINED_FUNCTION_27();
          OUTLINED_FUNCTION_4_2();
          _os_log_impl(v28, v29, v30, v31, v32, 0x22u);
        }

        v21 = 0;
        if (a7)
        {
          *a7 = v41;
        }
      }
    }

    v33 = inputStructCnt;
    acm_mem_free_info("<data>", v19, inputStructCnt, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 134, "performCommand");
    acm_mem_free_data(v19, v33);
    if (v21)
    {
      v34 = 70;
    }

    else
    {
      v34 = 10;
    }
  }

  else
  {
    v34 = 70;
    v21 = 4294967291;
  }

  if (v34 >= _logLevel && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v43 = 136315650;
    v44 = "ACMLib";
    OUTLINED_FUNCTION_13_1();
    v45 = "performCommand";
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_4_2();
    _os_log_impl(v35, v36, v37, v38, v39, 0x20u);
  }

  return v21;
}

void updateLogLevelFromKext_cold_1()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_8_1();
  _os_log_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

uint64_t LibCall_ACMContextDelete(void (*a1)(uint64_t, uint64_t, void, const void *, uint64_t, void, void), uint64_t a2, void *a3, int a4)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMContextDelete");
  }

  if (a1 && a3)
  {
    if (a4)
    {
      a1(a2, 2, 0, a3, 16, 0, 0);
    }

    goto LABEL_7;
  }

  if (a3)
  {
LABEL_7:
    acm_mem_free_info("ACMHandleWithPayload", a3, 0x14uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 172, "LibCall_ACMContextDelete");
    acm_mem_free(a3, 0x14uLL);
    v8 = 0;
    v9 = 10;
    goto LABEL_8;
  }

  v9 = 70;
  v8 = 4294967293;
LABEL_8:
  if (v9 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMContextDelete", v8);
  }

  return v8;
}

uint64_t LibCall_ACMKernelControl(uint64_t (*a1)(uint64_t, uint64_t, void, char *, size_t, uint64_t, uint64_t), uint64_t a2, int a3, const void *a4, size_t a5, uint64_t a6, uint64_t a7)
{
  v13 = a1;
  v20[1] = *MEMORY[0x277D85DE8];
  if (gACMLoggingLevel <= 0xAu)
  {
    a1 = printf("%s: %s: called.\n", "ACM", "LibCall_ACMKernelControl");
  }

  if (!v13)
  {
    goto LABEL_16;
  }

  v14 = a5 != 0;
  if (a4)
  {
    v14 = a5 - 4097 < 0xFFFFFFFFFFFFF000;
  }

  if (v14)
  {
LABEL_16:
    v18 = 70;
    v17 = 4294967293;
  }

  else
  {
    v20[0] = v20;
    MEMORY[0x28223BE20](a1);
    v15 = (v20 - ((a5 + 19) & 0xFFFFFFFFFFFFFFF0));
    bzero(v15, a5 + 4);
    *v15 = a3;
    v16 = v15 + 1;
    if (a5)
    {
      memcpy(v15 + 1, a4, a5);
      v16 = (v16 + a5);
    }

    if (v16 != (v15 + a5 + 4))
    {
      LibCall_ACMKernelControl_cold_1();
    }

    v17 = v13(a2, 26, 0, v20 - ((a5 + 19) & 0xFFFFFFFFFFFFFFF0), a5 + 4, a6, a7);
    if (v17)
    {
      v18 = 70;
    }

    else
    {
      v18 = 10;
    }
  }

  if (v18 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMKernelControl", v17);
  }

  return v17;
}

void *OUTLINED_FUNCTION_9_2()
{

  return acm_mem_alloc_typed(0x14uLL, 0x1000040A86A77D5uLL);
}

void OUTLINED_FUNCTION_37(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  LibCall_ACMSetEnvironmentVariable();
}

uint64_t processAclCommandInternal(uint64_t (*a1)(uint64_t, void, void, const void *, size_t, _DWORD *, unint64_t *), uint64_t a2, int a3, _OWORD *a4, unsigned __int8 *a5, uint64_t a6, unsigned __int8 *a7, uint64_t a8, const void *a9, unsigned int a10, unsigned int a11, _DWORD *a12, BOOL *a13, void *a14, unint64_t *a15)
{
  v19 = gACMLoggingLevel;
  v20 = "processAclCommandInternal";
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "processAclCommandInternal");
    v19 = gACMLoggingLevel;
  }

  if (v19 <= 0x14)
  {
    printf("%s: %s: command = %u.\n", "ACM", "processAclCommandInternal", a3);
    OUTLINED_FUNCTION_10_2();
    if (!(!v28 & v21))
    {
      printf("%s: %s: context = %p.\n", "ACM", "processAclCommandInternal", a4);
      OUTLINED_FUNCTION_10_2();
      if (!(!v28 & v21))
      {
        printf("%s: %s: acl = %p, aclLength = %zu.\n", "ACM", "processAclCommandInternal", a5, a6);
        OUTLINED_FUNCTION_10_2();
        if (!(!v28 & v21))
        {
          printf("%s: %s (len=%u): acl:", "ACM", "processAclCommandInternal", a6);
          v19 = gACMLoggingLevel;
        }
      }
    }
  }

  if (a6)
  {
    v22 = a6;
    v23 = a5;
    do
    {
      if (v19 <= 0x14)
      {
        printf("%02x ", *v23);
        v19 = gACMLoggingLevel;
      }

      ++v23;
      --v22;
    }

    while (v22);
  }

  if (v19 < 0x15)
  {
    putchar(10);
    OUTLINED_FUNCTION_10_2();
    if (!(!v28 & v21))
    {
      printf("%s: %s: operation = %p, operationLength = %zu.\n", "ACM", "processAclCommandInternal", a7, a8);
      OUTLINED_FUNCTION_10_2();
      if (!(!v28 & v21))
      {
        printf("%s: %s (len=%u): operation:", "ACM", "processAclCommandInternal", a8);
        v19 = gACMLoggingLevel;
      }
    }
  }

  v42 = a3;
  if (a8)
  {
    v24 = a8;
    v25 = a7;
    do
    {
      if (v19 <= 0x14)
      {
        printf("%02x ", *v25);
        v19 = gACMLoggingLevel;
      }

      ++v25;
      --v24;
    }

    while (v24);
  }

  if (v19 < 0x15)
  {
    putchar(10);
    OUTLINED_FUNCTION_10_2();
    if (!(!v28 & v21))
    {
      printf("%s: %s: parameters = %p, parameterCount = %u.\n", "ACM", "processAclCommandInternal", a9, a10);
      OUTLINED_FUNCTION_10_2();
      if (!(!v28 & v21))
      {
        printf("%s: %s: maxGlobalCredentialAge = %u.\n", "ACM", "processAclCommandInternal", a11);
        OUTLINED_FUNCTION_10_2();
        if (!(!v28 & v21))
        {
          printf("%s: %s: constraintState = %p.\n", "ACM", "processAclCommandInternal", a12);
          OUTLINED_FUNCTION_10_2();
          if (!(!v28 & v21))
          {
            printf("%s: %s: requirePasscode = %p.\n", "ACM", "processAclCommandInternal", a13);
          }
        }
      }
    }
  }

  if (a7 || a9 || a12)
  {
    if (a5)
    {
      v28 = a6 == 0;
    }

    else
    {
      v28 = 1;
    }

    v29 = v28;
    OUTLINED_FUNCTION_31_0();
    if (!a7)
    {
      goto LABEL_79;
    }

    if (!a8)
    {
      goto LABEL_79;
    }

    if (v29)
    {
      goto LABEL_79;
    }

    v20 = 4294967293;
    if ((a9 != 0) == (a10 == 0) || !a12)
    {
      goto LABEL_79;
    }

    v48 = 0;
    v47 = 4096;
    if (gACMLoggingLevel <= 0xAu)
    {
      printf("%s: %s: called.\n", "ACM", "processAclInternal");
    }

    SerializedProcessAclSize = GetSerializedProcessAclSize(a4, a5, a6, a7, a8, a11, a9, a10, &v48);
    if (SerializedProcessAclSize)
    {
      v20 = SerializedProcessAclSize;
      v40 = 70;
      goto LABEL_74;
    }

    v31 = v48;
    v32 = acm_mem_alloc_data(v48);
    acm_mem_alloc_info("<data>", v32, v31, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 1841, "processAclInternal");
    if (!v32)
    {
      v40 = 70;
      v20 = 4294967292;
      goto LABEL_74;
    }

    v47 = 4096;
    v33 = acm_mem_alloc_data(0x1000uLL);
    acm_mem_alloc_info("<data>", v33, 4096, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 1845, "processAclInternal");
    if (!v33)
    {
      v37 = 0;
      v36 = 0;
      v20 = 4294967292;
      goto LABEL_68;
    }

    v34 = SerializeProcessAcl(a4, a5, a6, a7, a8, a11, a9, a10, v32, &v48);
    if (v34 || (v34 = a1(a2, v42, 0, v32, v48, v33, &v47), v34))
    {
      v20 = v34;
      v36 = 0;
      v37 = 0;
      goto LABEL_67;
    }

    v35 = v47;
    if (v47 >= 8)
    {
      *a12 = *v33;
      if (a13)
      {
        *a13 = v33[1] != 0;
      }

      v20 = 0;
      v36 = 0;
      if (v42 != 30 || !a14)
      {
        v37 = 0;
        goto LABEL_67;
      }

      v37 = 0;
      if (!a15)
      {
LABEL_67:
        acm_mem_free_info("<data>", v33, 0x1000uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 1882, "processAclInternal");
        acm_mem_free_data(v33, 0x1000uLL);
LABEL_68:
        acm_mem_free_info("<data>", v32, v48, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 1886, "processAclInternal");
        v38 = OUTLINED_FUNCTION_18_1();
        acm_mem_free_data(v38, v39);
        if (v20 && v37)
        {
          acm_mem_free_info("<data>", v37, v36, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 1890, "processAclInternal");
          acm_mem_free_data(v37, v36);
          v40 = 70;
        }

        else if (v20)
        {
          v40 = 70;
        }

        else
        {
          v40 = 10;
        }

LABEL_74:
        if (v40 >= gACMLoggingLevel)
        {
          printf("%s: %s: returning, err = %ld.\n", "ACM", "processAclInternal", v20);
        }

        goto LABEL_76;
      }

      if (v35 >= 0xC)
      {
        v36 = v33[2];
        if (v36)
        {
          if (v35 >= v36 + 12)
          {
            v37 = acm_mem_alloc_data(v33[2]);
            acm_mem_alloc_info("<data>", v37, v36, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 1870, "processAclInternal");
            if (v37)
            {
              memcpy(v37, v33 + 3, v36);
              v20 = 0;
              *a14 = v37;
              *a15 = v36;
            }

            else
            {
              v20 = 4294967292;
            }

            goto LABEL_67;
          }

          goto LABEL_84;
        }

        v36 = 0;
        v37 = 0;
        v20 = 0;
        goto LABEL_67;
      }
    }

    v36 = 0;
LABEL_84:
    v37 = 0;
    v20 = 4294967291;
    goto LABEL_67;
  }

  if (a4)
  {
    OUTLINED_FUNCTION_31_0();
    goto LABEL_79;
  }

  OUTLINED_FUNCTION_31_0();
  if (a5 && a13 && a6)
  {
    aclRequiresPasscodeInternal();
    v20 = v27;
LABEL_76:
    if (v20)
    {
      v26 = 70;
    }

    else
    {
      v26 = 10;
    }
  }

LABEL_79:
  if (v26 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "processAclCommandInternal", v20);
  }

  return v20;
}

void aclRequiresPasscodeInternal()
{
  OUTLINED_FUNCTION_14_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v18 = *MEMORY[0x277D85DE8];
  v17 = 0;
  v16 = 4;
  v10 = v2;
  MEMORY[0x28223BE20](v8);
  v11 = (&v15 - ((v10 + 19) & 0x1FFFFFFF0));
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "aclRequiresPasscodeInternal");
  }

  bzero(&v15 - ((v10 + 19) & 0x1FFFFFFF0), v10 + 4);
  v12 = -3;
  if (v5 && v1)
  {
    *v11 = v3;
    memcpy(v11 + 1, v5, v10);
    v13 = v9(v7, 17, 0, &v15 - ((v10 + 19) & 0x1FFFFFFF0), v10 + 4, &v17, &v16);
    if (v13)
    {
      v12 = v13;
    }

    else if (v16 == 4)
    {
      v12 = 0;
      *v1 = 1;
    }

    else
    {
      v12 = -5;
    }
  }

  OUTLINED_FUNCTION_1_3();
  if (v14)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "aclRequiresPasscodeInternal", v12);
  }

  OUTLINED_FUNCTION_15_0();
}

void *acm_mem_alloc_data(size_t size)
{
  result = malloc_type_calloc(1uLL, size, 0x7F43DDCBuLL);
  if (result)
  {
    _allocatedMem_2 += size;
  }

  return result;
}

void acm_mem_free_data(void *a1, rsize_t a2)
{
  if (a1)
  {
    OUTLINED_FUNCTION_0(a1, a2);
    free(v3);
    v4 = _allocatedMem_2 - v2;
    if (_allocatedMem_2 < v2)
    {
      v4 = 0;
    }

    _allocatedMem_2 = v4;
  }
}

void *acm_mem_alloc_typed(size_t size, malloc_type_id_t type_id)
{
  result = malloc_type_calloc(1uLL, size, type_id);
  if (result)
  {
    _allocatedMem_3 += size;
  }

  return result;
}

void acm_mem_free(void *a1, rsize_t a2)
{
  if (a1)
  {
    OUTLINED_FUNCTION_0(a1, a2);
    free(v3);
    v4 = _allocatedMem_3 - v2;
    if (_allocatedMem_3 < v2)
    {
      v4 = 0;
    }

    _allocatedMem_3 = v4;
  }
}

uint64_t GetSerializedVerifyPolicySize()
{
  result = OUTLINED_FUNCTION_15();
  if (v5)
  {
    if (v1)
    {
      v6 = v4;
      if (v4)
      {
        v7 = v3;
        v8 = v2;
        v9 = strnlen(v1, 0x81uLL);
        if (v9 > 0x80)
        {
          return 4294967293;
        }

        else
        {
          v10 = v9;
          result = getLengthOfParameters(v8, v7, &v11);
          if (!result)
          {
            *v6 = v10 + v11 + 26;
          }
        }
      }
    }
  }

  return result;
}

uint64_t DeserializeVerifyPolicy(uint64_t a1)
{
  v25 = 0;
  result = OUTLINED_FUNCTION_15();
  v10 = v3 - 16;
  if (v3 >= 0x10)
  {
    if (a1)
    {
      if (v4)
      {
        v11 = v5;
        if (v5)
        {
          v12 = v6;
          if (v6)
          {
            v13 = v7;
            if (v7)
            {
              v14 = v8;
              if (v8)
              {
                v15 = v9;
                if (v9)
                {
                  v16 = v3;
                  *v4 = *a1;
                  v17 = strnlen((a1 + 16), v3 - 16);
                  v18 = v17;
                  if (v17 > 0x80uLL || v10 <= v17)
                  {
                    return 4294967293;
                  }

                  v19 = acm_mem_alloc_data(v17 + 1);
                  acm_mem_alloc_info("<data>", v19, v18 + 1, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 351, "DeserializeVerifyPolicy");
                  if (!v19)
                  {
                    return 4294967292;
                  }

                  memcpy(v19, (a1 + 16), v18 + 1);
                  v26 = v18 + 17;
                  if (v18 + 17 == v16 || (v20 = *(a1 + v18 + 17) != 0, v26 = v18 + 18, v16 - (v18 + 18) < 4))
                  {
                    v22 = 4294967293;
                  }

                  else
                  {
                    v23 = v15;
                    v21 = *(a1 + v18 + 18);
                    v26 = v18 + 22;
                    result = deserializeParameters(a1, v16, &v26, &v25, &v24);
                    if (!result)
                    {
                      *v11 = v19;
                      *v12 = v20;
                      *v13 = v21;
                      *v14 = v25;
                      *v23 = v24;
                      return result;
                    }

                    v22 = result;
                  }

                  acm_mem_free_info("<data>", v19, v18 + 1, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 380, "DeserializeVerifyPolicy");
                  acm_mem_free_data(v19, v18 + 1);
                  if (v25)
                  {
                    Util_SafeDeallocParameters(v25, v24);
                  }

                  return v22;
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

uint64_t GetSerializedVerifyAclConstraintSize(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, void *a11)
{
  result = OUTLINED_FUNCTION_15();
  if (v15)
  {
    if (a11)
    {
      if (a10 <= 0xA && (a9 != 0) == (a10 != 0))
      {
        v16 = v14;
        v17 = v13;
        result = getLengthOfParameters(a9, a10, &v21);
        if (!result)
        {
          v18 = 29;
          if (a1 == 32)
          {
            v18 = 33;
          }

          v19 = v18 + v17;
          if (a1 == 32)
          {
            v20 = v16;
          }

          else
          {
            v20 = 0;
          }

          *a11 = v19 + v20 + v21;
        }
      }
    }
  }

  return result;
}

uint64_t SerializeVerifyAclConstraint(int a1, _OWORD *a2, const void *a3, unsigned int a4, const void *a5, unsigned int a6, char a7, int a8, uint64_t a9, unsigned int a10, uint64_t a11, uint64_t *a12)
{
  if (!a3)
  {
    return 4294967293;
  }

  result = 4294967293;
  if (a12)
  {
    if (a11 && a10 <= 0xA && (a9 != 0) == (a10 != 0))
    {
      v30 = 0;
      result = getLengthOfParameters(a9, a10, &v30);
      if (!result)
      {
        v20 = 29;
        if (a1 == 32)
        {
          v20 = 33;
        }

        v21 = v20 + a4;
        if (a1 == 32)
        {
          v22 = a6;
        }

        else
        {
          v22 = 0;
        }

        if (*a12 < v21 + v22 + v30)
        {
          return 4294967293;
        }

        else
        {
          v23 = a8;
          if (a2)
          {
            *a11 = *a2;
          }

          else
          {
            *a11 = 0;
            *(a11 + 8) = 0;
          }

          *(a11 + 16) = a4;
          memcpy((a11 + 20), a3, a4);
          v24 = a4 + 20;
          if (a1 == 32)
          {
            *(a11 + v24) = a6;
            v25 = a4 + 24;
            memcpy((a11 + v25), a5, a6);
            v24 = v25 + a6;
          }

          v26 = a11 + v24;
          *v26 = a7;
          *(v26 + 1) = v23;
          v29 = v24 + 5;
          result = serializeParameters(a9, a10, a11, &v29);
          if (!result)
          {
            *a12 = v29;
          }
        }
      }
    }
  }

  return result;
}

uint64_t GetSerializedProcessAclSize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  result = OUTLINED_FUNCTION_15();
  if (v14)
  {
    v15 = v10;
    if (v10)
    {
      if (a9 && v13 <= 0xA && (v12 != 0) == (v13 != 0))
      {
        v16 = v11;
        result = getLengthOfParameters(v12, v13, &v17);
        if (!result)
        {
          *a9 = v15 + v16 + v17 + 36;
        }
      }
    }
  }

  return result;
}

uint64_t SerializeProcessAcl(_OWORD *a1, const void *a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t *a10)
{
  v21 = 0;
  result = 4294967293;
  if (a2)
  {
    v12 = a3;
    if (a3)
    {
      v13 = a8;
      if (a10)
      {
        if (a9)
        {
          if (a8 <= 0xA && (a7 != 0) == (a8 != 0))
          {
            v15 = a6;
            v16 = a5;
            result = GetSerializedProcessAclSize(4294967293, a2, a3, a4, a5, a6, a7, a8, &v21);
            if (!result)
            {
              if (*a10 < v21)
              {
                return 4294967293;
              }

              else
              {
                if (a1)
                {
                  *a9 = *a1;
                }

                else
                {
                  *a9 = 0;
                  *(a9 + 8) = 0;
                }

                *(a9 + 16) = v12;
                memcpy((a9 + 20), a2, v12);
                *(a9 + v12 + 20) = v16;
                v19 = v12 + 24;
                if (v16)
                {
                  memcpy((a9 + v19), a4, v16);
                  v19 += v16;
                }

                *(a9 + v19) = v15;
                v20 = v19 + 4;
                result = serializeParameters(a7, v13, a9, &v20);
                if (!result)
                {
                  *a10 = v20;
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

void GetSerializedRequirementSize(uint64_t a1, uint64_t a2, void *a3)
{
  v26 = 0;
  if (a2 && a3 && *a2 <= 0x1Cu)
  {
    OUTLINED_FUNCTION_6();
    if (v8)
    {
      if ((v7 & 0x30) != 0)
      {
        *a3 = 20;
        while (*(a2 + 16))
        {
          GetSerializedRequirementSize(a1, *(a2 + 20), &v26);
          if (v9)
          {
            break;
          }

          OUTLINED_FUNCTION_8(v9, v10, v11, v12, v13, v14, v15, v16, v25, v26);
        }
      }

      else if (v6 == 7)
      {
        *a3 = 24;
        while (*(a2 + 20))
        {
          GetSerializedRequirementSize(a1, *(a2 + 24), &v26);
          if (v17)
          {
            break;
          }

          OUTLINED_FUNCTION_8(v17, v18, v19, v20, v21, v22, v23, v24, v25, v26);
        }
      }
    }

    else
    {
      *a3 = getRequirementDataSizeForVersion(a1, a2) + 16;
    }
  }
}

uint64_t GetSerializedCredentialSize(_DWORD *a1, void *a2)
{
  result = 4294967293;
  if (a1 && a2 && *a1 <= 0x17u && ((1 << *a1) & 0xFFF7FE) != 0)
  {
    result = 0;
    *a2 = a1[7] + 32;
  }

  return result;
}

uint64_t SerializeCredential(unsigned int *__src, void *__dst, size_t *a3)
{
  result = 4294967293;
  if (__src && __dst && a3)
  {
    v6 = *__src;
    if (*__src <= 0x17 && ((1 << *__src) & 0xFFF7FE) != 0)
    {
      v8 = __src[7] + 32;
      if (v8 <= *a3 && v6 <= 0x17 && ((1 << v6) & 0xFFF7FE) != 0)
      {
        memcpy(__dst, __src, v8);
        result = 0;
        *a3 = __src[7] + 32;
      }
    }
  }

  return result;
}

void DeserializeCredential(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *__dst, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_10();
  a19 = v20;
  a20 = v25;
  __dst = 0;
  if (v22 >= 0x20)
  {
    v26 = v21;
    if (v21)
    {
      v27 = v23;
      if (v23)
      {
        v28 = v24;
        if (v24)
        {
          v29 = *v21;
          v30 = v22;
          v31 = v21[7];
          switch(*v21)
          {
            case 1u:
              if (v31 == 28)
              {
                goto LABEL_7;
              }

              break;
            case 2u:
              if (v31 == 136)
              {
                goto LABEL_7;
              }

              break;
            case 3u:
              if (v31 == 305)
              {
                goto LABEL_7;
              }

              break;
            case 4u:
            case 5u:
            case 6u:
            case 8u:
            case 0xEu:
            case 0x10u:
            case 0x13u:
            case 0x16u:
            case 0x17u:
              if (!v31)
              {
                goto LABEL_7;
              }

              break;
            case 7u:
              if (v31 == 56)
              {
                goto LABEL_7;
              }

              break;
            case 9u:
              if (v31 == 24)
              {
                goto LABEL_7;
              }

              break;
            case 0xAu:
              if (v31 == 52)
              {
                goto LABEL_7;
              }

              break;
            case 0xCu:
            case 0xFu:
              if (v31 == 8)
              {
                goto LABEL_7;
              }

              break;
            case 0xDu:
            case 0x15u:
              if (v31 == 132)
              {
                goto LABEL_7;
              }

              break;
            case 0x11u:
              if (v31 == 81)
              {
                goto LABEL_7;
              }

              break;
            case 0x12u:
              if (v31 == 20)
              {
                goto LABEL_7;
              }

              break;
            case 0x14u:
              if (v31 != 32)
              {
                break;
              }

LABEL_7:
              if (!Util_AllocCredential(*v21, &__dst))
              {
                if (!__dst)
                {
                  break;
                }

                if (__dst[1] <= 3u && __dst[2] <= 0x100u && v29 <= 0x17 && ((1 << v29) & 0xFFF7FE) != 0 && v31 + 32 <= v30)
                {
                  memcpy(__dst, v26, v31 + 32);
                  *v27 = __dst;
                  *v28 = v31 + 32;
                  break;
                }

                goto LABEL_15;
              }

              if (__dst)
              {
LABEL_15:
                Util_DeallocCredential(__dst);
                break;
              }

              break;
            default:
              break;
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_11();
}

uint64_t CopyCredential(unsigned int *a1, void **a2)
{
  __dst = 0;
  v2 = 4294967293;
  if (a1 && a2)
  {
    v2 = Util_AllocCredential(*a1, &__dst);
    if (v2)
    {
      if (__dst)
      {
        Util_DeallocCredential(__dst);
      }
    }

    else if (__dst)
    {
      memcpy(__dst, a1, a1[7] + 32);
      v2 = 0;
      *a2 = __dst;
    }

    else
    {
      return 4294967292;
    }
  }

  return v2;
}

uint64_t CompareCredentials(char *__s1, _DWORD *__s2, BOOL *a3)
{
  result = 4294967293;
  if (__s1)
  {
    v5 = __s2;
    if (__s2)
    {
      if (a3)
      {
        if (*__s1 == *__s2)
        {
          v7 = *(__s1 + 7);
          if (v7 == __s2[7])
          {
            switch(*__s1)
            {
              case 1:
                if (OUTLINED_FUNCTION_1())
                {
                  break;
                }

                v9 = __s1 + 44;
                __s2 = v5 + 11;
                goto LABEL_33;
              case 2:
                if (*(__s1 + 8) != __s2[8])
                {
                  break;
                }

                v8 = *(__s1 + 9);
                if (v8 != __s2[9])
                {
                  break;
                }

                v9 = __s1 + 40;
                __s2 += 10;
                goto LABEL_8;
              case 3:
                if (OUTLINED_FUNCTION_1())
                {
                  break;
                }

                v9 = __s1 + 104;
                __s2 = v5 + 26;
                goto LABEL_33;
              case 4:
              case 5:
              case 6:
              case 8:
              case 0xC:
              case 0xE:
              case 0xF:
              case 0x10:
              case 0x11:
              case 0x12:
              case 0x13:
              case 0x16:
              case 0x17:
                v8 = v7 + 32;
                v9 = __s1;
                goto LABEL_8;
              case 7:
                if (OUTLINED_FUNCTION_1() || memcmp(__s1 + 32, v5 + 8, 0x20uLL))
                {
                  break;
                }

                v9 = __s1 + 64;
                __s2 = v5 + 16;
                v8 = 24;
                goto LABEL_8;
              case 9:
                if (OUTLINED_FUNCTION_1())
                {
                  break;
                }

                v9 = __s1 + 40;
                __s2 = v5 + 10;
                goto LABEL_33;
              case 0xA:
                if (OUTLINED_FUNCTION_1() || memcmp(__s1 + 36, v5 + 9, 0x10uLL))
                {
                  break;
                }

                v9 = __s1 + 52;
                __s2 = v5 + 13;
LABEL_33:
                v8 = 16;
                goto LABEL_8;
              case 0xD:
                v8 = *(__s1 + 8);
                if (v8 != __s2[8])
                {
                  break;
                }

                v9 = __s1 + 36;
                __s2 += 9;
                goto LABEL_8;
              case 0x14:
                if (OUTLINED_FUNCTION_1())
                {
                  break;
                }

                v9 = __s1 + 32;
                __s2 = v5 + 8;
                v8 = 32;
                goto LABEL_8;
              case 0x15:
                if (OUTLINED_FUNCTION_1())
                {
                  break;
                }

                v9 = __s1 + 36;
                __s2 = v5 + 9;
                v8 = 128;
LABEL_8:
                v10 = memcmp(v9, __s2, v8) == 0;
                goto LABEL_30;
              default:
                return result;
            }
          }
        }

        v10 = 0;
LABEL_30:
        result = 0;
        *a3 = v10;
      }
    }
  }

  return result;
}

uint64_t GetSerializedAddCredentialSize(uint64_t a1, _DWORD *a2, int a3, void *a4)
{
  if (a1)
  {
    v4 = 1;
  }

  else
  {
    v4 = a3 == 2;
  }

  v5 = !v4;
  result = 4294967293;
  if (a4 && a2 && (v5 & 1) == 0 && *a2 <= 0x17u && ((1 << *a2) & 0xFFF7FE) != 0)
  {
    result = 0;
    *a4 = a2[7] + 52;
  }

  return result;
}

uint64_t SerializeAddCredential(_OWORD *a1, unsigned int *__src, int a3, uint64_t a4, void *a5)
{
  if (a1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a3 == 2;
  }

  v7 = !v6;
  result = 4294967293;
  if (a5)
  {
    if (a4)
    {
      if (__src)
      {
        if ((v7 & 1) == 0)
        {
          result = 4294967293;
          if (*__src <= 0x17 && ((1 << *__src) & 0xFFF7FE) != 0 && *a5 >= __src[7] + 52)
          {
            if (a1)
            {
              *a4 = *a1;
            }

            else
            {
              *a4 = 0;
              *(a4 + 8) = 0;
            }

            v13 = *a5 - 16;
            result = SerializeCredential(__src, (a4 + 16), &v13);
            if (!result)
            {
              v12 = v13;
              *(a4 + v13 + 16) = a3;
              *a5 = v12 + 20;
            }
          }
        }
      }
    }
  }

  return result;
}