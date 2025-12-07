double sub_222C524B0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for FeaturisedTurn(0) + 28));
  v4 = (v3 + 64);
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = *(v4 - 2);
    if (*(v4 - 1) != 0xD000000000000011 || 0x8000000222CA87C0 != *v4)
    {
      v4 += 5;
      if ((sub_222C951FC() & 1) == 0)
      {
        continue;
      }
    }

    swift_bridgeObjectRetain_n();

    sub_222B4183C(v6, a2);

    swift_bridgeObjectRelease_n();

    return result;
  }

  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v9 = sub_222C9431C();
  __swift_project_value_buffer(v9, qword_280FE2340);
  v10 = sub_222C942FC();
  v11 = sub_222C94A4C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = v13;
    *v12 = 136315138;
    if (qword_280FDC0A8 != -1)
    {
      swift_once();
    }

    *(v12 + 4) = sub_222B437C0(qword_280FDC0B0, unk_280FDC0B8, &v14);
    _os_log_impl(&dword_222B39000, v10, v11, "%s [getPrimaryMediaItem] No INPlayMediaIntent found for the turn", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x223DCA8C0](v13, -1, -1);
    MEMORY[0x223DCA8C0](v12, -1, -1);
  }

  result = 0.0;
  *(a2 + 41) = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

void sub_222C52710(uint64_t *a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v35 = a1[5];
  v8 = sub_222C54680(a2 + OBJC_IVAR____TtC28SiriPrivateLearningInference25PartialRepetitionMetadata_firstTurn);
  v9 = *(v8 + 16);
  if (v9)
  {
    v33 = v7;
    v34 = v5;
    v37 = MEMORY[0x277D84F90];
    sub_222B4C418(0, v9, 0);
    v10 = v37;
    v11 = (v8 + 40);
    do
    {
      v13 = *(v11 - 1);
      v12 = *v11;
      v37 = v10;
      v15 = *(v10 + 16);
      v14 = *(v10 + 24);

      if (v15 >= v14 >> 1)
      {
        sub_222B4C418((v14 > 1), v15 + 1, 1);
        v10 = v37;
      }

      *(v10 + 16) = v15 + 1;
      v16 = v10 + 16 * v15;
      *(v16 + 32) = v13;
      *(v16 + 40) = v12;
      v11 += 8;
      --v9;
    }

    while (v9);

    v5 = v34;
    v7 = v33;
  }

  else
  {

    v10 = MEMORY[0x277D84F90];
  }

  v17 = (v10 + 40);
  v18 = *(v10 + 16) + 1;
  do
  {
    if (!--v18)
    {
      break;
    }

    if (*(v17 - 1) == v3 && *v17 == v4)
    {
      break;
    }

    v17 += 2;
  }

  while ((sub_222C951FC() & 1) == 0);
  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v20 = sub_222C9431C();
  __swift_project_value_buffer(v20, qword_280FE2340);

  sub_222B4FDCC(v5, v6, v7, v35);
  v21 = sub_222C942FC();
  v22 = sub_222C94A3C();

  sub_222B4FE78(v5, v6, v7, v35);
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v37 = v24;
    *v23 = 136315394;
    *(v23 + 4) = sub_222B437C0(v3, v4, &v37);
    *(v23 + 12) = 1024;
    *(v23 + 14) = v18 != 0;
    _os_log_impl(&dword_222B39000, v21, v22, "Repetition candidate %s is alternate candidate: %{BOOL}d.", v23, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v24);
    MEMORY[0x223DCA8C0](v24, -1, -1);
    MEMORY[0x223DCA8C0](v23, -1, -1);
  }

  v25 = sub_222C942FC();
  v26 = sub_222C94A3C();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v37 = v28;
    *v27 = 136315138;
    v29 = MEMORY[0x223DC94D0](v10, MEMORY[0x277D837D0]);
    v31 = v30;

    v32 = sub_222B437C0(v29, v31, &v37);

    *(v27 + 4) = v32;
    _os_log_impl(&dword_222B39000, v25, v26, "Alternate candidate list: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    MEMORY[0x223DCA8C0](v28, -1, -1);
    MEMORY[0x223DCA8C0](v27, -1, -1);
  }

  else
  {
  }

  *a3 = v18 != 0;
}

void sub_222C52AE4(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a3;
  v42 = type metadata accessor for FeaturisedTurn(0);
  v5 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v37 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0253C8, &unk_222C98400);
  MEMORY[0x28223BE20](v7 - 8);
  v41 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v40 = &v34 - v10;
  v11 = *a1;
  v35 = v5;
  v38 = (v5 + 48);
  v39 = (v5 + 56);
  v12 = *(a2 + 16);
  v13 = *(a2 + 24);
  v44 = v11;

  v43 = 0;
  while (1)
  {
    v23 = v43;
    v24 = *(v44 + 16);
    if (v43 == v24)
    {
      v25 = 1;
      v27 = v41;
      v26 = v42;
      v28 = v40;
      goto LABEL_15;
    }

    v27 = v41;
    v26 = v42;
    v28 = v40;
    if (v43 >= v24)
    {
      break;
    }

    sub_222C542D8(v44 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v43, v40, type metadata accessor for FeaturisedTurn);
    v25 = 0;
    ++v23;
LABEL_15:
    (*v39)(v28, v25, 1, v26);
    sub_222B5EC84(v28, v27);
    if ((*v38)(v27, 1, v26) == 1)
    {

      v33 = v36;
      *(v36 + 48) = 0;
      v33[1] = 0u;
      v33[2] = 0u;
      *v33 = 0u;
      return;
    }

    v43 = v23;
    v29 = v27;
    v30 = v37;
    sub_222B97FB4(v29, v37, type metadata accessor for FeaturisedTurn);
    v31 = *(v30 + *(v26 + 28));

    sub_222B77D34(v30, type metadata accessor for FeaturisedTurn);

    v32 = v31;
    if (v31)
    {
      v14 = (v31 + 64);
      v15 = -1;
      while (1)
      {
        ++v15;
        v16 = *(v32 + 16);
        if (v15 == v16)
        {
          break;
        }

        if (v15 >= v16)
        {
          __break(1u);
          goto LABEL_22;
        }

        v18 = *(v14 - 4);
        v17 = *(v14 - 3);
        v19 = *(v14 - 2);
        v20 = *(v14 - 1);
        v21 = *v14;
        if (v18 == v12 && v17 == v13)
        {
          v18 = v12;
LABEL_19:

          v45[0] = v18;
          v45[1] = v17;
          v45[2] = v19;
          v45[3] = v20;
          v45[4] = v21;
          extractMediaReference(event:)(v45, v36);

          return;
        }

        v14 += 5;
        if (sub_222C951FC())
        {
          goto LABEL_19;
        }
      }
    }
  }

LABEL_22:
  __break(1u);
}

void sub_222C52E5C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = v2;
  v7 = v3;
  extractMediaReference(event:)(&v4, a2);
}

uint64_t sub_222C52E9C(uint64_t *a1)
{
  v2 = *a1;
  if (*(v1 + 25) == 1)
  {

    return v2;
  }

  v3 = *(v2 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = v3 - 1;
  v5 = type metadata accessor for FeaturisedTurn(0);
  v6 = *(v2 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)) + *(*(v5 - 8) + 72) * v4 + *(v5 + 24));
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = v6 + 32;
    while (v8 < *(v6 + 16))
    {
      sub_222B43E3C(v9, v17);
      sub_222B43E3C(v17, v16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024858, &qword_222C98950);
      sub_222C9404C();
      if (swift_dynamicCast())
      {

        __swift_destroy_boxed_opaque_existential_0Tm(v17);
        return MEMORY[0x277D84F90];
      }

      sub_222B405A0(v17, v16);
      type metadata accessor for PlayMediaSELFFeatures.RequestedMediaItem(0);
      if (swift_dynamicCast())
      {

        return MEMORY[0x277D84F90];
      }

      ++v8;
      v9 += 40;
      if (v7 == v8)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_10:
  if (qword_280FDFE78 != -1)
  {
LABEL_19:
    swift_once();
  }

  v10 = sub_222C9431C();
  __swift_project_value_buffer(v10, qword_280FE2340);
  v11 = sub_222C942FC();
  v12 = sub_222C94A3C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_222B39000, v11, v12, "Last turn of the session does not contain asr or u2 features, dropping the last", v13, 2u);
    MEMORY[0x223DCA8C0](v13, -1, -1);
  }

  sub_222C53118(1, v2);
  return v14;
}

void sub_222C53118(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeaturisedTurn(0) - 8;
  MEMORY[0x28223BE20](v4);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v27 - v9;
  if (a1 < 0)
  {
    goto LABEL_28;
  }

  if (a1)
  {
    v11 = *(a2 + 16);
    if (!v11)
    {
LABEL_24:

      return;
    }

    v12 = 0;
    v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v27[1] = a2;
    v14 = a2 + v13;
    v15 = *(v8 + 72);
    v16 = v11 - 1;
    v17 = MEMORY[0x277D84F90];
    v18 = MEMORY[0x277D84F90];
    v29 = v6;
    v30 = v13;
    v31 = v27 - v9;
    v28 = a1;
    while (1)
    {
      sub_222C542D8(v14, v10, type metadata accessor for FeaturisedTurn);
      v22 = v18[2];
      if (v22 < a1)
      {
        break;
      }

      if (v12 >= v22)
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        return;
      }

      sub_222C542D8(v18 + v13 + v15 * v12, v6, type metadata accessor for FeaturisedTurn);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_222B4C3D4(0, *(v17 + 16) + 1, 1);
        v6 = v29;
        v17 = v33;
      }

      v26 = *(v17 + 16);
      v25 = *(v17 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_222B4C3D4((v25 > 1), v26 + 1, 1);
        v6 = v29;
        v17 = v33;
      }

      *(v17 + 16) = v26 + 1;
      v13 = v30;
      sub_222B97FB4(v6, v17 + v30 + v26 * v15, type metadata accessor for FeaturisedTurn);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_222C84864(v18);
      }

      v10 = v31;
      if (v12 >= v18[2])
      {
        goto LABEL_27;
      }

      sub_222C5461C(v31, v18 + v13 + v15 * v12++);
      a1 = v28;
      if (v12 < v28)
      {
        goto LABEL_8;
      }

      if (!v16)
      {
        goto LABEL_24;
      }

      v12 = 0;
LABEL_9:
      --v16;
      v14 += v15;
    }

    v23 = swift_isUniquelyReferenced_nonNull_native();
    v32 = v18;
    if ((v23 & 1) == 0)
    {
      sub_222B4C3D4(0, v22 + 1, 1);
      v6 = v29;
      v18 = v32;
    }

    v20 = v18[2];
    v19 = v18[3];
    if (v20 >= v19 >> 1)
    {
      sub_222B4C3D4((v19 > 1), v20 + 1, 1);
      v6 = v29;
      v18 = v32;
    }

    v18[2] = v20 + 1;
    v13 = v30;
    v21 = v18 + v30 + v20 * v15;
    v10 = v31;
    sub_222B97FB4(v31, v21, type metadata accessor for FeaturisedTurn);
LABEL_8:
    if (!v16)
    {
      goto LABEL_24;
    }

    goto LABEL_9;
  }
}

uint64_t sub_222C53458@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for TimeBasedPlayMediaStitcher();
  result = swift_allocObject();
  *(result + 16) = 0x403E000000000000;
  a1[3] = v2;
  a1[4] = &protocol witness table for TimeBasedPlayMediaStitcher;
  *a1 = result;
  return result;
}

uint64_t sub_222C534A8@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(v2 + 25) != 1)
  {
    return sub_222C542D8(a1, a2, type metadata accessor for FeaturisedSession);
  }

  sub_222C53EDC(v5);
  v7 = v6;
  v8 = type metadata accessor for FeaturisedSession(0);
  v9 = *(v8 + 20);
  v10 = sub_222C9367C();
  (*(*(v10 - 8) + 16))(a2 + v9, &a1[v9], v10);
  result = sub_222B5551C(&a1[*(v8 + 24)], a2 + *(v8 + 24));
  *a2 = v7;
  return result;
}

uint64_t MediaEntityPartialRepetitionDefinition.deinit()
{

  return v0;
}

uint64_t MediaEntityPartialRepetitionDefinition.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_222C53678@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_222C54150(a2);
  *a1 = result;
  return result;
}

uint64_t sub_222C536C4@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(*v2 + 25) != 1)
  {
    return sub_222C542D8(a1, a2, type metadata accessor for FeaturisedSession);
  }

  sub_222C53EDC(v5);
  v7 = v6;
  v8 = type metadata accessor for FeaturisedSession(0);
  v9 = *(v8 + 20);
  v10 = sub_222C9367C();
  (*(*(v10 - 8) + 16))(a2 + v9, &a1[v9], v10);
  result = sub_222B5551C(&a1[*(v8 + 24)], a2 + *(v8 + 24));
  *a2 = v7;
  return result;
}

uint64_t sub_222C537FC@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_222C5382C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {

    sub_222B4FDCC(a3, a4, a5, a6);
  }
}

uint64_t sub_222C53890(uint64_t a1)
{
  result = type metadata accessor for FeaturisedTurn(0);
  v3 = *(a1 + *(result + 24));
  v4 = *(v3 + 16);
  if (!v4)
  {
    return 1;
  }

  v5 = 0;
  v6 = v3 + 32;
  while (v5 < *(v3 + 16))
  {
    sub_222B43E3C(v6, v8);
    sub_222B43E3C(v8, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024858, &qword_222C98950);
    sub_222C9404C();
    if (swift_dynamicCast())
    {

      __swift_destroy_boxed_opaque_existential_0Tm(v8);
      return 0;
    }

    sub_222B405A0(v8, v7);
    type metadata accessor for PlayMediaSELFFeatures.RequestedMediaItem(0);
    result = swift_dynamicCast();
    if (result)
    {

      return 0;
    }

    ++v5;
    v6 += 40;
    if (v4 == v5)
    {
      return 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_222C539C4(uint64_t a1)
{
  v2 = type metadata accessor for FeaturisedTurn(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - v6;
  if (sub_222C53890(a1))
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v8 = sub_222C9431C();
    __swift_project_value_buffer(v8, qword_280FE2340);
    sub_222C542D8(a1, v4, type metadata accessor for FeaturisedTurn);
    v9 = sub_222C942FC();
    v10 = sub_222C94A3C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v29 = v12;
      *v11 = 136315394;
      if (qword_280FDC0A8 != -1)
      {
        swift_once();
      }

      *(v11 + 4) = sub_222B437C0(qword_280FDC0B0, unk_280FDC0B8, &v29);
      *(v11 + 12) = 2080;
      sub_222C9367C();
      sub_222C545D4(&qword_280FE0298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v13 = sub_222C9517C();
      v15 = v14;
      sub_222B77D34(v4, type metadata accessor for FeaturisedTurn);
      v16 = sub_222B437C0(v13, v15, &v29);

      *(v11 + 14) = v16;
      _os_log_impl(&dword_222B39000, v9, v10, "%s Ignoring turn %s - empty turn", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v12, -1, -1);
      MEMORY[0x223DCA8C0](v11, -1, -1);

      return 0;
    }

    v26 = v4;
  }

  else
  {
    if (!sub_222B453E4(a1))
    {
      return 1;
    }

    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v17 = sub_222C9431C();
    __swift_project_value_buffer(v17, qword_280FE2340);
    sub_222C542D8(a1, v7, type metadata accessor for FeaturisedTurn);
    v18 = sub_222C942FC();
    v19 = sub_222C94A3C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v29 = v21;
      *v20 = 136315394;
      if (qword_280FDC0A8 != -1)
      {
        swift_once();
      }

      *(v20 + 4) = sub_222B437C0(qword_280FDC0B0, unk_280FDC0B8, &v29);
      *(v20 + 12) = 2080;
      sub_222C9367C();
      sub_222C545D4(&qword_280FE0298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v22 = sub_222C9517C();
      v24 = v23;
      sub_222B77D34(v7, type metadata accessor for FeaturisedTurn);
      v25 = sub_222B437C0(v22, v24, &v29);

      *(v20 + 14) = v25;
      _os_log_impl(&dword_222B39000, v18, v19, "%s Ignoring turn %s - wake word only", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v21, -1, -1);
      MEMORY[0x223DCA8C0](v20, -1, -1);

      return 0;
    }

    v26 = v7;
  }

  sub_222B77D34(v26, type metadata accessor for FeaturisedTurn);
  return 0;
}

void sub_222C53EDC(uint64_t a1)
{
  v3 = type metadata accessor for FeaturisedTurn(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v21 = *(a1 + 16);
  if (v21)
  {
    v10 = 0;
    v11 = MEMORY[0x277D84F90];
    v19 = v6;
    v20 = a1;
    while (v10 < *(a1 + 16))
    {
      v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v13 = *(v4 + 72);
      sub_222C542D8(a1 + v12 + v13 * v10, v9, type metadata accessor for FeaturisedTurn);
      v14 = sub_222C539C4(v9);
      if (v1)
      {
        sub_222B77D34(v9, type metadata accessor for FeaturisedTurn);

        goto LABEL_15;
      }

      if (v14)
      {
        sub_222B97FB4(v9, v6, type metadata accessor for FeaturisedTurn);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v22 = v11;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_222B4C3D4(0, *(v11 + 16) + 1, 1);
          v11 = v22;
        }

        v17 = *(v11 + 16);
        v16 = *(v11 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_222B4C3D4((v16 > 1), v17 + 1, 1);
          v11 = v22;
        }

        *(v11 + 16) = v17 + 1;
        v6 = v19;
        sub_222B97FB4(v19, v11 + v12 + v17 * v13, type metadata accessor for FeaturisedTurn);
        a1 = v20;
      }

      else
      {
        sub_222B77D34(v9, type metadata accessor for FeaturisedTurn);
      }

      if (v21 == ++v10)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

uint64_t sub_222C54150(uint64_t a1)
{
  v2 = type metadata accessor for FeaturisedTurn(0);
  result = sub_222B41B48(*(a1 + *(v2 + 24)));
  if (!result)
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v4 = sub_222C9431C();
    __swift_project_value_buffer(v4, qword_280FE2340);
    v5 = sub_222C942FC();
    v6 = sub_222C94A4C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = v8;
      *v7 = 136315138;
      if (qword_280FDC0A8 != -1)
      {
        swift_once();
      }

      *(v7 + 4) = sub_222B437C0(qword_280FDC0B0, unk_280FDC0B8, &v9);
      _os_log_impl(&dword_222B39000, v5, v6, "%s No U2 graph found for the turn", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
      MEMORY[0x223DCA8C0](v8, -1, -1);
      MEMORY[0x223DCA8C0](v7, -1, -1);
    }

    return 0;
  }

  return result;
}

uint64_t sub_222C542D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_222C545D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_222C5461C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeaturisedTurn(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_222C54680(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for FeaturisedTurn(0) + 28));
  v2 = (v1 + 64);
  v3 = *(v1 + 16) + 1;
  while (--v3)
  {
    v4 = *(v2 - 2);
    if (*(v2 - 1) != 0xD000000000000011 || 0x8000000222CA87C0 != *v2)
    {
      v2 += 5;
      if ((sub_222C951FC() & 1) == 0)
      {
        continue;
      }
    }

    swift_bridgeObjectRetain_n();

    v6 = sub_222B41F10(v4);

    swift_bridgeObjectRelease_n();

    if (v6)
    {
      return v6;
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v8 = sub_222C9431C();
  __swift_project_value_buffer(v8, qword_280FE2340);
  v9 = sub_222C942FC();
  v10 = sub_222C94A4C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = v12;
    *v11 = 136315138;
    if (qword_280FDC0A8 != -1)
    {
      swift_once();
    }

    *(v11 + 4) = sub_222B437C0(qword_280FDC0B0, unk_280FDC0B8, &v13);
    _os_log_impl(&dword_222B39000, v9, v10, "%s [getAlternativeMediaItems] No INPlayMediaIntent found for the turn", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x223DCA8C0](v12, -1, -1);
    MEMORY[0x223DCA8C0](v11, -1, -1);
  }

  return MEMORY[0x277D84F90];
}

double SuccessfulMessageClassification.init(siriStarted:messageEventId:)@<D0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024ED0, &qword_222C96C80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_222C97C40;
  *(v7 + 32) = a2;
  *(v7 + 40) = a3;
  *(a4 + 32) = v7;

  return result;
}

uint64_t SuccessfulMessageClassification.messageEventId.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_222C5499C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_222C549E4(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_222C54A58(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v80 = a3;
  v81 = a4;
  v79.n128_u64[0] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v76 - v7;
  if (a1 >> 62)
  {
    goto LABEL_31;
  }

  v84 = a1 & 0xFFFFFFFFFFFFFF8;
  v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
LABEL_32:
    v11 = MEMORY[0x277D84F98];
    goto LABEL_33;
  }

LABEL_3:
  v10 = 0;
  v11 = MEMORY[0x277D84F98];
  do
  {
LABEL_4:
    v82 = v11;
    v12 = v10;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x223DC9B30](v12, a1, v6);
      }

      else
      {
        if (v12 >= *(v84 + 16))
        {
          goto LABEL_30;
        }

        v13 = *(a1 + 8 * v12 + 32);
      }

      v14 = v13;
      v10 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        v84 = a1 & 0xFFFFFFFFFFFFFF8;
        v9 = sub_222C94C6C();
        if (!v9)
        {
          goto LABEL_32;
        }

        goto LABEL_3;
      }

      v15 = [v13 suggestionId];
      if (v15)
      {
        break;
      }

LABEL_6:
      ++v12;
      if (v10 == v9)
      {
        v11 = v82;
        goto LABEL_33;
      }
    }

    v16 = v15;
    sub_222C94A1C();

    v17 = sub_222C9367C();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v8, 1, v17) == 1)
    {

      sub_222B4FCD4(v8, &unk_27D026290, &qword_222C96B40);
      goto LABEL_6;
    }

    v19 = sub_222C9360C();
    v21 = v20;
    (*(v18 + 8))(v8, v17);
    v22 = v21;
    v77 = [v14 contactSuggestionOutcome];
    v23 = v82;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v86 = v23;
    v78.n128_u64[0] = v19;
    v26 = sub_222B8C9DC(v19, v22);
    v27 = *(v23 + 16);
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      result = sub_222C9526C();
      __break(1u);
      return result;
    }

    if (*(v23 + 24) >= v29)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v25 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v33 = v25;
        sub_222B92F88();
        if ((v33 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

LABEL_22:

      v32 = v86;
      *(*(v86 + 56) + 4 * v26) = v77;
      v11 = v32;

      if (v10 == v9)
      {
        break;
      }

      goto LABEL_4;
    }

    LODWORD(v82) = v25;
    sub_222B8E510(v29, isUniquelyReferenced_nonNull_native);
    v30 = sub_222B8C9DC(v78.n128_i64[0], v22);
    if ((v82 & 1) != (v31 & 1))
    {
      goto LABEL_52;
    }

    v26 = v30;
    if (v82)
    {
      goto LABEL_22;
    }

LABEL_25:
    v34 = v86;
    *(v86 + 8 * (v26 >> 6) + 64) |= 1 << v26;
    v35 = (*(v34 + 48) + 16 * v26);
    *v35 = v78.n128_u64[0];
    v35[1] = v22;
    *(*(v34 + 56) + 4 * v26) = v77;
    v11 = v34;

    v36 = *(v11 + 16);
    v37 = __OFADD__(v36, 1);
    v38 = v36 + 1;
    if (v37)
    {
      goto LABEL_51;
    }

    *(v11 + 16) = v38;
  }

  while (v10 != v9);
LABEL_33:
  v39 = *(v79.n128_u64[0] + 16);
  if (v39)
  {
    v40 = (v79.n128_u64[0] + 40);
    v41 = &unk_280FDF000;
    v6.n128_u64[0] = 136315394;
    v79 = v6;
    v6.n128_u64[0] = 136315650;
    v78 = v6;
    v42 = v83;
    v82 = v11;
    do
    {
      v44 = *(v40 - 1);
      v43 = *v40;
      v45 = *(v11 + 16);

      if (v45 && (v46 = sub_222B8C9DC(v44, v43), (v47 & 1) != 0))
      {
        LODWORD(v84) = *(*(v11 + 56) + 4 * v46);
        if (v41[463] != -1)
        {
          swift_once();
        }

        v48 = sub_222C9431C();
        __swift_project_value_buffer(v48, qword_280FE2340);

        v49 = sub_222C942FC();
        v50 = sub_222C94A3C();

        if (os_log_type_enabled(v49, v50))
        {
          v51 = v42;
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v85 = v51;
          v86 = v53;
          *v52 = v78.n128_u32[0];
          v81(v80);

          v54 = sub_222C944EC();
          v56 = sub_222B437C0(v54, v55, &v86);

          *(v52 + 4) = v56;
          *(v52 + 12) = 2080;
          v57 = sub_222B437C0(v44, v43, &v86);

          *(v52 + 14) = v57;
          *(v52 + 22) = 2080;
          v58 = @"PLUSCONTACTSUGGESTIONOUTCOME_UNKNOWN";
          v59 = @"PLUSCONTACTSUGGESTIONOUTCOME_UNKNOWN";
          if (v84 <= 0xD)
          {
            v59 = off_2784BC090[v84];
            v58 = off_2784BC100[v84];
          }

          v60 = v59;
          v61 = v58;
          v62 = sub_222C9449C();
          v64 = v63;

          v65 = sub_222B437C0(v62, v64, &v86);

          *(v52 + 24) = v65;
          _os_log_impl(&dword_222B39000, v49, v50, "[%s] Suggestion Id=%s, Outcome=%s", v52, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x223DCA8C0](v53, -1, -1);
          MEMORY[0x223DCA8C0](v52, -1, -1);

          v11 = v82;
          v42 = v83;
          v41 = &unk_280FDF000;
          goto LABEL_36;
        }
      }

      else
      {
        if (v41[463] != -1)
        {
          swift_once();
        }

        v66 = sub_222C9431C();
        __swift_project_value_buffer(v66, qword_280FE2340);

        v49 = sub_222C942FC();
        v67 = sub_222C94A4C();

        if (os_log_type_enabled(v49, v67))
        {
          v68 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          v85 = v42;
          v86 = v69;
          *v68 = v79.n128_u32[0];
          v81(v80);

          v70 = sub_222C944EC();
          v72 = sub_222B437C0(v70, v71, &v86);
          v42 = v83;

          *(v68 + 4) = v72;
          *(v68 + 12) = 2080;
          v73 = sub_222B437C0(v44, v43, &v86);

          *(v68 + 14) = v73;
          v41 = &unk_280FDF000;
          _os_log_impl(&dword_222B39000, v49, v67, "[%s] Missing outcome for Suggestion Id=%s. SELF messages will not be emitted.", v68, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223DCA8C0](v69, -1, -1);
          v74 = v68;
          v11 = v82;
          MEMORY[0x223DCA8C0](v74, -1, -1);

          goto LABEL_36;
        }
      }

LABEL_36:
      v40 += 2;
      --v39;
    }

    while (v39);
  }
}

void *sub_222C55234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  if (*(*(a2 + 72) + 16))
  {
    MEMORY[0x28223BE20](a1);
    v21[2] = &v23;
    v21[3] = v7;
    return sub_222BDC03C(v8, v21, a1);
  }

  else
  {
    v10 = v5;
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v13 = sub_222C9431C();
    __swift_project_value_buffer(v13, qword_280FE2340);

    v14 = sub_222C942FC();
    v15 = sub_222C94A3C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v21[4] = v10;
      v22 = v17;
      *v16 = 136315138;
      a5(a4);
      v18 = sub_222C944EC();
      v20 = sub_222B437C0(v18, v19, &v22);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_222B39000, v14, v15, "[%s] No plus suggestions in entity prompt. Marking all candidates as unknown, contradictory.", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      MEMORY[0x223DCA8C0](v17, -1, -1);
      MEMORY[0x223DCA8C0](v16, -1, -1);
    }

    else
    {
    }

    return sub_222BC94A8(a1, 8);
  }
}

void *sub_222C55418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025028, &unk_222C96EC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  v8 = sub_222C555A8(a1, a3);
  v9 = *(*(a3 + 32) + 16);
  v10 = sub_222B79D2C();
  if (v10)
  {
    v11 = 5;
  }

  else
  {
    v11 = 7;
  }

  if (v10)
  {
    v12 = 3;
  }

  else
  {
    v12 = 6;
  }

  if (v8)
  {
    v11 = 4;
    v12 = 2;
  }

  if (v9 <= 1)
  {
    v13 = v12;
  }

  else
  {
    v13 = v11;
  }

  sub_222C5845C(a3, v7, type metadata accessor for EntityPromptClassification);
  v14 = type metadata accessor for EntityPromptClassification(0);
  (*(*(v14 - 8) + 56))(v7, 0, 1, v14);
  v15 = sub_222BC8C30(a1, v7);
  sub_222B4FCD4(v7, &qword_27D025028, &unk_222C96EC0);
  return sub_222BC91F0(a1, v13, v15);
}

uint64_t sub_222C555A8(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - v5;
  v7 = sub_222C9367C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A88, &unk_222C9A0C0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v26 - v12;
  v14 = type metadata accessor for PlusContactSuggestion(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PlusContactSuggestionRuntimeSummary(0);
  sub_222B5551C(a1 + *(v18 + 20), v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_222B4FCD4(v6, &unk_27D026290, &qword_222C96B40);
    (*(v15 + 56))(v13, 1, 1, v14);
LABEL_4:
    sub_222B4FCD4(v13, &qword_27D025A88, &unk_222C9A0C0);
    v21 = 0;
    return v21 & 1;
  }

  (*(v8 + 32))(v10, v6, v7);
  v19 = v2[5];
  v20 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v19);
  (*(v20 + 64))(v10, v19, v20);
  (*(v8 + 8))(v10, v7);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    goto LABEL_4;
  }

  sub_222C58524(v13, v17, type metadata accessor for PlusContactSuggestion);
  v22 = *(v27 + 48);
  if (v22)
  {
    v23 = &v17[*(v14 + 24)];
    if (*v23 == *(v27 + 40) && v22 == *(v23 + 1))
    {
      v21 = 1;
    }

    else
    {
      v21 = sub_222C951FC();
    }
  }

  else
  {
    v21 = 0;
  }

  sub_222C584C4(v17, type metadata accessor for PlusContactSuggestion);
  return v21 & 1;
}

uint64_t sub_222C55930(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025028, &unk_222C96EC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v28 - v5 + 24;
  v7 = type metadata accessor for PlusContactSuggestionRuntimeSummary(0);
  MEMORY[0x28223BE20](v7);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
  if (*(a1 + 16) == 1)
  {
    sub_222C5845C(a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0) + 24, type metadata accessor for PlusContactSuggestionRuntimeSummary);
    if (v10[*(v7 + 24)])
    {
      v11 = type metadata accessor for EntityPromptClassification(0);
      (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
      v12 = sub_222BC8C30(v10, v6);
      sub_222B4FCD4(v6, &qword_27D025028, &unk_222C96EC0);
      v13 = sub_222BC91F0(v10, 11, v12);
      v28[0] = v13;
      v14 = MEMORY[0x277D84F90];
      v29 = MEMORY[0x277D84F90];
      v15 = v13;
      v16 = v15;
      if (v13)
      {
        v17 = v15;
        MEMORY[0x223DC94A0]();
        if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_222C9475C();
        }

        sub_222C947AC();
        v14 = v29;
      }

      sub_222B4FCD4(v28, &qword_27D027978, qword_222CA5630);
      sub_222C584C4(v10, type metadata accessor for PlusContactSuggestionRuntimeSummary);
      return v14;
    }

    sub_222C584C4(v10, type metadata accessor for PlusContactSuggestionRuntimeSummary);
  }

  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v19 = sub_222C9431C();
  __swift_project_value_buffer(v19, qword_280FE2340);

  v20 = sub_222C942FC();
  v21 = sub_222C94A4C();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v28[1] = v2;
    v29 = v23;
    *v22 = 136315138;
    type metadata accessor for PhoneCallSuggestionOutcomeExtractor();

    v24 = sub_222C944EC();
    v26 = sub_222B437C0(v24, v25, &v29);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_222B39000, v20, v21, "[%s] Either found zero suggestions, or multiple suggestions included in the model output but no detected prompt. Marking all suggestions as unknown, contradictory outcomes.", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
    MEMORY[0x223DCA8C0](v23, -1, -1);
    MEMORY[0x223DCA8C0](v22, -1, -1);
  }

  return sub_222BC94A8(a1, 8);
}

void *sub_222C55D08(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v30 = a1;
  v4 = type metadata accessor for ResolvedPlusContactSuggestionRuntimeSummary(0) - 8;
  MEMORY[0x28223BE20](v4);
  v29 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v28 = &v25 - v7;
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - v10;
  v12 = *(a3 + 16);
  if (!v12)
  {
    return MEMORY[0x277D84F90];
  }

  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = a3 + v13;
  v26 = *(v9 + 72);
  v27 = v13;
  v15 = MEMORY[0x277D84F90];
  v16 = MEMORY[0x277D84F90];
  do
  {
    sub_222C5845C(v14, v11, type metadata accessor for ResolvedPlusContactSuggestionRuntimeSummary);
    if (v30(v11))
    {
      sub_222C5845C(v11, v28, type metadata accessor for ResolvedPlusContactSuggestionRuntimeSummary);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_222B4B880(0, v16[2] + 1, 1, v16);
      }

      v22 = v16[2];
      v21 = v16[3];
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        v18 = sub_222B4B880((v21 > 1), v22 + 1, 1, v16);
        v19 = v28;
        v16 = v18;
      }

      else
      {
        v18 = v16;
        v19 = v28;
      }
    }

    else
    {
      sub_222C5845C(v11, v29, type metadata accessor for ResolvedPlusContactSuggestionRuntimeSummary);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_222B4B880(0, v15[2] + 1, 1, v15);
      }

      v22 = v15[2];
      v24 = v15[3];
      v23 = v22 + 1;
      if (v22 >= v24 >> 1)
      {
        v18 = sub_222B4B880((v24 > 1), v22 + 1, 1, v15);
        v19 = v29;
        v15 = v18;
      }

      else
      {
        v18 = v15;
        v19 = v29;
      }
    }

    sub_222C584C4(v11, type metadata accessor for ResolvedPlusContactSuggestionRuntimeSummary);
    v18[2] = v23;
    v20 = v26;
    sub_222C58524(v19, v18 + v27 + v22 * v26, type metadata accessor for ResolvedPlusContactSuggestionRuntimeSummary);
    v14 += v20;
    --v12;
  }

  while (v12);
  return v15;
}

void *sub_222C55FF8(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v30 = a1;
  v4 = type metadata accessor for PlusContactSuggestionRuntimeSummary(0) - 8;
  MEMORY[0x28223BE20](v4);
  v29 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v28 = &v25 - v7;
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - v10;
  v12 = *(a3 + 16);
  if (!v12)
  {
    return MEMORY[0x277D84F90];
  }

  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = a3 + v13;
  v26 = *(v9 + 72);
  v27 = v13;
  v15 = MEMORY[0x277D84F90];
  v16 = MEMORY[0x277D84F90];
  do
  {
    sub_222C5845C(v14, v11, type metadata accessor for PlusContactSuggestionRuntimeSummary);
    if (v30(v11))
    {
      sub_222C5845C(v11, v28, type metadata accessor for PlusContactSuggestionRuntimeSummary);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_222B4BC8C(0, v16[2] + 1, 1, v16);
      }

      v22 = v16[2];
      v21 = v16[3];
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        v18 = sub_222B4BC8C((v21 > 1), v22 + 1, 1, v16);
        v19 = v28;
        v16 = v18;
      }

      else
      {
        v18 = v16;
        v19 = v28;
      }
    }

    else
    {
      sub_222C5845C(v11, v29, type metadata accessor for PlusContactSuggestionRuntimeSummary);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_222B4BC8C(0, v15[2] + 1, 1, v15);
      }

      v22 = v15[2];
      v24 = v15[3];
      v23 = v22 + 1;
      if (v22 >= v24 >> 1)
      {
        v18 = sub_222B4BC8C((v24 > 1), v22 + 1, 1, v15);
        v19 = v29;
        v15 = v18;
      }

      else
      {
        v18 = v15;
        v19 = v29;
      }
    }

    sub_222C584C4(v11, type metadata accessor for PlusContactSuggestionRuntimeSummary);
    v18[2] = v23;
    v20 = v26;
    sub_222C58524(v19, v18 + v27 + v22 * v26, type metadata accessor for PlusContactSuggestionRuntimeSummary);
    v14 += v20;
    --v12;
  }

  while (v12);
  return v15;
}

uint64_t sub_222C562E8()
{
  type metadata accessor for PhoneCallSuggestionOutcomeExtractor();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027970, &qword_222CA5628);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_280FDC480 = 91;
  unk_280FDC488 = 0xE100000000000000;
  return result;
}

uint64_t PhoneCallSuggestionOutcomeExtractor.__allocating_init(picsStore:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_222B405A0(a1, v2 + 16);
  return v2;
}

void *sub_222C563D8(uint64_t a1, uint64_t a2)
{
  v57 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025028, &unk_222C96EC0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v56 - v4;
  v6 = type metadata accessor for EntityPromptClassification(0);
  v58 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v62 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for FeaturisedTurn(0);
  MEMORY[0x28223BE20](v61);
  v60 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v56 - v10;
  MEMORY[0x28223BE20](v12);
  v15 = &v56 - v14;
  v16 = *(a1 + 16);
  v56 = v13;
  if (v16)
  {
    v17 = *(v13 + 72);
    v59 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v18 = a1 + v59;
    v19 = MEMORY[0x277D84F90];
    do
    {
      sub_222C5845C(v18, v15, type metadata accessor for FeaturisedTurn);
      if (sub_222B42478(*&v15[*(v61 + 24)]))
      {

        sub_222C58524(v15, v11, type metadata accessor for FeaturisedTurn);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v64[0] = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_222B4C3D4(0, *(v19 + 16) + 1, 1);
          v19 = *&v64[0];
        }

        v22 = *(v19 + 16);
        v21 = *(v19 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_222B4C3D4((v21 > 1), v22 + 1, 1);
          v19 = *&v64[0];
        }

        *(v19 + 16) = v22 + 1;
        sub_222C58524(v11, v19 + v59 + v22 * v17, type metadata accessor for FeaturisedTurn);
      }

      else
      {
        sub_222C584C4(v15, type metadata accessor for FeaturisedTurn);
      }

      v18 += v17;
      --v16;
    }

    while (v16);
  }

  else
  {
    v19 = MEMORY[0x277D84F90];
  }

  v61 = v19;
  v23 = *(v57 + 16);
  if (v23)
  {
    v24 = v57 + 32;
    v25 = (v58 + 56);
    v26 = (v58 + 48);
    v27 = MEMORY[0x277D84F90];
    do
    {
      sub_222B43E3C(v24, v64);
      sub_222B405A0(v64, v63);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C58, &unk_222C96A30);
      v28 = swift_dynamicCast();
      (*v25)(v5, v28 ^ 1u, 1, v6);
      if ((*v26)(v5, 1, v6) == 1)
      {
        sub_222B4FCD4(v5, &qword_27D025028, &unk_222C96EC0);
      }

      else
      {
        sub_222C58524(v5, v62, type metadata accessor for EntityPromptClassification);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_222B49F90(0, v27[2] + 1, 1, v27);
        }

        v30 = v27[2];
        v29 = v27[3];
        if (v30 >= v29 >> 1)
        {
          v27 = sub_222B49F90((v29 > 1), v30 + 1, 1, v27);
        }

        v27[2] = v30 + 1;
        sub_222C58524(v62, v27 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v30, type metadata accessor for EntityPromptClassification);
      }

      v24 += 40;
      --v23;
    }

    while (v23);
  }

  else
  {
    v27 = MEMORY[0x277D84F90];
  }

  if (qword_280FDFE78 != -1)
  {
    goto LABEL_58;
  }

  while (1)
  {
    v31 = sub_222C9431C();
    __swift_project_value_buffer(v31, qword_280FE2340);

    v32 = sub_222C942FC();
    v33 = sub_222C94A3C();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *&v64[0] = v35;
      *v34 = 136315394;
      if (qword_280FDC478 != -1)
      {
        swift_once();
      }

      *(v34 + 4) = sub_222B437C0(qword_280FDC480, unk_280FDC488, v64);
      *(v34 + 12) = 2048;
      *(v34 + 14) = *(v61 + 16);

      _os_log_impl(&dword_222B39000, v32, v33, "%s Found %ld turns with PICS suggestions reported.", v34, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v35);
      MEMORY[0x223DCA8C0](v35, -1, -1);
      MEMORY[0x223DCA8C0](v34, -1, -1);
    }

    else
    {
    }

    v36 = sub_222C942FC();
    v37 = sub_222C94A3C();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *&v64[0] = v39;
      *v38 = 136315394;
      if (qword_280FDC478 != -1)
      {
        swift_once();
      }

      *(v38 + 4) = sub_222B437C0(qword_280FDC480, unk_280FDC488, v64);
      *(v38 + 12) = 2048;
      *(v38 + 14) = v27[2];

      _os_log_impl(&dword_222B39000, v36, v37, "%s Found %ld entity prompts in the session.", v38, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v39);
      MEMORY[0x223DCA8C0](v39, -1, -1);
      MEMORY[0x223DCA8C0](v38, -1, -1);
    }

    else
    {
    }

    v40 = *(v61 + 16);
    if (!v40)
    {
      break;
    }

    v41 = v61 + ((*(v56 + 80) + 32) & ~*(v56 + 80));
    v42 = *(v56 + 72);
    v43 = MEMORY[0x277D84F90];
    while (1)
    {
      v44 = v60;
      sub_222C5845C(v41, v60, type metadata accessor for FeaturisedTurn);
      v45 = sub_222C56CD4(v44, v27);
      sub_222C584C4(v44, type metadata accessor for FeaturisedTurn);
      v46 = *(v45 + 16);
      v47 = v43[2];
      v48 = v47 + v46;
      if (__OFADD__(v47, v46))
      {
        break;
      }

      v49 = swift_isUniquelyReferenced_nonNull_native();
      if (v49 && v48 <= v43[3] >> 1)
      {
        if (*(v45 + 16))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v47 <= v48)
        {
          v50 = v47 + v46;
        }

        else
        {
          v50 = v47;
        }

        v43 = sub_222B4B674(v49, v50, 1, v43);
        if (*(v45 + 16))
        {
LABEL_47:
          v51 = (v43[3] >> 1) - v43[2];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024DE8, &qword_222CA55A0);
          if (v51 < v46)
          {
            goto LABEL_56;
          }

          swift_arrayInitWithCopy();

          if (v46)
          {
            v52 = v43[2];
            v53 = __OFADD__(v52, v46);
            v54 = v52 + v46;
            if (v53)
            {
              goto LABEL_57;
            }

            v43[2] = v54;
          }

          goto LABEL_37;
        }
      }

      if (v46)
      {
        goto LABEL_55;
      }

LABEL_37:
      v41 += v42;
      if (!--v40)
      {

        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    swift_once();
  }

  v43 = MEMORY[0x277D84F90];
LABEL_53:

  return v43;
}

uint64_t sub_222C56CD4(uint64_t a1, uint64_t a2)
{
  v118 = a2;
  v114 = *v2;
  v4 = type metadata accessor for PlusContactSuggestionRuntimeSummary(0);
  v115 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v122 = &v110 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FeaturisedTurn(0);
  MEMORY[0x28223BE20](v6);
  v120 = &v110 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025028, &unk_222C96EC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v110 - v9;
  v11 = type metadata accessor for EntityPromptClassification(0);
  v117 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v113 = &v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v110 - v14;
  v16 = sub_222C9367C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v110 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v110 - v21;
  FeaturisedTurn.getPlusId()(v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_222B4FCD4(v15, &unk_27D026290, &qword_222C96B40);
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v23 = sub_222C9431C();
    __swift_project_value_buffer(v23, qword_280FE2340);
    v24 = sub_222C942FC();
    v25 = sub_222C94A4C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v123[0] = v27;
      *v26 = 136315138;
      if (qword_280FDC478 != -1)
      {
        swift_once();
      }

      *(v26 + 4) = sub_222B437C0(qword_280FDC480, unk_280FDC488, v123);
      _os_log_impl(&dword_222B39000, v24, v25, "%s Missing PLUS Id for turn with PICS suggestions. SELF logs cannot be emitted for these suggestions.", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v27);
      MEMORY[0x223DCA8C0](v27, -1, -1);
      MEMORY[0x223DCA8C0](v26, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  v29 = *(v17 + 32);
  v116 = v16;
  v29(v22, v15, v16);
  v30 = *(a1 + *(v6 + 24));
  v31 = sub_222B42A30(v30);
  v119 = v17;
  v32 = a1;
  if (v31 != 2 && (v31 & 1) == 0)
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v43 = sub_222C9431C();
    __swift_project_value_buffer(v43, qword_280FE2340);
    v44 = sub_222C942FC();
    v45 = sub_222C94A3C();
    v46 = os_log_type_enabled(v44, v45);
    v47 = v116;
    if (v46)
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v123[0] = v49;
      *v48 = 136315138;
      if (qword_280FDC478 != -1)
      {
        swift_once();
      }

      *(v48 + 4) = sub_222B437C0(qword_280FDC480, unk_280FDC488, v123);
      _os_log_impl(&dword_222B39000, v44, v45, "%s Runtime suggestions is not enabled for the turn, no outcomes will be extracted", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v49);
      MEMORY[0x223DCA8C0](v49, -1, -1);
      MEMORY[0x223DCA8C0](v48, -1, -1);
    }

    (*(v119 + 8))(v22, v47);
    return MEMORY[0x277D84F90];
  }

  v33 = sub_222B42478(v30);
  v34 = MEMORY[0x277D84F90];
  if (v33)
  {
    v35 = v33;
  }

  else
  {
    v35 = MEMORY[0x277D84F90];
  }

  v36 = sub_222B41648(v30);
  v112 = v22;
  if (v36)
  {
    v37 = v36;
    v123[0] = 0xD000000000000023;
    v123[1] = 0x8000000222CA85F0;
    MEMORY[0x28223BE20](v36);
    *(&v110 - 2) = v123;
    v38 = sub_222B42F4C(sub_222B5EBA4, (&v110 - 4), v37);

    if (v38)
    {
      v40 = v34;
      MEMORY[0x28223BE20](v39);
      *(&v110 - 2) = v32;
      sub_222B4128C(sub_222C583E4, v118, v10);
      v41 = (*(v117 + 48))(v10, 1, v11);
      v118 = 0;
      if (v41 == 1)
      {
        sub_222B4FCD4(v10, &qword_27D025028, &unk_222C96EC0);
        v42 = sub_222C55930(v35);
      }

      else
      {
        v68 = v10;
        v69 = v113;
        v70 = sub_222C58524(v68, v113, type metadata accessor for EntityPromptClassification);
        MEMORY[0x28223BE20](v70);
        *(&v110 - 4) = v121;
        *(&v110 - 3) = v69;
        *(&v110 - 2) = v114;
        v71 = sub_222C55FF8(sub_222C58404, (&v110 - 6), v35);
        v74 = v32;
        v75 = sub_222C55234(v72, v69, sub_222C5858C, v73, type metadata accessor for PhoneCallSuggestionOutcomeExtractor);

        v76 = sub_222C55930(v71);

        v123[0] = v75;
        v32 = v74;
        sub_222B49C20(v76);
        v42 = v123[0];
        sub_222C584C4(v69, type metadata accessor for EntityPromptClassification);
      }

      v77 = v116;
      v78 = *(v35 + 16);
      if (v78)
      {
        v117 = v32;
        v123[0] = v40;
        sub_222B4C418(0, v78, 0);
        v79 = v123[0];
        v80 = *(v115 + 80);
        v111 = v35;
        v81 = v35 + ((v80 + 32) & ~v80);
        v82 = *(v115 + 72);
        do
        {
          v83 = v122;
          sub_222C5845C(v81, v122, type metadata accessor for PlusContactSuggestionRuntimeSummary);
          v84 = sub_222C9360C();
          v86 = v85;
          sub_222C584C4(v83, type metadata accessor for PlusContactSuggestionRuntimeSummary);
          v123[0] = v79;
          v88 = *(v79 + 16);
          v87 = *(v79 + 24);
          if (v88 >= v87 >> 1)
          {
            sub_222B4C418((v87 > 1), v88 + 1, 1);
            v79 = v123[0];
          }

          *(v79 + 16) = v88 + 1;
          v89 = v79 + 16 * v88;
          *(v89 + 32) = v84;
          *(v89 + 40) = v86;
          v81 += v82;
          --v78;
        }

        while (v78);

        v77 = v116;
        v32 = v117;
      }

      else
      {

        v79 = MEMORY[0x277D84F90];
      }

      v90 = v120;
      v91 = v42;
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v92 = sub_222C9431C();
      __swift_project_value_buffer(v92, qword_280FE2340);
      sub_222C5845C(v32, v90, type metadata accessor for FeaturisedTurn);

      v93 = sub_222C942FC();
      v94 = sub_222C94A3C();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = v77;
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        v123[0] = v97;
        *v96 = 136315906;
        if (qword_280FDC478 != -1)
        {
          swift_once();
        }

        *(v96 + 4) = sub_222B437C0(qword_280FDC480, unk_280FDC488, v123);
        *(v96 + 12) = 2048;
        if (v42 >> 62)
        {
          v98 = sub_222C94C6C();
        }

        else
        {
          v98 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v96 + 14) = v98;

        *(v96 + 22) = 2048;
        *(v96 + 24) = *(v79 + 16);

        *(v96 + 32) = 2080;
        sub_222B9E5D0();
        v99 = v120;
        v100 = sub_222C9517C();
        v102 = v101;
        sub_222C584C4(v99, type metadata accessor for FeaturisedTurn);
        v103 = sub_222B437C0(v100, v102, v123);

        *(v96 + 34) = v103;
        _os_log_impl(&dword_222B39000, v93, v94, "%s Generated outcomes for %ld/%ld suggestions in Turn id=%s", v96, 0x2Au);
        swift_arrayDestroy();
        v104 = v97;
        v77 = v95;
        MEMORY[0x223DCA8C0](v104, -1, -1);
        MEMORY[0x223DCA8C0](v96, -1, -1);
      }

      else
      {

        sub_222C584C4(v90, type metadata accessor for FeaturisedTurn);
      }

      sub_222C54A58(v91, v79, v105, type metadata accessor for PhoneCallSuggestionOutcomeExtractor);

      MEMORY[0x28223BE20](v106);
      v107 = v112;
      *(&v110 - 2) = v112;
      sub_222C63194(sub_222C092B8, (&v110 - 4), v91);
      v109 = v108;

      (*(v119 + 8))(v107, v77);
      return v109;
    }

    v22 = v112;
  }

  v50 = v116;
  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v51 = sub_222C9431C();
  __swift_project_value_buffer(v51, qword_280FE2340);
  v52 = v119;
  (*(v119 + 16))(v19, v22, v50);
  v53 = sub_222C942FC();
  v54 = sub_222C94A3C();
  v55 = os_log_type_enabled(v53, v54);
  v111 = v35;
  if (v55)
  {
    v122 = 0;
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v123[0] = v57;
    *v56 = 136315394;
    if (qword_280FDC478 != -1)
    {
      swift_once();
    }

    *(v56 + 4) = sub_222B437C0(qword_280FDC480, unk_280FDC488, v123);
    *(v56 + 12) = 2080;
    sub_222B9E5D0();
    v58 = sub_222C9517C();
    v60 = v59;
    v61 = *(v119 + 8);
    v61(v19, v50);
    v62 = sub_222B437C0(v58, v60, v123);

    *(v56 + 14) = v62;
    _os_log_impl(&dword_222B39000, v53, v54, "%s Turn with PLUS ID %s does not have a phone call task type. Marking all suggestion outcomes as unknown.", v56, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DCA8C0](v57, -1, -1);
    MEMORY[0x223DCA8C0](v56, -1, -1);
  }

  else
  {

    v61 = *(v52 + 8);
    v61(v19, v50);
  }

  v63 = sub_222BC94A8(v111, 0);

  MEMORY[0x28223BE20](v64);
  v65 = v112;
  *(&v110 - 2) = v112;
  sub_222C63194(sub_222C0A208, (&v110 - 4), v63);
  v67 = v66;

  v61(v65, v50);
  return v67;
}

uint64_t sub_222C57BEC(void *a1, uint64_t a2)
{
  v3 = *a1 == 0xD000000000000023 && 0x8000000222CA85F0 == a1[1];
  if (!v3 && (sub_222C951FC() & 1) == 0)
  {
    return 0;
  }

  v4 = a1[2] == 0x73746361746E6F63 && a1[3] == 0xE800000000000000;
  if (!v4 && (sub_222C951FC() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for EntityPromptClassification(0);
  return sub_222C9362C() & 1;
}

uint64_t sub_222C57CB8(uint64_t a1, void *a2, uint64_t a3)
{
  v40 = a3;
  v41 = a2;
  v4 = type metadata accessor for PlusContactSuggestionRuntimeSummary(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v43 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v39 - v8;
  v10 = sub_222C9367C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A88, &unk_222C9A0C0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v39 - v15;
  v17 = type metadata accessor for PlusContactSuggestion(0);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v5 + 28);
  v42 = a1;
  sub_222B5551C(a1 + v21, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_222B4FCD4(v9, &unk_27D026290, &qword_222C96B40);
    (*(v18 + 56))(v16, 1, 1, v17);
LABEL_4:
    sub_222B4FCD4(v16, &qword_27D025A88, &unk_222C9A0C0);
    goto LABEL_5;
  }

  (*(v11 + 32))(v13, v9, v10);
  v22 = v41[5];
  v23 = v41[6];
  __swift_project_boxed_opaque_existential_1(v41 + 2, v22);
  (*(v23 + 64))(v13, v22, v23);
  (*(v11 + 8))(v13, v10);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    goto LABEL_4;
  }

  v35 = sub_222C58524(v16, v20, type metadata accessor for PlusContactSuggestion);
  v36 = *(v40 + 32);
  v37 = &v20[*(v17 + 24)];
  v38 = v37[1];
  v44[0] = *v37;
  v44[1] = v38;
  MEMORY[0x28223BE20](v35);
  *(&v39 - 2) = v44;

  LOBYTE(v36) = sub_222B42F4C(sub_222B5EEB0, (&v39 - 4), v36);
  sub_222C584C4(v20, type metadata accessor for PlusContactSuggestion);

  if (v36)
  {
    return 1;
  }

LABEL_5:
  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v24 = sub_222C9431C();
  __swift_project_value_buffer(v24, qword_280FE2340);
  v25 = v43;
  sub_222C5845C(v42, v43, type metadata accessor for PlusContactSuggestionRuntimeSummary);
  v26 = sub_222C942FC();
  v27 = sub_222C94A4C();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v44[0] = v29;
    *v28 = 136315394;
    if (qword_280FDC478 != -1)
    {
      swift_once();
    }

    *(v28 + 4) = sub_222B437C0(qword_280FDC480, unk_280FDC488, v44);
    *(v28 + 12) = 2080;
    v30 = sub_222C9360C();
    v32 = v31;
    sub_222C584C4(v25, type metadata accessor for PlusContactSuggestionRuntimeSummary);
    v33 = sub_222B437C0(v30, v32, v44);

    *(v28 + 14) = v33;
    _os_log_impl(&dword_222B39000, v26, v27, "%s Suggestion was not in the prompt entities. Falling back to non-prompt resolution. suggestionId=%s", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DCA8C0](v29, -1, -1);
    MEMORY[0x223DCA8C0](v28, -1, -1);
  }

  else
  {

    sub_222C584C4(v25, type metadata accessor for PlusContactSuggestionRuntimeSummary);
  }

  return 0;
}

uint64_t PhoneCallSuggestionOutcomeExtractor.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_222C582FC@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for PhoneCallSuggestionOutcomeExtractor();
  v4 = swift_allocObject();
  result = sub_222B405A0(a1, v4 + 16);
  *a2 = v4;
  return result;
}

void *sub_222C58428@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_222C55418(a1, **(v2 + 16), *(v2 + 24));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_222C5845C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_222C584C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_222C58524(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

BOOL sub_222C585B4(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  sub_222C952FC();
  MEMORY[0x223DCA0B0](v3);
  v4 = sub_222C9534C();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

unint64_t sub_222C5868C()
{
  v1 = v0;
  v2 = sub_222C5884C();
  v3 = sub_222B62CD4(MEMORY[0x277D84F90]);
  v4 = type metadata accessor for MediaGroundTruth(0);
  v5 = (v1 + v4[8]);
  v6 = v5[2];
  v35[1] = v5[1];
  v35[2] = v6;
  v36 = *(v5 + 24);
  v35[0] = *v5;
  v7 = v4[5];
  v8 = *(v1 + v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v31 = v3;
  sub_222BAA434(v2 | (v8 << 8), v35, isUniquelyReferenced_nonNull_native);
  v10 = *(v1 + v4[7]);
  if (*(v10 + 16))
  {
    v11 = *(v10 + 48);
    v31 = *(v10 + 32);
    v32 = v11;
    v33 = *(v10 + 64);
    v12 = v5[1];
    v27[0] = *v5;
    v27[1] = v12;
    v14 = *v5;
    v13 = v5[1];
    v27[2] = v5[2];
    v34 = *(v10 + 80);
    v28 = *(v5 + 24);
    v23 = v14;
    v15 = v5[2];
    v24 = v13;
    v25 = v15;
    v26 = *(v5 + 24);
    v21[0] = v31;
    v21[1] = v32;
    v21[2] = v33;
    v22 = v34;
    sub_222B554C0(&v31, v20);
    sub_222B554C0(v27, v20);
    v16 = _s28SiriPrivateLearningInference14MediaReferenceV2eeoiySbAC_ACtFZ_0(&v23, v21);
    v29[0] = v23;
    v29[1] = v24;
    v29[2] = v25;
    v30 = v26;
    sub_222B55A80(v29);
    if (v16)
    {
      sub_222B55A80(&v31);
    }

    else
    {
      v17 = *(v1 + v7);
      v18 = swift_isUniquelyReferenced_nonNull_native();
      *&v23 = v3;
      sub_222BAA434((v17 << 8) | 5u, &v31, v18);
      sub_222B55A80(&v31);
      return v23;
    }
  }

  return v3;
}

uint64_t sub_222C5884C()
{
  v1 = sub_222BAF88C(&unk_2836073F8);
  v2 = type metadata accessor for MediaGroundTruth(0);
  v3 = sub_222C585B4(*(v0 + v2[5]), v1);

  if (v3)
  {
    return 4;
  }

  v4 = *(v0 + v2[7]);
  if (v4[2] && ((v5 = (v0 + v2[8]), *v5 == v4[4]) ? (v6 = v5[1] == v4[5]) : (v6 = 0), v6 || (sub_222C951FC() & 1) != 0))
  {
    return 4;
  }

  else
  {
    return 3;
  }
}

unint64_t sub_222C588F0()
{
  v1 = type metadata accessor for MediaGroundTruth(0);
  v2 = (v0 + *(v1 + 32));
  v3 = *(v0 + *(v1 + 28));
  if (v3[2] && (*v2 == v3[4] ? (v4 = *(v2 + 1) == v3[5]) : (v4 = 0), v4 || (sub_222C951FC() & 1) != 0))
  {
    v5 = MEMORY[0x277D84F90];

    return sub_222B62B74(v5);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027988, &qword_222CA56C8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_222C97C40;
    v16 = *(v2 + 24);
    v8 = v16;
    v9 = v2[2];
    v14 = v2[1];
    v15 = v9;
    v13 = *v2;
    v10 = v13;
    *(inited + 48) = v14;
    *(inited + 64) = v9;
    *(inited + 80) = v8;
    *(inited + 32) = v10;
    sub_222B554C0(&v13, v12);
    *(inited + 88) = sub_222BAF404(&unk_2836073D0);
    v11 = sub_222B62B74(inited);
    swift_setDeallocating();
    sub_222C58B10(inited + 32);
    return v11;
  }
}

uint64_t sub_222C58A24(uint64_t a1)
{
  result = sub_222C58AC4(&qword_27D027980, type metadata accessor for MediaGroundTruth, &unk_222CA56AC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_222C58AC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_222C58B10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025440, &qword_222C98660);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ContactSuggestionOutcomeReportedOfflineEmitter.__allocating_init(logTarget:)(__int128 *a1)
{
  v2 = swift_allocObject();
  *(v2 + 24) = MEMORY[0x277D84F98];
  type metadata accessor for SELFEventLogEmitters();
  v3 = swift_allocObject();
  sub_222B505F4(a1, v3 + 16);
  *(v2 + 16) = v3;
  return v2;
}

uint64_t ContactSuggestionOutcomeReportedOfflineEmitter.init(logTarget:)(__int128 *a1)
{
  *(v1 + 24) = MEMORY[0x277D84F98];
  type metadata accessor for SELFEventLogEmitters();
  v3 = swift_allocObject();
  sub_222B505F4(a1, v3 + 16);
  *(v1 + 16) = v3;
  return v1;
}

uint64_t sub_222C58C4C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024DE8, &qword_222CA55A0);
  v70 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v64 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = v64 - v13;
  v82 = sub_222C9367C();
  v15 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v71 = v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v74 = v64 - v18;
  v19 = a3[3];
  v20 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v19);
  v21 = (*(v20 + 16))(a1, a2, v19, v20);
  if (qword_280FDFE78 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v22 = sub_222C9431C();
    __swift_project_value_buffer(v22, qword_280FE2340);

    v23 = sub_222C942FC();
    v24 = sub_222C94A3C();
    v25 = os_log_type_enabled(v23, v24);
    v67 = v14;
    if (v25)
    {
      v26 = swift_slowAlloc();
      *v26 = 134217984;
      *(v26 + 4) = *(v21 + 16);

      _os_log_impl(&dword_222B39000, v23, v24, "[ContactSuggestionOutcomeReportedOfflineEmitter] Identified %ld outcomes from PLUS contact suggestions made at runtime.", v26, 0xCu);
      MEMORY[0x223DCA8C0](v26, -1, -1);
    }

    else
    {
    }

    v27 = v82;
    v28 = v71;
    v14 = sub_222C5AA78(v21);
    v64[0] = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025460, &qword_222C98680);
    v29 = sub_222C94F6C();
    v30 = v29;
    v31 = 0;
    v32 = *(v14 + 64);
    v66 = (v14 + 64);
    v76 = v14;
    v33 = 1 << *(v14 + 32);
    v34 = -1;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    v35 = v34 & v32;
    v65 = (v33 + 63) >> 6;
    v72 = v29 + 64;
    v73 = v15 + 2;
    v69 = v15;
    v68 = v29;
    v84 = v15 + 4;
    if (!v35)
    {
      break;
    }

    while (1)
    {
      v36 = v28;
      v77 = (v35 - 1) & v35;
      v78 = v31;
      v37 = __clz(__rbit64(v35)) | (v31 << 6);
LABEL_14:
      v41 = v76;
      v42 = v76[6];
      v43 = v15[2];
      v79 = v15[9] * v37;
      v44 = v74;
      v43(v74, v42 + v79, v27);
      v45 = v41[7];
      v80 = v37;
      v46 = *(v45 + 8 * v37);
      v28 = v36;
      v47 = v46;
      v81 = v15[4];
      v81(v28, v44, v27);
      v48 = *(v47 + 16);
      if (v48)
      {
        v86 = MEMORY[0x277D84F90];

        sub_222C94E1C();
        v49 = *(v70 + 80);
        v75 = v47;
        v50 = v47 + ((v49 + 32) & ~v49);
        v51 = v67;
        v83 = *(v70 + 72);
        v52 = v81;
        do
        {
          sub_222C5AF18(v50, v51);
          sub_222C5AF18(v51, v11);
          v53 = *(v6 + 48);
          v54 = v6;
          v55 = *&v11[v53];
          v52(v8, v11, v27);
          *&v8[v53] = v55;
          v56 = v55;
          sub_222B4FCD4(v8, &qword_27D024DE8, &qword_222CA55A0);
          sub_222B4FCD4(v51, &qword_27D024DE8, &qword_222CA55A0);
          sub_222C94DEC();
          sub_222C94E2C();
          v27 = v82;
          v6 = v54;
          sub_222C94E3C();
          sub_222C94DFC();
          v50 += v83;
          --v48;
        }

        while (v48);

        v21 = v86;
        v15 = v69;
        v28 = v71;
        v30 = v68;
      }

      else
      {
        v21 = MEMORY[0x277D84F90];
      }

      v14 = v80;
      *(v72 + ((v80 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v80;
      v81((v30[6] + v79), v28, v27);
      *(v30[7] + 8 * v14) = v21;
      v57 = v30[2];
      v58 = __OFADD__(v57, 1);
      v59 = v57 + 1;
      if (v58)
      {
        break;
      }

      v30[2] = v59;
      v35 = v77;
      v31 = v78;
      if (!v77)
      {
        goto LABEL_9;
      }
    }

LABEL_25:
    __break(1u);
LABEL_26:
    swift_once();
  }

LABEL_9:
  v38 = v31;
  while (1)
  {
    v39 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v39 >= v65)
    {
      break;
    }

    v40 = v66[v39];
    ++v38;
    if (v40)
    {
      v36 = v28;
      v77 = (v40 - 1) & v40;
      v78 = v39;
      v37 = __clz(__rbit64(v40)) | (v39 << 6);
      goto LABEL_14;
    }
  }

  v60 = v64[1];
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v85 = *(v60 + 24);
  *(v60 + 24) = 0x8000000000000000;
  v62 = v64[0];
  sub_222C5AF88(v30, sub_222C5A1FC, 0, isUniquelyReferenced_nonNull_native, &v85);

  if (v62)
  {

    *(v60 + 24) = v85;

    __break(1u);
  }

  else
  {
    *(v60 + 24) = v85;
    return swift_endAccess();
  }

  return result;
}

void sub_222C59328()
{
  v1 = sub_222C9367C();
  v102 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v95 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v116 = &v95 - v5;
  MEMORY[0x28223BE20](v6);
  v101 = &v95 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027990, &qword_222CA56D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v106 = &v95 - v12;
  swift_beginAccess();
  v99 = v0;
  if (*(*(v0 + 24) + 16))
  {
    v104 = v3;
    if (qword_280FDFE78 != -1)
    {
LABEL_112:
      swift_once();
    }

    v13 = sub_222C9431C();
    v103 = __swift_project_value_buffer(v13, qword_280FE2340);
    v14 = sub_222C942FC();
    v15 = sub_222C94A3C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_222B39000, v14, v15, "[ContactSuggestionOutcomeReportedOfflineEmitter] Emitting ContactSuggestionOutcomeReported messages to SELF", v16, 2u);
      MEMORY[0x223DCA8C0](v16, -1, -1);
    }

    v17 = *(v99 + 24);
    v18 = *(v17 + 64);
    v105 = v17 + 64;
    v19 = 1 << *(v17 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & v18;
    v96 = (v19 + 63) >> 6;
    v109 = (v102 + 16);
    v110 = (v102 + 32);
    v114 = (v102 + 8);
    v100 = v17;

    v22 = 0;
    *&v23 = 136315394;
    v97 = v23;
    v107 = v1;
    v108 = v10;
    while (1)
    {
      if (!v21)
      {
        if (v96 <= v22 + 1)
        {
          v25 = v22 + 1;
        }

        else
        {
          v25 = v96;
        }

        v26 = v25 - 1;
        while (1)
        {
          v24 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            break;
          }

          if (v24 >= v96)
          {
            v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027998, &qword_222CA56D8);
            (*(*(v44 - 8) + 56))(v10, 1, 1, v44);
            v112 = 0;
            v113 = v26;
            goto LABEL_20;
          }

          v21 = *(v105 + 8 * v24);
          ++v22;
          if (v21)
          {
            v113 = v24;
            goto LABEL_19;
          }
        }

LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
LABEL_109:
        __break(1u);
LABEL_110:
        __break(1u);
LABEL_111:
        __break(1u);
        goto LABEL_112;
      }

      v113 = v22;
      v24 = v22;
LABEL_19:
      v112 = (v21 - 1) & v21;
      v27 = __clz(__rbit64(v21)) | (v24 << 6);
      v28 = v100;
      v30 = v101;
      v29 = v102;
      (*(v102 + 16))(v101, *(v100 + 48) + *(v102 + 72) * v27, v1);
      v31 = *(*(v28 + 56) + 8 * v27);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027998, &qword_222CA56D8);
      v33 = *(v32 + 48);
      v34 = *(v29 + 32);
      v10 = v108;
      v34(v108, v30, v1);
      *(v10 + v33) = v31;
      (*(*(v32 - 8) + 56))(v10, 0, 1, v32);

LABEL_20:
      v35 = v106;
      sub_222B723A4(v10, v106, &qword_27D027990, &qword_222CA56D0);
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027998, &qword_222CA56D8);
      if ((*(*(v36 - 8) + 48))(v35, 1, v36) == 1)
      {

        v94 = sub_222B63E7C(MEMORY[0x277D84F90]);
        *(v99 + 24) = v94;

        return;
      }

      v37 = *(v35 + *(v36 + 48));
      (*v110)(v116, v35, v1);
      v118 = MEMORY[0x277D84F90];
      v38 = v37 >> 62;
      if (v37 >> 62)
      {
        v10 = sub_222C94C6C();
        if (v10)
        {
LABEL_23:
          v39 = 0;
          v1 = v37 & 0xC000000000000001;
          do
          {
            if (v1)
            {
              v40 = MEMORY[0x223DC9B30](v39, v37);
            }

            else
            {
              if (v39 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_105;
              }

              v40 = *(v37 + 8 * v39 + 32);
            }

            v41 = v40;
            v42 = v39 + 1;
            if (__OFADD__(v39, 1))
            {
              __break(1u);
LABEL_105:
              __break(1u);
              goto LABEL_106;
            }

            if ([v40 contactSuggestionOutcome])
            {
              sub_222C94DEC();
              sub_222C94E2C();
              sub_222C94E3C();
              sub_222C94DFC();
            }

            else
            {
            }

            ++v39;
          }

          while (v42 != v10);
          v43 = v118;
          v1 = v107;
          if ((v118 & 0x8000000000000000) == 0)
          {
            goto LABEL_38;
          }

          goto LABEL_41;
        }
      }

      else
      {
        v10 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v10)
        {
          goto LABEL_23;
        }
      }

      v43 = MEMORY[0x277D84F90];
      if ((MEMORY[0x277D84F90] & 0x8000000000000000) == 0)
      {
LABEL_38:
        if ((v43 & 0x4000000000000000) == 0)
        {
          if (*(v43 + 16))
          {
            goto LABEL_40;
          }

          goto LABEL_42;
        }
      }

LABEL_41:
      if (sub_222C94C6C())
      {
LABEL_40:

        v10 = v104;
        v45 = &unk_2784BC000;
        goto LABEL_64;
      }

LABEL_42:

      if ((v10 & 0x8000000000000000) != 0)
      {
        v10 = 1;
        if (!v38)
        {
LABEL_44:
          v46 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_48;
        }
      }

      else
      {
        v10 = v10 != 0;
        if (!v38)
        {
          goto LABEL_44;
        }
      }

      if (sub_222C94C6C() < 0)
      {
        goto LABEL_108;
      }

      v46 = sub_222C94C6C();
LABEL_48:
      if (v46 < v10)
      {
        goto LABEL_109;
      }

      if ((v37 & 0xC000000000000001) != 0 && v10)
      {
        sub_222C5B2F4();

        sub_222C94D6C();
      }

      else
      {
      }

      if (v38)
      {
        v48 = sub_222C94F5C();
        v49 = v50;
        v47 = v51;
        v10 = v52;

        v45 = &unk_2784BC000;
        if ((v10 & 1) == 0)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v47 = 0;
        v48 = v37 & 0xFFFFFFFFFFFFFF8;
        v49 = (v37 & 0xFFFFFFFFFFFFFF8) + 32;
        v10 = (2 * v10) | 1;
        v45 = &unk_2784BC000;
        if ((v10 & 1) == 0)
        {
          goto LABEL_57;
        }
      }

      sub_222C9520C();
      swift_unknownObjectRetain_n();
      v54 = swift_dynamicCastClass();
      if (!v54)
      {
        swift_unknownObjectRelease();
        v54 = MEMORY[0x277D84F90];
      }

      v55 = *(v54 + 16);

      if (__OFSUB__(v10 >> 1, v47))
      {
        goto LABEL_111;
      }

      if (v55 != (v10 >> 1) - v47)
      {
        swift_unknownObjectRelease_n();
LABEL_57:
        sub_222C4F1AC(v48, v49, v47, v10);
        v43 = v53;
        swift_unknownObjectRelease();
        v10 = v104;
        goto LABEL_64;
      }

      v43 = swift_dynamicCastClass();
      swift_unknownObjectRelease_n();
      v10 = v104;
      if (!v43)
      {
        swift_unknownObjectRelease();
        v43 = MEMORY[0x277D84F90];
      }

LABEL_64:
      (*v109)(v10, v116, v1);

      v56 = sub_222C942FC();
      v57 = sub_222C94A3C();

      v58 = v43 >> 62;
      if (!os_log_type_enabled(v56, v57))
      {

        v111 = *v114;
        v111(v10, v1);
        goto LABEL_83;
      }

      v59 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v118 = v115;
      *v59 = v97;
      sub_222B9E5D0();
      v60 = sub_222C9517C();
      v62 = v61;
      v111 = *v114;
      v111(v10, v1);
      v63 = sub_222B437C0(v60, v62, &v118);

      *(v59 + 4) = v63;
      *(v59 + 12) = 2080;
      if (v58)
      {
        v64 = sub_222C94C6C();
        if (v64)
        {
LABEL_67:
          v117 = MEMORY[0x277D84F90];
          sub_222B4C51C(0, v64 & ~(v64 >> 63), 0);
          if (v64 < 0)
          {
            goto LABEL_110;
          }

          v98 = v43 >> 62;
          v65 = v117;
          if ((v43 & 0xC000000000000001) != 0)
          {
            for (i = 0; i != v64; ++i)
            {
              v67 = [MEMORY[0x223DC9B30](i v43)];
              swift_unknownObjectRelease();
              v117 = v65;
              v69 = *(v65 + 16);
              v68 = *(v65 + 24);
              if (v69 >= v68 >> 1)
              {
                sub_222B4C51C((v68 > 1), v69 + 1, 1);
                v65 = v117;
              }

              *(v65 + 16) = v69 + 1;
              *(v65 + 4 * v69 + 32) = v67;
            }
          }

          else
          {
            v70 = (v43 + 32);
            do
            {
              v71 = [*v70 contactSuggestionOutcome];
              v117 = v65;
              v73 = *(v65 + 16);
              v72 = *(v65 + 24);
              if (v73 >= v72 >> 1)
              {
                v74 = v71;
                sub_222B4C51C((v72 > 1), v73 + 1, 1);
                v71 = v74;
                v65 = v117;
              }

              *(v65 + 16) = v73 + 1;
              *(v65 + 4 * v73 + 32) = v71;
              ++v70;
              --v64;
            }

            while (v64);
          }

          v58 = v98;
          goto LABEL_82;
        }
      }

      else
      {
        v64 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v64)
        {
          goto LABEL_67;
        }
      }

      v65 = MEMORY[0x277D84F90];
LABEL_82:
      v75 = MEMORY[0x223DC94D0](v65, MEMORY[0x277D849A8]);
      v10 = v76;

      v77 = sub_222B437C0(v75, v10, &v118);

      *(v59 + 14) = v77;
      _os_log_impl(&dword_222B39000, v56, v57, "[ContactSuggestionOutcomeReportedOfflineEmitter] Outcomes to be reported for plusId %s: %s", v59, 0x16u);
      v78 = v115;
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v78, -1, -1);
      MEMORY[0x223DCA8C0](v59, -1, -1);

      v45 = &unk_2784BC000;
LABEL_83:
      v79 = 0x277D59000uLL;
      if (v58)
      {
        v1 = sub_222C94C6C();
        if (!v1)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v1 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v1)
        {
          goto LABEL_8;
        }
      }

      if (v1 < 1)
      {
        goto LABEL_107;
      }

      v80 = 0;
      v115 = *(v99 + 16);
      do
      {
        if ((v43 & 0xC000000000000001) != 0)
        {
          v81 = MEMORY[0x223DC9B30](v80, v43);
        }

        else
        {
          v81 = *(v43 + 8 * v80 + 32);
        }

        v82 = v81;
        v83 = [objc_allocWithZone(*(v79 + 3152)) v45[386]];
        if (v83)
        {
          v84 = v83;
          v85 = [objc_allocWithZone(MEMORY[0x277D59C58]) v45[386]];
          if (v85)
          {
            v86 = v85;
            v87 = objc_allocWithZone(MEMORY[0x277D5AC78]);
            v88 = sub_222C9361C();
            v89 = [v87 initWithNSUUID_];

            [v86 setPlusId_];
            [v84 setEventMetadata_];

            [v84 setContactSuggestionOutcomeReported_];
            __swift_project_boxed_opaque_existential_1((v115 + 16), *(v115 + 40));
            sub_222C93F1C();
            v79 = 0x277D59000;
          }

          v45 = &unk_2784BC000;
        }

        ++v80;
      }

      while (v1 != v80);
LABEL_8:

      v1 = v107;
      v111(v116, v107);
      v10 = v108;
      v21 = v112;
      v22 = v113;
    }
  }

  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v90 = sub_222C9431C();
  __swift_project_value_buffer(v90, qword_280FE2340);
  v91 = sub_222C942FC();
  v92 = sub_222C94A3C();
  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    *v93 = 0;
    _os_log_impl(&dword_222B39000, v91, v92, "[ContactSuggestionOutcomeReportedOfflineEmitter] No ContactSuggestionOutcomeReported messages to emit to SELF", v93, 2u);
    MEMORY[0x223DCA8C0](v93, -1, -1);
  }
}

uint64_t ContactSuggestionOutcomeReportedOfflineEmitter.deinit()
{
  v1 = v0;
  swift_beginAccess();
  if (*(*(v0 + 24) + 16))
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v2 = sub_222C9431C();
    __swift_project_value_buffer(v2, qword_280FE2340);
    v3 = sub_222C942FC();
    v4 = sub_222C94A4C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_222B39000, v3, v4, "[ContactSuggestionOutcomeReportedOfflineEmitter] Emitter is being destroyed while there are suggestion outcomes which have not been logged to SELF!", v5, 2u);
      MEMORY[0x223DCA8C0](v5, -1, -1);
    }
  }

  return v1;
}

uint64_t ContactSuggestionOutcomeReportedOfflineEmitter.__deallocating_deinit()
{
  ContactSuggestionOutcomeReportedOfflineEmitter.deinit();

  return swift_deallocClassInstance();
}

double sub_222C5A1FC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027998, &qword_222CA56D8) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025458, &qword_222C98678) + 48);
  v6 = *(a1 + v4);
  v7 = sub_222C9367C();
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  *(a2 + v5) = v6;

  return result;
}

void sub_222C5A2B0(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027928, &qword_222CA5348);
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v39 - v4;
  v42 = sub_222C9367C();
  v6 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027920, &qword_222CA5340);
  MEMORY[0x28223BE20](v9 - 8);
  v46 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v14 = &v39 - v12;
  v15 = *v1;
  v16 = v1[1];
  v18 = v1[2];
  v17 = v1[3];
  v19 = v1[4];
  v39 = v5;
  v45 = v18;
  if (v19)
  {
    v41 = a1;
    v20 = v17;
LABEL_11:
    v40 = (v19 - 1) & v19;
    v24 = __clz(__rbit64(v19)) | (v20 << 6);
    v25 = v42;
    (*(v6 + 16))(v8, *(v15 + 48) + *(v6 + 72) * v24, v42, v13);
    v26 = *(*(v15 + 56) + 8 * v24);
    v27 = *(v44 + 48);
    v28 = v8;
    v29 = v44;
    (*(v6 + 32))(v14, v28, v25);
    *&v14[v27] = v26;
    v30 = v43;
    (*(v43 + 56))(v14, 0, 1, v29);

    v31 = v40;
    a1 = v41;
    v23 = v20;
    v32 = v30;
LABEL_12:
    *v1 = v15;
    v1[1] = v16;
    v33 = v46;
    v1[2] = v45;
    v1[3] = v23;
    v1[4] = v31;
    v34 = v1[5];
    sub_222B723A4(v14, v33, &qword_27D027920, &qword_222CA5340);
    v35 = 1;
    if ((*(v32 + 48))(v33, 1, v29) != 1)
    {
      v36 = v33;
      v37 = v39;
      sub_222B723A4(v36, v39, &qword_27D027928, &qword_222CA5348);
      v34(v37);
      sub_222B4FCD4(v37, &qword_27D027928, &qword_222CA5348);
      v35 = 0;
    }

    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025468, &qword_222C98688);
    (*(*(v38 - 8) + 56))(a1, v35, 1, v38);
  }

  else
  {
    v21 = (v18 + 64) >> 6;
    if (v21 <= v17 + 1)
    {
      v22 = v17 + 1;
    }

    else
    {
      v22 = (v18 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v21)
      {
        v32 = v43;
        v29 = v44;
        (*(v43 + 56))(&v39 - v12, 1, 1, v44, v13);
        v31 = 0;
        goto LABEL_12;
      }

      v19 = *(v16 + 8 * v20);
      ++v17;
      if (v19)
      {
        v41 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_222C5A694(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027998, &qword_222CA56D8);
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v39 - v4;
  v42 = sub_222C9367C();
  v6 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027990, &qword_222CA56D0);
  MEMORY[0x28223BE20](v9 - 8);
  v46 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v14 = &v39 - v12;
  v15 = *v1;
  v16 = v1[1];
  v18 = v1[2];
  v17 = v1[3];
  v19 = v1[4];
  v39 = v5;
  v45 = v18;
  if (v19)
  {
    v41 = a1;
    v20 = v17;
LABEL_11:
    v40 = (v19 - 1) & v19;
    v24 = __clz(__rbit64(v19)) | (v20 << 6);
    v25 = v42;
    (*(v6 + 16))(v8, *(v15 + 48) + *(v6 + 72) * v24, v42, v13);
    v26 = *(*(v15 + 56) + 8 * v24);
    v27 = *(v44 + 48);
    v28 = v8;
    v29 = v44;
    (*(v6 + 32))(v14, v28, v25);
    *&v14[v27] = v26;
    v30 = v43;
    (*(v43 + 56))(v14, 0, 1, v29);

    v31 = v40;
    a1 = v41;
    v23 = v20;
    v32 = v30;
LABEL_12:
    *v1 = v15;
    v1[1] = v16;
    v33 = v46;
    v1[2] = v45;
    v1[3] = v23;
    v1[4] = v31;
    v34 = v1[5];
    sub_222B723A4(v14, v33, &qword_27D027990, &qword_222CA56D0);
    v35 = 1;
    if ((*(v32 + 48))(v33, 1, v29) != 1)
    {
      v36 = v33;
      v37 = v39;
      sub_222B723A4(v36, v39, &qword_27D027998, &qword_222CA56D8);
      v34(v37);
      sub_222B4FCD4(v37, &qword_27D027998, &qword_222CA56D8);
      v35 = 0;
    }

    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025458, &qword_222C98678);
    (*(*(v38 - 8) + 56))(a1, v35, 1, v38);
  }

  else
  {
    v21 = (v18 + 64) >> 6;
    if (v21 <= v17 + 1)
    {
      v22 = v17 + 1;
    }

    else
    {
      v22 = (v18 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v21)
      {
        v32 = v43;
        v29 = v44;
        (*(v43 + 56))(&v39 - v12, 1, 1, v44, v13);
        v31 = 0;
        goto LABEL_12;
      }

      v19 = *(v16 + 8 * v20);
      ++v17;
      if (v19)
      {
        v41 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void *sub_222C5AA78(uint64_t a1)
{
  v57 = sub_222C9367C();
  v2 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v58 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024DE8, &qword_222CA55A0);
  MEMORY[0x28223BE20](v54);
  v51 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v52 = &v44 - v6;
  MEMORY[0x28223BE20](v7);
  v53 = &v44 - v8;
  MEMORY[0x28223BE20](v9);
  v56 = &v44 - v11;
  v12 = MEMORY[0x277D84F98];
  v59 = MEMORY[0x277D84F98];
  v13 = *(a1 + 16);
  if (!v13)
  {
    return v12;
  }

  v47 = *(v10 + 80);
  v48 = v2;
  v14 = *(v10 + 72);
  v15 = a1 + ((v47 + 32) & ~v47);
  v55 = (v2 + 32);
  v49 = (v47 + 32) & ~v47;
  v50 = (v2 + 16);
  v46 = (v2 + 8);
  v45 = xmmword_222C97C40;
  while (1)
  {
    v16 = v56;
    sub_222C5AF18(v15, v56);
    v17 = v53;
    sub_222C5AF18(v16, v53);
    v18 = *(v54 + 48);
    v19 = *(v17 + v18);
    v20 = *v55;
    v21 = v52;
    v22 = v17;
    v23 = v57;
    (*v55)(v52, v22, v57);
    *(v21 + v18) = v19;
    v24 = v58;
    (*v50)(v58, v21, v23);
    sub_222B4FCD4(v21, &qword_27D024DE8, &qword_222CA55A0);
    v26 = sub_222B8CA54(v24);
    v27 = v12[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      break;
    }

    v30 = v25;
    if (v12[3] < v29)
    {
      sub_222B91B48(v29, 1);
      v12 = v59;
      v31 = sub_222B8CA54(v58);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_19;
      }

      v26 = v31;
    }

    if (v30)
    {
      (*v46)(v58, v57);
      v33 = v12[7];
      sub_222B723A4(v56, v51, &qword_27D024DE8, &qword_222CA55A0);
      v34 = *(v33 + 8 * v26);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v33 + 8 * v26) = v34;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v34 = sub_222B4B674(0, v34[2] + 1, 1, v34);
        *(v33 + 8 * v26) = v34;
      }

      v37 = v34[2];
      v36 = v34[3];
      if (v37 >= v36 >> 1)
      {
        v34 = sub_222B4B674((v36 > 1), v37 + 1, 1, v34);
        *(v33 + 8 * v26) = v34;
      }

      v34[2] = v37 + 1;
      sub_222B723A4(v51, v34 + v49 + v37 * v14, &qword_27D024DE8, &qword_222CA55A0);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024DE0, &unk_222C96BB0);
      v38 = v49;
      v39 = swift_allocObject();
      *(v39 + 16) = v45;
      sub_222B723A4(v56, v39 + v38, &qword_27D024DE8, &qword_222CA55A0);
      v12[(v26 >> 6) + 8] |= 1 << v26;
      v20((v12[6] + *(v48 + 72) * v26), v58, v57);
      *(v12[7] + 8 * v26) = v39;
      v40 = v12[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        goto LABEL_18;
      }

      v12[2] = v42;
    }

    v15 += v14;
    if (!--v13)
    {
      return v12;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_222C9526C();
  __break(1u);
  return result;
}

uint64_t sub_222C5AF18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024DE8, &qword_222CA55A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222C5AF88(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v46 = sub_222C9367C();
  v10 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v12 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0279A0, &unk_222CA5750);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v42 - v14;
  v16 = -1 << *(a1 + 32);
  v17 = ~v16;
  v18 = *(a1 + 64);
  v19 = -v16;
  v47 = a1;
  v48 = a1 + 64;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v49 = v17;
  v50 = 0;
  v51 = v20 & v18;
  v52 = a2;
  v53 = a3;
  v44 = v10;
  v45 = (v10 + 32);
  v43 = (v10 + 8);

  v42[1] = a3;

  while (1)
  {
    sub_222C5A694(v15);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025458, &qword_222C98678);
    if ((*(*(v22 - 8) + 48))(v15, 1, v22) == 1)
    {
      sub_222B504E8(v47);
    }

    v23 = a4;
    v24 = *(v22 + 48);
    v25 = *v45;
    (*v45)(v12, v15, v46);
    v26 = *&v15[v24];
    v27 = *a5;
    v29 = sub_222B8CA54(v12);
    v30 = *(v27 + 16);
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      break;
    }

    v33 = v28;
    if (*(v27 + 24) >= v32)
    {
      if ((v23 & 1) == 0)
      {
        sub_222B94ACC();
      }
    }

    else
    {
      sub_222B91B34(v32, v23 & 1);
      v34 = sub_222B8CA54(v12);
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_20;
      }

      v29 = v34;
    }

    v36 = a5;
    v37 = *a5;
    if (v33)
    {
      v54 = *(v37[7] + 8 * v29);

      sub_222B49C20(v26);
      v21 = v54;
      (*v43)(v12, v46);
      *(v37[7] + 8 * v29) = v21;
    }

    else
    {
      v37[(v29 >> 6) + 8] |= 1 << v29;
      v25((v37[6] + *(v44 + 72) * v29), v12, v46);
      *(v37[7] + 8 * v29) = v26;
      v38 = v37[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_19;
      }

      v37[2] = v40;
    }

    a4 = 1;
    a5 = v36;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_222C9526C();
  __break(1u);
  return result;
}

unint64_t sub_222C5B2F4()
{
  result = qword_27D024DC0;
  if (!qword_27D024DC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D024DC0);
  }

  return result;
}

void sub_222C5B3F0(uint64_t a1, uint64_t a2)
{
  v53 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0279A8, &qword_222CA5760);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v48 - v4;
  v52 = type metadata accessor for ContactPromptGroundTruth(0);
  v48 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025028, &unk_222C96EC0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v48 - v8;
  v10 = type metadata accessor for EntityPromptClassification(0);
  MEMORY[0x28223BE20](v10);
  v49 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v50 = &v48 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = (&v48 - v15);
  MEMORY[0x28223BE20](v17);
  v54 = &v48 - v19;
  v55 = v5;
  v20 = *(a2 + 16);
  v56 = v18;
  if (v20)
  {
    v21 = a2 + 32;
    v22 = (v18 + 56);
    v23 = (v18 + 48);
    v24 = MEMORY[0x277D84F90];
    do
    {
      sub_222B43E3C(v21, v58);
      sub_222B405A0(v58, v57);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C58, &unk_222C96A30);
      v25 = swift_dynamicCast();
      (*v22)(v9, v25 ^ 1u, 1, v10);
      if ((*v23)(v9, 1, v10) == 1)
      {
        sub_222B4FCD4(v9, &qword_27D025028, &unk_222C96EC0);
      }

      else
      {
        sub_222C5C688(v9, v54, type metadata accessor for EntityPromptClassification);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_222B49F90(0, v24[2] + 1, 1, v24);
        }

        v27 = v24[2];
        v26 = v24[3];
        if (v27 >= v26 >> 1)
        {
          v24 = sub_222B49F90((v26 > 1), v27 + 1, 1, v24);
        }

        v24[2] = v27 + 1;
        sub_222C5C688(v54, v24 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v27, type metadata accessor for EntityPromptClassification);
        v5 = v55;
      }

      v21 += 40;
      --v20;
    }

    while (v20);
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
  }

  v54 = v24[2];
  if (v54)
  {
    v28 = 0;
    v29 = MEMORY[0x277D84F90];
    while (v28 < v24[2])
    {
      v30 = (*(v56 + 80) + 32) & ~*(v56 + 80);
      v31 = *(v56 + 72);
      v32 = sub_222C5C6F0(v24 + v30 + v31 * v28, v16, type metadata accessor for EntityPromptClassification);
      v33 = v16[2];
      v34 = v16[3];
      v35 = v33 == 0x73746361746E6F63 && v34 == 0xE800000000000000;
      if (v35 || (v32 = sub_222C951FC(), (v32) || v33 == 0x6E65697069636572 && v34 == 0xE900000000000074 || (v32 = sub_222C951FC(), (v32)) && (v36 = v16[1], *&v58[0] = *v16, *(&v58[0] + 1) = v36, MEMORY[0x28223BE20](v32), *(&v48 - 2) = v58, (sub_222B42F4C(sub_222B5EBA4, (&v48 - 4), &unk_283607100)))
      {
        sub_222C5C688(v16, v49, type metadata accessor for EntityPromptClassification);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v57[0] = v29;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_222B4C330(0, *(v29 + 16) + 1, 1);
          v29 = v57[0];
        }

        v39 = *(v29 + 16);
        v38 = *(v29 + 24);
        if (v39 >= v38 >> 1)
        {
          sub_222B4C330((v38 > 1), v39 + 1, 1);
          v29 = v57[0];
        }

        *(v29 + 16) = v39 + 1;
        sub_222C5C688(v49, v29 + v30 + v39 * v31, type metadata accessor for EntityPromptClassification);
        v5 = v55;
      }

      else
      {
        sub_222C5C758(v16, type metadata accessor for EntityPromptClassification);
      }

      if (v54 == ++v28)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
  }

  else
  {
    v29 = MEMORY[0x277D84F90];
LABEL_32:

    v40 = *(v29 + 16);
    if (v40)
    {
      v41 = v29 + ((*(v56 + 80) + 32) & ~*(v56 + 80));
      v42 = *(v56 + 72);
      v43 = (v48 + 48);
      v44 = MEMORY[0x277D84F90];
      do
      {
        v45 = v50;
        sub_222C5C6F0(v41, v50, type metadata accessor for EntityPromptClassification);
        sub_222C5BBD4(v53, v45, v5);
        sub_222C5C758(v45, type metadata accessor for EntityPromptClassification);
        if ((*v43)(v5, 1, v52) == 1)
        {
          sub_222B4FCD4(v5, &qword_27D0279A8, &qword_222CA5760);
        }

        else
        {
          sub_222C5C688(v5, v51, type metadata accessor for ContactPromptGroundTruth);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v44 = sub_222B4BCB4(0, v44[2] + 1, 1, v44);
          }

          v47 = v44[2];
          v46 = v44[3];
          if (v47 >= v46 >> 1)
          {
            v44 = sub_222B4BCB4((v46 > 1), v47 + 1, 1, v44);
          }

          v44[2] = v47 + 1;
          sub_222C5C688(v51, v44 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v47, type metadata accessor for ContactPromptGroundTruth);
          v5 = v55;
        }

        v41 += v42;
        --v40;
      }

      while (v40);
    }
  }
}

unint64_t sub_222C5BBD4@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v84 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  MEMORY[0x28223BE20](v5 - 8);
  v85 = &v67[-v6];
  v7 = type metadata accessor for PlusContactSuggestionRuntimeSummary(0);
  v8 = *(v7 - 8);
  v82 = v7;
  v83 = v8;
  MEMORY[0x28223BE20](v7);
  v86 = &v67[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0253C8, &unk_222C98400);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v67[-v11];
  v13 = type metadata accessor for FeaturisedTurn(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v67[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_222C9367C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v79 = &v67[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v20);
  v22 = &v67[-v21];
  v23 = type metadata accessor for EntityPromptClassification(0);
  (*(v18 + 16))(v22, &a2[*(v23 + 44)], v17);
  v87 = v22;
  sub_222B41144(sub_222B617A8, a1, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_222B4FCD4(v12, &qword_27D0253C8, &unk_222C98400);
    v24 = type metadata accessor for ContactPromptGroundTruth(0);
    (*(*(v24 - 8) + 56))(v84, 1, 1, v24);
    return (*(v18 + 8))(v22, v17);
  }

  sub_222C5C688(v12, v16, type metadata accessor for FeaturisedTurn);
  result = sub_222B41B30(*&v16[*(v13 + 24)]);
  v26 = v84;
  if (!result)
  {
LABEL_33:
    sub_222C5C758(v16, type metadata accessor for FeaturisedTurn);
    v66 = type metadata accessor for ContactPromptGroundTruth(0);
    (*(*(v66 - 8) + 56))(v26, 1, 1, v66);
    return (*(v18 + 8))(v22, v17);
  }

  v27 = result & 0xFFFFFFFFFFFFFF8;
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    goto LABEL_32;
  }

  v64 = result;
  v65 = sub_222C94C6C();
  result = v64;
  if (!v65)
  {
LABEL_32:

    goto LABEL_33;
  }

LABEL_6:
  if ((result & 0xC000000000000001) != 0)
  {
    v74 = MEMORY[0x223DC9B30](0);
    goto LABEL_9;
  }

  if (*(v27 + 16))
  {
    v74 = *(result + 32);

LABEL_9:
    v76 = v22;

    sub_222C9366C();
    v28 = *a2;
    v72 = *(a2 + 1);
    v73 = v28;
    v29 = *(a2 + 4);
    v30 = *(v29 + 16);
    v78 = v18;
    v75 = v16;
    v71 = v30;
    if (v30)
    {
      v31 = a2;
      v88[0] = MEMORY[0x277D84F90];

      sub_222B4CAD0(0, v30, 0);
      v32 = v88[0];
      v33 = (v29 + 40);
      v34 = v30;
      do
      {
        v36 = *(v33 - 1);
        v35 = *v33;
        v88[0] = v32;
        v38 = *(v32 + 16);
        v37 = *(v32 + 24);

        if (v38 >= v37 >> 1)
        {
          sub_222B4CAD0((v37 > 1), v38 + 1, 1);
          v32 = v88[0];
        }

        *(v32 + 16) = v38 + 1;
        v39 = (v32 + 32 * v38);
        v39[4] = v36;
        v39[5] = v35;
        v39[6] = 0;
        v39[7] = 0;
        v33 += 2;
        --v34;
      }

      while (v34);
      a2 = v31;
    }

    else
    {

      v32 = MEMORY[0x277D84F90];
    }

    v40 = *(a2 + 6);
    v41 = v86;
    if (v40)
    {
      v69 = *(a2 + 5);
    }

    else
    {
      v69 = 0;
    }

    v70 = v40;

    sub_222C5C3F0(a2, v88);
    v68 = LOBYTE(v88[0]);
    v77 = a2;
    v42 = *(a2 + 9);
    v43 = *(v42 + 16);
    if (v43)
    {
      v44 = *(v82 + 20);
      v45 = v42 + ((*(v83 + 80) + 32) & ~*(v83 + 80));
      v46 = *(v83 + 72);
      v47 = (v78 + 48);
      v80 = (v78 + 8);
      v48 = MEMORY[0x277D84F90];
      v82 = v44;
      v83 = v17;
      v81 = v46;
      do
      {
        sub_222C5C6F0(v45, v41, type metadata accessor for PlusContactSuggestionRuntimeSummary);
        if ((*v47)(v41 + v44, 1, v17) == 1)
        {
          sub_222C5C758(v41, type metadata accessor for PlusContactSuggestionRuntimeSummary);
        }

        else
        {
          v49 = v85;
          sub_222B5551C(v41 + v44, v85);
          v50 = sub_222C9360C();
          v52 = v51;
          (*v80)(v49, v17);
          sub_222C5C758(v41, type metadata accessor for PlusContactSuggestionRuntimeSummary);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v48 = sub_222B49E84(0, *(v48 + 2) + 1, 1, v48);
          }

          v54 = *(v48 + 2);
          v53 = *(v48 + 3);
          if (v54 >= v53 >> 1)
          {
            v48 = sub_222B49E84((v53 > 1), v54 + 1, 1, v48);
          }

          *(v48 + 2) = v54 + 1;
          v55 = &v48[16 * v54];
          *(v55 + 4) = v50;
          *(v55 + 5) = v52;
          v44 = v82;
          v17 = v83;
          v41 = v86;
          v46 = v81;
        }

        v45 += v46;
        --v43;
      }

      while (v43);
    }

    else
    {
      v48 = MEMORY[0x277D84F90];
    }

    v56 = v71 == 1;
    sub_222C5C758(v75, type metadata accessor for FeaturisedTurn);
    v57 = v77[80];
    v58 = type metadata accessor for ContactPromptGroundTruth(0);
    v59 = v84;
    v60 = (v84 + v58[12]);
    v18 = v78;
    (*(v78 + 32))(v84, v79, v17);
    v61 = v72;
    *v60 = v73;
    v60[1] = v61;
    *(v59 + v58[5]) = v56;
    *(v59 + v58[6]) = v74;
    *(v59 + v58[7]) = v32;
    v62 = (v59 + v58[8]);
    v63 = v70;
    *v62 = v69;
    v62[1] = v63;
    v62[2] = 0;
    v62[3] = 0;
    *(v59 + v58[9]) = v68;
    *(v59 + v58[10]) = v48;
    *(v59 + v58[11]) = v57;
    (*(*(v58 - 1) + 56))(v59, 0, 1, v58);
    v22 = v76;
    return (*(v18 + 8))(v22, v17);
  }

  __break(1u);
  return result;
}

void sub_222C5C3F0(void *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_222C93C5C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1[6])
  {
    goto LABEL_2;
  }

  v11 = a1[7];
  v10 = a1[8];
  (*(v5 + 104))(v8, *MEMORY[0x277D5FB00], v4, v6);

  v12 = sub_222C93C4C();
  v14 = v13;
  (*(v5 + 8))(v8, v4);
  if (!v10)
  {

LABEL_12:
    v9 = 1;
    goto LABEL_3;
  }

  if (v11 == v12 && v10 == v14)
  {
  }

  else
  {
    v16 = sub_222C951FC();

    if ((v16 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_2:
  v9 = 0;
LABEL_3:
  *a2 = v9;
}

unint64_t sub_222C5C5BC()
{
  result = qword_280FDE6C0;
  if (!qword_280FDE6C0)
  {
    type metadata accessor for ContactPromptGroundTruth(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FDE6C0);
  }

  return result;
}

uint64_t sub_222C5C688(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_222C5C6F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_222C5C758(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for MediaInAppFollowupClassification(uint64_t a1)
{
  result = qword_27D0279B0;
  if (!qword_27D0279B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_222C5C82C(uint64_t a1)
{
  sub_222C5C8D0(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for MediaPlayClassification(319);
    if (v2 <= 0x3F)
    {
      sub_222C9367C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_222C5C8D0(uint64_t a1)
{
  if (!qword_27D0279C0)
  {
    type metadata accessor for MediaPlayClassification(255);
    v1 = sub_222C94B5C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D0279C0);
    }
  }
}

void sub_222C5C928()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0257D8, &unk_222C990C0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v27[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v6 = &v27[-v5];
  sub_222C5CCC4(v0, &v27[-v5]);
  v7 = type metadata accessor for MediaPlayClassification(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v6, 1, v7) == 1)
  {
    sub_222C5CD34(v6);
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v9 = *(v6 + 2);
    v10 = *(v6 + 3);

    sub_222C5CD9C(v6);
  }

  v28 = v9;
  v29 = v10;
  sub_222C5CCC4(v0, v3);
  if (v8(v3, 1, v7) == 1)
  {
    sub_222C5CD34(v3);
    v11 = 0;
    v12 = 0;
  }

  else
  {
    v11 = *(v3 + 4);
    v12 = *(v3 + 5);

    sub_222C5CD9C(v3);
  }

  v30 = v11;
  v31 = v12;
  v13 = (v0 + *(type metadata accessor for MediaInAppFollowupClassification(0) + 20));
  v14 = v13[3];
  v32 = v13[2];
  v33 = v14;
  v15 = v13[5];
  v34 = v13[4];
  v35 = v15;

  v16 = 0;
  v17 = MEMORY[0x277D84F90];
LABEL_8:
  if (v16 <= 4)
  {
    v18 = 4;
  }

  else
  {
    v18 = v16;
  }

  v19 = v18 + 1;
  v20 = 16 * v16 + 40;
  while (1)
  {
    if (v16 == 4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024D58, &qword_222C96B30);
      swift_arrayDestroy();
      return;
    }

    if (v19 == ++v16)
    {
      break;
    }

    v21 = v20 + 16;
    v22 = *&v27[v20];
    v20 += 16;
    if (v22)
    {
      v23 = *&v27[v21 - 24];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_222B49E84(0, *(v17 + 2) + 1, 1, v17);
      }

      v25 = *(v17 + 2);
      v24 = *(v17 + 3);
      if (v25 >= v24 >> 1)
      {
        v17 = sub_222B49E84((v24 > 1), v25 + 1, 1, v17);
      }

      *(v17 + 2) = v25 + 1;
      v26 = &v17[16 * v25];
      *(v26 + 4) = v23;
      *(v26 + 5) = v22;
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t sub_222C5CBD8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024F30, &qword_222C96CE0);
  v3 = sub_222C9367C();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_222C97C40;
  (*(v4 + 16))(v6 + v5, v1 + *(a1 + 28), v3);
  return v6;
}

uint64_t sub_222C5CCC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0257D8, &unk_222C990C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222C5CD34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0257D8, &unk_222C990C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_222C5CD9C(uint64_t a1)
{
  v2 = type metadata accessor for MediaPlayClassification(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_222C5CDF8(uint64_t a1, uint64_t a2)
{
  v2 = sub_222C932EC();
  v68 = *(v2 - 8);
  v69 = v2;
  MEMORY[0x28223BE20](v2);
  v67 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v60 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v60 - v8;
  MEMORY[0x28223BE20](v10);
  v65 = &v60 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0276E0, &unk_222CA5850);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v60 - v13;
  v15 = sub_222C9334C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v66 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0276E8, &qword_222CA45C0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v60 - v19;
  v21 = sub_222C934DC();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v25;
  sub_222C934CC();
  if ((*(v22 + 48))(v20, 1, v26) == 1)
  {
    sub_222B4FCD4(v20, &qword_27D0276E8, &qword_222CA45C0);
    return 0;
  }

  (*(v22 + 32))(v24, v20, v26);
  sub_222C9330C();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    (*(v22 + 8))(v24, v26);
    sub_222B4FCD4(v14, &qword_27D0276E0, &unk_222CA5850);
    return 0;
  }

  v27 = v15;
  v28 = v66;
  (*(v16 + 32))(v66, v14, v27);
  v29 = sub_222C9333C();
  if (!v30)
  {
    goto LABEL_23;
  }

  if (v29 == 0x6D6574692D63706DLL && v30 == 0xE800000000000000)
  {
  }

  else
  {
    v31 = sub_222C951FC();

    if ((v31 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  if (sub_222C9332C() == 0x676E6F732FLL && v32 == 0xE500000000000000)
  {

    goto LABEL_14;
  }

  v33 = sub_222C951FC();

  if ((v33 & 1) == 0)
  {
LABEL_23:
    (*(v16 + 8))(v28, v27);
    (*(v22 + 8))(v24, v26);
    return 0;
  }

LABEL_14:
  result = sub_222C932FC();
  v61 = v6;
  v62 = v16;
  v63 = v24;
  if (result)
  {
    v35 = result;
    v60 = v26;
    v36 = v27;
    if (*(result + 16))
    {
      v37 = *(result + 16);
      v38 = 0;
      v39 = 0x61644165726F7473;
      v64 = v68 + 16;
      v40 = (v68 + 8);
      while (1)
      {
        if (v38 >= *(v35 + 16))
        {
          __break(1u);
          goto LABEL_49;
        }

        (*(v68 + 16))(v9, v35 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v38, v69);
        if (sub_222C932CC() == v39 && v41 == 0xEB0000000044496DLL)
        {
          break;
        }

        v42 = v39;
        v43 = sub_222C951FC();

        if (v43)
        {
          goto LABEL_28;
        }

        ++v38;
        result = (*v40)(v9, v69);
        v39 = v42;
        if (v37 == v38)
        {
          goto LABEL_22;
        }
      }

LABEL_28:

      v45 = v69;
      v46 = v68 + 32;
      v47 = v65;
      (*(v68 + 32))(v65, v9, v69);
      v44 = sub_222C932DC();
      v49 = v48;
      (*(v46 - 24))(v47, v45);
      if (!v49)
      {
        goto LABEL_30;
      }

      v70 = 0;
      v71 = 0xE000000000000000;

      sub_222C94D1C();

      v70 = 0xD000000000000016;
      v71 = 0x8000000222CACE30;
      MEMORY[0x223DC9330](v44, v49);
      swift_bridgeObjectRelease_n();
      v44 = v70;
      v65 = v71;
    }

    else
    {
LABEL_22:

      v44 = 0;
LABEL_30:
      v65 = 0;
    }

    v27 = v36;
    v16 = v62;
    v24 = v63;
    v28 = v66;
    v26 = v60;
  }

  else
  {
    v44 = 0;
    v65 = 0;
  }

  result = sub_222C932FC();
  if (!result)
  {
    goto LABEL_41;
  }

  v50 = result;
  v60 = v44;
  v64 = v27;
  if (!*(result + 16))
  {
LABEL_40:

    v24 = v63;
    v27 = v64;
    v16 = v62;
    v44 = v60;
LABEL_41:
    (*(v16 + 8))(v28, v27);
    (*(v22 + 8))(v24, v26);
    v55 = 0;
LABEL_44:
    if (v65 | v55)
    {
      return v44;
    }

    else
    {
      return 0;
    }
  }

  v51 = *(result + 16);
  v52 = 0;
  v66 = (v68 + 8);
  while (v52 < *(v50 + 16))
  {
    (*(v68 + 16))(v67, v50 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v52, v69);
    if (sub_222C932CC() == 0xD000000000000019 && 0x8000000222CAD590 == v53)
    {

LABEL_43:

      v56 = v68 + 32;
      v57 = v61;
      v58 = v69;
      (*(v68 + 32))(v61, v67, v69);
      sub_222C932DC();
      v55 = v59;
      (*(v62 + 8))(v28, v64);
      (*(v22 + 8))(v63, v26);
      (*(v56 - 24))(v57, v58);
      v44 = v60;
      goto LABEL_44;
    }

    v54 = sub_222C951FC();

    if (v54)
    {
      goto LABEL_43;
    }

    ++v52;
    result = (*v66)(v67, v69);
    if (v51 == v52)
    {
      goto LABEL_40;
    }
  }

LABEL_49:
  __break(1u);
  return result;
}

uint64_t static SetUtils.haveSameDomainTags<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  sub_222C9493C();

  sub_222C9493C();
  v5 = sub_222C9491C();

  return v5 & 1;
}

unint64_t static SELFGraphUtils.getPrimaryTask<A>(_:taskType:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  result = MEMORY[0x223DC84A0]();
  if (result >> 62)
  {
    v6 = result;
    v7 = sub_222C94C6C();
    result = v6;
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_11:

    v8 = *(*(a1 - 8) + 56);

    return v8(a2, 1, 1, a1);
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    MEMORY[0x223DC9B30](0);
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }
  }

  sub_222C937DC();

  if (v10)
  {
    sub_222BF54CC(&v9, v11);
    sub_222BF54CC(v11, &v9);
    v5 = swift_dynamicCast();
    return (*(*(a1 - 8) + 56))(a2, v5 ^ 1u, 1, a1);
  }

  else
  {
    sub_222BEB9B0(&v9);
    return (*(*(a1 - 8) + 56))(a2, 1, 1, a1);
  }
}

unint64_t sub_222C5DA34()
{
  result = MEMORY[0x223DC84A0]();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_12:

    return 0;
  }

  v1 = result;
  v2 = sub_222C94C6C();
  result = v1;
  if (!v2)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    MEMORY[0x223DC9B30](0);
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }
  }

  sub_222C937DC();

  if (!v4)
  {
    sub_222B4FCD4(&v3, &qword_27D026A20, qword_222CA5960);
    return 0;
  }

  sub_222BF54CC(&v3, v5);
  sub_222BF54CC(v5, &v3);
  sub_222C9390C();
  if (swift_dynamicCast())
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_222C5DB74()
{
  type metadata accessor for MediaFeatureExtractor();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0279F0, &unk_222CA5A50);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_27D0279C8 = 91;
  unk_27D0279D0 = 0xE100000000000000;
  return result;
}

void *sub_222C5DC18(unint64_t a1)
{
  if (qword_280FDF1F0 != -1)
  {
LABEL_54:
    swift_once();
  }

  v33 = &type metadata for PIMSProcessingState;
  v34 = sub_222BDEBC8();
  v31[0] = 0xD000000000000013;
  v31[1] = 0x8000000222CAB9A0;
  v32 = 4;
  sub_222C93B5C();
  __swift_destroy_boxed_opaque_existential_0Tm(v31);
  v31[0] = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    v2 = sub_222C94C6C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v3 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x223DC9B30](v3, a1);
      }

      else
      {
        if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_53;
        }

        v4 = *(a1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      if ([v4 anyEventType] == 13)
      {
        sub_222C94DEC();
        sub_222C94E2C();
        sub_222C94E3C();
        sub_222C94DFC();
      }

      else
      {
      }

      ++v3;
    }

    while (v6 != v2);
    v7 = v31[0];
    v31[0] = MEMORY[0x277D84F90];
    if ((v7 & 0x8000000000000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_56;
  }

  v7 = MEMORY[0x277D84F90];
  v31[0] = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
  {
LABEL_56:
    v30 = sub_222C94C6C();
    goto LABEL_20;
  }

LABEL_18:
  if ((v7 & 0x4000000000000000) != 0)
  {
    goto LABEL_56;
  }

  v30 = *(v7 + 16);
LABEL_20:
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (v30 != v8)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x223DC9B30](v8, v7);
    }

    else
    {
      if (v8 >= *(v7 + 16))
      {
        goto LABEL_49;
      }

      v18 = *(v7 + 8 * v8 + 32);
    }

    v19 = v18;
    a1 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v20 = [v18 payload];
    if (v20)
    {
      v10 = v20;
      v11 = sub_222C9350C();
      v12 = v9;
      v14 = v13;

      v15 = sub_222C934FC();
      v16 = v14;
      v9 = v12;
      sub_222B803C0(v11, v16);
    }

    else
    {
      v15 = 0;
    }

    v17 = [objc_allocWithZone(MEMORY[0x277D57500]) initWithData_];

    ++v8;
    if (v17)
    {
      MEMORY[0x223DC94A0]();
      if (*((v31[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_222C9475C();
      }

      sub_222C947AC();
      v9 = v31[0];
      v8 = a1;
    }
  }

  v31[0] = MEMORY[0x277D84F90];
  if (v9 >> 62)
  {
    v21 = sub_222C94C6C();
  }

  else
  {
    v21 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = 0;
  a1 = v9 & 0xC000000000000001;
  v23 = MEMORY[0x277D84F90];
  while (v21 != v22)
  {
    if (a1)
    {
      v24 = MEMORY[0x223DC9B30](v22, v9);
    }

    else
    {
      if (v22 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_51;
      }

      v24 = *(v9 + 8 * v22 + 32);
    }

    v25 = v24;
    v26 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      goto LABEL_50;
    }

    v27 = [v24 mediaPlayerPlaybackContextTier1];

    ++v22;
    if (v27)
    {
      MEMORY[0x223DC94A0]();
      if (*((v31[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_222C9475C();
      }

      sub_222C947AC();
      v23 = v31[0];
      v22 = v26;
    }
  }

  v28 = sub_222C5E0B8(v23);

  return v28;
}

void *sub_222C5E0B8(unint64_t a1)
{
  sub_222C5E578(a1);
  v3 = v2;
  v4 = type metadata accessor for PlayMediaSELFFeatures.MediaItemResults(0);
  swift_allocObject();
  *&v40 = v3;
  v5 = sub_222C93EDC();
  v6 = v5;
  if (v5)
  {
    v5 = sub_222C5F9CC(&qword_27D0279E8, 255, type metadata accessor for PlayMediaSELFFeatures.MediaItemResults, MEMORY[0x277D5FBA0]);
  }

  else
  {
    v4 = 0;
    v44[1] = 0;
    v44[2] = 0;
  }

  v44[0] = v6;
  v44[3] = v4;
  v44[4] = v5;
  sub_222C5F470(a1);
  v8 = v7;
  v9 = type metadata accessor for PlayMediaSELFFeatures.RequestedMediaItem(0);
  swift_allocObject();
  *&v40 = v8;

  v10 = sub_222C93EDC();

  if (v10)
  {

    v11 = sub_222C5F9CC(&qword_27D0279E0, 255, type metadata accessor for PlayMediaSELFFeatures.RequestedMediaItem, MEMORY[0x277D5FBA0]);
  }

  else
  {
    v9 = 0;
    v11 = 0;
    v45[1] = 0;
    v45[2] = 0;
  }

  v45[0] = v10;
  v45[3] = v9;
  v45[4] = v11;
  sub_222B43F34(v44, &v40);
  v35 = v41;
  v34 = v40;
  v36 = v42;
  if (*(&v41 + 1))
  {
    sub_222B405A0(&v34, v37);
    v12 = MEMORY[0x277D84F90];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_222B4A108(0, v12[2] + 1, 1, v12);
      v43 = v12;
    }

    v15 = v12[2];
    v14 = v12[3];
    if (v15 >= v14 >> 1)
    {
      v12 = sub_222B4A108((v14 > 1), v15 + 1, 1, v12);
      v43 = v12;
    }

    v16 = v38;
    v17 = v39;
    v18 = __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
    v19 = MEMORY[0x28223BE20](v18);
    v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v22 + 16))(v21, v19);
    sub_222B4F8F0(v15, v21, &v43, v16, v17);
    __swift_destroy_boxed_opaque_existential_0Tm(v37);
  }

  else
  {
    sub_222B4FCD4(&v34, &qword_27D024860, &unk_222C962F0);
    v12 = MEMORY[0x277D84F90];
  }

  sub_222B43F34(v45, &v40);
  v35 = v41;
  v34 = v40;
  v36 = v42;
  if (*(&v41 + 1))
  {
    sub_222B405A0(&v34, v37);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v43 = v12;
    if ((v23 & 1) == 0)
    {
      v12 = sub_222B4A108(0, v12[2] + 1, 1, v12);
      v43 = v12;
    }

    v25 = v12[2];
    v24 = v12[3];
    if (v25 >= v24 >> 1)
    {
      v12 = sub_222B4A108((v24 > 1), v25 + 1, 1, v12);
      v43 = v12;
    }

    v26 = v38;
    v27 = v39;
    v28 = __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
    v29 = MEMORY[0x28223BE20](v28);
    v31 = &v34 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v32 + 16))(v31, v29);
    sub_222B4F8F0(v25, v31, &v43, v26, v27);
    __swift_destroy_boxed_opaque_existential_0Tm(v37);
  }

  else
  {
    sub_222B4FCD4(&v34, &qword_27D024860, &unk_222C962F0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024860, &unk_222C962F0);
  swift_arrayDestroy();
  return v12;
}

void sub_222C5E578(unint64_t a1)
{
  v24 = 10;
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  v3 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_45;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v5 = a1 & 0xC000000000000001;
  v6 = a1 + 32;

  v7 = 0;
  while (v4 != v7)
  {
    if (v5)
    {
      v8 = MEMORY[0x223DC9B30](v7, a1);
    }

    else
    {
      if (v7 >= *(v2 + 16))
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        v4 = sub_222C94C6C();
        goto LABEL_3;
      }

      v8 = *(a1 + 8 * v7 + 32);
    }

    v9 = v8;
    swift_beginAccess();
    v10 = sub_222C5FA14(v9, &v24);
    swift_endAccess();

    if (v10)
    {
      v4 = v7;
      break;
    }

    v11 = __OFADD__(v7++, 1);
    if (v11)
    {
      goto LABEL_42;
    }
  }

  if (!v3)
  {
    v12 = *(v2 + 16);
    if (v4 != v12)
    {
      if (v12)
      {
        goto LABEL_27;
      }

      goto LABEL_24;
    }

    goto LABEL_19;
  }

  if (v4 != sub_222C94C6C())
  {
    v12 = sub_222C94C6C();
    if (!v12)
    {
LABEL_24:
      __break(1u);
LABEL_25:
      v14 = MEMORY[0x223DC9B30](v12, a1);
      goto LABEL_26;
    }

    do
    {
LABEL_27:
      v11 = __OFSUB__(v12--, 1);
      if (v11)
      {
        goto LABEL_41;
      }

      if (v5)
      {
        goto LABEL_25;
      }

      if ((v12 & 0x8000000000000000) != 0)
      {
        goto LABEL_43;
      }

      if (v12 >= *(v2 + 16))
      {
        goto LABEL_44;
      }

      v14 = *(v6 + 8 * v12);
LABEL_26:
      v15 = v14;
      swift_beginAccess();
      v16 = sub_222C5FA14(v15, &v24);
      swift_endAccess();
    }

    while (!v16);
    if (v5)
    {
      v17 = MEMORY[0x223DC9B30](v12, a1);
      goto LABEL_37;
    }

    if ((v12 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v12 < *(v2 + 16))
    {
      v17 = *(v6 + 8 * v12);
LABEL_37:
      v18 = v17;
      swift_beginAccess();
      v19 = sub_222C5FA14(v18, &v24);
      swift_endAccess();

      if (v19)
      {

        return;
      }

LABEL_48:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_48;
  }

LABEL_19:

  swift_beginAccess();
  v13 = v24;
  if (v24 != 10)
  {
    if (qword_280FDF1F0 != -1)
    {
      swift_once();
    }

    v22 = &type metadata for PIMSFatalError;
    v23 = sub_222BE72D0();
    strcpy(v20, "PIMSFatalError");
    HIBYTE(v20[1]) = -18;
    v21 = v13;
    sub_222C93B5C();
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
  }
}

void sub_222C5E984(unint64_t a1)
{
  if (qword_280FDFE78 != -1)
  {
LABEL_33:
    swift_once();
  }

  v2 = sub_222C9431C();
  __swift_project_value_buffer(v2, qword_280FE2340);
  v3 = sub_222C942FC();
  v4 = sub_222C94A3C();
  v31 = a1;
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v34[0] = v6;
    *v5 = 136315138;
    if (qword_27D024770 != -1)
    {
      swift_once();
    }

    *(v5 + 4) = sub_222B437C0(qword_27D0279C8, unk_27D0279D0, v34);
    _os_log_impl(&dword_222B39000, v3, v4, "%s MediaItemDebug: Printing MediaEvents", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x223DCA8C0](v6, -1, -1);
    MEMORY[0x223DCA8C0](v5, -1, -1);

    a1 = v31;
  }

  else
  {
  }

  if (a1 >> 62)
  {
    v7 = sub_222C94C6C();
    if (!v7)
    {
      return;
    }
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return;
    }
  }

  v8 = 0;
  v32 = v7;
  while (1)
  {
    if ((v31 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x223DC9B30](v8, v31);
    }

    else
    {
      if (v8 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v9 = *(v31 + 32 + 8 * v8);
    }

    v10 = v9;
    if (__OFADD__(v8++, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v12 = [v9 formattedJsonBody];
    if (!v12)
    {
      break;
    }

    v13 = v12;
    v33 = v10;
    v14 = sub_222C9449C();
    a1 = v15;

    v16 = sub_222C29C84(v14, a1);

    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = (v16 + 40);
      do
      {
        v20 = *(v18 - 1);
        v19 = *v18;
        swift_bridgeObjectRetain_n();
        a1 = sub_222C942FC();
        v21 = sub_222C94A3C();

        if (os_log_type_enabled(a1, v21))
        {
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          v35 = v23;
          *v22 = 136315394;
          if (qword_27D024770 != -1)
          {
            swift_once();
          }

          *(v22 + 4) = sub_222B437C0(qword_27D0279C8, unk_27D0279D0, &v35);
          *(v22 + 12) = 2080;
          v34[0] = v20;
          v34[1] = v19;
          v24 = sub_222C9461C();
          v26 = sub_222B437C0(v24, v25, &v35);

          *(v22 + 14) = v26;
          _os_log_impl(&dword_222B39000, a1, v21, "%s MediaItemDebug: %s", v22, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223DCA8C0](v23, -1, -1);
          MEMORY[0x223DCA8C0](v22, -1, -1);
        }

        else
        {
        }

        v18 += 2;
        --v17;
      }

      while (v17);
    }

    if (v8 == v32)
    {
      return;
    }
  }

  v27 = sub_222C942FC();
  v28 = sub_222C94A3C();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v34[0] = v30;
    *v29 = 136315138;
    if (qword_27D024770 != -1)
    {
      swift_once();
    }

    *(v29 + 4) = sub_222B437C0(qword_27D0279C8, unk_27D0279D0, v34);
    _os_log_impl(&dword_222B39000, v27, v28, "%s MediaItemDebug: Failed to extract JSON from USO object", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    MEMORY[0x223DCA8C0](v30, -1, -1);
    MEMORY[0x223DCA8C0](v29, -1, -1);
  }
}

uint64_t sub_222C5EE90(void *a1, char *a2)
{
  v4 = [a1 u2UsoGraph];
  if (v4)
  {
    v5 = v4;
    v6 = [a1 u2UsoGraphTier1];
    if (v6)
    {
      v7 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D025FB0, &unk_222C96EB0);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_222C9BAE0;
      *(v8 + 32) = v7;
      v9 = v7;
      v33 = sub_222C93FBC();

      if (v33)
      {

        result = v33;
        v18 = 10;
      }

      else
      {
        if (qword_280FDFE78 != -1)
        {
          swift_once();
        }

        v10 = sub_222C9431C();
        __swift_project_value_buffer(v10, qword_280FE2340);
        v11 = sub_222C942FC();
        v12 = sub_222C94A4C();
        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          v34 = v14;
          *v13 = 136315138;
          if (qword_27D024770 != -1)
          {
            swift_once();
          }

          *(v13 + 4) = sub_222B437C0(qword_27D0279C8, unk_27D0279D0, &v34);
          _os_log_impl(&dword_222B39000, v11, v12, "%s getUsoGraph - Failed to un-redact play media uso graph", v13, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v14);
          MEMORY[0x223DCA8C0](v14, -1, -1);
          MEMORY[0x223DCA8C0](v13, -1, -1);
        }

        inited = swift_initStackObject();
        *(inited + 16) = xmmword_222C9BAE0;
        *(inited + 32) = a1;
        v16 = a1;
        sub_222C5E984(inited);

        swift_setDeallocating();
        swift_arrayDestroy();
        result = 0;
        v18 = 5;
      }
    }

    else
    {
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v26 = sub_222C9431C();
      __swift_project_value_buffer(v26, qword_280FE2340);
      v27 = sub_222C942FC();
      v28 = sub_222C94A3C();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v34 = v30;
        *v29 = 136315138;
        if (qword_27D024770 != -1)
        {
          swift_once();
        }

        *(v29 + 4) = sub_222B437C0(qword_27D0279C8, unk_27D0279D0, &v34);
        _os_log_impl(&dword_222B39000, v27, v28, "%s getUsoGraph - u2UsoGraphTier1 not present", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v30);
        MEMORY[0x223DCA8C0](v30, -1, -1);
        MEMORY[0x223DCA8C0](v29, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D025FB0, &unk_222C96EB0);
      v31 = swift_initStackObject();
      *(v31 + 16) = xmmword_222C9BAE0;
      *(v31 + 32) = a1;
      v32 = a1;
      sub_222C5E984(v31);

      swift_setDeallocating();
      swift_arrayDestroy();
      result = 0;
      v18 = 4;
    }
  }

  else
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v19 = sub_222C9431C();
    __swift_project_value_buffer(v19, qword_280FE2340);
    v20 = sub_222C942FC();
    v21 = sub_222C94A3C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v34 = v23;
      *v22 = 136315138;
      if (qword_27D024770 != -1)
      {
        swift_once();
      }

      *(v22 + 4) = sub_222B437C0(qword_27D0279C8, unk_27D0279D0, &v34);
      _os_log_impl(&dword_222B39000, v20, v21, "%s getUsoGraph - u2UsoGraph not present", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      MEMORY[0x223DCA8C0](v23, -1, -1);
      MEMORY[0x223DCA8C0](v22, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D025FB0, &unk_222C96EB0);
    v24 = swift_initStackObject();
    *(v24 + 16) = xmmword_222C9BAE0;
    *(v24 + 32) = a1;
    v25 = a1;
    sub_222C5E984(v24);
    swift_setDeallocating();
    swift_arrayDestroy();
    result = 0;
    v18 = 3;
  }

  *a2 = v18;
  return result;
}

void sub_222C5F470(unint64_t a1)
{
  v24 = 10;
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    goto LABEL_43;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = a1 & 0xC000000000000001;
  v5 = (a1 + 32);

  do
  {
    if (!v3)
    {

      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v10 = sub_222C9431C();
      __swift_project_value_buffer(v10, qword_280FE2340);
      v11 = sub_222C942FC();
      v12 = sub_222C94A4C();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v20[0] = v14;
        *v13 = 136315138;
        if (qword_27D024770 != -1)
        {
          swift_once();
        }

        *(v13 + 4) = sub_222B437C0(qword_27D0279C8, unk_27D0279D0, v20);
        _os_log_impl(&dword_222B39000, v11, v12, "%s getBestUsoMediaItem: Unable to extract a USO graph from any media event", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v14);
        MEMORY[0x223DCA8C0](v14, -1, -1);
        MEMORY[0x223DCA8C0](v13, -1, -1);
      }

      sub_222C5E984(a1);
      swift_beginAccess();
      v15 = v24;
      if (v24 == 10)
      {
        return;
      }

      if (qword_280FDF1F0 != -1)
      {
        swift_once();
      }

      v22 = &type metadata for PIMSFatalError;
      v23 = sub_222BE72D0();
      strcpy(v20, "PIMSFatalError");
      HIBYTE(v20[1]) = -18;
      v21 = v15;
      sub_222C93B5C();
LABEL_38:
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      return;
    }

    if (__OFSUB__(v3--, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      v3 = sub_222C94C6C();
      goto LABEL_3;
    }

    if (v4)
    {
      v7 = MEMORY[0x223DC9B30](v3, a1);
    }

    else
    {
      if ((v3 & 0x8000000000000000) != 0)
      {
        goto LABEL_41;
      }

      if (v3 >= *(v2 + 16))
      {
        goto LABEL_42;
      }

      v7 = v5[v3];
    }

    v8 = v7;
    swift_beginAccess();
    v9 = sub_222C5EE90(v8, &v24);
    swift_endAccess();
  }

  while (!v9);
  if (v4)
  {
    v16 = MEMORY[0x223DC9B30](v3, a1);
    goto LABEL_28;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_45;
  }

  if (v3 >= *(v2 + 16))
  {
    __break(1u);
LABEL_47:
    swift_once();
LABEL_34:
    *(v9 + 4) = sub_222B437C0(qword_27D0279C8, unk_27D0279D0, v20);
    _os_log_impl(&dword_222B39000, v3, v2, "%s getBestUsoMediaItem - Unable to extract a task from the found graph", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    MEMORY[0x223DCA8C0](v5, -1, -1);
    MEMORY[0x223DCA8C0](v9, -1, -1);
LABEL_35:

    sub_222C5E984(a1);
    if (qword_280FDF1F0 != -1)
    {
      swift_once();
    }

    v22 = &type metadata for PIMSFatalError;
    v23 = sub_222BE72D0();
    strcpy(v20, "PIMSFatalError");
    HIBYTE(v20[1]) = -18;
    v21 = 2;
    sub_222C93B5C();

    goto LABEL_38;
  }

  v16 = v5[v3];
LABEL_28:
  v17 = v16;
  swift_beginAccess();
  v18 = sub_222C5EE90(v17, &v24);
  swift_endAccess();

  if (v18)
  {

    if (sub_222C5DA34())
    {
      sub_222C93A9C();

      return;
    }

    if (qword_280FDFE78 == -1)
    {
LABEL_32:
      v19 = sub_222C9431C();
      __swift_project_value_buffer(v19, qword_280FE2340);
      v3 = sub_222C942FC();
      LOBYTE(v2) = sub_222C94A4C();
      if (os_log_type_enabled(v3, v2))
      {
        v9 = swift_slowAlloc();
        v5 = swift_slowAlloc();
        v20[0] = v5;
        *v9 = 136315138;
        if (qword_27D024770 == -1)
        {
          goto LABEL_34;
        }

        goto LABEL_47;
      }

      goto LABEL_35;
    }

LABEL_45:
    swift_once();
    goto LABEL_32;
  }

  __break(1u);
}

uint64_t sub_222C5F9CC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_222C5FA14(void *a1, _BYTE *a2)
{
  v3 = [a1 searchResults];
  if (!v3)
  {
    *a2 = 1;
    return v3;
  }

  sub_222C5FD04();
  v4 = sub_222C9471C();

  if (v4 >> 62)
  {
    goto LABEL_29;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
LABEL_30:

    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v42 = MEMORY[0x277D84F90];
    result = sub_222B4CDF8(0, v5 & ~(v5 >> 63), 0);
    if (v5 < 0)
    {
      break;
    }

    v7 = 0;
    v8 = v4;
    v37 = v4;
    v38 = v4 & 0xC000000000000001;
    v3 = v42;
    v35 = v4 & 0xFFFFFFFFFFFFFF8;
    v36 = v5;
    while (1)
    {
      if (v38)
      {
        v9 = MEMORY[0x223DC9B30](v7, v8);
        goto LABEL_11;
      }

      if ((v7 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v7 >= *(v35 + 16))
      {
        goto LABEL_28;
      }

      v9 = *(v8 + 8 * v7 + 32);
LABEL_11:
      v10 = v9;
      v11 = [v9 title];
      if (v11)
      {
        v12 = v11;
        v13 = sub_222C9449C();
        v40 = v14;
        v41 = v13;
      }

      else
      {
        v40 = 0;
        v41 = 0;
      }

      v15 = [v10 artist];
      if (v15)
      {
        v16 = v15;
        v39 = sub_222C9449C();
        v18 = v17;
      }

      else
      {
        v39 = 0;
        v18 = 0;
      }

      v19 = [v10 mediaType];
      v20 = @"FLOWMEDIATYPE_UNKNOWN";
      v21 = @"FLOWMEDIATYPE_UNKNOWN";
      if (v19 <= 0x1C)
      {
        v21 = off_2784BC170[v19];
        v20 = off_2784BC258[v19];
      }

      v22 = v21;
      v23 = v20;
      v24 = sub_222C9449C();
      v26 = v25;

      v27 = [v10 entityId];
      if (v27)
      {
        v28 = v27;
        v4 = sub_222C9449C();
        v30 = v29;
      }

      else
      {
        v4 = 0;
        v30 = 0;
      }

      v31 = [v10 isAlternative];

      v33 = v42[2];
      v32 = v42[3];
      if (v33 >= v32 >> 1)
      {
        sub_222B4CDF8((v32 > 1), v33 + 1, 1);
      }

      ++v7;
      v42[2] = v33 + 1;
      v34 = &v42[9 * v33];
      v34[4] = v41;
      v34[5] = v40;
      v34[6] = v39;
      v34[7] = v18;
      v34[8] = v24;
      v34[9] = v26;
      v34[10] = v4;
      v34[11] = v30;
      *(v34 + 96) = v31;
      v8 = v37;
      if (v36 == v7)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    v5 = sub_222C94C6C();
    if (!v5)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_222C5FD04()
{
  result = qword_27D0279F8;
  if (!qword_27D0279F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D0279F8);
  }

  return result;
}

uint64_t EventStreamType.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  switch(v2)
  {
    case 0:
      v3 = 0;
      return MEMORY[0x223DCA0B0](v3);
    case 1:
      v3 = 1;
      return MEMORY[0x223DCA0B0](v3);
    case 2:
      v3 = 2;
      return MEMORY[0x223DCA0B0](v3);
  }

  MEMORY[0x223DCA0B0](3);

  return sub_222C9452C();
}

uint64_t EventStreamType.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_222C952FC();
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 1;
    }

    else
    {
      if (v1 != 2)
      {
        MEMORY[0x223DCA0B0](3);
        sub_222C9452C();
        return sub_222C9534C();
      }

      v2 = 2;
    }
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x223DCA0B0](v2);
  return sub_222C9534C();
}

uint64_t sub_222C5FE7C()
{
  v1 = *(v0 + 8);
  sub_222C952FC();
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 1;
    }

    else
    {
      if (v1 != 2)
      {
        MEMORY[0x223DCA0B0](3);
        sub_222C9452C();
        return sub_222C9534C();
      }

      v2 = 2;
    }
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x223DCA0B0](v2);
  return sub_222C9534C();
}

uint64_t sub_222C5FF0C(uint64_t a1)
{
  v2 = *(v1 + 8);
  switch(v2)
  {
    case 0:
      v3 = 0;
      return MEMORY[0x223DCA0B0](v3);
    case 1:
      v3 = 1;
      return MEMORY[0x223DCA0B0](v3);
    case 2:
      v3 = 2;
      return MEMORY[0x223DCA0B0](v3);
  }

  MEMORY[0x223DCA0B0](3);

  return sub_222C9452C();
}

uint64_t sub_222C5FFA4(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_222C952FC();
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 1;
    }

    else
    {
      if (v2 != 2)
      {
        MEMORY[0x223DCA0B0](3);
        sub_222C9452C();
        return sub_222C9534C();
      }

      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x223DCA0B0](v3);
  return sub_222C9534C();
}

uint64_t _s28SiriPrivateLearningInference15EventStreamTypeO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  switch(v3)
  {
    case 0uLL:
      if (!v5)
      {
        sub_222B5B328(*a1, 0);
        v6 = v4;
        v7 = 0;
        goto LABEL_15;
      }

      goto LABEL_11;
    case 1uLL:
      if (v5 == 1)
      {
        v8 = 1;
        sub_222B5B328(*a1, 1uLL);
        sub_222B5B328(v4, 1uLL);
        return v8;
      }

      goto LABEL_11;
    case 2uLL:
      if (v5 == 2)
      {
        sub_222B5B328(*a1, 2uLL);
        v6 = v4;
        v7 = 2;
LABEL_15:
        sub_222B5B328(v6, v7);
        return 1;
      }

      goto LABEL_11;
  }

  if (v5 < 3)
  {
LABEL_11:
    sub_222B95830(*a2, *(a2 + 8));
    sub_222B95830(v2, v3);
    sub_222B5B328(v2, v3);
    sub_222B5B328(v4, v5);
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    sub_222B95830(*a1, v3);
    sub_222B95830(v2, v3);
    sub_222B5B328(v2, v3);
    v6 = v2;
    v7 = v3;
    goto LABEL_15;
  }

  v10 = sub_222C951FC();
  sub_222B95830(v4, v5);
  sub_222B95830(v2, v3);
  sub_222B5B328(v2, v3);
  sub_222B5B328(v4, v5);
  return v10 & 1;
}

unint64_t sub_222C601C0()
{
  result = qword_280FDFC58[0];
  if (!qword_280FDFC58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280FDFC58);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_28SiriPrivateLearningInference15EventStreamTypeO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_222C6022C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_222C60288(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_222C602D8(void *result, int a2)
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

uint64_t AsyncEventStream.init<A>(sequence:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_222C60444(a3, a4);
  v6 = *(*(a3 - 8) + 8);

  return v6(a1, a3);
}

uint64_t AsyncEventStream.makeAsyncIterator()@<X0>(uint64_t x8_0@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0262A0, &qword_222C96D10);
  v3 = sub_222C948AC();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v7 - v4;
  sub_222C948CC();
  sub_222C9488C();
  return sub_222C60618(v5, x8_0);
}

uint64_t sub_222C60444(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_222C94B5C();
  v9 = swift_allocBox();
  (*(*(AssociatedTypeWitness - 8) + 56))(v10, 1, 1, AssociatedTypeWitness);
  (*(v6 + 16))(&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  v11 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = a1;
  *(v12 + 3) = a2;
  *(v12 + 4) = v9;
  (*(v6 + 32))(&v12[v11], &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  swift_getAssociatedTypeWitness();
  return sub_222C948BC();
}

uint64_t sub_222C60618@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0262A0, &qword_222C96D10);
  v5 = sub_222C948AC();
  v6 = *(*(v5 - 8) + 32);

  return v6(a3, a1, v5);
}

uint64_t AsyncEventStream.AsyncIterator.next()(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0262A0, &qword_222C96D10);
  v5 = sub_222C948AC();
  *v4 = v2;
  v4[1] = sub_222B503AC;

  return MEMORY[0x2822005B0](a1, v5);
}

uint64_t sub_222C60790(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_222BF9850;

  return AsyncEventStream.AsyncIterator.next()(a1, a2);
}

uint64_t sub_222C60854@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AsyncEventStream.makeAsyncIterator()(a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_222C60924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void))
{
  v5 = *(a1 + 16);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0262A0, &qword_222C96D10);
  result = a4(319, v5, v6, MEMORY[0x277D84950]);
  if (v8 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, uint64_t, void))
{
  v7 = *(a3 + 16);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0262A0, &qword_222C96D10);
  v9 = a4(0, v7, v8, MEMORY[0x277D84950]);
  v10 = *(*(v9 - 8) + 48);

  return v10(a1, a2, v9);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t, void))
{
  v8 = *(a4 + 16);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0262A0, &qword_222C96D10);
  v10 = a5(0, v8, v9, MEMORY[0x277D84950]);
  v11 = *(*(v10 - 8) + 56);

  return v11(a1, a2, a2, v10);
}

uint64_t sub_222C60B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v5[11] = a1;
  v5[12] = a3;
  v5[15] = *(a4 - 8);
  v5[16] = swift_task_alloc();
  v5[17] = swift_getAssociatedTypeWitness();
  v6 = sub_222C94B5C();
  v5[18] = v6;
  v5[19] = *(v6 - 8);
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_222C60CC0, 0, 0);
}

uint64_t sub_222C60CC0()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[18];
  v4 = v0[19];
  v5 = v0[17];
  swift_beginAccess();
  (*(v4 + 16))(v1, v2, v3);
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  LODWORD(v2) = v7(v1, 1, v5);
  (*(v4 + 8))(v1, v3);
  if (v2 == 1)
  {
    v8 = v0[22];
    v10 = v0[19];
    v9 = v0[20];
    v21 = v0[17];
    v22 = v0[18];
    (*(v0[15] + 16))(v0[16], v0[12], v0[13]);
    sub_222C9487C();
    (*(v6 + 56))(v9, 0, 1, v21);
    swift_beginAccess();
    (*(v10 + 40))(v8, v9, v22);
  }

  v11 = v0[22];
  v12 = v0[17];
  swift_beginAccess();
  if (v7(v11, 1, v12))
  {
    v13 = v0[11];
    swift_endAccess();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    (*(*(AssociatedTypeWitness - 8) + 56))(v13, 1, 1, AssociatedTypeWitness);

    v15 = v0[1];

    return v15();
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v18 = swift_task_alloc();
    v0[23] = v18;
    *v18 = v0;
    v18[1] = sub_222C60FE4;
    v19 = v0[17];
    v20 = v0[11];

    return MEMORY[0x282200308](v20, v19, AssociatedConformanceWitness);
  }
}

uint64_t sub_222C60FE4()
{
  v2 = *v1;
  *(v2 + 192) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_222C61140, 0, 0);
  }

  else
  {
    swift_endAccess();

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_222C61140()
{
  swift_endAccess();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_222C611CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = (*(*(v4 - 8) + 80) + 40) & ~*(*(v4 - 8) + 80);
  v7 = v1[4];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_222B503AC;

  return sub_222C60B54(a1, v7, v1 + v6, v4, v5);
}

uint64_t sub_222C61314(uint64_t a1)
{
  v44 = type metadata accessor for MediaGroundTruth(0);
  v43 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v39 = v1;
  v64 = MEMORY[0x277D84F90];
  sub_222B4C7A0(0, v5, 0);
  v6 = v64;
  v7 = a1 + 64;
  result = sub_222C94C2C();
  v9 = 0;
  v10 = *(a1 + 36);
  v40 = a1 + 72;
  v11 = MEMORY[0x277D84FA0];
  v46 = v10;
  v42 = a1;
  v45 = v5;
  v41 = a1 + 64;
  v55 = xmmword_222C97C40;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    if ((*(v7 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_27;
    }

    if (v10 != *(a1 + 36))
    {
      goto LABEL_28;
    }

    v50 = 1 << result;
    v51 = result >> 6;
    v49 = v9;
    v14 = *(a1 + 56);
    v53 = *(*(a1 + 48) + result);
    v54 = result;
    v15 = *(v14 + 8 * result);
    v63 = v11;
    v16 = *(v15 + 16);
    v52 = v16;
    if (v16)
    {
      v48 = v6;
      v17 = *(v44 + 32);
      v65 = *(v44 + 28);
      v18 = &v4[v17];
      v19 = v43;
      v20 = v15 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
      v47 = v15;

      v56 = *(v19 + 72);
      v21 = v16;
      do
      {
        sub_222C63048(v20, v4, type metadata accessor for MediaGroundTruth);
        v22 = *&v4[v65];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024D30, &unk_222CA5430);
        inited = swift_initStackObject();
        *(inited + 16) = v55;
        v62 = *(v18 + 24);
        v24 = *(v18 + 2);
        v60 = *(v18 + 1);
        v25 = v60;
        v61 = v24;
        v59 = *v18;
        v26 = v59;
        *(inited + 80) = v62;
        *(inited + 48) = v25;
        *(inited + 64) = v24;
        *(inited + 32) = v26;
        v58 = v22;

        sub_222B554C0(&v59, v57);
        sub_222B49640(inited);
        v27 = sub_222B71CA4(v58);

        sub_222C61CDC(v27);
        sub_222C630F8(v4, type metadata accessor for MediaGroundTruth);
        v20 += v56;
        --v21;
      }

      while (v21);
      v11 = v63;
      a1 = v42;
      v6 = v48;
      v7 = v41;
      LODWORD(v10) = v46;
    }

    else
    {
    }

    v28 = *(v11 + 16);

    v64 = v6;
    v30 = *(v6 + 16);
    v29 = *(v6 + 24);
    if (v30 >= v29 >> 1)
    {
      sub_222B4C7A0((v29 > 1), v30 + 1, 1);
      LODWORD(v10) = v46;
      v6 = v64;
    }

    *(v6 + 16) = v30 + 1;
    v31 = v6 + 24 * v30;
    *(v31 + 32) = v53;
    *(v31 + 40) = v52;
    *(v31 + 48) = v28;
    v12 = 1 << *(a1 + 32);
    result = v54;
    if (v54 >= v12)
    {
      goto LABEL_29;
    }

    v32 = *(v7 + 8 * v51);
    if ((v32 & v50) == 0)
    {
      goto LABEL_30;
    }

    if (v10 != *(a1 + 36))
    {
      goto LABEL_31;
    }

    v33 = v32 & (-2 << (v54 & 0x3F));
    if (v33)
    {
      v12 = __clz(__rbit64(v33)) | v54 & 0x7FFFFFFFFFFFFFC0;
      v13 = v49;
    }

    else
    {
      v10 = v51 << 6;
      v34 = v51 + 1;
      v35 = (v40 + 8 * v51);
      v13 = v49;
      while (v34 < (v12 + 63) >> 6)
      {
        v37 = *v35++;
        v36 = v37;
        v10 += 64;
        ++v34;
        if (v37)
        {
          v38 = v46;
          sub_222B7D9C4(v54, v46, 0);
          v12 = __clz(__rbit64(v36)) + v10;
          LODWORD(v10) = v38;
          goto LABEL_4;
        }
      }

      LODWORD(v10) = v46;
      sub_222B7D9C4(v54, v46, 0);
    }

LABEL_4:
    v9 = v13 + 1;
    result = v12;
    v11 = MEMORY[0x277D84FA0];
    if (v9 == v45)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_222C61820(uint64_t a1)
{
  v3 = type metadata accessor for MediaFeedbackGroundTruth(0);
  v46 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  v43[1] = v1;
  v63 = MEMORY[0x277D84F90];
  sub_222B4C7A0(0, v6, 0);
  v55 = v63;
  v8 = a1 + 64;
  result = sub_222C94C2C();
  v10 = result;
  v11 = 0;
  v56 = *(a1 + 36);
  v44 = a1 + 72;
  v48 = a1 + 64;
  v45 = a1;
  v47 = v6;
  while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
  {
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
    {
      goto LABEL_31;
    }

    if (v56 != *(a1 + 36))
    {
      goto LABEL_32;
    }

    v51 = 1 << v10;
    v52 = v10 >> 6;
    v50 = v11;
    v14 = *(a1 + 56);
    v53 = *(*(a1 + 48) + v10);
    v15 = *(v14 + 8 * v10);
    v16 = *(v15 + 16);
    v54 = v16;
    if (v16)
    {
      v62 = v7;

      sub_222B4C7C0(0, v16, 0);
      v17 = v62;
      v18 = (*(v46 + 80) + 32) & ~*(v46 + 80);
      v49 = v15;
      v19 = v15 + v18;
      v20 = *(v46 + 72);
      do
      {
        sub_222C63048(v19, v5, type metadata accessor for MediaFeedbackGroundTruth);
        v21 = &v5[*(v3 + 28)];
        v22 = *(v21 + 2);
        v59 = *(v21 + 1);
        v60 = v22;
        v61 = *(v21 + 24);
        v58 = *v21;
        sub_222B554C0(&v58, v57);
        sub_222C630F8(v5, type metadata accessor for MediaFeedbackGroundTruth);
        v62 = v17;
        v24 = *(v17 + 16);
        v23 = *(v17 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_222B4C7C0((v23 > 1), v24 + 1, 1);
          v17 = v62;
        }

        *(v17 + 16) = v24 + 1;
        v25 = v17 + 56 * v24;
        v26 = v58;
        v27 = v59;
        v28 = v60;
        *(v25 + 80) = v61;
        *(v25 + 48) = v27;
        *(v25 + 64) = v28;
        *(v25 + 32) = v26;
        v19 += v20;
        --v16;
      }

      while (v16);
      a1 = v45;
      v8 = v48;
    }

    else
    {

      v17 = v7;
    }

    v29 = sub_222B71CA4(v17);

    v30 = *(v29 + 16);

    v31 = v55;
    v63 = v55;
    v33 = *(v55 + 16);
    v32 = *(v55 + 24);
    if (v33 >= v32 >> 1)
    {
      result = sub_222B4C7A0((v32 > 1), v33 + 1, 1);
      v31 = v63;
    }

    v34 = v53 | 0x80;
    *(v31 + 16) = v33 + 1;
    v55 = v31;
    v35 = v31 + 24 * v33;
    *(v35 + 32) = v34;
    *(v35 + 40) = v54;
    *(v35 + 48) = v30;
    v12 = 1 << *(a1 + 32);
    if (v10 >= v12)
    {
      goto LABEL_33;
    }

    v36 = *(v8 + 8 * v52);
    if ((v36 & v51) == 0)
    {
      goto LABEL_34;
    }

    if (v56 != *(a1 + 36))
    {
      goto LABEL_35;
    }

    v37 = v36 & (-2 << (v10 & 0x3F));
    if (v37)
    {
      v12 = __clz(__rbit64(v37)) | v10 & 0x7FFFFFFFFFFFFFC0;
      v7 = MEMORY[0x277D84F90];
      v13 = v47;
    }

    else
    {
      v38 = v52 << 6;
      v39 = v52 + 1;
      v40 = (v44 + 8 * v52);
      v7 = MEMORY[0x277D84F90];
      v13 = v47;
      while (v39 < (v12 + 63) >> 6)
      {
        v42 = *v40++;
        v41 = v42;
        v38 += 64;
        ++v39;
        if (v42)
        {
          result = sub_222B7D9C4(v10, v56, 0);
          v12 = __clz(__rbit64(v41)) + v38;
          goto LABEL_27;
        }
      }

      result = sub_222B7D9C4(v10, v56, 0);
LABEL_27:
      v8 = v48;
    }

    v11 = v50 + 1;
    v10 = v12;
    if (v50 + 1 == v13)
    {
      return v55;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_222C61CDC(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  for (i = (v4 + 63) >> 6; v6; result = sub_222B55A80(v15))
  {
    v8 = v2;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = *(v1 + 48) + 56 * (v9 | (v8 << 6));
    v12 = *(v10 + 16);
    v11 = *(v10 + 32);
    LOWORD(v9) = *(v10 + 48);
    v17[0] = *v10;
    v18 = v9;
    v17[1] = v12;
    v17[2] = v11;
    sub_222B554C0(v17, v15);
    sub_222B6A674(v13, v17);
    v15[0] = v13[0];
    v15[1] = v13[1];
    v15[2] = v13[2];
    v16 = v14;
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= i)
    {
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_222C61E08(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = sub_222B6A358(&v10, *(*(v1 + 48) + (v9 | (v8 << 6))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_222C61EE4()
{
  if (v0[7])
  {
    v1 = v0[7];
  }

  else
  {
    v2 = v0[5];
    v3 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
    v4 = type metadata accessor for MediaGroundTruth(0);
    v5 = sub_222C630B0(&qword_27D027038, type metadata accessor for MediaGroundTruth, &protocol conformance descriptor for MediaGroundTruth);
    v1 = InferredGroundTruthStore.readTypedGroundTruth<A>(_:)(v4, v2, v4, v3, v5);
    v0[7] = v1;
  }

  return v1;
}

void *sub_222C61FB8()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 64);
  }

  else
  {
    v2 = sub_222C61EE4();
    v1 = sub_222C629B8(v2);

    *(v0 + 64) = v1;
  }

  return v1;
}

uint64_t sub_222C62034()
{
  if (v0[9])
  {
    v1 = v0[9];
  }

  else
  {
    v2 = v0[5];
    v3 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
    v4 = type metadata accessor for MediaFeedbackGroundTruth(0);
    v5 = sub_222C630B0(&qword_27D0262B8, type metadata accessor for MediaFeedbackGroundTruth, &protocol conformance descriptor for MediaFeedbackGroundTruth);
    v1 = InferredGroundTruthStore.readTypedGroundTruth<A>(_:)(v4, v2, v4, v3, v5);
    v0[9] = v1;
  }

  return v1;
}

void *sub_222C62108()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 80);
  }

  else
  {
    v2 = sub_222C62034();
    v1 = sub_222C62D00(v2);

    *(v0 + 80) = v1;
  }

  return v1;
}

uint64_t sub_222C62184(uint64_t a1)
{
  if (sub_222C61FB8()[2])
  {
    sub_222B8CC2C(a1);
    if (v2)
    {
    }
  }

  if (sub_222C62108()[2])
  {
    sub_222B8CC2C(a1);
    if (v3)
    {
    }
  }

  v5 = sub_222C62340(v4);

  v6 = sub_222C61314(v5);

  v8 = sub_222C6267C(v7);

  v9 = sub_222C61820(v8);

  sub_222B49D90(v9);

  return v6;
}

uint64_t sub_222C622C4()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return swift_deallocClassInstance();
}

void *sub_222C62340(uint64_t a1)
{
  v2 = type metadata accessor for MediaGroundTruth(0);
  MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v3);
  v7 = &v35 - v6;
  v8 = MEMORY[0x277D84F98];
  v42 = MEMORY[0x277D84F98];
  v9 = *(a1 + 16);
  if (!v9)
  {
    return v8;
  }

  v37 = *(v4 + 80);
  v10 = *(v4 + 72);
  v40 = (v37 + 32) & ~v37;
  v11 = a1 + v40;
  v36 = xmmword_222C97C40;
  v41 = v5;
  v38 = v2;
  v39 = v10;
  while (1)
  {
    sub_222C63048(v11, v7, type metadata accessor for MediaGroundTruth);
    v15 = v7[*(v2 + 20)];
    v17 = sub_222B95ADC();
    v18 = v8[2];
    v19 = (v16 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      break;
    }

    v21 = v16;
    if (v8[3] < v20)
    {
      sub_222B8EB6C(v20, 1);
      v8 = v42;
      v22 = sub_222B95ADC();
      if ((v21 & 1) != (v23 & 1))
      {
        goto LABEL_19;
      }

      v17 = v22;
    }

    if (v21)
    {
      v24 = v8[7];
      sub_222B7E93C(v7, v41, type metadata accessor for MediaGroundTruth);
      v25 = *(v24 + 8 * v17);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v24 + 8 * v17) = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = sub_222B4A9D0(0, v25[2] + 1, 1, v25);
        *(v24 + 8 * v17) = v25;
      }

      v28 = v25[2];
      v27 = v25[3];
      if (v28 >= v27 >> 1)
      {
        v25 = sub_222B4A9D0((v27 > 1), v28 + 1, 1, v25);
        *(v24 + 8 * v17) = v25;
      }

      v2 = v38;
      v12 = v39;
      v25[2] = v28 + 1;
      v13 = v25 + v40 + v28 * v12;
      v14 = v12;
      sub_222B7E93C(v41, v13, type metadata accessor for MediaGroundTruth);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C48, &qword_222C96A20);
      v29 = v40;
      v30 = swift_allocObject();
      *(v30 + 16) = v36;
      sub_222B7E93C(v7, v30 + v29, type metadata accessor for MediaGroundTruth);
      v8[(v17 >> 6) + 8] |= 1 << v17;
      *(v8[6] + v17) = v15;
      *(v8[7] + 8 * v17) = v30;
      v31 = v8[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_18;
      }

      v8[2] = v33;
      v14 = v39;
    }

    v11 += v14;
    if (!--v9)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_222C9526C();
  __break(1u);
  return result;
}

void *sub_222C6267C(uint64_t a1)
{
  v2 = type metadata accessor for MediaFeedbackGroundTruth(0);
  MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v3);
  v7 = &v35 - v6;
  v8 = MEMORY[0x277D84F98];
  v42 = MEMORY[0x277D84F98];
  v9 = *(a1 + 16);
  if (!v9)
  {
    return v8;
  }

  v37 = *(v4 + 80);
  v10 = *(v4 + 72);
  v40 = (v37 + 32) & ~v37;
  v11 = a1 + v40;
  v36 = xmmword_222C97C40;
  v41 = v5;
  v38 = v2;
  v39 = v10;
  while (1)
  {
    sub_222C63048(v11, v7, type metadata accessor for MediaFeedbackGroundTruth);
    v15 = v7[*(v2 + 20)];
    v17 = sub_222B95ADC();
    v18 = v8[2];
    v19 = (v16 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      break;
    }

    v21 = v16;
    if (v8[3] < v20)
    {
      sub_222B8EB80(v20, 1);
      v8 = v42;
      v22 = sub_222B95ADC();
      if ((v21 & 1) != (v23 & 1))
      {
        goto LABEL_19;
      }

      v17 = v22;
    }

    if (v21)
    {
      v24 = v8[7];
      sub_222B7E93C(v7, v41, type metadata accessor for MediaFeedbackGroundTruth);
      v25 = *(v24 + 8 * v17);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v24 + 8 * v17) = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = sub_222B4AB1C(0, v25[2] + 1, 1, v25);
        *(v24 + 8 * v17) = v25;
      }

      v28 = v25[2];
      v27 = v25[3];
      if (v28 >= v27 >> 1)
      {
        v25 = sub_222B4AB1C((v27 > 1), v28 + 1, 1, v25);
        *(v24 + 8 * v17) = v25;
      }

      v2 = v38;
      v12 = v39;
      v25[2] = v28 + 1;
      v13 = v25 + v40 + v28 * v12;
      v14 = v12;
      sub_222B7E93C(v41, v13, type metadata accessor for MediaFeedbackGroundTruth);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024EB8, &unk_222CA5D60);
      v29 = v40;
      v30 = swift_allocObject();
      *(v30 + 16) = v36;
      sub_222B7E93C(v7, v30 + v29, type metadata accessor for MediaFeedbackGroundTruth);
      v8[(v17 >> 6) + 8] |= 1 << v17;
      *(v8[6] + v17) = v15;
      *(v8[7] + 8 * v17) = v30;
      v31 = v8[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_18;
      }

      v8[2] = v33;
      v14 = v39;
    }

    v11 += v14;
    if (!--v9)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_222C9526C();
  __break(1u);
  return result;
}

void *sub_222C629B8(uint64_t a1)
{
  v2 = type metadata accessor for MediaGroundTruth(0);
  MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v3);
  v7 = &v36 - v6;
  v8 = MEMORY[0x277D84F98];
  v43 = MEMORY[0x277D84F98];
  v9 = *(a1 + 16);
  if (!v9)
  {
    return v8;
  }

  v38 = *(v4 + 80);
  v10 = *(v4 + 72);
  v41 = (v38 + 32) & ~v38;
  v11 = a1 + v41;
  v37 = xmmword_222C97C40;
  v42 = v5;
  v39 = v2;
  v40 = v10;
  while (1)
  {
    sub_222C63048(v11, v7, type metadata accessor for MediaGroundTruth);
    v15 = *&v7[*(v2 + 24)];

    v18 = sub_222B8CC2C(v16);
    v19 = v8[2];
    v20 = (v17 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      break;
    }

    v22 = v17;
    if (v8[3] < v21)
    {
      sub_222B91B5C(v21, 1);
      v8 = v43;
      v23 = sub_222B8CC2C(v15);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_19;
      }

      v18 = v23;
    }

    if (v22)
    {

      v25 = v8[7];
      sub_222B7E93C(v7, v42, type metadata accessor for MediaGroundTruth);
      v26 = *(v25 + 8 * v18);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v25 + 8 * v18) = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v26 = sub_222B4A9D0(0, v26[2] + 1, 1, v26);
        *(v25 + 8 * v18) = v26;
      }

      v29 = v26[2];
      v28 = v26[3];
      if (v29 >= v28 >> 1)
      {
        v26 = sub_222B4A9D0((v28 > 1), v29 + 1, 1, v26);
        *(v25 + 8 * v18) = v26;
      }

      v2 = v39;
      v12 = v40;
      v26[2] = v29 + 1;
      v13 = v26 + v41 + v29 * v12;
      v14 = v12;
      sub_222B7E93C(v42, v13, type metadata accessor for MediaGroundTruth);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C48, &qword_222C96A20);
      v30 = v41;
      v31 = swift_allocObject();
      *(v31 + 16) = v37;
      sub_222B7E93C(v7, v31 + v30, type metadata accessor for MediaGroundTruth);
      v8[(v18 >> 6) + 8] |= 1 << v18;
      *(v8[6] + 8 * v18) = v15;
      *(v8[7] + 8 * v18) = v31;
      v32 = v8[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_18;
      }

      v8[2] = v34;
      v14 = v40;
    }

    v11 += v14;
    if (!--v9)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  sub_222C9386C();
  result = sub_222C9526C();
  __break(1u);
  return result;
}

void *sub_222C62D00(uint64_t a1)
{
  v2 = type metadata accessor for MediaFeedbackGroundTruth(0);
  MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v3);
  v7 = &v36 - v6;
  v8 = MEMORY[0x277D84F98];
  v43 = MEMORY[0x277D84F98];
  v9 = *(a1 + 16);
  if (!v9)
  {
    return v8;
  }

  v38 = *(v4 + 80);
  v10 = *(v4 + 72);
  v41 = (v38 + 32) & ~v38;
  v11 = a1 + v41;
  v37 = xmmword_222C97C40;
  v42 = v5;
  v39 = v2;
  v40 = v10;
  while (1)
  {
    sub_222C63048(v11, v7, type metadata accessor for MediaFeedbackGroundTruth);
    v15 = *&v7[*(v2 + 24)];

    v18 = sub_222B8CC2C(v16);
    v19 = v8[2];
    v20 = (v17 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      break;
    }

    v22 = v17;
    if (v8[3] < v21)
    {
      sub_222B91F70(v21, 1);
      v8 = v43;
      v23 = sub_222B8CC2C(v15);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_19;
      }

      v18 = v23;
    }

    if (v22)
    {

      v25 = v8[7];
      sub_222B7E93C(v7, v42, type metadata accessor for MediaFeedbackGroundTruth);
      v26 = *(v25 + 8 * v18);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v25 + 8 * v18) = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v26 = sub_222B4AB1C(0, v26[2] + 1, 1, v26);
        *(v25 + 8 * v18) = v26;
      }

      v29 = v26[2];
      v28 = v26[3];
      if (v29 >= v28 >> 1)
      {
        v26 = sub_222B4AB1C((v28 > 1), v29 + 1, 1, v26);
        *(v25 + 8 * v18) = v26;
      }

      v2 = v39;
      v12 = v40;
      v26[2] = v29 + 1;
      v13 = v26 + v41 + v29 * v12;
      v14 = v12;
      sub_222B7E93C(v42, v13, type metadata accessor for MediaFeedbackGroundTruth);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024EB8, &unk_222CA5D60);
      v30 = v41;
      v31 = swift_allocObject();
      *(v31 + 16) = v37;
      sub_222B7E93C(v7, v31 + v30, type metadata accessor for MediaFeedbackGroundTruth);
      v8[(v18 >> 6) + 8] |= 1 << v18;
      *(v8[6] + 8 * v18) = v15;
      *(v8[7] + 8 * v18) = v31;
      v32 = v8[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_18;
      }

      v8[2] = v34;
      v14 = v40;
    }

    v11 += v14;
    if (!--v9)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  sub_222C9386C();
  result = sub_222C9526C();
  __break(1u);
  return result;
}

uint64_t sub_222C63048(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_222C630B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_222C630F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_222C631D0(void (*a1)(id *), unint64_t a2, unint64_t a3, uint64_t *a4, uint64_t *a5, unint64_t a6)
{
  v8 = v6;
  v29 = a1;
  v30 = a2;
  v27 = a4;
  v28 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v26 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v22 - v12;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_222C94C6C())
  {
    v15 = a3;
    v32 = MEMORY[0x277D84F90];
    a3 = &v32;
    (a6)(0, i & ~(i >> 63), 0, v11);
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v22 = a6;
    a6 = 0;
    v16 = v32;
    v17 = v15;
    v24 = v15;
    v25 = v15 & 0xC000000000000001;
    v23 = v15 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v18 = a6 + 1;
      if (__OFADD__(a6, 1))
      {
        break;
      }

      if (v25)
      {
        v19 = MEMORY[0x223DC9B30](a6, v17);
      }

      else
      {
        if (a6 >= *(v23 + 16))
        {
          goto LABEL_17;
        }

        v19 = *(v17 + 8 * a6 + 32);
      }

      v15 = v19;
      v31 = v19;
      a3 = v30;
      v29(&v31);
      if (v8)
      {
        goto LABEL_20;
      }

      v8 = 0;

      v32 = v16;
      v21 = *(v16 + 16);
      v20 = *(v16 + 24);
      if (v21 >= v20 >> 1)
      {
        a3 = &v32;
        v22(v20 > 1, v21 + 1, 1);
        v16 = v32;
      }

      *(v16 + 16) = v21 + 1;
      sub_222B723A4(v13, v16 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v21, v27, v28);
      ++a6;
      v17 = v24;
      if (v18 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

uint64_t sub_222C63414(void (*a1)(__int128 *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v17 = MEMORY[0x277D84F90];
  sub_222B4CCD0(0, v4, 0);
  v5 = v17;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    a1(&v16, v9);
    if (v3)
    {
      break;
    }

    v11 = v16;
    v17 = v5;
    v13 = *(v5 + 16);
    v12 = *(v5 + 24);
    if (v13 >= v12 >> 1)
    {
      v15 = v16;
      sub_222B4CCD0((v12 > 1), v13 + 1, 1);
      v11 = v15;
      v5 = v17;
    }

    *(v5 + 16) = v13 + 1;
    *(v5 + 16 * v13 + 32) = v11;
    v9 += v10;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_222C63588(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v6 = type metadata accessor for ContactSuggestionProvidedClassification(0);
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
  sub_222B4CD50(0, v10, 0);
  v11 = v21;
  v12 = *(type metadata accessor for PlusContactSuggestionRuntimeSummary(0) - 8);
  v13 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v18 = *(v12 + 72);
  while (1)
  {
    v19(v13);
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
      sub_222B4CD50((v14 > 1), v15 + 1, 1);
      v11 = v21;
    }

    *(v11 + 16) = v15 + 1;
    sub_222C66B04(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15);
    v13 += v18;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_222C63770(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C40, &unk_222CA5FA0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - v8;
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v21 = MEMORY[0x277D84F90];
  sub_222B4CE58(0, v10, 0);
  v11 = v21;
  v12 = *(sub_222C9367C() - 8);
  v13 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v18 = *(v12 + 72);
  while (1)
  {
    v19(v13);
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
      sub_222B4CE58((v14 > 1), v15 + 1, 1);
      v11 = v21;
    }

    *(v11 + 16) = v15 + 1;
    sub_222B723A4(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, &qword_27D024C40, &unk_222CA5FA0);
    v13 += v18;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t PimsRuntimeLogging.notifyOnComplete()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_222C63994, 0, 0);
}

uint64_t sub_222C63994()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *(v2 + 16) = *(v0 + 16);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_222C63A90;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_222C63A90()
{

  return MEMORY[0x2822009F8](sub_222C63BA8, 0, 0);
}

uint64_t sub_222C63BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027A48, qword_222CA5E48);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7, v9);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v7);
  (*(a4 + 24))(sub_222C66A98, v13, a3, a4);
}

void *getPimsRuntimeLogger()@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for PimsRuntimeLogger();
  v3 = swift_allocObject();
  result = sub_222C63F14();
  a1[3] = v2;
  a1[4] = &off_28360EE90;
  *a1 = v3;
  return result;
}

uint64_t getTestablePimsRuntimeLogger(store:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_222C9410C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v16[-1] - v9;
  sub_222C940FC();
  sub_222B43E3C(a1, v16);
  v11 = type metadata accessor for PimsRuntimeLogger();
  v12 = swift_allocObject();
  (*(v5 + 16))(v7, v10, v4);
  v13 = sub_222C661EC(v7, v16, v12);
  result = (*(v5 + 8))(v10, v4);
  a2[3] = v11;
  a2[4] = &off_28360EE90;
  *a2 = v13;
  return result;
}

void *sub_222C63F14()
{
  v1 = v0;
  v11 = sub_222C94ADC();
  v2 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_222C94ACC();
  MEMORY[0x28223BE20](v5);
  v6 = sub_222C9436C();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_222C667D4();
  v10[0] = "storeInitialized";
  v10[1] = v7;
  sub_222C9434C();
  v12 = MEMORY[0x277D84F90];
  sub_222C669FC(&qword_27D027A30, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027A38, &qword_222CA5E40);
  sub_222C66A44(&qword_27D027A40, &qword_27D027A38, &qword_222CA5E40);
  sub_222C94C1C();
  (*(v2 + 104))(v4, *MEMORY[0x277D85260], v11);
  *(v0 + 24) = sub_222C94AFC();
  *(v0 + 32) = dispatch_group_create();
  type metadata accessor for PimsRuntimeLoggerSynchronous();
  v8 = swift_allocObject();
  sub_222C6515C(v8);
  *(v1 + 16) = v8;
  return v1;
}

uint64_t sub_222C6418C(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = v3;
  v39 = a3;
  v34 = a1;
  v42 = sub_222C9432C();
  v44 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v40 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_222C9436C();
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v37 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_222C9367C();
  v31 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v32 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_222C93FAC();
  v45 = *(v11 - 8);
  v12 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v33 = *a2;
  v16 = &v30 - v15;
  v38 = &v30 - v15;
  sub_222C93F9C();
  v17 = *(v3 + 24);
  v35 = *(v3 + 32);
  v36 = v17;
  (*(v9 + 16))(&v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v8);
  v18 = v45;
  v19 = v16;
  v20 = v11;
  (*(v45 + 16))(v13, v19, v11);
  v21 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v22 = v21 + v10;
  v23 = (*(v18 + 80) + (v22 & 0xFFFFFFFFFFFFFFF8) + 16) & ~*(v18 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v4;
  (*(v9 + 32))(v24 + v21, v32, v31);
  *(v24 + v22) = v33;
  *(v24 + (v22 & 0xFFFFFFFFFFFFFFF8) + 8) = v39;
  (*(v18 + 32))(v24 + v23, v13, v20);
  aBlock[4] = sub_222C66918;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_222C66B70;
  aBlock[3] = &block_descriptor_30;
  v25 = _Block_copy(aBlock);

  v26 = v37;
  sub_222C9435C();
  v46 = MEMORY[0x277D84F90];
  sub_222C669FC(&qword_27D027A18, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027A20, &unk_222CA5E30);
  sub_222C66A44(&qword_27D027A28, &qword_27D027A20, &unk_222CA5E30);
  v27 = v40;
  v28 = v42;
  sub_222C94C1C();
  MEMORY[0x223DC9890](v35, v26, v27, v25);
  _Block_release(v25);
  (*(v44 + 8))(v27, v28);
  (*(v41 + 8))(v26, v43);
  (*(v45 + 8))(v38, v20);
}

uint64_t sub_222C64684(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = a3;

  sub_222C65224(a2, &v9, a4, a5);
}

uint64_t sub_222C646F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v38 = a2;
  v32 = a1;
  v41 = sub_222C9432C();
  v43 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v39 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_222C9436C();
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_222C9367C();
  v6 = *(v31 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v31);
  v30 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_222C93FAC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - v13;
  v37 = &v30 - v13;
  sub_222C93F9C();
  v15 = *(v2 + 24);
  v34 = *(v2 + 32);
  v35 = v15;
  v16 = v31;
  (*(v6 + 16))(&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v32, v31);
  v17 = v9;
  v18 = *(v9 + 16);
  v19 = v8;
  v18(v11, v14, v8);
  v20 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v21 = (v7 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = *(v17 + 80);
  v33 = v17;
  v23 = (v22 + v21 + 8) & ~v22;
  v24 = swift_allocObject();
  *(v24 + 16) = v3;
  (*(v6 + 32))(v24 + v20, v30, v16);
  *(v24 + v21) = v38;
  (*(v17 + 32))(v24 + v23, v11, v19);
  aBlock[4] = sub_222C66838;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_222C66B70;
  aBlock[3] = &block_descriptor_24_0;
  v25 = _Block_copy(aBlock);

  v26 = v36;
  sub_222C9435C();
  v44 = MEMORY[0x277D84F90];
  sub_222C669FC(&qword_27D027A18, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027A20, &unk_222CA5E30);
  sub_222C66A44(&qword_27D027A28, &qword_27D027A20, &unk_222CA5E30);
  v27 = v39;
  v28 = v41;
  sub_222C94C1C();
  MEMORY[0x223DC9890](v34, v26, v27, v25);
  _Block_release(v25);
  (*(v43 + 8))(v27, v28);
  (*(v40 + 8))(v26, v42);
  (*(v33 + 8))(v37, v19);
}

uint64_t sub_222C64BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_222C65A88(a2, a3, a4);
}

uint64_t sub_222C64C38(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_222C9432C();
  v22 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_222C9436C();
  v7 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_222C9433C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v2 + 32);
  sub_222C667D4();
  (*(v11 + 104))(v13, *MEMORY[0x277D851C8], v10);
  v14 = sub_222C94B0C();
  (*(v11 + 8))(v13, v10);
  v15 = swift_allocObject();
  *(v15 + 16) = v19;
  *(v15 + 24) = a2;
  aBlock[4] = sub_222BE43DC;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_222C66B70;
  aBlock[3] = &block_descriptor_2;
  v16 = _Block_copy(aBlock);

  sub_222C9435C();
  v23 = MEMORY[0x277D84F90];
  sub_222C669FC(&qword_27D027A18, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027A20, &unk_222CA5E30);
  sub_222C66A44(&qword_27D027A28, &qword_27D027A20, &unk_222CA5E30);
  sub_222C94C1C();
  sub_222C94ABC();
  _Block_release(v16);

  (*(v22 + 8))(v6, v4);
  (*(v7 + 8))(v9, v21);
}

uint64_t sub_222C64FD4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_222C65018()
{

  return swift_deallocClassInstance();
}

uint64_t sub_222C650CC()
{
  type metadata accessor for PLUSMediaSuggesterRuntimeLogHelper();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025D18, &qword_222C9AC28);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_27D027A00 = 91;
  *algn_27D027A08 = 0xE100000000000000;
  return result;
}

uint64_t sub_222C6515C(uint64_t a1)
{
  *(v1 + 56) = 0;
  *(v1 + 40) = 0u;
  *(v1 + 24) = 0u;
  sub_222C9403C();
  type metadata accessor for PLUSMediaSuggesterRuntimeLogHelper();
  v2 = swift_allocObject();
  type metadata accessor for SELFEventLogEmitters();
  v3 = swift_allocObject();
  sub_222B405A0(v5, v3 + 16);
  *(v2 + 16) = v3;
  *(v1 + 16) = v2;
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  swift_beginAccess();
  sub_222C66614(v5, v1 + 24);
  swift_endAccess();
  *(v1 + 64) = 0;
  return v1;
}

void sub_222C65224(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v55 = a4;
  v53 = a3;
  v8 = sub_222C9419C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v51 - v13;
  v15 = sub_222C9367C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = *a2;
  sub_222C9402C();
  (*(v9 + 104))(v11, *MEMORY[0x277D5FCD0], v8);
  v54 = a1;
  sub_222C9401C();
  (*(v9 + 8))(v11, v8);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_222B4FCD4(v14, &unk_27D026290, &qword_222C96B40);
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v19 = sub_222C9431C();
    __swift_project_value_buffer(v19, qword_280FE2340);
    v20 = sub_222C942FC();
    v21 = sub_222C94A4C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v57[0] = v23;
      *v22 = 136315138;
      if (qword_27D024778 != -1)
      {
        swift_once();
      }

      *(v22 + 4) = sub_222B437C0(qword_27D027A00, *algn_27D027A08, v57);
      _os_log_impl(&dword_222B39000, v20, v21, "%s Failed to generate plusId for PIMS candidate logging", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      MEMORY[0x223DCA8C0](v23, -1, -1);
      MEMORY[0x223DCA8C0](v22, -1, -1);
    }
  }

  else
  {
    (*(v16 + 32))(v18, v14, v15);
    v24 = [objc_allocWithZone(MEMORY[0x277D59D98]) init];
    v25 = v18;
    if (v24)
    {
      v26 = v24;
      v27 = v18;
      v28 = [objc_allocWithZone(MEMORY[0x277D59CE0]) init];
      if (v28)
      {
        v29 = v28;
        v30 = [objc_allocWithZone(MEMORY[0x277D59D10]) init];
        if (v30)
        {
          v31 = v30;
          v51 = v5;
          v32 = sub_222B9D33C();
          if (v32)
          {
            v33 = v32;
            v34 = v52 == 1;
            v52 = v52 == 2;
            [v31 setShadowLogging_];
            [v29 setMediaState_];
            [v26 setSuggestionDomainMetadata_];
            v35 = objc_allocWithZone(MEMORY[0x277D5AC78]);
            v36 = sub_222C9361C();
            v37 = [v35 initWithNSUUID_];

            [v26 setOriginalRequestId_];
            [v26 setIsSuggesterEnabled_];
            [v26 setDomainConfiguredState_];
            sub_222BA1EAC(v26, v27, v55, v38, v39, v40, v41, v42, v51);

            v26 = v29;
            v29 = v31;
            v31 = v33;
          }

          v26 = v29;
          v29 = v31;
        }

        v26 = v29;
      }

      v25 = v27;
    }

    v43 = sub_222C65EEC(v57);
    if (!v57[3])
    {
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v44 = sub_222C9431C();
      __swift_project_value_buffer(v44, qword_280FE2340);
      v45 = sub_222C942FC();
      v46 = sub_222C94A4C();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v56 = v48;
        *v47 = 136315138;
        if (qword_27D024778 != -1)
        {
          swift_once();
        }

        *(v47 + 4) = sub_222B437C0(qword_27D027A00, *algn_27D027A08, &v56);
        _os_log_impl(&dword_222B39000, v45, v46, "%s Failed to read PIMS candidates as PIMS store not available", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v48);
        MEMORY[0x223DCA8C0](v48, -1, -1);
        MEMORY[0x223DCA8C0](v47, -1, -1);
      }

      else
      {
      }
    }

    MEMORY[0x28223BE20](v43);
    *(&v51 - 2) = v57;
    v49 = sub_222C63770(sub_222C667B4, (&v51 - 4), v53);
    v50 = sub_222C673B4(v49);

    sub_222B9C49C(v54, v50, v25, v55);

    (*(v16 + 8))(v25, v15);
    sub_222B4FCD4(v57, &qword_27D027060, &qword_222CA1E40);
  }
}

uint64_t sub_222C65938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C40, &unk_222CA5FA0) + 48);
  v7 = sub_222C9367C();
  (*(*(v7 - 8) + 16))(a3, a1, v7);
  sub_222C66684(a2, v12);
  v8 = v13;
  if (v13)
  {
    v9 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    (*(v9 + 56))(a1, v8, v9);
    return __swift_destroy_boxed_opaque_existential_0Tm(v12);
  }

  else
  {
    sub_222B4FCD4(v12, &qword_27D027060, &qword_222CA1E40);
    v11 = type metadata accessor for PlusMediaSuggestion(0);
    return (*(*(v11 - 8) + 56))(a3 + v6, 1, 1, v11);
  }
}

void sub_222C65A88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a2;
  v5 = type metadata accessor for PimsSuggestionMetadata(0);
  v29 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_222C9419C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v28 - v13;
  v15 = sub_222C9367C();
  v31 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_222C9402C();
  (*(v9 + 104))(v11, *MEMORY[0x277D5FCD0], v8);
  sub_222C9401C();
  v18 = v8;
  v19 = v31;
  (*(v9 + 8))(v11, v18);
  if ((*(v19 + 48))(v14, 1, v15) == 1)
  {
    sub_222B4FCD4(v14, &unk_27D026290, &qword_222C96B40);
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v20 = sub_222C9431C();
    __swift_project_value_buffer(v20, qword_280FE2340);
    v21 = sub_222C942FC();
    v22 = sub_222C94A4C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v32 = v24;
      *v23 = 136315138;
      if (qword_27D024778 != -1)
      {
        swift_once();
      }

      *(v23 + 4) = sub_222B437C0(qword_27D027A00, *algn_27D027A08, &v32);
      _os_log_impl(&dword_222B39000, v21, v22, "%s Failed to generate plusId for PIMS candidate logging", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      MEMORY[0x223DCA8C0](v24, -1, -1);
      MEMORY[0x223DCA8C0](v23, -1, -1);
    }
  }

  else
  {
    (*(v19 + 32))(v17, v14, v15);
    v25 = *(v30 + 16);
    if (v25)
    {
      v26 = v30 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
      v27 = *(v29 + 72);
      do
      {
        sub_222C666F4(v26, v7);
        sub_222B9C6B0(a1, v7, v17, a3);
        sub_222C66758(v7);
        v26 += v27;
        --v25;
      }

      while (v25);
    }

    (*(v19 + 8))(v17, v15);
  }
}

uint64_t sub_222C65EEC@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 64) == 1)
  {
    v3 = v1 + 24;
    swift_beginAccess();
  }

  else
  {
    v4 = sub_222C9429C();
    v6 = v5;
    v7 = type metadata accessor for PIMSStoreCoreData();
    v8 = swift_allocObject();
    v9 = sub_222C769D4(v4, v6, 0);

    if (v9)
    {
      *(v8 + 16) = v9;
      *(v8 + 24) = [v9 newBackgroundContext];
      v10 = &protocol witness table for PIMSStoreCoreData;
    }

    else
    {
      swift_deallocPartialClassInstance();
      v8 = 0;
      v7 = 0;
      v10 = 0;
      v18[1] = 0;
      v18[2] = 0;
    }

    v18[0] = v8;
    v19 = v7;
    v20 = v10;
    v3 = v1 + 24;
    swift_beginAccess();
    sub_222C66614(v18, v1 + 24);
    swift_endAccess();
    sub_222C66684(v1 + 24, v18);
    v11 = v19;
    sub_222B4FCD4(v18, &qword_27D027060, &qword_222CA1E40);
    if (!v11)
    {
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v12 = sub_222C9431C();
      __swift_project_value_buffer(v12, qword_280FE2340);
      v13 = sub_222C942FC();
      v14 = sub_222C94A4C();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v18[0] = v16;
        *v15 = 136315138;
        if (qword_27D024778 != -1)
        {
          swift_once();
        }

        *(v15 + 4) = sub_222B437C0(qword_27D027A00, *algn_27D027A08, v18);
        _os_log_impl(&dword_222B39000, v13, v14, "%s Failed to initialise PIMS store", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v16);
        MEMORY[0x223DCA8C0](v16, -1, -1);
        MEMORY[0x223DCA8C0](v15, -1, -1);
      }

      else
      {
      }
    }

    *(v1 + 64) = 1;
  }

  return sub_222C66684(v3, a1);
}

uint64_t sub_222C6619C()
{

  sub_222B4FCD4(v0 + 24, &qword_27D027060, &qword_222CA1E40);

  return swift_deallocClassInstance();
}

void *sub_222C661EC(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v17 = a1;
  v15 = sub_222C94ADC();
  v4 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_222C94ACC();
  MEMORY[0x28223BE20](v7);
  v8 = sub_222C9436C();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_222C667D4();
  v14[0] = "storeInitialized";
  v14[1] = v9;
  sub_222C9434C();
  *&v18[0] = MEMORY[0x277D84F90];
  sub_222C669FC(&qword_27D027A30, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027A38, &qword_222CA5E40);
  sub_222C66A44(&qword_27D027A40, &qword_27D027A38, &qword_222CA5E40);
  sub_222C94C1C();
  (*(v4 + 104))(v6, *MEMORY[0x277D85260], v15);
  a3[3] = sub_222C94AFC();
  a3[4] = dispatch_group_create();
  v10 = v16;
  sub_222B43E3C(v16, v18);
  type metadata accessor for PimsRuntimeLoggerSynchronous();
  v11 = swift_allocObject();
  v12 = sub_222C664EC(v17, v18, v11);
  __swift_destroy_boxed_opaque_existential_0Tm(v10);
  a3[2] = v12;
  return a3;
}

uint64_t sub_222C664EC(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = sub_222C9410C();
  v13 = v6;
  v14 = MEMORY[0x277D5FC40];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(v6 - 8) + 32))(boxed_opaque_existential_1, a1, v6);
  type metadata accessor for PLUSMediaSuggesterRuntimeLogHelper();
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0;
  *(a3 + 24) = 0u;
  v8 = swift_allocObject();
  type metadata accessor for SELFEventLogEmitters();
  v9 = swift_allocObject();
  sub_222B405A0(&v12, v9 + 16);
  *(v8 + 16) = v9;
  *(a3 + 16) = v8;
  sub_222B405A0(a2, v11);
  swift_beginAccess();
  sub_222C66614(v11, a3 + 24);
  swift_endAccess();
  *(a3 + 64) = 1;
  return a3;
}

uint64_t sub_222C66614(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027060, &qword_222CA1E40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_222C66684(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027060, &qword_222CA1E40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222C666F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PimsSuggestionMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222C66758(uint64_t a1)
{
  v2 = type metadata accessor for PimsSuggestionMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_222C667D4()
{
  result = qword_27D027A10;
  if (!qword_27D027A10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D027A10);
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_222C66838()
{
  v1 = *(sub_222C9367C() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_222C93FAC() - 8);
  v5 = *(v0 + 16);
  v6 = *(v0 + v3);
  v7 = v0 + ((v3 + *(v4 + 80) + 8) & ~*(v4 + 80));

  return sub_222C64BD4(v5, v0 + v2, v6, v7);
}

uint64_t sub_222C66918()
{
  v1 = *(sub_222C9367C() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(sub_222C93FAC() - 8);
  v5 = *(v0 + 16);
  v6 = *(v0 + v3);
  v7 = *(v0 + (v3 & 0xFFFFFFFFFFFFFFF8) + 8);
  v8 = v0 + (((v3 & 0xFFFFFFFFFFFFFFF8) + *(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_222C64684(v5, v0 + v2, v6, v7, v8);
}

uint64_t sub_222C669FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_222C66A44(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_222C66B04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactSuggestionProvidedClassification(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SendMessageUSOFeature.RecipientNames.__allocating_init(value:)(uint64_t a1)
{
  swift_allocObject();
  return sub_222C93EEC();
}

{
  swift_allocObject();
  return sub_222C93EDC();
}

uint64_t SendMessageUSOFeature.RecipientNames.init(value:)(uint64_t a1)
{
  return sub_222C93EEC();
}

{
  return sub_222C93EDC();
}

uint64_t sub_222C66C5C(uint64_t *a1)
{
  type metadata accessor for SendMessageUSOFeature.RecipientNames(0);
  swift_allocObject();
  return sub_222C93EEC();
}

uint64_t sub_222C66CA8(uint64_t *a1)
{
  type metadata accessor for SendMessageUSOFeature.RecipientNames(0);
  swift_allocObject();
  return sub_222C93EDC();
}

uint64_t SendMessageUSOFeature.MessageHasPayload.__allocating_init(value:)(char a1)
{
  swift_allocObject();
  return sub_222C93EEC();
}

{
  swift_allocObject();
  return sub_222C93EDC();
}

uint64_t SendMessageUSOFeature.MessageHasPayload.init(value:)(char a1)
{
  return sub_222C93EEC();
}

{
  return sub_222C93EDC();
}

uint64_t SendMessageUSOFeature.MessageHasPayload.__deallocating_deinit()
{
  _s28SiriPrivateLearningInference13CommonFeatureO09DonatedByA0Cfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_222C66E78(char *a1)
{
  type metadata accessor for SendMessageUSOFeature.MessageHasPayload(0);
  swift_allocObject();
  return sub_222C93EEC();
}

uint64_t sub_222C66EC4(char *a1)
{
  type metadata accessor for SendMessageUSOFeature.MessageHasPayload(0);
  swift_allocObject();
  return sub_222C93EDC();
}

uint64_t sub_222C66F20(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v17 = MEMORY[0x277D84F90];
    sub_222B4C458(0, v1, 0);
    v2 = v17;
    v4 = (a1 + 64);
    do
    {
      v5 = *(v4 - 32);
      v6 = *(v4 - 2);
      v13 = *(v4 - 3);
      v7 = *(v4 - 1);
      v8 = *v4;
      v17 = v2;
      v10 = *(v2 + 16);
      v9 = *(v2 + 24);

      if (v10 >= v9 >> 1)
      {
        sub_222B4C458((v9 > 1), v10 + 1, 1);
        v2 = v17;
      }

      v15 = &type metadata for SuccessfulMessageClassification;
      v16 = &protocol witness table for SuccessfulMessageClassification;
      v11 = swift_allocObject();
      *&v14 = v11;
      *(v11 + 16) = v5;
      *(v11 + 24) = v13;
      *(v11 + 32) = v6;
      *(v11 + 40) = v7;
      *(v11 + 48) = v8;
      *(v2 + 16) = v10 + 1;
      sub_222B405A0(&v14, v2 + 40 * v10 + 32);
      v4 += 5;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_222C670A8(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void))
{
  v21 = a5;
  v8 = a2(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - v10;
  v12 = *(a1 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v25 = MEMORY[0x277D84F90];
    sub_222B4C458(0, v12, 0);
    v13 = v25;
    v14 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v15 = *(v9 + 72);
    do
    {
      sub_222C6AD74(v14, v11, a3);
      v25 = v13;
      v17 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_222B4C458((v16 > 1), v17 + 1, 1);
        v13 = v25;
      }

      v23 = v8;
      v24 = a4;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v22);
      sub_222C6AD74(v11, boxed_opaque_existential_1, a3);
      *(v13 + 16) = v17 + 1;
      sub_222B405A0(&v22, v13 + 40 * v17 + 32);
      sub_222C6ADDC(v11, v21);
      v14 += v15;
      --v12;
    }

    while (v12);
  }

  return v13;
}

uint64_t sub_222C6724C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_222B4C888(0, v1, 0);
    v2 = v10;
    v4 = a1 + 32;
    do
    {
      sub_222B79B90(v4, &v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024F80, &qword_222C9A0D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024E28, &unk_222C995F0);
      swift_dynamicCast();
      v10 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_222B4C888((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v6 + 1;
      sub_222B405A0(&v9, v2 + 40 * v6 + 32);
      v4 += 48;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_222C673B4(uint64_t a1)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C40, &unk_222CA5FA0);
  v2 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = &v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C30, &qword_222C96A08);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v17 = MEMORY[0x277D84F90];
    sub_222B4CE18(0, v9, 0);
    v10 = v17;
    v11 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v12 = *(v2 + 72);
    do
    {
      sub_222B4FC6C(v11, v4, &qword_27D024C40, &unk_222CA5FA0);
      swift_dynamicCast();
      v17 = v10;
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_222B4CE18((v13 > 1), v14 + 1, 1);
        v10 = v17;
      }

      *(v10 + 16) = v14 + 1;
      sub_222C6A8C0(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14);
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  return v10;
}

char *sub_222C6760C(unint64_t a1, uint64_t (*a2)(void))
{
  if (a1 >> 62)
  {
    v4 = sub_222C94C6C();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v15 = MEMORY[0x277D84F90];
  result = sub_222B4CBF4(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = v15;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v4; ++i)
      {
        MEMORY[0x223DC9B30](i, a1);
        a2(0);
        swift_dynamicCast();
        v15 = v5;
        v9 = *(v5 + 16);
        v8 = *(v5 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_222B4CBF4((v8 > 1), v9 + 1, 1);
          v5 = v15;
        }

        *(v5 + 16) = v9 + 1;
        sub_222BF54CC(v14, (v5 + 32 * v9 + 32));
      }
    }

    else
    {
      v10 = (a1 + 32);
      a2(0);
      do
      {
        v11 = *v10;
        swift_dynamicCast();
        v15 = v5;
        v13 = *(v5 + 16);
        v12 = *(v5 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_222B4CBF4((v12 > 1), v13 + 1, 1);
          v5 = v15;
        }

        *(v5 + 16) = v13 + 1;
        sub_222BF54CC(v14, (v5 + 32 * v13 + 32));
        ++v10;
        --v4;
      }

      while (v4);
    }

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t PartialRepetitionClassifier.__allocating_init(turnComparators:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_222C67818(uint64_t a1)
{
  type metadata accessor for PartialRepetitionClassifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027A60, &qword_222CA5FB0);
  v1 = sub_222C944EC();
  MEMORY[0x223DC9330](v1);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_280FDDBC8 = 91;
  *algn_280FDDBD0 = 0xE100000000000000;
  return result;
}

uint64_t PartialRepetitionClassifier.__allocating_init(turnComparator:)(__int128 *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025FD8, &qword_222CA5EC0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_222C97C40;
  sub_222B405A0(a1, v2 + 32);
  type metadata accessor for PartialRepetitionClassifier();
  result = swift_allocObject();
  *(result + 16) = v2;
  return result;
}

uint64_t sub_222C67944(uint64_t *a1)
{
  v2 = v1;
  v78 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025020, &unk_222C98410);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v57 - v5;
  v74 = type metadata accessor for TurnPairRestatementClassification(0);
  v7 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v73 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v68 = &v57 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024D88, qword_222C9E460);
  v72 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v70 = &v57 - v12;
  v13 = type metadata accessor for FeaturisedTurn(0);
  v77 = *(v13 - 8);
  MEMORY[0x28223BE20](v13 - 8);
  v76 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v57 - v16;
  v18 = type metadata accessor for FeaturisedSession(0);
  v20 = MEMORY[0x28223BE20](v18);
  v65 = (&v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x277D84F90];
  v85 = MEMORY[0x277D84F90];
  v75 = v2;
  v23 = v2[2];
  v64 = *(v23 + 16);
  if (v64)
  {
    v24 = 0;
    v63 = v23 + 32;
    v67 = v7;
    v71 = (v7 + 48);
    v60 = *(v19 + 20);
    v61 = v19;
    v59 = *(v19 + 24);
    v25 = *a1;
    v20.n128_u64[0] = 136315394;
    v57 = v20;
    v69 = v6;
    v79 = v25;
    v62 = a1;
    v58 = v23;
    while (v24 < *(v23 + 16))
    {
      v66 = v24;
      sub_222B43E3C(v63 + 40 * v24, &v84);
      sub_222B43E3C(&v84, v81);
      v27 = *(v25 + 16);

      if (v27)
      {
        v28 = 0;
        v29 = MEMORY[0x277D84F90];
        while (v28 < *(v25 + 16))
        {
          v30 = (*(v77 + 80) + 32) & ~*(v77 + 80);
          v31 = *(v77 + 72);
          sub_222C6AD74(v25 + v30 + v31 * v28, v17, type metadata accessor for FeaturisedTurn);
          v33 = v82;
          v32 = v83;
          __swift_project_boxed_opaque_existential_1(v81, v82);
          if ((*(v32 + 16))(v17, v33, v32))
          {
            sub_222C6AD0C(v17, v76, type metadata accessor for FeaturisedTurn);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v80 = v29;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_222B4C3D4(0, *(v29 + 16) + 1, 1);
              v29 = v80;
            }

            v36 = *(v29 + 16);
            v35 = *(v29 + 24);
            if (v36 >= v35 >> 1)
            {
              sub_222B4C3D4((v35 > 1), v36 + 1, 1);
              v29 = v80;
            }

            *(v29 + 16) = v36 + 1;
            sub_222C6AD0C(v76, v29 + v30 + v36 * v31, type metadata accessor for FeaturisedTurn);
          }

          else
          {
            sub_222C6ADDC(v17, type metadata accessor for FeaturisedTurn);
          }

          ++v28;
          v25 = v79;
          if (v27 == v28)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
        goto LABEL_39;
      }

      v29 = MEMORY[0x277D84F90];
LABEL_18:
      __swift_destroy_boxed_opaque_existential_0Tm(v81);

      v37 = v61;
      v38 = *(v61 + 20);
      v39 = sub_222C9367C();
      v40 = v65;
      v41 = v62;
      (*(*(v39 - 8) + 16))(v65 + v38, v62 + v60, v39);
      sub_222B4FC6C(v41 + v59, v40 + *(v37 + 24), &unk_27D026290, &qword_222C96B40);
      *v40 = v29;

      sub_222C6ADDC(v40, type metadata accessor for FeaturisedSession);
      sub_222B64278(2, v29);

      MEMORY[0x28223BE20](v42);
      *(&v57 - 2) = &v84;
      *(&v57 - 1) = v78;
      v43 = sub_222BDBA3C(sub_222C6A930, (&v57 - 2));

      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v44 = sub_222C9431C();
      __swift_project_value_buffer(v44, qword_280FE2340);

      v45 = sub_222C942FC();
      v46 = sub_222C94A3C();
      v47 = os_log_type_enabled(v45, v46);
      v48 = v69;
      if (v47)
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v81[0] = v50;
        *v49 = v57.n128_u32[0];
        if (qword_280FDDBC0 != -1)
        {
          swift_once();
        }

        *(v49 + 4) = sub_222B437C0(qword_280FDDBC8, *algn_280FDDBD0, v81);
        *(v49 + 12) = 2048;
        *(v49 + 14) = v43[2];

        _os_log_impl(&dword_222B39000, v45, v46, "%s Identifying restatements in %ld turn pairs", v49, 0x16u);
        __swift_destroy_boxed_opaque_existential_0Tm(v50);
        MEMORY[0x223DCA8C0](v50, -1, -1);
        MEMORY[0x223DCA8C0](v49, -1, -1);
      }

      else
      {
      }

      v51 = v43[2];
      v25 = v70;
      if (v51)
      {
        v52 = 0;
        v26 = MEMORY[0x277D84F90];
        while (v52 < v43[2])
        {
          sub_222B4FC6C(v43 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v52, v25, &qword_27D024D88, qword_222C9E460);
          sub_222C68A8C(v25, v48);
          sub_222B4FCD4(v25, &qword_27D024D88, qword_222C9E460);
          if ((*v71)(v48, 1, v74) == 1)
          {
            sub_222B4FCD4(v48, &qword_27D025020, &unk_222C98410);
          }

          else
          {
            v53 = v48;
            v54 = v68;
            sub_222C6AD0C(v53, v68, type metadata accessor for TurnPairRestatementClassification);
            sub_222C6AD0C(v54, v73, type metadata accessor for TurnPairRestatementClassification);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v26 = sub_222B4A2A0(0, v26[2] + 1, 1, v26);
            }

            v56 = v26[2];
            v55 = v26[3];
            if (v56 >= v55 >> 1)
            {
              v26 = sub_222B4A2A0((v55 > 1), v56 + 1, 1, v26);
            }

            v26[2] = v56 + 1;
            sub_222C6AD0C(v73, v26 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v56, type metadata accessor for TurnPairRestatementClassification);
            v48 = v69;
            v25 = v70;
          }

          if (v51 == ++v52)
          {
            goto LABEL_4;
          }
        }

LABEL_39:
        __break(1u);
        break;
      }

      v26 = MEMORY[0x277D84F90];
LABEL_4:
      v24 = v66 + 1;

      sub_222B49094(v26);
      __swift_destroy_boxed_opaque_existential_0Tm(&v84);
      v23 = v58;
      v25 = v79;
      if (v24 == v64)
      {
        return v85;
      }
    }

    __break(1u);

    sub_222B4FCD4(v25, &qword_27D024D88, qword_222C9E460);

    __break(1u);
  }

  return result;
}