void sub_275545AF8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator_completionHandler);
    v3 = *(Strong + OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator_completionHandler + 8);
    v4 = Strong;
    sub_2755475E0(v2, v3);

    if (v2)
    {
      v2();
      sub_27554174C(v2, v3);
    }
  }
}

uint64_t sub_275545CB8(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_275545D14(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_275545D14(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_275545DE0(v11, 0, 0, 1, a1, a2);
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
    sub_27551E914(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_275545DE0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_275545EEC(a5, a6);
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
    result = sub_27554D5A8();
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

void *sub_275545EEC(uint64_t a1, unint64_t a2)
{
  v3 = sub_275545F38(a1, a2);
  sub_275546068(&unk_28842A040);
  return v3;
}

void *sub_275545F38(uint64_t a1, unint64_t a2)
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

  v6 = sub_275546154(v5, 0);
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

  result = sub_27554D5A8();
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
        v10 = sub_27554D3B8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_275546154(v10, 0);
        result = sub_27554D578();
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

uint64_t sub_275546068(uint64_t result)
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

  result = sub_2755461C8(result, v11, 1, v3);
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

void *sub_275546154(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F6108, &qword_2755513E8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2755461C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F6108, &qword_2755513E8);
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

unint64_t sub_2755462BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809F6120, &qword_275551400);
    v3 = sub_27554D608();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_27552E278(v5, v6);
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

unint64_t sub_2755463C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809F6110, &unk_2755513F0);
    v3 = sub_27554D608();
    v4 = a1 + 32;

    while (1)
    {
      sub_275514D40(v4, &v13, &qword_2809F5620, &qword_27554F978);
      v5 = v13;
      v6 = v14;
      result = sub_27552E278(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_27551E990(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_2755464F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F6100, &qword_2755513E0);
    v3 = sub_27554D608();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_27552E278(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

void sub_2755465EC(void *a1, uint64_t a2)
{
  v5 = sub_27554C778();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F60B8, &qword_2755513B8);
  v50 = *(v9 - 8);
  v10 = *(v50 + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v46 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F60B0, &qword_2755513B0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v46 - v15;
  if (!a1)
  {
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  if ([a1 statusCode] != 401)
  {
    return;
  }

  v47 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a1;
  v49 = v2;
  sub_275514D40(a2, v13, &qword_2809F60B8, &qword_2755513B8);
  v17 = sub_27554C4D8();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v13, 1, v17) == 1)
  {
    goto LABEL_15;
  }

  v46 = a2;
  sub_27554C4B8();
  (*(v18 + 8))(v13, v17);
  v19 = sub_27554C5F8();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v16, 1, v19) == 1)
  {
    sub_275514DA8(v16, &qword_2809F60B0, &qword_2755513B0);
    v21 = 0;
    v22 = 0xE000000000000000;
  }

  else
  {
    v21 = sub_27554C5B8();
    v22 = v23;
    (*(v20 + 8))(v16, v19);
  }

  if (qword_2809F4D80 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v5, qword_2809F8DA8);
  (*(v6 + 16))(v8, v24, v5);

  v25 = sub_27554C758();
  v26 = sub_27554D458();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    aBlock[0] = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_275545D14(v21, v22, aBlock);
    _os_log_impl(&dword_27550C000, v25, v26, "Received 401 for URL %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x277C7BAC0](v28, -1, -1);
    MEMORY[0x277C7BAC0](v27, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  v29 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5720, &qword_275550130);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_27554E410;
  *(inited + 32) = sub_27554D338();
  *(inited + 40) = v31;
  *(inited + 48) = 1;
  *(inited + 56) = sub_27554D338();
  *(inited + 64) = v32;
  *(inited + 72) = 0;
  v33 = sub_2755464F0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F60F0, &qword_2755513D0);
  swift_arrayDestroy();
  v34 = *(v29 + OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator_appleAccount);
  v35 = [v34 accountStore];
  if (!v35)
  {
    goto LABEL_16;
  }

  v36 = v35;

  sub_275541E10(v33);

  v37 = sub_27554D2E8();

  v38 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v39 = v47;
  sub_275514D40(v46, v47, &qword_2809F60B8, &qword_2755513B8);
  v40 = (*(v50 + 80) + 24) & ~*(v50 + 80);
  v41 = (v10 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  *(v42 + 16) = v38;
  sub_2755151DC(v39, v42 + v40, &qword_2809F60B8, &qword_2755513B8);
  v43 = v48;
  *(v42 + v41) = v48;
  aBlock[4] = sub_275547830;
  aBlock[5] = v42;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2755420C8;
  aBlock[3] = &block_descriptor_53;
  v44 = _Block_copy(aBlock);
  v45 = v43;

  [v36 renewCredentialsForAccount:v34 options:v37 completion:v44];
  _Block_release(v44);
}

id sub_275546CA8(void *a1, void *a2)
{
  v53 = a1;
  v3 = sub_27554D278();
  v52 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v50 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_27554D2A8();
  v49 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_27554D288();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_27554C778();
  v12 = *(v11 - 8);
  result = MEMORY[0x28223BE20](v11);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    goto LABEL_29;
  }

  if ([a2 topSignal] == 1)
  {
    v48 = v3;
    if (qword_2809F4D80 != -1)
    {
      swift_once();
    }

    v16 = __swift_project_value_buffer(v11, qword_2809F8DA8);
    (*(v12 + 16))(v15, v16, v11);
    v17 = sub_27554C758();
    v18 = sub_27554D458();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_27550C000, v17, v18, "Dismissing iCloud Mail Create flow", v19, 2u);
      MEMORY[0x277C7BAC0](v19, -1, -1);
    }

    (*(v12 + 8))(v15, v11);
    v20 = v54;
    v21 = *&v54[OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator_appleAccount];
    [v21 setEnabled:1 forDataclass:*MEMORY[0x277CB89C8]];
    sub_27551EA14(0, &qword_2809F5160, 0x277D85C78);
    (*(v8 + 104))(v10, *MEMORY[0x277D851C8], v7);
    v22 = sub_27554D4C8();
    (*(v8 + 8))(v10, v7);
    v23 = swift_allocObject();
    v23[2] = v20;
    v23[3] = v21;
    v24 = v53;
    v23[4] = v53;
    aBlock[4] = sub_275547638;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_275547BDC;
    aBlock[3] = &block_descriptor_18;
    v25 = _Block_copy(aBlock);
    v26 = v24;
    v27 = v20;
    v28 = v21;
    sub_27554D298();
    aBlock[6] = MEMORY[0x277D84F90];
    sub_275521070();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5168, &unk_2755513C0);
    sub_2755210C8();
    v29 = v50;
    v30 = v48;
    sub_27554D538();
    MEMORY[0x277C7B170](0, v6, v29, v25);
    _Block_release(v25);

    (*(v52 + 8))(v29, v30);
    (*(v49 + 8))(v6, v51);
  }

  result = [a2 topSignal];
  if (result != 2)
  {
    return result;
  }

  v31 = OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator_objectModels;
  v32 = v54;
  result = swift_beginAccess();
  v33 = *&v32[v31];
  if (v33 >> 62)
  {
    result = sub_27554D5D8();
    v34 = result;
    v35 = v53;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v35 = v53;
    if (!v34)
    {
      goto LABEL_18;
    }
  }

  if (v34 < 1)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  for (i = 0; i != v34; ++i)
  {
    if ((v33 & 0xC000000000000001) != 0)
    {
      v37 = MEMORY[0x277C7B250](i, v33);
    }

    else
    {
      v37 = *(v33 + 8 * i + 32);
    }

    v38 = v37;
    [v37 stopActivityIndicator];
  }

LABEL_18:
  if (!v35)
  {
LABEL_30:
    __break(1u);
    return result;
  }

  v39 = sub_2755421B8();
  [v35 presentInParentViewController:v39 animated:1];

  [v35 setDelegate_];
  v40 = *&v32[OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator_presenter];
  v41 = [v40 presentedViewController];
  v42 = OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator____lazy_storage___navigationController;
  if (!v41 || (v43 = v41, v44 = *&v32[OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator____lazy_storage___navigationController], sub_27551EA14(0, &unk_2809F60C0, 0x277D75D28), v45 = v44, v46 = sub_27554D4F8(), v43, v45, (v46 & 1) == 0))
  {
    [v40 presentViewController:*&v32[v42] animated:1 completion:0];
  }

  swift_beginAccess();
  v47 = v35;
  MEMORY[0x277C7B080]();
  if (*((*&v32[v31] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v32[v31] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_27554D3D8();
  }

  sub_27554D3E8();
  return swift_endAccess();
}

void sub_2755473F4(uint64_t a1, uint64_t a2)
{
  if (a2 && (a1 == 0x6C65636E6163 && a2 == 0xE600000000000000 || (sub_27554D678() & 1) != 0))
  {
    v3 = OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator_objectModels;
    swift_beginAccess();
    *(v2 + v3) = MEMORY[0x277D84F90];

    v4 = sub_2755422C0();
    [v4 cancel];

    [*(v2 + OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator____lazy_storage___ruiLoader) setDelegate_];
    v5 = *(v2 + OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator_presenter);
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_2755475AC;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_275547BDC;
    aBlock[3] = &block_descriptor_2;
    v7 = _Block_copy(aBlock);

    [v5 dismissViewControllerAnimated:1 completion:v7];
    _Block_release(v7);
  }
}

uint64_t sub_275547574()
{
  MEMORY[0x277C7BB40](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2755475E0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2755475F0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_21Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_33Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2755476FC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F60B8, &qword_2755513B8) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_27554C4D8();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v2 | 7);
}

uint64_t sub_275547830(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F60B8, &qword_2755513B8) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  return sub_2755439BC(a1, a2, v8, v2 + v6, v7);
}

uint64_t sub_2755478EC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F60B8, &qword_2755513B8) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_27554C4D8();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v2 | 7);
}

char *sub_275547A20()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F60B8, &qword_2755513B8) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_275543D34(v3, v4, v0 + v2, v5);
}

uint64_t sub_275547ABC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_275547B0C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_275547B4C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_275547C5C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F6190, &qword_275551408);
  v1 = *(v0 - 8);
  v32 = v0;
  v33 = v1;
  MEMORY[0x28223BE20](v0);
  v31 = &v28 - v2;
  v3 = sub_27554D4D8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F6198, &qword_275551410);
  v30 = *(v7 - 8);
  v8 = v30;
  v9 = MEMORY[0x28223BE20](v7);
  v29 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v28 = &v28 - v11;
  v12 = objc_opt_self();
  v13 = [v12 defaultCenter];
  sub_27554D4E8();

  sub_2755480D0();
  sub_27554C838();
  v14 = *(v4 + 8);
  v14(v6, v3);
  v15 = [v12 defaultCenter];
  sub_27554D4E8();

  v16 = v29;
  sub_27554C838();
  v14(v6, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F61A8, qword_275551418);
  v17 = *(v30 + 72);
  v18 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_27554E410;
  v20 = v19 + v18;
  v21 = *(v8 + 16);
  v22 = v28;
  v21(v20, v28, v7);
  v21(v20 + v17, v16, v7);
  sub_275515E2C(&qword_2809F61B0, &qword_2809F6198, &qword_275551410, MEMORY[0x277CBCC08]);
  v23 = v31;
  sub_27554C788();
  sub_275515E2C(&qword_2809F61B8, &qword_2809F6190, &qword_275551408, MEMORY[0x277CBCD48]);
  v24 = v32;
  v25 = sub_27554C828();
  (*(v33 + 8))(v23, v24);
  v26 = *(v8 + 8);
  v26(v16, v7);
  v26(v22, v7);
  return v25;
}

unint64_t sub_2755480D0()
{
  result = qword_2809F61A0;
  if (!qword_2809F61A0)
  {
    sub_27554D4D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F61A0);
  }

  return result;
}

void *sub_27554815C(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v3 = v2;
  if (*(v1 + 80))
  {
    sub_275548308(v11);
    sub_27554BA78(v11);
  }

  else
  {
    v4 = sub_27554D218();
    v6 = v5;
    sub_275548A94(v1);
    memcpy(__dst, __src, sizeof(__dst));
    memcpy(v10, __src, sizeof(v10));
    sub_275514D40(__dst, v11, &qword_2809F61C0, &qword_2755515B0);
    sub_275514DA8(v10, &qword_2809F61C0, &qword_2755515B0);
    memcpy(&v11[2], __dst, 0x3B8uLL);
    v11[0] = v4;
    v11[1] = v6;
    sub_27554B760(v11);
  }

  memcpy(v8, v11, sizeof(v8));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F61C8, &qword_2755515B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F61D0, &qword_2755515C0);
  sub_27554B76C();
  sub_275515E2C(&qword_2809F6250, &qword_2809F61D0, &qword_2755515C0, MEMORY[0x277CE11A8]);
  sub_27554CC68();
  return memcpy(v3, __src, 0x3C9uLL);
}

uint64_t sub_275548308@<X0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_27554D218();
  v7 = v6;
  sub_27554A38C(v3, &v151);
  v81 = v153;
  v82 = v154;
  v83 = v155;
  v79 = v151;
  v80 = v152;
  v84[2] = v153;
  v84[3] = v154;
  v85 = v155;
  v84[0] = v151;
  v84[1] = v152;
  sub_275514D40(&v79, &v138, &qword_2809F6258, &qword_275551600);
  sub_275514DA8(v84, &qword_2809F6258, &qword_275551600);
  v135 = v81;
  v136 = v82;
  v137 = v83;
  v134 = v80;
  v133 = v79;
  v8 = sub_27554D1D8();
  v10 = v9;
  sub_27554A7E0(v3, &v138);
  v86[8] = v146;
  v86[9] = v147;
  v86[10] = v148;
  v86[4] = v142;
  v86[5] = v143;
  v86[6] = v144;
  v86[7] = v145;
  v86[0] = v138;
  v86[1] = v139;
  v86[2] = v140;
  v86[3] = v141;
  *&v87 = v149;
  *(&v87 + 1) = v8;
  *&v78[151] = v147;
  *&v78[167] = v148;
  *&v78[87] = v143;
  *&v78[103] = v144;
  *&v78[119] = v145;
  *&v78[135] = v146;
  *&v78[23] = v139;
  *&v78[39] = v140;
  *&v78[55] = v141;
  *&v78[71] = v142;
  *&v78[7] = v138;
  *&v78[183] = v87;
  v89[8] = v146;
  v89[9] = v147;
  v89[10] = v148;
  v89[3] = v141;
  v89[4] = v142;
  v89[5] = v143;
  v89[6] = v144;
  v89[7] = v145;
  v89[0] = v138;
  v89[1] = v139;
  v88 = v10;
  *&v78[199] = v10;
  v89[2] = v140;
  v90 = v149;
  v91 = v8;
  v92 = v10;
  sub_275514D40(v86, &v151, &qword_2809F6228, &qword_2755515E8);
  sub_275514DA8(v89, &qword_2809F6228, &qword_2755515E8);
  v11 = sub_27554D1E8();
  v13 = v12;
  sub_27554AABC(v3, &v138);
  v93[8] = v146;
  v93[9] = v147;
  v93[10] = v148;
  v93[4] = v142;
  v93[5] = v143;
  v93[6] = v144;
  v93[7] = v145;
  v93[0] = v138;
  v93[1] = v139;
  v93[2] = v140;
  v93[3] = v141;
  *&v94 = v149;
  *(&v94 + 1) = v11;
  v126 = v144;
  v127 = v145;
  v129 = v147;
  v128 = v146;
  v122 = v140;
  v123 = v141;
  v125 = v143;
  v124 = v142;
  v121 = v139;
  v120 = v138;
  v130 = v148;
  v131 = v94;
  v96[8] = v146;
  v96[9] = v147;
  v96[10] = v148;
  v96[4] = v142;
  v96[5] = v143;
  v96[6] = v144;
  v96[7] = v145;
  v96[0] = v138;
  v96[1] = v139;
  v95 = v13;
  v132 = v13;
  v96[2] = v140;
  v96[3] = v141;
  v97 = v149;
  v98 = v11;
  v99 = v13;
  sub_275514D40(v93, &v151, &qword_2809F6238, &qword_2755515F0);
  sub_275514DA8(v96, &qword_2809F6238, &qword_2755515F0);
  v14 = sub_27554D208();
  v16 = v15;
  sub_27554ADA0(v3, &v138);
  v100[8] = v146;
  v100[9] = v147;
  v100[10] = v148;
  v100[4] = v142;
  v100[5] = v143;
  v100[6] = v144;
  v100[7] = v145;
  v100[0] = v138;
  v100[1] = v139;
  v100[2] = v140;
  v100[3] = v141;
  *&v101 = v149;
  *(&v101 + 1) = v14;
  v113 = v144;
  v114 = v145;
  v116 = v147;
  v115 = v146;
  v109 = v140;
  v110 = v141;
  v112 = v143;
  v111 = v142;
  v108 = v139;
  v107 = v138;
  v117 = v148;
  v118 = v101;
  v103[8] = v146;
  v103[9] = v147;
  v103[10] = v148;
  v103[4] = v142;
  v103[5] = v143;
  v103[6] = v144;
  v103[7] = v145;
  v103[0] = v138;
  v103[1] = v139;
  v102 = v16;
  v119 = v16;
  v103[2] = v140;
  v103[3] = v141;
  v104 = v149;
  v105 = v14;
  v106 = v16;
  sub_275514D40(v100, &v151, &qword_2809F6238, &qword_2755515F0);
  sub_275514DA8(v103, &qword_2809F6238, &qword_2755515F0);
  v17 = sub_27554D1F8();
  v19 = v18;
  sub_27554B07C(v3, &v66);
  v21 = v73;
  v146 = v74;
  v20 = v74;
  v147 = v75;
  v22 = v75;
  v148 = v76;
  v24 = v69;
  v142 = v70;
  v23 = v70;
  v143 = v71;
  v25 = v71;
  v144 = v72;
  v26 = v72;
  v145 = v73;
  v138 = v66;
  v139 = v67;
  v27 = v66;
  v28 = v67;
  v140 = v68;
  v29 = v68;
  v141 = v69;
  v30 = v136;
  *(a2 + 48) = v135;
  *(a2 + 64) = v30;
  v31 = v134;
  *(a2 + 16) = v133;
  *(a2 + 32) = v31;
  v32 = *&v78[16];
  *(a2 + 81) = *v78;
  v33 = *&v78[32];
  v34 = *&v78[48];
  v35 = *&v78[80];
  *(a2 + 145) = *&v78[64];
  *(a2 + 129) = v34;
  *(a2 + 113) = v33;
  *(a2 + 97) = v32;
  v36 = *&v78[96];
  v37 = *&v78[112];
  v38 = *&v78[144];
  *(a2 + 209) = *&v78[128];
  *(a2 + 193) = v37;
  *(a2 + 177) = v36;
  *(a2 + 161) = v35;
  v39 = *&v78[160];
  v40 = *&v78[176];
  v41 = v121;
  v42 = v120;
  *(a2 + 272) = *&v78[191];
  *(a2 + 257) = v40;
  *(a2 + 241) = v39;
  *(a2 + 225) = v38;
  v43 = v130;
  v44 = v131;
  v45 = v128;
  *(a2 + 432) = v129;
  *(a2 + 448) = v43;
  *(a2 + 464) = v44;
  v46 = v126;
  v47 = v127;
  v48 = v124;
  *(a2 + 368) = v125;
  *(a2 + 384) = v46;
  *(a2 + 400) = v47;
  *(a2 + 416) = v45;
  v49 = v122;
  v50 = v123;
  *(a2 + 304) = v41;
  *(a2 + 320) = v49;
  v51 = v77;
  *&v149 = v77;
  *(&v149 + 1) = v17;
  *(a2 + 336) = v50;
  *(a2 + 352) = v48;
  *(a2 + 288) = v42;
  v52 = v118;
  *(a2 + 648) = v117;
  *(a2 + 664) = v52;
  v53 = v114;
  *(a2 + 584) = v113;
  *(a2 + 600) = v53;
  v54 = v116;
  *(a2 + 616) = v115;
  *(a2 + 632) = v54;
  v55 = v110;
  *(a2 + 520) = v109;
  *(a2 + 536) = v55;
  v56 = v112;
  *(a2 + 552) = v111;
  *(a2 + 568) = v56;
  v57 = v108;
  *(a2 + 488) = v107;
  *(a2 + 504) = v57;
  v58 = v149;
  *(a2 + 848) = v148;
  *(a2 + 864) = v58;
  v59 = v145;
  *(a2 + 784) = v144;
  *(a2 + 800) = v59;
  v60 = v147;
  *(a2 + 816) = v146;
  *(a2 + 832) = v60;
  v61 = v141;
  *(a2 + 720) = v140;
  *(a2 + 736) = v61;
  v62 = v143;
  *(a2 + 752) = v142;
  *(a2 + 768) = v62;
  v63 = v139;
  *(a2 + 688) = v138;
  *(a2 + 704) = v63;
  v159 = v20;
  v160 = v22;
  v161 = v76;
  v155 = v23;
  v156 = v25;
  v157 = v26;
  v158 = v21;
  v150 = v19;
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 80) = v137;
  *(a2 + 480) = v132;
  *(a2 + 680) = v119;
  *(a2 + 880) = v19;
  v151 = v27;
  v152 = v28;
  v153 = v29;
  v154 = v24;
  v162 = v51;
  v163 = v17;
  v164 = v19;
  sub_275514D40(&v138, &v65, &qword_2809F6248, &qword_2755515F8);
  return sub_275514DA8(&v151, &qword_2809F6248, &qword_2755515F8);
}

uint64_t sub_275548A94(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v78 = v2;
  v3 = sub_27554D0A8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F62A0, &qword_275551668);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_27554E410;
  *(v7 + 32) = *(v1 + 72);

  *(v7 + 40) = sub_27554D048();
  MEMORY[0x277C7AE80](v7);
  sub_27554CBF8();
  v98 = v219;
  v101 = v221;
  v102 = v220;
  v99 = v223;
  v100 = v222;
  sub_27554D218();
  sub_27554C968();
  *&v218[6] = v224;
  *&v218[22] = v225;
  *&v218[38] = v226;
  _s18CurrentBundleClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v81 = objc_opt_self();
  v82 = ObjCClassFromMetadata;
  v9 = [v81 bundleForClass_];
  sub_27554D0C8();
  LODWORD(v105) = *MEMORY[0x277CE0FE0];
  v104 = *(v4 + 104);
  (v104)(v6);
  v97 = sub_27554D0B8();

  *&v103 = *(v4 + 8);
  *&v106 = v4 + 8;
  (v103)(v6, v3);
  sub_27554D218();
  sub_27554C968();
  LOBYTE(v173) = 1;
  *&v217[6] = v227;
  *&v217[22] = v228;
  *&v217[38] = v229;
  v199 = *(v1 + 8);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5148, &unk_27554EC40);
  sub_27554D0E8();
  v77 = v186;
  sub_27554D268();
  v95 = v11;
  v96 = v10;
  sub_27554D068();
  v94 = sub_27554D058();

  v12 = swift_allocObject();
  v13 = *(v1 + 48);
  *(v12 + 48) = *(v1 + 32);
  *(v12 + 64) = v13;
  *(v12 + 80) = *(v1 + 64);
  *(v12 + 96) = *(v1 + 80);
  v14 = *(v1 + 16);
  *(v12 + 16) = *v1;
  *(v12 + 32) = v14;
  v93 = v12;
  sub_27553CDD4(v1, &v199);
  v15 = v81;
  v16 = [v81 bundleForClass_];
  sub_27554D0C8();
  v17 = v105;
  v84 = v3;
  v18 = v104;
  (v104)(v6, v105, v3);
  v92 = sub_27554D0B8();

  v19 = v3;
  v20 = v103;
  (v103)(v6, v19);
  sub_27554D218();
  sub_27554C968();
  LOBYTE(v173) = 1;
  *&v216[6] = v230;
  *&v216[22] = v231;
  *&v216[38] = v232;
  v199 = *(v1 + 24);
  sub_27554D0E8();
  v76 = v186;
  sub_27554D268();
  v90 = v22;
  v91 = v21;
  sub_27554D068();
  v89 = sub_27554D058();

  v23 = swift_allocObject();
  v24 = *(v1 + 48);
  *(v23 + 48) = *(v1 + 32);
  *(v23 + 64) = v24;
  *(v23 + 80) = *(v1 + 64);
  *(v23 + 96) = *(v1 + 80);
  v25 = *(v1 + 16);
  *(v23 + 16) = *v1;
  *(v23 + 32) = v25;
  v88 = v23;
  sub_27553CDD4(v1, &v199);
  v26 = v15;
  v27 = v84;
  v28 = [v26 bundleForClass_];
  sub_27554D0C8();
  v80 = v4 + 104;
  (v18)(v6, v17, v27);
  v87 = sub_27554D0B8();

  *&v83 = v6;
  v20(v6, v27);
  sub_27554D218();
  sub_27554C968();
  LOBYTE(v173) = 1;
  *&v215[6] = v233;
  *&v215[22] = v234;
  *&v215[38] = v235;
  v199 = *(v1 + 40);
  sub_27554D0E8();
  v75 = v186;
  sub_27554D268();
  v73 = v30;
  v74 = v29;
  sub_27554D068();
  v86 = sub_27554D058();

  v31 = swift_allocObject();
  v32 = *(v1 + 48);
  v33 = *(v1 + 64);
  v34 = *(v1 + 16);
  *(v31 + 48) = *(v1 + 32);
  *(v31 + 64) = v32;
  *(v31 + 80) = v33;
  *(v31 + 96) = *(v1 + 80);
  *(v31 + 16) = *v1;
  *(v31 + 32) = v34;
  v85 = v31;
  v245 = *v1;
  if (v245)
  {
    sub_275514D40(&v245, &v199, &qword_2809F57D0, &qword_2755510C0);
    sub_27553CDD4(v1, &v199);
    sub_275514D40(&v245, &v199, &qword_2809F57D0, &qword_2755510C0);
    sub_27554D088();
    v35 = v83;
    (v104)(v83, v105, v27);
    v72 = sub_27554D0B8();

    (v103)(v35, v27);
    sub_27554D218();
    sub_27554C968();
    v36 = v236;
    v37 = v237;
    v38 = v238;
    v39 = v239;
    v71 = v240;
    v40 = v241;
    sub_27554D068();
    v41 = sub_27554D058();

    LOBYTE(v146[0]) = v39;
    *&v173 = v72;
    *(&v173 + 1) = v36;
    LOBYTE(v174[0]) = v37;
    *(v174 + 1) = v199;
    DWORD1(v174[0]) = *(&v199 + 3);
    *(&v174[0] + 1) = v38;
    LOBYTE(v174[1]) = v39;
    *(&v174[1] + 1) = v186;
    DWORD1(v174[1]) = *(&v186 + 3);
    *(&v174[1] + 1) = v71;
    *&v174[2] = v40;
    v174[3] = xmmword_27554E840;
    *(&v174[2] + 1) = v41;
    v175 = 0x4010000000000000;
    v187[1] = v174[1];
    v187[2] = v174[2];
    v187[3] = xmmword_27554E840;
    v188 = 0x4010000000000000;
    v186 = v173;
    v187[0] = v174[0];
    LOBYTE(v154[0]) = 0;
    BYTE8(v191) = 0;
    sub_275514D40(&v173, &v199, &qword_2809F50B8, &unk_275551670);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F50B8, &unk_275551670);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F50C0, &unk_27554EC00);
    sub_27551524C();
    sub_27554BF34(&qword_2809F50E0, &qword_2809F50C0, &unk_27554EC00, sub_275515384);
    sub_27554CC68();
    sub_275514DA8(&v245, &qword_2809F57D0, &qword_2755510C0);
    sub_275514DA8(&v173, &qword_2809F50B8, &unk_275551670);
    v250 = v200[3];
    v251 = *v201;
    v252 = *&v201[16];
    v253 = v201[32];
    v246 = v199;
    v247 = v200[0];
    v248 = v200[1];
    v249 = v200[2];
  }

  else
  {
    sub_27553CDD4(v1, &v199);
    sub_27554D098();
    v42 = v83;
    (v104)(v83, v105, v27);
    v72 = sub_27554D0B8();

    (v103)(v42, v27);
    sub_27554D218();
    sub_27554C968();
    v43 = v236;
    v44 = v237;
    v45 = v239;
    v70 = v240;
    v71 = v238;
    v69 = v241;
    v46 = sub_27554D078();
    KeyPath = swift_getKeyPath();
    LOBYTE(v199) = v44;
    LOBYTE(v186) = v45;
    v48 = sub_27554CD68();
    sub_27554D068();
    v49 = sub_27554D058();

    LOBYTE(v186) = 1;
    *&v199 = v72;
    *(&v199 + 1) = v43;
    LOBYTE(v200[0]) = v44;
    *(&v200[0] + 1) = v71;
    LOBYTE(v200[1]) = v45;
    *(&v200[1] + 1) = v70;
    *&v200[2] = v69;
    *(&v200[2] + 1) = KeyPath;
    *&v200[3] = v46;
    BYTE8(v200[3]) = v48;
    *(&v200[3] + 9) = 256;
    *&v201[8] = xmmword_27554E840;
    *v201 = v49;
    *&v201[24] = 0x4010000000000000;
    v201[32] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F50B8, &unk_275551670);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F50C0, &unk_27554EC00);
    sub_27551524C();
    sub_27554BF34(&qword_2809F50E0, &qword_2809F50C0, &unk_27554EC00, sub_275515384);
    sub_27554CC68();
  }

  v50 = [v81 bundleForClass_];
  sub_27554D0C8();
  v51 = v83;
  v52 = v84;
  (v104)(v83, v105, v84);
  v53 = sub_27554D0B8();

  (v103)(v51, v52);
  sub_27554D218();
  sub_27554C968();
  LOBYTE(v173) = 1;
  *&v116[6] = v242;
  *&v116[22] = v243;
  *&v116[38] = v244;
  v199 = *(v1 + 56);
  sub_27554D0E8();
  v54 = v186;
  sub_27554D268();
  v56 = v55;
  v58 = v57;
  sub_27554D068();
  v59 = sub_27554D058();

  v60 = swift_allocObject();
  v61 = *(v1 + 48);
  *(v60 + 48) = *(v1 + 32);
  *(v60 + 64) = v61;
  *(v60 + 80) = *(v1 + 64);
  *(v60 + 96) = *(v1 + 80);
  v62 = *(v1 + 16);
  *(v60 + 16) = *v1;
  *(v60 + 32) = v62;
  v112 = v250;
  v113 = v251;
  v114 = v252;
  v115 = v253;
  v108 = v246;
  v109 = v247;
  v110 = v248;
  v111 = v249;
  *&v117 = v98;
  *(&v117 + 1) = v102;
  *&v118 = v101;
  *(&v118 + 1) = v100;
  *&v119[0] = v99;
  WORD4(v119[0]) = 256;
  *(&v119[3] + 1) = *&v218[46];
  *(&v119[1] + 10) = *&v218[16];
  *(&v119[2] + 10) = *&v218[32];
  *(v119 + 10) = *v218;
  v107[0] = v117;
  v107[1] = v118;
  v107[4] = v119[2];
  v107[5] = v119[3];
  v107[2] = v119[0];
  v107[3] = v119[1];
  v120[0] = v97;
  v120[1] = 0;
  LOWORD(v121[0]) = 1;
  *&v121[3] = *&v217[46];
  *(&v121[2] + 2) = *&v217[32];
  *(&v121[1] + 2) = *&v217[16];
  *(v121 + 2) = *v217;
  v63 = v77;
  *(&v121[3] + 1) = v77;
  *&v122 = v77;
  *(&v122 + 1) = v96;
  *&v123[0] = v95;
  v105 = xmmword_275551460;
  *(v123 + 8) = xmmword_275551460;
  v123[2] = xmmword_27554E840;
  *(&v123[1] + 1) = v94;
  *&v124 = 0x4010000000000000;
  v104 = sub_27554BE58;
  *(&v124 + 1) = sub_27554BE58;
  v125 = v93;
  v127 = 0;
  v126 = 0;
  v107[12] = v123[0];
  v107[13] = v123[1];
  v107[10] = v121[3];
  v107[11] = v122;
  v107[8] = v121[1];
  v107[9] = v121[2];
  v107[6] = v97;
  v107[7] = v121[0];
  *&v107[17] = 0;
  v107[15] = v124;
  v107[16] = v93;
  v107[14] = xmmword_27554E840;
  v128[0] = v92;
  v128[1] = 0;
  LOWORD(v129[0]) = 1;
  *&v129[3] = *&v216[46];
  *(&v129[2] + 2) = *&v216[32];
  *(v129 + 2) = *v216;
  *(&v129[1] + 2) = *&v216[16];
  v64 = v76;
  *(&v129[3] + 1) = v76;
  *&v130 = v76;
  *(&v130 + 1) = v91;
  *&v131[0] = v90;
  v103 = xmmword_275551470;
  *(v131 + 8) = xmmword_275551470;
  *(&v131[1] + 1) = v89;
  v131[2] = xmmword_27554E840;
  *&v132 = 0x4010000000000000;
  v84 = sub_27554BEA0;
  *(&v132 + 1) = sub_27554BEA0;
  v133 = v88;
  v134 = 0;
  v135 = 0;
  *(&v107[17] + 8) = v92;
  *(&v107[18] + 8) = v129[0];
  *(&v107[19] + 8) = v129[1];
  *(&v107[20] + 8) = v129[2];
  *(&v107[23] + 8) = v131[0];
  *(&v107[24] + 8) = v131[1];
  *(&v107[21] + 8) = v129[3];
  *(&v107[22] + 8) = v130;
  *(&v107[26] + 8) = v132;
  *(&v107[27] + 8) = v88;
  *(&v107[25] + 8) = xmmword_27554E840;
  *(&v107[28] + 1) = 0;
  v136[0] = v87;
  v136[1] = 0;
  LOWORD(v137[0]) = 1;
  *&v137[3] = *&v215[46];
  *(&v137[2] + 2) = *&v215[32];
  *(v137 + 2) = *v215;
  *(&v137[1] + 2) = *&v215[16];
  v65 = v74;
  v66 = v75;
  *(&v137[3] + 1) = v75;
  *&v138 = v75;
  *(&v138 + 1) = v74;
  v67 = v73;
  *&v139[0] = v73;
  v83 = xmmword_275551480;
  *(v139 + 8) = xmmword_275551480;
  v139[2] = xmmword_27554E840;
  v106 = xmmword_27554E840;
  *(&v139[1] + 1) = v86;
  *&v140 = 0x4010000000000000;
  v82 = sub_27554BEE8;
  *(&v140 + 1) = sub_27554BEE8;
  v141 = v85;
  v142 = 0;
  v143 = 0;
  v107[29] = v87;
  v107[30] = v137[0];
  v107[31] = v137[1];
  v107[32] = v137[2];
  v107[35] = v139[0];
  v107[36] = v139[1];
  v107[33] = v137[3];
  v107[34] = v138;
  *&v107[40] = 0;
  v107[38] = v140;
  v107[39] = v85;
  v107[37] = xmmword_27554E840;
  v144[4] = v250;
  v144[5] = v251;
  v144[6] = v252;
  v145 = v253;
  v144[0] = v246;
  v144[1] = v247;
  v144[2] = v248;
  v144[3] = v249;
  *(&v107[40] + 8) = v246;
  *(&v107[41] + 8) = v247;
  *(&v107[42] + 8) = v248;
  *(&v107[43] + 8) = v249;
  *(&v107[44] + 8) = v250;
  *(&v107[45] + 8) = v251;
  *(&v107[46] + 8) = v252;
  BYTE8(v107[47]) = v253;
  v146[0] = v53;
  v146[1] = 0;
  LOWORD(v147[0]) = 1;
  *(&v147[2] + 2) = *&v116[32];
  *(&v147[1] + 2) = *&v116[16];
  *(v147 + 2) = *v116;
  *&v147[3] = *&v116[46];
  *(&v147[3] + 1) = v54;
  *&v148 = v54;
  *(&v148 + 1) = v56;
  *&v149[0] = v58;
  v81 = xmmword_275551490;
  *(v149 + 8) = xmmword_275551490;
  *(&v149[1] + 1) = v59;
  v149[2] = xmmword_27554E840;
  *&v150 = 0x4010000000000000;
  *(&v150 + 1) = sub_27554BFB8;
  v151 = v60;
  v152 = 0;
  v153 = 0;
  *&v107[59] = 0;
  v107[51] = v147[2];
  v107[50] = v147[1];
  v107[48] = v53;
  v107[49] = v147[0];
  v107[58] = v60;
  v107[56] = xmmword_27554E840;
  v107[57] = v150;
  v107[55] = v149[1];
  v107[54] = v149[0];
  v107[53] = v148;
  v107[52] = v147[3];
  memcpy(v78, v107, 0x3B8uLL);
  v156 = *v116;
  v154[0] = v53;
  v154[1] = 0;
  v155 = 1;
  v157 = *&v116[16];
  *v158 = *&v116[32];
  *&v158[14] = *&v116[46];
  v159 = v54;
  v160 = v54;
  v161 = v56;
  v162 = v58;
  v163 = v81;
  v165 = v106;
  v164 = v59;
  v166 = 0x4010000000000000;
  v167 = sub_27554BFB8;
  v168 = v60;
  v170 = 0;
  v169 = 0;
  sub_27553CDD4(v1, &v199);
  sub_275514D40(&v117, &v199, &qword_2809F62A8, &unk_2755516A0);
  sub_275514D40(v120, &v199, &qword_2809F5158, &unk_27554EC50);
  sub_275514D40(v128, &v199, &qword_2809F5158, &unk_27554EC50);
  sub_275514D40(v136, &v199, &qword_2809F5158, &unk_27554EC50);
  sub_275514D40(v144, &v199, &qword_2809F5150, &unk_2755516B0);
  sub_275514D40(v146, &v199, &qword_2809F5158, &unk_27554EC50);
  sub_275514DA8(v154, &qword_2809F5158, &unk_27554EC50);
  v171[4] = v112;
  v171[5] = v113;
  v171[6] = v114;
  v172 = v115;
  v171[0] = v108;
  v171[1] = v109;
  v171[2] = v110;
  v171[3] = v111;
  sub_275514DA8(v171, &qword_2809F5150, &unk_2755516B0);
  *(v174 + 2) = *v215;
  v173 = v87;
  LOWORD(v174[0]) = 1;
  *(&v174[1] + 2) = *&v215[16];
  *(&v174[2] + 2) = *&v215[32];
  *&v174[3] = *&v215[46];
  *(&v174[3] + 1) = v66;
  v175 = v66;
  v176 = v65;
  v177 = v67;
  v178 = v83;
  v180 = v106;
  v179 = v86;
  v181 = 0x4010000000000000;
  v182 = v82;
  v183 = v85;
  v185 = 0;
  v184 = 0;
  sub_275514DA8(&v173, &qword_2809F5158, &unk_27554EC50);
  v186 = v92;
  LOWORD(v187[0]) = 1;
  *(v187 + 2) = *v216;
  *(&v187[1] + 2) = *&v216[16];
  *(&v187[2] + 2) = *&v216[32];
  *&v187[3] = *&v216[46];
  *(&v187[3] + 1) = v64;
  v188 = v64;
  v189 = v91;
  v190 = v90;
  v191 = v103;
  v192 = v89;
  v193 = v106;
  v194 = 0x4010000000000000;
  v195 = v84;
  v198 = 0;
  v196 = v88;
  v197 = 0;
  sub_275514DA8(&v186, &qword_2809F5158, &unk_27554EC50);
  v199 = v97;
  LOWORD(v200[0]) = 1;
  *(v200 + 2) = *v217;
  *(&v200[1] + 2) = *&v217[16];
  *(&v200[2] + 2) = *&v217[32];
  *&v200[3] = *&v217[46];
  *(&v200[3] + 1) = v63;
  *v201 = v63;
  *&v201[8] = v96;
  *&v201[16] = v95;
  *&v201[24] = v105;
  v202 = v94;
  v203 = v106;
  v204 = 0x4010000000000000;
  v205 = v104;
  v208 = 0;
  v206 = v93;
  v207 = 0;
  sub_275514DA8(&v199, &qword_2809F5158, &unk_27554EC50);
  v209[0] = v98;
  v209[1] = v102;
  v209[2] = v101;
  v209[3] = v100;
  v209[4] = v99;
  v210 = 0;
  v211 = 1;
  v212 = *v218;
  v213 = *&v218[16];
  *v214 = *&v218[32];
  *&v214[14] = *&v218[46];
  return sub_275514DA8(v209, &qword_2809F62A8, &unk_2755516A0);
}

uint64_t sub_275549F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v28 = a4;
  v27 = a3;
  v6 = sub_27554D278();
  v31 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_27554D2A8();
  v29 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_27554D2C8();
  v26 = v11;
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v24 - v16;
  sub_2755155D4();
  v24 = sub_27554D4A8();
  sub_27554D2B8();
  sub_27554D2D8();
  v25 = *(v12 + 8);
  v25(v15, v11);
  v18 = swift_allocObject();
  v19 = *(a1 + 48);
  *(v18 + 48) = *(a1 + 32);
  *(v18 + 64) = v19;
  *(v18 + 80) = *(a1 + 64);
  *(v18 + 96) = *(a1 + 80);
  v20 = *(a1 + 16);
  *(v18 + 16) = *a1;
  *(v18 + 32) = v20;
  aBlock[4] = v27;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_275547BDC;
  aBlock[3] = v28;
  v21 = _Block_copy(aBlock);
  sub_27553CDD4(a1, v32);

  sub_27554D298();
  v32[0] = MEMORY[0x277D84F90];
  sub_275521070();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5168, &unk_2755513C0);
  sub_275515E2C(&qword_2809F60E0, &qword_2809F5168, &unk_2755513C0, MEMORY[0x277D83970]);
  sub_27554D538();
  v22 = v24;
  MEMORY[0x277C7B120](v17, v10, v8, v21);
  _Block_release(v21);

  (*(v31 + 8))(v8, v6);
  (*(v29 + 8))(v10, v30);
  return (v25)(v17, v26);
}

__n128 sub_27554A38C@<Q0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_27554D0A8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*a1)
  {
    v8 = *a1;
    sub_27554D088();
    (*(v5 + 104))(v7, *MEMORY[0x277CE0FE0], v4);
    v9 = sub_27554D0B8();

    (*(v5 + 8))(v7, v4);
    sub_27554D068();
    v10 = sub_27554D058();

    v18[8] = 0;
    *&v25 = v9;
    *(&v25 + 1) = v10;
    v26 = xmmword_27554E840;
    *&v27[8] = v19;
    *v27 = 0x4010000000000000;
    *&v27[24] = v20;
    v28 = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F6260, &qword_275551638);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F6268, &qword_275551640);
    sub_275515A00(&qword_2809F6270, &qword_2809F6260, &qword_275551638);
    sub_27554BF34(&qword_2809F6278, &qword_2809F6268, &qword_275551640, sub_27554BCE8);
    sub_27554CC68();

    *v27 = *v23;
    *&v27[16] = *&v23[16];
    v28 = v24;
    v25 = v21;
    v26 = v22;
  }

  else
  {
    sub_27554D098();
    (*(v5 + 104))(v7, *MEMORY[0x277CE0FE0], v4);
    v11 = sub_27554D0B8();

    (*(v5 + 8))(v7, v4);
    v12 = sub_27554D078();
    KeyPath = swift_getKeyPath();
    v14 = sub_27554CD68();
    sub_27554D068();
    v15 = sub_27554D058();

    LOBYTE(v19) = 1;
    *&v21 = v11;
    *(&v21 + 1) = KeyPath;
    *&v22 = v12;
    BYTE8(v22) = v14;
    *(&v22 + 9) = 256;
    *v23 = v15;
    *&v23[8] = xmmword_27554E840;
    *&v23[24] = 0x4010000000000000;
    v24 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F6260, &qword_275551638);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F6268, &qword_275551640);
    sub_275515A00(&qword_2809F6270, &qword_2809F6260, &qword_275551638);
    sub_27554BF34(&qword_2809F6278, &qword_2809F6268, &qword_275551640, sub_27554BCE8);
    sub_27554CC68();
  }

  v16 = *&v27[16];
  *(a2 + 32) = *v27;
  *(a2 + 48) = v16;
  *(a2 + 64) = v28;
  result = v26;
  *a2 = v25;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_27554A7E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_27554D0A8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s18CurrentBundleClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  sub_27554D0C8();
  (*(v5 + 104))(v7, *MEMORY[0x277CE0FE0], v4);
  v10 = sub_27554D0B8();

  (*(v5 + 8))(v7, v4);
  sub_27554D218();
  sub_27554C968();
  LOBYTE(v29[0]) = 1;
  *&v31[6] = v32;
  *&v31[22] = v33;
  *&v31[38] = v34;
  sub_27554D068();
  v11 = sub_27554D058();

  v29[0] = *(a1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5148, &unk_27554EC40);
  sub_27554D0E8();
  v12 = v30;
  sub_27554D268();
  v14 = v13;
  v16 = v15;
  v17 = swift_allocObject();
  v18 = *(a1 + 48);
  *(v17 + 48) = *(a1 + 32);
  *(v17 + 64) = v18;
  *(v17 + 80) = *(a1 + 64);
  *(v17 + 96) = *(a1 + 80);
  v19 = *(a1 + 16);
  *(v17 + 16) = *a1;
  *(v17 + 32) = v19;
  *a2 = v10;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v20 = *v31;
  v21 = *&v31[16];
  v22 = *&v31[32];
  *(a2 + 64) = *&v31[46];
  *(a2 + 72) = v11;
  *(a2 + 50) = v22;
  *(a2 + 34) = v21;
  *(a2 + 18) = v20;
  *(a2 + 80) = xmmword_27554E840;
  *(a2 + 96) = 0x4010000000000000;
  *(a2 + 104) = v12;
  *(a2 + 112) = v12;
  *(a2 + 120) = v14;
  *(a2 + 128) = v16;
  __asm { FMOV            V0.2D, #-3.0 }

  *(a2 + 136) = _Q0;
  *(a2 + 152) = sub_27554BC50;
  *(a2 + 160) = v17;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  return sub_27553CDD4(a1, v29);
}

uint64_t sub_27554AABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_27554D0A8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s18CurrentBundleClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  sub_27554D0C8();
  (*(v5 + 104))(v7, *MEMORY[0x277CE0FE0], v4);
  v10 = sub_27554D0B8();

  (*(v5 + 8))(v7, v4);
  sub_27554D218();
  sub_27554C968();
  v27 = 1;
  *&v26[6] = v28;
  *&v26[22] = v29;
  *&v26[38] = v30;
  v24[0] = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5148, &unk_27554EC40);
  sub_27554D0E8();
  v11 = v25;
  sub_27554D268();
  v13 = v12;
  v15 = v14;
  sub_27554D068();
  v16 = sub_27554D058();

  v17 = swift_allocObject();
  v18 = *(a1 + 48);
  *(v17 + 48) = *(a1 + 32);
  *(v17 + 64) = v18;
  *(v17 + 80) = *(a1 + 64);
  *(v17 + 96) = *(a1 + 80);
  v19 = *(a1 + 16);
  *(v17 + 16) = *a1;
  *(v17 + 32) = v19;
  *a2 = v10;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v20 = *v26;
  v21 = *&v26[16];
  v22 = *&v26[32];
  *(a2 + 64) = *&v26[46];
  *(a2 + 50) = v22;
  *(a2 + 34) = v21;
  *(a2 + 18) = v20;
  *(a2 + 72) = v11;
  *(a2 + 80) = v11;
  *(a2 + 88) = v13;
  *(a2 + 96) = v15;
  *(a2 + 104) = xmmword_2755514A0;
  *(a2 + 120) = v16;
  *(a2 + 128) = xmmword_27554E840;
  *(a2 + 144) = 0x4010000000000000;
  *(a2 + 152) = sub_27554BBC0;
  *(a2 + 160) = v17;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  return sub_27553CDD4(a1, v24);
}

uint64_t sub_27554ADA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_27554D0A8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s18CurrentBundleClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  sub_27554D0C8();
  (*(v5 + 104))(v7, *MEMORY[0x277CE0FE0], v4);
  v10 = sub_27554D0B8();

  (*(v5 + 8))(v7, v4);
  sub_27554D218();
  sub_27554C968();
  v32 = 1;
  *&v31[6] = v33;
  *&v31[22] = v34;
  *&v31[38] = v35;
  v29[0] = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5148, &unk_27554EC40);
  sub_27554D0E8();
  v11 = v30;
  sub_27554D268();
  v13 = v12;
  v15 = v14;
  sub_27554D068();
  v16 = sub_27554D058();

  v17 = swift_allocObject();
  v18 = *(a1 + 48);
  *(v17 + 48) = *(a1 + 32);
  *(v17 + 64) = v18;
  *(v17 + 80) = *(a1 + 64);
  *(v17 + 96) = *(a1 + 80);
  v19 = *(a1 + 16);
  *(v17 + 16) = *a1;
  *(v17 + 32) = v19;
  *a2 = v10;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v20 = *v31;
  v21 = *&v31[16];
  v22 = *&v31[32];
  *(a2 + 64) = *&v31[46];
  *(a2 + 50) = v22;
  *(a2 + 34) = v21;
  *(a2 + 18) = v20;
  *(a2 + 72) = v11;
  *(a2 + 80) = v11;
  *(a2 + 88) = v13;
  *(a2 + 96) = v15;
  __asm { FMOV            V0.2D, #3.0 }

  *(a2 + 104) = _Q0;
  *(a2 + 120) = v16;
  *(a2 + 128) = xmmword_27554E840;
  *(a2 + 144) = 0x4010000000000000;
  *(a2 + 152) = sub_27554BB2C;
  *(a2 + 160) = v17;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  return sub_27553CDD4(a1, v29);
}

uint64_t sub_27554B07C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_27554D0A8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s18CurrentBundleClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  sub_27554D0C8();
  (*(v5 + 104))(v7, *MEMORY[0x277CE0FE0], v4);
  v10 = sub_27554D0B8();

  (*(v5 + 8))(v7, v4);
  sub_27554D218();
  sub_27554C968();
  v27 = 1;
  *&v26[6] = v28;
  *&v26[22] = v29;
  *&v26[38] = v30;
  v24[0] = *(a1 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5148, &unk_27554EC40);
  sub_27554D0E8();
  v11 = v25;
  sub_27554D268();
  v13 = v12;
  v15 = v14;
  sub_27554D068();
  v16 = sub_27554D058();

  v17 = swift_allocObject();
  v18 = *(a1 + 48);
  *(v17 + 48) = *(a1 + 32);
  *(v17 + 64) = v18;
  *(v17 + 80) = *(a1 + 64);
  *(v17 + 96) = *(a1 + 80);
  v19 = *(a1 + 16);
  *(v17 + 16) = *a1;
  *(v17 + 32) = v19;
  *a2 = v10;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v20 = *v26;
  v21 = *&v26[16];
  v22 = *&v26[32];
  *(a2 + 64) = *&v26[46];
  *(a2 + 50) = v22;
  *(a2 + 34) = v21;
  *(a2 + 18) = v20;
  *(a2 + 72) = v11;
  *(a2 + 80) = v11;
  *(a2 + 88) = v13;
  *(a2 + 96) = v15;
  *(a2 + 104) = xmmword_2755514B0;
  *(a2 + 120) = v16;
  *(a2 + 128) = xmmword_27554E840;
  *(a2 + 144) = 0x4010000000000000;
  *(a2 + 152) = sub_27554BA84;
  *(a2 + 160) = v17;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  return sub_27553CDD4(a1, v24);
}

uint64_t sub_27554B364(uint64_t a1, uint64_t a2)
{
  sub_27554D238();
  sub_27554C9D8();
}

uint64_t sub_27554B42C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a1;
  v28 = a2;
  v4 = sub_27554C718();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v29 = 0;
  sub_27554D0D8();
  v11 = v30;
  v26 = v31;
  v29 = 0;
  sub_27554D0D8();
  v12 = v30;
  v25 = v31;
  v29 = 0;
  sub_27554D0D8();
  v13 = v30;
  v24 = v31;
  v29 = 0;
  sub_27554D0D8();
  v14 = v30;
  v15 = v31;
  v16 = *(v5 + 104);
  v16(v10, *MEMORY[0x277D245A0], v4);
  v17 = sub_27554C708();
  v18 = *(v5 + 8);
  result = v18(v10, v4);
  if (v17)
  {
    v16(v8, *MEMORY[0x277D24598], v4);
    v20 = sub_27554C708();
    result = v18(v8, v4);
  }

  else
  {
    v20 = 0;
  }

  v21 = v26;
  *a3 = v27;
  *(a3 + 8) = v11;
  *(a3 + 16) = v21;
  *(a3 + 24) = v12;
  v22 = v24;
  *(a3 + 32) = v25;
  *(a3 + 40) = v13;
  *(a3 + 48) = v22;
  *(a3 + 56) = v14;
  v23 = v28;
  *(a3 + 64) = v15;
  *(a3 + 72) = v23;
  *(a3 + 80) = v20 & 1;
  return result;
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_27554B694(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_27554B6DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_27554B76C()
{
  result = qword_2809F61D8;
  if (!qword_2809F61D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F61C8, &qword_2755515B8);
    sub_27554B824();
    sub_275515E2C(&qword_2809F6240, &qword_2809F6248, &qword_2755515F8, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F61D8);
  }

  return result;
}

unint64_t sub_27554B824()
{
  result = qword_2809F61E0;
  if (!qword_2809F61E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F61E8, &qword_2755515C8);
    sub_27554B8DC();
    sub_275515E2C(&qword_2809F6230, &qword_2809F6238, &qword_2755515F0, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F61E0);
  }

  return result;
}

unint64_t sub_27554B8DC()
{
  result = qword_2809F61F0;
  if (!qword_2809F61F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F61F8, &qword_2755515D0);
    sub_27554B994();
    sub_275515E2C(&qword_2809F6230, &qword_2809F6238, &qword_2755515F0, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F61F0);
  }

  return result;
}

unint64_t sub_27554B994()
{
  result = qword_2809F6200;
  if (!qword_2809F6200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F6208, &qword_2755515D8);
    sub_275515E2C(&qword_2809F6210, &qword_2809F6218, &qword_2755515E0, MEMORY[0x277CE11A8]);
    sub_275515E2C(&qword_2809F6220, &qword_2809F6228, &qword_2755515E8, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F6200);
  }

  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_27554BCE8()
{
  result = qword_2809F6280;
  if (!qword_2809F6280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F6288, &qword_275551648);
    sub_27554BDA0();
    sub_275515E2C(&qword_2809F5138, &qword_2809F5140, &qword_275551660, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F6280);
  }

  return result;
}

unint64_t sub_27554BDA0()
{
  result = qword_2809F6290;
  if (!qword_2809F6290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F6298, &unk_275551650);
    sub_27553AD58();
    sub_275515E2C(&qword_2809F5128, &qword_2809F5130, &unk_27554EC30, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F6290);
  }

  return result;
}

uint64_t sub_27554BF34(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{

  return MEMORY[0x2821FE8E8](v0, 97, 7);
}

unint64_t sub_27554C2B4()
{
  result = qword_2809F62B0;
  if (!qword_2809F62B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F62B8, qword_2755516C0);
    sub_27554B76C();
    sub_275515E2C(&qword_2809F6250, &qword_2809F61D0, &qword_2755515C0, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F62B0);
  }

  return result;
}