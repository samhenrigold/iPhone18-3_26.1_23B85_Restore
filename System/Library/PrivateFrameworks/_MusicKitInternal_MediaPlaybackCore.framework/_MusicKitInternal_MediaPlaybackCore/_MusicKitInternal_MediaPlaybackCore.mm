uint64_t MusicPlayerPath.init(_:)@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFAD8, &qword_2752BE158);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  sub_2752BD148();
  v6 = sub_2752BD158();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6))
  {
    sub_2752A84CC(v5);
    v7 = 1;
  }

  else
  {
    (*(*(v6 - 8) + 32))(a2, v5, v6);
    v7 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_2752A7BC8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFAF0, &qword_2752BE2D8);
  OUTLINED_FUNCTION_3(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 97) & ~v3;
  v6 = *(v5 + 64);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFAE8, &qword_2752BE2D0);
  OUTLINED_FUNCTION_3(v7);
  v9 = *(v8 + 80);
  v10 = v4 + v6 + v9;
  v12 = *(v11 + 64);
  switch(*(v0 + 96))
  {
    case 0:

      break;
    case 1:

      if (*(v0 + 48))
      {
        v13 = (v0 + 24);
        goto LABEL_8;
      }

      break;
    case 2:
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
      if (*(v0 + 80))
      {
        v13 = (v0 + 56);
        goto LABEL_8;
      }

      break;
    case 3:
      v13 = (v0 + 16);
LABEL_8:
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      break;
    default:
      break;
  }

  v14 = v10 & ~v9;
  v15 = sub_2752BD288();
  if (!__swift_getEnumTagSinglePayload(v0 + v4, 1, v15))
  {
    (*(*(v15 - 8) + 8))(v0 + v4, v15);
  }

  v16 = sub_2752BD298();
  if (!__swift_getEnumTagSinglePayload(v0 + v14, 1, v16))
  {
    (*(*(v16 - 8) + 8))(v0 + v14, v16);
  }

  return MEMORY[0x2821FE8E8](v0, v14 + v12, v3 | v9 | 7);
}

uint64_t sub_2752A7E00(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2752A7E18@<X0>(_BYTE *a1@<X8>)
{
  result = MPCPlaybackIntent.isInGroupSession.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2752A812C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFCC0, &qword_2752BE790);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_2752A81C0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFCC0, &qword_2752BE790);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_2752A82A4(uint64_t a2@<X8>)
{
  sub_2752A82D8();
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
}

void sub_2752A8338(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t MPCPlaybackEngine.state<A>(for:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2752BD578();
  (*(v4 + 16))(v6, a1, a2);
  sub_2752BD2B8();
  memset(v8, 0, sizeof(v8));
  v9 = 0;
  sub_2752BD2A8();
  return sub_2752BD588();
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

uint64_t sub_2752A84CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFAD8, &qword_2752BE158);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MusicRoute.init(_:)@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFAE0, &qword_2752BE160);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  sub_2752BD268();
  v6 = sub_2752BD278();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6))
  {
    sub_2752A8634(v5);
    v7 = 1;
  }

  else
  {
    (*(*(v6 - 8) + 32))(a2, v5, v6);
    v7 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_2752A8634(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFAE0, &qword_2752BE160);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_8MusicKit08PlayableA4Item_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2752A86C8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 81))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 80);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2752A8708(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

uint64_t sub_2752A8774()
{
  OUTLINED_FUNCTION_5();
  v1[14] = v2;
  v1[15] = v0;
  v1[13] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFAE8, &qword_2752BE2D0);
  OUTLINED_FUNCTION_3(v4);
  v1[16] = v5;
  v1[17] = *(v6 + 64);
  v1[18] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFAF0, &qword_2752BE2D8);
  OUTLINED_FUNCTION_3(v7);
  v1[19] = v8;
  v1[20] = *(v9 + 64);
  v1[21] = swift_task_alloc();
  OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_2752A889C()
{
  if (qword_2811ACF30 != -1)
  {
    swift_once();
  }

  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[18];
  v4 = v0[19];
  v5 = v0[16];
  v6 = v0[14];
  v7 = v0[13];
  sub_2752A9660(v0[15], (v0 + 2));
  sub_2752AA1E8(v7, v1, &qword_2809BFAF0, &qword_2752BE2D8);
  sub_2752AA1E8(v6, v3, &qword_2809BFAE8, &qword_2752BE2D0);
  v8 = (*(v4 + 80) + 97) & ~*(v4 + 80);
  v9 = (v2 + *(v5 + 80) + v8) & ~*(v5 + 80);
  v10 = swift_allocObject();
  memcpy((v10 + 16), v0 + 2, 0x51uLL);
  sub_2752AA198(v1, v10 + v8, &qword_2809BFAF0, &qword_2752BE2D8);
  sub_2752AA198(v3, v10 + v9, &qword_2809BFAE8, &qword_2752BE2D0);
  sub_2752BD248();
  sub_2752BD168();

  OUTLINED_FUNCTION_4();

  return v11();
}

uint64_t sub_2752A8A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[47] = a1;
  v4[48] = a2;
  v7 = sub_2752BD248();
  v4[49] = v7;
  v4[50] = *(v7 - 8);
  v4[51] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFAF8, &qword_2752BE2F0);
  v4[52] = swift_task_alloc();
  v8 = swift_task_alloc();
  v4[53] = v8;
  v4[54] = swift_task_alloc();
  v9 = swift_task_alloc();
  v4[55] = v9;
  *v9 = v4;
  v9[1] = sub_2752A8BCC;

  return sub_2752A98C8(v8, a3, a4);
}

uint64_t sub_2752A8BCC()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1();
  *v5 = v4;
  *(v6 + 448) = v0;

  OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2752A8CC4()
{
  v26 = v0;
  v1 = v0[54];
  v2 = v0[52];
  v3 = v0[49];
  sub_2752AA198(v0[53], v1, &qword_2809BFAF8, &qword_2752BE2F0);
  sub_2752AA1E8(v1, v2, &qword_2809BFAF8, &qword_2752BE2F0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v3);
  v5 = v0[52];
  if (EnumTagSinglePayload == 1)
  {
    sub_2752AA2E8(v0[52], &qword_2809BFAF8, &qword_2752BE2F0);
    if (qword_2811ACFD0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2811ACFD0);
    }

    v6 = v0[48];
    v7 = sub_2752BD338();
    __swift_project_value_buffer(v7, qword_2811AD270);
    sub_2752A9660(v6, (v0 + 24));
    v8 = sub_2752BD318();
    v9 = sub_2752BD888();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[54];
    if (v10)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v25 = v13;
      *v12 = 136446210;
      sub_2752AA160((v0 + 24), (v0 + 35));
      v14 = sub_2752BD728();
      v16 = v15;
      sub_2752AA130((v0 + 24));
      v17 = sub_2752B2160(v14, v16, &v25);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_2752A6000, v8, v9, "Unable to create MusicPlaybackIntentDonation from %{public}s).", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_9();
    }

    else
    {

      sub_2752AA130((v0 + 24));
    }

    sub_2752AA2E8(v11, &qword_2809BFAF8, &qword_2752BE2F0);
    OUTLINED_FUNCTION_11();

    OUTLINED_FUNCTION_6();

    return v23();
  }

  else
  {
    v19 = v0[50];
    v18 = v0[51];
    v20 = v0[49];
    v21 = *(v19 + 32);
    v0[57] = v21;
    v0[58] = (v19 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v21(v18, v5, v20);
    v22 = swift_task_alloc();
    v0[59] = v22;
    *v22 = v0;
    v22[1] = sub_2752A8FB4;

    return MEMORY[0x282189778]();
  }
}

uint64_t sub_2752A8FB4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 480) = v3;

  OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_2752A90A0()
{
  v35 = v0;
  v1 = *(v0 + 480);
  if (v1)
  {
    if (qword_2811ACFD0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2811ACFD0);
    }

    v2 = sub_2752BD338();
    __swift_project_value_buffer(v2, qword_2811AD270);
    v3 = v1;
    v4 = sub_2752BD318();
    v5 = sub_2752BD898();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 480);
      v33 = *(v0 + 432);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v34 = v9;
      *v7 = 136446466;
      v10 = sub_2752AA284(v3);
      if (v11)
      {
        v12 = v11;
      }

      else
      {
        v10 = 0x746E656469206F6ELL;
        v12 = 0xED00007265696669;
      }

      v13 = sub_2752B2160(v10, v12, &v34);

      *(v7 + 4) = v13;
      *(v7 + 12) = 2114;
      *(v7 + 14) = v3;
      *v8 = v6;
      v14 = v3;
      _os_log_impl(&dword_2752A6000, v4, v5, "Created MusicPlaybackIntentDonation<%{public}s)>: %{public}@).", v7, 0x16u);
      sub_2752AA2E8(v8, &qword_2809BFB08, &qword_2752BE460);
      OUTLINED_FUNCTION_9();
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_9();

      v15 = v33;
    }

    else
    {
      v28 = *(v0 + 432);

      v15 = v28;
    }

    sub_2752AA2E8(v15, &qword_2809BFAF8, &qword_2752BE2F0);
    v29 = *(v0 + 392);
    v30 = *(v0 + 376);
    (*(v0 + 456))(v30, *(v0 + 408), v29);
    v25 = v30;
    v26 = 0;
    v27 = v29;
  }

  else
  {
    if (qword_2811ACFD0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2811ACFD0);
    }

    v16 = sub_2752BD338();
    __swift_project_value_buffer(v16, qword_2811AD270);
    v17 = sub_2752BD318();
    v18 = sub_2752BD888();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2752A6000, v17, v18, "MusicPlaybackIntentDonation did not produce an underlying intent to donation.", v19, 2u);
      OUTLINED_FUNCTION_9();
    }

    v20 = *(v0 + 432);
    v22 = *(v0 + 400);
    v21 = *(v0 + 408);
    v23 = *(v0 + 392);
    v24 = *(v0 + 376);

    (*(v22 + 8))(v21, v23);
    sub_2752AA2E8(v20, &qword_2809BFAF8, &qword_2752BE2F0);
    v25 = v24;
    v26 = 1;
    v27 = v23;
  }

  __swift_storeEnumTagSinglePayload(v25, v26, 1, v27);

  OUTLINED_FUNCTION_6();

  return v31();
}

uint64_t sub_2752A9418()
{
  v21 = v0;
  if (qword_2811ACFD0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2811ACFD0);
  }

  v1 = v0[56];
  v2 = v0[48];
  v3 = sub_2752BD338();
  __swift_project_value_buffer(v3, qword_2811AD270);
  sub_2752A9660(v2, (v0 + 2));
  v4 = v1;
  v5 = sub_2752BD318();
  v6 = sub_2752BD888();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[56];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v9 = 136446466;
    sub_2752AA160((v0 + 2), (v0 + 13));
    v10 = sub_2752BD728();
    v12 = v11;
    sub_2752AA130((v0 + 2));
    v13 = sub_2752B2160(v10, v12, &v20);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    v0[46] = v8;
    v14 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB00, &unk_2752BE300);
    v15 = sub_2752BD728();
    v17 = sub_2752B2160(v15, v16, &v20);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_2752A6000, v5, v6, "Unable to create MusicPlaybackIntentDonation from %{public}s) due to error: %{public}s).", v9, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_9();
  }

  else
  {

    sub_2752AA130((v0 + 2));
  }

  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_6();

  return v18();
}

uint64_t sub_2752A9698(uint64_t a1)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFAF0, &qword_2752BE2D8);
  OUTLINED_FUNCTION_3(v5);
  v7 = (*(v6 + 80) + 97) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFAE8, &qword_2752BE2D0) - 8);
  v11 = (v7 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_2752A97E8;

  return sub_2752A8A5C(a1, v1 + 16, v1 + v7, v1 + v11);
}

uint64_t sub_2752A97E8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_7();
  v1 = *v0;
  OUTLINED_FUNCTION_1();
  *v2 = v1;

  OUTLINED_FUNCTION_6();

  return v3();
}

uint64_t sub_2752A98C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[35] = a3;
  v4[36] = v3;
  v4[33] = a1;
  v4[34] = a2;
  OUTLINED_FUNCTION_10();
  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2752A98F8()
{
  sub_2752AA160(*(v0 + 288), v0 + 16);
  switch(*(v0 + 96))
  {
    case 1:
      v11 = *(v0 + 16);
      *(v0 + 296) = v11;
      v12 = *(v0 + 40);
      *(v0 + 224) = *(v0 + 24);
      *(v0 + 240) = v12;
      *(v0 + 256) = *(v0 + 56);
      v13 = swift_task_alloc();
      *(v0 + 304) = v13;
      *v13 = v0;
      v13[1] = sub_2752A9B88;
      v14 = *(v0 + 272);
      v15 = *(v0 + 280);
      v16 = *(v0 + 264);

      result = MEMORY[0x282189790](v16, v11, v0 + 224, v14, v15);
      break;
    case 2:
      sub_2752A7E00((v0 + 16), v0 + 144);
      *(v0 + 184) = *(v0 + 56);
      *(v0 + 200) = *(v0 + 72);
      *(v0 + 216) = *(v0 + 88);
      v5 = swift_task_alloc();
      *(v0 + 320) = v5;
      *v5 = v0;
      v5[1] = sub_2752A9D04;
      v6 = *(v0 + 272);
      v7 = *(v0 + 280);
      v8 = *(v0 + 264);

      result = MEMORY[0x282189788](v8, v0 + 144, v0 + 184, v6, v7);
      break;
    case 3:
      sub_2752A7E00((v0 + 16), v0 + 104);
      v9 = swift_task_alloc();
      *(v0 + 336) = v9;
      *v9 = v0;
      v9[1] = sub_2752A9E6C;
      v10 = *(v0 + 264);

      result = MEMORY[0x282189780](v10, v0 + 104);
      break;
    default:
      v1 = *(v0 + 264);
      sub_2752AA340();
      sub_2752BD1F8();
      v2 = sub_2752BD248();
      __swift_storeEnumTagSinglePayload(v1, 0, 1, v2);
      OUTLINED_FUNCTION_4();

      result = v3();
      break;
  }

  return result;
}

uint64_t sub_2752A9B88()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1();
  *v5 = v4;
  *(v6 + 312) = v0;

  OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2752A9C9C()
{
  OUTLINED_FUNCTION_5();
  sub_2752AA2E8(v0 + 224, &qword_2809BFB10, &qword_2752BE310);
  OUTLINED_FUNCTION_4();

  return v1();
}

uint64_t sub_2752A9D04()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1();
  *v5 = v4;
  *(v6 + 328) = v0;

  OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2752A9DFC()
{
  OUTLINED_FUNCTION_5();
  sub_2752AA2E8(v0 + 184, &qword_2809BFB10, &qword_2752BE310);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));
  OUTLINED_FUNCTION_4();

  return v1();
}

uint64_t sub_2752A9E6C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1();
  *v5 = v4;
  *(v6 + 344) = v0;

  OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2752A9F64()
{
  OUTLINED_FUNCTION_5();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 104));
  OUTLINED_FUNCTION_4();

  return v1();
}

uint64_t sub_2752A9FBC()
{
  OUTLINED_FUNCTION_5();
  sub_2752AA2E8(v0 + 224, &qword_2809BFB10, &qword_2752BE310);
  OUTLINED_FUNCTION_6();

  return v1();
}

uint64_t sub_2752AA028()
{
  OUTLINED_FUNCTION_5();
  sub_2752AA2E8(v0 + 184, &qword_2809BFB10, &qword_2752BE310);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));
  OUTLINED_FUNCTION_6();

  return v1();
}

uint64_t sub_2752AA09C()
{
  OUTLINED_FUNCTION_5();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 104));
  OUTLINED_FUNCTION_6();

  return v1();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2752AA198(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_12(a1, a2, a3, a4);
  OUTLINED_FUNCTION_8();
  (*(v6 + 32))(v4, v5);
  return v4;
}

uint64_t sub_2752AA1E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_12(a1, a2, a3, a4);
  OUTLINED_FUNCTION_8();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
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

uint64_t sub_2752AA284(void *a1)
{
  v1 = [a1 identifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2752BD6E8();

  return v3;
}

uint64_t sub_2752AA2E8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_8();
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_2752AA340()
{
  result = qword_2809BFB18;
  if (!qword_2809BFB18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2809BFB18);
  }

  return result;
}

uint64_t sub_2752AA384(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 81))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 80);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2752AA3C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

uint64_t sub_2752AA414(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 80) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_0(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_9()
{

  JUMPOUT(0x277C73820);
}

uint64_t OUTLINED_FUNCTION_11()
{
  __swift_storeEnumTagSinglePayload(*(v0 + 376), 1, 1, *(v0 + 392));
}

uint64_t OUTLINED_FUNCTION_12(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

void MPCPlaybackIntent.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_46();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB20, &qword_2752BE430);
  OUTLINED_FUNCTION_18(v11);
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_16(v13);
  v62 = sub_2752BD1A8();
  OUTLINED_FUNCTION_0_0();
  v61 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_25(v17 - v16);
  OUTLINED_FUNCTION_4_0();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_80();
  v21 = sub_2752BD1C8();
  OUTLINED_FUNCTION_0_0();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_6_0();
  v27 = v25 - v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_35();
  sub_2752BD358();
  v29 = (*(v23 + 88))(v3, v21);
  if (v29 == *MEMORY[0x277D2A4D0])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB28, &unk_2752BE438);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_2752BE410;
    *(v30 + 56) = v8;
    *(v30 + 64) = v6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v30 + 32));
    v32 = (*(v19 + 16))(boxed_opaque_existential_1, v10, v8);
    v69 = 0;
    v68 = 0u;
    OUTLINED_FUNCTION_61(0, v32, v33, v34, v35);
    v37 = v36;

    sub_2752B46E0(&v67, &qword_2809BFB10, &qword_2752BE310);
    v38 = v37;
LABEL_10:
    [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPlaybackIntent_];

    v56 = OUTLINED_FUNCTION_76();
    v57(v56);
    OUTLINED_FUNCTION_45();
    return;
  }

  v63 = v10;
  if (v29 == *MEMORY[0x277D2A4D8])
  {
    v58 = *(v19 + 16);
    v58(v4, v10, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB30, &qword_2752BE448);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v66 = 0;
      v64 = 0u;
      v65 = 0u;
      sub_2752B46E0(&v64, &qword_2809BFB38, &unk_2752BE450);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB28, &unk_2752BE438);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2752BE410;
      *(inited + 56) = v8;
      *(inited + 64) = v6;
      v44 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
      v58(v44, v10, v8);
      v69 = 0;
      v68 = 0u;
      v67 = 0u;
      sub_2752AAC84(inited, &v67, v45, v46);
      v48 = v47;
      swift_setDeallocating();
      sub_2752B2098();
      sub_2752B46E0(&v67, &qword_2809BFB10, &qword_2752BE310);
      if (!v48)
      {
        v49 = swift_allocObject();
        *(v49 + 16) = xmmword_2752BE410;
        *(v49 + 56) = v8;
        *(v49 + 64) = v6;
        v50 = __swift_allocate_boxed_opaque_existential_1((v49 + 32));
        v51 = (v58)(v50, v63, v8);
        v69 = 0;
        v68 = 0u;
        OUTLINED_FUNCTION_61(0, v51, v52, v53, v54);
        v48 = v55;

        sub_2752B46E0(&v67, &qword_2809BFB10, &qword_2752BE310);
      }

      v38 = v48;
      goto LABEL_10;
    }

    sub_2752A7E00(&v64, &v67);
    v66 = 0;
    v64 = 0u;
    v65 = 0u;
    __swift_project_boxed_opaque_existential_1(&v67, *(&v68 + 1));
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v39, v40, v41, v21);
    sub_2752BD138();
    sub_2752B46E0(v59, &qword_2809BFB20, &qword_2752BE430);
    sub_2752BD188();
    objc_opt_self();
    v42 = swift_dynamicCastObjCClass();
    if (v42)
    {
      v38 = v42;
      (*(v61 + 8))(v60, v62);
      sub_2752B46E0(&v64, &qword_2809BFB10, &qword_2752BE310);
      swift_unknownObjectRetain();
      __swift_destroy_boxed_opaque_existential_1Tm(&v67);
      goto LABEL_10;
    }

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_24();
  }

  else
  {
    *&v67 = 0;
    *(&v67 + 1) = 0xE000000000000000;
    sub_2752BD948();
    MEMORY[0x277C72FC0](0xD00000000000001BLL, 0x80000002752BF3C0);
    OUTLINED_FUNCTION_35();
    sub_2752BD358();
    sub_2752BD9B8();
    (*(v23 + 8))(v27, v21);
    MEMORY[0x277C72FC0](0xD000000000000018, 0x80000002752BF3E0);
    sub_2752BDA68();
    MEMORY[0x277C72FC0](46, 0xE100000000000000);
    OUTLINED_FUNCTION_24();
  }

  OUTLINED_FUNCTION_20("Fatal error");
  __break(1u);
}

void sub_2752AAC84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_46();
  v79 = v4;
  v6 = v5;
  v7 = sub_2752BD478();
  OUTLINED_FUNCTION_0_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6_0();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &i - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFC08, &qword_2752BE5F8);
  OUTLINED_FUNCTION_18(v17);
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v18);
  v20 = &i - v19;
  v21 = sub_2752BD528();
  OUTLINED_FUNCTION_0_0();
  v80 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_3_0();
  v77 = v24;
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_53();
  v78 = v26;
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_64();
  v81 = v28;
  sub_2752B13F8(v6, v83);
  if (!v84)
  {
    sub_2752B46E0(v83, &qword_2809BFB10, &qword_2752BE310);
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v67, v68, v69, v21);
    goto LABEL_18;
  }

  __swift_project_boxed_opaque_existential_1(v83, v84);
  sub_2752BD568();
  sub_2752BD468();
  (*(v9 + 8))(v16, v7);
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v21);
  __swift_destroy_boxed_opaque_existential_1Tm(v83);
  OUTLINED_FUNCTION_44(v20, 1, v21);
  if (v29)
  {
LABEL_18:
    sub_2752B46E0(v20, &qword_2809BFC08, &qword_2752BE5F8);
    OUTLINED_FUNCTION_24();
    i = 274;
    goto LABEL_19;
  }

  (*(v80 + 32))(v81, v20, v21);
  swift_getKeyPath();
  v30 = *(v6 + 16);
  if (v30)
  {
    v75 = v21;
    v82 = MEMORY[0x277D84F90];
    v76 = v7;
    sub_2752B9078(0, v30, 0);
    v31 = v76;
    v32 = v82;
    v33 = v6 + 32;
    do
    {
      sub_2752B4450(v33, v83);
      swift_getAtKeyPath();
      __swift_destroy_boxed_opaque_existential_1Tm(v83);
      v82 = v32;
      v35 = *(v32 + 16);
      v34 = *(v32 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_2752B9078((v34 > 1), v35 + 1, 1);
        v31 = v76;
        v32 = v82;
      }

      *(v32 + 16) = v35 + 1;
      (*(v9 + 32))(v32 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v35, v13, v31);
      v33 += 40;
      --v30;
    }

    while (v30);

    v21 = v75;
  }

  else
  {
  }

  v36 = v80;
  (*(v80 + 16))(v78, v81, v21);
  v37 = v77;
  sub_2752BD508();
  OUTLINED_FUNCTION_31();
  sub_2752B26B4(v38, v39);
  v40 = OUTLINED_FUNCTION_7_0();
  v16 = *(v36 + 8);
  (v16)(v37, v21);
  if ((v40 & 1) == 0)
  {
    sub_2752BD518();
    OUTLINED_FUNCTION_7_0();
    v41 = OUTLINED_FUNCTION_10_0();
    (v16)(v41);
    sub_2752BD4E8();
    OUTLINED_FUNCTION_7_0();
    v42 = OUTLINED_FUNCTION_10_0();
    (v16)(v42);
    sub_2752BD4A8();
    OUTLINED_FUNCTION_7_0();
    v52 = OUTLINED_FUNCTION_10_0();
    (v16)(v52);
    if (v40)
    {
      v53 = OUTLINED_FUNCTION_51();
      (v16)(v53);
      v54 = OUTLINED_FUNCTION_42();
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(v54, v55);
      OUTLINED_FUNCTION_63(v56);
      v57 = OUTLINED_FUNCTION_2_0(&qword_2809BFC80);
      OUTLINED_FUNCTION_70(v57);
      OUTLINED_FUNCTION_47();
      sub_2752BD258();
      OUTLINED_FUNCTION_30();
      v60 = sub_2752B26B4(v58, v59);
      OUTLINED_FUNCTION_54(v60);
      goto LABEL_13;
    }

    sub_2752BD4F8();
    OUTLINED_FUNCTION_7_0();
    v61 = OUTLINED_FUNCTION_10_0();
    (v16)(v61);
    sub_2752BD488();
    OUTLINED_FUNCTION_7_0();
    v62 = OUTLINED_FUNCTION_10_0();
    (v16)(v62);
    sub_2752BD498();
    OUTLINED_FUNCTION_7_0();
    v63 = OUTLINED_FUNCTION_10_0();
    (v16)(v63);
    sub_2752BD4D8();
    OUTLINED_FUNCTION_7_0();
    v64 = OUTLINED_FUNCTION_10_0();
    (v16)(v64);
    sub_2752BD4B8();
    OUTLINED_FUNCTION_7_0();
    v65 = OUTLINED_FUNCTION_10_0();
    (v16)(v65);
    sub_2752BD4C8();
    OUTLINED_FUNCTION_7_0();
    v66 = OUTLINED_FUNCTION_10_0();
    (v16)(v66);
    v83[0] = 0;
    v83[1] = 0xE000000000000000;
    sub_2752BD948();
    MEMORY[0x277C72FC0](0xD00000000000003CLL, 0x80000002752BF600);
    OUTLINED_FUNCTION_31();
    sub_2752B26B4(v71, v72);
    v73 = sub_2752BDA48();
    MEMORY[0x277C72FC0](v73);

    OUTLINED_FUNCTION_24();
    for (i = 309; ; i = 292)
    {
LABEL_19:
      OUTLINED_FUNCTION_20("Fatal error");
      __break(1u);
      v70 = OUTLINED_FUNCTION_51();
      (v16)(v70);
      OUTLINED_FUNCTION_24();
    }
  }

  v43 = OUTLINED_FUNCTION_51();
  (v16)(v43);
  v44 = OUTLINED_FUNCTION_42();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(v44, v45);
  OUTLINED_FUNCTION_63(v46);
  v47 = OUTLINED_FUNCTION_2_0(&qword_2811ACF20);
  OUTLINED_FUNCTION_70(v47);
  OUTLINED_FUNCTION_47();
  sub_2752BD648();
  sub_2752BD558();
LABEL_13:
  swift_getKeyPath();
  sub_2752BD548();

  sub_2752BD538();
  v48 = v79;
  v49 = v84;
  __swift_project_boxed_opaque_existential_1(v83, v84);
  _s16MusicKitInternal0A15PlayableRequestP01_abC18_MediaPlaybackCoreE14playbackIntent16withStartingItemSo011MPCPlaybackJ0CSg0aB00daM0_pSg_tF_0(v48, v49, v50, v51);
  (v16)(v81, v21);
  __swift_destroy_boxed_opaque_existential_1Tm(v83);
  OUTLINED_FUNCTION_45();
}

void sub_2752AB5B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_46();
  v106 = v4;
  v107 = v7;
  v9 = v8;
  v10 = sub_2752BD5F8();
  OUTLINED_FUNCTION_0_0();
  v103 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_16(v14 - v13);
  v108 = sub_2752BD478();
  OUTLINED_FUNCTION_0_0();
  v105 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5_0();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFBF8, &qword_2752BE5E8);
  OUTLINED_FUNCTION_18(v20);
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_67();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB68, &qword_2752BE480);
  v23 = OUTLINED_FUNCTION_18(v22);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_39();
  v25 = sub_2752BD668();
  OUTLINED_FUNCTION_0_0();
  v104 = v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v28);
  v30 = v101 - v29;
  v112[0] = v9;
  v31 = OUTLINED_FUNCTION_42();
  __swift_instantiateConcreteTypeFromMangledNameV2(v31, v32);
  OUTLINED_FUNCTION_26();
  v36 = sub_2752B4630(v33, v34, v35);
  if ((sub_2752BD7E8() & 1) == 0)
  {
LABEL_7:
    v112[0] = v9;
    v46 = v9;
    if ((sub_2752BD7E8() & 1) == 0)
    {
      goto LABEL_16;
    }

    sub_2752B13F8(v9, v109);
    if (v109[3])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB40, &unk_2752BE7B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFCB8, &qword_2752BE788);
      OUTLINED_FUNCTION_8_0();
      if (swift_dynamicCast())
      {
        if (v111)
        {
          v47 = OUTLINED_FUNCTION_40();
          sub_2752A7E00(v47, v48);
          v49 = OUTLINED_FUNCTION_57();
          __swift_project_boxed_opaque_existential_1(v49, v50);
          sub_2752BD348();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB70, &qword_2752BE488);
          v51 = v101[1];
          if (swift_dynamicCast())
          {
            OUTLINED_FUNCTION_55();
            __swift_storeEnumTagSinglePayload(v52, v53, v54, v55);
            OUTLINED_FUNCTION_79();
            v56 = v101[0];
            OUTLINED_FUNCTION_69();
            v57();
            static MPCPlaybackIntent.radioPlaybackIntent(for:)(v56);
            v58 = OUTLINED_FUNCTION_73();
            v59(v58);
            __swift_destroy_boxed_opaque_existential_1Tm(v112);
            goto LABEL_37;
          }

          OUTLINED_FUNCTION_33();
          __swift_storeEnumTagSinglePayload(v98, v99, v100, v25);
          sub_2752B46E0(v51, &qword_2809BFB68, &qword_2752BE480);
          __swift_destroy_boxed_opaque_existential_1Tm(v112);
LABEL_16:
          v104 = v10;
          v106 = [objc_allocWithZone(MEMORY[0x277D278A8]) init];
          v60 = *(v9 + 16);
          if (v60)
          {
            v61 = v46 + 32;
            v62 = (v105 + 8);
            v63 = MEMORY[0x277D84F90];
            do
            {
              sub_2752B4450(v61, v112);
              v64 = OUTLINED_FUNCTION_77();
              __swift_project_boxed_opaque_existential_1(v64, v65);
              sub_2752BD568();
              sub_2752BD438();
              (*v62)(v19, v108);
              v66 = sub_2752BD5C8();
              OUTLINED_FUNCTION_44(v6, 1, v66);
              if (v41)
              {
                sub_2752B46E0(v6, &qword_2809BFBF8, &qword_2752BE5E8);
                __swift_destroy_boxed_opaque_existential_1Tm(v112);
              }

              else
              {
                v67 = sub_2752BD5B8();
                v69 = v68;
                OUTLINED_FUNCTION_17();
                v70 = OUTLINED_FUNCTION_50();
                v71(v70);
                __swift_destroy_boxed_opaque_existential_1Tm(v112);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  OUTLINED_FUNCTION_55();
                  v63 = sub_2752BC74C(v75, v76, v77, v78);
                }

                v73 = *(v63 + 2);
                if (v73 >= *(v63 + 3) >> 1)
                {
                  OUTLINED_FUNCTION_55();
                  v63 = sub_2752BC74C(v79, v80, v81, v82);
                }

                *(v63 + 2) = v73 + 1;
                v74 = &v63[16 * v73];
                *(v74 + 4) = v67;
                *(v74 + 5) = v69;
              }

              v61 += 40;
              --v60;
            }

            while (v60);
          }

          else
          {
            v63 = MEMORY[0x277D84F90];
          }

          v83 = v106;
          sub_2752B4674(v63, v106);
          v84 = [objc_allocWithZone(MEMORY[0x277D278A0]) init];
          [v84 setRequest_];
          sub_2752B43F0(v107, v112, &qword_2809BFB10, &qword_2752BE310);
          if (v113)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB40, &unk_2752BE7B0);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB88, &qword_2752BE490);
            OUTLINED_FUNCTION_40();
            OUTLINED_FUNCTION_65();
            if (swift_dynamicCast())
            {
              if (v111)
              {
                v85 = OUTLINED_FUNCTION_40();
                sub_2752A7E00(v85, v86);
                v87 = v113;
                v88 = v114;
                v89 = OUTLINED_FUNCTION_77();
                __swift_project_boxed_opaque_existential_1(v89, v90);
                v91 = v103;
                v92 = v102;
                v93 = v104;
                (*(v103 + 104))(v102, *MEMORY[0x277CD8170], v104);
                v94 = sub_2752B7C70(v92, v87, v88);
                (*(v91 + 8))(v92, v93);
                v95 = [v94 _underlyingModelObject];
                v96 = [v95 identifiers];
                [v84 setStartItemIdentifiers_];

                __swift_destroy_boxed_opaque_existential_1Tm(v112);
LABEL_36:
                v97 = [objc_allocWithZone(MEMORY[0x277D278B0]) init];
                [v97 setTracklistToken_];
                [v97 setTracklistSource_];

                goto LABEL_37;
              }
            }

            else
            {
              OUTLINED_FUNCTION_12_0();
            }
          }

          else
          {
            sub_2752B46E0(v112, &qword_2809BFB10, &qword_2752BE310);
            OUTLINED_FUNCTION_14();
          }

          sub_2752B46E0(v110, &qword_2809BFB90, &qword_2752BE498);
          goto LABEL_36;
        }
      }

      else
      {
        OUTLINED_FUNCTION_12_0();
      }
    }

    else
    {
      sub_2752B46E0(v109, &qword_2809BFB10, &qword_2752BE310);
      OUTLINED_FUNCTION_14();
    }

    sub_2752B46E0(v110, &qword_2809BFCB0, &qword_2752BE780);
    goto LABEL_16;
  }

  sub_2752B13F8(v9, v112);
  if (!v113)
  {
    sub_2752B46E0(v112, &qword_2809BFB10, &qword_2752BE310);
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v43, v44, v45, v25);
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB40, &unk_2752BE7B0);
  OUTLINED_FUNCTION_66();
  swift_dynamicCast();
  OUTLINED_FUNCTION_55();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
  OUTLINED_FUNCTION_44(v5, 1, v25);
  if (v41)
  {
LABEL_6:
    sub_2752B46E0(v5, &qword_2809BFB68, &qword_2752BE480);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_79();
  (*(v42 + 32))(v30, v5, v25);
  static MPCPlaybackIntent.radioPlaybackIntent(for:)(v30);
  (*(v36 + 8))(v30, v25);
LABEL_37:
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_45();
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

void MPCPlaybackIntent.init<A, B>(for:startingAt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_85();
  v46 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_2752BD8C8();
  OUTLINED_FUNCTION_0_0();
  v21 = v20;
  OUTLINED_FUNCTION_23();
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v45 - v24;
  v50 = v15;
  v51 = v13;
  v52 = v11;
  v53 = v9;
  v45 = v9;
  v26 = v23;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB40, &unk_2752BE7B0);
  v47 = v15;
  v55 = v19;
  v29 = sub_2752AC17C(sub_2752B213C, v49, v15, v27, MEMORY[0x277D84A98], v11, MEMORY[0x277D84AC0], v28);
  v30 = *(v21 + 16);
  v48 = v17;
  v30(v25, v17, v26);
  OUTLINED_FUNCTION_44(v25, 1, v13);
  if (v31)
  {
    v32 = OUTLINED_FUNCTION_48();
    v33(v32);
    OUTLINED_FUNCTION_22();
  }

  else
  {
    v54[3] = v13;
    v54[4] = v45;
    __swift_allocate_boxed_opaque_existential_1(v54);
    OUTLINED_FUNCTION_17();
    (*(v34 + 32))();
  }

  sub_2752AC7E8(v29, v54, v35, v36, v37, v38, v39, v40, v45, v46, v47, v48, v49[0], v49[1], v50, v51, v52, v53, v54[0], v54[1]);
  if (v7)
  {

    (*(v21 + 8))(v48, v26);
    OUTLINED_FUNCTION_17();
    (*(v42 + 8))(v19);
    sub_2752B46E0(v54, &qword_2809BFB10, &qword_2752BE310);
  }

  else
  {
    v43 = v41;

    sub_2752B46E0(v54, &qword_2809BFB10, &qword_2752BE310);
    [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPlaybackIntent_];

    (*(v21 + 8))(v48, v26);
    OUTLINED_FUNCTION_17();
    (*(v44 + 8))(v55);
  }

  OUTLINED_FUNCTION_84();
}

uint64_t sub_2752AC17C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v42 = a8;
  v9 = v8;
  v56 = a2;
  v57 = a4;
  v55 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v50 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v43 = a5;
  v44 = &v38 - v15;
  v41 = *(a5 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v53 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v51 = &v38 - v18;
  v19 = sub_2752BD8C8();
  v39 = *(v19 - 8);
  v40 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v38 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v52 = &v38 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v49 = *(a3 - 8);
  MEMORY[0x28223BE20](v28);
  v48 = &v38 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a6;
  v58 = swift_getAssociatedTypeWitness();
  v45 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v31 = &v38 - v30;
  v32 = sub_2752BD7D8();
  v59 = sub_2752BD988();
  v54 = sub_2752BD998();
  sub_2752BD968();
  (*(v49 + 16))(v48, v46, a3);
  v57 = v31;
  v49 = a3;
  result = sub_2752BD7C8();
  if (v32 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v32)
  {
    v34 = (v50 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_2752BD8E8();
      result = __swift_getEnumTagSinglePayload(v25, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v55(v25, v51);
      if (v9)
      {
        (*(v45 + 8))(v57, v58);

        (*(v41 + 32))(v42, v51, v43);
        return (*v34)(v25, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v34)(v25, AssociatedTypeWitness);
      sub_2752BD978();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v35 = (v50 + 32);
  v36 = (v50 + 8);
  v37 = v44;
  while (1)
  {
    sub_2752BD8E8();
    if (__swift_getEnumTagSinglePayload(v22, 1, AssociatedTypeWitness) == 1)
    {
      (*(v45 + 8))(v57, v58);
      (*(v39 + 8))(v22, v40);
      return v59;
    }

    (*v35)(v37, v22, AssociatedTypeWitness);
    v55(v37, v53);
    if (v9)
    {
      break;
    }

    v9 = 0;
    (*v36)(v37, AssociatedTypeWitness);
    sub_2752BD978();
  }

  (*v36)(v37, AssociatedTypeWitness);
  (*(v45 + 8))(v57, v58);

  return (*(v41 + 32))(v42, v53, v43);
}

void sub_2752AC7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_85();
  v77 = v20;
  v22 = v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFBF8, &qword_2752BE5E8);
  OUTLINED_FUNCTION_18(v23);
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_16(v25);
  v81 = sub_2752BD478();
  OUTLINED_FUNCTION_0_0();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_25(v30 - v29);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB20, &qword_2752BE430);
  OUTLINED_FUNCTION_18(v31);
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_49();
  v84 = sub_2752BD1C8();
  OUTLINED_FUNCTION_0_0();
  v34 = v33;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_3_0();
  v85 = v36;
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_25(v38);
  v39 = sub_2752BD1B8();
  v40 = sub_2752B1034(v39);
  v90 = v40;
  v41 = *(v22 + 16);
  v83 = *MEMORY[0x277D2A4D8];
  v42 = MEMORY[0x277D2A4D0];
  v76 = v22;
  if (v41)
  {
    v43 = v22 + 32;
    v44 = v34 + 104;
    v45 = (v34 + 8);
    v79 = (v27 + 8);
    v78 = *MEMORY[0x277D2A4D0];
    v46 = v84;
    while (1)
    {
      v86 = v41;
      sub_2752B4450(v43, v89);
      v47 = OUTLINED_FUNCTION_77();
      __swift_project_boxed_opaque_existential_1(v47, v48);
      sub_2752BD358();
      v49 = *v44;
      (*v44)(v85, v83, v46);
      sub_2752B26B4(&qword_2811ACFE0, MEMORY[0x277D2A4E0]);
      v50 = sub_2752BD6C8();
      v51 = *v45;
      v52 = OUTLINED_FUNCTION_75();
      v51(v52);
      if ((v50 & 1) == 0)
      {
        goto LABEL_6;
      }

      sub_2752B4450(v89, &v88);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB40, &unk_2752BE7B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB30, &qword_2752BE448);
      OUTLINED_FUNCTION_65();
      if (swift_dynamicCast())
      {
        break;
      }

LABEL_7:
      v55 = OUTLINED_FUNCTION_77();
      __swift_project_boxed_opaque_existential_1(v55, v56);
      sub_2752BD568();
      sub_2752BD438();
      (*v79)(v80, v81);
      v57 = sub_2752BD5C8();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v82, 1, v57);
      sub_2752B46E0(v82, &qword_2809BFBF8, &qword_2752BE5E8);
      v46 = v84;
      if (EnumTagSinglePayload == 1)
      {
        v49(v85, v78, v84);
        OUTLINED_FUNCTION_79();
        sub_2752B2A68(v85, v59);
        (v51)(v85, v84);
        sub_2752B46E0(v82, &qword_2809BFB20, &qword_2752BE430);
      }

      v60 = OUTLINED_FUNCTION_75();
      v45 = (v34 + 8);
      v51(v60);
      __swift_destroy_boxed_opaque_existential_1Tm(v89);
      v43 += 40;
      v41 = v86 - 1;
      v44 = v34 + 104;
      if (v86 == 1)
      {
        v61 = v44 & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
        v62 = v90;
        v63 = v34;
        v42 = MEMORY[0x277D2A4D0];
        goto LABEL_12;
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v87);
    v46 = v84;
LABEL_6:
    v49(v85, v83, v46);
    OUTLINED_FUNCTION_79();
    sub_2752B2A68(v85, v53);
    v54 = OUTLINED_FUNCTION_75();
    v51(v54);
    sub_2752B46E0(v44, &qword_2809BFB20, &qword_2752BE430);
    goto LABEL_7;
  }

  v62 = v40;
  v49 = *(v34 + 104);
  v61 = (v34 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v63 = v34;
LABEL_12:
  v49(v85, v83, v84);
  v64 = sub_2752B11F4(v85, v62);
  v65 = *(v63 + 8);
  v65(v85, v84);
  if (v64)
  {

    OUTLINED_FUNCTION_72();
    sub_2752AAC84(v66, v67, v68, v69);
    if (v70)
    {
      v61 = v70;
LABEL_20:
      [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPlaybackIntent_];

      goto LABEL_21;
    }

    v73 = v76;
    v74 = v64;
LABEL_19:
    sub_2752AB5B0(v73, v74, v71, v72);
    OUTLINED_FUNCTION_71();
    goto LABEL_20;
  }

  v49(v85, *v42, v84);
  v61 = sub_2752B11F4(v85, v62);

  v65(v85, v84);
  if (v61)
  {
    v73 = v76;
    v74 = v77;
    goto LABEL_19;
  }

  sub_2752B2660();
  swift_allocError();
  *v75 = 0;
  swift_willThrow();
LABEL_21:
  OUTLINED_FUNCTION_84();
}

void MPCPlaybackIntent.init<A, B>(_:startingAt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_46();
  v5 = v4;
  v7 = v6;
  v37 = v8;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = sub_2752BD8C8();
  OUTLINED_FUNCTION_0_0();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3_0();
  v42 = v21;
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v22);
  v24 = v36 - v23;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_5_0();
  v39 = v16;
  v40 = v28;
  (*(v28 + 16))(v27 - v26, v16, v12);
  v41 = v19;
  v29 = *(v19 + 16);
  v38 = v14;
  v30 = v14;
  v31 = v37;
  v29(v24, v30, v17);
  OUTLINED_FUNCTION_69();
  v36[0] = v5;
  v36[1] = v7;
  MPCPlaybackIntent.init<A, B>(for:startingAt:)(v32, v33, v34, v10, v31, v7);
  v35 = v39;
  (*(v41 + 8))(v38, v17);
  (*(v40 + 8))(v35, v12);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_45();
}

uint64_t sub_2752AD1E4@<X0>(uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  __swift_allocate_boxed_opaque_existential_1(a4);
  OUTLINED_FUNCTION_17();
  return (*(v4 + 16))();
}

void MPCPlaybackIntent.init<A>(container:startingAt:playbackSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_46();
  v5 = v4;
  v7 = v6;
  v8 = sub_2752BD1A8();
  OUTLINED_FUNCTION_0_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5_0();
  v14 = v13 - v12;
  OUTLINED_FUNCTION_60();
  sub_2752BD138();
  sub_2752BD188();
  objc_opt_self();
  OUTLINED_FUNCTION_43();
  v15 = swift_dynamicCastObjCClass();
  if (v15)
  {
    [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPlaybackIntent_];
    swift_unknownObjectRelease();
    sub_2752B46E0(v5, &qword_2809BFB20, &qword_2752BE430);
    sub_2752B46E0(v7, &qword_2809BFB10, &qword_2752BE310);
    OUTLINED_FUNCTION_17();
    v16 = OUTLINED_FUNCTION_62();
    v17(v16);
    (*(v10 + 8))(v14, v8);
    OUTLINED_FUNCTION_45();
  }

  else
  {
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_13();
    sub_2752BDA08();
    __break(1u);
  }
}

void MPCPlaybackIntent.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_46();
  sub_2752BD118();
  OUTLINED_FUNCTION_0_0();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_39();
  v19 = *(v16 + 16);
  v20 = OUTLINED_FUNCTION_73();
  v19(v20);
  MPCPlaybackIntent.init(for:)(v14);
  v21 = OUTLINED_FUNCTION_62();
  v22(v21);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_45();
}

void sub_2752AD898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_85();
  v23 = v21;
  v176 = v20;
  v177 = v24;
  v26 = v25;
  v27 = sub_2752BD118();
  OUTLINED_FUNCTION_0_0();
  v180 = v28;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_5_0();
  v178 = v31 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB20, &qword_2752BE430);
  OUTLINED_FUNCTION_18(v32);
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_16(v34);
  v35 = sub_2752BD1A8();
  OUTLINED_FUNCTION_0_0();
  v166 = v36;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_25(v39 - v38);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB60, &qword_2752BE478);
  OUTLINED_FUNCTION_18(v40);
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_16(v42);
  v175 = sub_2752BD658();
  OUTLINED_FUNCTION_0_0();
  v167 = v43;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_25(v46);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB50, &qword_2752BE468);
  v48 = OUTLINED_FUNCTION_18(v47);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v52);
  v54 = &v161 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB68, &qword_2752BE480);
  OUTLINED_FUNCTION_18(v55);
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_67();
  v179 = sub_2752BD668();
  OUTLINED_FUNCTION_0_0();
  v169 = v57;
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_25(v60 - v59);
  v61 = OUTLINED_FUNCTION_42();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(v61, v62);
  OUTLINED_FUNCTION_26();
  sub_2752B4630(v64, v65, v66);
  OUTLINED_FUNCTION_35();
  if (sub_2752BD7E8())
  {
    v170 = v35;
    v161 = v63;
    OUTLINED_FUNCTION_35();
    sub_2752BD7F8();
    OUTLINED_FUNCTION_36(v54);
    if (v72)
    {
      sub_2752B46E0(v54, &qword_2809BFB50, &qword_2752BE468);
      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v67, v68, v69, v179);
    }

    else
    {
      sub_2752BD108();
      (v180[1])(v54, v27);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB70, &qword_2752BE488);
      OUTLINED_FUNCTION_66();
      v70 = v179;
      v71 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v22, v71 ^ 1u, 1, v70);
      OUTLINED_FUNCTION_44(v22, 1, v70);
      if (!v72)
      {

        v96 = v169;
        v97 = v168;
        (*(v169 + 32))(v168, v22, v70);
        v98 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v99 = static MPCPlaybackIntent.radioPlaybackIntent(for:)(v97);
        [v98 initWithPlaybackIntent_];

        sub_2752B46E0(v177, &qword_2809BFB50, &qword_2752BE468);
        (*(v96 + 8))(v97, v70);
LABEL_49:
        OUTLINED_FUNCTION_84();
        return;
      }
    }

    sub_2752B46E0(v22, &qword_2809BFB68, &qword_2752BE480);
    v35 = v170;
  }

  OUTLINED_FUNCTION_35();
  if (sub_2752BD7E8())
  {
    v73 = v173;
    OUTLINED_FUNCTION_35();
    sub_2752BD7F8();
    OUTLINED_FUNCTION_36(v73);
    if (v72)
    {
      sub_2752B46E0(v73, &qword_2809BFB50, &qword_2752BE468);
      v79 = v174;
      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v74, v75, v76, v175);
    }

    else
    {
      sub_2752BD108();
      v77 = OUTLINED_FUNCTION_50();
      v78(v77);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB70, &qword_2752BE488);
      OUTLINED_FUNCTION_66();
      v79 = v174;
      v54 = v175;
      v80 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v79, v80 ^ 1u, 1, v54);
      v81 = OUTLINED_FUNCTION_41();
      OUTLINED_FUNCTION_44(v81, v82, v54);
      if (!v83)
      {

        v100 = v167;
        v101 = v171;
        (*(v167 + 32))(v171, v79, v54);
        v102 = sub_2752AFB28(v101);
        if (v102)
        {
          v103 = v102;
          [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPlaybackIntent_];

          sub_2752B46E0(v177, &qword_2809BFB50, &qword_2752BE468);
          (*(v100 + 8))(v101, v54);
        }

        else
        {
          if (qword_2809BFAC0 != -1)
          {
LABEL_61:
            OUTLINED_FUNCTION_1_0();
            swift_once();
          }

          v135 = sub_2752BD338();
          __swift_project_value_buffer(v135, qword_2809BFD60);
          v136 = v162;
          v137 = OUTLINED_FUNCTION_83();
          v138(v137);
          v139 = sub_2752BD318();
          v140 = sub_2752BD888();
          if (os_log_type_enabled(v139, v140))
          {
            v141 = swift_slowAlloc();
            OUTLINED_FUNCTION_68();
            v180 = swift_slowAlloc();
            v183[0] = v180;
            *v141 = 136446210;
            OUTLINED_FUNCTION_32();
            sub_2752B26B4(v142, v143);
            v144 = sub_2752BDA48();
            v146 = v145;
            OUTLINED_FUNCTION_58();
            (v26)(v136, v175);
            v147 = sub_2752B2160(v144, v146, v183);
            v148 = v177;
            v54 = v175;

            *(v141 + 4) = v147;
            _os_log_impl(&dword_2752A6000, v139, v140, "Unable to create artist station playback intent from artist: %{public}s.", v141, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v180);
            OUTLINED_FUNCTION_27();
            MEMORY[0x277C73820]();
            OUTLINED_FUNCTION_27();
            MEMORY[0x277C73820]();
          }

          else
          {

            OUTLINED_FUNCTION_58();
            (v26)(v136, v54);
            v148 = v177;
          }

          sub_2752B2660();
          swift_allocError();
          *v160 = 2;
          swift_willThrow();
          sub_2752B46E0(v148, &qword_2809BFB50, &qword_2752BE468);
          (v26)(v171, v54);
        }

        goto LABEL_49;
      }
    }

    sub_2752B46E0(v79, &qword_2809BFB60, &qword_2752BE478);
  }

  OUTLINED_FUNCTION_35();
  v84 = sub_2752BD7E8();
  v85 = v177;
  if ((v84 & 1) == 0)
  {
LABEL_28:
    v104 = 0;
    v105 = *(v26 + 16);
    v179 = v180 + 2;
    v106 = MEMORY[0x277D84F90];
    v107 = (v180 + 1);
    v108 = v178;
    while (v105 != v104)
    {
      if (v104 >= *(v26 + 16))
      {
        __break(1u);
        goto LABEL_61;
      }

      (v180[2])(v108, v26 + ((*(v180 + 80) + 32) & ~*(v180 + 80)) + v180[9] * v104, v27);
      v109 = v23;
      sub_2752B02BC(v108, &v181);
      if (v23)
      {
        sub_2752B46E0(v177, &qword_2809BFB50, &qword_2752BE468);
        v124 = OUTLINED_FUNCTION_50();
        v125(v124);

        goto LABEL_49;
      }

      v110 = OUTLINED_FUNCTION_50();
      v111(v110);
      if (v182)
      {
        v112 = OUTLINED_FUNCTION_40();
        sub_2752A7E00(v112, v113);
        v114 = OUTLINED_FUNCTION_78();
        sub_2752A7E00(v114, v115);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v106 = sub_2752BC854(0, v106[2] + 1, 1, v106);
        }

        v117 = v106[2];
        v116 = v106[3];
        v54 = (v117 + 1);
        if (v117 >= v116 >> 1)
        {
          v106 = sub_2752BC854((v116 > 1), v117 + 1, 1, v106);
        }

        v106[2] = v54;
        sub_2752A7E00(&v181, &v106[5 * v117 + 4]);
        v23 = v109;
        v108 = v178;
      }

      else
      {
        sub_2752B46E0(&v181, &qword_2809BFB10, &qword_2752BE310);
      }

      ++v104;
    }

    v118 = v23;

    v119 = v177;
    OUTLINED_FUNCTION_72();
    sub_2752B43F0(v120, v121, v122, v123);
    OUTLINED_FUNCTION_36(v104);
    if (v72)
    {
      sub_2752B46E0(v104, &qword_2809BFB50, &qword_2752BE468);
      OUTLINED_FUNCTION_56();
    }

    else
    {
      sub_2752BD108();
      (*v107)(v104, v27);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB70, &qword_2752BE488);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB40, &unk_2752BE7B0);
      OUTLINED_FUNCTION_78();
      OUTLINED_FUNCTION_65();
      v126 = swift_dynamicCast();
      if ((v126 & 1) == 0)
      {
        OUTLINED_FUNCTION_22();
      }
    }

    sub_2752AC7E8(v106, v183, v127, v128, v129, v130, v131, v132, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172);
    if (v118)
    {
      sub_2752B46E0(v119, &qword_2809BFB50, &qword_2752BE468);
    }

    else
    {
      v134 = v133;

      [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPlaybackIntent_];

      sub_2752B46E0(v119, &qword_2809BFB50, &qword_2752BE468);
    }

    sub_2752B46E0(v183, &qword_2809BFB10, &qword_2752BE310);
    goto LABEL_49;
  }

  OUTLINED_FUNCTION_35();
  v87 = v86;
  sub_2752BD7F8();
  OUTLINED_FUNCTION_36(v87);
  if (v72)
  {
    sub_2752B46E0(v87, &qword_2809BFB50, &qword_2752BE468);
    OUTLINED_FUNCTION_14();
    goto LABEL_27;
  }

  v170 = v35;
  sub_2752BD108();
  v88 = v180[1];
  v88(v87, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB70, &qword_2752BE488);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB30, &qword_2752BE448);
  OUTLINED_FUNCTION_8_0();
  v89 = swift_dynamicCast();
  if ((v89 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_0();
    goto LABEL_27;
  }

  if (!v182)
  {
LABEL_27:
    sub_2752B46E0(&v181, &qword_2809BFB38, &unk_2752BE450);
    goto LABEL_28;
  }

  v90 = OUTLINED_FUNCTION_40();
  sub_2752A7E00(v90, v91);
  OUTLINED_FUNCTION_72();
  sub_2752B43F0(v92, v93, v94, v95);
  OUTLINED_FUNCTION_36(v87);
  if (v72)
  {
    sub_2752B46E0(v87, &qword_2809BFB50, &qword_2752BE468);
    OUTLINED_FUNCTION_14();
  }

  else
  {
    sub_2752BD108();
    v88(v87, v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB40, &unk_2752BE7B0);
    OUTLINED_FUNCTION_8_0();
    v149 = swift_dynamicCast();
    if ((v149 & 1) == 0)
    {
      OUTLINED_FUNCTION_12_0();
    }
  }

  v150 = v165;
  v151 = OUTLINED_FUNCTION_57();
  __swift_project_boxed_opaque_existential_1(v151, v152);
  sub_2752BD1C8();
  v153 = v164;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v154, v155, v156, v157);
  OUTLINED_FUNCTION_60();
  sub_2752BD138();
  sub_2752B46E0(v153, &qword_2809BFB20, &qword_2752BE430);
  sub_2752BD188();
  objc_opt_self();
  OUTLINED_FUNCTION_43();
  v158 = swift_dynamicCastObjCClass();
  if (v158)
  {
    v159 = v158;

    [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPlaybackIntent_];
    OUTLINED_FUNCTION_71();
    swift_unknownObjectRelease();
    sub_2752B46E0(v85, &qword_2809BFB50, &qword_2752BE468);
    (*(v166 + 8))(v150, v170);
    sub_2752B46E0(&v181, &qword_2809BFB10, &qword_2752BE310);
    __swift_destroy_boxed_opaque_existential_1Tm(v183);
    goto LABEL_49;
  }

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_13();
  sub_2752BDA08();
  __break(1u);
}

void MPCPlaybackIntent.init<A>(for:startingAt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_85();
  v169 = v20;
  v170 = v21;
  v25 = v24;
  v27 = v26;
  v173 = v28;
  v30 = v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB20, &qword_2752BE430);
  OUTLINED_FUNCTION_18(v31);
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_16(v33);
  v162 = sub_2752BD1A8();
  OUTLINED_FUNCTION_0_0();
  v161 = v34;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_25(v37 - v36);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB60, &qword_2752BE478);
  OUTLINED_FUNCTION_18(v38);
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_49();
  v167 = v40;
  v168 = sub_2752BD658();
  OUTLINED_FUNCTION_0_0();
  v163 = v41;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_25(v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB50, &qword_2752BE468);
  v46 = OUTLINED_FUNCTION_18(v45);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_3_0();
  v166 = v47;
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_11_0();
  v50 = MEMORY[0x28223BE20](v49);
  v52 = &v154 - v51;
  v53 = MEMORY[0x28223BE20](v50);
  v55 = &v154 - v54;
  MEMORY[0x28223BE20](v53);
  v57 = &v154 - v56;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB68, &qword_2752BE480);
  OUTLINED_FUNCTION_18(v58);
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_59();
  v60 = sub_2752BD668();
  OUTLINED_FUNCTION_0_0();
  v164 = v61;
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_52();
  if (sub_2752BD7E8())
  {
    v155 = v27;
    OUTLINED_FUNCTION_52();
    v157 = v30;
    sub_2752BD7F8();
    v63 = sub_2752BD118();
    OUTLINED_FUNCTION_44(v57, 1, v63);
    if (v69)
    {
      sub_2752B46E0(v57, &qword_2809BFB50, &qword_2752BE468);
      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v64, v65, v66, v60);
    }

    else
    {
      sub_2752BD108();
      OUTLINED_FUNCTION_15();
      (*(v67 + 8))(v57, v63);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB70, &qword_2752BE488);
      OUTLINED_FUNCTION_66();
      v68 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v23, v68 ^ 1u, 1, v60);
      OUTLINED_FUNCTION_44(v23, 1, v60);
      if (!v69)
      {
        v94 = v164;
        (*(v164 + 32))(v22, v23, v60);
        v95 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v96 = static MPCPlaybackIntent.radioPlaybackIntent(for:)(v22);
        [v95 initWithPlaybackIntent_];

        sub_2752B46E0(v173, &qword_2809BFB50, &qword_2752BE468);
        OUTLINED_FUNCTION_17();
        (*(v97 + 8))(v157);
        (*(v94 + 8))(v22, v60);
LABEL_44:
        OUTLINED_FUNCTION_84();
        return;
      }
    }

    sub_2752B46E0(v23, &qword_2809BFB68, &qword_2752BE480);
    v27 = v155;
    v30 = v157;
  }

  OUTLINED_FUNCTION_52();
  if (sub_2752BD7E8())
  {
    OUTLINED_FUNCTION_52();
    sub_2752BD7F8();
    v70 = sub_2752BD118();
    OUTLINED_FUNCTION_44(v55, 1, v70);
    if (v69)
    {
      sub_2752B46E0(v55, &qword_2809BFB50, &qword_2752BE468);
      v76 = v167;
      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v71, v72, v73, v74);
    }

    else
    {
      sub_2752BD108();
      OUTLINED_FUNCTION_17();
      (*(v75 + 8))(v55, v70);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB70, &qword_2752BE488);
      OUTLINED_FUNCTION_66();
      v76 = v167;
      v77 = v168;
      v78 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v76, v78 ^ 1u, 1, v77);
      OUTLINED_FUNCTION_44(v76, 1, v77);
      if (!v79)
      {
        v98 = v163;
        v99 = v165;
        v100 = OUTLINED_FUNCTION_62();
        v101(v100);
        if (sub_2752AFB28(v99))
        {
          OUTLINED_FUNCTION_71();
          [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPlaybackIntent_];

          sub_2752B46E0(v173, &qword_2809BFB50, &qword_2752BE468);
          OUTLINED_FUNCTION_15();
          v102 = OUTLINED_FUNCTION_48();
          v103(v102);
          (*(v98 + 8))(v99, v77);
        }

        else
        {
          if (qword_2809BFAC0 != -1)
          {
            OUTLINED_FUNCTION_1_0();
            swift_once();
          }

          v125 = sub_2752BD338();
          __swift_project_value_buffer(v125, qword_2809BFD60);
          v126 = v156;
          (*(v98 + 16))(v156, v99, v77);
          v127 = sub_2752BD318();
          v128 = sub_2752BD888();
          if (os_log_type_enabled(v127, v128))
          {
            v129 = v126;
            v130 = swift_slowAlloc();
            OUTLINED_FUNCTION_68();
            v131 = swift_slowAlloc();
            v157 = v30;
            v132 = v131;
            v172[0] = v131;
            *v130 = 136446210;
            OUTLINED_FUNCTION_32();
            sub_2752B26B4(v133, v134);
            v135 = sub_2752BDA48();
            v137 = v136;
            v138 = v129;
            v25 = *(v98 + 8);
            v25(v138, v168);
            v139 = sub_2752B2160(v135, v137, v172);
            v77 = v168;

            *(v130 + 4) = v139;
            _os_log_impl(&dword_2752A6000, v127, v128, "Unable to create artist station playback intent from artist: %{public}s.", v130, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v132);
            OUTLINED_FUNCTION_27();
            MEMORY[0x277C73820]();
            OUTLINED_FUNCTION_27();
            MEMORY[0x277C73820]();
          }

          else
          {

            OUTLINED_FUNCTION_58();
            v25(v126, v77);
          }

          sub_2752B2660();
          swift_allocError();
          *v151 = 2;
          swift_willThrow();
          sub_2752B46E0(v173, &qword_2809BFB50, &qword_2752BE468);
          OUTLINED_FUNCTION_15();
          v152 = OUTLINED_FUNCTION_48();
          v153(v152);
          v25(v165, v77);
        }

        goto LABEL_44;
      }
    }

    sub_2752B46E0(v76, &qword_2809BFB60, &qword_2752BE478);
  }

  OUTLINED_FUNCTION_52();
  if ((sub_2752BD7E8() & 1) == 0)
  {
LABEL_28:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB40, &unk_2752BE7B0);
    v104 = v170;
    v105 = sub_2752BD808();
    if (v104)
    {
      sub_2752B46E0(v173, &qword_2809BFB50, &qword_2752BE468);
      OUTLINED_FUNCTION_15();
      v106 = OUTLINED_FUNCTION_48();
      v107(v106);
    }

    else
    {
      v108 = v105;
      v109 = v166;
      sub_2752B43F0(v173, v166, &qword_2809BFB50, &qword_2752BE468);
      v110 = sub_2752BD118();
      v111 = OUTLINED_FUNCTION_41();
      OUTLINED_FUNCTION_44(v111, v112, v110);
      if (v69)
      {
        sub_2752B46E0(v109, &qword_2809BFB50, &qword_2752BE468);
        OUTLINED_FUNCTION_56();
      }

      else
      {
        sub_2752BD108();
        OUTLINED_FUNCTION_17();
        (*(v113 + 8))(v109, v110);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB70, &qword_2752BE488);
        OUTLINED_FUNCTION_78();
        v114 = swift_dynamicCast();
        if ((v114 & 1) == 0)
        {
          OUTLINED_FUNCTION_22();
        }
      }

      sub_2752AC7E8(v108, v172, v115, v116, v117, v118, v119, v120, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165);
      v122 = v121;

      [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPlaybackIntent_];

      sub_2752B46E0(v173, &qword_2809BFB50, &qword_2752BE468);
      OUTLINED_FUNCTION_15();
      v123 = OUTLINED_FUNCTION_48();
      v124(v123);
      sub_2752B46E0(v172, &qword_2809BFB10, &qword_2752BE310);
    }

    goto LABEL_44;
  }

  v80 = v27;
  OUTLINED_FUNCTION_52();
  sub_2752BD7F8();
  v81 = sub_2752BD118();
  OUTLINED_FUNCTION_44(v52, 1, v81);
  if (v69)
  {
    sub_2752B46E0(v52, &qword_2809BFB50, &qword_2752BE468);
    OUTLINED_FUNCTION_14();
    goto LABEL_27;
  }

  sub_2752BD108();
  OUTLINED_FUNCTION_17();
  v83 = *(v82 + 8);
  v84 = OUTLINED_FUNCTION_74();
  v83(v84);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB70, &qword_2752BE488);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB30, &qword_2752BE448);
  OUTLINED_FUNCTION_8_0();
  v85 = swift_dynamicCast();
  if ((v85 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_0();
    goto LABEL_27;
  }

  if (!v171[3])
  {
LABEL_27:
    sub_2752B46E0(v171, &qword_2809BFB38, &unk_2752BE450);
    goto LABEL_28;
  }

  v86 = OUTLINED_FUNCTION_40();
  sub_2752A7E00(v86, v87);
  OUTLINED_FUNCTION_72();
  sub_2752B43F0(v88, v89, v90, v91);
  v92 = OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_44(v92, v93, v81);
  if (v69)
  {
    sub_2752B46E0(v52, &qword_2809BFB50, &qword_2752BE468);
    OUTLINED_FUNCTION_14();
  }

  else
  {
    sub_2752BD108();
    (v83)(v52, v81);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB40, &unk_2752BE7B0);
    OUTLINED_FUNCTION_8_0();
    v140 = swift_dynamicCast();
    if ((v140 & 1) == 0)
    {
      OUTLINED_FUNCTION_12_0();
    }
  }

  v141 = v160;
  v142 = OUTLINED_FUNCTION_57();
  __swift_project_boxed_opaque_existential_1(v142, v143);
  sub_2752BD1C8();
  v144 = v159;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v145, v146, v147, v148);
  OUTLINED_FUNCTION_60();
  sub_2752BD138();
  sub_2752B46E0(v144, &qword_2809BFB20, &qword_2752BE430);
  sub_2752BD188();
  objc_opt_self();
  v149 = swift_dynamicCastObjCClass();
  if (v149)
  {
    [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPlaybackIntent_];
    swift_unknownObjectRelease();
    sub_2752B46E0(v173, &qword_2809BFB50, &qword_2752BE468);
    OUTLINED_FUNCTION_17();
    (*(v150 + 8))(v30, v80);
    (*(v161 + 8))(v141, v162);
    sub_2752B46E0(v171, &qword_2809BFB10, &qword_2752BE310);
    __swift_destroy_boxed_opaque_existential_1Tm(v172);
    goto LABEL_44;
  }

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_13();
  sub_2752BDA08();
  __break(1u);
}

id static MPCPlaybackIntent.radioPlaybackIntent(for:)(uint64_t a1)
{
  OUTLINED_FUNCTION_47();
  v2 = sub_2752BD5F8();
  OUTLINED_FUNCTION_0_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_80();
  (*(v4 + 104))(v1, *MEMORY[0x277CD8170], v2);
  sub_2752BD668();
  v6 = sub_2752BD2F8();
  (*(v4 + 8))(v1, v2);
  v7 = [swift_getObjCClassFromMetadata() radioPlaybackIntentWithStation_];

  return v7;
}

id sub_2752AFB28(uint64_t a1)
{
  v2 = sub_2752BD5F8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2752BD658();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, v6);
  (*(v3 + 104))(v5, *MEMORY[0x277CD8170], v2);
  v10 = sub_2752BD2F8();
  (*(v3 + 8))(v5, v2);
  v11 = [swift_getObjCClassFromMetadata() radioPlaybackIntentFromArtist_];

  (*(v7 + 8))(v9, v6);
  return v11;
}

void static MPCPlaybackIntent.radioPlaybackIntent<A>(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_46();
  v63 = v4;
  v7 = v6;
  v61 = v8;
  sub_2752BD628();
  OUTLINED_FUNCTION_0_0();
  v58 = v10;
  v59 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_0();
  v57 = v11;
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_64();
  v54 = v13;
  v60 = sub_2752BD658();
  OUTLINED_FUNCTION_0_0();
  v56 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3_0();
  v55 = v16;
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_39();
  sub_2752BD5F8();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_67();
  v19 = sub_2752BD638();
  OUTLINED_FUNCTION_0_0();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_6_0();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v54 - v27;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_80();
  v62 = v30;
  (*(v30 + 16))(v5, v61, v7);
  if (swift_dynamicCast())
  {
    (*(v21 + 32))(v25, v28, v19);
    v31 = OUTLINED_FUNCTION_38();
    v32(v31);
    sub_2752BD2F8();
    v33 = OUTLINED_FUNCTION_37();
    v34(v33);
    [swift_getObjCClassFromMetadata() radioPlaybackIntentFromAlbum_];

    (*(v21 + 8))(v25, v19);
LABEL_7:
    (*(v62 + 8))(v5, v7);
    OUTLINED_FUNCTION_45();
    return;
  }

  OUTLINED_FUNCTION_73();
  v35 = v60;
  if (swift_dynamicCast())
  {
    v61 = v7;
    v36 = v55;
    v37 = v56;
    v38 = OUTLINED_FUNCTION_82();
    v39(v38);
    v40 = OUTLINED_FUNCTION_38();
    v41(v40);
    sub_2752BD2F8();
    v42 = OUTLINED_FUNCTION_37();
    v43(v42);
    [swift_getObjCClassFromMetadata() radioPlaybackIntentFromArtist_];

    (*(v37 + 8))(v36, v35);
    v7 = v61;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_73();
  v44 = v59;
  if (swift_dynamicCast())
  {
    v45 = v57;
    v46 = v58;
    v47 = OUTLINED_FUNCTION_82();
    v48(v47);
    v49 = OUTLINED_FUNCTION_38();
    v50(v49);
    sub_2752BD2F8();
    v51 = OUTLINED_FUNCTION_37();
    v52(v51);
    [swift_getObjCClassFromMetadata() radioPlaybackIntentFromSong_];

    (*(v46 + 8))(v45, v44);
    goto LABEL_7;
  }

  v64 = 0;
  v65 = 0xE000000000000000;
  sub_2752BD948();

  v64 = 0xD00000000000001ELL;
  v65 = 0x80000002752BF440;
  v53 = sub_2752BDB08();
  MEMORY[0x277C72FC0](v53);

  MEMORY[0x277C72FC0](46, 0xE100000000000000);
  OUTLINED_FUNCTION_24();
  v54 = 158;
  OUTLINED_FUNCTION_20("Fatal error");
  __break(1u);
}

uint64_t sub_2752B02BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2752BD118();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2752BD108();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB70, &qword_2752BE488);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB40, &unk_2752BE7B0);
  if (swift_dynamicCast())
  {
    return sub_2752A7E00(v19, a2);
  }

  v20 = 0;
  memset(v19, 0, sizeof(v19));
  sub_2752B46E0(v19, &qword_2809BFB10, &qword_2752BE310);
  if (qword_2809BFAC0 != -1)
  {
    swift_once();
  }

  v9 = sub_2752BD338();
  __swift_project_value_buffer(v9, qword_2809BFD60);
  (*(v5 + 16))(v7, a1, v4);
  v10 = sub_2752BD318();
  v11 = sub_2752BD888();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21[0] = v13;
    *v12 = 136446210;
    sub_2752B26B4(&qword_2809BFB48, MEMORY[0x277D2A460]);
    v14 = sub_2752BDA48();
    v16 = v15;
    (*(v5 + 8))(v7, v4);
    v17 = sub_2752B2160(v14, v16, v21);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_2752A6000, v10, v11, "Non playable item %{public}s passed to create a playback intent.", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x277C73820](v13, -1, -1);
    MEMORY[0x277C73820](v12, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  sub_2752B2660();
  swift_allocError();
  *v18 = 3;
  return swift_willThrow();
}

void MPCPlaybackIntent.init(container:startingAt:playbackSource:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_46();
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_47();
  v9 = sub_2752BD1A8();
  OUTLINED_FUNCTION_0_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5_0();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB50, &qword_2752BE468);
  OUTLINED_FUNCTION_18(v16);
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_59();
  sub_2752BD108();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB70, &qword_2752BE488);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB30, &qword_2752BE448);
  if (swift_dynamicCast())
  {
    sub_2752A7E00(v27, v32);
    sub_2752B43F0(v8, v4, &qword_2809BFB50, &qword_2752BE468);
    v18 = sub_2752BD118();
    OUTLINED_FUNCTION_44(v4, 1, v18);
    if (v19)
    {
      sub_2752B46E0(v4, &qword_2809BFB50, &qword_2752BE468);
      v29 = 0u;
      v30 = 0u;
      v31 = 0;
    }

    else
    {
      sub_2752BD108();
      OUTLINED_FUNCTION_17();
      (*(v20 + 8))(v4, v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB40, &unk_2752BE7B0);
      v21 = swift_dynamicCast();
      if ((v21 & 1) == 0)
      {
        v31 = 0;
        v29 = 0u;
        v30 = 0u;
      }
    }

    __swift_project_boxed_opaque_existential_1(v32, v32[3]);
    sub_2752BD138();
    sub_2752BD188();
    objc_opt_self();
    OUTLINED_FUNCTION_43();
    v22 = swift_dynamicCastObjCClass();
    if (v22)
    {
      [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPlaybackIntent_];
      swift_unknownObjectRelease();
      sub_2752B46E0(v6, &qword_2809BFB20, &qword_2752BE430);
      sub_2752B46E0(v8, &qword_2809BFB50, &qword_2752BE468);
      OUTLINED_FUNCTION_17();
      (*(v23 + 8))(v3, v18);
      (*(v11 + 8))(v15, v9);
      sub_2752B46E0(&v29, &qword_2809BFB10, &qword_2752BE310);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      OUTLINED_FUNCTION_45();
      return;
    }

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_24();
  }

  else
  {
    v28 = 0;
    memset(v27, 0, sizeof(v27));
    sub_2752B46E0(v27, &qword_2809BFB38, &unk_2752BE450);
    v32[0] = 0;
    v32[1] = 0xE000000000000000;
    sub_2752BD948();
    MEMORY[0x277C72FC0](0xD00000000000001ELL, 0x80000002752BF460);
    sub_2752BD118();
    OUTLINED_FUNCTION_9_0();
    sub_2752B26B4(v24, v25);
    v26 = sub_2752BDA48();
    MEMORY[0x277C72FC0](v26);

    MEMORY[0x277C72FC0](0xD000000000000014, 0x80000002752BF480);
    OUTLINED_FUNCTION_24();
  }

  OUTLINED_FUNCTION_20("Fatal error");
  __break(1u);
}

uint64_t sub_2752B0A8C(uint64_t a1, uint64_t a2, double a3, uint64_t a4, SEL *a5, SEL *a6)
{
  v10 = v6;
  v13 = sub_2752BD5F8();
  OUTLINED_FUNCTION_0_0();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_5_0();
  (*(v20 + 16))(v19 - v18, a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB88, &qword_2752BE490);
  OUTLINED_FUNCTION_65();
  if (swift_dynamicCast())
  {
    sub_2752A7E00(v37, v38);
    __swift_project_boxed_opaque_existential_1(v38, v38[3]);
    (*(v15 + 104))(v7, *MEMORY[0x277CD81B0], v13);
    OUTLINED_FUNCTION_69();
    v24 = sub_2752B7C70(v21, v22, v23);
    v25 = OUTLINED_FUNCTION_83();
    v26(v25);
    v27 = [v24 _underlyingModelObject];
    v28 = [v27 identifiers];

    v29 = [v10 *a5];
    sub_2752B26F8(0, &qword_2811ACF18, 0x277CD5DA0);
    sub_2752B26F8(0, &qword_2809BFB98, 0x277CCABB0);
    sub_2752B2738();
    OUTLINED_FUNCTION_76();
    v30 = sub_2752BD6A8();

    v31 = v28;
    v32 = sub_2752BD868();
    if ((v30 & 0xC000000000000001) == 0)
    {
LABEL_8:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v37[0] = v30;
      sub_2752B404C(v32, v31, isUniquelyReferenced_nonNull_native);

      v36 = sub_2752BD698();

      [v10 *a6];

      return __swift_destroy_boxed_opaque_existential_1Tm(v38);
    }

    if (v30 < 0)
    {
      v33 = v30;
    }

    else
    {
      v33 = v30 & 0xFFFFFFFFFFFFFF8;
    }

    result = sub_2752BD9E8();
    if (!__OFADD__(result, 1))
    {
      v30 = sub_2752B3B7C(v33, result + 1);
      goto LABEL_8;
    }

    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_12_0();
    return sub_2752B46E0(v37, &qword_2809BFB90, &qword_2752BE498);
  }

  return result;
}

id MPCPlaybackIntent.isInGroupSession.getter()
{
  if (![v0 tracklistToken])
  {
    return 0;
  }

  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v2 = [v1 request];
  if (v2)
  {
    objc_opt_self();
    OUTLINED_FUNCTION_43();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = v3;
      v5 = v2;
      v2 = [v4 isInGroupSession];

      goto LABEL_6;
    }

    swift_unknownObjectRelease();

    return 0;
  }

LABEL_6:
  swift_unknownObjectRelease();
  return v2;
}

void MPCPlaybackIntent.isInGroupSession.setter(char a1)
{
  if ([v1 tracklistToken])
  {
    objc_opt_self();
    OUTLINED_FUNCTION_43();
    v3 = swift_dynamicCastObjCClass();
    if (v3 && (v5 = [v3 request]) != 0)
    {
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (v4)
      {
        [v4 setInGroupSession_];
      }

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

void (*MPCPlaybackIntent.isInGroupSession.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = MPCPlaybackIntent.isInGroupSession.getter() & 1;
  return sub_2752B100C;
}

uint64_t sub_2752B1034(uint64_t a1)
{
  v2 = sub_2752BD1C8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - v7;
  v9 = *(a1 + 16);
  v10 = sub_2752B26B4(&qword_2811ACFE8, MEMORY[0x277D2A4E0]);
  v11 = MEMORY[0x277C730F0](v9, v2, v10);
  v22 = v11;
  v12 = *(a1 + 16);
  if (v12)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = (*(v13 + 64) + 32) & ~*(v13 + 64);
    v21 = a1;
    v17 = a1 + v16;
    v18 = *(v13 + 56);
    do
    {
      v14(v6, v17, v2);
      sub_2752B27A0(v8, v6);
      (*(v13 - 8))(v8, v2);
      v17 += v18;
      --v12;
    }

    while (v12);

    return v22;
  }

  else
  {
    v19 = v11;
  }

  return v19;
}

BOOL sub_2752B11F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2752BD1C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_2752B26B4(&qword_2811ACFE8, MEMORY[0x277D2A4E0]);
  v16 = a1;
  v8 = sub_2752BD6B8();
  v9 = a2 + 56;
  v17 = a2;
  v10 = ~(-1 << *(a2 + 32));
  do
  {
    v11 = v8 & v10;
    v12 = (1 << (v8 & v10)) & *(v9 + (((v8 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    v13 = v12 != 0;
    if (!v12)
    {
      break;
    }

    (*(v5 + 16))(v7, *(v17 + 48) + *(v5 + 72) * v11, v4);
    sub_2752B26B4(&qword_2811ACFE0, MEMORY[0x277D2A4E0]);
    v14 = sub_2752BD6C8();
    (*(v5 + 8))(v7, v4);
    v8 = v11 + 1;
  }

  while ((v14 & 1) == 0);
  return v13;
}

double sub_2752B13F8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_2752B4450(a1 + 32, a2);
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

uint64_t sub_2752B1468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  (a4)(0, a2, a3);
  sub_2752B26B4(a5, a6);
  return sub_2752BD568();
}

uint64_t MusicPlayableRequest.playbackIntent()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  _s16MusicKitInternal0A15PlayableRequestP01_abC18_MediaPlaybackCoreE14playbackIntent16withStartingItemSo011MPCPlaybackJ0CSg0aB00daM0_pSg_tF_0(v7, a1, a3, a4);
  v5 = v4;
  sub_2752B46E0(v7, &qword_2809BFB10, &qword_2752BE310);
  return v5;
}

void _s16MusicKitInternal0A15PlayableRequestP01_abC18_MediaPlaybackCoreE14playbackIntent16withStartingItemSo011MPCPlaybackJ0CSg0aB00daM0_pSg_tF_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_46();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_4_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5_0();
  v15 = v14 - v13;
  sub_2752BD5F8();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_67();
  sub_2752B43F0(v9, &v42, &qword_2809BFB10, &qword_2752BE310);
  if (v44)
  {
    v17 = OUTLINED_FUNCTION_40();
    sub_2752A7E00(v17, v18);
    sub_2752B4450(v45, &v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB40, &unk_2752BE7B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB88, &qword_2752BE490);
    if (!swift_dynamicCast())
    {
      v40 = 0;
      memset(v39, 0, sizeof(v39));
      sub_2752B46E0(v39, &qword_2809BFB90, &qword_2752BE498);
      v42 = 0;
      v43 = 0xE000000000000000;
      sub_2752BD948();
      MEMORY[0x277C72FC0](0xD00000000000004FLL, 0x80000002752BF560);
      OUTLINED_FUNCTION_78();
      sub_2752BD9B8();
      MEMORY[0x277C72FC0](46, 0xE100000000000000);
      OUTLINED_FUNCTION_24();
      v38 = 343;
      goto LABEL_21;
    }

    sub_2752A7E00(v39, &v42);
    __swift_project_boxed_opaque_existential_1(&v42, v44);
    v19 = OUTLINED_FUNCTION_38();
    v20(v19);
    OUTLINED_FUNCTION_69();
    v24 = sub_2752B7C70(v21, v22, v23);
    v25 = OUTLINED_FUNCTION_83();
    v26(v25);
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    __swift_destroy_boxed_opaque_existential_1Tm(&v42);
  }

  else
  {
    sub_2752B46E0(&v42, &qword_2809BFB10, &qword_2752BE310);
    v24 = 0;
  }

  (*(v11 + 16))(v15, v5, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFBC0, &qword_2752BE5B8);
  if (!swift_dynamicCast())
  {
    goto LABEL_18;
  }

  v27 = OUTLINED_FUNCTION_40();
  sub_2752A7E00(v27, v28);
  __swift_project_boxed_opaque_existential_1(v45, v45[3]);
  sub_2752BD5D8();
  objc_opt_self();
  OUTLINED_FUNCTION_43();
  v29 = swift_dynamicCastObjCClass();
  if (!v29)
  {
    swift_unknownObjectRelease();
    v42 = 0;
    v43 = 0xE000000000000000;
    sub_2752BD948();
    MEMORY[0x277C72FC0](0xD000000000000013, 0x80000002752BF4E0);
    sub_2752BDA68();
    MEMORY[0x277C72FC0](0xD000000000000051, 0x80000002752BF500);
    OUTLINED_FUNCTION_24();
    v38 = 353;
    goto LABEL_21;
  }

  v30 = v29;
  v31 = [v29 allowedItemIdentifiers];
  if (v31)
  {
    v32 = v31;
    sub_2752B26F8(0, &qword_2811ACF18, 0x277CD5DA0);
    v33 = sub_2752BD828();

    v34 = sub_2752B1F70(v33);

    if (v34 >= 2)
    {
      swift_unknownObjectRetain();
      v35 = [v30 sectionKind];
      if (!v35)
      {
        [v30 setItemSortDescriptors_];
        swift_unknownObjectRelease();
        [v30 setSortUsingAllowedItemIdentifiers_];
        if (v24)
        {
          goto LABEL_12;
        }

LABEL_15:
        v37 = 0;
        goto LABEL_16;
      }

      swift_unknownObjectRelease();
    }
  }

  if (!v24)
  {
    goto LABEL_15;
  }

LABEL_12:
  if ([v24 respondsToSelector_])
  {
    v36 = [v24 _underlyingModelObject];
    v37 = [v36 identifiers];

LABEL_16:
    [v30 playbackIntentWithStartItemIdentifiers_];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    OUTLINED_FUNCTION_45();
    return;
  }

  __break(1u);
LABEL_18:
  OUTLINED_FUNCTION_12_0();
  sub_2752B46E0(&v42, &qword_2809BFBC8, &qword_2752BE5C0);
  v45[0] = 0;
  v45[1] = 0xE000000000000000;
  sub_2752BD948();
  sub_2752BDA68();
  MEMORY[0x277C72FC0](0xD000000000000033, 0x80000002752BF4A0);
  OUTLINED_FUNCTION_24();
  v38 = 349;
LABEL_21:
  *&v39[0] = v38;
  OUTLINED_FUNCTION_20("Fatal error");
  __break(1u);
}

void MusicPlayableRequest.playbackIntent(withStartingItem:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_46();
  v5 = v4;
  v7 = v6;
  v8 = sub_2752BD118();
  OUTLINED_FUNCTION_0_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6_0();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB50, &qword_2752BE468);
  v17 = OUTLINED_FUNCTION_18(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_6_0();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v51 - v22;
  sub_2752B43F0(v7, &v51 - v22, &qword_2809BFB50, &qword_2752BE468);
  v24 = OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_44(v24, v25, v8);
  if (v26)
  {
    sub_2752B46E0(v23, &qword_2809BFB50, &qword_2752BE468);
    OUTLINED_FUNCTION_56();
  }

  else
  {
    sub_2752BD108();
    (*(v10 + 8))(v23, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB70, &qword_2752BE488);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB40, &unk_2752BE7B0);
    OUTLINED_FUNCTION_65();
    v27 = swift_dynamicCast();
    if ((v27 & 1) == 0)
    {
      OUTLINED_FUNCTION_22();
    }
  }

  sub_2752B43F0(v7, v20, &qword_2809BFB50, &qword_2752BE468);
  OUTLINED_FUNCTION_44(v20, 1, v8);
  if (v26)
  {
    sub_2752B46E0(v20, &qword_2809BFB50, &qword_2752BE468);
  }

  else
  {
    v30 = OUTLINED_FUNCTION_75();
    v31(v30);
    if (v54[3])
    {
      v32 = OUTLINED_FUNCTION_74();
      v33(v32);
    }

    else
    {
      if (qword_2809BFAC0 != -1)
      {
        OUTLINED_FUNCTION_1_0();
        swift_once();
      }

      v34 = sub_2752BD338();
      __swift_project_value_buffer(v34, qword_2809BFD60);
      v35 = OUTLINED_FUNCTION_76();
      v36(v35);
      v37 = sub_2752BD318();
      v38 = sub_2752BD898();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v51 = v39;
        OUTLINED_FUNCTION_68();
        v52 = swift_slowAlloc();
        v53 = v52;
        *v39 = 136446210;
        OUTLINED_FUNCTION_9_0();
        sub_2752B26B4(v40, v41);
        v42 = sub_2752BDA48();
        v44 = v43;
        v45 = *(v10 + 8);
        v45(v14, v8);
        v46 = sub_2752B2160(v42, v44, &v53);

        v47 = v51;
        *(v51 + 1) = v46;
        _os_log_impl(&dword_2752A6000, v37, v38, "Ignoring start item for non-playable item %{public}s for new playback intent.", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v52);
        OUTLINED_FUNCTION_27();
        MEMORY[0x277C73820]();
        OUTLINED_FUNCTION_27();
        MEMORY[0x277C73820]();

        v48 = OUTLINED_FUNCTION_74();
        (v45)(v48);
      }

      else
      {

        v49 = *(v10 + 8);
        v49(v14, v8);
        v50 = OUTLINED_FUNCTION_74();
        (v49)(v50);
      }
    }
  }

  _s16MusicKitInternal0A15PlayableRequestP01_abC18_MediaPlaybackCoreE14playbackIntent16withStartingItemSo011MPCPlaybackJ0CSg0aB00daM0_pSg_tF_0(v54, v5, v28, v29);
  sub_2752B46E0(v54, &qword_2809BFB10, &qword_2752BE310);
  OUTLINED_FUNCTION_45();
}

uint64_t sub_2752B1F70(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_2752BD9E8();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t MusicPlaybackError.hashValue.getter()
{
  v1 = *v0;
  sub_2752BDAD8();
  MEMORY[0x277C73360](v1);
  return sub_2752BDAF8();
}

uint64_t sub_2752B2054(uint64_t a1)
{
  v2 = *v1;
  sub_2752BDAD8();
  MEMORY[0x277C73360](v2);
  return sub_2752BDAF8();
}

uint64_t sub_2752B2098()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB40, &unk_2752BE7B0);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_2752B2160(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2752B2224(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_2752B45D0(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_2752B2224(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2752B2324(a5, a6);
    *a1 = v9;
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
    result = sub_2752BD958();
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

uint64_t sub_2752B2324(uint64_t a1, unint64_t a2)
{
  v3 = sub_2752B2370(a1, a2);
  sub_2752B2488(&unk_2884040A0);
  return v3;
}

uint64_t sub_2752B2370(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_2752BD758())
  {
    result = sub_2752B9780(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_2752BD938();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_2752BD958();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2752B2488(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_2752B256C(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_2752B256C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFBF0, &qword_2752BE5E0);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

unint64_t sub_2752B2660()
{
  result = qword_2809BFB78;
  if (!qword_2809BFB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BFB78);
  }

  return result;
}

uint64_t sub_2752B26B4(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_43();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2752B26F8(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_2752B2738()
{
  result = qword_2809BFBA0;
  if (!qword_2809BFBA0)
  {
    sub_2752B26F8(255, &qword_2811ACF18, 0x277CD5DA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BFBA0);
  }

  return result;
}

BOOL sub_2752B27A0(char *a1, char *a2)
{
  v22 = a1;
  v4 = sub_2752BD1C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v8 = *v2;
  sub_2752B26B4(&qword_2811ACFE8, MEMORY[0x277D2A4E0]);
  v27 = a2;
  v9 = sub_2752BD6B8();
  v24 = v8;
  v25 = v8 + 56;
  v10 = ~(-1 << *(v8 + 32));
  v26 = v5 + 16;
  v23 = v5 + 8;
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v25 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      v17 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v27;
      (*(v5 + 16))(v7, v27, v4);
      v28 = *v17;
      sub_2752B38F0(v7, v11, isUniquelyReferenced_nonNull_native);
      *v17 = v28;
      (*(v5 + 32))(v22, v19, v4);
      return v12 == 0;
    }

    v13 = *(v5 + 72) * v11;
    v14 = *(v5 + 16);
    v14(v7, *(v24 + 48) + v13, v4);
    sub_2752B26B4(&qword_2811ACFE0, MEMORY[0x277D2A4E0]);
    v15 = sub_2752BD6C8();
    v16 = *(v5 + 8);
    v16(v7, v4);
    if (v15)
    {
      break;
    }

    v9 = v11 + 1;
  }

  v16(v27, v4);
  v14(v22, *(v24 + 48) + v13, v4);
  return v12 == 0;
}

uint64_t sub_2752B2A68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_2752BD1C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v8 = *v2;
  sub_2752B26B4(&qword_2811ACFE8, MEMORY[0x277D2A4E0]);
  v25 = a1;
  v9 = sub_2752BD6B8();
  v24 = v8;
  v10 = ~(-1 << *(v8 + 32));
  while (1)
  {
    v11 = v9 & v10;
    if (((*(v8 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
    {
      v14 = 1;
      v15 = v23;
      return __swift_storeEnumTagSinglePayload(v15, v14, 1, v4);
    }

    v12 = *(v5 + 72) * v11;
    (*(v5 + 16))(v7, *(v24 + 48) + v12, v4);
    sub_2752B26B4(&qword_2811ACFE0, MEMORY[0x277D2A4E0]);
    v13 = sub_2752BD6C8();
    (*(v5 + 8))(v7, v4);
    if (v13)
    {
      break;
    }

    v9 = v11 + 1;
  }

  v16 = v22;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v16;
  v26 = *v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2752B2CDC();
    v18 = v26;
  }

  v19 = *(v18 + 48) + v12;
  v15 = v23;
  (*(v5 + 32))(v23, v19, v4);
  sub_2752B3580(v11);
  v14 = 0;
  *v16 = v26;
  return __swift_storeEnumTagSinglePayload(v15, v14, 1, v4);
}

void *sub_2752B2CDC()
{
  v1 = v0;
  v2 = sub_2752BD1C8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFC00, &qword_2752BE5F0);
  v6 = *v0;
  v7 = sub_2752BD918();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_21;
      }

      v19 = *(v6 + 56 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_2752B2F10(uint64_t a1)
{
  v2 = v1;
  v33 = sub_2752BD1C8();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFC00, &qword_2752BE5F0);
  v7 = sub_2752BD928();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_2752B26B4(&qword_2811ACFE8, MEMORY[0x277D2A4E0]);
        result = sub_2752BD6B8();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_2752B3228(uint64_t a1)
{
  v2 = v1;
  v36 = sub_2752BD1C8();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFC00, &qword_2752BE5F0);
  result = sub_2752BD928();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v34 = v3 + 32;
  v14 = result + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_2752B388C(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_2752B26B4(&qword_2811ACFE8, MEMORY[0x277D2A4E0]);
    result = sub_2752BD6B8();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_2752B3580(int64_t a1)
{
  v3 = sub_2752BD1C8();
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = sub_2752BD908();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v37 = (v13 + 1) & v12;
      v15 = *(v4 + 16);
      v14 = v4 + 16;
      v36 = v15;
      v16 = *(v14 + 56);
      v38 = v14;
      v39 = v16;
      v17 = v12;
      v18 = (v14 - 8);
      v19 = v8;
      while (1)
      {
        v20 = v9;
        v21 = v39 * v11;
        v22 = v17;
        v36(v7, *(v19 + 48) + v39 * v11, v3);
        v23 = v19;
        sub_2752B26B4(&qword_2811ACFE8, MEMORY[0x277D2A4E0]);
        v24 = sub_2752BD6B8();
        (*v18)(v7, v3);
        v17 = v22;
        v25 = v24 & v22;
        if (a1 >= v37)
        {
          if (v25 < v37 || a1 < v25)
          {
LABEL_20:
            v19 = v23;
            goto LABEL_24;
          }
        }

        else if (v25 < v37 && a1 < v25)
        {
          goto LABEL_20;
        }

        v19 = v23;
        v27 = *(v23 + 48);
        v28 = v39 * a1;
        v29 = v27 + v39 * a1;
        v30 = v27 + v21 + v39;
        if (v39 * a1 < v21 || v29 >= v30)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_23:
          v17 = v22;
          a1 = v11;
          goto LABEL_24;
        }

        a1 = v11;
        if (v28 != v21)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_23;
        }

LABEL_24:
        v11 = (v11 + 1) & v17;
        v9 = v20;
        if (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v19 = v8;
LABEL_28:
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v19 = v8;
  }

  v33 = *(v19 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v35;
    ++*(v19 + 36);
  }

  return result;
}

uint64_t sub_2752B388C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_2752BE420;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_2752B38F0(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = sub_2752BD1C8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_2752B3228(v10 + 1);
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_2752B2F10(v10 + 1);
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_2752B26B4(&qword_2811ACFE8, MEMORY[0x277D2A4E0]);
      v13 = sub_2752BD6B8();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_2752B26B4(&qword_2811ACFE0, MEMORY[0x277D2A4E0]);
        v15 = sub_2752BD6C8();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_2752B2CDC();
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = sub_2752BDA78();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

uint64_t sub_2752B3B7C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFBD8, &qword_2752BE5D0);
    v2 = sub_2752BDA38();
    v17 = v2;
    sub_2752BD9D8();
    while (1)
    {
      v3 = sub_2752BD9F8();
      if (!v3)
      {

        return v2;
      }

      v15 = v3;
      sub_2752B26F8(0, &qword_2811ACF18, 0x277CD5DA0);
      swift_dynamicCast();
      sub_2752B26F8(0, &qword_2809BFB98, 0x277CCABB0);
      swift_dynamicCast();
      v4 = *(v2 + 16);
      if (*(v2 + 24) <= v4)
      {
        sub_2752B3DE8(v4 + 1, 1);
      }

      v2 = v17;
      result = sub_2752BD8A8();
      v6 = v17 + 64;
      v7 = -1 << *(v17 + 32);
      v8 = result & ~v7;
      v9 = v8 >> 6;
      if (((-1 << v8) & ~*(v17 + 64 + 8 * (v8 >> 6))) == 0)
      {
        break;
      }

      v10 = __clz(__rbit64((-1 << v8) & ~*(v17 + 64 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      *(*(v17 + 48) + 8 * v10) = v16;
      *(*(v17 + 56) + 8 * v10) = v15;
      ++*(v17 + 16);
    }

    v11 = 0;
    v12 = (63 - v7) >> 6;
    while (++v9 != v12 || (v11 & 1) == 0)
    {
      v13 = v9 == v12;
      if (v9 == v12)
      {
        v9 = 0;
      }

      v11 |= v13;
      v14 = *(v6 + 8 * v9);
      if (v14 != -1)
      {
        v10 = __clz(__rbit64(~v14)) + (v9 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2752B3DA4(uint64_t a1)
{
  v2 = sub_2752BD8A8();

  return sub_2752B44F8(a1, v2);
}

uint64_t sub_2752B3DE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFBD8, &qword_2752BE5D0);
  result = sub_2752BDA28();
  v7 = result;
  if (!*(v5 + 16))
  {

LABEL_32:
    *v3 = v7;
    return result;
  }

  v32 = v2;
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
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        sub_2752B388C(0, (v31 + 63) >> 6, v5 + 64);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
    goto LABEL_32;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = *(*(v5 + 48) + 8 * v18);
    v20 = *(*(v5 + 56) + 8 * v18);
    if ((v4 & 1) == 0)
    {
      v21 = v19;
      v22 = v20;
    }

    result = sub_2752BD8A8();
    v23 = -1 << *(v7 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    *(*(v7 + 48) + 8 * v26) = v19;
    *(*(v7 + 56) + 8 * v26) = v20;
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v14 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

void sub_2752B404C(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_2752B3DA4(a2);
  if (__OFADD__(v6[2], (v8 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = v7;
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFBD0, &qword_2752BE5C8);
  if ((sub_2752BD9C8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = sub_2752B3DA4(a2);
  if ((v10 & 1) != (v12 & 1))
  {
LABEL_13:
    sub_2752B26F8(0, &qword_2811ACF18, 0x277CD5DA0);
    sub_2752BDA88();
    __break(1u);
    return;
  }

  v9 = v11;
LABEL_5:
  v13 = *v4;
  if (v10)
  {
    v14 = v13[7];
    v15 = *(v14 + 8 * v9);
    *(v14 + 8 * v9) = a1;
  }

  else
  {
    sub_2752B44B4(v9, a2, a1, v13);

    v16 = a2;
  }
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

unint64_t sub_2752B4218()
{
  result = qword_2809BFBB8;
  if (!qword_2809BFBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BFBB8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MusicPlaybackError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MusicPlaybackError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2752B43F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_17();
  v5 = OUTLINED_FUNCTION_42();
  v6(v5);
  return a2;
}

uint64_t sub_2752B4450(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2752B44B4(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_2752B44F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_2752B26F8(0, &qword_2811ACF18, 0x277CD5DA0);
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_2752BD8B8();

    if (v8)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_2752B45D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2752B4630(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_43();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2752B4674(uint64_t a1, void *a2)
{
  v3 = sub_2752BD818();

  [a2 setStoreIDs_];
}

uint64_t sub_2752B46E0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_17();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_2_0(unint64_t *a1)
{

  return sub_2752B4630(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_7_0()
{

  return sub_2752BD6C8();
}

double OUTLINED_FUNCTION_12_0()
{
  *(v0 - 144) = 0;
  result = 0.0;
  *(v0 - 176) = 0u;
  *(v0 - 160) = 0u;
  return result;
}

double OUTLINED_FUNCTION_14()
{
  result = 0.0;
  *(v0 - 176) = 0u;
  *(v0 - 160) = 0u;
  *(v0 - 144) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_20(uint64_t a1)
{

  return sub_2752BDA08();
}

double OUTLINED_FUNCTION_22()
{
  *(v0 - 96) = 0;
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  return result;
}

void *OUTLINED_FUNCTION_54(uint64_t a1)
{

  return sub_2752BD558();
}

double OUTLINED_FUNCTION_56()
{
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  *(v0 - 96) = 0;
  return result;
}

void OUTLINED_FUNCTION_61(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 - 144) = a1;

  sub_2752AB5B0(v5, v6 - 144, a4, a5);
}

uint64_t *OUTLINED_FUNCTION_70(uint64_t a1)
{
  *(v1 - 88) = a1;

  return __swift_allocate_boxed_opaque_existential_1((v1 - 120));
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

uint64_t sub_2752B4DE0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_2752BD338();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_2752BD328();
}

uint64_t type metadata accessor for MusicPlaybackIntentDescriptor(uint64_t a1)
{
  result = qword_2811ACFC0;
  if (!qword_2811ACFC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2752B4F40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFCC0, &qword_2752BE790);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_2752B7698(a1, &v6 - v3, &qword_2809BFCC0, &qword_2752BE790);
  return MusicPlaybackIntentDescriptor.playbackMetrics.setter(v4);
}

uint64_t MusicPlaybackIntentDescriptor.playbackMetrics.setter(uint64_t a1)
{
  v4 = sub_2752BD718();
  OUTLINED_FUNCTION_0_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_0();
  v10 = v9 - v8;
  v11 = sub_2752BD1E8();
  OUTLINED_FUNCTION_0_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_67();
  v15 = *(type metadata accessor for MusicPlaybackIntentDescriptor(0) + 20);
  sub_2752B5208(a1, v1 + v15);
  v16 = *v1;
  if (!__swift_getEnumTagSinglePayload(v1 + v15, 1, v11))
  {
    (*(v13 + 16))(v2, v1 + v15, v11);
    sub_2752BD1D8();
    v17 = v19;
    (*(v13 + 8))(v2, v11);
    if (!v17)
    {
      goto LABEL_3;
    }

    sub_2752BD708();
    sub_2752BD6F8();
    v21 = v20;

    (*(v6 + 8))(v10, v4);
    if (v21 >> 60 != 15)
    {
      OUTLINED_FUNCTION_18_0();
      v17 = sub_2752BD0C8();
      v22 = OUTLINED_FUNCTION_18_0();
      sub_2752B5278(v22, v23);
      goto LABEL_3;
    }
  }

  v17 = 0;
LABEL_3:
  [v16 setPlayActivityRecommendationData_];

  return sub_2752B46E0(a1, &qword_2809BFCC0, &qword_2752BE790);
}

uint64_t sub_2752B5208(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFCC0, &qword_2752BE790);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_2752B5278(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2752B528C(a1, a2);
  }

  return a1;
}

uint64_t sub_2752B528C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

void (*MusicPlaybackIntentDescriptor.playbackMetrics.modify(uint64_t *a1))(void ****a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = sub_2752BD718();
  v3[1] = v4;
  v5 = *(v4 - 8);
  v3[2] = v5;
  v3[3] = __swift_coroFrameAllocStub(*(v5 + 64));
  v6 = sub_2752BD1E8();
  v3[4] = v6;
  v7 = *(v6 - 8);
  v3[5] = v7;
  v3[6] = __swift_coroFrameAllocStub(*(v7 + 64));
  *(v3 + 14) = *(type metadata accessor for MusicPlaybackIntentDescriptor(0) + 20);
  return sub_2752B5400;
}

void sub_2752B5400(void ****a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[6];
    v4 = v2[3];
    goto LABEL_6;
  }

  v5 = *(v2 + 14);
  v6 = v2[4];
  v7 = *v2;
  v8 = **v2;
  if (!__swift_getEnumTagSinglePayload(*v2 + v5, 1, v6))
  {
    v11 = v2[5];
    v10 = v2[6];
    (v11[2])(v10, v7 + v5, v6);
    sub_2752BD1D8();
    v9 = v12;
    (v11[1])(v10, v6);
    if (!v9)
    {
      goto LABEL_5;
    }

    sub_2752BD708();
    v13 = sub_2752BD6F8();
    v15 = v14;

    v16 = OUTLINED_FUNCTION_18_0();
    v17(v16);
    if (v15 >> 60 != 15)
    {
      v9 = sub_2752BD0C8();
      sub_2752B5278(v13, v15);
      goto LABEL_5;
    }
  }

  v9 = 0;
LABEL_5:
  v3 = v2[6];
  v4 = v2[3];
  [v8 setPlayActivityRecommendationData_];

LABEL_6:
  free(v3);
  free(v4);

  free(v2);
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t MusicPlaybackIntentDescriptor.donate()()
{
  OUTLINED_FUNCTION_5();
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFAE8, &qword_2752BE2D0);
  OUTLINED_FUNCTION_18(v2);
  v1[4] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFAF0, &qword_2752BE2D8);
  OUTLINED_FUNCTION_18(v3);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2752B5674);
}

uint64_t sub_2752B5674()
{
  v1 = **(v0 + 24);
  [v1 repeatMode];
  sub_2752B5AFC();
  [v1 shuffleMode];
  sub_2752B5D2C();
  type metadata accessor for MusicPlaybackIntentDescriptor(0);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_2752B5764;

  return sub_2752A8774();
}

uint64_t sub_2752B5764()
{
  OUTLINED_FUNCTION_5();
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_2752B5910;
  }

  else
  {
    v2 = sub_2752B5874;
  }

  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_2752B5874()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[5];
  sub_2752B46E0(v0[4], &qword_2809BFAE8, &qword_2752BE2D0);
  sub_2752B46E0(v1, &qword_2809BFAF0, &qword_2752BE2D8);

  v2 = v0[1];

  return v2();
}

uint64_t sub_2752B5910()
{
  v18 = v0;
  if (qword_2811ACFD0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2811ACFD0);
  }

  v1 = v0[7];
  v2 = sub_2752BD338();
  __swift_project_value_buffer(v2, qword_2811AD270);
  v3 = v1;
  v4 = sub_2752BD318();
  v5 = sub_2752BD888();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[7];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136446210;
    v0[2] = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB00, &unk_2752BE300);
    v10 = sub_2752BD728();
    v12 = sub_2752B2160(v10, v11, &v17);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_2752A6000, v4, v5, "Unable to donate playback event due to %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    OUTLINED_FUNCTION_15_0();
    MEMORY[0x277C73820](v7, -1, -1);
  }

  v13 = v0[4];
  v14 = v0[5];
  swift_willThrow();
  sub_2752B46E0(v13, &qword_2809BFAE8, &qword_2752BE2D0);
  sub_2752B46E0(v14, &qword_2809BFAF0, &qword_2752BE2D8);

  v15 = v0[1];

  return v15();
}

uint64_t sub_2752B5AFC()
{
  OUTLINED_FUNCTION_20_0();
  v3 = sub_2752BD288();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_0();
  if (v2)
  {
LABEL_2:
    v5 = 1;
  }

  else
  {
    v5 = 1;
    switch(v1)
    {
      case -1:
        return __swift_storeEnumTagSinglePayload(v0, v5, 1, v3);
      case 0:
      case 1:
      case 2:
        v6 = OUTLINED_FUNCTION_11_1();
        v7(v6);
        v8 = OUTLINED_FUNCTION_19_0();
        v9(v8);
        v5 = 0;
        break;
      default:
        if (qword_2811ACFD0 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_2811ACFD0);
        }

        v11 = sub_2752BD338();
        __swift_project_value_buffer(v11, qword_2811AD270);
        v12 = sub_2752BD318();
        v13 = sub_2752BD888();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          v15 = swift_slowAlloc();
          v21 = v15;
          *v14 = 136446210;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFCE0, &qword_2752BE800);
          v16 = sub_2752BD728();
          v18 = sub_2752B2160(v16, v17, &v21);

          *(v14 + 4) = v18;
          OUTLINED_FUNCTION_21_0(&dword_2752A6000, v19, v20, "Unhandled value of MPCPlaybackIntentRepeatMode: %{public}s.");
          __swift_destroy_boxed_opaque_existential_1Tm(v15);
          MEMORY[0x277C73820](v15, -1, -1);
          OUTLINED_FUNCTION_15_0();
        }

        goto LABEL_2;
    }
  }

  return __swift_storeEnumTagSinglePayload(v0, v5, 1, v3);
}

uint64_t sub_2752B5D2C()
{
  OUTLINED_FUNCTION_20_0();
  v3 = sub_2752BD298();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_0();
  if (v2)
  {
LABEL_2:
    v5 = 1;
  }

  else
  {
    v5 = 1;
    switch(v1)
    {
      case -1:
        return __swift_storeEnumTagSinglePayload(v0, v5, 1, v3);
      case 0:
      case 1:
      case 2:
        v6 = OUTLINED_FUNCTION_11_1();
        v7(v6);
        v8 = OUTLINED_FUNCTION_19_0();
        v9(v8);
        v5 = 0;
        break;
      default:
        if (qword_2811ACFD0 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_2811ACFD0);
        }

        v11 = sub_2752BD338();
        __swift_project_value_buffer(v11, qword_2811AD270);
        v12 = sub_2752BD318();
        v13 = sub_2752BD888();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          v15 = swift_slowAlloc();
          v21 = v15;
          *v14 = 136446210;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFCD8, &qword_2752BE7F8);
          v16 = sub_2752BD728();
          v18 = sub_2752B2160(v16, v17, &v21);

          *(v14 + 4) = v18;
          OUTLINED_FUNCTION_21_0(&dword_2752A6000, v19, v20, "Unhandled value of MPCPlaybackIntentShuffleMode: %{public}s.");
          __swift_destroy_boxed_opaque_existential_1Tm(v15);
          MEMORY[0x277C73820](v15, -1, -1);
          OUTLINED_FUNCTION_15_0();
        }

        goto LABEL_2;
    }
  }

  return __swift_storeEnumTagSinglePayload(v0, v5, 1, v3);
}

uint64_t sub_2752B5F78()
{
  OUTLINED_FUNCTION_5();
  if (qword_2811ACF30 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  v2 = sub_2752BD248();
  *v1 = v0;
  v1[1] = sub_2752B6048;
  v3 = MEMORY[0x277D2A668];

  return MEMORY[0x282189470](v2, v3);
}

uint64_t sub_2752B6048()
{
  OUTLINED_FUNCTION_5();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t MusicPlaybackIntentDescriptor.init<A>(item:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = sub_2752BD8C8();
  v10 = OUTLINED_FUNCTION_18(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_67();
  sub_2752B75E8(a2, a2);
  v11 = *(a2 - 8);
  swift_allocObject();
  v12 = sub_2752BD838();
  (*(v11 + 16))(v13, a1, a2);
  v14 = sub_2752BD848();
  v20 = v12;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, a2);
  WitnessTable = swift_getWitnessTable();
  MusicPlaybackIntentDescriptor.init<A, B>(items:startingAt:)(&v20, v4, v14, a2, WitnessTable, a3, a4);
  return (*(v11 + 8))(a1, a2);
}

void *MusicPlaybackIntentDescriptor.init<A, B>(items:startingAt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v62 = a6;
  v59 = a5;
  v58 = a4;
  v70 = a2;
  v57 = a7;
  v9 = sub_2752BD8C8();
  OUTLINED_FUNCTION_0_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v52 - v14;
  OUTLINED_FUNCTION_4_0();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v19);
  v21 = &v52 - v20;
  sub_2752B7654();
  v22 = *(v17 + 16);
  v64 = a1;
  v53 = v22;
  v22(v21, a1, a3);
  v23 = *(v11 + 16);
  v61 = v9;
  v24 = v9;
  v25 = v62;
  v55 = v23;
  v23(v15, v70, v24);
  v63 = a3;
  v26 = a3;
  v27 = v58;
  v28 = v60;
  MPCPlaybackIntent.init<A, B>(for:startingAt:)(v21, v15, v26, v58, v59, v25);
  if (v28)
  {
    (*(v11 + 8))(v70, v61);
    return (*(v17 + 8))(v64, v63);
  }

  else
  {
    v52 = v29;
    v60 = v17;
    v31 = v11;
    v53(v54, v64, v63);
    v32 = v27;
    sub_2752BD858();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB40, &unk_2752BE7B0);
    v33 = sub_2752BD9A8();

    v65 = v33;
    v34 = v56;
    v35 = v70;
    v36 = v61;
    v55(v56, v70, v61);
    if (__swift_getEnumTagSinglePayload(v34, 1, v32) == 1)
    {
      v37 = *(v31 + 8);
      v37(v35, v36);
      v38 = OUTLINED_FUNCTION_4_1();
      v39(v38, v63);
      v37(v34, v36);
      v68 = 0;
      v67 = 0u;
      v66 = 0u;
    }

    else
    {
      *(&v67 + 1) = v32;
      v68 = v62;
      __swift_allocate_boxed_opaque_existential_1(&v66);
      OUTLINED_FUNCTION_17();
      (*(v40 + 32))();
      (*(v31 + 8))(v35, v36);
      v41 = OUTLINED_FUNCTION_4_1();
      v42(v41, v63);
    }

    v43 = v57;
    v44 = OUTLINED_FUNCTION_14_0();
    memcpy(v44, v45, v46);
    v47 = type metadata accessor for MusicPlaybackIntentDescriptor(0);
    sub_2752BD1E8();
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v48, v49, v50, v51);
    *v43 = v52;
    return memcpy(v43 + *(v47 + 24), __src, 0x51uLL);
  }
}

uint64_t MusicPlaybackIntentDescriptor.init(container:startingAt:playbackSource:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v34 = a3;
  v35 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB20, &qword_2752BE430);
  v9 = OUTLINED_FUNCTION_18(v8);
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - v10;
  v12 = a1[3];
  v13 = __swift_project_boxed_opaque_existential_1(a1, v12);
  v14 = sub_2752B7654();
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_67();
  (*(v16 + 16))(v4, v13, v12);
  sub_2752B7698(a2, v36, &qword_2809BFB10, &qword_2752BE310);
  sub_2752B7698(a3, v11, &qword_2809BFB20, &qword_2752BE430);
  v17 = v11;
  v18 = v14;
  MPCPlaybackIntent.init<A>(container:startingAt:playbackSource:)(v4, v36, v17, v12);
  v19 = OUTLINED_FUNCTION_47();
  v20 = type metadata accessor for MusicPlaybackIntentDescriptor(v19);
  v21 = v35;
  v22 = v35 + *(v20 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB28, &unk_2752BE438);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2752BE410;
  v25 = a1[3];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v25);
  *(v23 + 56) = v25;
  *(v23 + 64) = *(v24 + 8);
  __swift_allocate_boxed_opaque_existential_1((v23 + 32));
  OUTLINED_FUNCTION_17();
  (*(v26 + 16))();
  sub_2752B46E0(v34, &qword_2809BFB20, &qword_2752BE430);
  *v22 = v23;
  v27 = *(a2 + 16);
  *(v22 + 8) = *a2;
  *(v22 + 24) = v27;
  *(v22 + 5) = *(a2 + 32);
  v22[80] = 1;
  sub_2752BD1E8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  *v21 = v18;
  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

void *MusicPlaybackIntentDescriptor.init<A, B, C>(items:of:startingAt:playbackSource:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v67 = a8;
  v76 = a7;
  v74 = a4;
  v75 = a2;
  v77 = a1;
  v73 = a9;
  OUTLINED_FUNCTION_4_0();
  v15 = v14;
  v64 = a11;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5_0();
  v19 = v18 - v17;
  v20 = sub_2752BD8C8();
  OUTLINED_FUNCTION_0_0();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v24);
  v26 = &v61 - v25;
  v63 = sub_2752BD1A8();
  OUTLINED_FUNCTION_0_0();
  v62 = v27;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_5_0();
  v31 = v30 - v29;
  v32 = *(v22 + 16);
  v66 = v22 + 16;
  v65 = v32;
  v32(v26, a3, v20);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v26, 1, a6);
  v71 = a3;
  v70 = v20;
  v69 = v22;
  v61 = a10;
  if (EnumTagSinglePayload == 1)
  {
    (*(v22 + 8))(v26, v20);
    memset(__src, 0, 40);
  }

  else
  {
    *&__src[24] = a6;
    *&__src[32] = a10;
    __swift_allocate_boxed_opaque_existential_1(__src);
    OUTLINED_FUNCTION_17();
    (*(v34 + 32))();
  }

  v72 = v15;
  v35 = *(v15 + 16);
  v35(v19, v77, a5);
  sub_2752BD858();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB40, &unk_2752BE7B0);
  sub_2752BD9A8();
  v36 = a5;

  sub_2752BD128();

  sub_2752B46E0(__src, &qword_2809BFB10, &qword_2752BE310);
  sub_2752BD188();
  objc_opt_self();
  v37 = swift_dynamicCastObjCClass();
  if (v37)
  {
    v38 = v37;
    (*(v62 + 8))(v31, v63);
    v35(v19, v77, a5);
    sub_2752BD858();
    v39 = sub_2752BD9A8();

    v78 = v39;
    v40 = v68;
    v41 = v71;
    v42 = v70;
    v65(v68, v71, v70);
    if (__swift_getEnumTagSinglePayload(v40, 1, a6) == 1)
    {
      sub_2752B46E0(v74, &qword_2809BFB20, &qword_2752BE430);
      v43 = *(v69 + 8);
      v43(v41, v42);
      OUTLINED_FUNCTION_17();
      (*(v44 + 8))(v75);
      v45 = OUTLINED_FUNCTION_4_1();
      v46(v45, v36);
      v43(v40, v42);
      v81 = 0;
      v80 = 0u;
      v79 = 0u;
    }

    else
    {
      *(&v80 + 1) = a6;
      v81 = v61;
      __swift_allocate_boxed_opaque_existential_1(&v79);
      OUTLINED_FUNCTION_17();
      (*(v47 + 32))();
      sub_2752B46E0(v74, &qword_2809BFB20, &qword_2752BE430);
      (*(v69 + 8))(v41, v42);
      OUTLINED_FUNCTION_17();
      (*(v48 + 8))(v75);
      v49 = OUTLINED_FUNCTION_4_1();
      v50(v49, v36);
    }

    v51 = OUTLINED_FUNCTION_14_0();
    memcpy(v51, v52, v53);
    v54 = type metadata accessor for MusicPlaybackIntentDescriptor(0);
    sub_2752BD1E8();
    v55 = v73;
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v56, v57, v58, v59);
    *v55 = v38;
    return memcpy(v55 + *(v54 + 24), __src, 0x51uLL);
  }

  else
  {
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_13();
    result = sub_2752BDA08();
    __break(1u);
  }

  return result;
}

uint64_t MusicPlaybackIntentDescriptor.init(station:)@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = sub_2752B7654();
  static MPCPlaybackIntent.radioPlaybackIntent(for:)(a1);
  v5 = OUTLINED_FUNCTION_47();
  v6 = a2 + *(type metadata accessor for MusicPlaybackIntentDescriptor(v5) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB28, &unk_2752BE438);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2752BE410;
  v8 = sub_2752BD668();
  v9 = MEMORY[0x277CD84D8];
  *(v7 + 56) = v8;
  *(v7 + 64) = v9;
  __swift_allocate_boxed_opaque_existential_1((v7 + 32));
  OUTLINED_FUNCTION_17();
  (*(v10 + 32))();
  *v6 = v7;
  *(v6 + 8) = 0u;
  *(v6 + 24) = 0u;
  *(v6 + 5) = 0;
  v6[80] = 1;
  sub_2752BD1E8();
  OUTLINED_FUNCTION_33();
  result = __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  *a2 = v4;
  return result;
}

uint64_t MusicPlaybackIntentDescriptor.init(stationSeed:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  v6 = __swift_project_boxed_opaque_existential_1(a1, v4);
  v7 = sub_2752B7654();
  v8 = v4;
  v9 = v7;
  static MPCPlaybackIntent.radioPlaybackIntent<A>(from:)(v6, v8, v5, v7);
  if (v10)
  {
    v11 = OUTLINED_FUNCTION_47();
    v12 = a2 + *(type metadata accessor for MusicPlaybackIntentDescriptor(v11) + 24);
    sub_2752B76FC(a1, v12);
    v12[80] = 3;
    sub_2752BD1E8();
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    *a2 = v9;
  }

  else
  {
    sub_2752B2660();
    swift_allocError();
    *v17 = 2;
    swift_willThrow();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

void MusicPlaybackIntentDescriptor.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFCC8, &qword_2752BE7C0);
  v6 = OUTLINED_FUNCTION_18(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_67();
  v7 = sub_2752BD1A8();
  OUTLINED_FUNCTION_0_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_0();
  v13 = v12 - v11;
  sub_2752BD198();
  if (__swift_getEnumTagSinglePayload(v2, 1, v7) == 1)
  {
    sub_2752B46E0(v2, &qword_2809BFCC8, &qword_2752BE7C0);
    sub_2752B2660();
    swift_allocError();
    *v14 = 1;
    swift_willThrow();
  }

  else
  {
    v15 = OUTLINED_FUNCTION_18_0();
    v16(v15);
    v17 = a1;
    sub_2752BD188();
    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();
    if (v18)
    {
      v19 = v18;

      (*(v9 + 8))(v13, v7);
      v20 = type metadata accessor for MusicPlaybackIntentDescriptor(0);
      sub_2752BD1E8();
      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
      *a2 = v19;
      v25 = a2 + *(v20 + 24);
      *v25 = v17;
      memcpy(v25 + 8, __src, 0x48uLL);
      v25[80] = 0;
    }

    else
    {
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_13();
      sub_2752BDA08();
      __break(1u);
    }
  }
}

uint64_t MusicPlaybackIntentDescriptor.init(request:startingAt:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = a1[3];
  v7 = a1[4];
  v8 = __swift_project_boxed_opaque_existential_1(a1, v6);
  v9 = v6;
  v10 = v8;
  _s16MusicKitInternal0A15PlayableRequestP01_abC18_MediaPlaybackCoreE14playbackIntent16withStartingItemSo011MPCPlaybackJ0CSg0aB00daM0_pSg_tF_0(a2, v9, v7, v8);
  if (v11)
  {
    v12 = OUTLINED_FUNCTION_47();
    v13 = a3 + *(type metadata accessor for MusicPlaybackIntentDescriptor(v12) + 24);
    sub_2752B76FC(a1, v13);
    v14 = *(a2 + 16);
    *(v13 + 40) = *a2;
    *(v13 + 56) = v14;
    *(v13 + 9) = *(a2 + 32);
    v13[80] = 2;
    sub_2752BD1E8();
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    *a3 = v10;
  }

  else
  {
    sub_2752B2660();
    swift_allocError();
    *v19 = 1;
    swift_willThrow();
    sub_2752B46E0(a2, &qword_2809BFB10, &qword_2752BE310);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_2752B75E8(uint64_t a1, uint64_t a2)
{
  if (dynamic_cast_existential_0_class_conditional(a2, a2))
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFCD0, &qword_2752BE7F0);
  }

  else
  {

    return MEMORY[0x2821FDC00]();
  }
}

unint64_t sub_2752B7654()
{
  result = qword_2811ACF10;
  if (!qword_2811ACF10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2811ACF10);
  }

  return result;
}

uint64_t sub_2752B7698(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_17();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2752B76FC(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_17();
  (*v3)(a2);
  return a2;
}

void sub_2752B7784(uint64_t a1)
{
  sub_2752B7654();
  if (v1 <= 0x3F)
  {
    sub_2752B7810(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2752B7810(uint64_t a1)
{
  if (!qword_2811ACFD8)
  {
    sub_2752BD1E8();
    v1 = sub_2752BD8C8();
    if (!v2)
    {
      atomic_store(v1, &qword_2811ACFD8);
    }
  }
}

uint64_t dynamic_cast_existential_0_class_conditional(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void OUTLINED_FUNCTION_15_0()
{

  JUMPOUT(0x277C73820);
}

void OUTLINED_FUNCTION_21_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

id sub_2752B794C()
{
  v0 = sub_2752BD598();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2752BD5A8();
  v4 = (*(v1 + 88))(v3, v0);
  v5 = 0;
  if (v4 == *MEMORY[0x277CD7F60])
  {
    goto LABEL_16;
  }

  if (v4 == *MEMORY[0x277CD7F70])
  {
    v5 = 1;
LABEL_16:
    sub_2752B7BB0();
    v6 = sub_2752BD5B8();
    return sub_2752B7BF4(v6, v7, v5);
  }

  if (v4 == *MEMORY[0x277CD7F40])
  {
    v5 = 2;
    goto LABEL_16;
  }

  if (v4 == *MEMORY[0x277CD7F58])
  {
    v5 = 3;
    goto LABEL_16;
  }

  if (v4 == *MEMORY[0x277CD7F48])
  {
    v5 = 4;
    goto LABEL_16;
  }

  if (v4 == *MEMORY[0x277CD7F38])
  {
    v5 = 5;
    goto LABEL_16;
  }

  if (v4 == *MEMORY[0x277CD7F50])
  {
    v5 = 6;
    goto LABEL_16;
  }

  if (v4 == *MEMORY[0x277CD7F30])
  {
    v5 = 7;
    goto LABEL_16;
  }

  result = sub_2752BDA08();
  __break(1u);
  return result;
}

unint64_t sub_2752B7BB0()
{
  result = qword_2809BFCE8;
  if (!qword_2809BFCE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2809BFCE8);
  }

  return result;
}

id sub_2752B7BF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_2752BD6D8();

  v6 = [v4 initWithValue:v5 kind:a3];

  return v6;
}

id sub_2752B7C70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  OUTLINED_FUNCTION_4_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_0();
  v13 = v12 - v11;
  v14 = sub_2752BD5F8();
  OUTLINED_FUNCTION_4_0();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_5_0();
  v20 = v19 - v18;
  v21 = sub_2752B85F4();
  (*(v16 + 16))(v20, a1, v14);
  (*(v9 + 16))(v13, v4, a2);
  return sub_2752B8638(v13, v20, v21, a2, a3);
}

uint64_t sub_2752B7DE0()
{
  v1 = sub_2752BD5E8();
  OUTLINED_FUNCTION_4_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_0();
  v7 = v6 - v5;
  (*(v3 + 16))(v6 - v5, v0, v1);
  v8 = (*(v3 + 88))(v7, v1);
  v9 = 0;
  if (v8 == *MEMORY[0x277CD80D8])
  {
    return v9;
  }

  if (v8 == *MEMORY[0x277CD8050])
  {
    return 1;
  }

  if (v8 == *MEMORY[0x277CD80F0])
  {
    return 2;
  }

  if (v8 == *MEMORY[0x277CD8120])
  {
    return 3;
  }

  if (v8 == *MEMORY[0x277CD8058])
  {
    return 4;
  }

  if (v8 == *MEMORY[0x277CD8108])
  {
    return 5;
  }

  if (v8 == *MEMORY[0x277CD8060])
  {
    return 6;
  }

  if (v8 == *MEMORY[0x277CD8068])
  {
    return 7;
  }

  if (v8 == *MEMORY[0x277CD80E0])
  {
    return 9;
  }

  if (v8 == *MEMORY[0x277CD80C0])
  {
    return 11;
  }

  if (v8 == *MEMORY[0x277CD80F8])
  {
    return 12;
  }

  if (v8 == *MEMORY[0x277CD8038])
  {
    return 13;
  }

  if (v8 == *MEMORY[0x277CD8040])
  {
    return 14;
  }

  if (v8 == *MEMORY[0x277CD80C8])
  {
    return 15;
  }

  if (v8 == *MEMORY[0x277CD8110])
  {
    return 16;
  }

  if (v8 == *MEMORY[0x277CD8128])
  {
    return 17;
  }

  if (v8 == *MEMORY[0x277CD80A0])
  {
    return 18;
  }

  if (v8 == *MEMORY[0x277CD8070])
  {
    return 19;
  }

  if (v8 == *MEMORY[0x277CD80B8])
  {
    return 20;
  }

  if (v8 == *MEMORY[0x277CD80A8])
  {
    return 21;
  }

  if (v8 == *MEMORY[0x277CD80B0])
  {
    return 22;
  }

  if (v8 == *MEMORY[0x277CD8138])
  {
    return 24;
  }

  if (v8 == *MEMORY[0x277CD8078])
  {
    return 25;
  }

  if (v8 == *MEMORY[0x277CD8048])
  {
    return 26;
  }

  if (v8 == *MEMORY[0x277CD8080])
  {
    return 27;
  }

  if (v8 == *MEMORY[0x277CD80D0])
  {
    return 28;
  }

  if (v8 == *MEMORY[0x277CD8118])
  {
    return 29;
  }

  if (v8 == *MEMORY[0x277CD8088])
  {
    return 31;
  }

  if (v8 == *MEMORY[0x277CD80E8])
  {
    return 32;
  }

  if (v8 == *MEMORY[0x277CD8140])
  {
    return 33;
  }

  if (v8 == *MEMORY[0x277CD8130])
  {
    return 34;
  }

  if (v8 == *MEMORY[0x277CD8100])
  {
    return 35;
  }

  if (v8 == *MEMORY[0x277CD8090])
  {
    return 36;
  }

  if (v8 == *MEMORY[0x277CD8098])
  {
    return 37;
  }

  result = sub_2752BDA08();
  __break(1u);
  return result;
}

uint64_t sub_2752B82B0()
{
  v1 = v0;
  v2 = sub_2752BD5F8();
  OUTLINED_FUNCTION_4_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_0();
  v8 = v7 - v6;
  (*(v4 + 16))(v7 - v6, v1, v2);
  v9 = (*(v4 + 88))(v8, v2);
  v10 = 0;
  if (v9 == *MEMORY[0x277CD81C0])
  {
    return v10;
  }

  if (v9 == *MEMORY[0x277CD8170])
  {
    return 1;
  }

  if (v9 == *MEMORY[0x277CD8150])
  {
    return 2;
  }

  if (v9 == *MEMORY[0x277CD8188])
  {
    return 3;
  }

  if (v9 == *MEMORY[0x277CD8178])
  {
    return 4;
  }

  if (v9 == *MEMORY[0x277CD8160])
  {
    return 5;
  }

  if (v9 == *MEMORY[0x277CD8180])
  {
    return 6;
  }

  if (v9 == *MEMORY[0x277CD8158])
  {
    return 7;
  }

  if (v9 == *MEMORY[0x277CD8168])
  {
    return 8;
  }

  if (v9 == *MEMORY[0x277CD81B0])
  {
    return 9;
  }

  if (v9 == *MEMORY[0x277CD81A8])
  {
    return 10;
  }

  if (v9 == *MEMORY[0x277CD81A0])
  {
    return 11;
  }

  if (v9 == *MEMORY[0x277CD8148])
  {
    return 12;
  }

  if (v9 == *MEMORY[0x277CD8190])
  {
    return 13;
  }

  if (v9 == *MEMORY[0x277CD81B8])
  {
    return 14;
  }

  if (v9 == *MEMORY[0x277CD8198])
  {
    return 15;
  }

  sub_2752BD948();
  MEMORY[0x277C72FC0](0xD000000000000010, 0x80000002752BF830);
  sub_2752BD9B8();
  MEMORY[0x277C72FC0](0xD000000000000042, 0x80000002752BF850);
  result = sub_2752BDA08();
  __break(1u);
  return result;
}

unint64_t sub_2752B85F4()
{
  result = qword_2809BFCF0;
  if (!qword_2809BFCF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2809BFCF0);
  }

  return result;
}

id sub_2752B8638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a3;
  v8 = sub_2752BD478();
  v27 = *(v8 - 8);
  v28 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_2752BD5E8();
  v11 = *(v26 - 8);
  v12 = MEMORY[0x28223BE20](v26);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(a4 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 32))(v16, a1, a4);
  sub_2752BD618();
  sub_2752BD608();
  v18 = sub_2752B7DE0();
  (*(v11 + 8))(v14, v26);
  sub_2752BD568();
  v19 = sub_2752B8B94(v18, a2);
  (*(v27 + 8))(v10, v28);
  v20 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v21 = sub_2752BD698();

  v22 = [v20 initWithIdentifierSet:v19 modelObjectType:v18 storageDictionary:v21];
  swift_unknownObjectRelease();

  v23 = sub_2752BD5F8();
  (*(*(v23 - 8) + 8))(a2, v23);
  (*(v29 + 8))(v16, a4);
  return v22;
}

uint64_t sub_2752B895C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v31 = MEMORY[0x277D84F90];
  sub_2752B9058(0, v1, 0);
  v2 = v31;
  result = sub_2752B9428(v3);
  v7 = result;
  v8 = 0;
  v9 = v3 + 56;
  v25 = v3 + 64;
  v26 = v3 + 56;
  v27 = v3;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v7 < 1 << *(v3 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      if (*(v3 + 36) != v5)
      {
        goto LABEL_25;
      }

      v30 = v6;
      v28 = v8;
      v29 = v5;
      v11 = (*(v3 + 48) + 16 * v7);
      v12 = *v11;
      v13 = v11[1];
      v15 = *(v31 + 16);
      v14 = *(v31 + 24);

      if (v15 >= v14 >> 1)
      {
        result = sub_2752B9058((v14 > 1), v15 + 1, 1);
      }

      *(v31 + 16) = v15 + 1;
      v16 = v31 + 16 * v15;
      *(v16 + 32) = v12;
      *(v16 + 40) = v13;
      if (v30)
      {
        goto LABEL_29;
      }

      v9 = v26;
      v3 = v27;
      v17 = 1 << *(v27 + 32);
      if (v7 >= v17)
      {
        goto LABEL_26;
      }

      v18 = *(v26 + 8 * v10);
      if ((v18 & (1 << v7)) == 0)
      {
        goto LABEL_27;
      }

      if (*(v27 + 36) != v29)
      {
        goto LABEL_28;
      }

      v19 = v18 & (-2 << (v7 & 0x3F));
      if (v19)
      {
        v17 = __clz(__rbit64(v19)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v10 << 6;
        v21 = v10 + 1;
        v22 = (v25 + 8 * v10);
        while (v21 < (v17 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_2752B9468(v7, v29, 0);
            v17 = __clz(__rbit64(v23)) + v20;
            goto LABEL_19;
          }
        }

        result = sub_2752B9468(v7, v29, 0);
      }

LABEL_19:
      v8 = v28 + 1;
      if (v28 + 1 == v1)
      {
        return v2;
      }

      v6 = 0;
      v5 = *(v27 + 36);
      v7 = v17;
      if (v17 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

id sub_2752B8B94(id a1, uint64_t a2)
{
  v52 = a2;
  v53 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFCF8, &qword_2752BE808);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v45 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFBF8, &qword_2752BE5E8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v45 - v9;
  sub_2752BD438();
  v11 = sub_2752BD5C8();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_2752B46E0(v10, &qword_2809BFBF8, &qword_2752BE5E8);
    v55 = 0;
  }

  else
  {
    v55 = sub_2752B794C();
    OUTLINED_FUNCTION_17();
    (*(v12 + 8))(v10, v11);
  }

  sub_2752BD458();
  if (v13)
  {
    v54 = sub_2752BD6D8();
  }

  else
  {
    v54 = 0;
  }

  sub_2752BD3F8();
  if (v14)
  {
    v51 = sub_2752BD6D8();
  }

  else
  {
    v51 = 0;
  }

  sub_2752BD428();
  if (v15)
  {
    v50 = sub_2752BD6D8();
  }

  else
  {
    v50 = 0;
  }

  sub_2752BD3E8();
  if (v16)
  {
    v49 = sub_2752BD6D8();
  }

  else
  {
    v49 = 0;
  }

  sub_2752BD3D8();
  if (v17)
  {
    v48 = sub_2752BD6D8();
  }

  else
  {
    v48 = 0;
  }

  sub_2752BD3A8();
  if (v18)
  {
    v47 = sub_2752BD6D8();
  }

  else
  {
    v47 = 0;
  }

  sub_2752BD3C8();
  v19 = sub_2752BD388();
  if (__swift_getEnumTagSinglePayload(v7, 1, v19) == 1)
  {
    sub_2752B46E0(v7, &qword_2809BFCF8, &qword_2752BE808);
    v46 = 0;
  }

  else
  {
    v46 = sub_2752B9474();
    OUTLINED_FUNCTION_17();
    (*(v20 + 8))(v7, v19);
  }

  sub_2752BD3B8();
  if (v21)
  {
    v22 = sub_2752BD6D8();
  }

  else
  {
    v22 = 0;
  }

  sub_2752BD408();
  if (__swift_getEnumTagSinglePayload(v5, 1, v19) == 1)
  {
    sub_2752B46E0(v5, &qword_2809BFCF8, &qword_2752BE808);
    v23 = 0;
  }

  else
  {
    v23 = sub_2752B9474();
    OUTLINED_FUNCTION_17();
    (*(v24 + 8))(v5, v19);
  }

  sub_2752BD418();
  if (v25)
  {
    v26 = sub_2752BD6D8();
  }

  else
  {
    v26 = 0;
  }

  sub_2752BD398();
  if (v27)
  {
    v28 = sub_2752BD6D8();
  }

  else
  {
    v28 = 0;
  }

  v29 = objc_opt_self();
  v30 = sub_2752BD448();
  v31 = sub_2752B895C(v30);

  v32 = sub_2752B82B0();
  v44 = v29;
  v43 = v31;
  *&v42 = v22;
  *(&v42 + 1) = v23;
  v33 = v22;
  v35 = v50;
  v34 = v51;
  v36 = v49;
  v37 = v23;
  v39 = v47;
  v38 = v48;
  v40 = v46;
  v53 = sub_2752B934C(v55, v54, v51, v50, v49, v48, v47, v46, v42, v26, v28, v43, v53, v32, v44);

  return v53;
}

char *sub_2752B9058(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2752B9098(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2752B9078(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2752B9198(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2752B9098(void *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 3);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFD00, &qword_2752BE810);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_2752BC98C(a4 + 32, v8, (v10 + 32));
        *(a4 + 2) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_2752B9198(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFD08, &qword_2752BE818);
  v10 = *(sub_2752BD478() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_2752BD478() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_2752BC9B8(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

id sub_2752B934C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  v18 = sub_2752BD818();

  v19 = [a15 identifierSetWithCatalogID:a1 libraryID:a2 cloudAlbumLibraryID:a3 cloudID:a4 reportingAdamID:a5 purchasedAdamID:a6 assetAdamID:a7 deviceLocalID:a8 occurrenceID:a9 containedDeviceLocalID:a10 syncID:a11 playbackID:v18 formerIDs:a13 modelObjectType:a14 source:?];

  return v19;
}

uint64_t sub_2752B9468(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_2752B9474()
{
  result = sub_2752BD378();
  v2 = v1;
  v3 = HIBYTE(v1) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

    goto LABEL_71;
  }

  if ((v2 & 0x1000000000000000) != 0)
  {
    v7 = sub_2752B97F0(result, v2, 10);
    v23 = v26;
LABEL_70:

    if ((v23 & 1) == 0)
    {
LABEL_72:
      sub_2752B9D78();
      v24 = sub_2752BD368();
      return sub_2752B9704(v7, v24, v25);
    }

LABEL_71:
    v7 = 0;
    goto LABEL_72;
  }

  if ((v2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_2752BD958();
    }

    v6 = *result;
    if (v6 == 43)
    {
      if (v4 >= 1)
      {
        if (v4 != 1)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              OUTLINED_FUNCTION_1_1();
              if (!v9 & v8)
              {
                goto LABEL_68;
              }

              OUTLINED_FUNCTION_0_1();
              if (!v9)
              {
                goto LABEL_68;
              }

              v7 = v16 + v15;
              if (__OFADD__(v16, v15))
              {
                goto LABEL_68;
              }

              OUTLINED_FUNCTION_2_1();
              if (v9)
              {
                goto LABEL_69;
              }
            }
          }

          goto LABEL_59;
        }

        goto LABEL_68;
      }

      goto LABEL_78;
    }

    if (v6 != 45)
    {
      if (v4)
      {
        v7 = 0;
        if (result)
        {
          while (1)
          {
            v19 = *result - 48;
            if (v19 > 9)
            {
              goto LABEL_68;
            }

            v20 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              goto LABEL_68;
            }

            v7 = v20 + v19;
            if (__OFADD__(v20, v19))
            {
              goto LABEL_68;
            }

            ++result;
            if (!--v4)
            {
              goto LABEL_59;
            }
          }
        }

        goto LABEL_59;
      }

LABEL_68:
      v7 = 0;
      v12 = 1;
      goto LABEL_69;
    }

    if (v4 >= 1)
    {
      if (v4 != 1)
      {
        v7 = 0;
        if (result)
        {
          while (1)
          {
            OUTLINED_FUNCTION_1_1();
            if (!v9 & v8)
            {
              goto LABEL_68;
            }

            OUTLINED_FUNCTION_0_1();
            if (!v9)
            {
              goto LABEL_68;
            }

            v7 = v11 - v10;
            if (__OFSUB__(v11, v10))
            {
              goto LABEL_68;
            }

            OUTLINED_FUNCTION_2_1();
            if (v9)
            {
              goto LABEL_69;
            }
          }
        }

LABEL_59:
        v12 = 0;
LABEL_69:
        v23 = v12;
        goto LABEL_70;
      }

      goto LABEL_68;
    }

    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  if (result != 43)
  {
    if (result != 45)
    {
      if (v3)
      {
        while (1)
        {
          OUTLINED_FUNCTION_1_1();
          if (!v9 & v8)
          {
            break;
          }

          OUTLINED_FUNCTION_0_1();
          if (!v9)
          {
            break;
          }

          v7 = v22 + v21;
          if (__OFADD__(v22, v21))
          {
            break;
          }

          OUTLINED_FUNCTION_2_1();
          if (v9)
          {
            goto LABEL_69;
          }
        }
      }

      goto LABEL_68;
    }

    if (v3)
    {
      if (v3 != 1)
      {
        OUTLINED_FUNCTION_3_1();
        while (1)
        {
          OUTLINED_FUNCTION_1_1();
          if (!v9 & v8)
          {
            break;
          }

          OUTLINED_FUNCTION_0_1();
          if (!v9)
          {
            break;
          }

          v7 = v14 - v13;
          if (__OFSUB__(v14, v13))
          {
            break;
          }

          OUTLINED_FUNCTION_2_1();
          if (v9)
          {
            goto LABEL_69;
          }
        }
      }

      goto LABEL_68;
    }

    goto LABEL_77;
  }

  if (v3)
  {
    if (v3 != 1)
    {
      OUTLINED_FUNCTION_3_1();
      while (1)
      {
        OUTLINED_FUNCTION_1_1();
        if (!v9 & v8)
        {
          break;
        }

        OUTLINED_FUNCTION_0_1();
        if (!v9)
        {
          break;
        }

        v7 = v18 + v17;
        if (__OFADD__(v18, v17))
        {
          break;
        }

        OUTLINED_FUNCTION_2_1();
        if (v9)
        {
          goto LABEL_69;
        }
      }
    }

    goto LABEL_68;
  }

LABEL_79:
  __break(1u);
  return result;
}

id sub_2752B9704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_2752BD6D8();

  v6 = [v4 initWithValue:a1 databaseID:v5];

  return v6;
}

void *sub_2752B9780(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFBF0, &qword_2752BE5E0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

unsigned __int8 *sub_2752B97F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_2752BD7A8();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_2752B9DBC(result, v5);
    v36 = v35;

    v7 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_2752BD958();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v20 = v8 - 1;
        if (v8 != 1)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            v14 = 0;
            v24 = result + 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v14 * a3;
              if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v14 = v27 + (v25 + v26);
              if (__OFADD__(v27, (v25 + v26)))
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v18 = v14;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          v31 = 0;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 != (v31 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if (__OFADD__(v34, (v32 + v33)))
            {
              goto LABEL_126;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34 + (v32 + v33);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v14 * a3;
            if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v14 = v19 - (v16 + v17);
            if (__OFSUB__(v19, (v16 + v17)))
            {
              goto LABEL_126;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
LABEL_127:

        return v18;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = HIBYTE(v7) & 0xF;
  v62 = v6;
  v63 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v39 = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v62;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if (__OFADD__(v61, (v59 + v60)))
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v62 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if (__OFSUB__(v46, (v44 + v45)))
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v39 = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v62 + 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if (__OFADD__(v54, (v52 + v53)))
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unint64_t sub_2752B9D78()
{
  result = qword_2809BFD10;
  if (!qword_2809BFD10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2809BFD10);
  }

  return result;
}

uint64_t sub_2752B9DBC(unint64_t a1, unint64_t a2)
{
  v2 = sub_2752B9E28(sub_2752B9E24, 0, a1, a2);
  v6 = sub_2752B9E5C(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_2752B9E28(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3;
  }

  v5 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  return MEMORY[0x2821FBFB0](15, v5 | (v4 << 16));
}

uint64_t sub_2752B9E5C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_2752BD8D8();
    if (!v9 || (v10 = v9, v11 = sub_2752B9780(v9, 0), v12 = sub_2752B9FBC(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_2752BD738();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_2752BD738();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_2752BD958();
LABEL_4:

  return sub_2752BD738();
}

unint64_t sub_2752B9FBC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_2752BA1CC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_2752BD788();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_2752BD958();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_2752BA1CC(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_2752BD768();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

unint64_t sub_2752BA1CC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_2752BD798();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x277C72FF0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

id MPCPlayerResponse.playState(for:)(uint64_t a1)
{
  return sub_2752BA80C(a1, MEMORY[0x277CD8238], MEMORY[0x277CD8368]);
}

{
  v3 = v1;
  v43 = a1;
  v4 = sub_2752BD5F8();
  OUTLINED_FUNCTION_0_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_2_2();
  v8 = sub_2752BD478();
  OUTLINED_FUNCTION_0_0();
  v42 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_0();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFD18, &unk_2752BE820);
  MEMORY[0x28223BE20](v14 - 8);
  OUTLINED_FUNCTION_6_0();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v41 - v19;
  v44 = v3;
  v21 = [v3 tracklist];
  v22 = [v21 playingItem];

  if (!v22)
  {
    return 0;
  }

  v23 = [v22 metadataObject];

  if (!v23)
  {
    return 0;
  }

  v24 = [v44 tracklist];
  v25 = [v24 playingItemIndexPath];

  if (v25)
  {
    sub_2752BD0D8();

    v26 = sub_2752BD0F8();
    v27 = 0;
  }

  else
  {
    v26 = sub_2752BD0F8();
    v27 = 1;
  }

  __swift_storeEnumTagSinglePayload(v17, v27, 1, v26);
  sub_2752BA714(v17, v20);
  sub_2752BD0F8();
  if (__swift_getEnumTagSinglePayload(v20, 1, v26) == 1)
  {

    sub_2752BA784(v20);
    return 0;
  }

  sub_2752BD0E8();
  OUTLINED_FUNCTION_17();
  (*(v28 + 8))(v20, v26);
  sub_2752BD648();
  sub_2752BD568();
  (*(v6 + 104))(v2, *MEMORY[0x277CD8198], v4);
  sub_2752B8B94(0x1C, v2);
  v29 = OUTLINED_FUNCTION_5_1();
  v30(v29);
  (*(v42 + 8))(v13, v8);
  objc_opt_self();
  v31 = swift_dynamicCastObjCClass();
  if (!v31)
  {

    swift_unknownObjectRelease();
    return 0;
  }

  v32 = v31;
  v33 = [v23 identifiers];
  v34 = [v33 intersectsSet_];

  if (!v34)
  {
    v36 = [v23 flattenedGenericObject];
    if (v36)
    {
      v37 = v36;
      v38 = [v36 identifiers];
      v39 = [v38 intersectsSet_];

      if (v39)
      {
        v35 = [v44 state];

        swift_unknownObjectRelease();
        return v35;
      }
    }

    swift_unknownObjectRelease();

    return 0;
  }

  v35 = [v44 state];

  swift_unknownObjectRelease();
  return v35;
}

{
  return sub_2752BA80C(a1, MEMORY[0x277CD7E58], MEMORY[0x277CD8350]);
}

uint64_t sub_2752BA714(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFD18, &unk_2752BE820);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2752BA784(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFD18, &unk_2752BE820);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_2752BA80C(uint64_t a1, void (*a2)(uint64_t), unsigned int *a3)
{
  v6 = sub_2752BD648();
  OUTLINED_FUNCTION_0_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5_0();
  v10 = OUTLINED_FUNCTION_2_2();
  a2(v10);
  OUTLINED_FUNCTION_17();
  v11 = OUTLINED_FUNCTION_5_1();
  v12(v11);
  (*(v8 + 104))(v3, *a3, v6);
  v13 = MPCPlayerResponse.playState(for:)(v3);
  (*(v8 + 8))(v3, v6);
  return v13;
}

id MPCPlayerResponse.playState(for:in:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v58 = a2;
  v4 = sub_2752BD5F8();
  OUTLINED_FUNCTION_0_0();
  v60 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_0();
  v9 = v8 - v7;
  v10 = sub_2752BD478();
  OUTLINED_FUNCTION_0_0();
  v59 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5_0();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFD18, &unk_2752BE820);
  MEMORY[0x28223BE20](v16 - 8);
  OUTLINED_FUNCTION_6_0();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v53 - v21;
  v23 = [v3 tracklist];
  v24 = [v23 playingItem];

  if (!v24)
  {
    return 0;
  }

  v25 = [v24 metadataObject];

  if (!v25)
  {
    return 0;
  }

  v57 = v25;
  v26 = [v3 tracklist];
  v27 = [v26 playingItemIndexPath];

  if (v27)
  {
    sub_2752BD0D8();

    v28 = sub_2752BD0F8();
    v29 = 0;
  }

  else
  {
    v28 = sub_2752BD0F8();
    v29 = 1;
  }

  __swift_storeEnumTagSinglePayload(v19, v29, 1, v28);
  sub_2752BA714(v19, v22);
  sub_2752BD0F8();
  if (__swift_getEnumTagSinglePayload(v22, 1, v28) == 1)
  {

    sub_2752BA784(v22);
    return 0;
  }

  v54 = v3;
  v53 = sub_2752BD0E8();
  OUTLINED_FUNCTION_17();
  (*(v30 + 8))(v22, v28);
  sub_2752BD648();
  sub_2752BD568();
  v31 = v60;
  v32 = v60[13];
  v56 = *MEMORY[0x277CD8198];
  v55 = v32;
  v32(v9);
  v33 = sub_2752B8B94(0x1C, v9);
  v34 = v31[1];
  v34(v9, v4);
  v35 = *(v59 + 8);
  v35(v15, v10);
  objc_opt_self();
  v36 = swift_dynamicCastObjCClass();
  if (!v36)
  {

LABEL_22:
    swift_unknownObjectRelease();
    return 0;
  }

  v59 = v36;
  v60 = v33;
  sub_2752BD638();
  sub_2752BD568();
  v55(v9, v56, v4);
  sub_2752B8B94(0, v9);
  v34(v9, v4);
  v35(v15, v10);
  objc_opt_self();
  v37 = swift_dynamicCastObjCClass();
  if (!v37)
  {

    swift_unknownObjectRelease();
    goto LABEL_22;
  }

  v38 = v37;
  v39 = [v54 tracklist];
  v40 = [v39 items];

  v41 = [v40 sectionAtIndex_];
  v42 = [v41 metadataObject];

  v43 = v57;
  v44 = [v57 identifiers];
  LODWORD(v40) = [v44 intersectsSet_];

  if (!v40)
  {
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    return 0;
  }

  if (!v42)
  {

    goto LABEL_21;
  }

  v45 = [v42 type];
  v46 = v57;
  if (v45 != 2 || (v47 = [v42 album]) == 0)
  {

LABEL_21:
    swift_unknownObjectRelease();
    goto LABEL_22;
  }

  v48 = v47;
  v49 = [v47 identifiers];
  v50 = [v49 intersectsSet_];

  if ((v50 & 1) == 0)
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    return 0;
  }

  v51 = [v54 state];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v51;
}

{
  v62 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFD18, &unk_2752BE820);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_6_0();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v55 - v9;
  v11 = sub_2752BD5F8();
  OUTLINED_FUNCTION_0_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_2_2();
  v64 = sub_2752BD478();
  OUTLINED_FUNCTION_0_0();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_5_0();
  v20 = v19 - v18;
  v63 = v2;
  v21 = [v2 tracklist];
  v22 = [v21 playingItem];

  if (!v22)
  {
    return 0;
  }

  v23 = [v22 metadataObject];

  if (!v23)
  {
    return 0;
  }

  v24 = v23;
  sub_2752BD678();
  sub_2752BD568();
  v25 = *(v13 + 104);
  v58 = *MEMORY[0x277CD8198];
  v59 = v13 + 104;
  v57 = v25;
  v25(v3);
  v26 = sub_2752B8B94(0x13, v3);
  v27 = OUTLINED_FUNCTION_5_1();
  v56 = v28;
  v28(v27);
  v29 = *(v16 + 8);
  v60 = v16 + 8;
  v29(v20, v64);
  v30 = v29;
  objc_opt_self();
  v31 = swift_dynamicCastObjCClass();
  if (v31)
  {
    v32 = v31;
    v61 = v26;
    v33 = v24;
    v34 = [v24 identifiers];
    LODWORD(v32) = [v34 intersectsSet_];

    if (v32)
    {
      v55 = v33;
      v35 = [v63 tracklist];
      v36 = [v35 playingItemIndexPath];

      if (v36)
      {
        sub_2752BD0D8();

        v37 = 0;
      }

      else
      {
        v37 = 1;
      }

      v40 = sub_2752BD0F8();
      __swift_storeEnumTagSinglePayload(v7, v37, 1, v40);
      sub_2752BA714(v7, v10);
      if (__swift_getEnumTagSinglePayload(v10, 1, v40) == 1)
      {

        swift_unknownObjectRelease();
        sub_2752BA784(v10);
        return 0;
      }

      v41 = sub_2752BD0E8();
      OUTLINED_FUNCTION_17();
      (*(v42 + 8))(v10, v40);
      v43 = [v63 tracklist];
      v44 = [v43 items];

      v45 = [v44 sectionAtIndex_];
      v46 = [v45 metadataObject];

      if (v46)
      {
        v47 = [v46 type];
        v48 = v55;
        if (v47 != 4 || (v49 = [v46 playlist]) == 0)
        {

          swift_unknownObjectRelease();
          return 0;
        }

        v50 = v49;
        sub_2752BD688();
        sub_2752BD568();
        v57(v3, v58, v11);
        sub_2752B8B94(0x11, v3);
        v51 = OUTLINED_FUNCTION_5_1();
        v56(v51);
        v30(v20, v64);
        objc_opt_self();
        v52 = swift_dynamicCastObjCClass();
        if (v52)
        {
          v53 = v52;
          v54 = [v50 identifiers];
          LODWORD(v53) = [v54 intersectsSet_];

          if (v53)
          {
            v38 = [v63 state];

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            return v38;
          }
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {
    }
  }

  else
  {
  }

  swift_unknownObjectRelease();
  return 0;
}

uint64_t MusicPlaybackIntentDescriptor.init(item:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB50, &qword_2752BE468);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB58, &qword_2752BE470);
  v7 = sub_2752BD118();
  OUTLINED_FUNCTION_4_0();
  v9 = v8;
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2752BE410;
  (*(v9 + 16))(v11 + v10, a1, v7);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  sub_2752BB6F4(v11, v6, a2);
  return (*(v9 + 8))(a1, v7);
}

uint64_t sub_2752BB6F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v49 = a3;
  v5 = sub_2752BD118();
  v48 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB50, &qword_2752BE468);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v43 - v12;
  sub_2752B7654();
  sub_2752BC04C(a2, v13, &qword_2809BFB50, &qword_2752BE468);

  v15 = v57;
  sub_2752AD898(v14, v13, v16, v17, v18, v19, v20, v21, v43, v44, v45, v46, v47, v48, v49, v50, v51, *(&v51 + 1), v52, *(&v52 + 1));
  if (v15)
  {
    sub_2752AA2E8(a2, &qword_2809BFB50, &qword_2752BE468);
  }

  v24 = v22;
  v25 = v49;
  v46 = v11;
  v47 = a2;
  v26 = *(a1 + 16);
  if (v26)
  {
    v44 = v22;
    v45 = 0;
    v27 = *(v48 + 16);
    v28 = *(v48 + 80);
    v43 = a1;
    v29 = a1 + ((v28 + 32) & ~v28);
    v30 = (v48 + 8);
    v57 = MEMORY[0x277D84F90];
    v31 = *(v48 + 72);
    v50 = v27;
    while (1)
    {
      v27(v7, v29, v5);
      sub_2752BD108();
      (*v30)(v7, v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB70, &qword_2752BE488);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB40, &unk_2752BE7B0);
      if (swift_dynamicCast())
      {
        if (*(&v52 + 1))
        {
          sub_2752A7E00(&v51, &v54);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v57 = sub_2752BC854(0, v57[2] + 1, 1, v57);
          }

          v33 = v57[2];
          v32 = v57[3];
          if (v33 >= v32 >> 1)
          {
            v57 = sub_2752BC854((v32 > 1), v33 + 1, 1, v57);
          }

          v34 = v57;
          v57[2] = v33 + 1;
          sub_2752A7E00(&v54, &v34[5 * v33 + 4]);
          v27 = v50;
          goto LABEL_14;
        }
      }

      else
      {
        v53 = 0;
        v51 = 0u;
        v52 = 0u;
      }

      sub_2752AA2E8(&v51, &qword_2809BFB10, &qword_2752BE310);
LABEL_14:
      v29 += v31;
      if (!--v26)
      {

        v35 = v48;
        v36 = v49;
        v24 = v44;
        goto LABEL_17;
      }
    }
  }

  v57 = MEMORY[0x277D84F90];
  v35 = v48;
  v36 = v25;
LABEL_17:
  v38 = v46;
  v37 = v47;
  sub_2752BC04C(v47, v46, &qword_2809BFB50, &qword_2752BE468);
  if (__swift_getEnumTagSinglePayload(v38, 1, v5) == 1)
  {
    sub_2752AA2E8(v37, &qword_2809BFB50, &qword_2752BE468);
    sub_2752AA2E8(v38, &qword_2809BFB50, &qword_2752BE468);
    v54 = 0u;
    v55 = 0u;
    v56 = 0;
  }

  else
  {
    sub_2752BD108();
    sub_2752AA2E8(v37, &qword_2809BFB50, &qword_2752BE468);
    (*(v35 + 8))(v38, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB70, &qword_2752BE488);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB40, &unk_2752BE7B0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v56 = 0;
      v54 = 0u;
      v55 = 0u;
    }
  }

  v39 = type metadata accessor for MusicPlaybackIntentDescriptor(0);
  v40 = v36 + *(v39 + 24);
  *v40 = v57;
  sub_2752BC04C(&v54, (v40 + 8), &qword_2809BFB10, &qword_2752BE310);
  v40[80] = 1;
  v41 = *(v39 + 20);
  v42 = sub_2752BD1E8();
  __swift_storeEnumTagSinglePayload(v36 + v41, 1, 1, v42);
  *v36 = v24;
  return sub_2752AA2E8(&v54, &qword_2809BFB10, &qword_2752BE310);
}

uint64_t MusicPlaybackIntentDescriptor.init<A>(items:startingAt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v50 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB50, &qword_2752BE468);
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_6_0();
  v51 = v11 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v47 - v14;
  OUTLINED_FUNCTION_4_0();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2752B7654();
  v21 = *(v17 + 16);
  v55 = a1;
  v21(v20, a1, a3);
  sub_2752BC04C(a2, v15, &qword_2809BFB50, &qword_2752BE468);
  MPCPlaybackIntent.init<A>(for:startingAt:)(v20, v15, a3, a4, v22, v23, v24, v25, v47, v48, v49, v50, v51, v52[0], v52[1], v52[2], v52[3], v52[4], v53[0], v53[1]);
  if (v5)
  {
    sub_2752AA2E8(a2, &qword_2809BFB50, &qword_2752BE468);
    v27 = OUTLINED_FUNCTION_2_3();
    return v28(v27);
  }

  else
  {
    v49 = v26;
    v30 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB40, &unk_2752BE7B0);
    v48 = sub_2752BD808();
    v31 = v51;
    sub_2752BC04C(a2, v51, &qword_2809BFB50, &qword_2752BE468);
    v32 = sub_2752BD118();
    if (__swift_getEnumTagSinglePayload(v31, 1, v32) == 1)
    {
      OUTLINED_FUNCTION_4_2();
      sub_2752AA2E8(v33, v34, v35);
      v36 = OUTLINED_FUNCTION_2_3();
      v37(v36);
      OUTLINED_FUNCTION_4_2();
      sub_2752AA2E8(v38, v39, v40);
      OUTLINED_FUNCTION_5_2();
      v54 = 0;
    }

    else
    {
      sub_2752BD108();
      sub_2752AA2E8(a2, &qword_2809BFB50, &qword_2752BE468);
      v41 = OUTLINED_FUNCTION_2_3();
      v42(v41);
      (*(*(v32 - 8) + 8))(v31, v32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB70, &qword_2752BE488);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v54 = 0;
        OUTLINED_FUNCTION_5_2();
      }
    }

    v43 = type metadata accessor for MusicPlaybackIntentDescriptor(0);
    v44 = v30 + *(v43 + 24);
    *v44 = v48;
    sub_2752BC04C(v53, (v44 + 8), &qword_2809BFB10, &qword_2752BE310);
    v44[80] = 1;
    v45 = *(v43 + 20);
    v46 = sub_2752BD1E8();
    __swift_storeEnumTagSinglePayload(v30 + v45, 1, 1, v46);
    *v30 = v49;
    return sub_2752AA2E8(v53, &qword_2809BFB10, &qword_2752BE310);
  }
}

double sub_2752BBFB4@<D0>(uint64_t a2@<X8>)
{
  sub_2752BD108();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB70, &qword_2752BE488);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB40, &unk_2752BE7B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_2752BC04C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_8();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t MusicPlaybackIntentDescriptor.init(request:startingAt:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a1;
  v62 = a3;
  v61 = type metadata accessor for MusicPlaybackIntentDescriptor(0);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v4);
  v60 = &v57[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_2752BD118();
  OUTLINED_FUNCTION_4_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_0();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v57[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB50, &qword_2752BE468);
  MEMORY[0x28223BE20](v16 - 8);
  OUTLINED_FUNCTION_6_0();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v57[-v21];
  v70 = a2;
  sub_2752BC04C(a2, &v57[-v21], &qword_2809BFB50, &qword_2752BE468);
  if (__swift_getEnumTagSinglePayload(v22, 1, v6) == 1)
  {
    sub_2752AA2E8(v22, &qword_2809BFB50, &qword_2752BE468);
    OUTLINED_FUNCTION_5_2();
    v69 = 0;
  }

  else
  {
    sub_2752BD108();
    (*(v8 + 8))(v22, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB70, &qword_2752BE488);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB40, &unk_2752BE7B0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v69 = 0;
      OUTLINED_FUNCTION_5_2();
    }
  }

  v23 = v70;
  v24 = v12;
  sub_2752BC04C(v70, v19, &qword_2809BFB50, &qword_2752BE468);
  if (__swift_getEnumTagSinglePayload(v19, 1, v6) == 1)
  {
    sub_2752AA2E8(v19, &qword_2809BFB50, &qword_2752BE468);
  }

  else
  {
    (*(v8 + 32))(v15, v19, v6);
    if (v68)
    {
      (*(v8 + 8))(v15, v6);
    }

    else
    {
      if (qword_2809BFAC0 != -1)
      {
        swift_once();
      }

      v25 = sub_2752BD338();
      __swift_project_value_buffer(v25, qword_2809BFD60);
      (*(v8 + 16))(v12, v15, v6);
      v26 = sub_2752BD318();
      v27 = sub_2752BD898();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v66[0] = v59;
        *v28 = 136446210;
        sub_2752BCA6C();
        v58 = v27;
        v29 = sub_2752BDA48();
        v31 = v30;
        v32 = *(v8 + 8);
        v32(v24, v6);
        v33 = sub_2752B2160(v29, v31, v66);

        *(v28 + 4) = v33;
        _os_log_impl(&dword_2752A6000, v26, v58, "Ignoring start item for non-playable item %{public}s for new playback intent.", v28, 0xCu);
        v34 = v59;
        __swift_destroy_boxed_opaque_existential_1Tm(v59);
        MEMORY[0x277C73820](v34, -1, -1);
        MEMORY[0x277C73820](v28, -1, -1);

        v32(v15, v6);
        v23 = v70;
      }

      else
      {

        v35 = *(v8 + 8);
        v35(v12, v6);
        v35(v15, v6);
      }
    }
  }

  v36 = v63;
  sub_2752B4450(v63, v66);
  sub_2752BC04C(v67, v64, &qword_2809BFB10, &qword_2752BE310);
  __swift_project_boxed_opaque_existential_1(v66, v66[3]);
  OUTLINED_FUNCTION_4_2();
  _s16MusicKitInternal0A15PlayableRequestP01_abC18_MediaPlaybackCoreE14playbackIntent16withStartingItemSo011MPCPlaybackJ0CSg0aB00daM0_pSg_tF_0(v37, v38, v39, v40);
  if (v41)
  {
    v42 = v41;
    sub_2752AA2E8(v23, &qword_2809BFB50, &qword_2752BE468);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    v44 = v60;
    v43 = v61;
    v45 = &v60[*(v61 + 24)];
    sub_2752B4450(v66, v45);
    v46 = v64[1];
    *(v45 + 40) = v64[0];
    *(v45 + 56) = v46;
    *(v45 + 72) = v65;
    *(v45 + 80) = 2;
    v47 = *(v43 + 20);
    v48 = sub_2752BD1E8();
    __swift_storeEnumTagSinglePayload(v44 + v47, 1, 1, v48);
    *v44 = v42;
    __swift_destroy_boxed_opaque_existential_1Tm(v66);
    sub_2752BC6E8(v44, v62);
    return sub_2752AA2E8(v67, &qword_2809BFB10, &qword_2752BE310);
  }

  else
  {
    sub_2752B2660();
    swift_allocError();
    *v50 = 1;
    swift_willThrow();
    sub_2752AA2E8(v23, &qword_2809BFB50, &qword_2752BE468);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    OUTLINED_FUNCTION_4_2();
    sub_2752AA2E8(v51, v52, v53);
    __swift_destroy_boxed_opaque_existential_1Tm(v66);
    OUTLINED_FUNCTION_4_2();
    return sub_2752AA2E8(v54, v55, v56);
  }
}

uint64_t sub_2752BC6E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicPlaybackIntentDescriptor(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_2752BC74C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFD00, &qword_2752BE810);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2752BC854(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB28, &unk_2752BE438);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFB40, &unk_2752BE7B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2752BC98C(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

void sub_2752BC9B8(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (sub_2752BD478(), OUTLINED_FUNCTION_8(), a1 + *(v6 + 72) * a2 <= a3))
  {
    sub_2752BD478();
    OUTLINED_FUNCTION_6_1();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_6_1();

    swift_arrayInitWithTakeBackToFront();
  }
}

unint64_t sub_2752BCA6C()
{
  result = qword_2809BFB48;
  if (!qword_2809BFB48)
  {
    sub_2752BD118();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BFB48);
  }

  return result;
}

double OUTLINED_FUNCTION_5_2()
{
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  return result;
}

id sub_2752BCB00()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_2752BCB5C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MPCReportingLyricsViewEvent.song.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 modelSong];
  v4 = sub_2752BD628();
  if (v3)
  {
    return sub_2752BD308();
  }

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v4);
}

uint64_t sub_2752BCC5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809BFD20, &qword_2752BE860);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_2752BCEE4(a1, &v6 - v3);
  return MPCReportingLyricsViewEvent.song.setter(v4);
}

uint64_t MPCReportingLyricsViewEvent.song.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2752BD5F8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809BFD20, &qword_2752BE860);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  sub_2752BCEE4(a1, &v14 - v9);
  v11 = sub_2752BD628();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_2752BCF54(v10);
    v12 = 0;
  }

  else
  {
    (*(v5 + 104))(v7, *MEMORY[0x277CD8180], v4);
    v12 = sub_2752BD2F8();
    (*(v5 + 8))(v7, v4);
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  [v2 setModelSong_];

  return sub_2752BCF54(a1);
}

uint64_t sub_2752BCEE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809BFD20, &qword_2752BE860);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2752BCF54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809BFD20, &qword_2752BE860);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*MPCReportingLyricsViewEvent.song.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809BFD20, &qword_2752BE860) - 8) + 64);
  a1[1] = __swift_coroFrameAllocStub(v3);
  v4 = __swift_coroFrameAllocStub(v3);
  a1[2] = v4;
  MPCReportingLyricsViewEvent.song.getter(v4);
  return sub_2752BD058;
}

void sub_2752BD058(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_2752BCEE4(v3, v2);
    MPCReportingLyricsViewEvent.song.setter(v2);
    sub_2752BCF54(v3);
  }

  else
  {
    MPCReportingLyricsViewEvent.song.setter(v3);
  }

  free(v3);

  free(v2);
}