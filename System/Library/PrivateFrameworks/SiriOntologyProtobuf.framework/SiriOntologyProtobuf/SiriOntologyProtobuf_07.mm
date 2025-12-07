uint64_t RepeatedMessageExtensionField.isEqual(other:)(uint64_t a1, uint64_t a2)
{
  sub_2685B1724(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028CD80, &qword_26868F260);
  swift_dynamicCast();
  v3 = sub_268689BC4();
  (*(*(a2 - 8) + 8))(v6, a2);
  return v3 & 1;
}

uint64_t RepeatedMessageExtensionField.init<A>(protobufExtension:decoder:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t *a6@<X8>)
{
  v15 = sub_268689B44();
  (*(a5 + 416))(&v15, a2, a4, a3, a5);
  if (v6)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v14 = v15;
    result = sub_2685B17CC(a1, (a6 + 1));
    *a6 = v14;
  }

  return result;
}

uint64_t RepeatedMessageExtensionField.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = *(a2 + 16);
  result = sub_268689B74();
  if (result >= 1)
  {
    v14 = a3;
    v12 = v4[4];
    v11 = v4[5];
    __swift_project_boxed_opaque_existential_1(v4 + 1, v12);
    v13 = (*(v11 + 8))(v12, v11);
    return (*(a4 + 280))(v8, v13, v9, *(a2 + 24), v14, a4);
  }

  return result;
}

uint64_t (*sub_268620794(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = RepeatedMessageExtensionField.value.modify();
  return sub_268622EC8;
}

uint64_t sub_268620960(__int128 *a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  __swift_destroy_boxed_opaque_existential_1((v2 + v4));

  return sub_2685B17CC(a1, v2 + v4);
}

uint64_t sub_268620A14@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t)@<X5>, uint64_t a7@<X8>)
{
  v11 = a6(0, a3, a4, a5);
  sub_2685B17CC(a1, a7 + *(v11 + 44));
  v12 = *(*(a3 - 8) + 32);

  return v12(a7, a2, a3);
}

uint64_t OptionalGroupExtensionField.isEqual(other:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = MEMORY[0x28223BE20](a1);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_2685B1724(v4, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028CD80, &qword_26868F260);
  swift_dynamicCast();
  v7 = sub_268689944();
  (*(v3 + 8))(v6, a2);
  return v7 & 1;
}

uint64_t OptionalGroupExtensionField.decodeExtensionField<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a1;
  v25 = a3;
  v7 = *(a2 + 16);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](a1);
  v22 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_268689C74();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - v15;
  v17 = *(v8 + 16);
  v23 = v4;
  v17(&v22 - v15, v4, v7);
  (*(v8 + 56))(v16, 0, 1, v7);
  v18 = v26;
  (*(a4 + 424))(v16, v7, *(a2 + 24), v25, a4);
  if (v18)
  {
    return (*(v11 + 8))(v16, v10);
  }

  v21 = v22;
  v20 = v23;
  (*(v11 + 32))(v14, v16, v10);
  if ((*(v8 + 48))(v14, 1, v7) == 1)
  {
    return (*(v11 + 8))(v14, v10);
  }

  (*(v8 + 32))(v21, v14, v7);
  return (*(v8 + 40))(v20, v21, v7);
}

uint64_t OptionalGroupExtensionField.init<A>(protobufExtension:decoder:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v39 = a4;
  v36 = a6;
  v37 = a8;
  v38 = a2;
  v42 = a1;
  v11 = *(a3 - 8);
  v12 = MEMORY[0x28223BE20](a1);
  v34 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v34 - v14;
  v41 = sub_268689C74();
  v16 = *(v41 - 8);
  v17 = MEMORY[0x28223BE20](v41);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v34 - v20;
  v35 = v11;
  (*(v11 + 56))(&v34 - v20, 1, 1, a3);
  v22 = a5;
  v23 = v40;
  (*(a7 + 424))(v21, a3, a5, v39, a7);
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v42);
    return (*(v16 + 8))(v21, v41);
  }

  else
  {
    v25 = v34;
    v40 = v22;
    v26 = v41;
    (*(v16 + 32))(v19, v21, v41);
    v27 = v35;
    if ((*(v35 + 48))(v19, 1, a3) == 1)
    {
      __swift_destroy_boxed_opaque_existential_1(v42);
      (*(v16 + 8))(v19, v26);
      v28 = 1;
      v30 = v36;
      v29 = v37;
      v31 = v40;
    }

    else
    {
      v32 = *(v27 + 32);
      v32(v15, v19, a3);
      v32(v25, v15, a3);
      v30 = v36;
      v29 = v37;
      v31 = v40;
      OptionalGroupExtensionField.init(protobufExtension:value:)(v42, v25, a3, v40, v36, v37);
      v28 = 0;
    }

    v33 = type metadata accessor for OptionalGroupExtensionField(0, a3, v31, v30);
    return (*(*(v33 - 8) + 56))(v29, v28, 1, v33);
  }
}

uint64_t OptionalGroupExtensionField.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (v4 + *(a2 + 44));
  v9 = v8[3];
  v10 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v11 = (*(v10 + 8))(v9, v10);
  return (*(a4 + 144))(v4, v11, *(a2 + 16), *(a2 + 24), a3, a4);
}

uint64_t OptionalGroupExtensionField.hashValue.getter(uint64_t a1)
{
  sub_268689E94();
  sub_268689924();
  return sub_268689EF4();
}

uint64_t (*sub_2686212CC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = OptionalGroupExtensionField.value.modify();
  return sub_268622EC8;
}

uint64_t sub_2686213E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  sub_268689E94();
  a4(v7, a2);
  return sub_268689EF4();
}

uint64_t RepeatedGroupExtensionField.init(protobufExtension:value:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_2685B17CC(a1, (a3 + 1));
  *a3 = a2;
  return result;
}

uint64_t sub_2686214FC(uint64_t a1, void (*a2)(char *, char *))
{
  v4 = *v2;
  v13[1] = *(a1 + 16);
  v14 = *(a1 + 32);
  v15 = v4;
  v5 = sub_268689BA4();

  WitnessTable = swift_getWitnessTable();
  v8 = sub_26861D5B8(a2, v13, v5, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v7);

  v15 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028CD88, &unk_26868F268);
  sub_268621BAC();
  v9 = sub_268689934();
  v11 = v10;

  v15 = 91;
  v16 = 0xE100000000000000;
  MEMORY[0x26D61D4B0](v9, v11);

  MEMORY[0x26D61D4B0](93, 0xE100000000000000);

  return v15;
}

uint64_t RepeatedGroupExtensionField.isEqual(other:)(uint64_t a1, uint64_t a2)
{
  sub_2685B1724(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028CD80, &qword_26868F260);
  swift_dynamicCast();
  v3 = sub_268689BC4();
  (*(*(a2 - 8) + 8))(v6, a2);
  return v3 & 1;
}

uint64_t RepeatedGroupExtensionField.init<A>(protobufExtension:decoder:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t *a6@<X8>)
{
  v15 = sub_268689B44();
  (*(a5 + 432))(&v15, a2, a4, a3, a5);
  if (v6)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v14 = v15;
    result = sub_2685B17CC(a1, (a6 + 1));
    *a6 = v14;
  }

  return result;
}

uint64_t RepeatedGroupExtensionField.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = *(a2 + 16);
  result = sub_268689B74();
  if (result >= 1)
  {
    v14 = a3;
    v12 = v4[4];
    v11 = v4[5];
    __swift_project_boxed_opaque_existential_1(v4 + 1, v12);
    v13 = (*(v11 + 8))(v12, v11);
    return (*(a4 + 288))(v8, v13, v9, *(a2 + 24), v14, a4);
  }

  return result;
}

uint64_t sub_2686218FC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  v1 = sub_268689D74();
  result = v1 + 32;
  v3 = -*(v1 + 16);
  v4 = -1;
  while (1)
  {
    v5 = v3 + v4;
    if (v3 + v4 == -1)
    {
LABEL_5:

      return v5 == -1;
    }

    if (++v4 >= *(v1 + 16))
    {
      break;
    }

    v6 = result + 40;
    sub_2685B1724(result, v10);
    v7 = v11;
    v8 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v9 = (*(v8 + 32))(v7, v8);
    __swift_destroy_boxed_opaque_existential_1(v10);
    result = v6;
    if ((v9 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t RepeatedGroupExtensionField.hashValue.getter(uint64_t a1)
{
  sub_268689E94();
  sub_268689BB4();
  return sub_268689EF4();
}

uint64_t (*sub_268621A4C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = RepeatedGroupExtensionField.value.modify();
  return sub_268622EC8;
}

void sub_268621ABC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

unint64_t sub_268621BAC()
{
  result = qword_28028CD90[0];
  if (!qword_28028CD90[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28028CD88, &unk_26868F268);
    result = swift_getWitnessTable();
    atomic_store(result, qword_28028CD90);
  }

  return result;
}

uint64_t sub_268621CBC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268689E24();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_268621D30(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268621DB4(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268621E38(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268621EBC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268621F40(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268621FC4(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268622048(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2686220CC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268622150(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2686221D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_268622220(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268622390(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = sub_2686227A4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_268622428(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_28;
  }

  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  v11 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = a2 - v8 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v10)) == 0)
  {
LABEL_28:
    if (v7 < 0x7FFFFFFF)
    {
      v19 = *(((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {
      v18 = *(v6 + 48);

      return v18(a1);
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v8 + (v11 | v17) + 1;
}

double sub_2686225B8(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v7 + 84);
  v10 = *(v7 + 64);
  if (v9 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v7 + 84);
  }

  v12 = ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (((v10 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
  {
    v13 = a3 - v11 + 1;
  }

  else
  {
    v13 = 2;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v11 < a3)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (a2 > v11)
  {
    if (((v10 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v17 = a2 - v11;
    }

    else
    {
      v17 = 1;
    }

    if (((v10 + 7) & 0xFFFFFFF8) != 0xFFFFFFD8)
    {
      v18 = ~v11 + a2;
      bzero(a1, v12);
      *a1 = v18;
    }

    if (v16 > 1)
    {
      if (v16 == 2)
      {
        *(a1 + v12) = v17;
      }

      else
      {
        *(a1 + v12) = v17;
      }
    }

    else if (v16)
    {
      *(a1 + v12) = v17;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(a1 + v12) = 0;
  }

  else if (v16)
  {
    *(a1 + v12) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v9 < 0x7FFFFFFF)
  {
    v20 = (a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    if ((a2 & 0x80000000) != 0)
    {
      result = 0.0;
      *(v20 + 8) = 0u;
      *(v20 + 24) = 0u;
      *v20 = a2 & 0x7FFFFFFF;
    }

    else
    {
      *(v20 + 24) = (a2 - 1);
    }
  }

  else
  {
    v19 = *(v7 + 56);

    v19(a1, a2);
  }

  return result;
}

unint64_t sub_2686227A4()
{
  result = qword_28028CE18[0];
  if (!qword_28028CE18[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_28028CE18);
  }

  return result;
}

unint64_t sub_268622844(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_2686227A4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_268622914(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_2686227A4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26862299C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

double sub_268622AD8(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFD8)
    {
      v15 = ~v7 + a2;
      v16 = a1;
      bzero(a1, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 40);
      a1 = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(a1 + v9) = v14;
      }

      else
      {
        *(a1 + v9) = v14;
      }
    }

    else if (v13)
    {
      *(a1 + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(a1 + v9) = 0;
  }

  else if (v13)
  {
    *(a1 + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v19 = (a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    if ((a2 & 0x80000000) != 0)
    {
      result = 0.0;
      *(v19 + 8) = 0u;
      *(v19 + 24) = 0u;
      *v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      *(v19 + 24) = a2 - 1;
    }
  }

  else
  {
    v18 = *(v5 + 56);

    v18();
  }

  return result;
}

uint64_t sub_268622C9C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_268622CE4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_268622FA4(unint64_t result, int a2)
{
  v3 = 8 * a2;
  if ((8 * a2) >= 0x80)
  {
    if (v3 < 0x4000)
    {
      if (result < 0x80)
      {
        v5 = 2;
        v4 = 1;
        goto LABEL_59;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        v5 = 2;
        goto LABEL_46;
      }

      if (result >> 35)
      {
        v5 = 2;
        goto LABEL_50;
      }

      if (!(result >> 21))
      {
        v4 = 2;
        v5 = 2;
LABEL_18:
        if (result < 0x4000)
        {
          goto LABEL_59;
        }

LABEL_58:
        ++v4;
        goto LABEL_59;
      }

      v5 = 2;
LABEL_56:
      v4 = 4;
      goto LABEL_57;
    }

    if (v3 >> 21)
    {
      if (v3 >> 28)
      {
        if (result < 0x80)
        {
          v5 = 5;
          v4 = 1;
          goto LABEL_59;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          v5 = 5;
          goto LABEL_46;
        }

        if (result >> 35)
        {
          v5 = 5;
          goto LABEL_50;
        }

        if (!(result >> 21))
        {
          v5 = 5;
          goto LABEL_10;
        }

        v5 = 5;
        goto LABEL_56;
      }

      if (result < 0x80)
      {
        v5 = 4;
        v4 = 1;
        goto LABEL_59;
      }

      if ((result & 0x8000000000000000) == 0)
      {
        if (!(result >> 35))
        {
          if (!(result >> 21))
          {
            v5 = 4;
            goto LABEL_10;
          }

          v4 = 4;
          v5 = 4;
LABEL_57:
          if (!(result >> 28))
          {
            goto LABEL_59;
          }

          goto LABEL_58;
        }

        v5 = 4;
        goto LABEL_50;
      }

      v5 = 4;
    }

    else
    {
      if (result < 0x80)
      {
        v5 = 3;
        v4 = 1;
        goto LABEL_59;
      }

      if ((result & 0x8000000000000000) == 0)
      {
        if (!(result >> 35))
        {
          if (!(result >> 21))
          {
            v5 = 3;
            goto LABEL_10;
          }

          v5 = 3;
          goto LABEL_56;
        }

        v5 = 3;
        goto LABEL_50;
      }

      v5 = 3;
    }

LABEL_46:
    v4 = 10;
    goto LABEL_59;
  }

  if (result < 0x80)
  {
    v4 = 1;
    v5 = 1;
    goto LABEL_59;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    v5 = 1;
    goto LABEL_46;
  }

  if (!(result >> 35))
  {
    v5 = 1;
    if (result < 0x200000)
    {
LABEL_10:
      v4 = 2;
      goto LABEL_18;
    }

    goto LABEL_56;
  }

  v5 = 1;
LABEL_50:
  if (result >> 49)
  {
    result >>= 28;
    v4 = 8;
    goto LABEL_57;
  }

  v4 = 6;
  if (result >> 42)
  {
    goto LABEL_58;
  }

LABEL_59:
  v6 = v5 + v4;
  v7 = __OFADD__(*v2, v6);
  v8 = *v2 + v6;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *v2 = v8;
  }

  return result;
}

uint64_t sub_268623180(uint64_t result, int a2)
{
  v3 = 8 * a2;
  v4 = 2;
  v5 = 3;
  v6 = 4;
  if ((8 * a2) >> 28)
  {
    v6 = 5;
  }

  if (v3 >= 0x200000)
  {
    v5 = v6;
  }

  if ((8 * a2) >> 14)
  {
    v4 = v5;
  }

  if (v3 >= 0x80)
  {
    v7 = v4;
  }

  else
  {
    v7 = 1;
  }

  v8 = (2 * result) ^ (result >> 31);
  v9 = 2;
  v10 = 3;
  v11 = 4;
  if (v8 >> 28)
  {
    v11 = 5;
  }

  if (v8 >= 0x200000)
  {
    v10 = v11;
  }

  if (v8 >> 14)
  {
    v9 = v10;
  }

  if (v8 >= 0x80)
  {
    v12 = v9;
  }

  else
  {
    v12 = 1;
  }

  v13 = v12 + v7;
  v14 = __OFADD__(*v2, v13);
  v15 = *v2 + v13;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    *v2 = v15;
  }

  return result;
}

uint64_t sub_268623218(uint64_t result, int a2)
{
  v3 = 8 * a2;
  v4 = 2;
  v5 = 3;
  v6 = 4;
  if ((8 * a2) >> 28)
  {
    v6 = 5;
  }

  if (v3 >= 0x200000)
  {
    v5 = v6;
  }

  if ((8 * a2) >> 14)
  {
    v4 = v5;
  }

  if (v3 >= 0x80)
  {
    v7 = v4;
  }

  else
  {
    v7 = 1;
  }

  v8 = (2 * result) ^ (result >> 63);
  if (v8 < 0x80)
  {
    v9 = 1;
    goto LABEL_25;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
    v9 = 10;
    goto LABEL_25;
  }

  if (!(v8 >> 35))
  {
    if (v8 < 0x200000)
    {
      v9 = 2;
      if (v8 < 0x4000)
      {
        goto LABEL_25;
      }

LABEL_24:
      ++v9;
      goto LABEL_25;
    }

    v9 = 4;
LABEL_23:
    if (!(v8 >> 28))
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (v8 >> 49)
  {
    v8 >>= 28;
    v9 = 8;
    goto LABEL_23;
  }

  v9 = 6;
  if (v8 >> 42)
  {
    goto LABEL_24;
  }

LABEL_25:
  v10 = v9 + v7;
  v11 = __OFADD__(*v2, v10);
  v12 = *v2 + v10;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *v2 = v12;
  }

  return result;
}

uint64_t sub_2686232E8(uint64_t result, unint64_t a2, int a3)
{
  v4 = 8 * a3;
  v5 = 2;
  v6 = 3;
  v7 = 4;
  if ((8 * a3) >> 28)
  {
    v7 = 5;
  }

  if (v4 >= 0x200000)
  {
    v6 = v7;
  }

  if ((8 * a3) >> 14)
  {
    v5 = v6;
  }

  if (v4 >= 0x80)
  {
    v8 = v5;
  }

  else
  {
    v8 = 1;
  }

  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 == 2)
    {
      v12 = *(result + 16);
      v11 = *(result + 24);
      v10 = v11 - v12;
      if (__OFSUB__(v11, v12))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    else
    {
      v10 = 0;
    }

LABEL_20:
    result = sub_2685B5B0C(v10);
    v13 = v8 + result;
    if (__OFADD__(v8, result))
    {
      __break(1u);
    }

    else
    {
      v14 = __OFADD__(v13, v10);
      v15 = v13 + v10;
      if (!v14)
      {
        v14 = __OFADD__(*v3, v15);
        v16 = *v3 + v15;
        if (!v14)
        {
          *v3 = v16;
          return result;
        }

        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (!v9)
  {
    v10 = BYTE6(a2);
    goto LABEL_20;
  }

LABEL_17:
  if (!__OFSUB__(HIDWORD(result), result))
  {
    v10 = HIDWORD(result) - result;
    goto LABEL_20;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2686233D0(uint64_t result, int a2)
{
  v3 = 8 * a2;
  v4 = 2;
  v5 = 3;
  v6 = 4;
  if ((8 * a2) >> 28)
  {
    v6 = 5;
  }

  if (v3 >= 0x200000)
  {
    v5 = v6;
  }

  if ((8 * a2) >> 14)
  {
    v4 = v5;
  }

  if (v3 >= 0x80)
  {
    v7 = v4;
  }

  else
  {
    v7 = 1;
  }

  v8 = *(result + 16);
  if (v8)
  {
    v9 = 0;
    v10 = (result + 32);
    while (1)
    {
      v12 = *v10++;
      v11 = v12;
      if ((v12 & 0x80000000) != 0)
      {
        v13 = __OFADD__(v9, 10);
        v9 += 10;
        if (v13)
        {
          goto LABEL_36;
        }
      }

      else if (v11 > 0x7F)
      {
        if (v11 >> 28)
        {
          v14 = 5;
        }

        else
        {
          v14 = 4;
        }

        if (v11 < 0x200000)
        {
          v14 = 3;
        }

        if (v11 >= 0x4000)
        {
          v15 = v14;
        }

        else
        {
          v15 = 2;
        }

        v13 = __OFADD__(v9, v15);
        v9 += v15;
        if (v13)
        {
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }
      }

      else
      {
        v13 = __OFADD__(v9++, 1);
        if (v13)
        {
          goto LABEL_36;
        }
      }

      if (!--v8)
      {
        goto LABEL_32;
      }
    }
  }

  v9 = 0;
LABEL_32:
  result = sub_2685B5B0C(v9);
  v16 = v7 + result;
  if (__OFADD__(v7, result))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v13 = __OFADD__(v16, v9);
  v17 = v16 + v9;
  if (v13)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v13 = __OFADD__(*v2, v17);
  v18 = *v2 + v17;
  if (!v13)
  {
    *v2 = v18;
    return result;
  }

LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_2686234F0(uint64_t result, int a2)
{
  v3 = 8 * a2;
  v4 = 2;
  v5 = 3;
  v6 = 4;
  if ((8 * a2) >> 28)
  {
    v6 = 5;
  }

  if (v3 >= 0x200000)
  {
    v5 = v6;
  }

  if ((8 * a2) >> 14)
  {
    v4 = v5;
  }

  if (v3 >= 0x80)
  {
    v7 = v4;
  }

  else
  {
    v7 = 1;
  }

  v8 = *(result + 16);
  if (v8)
  {
    v9 = 0;
    v10 = (result + 32);
    while (1)
    {
      v11 = *v10++;
      v12 = (2 * v11) ^ (v11 >> 31);
      if (v12 >= 0x80)
      {
        if (v12 >> 14)
        {
          if (v12 >= 0x200000)
          {
            v13 = v12 >> 28 ? 5 : 4;
          }

          else
          {
            v13 = 3;
          }
        }

        else
        {
          v13 = 2;
        }
      }

      else
      {
        v13 = 1;
      }

      v14 = __OFADD__(v9, v13);
      v9 += v13;
      if (v14)
      {
        break;
      }

      if (!--v8)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v9 = 0;
LABEL_25:
  result = sub_2685B5B0C(v9);
  v15 = v7 + result;
  if (__OFADD__(v7, result))
  {
    goto LABEL_30;
  }

  v14 = __OFADD__(v15, v9);
  v16 = v15 + v9;
  if (v14)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v14 = __OFADD__(*v2, v16);
  v17 = *v2 + v16;
  if (!v14)
  {
    *v2 = v17;
    return result;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_268623604(uint64_t result, int a2)
{
  v3 = 8 * a2;
  v4 = 2;
  v5 = 3;
  v6 = 4;
  if ((8 * a2) >> 28)
  {
    v6 = 5;
  }

  if (v3 >= 0x200000)
  {
    v5 = v6;
  }

  if ((8 * a2) >> 14)
  {
    v4 = v5;
  }

  if (v3 >= 0x80)
  {
    v7 = v4;
  }

  else
  {
    v7 = 1;
  }

  v8 = *(result + 16);
  if (v8)
  {
    v9 = 0;
    v10 = (result + 32);
    while (1)
    {
      v11 = *v10++;
      v12 = (2 * v11) ^ (v11 >> 63);
      if (v12 < 0x80)
      {
        v13 = 1;
        goto LABEL_27;
      }

      if ((v12 & 0x8000000000000000) != 0)
      {
        v13 = 10;
        goto LABEL_27;
      }

      if (v12 >> 35)
      {
        if (v12 >> 49)
        {
          v12 >>= 28;
          v13 = 8;
LABEL_25:
          if (!(v12 >> 28))
          {
            goto LABEL_27;
          }

LABEL_26:
          ++v13;
          goto LABEL_27;
        }

        v13 = 6;
        if (v12 >> 42)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v12 >= 0x200000)
        {
          v13 = 4;
          goto LABEL_25;
        }

        v13 = 2;
        if (v12 >= 0x4000)
        {
          goto LABEL_26;
        }
      }

LABEL_27:
      v14 = __OFADD__(v9, v13);
      v9 += v13;
      if (v14)
      {
        __break(1u);
        goto LABEL_36;
      }

      if (!--v8)
      {
        goto LABEL_31;
      }
    }
  }

  v9 = 0;
LABEL_31:
  result = sub_2685B5B0C(v9);
  v15 = v7 + result;
  if (__OFADD__(v7, result))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v14 = __OFADD__(v15, v9);
  v16 = v15 + v9;
  if (v14)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v14 = __OFADD__(*v2, v16);
  v17 = *v2 + v16;
  if (!v14)
  {
    *v2 = v17;
    return result;
  }

LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_268623748(uint64_t result, int a2)
{
  v3 = 8 * a2;
  v4 = 2;
  v5 = 3;
  v6 = 4;
  if ((8 * a2) >> 28)
  {
    v6 = 5;
  }

  if (v3 >= 0x200000)
  {
    v5 = v6;
  }

  if ((8 * a2) >> 14)
  {
    v4 = v5;
  }

  if (v3 >= 0x80)
  {
    v7 = v4;
  }

  else
  {
    v7 = 1;
  }

  v8 = *(result + 16);
  if (v8)
  {
    v9 = 0;
    v10 = (result + 32);
    while (1)
    {
      v12 = *v10++;
      v11 = v12;
      if (v12 >= 0x80)
      {
        v14 = v11 >> 14;
        v15 = v11 >> 28 ? 5 : 4;
        v13 = v11 >= 0x200000 ? v15 : 3;
        if (!v14)
        {
          v13 = 2;
        }
      }

      else
      {
        v13 = 1;
      }

      v16 = __OFADD__(v9, v13);
      v9 += v13;
      if (v16)
      {
        break;
      }

      if (!--v8)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v9 = 0;
LABEL_26:
  result = sub_2685B5B0C(v9);
  v17 = v7 + result;
  if (__OFADD__(v7, result))
  {
    goto LABEL_31;
  }

  v16 = __OFADD__(v17, v9);
  v18 = v17 + v9;
  if (v16)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v16 = __OFADD__(*v2, v18);
  v19 = *v2 + v18;
  if (!v16)
  {
    *v2 = v19;
    return result;
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_268623850(uint64_t result, int a2)
{
  v3 = 8 * a2;
  v4 = 2;
  v5 = 3;
  v6 = 4;
  if ((8 * a2) >> 28)
  {
    v6 = 5;
  }

  if (v3 >= 0x200000)
  {
    v5 = v6;
  }

  if ((8 * a2) >> 14)
  {
    v4 = v5;
  }

  if (v3 >= 0x80)
  {
    v7 = v4;
  }

  else
  {
    v7 = 1;
  }

  v8 = *(result + 16);
  if (v8)
  {
    v9 = 0;
    v10 = (result + 32);
    while (1)
    {
      v12 = *v10++;
      v11 = v12;
      if (v12 < 0x80)
      {
        v13 = 1;
        goto LABEL_27;
      }

      if ((v11 & 0x8000000000000000) != 0)
      {
        v13 = 10;
        goto LABEL_27;
      }

      if (v11 >> 35)
      {
        if (v11 >> 49)
        {
          v11 >>= 28;
          v13 = 8;
LABEL_25:
          if (!(v11 >> 28))
          {
            goto LABEL_27;
          }

LABEL_26:
          ++v13;
          goto LABEL_27;
        }

        v13 = 6;
        if (v11 >> 42)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v11 >= 0x200000)
        {
          v13 = 4;
          goto LABEL_25;
        }

        v13 = 2;
        if (v11 >= 0x4000)
        {
          goto LABEL_26;
        }
      }

LABEL_27:
      v14 = __OFADD__(v9, v13);
      v9 += v13;
      if (v14)
      {
        __break(1u);
        goto LABEL_36;
      }

      if (!--v8)
      {
        goto LABEL_31;
      }
    }
  }

  v9 = 0;
LABEL_31:
  result = sub_2685B5B0C(v9);
  v15 = v7 + result;
  if (__OFADD__(v7, result))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v14 = __OFADD__(v15, v9);
  v16 = v15 + v9;
  if (v14)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v14 = __OFADD__(*v2, v16);
  v17 = *v2 + v16;
  if (!v14)
  {
    *v2 = v17;
    return result;
  }

LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_26862398C(uint64_t result, int a2)
{
  v3 = 8 * a2;
  v4 = 2;
  v5 = 3;
  v6 = 4;
  if ((8 * a2) >> 28)
  {
    v6 = 5;
  }

  if (v3 >= 0x200000)
  {
    v5 = v6;
  }

  if ((8 * a2) >> 14)
  {
    v4 = v5;
  }

  if (v3 >= 0x80)
  {
    v7 = v4;
  }

  else
  {
    v7 = 1;
  }

  v8 = *(result + 16);
  if (v8 >> 61)
  {
    __break(1u);
    goto LABEL_16;
  }

  v9 = 4 * v8;
  result = sub_2685B5B0C(4 * v8);
  v10 = v7 + result;
  if (__OFADD__(v7, result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = __OFADD__(v10, v9);
  v12 = v10 + v9;
  if (v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = __OFADD__(*v2, v12);
  v13 = *v2 + v12;
  if (!v11)
  {
    *v2 = v13;
    return result;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_268623A3C(uint64_t result, int a2)
{
  v3 = 8 * a2;
  v4 = 2;
  v5 = 3;
  v6 = 4;
  if ((8 * a2) >> 28)
  {
    v6 = 5;
  }

  if (v3 >= 0x200000)
  {
    v5 = v6;
  }

  if ((8 * a2) >> 14)
  {
    v4 = v5;
  }

  if (v3 >= 0x80)
  {
    v7 = v4;
  }

  else
  {
    v7 = 1;
  }

  v8 = *(result + 16);
  if (v8 >> 60)
  {
    __break(1u);
    goto LABEL_16;
  }

  v9 = 8 * v8;
  result = sub_2685B5B0C(8 * v8);
  v10 = v7 + result;
  if (__OFADD__(v7, result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = __OFADD__(v10, v9);
  v12 = v10 + v9;
  if (v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = __OFADD__(*v2, v12);
  v13 = *v2 + v12;
  if (!v11)
  {
    *v2 = v13;
    return result;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_268623AEC(uint64_t a1, int a2)
{
  v3 = 8 * a2;
  v4 = 2;
  v5 = 3;
  v6 = 4;
  if ((8 * a2) >> 28)
  {
    v6 = 5;
  }

  if (v3 >= 0x200000)
  {
    v5 = v6;
  }

  if ((8 * a2) >> 14)
  {
    v4 = v5;
  }

  if (v3 >= 0x80)
  {
    v7 = v4;
  }

  else
  {
    v7 = 1;
  }

  v8 = *(a1 + 16);
  result = sub_2685B5B0C(v8);
  v10 = v7 + result;
  if (__OFADD__(v7, result))
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = __OFADD__(v10, v8);
  v12 = v10 + v8;
  if (v11)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = __OFADD__(*v2, v12);
  v13 = *v2 + v12;
  if (!v11)
  {
    *v2 = v13;
    return result;
  }

LABEL_16:
  __break(1u);
  return result;
}

void sub_268623B8C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = 8 * a2;
  v6 = 2;
  v7 = 3;
  v8 = 4;
  if ((8 * a2) >> 28)
  {
    v8 = 5;
  }

  if (v5 >= 0x200000)
  {
    v7 = v8;
  }

  if ((8 * a2) >> 14)
  {
    v6 = v7;
  }

  if (v5 >= 0x80)
  {
    v9 = v6;
  }

  else
  {
    v9 = 1;
  }

  v10 = *v4 + v9;
  if (__OFADD__(*v4, v9))
  {
    __break(1u);
  }

  else
  {
    *v4 = v10;
    v11 = (*(a4 + 40))(a3, a4);
    v12 = sub_26868413C(v11);
    if (!__OFADD__(v10, v12))
    {
      *v4 = v10 + v12;
      return;
    }
  }

  __break(1u);
}

uint64_t sub_268623C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a4;
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 8 * v10;
  v13 = 2;
  v14 = 3;
  v15 = 4;
  if ((8 * v10) >> 28)
  {
    v15 = 5;
  }

  if (v12 >= 0x200000)
  {
    v14 = v15;
  }

  if ((8 * v10) >> 14)
  {
    v13 = v14;
  }

  if (v12 >= 0x80)
  {
    v16 = v13;
  }

  else
  {
    v16 = 1;
  }

  result = sub_268689B74();
  v18 = result * v16;
  if ((result * v16) >> 64 == (result * v16) >> 63)
  {
    v19 = *v4 + v18;
    if (__OFADD__(*v4, v18))
    {
      goto LABEL_37;
    }

    *v4 = v19;
    result = sub_268689B74();
    if (!result)
    {
      return result;
    }

    v26 = v9;
    v27 = v4;
    v20 = 0;
    v30 = *(v33 + 40);
    v31 = v33 + 40;
    v32 = (v8 + 16);
    v28 = v5;
    v29 = (v8 + 8);
    while (1)
    {
      v21 = sub_268689B64();
      sub_268689B24();
      if (v21)
      {
        result = (*(v8 + 16))(v11, a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v20, a3);
        v22 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          goto LABEL_32;
        }
      }

      else
      {
        result = sub_268689D14();
        if (v26 != 8)
        {
          goto LABEL_38;
        }

        v34 = result;
        (*v32)(v11, &v34, a3);
        result = swift_unknownObjectRelease();
        v22 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
LABEL_32:
          __break(1u);
LABEL_33:
          *v27 = v19;
          return result;
        }
      }

      v23 = v30(a3, v33);
      result = (*v29)(v11, a3);
      v24 = 4;
      if (v23 >> 28)
      {
        v24 = 5;
      }

      if (v23 < 0x200000)
      {
        v24 = 3;
      }

      if (v23 < 0x4000)
      {
        v24 = 2;
      }

      if (v23 <= 0x7F)
      {
        v24 = 1;
      }

      if ((v23 & 0x80000000) != 0)
      {
        v24 = 10;
      }

      v25 = __OFADD__(v19, v24);
      v19 += v24;
      if (v25)
      {
        break;
      }

      result = sub_268689B74();
      ++v20;
      if (v22 == result)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_268623F10(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v36 = a4;
  v9 = *(a3 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v32 = v11;
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v10;
  sub_268689BA4();
  swift_getWitnessTable();
  result = sub_268689C24();
  if (result)
  {
    return result;
  }

  v14 = 8 * a2;
  v15 = 2;
  v16 = 3;
  v17 = 4;
  if ((8 * a2) >> 28)
  {
    v17 = 5;
  }

  if (v14 >= 0x200000)
  {
    v16 = v17;
  }

  if ((8 * a2) >> 14)
  {
    v15 = v16;
  }

  if (v14 >= 0x80)
  {
    v18 = v15;
  }

  else
  {
    v18 = 1;
  }

  v19 = __OFADD__(*v4, v18);
  v20 = *v4 + v18;
  if (v19)
  {
    goto LABEL_39;
  }

  v30 = v20;
  v31 = v5;
  v29 = v4;
  *v4 = v20;
  if (sub_268689B74())
  {
    v21 = 0;
    v22 = 0;
    v33 = *(v36 + 40);
    v34 = v36 + 40;
    v35 = (v9 + 16);
    while (1)
    {
      v23 = sub_268689B64();
      sub_268689B24();
      if (v23)
      {
        (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v21, a3);
        v24 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_32;
        }
      }

      else
      {
        result = sub_268689D14();
        if (v32 != 8)
        {
          goto LABEL_42;
        }

        v37 = result;
        (*v35)(v12, &v37, a3);
        swift_unknownObjectRelease();
        v24 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }
      }

      v25 = v33(a3, v36);
      result = (*(v9 + 8))(v12, a3);
      v26 = 4;
      if (v25 >> 28)
      {
        v26 = 5;
      }

      if (v25 < 0x200000)
      {
        v26 = 3;
      }

      if (v25 < 0x4000)
      {
        v26 = 2;
      }

      if (v25 <= 0x7F)
      {
        v26 = 1;
      }

      if ((v25 & 0x80000000) != 0)
      {
        v26 = 10;
      }

      v19 = __OFADD__(v22, v26);
      v22 += v26;
      if (v19)
      {
        break;
      }

      ++v21;
      if (v24 == sub_268689B74())
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_33:
  v22 = 0;
LABEL_34:
  result = sub_2685B5B0C(v22);
  v27 = result + v22;
  if (!__OFADD__(result, v22))
  {
    v19 = __OFADD__(v30, v27);
    v28 = v30 + v27;
    if (!v19)
    {
      *v29 = v28;
      return result;
    }

    goto LABEL_41;
  }

LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

unint64_t sub_268624240(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v6 = 8 * a2;
  v7 = 2;
  v8 = 3;
  v9 = 4;
  if ((8 * a2) >> 28)
  {
    v9 = 5;
  }

  if (v6 >= 0x200000)
  {
    v8 = v9;
  }

  if ((8 * a2) >> 14)
  {
    v7 = v8;
  }

  if (v6 >= 0x80)
  {
    v10 = v7;
  }

  else
  {
    v10 = 1;
  }

  result = sub_2685B59A8(a3, a4);
  if (!v5)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v12 = result;
      result = sub_268684180(result);
      v13 = v10 + result;
      if (!__OFADD__(v10, result))
      {
        v14 = __OFADD__(v13, v12);
        v15 = v13 + v12;
        if (!v14)
        {
          v14 = __OFADD__(*v4, v15);
          v16 = *v4 + v15;
          if (!v14)
          {
            *v4 = v16;
            return result;
          }

LABEL_20:
          __break(1u);
          return result;
        }

LABEL_19:
        __break(1u);
        goto LABEL_20;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_2686242FC(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = 8 * a2;
  v6 = 4;
  v7 = 6;
  v8 = 10;
  if (!((8 * a2) >> 28))
  {
    v8 = 8;
  }

  if (v5 >= 0x200000)
  {
    v7 = v8;
  }

  if ((8 * a2) >> 14)
  {
    v6 = v7;
  }

  if (v5 >= 0x80)
  {
    v9 = v6;
  }

  else
  {
    v9 = 2;
  }

  v10 = __OFADD__(*v4, v9);
  v11 = *v4 + v9;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *v4 = v11;
    return (*(a4 + 72))(v4, &type metadata for BinaryEncodingSizeVisitor, &off_28792CAA8, a3);
  }

  return result;
}

uint64_t sub_2686243A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a4;
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 8 * v10;
  v13 = 2;
  v14 = 3;
  v15 = 4;
  if ((8 * v10) >> 28)
  {
    v15 = 5;
  }

  if (v12 >= 0x200000)
  {
    v14 = v15;
  }

  if ((8 * v10) >> 14)
  {
    v13 = v14;
  }

  if (v12 >= 0x80)
  {
    v16 = v13;
  }

  else
  {
    v16 = 1;
  }

  result = sub_268689B74();
  if (result + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  v18 = 2 * result * v16;
  if ((2 * result * v16) >> 64 != v18 >> 63)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v19 = __OFADD__(*v4, v18);
  v20 = *v4 + v18;
  if (!v19)
  {
    *v4 = v20;
    result = sub_268689B74();
    if (!result)
    {
      return result;
    }

    v21 = 0;
    v27 = v4;
    v28 = (v8 + 16);
    v25 = v9;
    v26 = v29 + 72;
    while (1)
    {
      v22 = sub_268689B64();
      sub_268689B24();
      if (v22)
      {
        result = (*(v8 + 16))(v11, a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v21, a3);
        v23 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = sub_268689D14();
        if (v25 != 8)
        {
          goto LABEL_28;
        }

        v30 = result;
        (*v28)(v11, &v30, a3);
        result = swift_unknownObjectRelease();
        v23 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
LABEL_23:
          __break(1u);
          return result;
        }
      }

      (*(v29 + 72))(v27, &type metadata for BinaryEncodingSizeVisitor, &off_28792CAA8, a3);
      result = (*(v8 + 8))(v11, a3);
      if (!v5)
      {
        result = sub_268689B74();
        ++v21;
        if (v23 != result)
        {
          continue;
        }
      }

      return result;
    }
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_268624644(unint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v87 = *(a6 + 8);
  v75 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v70 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v72 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v68 - v14;
  v88 = *(a5 + 8);
  v85 = a3;
  v16 = swift_getAssociatedTypeWitness();
  v69 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v96 = v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v73 = v68 - v19;
  v90 = v20;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v84 = sub_268689C74();
  v22 = *(v84 - 8);
  v23 = MEMORY[0x28223BE20](v84);
  v77 = v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v83 = v68 - v25;
  v26 = 8 * a2;
  if ((8 * a2) >= 0x80)
  {
    if (v26 >= 0x4000)
    {
      if (v26 >= 0x200000)
      {
        v28 = v26 >> 28 == 0;
        v27 = 4;
        if (!v28)
        {
          v27 = 5;
        }
      }

      else
      {
        v27 = 3;
      }
    }

    else
    {
      v27 = 2;
    }
  }

  else
  {
    v27 = 1;
  }

  v68[0] = v27;
  v76 = v6;
  v98 = AssociatedTypeWitness;
  v71 = v15;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v29 = sub_268689D84();
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v89 = v29 | 0x8000000000000000;
  }

  else
  {
    v33 = -1 << *(a1 + 32);
    v31 = ~v33;
    v30 = a1 + 64;
    v34 = -v33;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    else
    {
      v35 = -1;
    }

    v32 = v35 & *(a1 + 64);
    v89 = a1;
  }

  v36 = v77;
  v94 = (v69 + 32);
  v93 = (v70 + 32);
  v82 = TupleTypeMetadata2 - 8;
  v68[2] = v31;
  v37 = (v31 + 64) >> 6;
  v68[4] = v69 + 16;
  v68[3] = v70 + 16;
  v81 = (v22 + 32);
  v78 = v88 + 48;
  v74 = v87 + 48;
  v79 = (v70 + 8);
  v80 = (v69 + 8);
  v68[1] = a1;

  v39 = 0;
  v40 = v89;
  v41 = v90;
  v42 = v72;
  v86 = v30;
  v91 = 0;
  v92 = v32;
  if ((v89 & 0x8000000000000000) != 0)
  {
    goto LABEL_18;
  }

LABEL_16:
  if (v32)
  {
    v43 = v32;
    v44 = v39;
    v45 = v73;
LABEL_27:
    v95 = (v43 - 1) & v43;
    v51 = __clz(__rbit64(v43)) | (v44 << 6);
    (*(v69 + 16))(v45, *(v40 + 48) + *(v69 + 72) * v51, v41);
    v52 = *(v40 + 56) + *(v70 + 72) * v51;
    v46 = v71;
    v47 = v98;
    (*(v70 + 16))(v71, v52, v98);
    goto LABEL_28;
  }

  if (v37 <= v39 + 1)
  {
    v48 = v39 + 1;
  }

  else
  {
    v48 = v37;
  }

  v49 = v48 - 1;
  v50 = v39;
  v45 = v73;
  while (1)
  {
    v44 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      break;
    }

    if (v44 >= v37)
    {
      v95 = 0;
      v54 = 1;
      v36 = v77;
      while (1)
      {
        v55 = *(TupleTypeMetadata2 - 8);
        (*(v55 + 56))(v36, v54, 1, TupleTypeMetadata2);
        v56 = v83;
        (*v81)(v83, v36, v84);
        if ((*(v55 + 48))(v56, 1, TupleTypeMetadata2) == 1)
        {
          sub_2686265DC(v89);
          swift_getAssociatedConformanceWitness();
          result = sub_2686898E4();
          v66 = result * v68[0];
          if ((result * v68[0]) >> 64 != (result * v68[0]) >> 63)
          {
            goto LABEL_59;
          }

          v64 = __OFADD__(*v76, v66);
          v67 = *v76 + v66;
          if (!v64)
          {
            *v76 = v67;
            return result;
          }

          goto LABEL_60;
        }

        v39 = v49;
        v57 = *(TupleTypeMetadata2 + 48);
        v58 = v96;
        v41 = v90;
        (*v94)(v96, v56, v90);
        (*v93)(v42, &v56[v57], v98);
        v99 = 0;
        v59 = v97;
        (*(v88 + 48))(v58, 1, &v99, &type metadata for BinaryEncodingSizeVisitor, &off_28792CAA8);
        if (v59)
        {
          v97 = v59;
          sub_2686265DC(v89);
          (*v79)(v42, v98);
          return (*v80)(v96, v41);
        }

        (*(v87 + 48))(v42, 2, &v99, &type metadata for BinaryEncodingSizeVisitor, &off_28792CAA8);
        v97 = 0;
        (*v79)(v42, v98);
        result = (*v80)(v96, v41);
        v40 = v89;
        if (v99 < 0x80)
        {
          v60 = 1;
          v61 = v76;
          v30 = v86;
          goto LABEL_48;
        }

        v61 = v76;
        v30 = v86;
        if ((v99 & 0x8000000000000000) != 0)
        {
          v60 = 10;
          goto LABEL_48;
        }

        if (v99 >> 35)
        {
          if (v99 >> 49)
          {
            v62 = v99 >> 28;
            v60 = 8;
LABEL_46:
            if (!(v62 >> 28))
            {
              goto LABEL_48;
            }

LABEL_47:
            ++v60;
            goto LABEL_48;
          }

          v60 = 6;
          if (v99 >> 42)
          {
            goto LABEL_47;
          }
        }

        else
        {
          if (v99 >= 0x200000)
          {
            v60 = 4;
            v62 = v99;
            goto LABEL_46;
          }

          v60 = 2;
          if (v99 >= 0x4000)
          {
            goto LABEL_47;
          }
        }

LABEL_48:
        v63 = v60 + v99;
        if (__OFADD__(v60, v99))
        {
          goto LABEL_57;
        }

        v64 = __OFADD__(*v61, v63);
        v65 = *v61 + v63;
        if (v64)
        {
          goto LABEL_58;
        }

        *v61 = v65;
        v32 = v95;
        v91 = v39;
        v92 = v95;
        if ((v40 & 0x8000000000000000) == 0)
        {
          goto LABEL_16;
        }

LABEL_18:
        if (sub_268689D94())
        {
          sub_268689E04();
          swift_unknownObjectRelease();
          v46 = v71;
          v47 = v98;
          sub_268689E04();
          swift_unknownObjectRelease();
          v44 = v91;
          v95 = v92;
LABEL_28:
          v53 = *(TupleTypeMetadata2 + 48);
          v36 = v77;
          (*v94)();
          (*v93)(&v36[v53], v46, v47);
          v54 = 0;
          v49 = v44;
          v42 = v72;
          continue;
        }

        v54 = 1;
        v49 = v91;
        v95 = v92;
      }
    }

    v43 = *(v30 + 8 * v44);
    ++v50;
    if (v43)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
  return result;
}

uint64_t sub_268624FA0(unint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v82 = a6;
  v77 = *(a4 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v86 = v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v75 - v12;
  v15 = *(v14 + 8);
  v93 = v16;
  v94 = v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v76 = *(AssociatedTypeWitness - 8);
  v18 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v97 = v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = v75 - v20;
  v95 = v22;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v92 = sub_268689C74();
  v24 = *(v92 - 8);
  v25 = MEMORY[0x28223BE20](v92);
  v80 = v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v91 = v75 - v27;
  v28 = 8 * a2;
  if ((8 * a2) >= 0x80)
  {
    v29 = v80;
    if (v28 >= 0x4000)
    {
      if (v28 >= 0x200000)
      {
        v31 = v28 >> 28 == 0;
        v30 = 4;
        if (!v31)
        {
          v30 = 5;
        }
      }

      else
      {
        v30 = 3;
      }
    }

    else
    {
      v30 = 2;
    }

    v75[0] = v30;
  }

  else
  {
    v75[0] = 1;
    v29 = v80;
  }

  v87 = v6;
  v101 = a4;
  v79 = v13;
  v78 = v21;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v32 = sub_268689D84();
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = v32 | 0x8000000000000000;
  }

  else
  {
    v37 = -1 << *(a1 + 32);
    v34 = ~v37;
    v33 = a1 + 64;
    v38 = -v37;
    if (v38 < 64)
    {
      v39 = ~(-1 << v38);
    }

    else
    {
      v39 = -1;
    }

    v35 = v39 & *(a1 + 64);
    v36 = a1;
  }

  v100 = (v76 + 32);
  v99 = (v77 + 32);
  v90 = TupleTypeMetadata2 - 8;
  v75[2] = v34;
  v40 = (v34 + 64) >> 6;
  v75[4] = v76 + 16;
  v75[3] = v77 + 16;
  v89 = (v24 + 32);
  v83 = v94 + 48;
  v84 = (v77 + 8);
  v85 = (v76 + 8);
  v75[1] = a1;

  v42 = 0;
  v43 = v95;
  v88 = v33;
  v96 = v36;
  v81 = v40;
  v98 = v35;
  if ((v36 & 0x8000000000000000) != 0)
  {
    goto LABEL_19;
  }

LABEL_17:
  if (v35)
  {
    v44 = v35;
    v45 = v42;
LABEL_29:
    v102 = (v44 - 1) & v44;
    v52 = __clz(__rbit64(v44)) | (v45 << 6);
    (*(v76 + 16))(v78, *(v36 + 48) + *(v76 + 72) * v52, v43);
    v53 = *(v36 + 56) + *(v77 + 72) * v52;
    v46 = v79;
    v47 = v101;
    (*(v77 + 16))(v79, v53, v101);
    goto LABEL_30;
  }

  if (v40 <= v42 + 1)
  {
    v48 = v42 + 1;
  }

  else
  {
    v48 = v40;
  }

  v49 = v48 - 1;
  v50 = v42;
  v51 = v97;
  while (1)
  {
    v45 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      break;
    }

    if (v45 >= v40)
    {
      v102 = 0;
      v55 = 1;
      while (1)
      {
        v56 = *(TupleTypeMetadata2 - 8);
        (*(v56 + 56))(v29, v55, 1, TupleTypeMetadata2);
        v57 = v91;
        (*v89)(v91, v29, v92);
        if ((*(v56 + 48))(v57, 1, TupleTypeMetadata2) == 1)
        {
          sub_2686265DC(v96);
          swift_getAssociatedConformanceWitness();
          result = sub_2686898E4();
          v73 = result * v75[0];
          if ((result * v75[0]) >> 64 != (result * v75[0]) >> 63)
          {
            goto LABEL_64;
          }

          v70 = __OFADD__(*v87, v73);
          v74 = *v87 + v73;
          if (!v70)
          {
            *v87 = v74;
            return result;
          }

          goto LABEL_65;
        }

        v58 = TupleTypeMetadata2;
        v59 = v29;
        v60 = v58;
        v61 = *(v58 + 48);
        v62 = v95;
        (*v100)(v51, v57, v95);
        v63 = &v57[v61];
        v64 = v86;
        v65 = v101;
        (*v99)(v86, v63, v101);
        v104 = 0;
        v66 = v103;
        (*(v94 + 48))(v51, 1, &v104, &type metadata for BinaryEncodingSizeVisitor, &off_28792CAA8);
        if (v66)
        {
          v103 = v66;
          sub_2686265DC(v96);
          (*v84)(v64, v65);
          return (*v85)(v51, v62);
        }

        sub_268623B8C(v64, 2, v65, v82);
        v103 = 0;
        (*v84)(v64, v65);
        result = (*v85)(v51, v62);
        v43 = v62;
        if (v104 < 0x80)
        {
          v67 = 1;
          v68 = v87;
          v33 = v88;
          v36 = v96;
          v29 = v59;
LABEL_42:
          TupleTypeMetadata2 = v60;
          v40 = v81;
          goto LABEL_43;
        }

        v68 = v87;
        v33 = v88;
        v36 = v96;
        v29 = v59;
        if ((v104 & 0x8000000000000000) != 0)
        {
          v67 = 10;
          goto LABEL_42;
        }

        TupleTypeMetadata2 = v60;
        if (v104 >> 35)
        {
          v40 = v81;
          if (v104 >> 49)
          {
            v72 = v104 >> 28;
            v67 = 8;
LABEL_54:
            if (!(v72 >> 28))
            {
              goto LABEL_43;
            }

            goto LABEL_55;
          }

          v67 = 6;
          if (!(v104 >> 42))
          {
            goto LABEL_43;
          }
        }

        else
        {
          v40 = v81;
          if (v104 >= 0x200000)
          {
            v67 = 4;
            v72 = v104;
            goto LABEL_54;
          }

          v67 = 2;
          if (v104 < 0x4000)
          {
            goto LABEL_43;
          }
        }

LABEL_55:
        ++v67;
LABEL_43:
        v69 = v67 + v104;
        if (__OFADD__(v67, v104))
        {
          goto LABEL_62;
        }

        v70 = __OFADD__(*v68, v69);
        v71 = *v68 + v69;
        if (v70)
        {
          goto LABEL_63;
        }

        *v68 = v71;
        v42 = v49;
        v35 = v102;
        v98 = v102;
        if ((v36 & 0x8000000000000000) == 0)
        {
          goto LABEL_17;
        }

LABEL_19:
        if (sub_268689D94())
        {
          sub_268689E04();
          swift_unknownObjectRelease();
          v46 = v79;
          v47 = v101;
          sub_268689E04();
          swift_unknownObjectRelease();
          v45 = v42;
          v102 = v98;
LABEL_30:
          v54 = *(TupleTypeMetadata2 + 48);
          v29 = v80;
          (*v100)();
          (*v99)(&v29[v54], v46, v47);
          v55 = 0;
          v49 = v45;
          goto LABEL_31;
        }

        v55 = 1;
        v49 = v42;
        v102 = v98;
LABEL_31:
        v51 = v97;
      }
    }

    v44 = *(v33 + 8 * v45);
    ++v50;
    if (v44)
    {
      v36 = v96;
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
  return result;
}

uint64_t sub_2686258C0(unint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v81 = a6;
  v77 = *(a4 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v79 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v70 - v12;
  v95 = *(v14 + 8);
  v92 = v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v76 = *(AssociatedTypeWitness - 8);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v100 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v80 = &v70 - v19;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v91 = sub_268689C74();
  v21 = *(v91 - 8);
  v22 = MEMORY[0x28223BE20](v91);
  v83 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v90 = &v70 - v24;
  v25 = 8 * a2;
  if ((8 * a2) >= 0x80)
  {
    v26 = v83;
    if (v25 >= 0x4000)
    {
      if (v25 >= 0x200000)
      {
        v28 = v25 >> 28 == 0;
        v27 = 4;
        if (!v28)
        {
          v27 = 5;
        }
      }

      else
      {
        v27 = 3;
      }
    }

    else
    {
      v27 = 2;
    }

    v71 = v27;
  }

  else
  {
    v71 = 1;
    v26 = v83;
  }

  v78 = v13;
  v98 = a4;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v29 = sub_268689D84();
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v94 = v29 | 0x8000000000000000;
  }

  else
  {
    v33 = -1 << *(a1 + 32);
    v31 = ~v33;
    v30 = a1 + 64;
    v34 = -v33;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    else
    {
      v35 = -1;
    }

    v32 = v35 & *(a1 + 64);
    v94 = a1;
  }

  v36 = a1;
  v97 = (v76 + 32);
  v37 = (v77 + 32);
  v89 = TupleTypeMetadata2 - 8;
  v73 = v31;
  v38 = (v31 + 64) >> 6;
  v75 = v76 + 16;
  v74 = v77 + 16;
  v88 = (v21 + 32);
  v84 = v95 + 48;
  v85 = (v77 + 8);
  v86 = (v76 + 8);
  v72 = v36;

  v40 = 0;
  v82 = v6;
  v102 = AssociatedTypeWitness;
  v41 = v79;
  v93 = v30;
  while (1)
  {
    v87 = v32;
    v96 = v40;
    if ((v94 & 0x8000000000000000) == 0)
    {
      if (!v32)
      {
        if (v38 <= v40 + 1)
        {
          v47 = v40 + 1;
        }

        else
        {
          v47 = v38;
        }

        v48 = v47 - 1;
        v49 = v40;
        v44 = v80;
        while (1)
        {
          v43 = v49 + 1;
          if (__OFADD__(v49, 1))
          {
            break;
          }

          if (v43 >= v38)
          {
            v99 = 0;
            v53 = 1;
            v26 = v83;
            goto LABEL_31;
          }

          v42 = *(v30 + 8 * v43);
          ++v49;
          if (v42)
          {
            goto LABEL_29;
          }
        }

        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v42 = v32;
      v43 = v40;
      v44 = v80;
LABEL_29:
      v99 = (v42 - 1) & v42;
      v50 = __clz(__rbit64(v42)) | (v43 << 6);
      v51 = v94;
      (*(v76 + 16))(v44, *(v94 + 48) + *(v76 + 72) * v50, AssociatedTypeWitness);
      v45 = v78;
      v46 = v98;
      (*(v77 + 16))(v78, *(v51 + 56) + *(v77 + 72) * v50, v98);
      goto LABEL_30;
    }

    if (sub_268689D94())
    {
      sub_268689E04();
      swift_unknownObjectRelease();
      v45 = v78;
      v46 = v98;
      sub_268689E04();
      swift_unknownObjectRelease();
      v43 = v96;
      v99 = v32;
LABEL_30:
      v52 = *(TupleTypeMetadata2 + 48);
      v26 = v83;
      (*v97)();
      (*v37)(&v26[v52], v45, v46);
      v53 = 0;
      v48 = v43;
      v41 = v79;
      goto LABEL_31;
    }

    v53 = 1;
    v63 = v32;
    v48 = v96;
    v99 = v63;
LABEL_31:
    v54 = *(TupleTypeMetadata2 - 8);
    (*(v54 + 56))(v26, v53, 1, TupleTypeMetadata2);
    v55 = v90;
    (*v88)(v90, v26, v91);
    if ((*(v54 + 48))(v55, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v56 = *(TupleTypeMetadata2 + 48);
    v57 = v100;
    (*v97)(v100, v55, v102);
    v58 = &v55[v56];
    v59 = v98;
    (*v37)(v41, v58, v98);
    v103 = 0;
    v60 = v101;
    (*(v95 + 48))(v57, 1, &v103, &type metadata for BinaryEncodingSizeVisitor, &off_28792CAA8);
    if (v60)
    {
      v101 = v60;
      sub_2686265DC(v94);
      (*v85)(v41, v98);
      return (*v86)(v100, v102);
    }

    sub_268624240(v41, 2, v59, v81);
    v101 = 0;
    (*v85)(v41, v59);
    AssociatedTypeWitness = v102;
    result = (*v86)(v100, v102);
    if (v103 < 0x80)
    {
      v61 = 1;
      v62 = v82;
      v30 = v93;
      goto LABEL_50;
    }

    v62 = v82;
    v30 = v93;
    if ((v103 & 0x8000000000000000) != 0)
    {
      v61 = 10;
      goto LABEL_50;
    }

    if (v103 >> 35)
    {
      if (v103 >> 49)
      {
        v64 = v103 >> 28;
        v61 = 8;
LABEL_48:
        if (!(v64 >> 28))
        {
          goto LABEL_50;
        }

LABEL_49:
        ++v61;
        goto LABEL_50;
      }

      v61 = 6;
      if (v103 >> 42)
      {
        goto LABEL_49;
      }
    }

    else
    {
      if (v103 >= 0x200000)
      {
        v61 = 4;
        v64 = v103;
        goto LABEL_48;
      }

      v61 = 2;
      if (v103 >= 0x4000)
      {
        goto LABEL_49;
      }
    }

LABEL_50:
    v65 = v61 + v103;
    if (__OFADD__(v61, v103))
    {
      goto LABEL_58;
    }

    v66 = __OFADD__(*v62, v65);
    v67 = *v62 + v65;
    if (v66)
    {
      goto LABEL_59;
    }

    *v62 = v67;
    v40 = v48;
    v32 = v99;
  }

  sub_2686265DC(v94);
  swift_getAssociatedConformanceWitness();
  result = sub_2686898E4();
  v68 = result * v71;
  if ((result * v71) >> 64 != (result * v71) >> 63)
  {
    goto LABEL_60;
  }

  v66 = __OFADD__(*v82, v68);
  v69 = *v82 + v68;
  if (!v66)
  {
    *v82 = v69;
    return result;
  }

LABEL_61:
  __break(1u);
  return result;
}

uint64_t sub_2686263A0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v7 = 0;
  result = sub_2685DC7EC(&v7, a2, a3, v5);
  if (!v4)
  {
    if (__OFADD__(*v3, v7))
    {
      __break(1u);
    }

    else
    {
      *v3 += v7;
    }
  }

  return result;
}

uint64_t sub_2686263E8(uint64_t result, unint64_t a2)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      v4 = 0;
      goto LABEL_11;
    }

    v6 = *(result + 16);
    v5 = *(result + 24);
    v7 = __OFSUB__(v5, v6);
    v4 = v5 - v6;
    if (!v7)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v3)
  {
    v4 = BYTE6(a2);
    goto LABEL_11;
  }

  LODWORD(v4) = HIDWORD(result) - result;
  if (__OFSUB__(HIDWORD(result), result))
  {
    goto LABEL_14;
  }

  v4 = v4;
LABEL_11:
  v7 = __OFADD__(*v2, v4);
  v8 = *v2 + v4;
  if (!v7)
  {
    *v2 = v8;
    return result;
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

unint64_t sub_26862644C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (a2 > 0x7FFFFFFF)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = v4;
  result = sub_26868413C(a2);
  v9 = result + 4;
  if (__OFADD__(result, 4))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = sub_2685B59A8(a3, a4);
  if (v5)
  {
    return result;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  v10 = result;
  result = sub_268684180(result);
  v11 = result + v10;
  if (__OFADD__(result, v10))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v12 = __OFADD__(v9, v11);
  v13 = v9 + v11;
  if (v12)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = __OFADD__(*v6, v13);
  v14 = *v6 + v13;
  if (v12)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  *v6 = v14;
  return result;
}

uint64_t sub_268626534(uint64_t result)
{
  v2 = 8 * result;
  v3 = 6;
  v4 = 7;
  v5 = 8;
  if ((8 * result) >> 28)
  {
    v5 = 9;
  }

  if (v2 >= 0x200000)
  {
    v4 = v5;
  }

  if ((8 * result) >> 14)
  {
    v3 = v4;
  }

  if (v2 >= 0x80)
  {
    v6 = v3;
  }

  else
  {
    v6 = 5;
  }

  v7 = __OFADD__(*v1, v6);
  v8 = *v1 + v6;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *v1 = v8;
  }

  return result;
}

uint64_t sub_268626588(uint64_t result)
{
  v2 = 8 * result;
  v3 = 10;
  v4 = 11;
  v5 = 12;
  if ((8 * result) >> 28)
  {
    v5 = 13;
  }

  if (v2 >= 0x200000)
  {
    v4 = v5;
  }

  if ((8 * result) >> 14)
  {
    v3 = v4;
  }

  if (v2 >= 0x80)
  {
    v6 = v3;
  }

  else
  {
    v6 = 9;
  }

  v7 = __OFADD__(*v1, v6);
  v8 = *v1 + v6;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *v1 = v8;
  }

  return result;
}

uint64_t MessageExtension.fieldName.getter()
{
  v0 = sub_268626AEC();

  return v0;
}

uint64_t *MessageExtension.__allocating_init(_protobuf_fieldNumber:fieldName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  v7 = *result;
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  v8 = *(v7 + 88);
  v9 = *(v7 + 104);
  result[5] = v8;
  result[6] = v9;
  return result;
}

uint64_t *MessageExtension.init(_protobuf_fieldNumber:fieldName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  v5 = *(v4 + 88);
  v6 = *(v4 + 104);
  v3[5] = v5;
  v3[6] = v6;
  return v3;
}

uint64_t sub_268626784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v27 = a3;
  v25 = a4;
  v8 = *v4;
  v9 = *v4;
  v10 = *(*v4 + 80);
  v11 = sub_268689C74();
  v24 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  v14 = *(v8 + 88);
  v28[0] = v10;
  v28[1] = v14;
  v26 = *(v9 + 96);
  v29 = v26;
  *(&v29 + 1) = type metadata accessor for MessageExtension(0, v28);
  v30 = &protocol witness table for MessageExtension<A, B>;
  v28[0] = v5;
  v15 = v26;
  v16 = *(v26 + 64);

  v17 = v31;
  result = v16(v28, a1, a2, v27, v10, v15);
  if (!v17)
  {
    v19 = v11;
    v21 = v24;
    v20 = v25;
    v22 = *(v10 - 8);
    if ((*(v22 + 48))(v13, 1, v10) == 1)
    {
      result = (*(v21 + 8))(v13, v19);
      *(v20 + 32) = 0;
      *v20 = 0u;
      *(v20 + 16) = 0u;
    }

    else
    {
      *(v20 + 24) = v10;
      *(v20 + 32) = *(v15 + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
      return (*(v22 + 32))(boxed_opaque_existential_1, v13, v10);
    }
  }

  return result;
}

uint64_t MessageExtension.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_268626A68()
{
  v0 = sub_268626AEC();

  return v0;
}

double Google_Protobuf_SourceContext.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  result = 0.0;
  *(a1 + 16) = xmmword_26868A5E0;
  return result;
}

uint64_t Google_Protobuf_SourceContext.fileName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Google_Protobuf_SourceContext.fileName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Google_Protobuf_SourceContext.unknownFields.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v3;
  return sub_2685BA80C(v2, v3);
}

uint64_t Google_Protobuf_SourceContext.unknownFields.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_2685B593C(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

uint64_t static Google_Protobuf_SourceContext._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BDB8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_28028D328;
  v2 = qword_28028D330;
  v3 = unk_28028D338;
  *a1 = qword_28028D320;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t Google_Protobuf_SourceContext.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  result = v7(a2, a3);
  if (!v4)
  {
    while ((v9 & 1) == 0)
    {
      if (result == 1)
      {
        (*(a3 + 336))(v3, a2, a3);
      }

      result = v7(a2, a3);
    }
  }

  return result;
}

uint64_t Google_Protobuf_SourceContext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = v3[2];
  v10 = v3[3];
  v11 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v11 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11 || (result = (*(a3 + 112))(), !v4))
  {
    sub_2685BA80C(v9, v10);
    UnknownStorage.traverse<A>(visitor:)(a1, a2, a3);
    return sub_2685B593C(v9, v10);
  }

  return result;
}

uint64_t Google_Protobuf_SourceContext.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_268689E94();
  v5 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v5 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    MEMORY[0x26D61D8F0](1);
    sub_268689A24();
  }

  v6 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v6 != 2)
    {
      return sub_268689EF4();
    }

    v7 = *(v3 + 16);
    v8 = *(v3 + 24);
  }

  else
  {
    if (!v6)
    {
      if ((v4 & 0xFF000000000000) == 0)
      {
        return sub_268689EF4();
      }

      goto LABEL_13;
    }

    v7 = v3;
    v8 = v3 >> 32;
  }

  if (v7 != v8)
  {
LABEL_13:
    sub_268689844();
  }

  return sub_268689EF4();
}

double sub_26862707C@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  result = 0.0;
  *(a1 + 16) = xmmword_26868A5E0;
  return result;
}

uint64_t _s20SiriOntologyProtobuf07Google_C11_BytesValueV13unknownFieldsAA14UnknownStorageVvs_0(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_2685B593C(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

uint64_t sub_268627114@<X0>(void *a1@<X8>)
{
  if (qword_28028BDB8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_28028D328;
  v2 = qword_28028D330;
  v3 = unk_28028D338;
  *a1 = qword_28028D320;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_2686271CC(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  sub_268689E94();
  v10 = v15;
  v11 = v16;
  v12 = v17;
  v8 = v13;
  v9 = v14;
  v6 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v6 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    MEMORY[0x26D61D8F0](1);
    sub_268689A24();
  }

  sub_2685C962C(&v8, v4, v5);
  v16 = v11;
  v17 = v12;
  v14 = v9;
  v15 = v10;
  v13 = v8;
  return sub_268689EF4();
}

BOOL _s20SiriOntologyProtobuf07Google_C14_SourceContextV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_268689E14() & 1) == 0)
  {
    return 0;
  }

  sub_2685BA80C(v2, v3);
  sub_2685BA80C(v4, v5);
  v7 = sub_2686131DC(v2, v3, v4, v5);
  sub_2685B593C(v4, v5);
  sub_2685B593C(v2, v3);
  return v7;
}

unint64_t sub_26862735C(uint64_t a1)
{
  result = sub_268627384();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268627384()
{
  result = qword_28028D340;
  if (!qword_28028D340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D340);
  }

  return result;
}

unint64_t sub_2686273D8(uint64_t a1)
{
  *(a1 + 8) = sub_2685CFDF4();
  result = sub_268627408();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_268627408()
{
  result = qword_28028D348;
  if (!qword_28028D348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D348);
  }

  return result;
}

unint64_t sub_268627460()
{
  result = qword_28028D350;
  if (!qword_28028D350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D350);
  }

  return result;
}

uint64_t sub_2686274B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2686274FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 Message.hash(into:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[3];
  v10 = a1[2];
  v11 = v4;
  v12 = *(a1 + 8);
  v5 = a1[1];
  v8 = *a1;
  v9 = v5;
  (*(a3 + 72))(&v8, &type metadata for HashVisitor, &off_287928AE0, a2, a3);
  v6 = v11;
  a1[2] = v10;
  a1[3] = v6;
  *(a1 + 8) = v12;
  result = v9;
  *a1 = v8;
  a1[1] = result;
  return result;
}

uint64_t sub_26862764C(uint64_t a1)
{
  v2 = v1[5];
  v28 = v1[4];
  v29 = v2;
  v30 = *(v1 + 12);
  v3 = v1[1];
  v24 = *v1;
  v25 = v3;
  v4 = v1[3];
  v26 = v1[2];
  v27 = v4;
  sub_2685B1724(a1, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  if (!swift_dynamicCast())
  {
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    goto LABEL_5;
  }

  if (!*(&v9 + 1))
  {
LABEL_5:
    v21 = v13;
    v22 = v14;
    v23 = v15;
    v17 = v9;
    v18 = v10;
    v19 = v11;
    v20 = v12;
    sub_2685B2E64(&v17, &qword_28028D368, &qword_2686900C0);
    v5 = 0;
    return v5 & 1;
  }

  v21 = v13;
  v22 = v14;
  v23 = v15;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v5 = static Google_Protobuf_Method.== infix(_:_:)();
  v7[4] = v21;
  v7[5] = v22;
  v8 = v23;
  v7[0] = v17;
  v7[1] = v18;
  v7[2] = v19;
  v7[3] = v20;
  sub_268618E6C(v7);
  return v5 & 1;
}

BOOL sub_268627784(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  sub_2685B1724(a1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  if (!swift_dynamicCast())
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_7;
  }

  v10 = v17;
  v11 = v16;
  if (!v18)
  {
LABEL_7:
    v14 = 0;
LABEL_8:
    sub_2685C31B4(v11, v10, v14);
    return 0;
  }

  if (v18 != a4)
  {

    v12 = a6(a4);

    if ((v12 & 1) == 0)
    {
      v11 = v16;
      v10 = v17;
      v14 = v18;
      goto LABEL_8;
    }
  }

  sub_2685BA80C(a2, a3);
  sub_2685BA80C(v16, v17);
  v13 = sub_2686131DC(a2, a3, v16, v17);
  sub_2685B593C(v16, v17);
  sub_2685B593C(a2, a3);
  sub_2685C31B4(v16, v17, v18);
  return v13;
}

BOOL sub_2686278EC(uint64_t a1)
{
  v2 = v1[1];
  v17[0] = *v1;
  v17[1] = v2;
  v17[2] = v1[2];
  sub_2685B1724(a1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  if (!swift_dynamicCast())
  {
    v7 = 0;
    v6 = 0;
    v5 = 0;
    v4 = 0;
    v3 = 0;
    goto LABEL_5;
  }

  v3 = v11;
  v5 = *(&v12 + 1);
  v4 = v12;
  v7 = *(&v13 + 1);
  v6 = v13;
  if (!*(&v11 + 1))
  {
LABEL_5:
    sub_26862BE08(v3, 0, v4, v5, v6, v7);
    return 0;
  }

  v15[0] = v11;
  v15[1] = v12;
  v16 = v13;
  v8 = _s20SiriOntologyProtobuf07Google_C6_MixinV2eeoiySbAC_ACtFZ_0(v17, v15);
  v9 = v16;

  sub_2685B593C(v9, *(&v9 + 1));
  return v8;
}

uint64_t sub_2686279E8(uint64_t a1)
{
  v2 = v1[5];
  v37 = v1[4];
  v38 = v2;
  v3 = v1[7];
  v39 = v1[6];
  v40 = v3;
  v4 = v1[1];
  v33 = *v1;
  v34 = v4;
  v5 = v1[3];
  v35 = v1[2];
  v36 = v5;
  sub_2685B1724(a1, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  if (swift_dynamicCast())
  {
    nullsub_4();
    v29 = v20;
    v30 = v21;
    v31 = v22;
    v32 = v23;
    v25 = v16;
    v26 = v17;
    v27 = v18;
    v28 = v19;
  }

  else
  {
    sub_26862BE68(&v8);
    v20 = v12;
    v21 = v13;
    v22 = v14;
    v23 = v15;
    v16 = v8;
    v17 = v9;
    v18 = v10;
    v19 = v11;
    v25 = v8;
    v26 = v9;
    v27 = v10;
    v28 = v11;
    v29 = v12;
    v30 = v13;
    v31 = v14;
    v32 = v15;
  }

  if (sub_26862BE80(&v25) == 1)
  {
    v29 = v20;
    v30 = v21;
    v31 = v22;
    v32 = v23;
    v25 = v16;
    v26 = v17;
    v27 = v18;
    v28 = v19;
    sub_2685B2E64(&v25, &qword_28028D370, qword_2686900C8);
    v6 = 0;
  }

  else
  {
    v29 = v20;
    v30 = v21;
    v31 = v22;
    v32 = v23;
    v25 = v16;
    v26 = v17;
    v27 = v18;
    v28 = v19;
    v6 = static Google_Protobuf_Field.== infix(_:_:)();
    v12 = v29;
    v13 = v30;
    v14 = v31;
    v15 = v32;
    v8 = v25;
    v9 = v26;
    v10 = v27;
    v11 = v28;
    sub_268618F1C(&v8);
  }

  return v6 & 1;
}

BOOL sub_268627B78(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2685B1724(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  if (!swift_dynamicCast())
  {
    v5 = 0;
    v6 = 0xF000000000000000;
    goto LABEL_5;
  }

  v6 = v10;
  v5 = v9;
  if (v10 >> 60 == 15)
  {
LABEL_5:
    sub_2685B98FC(v5, v6);
    return 0;
  }

  sub_2685BA80C(a2, a3);
  v7 = sub_2686131DC(a2, a3, v9, v10);
  sub_2685B98FC(v9, v10);
  sub_2685B593C(a2, a3);
  return v7;
}

BOOL sub_268627C68(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  sub_2685B1724(a1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  if (!swift_dynamicCast())
  {
    v7 = 0;
    v8 = 0;
    goto LABEL_7;
  }

  v7 = v13;
  v8 = v12;
  if (!v14)
  {
LABEL_7:
    v10 = 0;
LABEL_8:
    sub_2685C31B4(v8, v7, v10);
    return 0;
  }

  if (v14 != a4 && (sub_26866A280(v14) & 1) == 0)
  {
    v8 = v12;
    v7 = v13;
    v10 = v14;
    goto LABEL_8;
  }

  sub_2685BA80C(a2, a3);
  sub_2685BA80C(v12, v13);
  v9 = sub_2686131DC(a2, a3, v12, v13);
  sub_2685B593C(v12, v13);
  sub_2685B593C(a2, a3);
  sub_2685C31B4(v12, v13, v14);
  return v9;
}

BOOL sub_268627D98(uint64_t a1)
{
  v2 = *(v1 + 80);
  v26[4] = *(v1 + 64);
  v26[5] = v2;
  v26[6] = *(v1 + 96);
  v27 = *(v1 + 112);
  v3 = *(v1 + 16);
  v26[0] = *v1;
  v26[1] = v3;
  v4 = *(v1 + 48);
  v26[2] = *(v1 + 32);
  v26[3] = v4;
  sub_2685B1724(a1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  if (!swift_dynamicCast())
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v9 = 0u;
    goto LABEL_5;
  }

  if (!v9)
  {
LABEL_5:
    v22 = v13;
    v23 = v14;
    v24 = v15;
    v25 = v16;
    v18 = v9;
    v19 = v10;
    v20 = v11;
    v21 = v12;
    sub_2685B2E64(&v18, &qword_28028D360, &qword_2686900B8);
    return 0;
  }

  v22 = v13;
  v23 = v14;
  v24 = v15;
  v25 = v16;
  v18 = v9;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v5 = _s20SiriOntologyProtobuf07Google_C20_UninterpretedOptionV2eeoiySbAC_ACtFZ_0(v26, &v18);
  v7[4] = v22;
  v7[5] = v23;
  v7[6] = v24;
  v8 = v25;
  v7[0] = v18;
  v7[1] = v19;
  v7[2] = v20;
  v7[3] = v21;
  sub_268619078(v7);
  return v5;
}

BOOL sub_268627EF4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v19[0] = *v1;
  v19[1] = v2;
  v20 = *(v1 + 32);
  sub_2685B1724(a1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  if (!swift_dynamicCast())
  {
    v5 = 0;
    v4 = 0;
    v3 = 0;
    goto LABEL_5;
  }

  v3 = v8;
  v4 = v9;
  v5 = v10;
  if (v11 == 1)
  {
LABEL_5:
    sub_26862BDC4(v3, v4, v5, 1);
    return 0;
  }

  v14 = v8;
  v15 = v9;
  v16 = v10;
  v17 = v11;
  v18 = v12;
  v6 = _s20SiriOntologyProtobuf07Google_C20_UninterpretedOptionV8NamePartV2eeoiySbAE_AEtFZ_0(v19, &v14);
  sub_2685B593C(v14, v15);

  return v6;
}

BOOL sub_268627FDC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  sub_2685B1724(a1, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  if (!swift_dynamicCast())
  {
    v11 = 0;
    v10 = 0;
    goto LABEL_6;
  }

  v10 = v16;
  v11 = v17;
  if (!v15)
  {
LABEL_6:
    v13 = 0;
LABEL_7:
    sub_268601BC8(v13, v10, v11);
    return 0;
  }

  if ((a6(a2) & 1) == 0)
  {
    v13 = v15;
    v10 = v16;
    v11 = v17;
    goto LABEL_7;
  }

  sub_2685BA80C(a3, a4);
  sub_2685BA80C(v16, v17);
  v12 = sub_2686131DC(a3, a4, v16, v17);
  sub_2685B593C(v16, v17);
  sub_2685B593C(a3, a4);
  sub_268601BC8(v15, v16, v17);
  return v12;
}

BOOL sub_268628118(uint64_t a1)
{
  v2 = *(v1 + 16);
  v13[0] = *v1;
  v13[1] = v2;
  v14[0] = *(v1 + 32);
  *(v14 + 13) = *(v1 + 45);
  sub_2685B1724(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  if (!swift_dynamicCast())
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    memset(&v10[2], 0, 53);
LABEL_6:
    sub_26862BD68(0, v7, v6, v5, v4);
    return 0;
  }

  if (!*&v10[2])
  {
    v7 = *(&v10[2] + 1);
    v6 = *&v10[3];
    v4 = *&v10[4];
    v5 = *(&v10[3] + 1);
    goto LABEL_6;
  }

  *&v12[8] = *(&v10[2] + 8);
  *&v12[24] = *(&v10[3] + 8);
  *v12 = *&v10[2];
  *&v12[40] = *(&v10[4] + 1);
  v12[52] = BYTE4(v10[5]);
  *&v12[48] = v10[5];
  v3 = _s20SiriOntologyProtobuf07Google_C18_GeneratedCodeInfoV10AnnotationV2eeoiySbAE_AEtFZ_0(v13, v12);
  v9[0] = *v12;
  v9[1] = *&v12[16];
  v10[0] = *&v12[32];
  *(v10 + 13) = *&v12[45];
  sub_268618FA8(v9);
  return v3;
}

uint64_t sub_268628258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void *, __int128 *), void (*a8)(uint64_t, unint64_t, uint64_t, unint64_t))
{
  v26[0] = a2;
  v26[1] = a3;
  v26[2] = a4;
  v27 = a5;
  v28 = BYTE4(a5);
  sub_2685B1724(a1, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  if (!swift_dynamicCast())
  {
    v13 = 0;
    v12 = 0;
    v10 = 0;
    v11 = 0xF000000000000000;
    goto LABEL_5;
  }

  v11 = *(&v16 + 1);
  v10 = v16;
  v12 = v17;
  v13 = v18 | (v19 << 32);
  if (*(&v16 + 1) >> 60 == 15)
  {
LABEL_5:
    a8(v10, v11, v12, v13);
    v14 = 0;
    return v14 & 1;
  }

  v21 = v16;
  v22 = v17;
  v23 = BYTE4(v17) & 1;
  v24 = v18;
  v25 = BYTE4(v13) & 1;
  v14 = a7(v26, &v21);
  sub_2685B593C(v21, *(&v21 + 1));
  return v14 & 1;
}

BOOL sub_268628370(uint64_t a1)
{
  v2 = *(v1 + 48);
  v19[2] = *(v1 + 32);
  v19[3] = v2;
  v20 = *(v1 + 64);
  v3 = *(v1 + 16);
  v19[0] = *v1;
  v19[1] = v3;
  sub_2685B1724(a1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  if (!swift_dynamicCast())
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    goto LABEL_5;
  }

  if (!v8)
  {
LABEL_5:
    v16 = v10;
    v17 = v11;
    v18 = v12;
    v14 = v8;
    v15 = v9;
    sub_2685B2E64(&v14, &qword_28028D358, &qword_2686900B0);
    return 0;
  }

  v16 = v10;
  v17 = v11;
  v18 = v12;
  v14 = v8;
  v15 = v9;
  v4 = _s20SiriOntologyProtobuf07Google_C15_SourceCodeInfoV8LocationV2eeoiySbAE_AEtFZ_0(v19, &v14);
  v6[2] = v16;
  v6[3] = v17;
  v7 = v18;
  v6[0] = v14;
  v6[1] = v15;
  sub_268619010(v6);
  return v4;
}

uint64_t sub_268628484(uint64_t a1, uint64_t a2, uint64_t (*a3)(_OWORD *, __int128 *))
{
  v5 = *(v3 + 16);
  v20[0] = *v3;
  v20[1] = v5;
  v21 = *(v3 + 32);
  sub_2685B1724(a1, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  if (!swift_dynamicCast())
  {
    v8 = 0;
    v7 = 0;
    v6 = 0;
    goto LABEL_5;
  }

  v6 = *(&v13 + 1);
  v8 = *(&v14 + 1);
  v7 = v14;
  if (!v13)
  {
LABEL_5:
    sub_268601C90(0, v6, v7, v8);
    v9 = 0;
    return v9 & 1;
  }

  v17 = v13;
  v18 = v14;
  v19 = v15;
  v9 = a3(v20, &v17);
  v10 = *(&v17 + 1);
  v11 = v18;

  sub_2685B593C(v10, v11);

  return v9 & 1;
}

uint64_t sub_268628580(uint64_t a1)
{
  v2 = *(v1 + 16);
  v15[0] = *v1;
  v15[1] = v2;
  v16 = *(v1 + 32);
  sub_2685B1724(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  if (!swift_dynamicCast())
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v11 = 0;
    memset(v10, 0, sizeof(v10));
LABEL_6:
    sub_268601C90(0, v6, v5, v4);
    v3 = 0;
    return v3 & 1;
  }

  if (!*&v10[0])
  {
    v6 = *(&v10[0] + 1);
    v4 = *(&v10[1] + 1);
    v5 = *&v10[1];
    goto LABEL_6;
  }

  *&v13[8] = *(v10 + 8);
  *v13 = *&v10[0];
  *&v13[24] = *(&v10[1] + 1);
  v14 = v11;
  v3 = static Google_Protobuf_MessageOptions.== infix(_:_:)(v15, v13);
  v8[0] = *v13;
  v8[1] = *&v13[16];
  v9 = v14;
  sub_268601D24(v8);
  return v3 & 1;
}

uint64_t sub_268628688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void *, __int128 *))
{
  v20[0] = a2;
  v20[1] = a3;
  v20[2] = a4;
  v20[3] = a5;
  sub_2685B1724(a1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  if (!swift_dynamicCast())
  {
    v10 = 0;
    v9 = 0;
    v8 = 0;
    goto LABEL_5;
  }

  v8 = *(&v15 + 1);
  v10 = *(&v16 + 1);
  v9 = v16;
  if (!v15)
  {
LABEL_5:
    sub_268601C90(0, v8, v9, v10);
    v11 = 0;
    return v11 & 1;
  }

  v18 = v15;
  v19 = v16;
  v11 = a7(v20, &v18);
  v12 = *(&v18 + 1);
  v13 = v19;

  sub_2685B593C(v12, v13);

  return v11 & 1;
}

uint64_t sub_26862876C(uint64_t a1)
{
  v2 = v1[1];
  v12 = *v1;
  v13[0] = v2;
  *(v13 + 14) = *(v1 + 30);
  sub_2685B1724(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  if (!swift_dynamicCast())
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    memset(&v9[2], 0, 38);
LABEL_6:
    sub_268601C90(0, v6, v5, v4);
    v3 = 0;
    return v3 & 1;
  }

  if (!*&v9[2])
  {
    v6 = *(&v9[2] + 1);
    v4 = *(&v9[3] + 1);
    v5 = *&v9[3];
    goto LABEL_6;
  }

  *&v11[8] = *(&v9[2] + 8);
  *v11 = *&v9[2];
  *&v11[24] = *(&v9[3] + 1);
  *&v11[36] = WORD2(v9[4]);
  *&v11[32] = v9[4];
  v3 = static Google_Protobuf_FieldOptions.== infix(_:_:)(&v12, v11);
  v8 = *v11;
  v9[0] = *&v11[16];
  *(v9 + 14) = *&v11[30];
  sub_268601DD4(&v8);
  return v3 & 1;
}

BOOL sub_268628884(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  sub_2685B1724(a1, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  if (!swift_dynamicCast())
  {
    v12 = 0;
    v11 = 0;
    v10 = 0;
    goto LABEL_8;
  }

  v10 = v17;
  v12 = v20;
  v11 = v19;
  if (!v18)
  {
LABEL_8:
    v14 = v10;
    v15 = 0;
LABEL_9:
    sub_2685CE920(v14, v15, v11, v12);
    return 0;
  }

  if ((v17 != a2 || v18 != a3) && (sub_268689E14() & 1) == 0)
  {
    v14 = v17;
    v15 = v18;
    v12 = v20;
    v11 = v19;
    goto LABEL_9;
  }

  sub_2685BA80C(a4, a5);
  sub_2685BA80C(v19, v20);
  v13 = sub_2686131DC(a4, a5, v19, v20);
  sub_2685B593C(v19, v20);
  sub_2685B593C(a4, a5);
  sub_2685CE920(v17, v18, v19, v20);
  return v13;
}

uint64_t sub_2686289E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a2;
  v14[1] = a3;
  v14[2] = a4;
  v14[3] = a5;
  sub_2685B1724(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  if (!swift_dynamicCast())
  {
    v7 = 0;
    v6 = 0;
    v5 = 0;
    goto LABEL_5;
  }

  v6 = *(&v10 + 1);
  v5 = v10;
  v7 = *(&v11 + 1);
  if (!v11)
  {
LABEL_5:
    sub_268601B34(v5, v6, 0, v7);
    v8 = 0;
    return v8 & 1;
  }

  v13[0] = v10;
  v13[1] = v11;
  v8 = static Google_Protobuf_FileOptions.== infix(_:_:)(v14, v13);
  sub_2685B593C(*&v13[0], *(&v13[0] + 1));

  return v8 & 1;
}

uint64_t sub_268628AC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(_OWORD *, __int128 *))
{
  v5 = *(v3 + 16);
  v20[0] = *v3;
  v20[1] = v5;
  v21 = *(v3 + 32);
  sub_2685B1724(a1, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  if (!swift_dynamicCast())
  {
    v8 = 0;
    v7 = 0;
    v6 = 0;
    goto LABEL_5;
  }

  v6 = *(&v13 + 1);
  v8 = *(&v14 + 1);
  v7 = v14;
  if (!v13)
  {
LABEL_5:
    sub_268601C90(0, v6, v7, v8);
    v9 = 0;
    return v9 & 1;
  }

  v17 = v13;
  v18 = v14;
  v19 = v15;
  v9 = a3(v20, &v17);
  v10 = *(&v17 + 1);
  v11 = v18;

  sub_2685B593C(v10, v11);

  return v9 & 1;
}

BOOL sub_268628BC4(uint64_t a1, uint64_t a2, unint64_t a3, double a4)
{
  sub_2685B1724(a1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  if (!swift_dynamicCast())
  {
    v7 = 0;
    v9 = 0;
    v8 = 0xF000000000000000;
LABEL_6:
    sub_2685B89A0(v9, v7, v8);
    return 0;
  }

  v7 = v13;
  v8 = v14;
  v9 = v12;
  if (v14 >> 60 == 15 || *&v12 != a4)
  {
    goto LABEL_6;
  }

  sub_2685BA80C(a2, a3);
  sub_2685B89BC(v12, v13, v14);
  v10 = sub_2686131DC(a2, a3, v13, v14);
  sub_2685B89A0(v12, v13, v14);
  sub_2685B593C(a2, a3);
  sub_2685B89A0(v12, v13, v14);
  return v10;
}

BOOL sub_268628CF8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void (*a6)(uint64_t), void (*a7)(uint64_t))
{
  sub_2685B1724(a1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  if (!swift_dynamicCast())
  {
    v12 = 0;
    v13 = 0;
LABEL_6:
    (a7)(v13, v12);
    return 0;
  }

  v12 = v17;
  v13 = v16;
  if (v18 >> 60 == 15 || v16 != a2)
  {
    goto LABEL_6;
  }

  sub_2685BA80C(a3, a4);
  a6(a2);
  v14 = sub_2686131DC(a3, a4, v17, v18);
  a7(a2);
  sub_2685B593C(a3, a4);
  a7(a2);
  return v14;
}

BOOL sub_268628E3C(uint64_t a1, int a2, uint64_t a3, unint64_t a4, uint64_t a5, void (*a6)(), void (*a7)())
{
  sub_2685B1724(a1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  if (!swift_dynamicCast())
  {
    v12 = 0;
    v13 = 0;
LABEL_6:
    (a7)(v13, v12);
    return 0;
  }

  v12 = v17;
  v13 = v16;
  if (v18 >> 60 == 15 || v16 != a2)
  {
    goto LABEL_6;
  }

  sub_2685BA80C(a3, a4);
  a6();
  v14 = sub_2686131DC(a3, a4, v17, v18);
  a7();
  sub_2685B593C(a3, a4);
  a7();
  return v14;
}

BOOL sub_268628F84(uint64_t a1, uint64_t a2, unint64_t a3, float a4)
{
  sub_2685B1724(a1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  if (!swift_dynamicCast())
  {
    v7 = 0;
    v9 = 0;
    v8 = 0xF000000000000000;
LABEL_6:
    sub_2685B89A0(v9, v7, v8);
    return 0;
  }

  v7 = v13;
  v8 = v14;
  v9 = v12;
  if (v14 >> 60 == 15 || *&v12 != a4)
  {
    goto LABEL_6;
  }

  sub_2685BA80C(a2, a3);
  sub_2685B89BC(v12, v13, v14);
  v10 = sub_2686131DC(a2, a3, v13, v14);
  sub_2685B89A0(v12, v13, v14);
  sub_2685B593C(a2, a3);
  sub_2685B89A0(v12, v13, v14);
  return v10;
}

BOOL sub_2686290B8(uint64_t a1, _BOOL8 a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  sub_2685B1724(a1, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  if (!swift_dynamicCast())
  {
    v12 = 0;
    v11 = 0;
    v9 = 0;
    v10 = 0xF000000000000000;
    goto LABEL_6;
  }

  v10 = v18;
  v9 = v17;
  v11 = v19;
  v12 = v20;
  if (v18 >> 60 == 15)
  {
LABEL_6:
    v14 = v9;
    v15 = v10;
LABEL_7:
    sub_26862BCE0(v14, v15, v11, v12);
    return 0;
  }

  if (!sub_2686131DC(a2, a3, v17, v18))
  {
    v15 = v18;
    v14 = v17;
    v11 = v19;
    v12 = v20;
    goto LABEL_7;
  }

  sub_2685BA80C(a4, a5);
  sub_2685BA80C(v19, v20);
  v13 = sub_2686131DC(a4, a5, v19, v20);
  sub_2685B593C(v19, v20);
  sub_2685B593C(a4, a5);
  sub_26862BCE0(v17, v18, v19, v20);
  return v13;
}

BOOL sub_26862921C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unint64_t a5, uint64_t a6, void (*a7)(uint64_t), void (*a8)(uint64_t))
{
  sub_2685B1724(a1, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  if (!swift_dynamicCast())
  {
    v16 = 0;
    v15 = 0;
    v14 = 0;
LABEL_7:
    (a7)(v14, v15, v16);
    return 0;
  }

  v14 = v19;
  v15 = v20;
  v16 = v21;
  if (v22 >> 60 == 15 || v19 != a2)
  {
    goto LABEL_7;
  }

  if (v20 != a3)
  {
    v14 = a2;
    goto LABEL_7;
  }

  sub_2685BA80C(a4, a5);
  a8(a2);
  v17 = sub_2686131DC(a4, a5, v21, v22);
  a7(a2);
  sub_2685B593C(a4, a5);
  a7(a2);
  return v17;
}

uint64_t sub_268629388(uint64_t a1)
{
  v2 = v1[1];
  v20 = *v1;
  v21 = v2;
  v22 = v1[2];
  sub_2685B1724(a1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  if (!swift_dynamicCast())
  {
    v7 = 0;
    v6 = 0;
    v5 = 0;
    v4 = 0;
    v3 = 0;
    goto LABEL_5;
  }

  v3 = v11;
  v5 = v13;
  v4 = v12;
  v7 = *(&v14 + 1);
  v6 = v14;
  if (!*(&v11 + 1))
  {
LABEL_5:
    sub_26862BE08(v3, 0, v4, v5, v6, v7);
    v8 = 0;
    return v8 & 1;
  }

  v16 = v11;
  v17 = v12;
  v18 = v13;
  v19 = v14;
  v8 = static Google_Protobuf_EnumValue.== infix(_:_:)();
  v9 = v19;

  sub_2685B593C(v9, *(&v9 + 1));
  return v8 & 1;
}

BOOL sub_268629488(uint64_t a1, char a2, uint64_t a3, unint64_t a4)
{
  sub_2685B1724(a1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  if (swift_dynamicCast())
  {
    if ((v12 & 1) == (a2 & 1))
    {
      sub_2685BA80C(a3, a4);
      sub_26862BD4C(v12, v13, v14);
      v10 = sub_2686131DC(a3, a4, v13, v14);
      sub_26862BD30(v12, v13, v14);
      sub_2685B593C(a3, a4);
      sub_26862BD30(v12, v13, v14);
      return v10;
    }

    v7 = v12;
    v8 = v13;
    v9 = v14;
  }

  else
  {
    v7 = 2;
    v8 = 0;
    v9 = 0;
  }

  sub_26862BD30(v7, v8, v9);
  return 0;
}

uint64_t _MessageImplementationBase.isEqualTo(message:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_268689C74();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v18[-v8 - 8];
  v10 = *(a2 - 8);
  MEMORY[0x28223BE20](v7);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_2685B1724(a1, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  v13 = swift_dynamicCast();
  v14 = *(v10 + 56);
  if (v13)
  {
    v14(v9, 0, 1, a2);
    (*(v10 + 32))(v12, v9, a2);
    v15 = sub_268689944();
    (*(v10 + 8))(v12, a2);
  }

  else
  {
    v14(v9, 1, 1, a2);
    (*(v6 + 8))(v9, v5);
    v15 = 0;
  }

  return v15 & 1;
}

BOOL sub_268629888(_OWORD *a1)
{
  v2 = a1[5];
  v12[4] = a1[4];
  v12[5] = v2;
  v3 = a1[7];
  v12[6] = a1[6];
  v12[7] = v3;
  v4 = a1[1];
  v12[0] = *a1;
  v12[1] = v4;
  v5 = a1[3];
  v12[2] = a1[2];
  v12[3] = v5;
  v6 = v1[5];
  v11[4] = v1[4];
  v11[5] = v6;
  v7 = v1[7];
  v11[6] = v1[6];
  v11[7] = v7;
  v8 = v1[1];
  v11[0] = *v1;
  v11[1] = v8;
  v9 = v1[3];
  v11[2] = v1[2];
  v11[3] = v9;
  return _s20SiriOntologyProtobuf07Google_C6_FieldV2eeoiySbAC_ACtFZ_0(v11, v12);
}

BOOL sub_2686299AC(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v14[0] = *a1;
  v14[1] = v2;
  v15 = v3;
  v16 = v4;
  v17 = *(a1 + 32);
  v10[0] = v5;
  v10[1] = v6;
  v11 = v7;
  v12 = v8;
  v13 = *(v1 + 32);
  return _s20SiriOntologyProtobuf07Google_C10_EnumValueV2eeoiySbAC_ACtFZ_0(v10, v14);
}

BOOL sub_268629B48(uint64_t a1)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(v1 + 80);
  v9[4] = *(v1 + 64);
  v9[5] = v5;
  v10 = *(v1 + 96);
  v6 = *(v1 + 16);
  v9[0] = *v1;
  v9[1] = v6;
  v7 = *(v1 + 48);
  v9[2] = *(v1 + 32);
  v9[3] = v7;
  return _s20SiriOntologyProtobuf07Google_C7_MethodV2eeoiySbAC_ACtFZ_0(v9, v11);
}

BOOL sub_268629BF4(__int128 *a1)
{
  v2 = *a1;
  v3 = *(a1 + 3);
  v4 = *v1;
  v5 = *(v1 + 2);
  v6 = *(v1 + 3);
  v13 = *(a1 + 2);
  v14 = v3;
  v15 = a1[2];
  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v1[2];
  v12 = v2;
  return _s20SiriOntologyProtobuf07Google_C6_MixinV2eeoiySbAC_ACtFZ_0(&v8, &v12);
}

__n128 sub_26862A00C(__int128 *a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *, uint64_t, uint64_t, unint64_t, unint64_t))
{
  v6 = *v4;
  v7 = *(v4 + 8);
  v8 = *(v4 + 16);
  v9 = *(v4 + 20);
  v10 = *(v4 + 24);
  v11 = *(v4 + 28);
  v12 = a1[3];
  v18 = a1[2];
  v19 = v12;
  v20 = *(a1 + 8);
  v13 = a1[1];
  v16 = *a1;
  v17 = v13;
  a4(&v16, v6, v7, v8 | (v9 << 32), v10 | (v11 << 32));
  v14 = v19;
  a1[2] = v18;
  a1[3] = v14;
  *(a1 + 8) = v20;
  result = v17;
  *a1 = v16;
  a1[1] = result;
  return result;
}

uint64_t sub_26862A148(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *, __int128 *, uint64_t))
{
  v5 = *(a1 + 4);
  v6 = *(a1 + 20);
  v7 = *(a1 + 6);
  v8 = *(a1 + 28);
  v9 = *(v4 + 4);
  v10 = *(v4 + 20);
  v11 = *(v4 + 6);
  v12 = *(v4 + 28);
  v19 = *a1;
  v20 = v5;
  v21 = v6;
  v22 = v7;
  v23 = v8;
  v14 = *v4;
  v15 = v9;
  v16 = v10;
  v17 = v11;
  v18 = v12;
  return a4(&v14, &v19, a3) & 1;
}

__n128 sub_26862A2C0(__int128 *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, __int128 *, uint64_t))
{
  v7 = *v4;
  v6 = v4[1];
  v8 = v4[2];
  v9 = a1[3];
  v15 = a1[2];
  v16 = v9;
  v17 = *(a1 + 8);
  v10 = a1[1];
  v13 = *a1;
  v14 = v10;
  a4(v8, &v13, a3);
  sub_2685C962C(&v13, v7, v6);
  v11 = v16;
  a1[2] = v15;
  a1[3] = v11;
  *(a1 + 8) = v17;
  result = v14;
  *a1 = v13;
  a1[1] = result;
  return result;
}

uint64_t sub_26862A3C4(_OWORD *a1)
{
  v2 = a1[1];
  v6[0] = *a1;
  v6[1] = v2;
  v3 = v1[1];
  v5[0] = *v1;
  v5[1] = v3;
  return _s20SiriOntologyProtobuf07Google_C12_FileOptionsV2eeoiySbAC_ACtFZ_0(v5, v6) & 1;
}

uint64_t sub_26862A440(uint64_t a1)
{
  v2 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v2;
  v8 = *(a1 + 32);
  v3 = *(v1 + 16);
  v5[0] = *v1;
  v5[1] = v3;
  v6 = *(v1 + 32);
  return _s20SiriOntologyProtobuf07Google_C15_MessageOptionsV2eeoiySbAC_ACtFZ_0(v5, v7) & 1;
}

uint64_t sub_26862A4CC(__int128 *a1)
{
  v2 = a1[1];
  v7 = *a1;
  v8[0] = v2;
  *(v8 + 14) = *(a1 + 30);
  v3 = v1[1];
  v5 = *v1;
  v6[0] = v3;
  *(v6 + 14) = *(v1 + 30);
  return _s20SiriOntologyProtobuf07Google_C13_FieldOptionsV2eeoiySbAC_ACtFZ_0(&v5, &v7) & 1;
}

uint64_t sub_26862A558(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t *, uint64_t))
{
  v5 = *a1;
  v6 = a1[3];
  v7 = *v4;
  v11 = v4[3];
  v12 = v5;
  v13 = *(a1 + 1);
  v14 = v6;
  v9 = v7;
  v10 = *(v4 + 1);
  return a4(&v9, &v12, a3) & 1;
}

__n128 sub_26862A6CC(__int128 *a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *, uint64_t, uint64_t))
{
  v6 = v4[1];
  v16 = *v4;
  v17 = v6;
  v18 = *(v4 + 32);
  v7 = a1[3];
  v13 = a1[2];
  v14 = v7;
  v15 = *(a1 + 8);
  v8 = a1[1];
  v11 = *a1;
  v12 = v8;
  a4(&v11, a2, a3);
  v9 = v14;
  a1[2] = v13;
  a1[3] = v9;
  *(a1 + 8) = v15;
  result = v12;
  *a1 = v11;
  a1[1] = result;
  return result;
}

uint64_t sub_26862A7B8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t *, uint64_t))
{
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = *v4;
  v8 = v4[3];
  v9 = *(v4 + 32);
  v15 = *a1;
  v16 = *(a1 + 1);
  v17 = v5;
  v18 = v6;
  v11 = v7;
  v12 = *(v4 + 1);
  v13 = v8;
  v14 = v9;
  return a4(&v11, &v15, a3) & 1;
}

uint64_t sub_26862A89C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t *, uint64_t))
{
  v5 = a1[3];
  v6 = *(a1 + 16);
  v7 = *v4;
  v8 = v4[3];
  v9 = *(v4 + 16);
  v15 = *a1;
  v16 = *(a1 + 1);
  v17 = v5;
  v18 = v6;
  v11 = v7;
  v12 = *(v4 + 1);
  v13 = v8;
  v14 = v9;
  return a4(&v11, &v15, a3) & 1;
}

BOOL sub_26862A964(uint64_t a1)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v11[6] = *(a1 + 96);
  v12 = *(a1 + 112);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(v1 + 80);
  v9[4] = *(v1 + 64);
  v9[5] = v5;
  v9[6] = *(v1 + 96);
  v10 = *(v1 + 112);
  v6 = *(v1 + 16);
  v9[0] = *v1;
  v9[1] = v6;
  v7 = *(v1 + 48);
  v9[2] = *(v1 + 32);
  v9[3] = v7;
  return _s20SiriOntologyProtobuf07Google_C20_UninterpretedOptionV2eeoiySbAC_ACtFZ_0(v9, v11);
}

BOOL sub_26862AA28(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v1 + 32);
  v4 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v4;
  v10 = v2;
  v5 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v5;
  v8 = v3;
  return _s20SiriOntologyProtobuf07Google_C20_UninterpretedOptionV8NamePartV2eeoiySbAE_AEtFZ_0(v7, v9);
}

BOOL sub_26862AB14(uint64_t a1)
{
  v2 = *(a1 + 48);
  v9[2] = *(a1 + 32);
  v9[3] = v2;
  v10 = *(a1 + 64);
  v3 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v3;
  v4 = *(v1 + 48);
  v7[2] = *(v1 + 32);
  v7[3] = v4;
  v8 = *(v1 + 64);
  v5 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v5;
  return _s20SiriOntologyProtobuf07Google_C15_SourceCodeInfoV8LocationV2eeoiySbAE_AEtFZ_0(v7, v9);
}

BOOL sub_26862AC10(uint64_t a1)
{
  v2 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v2;
  v8[0] = *(a1 + 32);
  *(v8 + 13) = *(a1 + 45);
  v3 = *(v1 + 16);
  v5[0] = *v1;
  v5[1] = v3;
  v6[0] = *(v1 + 32);
  *(v6 + 13) = *(v1 + 45);
  return _s20SiriOntologyProtobuf07Google_C18_GeneratedCodeInfoV10AnnotationV2eeoiySbAE_AEtFZ_0(v5, v7);
}

uint64_t static Message.with(_:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  (*(a3 + 16))(a2, a3);
  result = a1(a4);
  if (v4)
  {
    return (*(*(a2 - 8) + 8))(a4, a2);
  }

  return result;
}

BOOL sub_26862AF30(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = *v1;
  v4 = v1[1];
  sub_2685BA80C(v5, v4);
  sub_2685BA80C(v2, v3);
  v6 = sub_2686131DC(v5, v4, v2, v3);
  sub_2685B593C(v2, v3);
  sub_2685B593C(v5, v4);
  return v6;
}

__n128 sub_26862AFD4(__int128 *a1)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  v5 = *(v1 + 2);
  v6 = a1[3];
  v12 = a1[2];
  v13 = v6;
  v14 = *(a1 + 8);
  v7 = a1[1];
  v10 = *a1;
  v11 = v7;
  sub_26864D2AC(&v10, v4, v5, v3);
  v8 = v13;
  a1[2] = v12;
  a1[3] = v8;
  *(a1 + 8) = v14;
  result = v11;
  *a1 = v10;
  a1[1] = result;
  return result;
}

BOOL sub_26862B060(uint64_t a1)
{
  if (*v1 != *a1)
  {
    return 0;
  }

  v4 = v1 + 8;
  v3 = *(v1 + 8);
  v2 = *(v4 + 8);
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  sub_2685BA80C(v3, v2);
  sub_2685BA80C(v6, v5);
  v7 = sub_2686131DC(v3, v2, v6, v5);
  sub_2685B593C(v6, v5);
  sub_2685B593C(v3, v2);
  return v7;
}

__n128 sub_26862B0F8(__int128 *a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = a1[3];
  v12 = a1[2];
  v13 = v6;
  v14 = *(a1 + 8);
  v7 = a1[1];
  v10 = *a1;
  v11 = v7;
  sub_26864DB28(&v10, v4, v5, v3);
  v8 = v13;
  a1[2] = v12;
  a1[3] = v8;
  *(a1 + 8) = v14;
  result = v11;
  *a1 = v10;
  a1[1] = result;
  return result;
}

BOOL sub_26862B184(uint64_t a1)
{
  if (*v1 != *a1)
  {
    return 0;
  }

  v4 = v1 + 8;
  v3 = *(v1 + 8);
  v2 = *(v4 + 8);
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  sub_2685BA80C(v3, v2);
  sub_2685BA80C(v6, v5);
  v7 = sub_2686131DC(v3, v2, v6, v5);
  sub_2685B593C(v6, v5);
  sub_2685B593C(v3, v2);
  return v7;
}

BOOL sub_26862B2DC(void *a1)
{
  if (*v1 != *a1)
  {
    return 0;
  }

  v4 = v1 + 1;
  v3 = v1[1];
  v2 = v4[1];
  v6 = a1[1];
  v5 = a1[2];
  sub_2685BA80C(v3, v2);
  sub_2685BA80C(v6, v5);
  v7 = sub_2686131DC(v3, v2, v6, v5);
  sub_2685B593C(v6, v5);
  sub_2685B593C(v3, v2);
  return v7;
}

__n128 sub_26862B3F8(__int128 *a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *, uint64_t, uint64_t, uint64_t))
{
  v7 = *v4;
  v8 = *(v4 + 1);
  v9 = *(v4 + 2);
  v10 = a1[3];
  v16 = a1[2];
  v17 = v10;
  v18 = *(a1 + 8);
  v11 = a1[1];
  v14 = *a1;
  v15 = v11;
  a4(&v14, v7, v8, v9);
  v12 = v17;
  a1[2] = v16;
  a1[3] = v12;
  *(a1 + 8) = v18;
  result = v15;
  *a1 = v14;
  a1[1] = result;
  return result;
}

BOOL sub_26862B4D4(uint64_t a1)
{
  if (*v1 != *a1)
  {
    return 0;
  }

  v4 = v1 + 8;
  v3 = *(v1 + 8);
  v2 = *(v4 + 8);
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  sub_2685BA80C(v3, v2);
  sub_2685BA80C(v6, v5);
  v7 = sub_2686131DC(v3, v2, v6, v5);
  sub_2685B593C(v6, v5);
  sub_2685B593C(v3, v2);
  return v7;
}

__n128 sub_26862B56C(__int128 *a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = a1[3];
  v12 = a1[2];
  v13 = v6;
  v14 = *(a1 + 8);
  v7 = a1[1];
  v10 = *a1;
  v11 = v7;
  sub_26864FBC4(&v10, v3, v4, v5);
  v8 = v13;
  a1[2] = v12;
  a1[3] = v8;
  *(a1 + 8) = v14;
  result = v11;
  *a1 = v10;
  a1[1] = result;
  return result;
}

BOOL sub_26862B5F8(unsigned __int8 *a1)
{
  if (*a1 != *v1)
  {
    return 0;
  }

  v5 = v1 + 8;
  v4 = *(v1 + 1);
  v3 = *(v5 + 1);
  v7 = *(a1 + 1);
  v6 = *(a1 + 2);
  sub_2685BA80C(v4, v3);
  sub_2685BA80C(v7, v6);
  v8 = sub_2686131DC(v4, v3, v7, v6);
  sub_2685B593C(v7, v6);
  sub_2685B593C(v4, v3);
  return v8;
}

uint64_t sub_26862B6BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, void *))
{
  v5 = *(a1 + 8);
  v6 = *v4;
  v7 = v4[1];
  v11[0] = *a1;
  v11[1] = v5;
  v12 = *(a1 + 16);
  v9[0] = v6;
  v9[1] = v7;
  v10 = *(v4 + 1);
  return (a4)(v9, v11, a3) & 1;
}

__n128 sub_26862B70C(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = a1[3];
  v13 = a1[2];
  v14 = v7;
  v15 = *(a1 + 8);
  v8 = a1[1];
  v11 = *a1;
  v12 = v8;
  sub_2686507AC(&v11, v3, v4, v5, v6);
  v9 = v14;
  a1[2] = v13;
  a1[3] = v9;
  *(a1 + 8) = v15;
  result = v12;
  *a1 = v11;
  a1[1] = result;
  return result;
}

BOOL sub_26862B798(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[2];
  v9 = v1[3];
  if (!sub_2686131DC(v6, v7, v2, v3))
  {
    return 0;
  }

  sub_2685BA80C(v8, v9);
  sub_2685BA80C(v4, v5);
  v10 = sub_2686131DC(v8, v9, v4, v5);
  sub_2685B593C(v4, v5);
  sub_2685B593C(v8, v9);
  return v10;
}

__n128 sub_26862B8A0(__int128 *a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = *v4;
  v8 = *(v4 + 8);
  v9 = *(v4 + 16);
  v10 = *(v4 + 24);
  v11 = a1[3];
  v17 = a1[2];
  v18 = v11;
  v19 = *(a1 + 8);
  v12 = a1[1];
  v15 = *a1;
  v16 = v12;
  a4(&v15, v7, v8, v9, v10);
  v13 = v18;
  a1[2] = v17;
  a1[3] = v13;
  *(a1 + 8) = v19;
  result = v16;
  *a1 = v15;
  a1[1] = result;
  return result;
}

BOOL sub_26862B984(uint64_t a1)
{
  if (*v1 != *a1 || *(v1 + 8) != *(a1 + 8))
  {
    return 0;
  }

  v6 = v1 + 16;
  v5 = *(v1 + 16);
  v4 = *(v6 + 8);
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  sub_2685BA80C(v5, v4);
  sub_2685BA80C(v8, v7);
  v9 = sub_2686131DC(v5, v4, v8, v7);
  sub_2685B593C(v8, v7);
  sub_2685B593C(v5, v4);
  return v9;
}

__n128 sub_26862BAB0(__int128 *a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *, uint64_t, uint64_t, uint64_t))
{
  v7 = *v4;
  v8 = v4[1];
  v9 = v4[2];
  v10 = a1[3];
  v16 = a1[2];
  v17 = v10;
  v18 = *(a1 + 8);
  v11 = a1[1];
  v14 = *a1;
  v15 = v11;
  a4(&v14, v7, v8, v9);
  v12 = v17;
  a1[2] = v16;
  a1[3] = v12;
  *(a1 + 8) = v18;
  result = v15;
  *a1 = v14;
  a1[1] = result;
  return result;
}

uint64_t sub_26862BB90(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *, __int128 *, uint64_t))
{
  v5 = *(a1 + 2);
  v6 = *(v4 + 2);
  v10 = *a1;
  v11 = v5;
  v8 = *v4;
  v9 = v6;
  return a4(&v8, &v10, a3) & 1;
}

BOOL sub_26862BC44(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = *v4;
  v9 = v4[1];
  v10 = v4[2];
  if ((a4(v8, v5, a3) & 1) == 0)
  {
    return 0;
  }

  sub_2685BA80C(v9, v10);
  sub_2685BA80C(v6, v7);
  v11 = sub_2686131DC(v9, v10, v6, v7);
  sub_2685B593C(v6, v7);
  sub_2685B593C(v9, v10);
  return v11;
}

uint64_t sub_26862BCE0(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    sub_2685B593C(result, a2);

    return sub_2685B593C(a3, a4);
  }

  return result;
}

uint64_t sub_26862BD30(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result != 2)
  {
    return sub_2685B593C(a2, a3);
  }

  return result;
}

uint64_t sub_26862BD4C(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result != 2)
  {
    return sub_2685BA80C(a2, a3);
  }

  return result;
}

uint64_t sub_26862BD68(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {

    sub_2685B593C(a2, a3);
  }

  return result;
}

uint64_t sub_26862BDC4(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    sub_2685B593C(result, a2);
  }

  return result;
}

void sub_26862BE08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a2)
  {

    sub_2685B593C(a5, a6);
  }
}

double sub_26862BE68(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_26862BE80(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t Message.init(unpackingAny:extensions:options:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v10 = a1[1];
  v15 = *a1;
  v11 = *a3;
  v12 = *(a3 + 8);
  (*(a5 + 16))(a6, a4, a5);
  v16 = v11;
  v17 = v12;
  v13 = v18;
  sub_26866D488(a6, a2, &v16, a4, a5);
  sub_2685B593C(v15, v10);

  result = sub_2685B55C0(a2);
  if (v13)
  {
    return (*(*(a4 - 8) + 8))(a6, a4);
  }

  return result;
}

uint64_t Google_Protobuf_Timestamp.unknownFields.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v3;
  return sub_2685BA80C(v2, v3);
}

uint64_t Google_Protobuf_Timestamp.unknownFields.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_2685B593C(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

double Google_Protobuf_Timestamp.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  result = 0.0;
  *(a1 + 16) = xmmword_26868A5E0;
  return result;
}

uint64_t static Google_Protobuf_Timestamp._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BDC0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028D380;
  v2 = qword_28028D388;
  v3 = unk_28028D390;
  *a1 = qword_28028D378;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t Google_Protobuf_Timestamp.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  result = v7(a2, a3);
  if (!v4)
  {
    while ((v9 & 1) == 0)
    {
      if (result == 1)
      {
        (*(a3 + 96))(v3, a2, a3);
      }

      else if (result == 2)
      {
        (*(a3 + 72))(v3 + 8, a2, a3);
      }

      result = v7(a2, a3);
    }
  }

  return result;
}

uint64_t sub_26862C28C(uint64_t result, uint64_t a2, int a3, uint64_t a4, unint64_t a5)
{
  if (a2)
  {
    MEMORY[0x26D61D8F0](1);
    v9 = MEMORY[0x26D61D920](a2);
  }

  if (a3)
  {
    MEMORY[0x26D61D8F0](2);
    v9 = MEMORY[0x26D61D920](a3);
  }

  v10 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    if (v10 != 2)
    {
      return v9;
    }

    v11 = *(a4 + 16);
    v12 = *(a4 + 24);
LABEL_12:
    if (v11 == v12)
    {
      return v9;
    }

    return sub_268689844();
  }

  if (v10)
  {
    v11 = a4;
    v12 = a4 >> 32;
    goto LABEL_12;
  }

  if ((a5 & 0xFF000000000000) != 0)
  {
    return sub_268689844();
  }

  return v9;
}

char *sub_26862C34C(char *result, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v8 = a3;
  v9 = result;
  if (!a2 || (result = sub_268636ED8(a2, 1), !v5))
  {
    if (!v8 || (result = sub_2686440C0(v8, 2), !v5))
    {
      v10 = a5 >> 62;
      if ((a5 >> 62) > 1)
      {
        if (v10 != 2)
        {
          return result;
        }

        v11 = *(a4 + 16);
        v12 = *(a4 + 24);
      }

      else
      {
        if (!v10)
        {
          if ((a5 & 0xFF000000000000) == 0)
          {
            return result;
          }

          goto LABEL_13;
        }

        v11 = a4;
        v12 = a4 >> 32;
      }

      if (v11 == v12)
      {
        return result;
      }

LABEL_13:
      if (*(v9 + 64) == 1)
      {
        return sub_26863B108(a4, a5, v9);
      }
    }
  }

  return result;
}

uint64_t Google_Protobuf_Timestamp.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 8);
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  if (!*v3 || (result = (*(a3 + 32))(*v3, 1, a2, a3), !v4))
  {
    if (!v8 || (result = (*(a3 + 24))(v8, 2, a2, a3), !v4))
    {
      sub_2685BA80C(v9, v10);
      UnknownStorage.traverse<A>(visitor:)(a1, a2, a3);
      return sub_2685B593C(v9, v10);
    }
  }

  return result;
}

uint64_t Google_Protobuf_Timestamp.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_268689E94();
  v8 = v13;
  v9 = v14;
  v10 = v15;
  v6 = v11;
  v7 = v12;
  sub_26862C28C(&v6, v1, v2, v4, v3);
  v14 = v9;
  v15 = v10;
  v12 = v7;
  v13 = v8;
  v11 = v6;
  return sub_268689EF4();
}

double sub_26862C5A8@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  result = 0.0;
  *(a1 + 16) = xmmword_26868A5E0;
  return result;
}

uint64_t sub_26862C60C@<X0>(void *a1@<X8>)
{
  if (qword_28028BDC0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028D380;
  v2 = qword_28028D388;
  v3 = unk_28028D390;
  *a1 = qword_28028D378;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_26862C6B8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_268689E94();
  v8 = v13;
  v9 = v14;
  v10 = v15;
  v6 = v11;
  v7 = v12;
  sub_26862C28C(&v6, v1, v2, v4, v3);
  v14 = v9;
  v15 = v10;
  v12 = v7;
  v13 = v8;
  v11 = v6;
  return sub_268689EF4();
}

__n128 sub_26862C770(__int128 *a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = a1[3];
  v13 = a1[2];
  v14 = v7;
  v15 = *(a1 + 8);
  v8 = a1[1];
  v11 = *a1;
  v12 = v8;
  sub_26862C28C(&v11, v3, v4, v5, v6);
  v9 = v14;
  a1[2] = v13;
  a1[3] = v9;
  *(a1 + 8) = v15;
  result = v12;
  *a1 = v11;
  a1[1] = result;
  return result;
}

uint64_t sub_26862C7F4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  sub_268689E94();
  v9 = v14;
  v10 = v15;
  v11 = v16;
  v7 = v12;
  v8 = v13;
  sub_26862C28C(&v7, v2, v3, v5, v4);
  v15 = v10;
  v16 = v11;
  v13 = v8;
  v14 = v9;
  v12 = v7;
  return sub_268689EF4();
}

BOOL _s20SiriOntologyProtobuf07Google_C10_TimestampV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  sub_2685BA80C(v7, v6);
  sub_2685BA80C(v5, v4);
  v8 = sub_2686131DC(v7, v6, v5, v4);
  sub_2685B593C(v5, v4);
  sub_2685B593C(v7, v6);
  return v8;
}

unint64_t sub_26862C950(uint64_t a1)
{
  result = sub_26862C978();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26862C978()
{
  result = qword_28028D398;
  if (!qword_28028D398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D398);
  }

  return result;
}

unint64_t sub_26862C9CC(uint64_t a1)
{
  *(a1 + 8) = sub_26862C9FC();
  result = sub_26862CA50();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_26862C9FC()
{
  result = qword_28028D3A0;
  if (!qword_28028D3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D3A0);
  }

  return result;
}

unint64_t sub_26862CA50()
{
  result = qword_28028D3A8;
  if (!qword_28028D3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D3A8);
  }

  return result;
}

unint64_t sub_26862CAA8()
{
  result = qword_28028D3B0;
  if (!qword_28028D3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D3B0);
  }

  return result;
}

uint64_t sub_26862CAFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 24) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 24) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_26862CB50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0;
      *(result + 24) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_26862CBCC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 50))
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

uint64_t sub_26862CC14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 50) = 1;
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

    *(result + 50) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26862CC74@<X0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  v17 = 1;
  sub_2685B1724(a1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3C0, &unk_268693140);
  if (swift_dynamicCast())
  {
    sub_2685B17CC(v13, v16);
    __swift_project_boxed_opaque_existential_1(v16, v16[3]);
    swift_getDynamicType();
    (*(v16[4] + 8))(v12);
    __swift_destroy_boxed_opaque_existential_1(a1);
    result = __swift_destroy_boxed_opaque_existential_1(v16);
    v8 = v12[0];
    v9 = v12[1];
    v10 = v17;
    *a3 = MEMORY[0x277D84F90];
    *(a3 + 8) = 0;
    *(a3 + 9) = v10;
    *(a3 + 16) = v8;
    *(a3 + 32) = v9;
    *(a3 + 48) = v5;
    *(a3 + 49) = v6;
  }

  else
  {
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    sub_2685B2E64(v13, &qword_28028D3C8, &unk_2686902F0);
    sub_2685D104C();
    swift_allocError();
    *v11 = 4;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return result;
}

uint64_t sub_26862CDF8(uint64_t a1)
{
  v2 = *(v1 + 49);
  v3 = *(v1 + 24);
  v4 = *(v3 + 16);
  if (v2 != 1)
  {
    if (v4)
    {
      v14 = sub_2685B351C(a1);
      if (v15)
      {
        v16 = *(v3 + 56) + 80 * v14;
        v12 = *(v16 + 32);
        if (v12 >> 8 <= 0xFE)
        {
          v11 = *(v16 + 16);
          v10 = *(v16 + 24);
          v13 = (v12 >> 8) & 1;
          v8 = *v16;
          v9 = *(v16 + 8);
          goto LABEL_10;
        }
      }
    }

LABEL_8:
    sub_2685D104C();
    swift_allocError();
    *v17 = 4;
    return swift_willThrow();
  }

  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = sub_2685B351C(a1);
  if ((v6 & 1) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(v3 + 56) + 80 * v5;
  v8 = *(v7 + 40);
  v9 = *(v7 + 48);
  v11 = *(v7 + 56);
  v10 = *(v7 + 64);
  v12 = *(v7 + 72);
  LOBYTE(v13) = *(v7 + 73);
LABEL_10:
  sub_2685C255C(v11, v10, v12, v13);
  sub_268633554(v8, v9);
  return sub_2686314C8(v11, v10, v12, v13);
}

char *sub_26862CF18(int a1, uint64_t a2)
{
  result = sub_26862CDF8(a2);
  if (!v3)
  {
    v6 = a1;
    if (a1 < 0)
    {
      v7 = *v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v2 = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v7 = sub_2685B3F48(0, *(v7 + 2) + 1, 1, v7);
        *v2 = v7;
      }

      v9 = *(v7 + 2);
      v10 = *(v7 + 3);
      v11 = v9 + 1;
      if (v9 >= v10 >> 1)
      {
        v15 = v9 + 1;
        v12 = v7;
        v13 = *(v7 + 2);
        v14 = sub_2685B3F48((v10 > 1), v9 + 1, 1, v12);
        v9 = v13;
        v11 = v15;
        v7 = v14;
      }

      *(v7 + 2) = v11;
      v7[v9 + 32] = 45;
      *v2 = v7;
      v6 = -v6;
    }

    return sub_2686328AC(v6);
  }

  return result;
}

uint64_t sub_26862CFF4(uint64_t a1, uint64_t a2, void (*a3)(char **, char *), uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v11 = *(a5 - 8);
  v43 = a4;
  v44 = v11;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](a1);
  v14 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v35 - v15;
  result = sub_26862CDF8(v17);
  if (!v6)
  {
    v42 = v16;
    v36 = v12;
    v19 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v7 = v19;
    v41 = a3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_28:
      v19 = sub_2685B3F48(0, *(v19 + 2) + 1, 1, v19);
      *v7 = v19;
    }

    v22 = *(v19 + 2);
    v21 = *(v19 + 3);
    if (v22 >= v21 >> 1)
    {
      v19 = sub_2685B3F48((v21 > 1), v22 + 1, 1, v19);
    }

    *(v19 + 2) = v22 + 1;
    v19[v22 + 32] = 91;
    *v7 = v19;
    *(v7 + 4) = 256;
    if (sub_268689B74())
    {
      v23 = 0;
      v24 = 0;
      v39 = (v44 + 32);
      v40 = (v44 + 16);
      v37 = v7;
      v38 = (v44 + 8);
      do
      {
        v25 = sub_268689B64();
        sub_268689B24();
        if (v25)
        {
          v19 = v42;
          (*(v44 + 16))(v42, a1 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v23, a5);
          v26 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            goto LABEL_27;
          }
        }

        else
        {
          result = sub_268689D14();
          if (v36 != 8)
          {
            __break(1u);
            return result;
          }

          v45 = result;
          v31 = v42;
          (*v40)(v42, &v45, a5);
          v19 = v31;
          swift_unknownObjectRelease();
          v26 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
LABEL_27:
            __break(1u);
            goto LABEL_28;
          }
        }

        (*v39)(v14, v19, a5);
        if (v24)
        {
          v27 = *v7;
          v28 = swift_isUniquelyReferenced_nonNull_native();
          *v7 = v27;
          if ((v28 & 1) == 0)
          {
            v27 = sub_2685B3F48(0, *(v27 + 2) + 1, 1, v27);
            *v7 = v27;
          }

          v30 = *(v27 + 2);
          v29 = *(v27 + 3);
          if (v30 >= v29 >> 1)
          {
            v27 = sub_2685B3F48((v29 > 1), v30 + 1, 1, v27);
          }

          *(v27 + 2) = v30 + 1;
          v27[v30 + 32] = 44;
          v7 = v37;
          *v37 = v27;
        }

        v41(v7, v14);
        (*v38)(v14, a5);
        ++v23;
        v24 = 1;
      }

      while (v26 != sub_268689B74());
    }

    v32 = *v7;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v7 = v32;
    if ((result & 1) == 0)
    {
      result = sub_2685B3F48(0, *(v32 + 16) + 1, 1, v32);
      v32 = result;
      *v7 = result;
    }

    v34 = *(v32 + 16);
    v33 = *(v32 + 24);
    if (v34 >= v33 >> 1)
    {
      result = sub_2685B3F48((v33 > 1), v34 + 1, 1, v32);
      v32 = result;
    }

    *(v32 + 16) = v34 + 1;
    *(v32 + v34 + 32) = 93;
    *v7 = v32;
    *(v7 + 4) = 44;
  }

  return result;
}

char *sub_26862D404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  result = sub_26862CDF8(a2);
  if (!v5)
  {
    if ((*(v4 + 48) & 1) != 0 || (sub_2685C23CC(a3, a4, v31), v32 == 255))
    {
      v10 = (*(a4 + 40))(a3, a4);
      if ((v10 & 0x8000000000000000) != 0)
      {
        v11 = v10;
        v12 = *v4;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v6 = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v12 = sub_2685B3F48(0, *(v12 + 2) + 1, 1, v12);
          *v6 = v12;
        }

        v15 = *(v12 + 2);
        v14 = *(v12 + 3);
        if (v15 >= v14 >> 1)
        {
          v12 = sub_2685B3F48((v14 > 1), v15 + 1, 1, v12);
        }

        *(v12 + 2) = v15 + 1;
        v12[v15 + 32] = 45;
        *v6 = v12;
        v10 = -v11;
      }

      return sub_2686328AC(v10);
    }

    else
    {
      v16 = v31[0];
      v17 = v31[1];
      v18 = *v6;
      v19 = swift_isUniquelyReferenced_nonNull_native();
      *v6 = v18;
      if ((v19 & 1) == 0)
      {
        v18 = sub_2685B3F48(0, *(v18 + 2) + 1, 1, v18);
        *v6 = v18;
      }

      v20 = *(v18 + 2);
      v21 = *(v18 + 3);
      v22 = v20 + 1;
      if (v20 >= v21 >> 1)
      {
        v28 = v18;
        v29 = *(v18 + 2);
        v30 = sub_2685B3F48((v21 > 1), v20 + 1, 1, v28);
        v20 = v29;
        v18 = v30;
      }

      *(v18 + 2) = v22;
      v23 = &v18[v20];
      v23[32] = 34;
      *v6 = v18;
      sub_2685B403C(v16, v17, v23);
      v24 = *v6;
      v25 = swift_isUniquelyReferenced_nonNull_native();
      *v6 = v24;
      if ((v25 & 1) == 0)
      {
        v24 = sub_2685B3F48(0, *(v24 + 2) + 1, 1, v24);
        *v6 = v24;
      }

      v27 = *(v24 + 2);
      v26 = *(v24 + 3);
      if (v27 >= v26 >> 1)
      {
        v24 = sub_2685B3F48((v26 > 1), v27 + 1, 1, v24);
      }

      result = sub_2685B2E64(v31, &qword_28028D3B8, &qword_268692270);
      *(v24 + 2) = v27 + 1;
      v24[v27 + 32] = 34;
      *v6 = v24;
    }
  }

  return result;
}

uint64_t sub_26862D664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_26862CDF8(a2);
  if (!v5)
  {
    v9 = *(v4 + 49);
    v12[0] = *(v4 + 48);
    v12[1] = v9;
    v10 = Message.jsonUTF8Data(options:)(v12, a3, a4);
    return sub_268668CF8(v10, v11);
  }

  return result;
}

uint64_t sub_26862D6E4(uint64_t a1, uint64_t a2)
{
  result = sub_26862CDF8(a2);
  if (v3)
  {
    return result;
  }

  v6 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_2685B3F48(0, *(v6 + 2) + 1, 1, v6);
    *v2 = v6;
  }

  v9 = *(v6 + 2);
  v8 = *(v6 + 3);
  if (v9 >= v8 >> 1)
  {
    v6 = sub_2685B3F48((v8 > 1), v9 + 1, 1, v6);
  }

  *(v6 + 2) = v9 + 1;
  v6[v9 + 32] = 91;
  *v2 = v6;
  *(v2 + 8) = 256;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = *(a1 + 32);
    if ((~LODWORD(v11) & 0x7F800000) != 0)
    {
      v14 = sub_268689BE4();
      sub_2686689EC(v14, v15);
      v16 = v10 - 1;
      if (v10 == 1)
      {
LABEL_16:
        v6 = *v2;
        goto LABEL_17;
      }
    }

    else
    {
      if ((LODWORD(v11) & 0x7FFFFF) != 0)
      {
        v12 = "NaN";
        v13 = 5;
      }

      else if (v11 >= 0.0)
      {
        v12 = "Infinity";
        v13 = 10;
      }

      else
      {
        v12 = "-Infinity";
        v13 = 11;
      }

      sub_2685B403C(v12, v13, LODWORD(v11));
      v16 = v10 - 1;
      if (v10 == 1)
      {
        goto LABEL_16;
      }
    }

    v19 = (a1 + 36);
    do
    {
      v22 = *v19;
      v23 = *v2;
      v24 = swift_isUniquelyReferenced_nonNull_native();
      *v2 = v23;
      if ((v24 & 1) == 0)
      {
        v23 = sub_2685B3F48(0, *(v23 + 2) + 1, 1, v23);
        *v2 = v23;
      }

      v26 = *(v23 + 2);
      v25 = *(v23 + 3);
      if (v26 >= v25 >> 1)
      {
        v23 = sub_2685B3F48((v25 > 1), v26 + 1, 1, v23);
      }

      *(v23 + 2) = v26 + 1;
      v23[v26 + 32] = 44;
      *v2 = v23;
      if ((~LODWORD(v22) & 0x7F800000) != 0)
      {
        v20 = sub_268689BE4();
        sub_2686689EC(v20, v21);
      }

      else if ((LODWORD(v22) & 0x7FFFFF) != 0)
      {
        sub_2685B403C("NaN", 5, LODWORD(v22));
      }

      else if (v22 >= 0.0)
      {
        sub_2685B403C("Infinity", 10, LODWORD(v22));
      }

      else
      {
        sub_2685B403C("-Infinity", 11, LODWORD(v22));
      }

      ++v19;
      --v16;
    }

    while (v16);
    goto LABEL_16;
  }

LABEL_17:
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v6;
  if ((result & 1) == 0)
  {
    result = sub_2685B3F48(0, *(v6 + 2) + 1, 1, v6);
    v6 = result;
    *v2 = result;
  }

  v18 = *(v6 + 2);
  v17 = *(v6 + 3);
  if (v18 >= v17 >> 1)
  {
    result = sub_2685B3F48((v17 > 1), v18 + 1, 1, v6);
    v6 = result;
  }

  *(v6 + 2) = v18 + 1;
  v6[v18 + 32] = 93;
  *v2 = v6;
  *(v2 + 8) = 44;
  return result;
}

uint64_t sub_26862D9BC(uint64_t a1, uint64_t a2)
{
  result = sub_26862CDF8(a2);
  if (v3)
  {
    return result;
  }

  v6 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_2685B3F48(0, *(v6 + 2) + 1, 1, v6);
    *v2 = v6;
  }

  v9 = *(v6 + 2);
  v8 = *(v6 + 3);
  if (v9 >= v8 >> 1)
  {
    v6 = sub_2685B3F48((v8 > 1), v9 + 1, 1, v6);
  }

  *(v6 + 2) = v9 + 1;
  v6[v9 + 32] = 91;
  *v2 = v6;
  *(v2 + 8) = 256;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = *(a1 + 32);
    if ((~v11 & 0x7FF0000000000000) != 0)
    {
      v14 = sub_268689BD4();
      sub_2686689EC(v14, v15);
      v16 = v10 - 1;
      if (v10 == 1)
      {
LABEL_16:
        v6 = *v2;
        goto LABEL_17;
      }
    }

    else
    {
      if ((v11 & 0xFFFFFFFFFFFFFLL) != 0)
      {
        v12 = "NaN";
        v13 = 5;
      }

      else if (*(a1 + 32) >= 0.0)
      {
        v12 = "Infinity";
        v13 = 10;
      }

      else
      {
        v12 = "-Infinity";
        v13 = 11;
      }

      sub_2685B403C(v12, v13, v11);
      v16 = v10 - 1;
      if (v10 == 1)
      {
        goto LABEL_16;
      }
    }

    v19 = (a1 + 40);
    do
    {
      v22 = *v19;
      v23 = *v2;
      v24 = swift_isUniquelyReferenced_nonNull_native();
      *v2 = v23;
      if ((v24 & 1) == 0)
      {
        v23 = sub_2685B3F48(0, *(v23 + 2) + 1, 1, v23);
        *v2 = v23;
      }

      v26 = *(v23 + 2);
      v25 = *(v23 + 3);
      if (v26 >= v25 >> 1)
      {
        v23 = sub_2685B3F48((v25 > 1), v26 + 1, 1, v23);
      }

      *(v23 + 2) = v26 + 1;
      v23[v26 + 32] = 44;
      *v2 = v23;
      if ((~*&v22 & 0x7FF0000000000000) != 0)
      {
        v20 = sub_268689BD4();
        sub_2686689EC(v20, v21);
      }

      else if ((*&v22 & 0xFFFFFFFFFFFFFLL) != 0)
      {
        sub_2685B403C("NaN", 5, *&v22);
      }

      else if (v22 >= 0.0)
      {
        sub_2685B403C("Infinity", 10, *&v22);
      }

      else
      {
        sub_2685B403C("-Infinity", 11, *&v22);
      }

      ++v19;
      --v16;
    }

    while (v16);
    goto LABEL_16;
  }

LABEL_17:
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v6;
  if ((result & 1) == 0)
  {
    result = sub_2685B3F48(0, *(v6 + 2) + 1, 1, v6);
    v6 = result;
    *v2 = result;
  }

  v18 = *(v6 + 2);
  v17 = *(v6 + 3);
  if (v18 >= v17 >> 1)
  {
    result = sub_2685B3F48((v17 > 1), v18 + 1, 1, v6);
    v6 = result;
  }

  *(v6 + 2) = v18 + 1;
  v6[v18 + 32] = 93;
  *v2 = v6;
  *(v2 + 8) = 44;
  return result;
}

uint64_t sub_26862DC94(uint64_t a1, uint64_t a2)
{
  result = sub_26862CDF8(a2);
  if (!v3)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v2 = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_2685B3F48(0, *(v6 + 2) + 1, 1, v6);
      *v2 = v6;
    }

    v9 = *(v6 + 2);
    v8 = *(v6 + 3);
    if (v9 >= v8 >> 1)
    {
      v6 = sub_2685B3F48((v8 > 1), v9 + 1, 1, v6);
    }

    *(v6 + 2) = v9 + 1;
    v6[v9 + 32] = 91;
    *v2 = v6;
    *(v2 + 8) = 256;
    v10 = *(a1 + 16);
    if (v10)
    {
      sub_2686328AC(*(a1 + 32));
      v11 = v10 - 1;
      if (v10 != 1)
      {
        v14 = (a1 + 36);
        do
        {
          v16 = *v14++;
          v15 = v16;
          v17 = *v2;
          v18 = swift_isUniquelyReferenced_nonNull_native();
          *v2 = v17;
          if ((v18 & 1) == 0)
          {
            v17 = sub_2685B3F48(0, *(v17 + 2) + 1, 1, v17);
            *v2 = v17;
          }

          v20 = *(v17 + 2);
          v19 = *(v17 + 3);
          if (v20 >= v19 >> 1)
          {
            v17 = sub_2685B3F48((v19 > 1), v20 + 1, 1, v17);
          }

          *(v17 + 2) = v20 + 1;
          v17[v20 + 32] = 44;
          *v2 = v17;
          sub_2686328AC(v15);
          --v11;
        }

        while (v11);
      }

      v6 = *v2;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    *v2 = v6;
    if ((result & 1) == 0)
    {
      result = sub_2685B3F48(0, *(v6 + 2) + 1, 1, v6);
      v6 = result;
      *v2 = result;
    }

    v13 = *(v6 + 2);
    v12 = *(v6 + 3);
    if (v13 >= v12 >> 1)
    {
      result = sub_2685B3F48((v12 > 1), v13 + 1, 1, v6);
      v6 = result;
    }

    *(v6 + 2) = v13 + 1;
    v6[v13 + 32] = 93;
    *v2 = v6;
    *(v2 + 8) = 44;
  }

  return result;
}

uint64_t sub_26862DE9C(void *a1, uint64_t a2)
{
  result = sub_26862CDF8(a2);
  if (!v3)
  {
    v6 = *v2;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v2 = v6;
    if ((result & 1) == 0)
    {
      result = sub_2685B3F48(0, *(v6 + 2) + 1, 1, v6);
      v6 = result;
      *v2 = result;
    }

    v8 = *(v6 + 2);
    v7 = *(v6 + 3);
    if (v8 >= v7 >> 1)
    {
      result = sub_2685B3F48((v7 > 1), v8 + 1, 1, v6);
      v6 = result;
    }

    *(v6 + 2) = v8 + 1;
    v6[v8 + 32] = 91;
    *v2 = v6;
    *(v2 + 8) = 256;
    v9 = a1[2];
    if (v9)
    {
      v10 = a1[4];
      *v2 = v6;
      v12 = *(v6 + 2);
      v11 = *(v6 + 3);
      if (v12 >= v11 >> 1)
      {
        v27 = v10;
        v6 = sub_2685B3F48((v11 > 1), v12 + 1, 1, v6);
        v10 = v27;
      }

      *(v6 + 2) = v12 + 1;
      v6[v12 + 32] = 34;
      *v2 = v6;
      sub_2686328AC(v10);
      v6 = *v2;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v2 = v6;
      if ((result & 1) == 0)
      {
        result = sub_2685B3F48(0, *(v6 + 2) + 1, 1, v6);
        v6 = result;
        *v2 = result;
      }

      v14 = *(v6 + 2);
      v13 = *(v6 + 3);
      if (v14 >= v13 >> 1)
      {
        result = sub_2685B3F48((v13 > 1), v14 + 1, 1, v6);
        v6 = result;
      }

      *(v6 + 2) = v14 + 1;
      v6[v14 + 32] = 34;
      *v2 = v6;
      v15 = v9 - 1;
      if (v15)
      {
        v18 = a1 + 5;
        do
        {
          v20 = *v18++;
          v19 = v20;
          *v2 = v6;
          v22 = *(v6 + 2);
          v21 = *(v6 + 3);
          if (v22 >= v21 >> 1)
          {
            v28 = v19;
            v6 = sub_2685B3F48((v21 > 1), v22 + 1, 1, v6);
            v19 = v28;
          }

          *(v6 + 2) = v22 + 1;
          v6[v22 + 32] = 44;
          *v2 = v6;
          v24 = *(v6 + 2);
          v23 = *(v6 + 3);
          if (v24 >= v23 >> 1)
          {
            v29 = v19;
            v6 = sub_2685B3F48((v23 > 1), v24 + 1, 1, v6);
            v19 = v29;
          }

          *(v6 + 2) = v24 + 1;
          v6[v24 + 32] = 34;
          *v2 = v6;
          sub_2686328AC(v19);
          v6 = *v2;
          result = swift_isUniquelyReferenced_nonNull_native();
          *v2 = v6;
          if ((result & 1) == 0)
          {
            result = sub_2685B3F48(0, *(v6 + 2) + 1, 1, v6);
            v6 = result;
            *v2 = result;
          }

          v26 = *(v6 + 2);
          v25 = *(v6 + 3);
          if (v26 >= v25 >> 1)
          {
            result = sub_2685B3F48((v25 > 1), v26 + 1, 1, v6);
            v6 = result;
          }

          *(v6 + 2) = v26 + 1;
          v6[v26 + 32] = 34;
          *v2 = v6;
          --v15;
        }

        while (v15);
      }
    }

    *v2 = v6;
    v17 = *(v6 + 2);
    v16 = *(v6 + 3);
    if (v17 >= v16 >> 1)
    {
      result = sub_2685B3F48((v16 > 1), v17 + 1, 1, v6);
      v6 = result;
    }

    *(v6 + 2) = v17 + 1;
    v6[v17 + 32] = 93;
    *v2 = v6;
    *(v2 + 8) = 44;
  }

  return result;
}

uint64_t sub_26862E1DC(uint64_t a1, uint64_t a2)
{
  result = sub_26862CDF8(a2);
  if (!v3)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v2 = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_2685B3F48(0, *(v6 + 2) + 1, 1, v6);
      *v2 = v6;
    }

    v9 = *(v6 + 2);
    v8 = *(v6 + 3);
    if (v9 >= v8 >> 1)
    {
      v6 = sub_2685B3F48((v8 > 1), v9 + 1, 1, v6);
    }

    *(v6 + 2) = v9 + 1;
    v6[v9 + 32] = 91;
    *v2 = v6;
    *(v2 + 8) = 256;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = *(a1 + 32);
      if ((v11 & 0x80000000) != 0)
      {
        v12 = *v2;
        v13 = swift_isUniquelyReferenced_nonNull_native();
        *v2 = v12;
        if ((v13 & 1) == 0)
        {
          v12 = sub_2685B3F48(0, *(v12 + 2) + 1, 1, v12);
          *v2 = v12;
        }

        v15 = *(v12 + 2);
        v14 = *(v12 + 3);
        v16 = v15 + 1;
        if (v15 >= v14 >> 1)
        {
          v31 = sub_2685B3F48((v14 > 1), v15 + 1, 1, v12);
          v16 = v15 + 1;
          v12 = v31;
        }

        *(v12 + 2) = v16;
        v12[v15 + 32] = 45;
        *v2 = v12;
        v11 = -v11;
      }

      sub_2686328AC(v11);
      v17 = v10 - 1;
      if (v17)
      {
        v20 = (a1 + 36);
        do
        {
          v22 = *v20++;
          v21 = v22;
          v23 = *v2;
          v24 = swift_isUniquelyReferenced_nonNull_native();
          *v2 = v23;
          if ((v24 & 1) == 0)
          {
            v23 = sub_2685B3F48(0, *(v23 + 2) + 1, 1, v23);
            *v2 = v23;
          }

          v26 = *(v23 + 2);
          v25 = *(v23 + 3);
          if (v26 >= v25 >> 1)
          {
            v23 = sub_2685B3F48((v25 > 1), v26 + 1, 1, v23);
          }

          *(v23 + 2) = v26 + 1;
          v23[v26 + 32] = 44;
          *v2 = v23;
          if ((v21 & 0x80000000) != 0)
          {
            v27 = *v2;
            v28 = swift_isUniquelyReferenced_nonNull_native();
            *v2 = v27;
            if ((v28 & 1) == 0)
            {
              v27 = sub_2685B3F48(0, *(v27 + 2) + 1, 1, v27);
              *v2 = v27;
            }

            v30 = *(v27 + 2);
            v29 = *(v27 + 3);
            if (v30 >= v29 >> 1)
            {
              v27 = sub_2685B3F48((v29 > 1), v30 + 1, 1, v27);
            }

            *(v27 + 2) = v30 + 1;
            v27[v30 + 32] = 45;
            *v2 = v27;
            v21 = -v21;
          }

          sub_2686328AC(v21);
          --v17;
        }

        while (v17);
      }

      v6 = *v2;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    *v2 = v6;
    if ((result & 1) == 0)
    {
      result = sub_2685B3F48(0, *(v6 + 2) + 1, 1, v6);
      v6 = result;
      *v2 = result;
    }

    v19 = *(v6 + 2);
    v18 = *(v6 + 3);
    if (v19 >= v18 >> 1)
    {
      result = sub_2685B3F48((v18 > 1), v19 + 1, 1, v6);
      v6 = result;
    }

    *(v6 + 2) = v19 + 1;
    v6[v19 + 32] = 93;
    *v2 = v6;
    *(v2 + 8) = 44;
  }

  return result;
}

uint64_t sub_26862E500(uint64_t a1, uint64_t a2)
{
  result = sub_26862CDF8(a2);
  if (!v3)
  {
    v6 = *v2;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v2 = v6;
    if ((result & 1) == 0)
    {
      result = sub_2685B3F48(0, *(v6 + 2) + 1, 1, v6);
      v6 = result;
      *v2 = result;
    }

    v8 = *(v6 + 2);
    v7 = *(v6 + 3);
    if (v8 >= v7 >> 1)
    {
      result = sub_2685B3F48((v7 > 1), v8 + 1, 1, v6);
      v6 = result;
    }

    *(v6 + 2) = v8 + 1;
    v6[v8 + 32] = 91;
    *v2 = v6;
    *(v2 + 8) = 256;
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = 0;
      v11 = (a1 + 32);
      do
      {
        v13 = *v11++;
        v12 = v13;
        if (v10)
        {
          *v2 = v6;
          v15 = *(v6 + 2);
          v14 = *(v6 + 3);
          if (v15 >= v14 >> 1)
          {
            v26 = v12;
            v6 = sub_2685B3F48((v14 > 1), v15 + 1, 1, v6);
            v12 = v26;
          }

          *(v6 + 2) = v15 + 1;
          v6[v15 + 32] = 44;
        }

        *v2 = v6;
        v17 = *(v6 + 2);
        v16 = *(v6 + 3);
        v18 = v17 + 1;
        if (v17 >= v16 >> 1)
        {
          v25 = v12;
          v6 = sub_2685B3F48((v16 > 1), v17 + 1, 1, v6);
          v12 = v25;
        }

        *(v6 + 2) = v18;
        v6[v17 + 32] = 34;
        *v2 = v6;
        if ((v12 & 0x8000000000000000) != 0)
        {
          v19 = *(v6 + 3);
          v20 = v17 + 2;
          if (v20 > (v19 >> 1))
          {
            v27 = v12;
            v6 = sub_2685B3F48((v19 > 1), v20, 1, v6);
            v12 = v27;
          }

          *(v6 + 2) = v20;
          v6[v18 + 32] = 45;
          *v2 = v6;
          v12 = -v12;
        }

        sub_2686328AC(v12);
        v6 = *v2;
        result = swift_isUniquelyReferenced_nonNull_native();
        *v2 = v6;
        if ((result & 1) == 0)
        {
          result = sub_2685B3F48(0, *(v6 + 2) + 1, 1, v6);
          v6 = result;
          *v2 = result;
        }

        v22 = *(v6 + 2);
        v21 = *(v6 + 3);
        if (v22 >= v21 >> 1)
        {
          result = sub_2685B3F48((v21 > 1), v22 + 1, 1, v6);
          v6 = result;
        }

        *(v6 + 2) = v22 + 1;
        v6[v22 + 32] = 34;
        *v2 = v6;
        v10 = 1;
        --v9;
      }

      while (v9);
    }

    *v2 = v6;
    v24 = *(v6 + 2);
    v23 = *(v6 + 3);
    if (v24 >= v23 >> 1)
    {
      result = sub_2685B3F48((v23 > 1), v24 + 1, 1, v6);
      v6 = result;
    }

    *(v6 + 2) = v24 + 1;
    v6[v24 + 32] = 93;
    *v2 = v6;
    *(v2 + 8) = 44;
  }

  return result;
}

uint64_t sub_26862E7C8(uint64_t a1, uint64_t a2)
{
  result = sub_26862CDF8(a2);
  if (!v3)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v2 = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_2685B3F48(0, *(v6 + 2) + 1, 1, v6);
      *v2 = v6;
    }

    v9 = *(v6 + 2);
    v8 = *(v6 + 3);
    if (v9 >= v8 >> 1)
    {
      v6 = sub_2685B3F48((v8 > 1), v9 + 1, 1, v6);
    }

    *(v6 + 2) = v9 + 1;
    v6[v9 + 32] = 91;
    *v2 = v6;
    *(v2 + 8) = 256;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = *(a1 + 32);
      if (v11)
      {
        v12 = "true";
        v13 = 4;
      }

      else
      {
        v12 = "false";
        v13 = 5;
      }

      sub_2685B403C(v12, v13, v11);
      v14 = v10 - 1;
      if (v10 != 1)
      {
        v17 = (a1 + 33);
        do
        {
          v20 = *v17;
          v21 = *v2;
          v22 = swift_isUniquelyReferenced_nonNull_native();
          *v2 = v21;
          if ((v22 & 1) == 0)
          {
            v21 = sub_2685B3F48(0, *(v21 + 2) + 1, 1, v21);
            *v2 = v21;
          }

          v24 = *(v21 + 2);
          v23 = *(v21 + 3);
          if (v24 >= v23 >> 1)
          {
            v21 = sub_2685B3F48((v23 > 1), v24 + 1, 1, v21);
          }

          *(v21 + 2) = v24 + 1;
          v21[v24 + 32] = 44;
          *v2 = v21;
          if (v20)
          {
            v18 = "true";
            v19 = 4;
          }

          else
          {
            v18 = "false";
            v19 = 5;
          }

          sub_2685B403C(v18, v19, &v21[v24]);
          ++v17;
          --v14;
        }

        while (v14);
      }

      v6 = *v2;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    *v2 = v6;
    if ((result & 1) == 0)
    {
      result = sub_2685B3F48(0, *(v6 + 2) + 1, 1, v6);
      v6 = result;
      *v2 = result;
    }

    v16 = *(v6 + 2);
    v15 = *(v6 + 3);
    if (v16 >= v15 >> 1)
    {
      result = sub_2685B3F48((v15 > 1), v16 + 1, 1, v6);
      v6 = result;
    }

    *(v6 + 2) = v16 + 1;
    v6[v16 + 32] = 93;
    *v2 = v6;
    *(v2 + 8) = 44;
  }

  return result;
}

uint64_t sub_26862EA1C(void *a1, uint64_t a2)
{
  result = sub_26862CDF8(a2);
  if (!v3)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v2 = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_2685B3F48(0, *(v6 + 2) + 1, 1, v6);
      *v2 = v6;
    }

    v9 = *(v6 + 2);
    v8 = *(v6 + 3);
    if (v9 >= v8 >> 1)
    {
      v6 = sub_2685B3F48((v8 > 1), v9 + 1, 1, v6);
    }

    *(v6 + 2) = v9 + 1;
    v6[v9 + 32] = 91;
    *v2 = v6;
    *(v2 + 8) = 256;
    v10 = a1[2];
    if (v10)
    {
      v12 = a1[4];
      v11 = a1[5];

      sub_268631D18(v12, v11);

      v13 = v10 - 1;
      if (v10 != 1)
      {
        v16 = a1 + 7;
        do
        {
          v18 = *(v16 - 1);
          v17 = *v16;
          v19 = *v2;

          v20 = swift_isUniquelyReferenced_nonNull_native();
          *v2 = v19;
          if ((v20 & 1) == 0)
          {
            v19 = sub_2685B3F48(0, *(v19 + 2) + 1, 1, v19);
            *v2 = v19;
          }

          v22 = *(v19 + 2);
          v21 = *(v19 + 3);
          if (v22 >= v21 >> 1)
          {
            v19 = sub_2685B3F48((v21 > 1), v22 + 1, 1, v19);
          }

          *(v19 + 2) = v22 + 1;
          v19[v22 + 32] = 44;
          *v2 = v19;
          sub_268631D18(v18, v17);

          v16 += 2;
          --v13;
        }

        while (v13);
      }

      v6 = *v2;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    *v2 = v6;
    if ((result & 1) == 0)
    {
      result = sub_2685B3F48(0, *(v6 + 2) + 1, 1, v6);
      v6 = result;
      *v2 = result;
    }

    v15 = *(v6 + 2);
    v14 = *(v6 + 3);
    if (v15 >= v14 >> 1)
    {
      result = sub_2685B3F48((v14 > 1), v15 + 1, 1, v6);
      v6 = result;
    }

    *(v6 + 2) = v15 + 1;
    v6[v15 + 32] = 93;
    *v2 = v6;
    *(v2 + 8) = 44;
  }

  return result;
}

uint64_t sub_26862EC5C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v45 = *MEMORY[0x277D85DE8];
  result = sub_26862CDF8(a2);
  if (v3)
  {
    return result;
  }

  v7 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v7;
  if ((result & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_3:
  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    result = sub_2685B3F48((v8 > 1), v9 + 1, 1, v7);
    v7 = result;
  }

  *(v7 + 2) = v9 + 1;
  v7[v9 + 32] = 91;
  *v4 = v7;
  *(v4 + 4) = 256;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = (a1 + 40);
    do
    {
      a1 = *(v12 - 1);
      v13 = *v12;
      sub_2685BA80C(a1, *v12);
      if (v11)
      {
        *v4 = v7;
        v15 = *(v7 + 2);
        v14 = *(v7 + 3);
        if (v15 >= v14 >> 1)
        {
          v7 = sub_2685B3F48((v14 > 1), v15 + 1, 1, v7);
        }

        *(v7 + 2) = v15 + 1;
        v7[v15 + 32] = 44;
      }

      *v4 = v7;
      v17 = *(v7 + 2);
      v16 = *(v7 + 3);
      if (v17 >= v16 >> 1)
      {
        v7 = sub_2685B3F48((v16 > 1), v17 + 1, 1, v7);
      }

      *(v7 + 2) = v17 + 1;
      v7[v17 + 32] = 34;
      *v4 = v7;
      v18 = v13 >> 62;
      if ((v13 >> 62) > 1)
      {
        if (v18 != 2)
        {
          goto LABEL_44;
        }

        v20 = *(a1 + 16);
        v19 = *(a1 + 24);
        v21 = __OFSUB__(v19, v20);
        v22 = v19 - v20;
        if (v21)
        {
          goto LABEL_54;
        }

        if (v22 < 1)
        {
          goto LABEL_44;
        }
      }

      else if (v18)
      {
        if (__OFSUB__(HIDWORD(a1), a1))
        {
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          result = sub_2685B3F48(0, *(v7 + 2) + 1, 1, v7);
          v7 = result;
          *v4 = result;
          goto LABEL_3;
        }

        if (HIDWORD(a1) - a1 < 1)
        {
          goto LABEL_44;
        }
      }

      else if (!BYTE6(v13))
      {
        goto LABEL_44;
      }

      if (v18 == 2)
      {
        v28 = *(a1 + 16);
        v27 = *(a1 + 24);
        v7 = (v13 & 0x3FFFFFFFFFFFFFFFLL);
        v23 = sub_268689764();
        if (v23)
        {
          v7 = (v13 & 0x3FFFFFFFFFFFFFFFLL);
          v29 = sub_268689794();
          if (__OFSUB__(v28, v29))
          {
            goto LABEL_57;
          }

          v23 += v28 - v29;
        }

        v21 = __OFSUB__(v27, v28);
        v30 = v27 - v28;
        if (v21)
        {
          goto LABEL_56;
        }

        v31 = sub_268689784();
        if (v31 >= v30)
        {
          v26 = v30;
        }

        else
        {
          v26 = v31;
        }

LABEL_39:
        v32 = &v23[v26];
        if (v23)
        {
          v33 = v32;
        }

        else
        {
          v33 = 0;
        }

        sub_26863298C(v23, v33, v4);
        goto LABEL_44;
      }

      if (v18 == 1)
      {
        if (a1 >> 32 < a1)
        {
          goto LABEL_55;
        }

        v23 = sub_268689764();
        if (v23)
        {
          v7 = (v13 & 0x3FFFFFFFFFFFFFFFLL);
          v24 = sub_268689794();
          if (__OFSUB__(a1, v24))
          {
            goto LABEL_58;
          }

          v23 += a1 - v24;
        }

        v25 = sub_268689784();
        if (v25 >= (a1 >> 32) - a1)
        {
          v26 = (a1 >> 32) - a1;
        }

        else
        {
          v26 = v25;
        }

        goto LABEL_39;
      }

      v39 = a1;
      v40 = v13;
      v41 = BYTE2(v13);
      v42 = BYTE3(v13);
      v43 = BYTE4(v13);
      v44 = BYTE5(v13);
      sub_26863298C(&v39, &v39 + BYTE6(v13), v4);
LABEL_44:
      v7 = *v4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v4 = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v7 = sub_2685B3F48(0, *(v7 + 2) + 1, 1, v7);
        *v4 = v7;
      }

      v36 = *(v7 + 2);
      v35 = *(v7 + 3);
      if (v36 >= v35 >> 1)
      {
        v7 = sub_2685B3F48((v35 > 1), v36 + 1, 1, v7);
      }

      v12 += 2;
      result = sub_2685B593C(a1, v13);
      *(v7 + 2) = v36 + 1;
      v7[v36 + 32] = 34;
      *v4 = v7;
      v11 = 1;
      --v10;
    }

    while (v10);
  }

  *v4 = v7;
  v38 = *(v7 + 2);
  v37 = *(v7 + 3);
  if (v38 >= v37 >> 1)
  {
    result = sub_2685B3F48((v37 > 1), v38 + 1, 1, v7);
    v7 = result;
  }

  *(v7 + 2) = v38 + 1;
  v7[v38 + 32] = 93;
  *v4 = v7;
  *(v4 + 4) = 44;
  return result;
}

uint64_t sub_26862F0C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 48);
  v7[2] = a3;
  v7[3] = a4;
  v8 = v5;
  return sub_26862CFF4(a1, a2, sub_26863150C, v7, a3);
}

char *sub_26862F10C(char **a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if ((a3 & 1) != 0 || (sub_2685C23CC(a4, a5, v34), v35 == 255))
  {
    v8 = (*(a5 + 40))(a4, a5);
    if ((v8 & 0x8000000000000000) != 0)
    {
      v9 = v8;
      v10 = *a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a1 = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v10 = sub_2685B3F48(0, *(v10 + 2) + 1, 1, v10);
        *a1 = v10;
      }

      v12 = *(v10 + 2);
      v13 = *(v10 + 3);
      v14 = v12 + 1;
      if (v12 >= v13 >> 1)
      {
        v28 = v10;
        v29 = *(v10 + 2);
        v30 = sub_2685B3F48((v13 > 1), v12 + 1, 1, v28);
        v12 = v29;
        v10 = v30;
      }

      *(v10 + 2) = v14;
      v10[v12 + 32] = 45;
      *a1 = v10;
      v8 = -v9;
    }

    return sub_2686328AC(v8);
  }

  else
  {
    v16 = v34[0];
    v17 = v34[1];
    v18 = *a1;
    v19 = swift_isUniquelyReferenced_nonNull_native();
    *a1 = v18;
    if ((v19 & 1) == 0)
    {
      v18 = sub_2685B3F48(0, *(v18 + 2) + 1, 1, v18);
      *a1 = v18;
    }

    v20 = *(v18 + 2);
    v21 = *(v18 + 3);
    v22 = v20 + 1;
    if (v20 >= v21 >> 1)
    {
      v36 = v20 + 1;
      v31 = v18;
      v32 = v20;
      v33 = sub_2685B3F48((v21 > 1), v20 + 1, 1, v31);
      v20 = v32;
      v22 = v36;
      v18 = v33;
    }

    *(v18 + 2) = v22;
    v23 = &v18[v20];
    v23[32] = 34;
    *a1 = v18;
    sub_2685B403C(v16, v17, v23);
    v24 = *a1;
    v25 = swift_isUniquelyReferenced_nonNull_native();
    *a1 = v24;
    if ((v25 & 1) == 0)
    {
      v24 = sub_2685B3F48(0, *(v24 + 2) + 1, 1, v24);
      *a1 = v24;
    }

    v27 = *(v24 + 2);
    v26 = *(v24 + 3);
    if (v27 >= v26 >> 1)
    {
      v24 = sub_2685B3F48((v26 > 1), v27 + 1, 1, v24);
    }

    result = sub_2685B2E64(v34, &qword_28028D3B8, &qword_268692270);
    *(v24 + 2) = v27 + 1;
    v24[v27 + 32] = 34;
    *a1 = v24;
  }

  return result;
}

uint64_t sub_26862F364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 48);
  v6 = *(v4 + 49);
  v8[2] = a3;
  v8[3] = a4;
  v9 = v5;
  v10 = v6;
  return sub_26862CFF4(a1, a2, sub_2686314D8, v8, a3);
}

uint64_t sub_26862F3B4(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5)
{
  v8 = a3 & 0x101;
  result = Message.jsonUTF8Data(options:)(&v8, a4, a5);
  if (!v5)
  {
    return sub_268668CF8(result, v7);
  }

  return result;
}

uint64_t sub_26862F414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v97 = a2;
  v93 = a1;
  v89 = *(a6 + 8);
  v85 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v71 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v86 = v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v88 = v69 - v12;
  v90 = *(a5 + 8);
  v87 = a3;
  v13 = swift_getAssociatedTypeWitness();
  v70 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v98 = v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = v69 - v16;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v19 = sub_268689C74();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v69 - v24;
  v26 = v104;
  result = sub_26862CDF8(v97);
  if (v26)
  {
    return result;
  }

  v94 = v20;
  v95 = TupleTypeMetadata2;
  v96 = v25;
  v97 = 0;
  v80 = v23;
  v74 = v19;
  v72 = v17;
  v104 = AssociatedTypeWitness;
  sub_2686689EC(123, 0xE100000000000000);
  v28 = *v6;
  v29 = *(v6 + 8);
  v30 = *(v6 + 9);
  v31 = *(v6 + 48);
  v32 = *(v6 + 49);
  v101 = 0uLL;
  LOWORD(v102) = 256;
  v69[2] = v28;
  *(&v102 + 1) = v28;
  LOBYTE(v103) = v29;
  BYTE1(v103) = v30;
  BYTE2(v103) = v31;
  HIBYTE(v103) = v32;
  v69[0] = v6;
  if ((v93 & 0xC000000000000001) != 0)
  {
    v33 = sub_268689D84();
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = v33 | 0x8000000000000000;
  }

  else
  {
    v38 = -1 << *(v93 + 32);
    v35 = ~v38;
    v34 = v93 + 64;
    v39 = -v38;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    else
    {
      v40 = -1;
    }

    v36 = v40 & *(v93 + 64);
    v37 = v93;
  }

  v41 = v88;
  v42 = v74;
  v43 = v95;
  v44 = v96;
  v45 = v94;
  v95 = (v70 + 32);
  v94 = (v71 + 32);
  v82 = v43 - 1;
  v69[1] = v35;
  v84 = (v35 + 64) >> 6;
  v69[4] = v70 + 16;
  v69[3] = v71 + 16;
  v81 = v45 + 4;
  v78 = v90 + 48;
  v73 = v89 + 48;
  v75 = (v71 + 8);
  v76 = (v70 + 8);

  v46 = 0;
  v79 = v34;
  v83 = v37;
  v77 = v13;
  while (1)
  {
    v91 = v46;
    v92 = v36;
    if ((v37 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (sub_268689D94())
    {
      v49 = v72;
      sub_268689E04();
      swift_unknownObjectRelease();
      v50 = v104;
      sub_268689E04();
      swift_unknownObjectRelease();
      v48 = v91;
      v93 = v92;
LABEL_22:
      v55 = *(v43 + 12);
      v56 = v43;
      v57 = v80;
      (*v95)(v80, v49, v13);
      (*v94)(&v57[v55], v41, v50);
      v58 = 0;
      v52 = v48;
      v42 = v74;
      v44 = v96;
      v59 = v93;
      goto LABEL_26;
    }

    v58 = 1;
    v52 = v91;
    v59 = v92;
LABEL_25:
    v56 = v43;
    v57 = v80;
LABEL_26:
    v60 = *(v56 - 1);
    (*(v60 + 56))(v57, v58, 1, v56);
    (*v81)(v44, v57, v42);
    if ((*(v60 + 48))(v44, 1, v56) == 1)
    {
      sub_2686265DC(v83);

      v66 = v103;
      v67 = BYTE1(v103);
      v68 = v69[0];
      *v69[0] = *(&v102 + 1);
      *(v68 + 8) = v66;
      *(v68 + 9) = v67;
      return sub_2686689EC(125, 0xE100000000000000);
    }

    v43 = v56;
    v61 = *(v56 + 12);
    v62 = v98;
    v63 = v77;
    (*v95)(v98, v44);
    v64 = v86;
    (*v94)(v86, &v44[v61], v104);
    v65 = v97;
    (*(v90 + 48))(v62, 1, &v101, &type metadata for JSONMapEncodingVisitor, &off_287929C68);
    if (v65)
    {
      sub_2686265DC(v83);
      (*v75)(v64, v104);
      (*v76)(v98, v63);
      v99[0] = v101;
      v99[1] = v102;
      v100 = v103;
      return sub_2685D9A5C(v99);
    }

    (*(v89 + 48))(v64, 2, &v101, &type metadata for JSONMapEncodingVisitor, &off_287929C68);
    v37 = v83;
    v97 = 0;
    (*v75)(v64, v104);
    v13 = v63;
    result = (*v76)(v98, v63);
    v46 = v52;
    v36 = v59;
    v41 = v88;
    v44 = v96;
    v34 = v79;
  }

  if (v36)
  {
    v47 = v36;
    v48 = v46;
    v49 = v72;
LABEL_21:
    v93 = (v47 - 1) & v47;
    v54 = __clz(__rbit64(v47)) | (v48 << 6);
    (*(v70 + 16))(v49, *(v37 + 48) + *(v70 + 72) * v54, v13);
    v50 = v104;
    (*(v71 + 16))(v41, *(v37 + 56) + *(v71 + 72) * v54, v104);
    goto LABEL_22;
  }

  if (v84 <= v46 + 1)
  {
    v51 = v46 + 1;
  }

  else
  {
    v51 = v84;
  }

  v52 = v51 - 1;
  v53 = v46;
  v49 = v72;
  while (1)
  {
    v48 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      break;
    }

    if (v48 >= v84)
    {
      v59 = 0;
      v58 = 1;
      v42 = v74;
      goto LABEL_25;
    }

    v47 = *(v34 + 8 * v48);
    ++v53;
    if (v47)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26862FDC8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v92 = a6;
  v102 = a2;
  v100 = a1;
  v78 = *(a4 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v94 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v95 = &v71 - v10;
  v96 = *(v11 + 8);
  v93 = v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v77 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v16 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v71 - v17;
  v101 = a4;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v20 = sub_268689C74();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v71 - v25;
  v27 = v108;
  result = sub_26862CDF8(v102);
  if (v27)
  {
    return result;
  }

  v97 = v21;
  v90 = v26;
  v86 = v24;
  v80 = v20;
  v79 = v18;
  v102 = v16;
  v91 = AssociatedTypeWitness;
  v108 = 0;
  sub_2686689EC(123, 0xE100000000000000);
  v29 = *v6;
  v30 = *(v6 + 8);
  v31 = *(v6 + 9);
  v32 = *(v6 + 48);
  v33 = *(v6 + 49);
  v105 = 0uLL;
  LOWORD(v106) = 256;
  v74 = v29;
  *(&v106 + 1) = v29;
  LOBYTE(v107) = v30;
  BYTE1(v107) = v31;
  BYTE2(v107) = v32;
  HIBYTE(v107) = v33;
  v72 = v6;
  if ((v100 & 0xC000000000000001) != 0)
  {
    v34 = sub_268689D84();
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = v34 | 0x8000000000000000;
  }

  else
  {
    v39 = -1 << *(v100 + 32);
    v36 = ~v39;
    v35 = v100 + 64;
    v40 = -v39;
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    else
    {
      v41 = -1;
    }

    v37 = v41 & *(v100 + 64);
    v38 = v100;
  }

  v42 = v91;
  v43 = v95;
  v44 = v80;
  v98 = (v78 + 32);
  v99 = (v77 + 32);
  v88 = TupleTypeMetadata2 - 8;
  v73 = v36;
  v45 = (v36 + 64) >> 6;
  v76 = v77 + 16;
  v75 = v78 + 16;
  v87 = (v97 + 32);
  v83 = v96 + 48;
  v81 = (v78 + 8);
  v82 = (v77 + 8);

  v46 = 0;
  v85 = v35;
  for (i = v38; ; v38 = i)
  {
    v89 = v37;
    v97 = v46;
    if ((v38 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (sub_268689D94())
    {
      v49 = v79;
      sub_268689E04();
      swift_unknownObjectRelease();
      v50 = v101;
      sub_268689E04();
      swift_unknownObjectRelease();
      v48 = v97;
      v100 = v37;
LABEL_22:
      v56 = *(TupleTypeMetadata2 + 48);
      v57 = v86;
      (*v99)(v86, v49, v42);
      (*v98)(&v57[v56], v43, v50);
      v58 = 0;
      v52 = v48;
      v44 = v80;
      goto LABEL_26;
    }

    v58 = 1;
    v59 = v37;
    v52 = v97;
    v100 = v59;
LABEL_25:
    v57 = v86;
LABEL_26:
    v60 = *(TupleTypeMetadata2 - 8);
    (*(v60 + 56))(v57, v58, 1, TupleTypeMetadata2);
    v61 = v90;
    (*v87)(v90, v57, v44);
    if ((*(v60 + 48))(v61, 1, TupleTypeMetadata2) == 1)
    {
      sub_2686265DC(i);

      v68 = v107;
      v69 = BYTE1(v107);
      v70 = v72;
      *v72 = *(&v106 + 1);
      *(v70 + 8) = v68;
      *(v70 + 9) = v69;
      return sub_2686689EC(125, 0xE100000000000000);
    }

    v62 = *(TupleTypeMetadata2 + 48);
    v63 = v102;
    (*v99)(v102, v61, v42);
    v64 = &v61[v62];
    v65 = v94;
    v66 = v101;
    (*v98)(v94, v64, v101);
    v67 = v108;
    (*(v96 + 48))(v63, 1, &v105, &type metadata for JSONMapEncodingVisitor, &off_287929C68);
    if (v67)
    {
      sub_2686265DC(i);
      (*v81)(v65, v66);
      (*v82)(v102, v91);
      v103[0] = v105;
      v103[1] = v106;
      v104 = v107;
      return sub_2685D9A5C(v103);
    }

    sub_2685D80D0(v66, v92, &v109);
    v108 = 0;
    (*v81)(v65, v66);
    v42 = v91;
    result = (*v82)(v102, v91);
    v46 = v52;
    v37 = v100;
    v43 = v95;
    v35 = v85;
  }

  if (v37)
  {
    v47 = v37;
    v48 = v46;
    v49 = v79;
LABEL_21:
    v100 = (v47 - 1) & v47;
    v54 = __clz(__rbit64(v47)) | (v48 << 6);
    (*(v77 + 16))(v49, *(v38 + 48) + *(v77 + 72) * v54, v42);
    v55 = *(v38 + 56) + *(v78 + 72) * v54;
    v50 = v101;
    (*(v78 + 16))(v43, v55, v101);
    goto LABEL_22;
  }

  if (v45 <= v46 + 1)
  {
    v51 = v46 + 1;
  }

  else
  {
    v51 = v45;
  }

  v52 = v51 - 1;
  v53 = v46;
  v49 = v79;
  while (1)
  {
    v48 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      break;
    }

    if (v48 >= v45)
    {
      v100 = 0;
      v58 = 1;
      v44 = v80;
      goto LABEL_25;
    }

    v47 = *(v35 + 8 * v48);
    ++v53;
    if (v47)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_268630718(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v92 = a6;
  v102 = a2;
  v100 = a1;
  v78 = *(a4 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v94 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v95 = &v71 - v10;
  v96 = *(v11 + 8);
  v93 = v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v77 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v16 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v71 - v17;
  v101 = a4;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v20 = sub_268689C74();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v71 - v25;
  v27 = v108;
  result = sub_26862CDF8(v102);
  if (v27)
  {
    return result;
  }

  v97 = v21;
  v90 = v26;
  v86 = v24;
  v80 = v20;
  v79 = v18;
  v102 = v16;
  v91 = AssociatedTypeWitness;
  v108 = 0;
  sub_2686689EC(123, 0xE100000000000000);
  v29 = *v6;
  v30 = *(v6 + 8);
  v31 = *(v6 + 9);
  v32 = *(v6 + 48);
  v33 = *(v6 + 49);
  v105 = 0uLL;
  LOWORD(v106) = 256;
  v74 = v29;
  *(&v106 + 1) = v29;
  LOBYTE(v107) = v30;
  BYTE1(v107) = v31;
  BYTE2(v107) = v32;
  HIBYTE(v107) = v33;
  v72 = v6;
  if ((v100 & 0xC000000000000001) != 0)
  {
    v34 = sub_268689D84();
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = v34 | 0x8000000000000000;
  }

  else
  {
    v39 = -1 << *(v100 + 32);
    v36 = ~v39;
    v35 = v100 + 64;
    v40 = -v39;
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    else
    {
      v41 = -1;
    }

    v37 = v41 & *(v100 + 64);
    v38 = v100;
  }

  v42 = v91;
  v43 = v95;
  v44 = v80;
  v98 = (v78 + 32);
  v99 = (v77 + 32);
  v88 = TupleTypeMetadata2 - 8;
  v73 = v36;
  v45 = (v36 + 64) >> 6;
  v76 = v77 + 16;
  v75 = v78 + 16;
  v87 = (v97 + 32);
  v83 = v96 + 48;
  v81 = (v78 + 8);
  v82 = (v77 + 8);

  v46 = 0;
  v85 = v35;
  for (i = v38; ; v38 = i)
  {
    v89 = v37;
    v97 = v46;
    if ((v38 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (sub_268689D94())
    {
      v49 = v79;
      sub_268689E04();
      swift_unknownObjectRelease();
      v50 = v101;
      sub_268689E04();
      swift_unknownObjectRelease();
      v48 = v97;
      v100 = v37;
LABEL_22:
      v56 = *(TupleTypeMetadata2 + 48);
      v57 = v86;
      (*v99)(v86, v49, v42);
      (*v98)(&v57[v56], v43, v50);
      v58 = 0;
      v52 = v48;
      v44 = v80;
      goto LABEL_26;
    }

    v58 = 1;
    v59 = v37;
    v52 = v97;
    v100 = v59;
LABEL_25:
    v57 = v86;
LABEL_26:
    v60 = *(TupleTypeMetadata2 - 8);
    (*(v60 + 56))(v57, v58, 1, TupleTypeMetadata2);
    v61 = v90;
    (*v87)(v90, v57, v44);
    if ((*(v60 + 48))(v61, 1, TupleTypeMetadata2) == 1)
    {
      sub_2686265DC(i);

      v68 = v107;
      v69 = BYTE1(v107);
      v70 = v72;
      *v72 = *(&v106 + 1);
      *(v70 + 8) = v68;
      *(v70 + 9) = v69;
      return sub_2686689EC(125, 0xE100000000000000);
    }

    v62 = *(TupleTypeMetadata2 + 48);
    v63 = v102;
    (*v99)(v102, v61, v42);
    v64 = &v61[v62];
    v65 = v94;
    v66 = v101;
    (*v98)(v94, v64, v101);
    v67 = v108;
    (*(v96 + 48))(v63, 1, &v105, &type metadata for JSONMapEncodingVisitor, &off_287929C68);
    if (v67)
    {
      sub_2686265DC(i);
      (*v81)(v65, v66);
      (*v82)(v102, v91);
      v103[0] = v105;
      v103[1] = v106;
      v104 = v107;
      return sub_2685D9A5C(v103);
    }

    sub_2685D7F44(&v109);
    v108 = 0;
    (*v81)(v65, v66);
    v42 = v91;
    result = (*v82)(v102, v91);
    v46 = v52;
    v37 = v100;
    v43 = v95;
    v35 = v85;
  }

  if (v37)
  {
    v47 = v37;
    v48 = v46;
    v49 = v79;
LABEL_21:
    v100 = (v47 - 1) & v47;
    v54 = __clz(__rbit64(v47)) | (v48 << 6);
    (*(v77 + 16))(v49, *(v38 + 48) + *(v77 + 72) * v54, v42);
    v55 = *(v38 + 56) + *(v78 + 72) * v54;
    v50 = v101;
    (*(v78 + 16))(v43, v55, v101);
    goto LABEL_22;
  }

  if (v45 <= v46 + 1)
  {
    v51 = v46 + 1;
  }

  else
  {
    v51 = v45;
  }

  v52 = v51 - 1;
  v53 = v46;
  v49 = v79;
  while (1)
  {
    v48 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      break;
    }

    if (v48 >= v45)
    {
      v100 = 0;
      v58 = 1;
      v44 = v80;
      goto LABEL_25;
    }

    v47 = *(v35 + 8 * v48);
    ++v53;
    if (v47)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
  return result;
}

char *sub_268631064(uint64_t a1, float a2)
{
  result = sub_26862CDF8(a1);
  if (!v2)
  {
    return sub_2686317B0(a2);
  }

  return result;
}