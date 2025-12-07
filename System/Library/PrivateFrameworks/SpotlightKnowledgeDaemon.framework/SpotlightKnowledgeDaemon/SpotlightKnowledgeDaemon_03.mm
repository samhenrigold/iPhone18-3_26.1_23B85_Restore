uint64_t sub_231BFCCA8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD6E4F8, &unk_231C22A90);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_231C228D0;
  *(v3 + 56) = a1;
  *(v3 + 64) = &protocol witness table for AnyQuery;
  v4 = swift_allocObject();
  *(v3 + 32) = v4;
  sub_231BF8388(v1, v4 + 16);
  return v3;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_231BFCDAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_231BFCDF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t objectdestroy_3Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

SKDQuery __swiftcall SKDQuery.negated()()
{
  result.super.isa = sub_231C17E80();
  __break(1u);
  return result;
}

id sub_231BFD28C@<X0>(void *a1@<X8>)
{
  result = [*v1 negated];
  *a1 = result;
  return result;
}

uint64_t sub_231BFD2C8()
{
  v1 = [*v0 primitiveString];
  v2 = sub_231C17C60();

  return v2;
}

uint64_t sub_231BFD320()
{
  v1 = [*v0 primitiveAttributes];
  v2 = sub_231C17CE0();

  return v2;
}

id sub_231BFD380(void *a1)
{
  v1 = a1;
  sub_231BFD3E8();

  v2 = sub_231C17C50();

  return v2;
}

id sub_231BFD468(void *a1)
{
  v1 = a1;
  sub_231BFD4D0();

  v2 = sub_231C17CD0();

  return v2;
}

uint64_t sub_231BFD550(void *a1)
{
  v1 = a1;
  v2 = sub_231BFD584();

  return v2 & 1;
}

Class sub_231BFD608()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v6 = &v9 - v5;
  (*(v1 + 80))(v2, v1);
  swift_getAssociatedConformanceWitness();
  isa = QueryProtocol.erasedToSKDQuery()().super.isa;
  (*(v4 + 8))(v6, AssociatedTypeWitness);
  return isa;
}

Class sub_231BFD7EC(void *a1)
{
  v1 = a1;
  v2 = sub_231BFD608();

  return v2;
}

id _s24SpotlightKnowledgeDaemon9SchedulerC20StaticBackgroundTaskCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_231BFD8CC(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  (*(*(*((*MEMORY[0x277D85000] & *v1) + 0x50) - 8) + 16))(&v1[*((*MEMORY[0x277D85000] & *v1) + 0x60)], a1);
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

unint64_t type metadata accessor for SKDQuery(uint64_t a1, uint64_t a2)
{
  result = qword_27DD6E6C8[0];
  if (!qword_27DD6E6C8[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_27DD6E6C8);
  }

  return result;
}

uint64_t sub_231BFD9E0(uint64_t a1)
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

uint64_t sub_231BFDBAC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_231BF70F8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_231BFDBDC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_231BFDC30(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_231BFDC84(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 2037149295 && a2 == 0xE400000000000000;
  if (v3 || (sub_231C17F40() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x70656378456C6C61 && a2 == 0xE900000000000074)
  {

    return 1;
  }

  else
  {
    v6 = sub_231C17F40();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_231BFDD90(char a1)
{
  sub_231C17FC0();
  MEMORY[0x238376CE0](a1 & 1);
  return sub_231C17FE0();
}

uint64_t sub_231BFDDD8(char a1)
{
  if (a1)
  {
    return 0x70656378456C6C61;
  }

  else
  {
    return 2037149295;
  }
}

uint64_t sub_231BFDE0C(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_231C17F40();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_231BFDEAC(uint64_t a1)
{
  sub_231C17FC0();
  sub_231BFDD68(v3, *v1);
  return sub_231C17FE0();
}

uint64_t sub_231BFDF04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_231BFDC84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_231BFDF30@<X0>(_BYTE *a2@<X8>)
{
  result = sub_231BFF9C0();
  *a2 = result;
  return result;
}

uint64_t sub_231BFDF5C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_231BFDFB0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_231BFE004(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_231BFE058(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_231BFE0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a4;
  v38 = a1;
  v5 = *(a3 - 8);
  v39 = a2;
  v40 = v5;
  v6 = MEMORY[0x28223BE20](a1);
  v35 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v34 = &v33 - v8;
  v11 = type metadata accessor for SetComplementSelection(0, v9, v9, v10);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v33 - v16;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v19 = *(TupleTypeMetadata2 - 8);
  v20 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v22 = &v33 - v21;
  v23 = *(v20 + 48);
  v36 = v12;
  v24 = *(v12 + 16);
  v24(&v33 - v21, v38, v11);
  v24(&v22[v23], v39, v11);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v24(v17, v22, v11);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v30 = v40;
      v31 = v34;
      (*(v40 + 32))(v34, &v22[v23], a3);
      v27 = sub_231C17C40();
      v28 = *(v30 + 8);
      v28(v31, a3);
      v29 = v17;
      goto LABEL_6;
    }

LABEL_8:
    (*(v40 + 8))(v17, a3);
    v27 = 0;
    v11 = TupleTypeMetadata2;
    goto LABEL_9;
  }

  v24(v15, v22, v11);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v17 = v15;
    goto LABEL_8;
  }

  v25 = v40;
  v26 = v35;
  (*(v40 + 32))(v35, &v22[v23], a3);
  v27 = sub_231C17C40();
  v28 = *(v25 + 8);
  v28(v26, a3);
  v29 = v15;
LABEL_6:
  v28(v29, a3);
  v19 = v36;
LABEL_9:
  (*(v19 + 8))(v22, v11);
  return v27 & 1;
}

uint64_t sub_231BFE46C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a4;
  v5 = *(a2 + 16);
  v51 = a2;
  v48 = type metadata accessor for SetComplementSelection.AllExceptCodingKeys(255, v5, a3, a4);
  WitnessTable = swift_getWitnessTable();
  v7 = sub_231C17F30();
  v49 = *(v7 - 8);
  v50 = v7;
  MEMORY[0x28223BE20](v7);
  v47 = &v38 - v8;
  v11 = type metadata accessor for SetComplementSelection.OnlyCodingKeys(255, v5, v9, v10);
  v12 = swift_getWitnessTable();
  v43 = v11;
  v41 = v12;
  v13 = sub_231C17F30();
  v44 = *(v13 - 8);
  v45 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v42 = &v38 - v15;
  v52 = *(v5 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v40 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v39 = &v38 - v19;
  v20 = *(a2 - 8);
  MEMORY[0x28223BE20](v18);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SetComplementSelection.CodingKeys(255, v5, v23, v24);
  swift_getWitnessTable();
  v53 = sub_231C17F30();
  v55 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v26 = &v38 - v25;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v27 = v52;
  sub_231C18000();
  (*(v20 + 16))(v22, v54, v51);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v29 = *(v27 + 32);
  if (EnumCaseMultiPayload == 1)
  {
    v30 = v40;
    v29(v40, v22, v5);
    v58 = 1;
    v31 = v47;
    v32 = v53;
    sub_231C17F10();
    v33 = v50;
    sub_231C17F20();
    (*(v49 + 8))(v31, v33);
    v34 = v30;
  }

  else
  {
    v34 = v39;
    v29(v39, v22, v5);
    v57 = 0;
    v35 = v42;
    v32 = v53;
    sub_231C17F10();
    v36 = v45;
    sub_231C17F20();
    (*(v44 + 8))(v35, v36);
  }

  (*(v27 + 8))(v34, v5);
  return (*(v55 + 8))(v26, v32);
}

uint64_t sub_231BFE988@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>, uint64_t a5@<X3>)
{
  v70 = a4;
  v71 = a3;
  v7 = type metadata accessor for SetComplementSelection.AllExceptCodingKeys(255, a2, a3, a5);
  WitnessTable = swift_getWitnessTable();
  v68 = v7;
  v63 = sub_231C17F00();
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v69 = &v56 - v8;
  v11 = type metadata accessor for SetComplementSelection.OnlyCodingKeys(255, a2, v9, v10);
  v12 = swift_getWitnessTable();
  v65 = v11;
  v64 = v12;
  v61 = sub_231C17F00();
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v66 = &v56 - v13;
  type metadata accessor for SetComplementSelection.CodingKeys(255, a2, v14, v15);
  swift_getWitnessTable();
  v16 = sub_231C17F00();
  v74 = *(v16 - 8);
  v75 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v56 - v17;
  v73 = a2;
  v21 = type metadata accessor for SetComplementSelection(0, a2, v19, v20);
  v59 = *(v21 - 8);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v56 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v56 - v28;
  v30 = a1;
  v31 = a1[3];
  v81 = v30;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  v72 = v18;
  v32 = v76;
  sub_231C17FF0();
  if (!v32)
  {
    v58 = v24;
    v76 = v27;
    v57 = v29;
    v33 = v72;
    v34 = v75;
    *&v77 = sub_231C17EF0();
    sub_231C17CC0();
    swift_getWitnessTable();
    *&v79 = sub_231C17DD0();
    *(&v79 + 1) = v35;
    *&v80 = v36;
    *(&v80 + 1) = v37;
    sub_231C17DC0();
    swift_getWitnessTable();
    sub_231C17D00();
    v38 = v77;
    if (v77 == 2 || (v56 = v79, v77 = v79, v78 = v80, (sub_231C17D10() & 1) == 0))
    {
      v43 = sub_231C17E60();
      swift_allocError();
      v44 = v33;
      v46 = v45;
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DD6E750, &qword_231C23200);
      *v46 = v21;
      sub_231C17ED0();
      sub_231C17E50();
      (*(*(v43 - 8) + 104))(v46, *MEMORY[0x277D84160], v43);
      swift_willThrow();
      (*(v74 + 8))(v44, v34);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v38)
      {
        LOBYTE(v77) = 1;
        v39 = v69;
        sub_231C17EC0();
        v40 = v74;
        v41 = v58;
        v42 = v63;
        sub_231C17EE0();
        (*(v62 + 8))(v39, v42);
        (*(v40 + 8))(v33, v34);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v53 = v70;
      }

      else
      {
        LOBYTE(v77) = 0;
        v47 = v66;
        sub_231C17EC0();
        v48 = v33;
        v53 = v70;
        v49 = v74;
        v50 = v48;
        v41 = v76;
        v51 = v61;
        sub_231C17EE0();
        (*(v60 + 8))(v47, v51);
        (*(v49 + 8))(v50, v75);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
      }

      v54 = *(v59 + 32);
      v55 = v57;
      v54(v57, v41, v21);
      v54(v53, v55, v21);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v81);
}

uint64_t sub_231BFF13C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v12, a2);
  v13 = swift_getEnumCaseMultiPayload() == 1;
  (*(v5 + 32))(v8, v10, v4);
  MEMORY[0x238376CE0](v13);
  sub_231C17C20();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_231BFF2E4(uint64_t a1, uint64_t a2)
{
  sub_231C17FC0();
  sub_231BFF13C(v5, a1, a2);
  return sub_231C17FE0();
}

uint64_t sub_231BFF394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_231C17FC0();
  sub_231BFF13C(v6, a2, v4);
  return sub_231C17FE0();
}

uint64_t sub_231BFF454(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_231BFF4E4(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_231BFF5A8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_231BFF60C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_23;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 < 2)
    {
LABEL_23:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_23;
  }

LABEL_12:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void sub_231BFF718(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_37:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_37;
          }
        }

LABEL_34:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_23:
      a1[v5] = -a2;
      return;
    }

LABEL_22:
    if (!a2)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_22;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_23;
  }
}

uint64_t sub_231BFFAA4()
{
  v0 = sub_231C17BB0();
  __swift_allocate_value_buffer(v0, qword_27DD6E958);
  v1 = __swift_project_value_buffer(v0, qword_27DD6E958);
  if (qword_27DD6E2C8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27DD704F0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_231BFFB6C(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      if (*a1 != *a2 || v3 != v4)
      {
        return sub_231C17F40();
      }

      return 1;
    }

    return 0;
  }

  return !v4;
}

void sub_231BFFBB0(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + OBJC_IVAR___SKDSchedulerStaticBackgroundTask_identifier);
  v4 = *(a2 + OBJC_IVAR___SKDSchedulerStaticBackgroundTask_identifier + 8);
  sub_231BFFC80(v5, v4);
  if (!v2)
  {
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(a1 + 64);
    *(a1 + 64) = 0x8000000000000000;
    sub_231C02D20(1, 0, v5, v4, isUniquelyReferenced_nonNull_native);

    *(a1 + 64) = v7;
    swift_endAccess();
  }
}

void sub_231BFFC80(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = sub_231C17BF0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = v4[3];
  *v10 = v11;
  (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
  v12 = v11;
  v13 = sub_231C17C00();
  (*(v8 + 8))(v10, v7);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_10;
  }

  swift_beginAccess();
  if (*(v4[8] + 16))
  {
    sub_231BF7C64(a1, a2);
    if (v14)
    {
      swift_endAccess();
      if (qword_27DD6E2A8 != -1)
      {
        swift_once();
      }

      v15 = sub_231C17BB0();
      __swift_project_value_buffer(v15, qword_27DD6E958);

      v16 = sub_231C17B90();
      v17 = sub_231C17D20();

      if (!os_log_type_enabled(v16, v17))
      {
        goto LABEL_18;
      }

      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      aBlock = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_231C0ABE0(a1, a2, &aBlock);
      v20 = "Cannot register task %s: Task has already been registered";
LABEL_17:
      _os_log_impl(&dword_231B25000, v16, v17, v20, v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x238378B40](v19, -1, -1);
      MEMORY[0x238378B40](v18, -1, -1);
LABEL_18:

      sub_231C02438();
      swift_allocError();
      *v37 = 0;
      v37[1] = 0;
      swift_willThrow();
      return;
    }
  }

  v38 = v3;
  swift_endAccess();
  v21 = v4[2];
  v22 = sub_231C17C50();
  v44 = sub_231C033E0;
  v45 = v4;
  aBlock = MEMORY[0x277D85DD0];
  v41 = 1107296256;
  v42 = sub_231C018D4;
  v43 = &block_descriptor_0;
  v23 = _Block_copy(&aBlock);

  v24 = swift_allocObject();
  v24[2] = v4;
  v24[3] = a1;
  v24[4] = a2;
  v44 = sub_231C033FC;
  v45 = v24;
  v39 = a1;
  aBlock = MEMORY[0x277D85DD0];
  v41 = 1107296256;
  v42 = sub_231C0205C;
  v43 = &block_descriptor_5;
  v25 = _Block_copy(&aBlock);

  v26 = [v21 registerTaskWithIdentifier:v22 usingQueue:v12 onLaunch:v23 onExpiration:v25];
  _Block_release(v25);
  _Block_release(v23);

  if (!v26)
  {
    if (qword_27DD6E2A8 != -1)
    {
      swift_once();
    }

    v34 = sub_231C17BB0();
    __swift_project_value_buffer(v34, qword_27DD6E958);

    v16 = sub_231C17B90();
    v17 = sub_231C17D20();

    v35 = os_log_type_enabled(v16, v17);
    v36 = v39;
    if (!v35)
    {
      goto LABEL_18;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    aBlock = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_231C0ABE0(v36, a2, &aBlock);
    v20 = "Cannot register task %s: DAS claims task has already been registered";
    goto LABEL_17;
  }

  if (qword_27DD6E2A8 != -1)
  {
    goto LABEL_20;
  }

LABEL_10:
  v27 = sub_231C17BB0();
  __swift_project_value_buffer(v27, qword_27DD6E958);

  v28 = sub_231C17B90();
  v29 = sub_231C17D30();

  v30 = os_log_type_enabled(v28, v29);
  v31 = v39;
  if (v30)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    aBlock = v33;
    *v32 = 136315138;
    *(v32 + 4) = sub_231C0ABE0(v31, a2, &aBlock);
    _os_log_impl(&dword_231B25000, v28, v29, "Task registered: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x238378B40](v33, -1, -1);
    MEMORY[0x238378B40](v32, -1, -1);
  }
}

void sub_231C00268(uint64_t a1, char *a2)
{
  v6 = *&a2[OBJC_IVAR___SKDSchedulerDynamicBackgroundTask_identifier];
  v5 = *&a2[OBJC_IVAR___SKDSchedulerDynamicBackgroundTask_identifier + 8];
  sub_231BFFC80(v6, v5);
  if (!v2)
  {
    v7 = *(a1 + 16);
    v8 = sub_231C17C50();
    v9 = [v7 taskRequestForIdentifier_];

    if (v9)
    {

      v10 = [v9 isRepeating];
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = *(a1 + 64);
      *(a1 + 64) = 0x8000000000000000;
      sub_231C02D20(v10, 0, v6, v5, isUniquelyReferenced_nonNull_native);

      *(a1 + 64) = v19;
      swift_endAccess();
      if (qword_27DD6E2A8 != -1)
      {
        swift_once();
      }

      v12 = sub_231C17BB0();
      __swift_project_value_buffer(v12, qword_27DD6E958);
      v13 = a2;
      v14 = sub_231C17B90();
      v15 = sub_231C17D30();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v21[0] = v17;
        *v16 = 136315138;
        *(v16 + 4) = sub_231C0ABE0(v6, v5, v21);
        _os_log_impl(&dword_231B25000, v14, v15, "Found existing submission for task: %s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v17);
        MEMORY[0x238378B40](v17, -1, -1);
        MEMORY[0x238378B40](v16, -1, -1);
      }
    }

    else
    {
      swift_beginAccess();

      v18 = swift_isUniquelyReferenced_nonNull_native();
      v20 = *(a1 + 64);
      *(a1 + 64) = 0x8000000000000000;
      sub_231C02D20(0, 0x8000, v6, v5, v18);

      *(a1 + 64) = v20;
      swift_endAccess();
    }
  }
}

void sub_231C0050C(uint64_t a1, char *a2)
{
  v43[3] = *MEMORY[0x277D85DE8];
  v4 = *&a2[OBJC_IVAR___SKDSchedulerDynamicBackgroundTask_identifier];
  v5 = *&a2[OBJC_IVAR___SKDSchedulerDynamicBackgroundTask_identifier + 8];
  swift_beginAccess();
  v6 = *(a1 + 64);
  if (*(v6 + 16) && (v7 = sub_231BF7C64(v4, v5), (v8 & 1) != 0) && (v9 = *(v6 + 56) + 16 * v7, v10 = *(v9 + 8), (v10 & 0xC000) == 0x8000) && ((v11 = *v9, v10 == 0x8000) ? (v12 = v11 == 0) : (v12 = 0), v12))
  {
    v20 = swift_endAccess();
    v21 = (*&a2[OBJC_IVAR___SKDSchedulerDynamicBackgroundTask__createRequest])(v20);
    v22 = *(a1 + 16);
    v43[0] = 0;
    if ([v22 submitTaskRequest:v21 error:v43])
    {
      v23 = v43[0];

      v24 = [v21 isRepeating];
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42 = *(a1 + 64);
      *(a1 + 64) = 0x8000000000000000;
      sub_231C02D20(v24, 0, v4, v5, isUniquelyReferenced_nonNull_native);

      *(a1 + 64) = v42;
      swift_endAccess();
      if (qword_27DD6E2A8 != -1)
      {
        swift_once();
      }

      v26 = sub_231C17BB0();
      __swift_project_value_buffer(v26, qword_27DD6E958);
      v27 = a2;
      v28 = sub_231C17B90();
      v29 = sub_231C17D30();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v43[0] = v31;
        *v30 = 136315138;
        *(v30 + 4) = sub_231C0ABE0(v4, v5, v43);
        _os_log_impl(&dword_231B25000, v28, v29, "Dynamic task submitted: %s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v31);
        MEMORY[0x238378B40](v31, -1, -1);
        MEMORY[0x238378B40](v30, -1, -1);
      }
    }

    else
    {
      v32 = v43[0];
      v33 = sub_231C17B40();

      swift_willThrow();
      ErrorValue = swift_getErrorValue();
      MEMORY[0x28223BE20](ErrorValue);
      (*(v36 + 16))(&v41 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
      v37 = sub_231C17C70();
      v39 = v38;
      sub_231C02438();
      swift_allocError();
      *v40 = v37;
      v40[1] = v39;
      swift_willThrow();
    }
  }

  else
  {
    swift_endAccess();
    if (qword_27DD6E2A8 != -1)
    {
      swift_once();
    }

    v13 = sub_231C17BB0();
    __swift_project_value_buffer(v13, qword_27DD6E958);
    v14 = a2;
    v15 = sub_231C17B90();
    v16 = sub_231C17D20();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v43[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_231C0ABE0(v4, v5, v43);
      _os_log_impl(&dword_231B25000, v15, v16, "Cannot submit dynamic task %s: Task is not registered", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x238378B40](v18, -1, -1);
      MEMORY[0x238378B40](v17, -1, -1);
    }

    sub_231C02438();
    swift_allocError();
    *v19 = 0;
    v19[1] = 0;
    swift_willThrow();
  }
}

uint64_t sub_231C00A18(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 64);
  if (*(v6 + 16) && (v7 = sub_231BF7C64(a2, a3), (v8 & 1) != 0) && (v9 = *(v6 + 56) + 16 * v7, v10 = *(v9 + 8), (v10 & 0xC000) == 0x4000))
  {
    v11 = *v9;
    swift_endAccess();
    [swift_unknownObjectRetain() setTaskCompleted];
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *(a1 + 64);
    *(a1 + 64) = 0x8000000000000000;
    if (v10)
    {
      v13 = 1;
      v14 = 0;
    }

    else
    {
      v13 = 0;
      v14 = 0x8000;
    }

    sub_231C02D20(v13, v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *(a1 + 64) = v28;
    swift_endAccess();
    if (qword_27DD6E2A8 != -1)
    {
      swift_once();
    }

    v22 = sub_231C17BB0();
    __swift_project_value_buffer(v22, qword_27DD6E958);

    v23 = sub_231C17B90();
    v24 = sub_231C17D30();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27[0] = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_231C0ABE0(a2, a3, v27);
      _os_log_impl(&dword_231B25000, v23, v24, "Task completed: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x238378B40](v26, -1, -1);
      MEMORY[0x238378B40](v25, -1, -1);
    }

    return sub_231C0248C(v11, v10);
  }

  else
  {
    swift_endAccess();
    if (qword_27DD6E2A8 != -1)
    {
      swift_once();
    }

    v15 = sub_231C17BB0();
    __swift_project_value_buffer(v15, qword_27DD6E958);

    v16 = sub_231C17B90();
    v17 = sub_231C17D20();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v27[0] = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_231C0ABE0(a2, a3, v27);
      _os_log_impl(&dword_231B25000, v16, v17, "Cannot complete task %s: Task is not running", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x238378B40](v19, -1, -1);
      MEMORY[0x238378B40](v18, -1, -1);
    }

    sub_231C02438();
    swift_allocError();
    *v20 = 0;
    v20[1] = 0;
    return swift_willThrow();
  }
}

uint64_t sub_231C00DD8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v44[3] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  v6 = *(a1 + 64);
  if (*(v6 + 16) && (v7 = sub_231BF7C64(a2, a3), (v8 & 1) != 0) && (v9 = *(v6 + 56) + 16 * v7, v10 = *(v9 + 8), (v10 & 0xC000) == 0x4000))
  {
    v11 = *v9;
    swift_endAccess();
    v44[0] = 0;
    v12 = [swift_unknownObjectRetain() setTaskExpiredWithError_];
    v13 = v44[0];
    if (v12)
    {
      swift_beginAccess();
      v14 = v13;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v43 = *(a1 + 64);
      *(a1 + 64) = 0x8000000000000000;
      sub_231C02D20(v10 & 1, 0, a2, a3, isUniquelyReferenced_nonNull_native);

      *(a1 + 64) = v43;
      swift_endAccess();
      if (qword_27DD6E2A8 != -1)
      {
        swift_once();
      }

      v16 = sub_231C17BB0();
      __swift_project_value_buffer(v16, qword_27DD6E958);

      v17 = sub_231C17B90();
      v18 = sub_231C17D30();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v44[0] = v20;
        *v19 = 136315138;
        *(v19 + 4) = sub_231C0ABE0(a2, a3, v44);
        _os_log_impl(&dword_231B25000, v17, v18, "Task deferred: %s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v20);
        MEMORY[0x238378B40](v20, -1, -1);
        MEMORY[0x238378B40](v19, -1, -1);
      }
    }

    else
    {
      v28 = v44[0];
      v29 = sub_231C17B40();

      swift_willThrow();
      if (qword_27DD6E2A8 != -1)
      {
        swift_once();
      }

      v30 = sub_231C17BB0();
      __swift_project_value_buffer(v30, qword_27DD6E958);

      v31 = sub_231C17B90();
      v32 = sub_231C17D20();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v44[0] = v34;
        *v33 = 136315138;
        *(v33 + 4) = sub_231C0ABE0(a2, a3, v44);
        _os_log_impl(&dword_231B25000, v31, v32, "Failed to defer task %s", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v34);
        MEMORY[0x238378B40](v34, -1, -1);
        MEMORY[0x238378B40](v33, -1, -1);
      }

      ErrorValue = swift_getErrorValue();
      MEMORY[0x28223BE20](ErrorValue);
      (*(v37 + 16))(&v42 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
      v38 = sub_231C17C70();
      v40 = v39;
      sub_231C02438();
      swift_allocError();
      *v41 = v38;
      v41[1] = v40;
      swift_willThrow();
    }

    return sub_231C0248C(v11, v10);
  }

  else
  {
    swift_endAccess();
    if (qword_27DD6E2A8 != -1)
    {
      swift_once();
    }

    v21 = sub_231C17BB0();
    __swift_project_value_buffer(v21, qword_27DD6E958);

    v22 = sub_231C17B90();
    v23 = sub_231C17D20();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v44[0] = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_231C0ABE0(a2, a3, v44);
      _os_log_impl(&dword_231B25000, v22, v23, "Cannot defer task %s: Task is not running", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x238378B40](v25, -1, -1);
      MEMORY[0x238378B40](v24, -1, -1);
    }

    sub_231C02438();
    swift_allocError();
    *v26 = 0;
    v26[1] = 0;
    return swift_willThrow();
  }
}

void sub_231C013B4(void *a1)
{
  v3 = v1;
  v5 = sub_231C17BF0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v52[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = v3[3];
  *v8 = v9;
  (*(v6 + 104))(v8, *MEMORY[0x277D85200], v5);
  v10 = v9;
  LOBYTE(v9) = sub_231C17C00();
  (*(v6 + 8))(v8, v5);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    swift_once();
    goto LABEL_12;
  }

  v2 = &selRef_enablePeople;
  v11 = [a1 identifier];
  v12 = sub_231C17C60();
  v14 = v13;

  swift_beginAccess();
  v15 = v3[8];
  if (*(v15 + 16))
  {
    v16 = sub_231BF7C64(v12, v14);
    v18 = v17;

    if (v18)
    {
      v19 = (*(v15 + 56) + 16 * v16);
      if ((v19[4] & 0xC000) == 0)
      {
        v20 = *v19;
        swift_endAccess();
        v21 = [a1 identifier];
        v22 = sub_231C17C60();
        v24 = v23;

        swift_beginAccess();
        swift_unknownObjectRetain();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v51 = v3[8];
        v3[8] = 0x8000000000000000;
        sub_231C02D20(a1, v20 & 1 | 0x4000, v22, v24, isUniquelyReferenced_nonNull_native);

        v3[8] = v51;
        swift_endAccess();
        if (qword_27DD6E2A8 != -1)
        {
          swift_once();
        }

        v26 = sub_231C17BB0();
        __swift_project_value_buffer(v26, qword_27DD6E958);
        swift_unknownObjectRetain();
        v27 = sub_231C17B90();
        v28 = sub_231C17D30();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          v52[0] = v30;
          *v29 = 136315138;
          v31 = [a1 identifier];
          v32 = sub_231C17C60();
          v34 = v33;

          v35 = sub_231C0ABE0(v32, v34, v52);

          *(v29 + 4) = v35;
          _os_log_impl(&dword_231B25000, v27, v28, "Task launched: %s", v29, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v30);
          MEMORY[0x238378B40](v30, -1, -1);
          MEMORY[0x238378B40](v29, -1, -1);
        }

        v36 = v3[4];
        v37 = [a1 identifier];
        v38 = sub_231C17C60();
        v40 = v39;

        v36(v38, v40);

        return;
      }
    }
  }

  else
  {
  }

  swift_endAccess();
  if (qword_27DD6E2A8 != -1)
  {
    goto LABEL_16;
  }

LABEL_12:
  v41 = sub_231C17BB0();
  __swift_project_value_buffer(v41, qword_27DD6E958);
  swift_unknownObjectRetain();
  v42 = sub_231C17B90();
  v43 = sub_231C17D20();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v52[0] = v45;
    *v44 = 136315138;
    v46 = [a1 v2[256]];
    v47 = sub_231C17C60();
    v49 = v48;

    v50 = sub_231C0ABE0(v47, v49, v52);

    *(v44 + 4) = v50;
    _os_log_impl(&dword_231B25000, v42, v43, "Task %s launched even though it wasn't submitted", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v45);
    MEMORY[0x238378B40](v45, -1, -1);
    MEMORY[0x238378B40](v44, -1, -1);
  }
}

uint64_t sub_231C018D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_231C01934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_231C17BC0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_231C17BE0();
  v10 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *(a1 + 24);
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  aBlock[4] = sub_231C03448;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_231C0205C;
  aBlock[3] = &block_descriptor_11;
  v14 = _Block_copy(aBlock);

  sub_231C17BD0();
  v18 = MEMORY[0x277D84F90];
  sub_231C03AB4(&qword_27DD6E980, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD6E988, &unk_231C23700);
  sub_231C03AFC(&qword_27DD6E990, &qword_27DD6E988, &unk_231C23700);
  sub_231C17DE0();
  MEMORY[0x238376A70](0, v12, v9, v14);
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v17);
}

void sub_231C01C04(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_231C17BF0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v30[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v3 + 24);
  *v9 = v10;
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v11 = v10;
  LOBYTE(v10) = sub_231C17C00();
  (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_17:
    swift_once();
LABEL_8:
    v19 = sub_231C17BB0();
    __swift_project_value_buffer(v19, qword_27DD6E958);

    v20 = sub_231C17B90();
    v21 = sub_231C17D20();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v30[0] = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_231C0ABE0(a1, a2, v30);
      _os_log_impl(&dword_231B25000, v20, v21, "Task %s expired even though it wasn't running", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x238378B40](v23, -1, -1);
      MEMORY[0x238378B40](v22, -1, -1);
    }

    goto LABEL_10;
  }

  swift_beginAccess();
  v12 = *(v3 + 64);
  if (!*(v12 + 16) || (v13 = sub_231BF7C64(a1, a2), (v14 & 1) == 0) || (v15 = *(v12 + 56) + 16 * v13, v16 = *(v15 + 8), (v16 & 0xC000) != 0x4000))
  {
    swift_endAccess();
    if (qword_27DD6E2A8 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

  v17 = *v15;
  swift_endAccess();
  if ((v16 & 0x100) == 0)
  {
    swift_beginAccess();
    sub_231C03374(v17, v16);
    sub_231C03374(v17, v16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *(v3 + 64);
    *(v3 + 64) = 0x8000000000000000;
    sub_231C02D20(v17, v16 & 1 | 0x4100, a1, a2, isUniquelyReferenced_nonNull_native);

    *(v3 + 64) = v29;
    swift_endAccess();
    (*(v3 + 48))(a1, a2);
    sub_231C0248C(v17, v16);
    return;
  }

  v24 = qword_27DD6E2A8;
  swift_unknownObjectRetain();
  if (v24 != -1)
  {
    swift_once();
  }

  v25 = sub_231C17BB0();
  __swift_project_value_buffer(v25, qword_27DD6E958);

  v20 = sub_231C17B90();
  v26 = sub_231C17D20();

  if (os_log_type_enabled(v20, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v30[0] = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_231C0ABE0(a1, a2, v30);
    _os_log_impl(&dword_231B25000, v20, v26, "Task %s expired even though it was already expired", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x238378B40](v28, -1, -1);
    MEMORY[0x238378B40](v27, -1, -1);
  }

  sub_231C0248C(v17, v16);
LABEL_10:
}

uint64_t sub_231C0205C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_231C020A0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t get_enum_tag_for_layout_string_24SpotlightKnowledgeDaemon9SchedulerC24DASBackgroundTaskManagerC0F5StateO(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1;
  v3 = v1 >> 14;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_231C02150(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFE && *(a1 + 10))
  {
    return (*a1 + 16382);
  }

  v3 = (*(a1 + 8) & 0x3E00 | (*(a1 + 8) >> 14) & 0xFFFFFE03 | (4 * (*(a1 + 8) >> 1))) ^ 0x3FFF;
  if (v3 >= 0x3FFD)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_231C021B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFD)
  {
    *(result + 8) = 0;
    *result = a2 - 16382;
    if (a3 >= 0x3FFE)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFE)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 2) & 0xFFF) - (a2 << 12);
      *result = 0;
      *(result + 8) = (4 * v3) & 0xFE00 | (2 * (v3 & 0x7F));
    }
  }

  return result;
}

uint64_t sub_231C02230(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 8) = *(result + 8) & 0x101 | (a2 << 14);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0x8000;
  }

  return result;
}

unint64_t sub_231C02438()
{
  result = qword_27DD6E970;
  if (!qword_27DD6E970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD6E970);
  }

  return result;
}

uint64_t sub_231C0248C(uint64_t result, __int16 a2)
{
  if ((a2 & 0xC000) == 0x4000)
  {
    return swift_unknownObjectRelease();
  }

  return v2;
}

uint64_t sub_231C024A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD6E978, &unk_231C239B0);
  v38 = v4;
  result = sub_231C17EA0();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = v23[1];
      v39 = *v23;
      v25 = *(v5 + 56) + v22;
      v26 = *v25;
      v27 = *(v25 + 8);
      if ((v38 & 1) == 0)
      {

        sub_231C03374(v26, v27);
      }

      sub_231C17FC0();
      sub_231C17C80();
      result = sub_231C17FE0();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v39;
      v17[1] = v24;
      v18 = *(v7 + 56) + v16;
      *v18 = v26;
      *(v18 + 8) = v27;
      ++*(v7 + 16);
      v5 = v37;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_231C02770(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD6E998, &unk_231C239D0);
  v35 = v4;
  result = sub_231C17EA0();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_231C17FC0();
      sub_231C17C80();
      result = sub_231C17FE0();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_231C02A14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD6E9A0, &unk_231C23710);
  v38 = v4;
  result = sub_231C17EA0();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v39 = (v12 - 1) & v12;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v42 = *v22;
      v24 = *(v5 + 56) + 48 * v21;
      v40 = *v24;
      v41 = *(v24 + 8);
      v25 = *(v24 + 24);
      v26 = *(v24 + 32);
      v27 = *(v24 + 40);
      if ((v38 & 1) == 0)
      {

        sub_231C037D0(v26, v27);
      }

      sub_231C17FC0();
      sub_231C17C80();
      result = sub_231C17FE0();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v42;
      v16[1] = v23;
      v17 = *(v7 + 56) + 48 * v15;
      v12 = v39;
      *v17 = v40;
      *(v17 + 8) = v41;
      *(v17 + 24) = v25;
      *(v17 + 32) = v26;
      *(v17 + 40) = v27;
      ++*(v7 + 16);
      v5 = v37;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_231C02D20(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_231BF7C64(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_231C024A0(v18, a5 & 1);
      v13 = sub_231BF7C64(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_231C17F70();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_231C031E8();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = v23[7] + 16 * v13;
    v25 = *v24;
    *v24 = a1;
    v26 = *(v24 + 8);
    *(v24 + 8) = a2;

    return sub_231C0248C(v25, v26);
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v23[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = v23[7] + 16 * v13;
  *v29 = a1;
  *(v29 + 8) = a2;
  v30 = v23[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v31;
}

void sub_231C02EB4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_231BF7C64(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_231C02770(v16, a4 & 1);
      v11 = sub_231BF7C64(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_231C17F70();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_231C03490();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v11);
    *(v22 + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v25 = v21[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v26;
}

uint64_t sub_231C0302C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_231BF7C64(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_231C02A14(v16, a4 & 1);
      v11 = sub_231BF7C64(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_231C17F70();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_231C035FC();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 48 * v11;
    v23 = *(v22 + 32);
    v24 = *(v22 + 40);
    v25 = a1[1];
    *v22 = *a1;
    *(v22 + 16) = v25;
    *(v22 + 32) = a1[2];

    return sub_231C037C0(v23, v24);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v27 = (v21[6] + 16 * v11);
  *v27 = a2;
  v27[1] = a3;
  v28 = (v21[7] + 48 * v11);
  v29 = a1[1];
  *v28 = *a1;
  v28[1] = v29;
  v28[2] = a1[2];
  v30 = v21[2];
  v15 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v31;
}

void *sub_231C031E8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD6E978, &unk_231C239B0);
  v2 = *v0;
  v3 = sub_231C17E90();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(v2 + 56) + v17;
        v22 = *v21;
        v23 = (*(v4 + 48) + v17);
        v24 = *(v21 + 8);
        *v23 = v20;
        v23[1] = v19;
        v25 = *(v4 + 56) + v17;
        *v25 = v22;
        *(v25 + 8) = v24;

        result = sub_231C03374(v22, v24);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_231C03374(uint64_t result, __int16 a2)
{
  if ((a2 & 0xC000) == 0x4000)
  {
    return swift_unknownObjectRetain();
  }

  return v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id sub_231C03490()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD6E998, &unk_231C239D0);
  v2 = *v0;
  v3 = sub_231C17E90();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_231C035FC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD6E9A0, &unk_231C23710);
  v2 = *v0;
  v3 = sub_231C17E90();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 48;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 24);
        v25 = *(v22 + 32);
        v26 = *(v22 + 40);
        v27 = (*(v4 + 48) + v18);
        v28 = *(v22 + 8);
        *v27 = v21;
        v27[1] = v20;
        v29 = *(v4 + 56) + v17;
        *v29 = v23;
        *(v29 + 8) = v28;
        *(v29 + 24) = v24;
        *(v29 + 32) = v25;
        *(v29 + 40) = v26;

        result = sub_231C037D0(v25, v26);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_231C037C0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_231C037D0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void *sub_231C037E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v24 = a4;
  v25 = a5;
  v22 = a2;
  v23 = a3;
  v21 = a1;
  v20 = sub_231C17D50();
  v7 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_231C17D70();
  MEMORY[0x28223BE20](v10);
  v11 = sub_231C17BE0();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_231C03A68(0, v12);
  v19[1] = "groundSystemTaskProviding>8";
  v19[2] = v13;
  sub_231C17BD0();
  v26 = MEMORY[0x277D84F90];
  sub_231C03AB4(&qword_27DD6E9B0, MEMORY[0x277D852D8], MEMORY[0x277D852E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD6E9B8, &qword_231C239A0);
  sub_231C03AFC(&qword_27DD6E9C0, &qword_27DD6E9B8, &qword_231C239A0);
  sub_231C17DE0();
  (*(v7 + 104))(v9, *MEMORY[0x277D85268], v20);
  a6[3] = sub_231C17D80();
  v14 = sub_231C096B4(MEMORY[0x277D84F90]);
  v15 = v22;
  a6[2] = v21;
  v17 = v23;
  v16 = v24;
  a6[4] = v15;
  a6[5] = v17;
  a6[6] = v16;
  a6[7] = v25;
  a6[8] = v14;
  return a6;
}

unint64_t sub_231C03A68(uint64_t a1, uint64_t a2)
{
  result = qword_27DD6E9A8;
  if (!qword_27DD6E9A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DD6E9A8);
  }

  return result;
}

uint64_t sub_231C03AB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_231C03AFC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_231C03B50(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_231C03BA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_231C03BF4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_231C03C0C(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t Scheduler.StaticBackgroundTask.description.getter()
{
  v1 = v0;
  sub_231C17E40();

  MEMORY[0x2383769A0](*(v1 + OBJC_IVAR___SKDSchedulerStaticBackgroundTask_name), *(v1 + OBJC_IVAR___SKDSchedulerStaticBackgroundTask_name + 8));
  MEMORY[0x2383769A0](10272, 0xE200000000000000);
  MEMORY[0x2383769A0](*(v1 + OBJC_IVAR___SKDSchedulerStaticBackgroundTask_identifier), *(v1 + OBJC_IVAR___SKDSchedulerStaticBackgroundTask_identifier + 8));
  MEMORY[0x2383769A0](15913, 0xE200000000000000);
  return 0xD000000000000015;
}

id Scheduler.StaticBackgroundTask.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_231C03E1C(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_231C17C50();

  return v5;
}

unint64_t Scheduler.DynamicBackgroundTask.description.getter()
{
  v1 = v0;
  sub_231C17E40();

  MEMORY[0x2383769A0](*(v1 + OBJC_IVAR___SKDSchedulerDynamicBackgroundTask_name), *(v1 + OBJC_IVAR___SKDSchedulerDynamicBackgroundTask_name + 8));
  MEMORY[0x2383769A0](10272, 0xE200000000000000);
  MEMORY[0x2383769A0](*(v1 + OBJC_IVAR___SKDSchedulerDynamicBackgroundTask_identifier), *(v1 + OBJC_IVAR___SKDSchedulerDynamicBackgroundTask_identifier + 8));
  MEMORY[0x2383769A0](15913, 0xE200000000000000);
  return 0xD000000000000016;
}

id sub_231C04018(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Scheduler.StaticBackgroundTask(a1, a2);
  v3 = objc_allocWithZone(v2);
  v4 = &v3[OBJC_IVAR___SKDSchedulerStaticBackgroundTask_name];
  *v4 = 0x7363697274654DLL;
  v4[1] = 0xE700000000000000;
  v5 = &v3[OBJC_IVAR___SKDSchedulerStaticBackgroundTask_identifier];
  *v5 = 0xD000000000000028;
  v5[1] = 0x8000000231C352F0;
  v3[OBJC_IVAR___SKDSchedulerStaticBackgroundTask_isRepeating] = 1;
  v7.receiver = v3;
  v7.super_class = v2;
  result = objc_msgSendSuper2(&v7, sel_init);
  qword_27DD6E9C8 = result;
  return result;
}

id sub_231C04108(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Scheduler.DynamicBackgroundTask(a1, a2);
  v3 = objc_allocWithZone(v2);
  v4 = &v3[OBJC_IVAR___SKDSchedulerDynamicBackgroundTask_name];
  *v4 = 0xD000000000000012;
  v4[1] = 0x8000000231C352A0;
  v5 = &v3[OBJC_IVAR___SKDSchedulerDynamicBackgroundTask__createRequest];
  *v5 = sub_231C042E0;
  v5[1] = 0;
  v6 = objc_allocWithZone(MEMORY[0x277CF07C8]);
  v7 = sub_231C17C50();
  v8 = [v6 initWithIdentifier_];

  v9 = v8;
  [v9 setResources_];
  [v9 setPriority_];
  [v9 setRequiresExternalPower_];
  [v9 setResourceIntensive_];
  v10 = sub_231C17CB0();
  [v9 setInvolvedProcesses_];

  v11 = [v9 identifier];
  v12 = sub_231C17C60();
  v14 = v13;

  v15 = &v3[OBJC_IVAR___SKDSchedulerDynamicBackgroundTask_identifier];
  *v15 = v12;
  v15[1] = v14;
  LOBYTE(v11) = [v9 isRepeating];

  v3[OBJC_IVAR___SKDSchedulerDynamicBackgroundTask_isRepeating] = v11;
  v17.receiver = v3;
  v17.super_class = v2;
  result = objc_msgSendSuper2(&v17, sel_init);
  qword_27DD6E9D0 = result;
  return result;
}

id sub_231C042E0()
{
  v0 = objc_allocWithZone(MEMORY[0x277CF07C8]);
  v1 = sub_231C17C50();
  v2 = [v0 initWithIdentifier_];

  v3 = v2;
  [v3 setResources_];
  [v3 setPriority_];
  [v3 setRequiresExternalPower_];
  [v3 setResourceIntensive_];
  v4 = sub_231C17CB0();
  [v3 setInvolvedProcesses_];

  return v3;
}

id sub_231C043F8(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

id sub_231C044F4(uint64_t a1, uint64_t a2, void *a3, void **a4, uint64_t a5)
{
  if (*a3 == -1)
  {
    v6 = *a4;
  }

  else
  {
    swift_once();
    v6 = *a4;
  }

  return v6;
}

uint64_t sub_231C04560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a1 + 8);
  if (v7)
  {
    *&v20[0] = *a1;
    *(&v20[0] + 1) = v7;
    v8 = *(a1 + 32);
    v20[1] = *(a1 + 16);
    v20[2] = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_231C0302C(v20, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = sub_231BF7C64(a2, a3);
    v13 = v12;

    if (v13)
    {
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v4;
      *&v20[0] = *v4;
      if (!v14)
      {
        sub_231C035FC();
        v15 = *&v20[0];
      }

      v16 = *(v15 + 56) + 48 * v11;
      v17 = *(v16 + 32);
      v18 = *(v16 + 40);

      sub_231C037C0(v17, v18);
      result = sub_231C08100(v11, v15);
      *v4 = v15;
    }
  }

  return result;
}

uint64_t sub_231C0468C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_231C02EB4(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_231BF7C64(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_231C03490();
        v14 = v16;
      }

      result = sub_231C07F50(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_231C04784()
{
  v0 = sub_231C17BB0();
  __swift_allocate_value_buffer(v0, qword_27DD6EA10);
  v1 = __swift_project_value_buffer(v0, qword_27DD6EA10);
  if (qword_27DD6E2C8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27DD704F0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_231C0484C()
{
  v0 = sub_231C17BB0();
  __swift_allocate_value_buffer(v0, qword_27DD704F0);
  __swift_project_value_buffer(v0, qword_27DD704F0);
  return sub_231C17BA0();
}

char *sub_231C048C8(uint64_t a1, uint64_t a2)
{
  v2 = [objc_allocWithZone(type metadata accessor for BackgroundSystemTaskScheduler(0 a2))];
  v4 = objc_allocWithZone(type metadata accessor for Scheduler(v2, v3));
  result = sub_231C08304(v2, v4);
  qword_27DD70508 = result;
  return result;
}

char *Scheduler.__allocating_init(bgTaskScheduler:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();

  return sub_231C082BC(a1, v1, ObjectType);
}

unint64_t Scheduler.TaskState.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_231C04984()
{
  v1 = *v0;
  sub_231C17FC0();
  MEMORY[0x238376CE0](v1);
  return sub_231C17FE0();
}

uint64_t sub_231C049F8(uint64_t a1)
{
  v2 = *v1;
  sub_231C17FC0();
  MEMORY[0x238376CE0](v2);
  return sub_231C17FE0();
}

unint64_t *sub_231C04A3C@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_231C04A64()
{
  v1 = *v0;
  sub_231C17FC0();
  MEMORY[0x238376CE0](v1);
  return sub_231C17FE0();
}

uint64_t sub_231C04AAC(uint64_t a1)
{
  v2 = *v1;
  sub_231C17FC0();
  MEMORY[0x238376CE0](v2);
  return sub_231C17FE0();
}

char *Scheduler.init(bgTaskScheduler:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();

  return sub_231C08854(a1, v1, ObjectType);
}

void sub_231C04B30(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_231C17BF0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v30[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *&v3[OBJC_IVAR___SKDScheduler__concurrentQueue];
  *v9 = v10;
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v11 = v10;
  LOBYTE(v10) = sub_231C17C00();
  v12 = (*(v7 + 8))(v9, v6);
  if (v10)
  {
    v13 = *&v3[OBJC_IVAR___SKDScheduler__queue];
    MEMORY[0x28223BE20](v12);
    *&v30[-32] = v3;
    *&v30[-24] = a1;
    *&v30[-16] = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD6EA90, &qword_231C239C8);
    v14 = sub_231C17D40();
    v35[0] = aBlock;
    v35[1] = v32;
    v36 = v33;
    v20 = v34;
    v21 = MEMORY[0x28223BE20](v14);
    *&v30[-16] = v35;
    *&v30[-8] = v20;
    v22 = MEMORY[0x28223BE20](v21);
    *&v30[-32] = v3;
    *&v30[-24] = a1;
    *&v30[-16] = a2;
    MEMORY[0x28223BE20](v22);
    *&v30[-32] = v3;
    *&v30[-24] = a1;
    *&v30[-16] = a2;
    sub_231C061F0(a1, a2, sub_231C09930, v23, sub_231C0995C, v24, sub_231C09968, &v30[-48]);
    v25 = swift_allocObject();
    v25[2] = v3;
    v25[3] = a1;
    v25[4] = a2;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_231C09974;
    *(v26 + 24) = v25;
    *&v33 = sub_231C09D88;
    *(&v33 + 1) = v26;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v32 = sub_231C06070;
    *(&v32 + 1) = &block_descriptor_60;
    v27 = _Block_copy(&aBlock);
    v28 = v3;

    dispatch_async_and_wait(v13, v27);
    aBlock = v35[0];
    sub_231BF83E4(&aBlock);

    sub_231C037C0(v36, *(&v36 + 1));

    _Block_release(v27);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    __break(1u);
    swift_once();
    v15 = sub_231C17BB0();
    __swift_project_value_buffer(v15, qword_27DD6EA10);

    v16 = sub_231C17B90();
    v17 = sub_231C17D20();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *&aBlock = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_231C0ABE0(a1, a2, &aBlock);
      _os_log_impl(&dword_231B25000, v16, v17, "Unknown background task launched: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x238378B40](v19, -1, -1);
      MEMORY[0x238378B40](v18, -1, -1);
    }
  }
}

uint64_t sub_231C05014(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21[0] = a6;
  v10 = sub_231C17BC0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_231C17BE0();
  v14 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[1] = *&a3[OBJC_IVAR___SKDScheduler__concurrentQueue];
  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = a1;
  v17[4] = a2;
  aBlock[4] = a5;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_231C0205C;
  aBlock[3] = v21[0];
  v18 = _Block_copy(aBlock);
  v19 = a3;

  sub_231C17BD0();
  v23 = MEMORY[0x277D84F90];
  sub_231C09800(&qword_27DD6E980, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD6E988, &unk_231C23700);
  sub_231C03AFC(&qword_27DD6E990, &qword_27DD6E988, &unk_231C23700);
  sub_231C17DE0();
  MEMORY[0x238376A70](0, v16, v13, v18);
  _Block_release(v18);
  (*(v11 + 8))(v13, v10);
  (*(v14 + 8))(v16, v22);
}

void sub_231C052DC(uint64_t a1, unint64_t a2)
{
  v5 = sub_231C17BF0();
  v6 = *(v5 - 1);
  MEMORY[0x28223BE20](v5);
  v8 = (&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + OBJC_IVAR___SKDScheduler__concurrentQueue);
  *v8 = v9;
  (*(v6 + 104))(v8, *MEMORY[0x277D85200], v5);
  v10 = v9;
  LOBYTE(v9) = sub_231C17C00();
  v11 = (*(v6 + 8))(v8, v5);
  if (v9)
  {
    MEMORY[0x28223BE20](v11);
    *(&v27 - 4) = v2;
    *(&v27 - 3) = a1;
    *(&v27 - 2) = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD6EA80, &qword_231C239C0);
    sub_231C17D40();
    v17 = v28;
    v18 = v29;
    if (v29)
    {
      v19 = v30;
      v20 = swift_allocObject();
      *(v20 + 16) = v18;
      *(v20 + 24) = v19;
      v21 = sub_231C09868;
    }

    else
    {
      v21 = 0;
      v20 = 0;
    }

    if (qword_27DD6E2C0 != -1)
    {
      swift_once();
    }

    v22 = sub_231C17BB0();
    __swift_project_value_buffer(v22, qword_27DD6EA10);

    v23 = sub_231C17B90();
    v24 = sub_231C17D30();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v28 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_231C0ABE0(a1, a2, &v28);
      _os_log_impl(&dword_231B25000, v23, v24, "Cancelling running background task: %s...", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x238378B40](v26, -1, -1);
      MEMORY[0x238378B40](v25, -1, -1);
    }

    v17[OBJC_IVAR___SKDCancellationToken__isCancelled] = 1;
    if (v18)
    {
      v21();

      sub_231C037C0(v21, v20);
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
    swift_once();
    v12 = sub_231C17BB0();
    __swift_project_value_buffer(v12, qword_27DD6EA10);

    v13 = sub_231C17B90();
    v14 = sub_231C17D20();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v28 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_231C0ABE0(a1, a2, &v28);
      _os_log_impl(&dword_231B25000, v13, v14, "Unknown background task cancelled: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x238378B40](v16, -1, -1);
      MEMORY[0x238378B40](v15, -1, -1);
    }
  }
}

uint64_t Scheduler.schedule(taskNamed:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *&v4[OBJC_IVAR___SKDScheduler__queue];
  v10 = swift_allocObject();
  v10[2] = v4;
  v10[3] = a1;
  v10[4] = a2;
  v10[5] = a3;
  v10[6] = a4;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_231C08DA4;
  *(v11 + 24) = v10;
  v16[4] = sub_231C08DB4;
  v16[5] = v11;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_231C06070;
  v16[3] = &block_descriptor_1;
  v12 = _Block_copy(v16);
  v13 = v4;

  dispatch_async_and_wait(v9, v12);
  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_231C058B0(char *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_231C17BC0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v40 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_231C17BE0();
  v39 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v38 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR___SKDScheduler__tasks;
  swift_beginAccess();
  if (*(*&a1[v15] + 16) && (sub_231BF7C64(a2, a3), (v16 & 1) != 0))
  {
    swift_endAccess();
    if (qword_27DD6E2C0 != -1)
    {
      swift_once();
    }

    v17 = sub_231C17BB0();
    __swift_project_value_buffer(v17, qword_27DD6EA10);

    v18 = sub_231C17B90();
    v19 = sub_231C17D20();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v43 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_231C0ABE0(a2, a3, &v43);
      _os_log_impl(&dword_231B25000, v18, v19, "Task named %s already exists", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x238378B40](v21, -1, -1);
      MEMORY[0x238378B40](v20, -1, -1);
    }
  }

  else
  {
    swift_endAccess();
    *&v43 = a2;
    *(&v43 + 1) = a3;
    v44 = a4;
    v45 = a5;
    v46 = 0;
    v47 = 0;
    swift_beginAccess();
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = *&a1[v15];
    v37 = v10;
    *&a1[v15] = 0x8000000000000000;
    sub_231C0302C(&v43, a2, a3, isUniquelyReferenced_nonNull_native);

    *&a1[v15] = v42;
    swift_endAccess();
    v23 = [objc_allocWithZone(SKDCancellationToken) init];
    v24 = OBJC_IVAR___SKDScheduler__cancellationTokens;
    swift_beginAccess();

    v25 = v23;
    v36 = v13;
    v26 = v25;
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v42 = *&a1[v24];
    *&a1[v24] = 0x8000000000000000;
    sub_231C02EB4(v26, a2, a3, v27);

    *&a1[v24] = v42;
    swift_endAccess();
    v35 = *&a1[OBJC_IVAR___SKDScheduler__concurrentQueue];
    v28 = swift_allocObject();
    v28[2] = a1;
    v28[3] = a2;
    v28[4] = a3;
    v28[5] = a4;
    v28[6] = a5;
    v28[7] = v26;
    aBlock[4] = sub_231C09A90;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_231C0205C;
    aBlock[3] = &block_descriptor_86;
    v29 = _Block_copy(aBlock);

    v30 = v26;
    v31 = a1;
    v32 = v38;
    sub_231C17BD0();
    v42 = MEMORY[0x277D84F90];
    sub_231C09800(&qword_27DD6E980, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD6E988, &unk_231C23700);
    sub_231C03AFC(&qword_27DD6E990, &qword_27DD6E988, &unk_231C23700);
    v33 = v40;
    v34 = v37;
    sub_231C17DE0();
    MEMORY[0x238376A70](0, v32, v33, v29);
    _Block_release(v29);

    (*(v11 + 8))(v33, v34);
    (*(v39 + 8))(v32, v36);
  }
}

uint64_t sub_231C05E38(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = *&a1[OBJC_IVAR___SKDScheduler__queue];
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_231C09BAC;
  *(v8 + 24) = v7;
  v12[4] = sub_231C09D88;
  v12[5] = v8;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_231C06070;
  v12[3] = &block_descriptor_96;
  v9 = _Block_copy(v12);
  v10 = a1;

  dispatch_async_and_wait(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_231C05FAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();

  sub_231C0468C(0, a2, a3);
  swift_endAccess();
  memset(v6, 0, sizeof(v6));
  swift_beginAccess();

  sub_231C04560(v6, a2, a3);
  return swift_endAccess();
}

void sub_231C06098(uint64_t a1, unint64_t a2)
{
  if (qword_27DD6E2C0 != -1)
  {
    swift_once();
  }

  v4 = sub_231C17BB0();
  __swift_project_value_buffer(v4, qword_27DD6EA10);

  oslog = sub_231C17B90();
  v5 = sub_231C17D20();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_231C0ABE0(a1, a2, &v9);
    _os_log_impl(&dword_231B25000, oslog, v5, "Immediate task %s requested unsupported deferral", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x238378B40](v7, -1, -1);
    MEMORY[0x238378B40](v6, -1, -1);
  }
}

uint64_t sub_231C061F0(uint64_t a1, unint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(void), uint64_t a8)
{
  v36[1] = a8;
  v37 = a7;
  v14 = sub_231C17BF0();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = (v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v8 + OBJC_IVAR___SKDScheduler__concurrentQueue);
  *v17 = v18;
  (*(v15 + 104))(v17, *MEMORY[0x277D85200], v14);
  v19 = v18;
  LOBYTE(v18) = sub_231C17C00();
  (*(v15 + 8))(v17, v14);
  if (v18)
  {
    if (qword_27DD6E2C0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v36[0] = a6;
  v20 = sub_231C17BB0();
  __swift_project_value_buffer(v20, qword_27DD6EA10);

  v21 = sub_231C17B90();
  v22 = sub_231C17D30();

  v23 = a5;
  if (os_log_type_enabled(v21, v22))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v38 = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_231C0ABE0(a1, a2, &v38);
    _os_log_impl(&dword_231B25000, v21, v22, "Task beginning: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x238378B40](v25, -1, -1);
    MEMORY[0x238378B40](v24, -1, -1);
  }

  do
  {
    v26 = a3();
  }

  while (v26 == 1);
  if (v26 == 2)
  {

    v27 = sub_231C17B90();
    v28 = sub_231C17D30();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v38 = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_231C0ABE0(a1, a2, &v38);
      _os_log_impl(&dword_231B25000, v27, v28, "Task requested deferral: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x238378B40](v30, -1, -1);
      MEMORY[0x238378B40](v29, -1, -1);
    }

    return v37();
  }

  else if (v26)
  {
    v38 = v26;
    result = sub_231C17F50();
    __break(1u);
  }

  else
  {

    v32 = sub_231C17B90();
    v33 = sub_231C17D30();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v38 = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_231C0ABE0(a1, a2, &v38);
      _os_log_impl(&dword_231B25000, v32, v33, "Task completed: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x238378B40](v35, -1, -1);
      MEMORY[0x238378B40](v34, -1, -1);
    }

    return v23();
  }

  return result;
}

uint64_t sub_231C06644(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *&v5[OBJC_IVAR___SKDScheduler__queue];
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = v5;
  v12[4] = a2;
  v12[5] = a3;
  v12[6] = a4;
  v12[7] = a5;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_231C09A60;
  *(v13 + 24) = v12;
  v19[4] = sub_231C09D88;
  v19[5] = v13;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_231C06070;
  v19[3] = &block_descriptor_80;
  v14 = _Block_copy(v19);
  v15 = a1;
  v16 = v5;

  sub_231C037D0(a4, a5);

  dispatch_async_and_wait(v11, v14);
  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_231C06810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a1 + OBJC_IVAR___SKDSchedulerStaticBackgroundTask_identifier);
  v11 = *(a1 + OBJC_IVAR___SKDSchedulerStaticBackgroundTask_identifier + 8);
  v13 = OBJC_IVAR___SKDScheduler__tasks;
  swift_beginAccess();
  v14 = *(*(a2 + v13) + 16);

  if (v14 && (sub_231BF7C64(v12, v11), (v15 & 1) != 0))
  {
    swift_endAccess();
    if (qword_27DD6E2C0 != -1)
    {
      swift_once();
    }

    v16 = sub_231C17BB0();
    __swift_project_value_buffer(v16, qword_27DD6EA10);

    v17 = sub_231C17B90();
    v18 = sub_231C17D20();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *&v30 = v20;
      *v19 = 136315138;
      v21 = sub_231C0ABE0(v12, v11, &v30);

      *(v19 + 4) = v21;
      _os_log_impl(&dword_231B25000, v17, v18, "Task named %s already exists", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x238378B40](v20, -1, -1);
      MEMORY[0x238378B40](v19, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v27 = a5;
    v22 = v12;
    swift_endAccess();
    v23 = OBJC_IVAR___SKDScheduler__backgroundTaskManager;
    swift_beginAccess();
    sub_231C09980(a2 + v23, &v30);
    if (v32)
    {
      __swift_project_boxed_opaque_existential_1(&v30, v32);
      v24 = off_2846CD598[0];
      _s24DASBackgroundTaskManagerCMa(0, v25);
      v24(a1);
      __swift_destroy_boxed_opaque_existential_1(&v30);
      *&v30 = v22;
      *(&v30 + 1) = v11;
      v31 = a3;
      v32 = a4;
      v33 = v27;
      v34 = a6;
      swift_beginAccess();

      sub_231C037D0(v27, a6);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = *(a2 + v13);
      *(a2 + v13) = 0x8000000000000000;
      sub_231C0302C(&v30, v22, v11, isUniquelyReferenced_nonNull_native);

      *(a2 + v13) = v29;
      swift_endAccess();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_231C06B34(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *&v5[OBJC_IVAR___SKDScheduler__queue];
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = v5;
  v12[4] = a2;
  v12[5] = a3;
  v12[6] = a4;
  v12[7] = a5;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_231C099F0;
  *(v13 + 24) = v12;
  v19[4] = sub_231C09D88;
  v19[5] = v13;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_231C06070;
  v19[3] = &block_descriptor_70;
  v14 = _Block_copy(v19);
  v15 = a1;
  v16 = v5;

  sub_231C037D0(a4, a5);

  dispatch_async_and_wait(v11, v14);
  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_231C06D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;

  a8(a1, a7, v15, a4, a5);
}

void sub_231C06DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a1 + OBJC_IVAR___SKDSchedulerDynamicBackgroundTask_identifier);
  v11 = *(a1 + OBJC_IVAR___SKDSchedulerDynamicBackgroundTask_identifier + 8);
  v13 = OBJC_IVAR___SKDScheduler__tasks;
  swift_beginAccess();
  v14 = *(*(a2 + v13) + 16);

  if (v14 && (sub_231BF7C64(v12, v11), (v15 & 1) != 0))
  {
    swift_endAccess();
    if (qword_27DD6E2C0 != -1)
    {
      swift_once();
    }

    v16 = sub_231C17BB0();
    __swift_project_value_buffer(v16, qword_27DD6EA10);

    v17 = sub_231C17B90();
    v18 = sub_231C17D20();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *&v30 = v20;
      *v19 = 136315138;
      v21 = sub_231C0ABE0(v12, v11, &v30);

      *(v19 + 4) = v21;
      _os_log_impl(&dword_231B25000, v17, v18, "Task named %s already exists", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x238378B40](v20, -1, -1);
      MEMORY[0x238378B40](v19, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v27 = a5;
    v22 = v12;
    swift_endAccess();
    v23 = OBJC_IVAR___SKDScheduler__backgroundTaskManager;
    swift_beginAccess();
    sub_231C09980(a2 + v23, &v30);
    if (v32)
    {
      __swift_project_boxed_opaque_existential_1(&v30, v32);
      v24 = off_2846CD5A0[0];
      _s24DASBackgroundTaskManagerCMa(0, v25);
      v24(a1);
      __swift_destroy_boxed_opaque_existential_1(&v30);
      *&v30 = v22;
      *(&v30 + 1) = v11;
      v31 = a3;
      v32 = a4;
      v33 = v27;
      v34 = a6;
      swift_beginAccess();

      sub_231C037D0(v27, a6);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = *(a2 + v13);
      *(a2 + v13) = 0x8000000000000000;
      sub_231C0302C(&v30, v22, v11, isUniquelyReferenced_nonNull_native);

      *(a2 + v13) = v29;
      swift_endAccess();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t Scheduler.schedule(dynamicBackgroundTask:)(void *a1)
{
  v3 = *&v1[OBJC_IVAR___SKDScheduler__queue];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_231C08E1C;
  *(v5 + 24) = v4;
  v11[4] = sub_231C09D88;
  v11[5] = v5;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_231C06070;
  v11[3] = &block_descriptor_19;
  v6 = _Block_copy(v11);
  v7 = v1;
  v8 = a1;

  dispatch_async_and_wait(v3, v6);
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_231C07224(uint64_t a1, char *a2)
{
  v4 = *&a2[OBJC_IVAR___SKDSchedulerDynamicBackgroundTask_identifier];
  v5 = *&a2[OBJC_IVAR___SKDSchedulerDynamicBackgroundTask_identifier + 8];
  v6 = OBJC_IVAR___SKDScheduler__tasks;
  swift_beginAccess();
  if (*(*(a1 + v6) + 16) && (sub_231BF7C64(v4, v5), (v7 & 1) != 0))
  {
    swift_endAccess();
    v8 = OBJC_IVAR___SKDScheduler__backgroundTaskManager;
    swift_beginAccess();
    sub_231C09980(a1 + v8, v17);
    if (v18)
    {
      __swift_project_boxed_opaque_existential_1(v17, v18);
      v9 = off_2846CD5A8[0];
      _s24DASBackgroundTaskManagerCMa(0, v10);
      v9(a2);
      __swift_destroy_boxed_opaque_existential_1(v17);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    swift_endAccess();
    if (qword_27DD6E2C0 != -1)
    {
      swift_once();
    }

    v11 = sub_231C17BB0();
    __swift_project_value_buffer(v11, qword_27DD6EA10);
    v12 = a2;
    v13 = sub_231C17B90();
    v14 = sub_231C17D20();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17[0] = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_231C0ABE0(v4, v5, v17);
      _os_log_impl(&dword_231B25000, v13, v14, "Unknown background task scheduled: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x238378B40](v16, -1, -1);
      MEMORY[0x238378B40](v15, -1, -1);
    }
  }
}

uint64_t sub_231C07450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = OBJC_IVAR___SKDScheduler__tasks;
  swift_beginAccess();
  v9 = *(a1 + v8);
  if (*(v9 + 16) && (v10 = sub_231BF7C64(a2, a3), (v11 & 1) != 0))
  {
    v12 = *(v9 + 56) + 48 * v10;
    v30 = *v12;
    v31 = a2;
    v33 = *(v12 + 8);
    v32 = a3;
    v14 = *(v12 + 24);
    v13 = *(v12 + 32);
    v15 = *(v12 + 40);
    swift_endAccess();
    v16 = OBJC_IVAR___SKDScheduler__cancellationTokens;
    swift_beginAccess();
    v17 = *(*(a1 + v16) + 16);

    sub_231C037D0(v13, v15);
    if (v17 && (sub_231BF7C64(v31, v32), (v18 & 1) != 0))
    {
      swift_endAccess();
      if (qword_27DD6E2C0 != -1)
      {
        swift_once();
      }

      v19 = sub_231C17BB0();
      __swift_project_value_buffer(v19, qword_27DD6EA10);

      v20 = sub_231C17B90();
      v21 = sub_231C17D20();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v34[0] = v23;
        *v22 = 136315138;
        *(v22 + 4) = sub_231C0ABE0(v31, v32, v34);
        _os_log_impl(&dword_231B25000, v20, v21, "Unexpected existing cancellation token found for task %s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v23);
        MEMORY[0x238378B40](v23, -1, -1);
        MEMORY[0x238378B40](v22, -1, -1);
      }

      sub_231C09890();
      swift_allocError();
      *v24 = 2;
      swift_willThrow();

      return sub_231C037C0(v13, v15);
    }

    else
    {
      swift_endAccess();
      v27 = [objc_allocWithZone(SKDCancellationToken) init];
      swift_beginAccess();

      v28 = v27;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = *(a1 + v16);
      *(a1 + v16) = 0x8000000000000000;
      sub_231C02EB4(v28, v31, v32, isUniquelyReferenced_nonNull_native);

      *(a1 + v16) = v35;
      result = swift_endAccess();
      *a4 = v30;
      *(a4 + 8) = v33;
      *(a4 + 24) = v14;
      *(a4 + 32) = v13;
      *(a4 + 40) = v15;
      *(a4 + 48) = v28;
    }
  }

  else
  {
    swift_endAccess();
    sub_231C09890();
    swift_allocError();
    *v26 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_231C077CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR___SKDScheduler__backgroundTaskManager;
  swift_beginAccess();
  result = sub_231C09980(a1 + v6, v11);
  if (v12)
  {
    __swift_project_boxed_opaque_existential_1(v11, v12);
    v8 = off_2846CD5B0[0];
    v10 = _s24DASBackgroundTaskManagerCMa(0, v9);
    v8(a2, a3, v10, &off_2846CD590);
    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_231C0789C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR___SKDScheduler__backgroundTaskManager;
  swift_beginAccess();
  result = sub_231C09980(a1 + v6, v11);
  if (v12)
  {
    __swift_project_boxed_opaque_existential_1(v11, v12);
    v8 = off_2846CD5B8;
    v10 = _s24DASBackgroundTaskManagerCMa(0, v9);
    v8(a2, a3, v10, &off_2846CD590);
    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_231C0796C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = OBJC_IVAR___SKDScheduler__cancellationTokens;
  swift_beginAccess();
  if (*(*(a1 + v6) + 16) && (sub_231BF7C64(a2, a3), (v7 & 1) != 0))
  {
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    if (qword_27DD6E2C0 != -1)
    {
      swift_once();
    }

    v8 = sub_231C17BB0();
    __swift_project_value_buffer(v8, qword_27DD6EA10);

    v9 = sub_231C17B90();
    v10 = sub_231C17D20();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v14[0] = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_231C0ABE0(a2, a3, v14);
      _os_log_impl(&dword_231B25000, v9, v10, "Task %s is missing its cancellation token after run completion", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x238378B40](v12, -1, -1);
      MEMORY[0x238378B40](v11, -1, -1);
    }
  }

  swift_beginAccess();

  sub_231C0468C(0, a2, a3);
  return swift_endAccess();
}

void sub_231C07B44(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = OBJC_IVAR___SKDScheduler__cancellationTokens;
  swift_beginAccess();
  v9 = *(a1 + v8);
  if (*(v9 + 16) && (v10 = sub_231BF7C64(a2, a3), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
    swift_endAccess();
    v13 = OBJC_IVAR___SKDScheduler__tasks;
    swift_beginAccess();
    v14 = *(a1 + v13);
    v15 = *(v14 + 16);
    v16 = v12;
    if (v15 && (v17 = sub_231BF7C64(a2, a3), (v18 & 1) != 0))
    {
      v19 = *(v14 + 56) + 48 * v17;
      v20 = *(v19 + 32);
      v21 = *(v19 + 40);
      swift_endAccess();
      if (v20)
      {
        v22 = swift_allocObject();
        *(v22 + 16) = v20;
        *(v22 + 24) = v21;
        v23 = sub_231C08DB4;
      }

      else
      {
        v23 = 0;
        v22 = 0;
      }

      *a4 = v16;
      a4[1] = v23;
      a4[2] = v22;
      sub_231C037D0(v20, v21);
    }

    else
    {
      swift_endAccess();
      sub_231C09890();
      swift_allocError();
      *v30 = 0;
      swift_willThrow();
    }
  }

  else
  {
    swift_endAccess();
    if (qword_27DD6E2C0 != -1)
    {
      swift_once();
    }

    v24 = sub_231C17BB0();
    __swift_project_value_buffer(v24, qword_27DD6EA10);

    v25 = sub_231C17B90();
    v26 = sub_231C17D20();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v31[0] = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_231C0ABE0(a2, a3, v31);
      _os_log_impl(&dword_231B25000, v25, v26, "Cancellation token not found for expired task %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x238378B40](v28, -1, -1);
      MEMORY[0x238378B40](v27, -1, -1);
    }

    sub_231C09890();
    swift_allocError();
    *v29 = 1;
    swift_willThrow();
  }
}

id Scheduler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Scheduler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_231C07F50(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_231C17DF0() + 1) & ~v5;
    do
    {
      sub_231C17FC0();

      sub_231C17C80();
      v9 = sub_231C17FE0();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_231C08100(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_231C17DF0() + 1) & ~v5;
    do
    {
      sub_231C17FC0();

      sub_231C17C80();
      v11 = sub_231C17FE0();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 48 * v3);
        v18 = (v16 + 48 * v6);
        if (v3 != v6 || v17 >= v18 + 3)
        {
          v9 = *v18;
          v10 = v18[2];
          v17[1] = v18[1];
          v17[2] = v10;
          *v17 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

char *sub_231C082BC(uint64_t a1, Class a2, uint64_t a3)
{
  v5 = objc_allocWithZone(a2);

  return sub_231C08854(a1, v5, a3);
}

char *sub_231C08304(uint64_t a1, char *a2)
{
  v36 = a2;
  v40 = a1;
  ObjectType = swift_getObjectType();
  v38 = sub_231C17D90();
  MEMORY[0x28223BE20](v38);
  v37 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_231C17D50();
  v3 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_231C17D70();
  MEMORY[0x28223BE20](v6);
  v7 = sub_231C17BE0();
  MEMORY[0x28223BE20](v7 - 8);
  v34 = OBJC_IVAR___SKDScheduler__queue;
  v8 = sub_231C0908C(0, &qword_27DD6E9A8, 0x277D85C90);
  v31 = "_cancellationTokens";
  v32 = v8;
  sub_231C17BD0();
  v41[0] = MEMORY[0x277D84F90];
  sub_231C09800(&qword_27DD6E9B0, MEMORY[0x277D852D8], MEMORY[0x277D852E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD6E9B8, &qword_231C239A0);
  sub_231C03AFC(&qword_27DD6E9C0, &qword_27DD6E9B8, &qword_231C239A0);
  sub_231C17DE0();
  v9 = *MEMORY[0x277D85268];
  v10 = *(v3 + 104);
  v33 = v3 + 104;
  v11 = v35;
  v10(v5, v9, v35);
  v12 = sub_231C17D80();
  v13 = v36;
  *&v36[v34] = v12;
  v34 = OBJC_IVAR___SKDScheduler__concurrentQueue;
  v14 = sub_231C0908C(0, &qword_27DD6EA60, 0x277D85C88);
  v31 = "ghtknowledged.Scheduler";
  v32 = v14;
  sub_231C17BD0();
  v41[0] = MEMORY[0x277D84F90];
  sub_231C09800(&qword_27DD6EA68, MEMORY[0x277D852E8], MEMORY[0x277D852F0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD6EA70, &qword_231C239A8);
  sub_231C03AFC(&qword_27DD6EA78, &qword_27DD6EA70, &qword_231C239A8);
  sub_231C17DE0();
  v10(v5, v9, v11);
  *&v13[v34] = sub_231C17DA0();
  v15 = &v13[OBJC_IVAR___SKDScheduler__backgroundTaskManager];
  v16 = v13;
  *(v15 + 4) = 0;
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v17 = OBJC_IVAR___SKDScheduler__tasks;
  v18 = MEMORY[0x277D84F90];
  *&v16[v17] = sub_231C0936C(MEMORY[0x277D84F90]);
  v19 = OBJC_IVAR___SKDScheduler__cancellationTokens;
  *&v16[v19] = sub_231C094C0(v18);
  v42.receiver = v16;
  v42.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v42, sel_init);
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  v24 = _s24DASBackgroundTaskManagerCMa(0, v23);
  v25 = swift_allocObject();
  v26 = v20;
  v27 = sub_231C090D4(v40, sub_231C095C4, v21, sub_231C09604, v22, v25);
  v41[3] = v24;
  v41[4] = &off_2846CD590;
  v41[0] = v27;
  v28 = OBJC_IVAR___SKDScheduler__backgroundTaskManager;
  swift_beginAccess();
  sub_231C09644(v41, v26 + v28);
  swift_endAccess();

  return v26;
}

char *sub_231C08854(uint64_t a1, char *a2, uint64_t a3)
{
  v40 = a1;
  v41 = a3;
  v36 = a2;
  ObjectType = swift_getObjectType();
  v38 = sub_231C17D90();
  MEMORY[0x28223BE20](v38);
  v37 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_231C17D50();
  v4 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_231C17D70();
  MEMORY[0x28223BE20](v7);
  v8 = sub_231C17BE0();
  MEMORY[0x28223BE20](v8 - 8);
  v34 = OBJC_IVAR___SKDScheduler__queue;
  v9 = sub_231C0908C(0, &qword_27DD6E9A8, 0x277D85C90);
  v31 = "_cancellationTokens";
  v32 = v9;
  sub_231C17BD0();
  v42[0] = MEMORY[0x277D84F90];
  sub_231C09800(&qword_27DD6E9B0, MEMORY[0x277D852D8], MEMORY[0x277D852E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD6E9B8, &qword_231C239A0);
  sub_231C03AFC(&qword_27DD6E9C0, &qword_27DD6E9B8, &qword_231C239A0);
  sub_231C17DE0();
  v10 = *MEMORY[0x277D85268];
  v11 = *(v4 + 104);
  v33 = v4 + 104;
  v12 = v35;
  v11(v6, v10, v35);
  v13 = sub_231C17D80();
  v14 = v36;
  *&v36[v34] = v13;
  v34 = OBJC_IVAR___SKDScheduler__concurrentQueue;
  v15 = sub_231C0908C(0, &qword_27DD6EA60, 0x277D85C88);
  v31 = "ghtknowledged.Scheduler";
  v32 = v15;
  sub_231C17BD0();
  v42[0] = MEMORY[0x277D84F90];
  sub_231C09800(&qword_27DD6EA68, MEMORY[0x277D852E8], MEMORY[0x277D852F0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD6EA70, &qword_231C239A8);
  sub_231C03AFC(&qword_27DD6EA78, &qword_27DD6EA70, &qword_231C239A8);
  sub_231C17DE0();
  v11(v6, v10, v12);
  *&v14[v34] = sub_231C17DA0();
  v16 = &v14[OBJC_IVAR___SKDScheduler__backgroundTaskManager];
  v17 = v14;
  *(v16 + 4) = 0;
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v18 = OBJC_IVAR___SKDScheduler__tasks;
  v19 = MEMORY[0x277D84F90];
  *&v17[v18] = sub_231C0936C(MEMORY[0x277D84F90]);
  v20 = OBJC_IVAR___SKDScheduler__cancellationTokens;
  *&v17[v20] = sub_231C094C0(v19);
  v43.receiver = v17;
  v43.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v43, sel_init);
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  v25 = _s24DASBackgroundTaskManagerCMa(0, v24);
  v26 = swift_allocObject();
  v27 = v21;
  v28 = sub_231C037E0(v40, sub_231C09D80, v22, sub_231C09D84, v23, v26);
  v42[3] = v25;
  v42[4] = &off_2846CD590;
  v42[0] = v28;
  v29 = OBJC_IVAR___SKDScheduler__backgroundTaskManager;
  swift_beginAccess();
  sub_231C09644(v42, v27 + v29);
  swift_endAccess();

  return v27;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_231C08E28()
{
  result = qword_27DD6EA30;
  if (!qword_27DD6EA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD6EA30);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_Iegh_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_231C08F80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_231C08FC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_231C09024(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD6EA58, &qword_231C23998);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_231C0908C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void *sub_231C090D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v23 = a4;
  v24 = a5;
  v21 = a2;
  v22 = a3;
  v20 = a1;
  v19 = sub_231C17D50();
  v7 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_231C17D70();
  MEMORY[0x28223BE20](v10);
  v11 = sub_231C17BE0();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = sub_231C0908C(0, &qword_27DD6E9A8, 0x277D85C90);
  v18[1] = "groundSystemTaskProviding>8";
  v18[2] = v12;
  sub_231C17BD0();
  v25 = MEMORY[0x277D84F90];
  sub_231C09800(&qword_27DD6E9B0, MEMORY[0x277D852D8], MEMORY[0x277D852E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD6E9B8, &qword_231C239A0);
  sub_231C03AFC(&qword_27DD6E9C0, &qword_27DD6E9B8, &qword_231C239A0);
  sub_231C17DE0();
  (*(v7 + 104))(v9, *MEMORY[0x277D85268], v19);
  a6[3] = sub_231C17D80();
  v13 = sub_231C096B4(MEMORY[0x277D84F90]);
  v14 = v21;
  a6[2] = v20;
  v16 = v22;
  v15 = v23;
  a6[4] = v14;
  a6[5] = v16;
  a6[6] = v15;
  a6[7] = v24;
  a6[8] = v13;
  return a6;
}

unint64_t sub_231C0936C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD6E9A0, &unk_231C23710);
    v3 = sub_231C17EB0();

    for (i = (a1 + 48); ; i += 8)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v18 = *(i + 1);
      v8 = i[3];
      v9 = i[4];
      v10 = i[5];

      sub_231C037D0(v9, v10);
      result = sub_231BF7C64(v5, v6);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 16 * result);
      *v13 = v5;
      v13[1] = v6;
      v14 = v3[7] + 48 * result;
      *v14 = v7;
      *(v14 + 8) = v18;
      *(v14 + 24) = v8;
      *(v14 + 32) = v9;
      *(v14 + 40) = v10;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_231C094C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD6E998, &unk_231C239D0);
    v3 = sub_231C17EB0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_231BF7C64(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_231C09644(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD6EA58, &qword_231C23998);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_231C096B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD6E978, &unk_231C239B0);
    v3 = sub_231C17EB0();

    for (i = (a1 + 56); ; i += 16)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_231C03374(v7, v8);
      result = sub_231BF7C64(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = v3[7] + 16 * result;
      *v12 = v7;
      *(v12 + 8) = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_231C09800(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_231C09890()
{
  result = qword_27DD6EA88;
  if (!qword_27DD6EA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD6EA88);
  }

  return result;
}

uint64_t sub_231C09980(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD6EA58, &qword_231C23998);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_62Tm()
{

  if (*(v0 + 48))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_231C09A90()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 56);
  v12 = *(v0 + 40);
  v13 = v4;
  v8 = v2;
  v9 = v1;
  v10 = v3;
  v6[2] = v1;
  v6[3] = v3;
  return sub_231C061F0(v1, v3, sub_231C09B28, v11, sub_231C09B58, v7, sub_231C09B64, v6);
}

uint64_t objectdestroy_34Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t getEnumTagSinglePayload for Scheduler.SchedulerError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Scheduler.SchedulerError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_231C09D0C()
{
  result = qword_27DD6EA98;
  if (!qword_27DD6EA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD6EA98);
  }

  return result;
}

id BackgroundSystemTaskScheduler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_231C09DE4()
{
  v0 = sub_231C17BB0();
  __swift_allocate_value_buffer(v0, qword_27DD6EAA0);
  __swift_project_value_buffer(v0, qword_27DD6EAA0);
  return sub_231C17BA0();
}

uint64_t sub_231C09E68(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *))
{
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = a5;
  v20[4] = sub_231C0B914;
  v20[5] = v12;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 1107296256;
  v20[2] = sub_231C0205C;
  v20[3] = &block_descriptor_14;
  v13 = _Block_copy(v20);

  [a1 setExpirationHandler_];
  _Block_release(v13);
  if (qword_27DD6E2D8 != -1)
  {
    swift_once();
  }

  v14 = sub_231C17BB0();
  __swift_project_value_buffer(v14, qword_27DD6EAA0);

  v15 = sub_231C17B90();
  v16 = sub_231C17D30();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v20[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_231C0ABE0(a2, a3, v20);
    _os_log_impl(&dword_231B25000, v15, v16, "Background System Task Launched: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x238378B40](v18, -1, -1);
    MEMORY[0x238378B40](v17, -1, -1);
  }

  return a6(a1);
}

uint64_t sub_231C0A09C(uint64_t a1, unint64_t a2, uint64_t (*a3)(void))
{
  if (qword_27DD6E2D8 != -1)
  {
    swift_once();
  }

  v6 = sub_231C17BB0();
  __swift_project_value_buffer(v6, qword_27DD6EAA0);

  v7 = sub_231C17B90();
  v8 = sub_231C17D30();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_231C0ABE0(a1, a2, &v12);
    _os_log_impl(&dword_231B25000, v7, v8, "Background System Task Expired: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x238378B40](v10, -1, -1);
    MEMORY[0x238378B40](v9, -1, -1);
  }

  return a3();
}

void sub_231C0A200(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id BackgroundSystemTaskScheduler.taskRequest(forIdentifier:)(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() sharedScheduler];
  v3 = sub_231C17C50();
  v4 = [v2 taskRequestForIdentifier_];

  return v4;
}

id BackgroundSystemTaskScheduler.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id BackgroundSystemTaskScheduler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BGSystemTask.setTaskExpired()()
{
  v31[1] = *MEMORY[0x277D85DE8];
  v31[0] = 0;
  if ([v0 setTaskExpiredWithRetryAfter:v31 error:300.0])
  {
    v1 = qword_27DD6E2D8;
    v2 = v31[0];
    if (v1 != -1)
    {
      swift_once();
    }

    v3 = sub_231C17BB0();
    __swift_project_value_buffer(v3, qword_27DD6EAA0);
    v4 = v0;
    v5 = sub_231C17B90();
    v6 = sub_231C17D30();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v31[0] = v8;
      *v7 = 136315138;
      v9 = [v4 identifier];
      v10 = sub_231C17C60();
      v12 = v11;

      v13 = sub_231C0ABE0(v10, v12, v31);

      *(v7 + 4) = v13;
      _os_log_impl(&dword_231B25000, v5, v6, "Expired Background System Task %s for 5 minutes", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x238378B40](v8, -1, -1);
      MEMORY[0x238378B40](v7, -1, -1);
    }
  }

  else
  {
    v14 = v31[0];
    v15 = sub_231C17B40();

    swift_willThrow();
    if (qword_27DD6E2D8 != -1)
    {
      swift_once();
    }

    v16 = sub_231C17BB0();
    __swift_project_value_buffer(v16, qword_27DD6EAA0);
    v17 = v0;
    v18 = v15;
    v19 = sub_231C17B90();
    v20 = sub_231C17D20();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v31[0] = v23;
      *v21 = 136315394;
      v24 = [v17 identifier];
      v25 = sub_231C17C60();
      v27 = v26;

      v28 = sub_231C0ABE0(v25, v27, v31);

      *(v21 + 4) = v28;
      *(v21 + 12) = 2112;
      v29 = v15;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 14) = v30;
      *v22 = v30;
      _os_log_impl(&dword_231B25000, v19, v20, "Failed to expire Background System Task %s: %@", v21, 0x16u);
      sub_231BF7510(v22);
      MEMORY[0x238378B40](v22, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x238378B40](v23, -1, -1);
      MEMORY[0x238378B40](v21, -1, -1);
    }

    swift_willThrow();
  }
}

BOOL sub_231C0A9B0(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  BGSystemTask.setTaskExpired()();

  if (v5)
  {
    if (a3)
    {
      v6 = sub_231C17B30();

      v7 = v6;
      *a3 = v6;
    }

    else
    {
    }
  }

  return v5 == 0;
}

uint64_t sub_231C0AA2C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_231C0AA78(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

_BYTE **sub_231C0AAD8(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_231C0AAE8(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_231C0AB84(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_231C0ABE0(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_231C0ABE0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_231C0ACAC(v11, 0, 0, 1, a1, a2);
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
    sub_231BF7D44(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_231C0ACAC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_231C0ADB8(a5, a6);
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
    result = sub_231C17E70();
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

void *sub_231C0ADB8(uint64_t a1, unint64_t a2)
{
  v3 = sub_231C0AE04(a1, a2);
  sub_231C0AF34(&unk_2846CC490);
  return v3;
}

void *sub_231C0AE04(uint64_t a1, unint64_t a2)
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

  v6 = sub_231C0B020(v5, 0);
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

  result = sub_231C17E70();
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
        v10 = sub_231C17CA0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_231C0B020(v10, 0);
        result = sub_231C17E30();
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

uint64_t sub_231C0AF34(uint64_t result)
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

  result = sub_231C0B094(result, v11, 1, v3);
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

void *sub_231C0B020(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD6EAB8, qword_231C23B08);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_231C0B094(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD6EAB8, qword_231C23B08);
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

id _s24SpotlightKnowledgeDaemon29BackgroundSystemTaskSchedulerC8register14taskIdentifier5using8onLaunch0L10ExpirationSbSS_So17OS_dispatch_queueCySo013SKDBackgroundeF9Providing_pYbcyyYbctF_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = [objc_opt_self() sharedScheduler];
  v15 = sub_231C17C50();
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a6;
  v16[5] = a7;
  v16[6] = a4;
  v16[7] = a5;
  v27[4] = sub_231C0B8EC;
  v27[5] = v16;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 1107296256;
  v27[2] = sub_231C0A200;
  v27[3] = &block_descriptor_2;
  v17 = _Block_copy(v27);

  v18 = [v14 registerForTaskWithIdentifier:v15 usingQueue:a3 launchHandler:v17];
  _Block_release(v17);

  if (v18)
  {
    if (qword_27DD6E2D8 != -1)
    {
      swift_once();
    }

    v19 = sub_231C17BB0();
    __swift_project_value_buffer(v19, qword_27DD6EAA0);

    v20 = sub_231C17B90();
    v21 = sub_231C17D30();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v27[0] = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_231C0ABE0(a1, a2, v27);
      v24 = "Registered Background System Task: %s";
LABEL_10:
      _os_log_impl(&dword_231B25000, v20, v21, v24, v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x238378B40](v23, -1, -1);
      MEMORY[0x238378B40](v22, -1, -1);
    }
  }

  else
  {
    if (qword_27DD6E2D8 != -1)
    {
      swift_once();
    }

    v25 = sub_231C17BB0();
    __swift_project_value_buffer(v25, qword_27DD6EAA0);

    v20 = sub_231C17B90();
    v21 = sub_231C17D20();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v27[0] = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_231C0ABE0(a1, a2, v27);
      v24 = "Cannot re-register already registered Background System Task: %s";
      goto LABEL_10;
    }
  }

  return v18;
}

void sub_231C0B4CC(void *a1, uint64_t a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = [objc_opt_self() sharedScheduler];
  v35 = 0;
  v4 = [v3 submitTaskRequest:a1 error:&v35];

  if (v4)
  {
    v5 = qword_27DD6E2D8;
    v6 = v35;
    if (v5 != -1)
    {
      swift_once();
    }

    v7 = sub_231C17BB0();
    __swift_project_value_buffer(v7, qword_27DD6EAA0);
    v8 = a1;
    v9 = sub_231C17B90();
    v10 = sub_231C17D30();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v35 = v12;
      *v11 = 136315138;
      v13 = [v8 identifier];
      v14 = sub_231C17C60();
      v16 = v15;

      v17 = sub_231C0ABE0(v14, v16, &v35);

      *(v11 + 4) = v17;
      _os_log_impl(&dword_231B25000, v9, v10, "Submitted Background System Task Request: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x238378B40](v12, -1, -1);
      MEMORY[0x238378B40](v11, -1, -1);
    }
  }

  else
  {
    v18 = v35;
    v19 = sub_231C17B40();

    swift_willThrow();
    if (qword_27DD6E2D8 != -1)
    {
      swift_once();
    }

    v20 = sub_231C17BB0();
    __swift_project_value_buffer(v20, qword_27DD6EAA0);
    v21 = a1;
    v22 = v19;
    v23 = sub_231C17B90();
    v24 = sub_231C17D20();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v35 = v27;
      *v25 = 136315394;
      v28 = [v21 identifier];
      v29 = sub_231C17C60();
      v31 = v30;

      v32 = sub_231C0ABE0(v29, v31, &v35);

      *(v25 + 4) = v32;
      *(v25 + 12) = 2112;
      v33 = v19;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 14) = v34;
      *v26 = v34;
      _os_log_impl(&dword_231B25000, v23, v24, "Failed to submit Background System Task Request %s: %@", v25, 0x16u);
      sub_231BF7510(v26);
      MEMORY[0x238378B40](v26, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x238378B40](v27, -1, -1);
      MEMORY[0x238378B40](v25, -1, -1);
    }

    swift_willThrow();
  }
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

const char *sub_231C0B93C()
{
  v1 = *v0;
  v2 = "AppEntities";
  v3 = "SpotlightKnowledgePIRLocationLookup";
  v4 = "SpotlightKnowledgePreExtractionScanning";
  if (v1 != 3)
  {
    v4 = "SpotlightScheduledReceiverDebug";
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = "SpotlightKnowledgeOfflineLocationLookup";
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

const char *sub_231C0B9C8()
{
  v1 = *v0;
  v2 = "EmbeddingCacheDiagnostics";
  v3 = "SpotlightKnowledgePipelineDebug";
  v4 = "SpotlightKnowledgePipelineKeyphrases";
  if (v1 != 3)
  {
    v4 = "SpotlightKnowledgeScheduler";
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = "SpotlightKnowledgePipeline";
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

id FeatureFlagsProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FeatureFlagsProvider.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR___SKDFeatureFlagsProvider_isAppEntitiesEnabled;
  v18 = &type metadata for SpotlightFeatureFlags;
  v3 = sub_231C0BE08();
  v19 = v3;
  LOBYTE(v17[0]) = 0;
  v4 = sub_231C17B80();
  __swift_destroy_boxed_opaque_existential_1(v17);
  v0[v2] = v4 & 1;
  v5 = OBJC_IVAR___SKDFeatureFlagsProvider_isEmbeddingCacheDiagnosticsEnabled;
  v18 = &type metadata for SpotlightKnowledgeFeatureFlags;
  v6 = sub_231C0BE5C();
  v19 = v6;
  LOBYTE(v17[0]) = 0;
  LOBYTE(v2) = sub_231C17B80();
  __swift_destroy_boxed_opaque_existential_1(v17);
  v0[v5] = v2 & 1;
  v7 = OBJC_IVAR___SKDFeatureFlagsProvider_isOfflineLocationLookupEnabled;
  v18 = &type metadata for SpotlightFeatureFlags;
  v19 = v3;
  LOBYTE(v17[0]) = 1;
  LOBYTE(v2) = sub_231C17B80();
  __swift_destroy_boxed_opaque_existential_1(v17);
  v0[v7] = v2 & 1;
  v8 = OBJC_IVAR___SKDFeatureFlagsProvider_isPIRLocationLookupEnabled;
  v18 = &type metadata for SpotlightFeatureFlags;
  v19 = v3;
  LOBYTE(v17[0]) = 2;
  LOBYTE(v2) = sub_231C17B80();
  __swift_destroy_boxed_opaque_existential_1(v17);
  v0[v8] = v2 & 1;
  v9 = OBJC_IVAR___SKDFeatureFlagsProvider_isPipelineEnabled;
  v18 = &type metadata for SpotlightKnowledgeFeatureFlags;
  v19 = v6;
  LOBYTE(v17[0]) = 1;
  LOBYTE(v2) = sub_231C17B80();
  __swift_destroy_boxed_opaque_existential_1(v17);
  v0[v9] = v2 & 1;
  v10 = OBJC_IVAR___SKDFeatureFlagsProvider_isPipelineDebugEnabled;
  v18 = &type metadata for SpotlightKnowledgeFeatureFlags;
  v19 = v6;
  LOBYTE(v17[0]) = 2;
  LOBYTE(v2) = sub_231C17B80();
  __swift_destroy_boxed_opaque_existential_1(v17);
  v0[v10] = v2 & 1;
  v11 = OBJC_IVAR___SKDFeatureFlagsProvider_isPipelineKeyphrasesEnabled;
  v18 = &type metadata for SpotlightKnowledgeFeatureFlags;
  v19 = v6;
  LOBYTE(v17[0]) = 3;
  LOBYTE(v2) = sub_231C17B80();
  __swift_destroy_boxed_opaque_existential_1(v17);
  v0[v11] = v2 & 1;
  v12 = OBJC_IVAR___SKDFeatureFlagsProvider_isPreExtractionScanningEnabled;
  v18 = &type metadata for SpotlightFeatureFlags;
  v19 = v3;
  LOBYTE(v17[0]) = 3;
  LOBYTE(v2) = sub_231C17B80();
  __swift_destroy_boxed_opaque_existential_1(v17);
  v0[v12] = v2 & 1;
  v13 = OBJC_IVAR___SKDFeatureFlagsProvider_isScheduledReceiverDebugEnabled;
  v18 = &type metadata for SpotlightFeatureFlags;
  v19 = v3;
  LOBYTE(v17[0]) = 4;
  LOBYTE(v3) = sub_231C17B80();
  __swift_destroy_boxed_opaque_existential_1(v17);
  v0[v13] = v3 & 1;
  v14 = OBJC_IVAR___SKDFeatureFlagsProvider_isSchedulerEnabled;
  v18 = &type metadata for SpotlightKnowledgeFeatureFlags;
  v19 = v6;
  LOBYTE(v17[0]) = 4;
  LOBYTE(v3) = sub_231C17B80();
  __swift_destroy_boxed_opaque_existential_1(v17);
  v0[v14] = v3 & 1;
  v16.receiver = v0;
  v16.super_class = ObjectType;
  return objc_msgSendSuper2(&v16, sel_init);
}

unint64_t sub_231C0BE08()
{
  result = qword_28158A2A8;
  if (!qword_28158A2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158A2A8);
  }

  return result;
}

unint64_t sub_231C0BE5C()
{
  result = qword_28158A2A0;
  if (!qword_28158A2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158A2A0);
  }

  return result;
}

id FeatureFlagsProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_231C0BF40(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_231C0BFD0(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_231C0C094()
{
  result = qword_27DD6EB70;
  if (!qword_27DD6EB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD6EB70);
  }

  return result;
}

unint64_t sub_231C0C0EC()
{
  result = qword_27DD6EB78;
  if (!qword_27DD6EB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD6EB78);
  }

  return result;
}

unint64_t type metadata accessor for SKDCancellationToken(uint64_t a1, uint64_t a2)
{
  result = qword_27DD6EB88;
  if (!qword_27DD6EB88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DD6EB88);
  }

  return result;
}

void store_stream_init_fd_cold_1(int a1)
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 67109120;
  v1[1] = a1;
  _os_log_error_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "store_stream_init err:%d", v1, 8u);
}

void store_stream_flush_cold_1(int a1)
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 67109120;
  v1[1] = a1;
  _os_log_error_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "store_stream_flush write err:%d", v1, 8u);
}

uint64_t _partition_oid_t(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 - a2 + 1;
  v4 = (a1 + 8 * a2);
  v5 = &v4[v3 / 2];
  v6 = (a1 + 8 * a3);
  if (a3 - a2 < 1024)
  {
    v25 = (a1 + 8 * a3);
    v21 = &v4[v3 / 2];
    v11 = (a1 + 8 * a2);
  }

  else
  {
    v7 = v3 >> 3;
    v8 = &v4[v3 >> 3];
    v9 = *v4;
    v10 = *v8;
    v11 = (a1 + 8 * a2);
    if (*v4 != *v8)
    {
      v11 = &v4[2 * v7];
      v12 = *v11;
      if (v9 >= *v11)
      {
        v13 = &v4[2 * v7];
      }

      else
      {
        v13 = (a1 + 8 * a2);
      }

      if (v10 > v12)
      {
        v13 = v8;
      }

      if (v9 >= v12)
      {
        v14 = (a1 + 8 * a2);
      }

      else
      {
        v14 = &v4[2 * v7];
      }

      if (v10 >= v12)
      {
        v8 = v14;
      }

      if (v9 >= v10)
      {
        v8 = v13;
      }

      if (v12 != v9 && v12 != v10)
      {
        v11 = v8;
      }
    }

    v16 = 2 * v7;
    v17 = -v7;
    v18 = &v5[-v7];
    v19 = *v18;
    v20 = *v5;
    if (*v18 == *v5)
    {
      v21 = &v5[-v7];
    }

    else
    {
      v21 = &v5[v7];
      v22 = *v21;
      if (*v21 != v19 && v22 != v20)
      {
        if (v19 >= v22)
        {
          v24 = v21;
        }

        else
        {
          v24 = v18;
        }

        if (v20 > v22)
        {
          v24 = v5;
        }

        if (v19 >= v22)
        {
          v21 = v18;
        }

        if (v20 < v22)
        {
          v21 = v5;
        }

        if (v19 >= v20)
        {
          v21 = v24;
        }
      }
    }

    v25 = &v6[-v16];
    v26 = &v6[v17];
    v27 = *v25;
    v28 = *v26;
    if (*v25 != *v26)
    {
      v29 = *v6;
      if (v27 >= *v6)
      {
        v30 = (a1 + 8 * a3);
      }

      else
      {
        v30 = v25;
      }

      if (v28 > v29)
      {
        v30 = v26;
      }

      if (v27 < v29)
      {
        v25 = (a1 + 8 * a3);
      }

      if (v28 < v29)
      {
        v25 = v26;
      }

      if (v27 >= v28)
      {
        v25 = v30;
      }

      if (v29 == v27 || v29 == v28)
      {
        v25 = (a1 + 8 * a3);
      }
    }
  }

  v32 = *v11;
  v33 = *v21;
  if (*v11 == *v21)
  {
    v21 = v11;
  }

  else
  {
    v34 = *v25;
    if (*v25 == v32 || v34 == v33)
    {
      v21 = v25;
    }

    else if (v32 >= v33)
    {
      if (v33 <= v34)
      {
        if (v32 >= v34)
        {
          v21 = v25;
        }

        else
        {
          v21 = v11;
        }
      }
    }

    else if (v33 >= v34)
    {
      if (v32 >= v34)
      {
        v21 = v11;
      }

      else
      {
        v21 = v25;
      }
    }
  }

  v36 = *v21;
  *v21 = *v6;
  *v6 = v36;
  v37 = *v4;
  v38 = a3 - a2;
  if (a3 > a2)
  {
    v39 = v4 + 1;
    do
    {
      v40 = *v39;
      if (v37 <= v36)
      {
        *(v39 - 1) = *(a1 + 8 * a2);
        *(a1 + 8 * a2++) = v37;
      }

      ++v39;
      v37 = v40;
      --v38;
    }

    while (v38);
    v37 = *(a1 + 8 * a2);
    v36 = *v6;
  }

  *(a1 + 8 * a2) = v36;
  *v6 = v37;
  return a2;
}

void _qsort_big_oid_t_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __message_assert(a1, a2, a3, a4, a5, a6, a7, a8, "qsort_oids.c", 24, "q>=left", "");
  MEMORY[0xBAD] = -559038737;
  abort();
}

void nosymlink_chown_chmod_directory_cold_1(uint64_t a1, int a2)
{
  LODWORD(v7) = 67109634;
  HIDWORD(v7) = a2;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_231B25000, MEMORY[0x277D86220], v2, "Changing user ID (%u -> %u): %s", v3, v4, v5, v6, v7);
}

void nosymlink_chown_chmod_directory_cold_2(uint64_t a1, int a2)
{
  LODWORD(v7) = 67109634;
  HIDWORD(v7) = a2;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_231B25000, MEMORY[0x277D86220], v2, "Changing group ID (%u -> %u): %s", v3, v4, v5, v6, v7);
}

void nosymlink_chown_chmod_directory_cold_3(unsigned __int16 a1)
{
  LODWORD(v6) = 67109634;
  HIDWORD(v6) = a1;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_231B25000, MEMORY[0x277D86220], v1, "Modifying permissions (%o -> %o): %s", v2, v3, v4, v5, v6);
}

void SIValueSet<unsigned long long>::SIValueSetInsert()
{
  __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 1650, "s->sharedDepth>=0", "");
  OUTLINED_FUNCTION_0_0();
}

{
  __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 1670, "((sizeof(ValueType) * 8) -4*(1+(s->sharedDepth))) <= sizeof(ValueType)*8", "");
  OUTLINED_FUNCTION_0_0();
}

void SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned long long>::FlatContext,SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::InertContext>()
{
  __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 761, "v==key", "");
  OUTLINED_FUNCTION_0_0();
}

{
  __message_assert("%s:%u: Unexpected code path %s ", "SIValueSetInternals.h", 626, "");
  OUTLINED_FUNCTION_0_0();
}

{
  __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 811, "popped==peeked", "");
  OUTLINED_FUNCTION_0_0();
}

{
  __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 810, "popped<peeked", "");
  OUTLINED_FUNCTION_0_0();
}

uint64_t SIValueSet<unsigned long long>::StoreStreamCtx::write_vint(unint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  memset(v5, 0, sizeof(v5));
  v3 = v2_writeVInt64(v5, 0, a1);
  return store_stream_write_bytes(a2, v5, v3);
}

uint64_t SIValueSet<unsigned long long>::StoreStreamCtx::write_vint32(char a1, unsigned int a2, uint64_t a3)
{
  v7 = *MEMORY[0x277D85DE8];
  memset(v6, 0, sizeof(v6));
  if (a1)
  {
    LOBYTE(v6[0]) = a2;
    v4 = 1;
  }

  else if (a2 >> 14)
  {
    if (a2 >> 21)
    {
      if (a2 >> 28)
      {
        LOBYTE(v6[0]) = -16;
        *(v6 + 1) = a2;
        v4 = 5;
      }

      else
      {
        LOBYTE(v6[0]) = HIBYTE(a2) | 0xE0;
        BYTE1(v6[0]) = BYTE2(a2);
        BYTE2(v6[0]) = BYTE1(a2);
        BYTE3(v6[0]) = a2;
        v4 = 4;
      }
    }

    else
    {
      LOBYTE(v6[0]) = BYTE2(a2) | 0xC0;
      BYTE1(v6[0]) = BYTE1(a2);
      BYTE2(v6[0]) = a2;
      v4 = 3;
    }
  }

  else
  {
    LOBYTE(v6[0]) = BYTE1(a2) | 0x80;
    BYTE1(v6[0]) = a2;
    v4 = 2;
  }

  return store_stream_write_bytes(a3, v6, v4);
}

uint64_t SIValueSet<unsigned long long>::ReadStreamCtx::read_vint32(uint64_t a1, _DWORD *a2)
{
  if (OUTLINED_FUNCTION_2(a1, *MEMORY[0x277D85DE8], v8, v9, v10, v11) != 1)
  {
    goto LABEL_12;
  }

  if ((v9 & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

  v4 = 2;
  v5 = 3;
  if (v9 >= 0xF0u)
  {
    v5 = 4;
  }

  if (v9 >= 0xE0u)
  {
    v4 = v5;
  }

  v6 = v9 <= 0xBFu ? 1 : v4;
  if (store_stream_read_bytes(a1, &v9 + 1, v6) == v6)
  {
LABEL_11:
    v8 = 0;
    result = v2_readVInt32(&v9, &v8);
  }

  else
  {
LABEL_12:
    result = 0;
  }

  *a2 = result;
  return result;
}

unint64_t SIValueSet<unsigned long long>::ReadStreamCtx::read_vint(uint64_t a1, unint64_t *a2)
{
  if (OUTLINED_FUNCTION_2(a1, *MEMORY[0x277D85DE8], v6, v7, v8, v9) == 1 && ((v4 = v2_vInt64DataSize(v7), v4 == 1) || store_stream_read_bytes(a1, &v7 + 1, (v4 - 1)) == (v4 - 1)))
  {
    v6 = 0;
    result = v2_readVInt64(&v7, &v6);
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

void SIValueSet<unsigned long long>::SIValueSet()
{
  OUTLINED_FUNCTION_0_0();
}

{
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

{
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void SIValueSet<unsigned long long>::_SIValueSetAddSortedValues()
{
  __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 2014, "s->sharedDepth>=0", "");
  OUTLINED_FUNCTION_0_0();
}

{
  __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 2026, "((sizeof(ValueType) * 8) -4*(1+(s->sharedDepth))) <= sizeof(ValueType)*8", "");
  OUTLINED_FUNCTION_0_0();
}

{
  __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 2039, "s->sharedDepth", "");
  OUTLINED_FUNCTION_0_0();
}

{
  __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 1998, "((sizeof(ValueType) * 8) -4*(1+(s->sharedDepth))) <= sizeof(ValueType)*8", "");
  OUTLINED_FUNCTION_0_0();
}

void SIValueSet<unsigned long long>::_SIValueSetInnerInsertBulk()
{
  __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 1380, "startPrefix == (startPrefix & startMask)", "");
  OUTLINED_FUNCTION_0_0();
}

{
  __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 1331, "holder->GetRawCount() <= (63)", "");
  OUTLINED_FUNCTION_0_0();
}

void journalStateSKJLogging(void *a1, uint64_t a2)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = +[SKGActivityJournal sharedJournal];
  v13[0] = &unk_2846E76E0;
  if (v3)
  {
    v5 = *(v3 + 4);
    v6 = v5;
    if (v5)
    {
      v7 = *(v5 + 1);
      goto LABEL_4;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = 0;
LABEL_4:
  v8 = v7;
  v9 = [v8 taskName];
  v13[1] = &unk_2846E76F8;
  v14[0] = v9;
  if (v3)
  {
    v10 = *(v3 + 3);
  }

  else
  {
    v10 = 0;
  }

  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:getCSIndexTypeShortNameCString(v10)];
  v14[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  [v4 addEventWithType:a2 params:v12];
}

void SDTransactionDone_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = a1;
  _os_log_debug_impl(&dword_231B25000, a2, OS_LOG_TYPE_DEBUG, "SDTransactionDone, %s", &v2, 0xCu);
}

void launchPriorityTask_cold_1()
{
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void launchEmbeddingsTask_cold_1()
{
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void launchKeyphrasesTask_cold_1()
{
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void launchPreExtractionTask_cold_1()
{
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void launchQueryUpdatesTask_cold_3()
{
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void purgeOldEventFilesAtRootPath_cold_1(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_0_5(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  OUTLINED_FUNCTION_1_6(&dword_231B25000, v5, v6, "### Unable to purge file at path <%@>");
}

void __purgeOldEventFilesAtRootPath_block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_231B25000, log, OS_LOG_TYPE_ERROR, "### error enumerating directory to files to purge: %@, %@", &v3, 0x16u);
}

void setDirstatsTrackingOnEventsPath_cold_1()
{
  LODWORD(v6) = 67109120;
  HIDWORD(v6) = *__error();
  OUTLINED_FUNCTION_0_6(&dword_231B25000, v0, v1, "setDirstatsTrackingOnEventsPath fsctl failed with errno: %d", v2, v3, v4, v5, v6);
}

void calculateDirectorySize_cold_1()
{
  LODWORD(v6) = 67109120;
  HIDWORD(v6) = *__error();
  OUTLINED_FUNCTION_0_6(&dword_231B25000, v0, v1, "fsctl failed errno: %d", v2, v3, v4, v5, v6);
}

void SKGDaemonMain_cold_1()
{
  LODWORD(v6) = 67109120;
  HIDWORD(v6) = *__error();
  OUTLINED_FUNCTION_0_6(&dword_231B25000, v0, v1, "unable to getrlimit, error %d.", v2, v3, v4, v5, v6);
}

void SKGDaemonMain_cold_2()
{
  LODWORD(v6) = 67109120;
  HIDWORD(v6) = *__error();
  OUTLINED_FUNCTION_0_6(&dword_231B25000, v0, v1, "unable to setrlimit, error %d.", v2, v3, v4, v5, v6);
}

void SKGDaemonMain_cold_3(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 136315138;
  v4 = v2;
  _os_log_error_impl(&dword_231B25000, a2, OS_LOG_TYPE_ERROR, "Sandbox initialization failed, error:%s\n", &v3, 0xCu);
}

void enumerateInfoInString_cold_3()
{
  v0 = dlerror();
  abort_report_np("%s", v0);
  +[SKGProcessorTaskManager sharedManager];
}

void deferTask_cold_1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  v3 = v0;
  OUTLINED_FUNCTION_1_11(&dword_231B25000, v1, v1, "Failed to defer task %@: %@", v2);
}

void createCascadeRootDirectory_cold_1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = cascadePath();
  OUTLINED_FUNCTION_0_1();
  v7 = a1;
  OUTLINED_FUNCTION_1_11(&dword_231B25000, a2, v5, "### unable to create cascade root directory %@ with error (%@)", v6);
}

Boolean CFCalendarDecomposeAbsoluteTime(CFCalendarRef calendar, CFAbsoluteTime at, const char *componentDesc, ...)
{
  va_start(va, componentDesc);
  v3 = va_arg(va, void);
  return MEMORY[0x28210F308](calendar, v3, at);
}

CFRange CFCalendarGetRangeOfUnit(CFCalendarRef calendar, CFCalendarUnit smallerUnit, CFCalendarUnit biggerUnit, CFAbsoluteTime at)
{
  v4 = MEMORY[0x28210F330](calendar, smallerUnit, biggerUnit, at);
  result.length = v5;
  result.location = v4;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}