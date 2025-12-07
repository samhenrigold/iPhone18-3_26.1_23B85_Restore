void sub_25F168B9C(uint64_t a1)
{
  if (!qword_27FD49378)
  {
    sub_25F1777BC();
    v1 = sub_25F17960C();
    if (!v2)
    {
      atomic_store(v1, &qword_27FD49378);
    }
  }
}

uint64_t dispatch thunk of ThumbnailHost.displayThumbnailAndPerformHandshake(for:context:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 24) + **(a5 + 24));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_25F168D44;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_25F168D44(double a1)
{
  v6 = *v1;

  v3 = *(v6 + 8);
  v4.n128_f64[0] = a1;

  return v3(v4);
}

uint64_t dispatch thunk of ThumbnailFactory.generateThumbnail<A>(for:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 8) + **(a6 + 8));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_25F0C10CC;

  return v15(a1, a2, a3, a4, a5, a6);
}

unint64_t sub_25F168FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD49380;
  if (!qword_27FD49380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD49380);
  }

  return result;
}

unint64_t sub_25F168FF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD49388[0];
  if (!qword_27FD49388[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FD49388);
  }

  return result;
}

uint64_t sub_25F169048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 24);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25F0C10CC;

  return sub_25F163BD8(a1, a2, a3, v8);
}

uint64_t sub_25F169128(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 24);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25F0BF3E4;

  return sub_25F163A34(a1, a2, v6);
}

unint64_t sub_25F1691F8()
{
  result = qword_27FD481A0;
  if (!qword_27FD481A0)
  {
    sub_25F177E8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD481A0);
  }

  return result;
}

uint64_t sub_25F169298()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_25F1692E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD482C8, &qword_25F183740);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F169358@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[4];
  v4 = v1[6];
  v5 = v1[7];
  sub_25F167EA8();
  v6 = *(swift_getTupleTypeMetadata2() + 48);
  result = v3(a1, v4, *(v5 + 8));
  *(a1 + v6) = result;
  return result;
}

uint64_t sub_25F1693E4()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25F1694A0(uint64_t a1, uint64_t a2)
{
  v6 = (*(*(v2[3] - 8) + 80) + 48) & ~*(*(v2[3] - 8) + 80);
  v7 = v2[4];
  v8 = v2[5];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_25F169AA0;

  return sub_25F164FC4(a1, a2, v7, v8, v2 + v6);
}

uint64_t sub_25F1695BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(type metadata accessor for ThumbnailHostFactory(0, *(v4 + 16), a3, a4) - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 24) & ~v6;
  v8 = *(v5 + 64);
  v9 = sub_25F1777BC();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v4 + v7, 1, v9))
  {
    (*(v10 + 8))(v4 + v7, v9);
  }

  return MEMORY[0x2821FE8E8](v4, v7 + v8, v6 | 7);
}

uint64_t sub_25F1696F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 16);
  v10 = *(type metadata accessor for ThumbnailHostFactory(0, v9, a3, a4) - 8);
  v11 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_25F0C10CC;

  return sub_25F163F18(a1, a2, a3, v4 + v11, v9);
}

uint64_t sub_25F169808()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25F169840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25F16987C(uint64_t a1, int a2)
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

uint64_t sub_25F1698C4(uint64_t result, int a2, int a3)
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

uint64_t sub_25F16990C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25F169948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25F169984(uint64_t *a1, int a2)
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

uint64_t sub_25F1699CC(uint64_t result, int a2, int a3)
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

uint64_t sub_25F169A30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB8, &qword_25F183B60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25F169AEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_25F16E914(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_25F177E8C();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_25F0C8B7C(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_25F16FEA0();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = sub_25F177E8C();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_25F16D560(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = sub_25F177E8C();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

void sub_25F169CAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47EA8, &qword_25F17DC68);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  v10 = type metadata accessor for JITManager.Storage.Record(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_25F0B7E94(a1, &qword_27FD47EA8, &qword_25F17DC68);
    sub_25F16AC80(a2, a3, v9);

    sub_25F0B7E94(v9, &qword_27FD47EA8, &qword_25F17DC68);
  }

  else
  {
    sub_25F171364(a1, v12, type metadata accessor for JITManager.Storage.Record);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    sub_25F16EAE0(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v16;
  }
}

uint64_t sub_25F169E80(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD480D8, &qword_25F17F030);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  updated = type metadata accessor for UpdateRegistry.Update(0);
  MEMORY[0x28223BE20](updated);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_25F0B7E94(a1, &qword_27FD480D8, &qword_25F17F030);
    sub_25F16ADEC(a2, v7);
    v12 = sub_25F17776C();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_25F0B7E94(v7, &qword_27FD480D8, &qword_25F17F030);
  }

  else
  {
    sub_25F171364(a1, v10, type metadata accessor for UpdateRegistry.Update);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_25F16EC4C(v10, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_25F17776C();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

void sub_25F16A0A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48770, &qword_25F180740);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  v10 = sub_25F178B1C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_25F0B7E94(a1, &qword_27FD48770, &qword_25F180740);
    sub_25F16AFB4(a2, a3, MEMORY[0x277D7E940], MEMORY[0x277D7E940], &qword_27FD47990, &qword_25F17CBF8, v9);

    sub_25F0B7E94(v9, &qword_27FD48770, &qword_25F180740);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    sub_25F16EE20(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v16;
  }
}

uint64_t sub_25F16A2A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48858, &qword_25F180790);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_25F17892C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_25F0B7E94(a1, &qword_27FD48858, &qword_25F180790);
    v13 = sub_25F0C8DC0(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_25F170954();
        v17 = v21;
      }

      (*(v10 + 32))(v8, *(v17 + 56) + *(v10 + 72) * v15, v9);
      sub_25F16DFA4(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_25F0B7E94(v8, &qword_27FD48858, &qword_25F180790);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_25F16EFE8(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_25F16A4F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_25F16F2D8(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_25F17776C();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_25F0C8E04(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_25F170D34();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = sub_25F17776C();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_25F16E150(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = sub_25F17776C();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_25F16A6B0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_25F0C0C84(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_25F16F4A4(v9, a2, isUniquelyReferenced_nonNull_native);
    v5 = sub_25F17722C();
    result = (*(*(v5 - 8) + 8))(a2, v5);
    *v2 = v8;
  }

  else
  {
    sub_25F0B7E94(a1, &qword_27FD49590, &qword_25F183C00);
    sub_25F16B154(a2, v9);
    v7 = sub_25F17722C();
    (*(*(v7 - 8) + 8))(a2, v7);
    return sub_25F0B7E94(v9, &qword_27FD49590, &qword_25F183C00);
  }

  return result;
}

unint64_t PreviewAgentLauncherRegistry.init()@<X0>(unint64_t *a1@<X8>)
{
  result = sub_25F0ECE14(MEMORY[0x277D84F90]);
  *a1 = result;
  return result;
}

uint64_t PreviewAgentLauncherRegistry.registerLauncher(_:for:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_25F17888C();
  v27 = *(v5 - 8);
  v28 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25F17722C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - v13;
  v15 = *v2;
  if (*(*v2 + 16) && (v16 = sub_25F0C8C50(a2), (v17 & 1) != 0))
  {
    sub_25F0BEC1C(*(v15 + 56) + 40 * v16, v29);
    sub_25F0B7E94(v29, &qword_27FD49590, &qword_25F183C00);
    sub_25F17884C();
    (*(v9 + 16))(v12, a2, v8);
    v18 = sub_25F17887C();
    v19 = sub_25F17954C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v29[0] = v21;
      *v20 = 136446210;
      v22 = sub_25F17721C();
      v24 = v23;
      (*(v9 + 8))(v12, v8);
      v25 = sub_25F0BECF0(v22, v24, v29);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_25F0B3000, v18, v19, "Skipping duplicate preview agent launcher for %{public}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x25F8D6230](v21, -1, -1);
      MEMORY[0x25F8D6230](v20, -1, -1);
    }

    else
    {

      (*(v9 + 8))(v12, v8);
    }

    return (*(v27 + 8))(v7, v28);
  }

  else
  {
    v30 = 0;
    memset(v29, 0, sizeof(v29));
    sub_25F0B7E94(v29, &qword_27FD49590, &qword_25F183C00);
    (*(v9 + 16))(v14, a2, v8);
    sub_25F0BEC1C(a1, v29);
    return sub_25F16A6B0(v29, v14);
  }
}

double PreviewAgentLauncherRegistry.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  if (*(v4 + 16) && (v5 = sub_25F0C8C50(a1), (v6 & 1) != 0))
  {
    v7 = *(v4 + 56) + 40 * v5;

    sub_25F0BEC1C(v7, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_25F16ABB8(uint64_t a1)
{
  v2 = v1;
  v3 = sub_25F0C8B7C(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_25F16FEA0();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = sub_25F177E8C();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 8 * v5);
  sub_25F16D560(v5, v7);
  *v2 = v7;
  return v10;
}

uint64_t sub_25F16AC80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_25F0C8D24(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25F170120();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for JITManager.Storage.Record(0);
    v19 = *(v12 - 8);
    sub_25F171364(v11 + *(v19 + 72) * v8, a3, type metadata accessor for JITManager.Storage.Record);
    sub_25F16D880(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for JITManager.Storage.Record(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_25F16ADEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_25F0C8E04(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25F170380();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_25F17776C();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    updated = type metadata accessor for UpdateRegistry.Update(0);
    v20 = *(updated - 8);
    sub_25F171364(v12 + *(v20 + 72) * v7, a2, type metadata accessor for UpdateRegistry.Update);
    sub_25F16DA6C(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = updated;
  }

  else
  {
    v18 = type metadata accessor for UpdateRegistry.Update(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_25F16AFB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void, __n128)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v12 = v7;
  v14 = sub_25F0C8D24(a1, a2);
  if (v15)
  {
    v16 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v7;
    v28 = *v12;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25F1706CC(a4, a5, a6);
      v18 = v28;
    }

    v19 = *(v18 + 56);
    v20 = (a3)(0);
    v27 = *(v20 - 8);
    (*(v27 + 32))(a7, v19 + *(v27 + 72) * v16, v20);
    sub_25F16DDB0(v16, v18, a4);
    *v12 = v18;
    v21 = *(v27 + 56);
    v22 = a7;
    v23 = 0;
    v24 = v20;
  }

  else
  {
    v25 = (a3)(0);
    v21 = *(*(v25 - 8) + 56);
    v24 = v25;
    v22 = a7;
    v23 = 1;
  }

  return v21(v22, v23, 1, v24);
}

double sub_25F16B154@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_25F0C8C50(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25F170FB4();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = sub_25F17722C();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    sub_25F0C0C84((*(v9 + 56) + 40 * v7), a2);
    sub_25F16E470(v7, v9);
    *v3 = v9;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_25F16B238(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v55 = sub_25F1776BC();
  v5 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v50 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47110, &qword_25F17B780);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v47 - v8;
  v10 = type metadata accessor for ContentKey(0);
  v53 = *(v10 - 8);
  v54 = v10;
  MEMORY[0x28223BE20](v10);
  v57 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD479C0, &unk_25F183CA0);
  v56 = v4;
  result = sub_25F1797AC();
  v14 = result;
  if (*(v12 + 16))
  {
    v47 = v2;
    v15 = 0;
    v16 = (v12 + 64);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 64);
    v20 = (v17 + 63) >> 6;
    v52 = (v5 + 48);
    v49 = (v5 + 32);
    v48 = (v5 + 8);
    v21 = result + 64;
    v22 = v57;
    while (v19)
    {
      v25 = __clz(__rbit64(v19));
      v26 = (v19 - 1) & v19;
LABEL_15:
      v29 = v25 | (v15 << 6);
      v30 = *(v12 + 48);
      v59 = *(v53 + 72);
      v60 = v26;
      v31 = v30 + v59 * v29;
      if (v56)
      {
        sub_25F171364(v31, v22, type metadata accessor for ContentKey);
      }

      else
      {
        sub_25F1712B4(v31, v22, type metadata accessor for ContentKey);
      }

      v32 = *(*(v12 + 56) + 16 * v29);
      v33 = *(*(v12 + 56) + 16 * v29 + 8);
      v58 = v32;
      sub_25F1798CC();
      sub_25F1776AC();
      sub_25F17131C(&qword_27FD47128, MEMORY[0x277D408E0], MEMORY[0x277D408E8]);
      sub_25F17902C();
      sub_25F0C6F18(v22 + *(v54 + 20), v9);
      v34 = v55;
      if ((*v52)(v9, 1, v55) == 1)
      {
        sub_25F1798EC();
      }

      else
      {
        v35 = *v49;
        v51 = v33;
        v36 = v12;
        v37 = v50;
        v35(v50, v9, v34);
        sub_25F1798EC();
        sub_25F17131C(&qword_27FD47130, MEMORY[0x277D40908], MEMORY[0x277D40910]);
        sub_25F17902C();
        v38 = v37;
        v12 = v36;
        v33 = v51;
        (*v48)(v38, v34);
      }

      result = sub_25F17990C();
      v39 = -1 << *(v14 + 32);
      v40 = result & ~v39;
      v41 = v40 >> 6;
      v22 = v57;
      if (((-1 << v40) & ~*(v21 + 8 * (v40 >> 6))) == 0)
      {
        v42 = 0;
        v43 = (63 - v39) >> 6;
        while (++v41 != v43 || (v42 & 1) == 0)
        {
          v44 = v41 == v43;
          if (v41 == v43)
          {
            v41 = 0;
          }

          v42 |= v44;
          v45 = *(v21 + 8 * v41);
          if (v45 != -1)
          {
            v23 = __clz(__rbit64(~v45)) + (v41 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v40) & ~*(v21 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = sub_25F171364(v22, *(v14 + 48) + v59 * v23, type metadata accessor for ContentKey);
      v24 = (*(v14 + 56) + 16 * v23);
      *v24 = v58;
      v24[1] = v33;
      ++*(v14 + 16);
      v19 = v60;
    }

    v27 = v15;
    while (1)
    {
      v15 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v15 >= v20)
      {
        break;
      }

      v28 = v16[v15];
      ++v27;
      if (v28)
      {
        v25 = __clz(__rbit64(v28));
        v26 = (v28 - 1) & v28;
        goto LABEL_15;
      }
    }

    if ((v56 & 1) == 0)
    {

      v3 = v47;
      goto LABEL_37;
    }

    v46 = 1 << *(v12 + 32);
    v3 = v47;
    if (v46 >= 64)
    {
      bzero(v16, ((v46 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v46;
    }

    *(v12 + 16) = 0;
  }

LABEL_37:
  *v3 = v14;
  return result;
}

uint64_t sub_25F16B7F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_25F177E8C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD479F8, &unk_25F183C90);
  v39 = v4;
  result = sub_25F1797AC();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_25F17131C(&qword_27FD47200, MEMORY[0x277D403A8], MEMORY[0x277D403B0]);
      result = sub_25F17901C();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_25F16BBD0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for JITManager.Storage.Record(0);
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD479A0, &unk_25F183C80);
  v40 = v4;
  result = sub_25F1797AC();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_25F171364(v28, v41, type metadata accessor for JITManager.Storage.Record);
      }

      else
      {
        sub_25F1712B4(v28, v41, type metadata accessor for JITManager.Storage.Record);
      }

      sub_25F1798CC();
      sub_25F17911C();
      result = sub_25F17990C();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_25F171364(v41, *(v9 + 56) + v27 * v17, type metadata accessor for JITManager.Storage.Record);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_25F16BF48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  updated = type metadata accessor for UpdateRegistry.Update(0);
  v42 = *(updated - 8);
  MEMORY[0x28223BE20](updated - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25F17776C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD49598, "҂");
  v43 = v4;
  result = sub_25F1797AC();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_25F171364(v27 + v28 * v24, v47, type metadata accessor for UpdateRegistry.Update);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_25F1712B4(v29 + v28 * v24, v47, type metadata accessor for UpdateRegistry.Update);
      }

      sub_25F17131C(&qword_27FD471E0, MEMORY[0x277D40A08], MEMORY[0x277D40A10]);
      result = sub_25F17901C();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_25F171364(v47, *(v12 + 56) + v28 * v20, type metadata accessor for UpdateRegistry.Update);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_25F16C410(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v9 = a2;
  v50 = a3(0);
  v10 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = &v42 - v11;
  v12 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v47 = v9;
  result = sub_25F1797AC();
  v14 = result;
  if (*(v12 + 16))
  {
    v15 = 0;
    v16 = (v12 + 64);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 64);
    v20 = (v17 + 63) >> 6;
    v43 = v5;
    v44 = (v10 + 16);
    v45 = v12;
    v46 = v10;
    v48 = (v10 + 32);
    v21 = result + 64;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v27 = v24 | (v15 << 6);
      v28 = *(v12 + 56);
      v29 = (*(v12 + 48) + 16 * v27);
      v31 = *v29;
      v30 = v29[1];
      v32 = *(v46 + 72);
      v33 = v28 + v32 * v27;
      if (v47)
      {
        (*v48)(v49, v33, v50);
      }

      else
      {
        (*v44)(v49, v33, v50);
      }

      sub_25F1798CC();
      sub_25F17911C();
      result = sub_25F17990C();
      v34 = -1 << *(v14 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v21 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v21 + 8 * v36);
          if (v40 != -1)
          {
            v22 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v35) & ~*(v21 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v23 = (*(v14 + 48) + 16 * v22);
      *v23 = v31;
      v23[1] = v30;
      result = (*v48)(*(v14 + 56) + v32 * v22, v49, v50);
      ++*(v14 + 16);
      v12 = v45;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v19 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v8 = v43;
      goto LABEL_34;
    }

    v41 = 1 << *(v12 + 32);
    v8 = v43;
    if (v41 >= 64)
    {
      bzero(v16, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v41;
    }

    *(v12 + 16) = 0;
  }

LABEL_34:
  *v8 = v14;
  return result;
}

uint64_t sub_25F16C794(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v39 = sub_25F17892C();
  v5 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47980, &qword_25F17CBE8);
  v37 = v4;
  result = sub_25F1797AC();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v3;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = (v5 + 16);
    v36 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(v5 + 72);
      v25 = *(v7 + 56) + v24 * v22;
      if (v37)
      {
        (*v16)(v38, v25, v39);
      }

      else
      {
        (*v35)(v38, v25, v39);
      }

      result = sub_25F1798BC();
      v26 = -1 << *(v9 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 8 * v18) = v23;
      result = (*v16)(*(v9 + 56) + v24 * v18, v38, v39);
      ++*(v9 + 16);
      v5 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v7 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_25F16CAE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47970, &qword_25F17CBD8);
  v37 = v4;
  result = sub_25F1797AC();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_25F1798CC();
      sub_25F17911C();
      result = sub_25F17990C();
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
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
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

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
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

uint64_t sub_25F16CDA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_25F17776C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47968, &qword_25F17CBD0);
  v39 = v4;
  result = sub_25F1797AC();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_25F17131C(&qword_27FD471E0, MEMORY[0x277D40A08], MEMORY[0x277D40A10]);
      result = sub_25F17901C();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_25F16D17C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_25F17722C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD479B0, &unk_25F183C70);
  v38 = v4;
  result = sub_25F1797AC();
  v11 = result;
  if (*(v9 + 16))
  {
    v41 = v8;
    v42 = v5;
    v34 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v35 = (v6 + 16);
    v36 = v6;
    v39 = (v6 + 32);
    v18 = result + 64;
    v37 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v40 = *(v6 + 72);
      v25 = v24 + v40 * v23;
      if (v38)
      {
        (*v39)(v41, v25, v42);
        sub_25F0C0C84((*(v9 + 56) + 40 * v23), v43);
      }

      else
      {
        (*v35)(v41, v25, v42);
        sub_25F0BEC1C(*(v9 + 56) + 40 * v23, v43);
      }

      sub_25F17131C(&qword_27FD471F0, MEMORY[0x277D406E8], MEMORY[0x277D406F0]);
      result = sub_25F17901C();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v36;
        v9 = v37;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v36;
      v9 = v37;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v39)((*(v11 + 48) + v40 * v19), v41, v42);
      result = sub_25F0C0C84(v43, *(v11 + 56) + 40 * v19);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

unint64_t sub_25F16D560(int64_t a1, uint64_t a2)
{
  v40 = sub_25F177E8C();
  v4 = *(v40 - 8);
  result = MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_25F17968C();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_25F17131C(&qword_27FD47200, MEMORY[0x277D403A8], MEMORY[0x277D403B0]);
      v23 = sub_25F17901C();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

void sub_25F16D880(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25F17968C() + 1) & ~v5;
    while (1)
    {
      sub_25F1798CC();

      sub_25F17911C();
      v9 = sub_25F17990C();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for JITManager.Storage.Record(0) - 8) + 72);
      v16 = v15 * v3;
      v17 = v14 + v15 * v3;
      v18 = v15 * v6;
      v19 = v14 + v15 * v6 + v15;
      if (v16 < v18 || v17 >= v19)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v18)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

unint64_t sub_25F16DA6C(int64_t a1, uint64_t a2)
{
  v4 = sub_25F17776C();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v41 = a2;
    v12 = ~v10;
    v13 = sub_25F17968C();
    v14 = v12;
    a2 = v41;
    v40 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = v9;
    v39 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v39(v8, *(a2 + 48) + v17 * v11, v4);
      sub_25F17131C(&qword_27FD471E0, MEMORY[0x277D40A08], MEMORY[0x277D40A10]);
      v22 = sub_25F17901C();
      result = (*v37)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v40)
      {
        if (v23 >= v40 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v41 + 48) + v18 * a1 >= (*(v41 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v26 = *(v41 + 56);
          v27 = *(*(type metadata accessor for UpdateRegistry.Update(0) - 8) + 72);
          v28 = v27 * a1;
          result = v26 + v27 * a1;
          v29 = v27 * v11;
          v30 = v26 + v27 * v11 + v27;
          if (v28 < v29 || result >= v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v38;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v32 = v28 == v29;
            v9 = v38;
            v14 = v20;
            if (!v32)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v40 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v38;
      a2 = v41;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

void sub_25F16DDB0(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (a1 + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_25F17968C() + 1) & ~v6;
    while (1)
    {
      sub_25F1798CC();

      sub_25F17911C();
      v11 = sub_25F17990C();

      v12 = v11 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v12 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v13 = *(a2 + 48);
      v14 = (v13 + 16 * v4);
      v15 = (v13 + 16 * v7);
      if (v4 != v7 || v14 >= v15 + 1)
      {
        *v14 = *v15;
      }

      v16 = *(a2 + 56);
      v17 = *(*(a3(0) - 8) + 72);
      v18 = v17 * v4;
      v19 = v16 + v17 * v4;
      v20 = v17 * v7;
      v21 = v16 + v17 * v7 + v17;
      if (v18 < v20 || v19 >= v21)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v18 == v20)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v12 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }
}

unint64_t sub_25F16DFA4(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25F17968C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_25F1798BC();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      v16 = *(*(sub_25F17892C() - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_25F16E150(int64_t a1, uint64_t a2)
{
  v40 = sub_25F17776C();
  v4 = *(v40 - 8);
  result = MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_25F17968C();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_25F17131C(&qword_27FD471E0, MEMORY[0x277D40A08], MEMORY[0x277D40A10]);
      v23 = sub_25F17901C();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

unint64_t sub_25F16E470(int64_t a1, uint64_t a2)
{
  v42 = sub_25F17722C();
  v4 = *(v42 - 8);
  result = MEMORY[0x28223BE20](v42);
  v41 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v43 = v6;
    v12 = sub_25F17968C();
    v13 = v42;
    v6 = v43;
    v14 = v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v39 = (v12 + 1) & v11;
    v40 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    v38 = a2 + 64;
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v41;
      v21 = v14;
      v22 = v15;
      v40(v41, *(v6 + 48) + v17 * v10, v13);
      sub_25F17131C(&qword_27FD471F0, MEMORY[0x277D406E8], MEMORY[0x277D406F0]);
      v23 = sub_25F17901C();
      result = (*v37)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v39)
      {
        if (v24 >= v39 && a1 >= v24)
        {
LABEL_15:
          v6 = v43;
          v27 = *(v43 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v43;
            v17 = v18;
            v14 = v21;
            v8 = v38;
          }

          else
          {
            v8 = v38;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v43;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = v28 + 40 * a1;
          v30 = (v28 + 40 * v10);
          if (a1 != v10 || v29 >= v30 + 40)
          {
            v31 = *v30;
            v32 = v30[1];
            *(v29 + 32) = *(v30 + 4);
            *v29 = v31;
            *(v29 + 16) = v32;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v39 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v38;
      v17 = v18;
      v6 = v43;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(v6 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v35;
    ++*(v6 + 36);
  }

  return result;
}

uint64_t sub_25F16E794(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = type metadata accessor for ContentKey(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = sub_25F0C8848(a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  result = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= result && (a4 & 1) != 0)
  {
LABEL_7:
    v21 = *v5;
    if (v19)
    {
LABEL_8:
      v22 = (v21[7] + 16 * v15);
      *v22 = a1;
      v22[1] = a2;
      return result;
    }

    goto LABEL_11;
  }

  if (v20 >= result && (a4 & 1) == 0)
  {
    result = sub_25F16FC68();
    goto LABEL_7;
  }

  sub_25F16B238(result, a4 & 1);
  result = sub_25F0C8848(a3);
  if ((v19 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_25F17985C();
    __break(1u);
    return result;
  }

  v15 = result;
  v21 = *v5;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_25F1712B4(a3, v12, type metadata accessor for ContentKey);
  return sub_25F16F680(v15, v12, a1, a2, v21);
}

uint64_t sub_25F16E914(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_25F177E8C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_25F0C8B7C(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_25F16FEA0();
      goto LABEL_7;
    }

    sub_25F16B7F4(v17, a3 & 1);
    v22 = sub_25F0C8B7C(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_25F16F73C(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_25F17985C();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

void sub_25F16EAE0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_25F0C8D24(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for JITManager.Storage.Record(0);
      sub_25F17124C(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for JITManager.Storage.Record);
      return;
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_25F170120();
    goto LABEL_7;
  }

  sub_25F16BBD0(v15, a4 & 1);
  v21 = sub_25F0C8D24(a2, a3);
  if ((v16 & 1) != (v22 & 1))
  {
LABEL_15:
    sub_25F17985C();
    __break(1u);
    return;
  }

  v12 = v21;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_25F16F7F4(v12, a2, a3, a1, v18);
}

uint64_t sub_25F16EC4C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_25F17776C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_25F0C8E04(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      updated = type metadata accessor for UpdateRegistry.Update(0);
      return sub_25F17124C(a1, v21 + *(*(updated - 8) + 72) * v14, type metadata accessor for UpdateRegistry.Update);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_25F170380();
    goto LABEL_7;
  }

  sub_25F16BF48(v17, a3 & 1);
  v24 = sub_25F0C8E04(a2);
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_25F17985C();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_25F16F8A0(v14, v11, a1, v20);
}

void sub_25F16EE20(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_25F0C8D24(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_25F1706CC(MEMORY[0x277D7E940], &qword_27FD47990, &qword_25F17CBF8);
      goto LABEL_7;
    }

    sub_25F16C410(v15, a4 & 1, MEMORY[0x277D7E940], &qword_27FD47990, &qword_25F17CBF8);
    v25 = sub_25F0C8D24(a2, a3);
    if ((v16 & 1) == (v26 & 1))
    {
      v12 = v25;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_25F17985C();
    __break(1u);
    return;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_25F178B1C();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    v22(v24, a1, v23);
    return;
  }

LABEL_13:
  sub_25F16F990(v12, a2, a3, a1, v18);
}

uint64_t sub_25F16EFE8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_25F0C8DC0(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_25F170954();
      goto LABEL_7;
    }

    sub_25F16C794(v13, a3 & 1);
    v24 = sub_25F0C8DC0(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_25F17985C();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_25F17892C();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_25F16FA40(v10, a2, a1, v16);
}

void sub_25F16F150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_25F0C8D24(a3, a4);
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
      sub_25F16CAE0(v18, a5 & 1);
      v13 = sub_25F0C8D24(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        sub_25F17985C();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_25F170BBC();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;

    return;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v25 = (v23[6] + 16 * v13);
  *v25 = a3;
  v25[1] = a4;
  v26 = (v23[7] + 16 * v13);
  *v26 = a1;
  v26[1] = a2;
  v27 = v23[2];
  v17 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v28;
}

void sub_25F16F2D8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_25F17776C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_25F0C8E04(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_25F170D34();
      goto LABEL_7;
    }

    sub_25F16CDA0(v17, a3 & 1);
    v21 = sub_25F0C8E04(a2);
    if ((v18 & 1) == (v22 & 1))
    {
      v14 = v21;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_25F16FAEC(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    sub_25F17985C();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_25F16F4A4(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_25F17722C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_25F0C8C50(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_25F170FB4();
      goto LABEL_7;
    }

    sub_25F16D17C(v17, a3 & 1);
    v23 = sub_25F0C8C50(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_25F16FBA4(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_25F17985C();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = (v20[7] + 40 * v14);
  __swift_destroy_boxed_opaque_existential_1Tm(v21);

  return sub_25F0C0C84(a1, v21);
}

uint64_t sub_25F16F680(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = type metadata accessor for ContentKey(0);
  result = sub_25F171364(a2, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for ContentKey);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

uint64_t sub_25F16F73C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_25F177E8C();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_25F16F7F4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for JITManager.Storage.Record(0);
  result = sub_25F171364(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for JITManager.Storage.Record);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_25F16F8A0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_25F17776C();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  updated = type metadata accessor for UpdateRegistry.Update(0);
  result = sub_25F171364(a3, v10 + *(*(updated - 8) + 72) * a1, type metadata accessor for UpdateRegistry.Update);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_25F16F990(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_25F178B1C();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_25F16FA40(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = sub_25F17892C();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_25F16FAEC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_25F17776C();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_25F16FBA4(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_25F17722C();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_25F0C0C84(a3, a4[7] + 40 * a1);
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void *sub_25F16FC68()
{
  v1 = v0;
  v2 = type metadata accessor for ContentKey(0);
  v24 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD479C0, &unk_25F183CA0);
  v5 = *v0;
  v6 = sub_25F17979C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(v24 + 72) * v20;
        sub_25F1712B4(*(v5 + 48) + v21, v4, type metadata accessor for ContentKey);
        v20 *= 16;
        v22 = *(v7 + 48);
        v25 = *(*(v5 + 56) + v20);
        result = sub_25F171364(v4, v22 + v21, type metadata accessor for ContentKey);
        *(*(v7 + 56) + v20) = v25;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

char *sub_25F16FEA0()
{
  v1 = v0;
  v33 = sub_25F177E8C();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD479F8, &unk_25F183C90);
  v3 = *v0;
  v4 = sub_25F17979C();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void sub_25F170120()
{
  v1 = v0;
  v2 = type metadata accessor for JITManager.Storage.Record(0);
  v33 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v32 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD479A0, &unk_25F183C80);
  v4 = *v0;
  v5 = sub_25F17979C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v31 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v34 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = *(v4 + 56);
        v22 = (*(v4 + 48) + 16 * v19);
        v23 = v4;
        v24 = *v22;
        v25 = v22[1];
        v26 = v32;
        v27 = *(v33 + 72) * v19;
        sub_25F1712B4(v21 + v27, v32, type metadata accessor for JITManager.Storage.Record);
        v28 = v34;
        v29 = (*(v34 + 48) + v20);
        *v29 = v24;
        v29[1] = v25;
        v4 = v23;
        sub_25F171364(v26, *(v28 + 56) + v27, type metadata accessor for JITManager.Storage.Record);

        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v34;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

char *sub_25F170380()
{
  v1 = v0;
  updated = type metadata accessor for UpdateRegistry.Update(0);
  v38 = *(updated - 8);
  MEMORY[0x28223BE20](updated - 8);
  v37 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_25F17776C();
  v40 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD49598, "҂");
  v5 = *v0;
  v6 = sub_25F17979C();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v39 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v32 = v40 + 32;
    v33 = v40 + 16;
    v34 = v5;
    v17 = v40;
    v18 = v7;
    if (v15)
    {
      do
      {
        v19 = __clz(__rbit64(v15));
        v41 = (v15 - 1) & v15;
LABEL_14:
        v22 = v19 | (v11 << 6);
        v23 = *(v17 + 72) * v22;
        v25 = v35;
        v24 = v36;
        (*(v17 + 16))(v35, *(v5 + 48) + v23, v36);
        v26 = *(v5 + 56);
        v27 = v37;
        v28 = *(v38 + 72) * v22;
        sub_25F1712B4(v26 + v28, v37, type metadata accessor for UpdateRegistry.Update);
        (*(v17 + 32))(*(v18 + 48) + v23, v25, v24);
        v29 = v27;
        v5 = v34;
        result = sub_25F171364(v29, *(v18 + 56) + v28, type metadata accessor for UpdateRegistry.Update);
        v15 = v41;
      }

      while (v41);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v30;
        v7 = v39;
        goto LABEL_18;
      }

      v21 = *(v31 + 8 * v11);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v41 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void sub_25F1706CC(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v43 = a1(0);
  v45 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v37 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *v3;
  v9 = sub_25F17979C();
  v10 = v9;
  if (*(v8 + 16))
  {
    v38 = v6;
    v11 = (v9 + 64);
    v12 = v8 + 64;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || v11 >= v8 + 64 + 8 * v13)
    {
      memmove(v11, (v8 + 64), 8 * v13);
    }

    v15 = 0;
    v16 = *(v8 + 16);
    v44 = v10;
    *(v10 + 16) = v16;
    v17 = 1 << *(v8 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v8 + 64);
    v20 = (v17 + 63) >> 6;
    v39 = v45 + 32;
    v40 = v45 + 16;
    v41 = v8;
    if (v19)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v46 = (v19 - 1) & v19;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = 16 * v24;
        v26 = *(v8 + 56);
        v27 = (*(v8 + 48) + 16 * v24);
        v28 = *v27;
        v29 = v27[1];
        v30 = v45;
        v31 = *(v45 + 72) * v24;
        v32 = v42;
        v33 = v43;
        (*(v45 + 16))(v42, v26 + v31, v43);
        v34 = v44;
        v35 = (*(v44 + 48) + v25);
        *v35 = v28;
        v35[1] = v29;
        v36 = *(v34 + 56) + v31;
        v8 = v41;
        (*(v30 + 32))(v36, v32, v33);

        v19 = v46;
      }

      while (v46);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v6 = v38;
        v10 = v44;
        goto LABEL_21;
      }

      v23 = *(v12 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v46 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v10;
  }
}

void *sub_25F170954()
{
  v1 = v0;
  v29 = sub_25F17892C();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47980, &qword_25F17CBE8);
  v3 = *v0;
  v4 = sub_25F17979C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; result = (*(v19 + 32))(*(v23 + 56) + v20, v22, v21))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + 8 * v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + 8 * v17) = v18;
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

        v1 = v24;
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void sub_25F170BBC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47970, &qword_25F17CBD8);
  v2 = *v0;
  v3 = sub_25F17979C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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
}

void sub_25F170D34()
{
  v1 = v0;
  v33 = sub_25F17776C();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47968, &qword_25F17CBD0);
  v3 = *v0;
  v4 = sub_25F17979C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

void *sub_25F170FB4()
{
  v1 = v0;
  v29 = sub_25F17722C();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD479B0, &unk_25F183C70);
  v3 = *v0;
  v4 = sub_25F17979C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v26 = v31 + 32;
    v27 = v31 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v32 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v31;
        v20 = *(v31 + 72) * v18;
        v21 = v28;
        v22 = v29;
        (*(v31 + 16))(v28, *(v3 + 48) + v20, v29);
        v18 *= 40;
        sub_25F0BEC1C(*(v3 + 56) + v18, v33);
        v23 = v30;
        (*(v19 + 32))(*(v30 + 48) + v20, v21, v22);
        result = sub_25F0C0C84(v33, *(v23 + 56) + v18);
        v13 = v32;
      }

      while (v32);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v25;
        v5 = v30;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v32 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

uint64_t sub_25F17124C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F1712B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F17131C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25F171364(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double static PreviewShellPlugin.previewShellSceneBinder.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t PreviewAgentConnector.nonUIAgentProxy.getter(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x2822009F8](sub_25F171474, 0, 0);
}

uint64_t sub_25F171474()
{
  v1 = v0[5];
  v2 = v1 + *(type metadata accessor for PreviewAgentConnector(0) + 24);
  v3 = *(v2 + 7);
  v0[2] = *(v2 + 6);
  v0[3] = v3;
  v4 = *v1;

  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_25F171550;
  v6 = v0[4];

  return SharedAgentServer<>.requestPreviewNonUIAgent(for:)(v6, v4);
}

uint64_t sub_25F171550()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25F171698, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t type metadata accessor for PreviewAgentConnector(uint64_t a1)
{
  result = qword_27FD495B0;
  if (!qword_27FD495B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 PreviewAgentConnector.init(pid:agentBundle:serverFarm:sceneInjector:)@<Q0>(int a1@<W0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, __n128 *a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  v9 = type metadata accessor for PreviewAgentConnector(0);
  v10 = v9[5];
  v11 = sub_25F17767C();
  v18 = *a4;
  (*(*(v11 - 8) + 32))(&a5[v10], a2, v11);
  v12 = &a5[v9[6]];
  v13 = a3[5];
  *(v12 + 4) = a3[4];
  *(v12 + 5) = v13;
  v14 = a3[7];
  *(v12 + 6) = a3[6];
  *(v12 + 7) = v14;
  v15 = a3[1];
  *v12 = *a3;
  *(v12 + 1) = v15;
  v16 = a3[3];
  *(v12 + 2) = a3[2];
  *(v12 + 3) = v16;
  result = v18;
  *&a5[v9[7]] = v18;
  return result;
}

id static AgentSceneConfiguration.previewSceneConfiguration(in:specification:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v21 = a3;
  v7 = sub_25F177E8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_25F1796DC();
  ObjectType = swift_getObjectType();
  v12 = (*(a2 + 16))(ObjectType, a2);
  v14 = v13;

  v22 = v12;
  v23 = v14;
  MEMORY[0x25F8D50D0](0x776569766572502DLL, 0xEE002D656E656353);
  sub_25F177E7C();
  sub_25F1749A8(&qword_27FD481A0, MEMORY[0x277D403A8], MEMORY[0x277D403C0]);
  v15 = sub_25F17980C();
  MEMORY[0x25F8D50D0](v15);

  (*(v8 + 8))(v10, v7);
  v16 = v22;
  v17 = v23;
  *a4 = a1;
  a4[1] = a2;
  a4[2] = v16;
  a4[3] = v17;
  a4[4] = v21;
  swift_unknownObjectRetain();
  v18 = v21;

  return v18;
}

uint64_t PreviewAgentConnector.injectScene(configuration:)(__int128 *a1)
{
  v3 = *(a1 + 2);
  *(v1 + 64) = sub_25F17930C();
  v6 = *a1;
  v7 = *(a1 + 24);
  *(v1 + 72) = sub_25F1792FC();
  *(v1 + 16) = v6;
  *(v1 + 32) = v3;
  *(v1 + 40) = v7;
  *(v1 + 56) = 0;
  v4 = swift_task_alloc();
  *(v1 + 80) = v4;
  *v4 = v1;
  v4[1] = sub_25F171AA4;

  return PreviewAgentConnector.injectScene(configuration:settingsPolicy:)(v1 + 16, (v1 + 56));
}

uint64_t sub_25F171AA4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = sub_25F1792CC();
    v7 = v6;
    v8 = sub_25F171C60;
  }

  else
  {
    *(v4 + 96) = a1;
    v5 = sub_25F1792CC();
    v7 = v9;
    v8 = sub_25F171BF8;
  }

  return MEMORY[0x2822009F8](v8, v5, v7);
}

uint64_t sub_25F171BF8()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 96);

  return v1(v2);
}

uint64_t sub_25F171C60()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t SceneInjector.init(injectScene:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t PreviewAgentConnector.connectNonUIAgent()()
{
  v1 = type metadata accessor for PreviewAgentConnector(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD495A0, &qword_25F183D10);
  v7 = sub_25F17932C();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_25F102560(v0, &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v9 = swift_allocObject();
  sub_25F1749F0(&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for PreviewAgentConnector);
  return sub_25F17870C();
}

uint64_t sub_25F171EDC(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  type metadata accessor for PreviewNonUIAgentProxy(0);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F171F6C, 0, 0);
}

uint64_t sub_25F171F6C()
{
  v1 = v0[5];
  v2 = v1 + *(type metadata accessor for PreviewAgentConnector(0) + 24);
  v3 = *(v2 + 7);
  v0[2] = *(v2 + 6);
  v0[3] = v3;
  v4 = *v1;

  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_25F172048;
  v6 = v0[6];

  return SharedAgentServer<>.requestPreviewNonUIAgent(for:)(v6, v4);
}

uint64_t sub_25F172048()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_25F172268;
  }

  else
  {
    v2 = sub_25F172170;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F172170()
{
  v1 = v0[6];
  v2 = v0[4];
  sub_25F1782AC();
  swift_allocObject();
  *v2 = sub_25F17829C();
  v3 = type metadata accessor for PreviewNonUIAgent(0);
  sub_25F1749F0(v1, v2 + *(v3 + 20), type metadata accessor for PreviewNonUIAgentProxy);

  v4 = v0[1];

  return v4();
}

uint64_t sub_25F172268()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F1722CC()
{
  type metadata accessor for PreviewNonUIAgent(0);
  sub_25F1749A8(&qword_27FD495C8, type metadata accessor for PreviewNonUIAgent, &protocol conformance descriptor for PreviewNonUIAgent);
  return sub_25F17800C();
}

uint64_t _s15PreviewShellKit0A14AgentConnectorV11agentBundle19PreviewsMessagingOS0D10DescriptorV0G0Vvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PreviewAgentConnector(0) + 20);
  v4 = sub_25F17767C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PreviewAgentConnector.injectScene(configuration:settingsPolicy:)(uint64_t a1, void *a2)
{
  *(v3 + 24) = v2;
  *(v3 + 32) = *a1;
  *(v3 + 48) = *(a1 + 16);
  *(v3 + 56) = *(a1 + 24);
  *(v3 + 72) = *a2;
  *(v3 + 80) = sub_25F17930C();
  *(v3 + 88) = sub_25F1792FC();
  v5 = sub_25F1792CC();
  *(v3 + 96) = v5;
  *(v3 + 104) = v4;

  return MEMORY[0x2822009F8](sub_25F1724A8, v5, v4);
}

uint64_t sub_25F1724A8(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_25F1792FC();
  sub_25F1792DC();

  v3 = type metadata accessor for PreviewAgentConnector(0);
  v4 = *(v2 + *(v3 + 28));
  *(v1 + 176) = *v2;
  *(v1 + 112) = v4();
  v5 = *(v1 + 24);
  v6 = *(v3 + 24);
  *(v1 + 180) = v6;
  *(v1 + 120) = *(v5 + v6 + 64);

  return MEMORY[0x2822009F8](sub_25F17262C, 0, 0);
}

uint64_t sub_25F17262C()
{

  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_25F1726E8;
  v2 = *(v0 + 176);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);

  return sub_25F10CD80(v2, v3, v4);
}

uint64_t sub_25F1726E8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 136) = a1;
  *(v4 + 144) = v1;

  v5 = *(v3 + 104);
  v6 = *(v3 + 96);
  if (v1)
  {
    v7 = sub_25F172AAC;
  }

  else
  {
    v7 = sub_25F172848;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_25F172848()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 72);
  v3 = *(v0 + 24) + *(v0 + 180);
  sub_25F176F1C();
  v5 = *(v3 + 112);
  v4 = *(v3 + 120);
  *(v0 + 16) = v2;
  type metadata accessor for PreviewSceneAgentProxy(0);
  swift_allocObject();

  v6 = v1;
  swift_unknownObjectRetain();

  v7 = v2;
  v8 = swift_task_alloc();
  *(v0 + 152) = v8;
  *v8 = v0;
  v8[1] = sub_25F172984;
  v9 = *(v0 + 136);
  v10 = *(v0 + 112);
  v11 = *(v0 + 32);
  v12 = *(v0 + 40);

  return sub_25F0B838C(v9, v10, v11, v12, v5, v4, (v0 + 16));
}

uint64_t sub_25F172984(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v5 = v4[12];
    v6 = v4[13];
    v7 = sub_25F172BAC;
  }

  else
  {
    v4[21] = a1;
    v5 = v4[12];
    v6 = v4[13];
    v7 = sub_25F172B30;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_25F172AAC()
{

  v1 = *(v0 + 112);
  sub_25F0E6754(v1);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25F172B30()
{
  v1 = v0[14];

  v2 = v0[1];
  v3 = v0[21];

  return v2(v3);
}

uint64_t sub_25F172BAC()
{

  v1 = *(v0 + 112);
  sub_25F0E6754(v1);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t PreviewAgentConnector.connectSceneAgent(configuration:)(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for PreviewAgentConnector(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18[-v8 - 8];
  v10 = a1[1];
  v19 = *a1;
  v20 = v10;
  v21 = *(a1 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD495A8, &qword_25F183D28);
  v11 = sub_25F17932C();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  sub_25F102560(v2, &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8]);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_25F1749F0(&v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v13 + v12, type metadata accessor for PreviewAgentConnector);
  v14 = v13 + ((v6 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
  v15 = v20;
  *v14 = v19;
  *(v14 + 16) = v15;
  *(v14 + 32) = v21;
  sub_25F1743DC(&v19, v18);
  return sub_25F17870C();
}

uint64_t sub_25F172E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  return MEMORY[0x2822009F8](sub_25F172EA8, 0, 0);
}

uint64_t sub_25F172EA8()
{
  v1 = *(v0 + 80);
  *(v0 + 88) = sub_25F17930C();
  *(v0 + 96) = sub_25F1792FC();
  v2 = *(v1 + 32);
  v3 = *(v1 + 16);
  *(v0 + 16) = *v1;
  *(v0 + 32) = v3;
  *(v0 + 48) = v2;
  *(v0 + 56) = 0;
  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  *v4 = v0;
  v4[1] = sub_25F172F78;

  return PreviewAgentConnector.injectScene(configuration:settingsPolicy:)(v0 + 16, (v0 + 56));
}

uint64_t sub_25F172F78(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v5 = sub_25F1792CC();
    v7 = v6;
    v8 = sub_25F1731F8;
  }

  else
  {
    *(v4 + 120) = a1;
    v5 = sub_25F1792CC();
    v7 = v9;
    v8 = sub_25F1730CC;
  }

  return MEMORY[0x2822009F8](v8, v5, v7);
}

uint64_t sub_25F1730CC()
{

  return MEMORY[0x2822009F8](sub_25F173134, 0, 0);
}

uint64_t sub_25F173134()
{
  v1 = v0[15];
  v2 = v0[8];
  sub_25F1782AC();
  swift_allocObject();
  *v2 = sub_25F17829C();
  v2[1] = v1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_25F1731F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t PreviewAgentConnector.connectSceneAgent(configuration:settingsPolicy:)(__int128 *a1, void **a2)
{
  v3 = v2;
  v6 = type metadata accessor for PreviewAgentConnector(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v24[-v11 - 8];
  v13 = a1[1];
  v25 = *a1;
  v26 = v13;
  v27 = *(a1 + 4);
  v14 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD495A8, &qword_25F183D28);
  v15 = sub_25F17932C();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  sub_25F102560(v3, v9);
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  sub_25F1749F0(v9, v18 + v16, type metadata accessor for PreviewAgentConnector);
  v19 = v18 + v17;
  v20 = v26;
  *v19 = v25;
  *(v19 + 16) = v20;
  *(v19 + 32) = v27;
  *(v18 + ((v17 + 47) & 0xFFFFFFFFFFFFFFF8)) = v14;
  sub_25F1743DC(&v25, v24);
  v21 = v14;
  return sub_25F17870C();
}

uint64_t sub_25F1734D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a1;
  v5 = *(a3 + 16);
  *(v4 + 16) = *a3;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(a3 + 32);
  *(v4 + 56) = a4;
  v6 = swift_task_alloc();
  *(v4 + 72) = v6;
  *v6 = v4;
  v6[1] = sub_25F173590;

  return PreviewAgentConnector.injectScene(configuration:settingsPolicy:)(v4 + 16, (v4 + 56));
}

uint64_t sub_25F173590(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = sub_25F17377C;
  }

  else
  {
    *(v4 + 88) = a1;
    v5 = sub_25F1736B8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25F1736B8()
{
  v1 = v0[11];
  v2 = v0[8];
  sub_25F1782AC();
  swift_allocObject();
  *v2 = sub_25F17829C();
  v2[1] = v1;
  v3 = v0[1];

  return v3();
}

uint64_t PreviewAgentConnector.connectSceneAgent(configuration:settingsPolicy:)(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  *(v3 + 64) = a1;
  v5 = *(a2 + 2);
  v6 = *a3;
  *(v3 + 72) = sub_25F17930C();
  v9 = *a2;
  v10 = *(a2 + 24);
  *(v3 + 80) = sub_25F1792FC();
  *(v3 + 16) = v9;
  *(v3 + 32) = v5;
  *(v3 + 40) = v10;
  *(v3 + 56) = v6;
  v7 = swift_task_alloc();
  *(v3 + 88) = v7;
  *v7 = v3;
  v7[1] = sub_25F17392C;

  return PreviewAgentConnector.injectScene(configuration:settingsPolicy:)(v3 + 16, (v3 + 56));
}

uint64_t sub_25F17392C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v5 = sub_25F1792CC();
    v7 = v6;
    v8 = sub_25F173B4C;
  }

  else
  {
    *(v4 + 104) = a1;
    v5 = sub_25F1792CC();
    v7 = v9;
    v8 = sub_25F173A80;
  }

  return MEMORY[0x2822009F8](v8, v5, v7);
}

uint64_t sub_25F173A80()
{
  v1 = v0[13];
  v2 = v0[8];

  sub_25F1782AC();
  swift_allocObject();
  *v2 = sub_25F17829C();
  v2[1] = v1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_25F173B4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t AgentSceneConfiguration.previewShellScene.setter(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectRelease();
  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AgentSceneConfiguration.sceneIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void AgentSceneConfiguration.sceneIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t AgentSceneConfiguration.init(previewShellScene:sceneIdentifier:sceneSpecification:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t sub_25F173D1C()
{
  v1 = type metadata accessor for PreviewAgentConnector(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v1 + 20);
  v6 = sub_25F17767C();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25F173E9C(uint64_t a1)
{
  v4 = *(type metadata accessor for PreviewAgentConnector(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25F0C10CC;

  return sub_25F171EDC(a1, v1 + v5);
}

uint64_t static AgentSceneConfiguration.mainSceneConfiguration(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_25F177E8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  v17 = (*(a2 + 16))(ObjectType, a2);
  v18 = v11;
  MEMORY[0x25F8D50D0](0x6563536E69614D2DLL, 0xEB000000002D656ELL);
  sub_25F177E7C();
  sub_25F1749A8(&qword_27FD481A0, MEMORY[0x277D403A8], MEMORY[0x277D403C0]);
  v12 = sub_25F17980C();
  MEMORY[0x25F8D50D0](v12);

  (*(v7 + 8))(v9, v6);
  v13 = v17;
  v14 = v18;
  v15 = [objc_opt_self() mainSceneSpecification];
  *a3 = a1;
  a3[1] = a2;
  a3[2] = v13;
  a3[3] = v14;
  a3[4] = v15;
  return swift_unknownObjectRetain();
}

uint64_t sub_25F174134()
{
  v1 = type metadata accessor for PreviewAgentConnector(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*(v1 - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = *(v1 + 20);
  v7 = sub_25F17767C();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v4 + 40, v2 | 7);
}

uint64_t sub_25F1742D4(uint64_t a1)
{
  v4 = *(type metadata accessor for PreviewAgentConnector(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25F0C10CC;

  return sub_25F172E84(a1, v1 + v5, v1 + v6);
}

uint64_t sub_25F174414()
{
  v1 = type metadata accessor for PreviewAgentConnector(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*(v1 - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 47) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v3;
  v7 = *(v1 + 20);
  v8 = sub_25F17767C();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v2 | 7);
}

uint64_t sub_25F1745CC(uint64_t a1)
{
  v4 = *(type metadata accessor for PreviewAgentConnector(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + ((v6 + 47) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25F0BF3E4;

  return sub_25F1734D8(a1, v1 + v5, v1 + v6, v7);
}

uint64_t sub_25F174710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F17767C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_25F1747E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25F17767C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_25F1748A0(uint64_t a1)
{
  result = sub_25F17767C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_25F174954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD495C0;
  if (!qword_27FD495C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD495C0);
  }

  return result;
}

uint64_t sub_25F1749A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25F1749F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for PreviewNonUIAgent(uint64_t a1)
{
  result = qword_27FD495D0;
  if (!qword_27FD495D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PreviewNonUIAgent.onDisconnect(_:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for PreviewNonUIAgentProxy(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = *(type metadata accessor for PreviewNonUIAgent(0) + 20);
  v12 = sub_25F17932C();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  sub_25F17536C(v2 + v11, &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PreviewNonUIAgentProxy);
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  sub_25F175594(&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for PreviewNonUIAgentProxy);
  v15 = (v14 + ((v7 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v15 = a1;
  v15[1] = a2;

  sub_25F0BC520(0, 0, v10, &unk_25F183E70, v14);
}

uint64_t sub_25F174CCC()
{
  v1 = (type metadata accessor for PreviewNonUIAgentProxy(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v5 = v1[8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD485E8, &qword_25F180220);
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_25F174E04(uint64_t a1)
{
  v4 = *(type metadata accessor for PreviewNonUIAgentProxy(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_25F0C10CC;

  return sub_25F11A5EC(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t PreviewNonUIAgent.perform<A>(update:expecting:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a4;
  v25[0] = a3;
  v26 = sub_25F177D3C();
  v5 = *(v26 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v26);
  v7 = type metadata accessor for PreviewNonUIAgent(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v25 - v12;
  v25[1] = v25 - v12;
  v28 = sub_25F17873C();
  v14 = sub_25F17932C();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_25F17536C(v27, v10, type metadata accessor for PreviewNonUIAgent);
  v15 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1;
  v17 = v26;
  (*(v5 + 16))(v15, v16, v26);
  v18 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v19 = (v9 + *(v5 + 80) + v18) & ~*(v5 + 80);
  v20 = swift_allocObject();
  v21 = v25[0];
  v22 = v29;
  *(v20 + 16) = v25[0];
  *(v20 + 24) = v22;
  sub_25F175594(v10, v20 + v18, type metadata accessor for PreviewNonUIAgent);
  (*(v5 + 32))(v20 + v19, v15, v17);
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  *(v23 + 24) = v22;
  return sub_25F17870C();
}

uint64_t sub_25F17525C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_25F175284, 0, 0);
}

uint64_t sub_25F175284()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  type metadata accessor for PreviewNonUIAgent(0);
  nullsub_1();
  v0[7] = PreviewNonUIAgentProxy.perform<A>(update:expecting:)(v3, v4, v2, v1);
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_25F11ABE0;
  v6 = v0[2];

  return MEMORY[0x2821A0BA0](v6);
}

uint64_t sub_25F17536C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F1753D4()
{
  v1 = (type metadata accessor for PreviewNonUIAgent(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_25F177D3C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;

  v11 = v0 + v3 + v1[7];

  v12 = *(type metadata accessor for PreviewNonUIAgentProxy(0) + 24);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD485E8, &qword_25F180220);
  (*(*(v13 - 8) + 8))(v11 + v12, v13);

  (*(v6 + 8))(v0 + v8, v5);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t sub_25F175594(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F1755FC(uint64_t a1)
{
  v3 = v2;
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(type metadata accessor for PreviewNonUIAgent(0) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_25F177D3C() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_25F0BF3E4;

  return sub_25F17525C(a1, v1 + v8, v1 + v11, v5, v6);
}

uint64_t PreviewNonUIAgent.addMessageStream(for:)(uint64_t a1)
{
  v3 = sub_25F17776C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v18 - v7;
  v9 = v1 + *(type metadata accessor for PreviewNonUIAgent(0) + 20);
  v10 = (v9 + *(type metadata accessor for PreviewNonUIAgentProxy(0) + 28));
  v12 = *v10;
  v11 = v10[1];
  v13 = *(v9 + 8);
  v18[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BE0, &unk_25F180240);
  v14 = sub_25F17932C();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  (*(v4 + 16))(v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v15 = (*(v4 + 80) + 36) & ~*(v4 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  *(v16 + 24) = v11;
  *(v16 + 32) = v13;
  (*(v4 + 32))(v16 + v15, v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);

  return sub_25F17870C();
}

uint64_t sub_25F1759C0()
{
  v1 = sub_25F17776C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 36) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t PreviewNonUIAgent.sendEndpoint(_:context:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_25F17764C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25F177DFC();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PreviewNonUIAgent(0);
  type metadata accessor for PreviewNonUIAgentProxy(0);
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BF0, &qword_25F180250) + 48);
  v13 = sub_25F17776C();
  (*(*(v13 - 8) + 16))(v11, a3, v13);
  v14 = sub_25F177F8C();
  (*(*(v14 - 8) + 16))(&v11[v12], a2, v14);
  sub_25F17763C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD485E8, &qword_25F180220);
  sub_25F176C60(&qword_27FD48600, MEMORY[0x277D40ED8], MEMORY[0x277D40ED0]);
  sub_25F17701C();
  (*(v6 + 8))(v8, v5);
  return sub_25F1769F4(v11, MEMORY[0x277D40ED8]);
}

uint64_t PreviewSceneAgent.onDisconnect(_:)(uint64_t a1, uint64_t a2)
{
  sub_25F17930C();
  sub_25F1792FC();
  sub_25F1792DC();

  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_25F176798;
  *(v5 + 24) = v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46B60, &qword_25F17AF10);
  sub_25F177F4C();
}

uint64_t PreviewSceneAgent.perform<A>(update:with:delegate:expecting:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v19 - v12;
  v14 = PreviewSceneAgentProxy.perform<A>(update:with:delegate:expecting:)(a1, a2, a3, a5, a5, a6);
  sub_25F17873C();
  v15 = sub_25F17932C();
  (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = a5;
  v16[3] = a6;
  v16[4] = v14;
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  *(v17 + 24) = a6;
  return sub_25F17870C();
}

uint64_t sub_25F175FE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD46C38, qword_25F17C0E0);
  *v7 = v3;
  v7[1] = sub_25F0C10CC;
  v9 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](a1, a2, a3, v8, v9);
}

uint64_t PreviewSceneAgent.generateStaticOutput<A>(for:expecting:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  v10 = PreviewSceneAgentProxy.generateStaticOutput<A>(for:expecting:)(a1, a3, a3, a4);
  sub_25F17873C();
  v11 = sub_25F17932C();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = v10;
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  return sub_25F17870C();
}

uint64_t PreviewSceneAgent.addMessageStream(for:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - v3;
  PreviewSceneAgentProxy.addMessageStream(for:)(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BE0, &unk_25F180240);
  v5 = sub_25F17932C();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  return sub_25F17870C();
}

uint64_t sub_25F176398(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_25F1774BC();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD46C38, qword_25F17C0E0);
  *v5 = v2;
  v5[1] = sub_25F0BF3E4;
  v8 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](a1, a2, v6, v7, v8);
}

uint64_t sub_25F176474()
{
  sub_25F1774BC();
  sub_25F176C60(&qword_27FD480D0, MEMORY[0x277D40750], MEMORY[0x277D40748]);
  return sub_25F17800C();
}

uint64_t PreviewSceneAgent.sendEndpoint(_:context:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_25F17764C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25F177E2C();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BF0, &qword_25F180250) + 48);
  v13 = sub_25F17776C();
  (*(*(v13 - 8) + 16))(v11, a3, v13);
  v14 = sub_25F177F8C();
  (*(*(v14 - 8) + 16))(&v11[v12], a2, v14);
  sub_25F17763C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46B88, &qword_25F17AF28);
  sub_25F176C60(&qword_27FD46BF8, MEMORY[0x277D40F08], MEMORY[0x277D40F00]);
  sub_25F17701C();
  (*(v6 + 8))(v8, v5);
  return sub_25F1769F4(v11, MEMORY[0x277D40F08]);
}

uint64_t sub_25F176760()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25F1767A8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25F1767E0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25F0C10CC;

  return sub_25F175FE0(a1, v5, v4);
}

uint64_t sub_25F1768A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25F0C10CC;

  return sub_25F175FE0(a1, v5, v4);
}

uint64_t sub_25F176958(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25F0C10CC;

  return sub_25F176398(a1, v1);
}

uint64_t sub_25F1769F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25F176A68(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for PreviewNonUIAgentProxy(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_25F176B28(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for PreviewNonUIAgentProxy(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25F176BCC(uint64_t a1)
{
  result = sub_25F1782AC();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PreviewNonUIAgentProxy(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25F176C60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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