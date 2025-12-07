uint64_t sub_226D08368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  v6 = type metadata accessor for ManagedConsentDeleter.Metadata.AccountMetadata(0);
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();
  v7 = sub_226D682FC();
  v5[9] = v7;
  v5[10] = *(v7 - 8);
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D08488, 0, 0);
}

uint64_t sub_226D08488()
{
  v1 = v0[3];
  (*(v0[10] + 16))(v0[11], v1, v0[9]);
  v2 = *(v1 + *(type metadata accessor for ManagedConsentDeleter.Metadata(0) + 20));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v0[7];
    v5 = (v0[8] + *(v0[6] + 20));
    v6 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v7 = *(v4 + 72);
    v8 = MEMORY[0x277D84F90];
    do
    {
      v10 = v0[8];
      sub_226D0948C(v6, v10, type metadata accessor for ManagedConsentDeleter.Metadata.AccountMetadata);
      v12 = *v5;
      v11 = v5[1];

      sub_226D094F4(v10, type metadata accessor for ManagedConsentDeleter.Metadata.AccountMetadata);
      if (v11)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_226BBAB0C(0, *(v8 + 2) + 1, 1, v8);
        }

        v14 = *(v8 + 2);
        v13 = *(v8 + 3);
        if (v14 >= v13 >> 1)
        {
          v8 = sub_226BBAB0C((v13 > 1), v14 + 1, 1, v8);
        }

        *(v8 + 2) = v14 + 1;
        v9 = &v8[16 * v14];
        *(v9 + 4) = v12;
        *(v9 + 5) = v11;
      }

      v6 += v7;
      --v3;
    }

    while (v3);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v0[12] = v8;
  v15 = swift_task_alloc();
  v0[13] = v15;
  *v15 = v0;
  v15[1] = sub_226D08670;
  v16 = v0[11];

  return sub_226D078F0(v16, v8);
}

uint64_t sub_226D08670()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_226D087E4, 0, 0);
}

uint64_t sub_226D087E4()
{
  v11 = v0;
  if (qword_27D7A5F60 != -1)
  {
    swift_once();
  }

  v1 = sub_226D6E07C();
  __swift_project_value_buffer(v1, qword_27D7A7D10);

  v2 = sub_226D6E05C();
  v3 = sub_226D6E9EC();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[4];
    v4 = v0[5];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_226AC4530(v5, v4, &v10);
    _os_log_impl(&dword_226AB4000, v2, v3, "Successfully revoked consent for consentID: %s.", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
    MEMORY[0x22AA8BEE0](v6, -1, -1);
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_226D08980(uint64_t a1, unint64_t a2)
{
  sub_226D6794C();
  result = sub_226D6788C();
  if (!v2)
  {
    if (result)
    {
      return sub_226D6830C();
    }

    else
    {
      if (qword_27D7A5F60 != -1)
      {
        swift_once();
      }

      v6 = sub_226D6E07C();
      __swift_project_value_buffer(v6, qword_27D7A7D10);

      v7 = sub_226D6E05C();
      v8 = sub_226D6E9CC();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v15 = v10;
        *v9 = 136315138;
        *(v9 + 4) = sub_226AC4530(a1, a2, &v15);
        _os_log_impl(&dword_226AB4000, v7, v8, "Failed to get consent from store for consentID: %s. Unable to revoke the token.", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v10);
        MEMORY[0x22AA8BEE0](v10, -1, -1);
        MEMORY[0x22AA8BEE0](v9, -1, -1);
      }

      v11 = sub_226D6A0DC();
      sub_226BD7738();
      swift_allocError();
      v13 = v12;
      v15 = 0;
      v16 = 0xE000000000000000;
      sub_226D6EEFC();

      v15 = 0xD000000000000025;
      v16 = 0x8000000226D87C70;
      MEMORY[0x22AA8A510](a1, a2);
      MEMORY[0x22AA8A510](46, 0xE100000000000000);
      v14 = v16;
      *v13 = v15;
      v13[1] = v14;
      (*(*(v11 - 8) + 104))(v13, *MEMORY[0x277CC7AC0], v11);
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_226D08BE8@<X0>(uint64_t *a4@<X8>)
{
  sub_226D6794C();
  result = sub_226D678EC();
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_226D08C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v5 = sub_226D682FC();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v6 = sub_226D6C70C();
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D08D74, 0, 0);
}

uint64_t sub_226D08D74()
{
  (*(v0[6] + 16))(v0[7], v0[3], v0[5]);

  sub_226D6C6FC();
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_226D08E54;
  v2 = v0[10];

  return MEMORY[0x282119AD8](v2);
}

uint64_t sub_226D08E54()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 96) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226D0900C, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_226D0900C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_226D0907C(uint64_t *a4@<X8>)
{
  sub_226D6842C();
  v6 = sub_226D683FC();
  if (!v4)
  {
    if (v6)
    {
      v7 = v6;
      v8 = [v6 id];

      v9 = sub_226D6E39C();
      v11 = v10;

      *a4 = v9;
      a4[1] = v11;
    }

    else
    {
      *a4 = 0;
      a4[1] = 0;
    }
  }
}

unint64_t sub_226D09130@<X0>(BOOL *a4@<X8>)
{
  sub_226D6794C();
  result = sub_226D6791C();
  if (!v4)
  {
    if (result >> 62)
    {
      v7 = sub_226D6EDFC();
    }

    else
    {
      v7 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *a4 = v7 == 0;
  }

  return result;
}

uint64_t sub_226D09208(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_226D682FC() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v7);
  v10 = *(v1 + 16);
  v11 = *(v1 + v8);
  v12 = *(v1 + v8 + 8);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_226AE5A84;

  return sub_226D075BC(a1, v10, v1 + v6, v9, v11, v12);
}

uint64_t sub_226D09368(uint64_t a1)
{
  v4 = *(type metadata accessor for ManagedConsentDeleter.Metadata(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_226AE5A84;

  return sub_226D08368(a1, v6, v1 + v5, v8, v9);
}

uint64_t sub_226D0948C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226D094F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226D09554(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226AD827C;

  return sub_226D08C54(a1, v4, v5, v6);
}

uint64_t sub_226D09680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A5FC0, &unk_226D75DC0);
  sub_226D6EB8C();
  return v4;
}

void sub_226D098E8(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = v3[5];
  v8 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v7);
  (*(v8 + 8))(&v17, v7, v8);
  v9 = v17;
  sub_226D6EB8C();
  if (v4)
  {
    sub_226CCE0AC();
    swift_allocError();
    *v10 = v4;
    swift_willThrow();
  }

  else
  {
    v11 = v17;
    v17 = v9;
    v12._countAndFlagsBits = a1;
    v12._object = a2;
    v13 = BankConnectPaymentPassDataSource.isDynamicCardArtEnabled(for:)(v12);
    if (!v14)
    {
      if (v13)
      {
        if (v11)
        {
          goto LABEL_10;
        }

        v17 = v9;
        v15 = 0;
      }

      else
      {
        if (!v11)
        {
          goto LABEL_10;
        }

        v17 = v9;
        v15 = 1;
      }

      v16._countAndFlagsBits = a1;
      v16._object = a2;
      BankConnectPaymentPassDataSource.setDynamicCardArt(enabled:for:)(v15, v16);
    }
  }

LABEL_10:
}

void sub_226D09A3C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v9 = [objc_opt_self() currentQueryGenerationToken];
  v18[0] = 0;
  v10 = [a1 setQueryGenerationFromToken:v9 error:v18];

  v11 = v18[0];
  if (v10)
  {
    sub_226D69F0C();
    v12 = v11;
    v13 = sub_226D69DDC();
    sub_226B2A4F4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_226D70840;
    *(v14 + 56) = MEMORY[0x277D837D0];
    *(v14 + 64) = sub_226B16404();
    *(v14 + 32) = a2;
    *(v14 + 40) = a3;

    v15 = sub_226D6E91C();
    [v13 setPredicate_];

    v16 = sub_226D6EBAC();
    if (!v4)
    {
      *a4 = v16 == 1;
    }
  }

  else
  {
    v17 = v18[0];
    sub_226D6D04C();

    swift_willThrow();
  }
}

uint64_t sub_226D09C48(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_226D09C98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_226D09F24()
{
  v1 = *(v0[2] + 112);
  v0[3] = v1;
  if (v1 && (Strong = swift_unknownObjectWeakLoadStrong(), (v0[4] = Strong) != 0))
  {
    v3 = qword_28105F640;
    v4 = v1;
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = sub_226D6E07C();
    v0[5] = __swift_project_value_buffer(v5, qword_28105F648);
    v6 = sub_226D6E05C();
    v7 = sub_226D6E9BC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_226AB4000, v6, v7, "Retrieving enabled topics from delegate", v8, 2u);
      MEMORY[0x22AA8BEE0](v8, -1, -1);
    }

    v9 = off_283A6E600;
    v10 = type metadata accessor for OrderWebServiceCoordinator();
    v14 = (v9 + *v9);
    v11 = swift_task_alloc();
    v0[6] = v11;
    *v11 = v0;
    v11[1] = sub_226D0A17C;

    return (v14)(v10, &off_283A6E5F8);
  }

  else
  {
    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_226D0A17C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 56) = a1;
  *(v4 + 64) = v1;

  v5 = *(v3 + 16);
  if (v1)
  {
    v6 = sub_226D0A450;
  }

  else
  {
    v6 = sub_226D0A2B0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_226D0A2B0()
{
  v14 = v0;

  v1 = sub_226D6E05C();
  v2 = sub_226D6E9EC();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[7];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    v6 = MEMORY[0x22AA8A6A0](v3, MEMORY[0x277D837D0]);
    v8 = sub_226AC4530(v6, v7, &v13);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_226AB4000, v1, v2, "Updating enabled topics to %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    MEMORY[0x22AA8BEE0](v5, -1, -1);
    MEMORY[0x22AA8BEE0](v4, -1, -1);
  }

  v9 = v0[3];
  v10 = sub_226D6E5CC();

  [v9 _setEnabledTopics_];

  swift_unknownObjectRelease();
  v11 = v0[1];

  return v11();
}

uint64_t sub_226D0A450()
{
  v1 = v0[8];
  v2 = v1;
  v3 = sub_226D6E05C();
  v4 = sub_226D6E9CC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[8];
  v7 = v0[3];
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_226AB4000, v3, v4, "Failed to retrieve enabled topics with error: %@", v8, 0xCu);
    sub_226B17298(v9);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
    MEMORY[0x22AA8BEE0](v8, -1, -1);

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_226D0A5C4()
{
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BA0, &qword_226D734E0);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D0A660, v0, 0);
}

uint64_t sub_226D0A660()
{
  v1 = v0[2];
  *(v1 + 128) = 1;
  v2 = *(v1 + 136);
  v0[4] = v2;
  if (v2)
  {
    v3 = qword_28105F640;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = sub_226D6E07C();
    v0[5] = __swift_project_value_buffer(v4, qword_28105F648);
    v5 = sub_226D6E05C();
    v6 = sub_226D6E9BC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_226AB4000, v5, v6, "Awaiting concurrent enabled topics update", v7, 2u);
      MEMORY[0x22AA8BEE0](v7, -1, -1);
    }

    v8 = swift_task_alloc();
    v0[6] = v8;
    *v8 = v0;
    v8[1] = sub_226D0A8F8;
  }

  else
  {
    v9 = v0[2];
    v10 = v0[3];
    v11 = sub_226D6E79C();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
    v12 = sub_226D0BCE4();
    v13 = swift_allocObject();
    v13[2] = v9;
    v13[3] = v12;
    v13[4] = v9;
    swift_retain_n();
    v14 = sub_226B60364(0, 0, v10, &unk_226D7CC28, v13);
    v0[9] = v14;
    *(v9 + 136) = v14;

    v15 = swift_task_alloc();
    v0[10] = v15;
    *v15 = v0;
    v15[1] = sub_226D0AF4C;
  }

  return MEMORY[0x282200460]();
}

uint64_t sub_226D0A8F8()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_226D0AA08, v1, 0);
}

uint64_t sub_226D0AA08(uint64_t a1)
{
  v2 = v1[2];
  if (*(v2 + 128) == 1)
  {
    v3 = *(v2 + 136);
    v1[7] = v3;
    if (v3)
    {

      v4 = sub_226D6E05C();
      v5 = sub_226D6E9BC();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_226AB4000, v4, v5, "Awaiting another concurrent enabled topics update", v6, 2u);
        MEMORY[0x22AA8BEE0](v6, -1, -1);
      }

      v7 = swift_task_alloc();
      v1[8] = v7;
      *v7 = v1;
      v7[1] = sub_226D0AD2C;
    }

    else
    {

      v13 = v1[2];
      v14 = v1[3];
      v15 = sub_226D6E79C();
      (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
      v16 = sub_226D0BCE4();
      v17 = swift_allocObject();
      v17[2] = v13;
      v17[3] = v16;
      v17[4] = v13;
      swift_retain_n();
      v18 = sub_226B60364(0, 0, v14, &unk_226D7CC28, v17);
      v1[9] = v18;
      *(v13 + 136) = v18;

      v19 = swift_task_alloc();
      v1[10] = v19;
      *v19 = v1;
      v19[1] = sub_226D0AF4C;
    }

    return MEMORY[0x282200460]();
  }

  else
  {
    v8 = sub_226D6E05C();
    v9 = sub_226D6E9BC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_226AB4000, v8, v9, "Enabled topics update no longer needed, skipping", v10, 2u);
      MEMORY[0x22AA8BEE0](v10, -1, -1);
    }

    else
    {
    }

    v11 = v1[1];

    return v11();
  }
}

uint64_t sub_226D0AD2C()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_226D0AE3C, v1, 0);
}

uint64_t sub_226D0AE3C(uint64_t a1)
{
  v2 = sub_226D6E05C();
  v3 = sub_226D6E9BC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226AB4000, v2, v3, "Enabled topics updated already, skipping", v4, 2u);
    MEMORY[0x22AA8BEE0](v4, -1, -1);
  }

  else
  {
  }

  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_226D0AF4C()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_226D0B05C, v1, 0);
}

uint64_t sub_226D0B05C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226D0B0E4()
{
  *(*(v0 + 16) + 128) = 0;
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_226D0B17C;

  return sub_226D09F04();
}

uint64_t sub_226D0B17C()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_226D0B28C, v1, 0);
}

uint64_t sub_226D0B28C()
{
  *(*(v0 + 16) + 136) = 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226D0B2F4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_226D0B318, v2, 0);
}

uint64_t sub_226D0B318()
{
  v17 = v0;
  v1 = *(v0[4] + 112);
  if (v1)
  {
    v2 = objc_allocWithZone(MEMORY[0x277CEEA00]);
    v3 = v1;
    v4 = sub_226D6E36C();
    v5 = sub_226D6E36C();
    v6 = [v2 initWithTopic:v4 identifier:v5];

    if (qword_28105F640 != -1)
    {
      swift_once();
    }

    v7 = sub_226D6E07C();
    __swift_project_value_buffer(v7, qword_28105F648);

    v8 = sub_226D6E05C();
    v9 = sub_226D6E9EC();

    if (os_log_type_enabled(v8, v9))
    {
      v11 = v0[2];
      v10 = v0[3];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v16 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_226AC4530(v11, v10, &v16);
      _os_log_impl(&dword_226AB4000, v8, v9, "Requesting token for topic %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x22AA8BEE0](v13, -1, -1);
      MEMORY[0x22AA8BEE0](v12, -1, -1);
    }

    [v3 requestTokenForInfo_];
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_226D0B53C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_226D0B560, v2, 0);
}

uint64_t sub_226D0B560()
{
  v17 = v0;
  v1 = *(v0[4] + 112);
  if (v1)
  {
    v2 = objc_allocWithZone(MEMORY[0x277CEEA00]);
    v3 = v1;
    v4 = sub_226D6E36C();
    v5 = sub_226D6E36C();
    v6 = [v2 initWithTopic:v4 identifier:v5];

    if (qword_28105F640 != -1)
    {
      swift_once();
    }

    v7 = sub_226D6E07C();
    __swift_project_value_buffer(v7, qword_28105F648);

    v8 = sub_226D6E05C();
    v9 = sub_226D6E9EC();

    if (os_log_type_enabled(v8, v9))
    {
      v11 = v0[2];
      v10 = v0[3];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v16 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_226AC4530(v11, v10, &v16);
      _os_log_impl(&dword_226AB4000, v8, v9, "Invalidating token for topic %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x22AA8BEE0](v13, -1, -1);
      MEMORY[0x22AA8BEE0](v12, -1, -1);
    }

    [v3 invalidateTokenForInfo_];
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_226D0B784()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void *sub_226D0B814(uint64_t a1, unint64_t a2, void *a3)
{
  if (qword_28105F640 != -1)
  {
    swift_once();
  }

  v6 = sub_226D6E07C();
  __swift_project_value_buffer(v6, qword_28105F648);
  v7 = a3;
  v8 = sub_226D6E05C();
  v9 = sub_226D6E9EC();
  if (os_log_type_enabled(v8, v9))
  {
    v22 = a1;
    v23 = a2;
    v10 = swift_slowAlloc();
    result = swift_slowAlloc();
    v24 = result;
    *v10 = 136315138;
    if (!a3)
    {
LABEL_16:
      __break(1u);
      return result;
    }

    v12 = result;

    v13 = [v7 topic];
    v14 = sub_226D6E39C();
    v16 = v15;

    v17 = sub_226AC4530(v14, v16, &v24);

    *(v10 + 4) = v17;
    _os_log_impl(&dword_226AB4000, v8, v9, "Received token for topic %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x22AA8BEE0](v12, -1, -1);
    MEMORY[0x22AA8BEE0](v10, -1, -1);

    a1 = v22;
    a2 = v23;
  }

  else
  {
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  if (a2 >> 60 == 15)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (!a3)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v18 = [v7 topic];
  v19 = sub_226D6E39C();
  v21 = v20;

  sub_226C10490(a1, a2, v19, v21);

  return swift_unknownObjectRelease();
}

void sub_226D0BA74(void *a1)
{
  if (qword_28105F640 != -1)
  {
    swift_once();
  }

  v2 = sub_226D6E07C();
  __swift_project_value_buffer(v2, qword_28105F648);
  v3 = a1;
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9EC();
  v6 = &selRef_transactionAuthor;
  if (os_log_type_enabled(v4, v5))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315138;
    if (!a1)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v9 = v8;
    v10 = [v3 topic];

    if (!v10)
    {
LABEL_18:
      __break(1u);
      return;
    }

    v11 = sub_226D6E39C();
    v13 = v12;

    v14 = sub_226AC4530(v11, v13, &v20);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_226AB4000, v4, v5, "Received message for topic %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
    MEMORY[0x22AA8BEE0](v7, -1, -1);

    v6 = &selRef_transactionAuthor;
  }

  else
  {
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {
    return;
  }

  if (!a1)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = [v3 v6[51]];
  if (!v15)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v16 = v15;
  v17 = sub_226D6E39C();
  v19 = v18;

  sub_226C10DE8(v17, v19);

  swift_unknownObjectRelease();
}

unint64_t sub_226D0BCE4()
{
  result = qword_281060F68[0];
  if (!qword_281060F68[0])
  {
    type metadata accessor for PushNotificationCoordinator();
    result = swift_getWitnessTable();
    atomic_store(result, qword_281060F68);
  }

  return result;
}

uint64_t sub_226D0BD38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226AD827C;

  return sub_226D0B0C4(a1, v4, v5, v6);
}

uint64_t sub_226D0BDEC(uint64_t a1)
{
  v32 = sub_226D6D52C();
  v3 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v31 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x277D84F90];
  v33 = *(a1 + 16);
  if (v33)
  {
    v6 = a1;
    v25 = v1;
    v35 = MEMORY[0x277D84F90];
    sub_226D6EF8C();
    v7 = a1 + 56;
    result = sub_226D6ED6C();
    v8 = result;
    v9 = 0;
    v10 = *(a1 + 36);
    v29 = a1;
    v30 = v3;
    v27 = v3 + 8;
    v28 = v3 + 16;
    v26 = a1 + 64;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v6 + 32))
    {
      v12 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_21;
      }

      if (v10 != *(v6 + 36))
      {
        goto LABEL_22;
      }

      v34 = v9;
      v13 = *(v6 + 48);
      v15 = v30;
      v14 = v31;
      v16 = v32;
      (*(v30 + 16))(v31, v13 + *(v30 + 72) * v8, v32);
      sub_226D6D4DC();
      (*(v15 + 8))(v14, v16);
      sub_226D6EF6C();
      sub_226D6EF9C();
      v17 = v29;
      sub_226D6EFAC();
      result = sub_226D6EF7C();
      v11 = 1 << *(v17 + 32);
      if (v8 >= v11)
      {
        goto LABEL_23;
      }

      v18 = *(v7 + 8 * v12);
      if ((v18 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v6 = v17;
      if (v10 != *(v17 + 36))
      {
        goto LABEL_25;
      }

      v19 = v18 & (-2 << (v8 & 0x3F));
      if (v19)
      {
        v11 = __clz(__rbit64(v19)) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v12 << 6;
        v21 = v12 + 1;
        v22 = (v26 + 8 * v12);
        while (v21 < (v11 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_226AE5444(v8, v10, 0);
            v11 = __clz(__rbit64(v23)) + v20;
            goto LABEL_4;
          }
        }

        result = sub_226AE5444(v8, v10, 0);
      }

LABEL_4:
      v9 = v34 + 1;
      v8 = v11;
      if (v34 + 1 == v33)
      {
        return v35;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_226D0C0D8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v4 = sub_226D6B9BC();
  v2[4] = v4;
  v2[5] = *(v4 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D50, &unk_226D75230);
  v5 = swift_task_alloc();
  v2[9] = v5;
  v6 = sub_226D67C0C();
  v2[10] = v6;
  v2[11] = *(v6 - 8);
  v2[12] = swift_task_alloc();
  v7 = swift_task_alloc();
  v2[13] = v7;
  *v7 = v2;
  v7[1] = sub_226D0C28C;

  return sub_226D0CFB4(v5, a1);
}

uint64_t sub_226D0C28C()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_226D0CDB0;
  }

  else
  {
    v2 = sub_226D0C3A0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226D0C3A0()
{
  v53 = v0;
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_226AC47B0(v3, &qword_27D7A6D50, &unk_226D75230);
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v5 = v0[5];
    v4 = v0[6];
    v6 = v0[4];
    v7 = v0[2];
    v8 = sub_226D6E07C();
    __swift_project_value_buffer(v8, qword_28105F710);
    (*(v5 + 16))(v4, v7, v6);
    v9 = sub_226D6E05C();
    v10 = sub_226D6E9CC();
    v11 = os_log_type_enabled(v9, v10);
    v13 = v0[5];
    v12 = v0[6];
    v14 = v0[4];
    if (v11)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v52 = v16;
      *v15 = 136315138;
      sub_226D0FF44(&qword_27D7A6E40, MEMORY[0x277CC8080]);
      v17 = sub_226D6F1CC();
      v19 = v18;
      (*(v13 + 8))(v12, v14);
      v20 = sub_226AC4530(v17, v19, &v52);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_226AB4000, v9, v10, "Failed to find an account with fqaid: %s.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x22AA8BEE0](v16, -1, -1);
      MEMORY[0x22AA8BEE0](v15, -1, -1);
    }

    else
    {

      (*(v13 + 8))(v12, v14);
    }

LABEL_16:

    v48 = v0[1];

    return v48();
  }

  (*(v2 + 32))(v0[12], v3, v1);
  v21 = sub_226D67B5C();
  v0[15] = v22;
  if (!v22)
  {
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v28 = v0[7];
    v29 = v0[4];
    v30 = v0[5];
    v31 = v0[2];
    v32 = sub_226D6E07C();
    __swift_project_value_buffer(v32, qword_28105F710);
    (*(v30 + 16))(v28, v31, v29);
    v33 = sub_226D6E05C();
    v34 = sub_226D6E9AC();
    v35 = os_log_type_enabled(v33, v34);
    v37 = v0[11];
    v36 = v0[12];
    v38 = v0[10];
    v39 = v0[7];
    v41 = v0[4];
    v40 = v0[5];
    if (v35)
    {
      v51 = v0[10];
      v42 = swift_slowAlloc();
      v49 = v34;
      v43 = swift_slowAlloc();
      v52 = v43;
      *v42 = 136315138;
      sub_226D0FF44(&qword_27D7A6E40, MEMORY[0x277CC8080]);
      v44 = sub_226D6F1CC();
      v50 = v36;
      v46 = v45;
      (*(v40 + 8))(v39, v41);
      v47 = sub_226AC4530(v44, v46, &v52);

      *(v42 + 4) = v47;
      _os_log_impl(&dword_226AB4000, v33, v49, "The account is already unlinked: %s.", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v43);
      MEMORY[0x22AA8BEE0](v43, -1, -1);
      MEMORY[0x22AA8BEE0](v42, -1, -1);

      (*(v37 + 8))(v50, v51);
    }

    else
    {

      (*(v40 + 8))(v39, v41);
      (*(v37 + 8))(v36, v38);
    }

    goto LABEL_16;
  }

  v23 = v21;
  v24 = v22;
  sub_226D67B4C();
  v25 = swift_task_alloc();
  v0[16] = v25;
  *v25 = v0;
  v25[1] = sub_226D0C8EC;
  v26 = v0[8];

  return sub_226D0D298(v26, v23, v24);
}

uint64_t sub_226D0C8EC()
{
  v2 = *v1;
  v2[17] = v0;

  if (v0)
  {
    (*(v2[5] + 8))(v2[8], v2[4]);

    return MEMORY[0x2822009F8](sub_226D0CE4C, 0, 0);
  }

  else
  {
    (*(v2[5] + 8))(v2[8], v2[4]);

    v3 = swift_task_alloc();
    v2[18] = v3;
    *v3 = v2;
    v3[1] = sub_226D0CAA4;
    v4 = v2[2];

    return sub_226D0DD1C(v4);
  }
}

uint64_t sub_226D0CAA4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {
    v5 = sub_226D0CF00;
  }

  else
  {
    *(v4 + 160) = a1;
    v5 = sub_226D0CBCC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_226D0CBCC(uint64_t a1)
{
  v3 = v1[19];
  v2 = v1[20];
  v4 = v1[2];
  v5 = sub_226D676AC();
  v6 = swift_task_alloc();
  v6[2] = v4;
  v6[3] = v2;
  v6[4] = v5;
  sub_226D6EB7C();

  v8 = v1[11];
  v7 = v1[12];
  v9 = v1[10];
  if (v3)
  {
    (*(v8 + 8))(v1[12], v1[10]);
  }

  else
  {
    v10 = v1[2];
    v11 = sub_226D676AC();
    v12 = swift_task_alloc();
    *(v12 + 16) = v10;
    *(v12 + 24) = v11;
    sub_226D6EB7C();

    (*(v8 + 8))(v7, v9);
  }

  v13 = v1[1];

  return v13();
}

uint64_t sub_226D0CDB0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226D0CE4C()
{
  (*(v0[11] + 8))(v0[12], v0[10]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_226D0CF00()
{
  (*(v0[11] + 8))(v0[12], v0[10]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_226D0CFB4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_226D6EB9C();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_226D6B9BC();
  v3[8] = v5;
  v6 = *(v5 - 8);
  v3[9] = v6;
  v3[10] = *(v6 + 64);
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D0D0DC, 0, 0);
}

uint64_t sub_226D0D0DC(uint64_t a1)
{
  v3 = v1[10];
  v2 = v1[11];
  v4 = v1[8];
  v5 = v1[9];
  v6 = v1[6];
  v17 = v1[7];
  v7 = v1[5];
  v8 = v1[3];
  v9 = sub_226D676AC();
  v1[12] = v9;
  (*(v5 + 16))(v2, v8, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  v1[13] = v11;
  (*(v5 + 32))(v11 + v10, v2, v4);
  *(v11 + ((v3 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;
  (*(v6 + 104))(v17, *MEMORY[0x277CBE110], v7);
  v9;
  v12 = swift_task_alloc();
  v1[14] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D50, &unk_226D75230);
  *v12 = v1;
  v12[1] = sub_226CCE4BC;
  v14 = v1[7];
  v15 = v1[2];

  return MEMORY[0x28210EE50](v15, v14, sub_226D100F8, v11, v13);
}

uint64_t sub_226D0D298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D50, &unk_226D75230);
  v4[7] = swift_task_alloc();
  v5 = sub_226D682FC();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D0D398, 0, 0);
}

uint64_t sub_226D0D398()
{
  v1 = v0[5];
  __swift_project_boxed_opaque_existential_1(v1 + 13, v1[16]);
  v2 = sub_226D6C2AC();
  v0[11] = v2;
  __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
  sub_226D6A64C();
  sub_226D6CCAC();
  sub_226D6CC2C();
  sub_226D6B9BC();
  sub_226D0FF44(&qword_27D7A81F8, MEMORY[0x277CC8060]);
  v3 = sub_226D6CC8C();
  v4 = v0[10];
  v6 = v0[3];
  v5 = v0[4];
  v7 = v3;
  v9 = v8;

  v10 = sub_226D6D20C();
  v12 = v11;
  v0[12] = v11;
  sub_226B11B98(v7, v9);
  v13 = swift_task_alloc();
  v0[13] = v13;
  v13[2] = v2;
  v13[3] = v4;
  v13[4] = v6;
  v13[5] = v5;
  v13[6] = v10;
  v13[7] = v12;
  v14 = swift_task_alloc();
  v0[14] = v14;
  *v14 = v0;
  v14[1] = sub_226D0D7FC;
  v15 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282119B28](v14, &unk_226D7CD00, v13, v15);
}

uint64_t sub_226D0D7FC()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_226D0DA78;
  }

  else
  {

    v2 = sub_226D0D920;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226D0D920()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];

  (*(v3 + 8))(v1, v2);
  v4 = v0[15];
  v5 = v0[5];
  v6 = v0[2];
  v7 = sub_226D676AC();
  v8 = swift_task_alloc();
  v8[2] = v6;
  v8[3] = v7;
  v8[4] = v5;
  sub_226D6EB7C();
  if (!v4)
  {
    sub_226AC47B0(v0[7], &qword_27D7A6D50, &unk_226D75230);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_226D0DA78()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];

  (*(v3 + 8))(v1, v2);
  v4 = v0[15];
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v5 = sub_226D6E07C();
  __swift_project_value_buffer(v5, qword_28105F710);
  v6 = v4;
  v7 = sub_226D6E05C();
  v8 = sub_226D6E9CC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v4;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_226AB4000, v7, v8, "Failed to unlink an account remotely. %@", v9, 0xCu);
    sub_226AC47B0(v10, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v10, -1, -1);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
  }

  else
  {
  }

  v13 = v0[5];
  v14 = v0[2];
  v15 = sub_226D676AC();
  v16 = swift_task_alloc();
  v16[2] = v14;
  v16[3] = v15;
  v16[4] = v13;
  sub_226D6EB7C();
  sub_226AC47B0(v0[7], &qword_27D7A6D50, &unk_226D75230);

  v17 = v0[1];

  return v17();
}

uint64_t sub_226D0DD1C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_226D6EB9C();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_226D6B9BC();
  v2[8] = v4;
  v5 = *(v4 - 8);
  v2[9] = v5;
  v2[10] = *(v5 + 64);
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D0DE40, 0, 0);
}

uint64_t sub_226D0DE40(uint64_t a1)
{
  v3 = v1[10];
  v2 = v1[11];
  v4 = v1[8];
  v5 = v1[9];
  v6 = v1[6];
  v16 = v1[7];
  v7 = v1[5];
  v8 = v1[3];
  v9 = sub_226D676AC();
  v1[12] = v9;
  (*(v5 + 16))(v2, v8, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  v1[13] = v11;
  (*(v5 + 32))(v11 + v10, v2, v4);
  *(v11 + ((v3 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;
  (*(v6 + 104))(v16, *MEMORY[0x277CBE110], v7);
  v9;
  v12 = swift_task_alloc();
  v1[14] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6560, &qword_226D7CCF0);
  *v12 = v1;
  v12[1] = sub_226D0DFFC;
  v14 = v1[7];

  return MEMORY[0x28210EE50](v1 + 2, v14, sub_226D0FE8C, v11, v13);
}

uint64_t sub_226D0DFFC()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 120) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_226CCE6C8;
  }

  else
  {
    v5 = sub_226D0E190;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_226D0E190()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_226D0E218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v7[2] = a2;
  v7[3] = a3;
  v8 = sub_226D682FC();
  v7[8] = v8;
  v7[9] = *(v8 - 8);
  v7[10] = swift_task_alloc();
  v9 = sub_226D6C53C();
  v7[11] = v9;
  v7[12] = *(v9 - 8);
  v7[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D0E33C, 0, 0);
}

uint64_t sub_226D0E33C()
{
  (*(v0[9] + 16))(v0[10], v0[3], v0[8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A92C0, &qword_226D7CE10);
  sub_226D6BB7C();
  *(swift_allocObject() + 16) = xmmword_226D70840;

  sub_226D6BB6C();
  sub_226D6C52C();
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_226D0E4DC;
  v2 = v0[13];

  return MEMORY[0x282119B20](v2);
}

uint64_t sub_226D0E4DC()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *v1;
  *(v5 + 120) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226D0E694, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_226D0E694()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_226D0E704(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a3;
  v40[1] = *MEMORY[0x277D85DE8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7218, &unk_226D74820);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v36 - v9;
  v11 = sub_226D6B9BC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D69F0C();
  v15 = sub_226D69D9C();
  if (!v4)
  {
    v16 = v15;
    v36 = v11;
    v37 = a4;
    v38 = 0;
    if (v15)
    {
      sub_226D0EBA4(v15);
      [v16 setExternalAccountId_];
      v17 = sub_226D68CBC();
      (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
      sub_226D69E6C();
      [v16 setIsAccountMismatched_];
      v18 = [v16 accountMatchObject];
      if (v18)
      {
        v19 = v18;
        [v16 setAccountMatchObject_];
        [a2 deleteObject_];
      }

      v40[0] = 0;
      if (![a2 save_])
      {
        v34 = v40[0];
        sub_226D6D04C();

        swift_willThrow();
        return;
      }

      v20 = v40[0];
      v21 = v37;
      sub_226D67C1C();
      v22 = 0;
    }

    else
    {
      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v23 = sub_226D6E07C();
      __swift_project_value_buffer(v23, qword_28105F710);
      v24 = v36;
      (*(v12 + 16))(v14, a1, v36);
      v25 = sub_226D6E05C();
      v26 = sub_226D6E9CC();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = v12;
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v40[0] = v29;
        *v28 = 136315138;
        sub_226D0FF44(&qword_27D7A6E40, MEMORY[0x277CC8080]);
        v30 = sub_226D6F1CC();
        v32 = v31;
        (*(v27 + 8))(v14, v24);
        v33 = sub_226AC4530(v30, v32, v40);

        *(v28 + 4) = v33;
        _os_log_impl(&dword_226AB4000, v25, v26, "Failed to fetch an account with fqaid: %s.", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v29);
        MEMORY[0x22AA8BEE0](v29, -1, -1);
        MEMORY[0x22AA8BEE0](v28, -1, -1);
      }

      else
      {

        (*(v12 + 8))(v14, v24);
      }

      v22 = 1;
      v21 = v37;
    }

    v35 = sub_226D67C0C();
    (*(*(v35 - 8) + 56))(v21, v22, 1, v35);
  }
}

uint64_t sub_226D0EBA4(void *a1)
{
  v2 = v1;
  v4 = [a1 externalAccountId];
  if (v4)
  {
    v5 = v4;
    v6 = sub_226D6E39C();
    v8 = v7;

    __swift_project_boxed_opaque_existential_1((v2 + 64), *(v2 + 88));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A74D8, &qword_226D756E0);
    v9 = *(sub_226D6831C() - 8);
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_226D70840;
    v12 = (v11 + v10);
    *v12 = v6;
    v12[1] = v8;
    (*(v9 + 104))();
    sub_226D6AD4C();
  }

  v13 = [a1 accountId];
  v14 = sub_226D6E39C();
  v16 = v15;

  __swift_project_boxed_opaque_existential_1((v2 + 64), *(v2 + 88));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A74D8, &qword_226D756E0);
  v17 = sub_226D6831C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_226D750B0;
  v22 = (v21 + v20);
  *v22 = v14;
  v22[1] = v16;
  v23 = *(v18 + 104);
  (v23)(v22, *MEMORY[0x277CC7298], v17);
  v24 = (v22 + v19);
  *v24 = v14;
  v24[1] = v16;
  v23();
  v25 = (v22 + 2 * v19);
  *v25 = v14;
  v25[1] = v16;
  v23();
  v26 = (v22 + 3 * v19);
  *v26 = v14;
  v26[1] = v16;
  v23();
  v27 = (v22 + 4 * v19);
  *v27 = v14;
  v27[1] = v16;
  v23();
  swift_bridgeObjectRetain_n();
  sub_226D6AD4C();
}

void sub_226D0EED8(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v58 = a2;
  v57 = a1;
  v50 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D68, &qword_226D75210);
  MEMORY[0x28223BE20](v3 - 8);
  v52 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v61 = v48 - v6;
  MEMORY[0x28223BE20](v7);
  v60 = v48 - v8;
  v56 = sub_226D6D52C();
  v51 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v10 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6568, &qword_226D71560);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v48 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6558, &qword_226D7CCE0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v48 - v15;
  sub_226D6AC0C();
  v17 = sub_226D6AAFC();
  [v17 setReturnsObjectsAsFaults_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_226D71F40;
  v19 = sub_226D6CD7C();
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  v20 = *MEMORY[0x277CC71E0];
  v21 = sub_226D6823C();
  v22 = *(v21 - 8);
  (*(v22 + 104))(v13, v20, v21);
  (*(v22 + 56))(v13, 0, 1, v21);
  v23 = MEMORY[0x22AA86C40](v57, 0, v16, v13);
  sub_226AC47B0(v13, &qword_27D7A6568, &qword_226D71560);
  sub_226AC47B0(v16, &qword_27D7A6558, &qword_226D7CCE0);
  *(v18 + 32) = v23;
  sub_226B2A4F4();
  *(v18 + 40) = sub_226D6E91C();
  v24 = sub_226D6E5CC();

  v25 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v17 setPredicate_];
  v26 = v59;
  v27 = sub_226D6EBBC();
  if (v26)
  {
  }

  else
  {
    v28 = v27;
    v48[1] = 0;
    v29 = v52;
    v59 = v10;
    v30 = v56;
    if (v27 >> 62)
    {
      goto LABEL_28;
    }

    v31 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
    v32 = v29;
    v49 = v17;
    if (v31)
    {
      v33 = 0;
      v57 = v28 & 0xFFFFFFFFFFFFFF8;
      v58 = v28 & 0xC000000000000001;
      v54 = (v51 + 48);
      v55 = (v51 + 56);
      v34 = MEMORY[0x277D84F90];
      v53 = (v51 + 32);
      v56 = v31;
      while (1)
      {
        if (v58)
        {
          v35 = MEMORY[0x22AA8AFD0](v33, v28);
          v36 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
            goto LABEL_26;
          }
        }

        else
        {
          if (v33 >= *(v57 + 16))
          {
            goto LABEL_27;
          }

          v35 = *(v28 + 8 * v33 + 32);
          v36 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
LABEL_26:
            __break(1u);
LABEL_27:
            __break(1u);
LABEL_28:
            v31 = sub_226D6EDFC();
            goto LABEL_5;
          }
        }

        v29 = v28;
        v37 = v35;
        v38 = [v37 sharedId];
        if (v38)
        {
          v39 = v38;
          sub_226D6D4FC();

          v40 = 0;
        }

        else
        {
          v40 = 1;
        }

        (*v55)(v32, v40, 1, v30);
        v17 = v32;
        v41 = v61;
        sub_226BACBC0(v32, v61);
        v42 = v30;
        v43 = v60;
        sub_226BACBC0(v41, v60);

        if ((*v54)(v43, 1, v42) == 1)
        {
          sub_226AC47B0(v43, &qword_27D7A6D68, &qword_226D75210);
          v30 = v42;
          v32 = v17;
        }

        else
        {
          v44 = *v53;
          (*v53)(v59, v43, v42);
          v30 = v42;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v34 = sub_226BBB95C(0, *(v34 + 2) + 1, 1, v34);
          }

          v46 = *(v34 + 2);
          v45 = *(v34 + 3);
          if (v46 >= v45 >> 1)
          {
            v34 = sub_226BBB95C((v45 > 1), v46 + 1, 1, v34);
          }

          *(v34 + 2) = v46 + 1;
          v44(&v34[((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v46]);
          v32 = v52;
        }

        v28 = v29;
        ++v33;
        if (v36 == v56)
        {
          goto LABEL_25;
        }
      }
    }

    v34 = MEMORY[0x277D84F90];
LABEL_25:

    v47 = sub_226AE45DC(v34);

    *v50 = v47;
  }
}

void sub_226D0F5A8(uint64_t a1, uint64_t a2, void *a3)
{
  v32 = a3;
  v30 = a2;
  v33[1] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6568, &qword_226D71560);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6558, &qword_226D7CCE0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v29 - v8;
  sub_226D6AC0C();
  v10 = sub_226D6AAFC();
  [v10 setReturnsObjectsAsFaults_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_226D71F40;
  v12 = sub_226D6CD7C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = sub_226D6823C();
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  v14 = MEMORY[0x22AA86C40](a1, 0, v9, v6);
  sub_226AC47B0(v6, &qword_27D7A6568, &qword_226D71560);
  sub_226AC47B0(v9, &qword_27D7A6558, &qword_226D7CCE0);
  *(v11 + 32) = v14;
  sub_226B2A4F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_226D70840;
  v16 = v31;
  v17 = sub_226D0BDEC(v30);
  *(v15 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A92B0, &qword_226D7CCE8);
  *(v15 + 64) = sub_226D0FE28();
  *(v15 + 32) = v17;
  *(v11 + 40) = sub_226D6E91C();
  v18 = sub_226D6E5CC();
  v19 = v32;

  v20 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v10 setPredicate_];
  v21 = sub_226D6EBBC();
  if (!v16)
  {
    v22 = v21;
    if (v21 >> 62)
    {
      v23 = sub_226D6EDFC();
      if (v23)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v23)
      {
LABEL_4:
        if (v23 < 1)
        {
          __break(1u);
        }

        for (i = 0; i != v23; ++i)
        {
          if ((v22 & 0xC000000000000001) != 0)
          {
            v25 = MEMORY[0x22AA8AFD0](i, v22);
          }

          else
          {
            v25 = *(v22 + 8 * i + 32);
          }

          v26 = v25;
          [v25 setSharedId_];
        }
      }
    }

    v33[0] = 0;
    if ([v19 save_])
    {
      v27 = v33[0];
    }

    else
    {
      v28 = v33[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }
}

void sub_226D0F9DC(uint64_t a1, void *a2)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6568, &qword_226D71560);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6558, &qword_226D7CCE0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - v8;
  sub_226D6AC0C();
  v10 = sub_226D6AAFC();
  v11 = sub_226D6CD7C();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  v12 = *MEMORY[0x277CC71E0];
  v13 = sub_226D6823C();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v6, v12, v13);
  (*(v14 + 56))(v6, 0, 1, v13);
  v15 = MEMORY[0x22AA86C40](a1, 0, v9, v6);
  sub_226AC47B0(v6, &qword_27D7A6568, &qword_226D71560);
  sub_226AC47B0(v9, &qword_27D7A6558, &qword_226D7CCE0);
  [v10 setPredicate_];

  [v10 setReturnsObjectsAsFaults_];
  v16 = v28;
  v17 = sub_226D6EBBC();
  if (!v16)
  {
    v18 = v17;
    v27 = v10;
    v28 = 0;
    if (v17 >> 62)
    {
      goto LABEL_20;
    }

    for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_226D6EDFC())
    {
      v20 = a2;
      if (!i)
      {
        break;
      }

      v21 = 0;
      a2 = (v18 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v22 = MEMORY[0x22AA8AFD0](v21, v18);
        }

        else
        {
          if (v21 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }

          v22 = *(v18 + 8 * v21 + 32);
        }

        v23 = v22;
        v24 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        [v20 deleteObject_];

        ++v21;
        if (v24 == i)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      ;
    }

LABEL_13:

    v29[0] = 0;
    if ([v20 save_])
    {
      v25 = v29[0];

      return;
    }

    v26 = v29[0];
    sub_226D6D04C();

    swift_willThrow();
    v10 = v27;
  }
}

uint64_t sub_226D0FD78()
{

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);

  return swift_deallocClassInstance();
}

unint64_t sub_226D0FE28()
{
  result = qword_27D7A92B8;
  if (!qword_27D7A92B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7A92B0, &qword_226D7CCE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A92B8);
  }

  return result;
}

void sub_226D0FE8C(uint64_t *a1@<X8>)
{
  v3 = *(sub_226D6B9BC() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  sub_226D0EED8(v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)), a1);
}

uint64_t sub_226D0FF44(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_226D6B9BC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_226D0FF88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_226AD827C;

  return sub_226D0E218(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t objectdestroyTm_1()
{
  v1 = sub_226D6B9BC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_226D10190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v7 + 176) = a6;
  *(v7 + 184) = v6;
  *(v7 + 560) = a5;
  *(v7 + 160) = a3;
  *(v7 + 168) = a4;
  *(v7 + 144) = a1;
  *(v7 + 152) = a2;
  v8 = sub_226D671FC();
  *(v7 + 192) = v8;
  *(v7 + 200) = *(v8 - 8);
  *(v7 + 208) = swift_task_alloc();
  v9 = sub_226D6B5EC();
  *(v7 + 216) = v9;
  *(v7 + 224) = *(v9 - 8);
  *(v7 + 232) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A72A0, &unk_226D7C550);
  *(v7 + 240) = swift_task_alloc();
  *(v7 + 248) = type metadata accessor for AccountMatchResult(0);
  *(v7 + 256) = swift_task_alloc();
  v10 = sub_226D6B9BC();
  *(v7 + 264) = v10;
  *(v7 + 272) = *(v10 - 8);
  *(v7 + 280) = swift_task_alloc();
  *(v7 + 288) = swift_task_alloc();
  *(v7 + 296) = swift_task_alloc();
  *(v7 + 304) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D50, &unk_226D75230);
  *(v7 + 312) = swift_task_alloc();
  *(v7 + 320) = swift_task_alloc();
  v11 = sub_226D67C0C();
  *(v7 + 328) = v11;
  *(v7 + 336) = *(v11 - 8);
  *(v7 + 344) = swift_task_alloc();
  *(v7 + 352) = swift_task_alloc();
  *(v7 + 360) = swift_task_alloc();
  *(v7 + 368) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D10464, 0, 0);
}

uint64_t sub_226D10464()
{
  v1 = *(v0 + 152);
  if (*(v0 + 560))
  {
    v2 = [v1 devicePrimaryPaymentApplication];
    *(v0 + 392) = v2;
    if (v2)
    {
      v3 = v2;
      if ([v2 state] - 1 <= 2)
      {
        if (*(v0 + 560) == 1)
        {
          v4 = swift_task_alloc();
          *(v0 + 400) = v4;
          *v4 = v0;
          v4[1] = sub_226D11134;
          v5 = *(v0 + 168);

          return sub_226D17BB8(v5);
        }

        else
        {
          v20 = swift_task_alloc();
          *(v0 + 416) = v20;
          *v20 = v0;
          v20[1] = sub_226D117D4;
          v21 = *(v0 + 168);

          return sub_226D17EAC(v21);
        }
      }
    }

    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v13 = sub_226D6E07C();
    __swift_project_value_buffer(v13, qword_28105F710);
    v14 = sub_226D6E05C();
    v15 = sub_226D6E9CC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_226AB4000, v14, v15, "Can't connect a payment pass that hasn't been activated", v16, 2u);
      MEMORY[0x22AA8BEE0](v16, -1, -1);
    }

    v17 = sub_226D6B66C();
    sub_226D1E9A0(&qword_27D7A6468, MEMORY[0x277CC7FB8], MEMORY[0x277CC7FC0]);
    swift_allocError();
    (*(*(v17 - 8) + 104))(v18, *MEMORY[0x277CC7F98], v17);
    swift_willThrow();

    v19 = *(v0 + 8);

    return v19();
  }

  else
  {
    v7 = [v1 primaryAccountIdentifier];
    v8 = sub_226D6E39C();
    v10 = v9;

    *(v0 + 376) = v10;
    v11 = swift_task_alloc();
    *(v0 + 384) = v11;
    *v11 = v0;
    v11[1] = sub_226D108CC;
    v12 = *(v0 + 320);

    return sub_226D17530(v12, v8, v10);
  }
}

uint64_t sub_226D108CC()
{

  return MEMORY[0x2822009F8](sub_226D109E4, 0, 0);
}

uint64_t sub_226D109E4()
{
  v52 = v0;
  v1 = *(v0 + 328);
  v2 = *(v0 + 336);
  v3 = *(v0 + 320);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_226AC47B0(v3, &qword_27D7A6D50, &unk_226D75230);
    v4 = [*(v0 + 152) devicePrimaryPaymentApplication];
    *(v0 + 392) = v4;
    if (v4)
    {
      v5 = v4;
      if ([v4 state] - 1 <= 2)
      {
        if (*(v0 + 560) == 1)
        {
          v6 = swift_task_alloc();
          *(v0 + 400) = v6;
          *v6 = v0;
          v6[1] = sub_226D11134;
          v7 = *(v0 + 168);

          return sub_226D17BB8(v7);
        }

        else
        {
          v43 = swift_task_alloc();
          *(v0 + 416) = v43;
          *v43 = v0;
          v43[1] = sub_226D117D4;
          v44 = *(v0 + 168);

          return sub_226D17EAC(v44);
        }
      }
    }

    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v37 = sub_226D6E07C();
    __swift_project_value_buffer(v37, qword_28105F710);
    v38 = sub_226D6E05C();
    v39 = sub_226D6E9CC();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_226AB4000, v38, v39, "Can't connect a payment pass that hasn't been activated", v40, 2u);
      MEMORY[0x22AA8BEE0](v40, -1, -1);
    }

    v41 = sub_226D6B66C();
    sub_226D1E9A0(&qword_27D7A6468, MEMORY[0x277CC7FB8], MEMORY[0x277CC7FC0]);
    swift_allocError();
    (*(*(v41 - 8) + 104))(v42, *MEMORY[0x277CC7F98], v41);
    swift_willThrow();

    v36 = *(v0 + 8);
  }

  else
  {
    v9 = *(v2 + 32);
    v9(*(v0 + 368), v3, v1);
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 360);
    v11 = *(v0 + 368);
    v12 = *(v0 + 328);
    v13 = *(v0 + 336);
    v14 = *(v0 + 152);
    v15 = sub_226D6E07C();
    __swift_project_value_buffer(v15, qword_28105F710);
    (*(v13 + 16))(v10, v11, v12);
    v16 = v14;
    v17 = sub_226D6E05C();
    v18 = sub_226D6E9AC();

    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 360);
    v22 = *(v0 + 328);
    v21 = *(v0 + 336);
    if (v19)
    {
      v50 = v9;
      v23 = *(v0 + 304);
      v45 = *(v0 + 264);
      v46 = *(v0 + 272);
      v49 = v18;
      v24 = *(v0 + 152);
      v47 = *(v0 + 328);
      v25 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v51[0] = v48;
      *v25 = 136315394;
      v26 = [v24 primaryAccountIdentifier];
      v27 = sub_226D6E39C();
      v29 = v28;

      v30 = sub_226AC4530(v27, v29, v51);

      *(v25 + 4) = v30;
      *(v25 + 12) = 2080;
      sub_226D67B4C();
      sub_226D1E9A0(&qword_27D7A6E40, MEMORY[0x277CC8058], MEMORY[0x277CC8080]);
      v31 = sub_226D6F1CC();
      v33 = v32;
      v34 = v23;
      v9 = v50;
      (*(v46 + 8))(v34, v45);
      (*(v21 + 8))(v20, v47);
      v35 = sub_226AC4530(v31, v33, v51);

      *(v25 + 14) = v35;
      _os_log_impl(&dword_226AB4000, v17, v49, "An account is connected already. Let's skip matching.\nexternalAccountId: %s\nfqaid: %s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA8BEE0](v48, -1, -1);
      MEMORY[0x22AA8BEE0](v25, -1, -1);
    }

    else
    {

      (*(v21 + 8))(v20, v22);
    }

    v9(*(v0 + 144), *(v0 + 368), *(v0 + 328));

    v36 = *(v0 + 8);
  }

  return v36();
}

uint64_t sub_226D11134(uint64_t a1)
{
  v3 = *v2;
  v3[12] = v2;
  v3[13] = a1;
  v3[14] = v1;
  v3[51] = v1;

  if (v1)
  {
    v4 = sub_226D135AC;
  }

  else
  {
    v4 = sub_226D11250;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226D11250()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 272);
  v3 = *(v0 + 240);
  v4 = *(v0 + 160);
  *(v0 + 432) = *(v0 + 104);
  sub_226AC40E8(v4, v3, &qword_27D7A72A0, &unk_226D7C550);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_226AC47B0(*(v0 + 240), &qword_27D7A72A0, &unk_226D7C550);
    v6 = *(v0 + 224);
    v5 = *(v0 + 232);
    v7 = *(v0 + 216);
    sub_226D6B58C();
    v8 = sub_226D6B5CC();
    (*(v6 + 8))(v5, v7);
    if (v8)
    {
      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v9 = sub_226D6E07C();
      __swift_project_value_buffer(v9, qword_28105F710);
      v10 = sub_226D6E05C();
      v11 = sub_226D6E9AC();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_226AB4000, v10, v11, "Show account matching picker while connecting a primary account", v12, 2u);
        MEMORY[0x22AA8BEE0](v12, -1, -1);
      }

      v13 = *(v0 + 432);

      v14 = sub_226D6B66C();
      sub_226D1E9A0(&qword_27D7A6468, MEMORY[0x277CC7FB8], MEMORY[0x277CC7FC0]);
      swift_allocError();
      *v15 = v13;
      (*(*(v14 - 8) + 104))(v15, *MEMORY[0x277CC7FA8], v14);
      swift_willThrow();

      v16 = *(v0 + 8);

      return v16();
    }

    else if (sub_226D6718C())
    {
      v21 = *(v0 + 152);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
      inited = swift_initStackObject();
      *(v0 + 464) = inited;
      *(inited + 16) = xmmword_226D71F20;
      *(inited + 32) = v21;
      v23 = v21;
      v24 = swift_task_alloc();
      *(v0 + 472) = v24;
      *v24 = v0;
      v24[1] = sub_226D12714;
      v25 = *(v0 + 176);
      v26 = *(v0 + 168);

      return sub_226D18C18(inited, v26, v25);
    }

    else
    {
      __swift_project_boxed_opaque_existential_1((*(v0 + 184) + 64), *(*(v0 + 184) + 88));
      if (qword_27D7A5EB0 != -1)
      {
        swift_once();
      }

      sub_226AE5DE8(qword_27D7B61B0, byte_27D7B61B8, (v0 + 16));
      __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
      v27 = swift_task_alloc();
      *(v0 + 480) = v27;
      *v27 = v0;
      v27[1] = sub_226D1294C;
      v28 = *(v0 + 432);
      v29 = *(v0 + 256);
      v30 = *(v0 + 152);

      return sub_226AE6274(v29, v30, v28);
    }
  }

  else
  {
    (*(*(v0 + 272) + 32))(*(v0 + 296), *(v0 + 240), *(v0 + 264));
    v18 = swift_task_alloc();
    *(v0 + 440) = v18;
    *v18 = v0;
    v18[1] = sub_226D11E74;
    v19 = *(v0 + 312);
    v20 = *(v0 + 296);

    return sub_226D183F4(v19, v20);
  }
}

uint64_t sub_226D117D4(uint64_t a1)
{
  v3 = *v2;
  v3[15] = v2;
  v3[16] = a1;
  v3[17] = v1;
  v3[53] = v1;

  if (v1)
  {
    v4 = sub_226D136CC;
  }

  else
  {
    v4 = sub_226D118F0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226D118F0()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 272);
  v3 = *(v0 + 240);
  v4 = *(v0 + 160);
  *(v0 + 432) = *(v0 + 128);
  sub_226AC40E8(v4, v3, &qword_27D7A72A0, &unk_226D7C550);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_226AC47B0(*(v0 + 240), &qword_27D7A72A0, &unk_226D7C550);
    v6 = *(v0 + 224);
    v5 = *(v0 + 232);
    v7 = *(v0 + 216);
    sub_226D6B58C();
    v8 = sub_226D6B5CC();
    (*(v6 + 8))(v5, v7);
    if (v8)
    {
      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v9 = sub_226D6E07C();
      __swift_project_value_buffer(v9, qword_28105F710);
      v10 = sub_226D6E05C();
      v11 = sub_226D6E9AC();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_226AB4000, v10, v11, "Show account matching picker while connecting a primary account", v12, 2u);
        MEMORY[0x22AA8BEE0](v12, -1, -1);
      }

      v13 = *(v0 + 432);

      v14 = sub_226D6B66C();
      sub_226D1E9A0(&qword_27D7A6468, MEMORY[0x277CC7FB8], MEMORY[0x277CC7FC0]);
      swift_allocError();
      *v15 = v13;
      (*(*(v14 - 8) + 104))(v15, *MEMORY[0x277CC7FA8], v14);
      swift_willThrow();

      v16 = *(v0 + 8);

      return v16();
    }

    else if (sub_226D6718C())
    {
      v21 = *(v0 + 152);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
      inited = swift_initStackObject();
      *(v0 + 464) = inited;
      *(inited + 16) = xmmword_226D71F20;
      *(inited + 32) = v21;
      v23 = v21;
      v24 = swift_task_alloc();
      *(v0 + 472) = v24;
      *v24 = v0;
      v24[1] = sub_226D12714;
      v25 = *(v0 + 176);
      v26 = *(v0 + 168);

      return sub_226D18C18(inited, v26, v25);
    }

    else
    {
      __swift_project_boxed_opaque_existential_1((*(v0 + 184) + 64), *(*(v0 + 184) + 88));
      if (qword_27D7A5EB0 != -1)
      {
        swift_once();
      }

      sub_226AE5DE8(qword_27D7B61B0, byte_27D7B61B8, (v0 + 16));
      __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
      v27 = swift_task_alloc();
      *(v0 + 480) = v27;
      *v27 = v0;
      v27[1] = sub_226D1294C;
      v28 = *(v0 + 432);
      v29 = *(v0 + 256);
      v30 = *(v0 + 152);

      return sub_226AE6274(v29, v30, v28);
    }
  }

  else
  {
    (*(*(v0 + 272) + 32))(*(v0 + 296), *(v0 + 240), *(v0 + 264));
    v18 = swift_task_alloc();
    *(v0 + 440) = v18;
    *v18 = v0;
    v18[1] = sub_226D11E74;
    v19 = *(v0 + 312);
    v20 = *(v0 + 296);

    return sub_226D183F4(v19, v20);
  }
}

uint64_t sub_226D11E74()
{

  return MEMORY[0x2822009F8](sub_226D11F70, 0, 0);
}

uint64_t sub_226D11F70()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 336);
  v3 = *(v0 + 312);
  (*(*(v0 + 272) + 8))(*(v0 + 296), *(v0 + 264));
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_226AC47B0(*(v0 + 312), &qword_27D7A6D50, &unk_226D75230);
    v5 = *(v0 + 224);
    v4 = *(v0 + 232);
    v6 = *(v0 + 216);
    sub_226D6B58C();
    v7 = sub_226D6B5CC();
    (*(v5 + 8))(v4, v6);
    if (v7)
    {
      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v8 = sub_226D6E07C();
      __swift_project_value_buffer(v8, qword_28105F710);
      v9 = sub_226D6E05C();
      v10 = sub_226D6E9AC();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_226AB4000, v9, v10, "Show account matching picker while connecting a primary account", v11, 2u);
        MEMORY[0x22AA8BEE0](v11, -1, -1);
      }

      v12 = *(v0 + 432);

      v13 = sub_226D6B66C();
      sub_226D1E9A0(&qword_27D7A6468, MEMORY[0x277CC7FB8], MEMORY[0x277CC7FC0]);
      swift_allocError();
      *v14 = v12;
      (*(*(v13 - 8) + 104))(v14, *MEMORY[0x277CC7FA8], v13);
      swift_willThrow();

      v15 = *(v0 + 8);

      return v15();
    }

    else if (sub_226D6718C())
    {
      v29 = *(v0 + 152);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
      inited = swift_initStackObject();
      *(v0 + 464) = inited;
      *(inited + 16) = xmmword_226D71F20;
      *(inited + 32) = v29;
      v31 = v29;
      v32 = swift_task_alloc();
      *(v0 + 472) = v32;
      *v32 = v0;
      v32[1] = sub_226D12714;
      v33 = *(v0 + 176);
      v34 = *(v0 + 168);

      return sub_226D18C18(inited, v34, v33);
    }

    else
    {
      __swift_project_boxed_opaque_existential_1((*(v0 + 184) + 64), *(*(v0 + 184) + 88));
      if (qword_27D7A5EB0 != -1)
      {
        swift_once();
      }

      sub_226AE5DE8(qword_27D7B61B0, byte_27D7B61B8, (v0 + 16));
      __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
      v35 = swift_task_alloc();
      *(v0 + 480) = v35;
      *v35 = v0;
      v35[1] = sub_226D1294C;
      v36 = *(v0 + 432);
      v37 = *(v0 + 256);
      v38 = *(v0 + 152);

      return sub_226AE6274(v37, v38, v36);
    }
  }

  else
  {
    v17 = *(v0 + 352);
    v18 = *(v0 + 328);
    v20 = *(v0 + 248);
    v19 = *(v0 + 256);
    v21 = *(*(v0 + 336) + 32);
    v21(v17, *(v0 + 312), v18);
    v21(v19, v17, v18);
    v22 = *(v20 + 20);
    v23 = *MEMORY[0x277CC75C0];
    v24 = sub_226D68CBC();
    (*(*(v24 - 8) + 104))(v19 + v22, v23, v24);
    sub_226D67B4C();
    v25 = swift_task_alloc();
    *(v0 + 448) = v25;
    *v25 = v0;
    v25[1] = sub_226D12568;
    v26 = *(v0 + 432);
    v27 = *(v0 + 288);
    v28 = *(v0 + 152);

    return sub_226D19EF4(v27, v28, v26);
  }
}

uint64_t sub_226D12568()
{
  v2 = *v1;
  v2[57] = v0;

  v3 = v2[36];
  v4 = v2[34];
  v5 = v2[33];
  v8 = *(v4 + 8);
  v6 = v4 + 8;
  v7 = v8;
  if (v0)
  {
    v7(v3, v5);

    v9 = sub_226D137EC;
  }

  else
  {
    v2[62] = v7;
    v2[63] = v6 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v3, v5);

    v9 = sub_226D12C44;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_226D12714()
{

  swift_setDeallocating();
  swift_arrayDestroy();

  return MEMORY[0x2822009F8](sub_226D12844, 0, 0);
}

uint64_t sub_226D12844()
{
  __swift_project_boxed_opaque_existential_1((v0[23] + 64), *(v0[23] + 88));
  if (qword_27D7A5EB0 != -1)
  {
    swift_once();
  }

  sub_226AE5DE8(qword_27D7B61B0, byte_27D7B61B8, v0 + 2);
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v1 = swift_task_alloc();
  v0[60] = v1;
  *v1 = v0;
  v1[1] = sub_226D1294C;
  v2 = v0[54];
  v3 = v0[32];
  v4 = v0[19];

  return sub_226AE6274(v3, v4, v2);
}

uint64_t sub_226D1294C()
{
  *(*v1 + 488) = v0;

  if (v0)
  {

    v2 = sub_226D12B1C;
  }

  else
  {
    v2 = sub_226D12A68;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226D12A68()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  sub_226D67B4C();
  v1 = swift_task_alloc();
  v0[56] = v1;
  *v1 = v0;
  v1[1] = sub_226D12568;
  v2 = v0[54];
  v3 = v0[36];
  v4 = v0[19];

  return sub_226D19EF4(v3, v4, v2);
}

uint64_t sub_226D12B1C()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226D12C44()
{
  v31 = v0;
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  v4 = v0[21];
  v5 = sub_226D6E07C();
  __swift_project_value_buffer(v5, qword_28105F710);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_226D6E05C();
  v7 = sub_226D6E9AC();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[25];
  v9 = v0[26];
  v11 = v0[24];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v30 = v13;
    *v12 = 136315138;
    v14 = sub_226D671AC();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_226AC4530(v14, v16, &v30);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_226AB4000, v6, v7, "Connecting a primary account for institution: %s.", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x22AA8BEE0](v13, -1, -1);
    MEMORY[0x22AA8BEE0](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v19 = v0[31];
  v18 = v0[32];
  v20 = v0[19];
  sub_226D67B4C();
  v21 = [v20 primaryAccountIdentifier];
  v22 = sub_226D6E39C();
  v24 = v23;

  v0[64] = v22;
  v0[65] = v24;
  v25 = *(v19 + 20);
  v26 = swift_task_alloc();
  v0[66] = v26;
  *v26 = v0;
  v26[1] = sub_226D12ED8;
  v27 = v0[43];
  v28 = v0[35];

  return sub_226D1B5B4(v27, v28, v22, v24, v18 + v25);
}

uint64_t sub_226D12ED8()
{
  v2 = *v1;
  v2[67] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226D13190, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[68] = v3;
    *v3 = v2;
    v3[1] = sub_226D1305C;
    v4 = v2[65];
    v5 = v2[35];
    v6 = v2[64];

    return sub_226D1C0AC(v6, v4, v5);
  }
}

uint64_t sub_226D1305C()
{
  *(*v1 + 552) = v0;

  if (v0)
  {
    v2 = sub_226D13448;
  }

  else
  {
    v2 = sub_226D132DC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226D13190()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 256);
  (*(v0 + 496))(*(v0 + 280), *(v0 + 264));

  sub_226D1E728(v2, type metadata accessor for AccountMatchResult);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_226D132DC()
{
  v1 = *(v0 + 392);
  v3 = *(v0 + 336);
  v2 = *(v0 + 344);
  v4 = *(v0 + 328);
  v5 = *(v0 + 256);
  v6 = *(v0 + 144);
  (*(v0 + 496))(*(v0 + 280), *(v0 + 264));
  (*(v3 + 32))(v6, v2, v4);

  sub_226D1E728(v5, type metadata accessor for AccountMatchResult);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_226D13448()
{
  (*(*(v0 + 336) + 8))(*(v0 + 344), *(v0 + 328));
  v1 = *(v0 + 392);
  v2 = *(v0 + 256);
  (*(v0 + 496))(*(v0 + 280), *(v0 + 264));

  sub_226D1E728(v2, type metadata accessor for AccountMatchResult);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_226D135AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226D136CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226D137EC()
{
  v1 = *(v0 + 256);

  sub_226D1E728(v1, type metadata accessor for AccountMatchResult);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_226D1392C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A5FA8, &qword_226D73790);
  v2[5] = swift_task_alloc();
  v4 = sub_226D671FC();
  v2[6] = v4;
  v2[7] = *(v4 - 8);
  v2[8] = swift_task_alloc();
  v5 = sub_226D67C0C();
  v2[9] = v5;
  v2[10] = *(v5 - 8);
  v2[11] = swift_task_alloc();
  v6 = sub_226D6715C();
  v2[12] = v6;
  v2[13] = *(v6 - 8);
  v2[14] = swift_task_alloc();
  v7 = swift_task_alloc();
  v2[15] = v7;
  *v7 = v2;
  v7[1] = sub_226D13B10;

  return sub_226D1B140(a1);
}

uint64_t sub_226D13B10(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v4 = sub_226D146FC;
  }

  else
  {
    v4 = sub_226D13C24;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226D13C24()
{
  v1 = v0[16];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[13];
    v4 = v0[10];
    v19 = MEMORY[0x277D84F90];
    sub_226AE1FC8(0, v2, 0);
    v5 = v19;
    v6 = *(v4 + 16);
    v4 += 16;
    v7 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v17 = *(v4 + 56);
    v18 = v6;
    v8 = (v4 - 8);
    do
    {
      v9 = v0[11];
      v10 = v0[9];
      v18(v9, v7, v10);
      sub_226D67B6C();
      (*v8)(v9, v10);
      v12 = *(v19 + 16);
      v11 = *(v19 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_226AE1FC8((v11 > 1), v12 + 1, 1);
      }

      v13 = v0[14];
      v14 = v0[12];
      *(v19 + 16) = v12 + 1;
      (*(v3 + 32))(v19 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v12, v13, v14);
      v7 += v17;
      --v2;
    }

    while (v2);
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  v0[18] = sub_226AE4230(v5);

  v15 = swift_task_alloc();
  v0[19] = v15;
  *v15 = v0;
  v15[1] = sub_226D13E2C;

  return sub_226D1DC58();
}

uint64_t sub_226D13E2C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v1;

  if (v1)
  {
    v4 = sub_226D148C0;
  }

  else
  {
    v4 = sub_226D13F40;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226D13F40()
{
  v1 = MEMORY[0x277D84F90];
  v0[2] = MEMORY[0x277D84F90];
  v2 = v0[20];
  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[22] = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:

    v11 = v0[1];
    v12 = MEMORY[0x277D84F90];

    return v11(v12);
  }

  result = sub_226D6EDFC();
  v0[22] = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (result < 1)
  {
    __break(1u);
  }

  else
  {
    v4 = 0;
    while (1)
    {
      v0[23] = v4;
      v0[24] = v1;
      v5 = v0[20];
      v6 = (v5 & 0xC000000000000001) != 0 ? MEMORY[0x22AA8AFD0]() : *(v5 + 8 * v4 + 32);
      v7 = v6;
      v0[25] = v6;
      v8 = v0[18];
      v9 = sub_226AE8A00();
      sub_226C995A4(v9, v8);
      LOBYTE(v8) = v10;

      if ((v8 & 1) == 0)
      {
        break;
      }

      v4 = v0[23] + 1;
      if (v4 == v0[22])
      {
        goto LABEL_10;
      }
    }

    v13 = v0[4];
    v14 = v13[41];
    v15 = v13[42];
    __swift_project_boxed_opaque_existential_1(v13 + 38, v14);
    v16 = [v7 primaryAccountIdentifier];
    v17 = sub_226D6E39C();
    v19 = v18;

    v0[26] = v19;
    v22 = (*(v15 + 8) + **(v15 + 8));
    v20 = swift_task_alloc();
    v0[27] = v20;
    *v20 = v0;
    v20[1] = sub_226D141FC;
    v21 = v0[5];

    return v22(v21, v17, v19, v14, v15);
  }

  return result;
}

uint64_t sub_226D141FC()
{

  return MEMORY[0x2822009F8](sub_226D14314, 0, 0);
}

uint64_t sub_226D14314()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    (*(v2 + 32))(*(v0 + 64), v3, v1);
    v6 = sub_226D671AC();
    v8 = v7;
    v10 = sub_226D671AC();
    v11 = v6;
    v13 = *(v0 + 56);
    v12 = *(v0 + 64);
    v14 = *(v0 + 48);
    if (v11 == v10 && v8 == v9)
    {

      (*(v13 + 8))(v12, v14);
    }

    else
    {
      v16 = sub_226D6F21C();

      (*(v13 + 8))(v12, v14);
      if ((v16 & 1) == 0)
      {

        goto LABEL_3;
      }
    }

    v5 = (v0 + 16);
    MEMORY[0x22AA8A610](*(v0 + 200));
    if (*((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_226D6E61C();
    }

    v17 = *(v0 + 200);
    sub_226D6E65C();

    goto LABEL_14;
  }

  v4 = *(v0 + 200);
  sub_226AC47B0(v3, &qword_27D7A5FA8, &qword_226D73790);

LABEL_3:
  v5 = (v0 + 192);
LABEL_14:
  v18 = *v5;
  while (1)
  {
    v19 = *(v0 + 184) + 1;
    if (v19 == *(v0 + 176))
    {
      break;
    }

    *(v0 + 184) = v19;
    *(v0 + 192) = v18;
    v20 = *(v0 + 160);
    if ((v20 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x22AA8AFD0]();
    }

    else
    {
      v21 = *(v20 + 8 * v19 + 32);
    }

    v22 = v21;
    *(v0 + 200) = v21;
    v23 = *(v0 + 144);
    v24 = sub_226AE8A00();
    sub_226C995A4(v24, v23);
    LOBYTE(v23) = v25;

    if ((v23 & 1) == 0)
    {
      v28 = *(v0 + 32);
      v29 = v28[41];
      v30 = v28[42];
      __swift_project_boxed_opaque_existential_1(v28 + 38, v29);
      v31 = [v22 primaryAccountIdentifier];
      v32 = sub_226D6E39C();
      v34 = v33;

      *(v0 + 208) = v34;
      v37 = (*(v30 + 8) + **(v30 + 8));
      v35 = swift_task_alloc();
      *(v0 + 216) = v35;
      *v35 = v0;
      v35[1] = sub_226D141FC;
      v36 = *(v0 + 40);

      return v37(v36, v32, v34, v29, v30);
    }
  }

  v26 = *(v0 + 8);

  return v26(v18);
}

uint64_t sub_226D146FC()
{
  v1 = *(v0 + 136);
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v2 = sub_226D6E07C();
  __swift_project_value_buffer(v2, qword_28105F710);
  v3 = v1;
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9CC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_226AB4000, v4, v5, "Failed to find payment passes: %@.", v6, 0xCu);
    sub_226AC47B0(v7, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
    MEMORY[0x22AA8BEE0](v6, -1, -1);
  }

  v10 = *(v0 + 8);
  v11 = MEMORY[0x277D84F90];

  return v10(v11);
}

uint64_t sub_226D148C0()
{

  v1 = *(v0 + 168);
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v2 = sub_226D6E07C();
  __swift_project_value_buffer(v2, qword_28105F710);
  v3 = v1;
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9CC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_226AB4000, v4, v5, "Failed to find payment passes: %@.", v6, 0xCu);
    sub_226AC47B0(v7, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
    MEMORY[0x22AA8BEE0](v6, -1, -1);
  }

  v10 = *(v0 + 8);
  v11 = MEMORY[0x277D84F90];

  return v10(v11);
}

uint64_t sub_226D14A8C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 72) = a4;
  *(v5 + 80) = v4;
  *(v5 + 328) = a3;
  *(v5 + 56) = a1;
  *(v5 + 64) = a2;
  v6 = sub_226D6B9BC();
  *(v5 + 88) = v6;
  *(v5 + 96) = *(v6 - 8);
  *(v5 + 104) = swift_task_alloc();
  v7 = sub_226D67C0C();
  *(v5 + 112) = v7;
  *(v5 + 120) = *(v7 - 8);
  *(v5 + 128) = swift_task_alloc();
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = type metadata accessor for AccountMatchResult(0);
  *(v5 + 160) = swift_task_alloc();
  v8 = sub_226D671FC();
  *(v5 + 168) = v8;
  *(v5 + 176) = *(v8 - 8);
  *(v5 + 184) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D14C54, 0, 0);
}

uint64_t sub_226D14C54()
{
  v35 = v0;
  v1 = *(v0 + 56);
  if (v1 >> 62)
  {
    v31 = sub_226D6EDFC();
    *(v0 + 192) = v31;
    if (v31)
    {
LABEL_3:
      if (*(v0 + 328) == 1)
      {
        v3 = swift_task_alloc();
        *(v0 + 200) = v3;
        *v3 = v0;
        v3[1] = sub_226D15074;
        v4 = *(v0 + 72);
        v6 = *(v0 + 56);
        v5 = *(v0 + 64);

        return sub_226D18C18(v6, v5, v4);
      }

      __swift_project_boxed_opaque_existential_1((*(v0 + 80) + 64), *(*(v0 + 80) + 88));
      if (qword_27D7A5EB0 != -1)
      {
        swift_once();
      }

      v8 = *(v0 + 192);
      sub_226AE5DE8(qword_27D7B61B0, byte_27D7B61B8, (v0 + 16));
      if (v8 < 1)
      {
        __break(1u);
      }

      else
      {
        v9 = *(v0 + 56);
        v10 = MEMORY[0x277D84F90];
        *(v0 + 208) = 0;
        *(v0 + 216) = v10;
        if ((v9 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x22AA8AFD0](0);
        }

        else
        {
          v11 = *(v9 + 32);
        }

        *(v0 + 224) = v11;
        if (qword_28105F708 == -1)
        {
          goto LABEL_14;
        }
      }

      swift_once();
LABEL_14:
      v13 = *(v0 + 176);
      v12 = *(v0 + 184);
      v14 = *(v0 + 168);
      v15 = *(v0 + 64);
      v16 = sub_226D6E07C();
      *(v0 + 232) = __swift_project_value_buffer(v16, qword_28105F710);
      (*(v13 + 16))(v12, v15, v14);
      v17 = sub_226D6E05C();
      v18 = sub_226D6E9AC();
      v19 = os_log_type_enabled(v17, v18);
      v21 = *(v0 + 176);
      v20 = *(v0 + 184);
      v22 = *(v0 + 168);
      if (v19)
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v34 = v24;
        *v23 = 136315138;
        v25 = sub_226D671AC();
        v27 = v26;
        (*(v21 + 8))(v20, v22);
        v28 = sub_226AC4530(v25, v27, &v34);

        *(v23 + 4) = v28;
        _os_log_impl(&dword_226AB4000, v17, v18, "Connecting a secondary account for institution: %s.", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v24);
        MEMORY[0x22AA8BEE0](v24, -1, -1);
        MEMORY[0x22AA8BEE0](v23, -1, -1);
      }

      else
      {

        (*(v21 + 8))(v20, v22);
      }

      v29 = swift_task_alloc();
      *(v0 + 240) = v29;
      *v29 = v0;
      v29[1] = sub_226D15448;
      v30 = *(v0 + 64);

      return sub_226D1B140(v30);
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 192) = v2;
    if (v2)
    {
      goto LABEL_3;
    }
  }

  v32 = *(v0 + 8);
  v33 = MEMORY[0x277D84F90];

  return v32(v33);
}

uint64_t sub_226D15074()
{

  return MEMORY[0x2822009F8](sub_226D15170, 0, 0);
}

uint64_t sub_226D15170()
{
  v26 = v0;
  __swift_project_boxed_opaque_existential_1((v0[10] + 64), *(v0[10] + 88));
  if (qword_27D7A5EB0 != -1)
  {
    swift_once();
  }

  v1 = v0[24];
  sub_226AE5DE8(qword_27D7B61B0, byte_27D7B61B8, v0 + 2);
  if (v1 < 1)
  {
    __break(1u);
LABEL_15:
    swift_once();
    goto LABEL_8;
  }

  v2 = v0[7];
  v3 = MEMORY[0x277D84F90];
  v0[26] = 0;
  v0[27] = v3;
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x22AA8AFD0](0);
  }

  else
  {
    v4 = *(v2 + 32);
  }

  v0[28] = v4;
  if (qword_28105F708 != -1)
  {
    goto LABEL_15;
  }

LABEL_8:
  v6 = v0[22];
  v5 = v0[23];
  v7 = v0[21];
  v8 = v0[8];
  v9 = sub_226D6E07C();
  v0[29] = __swift_project_value_buffer(v9, qword_28105F710);
  (*(v6 + 16))(v5, v8, v7);
  v10 = sub_226D6E05C();
  v11 = sub_226D6E9AC();
  v12 = os_log_type_enabled(v10, v11);
  v14 = v0[22];
  v13 = v0[23];
  v15 = v0[21];
  if (v12)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v25 = v17;
    *v16 = 136315138;
    v18 = sub_226D671AC();
    v20 = v19;
    (*(v14 + 8))(v13, v15);
    v21 = sub_226AC4530(v18, v20, &v25);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_226AB4000, v10, v11, "Connecting a secondary account for institution: %s.", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    MEMORY[0x22AA8BEE0](v17, -1, -1);
    MEMORY[0x22AA8BEE0](v16, -1, -1);
  }

  else
  {

    (*(v14 + 8))(v13, v15);
  }

  v22 = swift_task_alloc();
  v0[30] = v22;
  *v22 = v0;
  v22[1] = sub_226D15448;
  v23 = v0[8];

  return sub_226D1B140(v23);
}

uint64_t sub_226D15448(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 248) = a1;
  *(v3 + 256) = v1;

  if (v1)
  {
    v4 = sub_226D17094;
  }

  else
  {
    v4 = sub_226D1555C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226D1555C()
{
  v32 = v0;
  if (*(v0[31] + 16))
  {
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v1 = swift_task_alloc();
    v0[33] = v1;
    *v1 = v0;
    v1[1] = sub_226D15910;
    v2 = v0[31];
    v3 = v0[28];
    v4 = v0[20];

    return sub_226AE6274(v4, v3, v2);
  }

  else
  {
    v6 = v0[28];

    v7 = v0[26] + 1;
    if (v7 == v0[24])
    {
      v8 = v0[27];
      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

      v9 = v0[1];

      return v9(v8);
    }

    else
    {
      v0[26] = v7;
      v10 = v0[7];
      if ((v10 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x22AA8AFD0]();
      }

      else
      {
        v11 = *(v10 + 8 * v7 + 32);
      }

      v0[28] = v11;
      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v13 = v0[22];
      v12 = v0[23];
      v14 = v0[21];
      v15 = v0[8];
      v16 = sub_226D6E07C();
      v0[29] = __swift_project_value_buffer(v16, qword_28105F710);
      (*(v13 + 16))(v12, v15, v14);
      v17 = sub_226D6E05C();
      v18 = sub_226D6E9AC();
      v19 = os_log_type_enabled(v17, v18);
      v21 = v0[22];
      v20 = v0[23];
      v22 = v0[21];
      if (v19)
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v31 = v24;
        *v23 = 136315138;
        v25 = sub_226D671AC();
        v27 = v26;
        (*(v21 + 8))(v20, v22);
        v28 = sub_226AC4530(v25, v27, &v31);

        *(v23 + 4) = v28;
        _os_log_impl(&dword_226AB4000, v17, v18, "Connecting a secondary account for institution: %s.", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v24);
        MEMORY[0x22AA8BEE0](v24, -1, -1);
        MEMORY[0x22AA8BEE0](v23, -1, -1);
      }

      else
      {

        (*(v21 + 8))(v20, v22);
      }

      v29 = swift_task_alloc();
      v0[30] = v29;
      *v29 = v0;
      v29[1] = sub_226D15448;
      v30 = v0[8];

      return sub_226D1B140(v30);
    }
  }
}

uint64_t sub_226D15910()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_226D15CC0;
  }

  else
  {
    v2 = sub_226D15A40;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226D15A40(uint64_t a1)
{
  v2 = v1[28];
  v4 = v1[19];
  v3 = v1[20];
  sub_226D67B4C();
  v5 = [v2 primaryAccountIdentifier];
  v6 = sub_226D6E39C();
  v8 = v7;

  v1[35] = v6;
  v1[36] = v8;
  v9 = *(v4 + 20);
  v10 = swift_task_alloc();
  v1[37] = v10;
  *v10 = v1;
  v10[1] = sub_226D15B40;
  v11 = v1[17];
  v12 = v1[13];

  return sub_226D1B5B4(v11, v12, v6, v8, v3 + v9);
}

uint64_t sub_226D15B40()
{
  v2 = *v1;
  v2[38] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226D1628C, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[39] = v3;
    *v3 = v2;
    v3[1] = sub_226D1615C;
    v4 = v2[36];
    v5 = v2[13];
    v6 = v2[35];

    return sub_226D1C0AC(v6, v4, v5);
  }
}

uint64_t sub_226D15CC0()
{
  v45 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 224);
  v3 = v1;
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9AC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 224);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v44 = v10;
    *v8 = 136315394;
    v11 = [v7 primaryAccountIdentifier];
    v12 = sub_226D6E39C();
    v43 = v7;
    v14 = v13;

    v15 = sub_226AC4530(v12, v14, &v44);

    *(v8 + 4) = v15;
    *(v8 + 12) = 2112;
    v16 = v1;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v17;
    *v9 = v17;
    _os_log_impl(&dword_226AB4000, v4, v5, "Failed to connect a secondary account: %s.\n%@", v8, 0x16u);
    sub_226AC47B0(v9, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x22AA8BEE0](v10, -1, -1);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
  }

  else
  {
  }

  v18 = *(v0 + 208) + 1;
  if (v18 == *(v0 + 192))
  {
    v19 = *(v0 + 216);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

    v20 = *(v0 + 8);

    return v20(v19);
  }

  else
  {
    *(v0 + 208) = v18;
    v22 = *(v0 + 56);
    if ((v22 & 0xC000000000000001) != 0)
    {
      v23 = MEMORY[0x22AA8AFD0]();
    }

    else
    {
      v23 = *(v22 + 8 * v18 + 32);
    }

    *(v0 + 224) = v23;
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v25 = *(v0 + 176);
    v24 = *(v0 + 184);
    v26 = *(v0 + 168);
    v27 = *(v0 + 64);
    v28 = sub_226D6E07C();
    *(v0 + 232) = __swift_project_value_buffer(v28, qword_28105F710);
    (*(v25 + 16))(v24, v27, v26);
    v29 = sub_226D6E05C();
    v30 = sub_226D6E9AC();
    v31 = os_log_type_enabled(v29, v30);
    v33 = *(v0 + 176);
    v32 = *(v0 + 184);
    v34 = *(v0 + 168);
    if (v31)
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v44 = v36;
      *v35 = 136315138;
      v37 = sub_226D671AC();
      v39 = v38;
      (*(v33 + 8))(v32, v34);
      v40 = sub_226AC4530(v37, v39, &v44);

      *(v35 + 4) = v40;
      _os_log_impl(&dword_226AB4000, v29, v30, "Connecting a secondary account for institution: %s.", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v36);
      MEMORY[0x22AA8BEE0](v36, -1, -1);
      MEMORY[0x22AA8BEE0](v35, -1, -1);
    }

    else
    {

      (*(v33 + 8))(v32, v34);
    }

    v41 = swift_task_alloc();
    *(v0 + 240) = v41;
    *v41 = v0;
    v41[1] = sub_226D15448;
    v42 = *(v0 + 64);

    return sub_226D1B140(v42);
  }
}

uint64_t sub_226D1615C()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_226D16BA8;
  }

  else
  {
    v2 = sub_226D16760;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226D1628C()
{
  v46 = v0;
  v1 = *(v0 + 304);
  v2 = *(v0 + 160);
  (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
  sub_226D1E728(v2, type metadata accessor for AccountMatchResult);
  v3 = *(v0 + 224);
  v4 = v1;
  v5 = sub_226D6E05C();
  v6 = sub_226D6E9AC();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 224);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v45 = v11;
    *v9 = 136315394;
    v12 = [v8 primaryAccountIdentifier];
    v13 = sub_226D6E39C();
    v44 = v8;
    v15 = v14;

    v16 = sub_226AC4530(v13, v15, &v45);

    *(v9 + 4) = v16;
    *(v9 + 12) = 2112;
    v17 = v1;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v18;
    *v10 = v18;
    _os_log_impl(&dword_226AB4000, v5, v6, "Failed to connect a secondary account: %s.\n%@", v9, 0x16u);
    sub_226AC47B0(v10, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x22AA8BEE0](v11, -1, -1);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
  }

  else
  {
  }

  v19 = *(v0 + 208) + 1;
  if (v19 == *(v0 + 192))
  {
    v20 = *(v0 + 216);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

    v21 = *(v0 + 8);

    return v21(v20);
  }

  else
  {
    *(v0 + 208) = v19;
    v23 = *(v0 + 56);
    if ((v23 & 0xC000000000000001) != 0)
    {
      v24 = MEMORY[0x22AA8AFD0]();
    }

    else
    {
      v24 = *(v23 + 8 * v19 + 32);
    }

    *(v0 + 224) = v24;
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v26 = *(v0 + 176);
    v25 = *(v0 + 184);
    v27 = *(v0 + 168);
    v28 = *(v0 + 64);
    v29 = sub_226D6E07C();
    *(v0 + 232) = __swift_project_value_buffer(v29, qword_28105F710);
    (*(v26 + 16))(v25, v28, v27);
    v30 = sub_226D6E05C();
    v31 = sub_226D6E9AC();
    v32 = os_log_type_enabled(v30, v31);
    v34 = *(v0 + 176);
    v33 = *(v0 + 184);
    v35 = *(v0 + 168);
    if (v32)
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v45 = v37;
      *v36 = 136315138;
      v38 = sub_226D671AC();
      v40 = v39;
      (*(v34 + 8))(v33, v35);
      v41 = sub_226AC4530(v38, v40, &v45);

      *(v36 + 4) = v41;
      _os_log_impl(&dword_226AB4000, v30, v31, "Connecting a secondary account for institution: %s.", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v37);
      MEMORY[0x22AA8BEE0](v37, -1, -1);
      MEMORY[0x22AA8BEE0](v36, -1, -1);
    }

    else
    {

      (*(v34 + 8))(v33, v35);
    }

    v42 = swift_task_alloc();
    *(v0 + 240) = v42;
    *v42 = v0;
    v42[1] = sub_226D15448;
    v43 = *(v0 + 64);

    return sub_226D1B140(v43);
  }
}

uint64_t sub_226D16760()
{
  v41 = v0;
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v5 = *(v0 + 112);
  (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
  v39 = *(v4 + 32);
  v39(v1, v2, v5);
  (*(v4 + 16))(v3, v1, v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + 216);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_226BBB240(0, *(v7 + 2) + 1, 1, *(v0 + 216));
  }

  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = sub_226BBB240((v8 > 1), v9 + 1, 1, v7);
  }

  v10 = *(v0 + 160);
  v11 = *(v0 + 144);
  v13 = *(v0 + 120);
  v12 = *(v0 + 128);
  v14 = *(v0 + 112);

  (*(v13 + 8))(v11, v14);
  sub_226D1E728(v10, type metadata accessor for AccountMatchResult);
  *(v7 + 2) = v9 + 1;
  v39(&v7[((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v9], v12, v14);
  v15 = *(v0 + 208) + 1;
  if (v15 == *(v0 + 192))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

    v16 = *(v0 + 8);

    return v16(v7);
  }

  else
  {
    *(v0 + 208) = v15;
    *(v0 + 216) = v7;
    v18 = *(v0 + 56);
    if ((v18 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x22AA8AFD0]();
    }

    else
    {
      v19 = *(v18 + 8 * v15 + 32);
    }

    *(v0 + 224) = v19;
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v21 = *(v0 + 176);
    v20 = *(v0 + 184);
    v22 = *(v0 + 168);
    v23 = *(v0 + 64);
    v24 = sub_226D6E07C();
    *(v0 + 232) = __swift_project_value_buffer(v24, qword_28105F710);
    (*(v21 + 16))(v20, v23, v22);
    v25 = sub_226D6E05C();
    v26 = sub_226D6E9AC();
    v27 = os_log_type_enabled(v25, v26);
    v29 = *(v0 + 176);
    v28 = *(v0 + 184);
    v30 = *(v0 + 168);
    if (v27)
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v40 = v32;
      *v31 = 136315138;
      v33 = sub_226D671AC();
      v35 = v34;
      (*(v29 + 8))(v28, v30);
      v36 = sub_226AC4530(v33, v35, &v40);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_226AB4000, v25, v26, "Connecting a secondary account for institution: %s.", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v32);
      MEMORY[0x22AA8BEE0](v32, -1, -1);
      MEMORY[0x22AA8BEE0](v31, -1, -1);
    }

    else
    {

      (*(v29 + 8))(v28, v30);
    }

    v37 = swift_task_alloc();
    *(v0 + 240) = v37;
    *v37 = v0;
    v37[1] = sub_226D15448;
    v38 = *(v0 + 64);

    return sub_226D1B140(v38);
  }
}

uint64_t sub_226D16BA8()
{
  v46 = v0;
  (*(*(v0 + 120) + 8))(*(v0 + 136), *(v0 + 112));
  v1 = *(v0 + 320);
  v2 = *(v0 + 160);
  (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
  sub_226D1E728(v2, type metadata accessor for AccountMatchResult);
  v3 = *(v0 + 224);
  v4 = v1;
  v5 = sub_226D6E05C();
  v6 = sub_226D6E9AC();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 224);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v45 = v11;
    *v9 = 136315394;
    v12 = [v8 primaryAccountIdentifier];
    v13 = sub_226D6E39C();
    v44 = v8;
    v15 = v14;

    v16 = sub_226AC4530(v13, v15, &v45);

    *(v9 + 4) = v16;
    *(v9 + 12) = 2112;
    v17 = v1;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v18;
    *v10 = v18;
    _os_log_impl(&dword_226AB4000, v5, v6, "Failed to connect a secondary account: %s.\n%@", v9, 0x16u);
    sub_226AC47B0(v10, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x22AA8BEE0](v11, -1, -1);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
  }

  else
  {
  }

  v19 = *(v0 + 208) + 1;
  if (v19 == *(v0 + 192))
  {
    v20 = *(v0 + 216);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

    v21 = *(v0 + 8);

    return v21(v20);
  }

  else
  {
    *(v0 + 208) = v19;
    v23 = *(v0 + 56);
    if ((v23 & 0xC000000000000001) != 0)
    {
      v24 = MEMORY[0x22AA8AFD0]();
    }

    else
    {
      v24 = *(v23 + 8 * v19 + 32);
    }

    *(v0 + 224) = v24;
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v26 = *(v0 + 176);
    v25 = *(v0 + 184);
    v27 = *(v0 + 168);
    v28 = *(v0 + 64);
    v29 = sub_226D6E07C();
    *(v0 + 232) = __swift_project_value_buffer(v29, qword_28105F710);
    (*(v26 + 16))(v25, v28, v27);
    v30 = sub_226D6E05C();
    v31 = sub_226D6E9AC();
    v32 = os_log_type_enabled(v30, v31);
    v34 = *(v0 + 176);
    v33 = *(v0 + 184);
    v35 = *(v0 + 168);
    if (v32)
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v45 = v37;
      *v36 = 136315138;
      v38 = sub_226D671AC();
      v40 = v39;
      (*(v34 + 8))(v33, v35);
      v41 = sub_226AC4530(v38, v40, &v45);

      *(v36 + 4) = v41;
      _os_log_impl(&dword_226AB4000, v30, v31, "Connecting a secondary account for institution: %s.", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v37);
      MEMORY[0x22AA8BEE0](v37, -1, -1);
      MEMORY[0x22AA8BEE0](v36, -1, -1);
    }

    else
    {

      (*(v34 + 8))(v33, v35);
    }

    v42 = swift_task_alloc();
    *(v0 + 240) = v42;
    *v42 = v0;
    v42[1] = sub_226D15448;
    v43 = *(v0 + 64);

    return sub_226D1B140(v43);
  }
}

uint64_t sub_226D17094()
{
  v45 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 224);
  v3 = v1;
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9AC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 224);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v44 = v10;
    *v8 = 136315394;
    v11 = [v7 primaryAccountIdentifier];
    v12 = sub_226D6E39C();
    v43 = v7;
    v14 = v13;

    v15 = sub_226AC4530(v12, v14, &v44);

    *(v8 + 4) = v15;
    *(v8 + 12) = 2112;
    v16 = v1;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v17;
    *v9 = v17;
    _os_log_impl(&dword_226AB4000, v4, v5, "Failed to connect a secondary account: %s.\n%@", v8, 0x16u);
    sub_226AC47B0(v9, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x22AA8BEE0](v10, -1, -1);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
  }

  else
  {
  }

  v18 = *(v0 + 208) + 1;
  if (v18 == *(v0 + 192))
  {
    v19 = *(v0 + 216);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

    v20 = *(v0 + 8);

    return v20(v19);
  }

  else
  {
    *(v0 + 208) = v18;
    v22 = *(v0 + 56);
    if ((v22 & 0xC000000000000001) != 0)
    {
      v23 = MEMORY[0x22AA8AFD0]();
    }

    else
    {
      v23 = *(v22 + 8 * v18 + 32);
    }

    *(v0 + 224) = v23;
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v25 = *(v0 + 176);
    v24 = *(v0 + 184);
    v26 = *(v0 + 168);
    v27 = *(v0 + 64);
    v28 = sub_226D6E07C();
    *(v0 + 232) = __swift_project_value_buffer(v28, qword_28105F710);
    (*(v25 + 16))(v24, v27, v26);
    v29 = sub_226D6E05C();
    v30 = sub_226D6E9AC();
    v31 = os_log_type_enabled(v29, v30);
    v33 = *(v0 + 176);
    v32 = *(v0 + 184);
    v34 = *(v0 + 168);
    if (v31)
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v44 = v36;
      *v35 = 136315138;
      v37 = sub_226D671AC();
      v39 = v38;
      (*(v33 + 8))(v32, v34);
      v40 = sub_226AC4530(v37, v39, &v44);

      *(v35 + 4) = v40;
      _os_log_impl(&dword_226AB4000, v29, v30, "Connecting a secondary account for institution: %s.", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v36);
      MEMORY[0x22AA8BEE0](v36, -1, -1);
      MEMORY[0x22AA8BEE0](v35, -1, -1);
    }

    else
    {

      (*(v33 + 8))(v32, v34);
    }

    v41 = swift_task_alloc();
    *(v0 + 240) = v41;
    *v41 = v0;
    v41[1] = sub_226D15448;
    v42 = *(v0 + 64);

    return sub_226D1B140(v42);
  }
}

uint64_t sub_226D17530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_226D6EB9C();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D175F4, 0, 0);
}

uint64_t sub_226D175F4(uint64_t a1)
{
  v3 = v1[7];
  v2 = v1[8];
  v4 = v1[6];
  v6 = v1[3];
  v5 = v1[4];
  v7 = sub_226D676AC();
  v1[9] = v7;
  v8 = swift_allocObject();
  v1[10] = v8;
  v8[2] = v6;
  v8[3] = v5;
  v8[4] = v7;
  (*(v3 + 104))(v2, *MEMORY[0x277CBE110], v4);

  v7;
  v9 = swift_task_alloc();
  v1[11] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D50, &unk_226D75230);
  *v9 = v1;
  v9[1] = sub_226D17754;
  v11 = v1[8];
  v12 = v1[2];

  return MEMORY[0x28210EE50](v12, v11, sub_226D1E9E8, v8, v10);
}

uint64_t sub_226D17754()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  *(*v1 + 96) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_226D17950;
  }

  else
  {
    v5 = sub_226D178E8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_226D178E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226D17950()
{
  v20 = v0;

  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = sub_226D6E07C();
  __swift_project_value_buffer(v2, qword_28105F710);

  v3 = v1;
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9CC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 96);
  if (v6)
  {
    v9 = *(v0 + 24);
    v8 = *(v0 + 32);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_226AC4530(v9, v8, &v19);
    *(v10 + 12) = 2112;
    v13 = v7;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    *v11 = v14;
    _os_log_impl(&dword_226AB4000, v4, v5, "Failed to fetch an account with externalAccountID %s. %@.", v10, 0x16u);
    sub_226AC47B0(v11, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x22AA8BEE0](v12, -1, -1);
    MEMORY[0x22AA8BEE0](v10, -1, -1);
  }

  else
  {
  }

  v15 = *(v0 + 16);
  v16 = sub_226D67C0C();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_226D17BB8(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_226D6EB9C();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_226D671FC();
  v2[8] = v4;
  v5 = *(v4 - 8);
  v2[9] = v5;
  v2[10] = *(v5 + 64);
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D17CDC, 0, 0);
}

uint64_t sub_226D17CDC(uint64_t a1)
{
  v3 = v1[10];
  v2 = v1[11];
  v4 = v1[8];
  v5 = v1[9];
  v6 = v1[6];
  v18 = v1[7];
  v7 = v1[4];
  v17 = v1[5];
  v8 = v1[3];
  v9 = sub_226D676AC();
  v1[12] = v9;
  (*(v5 + 16))(v2, v8, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = (v3 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  v1[13] = v12;
  (*(v5 + 32))(v12 + v10, v2, v4);
  *(v12 + v11) = v9;
  *(v12 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)) = v7;
  (*(v6 + 104))(v18, *MEMORY[0x277CBE110], v17);
  v9;

  v13 = swift_task_alloc();
  v1[14] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A92C8, &unk_226D7CDF0);
  *v13 = v1;
  v13[1] = sub_226D0DFFC;
  v15 = v1[7];

  return MEMORY[0x28210EE50](v1 + 2, v15, sub_226D1E788, v12, v14);
}

uint64_t sub_226D17EAC(uint64_t a1)
{
  v2[2] = v1;
  v4 = sub_226D67C0C();
  v2[3] = v4;
  v2[4] = *(v4 - 8);
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[7] = v5;
  *v5 = v2;
  v5[1] = sub_226D17FB4;

  return sub_226D17BB8(a1);
}

uint64_t sub_226D17FB4(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 64) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_226D1810C, 0, 0);
  }
}

void *sub_226D1810C()
{
  v30 = v0;
  v1 = v0[8];
  v2 = v0[2];
  v3 = v2[16];
  v4 = v2[17];
  __swift_project_boxed_opaque_existential_1(v2 + 13, v3);
  result = (*(v4 + 8))(&v29, v3, v4);
  v26 = v29;
  v27 = *(v1 + 16);
  v28 = v1;
  if (v27)
  {
    v6 = 0;
    v7 = v0[4];
    v8 = (v7 + 32);
    v9 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v6 >= *(v28 + 16))
      {
        __break(1u);
        return result;
      }

      v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v11 = *(v7 + 72);
      (*(v7 + 16))(v0[6], v0[8] + v10 + v11 * v6, v0[3]);
      sub_226D67B5C();
      if (!v12)
      {
        goto LABEL_11;
      }

      v13 = sub_226D6E36C();

      v14 = [v26 passWithFPANIdentifier_];

      if (!v14)
      {
        goto LABEL_11;
      }

      v15 = [v14 devicePrimaryPaymentApplication];
      if (!v15)
      {
        break;
      }

      v16 = v15;
      if ([v15 state] == 10)
      {

LABEL_10:
LABEL_11:
        v17 = *v8;
        (*v8)(v0[5], v0[6], v0[3]);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_226AE1E98(0, v9[2] + 1, 1);
          v9 = v29;
        }

        v20 = v9[2];
        v19 = v9[3];
        if (v20 >= v19 >> 1)
        {
          sub_226AE1E98((v19 > 1), v20 + 1, 1);
          v9 = v29;
        }

        v21 = v0[5];
        v22 = v0[3];
        v9[2] = v20 + 1;
        v23 = v9 + v10 + v20 * v11;
        v8 = (v7 + 32);
        result = v17(v23, v21, v22);
        goto LABEL_16;
      }

      v24 = [v16 state];

      if (!v24)
      {
        goto LABEL_11;
      }

      result = (*(v7 + 8))(v0[6], v0[3]);
LABEL_16:
      if (v27 == ++v6)
      {
        goto LABEL_21;
      }
    }

    v16 = v14;
    goto LABEL_10;
  }

  v9 = MEMORY[0x277D84F90];
LABEL_21:

  v25 = v0[1];

  return v25(v9);
}

uint64_t sub_226D183F4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_226D6EB9C();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_226D6B9BC();
  v3[8] = v5;
  v6 = *(v5 - 8);
  v3[9] = v6;
  v3[10] = *(v6 + 64);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D18528, 0, 0);
}

uint64_t sub_226D18528(uint64_t a1)
{
  v2 = v1[12];
  v3 = v1[9];
  v4 = v1[10];
  v5 = v1[8];
  v18 = v1[7];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[3];
  v9 = sub_226D676AC();
  v1[13] = v9;
  v10 = *(v3 + 16);
  v1[14] = v10;
  v1[15] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v2, v8, v5);
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v1[16] = v12;
  (*(v3 + 32))(v12 + v11, v2, v5);
  *(v12 + ((v4 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;
  (*(v7 + 104))(v18, *MEMORY[0x277CBE110], v6);
  v9;
  v13 = swift_task_alloc();
  v1[17] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D50, &unk_226D75230);
  *v13 = v1;
  v13[1] = sub_226D186F0;
  v15 = v1[7];
  v16 = v1[2];

  return MEMORY[0x28210EE50](v16, v15, sub_226D100F8, v12, v14);
}

uint64_t sub_226D186F0()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 144) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_226D18900;
  }

  else
  {
    v5 = sub_226D18884;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_226D18884()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226D18900()
{
  v29 = v0;

  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 144);
  v2 = *(v0 + 112);
  v3 = *(v0 + 88);
  v4 = *(v0 + 64);
  v5 = *(v0 + 24);
  v6 = sub_226D6E07C();
  __swift_project_value_buffer(v6, qword_28105F710);
  v2(v3, v5, v4);
  v7 = v1;
  v8 = sub_226D6E05C();
  v9 = sub_226D6E9CC();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 144);
  v12 = *(v0 + 88);
  v14 = *(v0 + 64);
  v13 = *(v0 + 72);
  if (v10)
  {
    v15 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v27;
    *v15 = 136315394;
    sub_226D1E9A0(&qword_27D7A6E40, MEMORY[0x277CC8058], MEMORY[0x277CC8080]);
    v16 = sub_226D6F1CC();
    v18 = v17;
    (*(v13 + 8))(v12, v14);
    v19 = sub_226AC4530(v16, v18, &v28);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2112;
    v20 = v11;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v21;
    *v26 = v21;
    _os_log_impl(&dword_226AB4000, v8, v9, "Failed to fetch an account with accountID %s. %@.", v15, 0x16u);
    sub_226AC47B0(v26, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v26, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
    MEMORY[0x22AA8BEE0](v27, -1, -1);
    MEMORY[0x22AA8BEE0](v15, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
  }

  v22 = *(v0 + 16);
  v23 = sub_226D67C0C();
  (*(*(v23 - 8) + 56))(v22, 1, 1, v23);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_226D18C18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[11] = a1;
  v6 = sub_226D6B9BC();
  v4[14] = v6;
  v4[15] = *(v6 - 8);
  v4[16] = swift_task_alloc();
  v7 = sub_226D6BE1C();
  v4[17] = v7;
  v4[18] = *(v7 - 8);
  v4[19] = swift_task_alloc();
  v8 = sub_226D67C0C();
  v4[20] = v8;
  v4[21] = *(v8 - 8);
  v4[22] = swift_task_alloc();
  v9 = sub_226D6D4AC();
  v4[23] = v9;
  v4[24] = *(v9 - 8);
  v4[25] = swift_task_alloc();
  v4[26] = type metadata accessor for BankConnectLinkingDateQueryCalculator(0);
  v4[27] = swift_task_alloc();
  v10 = swift_task_alloc();
  v4[28] = v10;
  *v10 = v4;
  v10[1] = sub_226D18E54;

  return sub_226D17EAC(a2);
}

uint64_t sub_226D18E54(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 232) = a1;
  *(v3 + 240) = v1;

  if (v1)
  {
    v4 = sub_226D198B4;
  }

  else
  {
    v4 = sub_226D18F68;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226D18F68()
{
  v1 = v0[27];
  v2 = [objc_allocWithZone(MEMORY[0x277D380F0]) init];
  v3 = type metadata accessor for BankConnectPassKitTransactionsDataSource();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  v0[5] = v3;
  v0[6] = &protocol witness table for BankConnectPassKitTransactionsDataSource;
  v0[2] = v4;
  sub_226AE532C((v0 + 2), v1);
  sub_226D6D66C();
  sub_226D6D46C();
  v5 = swift_task_alloc();
  v0[31] = v5;
  *v5 = v0;
  v5[1] = sub_226D1908C;
  v6 = v0[25];
  v7 = v0[11];

  return sub_226C7DDF8(v7, v6, 1);
}

uint64_t sub_226D1908C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 200);
  v5 = *(*v2 + 192);
  v6 = *(*v2 + 184);
  *(v3 + 256) = a1;
  *(v3 + 264) = v1;

  (*(v5 + 8))(v4, v6);
  if (v1)
  {

    v7 = sub_226D19AA8;
  }

  else
  {
    v7 = sub_226D19214;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_226D19214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 232);
  v7 = *(v6 + 16);
  *(v5 + 272) = v7;
  if (v7)
  {
    v8 = *(v5 + 168);
    *(v5 + 280) = *(*(v5 + 256) + 16);
    *(v5 + 320) = *(v8 + 80);
    *(v5 + 288) = 0;
    if (*(v6 + 16))
    {
      v9 = 0;
      while (1)
      {
        v10 = *(v5 + 280);
        v6 = (*(*(v5 + 168) + 16))(*(v5 + 176), v6 + ((*(v5 + 320) + 32) & ~*(v5 + 320)) + *(*(v5 + 168) + 72) * v9, *(v5 + 160), a4, a5);
        if (v10)
        {
          break;
        }

        v11 = *(v5 + 272);
        v12 = *(v5 + 288) + 1;
        (*(*(v5 + 168) + 8))(*(v5 + 176), *(v5 + 160));
        if (v12 == v11)
        {
          goto LABEL_12;
        }

        v9 = *(v5 + 288) + 1;
        *(v5 + 288) = v9;
        v6 = *(v5 + 232);
        if (v9 >= *(v6 + 16))
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      __break(1u);
    }

    *(v5 + 296) = 0;
    v13 = *(v5 + 256);
    if (*(v13 + 16))
    {
      v14 = *(v5 + 104);
      (*(*(v5 + 144) + 16))(*(v5 + 152), v13 + ((*(*(v5 + 144) + 80) + 32) & ~*(*(v5 + 144) + 80)), *(v5 + 136));
      v15 = v14[31];
      v16 = v14[32];
      __swift_project_boxed_opaque_existential_1(v14 + 28, v15);
      sub_226D67B4C();
      v17 = swift_task_alloc();
      *(v5 + 304) = v17;
      *v17 = v5;
      v17[1] = sub_226D19498;
      a2 = *(v5 + 152);
      a3 = *(v5 + 96);
      v6 = *(v5 + 128);
      a4 = v15;
      a5 = v16;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x28211A688](v6, a2, a3, a4, a5);
  }

  else
  {
LABEL_12:

    v18 = *(v5 + 216);

    sub_226D1E728(v18, type metadata accessor for BankConnectLinkingDateQueryCalculator);
    __swift_destroy_boxed_opaque_existential_0Tm((v5 + 16));

    v19 = *(v5 + 8);

    return v19();
  }
}

uint64_t sub_226D19498()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v4 = v2[18];
    v3 = v2[19];
    v6 = v2[16];
    v5 = v2[17];
    v9 = v2 + 14;
    v7 = v2[14];
    v8 = v9[1];

    (*(v4 + 8))(v3, v5);
    (*(v8 + 8))(v6, v7);
    v10 = sub_226D19CC0;
  }

  else
  {
    v12 = v2[18];
    v11 = v2[19];
    v14 = v2[16];
    v13 = v2[17];
    v17 = v2 + 14;
    v15 = v2[14];
    v16 = v17[1];
    (*(v12 + 8))(v11, v13);
    (*(v16 + 8))(v14, v15);
    v10 = sub_226D19648;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_226D19648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 296) + 1;
  if (v6 == *(v5 + 280))
  {
    while (1)
    {
      v7 = *(v5 + 272);
      v8 = *(v5 + 288) + 1;
      a1 = (*(*(v5 + 168) + 8))(*(v5 + 176), *(v5 + 160));
      if (v8 == v7)
      {
        break;
      }

      v9 = *(v5 + 288) + 1;
      *(v5 + 288) = v9;
      v10 = *(v5 + 232);
      if (v9 >= *(v10 + 16))
      {
        __break(1u);
        goto LABEL_14;
      }

      v11 = *(v5 + 280);
      a1 = (*(*(v5 + 168) + 16))(*(v5 + 176), v10 + ((*(v5 + 320) + 32) & ~*(v5 + 320)) + *(*(v5 + 168) + 72) * v9, *(v5 + 160));
      if (v11)
      {
        v6 = 0;
        goto LABEL_6;
      }
    }

    v17 = *(v5 + 216);

    sub_226D1E728(v17, type metadata accessor for BankConnectLinkingDateQueryCalculator);
    __swift_destroy_boxed_opaque_existential_0Tm((v5 + 16));

    v18 = *(v5 + 8);

    return v18();
  }

  else
  {
LABEL_6:
    *(v5 + 296) = v6;
    v12 = *(v5 + 256);
    if (v6 >= *(v12 + 16))
    {
LABEL_14:
      __break(1u);
    }

    else
    {
      v13 = *(v5 + 104);
      (*(*(v5 + 144) + 16))(*(v5 + 152), v12 + ((*(*(v5 + 144) + 80) + 32) & ~*(*(v5 + 144) + 80)) + *(*(v5 + 144) + 72) * v6, *(v5 + 136));
      v14 = v13[31];
      v15 = v13[32];
      __swift_project_boxed_opaque_existential_1(v13 + 28, v14);
      sub_226D67B4C();
      v16 = swift_task_alloc();
      *(v5 + 304) = v16;
      *v16 = v5;
      v16[1] = sub_226D19498;
      a2 = *(v5 + 152);
      a3 = *(v5 + 96);
      a1 = *(v5 + 128);
      a4 = v14;
      a5 = v15;
    }

    return MEMORY[0x28211A688](a1, a2, a3, a4, a5);
  }
}

uint64_t sub_226D198B4()
{
  v14 = v0;
  v1 = *(v0 + 240);
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v2 = sub_226D6E07C();
  __swift_project_value_buffer(v2, qword_28105F710);
  v3 = v1;
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9CC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_226D6F26C();
    v10 = sub_226AC4530(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_226AB4000, v4, v5, "    Failed to load BankConnect transactions for account matching.     %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
    MEMORY[0x22AA8BEE0](v6, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_226D19AA8()
{
  v14 = v0;
  sub_226D1E728(v0[27], type metadata accessor for BankConnectLinkingDateQueryCalculator);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0[33];
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v2 = sub_226D6E07C();
  __swift_project_value_buffer(v2, qword_28105F710);
  v3 = v1;
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9CC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_226D6F26C();
    v10 = sub_226AC4530(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_226AB4000, v4, v5, "    Failed to load BankConnect transactions for account matching.     %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
    MEMORY[0x22AA8BEE0](v6, -1, -1);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_226D19CC0()
{
  v15 = v0;
  v1 = v0[27];
  (*(v0[21] + 8))(v0[22], v0[20]);
  sub_226D1E728(v1, type metadata accessor for BankConnectLinkingDateQueryCalculator);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v2 = v0[39];
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v3 = sub_226D6E07C();
  __swift_project_value_buffer(v3, qword_28105F710);
  v4 = v2;
  v5 = sub_226D6E05C();
  v6 = sub_226D6E9CC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = sub_226D6F26C();
    v11 = sub_226AC4530(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_226AB4000, v5, v6, "    Failed to load BankConnect transactions for account matching.     %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_226D19EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_226D6B9BC();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v6 = sub_226D67C0C();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D50, &unk_226D75230);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D1A0A0, 0, 0);
}

uint64_t sub_226D1A0A0()
{
  v1 = v0[4];
  v2 = *(v1 + 16);
  if (!v2)
  {
LABEL_12:
    v17 = 1;
    goto LABEL_15;
  }

  v3 = v0[12];
  v5 = *(v3 + 16);
  v4 = v3 + 16;
  v6 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
  v51 = *(v4 + 56);
  v53 = v5;
  while (1)
  {
    v7 = v0[3];
    v53(v0[15], v6, v0[11]);
    v8 = sub_226D67B5C();
    v10 = v9;
    v11 = [v7 primaryAccountIdentifier];
    v12 = sub_226D6E39C();
    v14 = v13;

    if (!v10)
    {

      goto LABEL_4;
    }

    if (v8 == v12 && v10 == v14)
    {
      break;
    }

    v16 = sub_226D6F21C();

    if (v16)
    {
      goto LABEL_14;
    }

LABEL_4:
    (*(v4 - 8))(v0[15], v0[11]);
    v6 += v51;
    if (!--v2)
    {
      goto LABEL_12;
    }
  }

LABEL_14:
  (*(v0[12] + 32))(v0[19], v0[15], v0[11]);
  v17 = 0;
LABEL_15:
  v19 = v0 + 19;
  v18 = v0[19];
  v20 = v0[18];
  v21 = v0[11];
  v22 = v0[12];
  (*(v22 + 56))(v18, v17, 1, v21);
  sub_226AC40E8(v18, v20, &qword_27D7A6D50, &unk_226D75230);
  v23 = *(v22 + 48);
  v0[20] = v23;
  v0[21] = (v22 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v23(v20, 1, v21) == 1)
  {
    sub_226AC47B0(v0[18], &qword_27D7A6D50, &unk_226D75230);
    goto LABEL_19;
  }

  v24 = v0[10];
  v25 = v0[6];
  v26 = v0[7];
  (*(v0[12] + 32))(v0[14], v0[18], v0[11]);
  sub_226D67B4C();
  sub_226D1E9A0(&qword_27D7A6C50, MEMORY[0x277CC8058], MEMORY[0x277CC8070]);
  v27 = sub_226D6E35C();
  v28 = *(v26 + 8);
  v0[22] = v28;
  v0[23] = (v26 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v28(v24, v25);
  if ((v27 & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1((v0[5] + 264), *(v0[5] + 288));
    sub_226D67B4C();
    v44 = swift_task_alloc();
    v0[24] = v44;
    *v44 = v0;
    v44[1] = sub_226D1A72C;
    v45 = v0[9];
    goto LABEL_35;
  }

  (*(v0[12] + 8))(v0[14], v0[11]);
LABEL_19:
  v30 = v0 + 17;
  v29 = v0[17];
  v52 = v0[20];
  v31 = v0[16];
  v32 = v0[11];
  v33 = v0[4];
  v34 = v0[2];
  *(swift_task_alloc() + 16) = v34;
  sub_226BA3090(sub_226D1E980, v33, v29);

  sub_226AC40E8(v29, v31, &qword_27D7A6D50, &unk_226D75230);
  if (v52(v31, 1, v32) == 1)
  {
    sub_226AC47B0(*v30, &qword_27D7A6D50, &unk_226D75230);
    v30 = v0 + 19;
    v19 = v0 + 16;
    goto LABEL_31;
  }

  (*(v0[12] + 32))(v0[13], v0[16], v0[11]);
  sub_226D67B5C();
  if (v35)
  {
    v36 = v0[3];

    v37 = sub_226D67B5C();
    v39 = v38;
    v40 = [v36 primaryAccountIdentifier];
    v41 = sub_226D6E39C();
    v43 = v42;

    if (v39)
    {
      if (v37 == v41 && v39 == v43)
      {

        goto LABEL_30;
      }

      v46 = sub_226D6F21C();

      if (v46)
      {
        goto LABEL_30;
      }
    }

    else
    {
    }

    __swift_project_boxed_opaque_existential_1((v0[5] + 264), *(v0[5] + 288));
    sub_226D67B4C();
    v50 = swift_task_alloc();
    v0[26] = v50;
    *v50 = v0;
    v50[1] = sub_226D1AD60;
    v45 = v0[8];
LABEL_35:

    return sub_226D0C0D8(v45);
  }

  else
  {
LABEL_30:
    (*(v0[12] + 8))(v0[13], v0[11]);
LABEL_31:
    v47 = *v19;
    sub_226AC47B0(*v30, &qword_27D7A6D50, &unk_226D75230);
    sub_226AC47B0(v47, &qword_27D7A6D50, &unk_226D75230);

    v48 = v0[1];

    return v48();
  }
}

uint64_t sub_226D1A72C()
{
  v2 = *(*v1 + 176);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 48);
  *(*v1 + 200) = v0;

  v2(v3, v4);
  if (v0)
  {
    v5 = sub_226D1AC44;
  }

  else
  {
    v5 = sub_226D1A8AC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_226D1A8AC()
{
  (*(v0[12] + 8))(v0[14], v0[11]);
  v2 = v0 + 17;
  v1 = v0[17];
  v23 = v0[20];
  v4 = v0 + 16;
  v3 = v0[16];
  v5 = v0[11];
  v6 = v0[4];
  v7 = v0[2];
  *(swift_task_alloc() + 16) = v7;
  sub_226BA3090(sub_226D1E980, v6, v1);

  sub_226AC40E8(v1, v3, &qword_27D7A6D50, &unk_226D75230);
  if (v23(v3, 1, v5) == 1)
  {
    sub_226AC47B0(v0[17], &qword_27D7A6D50, &unk_226D75230);
    v2 = v0 + 19;
LABEL_12:
    v18 = *v4;
    sub_226AC47B0(*v2, &qword_27D7A6D50, &unk_226D75230);
    sub_226AC47B0(v18, &qword_27D7A6D50, &unk_226D75230);

    v19 = v0[1];

    return v19();
  }

  (*(v0[12] + 32))(v0[13], v0[16], v0[11]);
  sub_226D67B5C();
  if (!v8)
  {
LABEL_11:
    (*(v0[12] + 8))(v0[13], v0[11]);
    v4 = v0 + 19;
    goto LABEL_12;
  }

  v9 = v0[3];

  v10 = sub_226D67B5C();
  v12 = v11;
  v13 = [v9 primaryAccountIdentifier];
  v14 = sub_226D6E39C();
  v16 = v15;

  if (v12)
  {
    if (v10 == v14 && v12 == v16)
    {

      goto LABEL_11;
    }

    v17 = sub_226D6F21C();

    if (v17)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  __swift_project_boxed_opaque_existential_1((v0[5] + 264), *(v0[5] + 288));
  sub_226D67B4C();
  v21 = swift_task_alloc();
  v0[26] = v21;
  *v21 = v0;
  v21[1] = sub_226D1AD60;
  v22 = v0[8];

  return sub_226D0C0D8(v22);
}

uint64_t sub_226D1AC44()
{
  (*(v0[12] + 8))(v0[14], v0[11]);
  sub_226AC47B0(v0[19], &qword_27D7A6D50, &unk_226D75230);

  v1 = v0[1];

  return v1();
}

uint64_t sub_226D1AD60()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  *(*v1 + 216) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_226D1B004;
  }

  else
  {
    v5 = sub_226D1AED0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_226D1AED0()
{
  (*(v0[12] + 8))(v0[13], v0[11]);
  v1 = v0[19];
  sub_226AC47B0(v0[17], &qword_27D7A6D50, &unk_226D75230);
  sub_226AC47B0(v1, &qword_27D7A6D50, &unk_226D75230);

  v2 = v0[1];

  return v2();
}

uint64_t sub_226D1B004()
{
  v1 = v0[17];
  (*(v0[12] + 8))(v0[13], v0[11]);
  sub_226AC47B0(v1, &qword_27D7A6D50, &unk_226D75230);
  sub_226AC47B0(v0[19], &qword_27D7A6D50, &unk_226D75230);

  v2 = v0[1];

  return v2();
}

uint64_t sub_226D1B140(uint64_t a1)
{
  v3 = sub_226D67C0C();
  v1[2] = v3;
  v1[3] = *(v3 - 8);
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[6] = v4;
  *v4 = v1;
  v4[1] = sub_226D1B244;

  return sub_226D17BB8(a1);
}

uint64_t sub_226D1B244(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 56) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_226D1B39C, 0, 0);
  }
}

void sub_226D1B39C()
{
  v1 = v0[7];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v0[3];
    v19 = (v4 + 32);
    v5 = MEMORY[0x277D84F90];
    v17 = *(v1 + 16);
    v18 = v0[7];
    while (v3 < *(v1 + 16))
    {
      v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v8 = *(v4 + 72);
      (*(v4 + 16))(v0[5], v0[7] + v7 + v8 * v3, v0[2]);
      sub_226D67B5C();
      v9 = v0[5];
      if (v10)
      {
        v6 = v0[2];

        (*(v4 + 8))(v9, v6);
      }

      else
      {
        v11 = *v19;
        (*v19)(v0[4], v0[5], v0[2]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_226AE1E98(0, *(v5 + 16) + 1, 1);
        }

        v13 = *(v5 + 16);
        v12 = *(v5 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_226AE1E98((v12 > 1), v13 + 1, 1);
        }

        v14 = v0[4];
        v15 = v0[2];
        *(v5 + 16) = v13 + 1;
        v11(v5 + v7 + v13 * v8, v14, v15);
        v2 = v17;
        v1 = v18;
      }

      if (v2 == ++v3)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
LABEL_14:

    v16 = v0[1];

    v16(v5);
  }
}

uint64_t sub_226D1B5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_226D67C0C();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v8 = sub_226D682FC();
  v6[11] = v8;
  v6[12] = *(v8 - 8);
  v6[13] = swift_task_alloc();
  v9 = sub_226D68CBC();
  v6[14] = v9;
  v6[15] = *(v9 - 8);
  v6[16] = swift_task_alloc();
  v10 = sub_226D6B9BC();
  v6[17] = v10;
  v6[18] = *(v10 - 8);
  v6[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D1B790, 0, 0);
}

uint64_t sub_226D1B790()
{
  v49 = v0;
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v46 = v0[16];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[6];
  v7 = v0[3];
  v8 = sub_226D6E07C();
  __swift_project_value_buffer(v8, qword_28105F710);
  (*(v2 + 16))(v1, v7, v3);
  (*(v4 + 16))(v46, v6, v5);

  v9 = sub_226D6E05C();
  v10 = sub_226D6E9AC();

  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[18];
  v12 = v0[19];
  v14 = v0[16];
  v15 = v0[17];
  v16 = v0[15];
  if (v11)
  {
    v42 = v0[4];
    v43 = v0[5];
    v44 = v0[14];
    v45 = v10;
    v17 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v48[0] = v47;
    *v17 = 136315650;
    v18 = sub_226D6B96C();
    v20 = v19;
    (*(v13 + 8))(v12, v15);
    v21 = sub_226AC4530(v18, v20, v48);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_226AC4530(v42, v43, v48);
    *(v17 + 22) = 2048;
    v22 = sub_226D68CAC();
    (*(v16 + 8))(v14, v44);
    *(v17 + 24) = v22;
    _os_log_impl(&dword_226AB4000, v9, v45, "    linkAccount with fqaID: %s;\n    fpanID: %s;\n    matchingType: %ld", v17, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AA8BEE0](v47, -1, -1);
    MEMORY[0x22AA8BEE0](v17, -1, -1);
  }

  else
  {
    (*(v16 + 8))(v0[16], v0[14]);

    (*(v13 + 8))(v12, v15);
  }

  v23 = v0[7];
  __swift_project_boxed_opaque_existential_1(v23 + 23, v23[26]);
  v24 = sub_226D6C2AC();
  v0[20] = v24;
  __swift_project_boxed_opaque_existential_1(v23 + 3, v23[6]);
  sub_226D6A64C();
  sub_226D6CCAC();
  sub_226D6CC2C();
  sub_226D1E9A0(&qword_27D7A81F8, MEMORY[0x277CC8058], MEMORY[0x277CC8060]);
  v25 = sub_226D6CC8C();
  v27 = v26;

  v28 = v0[7];
  v29 = v0[3];
  v30 = sub_226D6D20C();
  v32 = v31;
  v0[21] = v31;
  sub_226B11B98(v25, v27);
  v33 = sub_226D676AC();
  v0[22] = v33;
  v34 = swift_task_alloc();
  v34[2] = v29;
  v34[3] = v33;
  v34[4] = v28;
  v35 = MEMORY[0x277D84F78];
  sub_226D6EB7C();
  v36 = v0[13];
  v38 = v0[4];
  v37 = v0[5];

  v39 = swift_task_alloc();
  v0[23] = v39;
  v39[2] = v24;
  v39[3] = v36;
  v39[4] = v38;
  v39[5] = v37;
  v39[6] = v30;
  v39[7] = v32;
  v40 = swift_task_alloc();
  v0[24] = v40;
  *v40 = v0;
  v40[1] = sub_226D1BD04;

  return MEMORY[0x282119B28](v40, &unk_226D7CE08, v39, v35 + 8);
}

uint64_t sub_226D1BD04()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_226D1BFD0;
  }

  else
  {

    v2 = sub_226D1BE2C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226D1BE2C()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 176);
  v3 = *(v0 + 56);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = swift_task_alloc();
  v7 = *(v0 + 40);
  *(v6 + 16) = v5;
  *(v6 + 24) = v2;
  *(v6 + 32) = v3;
  *(v6 + 40) = v4;
  *(v6 + 48) = v7;
  sub_226D6EB7C();

  if (v1)
  {
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
  }

  else
  {
    v10 = *(v0 + 96);
    v9 = *(v0 + 104);
    v11 = *(v0 + 88);
    (*(*(v0 + 72) + 32))(*(v0 + 16), *(v0 + 80), *(v0 + 64));
    (*(v10 + 8))(v9, v11);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_226D1BFD0()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_226D1C0AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return MEMORY[0x2822009F8](sub_226D1C0D0, 0, 0);
}

uint64_t sub_226D1C0D0()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = *(v0[10] + 16);
  type metadata accessor for BankConnectPassKitTransactionsImporter();
  v4 = swift_allocObject();
  v0[11] = v4;
  v4[2] = v3;
  sub_226D6AC3C();
  swift_allocObject();

  v4[3] = sub_226D6AC2C();
  sub_226D6B6FC();
  swift_allocObject();
  v4[4] = sub_226D6B6EC();
  v5 = sub_226D676AC();
  v0[12] = v5;
  v6 = swift_task_alloc();
  v6[2] = v5;
  v6[3] = v2;
  v6[4] = v1;
  v7 = MEMORY[0x277D84F78];
  sub_226D6EB7C();
  v8 = v0[9];

  v9 = [objc_allocWithZone(MEMORY[0x277D380F0]) init];
  v10 = type metadata accessor for BankConnectPassKitTransactionsDataSource();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v0[5] = v10;
  v0[6] = &protocol witness table for BankConnectPassKitTransactionsDataSource;
  v0[2] = v11;
  v12 = [objc_allocWithZone(MEMORY[0x277D37FC0]) init];
  v0[13] = v12;
  v13 = swift_task_alloc();
  v0[14] = v13;
  v13[2] = v4;
  v13[3] = v8;
  v13[4] = v0 + 2;
  v13[5] = v12;
  v14 = swift_task_alloc();
  v0[15] = v14;
  *v14 = v0;
  v14[1] = sub_226D1C34C;

  return MEMORY[0x282116CE0](v14, "bankConnect/importPassKitTransactions", 37, 2, &unk_226D7C7E0, v13, v7 + 8);
}

uint64_t sub_226D1C34C()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_226D1C4E4;
  }

  else
  {

    v2 = sub_226D1C468;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226D1C468()
{
  v1 = *(v0 + 96);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_226D1C4E4()
{
  v1 = *(v0 + 96);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_226D1C570@<X0>(uint64_t *a1@<X8>)
{
  v37 = a1;
  v1 = sub_226D67C0C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - v6;
  sub_226D69F0C();
  v8 = sub_226D69DDC();
  sub_226D671AC();
  v9 = sub_226D69E7C();

  [v8 setPredicate_];

  v10 = v38;
  v11 = sub_226D6EBBC();
  if (v10)
  {

    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v12 = sub_226D6E07C();
    __swift_project_value_buffer(v12, qword_28105F710);
    v13 = v10;
    v14 = sub_226D6E05C();
    v15 = sub_226D6E9CC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v39 = v17;
      *v16 = 136315138;
      swift_getErrorValue();
      v18 = sub_226D6F26C();
      v20 = sub_226AC4530(v18, v19, &v39);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_226AB4000, v14, v15, "Failed to fetch accounts: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      MEMORY[0x22AA8BEE0](v17, -1, -1);
      MEMORY[0x22AA8BEE0](v16, -1, -1);
    }

    v21 = sub_226D6B66C();
    sub_226D1E9A0(&qword_27D7A6468, MEMORY[0x277CC7FB8], MEMORY[0x277CC7FC0]);
    swift_allocError();
    *v22 = v10;
    (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277CC7FA0], v21);
    return swift_willThrow();
  }

  else
  {
    v24 = v11;
    v25 = v37;
    v35 = 0;
    v36 = v8;
    v38 = v1;
    if (v11 >> 62)
    {
      v26 = sub_226D6EDFC();
    }

    else
    {
      v26 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v26)
    {
      v39 = MEMORY[0x277D84F90];
      result = sub_226AE1E98(0, v26 & ~(v26 >> 63), 0);
      if (v26 < 0)
      {
        __break(1u);
      }

      else
      {
        v27 = v39;
        if ((v24 & 0xC000000000000001) != 0)
        {
          for (i = 0; i != v26; ++i)
          {
            MEMORY[0x22AA8AFD0](i, v24);
            sub_226D67C1C();
            v39 = v27;
            v30 = *(v27 + 16);
            v29 = *(v27 + 24);
            if (v30 >= v29 >> 1)
            {
              sub_226AE1E98((v29 > 1), v30 + 1, 1);
              v27 = v39;
            }

            *(v27 + 16) = v30 + 1;
            (*(v2 + 32))(v27 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v30, v7, v38);
          }
        }

        else
        {
          v31 = 32;
          do
          {
            v32 = *(v24 + v31);
            sub_226D67C1C();
            v39 = v27;
            v34 = *(v27 + 16);
            v33 = *(v27 + 24);
            if (v34 >= v33 >> 1)
            {
              sub_226AE1E98((v33 > 1), v34 + 1, 1);
              v27 = v39;
            }

            *(v27 + 16) = v34 + 1;
            (*(v2 + 32))(v27 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v34, v4, v38);
            v31 += 8;
            --v26;
          }

          while (v26);
        }

        *v37 = v27;
      }
    }

    else
    {

      *v25 = MEMORY[0x277D84F90];
    }
  }

  return result;
}

void sub_226D1CA74(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = sub_226D6D4AC();
  v35 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_226D6B9BC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D69F0C();
  v12 = sub_226D69D9C();
  if (!v2)
  {
    v13 = v12;
    v30 = v11;
    v31 = v8;
    v32 = a1;
    v33 = v9;
    v34 = 0;
    if (v12)
    {
      sub_226D6D46C();
      v14 = sub_226D6D3EC();
      (*(v35 + 8))(v7, v5);
      [v13 setLastPassLinkingAttemptDate_];

      v36 = 0;
      if ([a2 save_])
      {
        v15 = v36;
      }

      else
      {
        v16 = v36;
        sub_226D6D04C();

        swift_willThrow();
      }
    }

    else
    {
      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v17 = sub_226D6E07C();
      __swift_project_value_buffer(v17, qword_28105F710);
      (*(v33 + 16))(v30, v32, v31);
      v18 = sub_226D6E05C();
      v19 = sub_226D6E9CC();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v36 = v21;
        *v20 = 136315138;
        sub_226D1E9A0(&qword_27D7A6E40, MEMORY[0x277CC8058], MEMORY[0x277CC8080]);
        v23 = v30;
        v22 = v31;
        v24 = sub_226D6F1CC();
        v26 = v25;
        (*(v33 + 8))(v23, v22);
        v27 = sub_226AC4530(v24, v26, &v36);

        *(v20 + 4) = v27;
        _os_log_impl(&dword_226AB4000, v18, v19, "Failed to fetch an account with fqaid: %s.", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v21);
        MEMORY[0x22AA8BEE0](v21, -1, -1);
        MEMORY[0x22AA8BEE0](v20, -1, -1);
      }

      else
      {

        (*(v33 + 8))(v30, v31);
      }

      v36 = 0;
      v37 = 0xE000000000000000;
      sub_226D6EEFC();

      v36 = 0xD000000000000027;
      v37 = 0x8000000226D87FC0;
      sub_226D1E9A0(&qword_27D7A6E40, MEMORY[0x277CC8058], MEMORY[0x277CC8080]);
      v28 = sub_226D6F1CC();
      MEMORY[0x22AA8A510](v28);

      MEMORY[0x22AA8A510](46, 0xE100000000000000);
      sub_226D6F0AC();
      __break(1u);
    }
  }
}

uint64_t sub_226D1CF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v7[2] = a2;
  v7[3] = a3;
  v8 = sub_226D682FC();
  v7[8] = v8;
  v7[9] = *(v8 - 8);
  v7[10] = swift_task_alloc();
  v9 = sub_226D6C61C();
  v7[11] = v9;
  v7[12] = *(v9 - 8);
  v7[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D1D058, 0, 0);
}

uint64_t sub_226D1D058()
{
  (*(v0[9] + 16))(v0[10], v0[3], v0[8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A92C0, &qword_226D7CE10);
  sub_226D6BB7C();
  *(swift_allocObject() + 16) = xmmword_226D70840;

  sub_226D6BB6C();
  sub_226D6C60C();
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_226D0E4DC;
  v2 = v0[13];

  return MEMORY[0x282119B00](v2);
}

void *sub_226D1D1F8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v65 = a2;
  v59 = a5;
  v60 = a3;
  v61 = a4;
  v63 = a6;
  v68 = *MEMORY[0x277D85DE8];
  v58 = sub_226D68CBC();
  v56 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v57 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_226D6D52C();
  MEMORY[0x28223BE20](v8 - 8);
  v54 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_226D673EC();
  v62 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_226D6D4AC();
  v53 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_226D6B9BC();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v46 - v20;
  sub_226D69F0C();
  v22 = v64;
  result = sub_226D69D9C();
  if (!v22)
  {
    v48 = v12;
    v49 = 0;
    v47 = v21;
    v50 = v16;
    v51 = v11;
    v52 = v15;
    v64 = a1;
    if (result)
    {
      v24 = result;
      sub_226D6D46C();
      v25 = sub_226D6D3EC();
      (*(v53 + 8))(v14, v48);
      [v24 setLastPassLinkingDate_];

      [v24 setNeedsPassLinking_];
      sub_226D6D51C();
      (*(v50 + 16))(v18, v64, v52);
      (*(v56 + 16))(v57, v59, v58);

      sub_226D6D46C();
      v26 = v51;
      sub_226D673DC();
      v27 = v65;
      v28 = v49;
      v29 = sub_226BF2498(v26, v65);
      v30 = v62;
      v31 = v55;
      if (!v28)
      {

        v66 = 0;
        if ([v27 save_])
        {
          v32 = v66;
          sub_226D67C1C();
          return (*(v30 + 8))(v26, v31);
        }

        v33 = v66;
        sub_226D6D04C();

        swift_willThrow();
      }

      return (*(v30 + 8))(v26, v31);
    }

    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v34 = sub_226D6E07C();
    __swift_project_value_buffer(v34, qword_28105F710);
    (*(v50 + 16))(v47, v64, v52);
    v35 = sub_226D6E05C();
    v36 = sub_226D6E9CC();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v66 = v38;
      *v37 = 136315138;
      sub_226D1E9A0(&qword_27D7A6E40, MEMORY[0x277CC8058], MEMORY[0x277CC8080]);
      v39 = v47;
      v40 = v52;
      v41 = sub_226D6F1CC();
      v43 = v42;
      (*(v50 + 8))(v39, v40);
      v44 = sub_226AC4530(v41, v43, &v66);

      *(v37 + 4) = v44;
      _os_log_impl(&dword_226AB4000, v35, v36, "Failed to fetch an account with fqaid: %s.", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v38);
      MEMORY[0x22AA8BEE0](v38, -1, -1);
      MEMORY[0x22AA8BEE0](v37, -1, -1);
    }

    else
    {

      (*(v50 + 8))(v47, v52);
    }

    v66 = 0;
    v67 = 0xE000000000000000;
    sub_226D6EEFC();

    v66 = 0xD000000000000027;
    v67 = 0x8000000226D87FC0;
    sub_226D1E9A0(&qword_27D7A6E40, MEMORY[0x277CC8058], MEMORY[0x277CC8080]);
    v45 = sub_226D6F1CC();
    MEMORY[0x22AA8A510](v45);

    MEMORY[0x22AA8A510](46, 0xE100000000000000);
    result = sub_226D6F0AC();
    __break(1u);
  }

  return result;
}

uint64_t sub_226D1D924(uint64_t a1, uint64_t a2)
{
  v3 = sub_226D6B9BC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D67B4C();
  v7 = MEMORY[0x22AA87A30](v6, a2);
  (*(v4 + 8))(v6, v3);
  return v7 & 1;
}

void sub_226D1DA10(void *a1, uint64_t a2, uint64_t a3)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = [objc_opt_self() currentQueryGenerationToken];
  v14[0] = 0;
  v6 = [a1 setQueryGenerationFromToken:v5 error:v14];

  v7 = v14[0];
  if (v6)
  {
    sub_226D69F0C();
    v8 = v7;
    v9 = sub_226D69D6C();
    if (!v3)
    {
      v10 = v9;
      if (v9)
      {
        [a1 deleteObject_];
        v14[0] = 0;
        if ([a1 save_])
        {
          v11 = v14[0];
        }

        else
        {
          v13 = v14[0];
          sub_226D6D04C();

          swift_willThrow();
        }
      }
    }
  }

  else
  {
    v12 = v14[0];
    sub_226D6D04C();

    swift_willThrow();
  }
}

uint64_t sub_226D1DB90@<X0>(uint64_t a4@<X8>)
{
  sub_226D69F0C();
  result = sub_226D69D8C();
  if (!v4)
  {
    if (result)
    {
      sub_226D67C1C();
      v7 = 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = sub_226D67C0C();
    return (*(*(v8 - 8) + 56))(a4, v7, 1, v8);
  }

  return result;
}

uint64_t sub_226D1DC58()
{
  v1[3] = v0;
  v2 = sub_226D6EB9C();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D1DD18, 0, 0);
}

uint64_t sub_226D1DD18()
{
  v14 = v0;
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v4[16];
  v6 = v4[17];
  __swift_project_boxed_opaque_existential_1(v4 + 13, v5);
  (*(v6 + 8))(&v13, v5, v6);
  v0[7] = BankConnectPaymentPassDataSource.paymentPasses()();

  v7 = sub_226D676AC();
  v0[8] = v7;
  v8 = swift_allocObject();
  v0[9] = v8;
  *(v8 + 16) = v7;
  (*(v2 + 104))(v1, *MEMORY[0x277CBE110], v3);
  v7;
  v9 = swift_task_alloc();
  v0[10] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A74E8, &qword_226D75250);
  *v9 = v0;
  v9[1] = sub_226D1DEB0;
  v11 = v0[6];

  return MEMORY[0x28210EE50](v0 + 2, v11, sub_226D1E964, v8, v10);
}

uint64_t sub_226D1DEB0()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  *(*v1 + 88) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    v5 = sub_226D1E338;
  }

  else
  {
    v5 = sub_226D1E058;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_226D1E058()
{
  v1 = v0[7];
  v2 = v0[2];
  v32 = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
    goto LABEL_29;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v0[7]; v3; i = v0[7])
  {
    v5 = 0;
    v6 = v1 & 0xC000000000000001;
    v1 &= 0xFFFFFFFFFFFFFF8uLL;
    v0 = (i + 32);
    v7 = v2 + 56;
    v8 = &off_2785C8000;
    v30 = v6;
    v31 = v3;
    v29 = v1;
    while (1)
    {
      if (v6)
      {
        v9 = MEMORY[0x22AA8AFD0](v5, v28[7]);
      }

      else
      {
        if (v5 >= *(v1 + 16))
        {
          goto LABEL_28;
        }

        v9 = v0[v5];
      }

      v10 = v9;
      if (__OFADD__(v5++, 1))
      {
        break;
      }

      v12 = [v9 v8[480]];
      if (v12)
      {
        v13 = v12;
        if ([v12 state] == 1)
        {
          v14 = [v10 primaryAccountIdentifier];
          v15 = sub_226D6E39C();
          v17 = v16;

          if (*(v2 + 16) && (sub_226D6F2FC(), sub_226D6E42C(), v18 = sub_226D6F35C(), v19 = -1 << *(v2 + 32), v20 = v18 & ~v19, ((*(v7 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) != 0))
          {
            v21 = ~v19;
            while (1)
            {
              v22 = (*(v2 + 48) + 16 * v20);
              v23 = *v22 == v15 && v22[1] == v17;
              if (v23 || (sub_226D6F21C() & 1) != 0)
              {
                break;
              }

              v20 = (v20 + 1) & v21;
              if (((*(v7 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
              {
                goto LABEL_21;
              }
            }
          }

          else
          {
LABEL_21:

            sub_226D6EF6C();
            sub_226D6EF9C();
            sub_226D6EFAC();
            sub_226D6EF7C();
          }

          v6 = v30;
          v3 = v31;
          v1 = v29;
          v8 = &off_2785C8000;
        }

        else
        {
        }
      }

      else
      {
      }

      if (v5 == v3)
      {
        v24 = v32;
        v0 = v28;
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    v3 = sub_226D6EDFC();
  }

  v24 = MEMORY[0x277D84F90];
LABEL_31:
  v25 = v0[8];

  v26 = v0[1];

  return v26(v24);
}

uint64_t sub_226D1E338()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_226D1E3A8(uint64_t *a1@<X8>)
{
  sub_226D69F0C();
  v3 = sub_226D69DDC();
  [v3 setReturnsObjectsAsFaults_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6200, &unk_226D70C30);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_226D70840;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 32) = 0xD000000000000011;
  *(v4 + 40) = 0x8000000226D86610;
  v5 = sub_226D6E5CC();

  [v3 setPropertiesToFetch_];

  [v3 setReturnsDistinctResults_];
  v6 = sub_226D6EBBC();
  if (v1)
  {
  }

  else
  {
    v7 = v6;
    v22 = v3;
    v8 = v6 & 0xFFFFFFFFFFFFFF8;
    if (v6 >> 62)
    {
LABEL_27:
      v9 = sub_226D6EDFC();
    }

    else
    {
      v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 = a1;
    if (v9)
    {
      a1 = 0;
      v24 = MEMORY[0x277D84F90];
      do
      {
        v10 = a1;
        while (1)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v11 = MEMORY[0x22AA8AFD0](v10, v7);
            a1 = (v10 + 1);
            if (__OFADD__(v10, 1))
            {
              goto LABEL_25;
            }
          }

          else
          {
            if (v10 >= *(v8 + 16))
            {
              goto LABEL_26;
            }

            v11 = *(v7 + 8 * v10 + 32);
            a1 = (v10 + 1);
            if (__OFADD__(v10, 1))
            {
LABEL_25:
              __break(1u);
LABEL_26:
              __break(1u);
              goto LABEL_27;
            }
          }

          v12 = v11;
          v13 = [v12 externalAccountId];
          if (v13)
          {
            break;
          }

          ++v10;
          if (a1 == v9)
          {
            goto LABEL_24;
          }
        }

        v14 = v13;
        v15 = sub_226D6E39C();
        v21 = v16;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_226BBAB0C(0, *(v24 + 2) + 1, 1, v24);
        }

        v18 = *(v24 + 2);
        v17 = *(v24 + 3);
        if (v18 >= v17 >> 1)
        {
          v24 = sub_226BBAB0C((v17 > 1), v18 + 1, 1, v24);
        }

        *(v24 + 2) = v18 + 1;
        v19 = &v24[16 * v18];
        *(v19 + 4) = v15;
        *(v19 + 5) = v21;
      }

      while (a1 != v9);
    }

    else
    {
      v24 = MEMORY[0x277D84F90];
    }

LABEL_24:

    v20 = sub_226AE3C28(v24);

    *v23 = v20;
  }
}

uint64_t sub_226D1E68C()
{

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 28);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 33);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 38);

  return swift_deallocClassInstance();
}

uint64_t sub_226D1E728(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226D1E86C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_226AD827C;

  return sub_226D1CF34(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_226D1E9A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_226D1EA08()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_226D6E39C();
    v0 = v3;

    v4 = objc_allocWithZone(MEMORY[0x277CF0188]);
    v5 = sub_226D6E36C();
    v6 = [v4 initWithIdentifier_];

    if (v6)
    {

      return v6;
    }

    __break(1u);
  }

  sub_226D6EEFC();

  v8 = [v0 mainBundle];
  v9 = [v8 description];

  v10 = sub_226D6E39C();
  v12 = v11;

  MEMORY[0x22AA8A510](v10, v12);

  result = sub_226D6F0AC();
  __break(1u);
  return result;
}

uint64_t BankConnectServiceImplementation.insertOrUpdateInstitution(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_226D1EBD0, 0, 0);
}

uint64_t sub_226D1EBD0()
{
  v1 = v0[2];
  __swift_project_boxed_opaque_existential_1((v0[3] + 16), *(v0[3] + 40));
  sub_226D6BAAC();
  v2 = sub_226D676AC();

  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  sub_226D6EB7C();

  v4 = v0[1];

  return v4();
}

id sub_226D1ECD0(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  sub_226D6AA6C();
  swift_allocObject();
  sub_226D6AA5C();
  v4 = sub_226D6AA3C();

  if (!v2)
  {

    v7[0] = 0;
    if ([a2 save_])
    {
      return v7[0];
    }

    else
    {
      v6 = v7[0];
      sub_226D6D04C();

      return swift_willThrow();
    }
  }

  return result;
}

uint64_t ApplicationIdentifier.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

void *sub_226D1EE0C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

double sub_226D1EE18@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

uint64_t sub_226D1EE40(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 944))
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

uint64_t sub_226D1EE88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 936) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 944) = 1;
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

    *(result + 944) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_226D1EFD0(uint64_t a1)
{
  result = sub_226B41FC0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_226D1EFF8(uint64_t a1)
{
  result = sub_226B6CA08();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226D1F020@<X0>(uint64_t *a1@<X8>)
{
  sub_226AE532C(v1 + 416, v14);
  sub_226AE532C(v1 + 248, v13);
  sub_226AE532C(v1 + 8, v12);
  v3 = *(v1 + 408);
  v4 = *(v1 + 456);
  sub_226D1F810(v1 + 664, v10);
  sub_226AE532C(v1 + 128, v9);
  v5 = type metadata accessor for BankConnectPassMatcher();
  v6 = swift_allocObject();
  sub_226AC484C(v14, v6 + 16);
  sub_226AC484C(v13, v6 + 56);
  sub_226AC484C(v12, v6 + 96);
  *(v6 + 136) = v3;
  *(v6 + 144) = v4;
  v7 = v10[1];
  *(v6 + 152) = v10[0];
  *(v6 + 168) = v7;
  *(v6 + 184) = v11;
  sub_226AC484C(v9, v6 + 192);
  a1[3] = v5;
  a1[4] = &protocol witness table for BankConnectPassMatcher;
  *a1 = v6;
}

uint64_t sub_226D1F120@<X0>(void *a1@<X8>)
{
  v37 = *v1;
  v38 = a1;
  sub_226AE532C((v1 + 6), v54);
  sub_226AE532C((v1 + 21), v53);
  sub_226AE532C((v1 + 16), v52);
  sub_226AE532C((v1 + 11), v51);
  sub_226AE532C((v1 + 1), v50);
  sub_226B41FC0();
  v2 = swift_allocObject();
  sub_226B42014(v1, v2 + 16);
  v3 = sub_226D6BE3C();
  swift_allocObject();

  v4 = sub_226D6BDFC();
  v48 = v3;
  v49 = MEMORY[0x277CC8178];
  *&v47 = v4;
  sub_226D1F610(v46);
  sub_226D1F020(v45);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v53, v53[3]);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = (&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8, v6);
  __swift_mutable_project_boxed_opaque_existential_1(v51, v51[3]);
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v46, v46[3]);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = (&v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13, v11);
  v15 = *v13;
  v44[3] = &type metadata for BankConnectAccountMatcherProvider;
  v44[4] = &off_283A6A768;
  v16 = swift_allocObject();
  v44[0] = v16;
  v17 = v8[1];
  v16[1] = *v8;
  v16[2] = v17;
  v16[3] = v8[2];
  v43[3] = &type metadata for BankConnectPassKitTransactionsDataSourceProvider;
  v43[4] = &off_283A71A38;
  v18 = type metadata accessor for BankConnectAccountUnlinker();
  v42[3] = v18;
  v42[4] = &off_283A720F8;
  v42[0] = v15;
  v19 = type metadata accessor for BankConnectAccountLinker();
  v20 = swift_allocObject();
  v21 = __swift_mutable_project_boxed_opaque_existential_1(v44, &type metadata for BankConnectAccountMatcherProvider);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = (&v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24, v22);
  __swift_mutable_project_boxed_opaque_existential_1(v43, &type metadata for BankConnectPassKitTransactionsDataSourceProvider);
  v26 = __swift_mutable_project_boxed_opaque_existential_1(v42, v18);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = (&v36 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v30 + 16))(v29, v27);
  v31 = *v29;
  v40 = &type metadata for BankConnectAccountMatcherProvider;
  v41 = &off_283A6A768;
  v32 = swift_allocObject();
  *&v39 = v32;
  v33 = v24[1];
  v32[1] = *v24;
  v32[2] = v33;
  v32[3] = v24[2];
  v20[21] = &type metadata for BankConnectPassKitTransactionsDataSourceProvider;
  v20[22] = &off_283A71A38;
  v20[36] = v18;
  v20[37] = &off_283A720F8;
  v20[33] = v31;
  v20[2] = v37;
  sub_226AC484C(v54, (v20 + 3));
  sub_226AC484C(&v39, (v20 + 8));
  sub_226AC484C(v52, (v20 + 13));
  sub_226AC484C(v50, (v20 + 23));
  sub_226AC484C(&v47, (v20 + 28));
  sub_226AC484C(v45, (v20 + 38));
  __swift_destroy_boxed_opaque_existential_0Tm(v42);
  __swift_destroy_boxed_opaque_existential_0Tm(v43);
  __swift_destroy_boxed_opaque_existential_0Tm(v44);
  __swift_destroy_boxed_opaque_existential_0Tm(v46);
  __swift_destroy_boxed_opaque_existential_0Tm(v51);
  result = __swift_destroy_boxed_opaque_existential_0Tm(v53);
  v35 = v38;
  v38[3] = v19;
  v35[4] = &off_283A72158;
  *v35 = v20;
  return result;
}

uint64_t sub_226D1F610@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  sub_226AE532C((v1 + 6), v9);
  sub_226AE532C((v1 + 58), v8);
  sub_226AE532C((v1 + 1), v7);
  v4 = type metadata accessor for BankConnectAccountUnlinker();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  sub_226AC484C(v9, v5 + 24);
  sub_226AC484C(v8, v5 + 64);
  sub_226AC484C(v7, v5 + 104);
  a1[3] = v4;
  a1[4] = &off_283A720F8;
  *a1 = v5;
}

uint64_t sub_226D1F810(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A5FD0, &qword_226D708A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226D1F888@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, void *a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v157 = a5;
  v142 = a4;
  v148 = a2;
  v136 = a7;
  v138 = sub_226D677FC();
  v137 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v135 = &v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6690, &qword_226D74720);
  MEMORY[0x28223BE20](v11 - 8);
  v134 = &v134 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6670, &qword_226D71888);
  MEMORY[0x28223BE20](v13 - 8);
  v152 = &v134 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6678, &unk_226D71890);
  MEMORY[0x28223BE20](v15 - 8);
  v151 = &v134 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6680, &unk_226D74710);
  MEMORY[0x28223BE20](v17 - 8);
  v150 = &v134 - v18;
  v19 = _s7ChangesV11FulfillmentVMa(0);
  v159 = *(v19 - 1);
  MEMORY[0x28223BE20](v19);
  v145 = &v134 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v158 = &v134 - v22;
  MEMORY[0x28223BE20](v23);
  v144 = &v134 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v134 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6688, &unk_226D718A0);
  MEMORY[0x28223BE20](v28 - 8);
  v149 = &v134 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v156 = &v134 - v31;
  MEMORY[0x28223BE20](v32);
  v34 = &v134 - v33;
  MEMORY[0x28223BE20](v35);
  v146 = &v134 - v36;
  v141 = a3;
  v140 = a6;
  v139 = a1;
  if (!a1)
  {
    v161 = sub_226B22808(MEMORY[0x277D84F90]);
LABEL_41:
    v81 = sub_226D6B30C();
    v82 = sub_226B22808(MEMORY[0x277D84F90]);
    v83 = v158;
    if (v81 >> 62)
    {
      goto LABEL_77;
    }

    v84 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v84)
    {
LABEL_78:

      v127 = v141;
      v128 = v134;
      sub_226AC40E8(v141, v134, &qword_27D7A6690, &qword_226D74720);
      v129 = v137;
      v130 = v135;
      v131 = v140;
      v132 = v138;
      (*(v137 + 16))(v135, v140, v138);
      sub_226D20CB0(v161, v148 & 1, v128, v82, v157 & 1, v130, v136);

      (*(v129 + 8))(v131, v132);
      return sub_226AC47B0(v127, &qword_27D7A6690, &qword_226D74720);
    }

LABEL_43:
    v85 = 0;
    v160 = (v81 & 0xC000000000000001);
    v154 = v81;
    v155 = v81 & 0xFFFFFFFFFFFFFF8;
    v162 = (v159 + 56);
    v147 = (v159 + 48);
    v153 = v84;
    while (1)
    {
      if (v160)
      {
        v90 = MEMORY[0x22AA8AFD0](v85, v81);
      }

      else
      {
        if (v85 >= *(v155 + 16))
        {
          goto LABEL_74;
        }

        v90 = *(v81 + 8 * v85 + 32);
      }

      v91 = v90;
      if (__OFADD__(v85, 1))
      {
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        v84 = sub_226D6EDFC();
        if (!v84)
        {
          goto LABEL_78;
        }

        goto LABEL_43;
      }

      v163 = v85 + 1;
      v92 = [v90 trackingNumber];
      v165 = v82;
      if (v92)
      {
        v93 = v92;
        v164 = sub_226D6E39C();
        v95 = v94;
      }

      else
      {
        v164 = 0;
        v95 = 0;
      }

      v96 = v19[5];
      v97 = sub_226D6763C();
      (*(*(v97 - 8) + 56))(v83 + v96, 1, 1, v97);
      v98 = v19[6];
      v99 = sub_226D6760C();
      (*(*(v99 - 8) + 56))(v83 + v98, 1, 1, v99);
      v100 = v19[7];
      v101 = sub_226D6762C();
      (*(*(v101 - 8) + 56))(v83 + v100, 1, 1, v101);
      if ((v157 & 1) == 0)
      {
        sub_226AC47B0(v83 + v96, &qword_27D7A6680, &unk_226D74710);
        sub_226AC47B0(v83 + v98, &qword_27D7A6678, &unk_226D71890);
        sub_226AC47B0(v83 + v100, &qword_27D7A6670, &qword_226D71888);
        v108 = *v162;
        v107 = v156;
        (*v162)(v156, 1, 1, v19);
LABEL_61:
        sub_226AC47B0(v107, &qword_27D7A6688, &unk_226D718A0);
        v82 = v165;
        v118 = sub_226C2FD40(v164, v95);
        v120 = v119;

        if (v120)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v166 = v82;
          v87 = v149;
          v88 = v163;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_226C3788C();
            v87 = v149;
            v82 = v166;
          }

          sub_226D22808(v82[7] + *(v159 + 72) * v118, v87);
          sub_226D4A50C(v118, v82);

          v86 = 0;
        }

        else
        {

          v86 = 1;
          v87 = v149;
          v88 = v163;
        }

        v108(v87, v86, 1, v19);
        sub_226AC47B0(v87, &qword_27D7A6688, &unk_226D718A0);
        v89 = v153;
        v81 = v154;
        goto LABEL_46;
      }

      v81 = v91;
      sub_226D6C6AC();
      v102 = v19;
      v103 = v150;
      sub_226D6C68C();
      v104 = v103;
      v19 = v102;
      v83 = v158;
      sub_226AFD680(v104, &v158[v96], &qword_27D7A6680, &unk_226D74710);
      v105 = v151;
      sub_226D6C66C();
      sub_226AFD680(v105, v83 + v98, &qword_27D7A6678, &unk_226D71890);
      v106 = v152;
      sub_226D6C67C();

      sub_226AFD680(v106, v83 + v100, &qword_27D7A6670, &qword_226D71888);
      v107 = v156;
      sub_226D227A4(v83, v156);
      v108 = *v162;
      (*v162)(v107, 0, 1, v19);
      sub_226D22924(v83);
      if ((*v147)(v107, 1, v19) == 1)
      {
        goto LABEL_61;
      }

      sub_226D22808(v107, v145);
      v82 = v165;
      v109 = swift_isUniquelyReferenced_nonNull_native();
      v166 = v82;
      v110 = v164;
      v111 = sub_226C2FD40(v164, v95);
      v113 = v82[2];
      v114 = (v112 & 1) == 0;
      v69 = __OFADD__(v113, v114);
      v115 = v113 + v114;
      if (v69)
      {
        goto LABEL_75;
      }

      v116 = v112;
      if (v82[3] < v115)
      {
        break;
      }

      if (v109)
      {
        goto LABEL_66;
      }

      v123 = v111;
      sub_226C3788C();
      v111 = v123;
      if ((v116 & 1) == 0)
      {
LABEL_70:
        v82 = v166;
        v166[(v111 >> 6) + 8] |= 1 << v111;
        v124 = (v82[6] + 16 * v111);
        *v124 = v110;
        v124[1] = v95;
        sub_226D22808(v145, v82[7] + *(v159 + 72) * v111);

        v125 = v82[2];
        v69 = __OFADD__(v125, 1);
        v126 = v125 + 1;
        if (v69)
        {
          goto LABEL_76;
        }

        v82[2] = v126;
        goto LABEL_72;
      }

LABEL_67:
      v122 = v111;

      v82 = v166;
      sub_226AFD6E8(v145, v166[7] + *(v159 + 72) * v122);

LABEL_72:
      v89 = v153;
      v81 = v154;
      v88 = v163;
LABEL_46:
      ++v85;
      if (v88 == v89)
      {
        goto LABEL_78;
      }
    }

    sub_226C30E60(v115, v109);
    v111 = sub_226C2FD40(v110, v95);
    if ((v116 & 1) != (v117 & 1))
    {
      goto LABEL_79;
    }

LABEL_66:
    if ((v116 & 1) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_67;
  }

  v37 = a1;
  v38 = sub_226D6B30C();

  v39 = sub_226B22808(MEMORY[0x277D84F90]);
  if (v38 >> 62)
  {
    goto LABEL_39;
  }

  v40 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v41 = v146;
  if (!v40)
  {
LABEL_40:
    v161 = v39;

    goto LABEL_41;
  }

LABEL_4:
  v42 = 0;
  v154 = v38 & 0xFFFFFFFFFFFFFF8;
  v155 = v38 & 0xC000000000000001;
  v160 = (v159 + 56);
  v143 = (v159 + 48);
  v153 = v38;
  v147 = v40;
  while (1)
  {
    if (v155)
    {
      v44 = MEMORY[0x22AA8AFD0](v42, v38);
      v45 = (v42 + 1);
      if (__OFADD__(v42, 1))
      {
        goto LABEL_35;
      }
    }

    else
    {
      if (v42 >= *(v154 + 16))
      {
        goto LABEL_36;
      }

      v44 = *(v38 + 8 * v42 + 32);
      v45 = (v42 + 1);
      if (__OFADD__(v42, 1))
      {
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        v40 = sub_226D6EDFC();
        v41 = v146;
        if (!v40)
        {
          goto LABEL_40;
        }

        goto LABEL_4;
      }
    }

    v161 = v39;
    v165 = v44;
    v46 = [v44 trackingNumber];
    if (v46)
    {
      v47 = v46;
      v163 = sub_226D6E39C();
      v164 = v48;
    }

    else
    {
      v163 = 0;
      v164 = 0;
    }

    v162 = v45;
    v49 = v19[5];
    v50 = sub_226D6763C();
    (*(*(v50 - 8) + 56))(&v27[v49], 1, 1, v50);
    v51 = v19[6];
    v52 = sub_226D6760C();
    (*(*(v52 - 8) + 56))(&v27[v51], 1, 1, v52);
    v53 = v19[7];
    v54 = sub_226D6762C();
    (*(*(v54 - 8) + 56))(&v27[v53], 1, 1, v54);
    if ((v148 & 1) == 0)
    {
      sub_226AC47B0(&v27[v49], &qword_27D7A6680, &unk_226D74710);
      sub_226AC47B0(&v27[v51], &qword_27D7A6678, &unk_226D71890);
      sub_226AC47B0(&v27[v53], &qword_27D7A6670, &qword_226D71888);
      v61 = *v160;
      (*v160)(v41, 1, 1, v19);
      v39 = v161;
LABEL_21:
      sub_226AC47B0(v41, &qword_27D7A6688, &unk_226D718A0);
      v73 = sub_226C2FD40(v163, v164);
      v75 = v74;

      if (v75)
      {
        v76 = swift_isUniquelyReferenced_nonNull_native();
        v166 = v39;
        if (!v76)
        {
          sub_226C3788C();
          v39 = v166;
        }

        sub_226D22808(v39[7] + *(v159 + 72) * v73, v34);
        sub_226D4A50C(v73, v39);

        v43 = 0;
      }

      else
      {

        v43 = 1;
      }

      v61(v34, v43, 1, v19);
      sub_226AC47B0(v34, &qword_27D7A6688, &unk_226D718A0);
      goto LABEL_7;
    }

    v55 = v165;
    sub_226D6C6AC();
    v56 = v34;
    v57 = v150;
    sub_226D6C68C();
    v58 = v57;
    v34 = v56;
    v41 = v146;
    sub_226AFD680(v58, &v27[v49], &qword_27D7A6680, &unk_226D74710);
    v59 = v151;
    sub_226D6C66C();
    sub_226AFD680(v59, &v27[v51], &qword_27D7A6678, &unk_226D71890);
    v60 = v152;
    sub_226D6C67C();

    sub_226AFD680(v60, &v27[v53], &qword_27D7A6670, &qword_226D71888);
    sub_226D227A4(v27, v41);
    v61 = *v160;
    (*v160)(v41, 0, 1, v19);
    sub_226D22924(v27);
    v62 = (*v143)(v41, 1, v19);
    v39 = v161;
    if (v62 == 1)
    {
      goto LABEL_21;
    }

    sub_226D22808(v41, v144);
    v38 = swift_isUniquelyReferenced_nonNull_native();
    v166 = v39;
    v64 = v163;
    v63 = v164;
    v39 = v161;
    v65 = sub_226C2FD40(v163, v164);
    v67 = v161[2];
    v68 = (v66 & 1) == 0;
    v69 = __OFADD__(v67, v68);
    v70 = v67 + v68;
    if (v69)
    {
      goto LABEL_37;
    }

    v71 = v66;
    if (v161[3] < v70)
    {
      break;
    }

    if (v38)
    {
      goto LABEL_26;
    }

    v38 = v65;
    sub_226C3788C();
    v65 = v38;
    if (v71)
    {
LABEL_27:
      v77 = v65;

      v39 = v166;
      sub_226AFD6E8(v144, v166[7] + *(v159 + 72) * v77);

      v41 = v146;
      goto LABEL_7;
    }

LABEL_32:
    v39 = v166;
    v166[(v65 >> 6) + 8] |= 1 << v65;
    v78 = (v39[6] + 16 * v65);
    *v78 = v64;
    v78[1] = v63;
    sub_226D22808(v144, v39[7] + *(v159 + 72) * v65);

    v79 = v39[2];
    v69 = __OFADD__(v79, 1);
    v80 = v79 + 1;
    if (v69)
    {
      goto LABEL_38;
    }

    v39[2] = v80;
    v41 = v146;
LABEL_7:
    v38 = v153;
    ++v42;
    if (v162 == v147)
    {
      goto LABEL_40;
    }
  }

  sub_226C30E60(v70, v38);
  v65 = sub_226C2FD40(v64, v63);
  if ((v71 & 1) == (v72 & 1))
  {
LABEL_26:
    if (v71)
    {
      goto LABEL_27;
    }

    goto LABEL_32;
  }

LABEL_79:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6698, &unk_226D718B0);
  result = sub_226D6F25C();
  __break(1u);
  return result;
}

void sub_226D208E8()
{
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A30, &qword_226D738B0);
  v1 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v31 = &v21 - v2;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6F28, &unk_226D738C0);
  MEMORY[0x28223BE20](v28);
  v27 = &v21 - v3;
  v4 = *(v0 + *(_s7ChangesVMa(0) + 24));
  v5 = *(v4 + 64);
  v22 = v4 + 64;
  v6 = 1 << *(v4 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v5;
  v9 = (v6 + 63) >> 6;
  v26 = v1 + 16;
  v25 = *MEMORY[0x277CC8598];
  v30 = v1;
  v23 = v1 + 8;
  v24 = v1 + 104;
  v32 = v4;

  v10 = 0;
  v11 = v30;
  while (v8)
  {
    v12 = v10;
LABEL_10:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v14 = v13 | (v12 << 6);
    v15 = (*(v32 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = v27;
    v19 = v29;
    (*(v11 + 16))(&v27[*(v28 + 48)], *(v32 + 56) + *(v11 + 72) * v14, v29);
    *v18 = v16;
    v18[1] = v17;
    v20 = v31;
    (*(v11 + 104))(v31, v25, v19);
    sub_226B50A44();

    LOBYTE(v16) = sub_226D6E35C();
    (*(v11 + 8))(v20, v19);
    sub_226AC47B0(v18, &qword_27D7A6F28, &unk_226D738C0);
    if ((v16 & 1) == 0)
    {
LABEL_11:

      return;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
      goto LABEL_11;
    }

    v8 = *(v22 + 8 * v12);
    ++v10;
    if (v8)
    {
      v10 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_226D20BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_226D6CB3C())
  {
    sub_226D677FC();
    sub_226D228DC(&qword_27D7A6F18, MEMORY[0x277CC6E00], MEMORY[0x277CC6E08]);
    if (sub_226D6CB3C())
    {
      v6 = *(a3 + 24);
      v7 = *(a1 + v6);
      v8 = *(a2 + v6);

      sub_226B4FCA8(v7, v8);
    }
  }
}

uint64_t sub_226D20CB0@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v163 = a6;
  v159 = a5;
  v164 = a3;
  v158 = a2;
  v162 = a7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6690, &qword_226D74720);
  MEMORY[0x28223BE20](v9 - 8);
  v161 = &v158 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v160 = &v158 - v12;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A30, &qword_226D738B0);
  v13 = *(v192 - 8);
  MEMORY[0x28223BE20](v192);
  v177 = &v158 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v167 = &v158 - v16;
  MEMORY[0x28223BE20](v17);
  v184 = &v158 - v18;
  MEMORY[0x28223BE20](v19);
  v174 = &v158 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6688, &unk_226D718A0);
  MEMORY[0x28223BE20](v21 - 8);
  v170 = &v158 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v181 = &v158 - v24;
  MEMORY[0x28223BE20](v25);
  v180 = &v158 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v158 - v28;
  MEMORY[0x28223BE20](v30);
  v191 = &v158 - v31;
  v189 = _s7ChangesV11FulfillmentVMa(0);
  v32 = *(v189 - 8);
  MEMORY[0x28223BE20](v189);
  v186 = &v158 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v190 = &v158 - v35;
  MEMORY[0x28223BE20](v36);
  v176 = &v158 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A92D0, &qword_226D7D128);
  MEMORY[0x28223BE20](v38 - 8);
  v169 = (&v158 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v40);
  v168 = (&v158 - v41);
  MEMORY[0x28223BE20](v42);
  v44 = (&v158 - v43);
  MEMORY[0x28223BE20](v45);
  v175 = &v158 - v46;
  v47 = sub_226B22610(MEMORY[0x277D84F90]);
  v48 = *(a4 + 64);
  v166 = a4 + 64;
  v49 = 1 << *(a4 + 32);
  v50 = -1;
  if (v49 < 64)
  {
    v50 = ~(-1 << v49);
  }

  v51 = v50 & v48;
  v165 = (v49 + 63) >> 6;
  v185 = v32;
  v187 = (v13 + 32);
  v188 = (v32 + 56);
  v179 = v13;
  v171 = v13 + 40;
  v178 = a4;

  v52 = 0;
  v172 = v44;
  v173 = v29;
  if (!v51)
  {
    goto LABEL_7;
  }

LABEL_6:
  v54 = a1;
  v55 = v52;
LABEL_15:
  v58 = __clz(__rbit64(v51));
  v51 &= v51 - 1;
  v59 = v58 | (v55 << 6);
  v60 = (*(v178 + 48) + 16 * v59);
  v61 = *v60;
  v62 = v60[1];
  v63 = v176;
  sub_226D227A4(*(v178 + 56) + *(v185 + 72) * v59, v176);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A92D8, &qword_226D7D130);
  v65 = *(v64 + 48);
  *v44 = v61;
  v44[1] = v62;
  sub_226D22808(v63, v44 + v65);
  (*(*(v64 - 8) + 56))(v44, 0, 1, v64);

  v183 = v55;
  v57 = v175;
  a1 = v54;
  while (1)
  {
    sub_226D2286C(v44, v57);
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A92D8, &qword_226D7D130);
    v67 = *(v66 - 8);
    v68 = *(v67 + 48);
    v69 = v68(v57, 1, v66);
    v193 = a1;
    if (v69 == 1)
    {
      break;
    }

    v70 = v57;
    v71 = *v57;
    v72 = *(v57 + 8);
    sub_226D22808(v70 + *(v66 + 48), v190);
    if (a1[2])
    {
      v73 = sub_226C2FD40(v71, v72);
      v74 = v173;
      if (v75)
      {
        sub_226D227A4(a1[7] + *(v185 + 72) * v73, v191);
        v76 = 0;
      }

      else
      {
        v76 = 1;
      }
    }

    else
    {
      v76 = 1;
      v74 = v173;
    }

    v77 = *v188;
    v78 = 1;
    (*v188)(v191, v76, 1, v189);
    v79 = v193;
    v80 = sub_226C2FD40(v71, v72);
    v182 = v71;
    if (v81)
    {
      v82 = v80;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v194 = v79;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_226C3788C();
        v79 = v194;
      }

      sub_226D22808(*(v79 + 56) + *(v185 + 72) * v82, v74);
      v193 = v79;
      sub_226D4A50C(v82, v79);
      v78 = 0;
    }

    v84 = v78;
    v85 = v189;
    v77(v74, v84, 1, v189);
    sub_226AC47B0(v74, &qword_27D7A6688, &unk_226D718A0);
    sub_226AC40E8(v191, v180, &qword_27D7A6688, &unk_226D718A0);
    v86 = v181;
    sub_226D227A4(v190, v181);
    v77(v86, 0, 1, v85);
    sub_226D228DC(&qword_27D7A92E0, _s7ChangesV11FulfillmentVMa, &unk_226D7D184);
    v87 = v174;
    sub_226D6CB4C();
    v88 = *v187;
    (*v187)(v184, v87, v192);
    v89 = swift_isUniquelyReferenced_nonNull_native();
    v194 = v47;
    v90 = v182;
    v91 = sub_226C2FD40(v182, v72);
    v93 = v47[2];
    v94 = (v92 & 1) == 0;
    v95 = __OFADD__(v93, v94);
    v96 = v93 + v94;
    if (v95)
    {
      goto LABEL_74;
    }

    v97 = v92;
    if (v47[3] >= v96)
    {
      v44 = v172;
      if ((v89 & 1) == 0)
      {
        v103 = v91;
        sub_226C37604();
        v44 = v172;
        v91 = v103;
      }

      a1 = v193;
    }

    else
    {
      sub_226C30AA4(v96, v89);
      v91 = sub_226C2FD40(v90, v72);
      if ((v97 & 1) != (v98 & 1))
      {
        goto LABEL_78;
      }

      a1 = v193;
      v44 = v172;
    }

    if (v97)
    {
      v53 = v91;

      v47 = v194;
      (*(v179 + 40))(v194[7] + *(v179 + 72) * v53, v184, v192);
      sub_226AC47B0(v191, &qword_27D7A6688, &unk_226D718A0);
      sub_226D22924(v190);
      v52 = v183;
      if (v51)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v47 = v194;
      v194[(v91 >> 6) + 8] |= 1 << v91;
      v99 = (v47[6] + 16 * v91);
      *v99 = v90;
      v99[1] = v72;
      v88((v47[7] + *(v179 + 72) * v91), v184, v192);
      sub_226AC47B0(v191, &qword_27D7A6688, &unk_226D718A0);
      sub_226D22924(v190);
      v100 = v47[2];
      v95 = __OFADD__(v100, 1);
      v101 = v100 + 1;
      if (v95)
      {
        goto LABEL_76;
      }

      v47[2] = v101;
      v52 = v183;
      if (v51)
      {
        goto LABEL_6;
      }
    }

LABEL_7:
    if (v165 <= (v52 + 1))
    {
      v56 = (v52 + 1);
    }

    else
    {
      v56 = v165;
    }

    v57 = v175;
    while (1)
    {
      v55 = (v52 + 1);
      if (__OFADD__(v52, 1))
      {
        __break(1u);
        goto LABEL_73;
      }

      if (v55 >= v165)
      {
        break;
      }

      v51 = *(v166 + 8 * v55);
      ++v52;
      if (v51)
      {
        v54 = a1;
        goto LABEL_15;
      }
    }

    v183 = (v56 - 1);
    v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A92D8, &qword_226D7D130);
    (*(*(v102 - 8) + 56))(v44, 1, 1, v102);
    v51 = 0;
  }

  v183 = v68;

  v104 = a1[8];
  v182 = a1 + 8;
  v105 = 1 << *(a1 + 32);
  v106 = -1;
  if (v105 < 64)
  {
    v106 = ~(-1 << v105);
  }

  v107 = v106 & v104;
  v175 = ((v105 + 63) >> 6);
  v184 = (v67 + 56);

  v108 = 0;
  v109 = v170;
  while (v107)
  {
    v110 = v109;
    v111 = v108;
LABEL_53:
    v114 = __clz(__rbit64(v107));
    v107 &= v107 - 1;
    v115 = v114 | (v111 << 6);
    v116 = (a1[6] + 16 * v115);
    v117 = *v116;
    v118 = v116[1];
    v119 = a1[7] + *(v185 + 72) * v115;
    v120 = v176;
    sub_226D227A4(v119, v176);
    v121 = *(v66 + 48);
    v122 = v169;
    *v169 = v117;
    v122[1] = v118;
    sub_226D22808(v120, v122 + v121);
    (*v184)(v122, 0, 1, v66);

    v113 = v111;
    v123 = v122;
    v109 = v110;
LABEL_54:
    v124 = v168;
    sub_226D2286C(v123, v168);
    v125 = (v183)(v124, 1, v66);
    v126 = v178;
    if (v125 == 1)
    {

      *(v162 + *(_s7ChangesVMa(0) + 24)) = v47;
      LOBYTE(v194) = v158 & 1;
      v195 = v159 & 1;
      sub_226D6CB4C();
      v152 = v164;
      sub_226AC40E8(v164, v160, &qword_27D7A6690, &qword_226D74720);
      v153 = sub_226D677FC();
      v154 = *(v153 - 8);
      v155 = v161;
      v156 = v163;
      (*(v154 + 16))(v161, v163, v153);
      (*(v154 + 56))(v155, 0, 1, v153);
      sub_226D228DC(&qword_27D7A6F18, MEMORY[0x277CC6E00], MEMORY[0x277CC6E08]);
      sub_226D6CB4C();
      (*(v154 + 8))(v156, v153);
      sub_226AC47B0(v152, &qword_27D7A6690, &qword_226D74720);
    }

    v190 = v113;
    v127 = *v124;
    v128 = v124[1];
    sub_226D22808(v124 + *(v66 + 48), v186);
    v129 = *(v126 + 16);
    v191 = v128;
    if (v129 && (v130 = sub_226C2FD40(v127, v128), (v131 & 1) != 0))
    {
      sub_226D227A4(*(v126 + 56) + *(v185 + 72) * v130, v109);
      v132 = 0;
    }

    else
    {
      v132 = 1;
    }

    v133 = v189;
    v134 = *v188;
    (*v188)(v109, v132, 1, v189);
    v135 = v180;
    sub_226D227A4(v186, v180);
    v134(v135, 0, 1, v133);
    sub_226AC40E8(v109, v181, &qword_27D7A6688, &unk_226D718A0);
    sub_226D228DC(&qword_27D7A92E0, _s7ChangesV11FulfillmentVMa, &unk_226D7D184);
    v136 = v167;
    sub_226D6CB4C();
    v137 = *v187;
    (*v187)(v177, v136, v192);
    v138 = swift_isUniquelyReferenced_nonNull_native();
    v194 = v47;
    v140 = sub_226C2FD40(v127, v191);
    v141 = v47[2];
    v142 = (v139 & 1) == 0;
    v143 = v141 + v142;
    if (__OFADD__(v141, v142))
    {
      goto LABEL_75;
    }

    v144 = v139;
    if (v47[3] >= v143)
    {
      if (v138)
      {
        v145 = v191;
        if (v139)
        {
          goto LABEL_41;
        }
      }

      else
      {
        sub_226C37604();
        v145 = v191;
        if (v144)
        {
          goto LABEL_41;
        }
      }
    }

    else
    {
      sub_226C30AA4(v143, v138);
      v145 = v191;
      v146 = sub_226C2FD40(v127, v191);
      if ((v144 & 1) != (v147 & 1))
      {
        goto LABEL_78;
      }

      v140 = v146;
      if (v144)
      {
LABEL_41:

        v47 = v194;
        (*(v179 + 40))(v194[7] + *(v179 + 72) * v140, v177, v192);
        v109 = v170;
        sub_226AC47B0(v170, &qword_27D7A6688, &unk_226D718A0);
        sub_226D22924(v186);
        goto LABEL_42;
      }
    }

    v47 = v194;
    v194[(v140 >> 6) + 8] |= 1 << v140;
    v148 = (v47[6] + 16 * v140);
    *v148 = v127;
    v148[1] = v145;
    v137((v47[7] + *(v179 + 72) * v140), v177, v192);
    v109 = v170;
    sub_226AC47B0(v170, &qword_27D7A6688, &unk_226D718A0);
    sub_226D22924(v186);
    v149 = v47[2];
    v95 = __OFADD__(v149, 1);
    v150 = v149 + 1;
    if (v95)
    {
      goto LABEL_77;
    }

    v47[2] = v150;
LABEL_42:
    v108 = v190;
    a1 = v193;
  }

  if (v175 <= v108 + 1)
  {
    v112 = (v108 + 1);
  }

  else
  {
    v112 = v175;
  }

  v113 = (v112 - 1);
  while (1)
  {
    v111 = v108 + 1;
    if (__OFADD__(v108, 1))
    {
      break;
    }

    if (v111 >= v175)
    {
      v151 = v169;
      (*v184)(v169, 1, 1, v66);
      v123 = v151;
      v107 = 0;
      goto LABEL_54;
    }

    v107 = v182[v111];
    ++v108;
    if (v107)
    {
      v110 = v109;
      goto LABEL_53;
    }
  }

LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6698, &unk_226D718B0);
  result = sub_226D6F25C();
  __break(1u);
  return result;
}

BOOL sub_226D21DB8(uint64_t a1, uint64_t a2)
{
  v62 = sub_226D6762C();
  v64 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v59 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6670, &qword_226D71888);
  MEMORY[0x28223BE20](v5 - 8);
  v70 = &v58 - v6;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9330, &qword_226D7D1B0);
  MEMORY[0x28223BE20](v61);
  v71 = &v58 - v7;
  v8 = sub_226D6760C();
  v68 = *(v8 - 8);
  v69 = v8;
  MEMORY[0x28223BE20](v8);
  v60 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6678, &unk_226D71890);
  MEMORY[0x28223BE20](v10 - 8);
  v63 = &v58 - v11;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9338, &qword_226D7D1B8);
  MEMORY[0x28223BE20](v66);
  v67 = &v58 - v12;
  v13 = sub_226D6763C();
  v72 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v65 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6680, &unk_226D74710);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v58 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9340, &unk_226D7D1C0);
  MEMORY[0x28223BE20](v18);
  v20 = &v58 - v19;
  sub_226D6C69C();
  sub_226D228DC(&qword_27D7A9348, MEMORY[0x277CC8348], MEMORY[0x277CC8350]);
  sub_226D6E53C();
  v21 = a2;
  sub_226D6E53C();
  if (v74 != v73)
  {
    return 0;
  }

  v58 = _s7ChangesV11FulfillmentVMa(0);
  v22 = v58[5];
  v23 = *(v18 + 48);
  v24 = a1;
  sub_226AC40E8(a1 + v22, v20, &qword_27D7A6680, &unk_226D74710);
  sub_226AC40E8(v21 + v22, &v20[v23], &qword_27D7A6680, &unk_226D74710);
  v25 = v72;
  v26 = *(v72 + 48);
  v27 = v21;
  if (v26(v20, 1, v13) == 1)
  {
    if (v26(&v20[v23], 1, v13) == 1)
    {
      sub_226AC47B0(v20, &qword_27D7A6680, &unk_226D74710);
      goto LABEL_10;
    }

LABEL_7:
    v28 = &qword_27D7A9340;
    v29 = &unk_226D7D1C0;
LABEL_8:
    v30 = v20;
LABEL_16:
    sub_226AC47B0(v30, v28, v29);
    return 0;
  }

  sub_226AC40E8(v20, v17, &qword_27D7A6680, &unk_226D74710);
  if (v26(&v20[v23], 1, v13) == 1)
  {
    (*(v25 + 8))(v17, v13);
    goto LABEL_7;
  }

  v31 = v65;
  (*(v25 + 32))(v65, &v20[v23], v13);
  sub_226D228DC(&qword_27D7A9360, MEMORY[0x277CC6D20], MEMORY[0x277CC6D28]);
  v32 = sub_226D6E35C();
  v33 = *(v25 + 8);
  v33(v31, v13);
  v33(v17, v13);
  sub_226AC47B0(v20, &qword_27D7A6680, &unk_226D74710);
  if ((v32 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v34 = v58[6];
  v35 = v67;
  v36 = *(v66 + 48);
  sub_226AC40E8(v24 + v34, v67, &qword_27D7A6678, &unk_226D71890);
  v72 = v27;
  sub_226AC40E8(v27 + v34, v35 + v36, &qword_27D7A6678, &unk_226D71890);
  v38 = v68;
  v37 = v69;
  v39 = *(v68 + 48);
  if (v39(v35, 1, v69) != 1)
  {
    v42 = v63;
    sub_226AC40E8(v35, v63, &qword_27D7A6678, &unk_226D71890);
    v43 = v39(v35 + v36, 1, v37);
    v41 = v70;
    v20 = v71;
    if (v43 != 1)
    {
      v45 = v35 + v36;
      v46 = v60;
      (*(v38 + 32))(v60, v45, v37);
      sub_226D228DC(&qword_27D7A9358, MEMORY[0x277CC6CB0], MEMORY[0x277CC6CB8]);
      v47 = sub_226D6E35C();
      v48 = *(v38 + 8);
      v48(v46, v37);
      v48(v42, v37);
      sub_226AC47B0(v35, &qword_27D7A6678, &unk_226D71890);
      if ((v47 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_20;
    }

    (*(v38 + 8))(v42, v37);
LABEL_15:
    v28 = &qword_27D7A9338;
    v29 = &qword_226D7D1B8;
    v30 = v35;
    goto LABEL_16;
  }

  v40 = v39(v35 + v36, 1, v37);
  v41 = v70;
  v20 = v71;
  if (v40 != 1)
  {
    goto LABEL_15;
  }

  sub_226AC47B0(v35, &qword_27D7A6678, &unk_226D71890);
LABEL_20:
  v49 = v58[7];
  v50 = *(v61 + 48);
  sub_226AC40E8(v24 + v49, v20, &qword_27D7A6670, &qword_226D71888);
  sub_226AC40E8(v72 + v49, &v20[v50], &qword_27D7A6670, &qword_226D71888);
  v51 = *(v64 + 48);
  v52 = v62;
  if (v51(v20, 1, v62) == 1)
  {
    if (v51(&v20[v50], 1, v52) == 1)
    {
      sub_226AC47B0(v20, &qword_27D7A6670, &qword_226D71888);
      return 1;
    }

    goto LABEL_25;
  }

  sub_226AC40E8(v20, v41, &qword_27D7A6670, &qword_226D71888);
  if (v51(&v20[v50], 1, v52) == 1)
  {
    (*(v64 + 8))(v41, v52);
LABEL_25:
    v28 = &qword_27D7A9330;
    v29 = &qword_226D7D1B0;
    goto LABEL_8;
  }

  v53 = v64;
  v54 = &v20[v50];
  v55 = v59;
  (*(v64 + 32))(v59, v54, v52);
  sub_226D228DC(&qword_27D7A9350, MEMORY[0x277CC6CD0], MEMORY[0x277CC6CD8]);
  v56 = sub_226D6E35C();
  v57 = *(v53 + 8);
  v57(v55, v52);
  v57(v41, v52);
  sub_226AC47B0(v20, &qword_27D7A6670, &qword_226D71888);
  return (v56 & 1) != 0;
}

uint64_t sub_226D227A4(uint64_t a1, uint64_t a2)
{
  v4 = _s7ChangesV11FulfillmentVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226D22808(uint64_t a1, uint64_t a2)
{
  v4 = _s7ChangesV11FulfillmentVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_226D2286C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A92D0, &qword_226D7D128);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_226D228DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226D22924(uint64_t a1)
{
  v2 = _s7ChangesV11FulfillmentVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_226D229A8(uint64_t a1)
{
  sub_226D22A44();
  if (v1 <= 0x3F)
  {
    sub_226D22A9C(319);
    if (v2 <= 0x3F)
    {
      sub_226D22B30(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_226D22A44()
{
  if (!qword_27D7A9300)
  {
    v0 = sub_226D6CB5C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D7A9300);
    }
  }
}

void sub_226D22A9C(uint64_t a1)
{
  if (!qword_27D7A9308)
  {
    sub_226D677FC();
    sub_226D228DC(&qword_27D7A6F18, MEMORY[0x277CC6E00], MEMORY[0x277CC6E08]);
    v1 = sub_226D6CB5C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D7A9308);
    }
  }
}

void sub_226D22B30(uint64_t a1)
{
  if (!qword_27D7A9310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7A6698, &unk_226D718B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7A6A30, &qword_226D738B0);
    sub_226D22BC4();
    v1 = sub_226D6E2EC();
    if (!v2)
    {
      atomic_store(v1, &qword_27D7A9310);
    }
  }
}

unint64_t sub_226D22BC4()
{
  result = qword_27D7A9318;
  if (!qword_27D7A9318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7A6698, &unk_226D718B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A9318);
  }

  return result;
}

void sub_226D22C68(uint64_t a1)
{
  sub_226D6C69C();
  if (v1 <= 0x3F)
  {
    sub_226D22D70(319, &qword_27D7A8458, MEMORY[0x277CC6D20]);
    if (v2 <= 0x3F)
    {
      sub_226D22D70(319, &qword_27D7A8448, MEMORY[0x277CC6CB0]);
      if (v3 <= 0x3F)
      {
        sub_226D22D70(319, &qword_27D7A8450, MEMORY[0x277CC6CD0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_226D22D70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_226D6EC9C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_226D22DE4()
{
  v14 = v0;
  sub_226AE532C(v0[12], (v0 + 2));
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  v1 = v0[5];
  v2 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[10] = &type metadata for BankConnectEnvironmentImplementation;
  v0[11] = sub_226B6A16C();
  v5 = swift_allocObject();
  v0[7] = v5;
  memcpy((v5 + 16), v4, 0x3B0uLL);
  type metadata accessor for TransactionClassificationSystemTask();
  v6 = swift_allocObject();
  v7 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 7), &type metadata for BankConnectEnvironmentImplementation);
  v8 = off_283A722F0;
  v9 = swift_task_alloc();
  v8[2](v9, v7, &type metadata for BankConnectEnvironmentImplementation);
  v0[13] = sub_226D24948(v9, v12, v6);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_226D2302C;

  return sub_226D23208();
}

uint64_t sub_226D2302C()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_226D231A4;
  }

  else
  {
    v2 = sub_226D23140;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226D23140()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226D231A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226D23208()
{
  v1[18] = v0;
  v2 = sub_226D6EB9C();
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D232D4, 0, 0);
}

uint64_t sub_226D232D4()
{
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v1 = sub_226D6E07C();
  *(v0 + 184) = __swift_project_value_buffer(v1, qword_28105F710);
  v2 = sub_226D6E05C();
  v3 = sub_226D6E9AC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226AB4000, v2, v3, "Starting background transaction classification.", v4, 2u);
    MEMORY[0x22AA8BEE0](v4, -1, -1);
  }

  v5 = *(v0 + 176);
  v6 = *(v0 + 160);
  v7 = *(v0 + 144);

  __swift_project_boxed_opaque_existential_1((v7 + 16), *(v7 + 40));
  v8 = sub_226D676AC();
  *(v0 + 192) = v8;
  v9 = swift_allocObject();
  *(v0 + 200) = v9;
  *(v9 + 16) = v7;
  *(v9 + 24) = v8;
  *(v0 + 320) = *MEMORY[0x277CBE110];
  v10 = *(v6 + 104);
  *(v0 + 208) = v10;
  *(v0 + 216) = (v6 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v10(v5);

  v8;
  v11 = swift_task_alloc();
  *(v0 + 224) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6560, &qword_226D7CCF0);
  *(v0 + 232) = v12;
  *v11 = v0;
  v11[1] = sub_226D23500;
  v13 = *(v0 + 176);

  return MEMORY[0x28210EE50](v0 + 128, v13, sub_226D248EC, v9, v12);
}

uint64_t sub_226D23500()
{
  v2 = *v1;
  v2[30] = v0;

  v3 = v2[22];
  v4 = v2[20];
  v5 = v2[19];
  v8 = *(v4 + 8);
  v6 = v4 + 8;
  v7 = v8;
  if (v0)
  {
    v7(v3, v5);

    v9 = sub_226D23AC0;
  }

  else
  {
    v2[31] = v7;
    v2[32] = v6 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v3, v5);

    v9 = sub_226D236AC;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

void sub_226D236AC()
{
  v1 = v0[16];
  v0[15] = v1;
  swift_beginAccess();
  if (!*(v1 + 16))
  {
    v3 = sub_226D6E05C();
    v4 = sub_226D6E9AC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = 12;
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = 0;
      v7 = "Background transaction classification done.\n%ld submitted for classification.";
      goto LABEL_7;
    }

LABEL_8:
    v8 = v0[24];
    goto LABEL_9;
  }

  v2 = v0[30];
  v0[33] = v1;
  if (sub_226D6E82C())
  {
    v3 = sub_226D6E05C();
    v4 = sub_226D6E9AC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = 2;
      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "Background classification task expired. Pausing classification.";
LABEL_7:
      v8 = v3;
      _os_log_impl(&dword_226AB4000, v3, v4, v7, v6, v5);
      MEMORY[0x22AA8BEE0](v6, -1, -1);
      v3 = v0[24];
LABEL_9:

      v9 = v0[1];

      v9();
      return;
    }

    goto LABEL_8;
  }

  v10 = sub_226D6E05C();
  v11 = sub_226D6E9AC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = *(v1 + 16);
    _os_log_impl(&dword_226AB4000, v10, v11, "Background transaction classification: classifying next batch\n(%ld transactions).", v12, 0xCu);
    MEMORY[0x22AA8BEE0](v12, -1, -1);
  }

  v0[34] = *(v1 + 16);
  v13 = __swift_project_boxed_opaque_existential_1((v0[18] + 16), *(v0[18] + 40));
  v14 = __swift_project_boxed_opaque_existential_1(v13 + 26, v13[29]);
  v0[10] = &type metadata for BankConnectEnvironmentImplementation;
  v0[11] = sub_226B41FC0();
  v15 = swift_allocObject();
  v0[7] = v15;
  sub_226B42014(v13, v15 + 16);
  v16 = *(*v14 + 16);
  *(swift_task_alloc() + 16) = v0 + 7;
  os_unfair_lock_lock(v16 + 14);
  sub_226CF1B10(&v16[4], (v0 + 2));
  v17 = v16 + 14;
  if (v2)
  {

    os_unfair_lock_unlock(v17);
  }

  else
  {
    os_unfair_lock_unlock(v17);

    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
    v18 = v0[5];
    v19 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v18);
    v20 = *(v19 + 8);

    v22 = (v20 + *v20);
    v21 = swift_task_alloc();
    v0[35] = v21;
    *v21 = v0;
    v21[1] = sub_226D23B34;

    (v22)(v1, 0, v18, v19);
  }
}

uint64_t sub_226D23AC0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226D23B34()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_226D243A8;
  }

  else
  {

    v2 = sub_226D23C50;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226D23C50()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 320);
  v3 = *(v0 + 192);
  v4 = *(v0 + 168);
  v6 = *(v0 + 144);
  v5 = *(v0 + 152);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v7 = swift_allocObject();
  *(v0 + 296) = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v3;
  v1(v4, v2, v5);

  v8 = v3;
  v9 = swift_task_alloc();
  *(v0 + 304) = v9;
  *v9 = v0;
  v9[1] = sub_226D23D80;
  v10 = *(v0 + 232);
  v11 = *(v0 + 168);

  return MEMORY[0x28210EE50](v0 + 136, v11, sub_226D24EAC, v7, v10);
}

uint64_t sub_226D23D80()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  (*(v2 + 248))(*(v2 + 168), *(v2 + 152));

  if (v0)
  {
    v3 = sub_226D24328;
  }

  else
  {
    v3 = sub_226D23F0C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_226D23F0C()
{
  v1 = v0[17];
  v0[15] = v1;

  if (!*(v1 + 16))
  {
    v9 = v0[34];
    v4 = sub_226D6E05C();
    v5 = sub_226D6E9AC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = 12;
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = v9;
      v8 = "Background transaction classification done.\n%ld submitted for classification.";
      goto LABEL_7;
    }

LABEL_8:
    v10 = v0[24];
    goto LABEL_9;
  }

  v2 = v0[39];
  v3 = v0[34];
  v0[33] = v1;
  if (sub_226D6E82C())
  {
    v4 = sub_226D6E05C();
    v5 = sub_226D6E9AC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = 2;
      v7 = swift_slowAlloc();
      *v7 = 0;
      v8 = "Background classification task expired. Pausing classification.";
LABEL_7:
      v10 = v4;
      _os_log_impl(&dword_226AB4000, v4, v5, v8, v7, v6);
      MEMORY[0x22AA8BEE0](v7, -1, -1);
      v4 = v0[24];
LABEL_9:

      v11 = v0[1];

      v11();
      return;
    }

    goto LABEL_8;
  }

  v12 = sub_226D6E05C();
  v13 = sub_226D6E9AC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    *(v14 + 4) = *(v1 + 16);
    _os_log_impl(&dword_226AB4000, v12, v13, "Background transaction classification: classifying next batch\n(%ld transactions).", v14, 0xCu);
    MEMORY[0x22AA8BEE0](v14, -1, -1);
  }

  v15 = *(v1 + 16);
  v0[34] = v3 + v15;
  if (__OFADD__(v3, v15))
  {
    __break(1u);
  }

  else
  {
    v16 = __swift_project_boxed_opaque_existential_1((v0[18] + 16), *(v0[18] + 40));
    v17 = __swift_project_boxed_opaque_existential_1(v16 + 26, v16[29]);
    v0[10] = &type metadata for BankConnectEnvironmentImplementation;
    v0[11] = sub_226B41FC0();
    v18 = swift_allocObject();
    v0[7] = v18;
    sub_226B42014(v16, v18 + 16);
    v19 = *(*v17 + 16);
    *(swift_task_alloc() + 16) = v0 + 7;
    os_unfair_lock_lock(v19 + 14);
    sub_226CF1B10(&v19[4], (v0 + 2));
    v20 = v19 + 14;
    if (v2)
    {

      os_unfair_lock_unlock(v20);
    }

    else
    {
      os_unfair_lock_unlock(v20);

      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
      v21 = v0[5];
      v22 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v21);
      v23 = *(v22 + 8);

      v25 = (v23 + *v23);
      v24 = swift_task_alloc();
      v0[35] = v24;
      *v24 = v0;
      v24[1] = sub_226D23B34;

      (v25)(v1, 0, v21, v22);
    }
  }
}