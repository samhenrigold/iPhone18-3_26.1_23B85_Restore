uint64_t sub_2287478D8(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_2287CBD00() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_2287CBD00() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_228747B00(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_2287CB510();
  if (!v19)
  {
    return sub_2287CB3F0();
  }

  v41 = v19;
  v45 = sub_2287CBB00();
  v32 = sub_2287CBB10();
  sub_2287CBAB0();
  result = sub_2287CB4E0();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_2287CB530();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_2287CBAF0();
      result = sub_2287CB520();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

const char *sub_228747F20(uint64_t a1, uint64_t a2)
{
  v24 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2287CAA50();
  v6 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2287C9A70();
  v11 = v9;
  if (v10 == 0xD000000000000023 && 0x80000002287D0EC0 == v9 || (sub_2287CBD00() & 1) != 0)
  {

    return "Generation_AppRecommendations";
  }

  if (v10 == 0xD00000000000002DLL && 0x80000002287D0EF0 == v11 || (sub_2287CBD00() & 1) != 0)
  {

    return "Generation_Balance";
  }

  v22 = v6;
  if (v10 == 0xD000000000000021 && 0x80000002287D0F20 == v11 || (sub_2287CBD00() & 1) != 0)
  {

    return "Generation_Categories";
  }

  if (v10 == 0xD000000000000021 && 0x80000002287D0F50 == v11 || (sub_2287CBD00() & 1) != 0)
  {

    return "Generation_HearingAppPlugin";
  }

  if (v10 == 0xD000000000000016 && 0x80000002287D0F80 == v11 || (sub_2287CBD00() & 1) != 0)
  {

    return "Generation_Heart";
  }

  if (v10 == 0xD000000000000020 && 0x80000002287D0FA0 == v11 || (sub_2287CBD00() & 1) != 0)
  {

    return "Generation_HighlightAlerts";
  }

  if (v10 == 0xD00000000000001BLL && 0x80000002287D0FD0 == v11 || (sub_2287CBD00() & 1) != 0)
  {

    return "Generation_Highlights";
  }

  if (v10 == 0xD000000000000020 && 0x80000002287D0FF0 == v11 || (sub_2287CBD00() & 1) != 0)
  {

    return "Generation_MenstrualCycles";
  }

  if (v10 == 0xD000000000000019 && 0x80000002287D1020 == v11 || (sub_2287CBD00() & 1) != 0)
  {

    return "Generation_Profiles";
  }

  if (v10 == 0xD000000000000023 && 0x80000002287D1040 == v11 || (sub_2287CBD00() & 1) != 0)
  {

    return "Generation_ResearchApp";
  }

  if (v10 == 0xD000000000000017 && 0x80000002287D1070 == v11 || (sub_2287CBD00() & 1) != 0)
  {

    return "Generation_Safety";
  }

  if (v10 == 0xD000000000000025 && 0x80000002287D1090 == v11 || (sub_2287CBD00() & 1) != 0)
  {

    return "Generation_HealthRecords";
  }

  if (v10 == 0xD00000000000001FLL && 0x80000002287D10C0 == v11 || (sub_2287CBD00() & 1) != 0)
  {

    return "Generation_HealthArticles";
  }

  if (v10 == 0xD00000000000001CLL && 0x80000002287D10E0 == v11 || (sub_2287CBD00() & 1) != 0)
  {

    return "Generation_Respiratory";
  }

  if (v10 == 0xD00000000000001ALL && 0x80000002287D1100 == v11 || (sub_2287CBD00() & 1) != 0)
  {

    return "Generation_Summaries";
  }

  if (v10 == 0xD00000000000002BLL && 0x80000002287D1120 == v11 || (sub_2287CBD00() & 1) != 0)
  {

    return "Generation_MedicationsHealthAppPlugin";
  }

  if (v10 == 0xD000000000000022 && 0x80000002287D1150 == v11 || (sub_2287CBD00() & 1) != 0)
  {

    return "Generation_MobilityAppPlugin";
  }

  if (v10 == 0xD000000000000016 && 0x80000002287D1180 == v11)
  {

    return "Generation_Sleep";
  }

  v13 = sub_2287CBD00();

  if (v13)
  {
    return "Generation_Sleep";
  }

  sub_2287CA9D0();
  (*(v24 + 16))(v5, v2, a1);
  v14 = sub_2287CAA40();
  v15 = sub_2287CB5F0();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v25 = v17;
    *v16 = 136315138;
    v18 = sub_2287C9A70();
    v20 = v19;
    (*(v24 + 8))(v5, a1);
    v21 = sub_2287031D8(v18, v20, &v25);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_2286FF000, v14, v15, "You should add your bundle id: '%s' to generationSignpostID for better signposts", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x22AABFD90](v17, -1, -1);
    MEMORY[0x22AABFD90](v16, -1, -1);
  }

  else
  {

    (*(v24 + 8))(v5, a1);
  }

  (*(v22 + 8))(v8, v23);
  return "Generation_<unknown>";
}

uint64_t sub_228748814(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 24) = v3;
  *(v4 + 32) = v2;
}

uint64_t sub_228748874()
{
  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_2287488C0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

void *BasicPluginInfo.__allocating_init(bundle:)(void *a1)
{
  swift_allocObject();
  v2 = sub_228705FD4(a1);

  return v2;
}

uint64_t BasicPluginInfo.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_228748A20()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 24);

  return v2;
}

uint64_t sub_228748A70@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 120))();
  *a1 = result;
  return result;
}

uint64_t PluginBundleProvider.__allocating_init(sharedDefaults:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t static FoundationPluginBundleProvider.sharedInstance.setter(uint64_t a1)
{
  if (qword_280DE14F0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_280DE14F8 = a1;
}

uint64_t (*static FoundationPluginBundleProvider.sharedInstance.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_280DE14F0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_228748BE4@<X0>(void *a1@<X8>)
{
  if (qword_280DE14F0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_280DE14F8;
}

uint64_t sub_228748C64(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_280DE14F0;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_280DE14F8 = v1;
}

id sub_228748D04()
{
  v0 = sub_228749F18();

  return v0;
}

void sub_228748D30(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_228748DC8()
{
  sub_2287C99B0();
  sub_2287C99A0();
  sub_2287C9970();
  v4 = sub_2287C9960();
  v2[1] = v2;
  v3 = sub_2287CB120();
  MEMORY[0x28223BE20](v3);
  v0 = MEMORY[0x277D11D00];
  sub_228749FC0(0, &qword_280DE0018, MEMORY[0x277D11D00]);
  sub_2287CB190();
  sub_22874A060(&qword_280DE0010, &qword_280DE0018, v0, MEMORY[0x277D83970]);
  sub_2287CB310();

  return v5;
}

uint64_t sub_228748FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_2287CB820();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = sub_2287C98E0();
  v10 = v9;
  sub_2287C9900();
  sub_2287C9A80();
  (*(*(a3 - 8) + 56))(v7, 0, 1, a3);
  v12[0] = v8;
  v12[1] = v10;
  sub_2287CB190();
  return sub_2287CB1A0();
}

uint64_t sub_228749110()
{
  v1 = *v0;
  v2 = sub_2287C9910();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287C99B0();
  sub_2287C99A0();
  v6 = sub_2287C9980();

  v25 = MEMORY[0x277D84F90];
  v7 = *(v6 + 16);
  if (v7)
  {
    v23[3] = 0;
    *&v24 = v1;
    v10 = *(v3 + 16);
    v9 = v3 + 16;
    v8 = v10;
    v11 = (*(v9 + 64) + 32) & ~*(v9 + 64);
    v23[2] = v6;
    v12 = v6 + v11;
    v13 = *(v9 + 56);
    do
    {
      v8(v5, v12, v2);
      sub_2287C9900();
      v14 = (*(v9 - 8))(v5, v2);
      MEMORY[0x22AABEA50](v14);
      if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v23[1] = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2287CB3E0();
      }

      sub_2287CB420();
      v12 += v13;
      --v7;
    }

    while (v7);
    v15 = v25;

    v1 = v24;
  }

  else
  {

    v15 = MEMORY[0x277D84F90];
  }

  v25 = v15;
  MEMORY[0x28223BE20](v16);
  v24 = *(v1 + 80);
  *&v23[-2] = v24;
  sub_228749FC0(0, &qword_280DDFF50, sub_22874A014);
  v18 = v17;
  v19 = sub_22874A060(&qword_280DDFF48, &qword_280DDFF50, sub_22874A014, MEMORY[0x277D83988]);
  v21 = sub_228747B00(sub_228749F68, &v23[-4], v18, v24, MEMORY[0x277D84A98], v19, MEMORY[0x277D84AC0], v20);

  return v21;
}

void *sub_22874942C()
{
  sub_2287C99B0();
  sub_2287C99A0();
  v0 = sub_2287C9990();

  v1 = *(v0 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = sub_2287239AC(*(v0 + 16), 0);
  v3 = sub_228729F74(&v5, v2 + 4, v1, v0);
  sub_22872CA2C(v5);
  if (v3 != v1)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v2;
}

uint64_t sub_2287494E8()
{
  v2 = sub_2287C9910();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287C99B0();
  v6 = sub_2287C99A0();
  sub_2287C9970();
  if (v0)
  {
  }

  else
  {
    v7 = sub_2287C9960();
    v8 = *(v7 + 16);
    if (v8)
    {
      v21[1] = v6;
      v21[2] = 0;
      v27 = MEMORY[0x277D84F90];
      sub_2287042D4(0, v8, 0);
      v1 = v27;
      v10 = *(v3 + 16);
      v9 = v3 + 16;
      v11 = *(v9 + 64);
      v21[0] = v7;
      v12 = v7 + ((v11 + 32) & ~v11);
      v23 = *(v9 + 56);
      v24 = v10;
      v22 = (v9 - 8);
      v25 = v5;
      v26 = v9;
      do
      {
        v24(v5, v12, v2);
        v13 = sub_2287C98F0();
        v15 = v14;
        v16 = v2;
        (*v22)(v5, v2);
        v27 = v1;
        v18 = *(v1 + 16);
        v17 = *(v1 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_2287042D4((v17 > 1), v18 + 1, 1);
          v1 = v27;
        }

        *(v1 + 16) = v18 + 1;
        v19 = v1 + 16 * v18;
        *(v19 + 32) = v13;
        *(v19 + 40) = v15;
        v12 += v23;
        --v8;
        v2 = v16;
        v5 = v25;
      }

      while (v8);
    }

    else
    {

      return MEMORY[0x277D84F90];
    }
  }

  return v1;
}

uint64_t sub_22874974C()
{
  v0 = sub_2287CAA50();
  MEMORY[0x28223BE20](v0);
  sub_2287C99B0();
  sub_2287C99A0();
  sub_2287C9970();
}

uint64_t PluginBundleProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_228749A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2287CB1B0();

  return sub_228749AA4(a1, v6, a2, a3);
}

unint64_t sub_228749AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  MEMORY[0x28223BE20](a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = sub_2287CB200();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_228749C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_2287CB430())
  {
    sub_2287CBC00();
    v13 = sub_2287CBBF0();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_2287CB430();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_2287CB410())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_2287CBA40();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_228749A48(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

void sub_228749FC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2287CB450();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_22874A014()
{
  result = qword_280DE1918;
  if (!qword_280DE1918)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DE1918);
  }

  return result;
}

uint64_t sub_22874A060(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_228749FC0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22874A0A4()
{
  result = qword_280DE35A0;
  if (!qword_280DE35A0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280DE35A0);
  }

  return result;
}

void *sub_22874A374(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1;
  v21 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2287CB8D0();
    sub_2287CA6F0();
    sub_22874B7BC(&qword_280DE1178, MEMORY[0x277D121F0], MEMORY[0x277D85378]);
    result = sub_2287CB4C0();
    v4 = v20[1];
    v6 = v20[2];
    v7 = v20[3];
    v8 = v20[4];
    v9 = v20[5];
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = (a1 + 56);
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = (v12 & *(a1 + 56));

    v8 = 0;
  }

  if (v4 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v4 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      while (1)
      {
        v20[0] = v17;
        sub_22874B33C(v20, &v19);
        if (v3)
        {
          break;
        }

        result = sub_22870E098(v19);
        v8 = v15;
        v9 = v16;
        if ((v4 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        v18 = sub_2287CB950();
        if (v18)
        {
          v19 = v18;
          sub_2287CA6F0();
          swift_dynamicCast();
          v17 = v20[0];
          v15 = v8;
          v16 = v9;
          if (v20[0])
          {
            continue;
          }
        }

        goto LABEL_19;
      }

      sub_22870B3D4(v4);
    }

    else
    {
LABEL_19:
      sub_22870B3D4(v4);
      return v21;
    }
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v14 = v6[v15];
      v13 = (v13 + 1);
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_22874A5C8(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2287CB8D0();
    sub_2287CA6C0();
    sub_22874B7BC(&qword_280DE1180, MEMORY[0x277D121E0], MEMORY[0x277D85378]);
    sub_2287CB4C0();
    v2 = v35;
    v3 = v36;
    v4 = v37;
    v5 = v38;
    v6 = v39;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v33 = MEMORY[0x277D84F90];
  v34 = v2;
  v10 = &unk_278607000;
LABEL_8:
  v11 = v5;
  while (v2 < 0)
  {
    if (!sub_2287CB950() || (sub_2287CA6C0(), swift_dynamicCast(), v15 = v40, v5 = v11, v14 = v6, !v40))
    {
LABEL_26:
      sub_22870B3D4(v2);
      return;
    }

LABEL_19:
    v16 = v10;
    v17 = [v15 v10[89]];
    v18 = sub_2287CB220();
    v20 = v19;

    v21 = sub_2287C9FD0();
    LOBYTE(v18) = sub_22873E55C(v21, v22, v18, v20);

    if ((v18 & 1) == 0)
    {
      v23 = [v15 v16 + 1656];
      v24 = HKDisplayCategoryIdentifierFromString();

      if (v24 == -1)
      {
        v25 = [v15 v16 + 1656];
        v32 = sub_2287CB220();
        v27 = v26;

        v28 = v33;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_228722DF0(0, *(v33 + 2) + 1, 1, v33);
        }

        v30 = *(v28 + 2);
        v29 = *(v28 + 3);
        if (v30 >= v29 >> 1)
        {
          v28 = sub_228722DF0((v29 > 1), v30 + 1, 1, v28);
        }

        *(v28 + 2) = v30 + 1;
        v33 = v28;
        v31 = &v28[16 * v30];
        *(v31 + 4) = v32;
        *(v31 + 5) = v27;
        v10 = v16;
        v6 = v14;
        v2 = v34;
        goto LABEL_8;
      }
    }

    v11 = v5;
    v6 = v14;
    v10 = v16;
    v2 = v34;
  }

  v12 = v11;
  v13 = v6;
  v5 = v11;
  if (v6)
  {
LABEL_15:
    v14 = (v13 - 1) & v13;
    v15 = *(*(v2 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v15)
    {
      goto LABEL_26;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= ((v4 + 64) >> 6))
    {
      goto LABEL_26;
    }

    v13 = *(v3 + 8 * v5);
    ++v12;
    if (v13)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_22874A908(uint64_t (*a1)(void **), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v8 = *v6++;
      v13 = v8;
      v9 = v8;
      v10 = a1(&v13);

      if (v3)
      {
        break;
      }

      v11 = v7-- == 0;
    }

    while (((v10 | v11) & 1) == 0);
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10 & 1;
}

void sub_22874A9AC()
{
  v1 = sub_2287C9B20();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v42 - v6;
  if (![v0 indexForSearch])
  {
    return;
  }

  sub_2287CA710();
  (*(v2 + 32))(v5, v7, v1);
  v8 = (*(v2 + 88))(v5, v1);
  v9 = v8 == *MEMORY[0x277D11DB0] || v8 == *MEMORY[0x277D11DC8];
  if (v9 || v8 == *MEMORY[0x277D11DB8])
  {
    return;
  }

  if (v8 != *MEMORY[0x277D11DF0] && v8 != *MEMORY[0x277D11E08] && v8 != *MEMORY[0x277D11DC0])
  {
    if (v8 == *MEMORY[0x277D11D68] || v8 == *MEMORY[0x277D11D70] || v8 == *MEMORY[0x277D11D98] || v8 == *MEMORY[0x277D11DA0] || v8 == *MEMORY[0x277D11DA8] || v8 == *MEMORY[0x277D11D80] || v8 == *MEMORY[0x277D11E18] || v8 == *MEMORY[0x277D11D90])
    {
      return;
    }

    if (v8 != *MEMORY[0x277D11D60] && v8 != *MEMORY[0x277D11DD8])
    {
      if (v8 == *MEMORY[0x277D11DD0] || v8 == *MEMORY[0x277D11D88])
      {
        return;
      }

      if (v8 != *MEMORY[0x277D11E20])
      {
        if (v8 != *MEMORY[0x277D11DE0] && v8 != *MEMORY[0x277D11DF8] && v8 != *MEMORY[0x277D11D78] && v8 != *MEMORY[0x277D11E10] && v8 != *MEMORY[0x277D11DE8] && v8 != *MEMORY[0x277D11E00])
        {
          (*(v2 + 8))(v5, v1);
        }

        return;
      }
    }
  }

  v13 = [v0 profiles];
  v14 = sub_2287CA6D0();
  sub_22874B7BC(&qword_280DE17A0, MEMORY[0x277D121E8], MEMORY[0x277D85378]);
  v15 = sub_2287CB470();

  v42 = v0;
  v44 = v14;
  if ((v15 & 0xC000000000000001) != 0)
  {
    sub_2287CB8D0();
    sub_2287CB4C0();
    v15 = v48;
    v16 = v49;
    v17 = v50;
    v18 = v51;
    v19 = v52;
  }

  else
  {
    v18 = 0;
    v20 = -1 << *(v15 + 32);
    v16 = v15 + 56;
    v17 = ~v20;
    v21 = -v20;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v19 = v22 & *(v15 + 56);
  }

  v43 = v17;
  v23 = (v17 + 64) >> 6;
  while (1)
  {
    v25 = v18;
    if ((v15 & 0x8000000000000000) == 0)
    {
      break;
    }

    v29 = sub_2287CB950();
    if (!v29 || (v46 = v29, swift_dynamicCast(), (v28 = v47) == 0))
    {
LABEL_63:
      sub_22870B3D4(v15);
      sub_2287035A4(0, &qword_280DE3850, MEMORY[0x277D11E90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2287CCFF0;
      *(inited + 32) = sub_2287C9CA0();
      *(inited + 40) = 0;
      v47 = sub_2287CA790();
      sub_22874B728(0);
      sub_22874B7BC(&qword_280DDFF38, sub_22874B728, MEMORY[0x277D83B78]);
      v39 = sub_2287CB4F0();

      v46 = v39;
      MEMORY[0x28223BE20](v40);
      *(&v42 - 2) = &v46;
      sub_22874A908(sub_22874B804, (&v42 - 4), inited);
      swift_setDeallocating();
      swift_arrayDestroy();

      return;
    }

LABEL_57:
    v45 = v25;
    v30 = v15;
    v31 = [v28 encodedHKProfileIdentifier];
    v32 = sub_2287C9720();
    v34 = v33;

    v35 = v34 >> 62;
    if ((v34 >> 62) > 1)
    {
      if (v35 != 2)
      {
        sub_2287460D4(v32, v34);
        v41 = v30;
        goto LABEL_66;
      }

      v36 = *(v32 + 16);
      v37 = *(v32 + 24);
      sub_2287460D4(v32, v34);
      goto LABEL_62;
    }

    if (v35)
    {
      sub_2287460D4(v32, v34);
      v36 = v32;
      v37 = v32 >> 32;
LABEL_62:
      v24 = v36 == v37;
      goto LABEL_47;
    }

    sub_2287460D4(v32, v34);
    v24 = (v34 & 0xFF000000000000) == 0;
LABEL_47:
    v15 = v30;
    if (v24)
    {
      v41 = v30;
LABEL_66:
      sub_22870B3D4(v41);
      return;
    }
  }

  v26 = v18;
  v27 = v19;
  if (v19)
  {
LABEL_53:
    v19 = (v27 - 1) & v27;
    v28 = *(*(v15 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v27)))));
    if (!v28)
    {
      goto LABEL_63;
    }

    goto LABEL_57;
  }

  while (1)
  {
    v18 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v18 >= v23)
    {
      goto LABEL_63;
    }

    v27 = *(v16 + 8 * v18);
    ++v26;
    if (v27)
    {
      goto LABEL_53;
    }
  }

  __break(1u);
}

uint64_t sub_22874B0A4(void *a1)
{
  v2 = v1;
  v4 = [v1 localizedTitle];
  if (v4)
  {
    v5 = v4;
    sub_2287CB220();

    v6 = sub_2287CB210();
    [a1 setTitle_];
    swift_bridgeObjectRelease_n();
  }

  v7 = [v2 keywords];
  sub_2287CA6C0();
  v8 = MEMORY[0x277D85378];
  sub_22874B7BC(&qword_280DE1180, MEMORY[0x277D121E0], MEMORY[0x277D85378]);
  v9 = sub_2287CB470();

  sub_22874A5C8(v9, v10);
  v12 = v11;

  v13 = [v2 dataTypes];
  sub_2287CA6F0();
  sub_22874B7BC(&qword_280DE1178, MEMORY[0x277D121F0], v8);
  v14 = sub_2287CB470();

  v16 = sub_22874A374(v14, v15);

  sub_22870E098(v16);
  v17 = sub_2287CB390();

  [a1 setKeywords_];

  v18 = [v2 dataTypes];
  v19 = sub_2287CB470();

  v20 = sub_228784908(v19);

  if (v20)
  {
    v21 = sub_2287CA6E0();

    if (v21)
    {
      [v21 code];
    }
  }

  return sub_2287CB7D0();
}

void sub_22874B33C(void **a1@<X0>, void *a2@<X8>)
{
  v4 = sub_2287CAA50();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *a1;
  v9 = sub_2287CA6E0();
  if (v9)
  {
    v10 = v9;
    v11 = [objc_opt_self() sharedInstance];
    if (!v11)
    {
      goto LABEL_7;
    }

    v12 = v11;
    v13 = [v11 displayTypeForObjectType_];

    if (!v13)
    {
      goto LABEL_7;
    }

    v38 = a2;
    a2 = &unk_278607000;
    v14 = [v13 localization];
    v15 = [v14 keywords];

    v16 = sub_2287CB470();
    v4 = *(v16 + 16);
    if (v4)
    {
      v8 = sub_2287239AC(*(v16 + 16), 0);
      v7 = sub_228729F74(&v39, v8 + 4, v4, v16);
      sub_22870B3D4(v39);
      if (v7 != v4)
      {
        __break(1u);
LABEL_7:

        goto LABEL_8;
      }
    }

    else
    {

      v8 = MEMORY[0x277D84F90];
    }

    sub_2287035A4(0, &qword_280DE39A8, MEMORY[0x277D837D0]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2287CCFE0;
    v31 = [v13 localization];
    v32 = [v31 displayName];

    v33 = sub_2287CB220();
    v35 = v34;

    *(inited + 32) = v33;
    *(inited + 40) = v35;
    v39 = v8;
    sub_22870E098(inited);

    v29 = v39;
    a2 = v38;
    goto LABEL_14;
  }

LABEL_8:
  v40 = v5;
  sub_2287CA9D0();
  v17 = v8;
  v18 = sub_2287CAA40();
  v19 = sub_2287CB600();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v39 = v37;
    *v20 = 136315138;
    v21 = v17;
    v22 = [v21 description];
    v38 = a2;
    v23 = v22;
    v24 = sub_2287CB220();
    v36 = v4;
    v26 = v25;

    v27 = sub_2287031D8(v24, v26, &v39);

    *(v20 + 4) = v27;
    a2 = v38;
    _os_log_impl(&dword_2286FF000, v18, v19, "Could not get display type for: %s", v20, 0xCu);
    v28 = v37;
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x22AABFD90](v28, -1, -1);
    MEMORY[0x22AABFD90](v20, -1, -1);

    (*(v40 + 8))(v7, v36);
  }

  else
  {

    (*(v40 + 8))(v7, v4);
  }

  v29 = MEMORY[0x277D84F90];
LABEL_14:
  *a2 = v29;
}

void sub_22874B728(uint64_t a1)
{
  if (!qword_280DDFF40)
  {
    sub_2287C9BC0();
    sub_22874B7BC(&qword_280DE11F8, MEMORY[0x277D11E78], MEMORY[0x277D11E80]);
    v1 = sub_2287CB4D0();
    if (!v2)
    {
      atomic_store(v1, &qword_280DDFF40);
    }
  }
}

uint64_t sub_22874B7BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22874B83C()
{
  sub_2287035A4(0, &qword_280DE3850, MEMORY[0x277D11E90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2287CCFF0;
  result = sub_2287C9CA0();
  *(v0 + 32) = result;
  *(v0 + 40) = 0;
  qword_280DE0DA0 = v0;
  return result;
}

uint64_t static SummaryTabRelevanceEngineCoordinator.dataSourceProfiles.getter()
{
  if (qword_280DE0D98 != -1)
  {
    swift_once();
  }
}

uint64_t static SummaryTabRelevanceEngineCoordinator.defaultModelURL.getter()
{
  v0 = sub_2287C9700();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static SummaryTabRelevanceEngineCoordinator.defaultModelContainerURL.getter(v3);
  sub_2287C96D0();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_22874BA20()
{
  v0 = sub_2287C9700();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v2, qword_280DE0D78);
  __swift_project_value_buffer(v0, qword_280DE0D78);
  type metadata accessor for SummaryTabRelevanceEngineCoordinator(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  v7 = [v6 bundleURL];

  sub_2287C96F0();
  sub_2287C96D0();
  return (*(v1 + 8))(v4, v0);
}

uint64_t static SummaryTabRelevanceEngineCoordinator.defaultPretrainedModelURL.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280DE0D70 != -1)
  {
    swift_once();
  }

  v2 = sub_2287C9700();
  v3 = __swift_project_value_buffer(v2, qword_280DE0D78);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t SummaryTabRelevanceEngineCoordinator.__allocating_init(healthExperienceStore:engineName:modelURL:pretrainedModelURL:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a2;
  v24 = a3;
  sub_228706364(0, &unk_280DE3AA0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v23 - v10;
  v12 = sub_2287C9700();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  sub_2287010E4(a1, v27);
  if (qword_280DE0D98 != -1)
  {
    swift_once();
  }

  v16 = qword_280DE0DA0;
  v17 = type metadata accessor for FeedItemREElementDataSource();
  v18 = objc_allocWithZone(v17);
  sub_2287010E4(v27, &v18[OBJC_IVAR____TtC18HealthPlatformCore27FeedItemREElementDataSource_store]);
  *&v18[OBJC_IVAR____TtC18HealthPlatformCore27FeedItemREElementDataSource_sourceProfiles] = v16;
  v26.receiver = v18;
  v26.super_class = v17;

  v19 = objc_msgSendSuper2(&v26, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v27);
  sub_2287035A4(0, &qword_280DE1268, MEMORY[0x277D84F68] + 8);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_2287CCC50;
  *(v20 + 32) = v19;
  (*(v13 + 16))(v15, a4, v12);
  sub_22874BED4(a5, v11);
  v21 = (*(v5 + 184))(v20, v23, v24, v15, v11);
  sub_22874BF68(a5);
  (*(v13 + 8))(a4, v12);
  __swift_destroy_boxed_opaque_existential_0(v25);
  return v21;
}

uint64_t sub_22874BED4(uint64_t a1, uint64_t a2)
{
  sub_228706364(0, &unk_280DE3AA0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22874BF68(uint64_t a1)
{
  sub_228706364(0, &unk_280DE3AA0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id SummaryTabRelevanceEngineCoordinator.init(dataSources:engineName:modelURL:pretrainedModelURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v48 = a5;
  v49 = a4;
  v42 = a2;
  v43 = a3;
  v44 = a1;
  ObjectType = swift_getObjectType();
  v7 = sub_2287CAA50();
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x28223BE20](v7);
  v45 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_2287CB6B0();
  v9 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2287CB670();
  MEMORY[0x28223BE20](v12);
  v13 = sub_2287CB0E0();
  MEMORY[0x28223BE20](v13 - 8);
  v40 = OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator_dispatchQueue;
  v14 = sub_228703004(0, &qword_280DE39D0, 0x277D85C78);
  v38 = "odel store directory: ";
  v39 = v14;
  sub_2287CB0A0();
  v52 = MEMORY[0x277D84F90];
  sub_22874F97C(&qword_280DE39D8, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v15 = MEMORY[0x277D85230];
  sub_228706364(0, &qword_280DE39F0, MEMORY[0x277D85230], MEMORY[0x277D83940]);
  sub_22874F8A8(&qword_280DE39E8, &qword_280DE39F0, v15);
  sub_2287CB880();
  (*(v9 + 104))(v11, *MEMORY[0x277D85260], v41);
  *&v5[v40] = sub_2287CB6D0();
  *&v5[OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator____lazy_storage___primaryFeatures] = 0;
  *&v5[OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator____lazy_storage___crossedFeatures] = 0;
  *&v5[OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator____lazy_storage___relevanceProviderManagerClasses] = 0;
  *&v5[OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator_modelVersion] = 9;
  *&v5[OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator____lazy_storage___trainingContext] = 0;
  v16 = OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator_metricsRecorder;
  *&v5[v16] = [objc_allocWithZone(type metadata accessor for RelevanceEngineMetricsBlockRecorder()) init];
  *&v5[OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator____lazy_storage___relevanceEngine] = 0;
  v17 = &v5[OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator_engineName];
  v18 = v43;
  *v17 = v42;
  v17[1] = v18;
  *&v5[OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator_dataSources] = v44;
  v19 = OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator_modelPath;
  v20 = sub_2287C9700();
  v21 = *(v20 - 8);
  (*(v21 + 16))(&v5[v19], v49, v20);
  sub_22874BED4(v48, &v5[OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator_pretrainedModelURL]);
  v22 = v45;
  sub_2287CA9E0();
  v23 = v22;
  v24 = sub_2287CAA40();
  v25 = sub_2287CB610();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v50 = v27;
    *v26 = 136315394;
    v52 = ObjectType;
    swift_getMetatypeMetadata();
    v28 = sub_2287CB250();
    v30 = sub_2287031D8(v28, v29, &v50);

    *(v26 + 4) = v30;
    *(v26 + 12) = 1024;
    v31 = [objc_opt_self() standardUserDefaults];
    LODWORD(v30) = [v31 BOOLForKey_];

    *(v26 + 14) = v30;
    _os_log_impl(&dword_2286FF000, v24, v25, "[%s]: REUserDefaultMLExplanationsEnabled=%{BOOL}d", v26, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x22AABFD90](v27, -1, -1);
    MEMORY[0x22AABFD90](v26, -1, -1);
  }

  (*(v46 + 8))(v23, v47);
  v32 = type metadata accessor for SummaryTabRelevanceEngineCoordinator(0);
  v51.receiver = v6;
  v51.super_class = v32;
  v33 = objc_msgSendSuper2(&v51, sel_init);
  v34 = sub_22874DAE4();

  sub_22874BF68(v48);
  (*(v21 + 8))(v49, v20);
  return v33;
}

uint64_t sub_22874C638(uint64_t a1, uint64_t a2)
{
  v5 = sub_2287CB080();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2287CB0E0();
  v9 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *&v2[OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator_dispatchQueue];
  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = a1;
  v12[4] = a2;
  aBlock[4] = sub_22874F958;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228712EA8;
  aBlock[3] = &block_descriptor_3;
  v13 = _Block_copy(aBlock);
  v14 = v2;
  sub_228714B08(a1, a2);
  sub_2287CB0A0();
  v19 = MEMORY[0x277D84F90];
  sub_22874F97C(&qword_280DE3A28, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  v15 = MEMORY[0x277D85198];
  sub_228706364(0, &qword_280DE3A10, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_22874F8A8(&qword_280DE3A08, &qword_280DE3A10, v15);
  sub_2287CB880();
  MEMORY[0x22AABED90](0, v11, v8, v13);
  _Block_release(v13);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v18);
}

void sub_22874C930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22874DAE4();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v8[4] = sub_22874FEF0;
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_228712EA8;
  v8[3] = &block_descriptor_31;
  v7 = _Block_copy(v8);
  sub_228714B08(a2, a3);

  [v5 resetModelWithCompletion_];
  _Block_release(v7);
}

id sub_22874CA4C(uint64_t a1, uint64_t a2)
{
  v2 = static RelevanceEngineCoordinator.makeStandardFeatureTagFeatures()();
  sub_22870E1B8(v2);
  v3 = sub_22874CB18();
  sub_22870E1B8(v3);
  v4 = objc_allocWithZone(MEMORY[0x277D44420]);
  sub_228703004(0, &qword_280DE35E0, 0x277D44418);
  v5 = sub_2287CB390();

  v6 = [v4 initWithFeatures_];

  return v6;
}

uint64_t sub_22874CB18()
{
  v1 = OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator____lazy_storage___crossedFeatures;
  if (*(v0 + OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator____lazy_storage___crossedFeatures))
  {
    v2 = *(v0 + OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator____lazy_storage___crossedFeatures);
  }

  else
  {
    v2 = sub_22874CB7C();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_22874CB7C()
{
  v55 = MEMORY[0x277D84F90];
  v0 = objc_opt_self();
  sub_2287035A4(0, &qword_280DE1268, MEMORY[0x277D84F68] + 8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2287CCFD0;
  if (qword_280DE3790 != -1)
  {
    swift_once();
  }

  v2 = qword_280DE6370;
  *(v1 + 32) = qword_280DE6370;
  v3 = qword_280DE37F0;
  v4 = v2;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = qword_280DE63B8;
  *(v1 + 40) = qword_280DE63B8;
  sub_228703004(0, &qword_280DE35E0, 0x277D44418);
  v6 = v5;
  v7 = sub_2287CB390();

  v8 = [v0 crossedFeatureWithFeatures_];

  v9 = v8;
  MEMORY[0x22AABEA50]();
  if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2287CB3E0();
  }

  sub_2287CB420();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2287CCFD0;
  *(v10 + 32) = v9;
  v11 = qword_280DE3828;
  v53 = v9;
  if (v11 != -1)
  {
    swift_once();
  }

  v12 = qword_280DE63E8;
  *(v10 + 40) = qword_280DE63E8;
  v13 = v12;
  v14 = sub_2287CB390();

  v15 = [v0 crossedFeatureWithFeatures_];

  MEMORY[0x22AABEA50]();
  if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2287CB3E0();
  }

  sub_2287CB420();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2287CCFD0;
  *(v16 + 32) = v4;
  v17 = qword_280DE3800;
  v18 = v4;
  if (v17 != -1)
  {
    swift_once();
  }

  v19 = qword_280DE63C8;
  *(v16 + 40) = qword_280DE63C8;
  v54 = v19;
  v20 = sub_2287CB390();

  v21 = [v0 crossedFeatureWithFeatures_];

  MEMORY[0x22AABEA50]();
  if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2287CB3E0();
  }

  sub_2287CB420();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2287CCFD0;
  *(v22 + 32) = v18;
  v23 = qword_280DE37C0;
  v24 = v18;
  if (v23 != -1)
  {
    swift_once();
  }

  v25 = qword_280DE6390;
  *(v22 + 40) = qword_280DE6390;
  v26 = v25;
  v27 = sub_2287CB390();

  v28 = [v0 crossedFeatureWithFeatures_];

  MEMORY[0x22AABEA50]();
  if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2287CB3E0();
  }

  sub_2287CB420();
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_2287CCFD0;
  *(v29 + 32) = v24;
  v30 = qword_280DE37A8;
  v31 = v24;
  if (v30 != -1)
  {
    swift_once();
  }

  v32 = qword_280DE6380;
  *(v29 + 40) = qword_280DE6380;
  v33 = v32;
  v34 = sub_2287CB390();

  v35 = [v0 crossedFeatureWithFeatures_];

  MEMORY[0x22AABEA50]();
  if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2287CB3E0();
  }

  sub_2287CB420();
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_2287CE380;
  *(v36 + 32) = v31;
  *(v36 + 40) = v54;
  *(v36 + 48) = v26;
  v37 = v31;
  v38 = sub_2287CB390();

  v39 = [v0 &selRef_indexName + 3];

  MEMORY[0x22AABEA50]();
  if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2287CB3E0();
  }

  sub_2287CB420();
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_2287CE380;
  *(v40 + 32) = v37;
  *(v40 + 40) = v26;
  *(v40 + 48) = v33;
  v41 = v37;
  v42 = sub_2287CB390();

  v43 = [v0 &selRef_indexName + 3];

  MEMORY[0x22AABEA50]();
  if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2287CB3E0();
  }

  sub_2287CB420();
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_2287CE380;
  *(v44 + 32) = v41;
  *(v44 + 40) = v33;
  *(v44 + 48) = v54;
  v45 = sub_2287CB390();

  v46 = [v0 &selRef_indexName + 3];

  MEMORY[0x22AABEA50]();
  if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2287CB3E0();
  }

  sub_2287CB420();
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_2287CCFD0;
  *(v47 + 32) = v41;
  if (qword_280DE3810 != -1)
  {
    swift_once();
  }

  v48 = qword_280DE63D0;
  *(v47 + 40) = qword_280DE63D0;
  v49 = v48;
  v50 = sub_2287CB390();

  v51 = [v0 &selRef_indexName + 3];

  MEMORY[0x22AABEA50]();
  if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2287CB3E0();
  }

  sub_2287CB420();

  return v55;
}

uint64_t sub_22874D450()
{
  v1 = OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator____lazy_storage___relevanceProviderManagerClasses;
  if (*(v0 + OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator____lazy_storage___relevanceProviderManagerClasses))
  {
    v2 = *(v0 + OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator____lazy_storage___relevanceProviderManagerClasses);
  }

  else
  {
    sub_22874F81C();
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_2287CCFE0;
    *(v2 + 32) = type metadata accessor for DateRangeRelevanceProviderManager();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t SummaryTabRelevanceEngineCoordinator.modelPath.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator_modelPath;
  v4 = sub_2287C9700();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id sub_22874D558()
{
  v1 = OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator____lazy_storage___trainingContext;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator____lazy_storage___trainingContext);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator____lazy_storage___trainingContext);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D444B8]) init];
    v5 = sub_22874DAE4();
    [v5 addTrainingContext_];

    [v4 becomeCurrent];
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_22874D5FC(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator____lazy_storage___trainingContext);
  *(v1 + OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator____lazy_storage___trainingContext) = a1;
}

void (*sub_22874D610(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_22874D558();
  return sub_22874D658;
}

void sub_22874D658(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator____lazy_storage___trainingContext);
  *(v1 + OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator____lazy_storage___trainingContext) = v2;
}

uint64_t sub_22874D670(uint64_t a1, uint64_t a2)
{
  v5 = sub_2287CB080();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2287CB0E0();
  v9 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *&v2[OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator_dispatchQueue];
  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = a1;
  v12[4] = a2;
  aBlock[4] = sub_22874F9C4;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228712EA8;
  aBlock[3] = &block_descriptor_6;
  v13 = _Block_copy(aBlock);
  v14 = v2;

  sub_2287CB0A0();
  v19 = MEMORY[0x277D84F90];
  sub_22874F97C(&qword_280DE3A28, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  v15 = MEMORY[0x277D85198];
  sub_228706364(0, &qword_280DE3A10, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_22874F8A8(&qword_280DE3A08, &qword_280DE3A10, v15);
  sub_2287CB880();
  MEMORY[0x22AABED90](0, v11, v8, v13);
  _Block_release(v13);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v18);
}

void sub_22874D964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator_metricsRecorder);
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = v5 + OBJC_IVAR____TtC18HealthPlatformCore35RelevanceEngineMetricsBlockRecorder_protectedState;

  os_unfair_lock_lock(v7);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_22874FE94;
  *(v8 + 24) = v6;
  v9 = *(v7 + 8);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v7 + 8) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_228723390(0, v9[2] + 1, 1, v9);
    *(v7 + 8) = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = sub_228723390((v11 > 1), v12 + 1, 1, v9);
    *(v7 + 8) = v9;
  }

  v9[2] = v12 + 1;
  v13 = &v9[2 * v12];
  v13[4] = sub_22874FEBC;
  v13[5] = v8;
  os_unfair_lock_unlock(v7);

  v14 = sub_22874DAE4();
  [v14 gatherMetrics];
}

id sub_22874DB04(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    ObjectType = swift_getObjectType();
    v8 = a2(v2, ObjectType);
    v9 = *(v2 + v3);
    *(v2 + v3) = v8;
    v5 = v8;

    v4 = 0;
  }

  v10 = v4;
  return v5;
}

id sub_22874DB78(uint64_t a1, uint64_t a2)
{
  v5 = sub_2287C9700();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228706364(0, &unk_280DE3AA0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v25 - v10;
  v12 = *(a1 + OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator_engineName);
  v27 = *(a1 + OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator_engineName + 8);
  v28 = v12;
  sub_22874BED4(a1 + OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator_pretrainedModelURL, &v25 - v10);
  v29 = v6;
  v30 = v5;
  (*(v6 + 16))(v8, a1 + OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator_modelPath, v5);
  v26 = sub_22874CA2C();
  inited = sub_2287CA5C0();
  v14 = *(inited + 16);
  if (v14)
  {
    v31 = MEMORY[0x277D84F90];
    v15 = &v31;
    sub_2287CBAC0();
    v16 = 0;
    while (v16 < *(inited + 16))
    {
      v17 = v16 + 1;
      v2 = sub_22874DEFC(*(inited + v16 + 32));
      v15 = &v31;
      sub_2287CBA90();
      v3 = *(v31 + 16);
      sub_2287CBAD0();
      sub_2287CBAE0();
      sub_2287CBAA0();
      v16 = v17;
      if (v14 == v17)
      {

        v3 = v31;
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_8;
  }

  v3 = MEMORY[0x277D84F90];
LABEL_7:
  v2 = *(a1 + OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator_dataSources);
  v14 = sub_22874D450();
  v15 = *(a1 + OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator_metricsRecorder);
  sub_2287035A4(0, &qword_280DE1268, MEMORY[0x277D84F68] + 8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2287CCC50;
  if (qword_280DDFEB8 != -1)
  {
    goto LABEL_10;
  }

LABEL_8:
  v18 = qword_280DDFEC0;
  *(inited + 32) = qword_280DDFEC0;
  v19 = *(a1 + OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator_dispatchQueue);
  v20 = v18;
  v24 = v19;
  v21 = v26;
  v22 = static RelevanceEngineCoordinator.instantiateEngine(engineName:modelVersion:pretrainedModelURL:modelURL:primaryFeatures:feedSections:dataSources:relevanceProviderManagerClasses:metricsRecorder:interactionDescriptors:observerQueue:)(v28, v27, 9, v11, v8, v26, v3, v2, v14, v15, inited, v24);

  swift_setDeallocating();
  swift_arrayDestroy();
  (*(v29 + 8))(v8, v30);
  sub_22874BF68(v11);
  return v22;
}

void *sub_22874DEFC(uint64_t a1)
{
  v1 = a1;
  v2 = sub_2287CAA50();
  v141 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v134 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2287C9B20();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v134 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(MEMORY[0x277D444A8]) init];
  _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0();
  v10 = sub_2287CB210();

  v11 = v9;
  [v9 setName_];

  if (v1 > 2u)
  {
    if (v1 == 3)
    {
      if (qword_280DE37D8 != -1)
      {
        swift_once();
      }

      v35 = qword_280DE63A0;
      v136 = qword_280DE63A0;
      v36 = *MEMORY[0x277D11D88];
      v37 = *(v6 + 104);
      v139 = (v6 + 104);
      v140 = v37;
      v37(v8, v36, v5);
      sub_2287C9B10();
      v38 = *(v6 + 8);
      v137 = v6 + 8;
      v138 = v38;
      v38(v8, v5);
      v39 = sub_2287CB210();

      v40 = objc_opt_self();
      v41 = [v40 conditionForFeature:v35 hasValue:v39];

      v42 = [v40 notCondition_];
      v43 = objc_opt_self();
      v44 = [v43 trueCondition];
      v45 = [objc_allocWithZone(MEMORY[0x277D44468]) initWithLeftCondition:v41 rightCondition:v42 comparisonCondition:v44 order:1];

      LODWORD(v46) = 1157234688;
      [v45 setPriority_];
      v47 = v45;
      v141 = v43;
      v48 = [v11 rules];
      sub_228703004(0, &qword_280DE35F0, 0x277D444A0);
      sub_22874FE2C();
      v49 = sub_2287CB470();

      v142 = v49;
      v135 = v47;
      sub_228723CA8(&v143, v47);

      v50 = sub_2287CB460();

      [v11 setRules_];

      v140(v8, *MEMORY[0x277D11DC8], v5);
      sub_2287C9B10();
      v138(v8, v5);
      v51 = sub_2287CB210();

      v52 = [v40 conditionForFeature:v136 hasValue:v51];

      v53 = [v40 notCondition_];
      v54 = [v43 trueCondition];
      v55 = [objc_allocWithZone(MEMORY[0x277D44468]) initWithLeftCondition:v52 rightCondition:v53 comparisonCondition:v54 order:1];

      LODWORD(v56) = 1148846080;
      [v55 setPriority_];
      v57 = v55;
      v58 = [v11 rules];
      v59 = sub_2287CB470();

      v142 = v59;
      v134 = v57;
      sub_228723CA8(&v143, v57);

      v60 = sub_2287CB460();

      [v11 setRules_];

      v140(v8, *MEMORY[0x277D11DB0], v5);
      sub_2287C9B10();
      v61 = v5;
      v62 = v11;
      v63 = v141;
      v138(v8, v61);
      v64 = sub_2287CB210();

      v65 = [v40 conditionForFeature:v136 hasValue:v64];

      v66 = [v40 notCondition_];
      v67 = [v63 trueCondition];
      v68 = [objc_allocWithZone(MEMORY[0x277D44468]) initWithLeftCondition:v65 rightCondition:v66 comparisonCondition:v67 order:1];

      LODWORD(v69) = 1147207680;
      [v68 setPriority_];
      v70 = v68;
      v71 = [v62 rules];
      v72 = sub_2287CB470();

      v142 = v72;
      v140 = v70;
      sub_228723CA8(&v143, v70);

      v73 = sub_2287CB460();

      [v62 setRules_];

      if (qword_280DE37F8 != -1)
      {
        swift_once();
      }

      v74 = qword_280DE63C0;
      v75 = [v40 conditionHasValueForFeature_];
      v76 = [v63 conditionForLeftFeature:v74 relation:2 rightFeature:v74];
      v77 = [objc_allocWithZone(MEMORY[0x277D44468]) initWithLeftCondition:v75 rightCondition:v75 comparisonCondition:v76 order:1];

      LODWORD(v78) = 1144750080;
      [v77 setPriority_];
      v79 = v77;
      v80 = [v62 rules];
      v81 = sub_2287CB470();

      v142 = v81;
      v139 = v79;
      sub_228723CA8(&v143, v79);

      v82 = sub_2287CB460();

      [v62 setRules_];

      if (qword_280DE37E0 != -1)
      {
        swift_once();
      }

      v83 = qword_280DE63A8;
      v84 = [v40 conditionHasValueForFeature_];
      v85 = [v141 conditionForLeftFeature:v83 relation:2 rightFeature:v83];
      v86 = [objc_allocWithZone(MEMORY[0x277D44468]) initWithLeftCondition:v84 rightCondition:v84 comparisonCondition:v85 order:1];

      LODWORD(v87) = 1140457472;
      [v86 setPriority_];
      v88 = v86;
      v89 = [v62 rules];
      v90 = sub_2287CB470();

      v142 = v90;
      v138 = v88;
      sub_228723CA8(&v143, v88);

      v91 = sub_2287CB460();

      [v62 setRules_];

      v92 = _sSo6RERuleC18HealthPlatformCoreE38makeExcludeIfValueIsZeroForFeatureRule7featureABSo9REFeatureC_tFZ_0(v74);
      LODWORD(v93) = 1148846080;
      [v92 setPriority_];
      v94 = v92;
      v95 = [v62 &off_278607190 + 2];
      v96 = sub_2287CB470();

      v142 = v96;
      sub_228723CA8(&v143, v94);

      v97 = sub_2287CB460();

      [v62 setRules_];

      if (qword_280DE0F98 != -1)
      {
        swift_once();
      }

      v98 = qword_280DE6250;
      v99 = [v40 conditionHasValueForFeature_];
      v100 = [v141 conditionForLeftFeature:v98 relation:2 rightFeature:v98];
      v101 = [objc_allocWithZone(MEMORY[0x277D44468]) initWithLeftCondition:v99 rightCondition:v99 comparisonCondition:v100 order:-1];

      LODWORD(v102) = 1120403456;
      [v101 setPriority_];
      v103 = v101;
      v104 = [v62 &off_278607190 + 2];
      v105 = sub_2287CB470();

      v142 = v105;
      sub_228723CA8(&v143, v103);

      v106 = sub_2287CB460();

      [v62 setRules_];

      return v62;
    }

    else
    {
      if (v1 == 4)
      {
        if (qword_280DE37E0 != -1)
        {
          swift_once();
        }

        v21 = qword_280DE63A8;
        v22 = [objc_opt_self() conditionHasValueForFeature_];
        v23 = [objc_opt_self() conditionForLeftFeature:v21 relation:2 rightFeature:v21];
        v24 = [objc_allocWithZone(MEMORY[0x277D44468]) initWithLeftCondition:v22 rightCondition:v22 comparisonCondition:v23 order:1];

        LODWORD(v25) = 1144750080;
        [v24 setPriority_];
        v17 = v24;
        v26 = [v9 rules];
        sub_228703004(0, &qword_280DE35F0, 0x277D444A0);
        sub_22874FE2C();
        v27 = sub_2287CB470();

        v142 = v27;
        sub_228723CA8(&v143, v17);

        v28 = sub_2287CB460();

        [v9 setRules_];

        if (qword_280DE37F8 == -1)
        {
          goto LABEL_13;
        }

        goto LABEL_33;
      }

      sub_2287CA9E0();
      v126 = sub_2287CAA40();
      v127 = sub_2287CB5F0();
      if (os_log_type_enabled(v126, v127))
      {
        v128 = swift_slowAlloc();
        v129 = swift_slowAlloc();
        v142 = v129;
        *v128 = 136315138;
        v143 = v140;
        swift_getMetatypeMetadata();
        v130 = sub_2287CB250();
        v132 = sub_2287031D8(v130, v131, &v142);

        *(v128 + 4) = v132;
        _os_log_impl(&dword_2286FF000, v126, v127, "[%s]: It's the shared dashboard manager's responsibility to pick the trends feed", v128, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v129);
        MEMORY[0x22AABFD90](v129, -1, -1);
        MEMORY[0x22AABFD90](v128, -1, -1);
      }

      (*(v141 + 1))(v4, v2);
    }
  }

  else if (v1)
  {
    if (v1 != 1)
    {
      if (qword_280DE37E0 != -1)
      {
        swift_once();
      }

      v107 = qword_280DE63A8;
      v108 = [objc_opt_self() conditionHasValueForFeature_];
      v109 = [objc_opt_self() conditionForLeftFeature:v107 relation:2 rightFeature:v107];
      v110 = [objc_allocWithZone(MEMORY[0x277D44468]) initWithLeftCondition:v108 rightCondition:v108 comparisonCondition:v109 order:1];

      LODWORD(v111) = 1140457472;
      [v110 setPriority_];
      v17 = v110;
      v112 = [v9 rules];
      sub_228703004(0, &qword_280DE35F0, 0x277D444A0);
      sub_22874FE2C();
      v113 = sub_2287CB470();

      v142 = v113;
      sub_228723CA8(&v143, v17);

      v114 = sub_2287CB460();

      [v9 setRules_];

      if (qword_280DE37F8 != -1)
      {
        swift_once();
      }

      v115 = _sSo6RERuleC18HealthPlatformCoreE38makeExcludeIfValueIsZeroForFeatureRule7featureABSo9REFeatureC_tFZ_0(qword_280DE63C0);
      LODWORD(v116) = 1148846080;
      [v115 setPriority_];
      v31 = v115;
      v117 = [v9 rules];
      v118 = sub_2287CB470();

      v142 = v118;
      sub_228723CA8(&v143, v31);

      v119 = sub_2287CB460();

      [v9 setRules_];

      v120 = _sSo6RERuleC18HealthPlatformCoreE47makeExcludeTwoBarComparisonWithLowMagnitudeRuleAByFZ_0();
      LODWORD(v121) = 1148846080;
      [v120 setPriority_];
      v122 = v120;
      v123 = [v9 rules];
      v124 = sub_2287CB470();

      v142 = v124;
      sub_228723CA8(&v143, v122);

      v125 = sub_2287CB460();

      [v11 setRules_];

      goto LABEL_28;
    }

    if (qword_280DE37E0 != -1)
    {
      swift_once();
    }

    v12 = qword_280DE63A8;
    v13 = [objc_opt_self() conditionHasValueForFeature_];
    v14 = [objc_opt_self() conditionForLeftFeature:v12 relation:2 rightFeature:v12];
    v15 = [objc_allocWithZone(MEMORY[0x277D44468]) initWithLeftCondition:v13 rightCondition:v13 comparisonCondition:v14 order:1];

    LODWORD(v16) = 1144750080;
    [v15 setPriority_];
    v17 = v15;
    v18 = [v9 rules];
    sub_228703004(0, &qword_280DE35F0, 0x277D444A0);
    sub_22874FE2C();
    v19 = sub_2287CB470();

    v142 = v19;
    sub_228723CA8(&v143, v17);

    v20 = sub_2287CB460();

    [v9 setRules_];

    if (qword_280DE37F8 == -1)
    {
LABEL_13:
      v29 = _sSo6RERuleC18HealthPlatformCoreE38makeExcludeIfValueIsZeroForFeatureRule7featureABSo9REFeatureC_tFZ_0(qword_280DE63C0);
      LODWORD(v30) = 1148846080;
      [v29 setPriority_];
      v31 = v29;
      v32 = [v9 rules];
      v33 = sub_2287CB470();

      v142 = v33;
      sub_228723CA8(&v143, v31);

      v34 = sub_2287CB460();

      [v9 setRules_];

LABEL_28:
      return v11;
    }

LABEL_33:
    swift_once();
    goto LABEL_13;
  }

  return v11;
}

id sub_22874F3A4()
{
  v0 = sub_22874DAE4();
  v1 = [v0 automaticallyResumeEngine];

  return v1;
}

void sub_22874F3E0(char a1)
{
  v2 = sub_22874DAE4();
  [v2 setAutomaticallyResumeEngine_];
}

id (*sub_22874F434(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = sub_22874DAE4();
  v4 = [v3 automaticallyResumeEngine];

  *(a1 + 8) = v4;
  return sub_22874F49C;
}

id sub_22874F4C0()
{
  if (qword_280DDFEB8 != -1)
  {
    swift_once();
  }

  v1 = qword_280DDFEC0;

  return v1;
}

id SummaryTabRelevanceEngineCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SummaryTabRelevanceEngineCoordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SummaryTabRelevanceEngineCoordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_22874F754()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D44458]) init];
  v1 = sub_2287CB210();
  [v0 setName_];

  [v0 setEnableExploreExploit_];
  if (qword_280DE11C8 != -1)
  {
    swift_once();
  }

  result = [v0 setBiasFeature_];
  qword_280DDFEC0 = v0;
  return result;
}

void sub_22874F81C()
{
  v0 = sub_22874FDD4();
  if (swift_isClassType() && v0)
  {
    sub_2287035A4(0, &qword_280DE1268, MEMORY[0x277D84F68] + 8);
  }

  else
  {
    sub_228706364(0, &qword_280DE35B0, sub_22874FDD4, MEMORY[0x277D84560]);
  }
}

uint64_t sub_22874F8A8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_228706364(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for SummaryTabRelevanceEngineCoordinator(uint64_t a1)
{
  result = qword_280DE0D50;
  if (!qword_280DE0D50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22874F97C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22874F9D8(uint64_t a1)
{
  sub_2287C9700();
  if (v1 <= 0x3F)
  {
    sub_228706364(319, &unk_280DE3AA0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_22874FDD4()
{
  result = qword_280DE3600;
  if (!qword_280DE3600)
  {
    sub_228703004(255, &qword_280DE3608, 0x277D44490);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_280DE3600);
  }

  return result;
}

unint64_t sub_22874FE2C()
{
  result = qword_280DE35E8;
  if (!qword_280DE35E8)
  {
    sub_228703004(255, &qword_280DE35F0, 0x277D444A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE35E8);
  }

  return result;
}

uint64_t sub_22874FEF0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

void sub_22874FF30()
{
  sub_2287CA4A0();
  sub_2287CA100();
  v0 = sub_2287CB210();

  v1 = [objc_opt_self() featureWithName:v0 featureType:2];

  qword_280DE6378 = v1;
}

void sub_22874FFB0()
{
  if (qword_280DE37A0 != -1)
  {
    swift_once();
  }

  v0 = qword_280DE6378;
  v1 = sub_228795DF8(5);

  qword_280DE6380 = v1;
}

void sub_228750024()
{
  sub_228711964();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2287CCC50;
  v1 = objc_opt_self();
  if (qword_280DE37A0 != -1)
  {
    swift_once();
  }

  v2 = qword_280DE6378;
  sub_2287CA4A0();
  sub_2287CA110();
  v3 = [objc_opt_self() featureValueWithDouble_];
  v4 = [v1 customRelevanceProviderForFeature:v2 withValue:v3];

  if (v4)
  {
    *(v0 + 32) = v4;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_228750148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v62 = a2;
  v63 = a3;
  ObjectType = swift_getObjectType();
  v7 = sub_2287CAA50();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v64 = &v58 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v58 - v14;
  sub_2287CAA30();

  v16 = sub_2287CAA40();
  v17 = sub_2287CB610();

  v18 = os_log_type_enabled(v16, v17);
  v61 = a1;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v59 = v11;
    v20 = v19;
    v21 = swift_slowAlloc();
    v58 = v4;
    v22 = v21;
    v65[0] = v21;
    *v20 = 136446466;
    v23 = sub_2287CBE60();
    v60 = ObjectType;
    v25 = sub_2287031D8(v23, v24, v65);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2080;
    sub_228750A74();
    v26 = sub_2287CB150();
    v28 = sub_2287031D8(v26, v27, v65);

    *(v20 + 14) = v28;
    _os_log_impl(&dword_2286FF000, v16, v17, "[%{public}s] Training metrics received from RelevanceEngine: %s", v20, 0x16u);
    swift_arrayDestroy();
    v29 = v22;
    v4 = v58;
    MEMORY[0x22AABFD90](v29, -1, -1);
    v30 = v20;
    v11 = v59;
    MEMORY[0x22AABFD90](v30, -1, -1);
  }

  v31 = *(v8 + 8);
  v31(v15, v7);
  v32 = v4 + OBJC_IVAR____TtC18HealthPlatformCore35RelevanceEngineMetricsBlockRecorder_protectedState;
  os_unfair_lock_lock((v4 + OBJC_IVAR____TtC18HealthPlatformCore35RelevanceEngineMetricsBlockRecorder_protectedState));
  v33 = *(v32 + 8);
  if (v33[2])
  {
    v35 = v33[4];
    v34 = v33[5];

    sub_2287509B4(0, 1);
    os_unfair_lock_unlock(v32);
    if (v35)
    {
      v36 = v64;
      sub_2287CAA30();
      v37 = sub_2287CAA40();
      v38 = sub_2287CB610();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v60 = v7;
        v41 = v40;
        v65[0] = v40;
        *v39 = 136446210;
        v42 = sub_2287CBE60();
        v44 = sub_2287031D8(v42, v43, v65);

        *(v39 + 4) = v44;
        _os_log_impl(&dword_2286FF000, v37, v38, "[%{public}s] Has handler, sending metrics to handler", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v41);
        MEMORY[0x22AABFD90](v41, -1, -1);
        MEMORY[0x22AABFD90](v39, -1, -1);

        v45 = v64;
        v46 = v60;
      }

      else
      {

        v45 = v36;
        v46 = v7;
      }

      v31(v45, v46);
      v65[0] = v62;
      v65[1] = v63;
      v66 = v61;
      v35(&v66, v65);
      return sub_228714BC0(v35, v34);
    }
  }

  else
  {
    os_unfair_lock_unlock(v32);
  }

  sub_2287CAA30();
  v47 = sub_2287CAA40();
  v48 = sub_2287CB610();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = v7;
    v51 = swift_slowAlloc();
    v65[0] = v51;
    *v49 = 136446210;
    v52 = sub_2287CBE60();
    v54 = sub_2287031D8(v52, v53, v65);

    *(v49 + 4) = v54;
    _os_log_impl(&dword_2286FF000, v47, v48, "[%{public}s] No handler, metrics record ignored", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    MEMORY[0x22AABFD90](v51, -1, -1);
    MEMORY[0x22AABFD90](v49, -1, -1);

    v55 = v11;
    v56 = v50;
  }

  else
  {

    v55 = v11;
    v56 = v7;
  }

  return (v31)(v55, v56);
}

id sub_228750784(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for RelevanceEngineMetricsBlockRecorder();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_2287507F0()
{
  if (!qword_27D850DC0)
  {
    v0 = sub_2287CA820();
    if (!v1)
    {
      atomic_store(v0, &qword_27D850DC0);
    }
  }
}

uint64_t sub_228750850(uint64_t a1, char a2)
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

  sub_2287CB920();
LABEL_9:
  result = sub_2287CBA60();
  *v2 = result;
  return result;
}

unint64_t sub_2287508F0(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  sub_22870CFB4();
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_2287509B4(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_228723390(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_2287508F0(v6, a2, 0);
  *v2 = v4;
  return result;
}

unint64_t sub_228750A74()
{
  result = qword_280DE39C0;
  if (!qword_280DE39C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DE39C0);
  }

  return result;
}

uint64_t sub_228750B04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_2287CA800();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_2287CB920();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_2287CB920();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_228750C04(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_2287CB920();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = sub_2287CB920();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_228750850(result, 1);

  return sub_228750B04(v5, v3, 0);
}

uint64_t sub_228750CE0(uint64_t a1)
{
  v2 = sub_2287C9ED0();
  v70 = *(v2 - 8);
  v71 = v2;
  MEMORY[0x28223BE20](v2);
  v72 = v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228751E48(0, &qword_280DE1A88, &qword_280DE3358, MEMORY[0x277D12200], MEMORY[0x277CBCE78]);
  v68 = *(v4 - 8);
  v69 = v4;
  MEMORY[0x28223BE20](v4);
  v67 = v64 - v5;
  v6 = sub_2287C9DF0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2287C9E70();
  v73 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v74 = v64 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = v64 - v16;
  v18 = sub_2287C9EB0();
  v19 = sub_2287C9CA0();
  v20 = sub_2287C9C80();

  if ((v20 & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v66 = v10;
  sub_2287C9CA0();
  v21 = sub_22872C094(MEMORY[0x277D84F90]);
  sub_228751698(v21);

  v22 = *(v7 + 104);
  v22(v9, *MEMORY[0x277D11F20], v6);
  sub_2287C9E40();
  sub_2287C9E80();
  __swift_project_boxed_opaque_existential_1(v79, v79[3]);
  if ((sub_2287C9D80() & 1) == 0)
  {
    sub_228751E48(0, &qword_280DE1878, &qword_280DE33F8, MEMORY[0x277D11F60], MEMORY[0x277D84560]);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_2287CCFE0;
    v25 = *(v75 + 7);
    sub_2287010E4(v75 + 16, &v76);
    v26 = v73;
    v27 = *(v73 + 16);
    v64[1] = v73 + 16;
    v75 = v27;
    v28 = v74;
    v29 = a1;
    v30 = v66;
    (v27)(v74, v17);
    v31 = v70;
    v32 = v71;
    v33 = v72;
    (*(v70 + 16))(v72, v29, v71);
    v34 = type metadata accessor for GenerationOperationToGeneratorAdaptor(0);
    v35 = swift_allocObject();
    *(v35 + OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_queue) = v25;
    (*(v26 + 32))(v35 + OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_domain, v28, v30);
    (*(v31 + 32))(v35 + OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_context, v33, v32);
    sub_22871AC0C(&v76, v35 + OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_pluginInfo);
    v77 = v34;
    v78 = sub_228751EB0(&qword_280DE0D48, type metadata accessor for GenerationOperationToGeneratorAdaptor, &protocol conformance descriptor for GenerationOperationToGeneratorAdaptor);
    *&v76 = v35;
    sub_22870D3A8(0, &qword_280DE3358, MEMORY[0x277D12200]);
    v36 = v25;
    v37 = v67;
    sub_2287CADB0();
    sub_228751EF8();
    v38 = v69;
    sub_2287CAF40();
    (*(v68 + 8))(v37, v38);
    v75(v28, v17, v30);
    v39 = sub_2287CA360();
    v40 = MEMORY[0x277D120A8];
    v41 = v65;
    *(v65 + 56) = v39;
    *(v41 + 64) = v40;
    __swift_allocate_boxed_opaque_existential_0((v41 + 32));
    sub_2287C9CD0();
    (*(v26 + 8))(v17, v30);
    goto LABEL_8;
  }

  v69 = a1;
  __swift_project_boxed_opaque_existential_1(v75 + 2, *(v75 + 5));
  if (sub_2287C9A70() != 0xD000000000000020 || 0x80000002287D0FA0 != v23)
  {
    v42 = sub_2287CBD00();

    if (v42)
    {
      goto LABEL_10;
    }

    sub_228751E48(0, &qword_280DE1878, &qword_280DE33F8, MEMORY[0x277D11F60], MEMORY[0x277D84560]);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_2287CCFE0;
    v57 = *(v75 + 7);
    sub_2287010E4(v75 + 16, &v76);
    v58 = v73;
    v59 = v74;
    v60 = v66;
    (*(v73 + 16))(v74, v17, v66);
    v61 = v72;
    (*(v70 + 16))(v72, v69, v71);
    v62 = type metadata accessor for InteractiveGeneratorToPipelineAdaptor(0);
    swift_allocObject();
    v63 = InteractiveGeneratorToPipelineAdaptor.init(queue:pluginInfo:domain:context:commitImmediately:)(v57, &v76, v59, v61, 0);
    *(v41 + 56) = v62;
    *(v41 + 64) = sub_228751EB0(&qword_280DE20B0, type metadata accessor for InteractiveGeneratorToPipelineAdaptor, &protocol conformance descriptor for InteractiveGeneratorToPipelineAdaptor);
    *(v41 + 32) = v63;
    (*(v58 + 8))(v17, v60);
LABEL_8:
    __swift_destroy_boxed_opaque_existential_0(v79);
    return v41;
  }

LABEL_10:
  v64[0] = v17;
  v43 = v73;
  v44 = *(v73 + 16);
  v45 = v74;
  v46 = v66;
  v44();
  v22(v9, *MEMORY[0x277D11F10], v6);
  v47 = v45;
  sub_2287C9E10();
  sub_228751E48(0, &qword_280DE1878, &qword_280DE33F8, MEMORY[0x277D11F60], MEMORY[0x277D84560]);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_2287CCFE0;
  v49 = *(v75 + 7);
  sub_2287010E4(v75 + 16, &v76);
  (v44)(v13, v47, v46);
  v50 = v70;
  v52 = v71;
  v51 = v72;
  (*(v70 + 16))(v72, v69, v71);
  v53 = type metadata accessor for GenerationOperationToGeneratorPipelineAdaptor(0);
  v54 = swift_allocObject();
  *(v54 + OBJC_IVAR____TtC18HealthPlatformCore45GenerationOperationToGeneratorPipelineAdaptor_queue) = v49;
  (*(v43 + 32))(v54 + OBJC_IVAR____TtC18HealthPlatformCore45GenerationOperationToGeneratorPipelineAdaptor_domain, v13, v46);
  (*(v50 + 32))(v54 + OBJC_IVAR____TtC18HealthPlatformCore45GenerationOperationToGeneratorPipelineAdaptor_context, v51, v52);
  sub_22871AC0C(&v76, v54 + OBJC_IVAR____TtC18HealthPlatformCore45GenerationOperationToGeneratorPipelineAdaptor_pluginInfo);
  *(v48 + 56) = v53;
  *(v48 + 64) = sub_228751EB0(&qword_280DE08B0, type metadata accessor for GenerationOperationToGeneratorPipelineAdaptor, "QͤY(^");
  *(v48 + 32) = v54;
  v55 = *(v43 + 8);
  v56 = v49;
  v55(v74, v46);
  v55(v64[0], v46);
  __swift_destroy_boxed_opaque_existential_0(v79);
  return v48;
}

void sub_228751698(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_6;
  }

  if (!sub_2287CB920())
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_228751F7C(0);
  v3 = sub_2287CB9F0();
LABEL_6:
  if (sub_228703004(0, &qword_280DE3638, 0x277CCD720) == MEMORY[0x277D837D0])
  {
    if (v2)
    {

      sub_2287CB8D0();
      sub_228703004(0, &qword_280DE19B0, 0x277CCD8D8);
      sub_22872C220(&qword_280DE19A8, &qword_280DE19B0, 0x277CCD8D8);
      sub_2287CB4C0();
      v1 = v39;
      v8 = v40;
      v9 = v41;
      v10 = v42;
      v11 = v43;
    }

    else
    {
      v30 = -1 << *(v1 + 32);
      v8 = v1 + 56;
      v9 = ~v30;
      v31 = -v30;
      if (v31 < 64)
      {
        v32 = ~(-1 << v31);
      }

      else
      {
        v32 = -1;
      }

      v11 = v32 & *(v1 + 56);

      v10 = 0;
    }

    while ((v1 & 0x8000000000000000) == 0)
    {
      if (v11)
      {
        v33 = v10;
        goto LABEL_44;
      }

      v36 = v10;
      do
      {
        v33 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          goto LABEL_60;
        }

        if (v33 >= ((v9 + 64) >> 6))
        {
          v37 = v1;
          goto LABEL_56;
        }

        v11 = *(v8 + 8 * v33);
        ++v36;
      }

      while (!v11);
      v10 = v33;
LABEL_44:
      v34 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v35 = *(*(v1 + 48) + ((v33 << 9) | (8 * v34)));
LABEL_45:
      sub_228751D08(v35);
    }

    if (sub_2287CB950())
    {
      sub_228703004(0, &qword_280DE19B0, 0x277CCD8D8);
      swift_dynamicCast();
      v35 = v38;
      goto LABEL_45;
    }

    v37 = v1;
LABEL_56:
    sub_22870B3D4(v37);
LABEL_57:

    return;
  }

  if (v2)
  {

    sub_2287CB8D0();
    sub_228703004(0, &qword_280DE19B0, 0x277CCD8D8);
    sub_22872C220(&qword_280DE19A8, &qword_280DE19B0, 0x277CCD8D8);
    sub_2287CB4C0();
    v1 = v39;
    v4 = v40;
    v5 = v41;
    v6 = v42;
    v7 = v43;
  }

  else
  {
    v12 = -1 << *(v1 + 32);
    v4 = v1 + 56;
    v5 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v7 = v14 & *(v1 + 56);

    v6 = 0;
  }

  v15 = (v5 + 64) >> 6;
  v16 = v3 + 56;
  while (v1 < 0)
  {
    if (!sub_2287CB950())
    {
LABEL_38:
      sub_22870B3D4(v1);
      goto LABEL_57;
    }

    sub_228703004(0, &qword_280DE19B0, 0x277CCD8D8);
    swift_dynamicCast();
    v19 = v38;
LABEL_29:
    v22 = sub_2287CB7E0();
    v23 = -1 << *(v3 + 32);
    v24 = v22 & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) != 0)
    {
      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = 0;
      v27 = (63 - v23) >> 6;
      do
      {
        if (++v25 == v27 && (v26 & 1) != 0)
        {
          __break(1u);
          goto LABEL_59;
        }

        v28 = v25 == v27;
        if (v25 == v27)
        {
          v25 = 0;
        }

        v26 |= v28;
        v29 = *(v16 + 8 * v25);
      }

      while (v29 == -1);
      v17 = __clz(__rbit64(~v29)) + (v25 << 6);
    }

    *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
    *(*(v3 + 48) + 8 * v17) = v19;
    ++*(v3 + 16);
  }

  if (v7)
  {
    v18 = v6;
LABEL_28:
    v21 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v38 = *(*(v1 + 48) + ((v18 << 9) | (8 * v21)));
    v19 = v38;
    goto LABEL_29;
  }

  v20 = v6;
  while (1)
  {
    v18 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      goto LABEL_38;
    }

    v7 = *(v4 + 8 * v18);
    ++v20;
    if (v7)
    {
      v6 = v18;
      goto LABEL_28;
    }
  }

LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
}

uint64_t sub_228751B9C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocClassInstance();
}

unint64_t sub_228751C84(uint64_t a1, uint64_t a2)
{
  sub_2287CB7E0();
  result = sub_2287CB8B0();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_228751D08(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_2287CB7E0();
  v5 = v3 + 56;
  v6 = -1 << *(v3 + 32);
  v7 = v4 & ~v6;
  v8 = v7 >> 6;
  v9 = *(v3 + 56 + 8 * (v7 >> 6));
  v10 = 1 << v7;
  if (((1 << v7) & v9) != 0)
  {
    v11 = ~v6;
    sub_228703004(0, &qword_280DE3638, 0x277CCD720);
    while (1)
    {
      v12 = *(*(v3 + 48) + 8 * v7);
      v13 = sub_2287CB7F0();

      if (v13)
      {
        break;
      }

      v7 = (v7 + 1) & v11;
      v8 = v7 >> 6;
      v9 = *(v5 + 8 * (v7 >> 6));
      v10 = 1 << v7;
      if (((1 << v7) & v9) == 0)
      {
        goto LABEL_5;
      }
    }

    v15 = *(v3 + 48);
    v16 = *(v15 + 8 * v7);
    *(v15 + 8 * v7) = a1;
  }

  else
  {
LABEL_5:
    v14 = *(v3 + 16);
    if (v14 >= *(v3 + 24))
    {
      __break(1u);
    }

    else
    {
      *(v5 + 8 * v8) = v10 | v9;
      *(*(v3 + 48) + 8 * v7) = a1;
      *(v3 + 16) = v14 + 1;
    }
  }
}

void sub_228751E48(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_22870D3A8(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_228751EB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_228751EF8()
{
  result = qword_280DE00C0;
  if (!qword_280DE00C0)
  {
    sub_228751E48(255, &qword_280DE1A88, &qword_280DE3358, MEMORY[0x277D12200], MEMORY[0x277CBCE78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE00C0);
  }

  return result;
}

void sub_228751F7C(uint64_t a1)
{
  if (!qword_280DE18E8)
  {
    sub_228703004(255, &qword_280DE3638, 0x277CCD720);
    sub_22872C220(&qword_280DE3630, &qword_280DE3638, 0x277CCD720);
    v1 = sub_2287CBA00();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE18E8);
    }
  }
}

void sub_228752014()
{
  v1 = v0;
  v2 = sub_2287CAA50();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 name];
  v7 = sub_2287CB220();
  v9 = v8;

  sub_2287CA4A0();
  if (sub_2287CA120() == v7 && v10 == v9)
  {

LABEL_8:

    v13 = MEMORY[0x277D12150];
    v14 = MEMORY[0x277D12148];
    v15 = MEMORY[0x277D12160];
    v16 = sub_228750024;
LABEL_9:
    sub_228752780(v15, v13, v16, v14);
    return;
  }

  v12 = sub_2287CBD00();

  if (v12)
  {
    goto LABEL_8;
  }

  sub_2287CA3E0();
  if (sub_2287CA120() == v7 && v17 == v9)
  {

LABEL_15:

    v13 = MEMORY[0x277D12118];
    v14 = MEMORY[0x277D12110];
    v15 = MEMORY[0x277D12128];
    v16 = sub_22875731C;
    goto LABEL_9;
  }

  v18 = sub_2287CBD00();

  if (v18)
  {
    goto LABEL_15;
  }

  sub_2287CA380();
  if (sub_2287CA120() == v7 && v19 == v9)
  {

LABEL_20:

    sub_228752AFC();
    return;
  }

  v20 = sub_2287CBD00();

  if (v20)
  {
    goto LABEL_20;
  }

  sub_2287CA500();
  if (sub_2287CA120() == v7 && v21 == v9)
  {

LABEL_27:

    v23 = MEMORY[0x277D12188];
    v24 = MEMORY[0x277D12180];
    v25 = MEMORY[0x277D12198];
    v26 = sub_228746D28;
LABEL_28:
    sub_2287531DC(v25, v23, v26, v24);
    return;
  }

  v22 = sub_2287CBD00();

  if (v22)
  {
    goto LABEL_27;
  }

  sub_22875272C();
  if (sub_2287CA120() == v7 && v27 == v9)
  {

LABEL_33:

    sub_228752E70();
    return;
  }

  v28 = sub_2287CBD00();

  if (v28)
  {
    goto LABEL_33;
  }

  sub_2287CA040();
  if (sub_2287CA120() == v7 && v29 == v9)
  {

LABEL_40:

    v23 = MEMORY[0x277D11F88];
    v24 = MEMORY[0x277D11F80];
    v25 = MEMORY[0x277D11F90];
    v26 = sub_228746874;
    goto LABEL_28;
  }

  v30 = sub_2287CBD00();

  if (v30)
  {
    goto LABEL_40;
  }

  sub_2287CA210();
  if (sub_2287CA120() == v7 && v31 == v9)
  {

LABEL_45:

    v23 = MEMORY[0x277D12018];
    v24 = MEMORY[0x277D12010];
    v25 = MEMORY[0x277D12028];
    v26 = sub_228746B5C;
    goto LABEL_28;
  }

  v32 = sub_2287CBD00();

  if (v32)
  {
    goto LABEL_45;
  }

  v45 = v3;
  sub_2287CA140();
  if (sub_2287CA120() == v7 && v33 == v9)
  {

LABEL_50:
    v23 = MEMORY[0x277D11FE8];
    v24 = MEMORY[0x277D11FE0];
    v25 = MEMORY[0x277D11FF8];
    v26 = sub_228746978;
    goto LABEL_28;
  }

  v34 = sub_2287CBD00();

  if (v34)
  {
    goto LABEL_50;
  }

  sub_2287CA9E0();
  v35 = v1;
  v36 = sub_2287CAA40();
  v37 = sub_2287CB5F0();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v46 = v39;
    *v38 = 136446210;
    v40 = [v35 name];
    v41 = sub_2287CB220();
    v43 = v42;

    v44 = sub_2287031D8(v41, v43, &v46);

    *(v38 + 4) = v44;
    _os_log_impl(&dword_2286FF000, v36, v37, "A RelevanceFeatureTag was submitted that we do not have logic to decode (or we forgot to write it): %{public}s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x22AABFD90](v39, -1, -1);
    MEMORY[0x22AABFD90](v38, -1, -1);
  }

  (*(v45 + 8))(v5, v2);
}

unint64_t sub_22875272C()
{
  result = qword_280DE0F70;
  if (!qword_280DE0F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE0F70);
  }

  return result;
}

uint64_t sub_228752780(uint64_t (*a1)(void), uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v14[1] = a4;
  v6 = sub_2287CAA50();
  v14[2] = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v7 = a1(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v14 - v9;
  v11 = sub_2287CA450();
  v12 = a3(v11);
  (*(v8 + 8))(v10, v7);
  return v12;
}

uint64_t sub_228752AFC()
{
  v0 = sub_2287CAA50();
  MEMORY[0x28223BE20](v0);
  v1 = sub_2287CA380();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CA450();
  (*(v2 + 8))(v4, v1);
  return MEMORY[0x277D84F90];
}

void sub_228752E70()
{
  v0 = sub_2287CAA50();
  MEMORY[0x28223BE20](v0);
  sub_22875357C();
  sub_2287CA450();
  sub_228711964();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2287CCC50;
  v2 = objc_allocWithZone(MEMORY[0x277D44448]);
  v3 = sub_2287CB210();
  v4 = [v2 initWithGroupIdentifier_];

  if (v4)
  {
    *(v1 + 32) = v4;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2287531DC(uint64_t (*a1)(void), uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v13[1] = a4;
  v6 = sub_2287CAA50();
  v13[2] = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v7 = a1(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v13 - v9;
  sub_2287CA450();
  sub_228711964();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2287CCC50;
  *(v11 + 32) = a3();
  (*(v8 + 8))(v10, v7);
  return v11;
}

unint64_t sub_22875357C()
{
  result = qword_280DE0F68;
  if (!qword_280DE0F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE0F68);
  }

  return result;
}

uint64_t sub_2287535D0()
{
  v1 = sub_2287C9810();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[0] = 95;
  v9[1] = 0xE100000000000000;
  v5 = [*(v0 + 24) profileIdentifier];
  v6 = [v5 identifier];

  sub_2287C97F0();
  sub_228754B24(&qword_280DE3468, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v7 = sub_2287CBCC0();
  MEMORY[0x22AABE980](v7);

  (*(v2 + 8))(v4, v1);
  return v9[0];
}

id sub_228753744(void *a1)
{
  v2 = sub_2287C9810();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x277D44458]) init];
  v12[0] = sub_2287CBE60();
  v12[1] = v7;
  MEMORY[0x22AABE980](0x656C69666F72705FLL, 0xE90000000000005FLL);
  v8 = [a1 identifier];
  sub_2287C97F0();

  sub_228754B24(&qword_280DE3468, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v9 = sub_2287CBCC0();
  MEMORY[0x22AABE980](v9);

  (*(v3 + 8))(v5, v2);
  v10 = sub_2287CB210();

  [v6 setName_];

  [v6 setEnableExploreExploit_];
  return v6;
}

id sub_228753920()
{
  static RelevanceEngineCoordinator.makeStandardFeatureTagFeatures()();
  v0 = objc_allocWithZone(MEMORY[0x277D44420]);
  sub_228703004(0, &qword_280DE35E0, 0x277D44418);
  v1 = sub_2287CB390();

  v2 = [v0 initWithFeatures_];

  return v2;
}

uint64_t sub_2287539B8()
{
  sub_228754B6C(0, &unk_280DE3AA0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_280DE0A68);
  v2 = __swift_project_value_buffer(v1, qword_280DE0A68);
  v3 = sub_2287C9700();
  v4 = *(*(v3 - 8) + 56);

  return v4(v2, 1, 1, v3);
}

uint64_t sub_228753A7C()
{
  v0 = sub_2287C9700();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v2, qword_280DE0A40);
  v5 = __swift_project_value_buffer(v0, qword_280DE0A40);
  v6 = [objc_opt_self() defaultManager];
  v7 = [v6 temporaryDirectory];

  sub_2287C96F0();
  return (*(v1 + 32))(v5, v4, v0);
}

uint64_t sub_228753BB0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return swift_deallocClassInstance();
}

id sub_228753C7C()
{
  v0 = sub_2287C9F50();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x277D444A8]) init];
  _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0();
  v5 = sub_2287CB210();

  v38 = v4;
  [v4 setName_];

  sub_2287035A4(0, &qword_280DE1268, MEMORY[0x277D84F68] + 8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2287CE380;
  if (qword_280DE37E8 != -1)
  {
LABEL_14:
    swift_once();
  }

  v7 = qword_280DE63B0;
  v1[13](v3, *MEMORY[0x277D11F40], v0);
  sub_2287C9F40();
  (v1[1])(v3, v0);
  v8 = sub_2287CB210();

  v9 = objc_opt_self();
  v10 = [v9 conditionForFeature:v7 hasValue:v8];

  v11 = [v9 notCondition_];
  v12 = objc_opt_self();
  v13 = [v12 trueCondition];
  v14 = [objc_allocWithZone(MEMORY[0x277D44468]) initWithLeftCondition:v10 rightCondition:v11 comparisonCondition:v13 order:1];

  *(inited + 32) = v14;
  if (qword_280DE37F8 != -1)
  {
    swift_once();
  }

  v15 = qword_280DE63C0;
  v16 = [v9 conditionHasValueForFeature_];
  v1 = &unk_278607000;
  v17 = [v12 conditionForLeftFeature:v15 relation:2 rightFeature:v15];
  v18 = [objc_allocWithZone(MEMORY[0x277D44468]) initWithLeftCondition:v16 rightCondition:v16 comparisonCondition:v17 order:1];

  *(inited + 40) = v18;
  if (qword_280DE0F98 != -1)
  {
    swift_once();
  }

  v19 = qword_280DE6250;
  v3 = [v9 conditionHasValueForFeature_];
  v20 = [v12 conditionForLeftFeature:v19 relation:2 rightFeature:v19];
  v21 = [objc_allocWithZone(MEMORY[0x277D44468]) initWithLeftCondition:v3 rightCondition:v3 comparisonCondition:v20 order:-1];

  v22 = 0;
  v37 = inited & 0xC000000000000001;
  *(inited + 48) = v21;
  v23 = inited & 0xFFFFFFFFFFFFFF8;
  v0 = 6;
  v24 = v38;
  do
  {
    v25 = v0 - 4;
    if (v37)
    {
      v26 = inited;
      v27 = MEMORY[0x22AABF120](v25, inited);
    }

    else
    {
      if (v25 >= *(v23 + 16))
      {
        __break(1u);
        goto LABEL_14;
      }

      v26 = inited;
      v27 = *(inited + 8 * v0);
    }

    v29 = v27;
    v30 = v22 + 1;
    *&v28 = v22;
    [v27 setPriority_];
    v31 = v29;
    v32 = [v24 rules];
    sub_228703004(0, &qword_280DE35F0, 0x277D444A0);
    v1 = sub_22874FE2C();
    v33 = sub_2287CB470();

    v39 = v33;
    sub_228723CA8(&v40, v31);

    v3 = v39;
    v34 = sub_2287CB460();

    [v24 setRules_];

    --v0;
    v22 = v30;
    inited = v26;
  }

  while (v0 != 3);
  swift_setDeallocating();
  swift_arrayDestroy();
  return v38;
}

uint64_t sub_2287541C8(void *a1, uint64_t a2)
{
  sub_2287035A4(0, &qword_280DE1268, MEMORY[0x277D84F68] + 8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2287CCC50;
  sub_2287010E4(a2, v12);
  sub_2287035A4(0, &qword_280DE3850, MEMORY[0x277D11E90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2287CCFE0;
  *(v5 + 32) = a1;
  v6 = type metadata accessor for FeedItemREElementDataSource();
  v7 = objc_allocWithZone(v6);
  sub_2287010E4(v12, &v7[OBJC_IVAR____TtC18HealthPlatformCore27FeedItemREElementDataSource_store]);
  *&v7[OBJC_IVAR____TtC18HealthPlatformCore27FeedItemREElementDataSource_sourceProfiles] = v5;
  v11.receiver = v7;
  v11.super_class = v6;
  v8 = a1;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v12);
  *(v4 + 32) = v9;
  return v4;
}

void *sub_2287542EC(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v54 = a4;
  v55 = a3;
  v49 = *v5;
  v8 = sub_2287CB6B0();
  v52 = *(v8 - 8);
  v53 = v8;
  MEMORY[0x28223BE20](v8);
  v51 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2287CB670();
  MEMORY[0x28223BE20](v10);
  *&v50 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2287CB0E0();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = sub_2287C9810();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a1;
  sub_2287010E4(a1, (v5 + 4));
  v5[3] = a2;
  v48 = sub_228703004(0, &qword_280DE39D0, 0x277D85C78);
  v57 = 40;
  v58 = 0xE100000000000000;
  v17 = a2;
  v18 = sub_2287CBE60();
  MEMORY[0x22AABE980](v18);

  MEMORY[0x22AABE980](0x656C69666F72705FLL, 0xE90000000000005FLL);
  v19 = [v17 profileIdentifier];
  v20 = [v19 identifier];

  sub_2287C97F0();
  v46[1] = sub_228754B24(&qword_280DE3468, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v21 = sub_2287CBCC0();
  MEMORY[0x22AABE980](v21);

  v22 = *(v14 + 8);
  v47 = v13;
  v46[2] = v14 + 8;
  v46[0] = v22;
  v22(v16, v13);
  sub_2287CB0A0();
  v57 = MEMORY[0x277D84F90];
  sub_228754B24(&qword_280DE39D8, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  sub_228754B6C(0, &qword_280DE39F0, MEMORY[0x277D85230], MEMORY[0x277D83940]);
  sub_22871EFD0();
  sub_2287CB880();
  v52[13](v51, *MEMORY[0x277D85260], v53);
  v23 = v17;
  v5[2] = sub_2287CB6D0();
  v24 = [v17 profileIdentifier];
  v25 = sub_228753744(v24);

  v26 = v5;
  v5[11] = v25;
  if (v54)
  {
    v27 = v54;
  }

  else
  {
    v57 = 0;
    v58 = 0xE000000000000000;
    sub_2287CBA20();

    v57 = 0xD000000000000011;
    v58 = 0x80000002287D1AB0;
    v28 = [v17 profileIdentifier];
    v29 = [v28 identifier];

    sub_2287C97F0();
    v30 = v47;
    v31 = sub_2287CBCC0();
    MEMORY[0x22AABE980](v31);

    (v46[0])(v16, v30);
    MEMORY[0x22AABE980](0x656E69676E455FLL, 0xE700000000000000);
    v27 = v58;
    v55 = v57;
  }

  if (qword_280DE0A60 != -1)
  {
    swift_once();
  }

  sub_228754B6C(0, &unk_280DE3AA0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v54 = __swift_project_value_buffer(v32, qword_280DE0A68);
  if (qword_280DE0A38 != -1)
  {
    swift_once();
  }

  v33 = sub_2287C9700();
  v53 = __swift_project_value_buffer(v33, qword_280DE0A40);
  v52 = sub_228753920();
  sub_2287035A4(0, &qword_280DE1268, MEMORY[0x277D84F68] + 8);
  inited = swift_initStackObject();
  v50 = xmmword_2287CCC50;
  *(inited + 16) = xmmword_2287CCC50;
  *(inited + 32) = sub_228753C7C();
  v35 = [v23 profileIdentifier];
  v51 = sub_2287541C8(v35, v56);

  sub_22874F81C();
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_2287CCFE0;
  *(v36 + 32) = type metadata accessor for DateRangeRelevanceProviderManager();
  v37 = swift_initStackObject();
  *(v37 + 16) = v50;
  v38 = v26[11];
  *(v37 + 32) = v38;
  v39 = v26[2];
  v40 = v38;
  v41 = v39;
  v42 = v52;
  v43 = static RelevanceEngineCoordinator.instantiateEngine(engineName:modelVersion:pretrainedModelURL:modelURL:primaryFeatures:feedSections:dataSources:relevanceProviderManagerClasses:metricsRecorder:interactionDescriptors:observerQueue:)(v55, v27, 0, v54, v53, v52, inited, v51, v36, 0, v37, v41);

  swift_setDeallocating();
  swift_arrayDestroy();
  v26[9] = v43;
  v44 = [objc_allocWithZone(MEMORY[0x277D444B8]) init];
  [v26[9] addTrainingContext_];
  [v44 becomeCurrent];
  __swift_destroy_boxed_opaque_existential_0(v56);
  v26[10] = v44;
  return v26;
}

uint64_t sub_228754B24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_228754B6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t Generator.eraseToAnyGenerator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)()@<X8>)
{
  v7 = *(a1 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, v3, a1);
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  (*(v7 + 32))(v11 + v10, v9, a1);
  sub_22870CAE4(0, &qword_280DE2E58, sub_22870C530);
  v13 = v12;
  sub_2287CA810();
  v17[1] = swift_getDynamicType();
  swift_getMetatypeMetadata();
  result = sub_2287CB250();
  *a3 = sub_228755118;
  a3[1] = v11;
  v15 = (a3 + *(v13 + 48));
  *v15 = result;
  v15[1] = v16;
  return result;
}

uint64_t SharableModelGenerator.eraseToAnyGenerator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)()@<X8>)
{
  v7 = *(a1 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, v3, a1);
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  (*(v7 + 32))(v11 + v10, v9, a1);
  sub_22870CAE4(0, &qword_280DE2E48, sub_22870CB48);
  v13 = v12;
  sub_2287CA390();
  v17[1] = swift_getDynamicType();
  swift_getMetatypeMetadata();
  result = sub_2287CB250();
  *a3 = sub_228755148;
  a3[1] = v11;
  v15 = (a3 + *(v13 + 48));
  *v15 = result;
  v15[1] = v16;
  return result;
}

uint64_t AnyGenerator.domain.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = sub_2287C9E70();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t AnyGenerator.wrappedTypeName.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 48));

  return v2;
}

uint64_t AnyGenerator.debugDescription.getter(uint64_t a1)
{
  v3 = sub_2287C9E70();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[0] = sub_2287CBE60();
  v10[1] = v7;
  MEMORY[0x22AABE980](95, 0xE100000000000000);
  MEMORY[0x22AABE980](*(v1 + *(a1 + 48)), *(v1 + *(a1 + 48) + 8));
  MEMORY[0x22AABE980](95, 0xE100000000000000);
  (*(v4 + 16))(v6, v1 + *(a1 + 44), v3);
  v8 = sub_2287CB250();
  MEMORY[0x22AABE980](v8);

  return v10[0];
}

unint64_t sub_2287551D0(uint64_t a1)
{
  result = sub_22870CFB4();
  if (v2 <= 0x3F)
  {
    result = sub_2287C9E70();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_228755284(uint64_t a1, uint64_t a2)
{
  sub_228755318(0, &qword_280DE2608, sub_22870CB48, type metadata accessor for GeneratorPipelineManagerWrapper);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_228755318(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_22875537C@<X0>(uint64_t a1@<X8>)
{
  sub_228755318(0, &qword_280DE2608, sub_22870CB48, type metadata accessor for GeneratorPipelineManagerWrapper);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

id sub_22875549C(const char *a1, SEL *a2)
{
  v5 = sub_2287CA970();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CA960();
  v9 = sub_2287CA9A0();
  v10 = sub_2287CB720();
  if (sub_2287CB800())
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = sub_2287CA950();
    _os_signpost_emit_with_name_impl(&dword_2286FF000, v9, v10, v12, a1, "", v11, 2u);
    MEMORY[0x22AABFD90](v11, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  v13 = type metadata accessor for HealthExperienceStoreCoreSpotlightDelegate(0);
  v15.receiver = v2;
  v15.super_class = v13;
  return objc_msgSendSuper2(&v15, *a2);
}

void *sub_22875567C(void *a1)
{
  v15 = a1;
  sub_228703004(0, &qword_280DE3888, 0x277CBE438);
  sub_22870D3A8(0, &qword_280DE1798, &protocol descriptor for CoreSpotlightIndexable);
  v3 = a1;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    sub_228756AF8(v13);
    return 0;
  }

  sub_228706AD4(v13, v16);
  __swift_project_boxed_opaque_existential_1(v16, v17);
  sub_22874A9AC();
  if ((v4 & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(v16);
    return 0;
  }

  v12.receiver = v1;
  v12.super_class = type metadata accessor for HealthExperienceStoreCoreSpotlightDelegate(0);
  v5 = objc_msgSendSuper2(&v12, sel_attributeSetForObject_, v3);
  if (v5)
  {
    v6 = v5;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    sub_22874B0A4(v6);
    __swift_destroy_boxed_opaque_existential_0(v16);
    return v6;
  }

  *&v13[0] = 0;
  *(&v13[0] + 1) = 0xE000000000000000;
  sub_2287CBA20();

  *&v13[0] = 0xD00000000000002FLL;
  *(&v13[0] + 1) = 0x80000002287D1C30;
  v8 = [v3 description];
  v9 = sub_2287CB220();
  v11 = v10;

  MEMORY[0x22AABE980](v9, v11);

  result = sub_2287CBB90();
  __break(1u);
  return result;
}

void sub_2287558C4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v23 = sub_2287CAA50();
  v2 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2287CA970();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CA960();
  v9 = sub_2287CA9A0();
  v10 = sub_2287CB720();
  if (sub_2287CB800())
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = sub_2287CA950();
    _os_signpost_emit_with_name_impl(&dword_2286FF000, v9, v10, v12, "HealthExperienceStoreCoreSpotlightDelegate deleteAllThings", "", v11, 2u);
    MEMORY[0x22AABFD90](v11, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  sub_2287CAA10();
  v13 = sub_2287CAA40();
  v14 = sub_2287CB610();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315138;
    v17 = ObjectType;
    v18 = sub_2287CBE60();
    v20 = sub_2287031D8(v18, v19, aBlock);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_2286FF000, v13, v14, "[%s] Deleting all searchable items in index", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x22AABFD90](v16, -1, -1);
    MEMORY[0x22AABFD90](v15, -1, -1);

    (*(v2 + 8))(v4, v23);
  }

  else
  {

    (*(v2 + 8))(v4, v23);
    v17 = ObjectType;
  }

  v21 = swift_allocObject();
  *(v21 + 16) = v17;
  aBlock[4] = sub_2287571B0;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228755FA8;
  aBlock[3] = &block_descriptor_22;
  v22 = _Block_copy(aBlock);

  [v1 deleteSpotlightIndexWithCompletionHandler_];
  _Block_release(v22);
}

uint64_t sub_228755C64(void *a1, uint64_t a2)
{
  v3 = sub_2287CAA50();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - v8;
  if (a1)
  {
    v10 = a1;
    sub_2287CAA10();
    v11 = a1;
    v12 = sub_2287CAA40();
    v13 = sub_2287CB610();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v32 = v15;
      *v14 = 136446466;
      v16 = sub_2287CBE60();
      v18 = sub_2287031D8(v16, v17, &v32);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2082;
      v31 = a1;
      v19 = a1;
      sub_22870D3A8(0, &qword_280DE35A0, MEMORY[0x277D84948]);
      v20 = sub_2287CB270();
      v22 = sub_2287031D8(v20, v21, &v32);

      *(v14 + 14) = v22;
      _os_log_impl(&dword_2286FF000, v12, v13, "[%{public}s] Failed to delete all searchable items: %{public}s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v15, -1, -1);
      MEMORY[0x22AABFD90](v14, -1, -1);
    }

    else
    {
    }

    return (*(v4 + 8))(v9, v3);
  }

  else
  {
    sub_2287CAA10();
    v23 = sub_2287CAA40();
    v24 = sub_2287CB610();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v32 = v26;
      *v25 = 136446210;
      v27 = sub_2287CBE60();
      v29 = sub_2287031D8(v27, v28, &v32);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_2286FF000, v23, v24, "[%{public}s] Great success, we were able to delete all of the searchable items from our index", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x22AABFD90](v26, -1, -1);
      MEMORY[0x22AABFD90](v25, -1, -1);
    }

    return (*(v4 + 8))(v7, v3);
  }
}

void sub_228755FA8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_228756014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = a2;
  v30 = a3;
  v31 = a1;
  swift_getObjectType();
  v28 = sub_2287CAA50();
  v5 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2287CA970();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CA960();
  v12 = sub_2287CA9A0();
  v13 = sub_2287CB720();
  if (sub_2287CB800())
  {
    v14 = swift_slowAlloc();
    v27 = v5;
    v15 = v14;
    *v14 = 0;
    v16 = sub_2287CA950();
    _os_signpost_emit_with_name_impl(&dword_2286FF000, v12, v13, v16, "HealthExperienceStoreCoreSpotlightDelegate reindexAllSearchableItems", "", v15, 2u);
    v5 = v27;
    MEMORY[0x22AABFD90](v15, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  sub_2287CAA10();
  v17 = sub_2287CAA40();
  v18 = sub_2287CB610();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    aBlock[0] = v20;
    *v19 = 136446210;
    v21 = sub_2287CBE60();
    v23 = sub_2287031D8(v21, v22, aBlock);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_2286FF000, v17, v18, "[%{public}s] Got a request to reindex all searchable items", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x22AABFD90](v20, -1, -1);
    MEMORY[0x22AABFD90](v19, -1, -1);
  }

  (*(v5 + 8))(v7, v28);
  aBlock[4] = v29;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228712EA8;
  aBlock[3] = &block_descriptor_4;
  v24 = _Block_copy(aBlock);

  v25 = type metadata accessor for HealthExperienceStoreCoreSpotlightDelegate(0);
  v32.receiver = v4;
  v32.super_class = v25;
  objc_msgSendSuper2(&v32, sel_searchableIndex_reindexAllSearchableItemsWithAcknowledgementHandler_, v31, v24);
  _Block_release(v24);
}

void sub_228756444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v33 = a1;
  ObjectType = swift_getObjectType();
  v29 = sub_2287CAA50();
  v6 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v8 = &ObjectType - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2287CA970();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &ObjectType - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CA960();
  v32 = v4;
  v13 = sub_2287CA9A0();
  v14 = sub_2287CB720();
  if (sub_2287CB800())
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = sub_2287CA950();
    _os_signpost_emit_with_name_impl(&dword_2286FF000, v13, v14, v16, "HealthExperienceStoreCoreSpotlightDelegate reindexSearchableItemsWithIdentifiers", "", v15, 2u);
    MEMORY[0x22AABFD90](v15, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  sub_2287CAA10();
  swift_bridgeObjectRetain_n();
  v17 = sub_2287CAA40();
  v18 = sub_2287CB610();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    aBlock[0] = v20;
    *v19 = 136446466;
    v21 = sub_2287CBE60();
    v23 = sub_2287031D8(v21, v22, aBlock);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2050;
    v24 = *(a2 + 16);

    *(v19 + 14) = v24;

    _os_log_impl(&dword_2286FF000, v17, v18, "[%{public}s] Got a request to reindex %{public}ld searchable items", v19, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x22AABFD90](v20, -1, -1);
    MEMORY[0x22AABFD90](v19, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  (*(v6 + 8))(v8, v29);
  v25 = sub_2287CB390();
  aBlock[4] = v30;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228712EA8;
  aBlock[3] = &block_descriptor_3;
  v26 = _Block_copy(aBlock);

  v27 = type metadata accessor for HealthExperienceStoreCoreSpotlightDelegate(0);
  v34.receiver = v32;
  v34.super_class = v27;
  objc_msgSendSuper2(&v34, sel_searchableIndex_reindexSearchableItemsWithIdentifiers_acknowledgementHandler_, v33, v25, v26, ObjectType);
  _Block_release(v26);
}

id HealthExperienceStoreCoreSpotlightDelegate.__allocating_init(forStoreWith:coordinator:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initForStoreWithDescription:a1 coordinator:a2];

  return v5;
}

id HealthExperienceStoreCoreSpotlightDelegate.init(forStoreWith:coordinator:)(void *a1, void *a2)
{
  v4 = sub_228701A80(a1, a2);

  return v4;
}

id HealthExperienceStoreCoreSpotlightDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HealthExperienceStoreCoreSpotlightDelegate(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_228756AB4(uint64_t a1)
{
  v2 = sub_2287CB990();

  return sub_228756D08(a1, v2);
}

uint64_t sub_228756AF8(uint64_t a1)
{
  sub_228756B54(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_228756B54(uint64_t a1)
{
  if (!qword_27D850DD0)
  {
    sub_22870D3A8(255, &qword_280DE1798, &protocol descriptor for CoreSpotlightIndexable);
    v1 = sub_2287CB820();
    if (!v2)
    {
      atomic_store(v1, &qword_27D850DD0);
    }
  }
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_228756BD4(uint64_t a1)
{
  v2 = sub_2287CB7E0();

  return sub_228756DD0(a1, v2);
}

unint64_t sub_228756C18(uint64_t a1)
{
  sub_2287C9810();
  sub_22875716C(&qword_280DE3970, MEMORY[0x277CC9600]);
  v2 = sub_2287CB1B0();

  return sub_228756EA4(a1, v2);
}

unint64_t sub_228756C9C(uint64_t a1)
{
  sub_2287CBD80();
  sub_2287C9C90();
  v2 = sub_2287CBDB0();

  return sub_228757050(a1, v2);
}

unint64_t sub_228756D08(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2287571B8(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x22AABF070](v9, a1);
      sub_2287109BC(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_228756DD0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_228703004(0, &qword_280DE3870, 0x277CCD7C8);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_2287CB7F0();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_228756EA4(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_2287C9810();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_22875716C(&qword_280DE3470, MEMORY[0x277CC9610]);
      v15 = sub_2287CB200();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_228757050(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_2287C9C80();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_22875716C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2287C9810();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_228757228()
{
  sub_2287CA3E0();
  sub_2287CA100();
  v0 = sub_2287CB210();

  v1 = [objc_opt_self() featureWithName:v0 featureType:2];

  qword_280DE6388 = v1;
}

void sub_2287572A8()
{
  if (qword_280DE37B8 != -1)
  {
    swift_once();
  }

  v0 = qword_280DE6388;
  v1 = sub_228795DF8(5);

  qword_280DE6390 = v1;
}

void sub_22875731C()
{
  sub_228711964();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2287CCC50;
  v1 = objc_opt_self();
  if (qword_280DE37B8 != -1)
  {
    swift_once();
  }

  v2 = qword_280DE6388;
  sub_2287CA3E0();
  sub_2287CA110();
  v3 = [objc_opt_self() featureValueWithDouble_];
  v4 = [v1 customRelevanceProviderForFeature:v2 withValue:v3];

  if (v4)
  {
    *(v0 + 32) = v4;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_228757440(void *(*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v13 = MEMORY[0x277D84F90];
    sub_2287CBAC0();
    v9 = *(sub_2287CA3C0() - 8);
    v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    while (1)
    {
      a1(&v12, v10);
      if (v4)
      {
        break;
      }

      v4 = 0;
      sub_2287CBA90();
      sub_2287CBAD0();
      sub_2287CBAE0();
      sub_2287CBAA0();
      v10 += v11;
      if (!--v6)
      {
        return v13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_228757584(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t), uint64_t (*a6)(void), void (*a7)(char *, unint64_t))
{
  v26 = a7;
  v27 = a1;
  v10 = v7;
  v28 = a2;
  v12 = a4(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v23 - v14;
  v16 = *(a3 + 16);
  v17 = MEMORY[0x277D84F90];
  if (!v16)
  {
    return v17;
  }

  v29 = MEMORY[0x277D84F90];
  v24 = a5;
  a5(0, v16, 0);
  v17 = v29;
  v18 = *(a6(0) - 8);
  v19 = a3 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v25 = *(v18 + 72);
  while (1)
  {
    v27(v19);
    if (v10)
    {
      break;
    }

    v10 = 0;
    v29 = v17;
    v21 = *(v17 + 16);
    v20 = *(v17 + 24);
    if (v21 >= v20 >> 1)
    {
      v24(v20 > 1, v21 + 1, 1);
      v17 = v29;
    }

    *(v17 + 16) = v21 + 1;
    v26(v15, v17 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v21);
    v19 += v25;
    if (!--v16)
    {
      return v17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_228757794(uint64_t a1, uint64_t a2)
{
  sub_2287756AC(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228774694(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_2287762E4(a1, sub_2287756AC);
    sub_22876D35C(a2, sub_228774694, sub_228775238, sub_2287AA81C, sub_2287BB9C0, v7);
    v12 = sub_2287C9810();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_2287762E4(v7, sub_2287756AC);
  }

  else
  {
    sub_228775238(a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_22876D694(v10, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_2287C9810();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_2287579E4(uint64_t a1, uint64_t a2)
{
  sub_228775994(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22872C820(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_2287762E4(a1, sub_228775994);
    sub_22876D35C(a2, sub_22872C820, sub_22877494C, sub_2287AA834, sub_2287BB9E8, v7);
    v12 = sub_2287C9810();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_2287762E4(v7, sub_228775994);
  }

  else
  {
    sub_22877494C(a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_22876D890(v10, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_2287C9810();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_228757C34(uint64_t a1, uint64_t a2)
{
  sub_2287723F4(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228771868(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_2287762E4(a1, sub_2287723F4);
    sub_22876D35C(a2, sub_228771868, sub_2287720CC, sub_2287AAB9C, sub_2287BBEBC, v7);
    v12 = sub_2287C9810();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_2287762E4(v7, sub_2287723F4);
  }

  else
  {
    sub_2287720CC(a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_22876DA8C(v10, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_2287C9810();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_228757E84(uint64_t a1, uint64_t a2)
{
  sub_2287727A4(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22872C6C0(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_2287762E4(a1, sub_2287727A4);
    sub_22876D35C(a2, sub_22872C6C0, sub_228771B7C, sub_2287AABB4, sub_2287BC1B4, v7);
    v12 = sub_2287C9810();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_2287762E4(v7, sub_2287727A4);
  }

  else
  {
    sub_228771B7C(a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_22876DC88(v10, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_2287C9810();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_2287580D4(uint64_t a1)
{
  v2 = v1;
  v46 = *v2;
  sub_2287742A4(0);
  v50 = *(v4 - 8);
  v51 = v4;
  MEMORY[0x28223BE20](v4);
  v48 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287742CC(0);
  v52 = *(v6 - 8);
  v53 = v6;
  MEMORY[0x28223BE20](v6);
  v49 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228771154(0, &qword_280DE1B90, MEMORY[0x277CBCC88]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v43 - v11;
  sub_2287711EC(0);
  v44 = *(v13 - 8);
  v45 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228771154(0, &qword_280DE1BB0, MEMORY[0x277CBCC50]);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v20 = &v43 - v19;
  v47 = a1;
  v21 = *(a1 + 16);
  if (sub_2287CA420())
  {
    v54 = v21;
    sub_2287715EC(0, &qword_280DE1AE0, &qword_280DE1A28, MEMORY[0x277D11E90], MEMORY[0x277CBCD88]);
    sub_22873A408();
    sub_2287CAFA0();
    sub_2287712C0(&qword_280DE1BB8, &qword_280DE1BB0, MEMORY[0x277CBCC50], MEMORY[0x277CBCC58]);
    v21 = sub_2287CAF40();
    (*(v18 + 8))(v20, v17);
  }

  else
  {
  }

  v43 = v21;
  v54 = v21;
  v22 = swift_allocObject();
  v23 = v46;
  *(v22 + 16) = v46;
  sub_2287715EC(0, &qword_280DE1AE0, &qword_280DE1A28, MEMORY[0x277D11E90], MEMORY[0x277CBCD88]);
  sub_22873A408();
  sub_2287CAFB0();

  sub_2287712C0(&qword_280DE1B98, &qword_280DE1B90, MEMORY[0x277CBCC88], MEMORY[0x277CBCC90]);
  v24 = sub_2287CAF40();
  (*(v10 + 8))(v12, v9);
  v54 = v24;
  sub_22870D3A8(0, &qword_280DE35A0, MEMORY[0x277D84948]);
  sub_2287CB040();

  sub_2287693A8(&qword_280DE0710, sub_2287711EC, MEMORY[0x277CBCBA0]);
  v25 = v45;
  v26 = sub_2287CAF40();
  (*(v44 + 8))(v15, v25);
  v27 = v2[24];
  v28 = v2[25];
  __swift_project_boxed_opaque_existential_1(v2 + 21, v27);
  v54 = v26;
  v29 = *(v28 + 24);
  sub_22873A300(0);
  v31 = v30;
  v32 = sub_2287693A8(&qword_280DE01F0, sub_22873A300, MEMORY[0x277CBCD90]);
  v54 = v29(&v54, v31, v32, v27, v28);
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  v34[2] = v33;
  v34[3] = v47;
  v34[4] = v23;
  sub_228774608(0, &qword_280DE0200, sub_2287691F4, MEMORY[0x277CBCD88]);

  v35 = v48;
  sub_2287CAF70();

  v36 = sub_2287693A8(&qword_280DE0600, sub_2287742A4, MEMORY[0x277CBCC08]);
  v37 = sub_22876928C();
  v38 = v49;
  v39 = v51;
  MEMORY[0x22AABE600](v51, v36, v37);
  (*(v50 + 8))(v35, v39);
  sub_2287693A8(&qword_280DE06C0, sub_2287742CC, MEMORY[0x277CBCBB0]);
  v40 = v53;
  v41 = sub_2287CAF40();

  (*(v52 + 8))(v38, v40);
  return v41;
}

uint64_t sub_2287588AC(uint64_t a1)
{
  v2 = v1;
  v46 = *v2;
  sub_228770E80(0);
  v50 = *(v4 - 8);
  v51 = v4;
  MEMORY[0x28223BE20](v4);
  v48 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228770FE0(0);
  v52 = *(v6 - 8);
  v53 = v6;
  MEMORY[0x28223BE20](v6);
  v49 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228771154(0, &qword_280DE1B90, MEMORY[0x277CBCC88]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v43 - v11;
  sub_2287711EC(0);
  v44 = *(v13 - 8);
  v45 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228771154(0, &qword_280DE1BB0, MEMORY[0x277CBCC50]);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v20 = &v43 - v19;
  v47 = a1;
  v21 = *(a1 + 16);
  if (sub_2287CA420())
  {
    v54 = v21;
    sub_2287715EC(0, &qword_280DE1AE0, &qword_280DE1A28, MEMORY[0x277D11E90], MEMORY[0x277CBCD88]);
    sub_22873A408();
    sub_2287CAFA0();
    sub_2287712C0(&qword_280DE1BB8, &qword_280DE1BB0, MEMORY[0x277CBCC50], MEMORY[0x277CBCC58]);
    v21 = sub_2287CAF40();
    (*(v18 + 8))(v20, v17);
  }

  else
  {
  }

  v43 = v21;
  v54 = v21;
  v22 = swift_allocObject();
  v23 = v46;
  *(v22 + 16) = v46;
  sub_2287715EC(0, &qword_280DE1AE0, &qword_280DE1A28, MEMORY[0x277D11E90], MEMORY[0x277CBCD88]);
  sub_22873A408();
  sub_2287CAFB0();

  sub_2287712C0(&qword_280DE1B98, &qword_280DE1B90, MEMORY[0x277CBCC88], MEMORY[0x277CBCC90]);
  v24 = sub_2287CAF40();
  (*(v10 + 8))(v12, v9);
  v54 = v24;
  sub_22870D3A8(0, &qword_280DE35A0, MEMORY[0x277D84948]);
  sub_2287CB040();

  sub_2287693A8(&qword_280DE0710, sub_2287711EC, MEMORY[0x277CBCBA0]);
  v25 = v45;
  v26 = sub_2287CAF40();
  (*(v44 + 8))(v15, v25);
  v27 = v2[24];
  v28 = v2[25];
  __swift_project_boxed_opaque_existential_1(v2 + 21, v27);
  v54 = v26;
  v29 = *(v28 + 24);
  sub_22873A300(0);
  v31 = v30;
  v32 = sub_2287693A8(&qword_280DE01F0, sub_22873A300, MEMORY[0x277CBCD90]);
  v54 = v29(&v54, v31, v32, v27, v28);
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  v34[2] = v33;
  v34[3] = v47;
  v34[4] = v23;
  sub_228774608(0, &qword_280DE0218, sub_228770F78, MEMORY[0x277CBCD88]);

  v35 = v48;
  sub_2287CAF70();

  v36 = sub_2287693A8(&qword_280DE0610, sub_228770E80, MEMORY[0x277CBCC08]);
  v37 = sub_2287710CC();
  v38 = v49;
  v39 = v51;
  MEMORY[0x22AABE600](v51, v36, v37);
  (*(v50 + 8))(v35, v39);
  sub_2287693A8(&qword_280DE06D0, sub_228770FE0, MEMORY[0x277CBCBB0]);
  v40 = v53;
  v41 = sub_2287CAF40();

  (*(v52 + 8))(v38, v40);
  return v41;
}

uint64_t sub_228759084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v88 = a3;
  sub_228774418(0);
  v90 = *(v6 - 8);
  v91 = v6;
  MEMORY[0x28223BE20](v6);
  v89 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228774608(0, &qword_280DE0088, sub_2287691F4, MEMORY[0x277CBCE88]);
  v9 = v8;
  v87 = *(v8 - 1);
  MEMORY[0x28223BE20](v8);
  v11 = &v82 - v10;
  v12 = sub_2287CAA50();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v92 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v82 - v16;
  sub_2287CA9D0();

  v18 = sub_2287CAA40();
  v19 = sub_2287CB610();

  v20 = os_log_type_enabled(v18, v19);
  v93 = v12;
  v94 = a1;
  v86 = a4;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v85 = v9;
    v22 = v21;
    v23 = swift_slowAlloc();
    v96[0] = v23;
    *v22 = 136446466;
    v96[3] = a4;
    swift_getMetatypeMetadata();
    v24 = sub_2287CB250();
    v84 = v11;
    v26 = sub_2287031D8(v24, v25, v96);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2082;
    v27 = MEMORY[0x22AABEA80](a1, MEMORY[0x277D11E90]);
    v29 = sub_2287031D8(v27, v28, v96);
    v11 = v84;

    *(v22 + 14) = v29;
    _os_log_impl(&dword_2286FF000, v18, v19, "%{public}s: Switching to a new pipeline with sourceProfiles: %{public}s", v22, 0x16u);
    swift_arrayDestroy();
    v30 = v23;
    v12 = v93;
    MEMORY[0x22AABFD90](v30, -1, -1);
    v31 = v22;
    v9 = v85;
    MEMORY[0x22AABFD90](v31, -1, -1);
  }

  v32 = *(v13 + 8);
  v32(v17, v12);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_2287691F4(0);
    sub_22870D3A8(0, &qword_280DE35A0, MEMORY[0x277D84948]);
    sub_2287CADC0();
    sub_228770B4C();
    v62 = sub_2287CAF40();
    (*(v87 + 8))(v11, v9);
    return v62;
  }

  v34 = Strong;
  v85 = v32;
  v87 = v13;
  v35 = v94;
  v36 = *(v94 + 16);
  swift_beginAccess();
  if (!v36)
  {
    v38 = MEMORY[0x277D84F98];
    goto LABEL_35;
  }

  v37 = 0;
  v38 = MEMORY[0x277D84F98];
  v39 = v35 + 32;
  while (2)
  {
    v40 = v37;
    while (1)
    {
      if (v40 >= v36)
      {
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v37 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        goto LABEL_41;
      }

      v41 = *(v39 + 8 * v40);
      v42 = v41;
      v43 = sub_2287C9C30();
      if (v43)
      {
        break;
      }

LABEL_7:

      ++v40;
      if (v37 == v36)
      {
        goto LABEL_35;
      }
    }

    v44 = v43;
    v45 = sub_2287C9C80();
    if (v45)
    {

      v42 = v44;
      goto LABEL_7;
    }

    if (v41)
    {
      v84 = &v82;
      MEMORY[0x28223BE20](v45);
      sub_228703004(0, &qword_280DE1990, 0x277CCD4D8);
      v83 = v42;

      sub_2287CA650();

      v46 = v97;
    }

    else
    {
      v46 = v34[6];
    }

    v84 = v46;
    if ((v38 & 0xC000000000000001) != 0)
    {
      if (v38 >= 0)
      {
        v38 &= 0xFFFFFFFFFFFFFF8uLL;
      }

      v47 = sub_2287CB920();
      if (!__OFADD__(v47, 1))
      {
        v38 = sub_2287AA438(v38, v47 + 1);
        goto LABEL_21;
      }

LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      sub_228703004(0, &qword_280DE3870, 0x277CCD7C8);
      result = sub_2287CBD30();
      __break(1u);
      return result;
    }

LABEL_21:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v97 = v38;
    v49 = sub_228756BD4(v44);
    v51 = *(v38 + 16);
    v52 = (v50 & 1) == 0;
    v53 = __OFADD__(v51, v52);
    v54 = v51 + v52;
    if (v53)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v55 = v50;
    if (*(v38 + 24) >= v54)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v61 = v49;
        sub_2287BB86C();
        v49 = v61;
      }
    }

    else
    {
      sub_2287BA778(v54, isUniquelyReferenced_nonNull_native);
      v49 = sub_228756BD4(v44);
      if ((v55 & 1) != (v56 & 1))
      {
        goto LABEL_45;
      }
    }

    v12 = v93;
    v38 = v97;
    if (v55)
    {
      v57 = *(v97 + 7);
      v58 = *(v57 + 8 * v49);
      *(v57 + 8 * v49) = v84;

      v42 = v58;
    }

    else
    {
      *&v97[8 * (v49 >> 6) + 64] |= 1 << v49;
      *(*(v38 + 48) + 8 * v49) = v44;
      *(*(v38 + 56) + 8 * v49) = v84;
      v59 = *(v38 + 16);
      v53 = __OFADD__(v59, 1);
      v60 = v59 + 1;
      if (v53)
      {
        goto LABEL_44;
      }

      *(v38 + 16) = v60;
    }

    if (v37 != v36)
    {
      continue;
    }

    break;
  }

LABEL_35:
  v63 = v94;
  (*(*v34 + 45))(v94, v38);

  v64 = sub_22875A83C(v88, v63);
  v65 = sub_22875F92C(v64);
  v66 = v92;
  sub_2287CA9D0();

  v67 = sub_2287CAA40();
  v68 = sub_2287CB610();

  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v95 = v70;
    *v69 = 136446466;
    v97 = v86;
    swift_getMetatypeMetadata();
    v71 = sub_2287CB250();
    v73 = sub_2287031D8(v71, v72, &v95);

    *(v69 + 4) = v73;
    *(v69 + 12) = 2082;
    v74 = MEMORY[0x22AABEA80](v63, MEMORY[0x277D11E90]);
    v76 = sub_2287031D8(v74, v75, &v95);

    *(v69 + 14) = v76;
    _os_log_impl(&dword_2286FF000, v67, v68, "%{public}s: Created new generation stream for sourceProfiles: %{public}s", v69, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v70, -1, -1);
    MEMORY[0x22AABFD90](v69, -1, -1);

    v77 = v92;
    v78 = v93;
  }

  else
  {

    v77 = v66;
    v78 = v12;
  }

  v85(v77, v78);
  v97 = v65;
  sub_228774608(0, &qword_280DE0200, sub_2287691F4, MEMORY[0x277CBCD88]);
  sub_22876928C();
  v79 = v89;
  sub_2287CAF60();
  sub_2287693A8(&qword_280DE0780, sub_228774418, MEMORY[0x277CBCB60]);
  v80 = v91;
  v62 = sub_2287CAF40();

  (*(v90 + 8))(v79, v80);
  return v62;
}

uint64_t sub_228759A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v88 = a3;
  sub_22877131C(0);
  v90 = *(v6 - 8);
  v91 = v6;
  MEMORY[0x28223BE20](v6);
  v89 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228774608(0, &qword_280DE0090, sub_228770F78, MEMORY[0x277CBCE88]);
  v9 = v8;
  v87 = *(v8 - 1);
  MEMORY[0x28223BE20](v8);
  v11 = &v82 - v10;
  v12 = sub_2287CAA50();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v92 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v82 - v16;
  sub_2287CA9D0();

  v18 = sub_2287CAA40();
  v19 = sub_2287CB610();

  v20 = os_log_type_enabled(v18, v19);
  v93 = v12;
  v94 = a1;
  v86 = a4;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v85 = v9;
    v22 = v21;
    v23 = swift_slowAlloc();
    v96[0] = v23;
    *v22 = 136446466;
    v96[3] = a4;
    swift_getMetatypeMetadata();
    v24 = sub_2287CB250();
    v84 = v11;
    v26 = sub_2287031D8(v24, v25, v96);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2082;
    v27 = MEMORY[0x22AABEA80](a1, MEMORY[0x277D11E90]);
    v29 = sub_2287031D8(v27, v28, v96);
    v11 = v84;

    *(v22 + 14) = v29;
    _os_log_impl(&dword_2286FF000, v18, v19, "%{public}s: Switching to a new pipeline with sourceProfiles: %{public}s", v22, 0x16u);
    swift_arrayDestroy();
    v30 = v23;
    v12 = v93;
    MEMORY[0x22AABFD90](v30, -1, -1);
    v31 = v22;
    v9 = v85;
    MEMORY[0x22AABFD90](v31, -1, -1);
  }

  v32 = *(v13 + 8);
  v32(v17, v12);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_228770F78(0);
    sub_22870D3A8(0, &qword_280DE35A0, MEMORY[0x277D84948]);
    sub_2287CADC0();
    sub_2287713B0();
    v62 = sub_2287CAF40();
    (*(v87 + 8))(v11, v9);
    return v62;
  }

  v34 = Strong;
  v85 = v32;
  v87 = v13;
  v35 = v94;
  v36 = *(v94 + 16);
  swift_beginAccess();
  if (!v36)
  {
    v38 = MEMORY[0x277D84F98];
    goto LABEL_35;
  }

  v37 = 0;
  v38 = MEMORY[0x277D84F98];
  v39 = v35 + 32;
  while (2)
  {
    v40 = v37;
    while (1)
    {
      if (v40 >= v36)
      {
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v37 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        goto LABEL_41;
      }

      v41 = *(v39 + 8 * v40);
      v42 = v41;
      v43 = sub_2287C9C30();
      if (v43)
      {
        break;
      }

LABEL_7:

      ++v40;
      if (v37 == v36)
      {
        goto LABEL_35;
      }
    }

    v44 = v43;
    v45 = sub_2287C9C80();
    if (v45)
    {

      v42 = v44;
      goto LABEL_7;
    }

    if (v41)
    {
      v84 = &v82;
      MEMORY[0x28223BE20](v45);
      sub_228703004(0, &qword_280DE1990, 0x277CCD4D8);
      v83 = v42;

      sub_2287CA650();

      v46 = v97;
    }

    else
    {
      v46 = v34[6];
    }

    v84 = v46;
    if ((v38 & 0xC000000000000001) != 0)
    {
      if (v38 >= 0)
      {
        v38 &= 0xFFFFFFFFFFFFFF8uLL;
      }

      v47 = sub_2287CB920();
      if (!__OFADD__(v47, 1))
      {
        v38 = sub_2287AA438(v38, v47 + 1);
        goto LABEL_21;
      }

LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      sub_228703004(0, &qword_280DE3870, 0x277CCD7C8);
      result = sub_2287CBD30();
      __break(1u);
      return result;
    }

LABEL_21:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v97 = v38;
    v49 = sub_228756BD4(v44);
    v51 = *(v38 + 16);
    v52 = (v50 & 1) == 0;
    v53 = __OFADD__(v51, v52);
    v54 = v51 + v52;
    if (v53)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v55 = v50;
    if (*(v38 + 24) >= v54)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v61 = v49;
        sub_2287BB86C();
        v49 = v61;
      }
    }

    else
    {
      sub_2287BA778(v54, isUniquelyReferenced_nonNull_native);
      v49 = sub_228756BD4(v44);
      if ((v55 & 1) != (v56 & 1))
      {
        goto LABEL_45;
      }
    }

    v12 = v93;
    v38 = v97;
    if (v55)
    {
      v57 = *(v97 + 7);
      v58 = *(v57 + 8 * v49);
      *(v57 + 8 * v49) = v84;

      v42 = v58;
    }

    else
    {
      *&v97[8 * (v49 >> 6) + 64] |= 1 << v49;
      *(*(v38 + 48) + 8 * v49) = v44;
      *(*(v38 + 56) + 8 * v49) = v84;
      v59 = *(v38 + 16);
      v53 = __OFADD__(v59, 1);
      v60 = v59 + 1;
      if (v53)
      {
        goto LABEL_44;
      }

      *(v38 + 16) = v60;
    }

    if (v37 != v36)
    {
      continue;
    }

    break;
  }

LABEL_35:
  v63 = v94;
  (*(*v34 + 45))(v94, v38);

  v64 = sub_22875ACC8(v88, v63);
  v65 = sub_22875FBB4(v64);
  v66 = v92;
  sub_2287CA9D0();

  v67 = sub_2287CAA40();
  v68 = sub_2287CB610();

  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v95 = v70;
    *v69 = 136446466;
    v97 = v86;
    swift_getMetatypeMetadata();
    v71 = sub_2287CB250();
    v73 = sub_2287031D8(v71, v72, &v95);

    *(v69 + 4) = v73;
    *(v69 + 12) = 2082;
    v74 = MEMORY[0x22AABEA80](v63, MEMORY[0x277D11E90]);
    v76 = sub_2287031D8(v74, v75, &v95);

    *(v69 + 14) = v76;
    _os_log_impl(&dword_2286FF000, v67, v68, "%{public}s: Created new generation stream for sourceProfiles: %{public}s", v69, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v70, -1, -1);
    MEMORY[0x22AABFD90](v69, -1, -1);

    v77 = v92;
    v78 = v93;
  }

  else
  {

    v77 = v66;
    v78 = v12;
  }

  v85(v77, v78);
  v97 = v65;
  sub_228774608(0, &qword_280DE0218, sub_228770F78, MEMORY[0x277CBCD88]);
  sub_2287710CC();
  v79 = v89;
  sub_2287CAF60();
  sub_2287693A8(&qword_280DE0790, sub_22877131C, MEMORY[0x277CBCB60]);
  v80 = v91;
  v62 = sub_2287CAF40();

  (*(v90 + 8))(v79, v80);
  return v62;
}

uint64_t sub_22875A414(uint64_t a1, uint64_t a2)
{
  v4 = sub_2287CAA50();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) != 1)
  {
    return 1;
  }

  if (a1 != &unk_283BC0028)
  {
    v8 = *(a1 + 32);
    v9 = qword_283BC0048;
    v10 = v8;
    LOBYTE(v8) = sub_2287C9C80();

    if ((v8 & 1) == 0)
    {
      return 1;
    }
  }

  sub_2287CA9D0();
  v11 = sub_2287CAA40();
  v12 = sub_2287CB600();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19[0] = v14;
    v19[1] = a2;
    *v13 = 136446210;
    swift_getMetatypeMetadata();
    v15 = sub_2287CB250();
    v17 = sub_2287031D8(v15, v16, v19);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_2286FF000, v11, v12, "%{public}s: Received agnostic only source profiles, skipping pipeline for this set of profiles", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x22AABFD90](v14, -1, -1);
    MEMORY[0x22AABFD90](v13, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  return 0;
}

uint64_t sub_22875A628(uint64_t a1, uint64_t a2)
{
  v4 = sub_2287CAA50();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) != 1)
  {
    return 1;
  }

  if (a1 != &unk_283BC0050)
  {
    v8 = *(a1 + 32);
    v9 = qword_283BC0070;
    v10 = v8;
    LOBYTE(v8) = sub_2287C9C80();

    if ((v8 & 1) == 0)
    {
      return 1;
    }
  }

  sub_2287CA9D0();
  v11 = sub_2287CAA40();
  v12 = sub_2287CB600();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19[0] = v14;
    v19[1] = a2;
    *v13 = 136446210;
    swift_getMetatypeMetadata();
    v15 = sub_2287CB250();
    v17 = sub_2287031D8(v15, v16, v19);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_2286FF000, v11, v12, "%{public}s: Received agnostic only source profiles, skipping pipeline for this set of profiles", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x22AABFD90](v14, -1, -1);
    MEMORY[0x22AABFD90](v13, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  return 0;
}

uint64_t sub_22875A83C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v27 = *v3;
  v28 = a1;
  sub_22873D500(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22873D608(0);
  v29 = v10;
  v31 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228775CA0(0);
  v30 = v13;
  v32 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v26 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a2;
  sub_22873E054(0, &qword_280DE1A28, MEMORY[0x277D11E90]);
  sub_2287728A0();
  sub_2287CB2F0();
  swift_allocObject();
  swift_weakInit();
  sub_2287CACC0();
  v15 = MEMORY[0x277CBCD88];
  sub_228774608(0, &qword_280DE0298, sub_22873D6F4, MEMORY[0x277CBCD88]);
  sub_22873D78C();
  sub_22873D7C0();
  sub_2287CB060();

  (*(v7 + 8))(v9, v6);
  v16 = swift_allocObject();
  v17 = v27;
  v18 = v28;
  v16[2] = v3;
  v16[3] = v18;
  v16[4] = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_228775D0C;
  *(v19 + 24) = v16;

  sub_2287CACC0();
  sub_22872C820(0);
  sub_228774608(0, &qword_280DE0228, sub_22872C820, v15);
  v20 = MEMORY[0x277CBCCE0];
  sub_2287693A8(&qword_280DE04D8, sub_22873D608, MEMORY[0x277CBCCE0]);
  sub_2287744AC();
  v21 = v26;
  v22 = v29;
  sub_2287CAFE0();

  (*(v31 + 8))(v12, v22);
  sub_2287693A8(&qword_280DE04B8, sub_228775CA0, v20);
  v23 = v30;
  v24 = sub_2287CAF40();
  (*(v32 + 8))(v21, v23);
  return v24;
}

uint64_t sub_22875ACC8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v27 = *v3;
  v28 = a1;
  sub_22873D500(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22873D608(0);
  v29 = v10;
  v31 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228772908(0);
  v30 = v13;
  v32 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v26 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a2;
  sub_22873E054(0, &qword_280DE1A28, MEMORY[0x277D11E90]);
  sub_2287728A0();
  sub_2287CB2F0();
  swift_allocObject();
  swift_weakInit();
  sub_2287CACC0();
  v15 = MEMORY[0x277CBCD88];
  sub_228774608(0, &qword_280DE0298, sub_22873D6F4, MEMORY[0x277CBCD88]);
  sub_22873D78C();
  sub_22873D7C0();
  sub_2287CB060();

  (*(v7 + 8))(v9, v6);
  v16 = swift_allocObject();
  v17 = v27;
  v18 = v28;
  v16[2] = v3;
  v16[3] = v18;
  v16[4] = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_228772A54;
  *(v19 + 24) = v16;

  sub_2287CACC0();
  sub_22872C6C0(0);
  sub_228774608(0, &qword_280DE0238, sub_22872C6C0, v15);
  v20 = MEMORY[0x277CBCCE0];
  sub_2287693A8(&qword_280DE04D8, sub_22873D608, MEMORY[0x277CBCCE0]);
  sub_2287716BC();
  v21 = v26;
  v22 = v29;
  sub_2287CAFE0();

  (*(v31 + 8))(v12, v22);
  sub_2287693A8(&qword_280DE04C8, sub_228772908, v20);
  v23 = v30;
  v24 = sub_2287CAF40();
  (*(v32 + 8))(v21, v23);
  return v24;
}

uint64_t sub_22875B154(void *a1, uint64_t a2)
{
  v56 = a1;
  sub_228774608(0, &qword_280DE0098, sub_22873D6F4, MEMORY[0x277CBCE88]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v43 - v5;
  sub_22873D9AC(0);
  v8 = v7;
  v54 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v51 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22873DB6C(0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v52 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228775DB8(0, &qword_280DE06E8, sub_22873DB6C, sub_22873DDEC, MEMORY[0x277CBCB98]);
  v15 = v14;
  v53 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v50 = &v43 - v16;
  sub_22873DE68(0, v17);
  v55 = v18;
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    v47 = v8;
    v48 = v12;
    v49 = v11;
    v45 = v19;
    v46 = v15;
    if (v56)
    {
      MEMORY[0x28223BE20](Strong);
      v24 = v56;
      *(&v43 - 2) = v56;
      sub_228703004(0, &qword_280DE1990, 0x277CCD4D8);
      v25 = v24;

      sub_2287CA650();

      v26 = v58;
    }

    else
    {
      swift_beginAccess();
      v26 = *(v23 + 48);
      v25 = v56;
    }

    v44 = v26;

    v43 = v21;
    sub_2287CA4D0();

    v28 = *(v23 + 192);
    v29 = *(v23 + 200);
    __swift_project_boxed_opaque_existential_1((v23 + 168), v28);
    v30 = *(v29 + 24);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v57 = v30(v21, v55, OpaqueTypeConformance2, v28, v29);
    v32 = swift_allocObject();
    v33 = v56;
    *(v32 + 16) = v56;
    sub_228774608(0, &qword_280DE0268, MEMORY[0x277D121A8], MEMORY[0x277CBCD88]);
    sub_22873D6F4(0);
    sub_22873DAE4();
    v34 = v25;
    v35 = v51;
    sub_2287CAF70();

    *(swift_allocObject() + 16) = v33;
    sub_228773EC0(0);
    sub_2287693A8(&qword_280DE0648, sub_22873D9AC, MEMORY[0x277CBCC08]);
    sub_2287693A8(&qword_280DE00E0, sub_228773EC0, MEMORY[0x277CBCE80]);
    v36 = v34;
    v37 = v52;
    v38 = v47;
    sub_2287CAF90();

    (*(v54 + 8))(v35, v38);
    sub_22870D3A8(0, &qword_280DE35A0, MEMORY[0x277D84948]);
    sub_22873DDEC();
    v39 = v49;
    v40 = v50;
    sub_2287CB040();
    (*(v48 + 8))(v37, v39);
    sub_22873DF60();
    v41 = v46;
    v27 = sub_2287CAF40();

    (*(v53 + 8))(v40, v41);
    (*(v45 + 8))(v43, v55);
  }

  else
  {
    sub_22873D6F4(0);
    sub_22870D3A8(0, &qword_280DE35A0, MEMORY[0x277D84948]);
    sub_2287CADC0();
    sub_22873DEC8();
    v27 = sub_2287CAF40();
    (*(v4 + 8))(v6, v3);
  }

  return v27;
}

uint64_t sub_22875B8E0(void *a1, uint64_t a2)
{
  v56 = a1;
  sub_228774608(0, &qword_280DE0098, sub_22873D6F4, MEMORY[0x277CBCE88]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v43 - v5;
  sub_22873D9AC(0);
  v8 = v7;
  v54 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v51 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22873DB6C(0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v52 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228775DB8(0, &qword_280DE06E8, sub_22873DB6C, sub_22873DDEC, MEMORY[0x277CBCB98]);
  v15 = v14;
  v53 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v50 = &v43 - v16;
  sub_22873DE68(0, v17);
  v55 = v18;
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    v47 = v8;
    v48 = v12;
    v49 = v11;
    v45 = v19;
    v46 = v15;
    if (v56)
    {
      MEMORY[0x28223BE20](Strong);
      v24 = v56;
      *(&v43 - 2) = v56;
      sub_228703004(0, &qword_280DE1990, 0x277CCD4D8);
      v25 = v24;

      sub_2287CA650();

      v26 = v58;
    }

    else
    {
      swift_beginAccess();
      v26 = *(v23 + 48);
      v25 = v56;
    }

    v44 = v26;

    v43 = v21;
    sub_2287CA4D0();

    v28 = *(v23 + 192);
    v29 = *(v23 + 200);
    __swift_project_boxed_opaque_existential_1((v23 + 168), v28);
    v30 = *(v29 + 24);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v57 = v30(v21, v55, OpaqueTypeConformance2, v28, v29);
    v32 = swift_allocObject();
    v33 = v56;
    *(v32 + 16) = v56;
    sub_228774608(0, &qword_280DE0268, MEMORY[0x277D121A8], MEMORY[0x277CBCD88]);
    sub_22873D6F4(0);
    sub_22873DAE4();
    v34 = v25;
    v35 = v51;
    sub_2287CAF70();

    *(swift_allocObject() + 16) = v33;
    sub_228773EC0(0);
    sub_2287693A8(&qword_280DE0648, sub_22873D9AC, MEMORY[0x277CBCC08]);
    sub_2287693A8(&qword_280DE00E0, sub_228773EC0, MEMORY[0x277CBCE80]);
    v36 = v34;
    v37 = v52;
    v38 = v47;
    sub_2287CAF90();

    (*(v54 + 8))(v35, v38);
    sub_22870D3A8(0, &qword_280DE35A0, MEMORY[0x277D84948]);
    sub_22873DDEC();
    v39 = v49;
    v40 = v50;
    sub_2287CB040();
    (*(v48 + 8))(v37, v39);
    sub_22873DF60();
    v41 = v46;
    v27 = sub_2287CAF40();

    (*(v53 + 8))(v40, v41);
    (*(v45 + 8))(v43, v55);
  }

  else
  {
    sub_22873D6F4(0);
    sub_22870D3A8(0, &qword_280DE35A0, MEMORY[0x277D84948]);
    sub_2287CADC0();
    sub_22873DEC8();
    v27 = sub_2287CAF40();
    (*(v4 + 8))(v6, v3);
  }

  return v27;
}

uint64_t sub_22875C06C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = a4;
  v40 = a5;
  v37 = a1;
  v38 = a2;
  sub_228772A64(0, &qword_280DE1B70, sub_228775D50, sub_228775D84);
  v35 = *(v6 - 8);
  v36 = v6;
  MEMORY[0x28223BE20](v6);
  v34 = v31 - v7;
  sub_228775DB8(0, &qword_280DE0370, sub_228775D50, sub_228775D84, MEMORY[0x277CBCD10]);
  v32 = *(v8 - 8);
  v33 = v8;
  MEMORY[0x28223BE20](v8);
  v31[0] = v31 - v9;
  swift_beginAccess();
  v10 = *(a3 + 24);
  v41 = swift_allocObject();
  v31[1] = a3;
  swift_weakInit();
  v11 = *(v10 + 16);

  if (!v11)
  {
    v14 = MEMORY[0x277D84F90];
LABEL_20:

    sub_22875F2F4(v14);
    v42[0] = v14;
    sub_228775D50(0);
    sub_228775D84();
    v25 = v34;
    sub_2287CB2F0();

    sub_22870D3A8(0, &qword_280DE35A0, MEMORY[0x277D84948]);
    v26 = v31[0];
    v27 = v36;
    sub_2287CABF0();
    (*(v35 + 8))(v25, v27);
    sub_228775E9C();
    v28 = v33;
    v29 = sub_2287CAF40();
    (*(v32 + 8))(v26, v28);
    return v29;
  }

  v12 = 0;
  v13 = v10 + 32;
  v14 = MEMORY[0x277D84F90];
  while (v12 < *(v10 + 16))
  {
    sub_228770280(v13, v42, sub_228775E68);
    v15 = sub_22875C9CC(v42, v41, v37, v39, v38, v40);
    sub_2287762E4(v42, sub_228775E68);
    v16 = *(v15 + 16);
    v17 = *(v14 + 2);
    v18 = v17 + v16;
    if (__OFADD__(v17, v16))
    {
      goto LABEL_22;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v18 <= *(v14 + 3) >> 1)
    {
      if (*(v15 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v17 <= v18)
      {
        v20 = v17 + v16;
      }

      else
      {
        v20 = v17;
      }

      v14 = sub_2287234DC(isUniquelyReferenced_nonNull_native, v20, 1, v14);
      if (*(v15 + 16))
      {
LABEL_15:
        v21 = (*(v14 + 3) >> 1) - *(v14 + 2);
        sub_22872C820(0);
        if (v21 < v16)
        {
          goto LABEL_24;
        }

        swift_arrayInitWithCopy();

        if (v16)
        {
          v22 = *(v14 + 2);
          v23 = __OFADD__(v22, v16);
          v24 = v22 + v16;
          if (v23)
          {
            goto LABEL_25;
          }

          *(v14 + 2) = v24;
        }

        goto LABEL_4;
      }
    }

    if (v16)
    {
      goto LABEL_23;
    }

LABEL_4:
    ++v12;
    v13 += 56;
    if (v11 == v12)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);

  sub_2287762E4(v42, sub_228775E68);

  __break(1u);
  return result;
}

uint64_t sub_22875C51C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = a4;
  v40 = a5;
  v37 = a1;
  v38 = a2;
  sub_228772A64(0, &qword_280DE1B78, sub_228772AF0, sub_228772B24);
  v35 = *(v6 - 8);
  v36 = v6;
  MEMORY[0x28223BE20](v6);
  v34 = v31 - v7;
  sub_228775DB8(0, &qword_280DE0380, sub_228772AF0, sub_228772B24, MEMORY[0x277CBCD10]);
  v32 = *(v8 - 8);
  v33 = v8;
  MEMORY[0x28223BE20](v8);
  v31[0] = v31 - v9;
  swift_beginAccess();
  v10 = *(a3 + 24);
  v41 = swift_allocObject();
  v31[1] = a3;
  swift_weakInit();
  v11 = *(v10 + 16);

  if (!v11)
  {
    v14 = MEMORY[0x277D84F90];
LABEL_20:

    sub_22875F610(v14);
    v42[0] = v14;
    sub_228772AF0(0);
    sub_228772B24();
    v25 = v34;
    sub_2287CB2F0();

    sub_22870D3A8(0, &qword_280DE35A0, MEMORY[0x277D84948]);
    v26 = v31[0];
    v27 = v36;
    sub_2287CABF0();
    (*(v35 + 8))(v25, v27);
    sub_228772B8C();
    v28 = v33;
    v29 = sub_2287CAF40();
    (*(v32 + 8))(v26, v28);
    return v29;
  }

  v12 = 0;
  v13 = v10 + 32;
  v14 = MEMORY[0x277D84F90];
  while (v12 < *(v10 + 16))
  {
    sub_228770280(v13, v42, sub_228772B58);
    v15 = sub_22875D8DC(v42, v41, v37, v39, v38, v40);
    sub_2287762E4(v42, sub_228772B58);
    v16 = *(v15 + 16);
    v17 = *(v14 + 2);
    v18 = v17 + v16;
    if (__OFADD__(v17, v16))
    {
      goto LABEL_22;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v18 <= *(v14 + 3) >> 1)
    {
      if (*(v15 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v17 <= v18)
      {
        v20 = v17 + v16;
      }

      else
      {
        v20 = v17;
      }

      v14 = sub_228723838(isUniquelyReferenced_nonNull_native, v20, 1, v14);
      if (*(v15 + 16))
      {
LABEL_15:
        v21 = (*(v14 + 3) >> 1) - *(v14 + 2);
        sub_22872C6C0(0);
        if (v21 < v16)
        {
          goto LABEL_24;
        }

        swift_arrayInitWithCopy();

        if (v16)
        {
          v22 = *(v14 + 2);
          v23 = __OFADD__(v22, v16);
          v24 = v22 + v16;
          if (v23)
          {
            goto LABEL_25;
          }

          *(v14 + 2) = v24;
        }

        goto LABEL_4;
      }
    }

    if (v16)
    {
      goto LABEL_23;
    }

LABEL_4:
    ++v12;
    v13 += 56;
    if (v11 == v12)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);

  sub_2287762E4(v42, sub_228772B58);

  __break(1u);
  return result;
}

uint64_t sub_22875C9CC(uint64_t (**a1)(char *), uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v84 = a5;
  v101 = a3;
  sub_228739E24(0);
  MEMORY[0x28223BE20](v10 - 8);
  v89 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_2287CA340();
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v85 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_2287C9590();
  v88 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v94 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22873CD8C(0);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2287C9ED0();
  v91 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v90 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x277D84F90];
  }

  v82 = a6;
  v83 = v6;
  v80 = *(a4 + qword_280DE6268);
  v79 = a4 + qword_280DE6258;
  v73 = *(a4 + qword_280DE6260);
  v96 = a1;
  v81 = v19;
  v93 = Strong;
  if (v101)
  {
    MEMORY[0x28223BE20](Strong);
    v22 = v101;
    *(&v70 - 2) = v101;
    sub_228703004(0, &qword_280DE1990, 0x277CCD4D8);
    v23 = v22;

    sub_2287CA650();

    v78 = v23;

    v24 = v98;
  }

  else
  {
    v26 = Strong;
    swift_beginAccess();
    v24 = *(v26 + 48);
    v78 = v101;
  }

  v92 = v24;
  *&v98 = sub_2287CB5B0();
  v27 = MEMORY[0x277CBCD88];
  sub_2287738D0(0, &qword_280DE0178, &unk_280DDFF58, MEMORY[0x277D83940], MEMORY[0x277CBCD88]);
  v28 = MEMORY[0x277D83D88];
  sub_228773770(0, &qword_280DDFEB0, &qword_280DE1958, 0x277CCD940, MEMORY[0x277D83D88]);
  sub_22873CE6C();
  sub_2287CAF70();
  sub_2287693A8(&qword_280DE05D0, sub_22873CD8C, MEMORY[0x277CBCC08]);
  v29 = sub_2287CAF40();

  (*(v16 + 8))(v18, v15);
  *&v98 = v29;
  sub_2287738D0(0, &qword_280DE0148, &qword_280DDFEB0, v28, v27);
  sub_2287737D8(&unk_280DE0150, &qword_280DE0148, v27, MEMORY[0x277CBCD90]);
  v30 = sub_2287CAF40();

  *&v98 = v30;
  v31 = sub_2287CAEF0();

  *&v98 = v31;
  sub_22877383C(0);
  v72 = MEMORY[0x277CBCB30];
  sub_2287693A8(&qword_280DE07A0, sub_22877383C, MEMORY[0x277CBCB30]);
  v32 = sub_2287CAF40();

  v33 = v96;
  sub_2287010E4((v96 + 2), &v98);
  v34 = swift_allocObject();
  v35 = v84;
  v34[2] = v84;
  sub_228706AD4(&v98, (v34 + 3));
  v36 = v92;
  v34[8] = v92;
  v34[9] = v32;
  v37 = v32;
  v38 = swift_allocObject();
  v39 = v93;
  swift_weakInit();
  sub_2287010E4((v33 + 2), &v98);
  v40 = swift_allocObject();
  v40[2] = v38;
  v40[3] = v36;
  sub_228706AD4(&v98, (v40 + 4));
  v40[9] = v37;
  v40[10] = v35;
  v77 = v37;
  v40[11] = v73;
  sub_2287010E4((v33 + 2), &v98);
  swift_beginAccess();
  v41 = *(v39 + 48);
  v76 = type metadata accessor for HealthStoreSharableModelContext();
  v42 = swift_allocObject();

  v43 = v41;
  v75 = v34;

  v74 = v40;

  v44 = v92;
  swift_retain_n();
  swift_retain_n();
  v45 = v44;
  v42[2] = sub_2287CB590();
  sub_2287010E4(&v98, (v42 + 4));
  v42[3] = v45;
  v46 = [objc_allocWithZone(MEMORY[0x277CCDA78]) initWithHealthStore_];

  __swift_destroy_boxed_opaque_existential_0(&v98);
  v71 = v42;
  v42[9] = v46;
  v42[10] = sub_2287763B4;
  v42[11] = v34;
  v42[12] = sub_2287761F4;
  v42[13] = v40;
  v47 = type metadata accessor for HealthExperienceStoreFeedItemContext(0);
  v92 = sub_2287693A8(qword_280DE3170, type metadata accessor for HealthExperienceStoreFeedItemContext, &protocol conformance descriptor for HealthExperienceStoreFeedItemContext);
  v48 = v46;
  v49 = sub_2287C9D70();

  *&v98 = v49;
  sub_228774608(0, &qword_280DE0288, MEMORY[0x277D11FC0], MEMORY[0x277CBCD88]);
  sub_22873D1D8();
  v50 = sub_2287CAEF0();

  *&v98 = v50;
  sub_2287739F8(0);
  sub_2287693A8(&qword_280DE07B0, sub_2287739F8, v72);
  v72 = sub_2287CAF40();

  __swift_project_boxed_opaque_existential_1((v39 + 64), *(v39 + 88));
  v51 = sub_2287C99F0();
  sub_2287010E4((v96 + 2), &v98);
  LOBYTE(v46) = *(v39 + 40);
  v52 = *(v39 + 144);
  swift_beginAccess();
  v73 = *(v39 + 152);
  sub_2287010E4(v39 + 208, v97);
  v53 = v45;

  v54 = v94;
  sub_2287C9520();
  v55 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  v84 = v47;
  v56 = swift_allocObject();
  *(v56 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_loggingSensitiveTerms) = &unk_283BC00A0;
  *(v56 + 56) = v46;
  v57 = v88;
  (*(v88 + 16))(v56 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_boundingRange, v54, v95);
  __swift_project_boxed_opaque_existential_1(&v98, v99);
  v58 = v51;
  sub_2287C9A70();
  sub_228703004(0, &qword_280DE3898, 0x277CCAC30);
  sub_2287CB550();

  v59 = v85;
  sub_2287CA320();
  (*(v86 + 32))(v56 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_feedItemStorage, v59, v87);
  *(v56 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_storageContext) = v58;
  sub_2287010E4(&v98, v56 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_pluginInfo);
  *(v56 + 16) = v53;
  *(v56 + 24) = v52;
  sub_2287010E4(v97, v56 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_queueProvider);
  v60 = objc_allocWithZone(MEMORY[0x277CCDAC0]);
  v61 = v53;
  v62 = v58;

  *(v56 + 48) = [v60 initWithHealthStore_];
  *(v56 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_displayNamePublisher) = v72;
  __swift_project_boxed_opaque_existential_1(&v98, v99);

  sub_2287C9A70();
  sub_2287C9A30();
  swift_allocObject();
  v63 = sub_2287C9A20();

  (*(v57 + 8))(v94, v95);
  __swift_destroy_boxed_opaque_existential_0(v97);
  v64 = MEMORY[0x277D11D38];
  *(v56 + 32) = v63;
  *(v56 + 40) = v64;
  __swift_destroy_boxed_opaque_existential_0(&v98);
  sub_228770280(v79, v89, sub_228739E24);
  v99 = v84;
  v100 = v92;
  *&v98 = v56;
  v97[3] = v76;
  v97[4] = sub_2287693A8(qword_280DE3298, type metadata accessor for HealthStoreSharableModelContext, &unk_2287CE770);
  v97[0] = v71;
  v65 = v78;

  v66 = v90;
  sub_2287C9EA0();
  sub_2287C9EC0();

  v67 = v96;
  v68 = (*v96)(v66);
  MEMORY[0x28223BE20](v68);
  *(&v70 - 4) = v67;
  *(&v70 - 3) = v66;
  *(&v70 - 2) = v82;
  v25 = sub_228757584(sub_228776278, (&v70 - 6), v68, sub_22872C820, sub_228713448, sub_22870CA30, sub_22877494C);

  (*(v91 + 8))(v66, v81);
  return v25;
}

uint64_t sub_22875D8DC(uint64_t (**a1)(char *), uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v84 = a5;
  v101 = a3;
  sub_228739E24(0);
  MEMORY[0x28223BE20](v10 - 8);
  v89 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_2287CA340();
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v85 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_2287C9590();
  v88 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v94 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22873CD8C(0);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2287C9ED0();
  v91 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v90 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x277D84F90];
  }

  v82 = a6;
  v83 = v6;
  v80 = *(a4 + qword_280DE6268);
  v79 = a4 + qword_280DE6258;
  v73 = *(a4 + qword_280DE6260);
  v96 = a1;
  v81 = v19;
  v93 = Strong;
  if (v101)
  {
    MEMORY[0x28223BE20](Strong);
    v22 = v101;
    *(&v70 - 2) = v101;
    sub_228703004(0, &qword_280DE1990, 0x277CCD4D8);
    v23 = v22;

    sub_2287CA650();

    v78 = v23;

    v24 = v98;
  }

  else
  {
    v26 = Strong;
    swift_beginAccess();
    v24 = *(v26 + 48);
    v78 = v101;
  }

  v92 = v24;
  *&v98 = sub_2287CB5B0();
  v27 = MEMORY[0x277CBCD88];
  sub_2287738D0(0, &qword_280DE0178, &unk_280DDFF58, MEMORY[0x277D83940], MEMORY[0x277CBCD88]);
  v28 = MEMORY[0x277D83D88];
  sub_228773770(0, &qword_280DDFEB0, &qword_280DE1958, 0x277CCD940, MEMORY[0x277D83D88]);
  sub_22873CE6C();
  sub_2287CAF70();
  sub_2287693A8(&qword_280DE05D0, sub_22873CD8C, MEMORY[0x277CBCC08]);
  v29 = sub_2287CAF40();

  (*(v16 + 8))(v18, v15);
  *&v98 = v29;
  sub_2287738D0(0, &qword_280DE0148, &qword_280DDFEB0, v28, v27);
  sub_2287737D8(&unk_280DE0150, &qword_280DE0148, v27, MEMORY[0x277CBCD90]);
  v30 = sub_2287CAF40();

  *&v98 = v30;
  v31 = sub_2287CAEF0();

  *&v98 = v31;
  sub_22877383C(0);
  v72 = MEMORY[0x277CBCB30];
  sub_2287693A8(&qword_280DE07A0, sub_22877383C, MEMORY[0x277CBCB30]);
  v32 = sub_2287CAF40();

  v33 = v96;
  sub_2287010E4((v96 + 2), &v98);
  v34 = swift_allocObject();
  v35 = v84;
  v34[2] = v84;
  sub_228706AD4(&v98, (v34 + 3));
  v36 = v92;
  v34[8] = v92;
  v34[9] = v32;
  v37 = v32;
  v38 = swift_allocObject();
  v39 = v93;
  swift_weakInit();
  sub_2287010E4((v33 + 2), &v98);
  v40 = swift_allocObject();
  v40[2] = v38;
  v40[3] = v36;
  sub_228706AD4(&v98, (v40 + 4));
  v40[9] = v37;
  v40[10] = v35;
  v77 = v37;
  v40[11] = v73;
  sub_2287010E4((v33 + 2), &v98);
  swift_beginAccess();
  v41 = *(v39 + 48);
  v76 = type metadata accessor for HealthStoreSharableModelContext();
  v42 = swift_allocObject();

  v43 = v41;
  v75 = v34;

  v74 = v40;

  v44 = v92;
  swift_retain_n();
  swift_retain_n();
  v45 = v44;
  v42[2] = sub_2287CB590();
  sub_2287010E4(&v98, (v42 + 4));
  v42[3] = v45;
  v46 = [objc_allocWithZone(MEMORY[0x277CCDA78]) initWithHealthStore_];

  __swift_destroy_boxed_opaque_existential_0(&v98);
  v71 = v42;
  v42[9] = v46;
  v42[10] = sub_22873D1C8;
  v42[11] = v34;
  v42[12] = sub_228773974;
  v42[13] = v40;
  v47 = type metadata accessor for HealthExperienceStoreFeedItemContext(0);
  v92 = sub_2287693A8(qword_280DE3170, type metadata accessor for HealthExperienceStoreFeedItemContext, &protocol conformance descriptor for HealthExperienceStoreFeedItemContext);
  v48 = v46;
  v49 = sub_2287C9D70();

  *&v98 = v49;
  sub_228774608(0, &qword_280DE0288, MEMORY[0x277D11FC0], MEMORY[0x277CBCD88]);
  sub_22873D1D8();
  v50 = sub_2287CAEF0();

  *&v98 = v50;
  sub_2287739F8(0);
  sub_2287693A8(&qword_280DE07B0, sub_2287739F8, v72);
  v72 = sub_2287CAF40();

  __swift_project_boxed_opaque_existential_1((v39 + 64), *(v39 + 88));
  v51 = sub_2287C99F0();
  sub_2287010E4((v96 + 2), &v98);
  LOBYTE(v46) = *(v39 + 40);
  v52 = *(v39 + 144);
  swift_beginAccess();
  v73 = *(v39 + 152);
  sub_2287010E4(v39 + 208, v97);
  v53 = v45;

  v54 = v94;
  sub_2287C9520();
  v55 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  v84 = v47;
  v56 = swift_allocObject();
  *(v56 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_loggingSensitiveTerms) = &unk_283BC00D0;
  *(v56 + 56) = v46;
  v57 = v88;
  (*(v88 + 16))(v56 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_boundingRange, v54, v95);
  __swift_project_boxed_opaque_existential_1(&v98, v99);
  v58 = v51;
  sub_2287C9A70();
  sub_228703004(0, &qword_280DE3898, 0x277CCAC30);
  sub_2287CB550();

  v59 = v85;
  sub_2287CA320();
  (*(v86 + 32))(v56 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_feedItemStorage, v59, v87);
  *(v56 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_storageContext) = v58;
  sub_2287010E4(&v98, v56 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_pluginInfo);
  *(v56 + 16) = v53;
  *(v56 + 24) = v52;
  sub_2287010E4(v97, v56 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_queueProvider);
  v60 = objc_allocWithZone(MEMORY[0x277CCDAC0]);
  v61 = v53;
  v62 = v58;

  *(v56 + 48) = [v60 initWithHealthStore_];
  *(v56 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_displayNamePublisher) = v72;
  __swift_project_boxed_opaque_existential_1(&v98, v99);

  sub_2287C9A70();
  sub_2287C9A30();
  swift_allocObject();
  v63 = sub_2287C9A20();

  (*(v57 + 8))(v94, v95);
  __swift_destroy_boxed_opaque_existential_0(v97);
  v64 = MEMORY[0x277D11D38];
  *(v56 + 32) = v63;
  *(v56 + 40) = v64;
  __swift_destroy_boxed_opaque_existential_0(&v98);
  sub_228770280(v79, v89, sub_228739E24);
  v99 = v84;
  v100 = v92;
  *&v98 = v56;
  v97[3] = v76;
  v97[4] = sub_2287693A8(qword_280DE3298, type metadata accessor for HealthStoreSharableModelContext, &unk_2287CE770);
  v97[0] = v71;
  v65 = v78;

  v66 = v90;
  sub_2287C9EA0();
  sub_2287C9EC0();

  v67 = v96;
  v68 = (*v96)(v66);
  MEMORY[0x28223BE20](v68);
  *(&v70 - 4) = v67;
  *(&v70 - 3) = v66;
  *(&v70 - 2) = v82;
  v25 = sub_228757584(sub_228773A8C, (&v70 - 6), v68, sub_22872C6C0, sub_228713654, sub_22870C47C, sub_228771B7C);

  (*(v91 + 8))(v66, v81);
  return v25;
}

uint64_t sub_22875E7EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(char *, uint64_t, uint64_t)@<X3>, uint64_t a5@<X8>)
{
  v57 = a4;
  v9 = sub_2287C9ED0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v56 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v49 - v13;
  sub_22870CA30(0);
  v55 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2287CAA50();
  v58 = *(v18 - 8);
  v59 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CA9D0();
  v61 = a2;
  sub_228770280(a2, v64, sub_228775E68);
  v60 = a1;
  sub_228770280(a1, v17, sub_22870CA30);
  v21 = *(v10 + 16);
  v62 = v9;
  v21(v14, a3, v9);
  v22 = sub_2287CAA40();
  v54 = sub_2287CB610();
  if (os_log_type_enabled(v22, v54))
  {
    v23 = swift_slowAlloc();
    v53 = a5;
    v24 = v23;
    v51 = swift_slowAlloc();
    v63 = v51;
    *v24 = 136446978;
    v67 = v57;
    swift_getMetatypeMetadata();
    v25 = sub_2287CB250();
    v50 = v22;
    v27 = sub_2287031D8(v25, v26, &v63);
    v52 = a3;
    v28 = v27;

    *(v24 + 4) = v28;
    *(v24 + 12) = 2082;
    v57 = v21;
    __swift_project_boxed_opaque_existential_1(v65, v66);
    v29 = sub_2287C9A70();
    v31 = v30;
    sub_2287762E4(v64, sub_228775E68);
    v32 = sub_2287031D8(v29, v31, &v63);

    *(v24 + 14) = v32;
    *(v24 + 22) = 2082;
    v33 = sub_2287C9E50();
    v34 = sub_2287C9C50();
    v36 = v35;

    sub_2287762E4(v17, sub_22870CA30);
    v37 = sub_2287031D8(v34, v36, &v63);
    a3 = v52;

    *(v24 + 24) = v37;
    *(v24 + 32) = 2082;
    v38 = v62;
    v57(v56, v14, v62);
    v39 = sub_2287CB250();
    v41 = v40;
    (*(v10 + 8))(v14, v38);
    v42 = sub_2287031D8(v39, v41, &v63);
    v21 = v57;

    *(v24 + 34) = v42;
    v43 = v50;
    _os_log_impl(&dword_2286FF000, v50, v54, "[%{public}s]: delegate returned pipeline <%{public}s> for profile %{public}s and context %{public}s.", v24, 0x2Au);
    v44 = v51;
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v44, -1, -1);
    v45 = v24;
    a5 = v53;
    MEMORY[0x22AABFD90](v45, -1, -1);

    (*(v58 + 8))(v20, v59);
  }

  else
  {

    (*(v10 + 8))(v14, v62);
    sub_2287762E4(v17, sub_22870CA30);
    (*(v58 + 8))(v20, v59);
    sub_2287762E4(v64, sub_228775E68);
  }

  sub_228770280(v60, a5, sub_22870CA30);
  sub_22872C820(0);
  v47 = v46;
  sub_2287010E4(v61 + 16, a5 + *(v46 + 28));
  v21((a5 + *(v47 + 32)), a3, v62);
  return sub_2287C9800();
}

uint64_t sub_22875ED70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(char *, uint64_t, uint64_t)@<X3>, uint64_t a5@<X8>)
{
  v57 = a4;
  v9 = sub_2287C9ED0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v56 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v49 - v13;
  sub_22870C47C(0);
  v55 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2287CAA50();
  v58 = *(v18 - 8);
  v59 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CA9D0();
  v61 = a2;
  sub_228770280(a2, v64, sub_228772B58);
  v60 = a1;
  sub_228770280(a1, v17, sub_22870C47C);
  v21 = *(v10 + 16);
  v62 = v9;
  v21(v14, a3, v9);
  v22 = sub_2287CAA40();
  v54 = sub_2287CB610();
  if (os_log_type_enabled(v22, v54))
  {
    v23 = swift_slowAlloc();
    v53 = a5;
    v24 = v23;
    v51 = swift_slowAlloc();
    v63 = v51;
    *v24 = 136446978;
    v67 = v57;
    swift_getMetatypeMetadata();
    v25 = sub_2287CB250();
    v50 = v22;
    v27 = sub_2287031D8(v25, v26, &v63);
    v52 = a3;
    v28 = v27;

    *(v24 + 4) = v28;
    *(v24 + 12) = 2082;
    v57 = v21;
    __swift_project_boxed_opaque_existential_1(v65, v66);
    v29 = sub_2287C9A70();
    v31 = v30;
    sub_2287762E4(v64, sub_228772B58);
    v32 = sub_2287031D8(v29, v31, &v63);

    *(v24 + 14) = v32;
    *(v24 + 22) = 2082;
    v33 = sub_2287C9E50();
    v34 = sub_2287C9C50();
    v36 = v35;

    sub_2287762E4(v17, sub_22870C47C);
    v37 = sub_2287031D8(v34, v36, &v63);
    a3 = v52;

    *(v24 + 24) = v37;
    *(v24 + 32) = 2082;
    v38 = v62;
    v57(v56, v14, v62);
    v39 = sub_2287CB250();
    v41 = v40;
    (*(v10 + 8))(v14, v38);
    v42 = sub_2287031D8(v39, v41, &v63);
    v21 = v57;

    *(v24 + 34) = v42;
    v43 = v50;
    _os_log_impl(&dword_2286FF000, v50, v54, "[%{public}s]: delegate returned pipeline <%{public}s> for profile %{public}s and context %{public}s.", v24, 0x2Au);
    v44 = v51;
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v44, -1, -1);
    v45 = v24;
    a5 = v53;
    MEMORY[0x22AABFD90](v45, -1, -1);

    (*(v58 + 8))(v20, v59);
  }

  else
  {

    (*(v10 + 8))(v14, v62);
    sub_2287762E4(v17, sub_22870C47C);
    (*(v58 + 8))(v20, v59);
    sub_2287762E4(v64, sub_228772B58);
  }

  sub_228770280(v60, a5, sub_22870C47C);
  sub_22872C6C0(0);
  v47 = v46;
  sub_2287010E4(v61 + 16, a5 + *(v46 + 28));
  v21((a5 + *(v47 + 32)), a3, v62);
  return sub_2287C9800();
}

uint64_t sub_22875F2F4(uint64_t a1)
{
  sub_228772C28(0, &qword_280DE3450, sub_22872C820);
  v22 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v23 = MEMORY[0x277D84F90];
    sub_2287133FC(0, v6, 0);
    v7 = v23;
    sub_22872C820(0);
    v9 = v8;
    v10 = a1 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80));
    v11 = *(*(v8 - 8) + 72);
    do
    {
      v12 = &v5[*(v22 + 48)];
      sub_2287745F0(v10, v12);
      v13 = *(v9 + 36);
      v14 = sub_2287C9810();
      (*(*(v14 - 8) + 16))(v5, v12 + v13, v14);
      v23 = v7;
      v16 = *(v7 + 16);
      v15 = *(v7 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_2287133FC((v15 > 1), v16 + 1, 1);
        v7 = v23;
      }

      *(v7 + 16) = v16 + 1;
      sub_228772CA0(v5, v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v16, &qword_280DE3450, sub_22872C820);
      v10 += v11;
      --v6;
    }

    while (v6);
  }

  if (*(v7 + 16))
  {
    sub_228775F38(0);
    v17 = sub_2287CBBF0();
  }

  else
  {
    v17 = MEMORY[0x277D84F98];
  }

  v23 = v17;
  sub_22876DF78(v7, 1, &v23);
  v18 = v23;
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  sub_2287651E0(sub_228775FE4, v19, &unk_283BC2368, &unk_283BC2598, sub_2287763C8, &block_descriptor_217);
}

uint64_t sub_22875F610(uint64_t a1)
{
  sub_228772C28(0, &qword_280DE3460, sub_22872C6C0);
  v22 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v23 = MEMORY[0x277D84F90];
    sub_228713608(0, v6, 0);
    v7 = v23;
    sub_22872C6C0(0);
    v9 = v8;
    v10 = a1 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80));
    v11 = *(*(v8 - 8) + 72);
    do
    {
      v12 = &v5[*(v22 + 48)];
      sub_228771770(v10, v12);
      v13 = *(v9 + 36);
      v14 = sub_2287C9810();
      (*(*(v14 - 8) + 16))(v5, v12 + v13, v14);
      v23 = v7;
      v16 = *(v7 + 16);
      v15 = *(v7 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_228713608((v15 > 1), v16 + 1, 1);
        v7 = v23;
      }

      *(v7 + 16) = v16 + 1;
      sub_228772CA0(v5, v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v16, &qword_280DE3460, sub_22872C6C0);
      v10 += v11;
      --v6;
    }

    while (v6);
  }

  if (*(v7 + 16))
  {
    sub_228772D0C(0);
    v17 = sub_2287CBBF0();
  }

  else
  {
    v17 = MEMORY[0x277D84F98];
  }

  v23 = v17;
  sub_22876E5A8(v7, 1, &v23);
  v18 = v23;
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  sub_2287651E0(sub_228772DB8, v19, &unk_283BC1E18, &unk_283BC2048, sub_228772388, &block_descriptor_5);
}

uint64_t sub_22875F92C(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  sub_2287704B4(0, &qword_280DE0450, &qword_280DE0228, sub_22872C820, sub_2287744AC);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - v8;
  v17[1] = a1;
  v10 = v2[24];
  v11 = v2[25];
  __swift_project_boxed_opaque_existential_1(v2 + 21, v10);
  (*(v11 + 8))(v10, v11);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v4;
  v14 = MEMORY[0x277CBCD88];
  sub_228774608(0, &qword_280DE0228, sub_22872C820, MEMORY[0x277CBCD88]);
  sub_2287691F4(0);
  sub_228774608(0, &qword_280DE0200, sub_2287691F4, v14);
  sub_2287744AC();
  sub_22876928C();
  sub_2287CAFE0();

  sub_228774560();
  v15 = sub_2287CAF40();
  (*(v7 + 8))(v9, v6);
  return v15;
}

uint64_t sub_22875FBB4(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  sub_22877150C(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = a1;
  v10 = v2[24];
  v11 = v2[25];
  __swift_project_boxed_opaque_existential_1(v2 + 21, v10);
  (*(v11 + 8))(v10, v11);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v4;
  v14 = MEMORY[0x277CBCD88];
  sub_228774608(0, &qword_280DE0238, sub_22872C6C0, MEMORY[0x277CBCD88]);
  sub_228770F78(0);
  sub_228774608(0, &qword_280DE0218, sub_228770F78, v14);
  sub_2287716BC();
  sub_2287710CC();
  sub_2287CAFE0();

  sub_2287693A8(&qword_280DE0498, sub_22877150C, MEMORY[0x277CBCCE0]);
  v15 = sub_2287CAF40();
  (*(v7 + 8))(v9, v6);
  return v15;
}

uint64_t sub_22875FE44(uint64_t (**a1)(void), uint64_t a2, NSObject *a3)
{
  v61 = a3;
  sub_22870CA30(0);
  v63 = v4;
  MEMORY[0x28223BE20](v4);
  v62 = &v56[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_228774608(0, &qword_280DE0088, sub_2287691F4, MEMORY[0x277CBCE88]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v56[-v9];
  sub_22872C820(0);
  v64 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v56[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v56[-v16];
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v56[-v19];
  MEMORY[0x28223BE20](v18);
  v22 = &v56[-v21];
  v23 = sub_2287CAA50();
  v65 = *(v23 - 8);
  v66 = v23;
  MEMORY[0x28223BE20](v23);
  v25 = &v56[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v60 = Strong;
    sub_2287CA9D0();
    sub_2287745F0(a1, v22);
    sub_2287745F0(a1, v20);
    sub_2287745F0(a1, v17);
    sub_2287745F0(a1, v14);
    v27 = sub_2287CAA40();
    v28 = sub_2287CB610();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v59 = a1;
      v30 = v29;
      v58 = swift_slowAlloc();
      v68 = v58;
      *v30 = 136447234;
      v67 = v61;
      swift_getMetatypeMetadata();
      v31 = sub_2287CB250();
      v61 = v27;
      v33 = sub_2287031D8(v31, v32, &v68);
      v57 = v28;
      v34 = v33;

      *(v30 + 4) = v34;
      *(v30 + 12) = 2082;
      __swift_project_boxed_opaque_existential_1(&v22[*(v64 + 28)], *&v22[*(v64 + 28) + 24]);
      v35 = sub_2287C9A70();
      v37 = v36;
      sub_2287762E4(v22, sub_22872C820);
      v38 = sub_2287031D8(v35, v37, &v68);

      *(v30 + 14) = v38;
      *(v30 + 22) = 2082;
      sub_228770280(v20, v62, sub_22870CA30);
      v39 = sub_2287CB250();
      v41 = v40;
      sub_2287762E4(v20, sub_22872C820);
      v42 = sub_2287031D8(v39, v41, &v68);

      *(v30 + 24) = v42;
      *(v30 + 32) = 2082;
      v43 = sub_2287C9E50();
      v44 = sub_2287C9C50();
      v46 = v45;

      sub_2287762E4(v17, sub_22872C820);
      v47 = sub_2287031D8(v44, v46, &v68);

      *(v30 + 34) = v47;
      *(v30 + 42) = 2082;
      sub_2287C9E80();
      sub_22870D3A8(0, &qword_280DE3418, MEMORY[0x277D11EC0]);
      v48 = sub_2287CB250();
      v50 = v49;
      sub_2287762E4(v14, sub_22872C820);
      v51 = sub_2287031D8(v48, v50, &v68);

      *(v30 + 44) = v51;
      v52 = v61;
      _os_log_impl(&dword_2286FF000, v61, v57, "[%{public}s][%{public}s]: dispatching GeneratorPipeline <%{public}s> for profile %{public}s and context %{public}s to queue for execution", v30, 0x34u);
      v53 = v58;
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v53, -1, -1);
      a1 = v59;
      MEMORY[0x22AABFD90](v30, -1, -1);

      (*(v65 + 8))(v25, v66);
    }

    else
    {

      sub_2287762E4(v14, sub_22872C820);
      sub_2287762E4(v17, sub_22872C820);
      sub_2287762E4(v20, sub_22872C820);
      (*(v65 + 8))(v25, v66);
      sub_2287762E4(v22, sub_22872C820);
    }

    v67 = sub_228760BEC(a1);
    sub_228774608(0, &qword_280DE0200, sub_2287691F4, MEMORY[0x277CBCD88]);
    sub_22876928C();
    v54 = sub_2287CAF40();
  }

  else
  {
    sub_2287691F4(0);
    sub_22870D3A8(0, &qword_280DE35A0, MEMORY[0x277D84948]);
    sub_2287CADC0();
    sub_228770B4C();
    v54 = sub_2287CAF40();
    (*(v8 + 8))(v10, v7);
  }

  return v54;
}

uint64_t sub_228760518(uint64_t (**a1)(void), uint64_t a2, NSObject *a3)
{
  v61 = a3;
  sub_22870C47C(0);
  v63 = v4;
  MEMORY[0x28223BE20](v4);
  v62 = &v56[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_228774608(0, &qword_280DE0090, sub_228770F78, MEMORY[0x277CBCE88]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v56[-v9];
  sub_22872C6C0(0);
  v64 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v56[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v56[-v16];
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v56[-v19];
  MEMORY[0x28223BE20](v18);
  v22 = &v56[-v21];
  v23 = sub_2287CAA50();
  v65 = *(v23 - 8);
  v66 = v23;
  MEMORY[0x28223BE20](v23);
  v25 = &v56[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v60 = Strong;
    sub_2287CA9D0();
    sub_228771770(a1, v22);
    sub_228771770(a1, v20);
    sub_228771770(a1, v17);
    sub_228771770(a1, v14);
    v27 = sub_2287CAA40();
    v28 = sub_2287CB610();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v59 = a1;
      v30 = v29;
      v58 = swift_slowAlloc();
      v68 = v58;
      *v30 = 136447234;
      v67 = v61;
      swift_getMetatypeMetadata();
      v31 = sub_2287CB250();
      v61 = v27;
      v33 = sub_2287031D8(v31, v32, &v68);
      v57 = v28;
      v34 = v33;

      *(v30 + 4) = v34;
      *(v30 + 12) = 2082;
      __swift_project_boxed_opaque_existential_1(&v22[*(v64 + 28)], *&v22[*(v64 + 28) + 24]);
      v35 = sub_2287C9A70();
      v37 = v36;
      sub_2287762E4(v22, sub_22872C6C0);
      v38 = sub_2287031D8(v35, v37, &v68);

      *(v30 + 14) = v38;
      *(v30 + 22) = 2082;
      sub_228770280(v20, v62, sub_22870C47C);
      v39 = sub_2287CB250();
      v41 = v40;
      sub_2287762E4(v20, sub_22872C6C0);
      v42 = sub_2287031D8(v39, v41, &v68);

      *(v30 + 24) = v42;
      *(v30 + 32) = 2082;
      v43 = sub_2287C9E50();
      v44 = sub_2287C9C50();
      v46 = v45;

      sub_2287762E4(v17, sub_22872C6C0);
      v47 = sub_2287031D8(v44, v46, &v68);

      *(v30 + 34) = v47;
      *(v30 + 42) = 2082;
      sub_2287C9E80();
      sub_22870D3A8(0, &qword_280DE3418, MEMORY[0x277D11EC0]);
      v48 = sub_2287CB250();
      v50 = v49;
      sub_2287762E4(v14, sub_22872C6C0);
      v51 = sub_2287031D8(v48, v50, &v68);

      *(v30 + 44) = v51;
      v52 = v61;
      _os_log_impl(&dword_2286FF000, v61, v57, "[%{public}s][%{public}s]: dispatching GeneratorPipeline <%{public}s> for profile %{public}s and context %{public}s to queue for execution", v30, 0x34u);
      v53 = v58;
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v53, -1, -1);
      a1 = v59;
      MEMORY[0x22AABFD90](v30, -1, -1);

      (*(v65 + 8))(v25, v66);
    }

    else
    {

      sub_2287762E4(v14, sub_22872C6C0);
      sub_2287762E4(v17, sub_22872C6C0);
      sub_2287762E4(v20, sub_22872C6C0);
      (*(v65 + 8))(v25, v66);
      sub_2287762E4(v22, sub_22872C6C0);
    }

    v67 = sub_2287614B0(a1);
    sub_228774608(0, &qword_280DE0218, sub_228770F78, MEMORY[0x277CBCD88]);
    sub_2287710CC();
    v54 = sub_2287CAF40();
  }

  else
  {
    sub_228770F78(0);
    sub_22870D3A8(0, &qword_280DE35A0, MEMORY[0x277D84948]);
    sub_2287CADC0();
    sub_2287713B0();
    v54 = sub_2287CAF40();
    (*(v8 + 8))(v10, v7);
  }

  return v54;
}

uint64_t sub_228760BEC(uint64_t (**a1)(void))
{
  v2 = v1;
  v67 = sub_228774694;
  sub_2287704B4(0, &qword_280DE0460, &qword_280DE0248, sub_228774694, sub_2287746C8);
  v5 = *(v4 - 8);
  v69 = v4;
  v70 = v5;
  MEMORY[0x28223BE20](v4);
  v68 = v55 - v6;
  sub_22872C820(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v9;
  v11 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228774750(0);
  v13 = *(v12 - 8);
  v62 = v12;
  v63 = v13;
  MEMORY[0x28223BE20](v12);
  v57 = v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22877486C(0);
  v16 = *(v15 - 8);
  v64 = v15;
  v65 = v16;
  MEMORY[0x28223BE20](v15);
  v58 = v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228775DB8(0, &qword_280DE03B0, sub_22877486C, sub_228774918, MEMORY[0x277CBCD00]);
  v19 = *(v18 - 8);
  v60 = v18;
  v61 = v19;
  MEMORY[0x28223BE20](v18);
  v59 = v55 - v20;
  v21 = v1[24];
  v22 = v1[25];
  __swift_project_boxed_opaque_existential_1(v1 + 21, v21);
  v66 = (*(v22 + 16))(v21, v22);
  v23 = (*a1)();
  v55[1] = v23;
  sub_22870CE64(0);
  v72 = v24;
  v73 = sub_2287693A8(&qword_280DE2DA8, sub_22870CE64, &protocol conformance descriptor for AnyPipelineProvider<A>);
  KeyPath = swift_getKeyPath();
  v74 = v23;
  v26 = swift_allocObject();
  v56 = v2;
  swift_weakInit();
  v27 = a1;
  v71 = a1;
  sub_2287745F0(a1, v11);
  v28 = *(v8 + 80);
  v29 = (v28 + 32) & ~v28;
  v55[0] = v10;
  v30 = swift_allocObject();
  *(v30 + 16) = v26;
  *(v30 + 24) = KeyPath;
  sub_22877494C(v11, v30 + v29);
  v31 = swift_allocObject();
  swift_weakInit();
  sub_2287745F0(v27, v11);
  v32 = swift_allocObject();
  *(v32 + 16) = v31;
  *(v32 + 24) = KeyPath;
  sub_22877494C(v11, v32 + v29);
  v33 = swift_allocObject();
  *(v33 + 16) = sub_228774B40;
  *(v33 + 24) = v32;
  sub_228773CC0(0, &qword_280DE1B20, sub_22870CAC4, MEMORY[0x277CBCD88]);
  sub_2287747E4();
  swift_retain_n();
  swift_retain_n();

  v34 = v57;
  sub_2287CAF60();

  sub_2287745F0(v71, v11);
  v35 = swift_allocObject();
  sub_22877494C(v11, v35 + ((v28 + 16) & ~v28));
  sub_228774694(0);
  sub_2287693A8(&qword_280DE1C98, sub_228774750, MEMORY[0x277CBCB60]);
  v36 = v58;
  v37 = v62;
  sub_2287CAF70();

  (*(v63 + 8))(v34, v37);
  sub_22870D3A8(0, &qword_280DE35A0, MEMORY[0x277D84948]);
  sub_228774918();
  v38 = v59;
  v39 = v64;
  sub_2287CB010();
  (*(v65 + 8))(v36, v39);
  sub_228774DF8();
  v40 = v60;
  v41 = sub_2287CAF40();
  v65 = v41;
  (*(v61 + 8))(v38, v40);
  v42 = v56[24];
  v43 = v56[25];
  __swift_project_boxed_opaque_existential_1(v56 + 21, v42);
  v74 = v41;
  sub_22870CA30(0);
  v45 = *(v44 + 36);
  v46 = *(v43 + 40);
  v47 = MEMORY[0x277CBCD88];
  sub_228774608(0, &qword_280DE0248, v67, MEMORY[0x277CBCD88]);
  v49 = v48;
  v50 = sub_2287746C8();
  v74 = v46(&v74, v71 + v45, v49, v50, v42, v43);
  swift_allocObject();
  swift_weakInit();
  sub_2287691F4(0);
  sub_228774608(0, &qword_280DE0200, sub_2287691F4, v47);
  sub_22876928C();
  v51 = v68;
  sub_2287CAFE0();

  sub_228774EC0();
  v52 = v69;
  v53 = sub_2287CAF40();

  (*(v70 + 8))(v51, v52);
  return v53;
}

uint64_t sub_2287614B0(uint64_t (**a1)(void))
{
  sub_228771788(0);
  v4 = *(v3 - 8);
  v68 = v3;
  v69 = v4;
  MEMORY[0x28223BE20](v3);
  v67 = v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22872C6C0(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v8;
  v10 = v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228771974(0);
  v12 = *(v11 - 8);
  v62 = v11;
  v63 = v12;
  MEMORY[0x28223BE20](v11);
  v57 = v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228771A9C(0);
  v15 = *(v14 - 8);
  v64 = v14;
  v65 = v15;
  MEMORY[0x28223BE20](v14);
  v58 = v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228775DB8(0, &qword_280DE03C0, sub_228771A9C, sub_228771B48, MEMORY[0x277CBCD00]);
  v18 = *(v17 - 8);
  v60 = v17;
  v61 = v18;
  MEMORY[0x28223BE20](v17);
  v59 = v55 - v19;
  v20 = v1[24];
  v21 = v1[25];
  v22 = v1;
  __swift_project_boxed_opaque_existential_1(v1 + 21, v20);
  v66 = (*(v21 + 16))(v20, v21);
  v23 = a1;
  v24 = (*a1)();
  v55[2] = v24;
  sub_22870CCFC(0);
  v71 = v25;
  v72 = sub_2287693A8(qword_280DE2DB8, sub_22870CCFC, &protocol conformance descriptor for AnyPipelineProvider<A>);
  KeyPath = swift_getKeyPath();
  v73 = v24;
  v27 = swift_allocObject();
  v56 = v22;
  swift_weakInit();
  v70 = a1;
  sub_228771770(a1, v10);
  v28 = *(v7 + 80);
  v29 = (v28 + 32) & ~v28;
  v55[1] = v9;
  v30 = swift_allocObject();
  *(v30 + 16) = v27;
  *(v30 + 24) = KeyPath;
  sub_228771B7C(v10, v30 + v29);
  v31 = swift_allocObject();
  swift_weakInit();
  sub_228771770(v23, v10);
  v32 = swift_allocObject();
  *(v32 + 16) = v31;
  *(v32 + 24) = KeyPath;
  sub_228771B7C(v10, v32 + v29);
  v33 = swift_allocObject();
  *(v33 + 16) = sub_228771BC0;
  *(v33 + 24) = v32;
  sub_228771A08(0);
  sub_2287693A8(&qword_280DE1B38, sub_228771A08, MEMORY[0x277CBCD90]);
  swift_retain_n();
  swift_retain_n();

  v34 = v57;
  sub_2287CAF60();

  sub_228771770(v70, v10);
  v35 = swift_allocObject();
  sub_228771B7C(v10, v35 + ((v28 + 16) & ~v28));
  sub_228771868(0);
  sub_2287693A8(qword_280DE1CA8, sub_228771974, MEMORY[0x277CBCB60]);
  v36 = v58;
  v37 = v62;
  sub_2287CAF70();

  (*(v63 + 8))(v34, v37);
  sub_22870D3A8(0, &qword_280DE35A0, MEMORY[0x277D84948]);
  sub_228771B48();
  v38 = v59;
  v39 = v64;
  sub_2287CB010();
  (*(v65 + 8))(v36, v39);
  sub_228771C40();
  v40 = v60;
  v41 = sub_2287CAF40();
  v65 = v41;
  (*(v61 + 8))(v38, v40);
  v42 = v56[24];
  v43 = v56[25];
  __swift_project_boxed_opaque_existential_1(v56 + 21, v42);
  v73 = v41;
  sub_22870C47C(0);
  v45 = *(v44 + 36);
  v46 = *(v43 + 40);
  v47 = MEMORY[0x277CBCD88];
  sub_228774608(0, &qword_280DE0258, sub_228771868, MEMORY[0x277CBCD88]);
  v49 = v48;
  v50 = sub_2287718EC();
  v73 = v46(&v73, v70 + v45, v49, v50, v42, v43);
  swift_allocObject();
  swift_weakInit();
  sub_228770F78(0);
  sub_228774608(0, &qword_280DE0218, sub_228770F78, v47);
  sub_2287710CC();
  v51 = v67;
  sub_2287CAFE0();

  sub_2287693A8(&qword_280DE04A8, sub_228771788, MEMORY[0x277CBCCE0]);
  v52 = v68;
  v53 = sub_2287CAF40();

  (*(v69 + 8))(v51, v52);
  return v53;
}

uint64_t sub_228761D78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, uint64_t)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  a3(a1, a6);
  v10 = a4(0);
  v11 = *(v10 + 28);
  v12 = a5(0);
  sub_2287010E4(a2 + v11, a6 + *(v12 + 28));
  v13 = *(v10 + 32);
  v14 = *(v12 + 32);
  v15 = sub_2287C9ED0();
  (*(*(v15 - 8) + 16))(a6 + v14, a2 + v13, v15);
  return sub_2287C9800();
}

uint64_t sub_228761E44(uint64_t a1, uint64_t a2)
{
  v55 = a1;
  sub_228774608(0, &qword_280DE0088, sub_2287691F4, MEMORY[0x277CBCE88]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v47[-v5];
  v7 = sub_2287C9B60();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v47[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22870CAC4(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v47[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_2287CA970();
  v56 = *(v14 - 8);
  v57 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v47[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v19 = _HKLogPersistedSignposts();

    v54 = v16;
    sub_2287CA940();
    sub_228774694(0);
    v21 = v55;
    v22 = (v55 + *(v20 + 28));
    v23 = v22[3];
    v24 = v22[4];
    __swift_project_boxed_opaque_existential_1(v22, v23);
    v25 = sub_228747F20(v23, v24);
    v52 = v26;
    v53 = v25;
    v51 = v27;
    v58 = 0x6F746172656E6547;
    v59 = 0xEB00000000203A72;
    sub_228774F50(v21, v13);
    v28 = sub_2287CB250();
    MEMORY[0x22AABE980](v28);

    v49 = v59;
    v50 = v58;
    v48 = sub_2287CB610();
    (*(v8 + 104))(v10, *MEMORY[0x277D11E60], v7);
    v29 = sub_2287C9B50();
    (*(v8 + 8))(v10, v7);
    sub_22870558C(0);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_2287CDC90;
    __swift_project_boxed_opaque_existential_1(v22, v22[3]);
    v31 = sub_2287C9A70();
    v33 = v32;
    v34 = MEMORY[0x277D837D0];
    *(v30 + 56) = MEMORY[0x277D837D0];
    v35 = sub_2287043F8();
    *(v30 + 64) = v35;
    *(v30 + 32) = v31;
    *(v30 + 40) = v33;
    sub_228774F50(v21, v13);
    v36 = sub_2287CB250();
    *(v30 + 96) = v34;
    *(v30 + 104) = v35;
    *(v30 + 72) = v36;
    *(v30 + 80) = v37;
    v38 = sub_2287C9E50();
    v39 = sub_2287C9C50();
    v41 = v40;

    *(v30 + 136) = v34;
    *(v30 + 144) = v35;
    *(v30 + 112) = v39;
    *(v30 + 120) = v41;
    sub_2287CA920(v48, &dword_2286FF000, v29, "[GeneratorPipelineManager] %{public}@, %{public}@, %{public}@", 61, 2, v30);

    v43 = MEMORY[0x22AABF5F0](v42);
    v44 = v54;
    v45 = sub_2287628A4(v21, v18, v53, v52, v51, v54, v50, v49);
    objc_autoreleasePoolPop(v43);

    (*(v56 + 8))(v44, v57);
  }

  else
  {
    sub_2287691F4(0);
    sub_22870D3A8(0, &qword_280DE35A0, MEMORY[0x277D84948]);
    sub_2287CADC0();
    sub_228770B4C();
    v45 = sub_2287CAF40();
    (*(v4 + 8))(v6, v3);
  }

  return v45;
}

uint64_t sub_228762360(uint64_t a1, uint64_t a2)
{
  v55 = a1;
  sub_228774608(0, &qword_280DE0090, sub_228770F78, MEMORY[0x277CBCE88]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v47[-v5];
  v7 = sub_2287C9B60();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v47[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2287715EC(0, &qword_280DE2E58, &qword_280DE1A10, MEMORY[0x277D120A0], type metadata accessor for AnyGenerator);
  MEMORY[0x28223BE20](v11);
  v13 = &v47[-v12];
  v14 = sub_2287CA970();
  v56 = *(v14 - 8);
  v57 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v47[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v19 = _HKLogPersistedSignposts();

    v54 = v16;
    sub_2287CA940();
    sub_228771868(0);
    v21 = v55;
    v22 = (v55 + *(v20 + 28));
    v23 = v22[3];
    v24 = v22[4];
    __swift_project_boxed_opaque_existential_1(v22, v23);
    v25 = sub_228747F20(v23, v24);
    v52 = v26;
    v53 = v25;
    v51 = v27;
    v58 = 0x6F746172656E6547;
    v59 = 0xEB00000000203A72;
    sub_228771D08(v21, v13);
    v28 = sub_2287CB250();
    MEMORY[0x22AABE980](v28);

    v49 = v59;
    v50 = v58;
    v48 = sub_2287CB610();
    (*(v8 + 104))(v10, *MEMORY[0x277D11E60], v7);
    v29 = sub_2287C9B50();
    (*(v8 + 8))(v10, v7);
    sub_22870558C(0);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_2287CDC90;
    __swift_project_boxed_opaque_existential_1(v22, v22[3]);
    v31 = sub_2287C9A70();
    v33 = v32;
    v34 = MEMORY[0x277D837D0];
    *(v30 + 56) = MEMORY[0x277D837D0];
    v35 = sub_2287043F8();
    *(v30 + 64) = v35;
    *(v30 + 32) = v31;
    *(v30 + 40) = v33;
    sub_228771D08(v21, v13);
    v36 = sub_2287CB250();
    *(v30 + 96) = v34;
    *(v30 + 104) = v35;
    *(v30 + 72) = v36;
    *(v30 + 80) = v37;
    v38 = sub_2287C9E50();
    v39 = sub_2287C9C50();
    v41 = v40;

    *(v30 + 136) = v34;
    *(v30 + 144) = v35;
    *(v30 + 112) = v39;
    *(v30 + 120) = v41;
    sub_2287CA920(v48, &dword_2286FF000, v29, "[GeneratorPipelineManager] %{public}@, %{public}@, %{public}@", 61, 2, v30);

    v43 = MEMORY[0x22AABF5F0](v42);
    v44 = v54;
    v45 = sub_228763294(v21, v18, v53, v52, v51, v54, v50, v49);
    objc_autoreleasePoolPop(v43);

    (*(v56 + 8))(v44, v57);
  }

  else
  {
    sub_228770F78(0);
    sub_22870D3A8(0, &qword_280DE35A0, MEMORY[0x277D84948]);
    sub_2287CADC0();
    sub_2287713B0();
    v45 = sub_2287CAF40();
    (*(v4 + 8))(v6, v3);
  }

  return v45;
}

uint64_t sub_2287628A4(uint64_t (**a1)(uint64_t), void *a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v88 = a7;
  v84 = a8;
  v85 = a3;
  v82 = a6;
  v87 = a5;
  v86 = a4;
  sub_228771D98(0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v83 = v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v81 = v66 - v13;
  sub_228774694(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  sub_228774F68(0);
  v71 = v17;
  v72 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v67 = v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228774FFC(0);
  v73 = v19;
  v76 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v69 = v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228775DB8(0, &qword_280DE0390, sub_228774FFC, sub_2287750A8, MEMORY[0x277CBCD00]);
  v77 = *(v21 - 8);
  v78 = v21;
  v22 = MEMORY[0x28223BE20](v21);
  v75 = v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v68 = v66 - v24;
  sub_2287750DC(0);
  v26 = *(v25 - 8);
  v79 = v25;
  v80 = v26;
  v27 = MEMORY[0x28223BE20](v25);
  v74 = v66 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = (*a1)(v27);
  v66[1] = v29;
  sub_22870CE64(0);
  v90 = v30;
  v91 = sub_2287693A8(&qword_280DE2DA8, sub_22870CE64, &protocol conformance descriptor for AnyPipelineProvider<A>);
  KeyPath = swift_getKeyPath();
  v92 = v29;
  v32 = swift_allocObject();
  v70 = a2;
  swift_weakInit();
  v89 = a1;
  sub_228775220(a1, v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = *(v15 + 80);
  v34 = (v33 + 32) & ~v33;
  v66[0] = v16;
  v35 = swift_allocObject();
  *(v35 + 16) = v32;
  *(v35 + 24) = KeyPath;
  v36 = KeyPath;
  sub_228775238(v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v35 + v34);
  v37 = swift_allocObject();
  swift_weakInit();
  sub_228775220(a1, v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = swift_allocObject();
  *(v38 + 16) = v37;
  *(v38 + 24) = v36;
  v39 = v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228775238(v39, v38 + v34);
  v40 = swift_allocObject();
  *(v40 + 16) = sub_2287754A8;
  *(v40 + 24) = v38;
  sub_228773CC0(0, &qword_280DE1AA0, sub_22870CB48, MEMORY[0x277CBCD88]);
  sub_228773AB8();
  swift_retain_n();
  swift_retain_n();

  v41 = v67;
  sub_2287CAF60();

  sub_228775220(v89, v39);
  v42 = swift_allocObject();
  sub_228775238(v39, v42 + ((v33 + 16) & ~v33));
  sub_2287691F4(0);
  sub_2287693A8(&qword_280DE1C78, sub_228774F68, MEMORY[0x277CBCB60]);
  v43 = v69;
  v44 = v71;
  sub_2287CAF70();

  (*(v72 + 8))(v41, v44);
  sub_22870D3A8(0, &qword_280DE35A0, MEMORY[0x277D84948]);
  sub_2287750A8();
  v45 = v68;
  v46 = v73;
  sub_2287CB010();
  (*(v76 + 8))(v43, v46);
  v47 = _HKLogPersistedSignposts();
  v48 = sub_2287CA970();
  v49 = *(v48 - 8);
  v50 = v81;
  (*(v49 + 16))(v81, v82, v48);
  (*(v49 + 56))(v50, 0, 1, v48);
  v52 = v77;
  v51 = v78;
  (*(v77 + 16))(v75, v45, v78);
  sub_228770280(v50, v83, sub_228771D98);
  sub_228775184();

  v53 = v74;
  sub_2287CAAE0();
  sub_2287762E4(v50, sub_228771D98);
  (*(v52 + 8))(v45, v51);
  sub_2287693A8(&qword_280DE0720, sub_2287750DC, MEMORY[0x277D12220]);
  v54 = v79;
  v55 = sub_2287CAF40();
  (*(v80 + 8))(v53, v54);
  v56 = v70[24];
  v57 = v70[25];
  __swift_project_boxed_opaque_existential_1(v70 + 21, v56);
  v92 = v55;
  sub_22870CAC4(0);
  v59 = *(v58 + 44);
  v60 = *(v57 + 48);
  sub_228774608(0, &qword_280DE0200, sub_2287691F4, MEMORY[0x277CBCD88]);
  v62 = v61;
  v63 = sub_22876928C();
  v64 = v60(&v92, v89 + v59, v62, v63, v56, v57);

  return v64;
}

uint64_t sub_228763294(uint64_t (**a1)(uint64_t), void *a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v93 = a7;
  v89 = a8;
  v90 = a3;
  v87 = a6;
  v92 = a5;
  v91 = a4;
  sub_228771D98(0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v88 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v86 = &v67 - v13;
  sub_228771868(0);
  v71 = *(v14 - 8);
  v15 = *(v71 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  sub_228771DCC(0);
  v76 = v16;
  v77 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v72 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228771E90(0);
  v78 = v18;
  v81 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v74 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228775DB8(0, &qword_280DE03A0, sub_228771E90, sub_228771F3C, MEMORY[0x277CBCD00]);
  v82 = *(v20 - 8);
  v83 = v20;
  v21 = MEMORY[0x28223BE20](v20);
  v80 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v73 = &v67 - v23;
  sub_228771F70(0);
  v25 = *(v24 - 8);
  v84 = v24;
  v85 = v25;
  v26 = MEMORY[0x28223BE20](v24);
  v79 = &v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = (*a1)(v26);
  v70 = v28;
  sub_22870CCFC(0);
  v94 = v29;
  v95 = sub_2287693A8(qword_280DE2DB8, sub_22870CCFC, &protocol conformance descriptor for AnyPipelineProvider<A>);
  KeyPath = swift_getKeyPath();
  v96 = v28;
  v31 = swift_allocObject();
  v75 = a2;
  swift_weakInit();
  v68 = a1;
  sub_2287720B4(a1, &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = *(v71 + 80);
  v33 = (v32 + 32) & ~v32;
  v69 = v15;
  v34 = swift_allocObject();
  *(v34 + 16) = v31;
  *(v34 + 24) = KeyPath;
  v35 = KeyPath;
  sub_2287720CC(&v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v34 + v33);
  v36 = swift_allocObject();
  swift_weakInit();
  v67 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287720B4(a1, v67);
  v37 = swift_allocObject();
  *(v37 + 16) = v36;
  *(v37 + 24) = v35;
  sub_2287720CC(&v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v37 + v33);
  v38 = swift_allocObject();
  *(v38 + 16) = sub_2287722DC;
  *(v38 + 24) = v37;
  v39 = MEMORY[0x277CBCD88];
  sub_2287715EC(0, &qword_280DE1AB0, &qword_280DE1A10, MEMORY[0x277D120A0], MEMORY[0x277CBCD88]);
  sub_228771664(&qword_280DE1AB8, &qword_280DE1AB0, v39, MEMORY[0x277CBCD90]);
  swift_retain_n();
  swift_retain_n();

  v40 = v72;
  sub_2287CAF60();

  v41 = v68;
  v42 = v67;
  sub_2287720B4(v68, v67);
  v43 = swift_allocObject();
  sub_2287720CC(v42, v43 + ((v32 + 16) & ~v32));
  sub_228770F78(0);
  sub_2287693A8(&qword_280DE1C88, sub_228771DCC, MEMORY[0x277CBCB60]);
  v44 = v74;
  v45 = v76;
  sub_2287CAF70();

  (*(v77 + 8))(v40, v45);
  sub_22870D3A8(0, &qword_280DE35A0, MEMORY[0x277D84948]);
  sub_228771F3C();
  v46 = v73;
  v47 = v78;
  sub_2287CB010();
  (*(v81 + 8))(v44, v47);
  v48 = _HKLogPersistedSignposts();
  v49 = sub_2287CA970();
  v50 = *(v49 - 8);
  v51 = v86;
  (*(v50 + 16))(v86, v87, v49);
  (*(v50 + 56))(v51, 0, 1, v49);
  v53 = v82;
  v52 = v83;
  (*(v82 + 16))(v80, v46, v83);
  sub_228770280(v51, v88, sub_228771D98);
  sub_228772018();

  v54 = v79;
  sub_2287CAAE0();
  sub_2287762E4(v51, sub_228771D98);
  (*(v53 + 8))(v46, v52);
  sub_2287693A8(&qword_280DE0730, sub_228771F70, MEMORY[0x277D12220]);
  v55 = v84;
  v56 = sub_2287CAF40();
  (*(v85 + 8))(v54, v55);
  v57 = v75[24];
  v58 = v75[25];
  __swift_project_boxed_opaque_existential_1(v75 + 21, v57);
  v96 = v56;
  sub_2287715EC(0, &qword_280DE2E58, &qword_280DE1A10, MEMORY[0x277D120A0], type metadata accessor for AnyGenerator);
  v60 = *(v59 + 44);
  v61 = *(v58 + 48);
  sub_228774608(0, &qword_280DE0218, sub_228770F78, MEMORY[0x277CBCD88]);
  v63 = v62;
  v64 = sub_2287710CC();
  v65 = v61(&v96, v41 + v60, v63, v64, v57, v58);

  return v65;
}

uint64_t sub_228763CF0(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v129 = a8;
  v148 = a7;
  v143 = a5;
  v144 = a6;
  v151 = a1;
  v152 = a4;
  sub_22873BE44(0);
  v141 = *(v14 - 8);
  v142 = v14;
  MEMORY[0x28223BE20](v14);
  v140 = &v115 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228773B40(0);
  v137 = v16;
  v135 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v134 = &v115 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22873C014(0);
  v139 = v18;
  v138 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v136 = &v115 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22873C170(0);
  v121 = v20;
  v119 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v117 = &v115 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228773BD4(0);
  v122 = v22;
  v120 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v118 = &v115 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228769228(0, &qword_280DE00C8, MEMORY[0x277D121A8], MEMORY[0x277CBCE78]);
  v131 = v24;
  v130 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = &v115 - v25;
  sub_228774608(0, &qword_280DDFE38, MEMORY[0x277D121A8], MEMORY[0x277CBCF38]);
  v133 = v27;
  v132 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v29 = &v115 - v28;
  sub_22873C350(0);
  v146 = *(v30 - 8);
  v147 = v30;
  MEMORY[0x28223BE20](v30);
  v145 = &v115 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228773CC0(0, &qword_280DE0078, sub_22870CB48, MEMORY[0x277CBCE88]);
  v33 = v32;
  v34 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v36 = &v115 - v35;
  sub_22873AB44(0);
  v38 = v37;
  v123 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v40 = &v115 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228773D34(0);
  v125 = v41;
  v124 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v43 = &v115 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22873ADD8(0);
  v128 = v44;
  v127 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v126 = &v115 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v149 = a3;
  v150 = Strong;
  v47 = sub_2287CB590();
  v48 = sub_2287C9C30();

  if (!v48)
  {

LABEL_9:
    sub_22870CB48(0);
    sub_2287CADC0();
    sub_228773E20();
    v62 = sub_2287CAF40();
LABEL_10:
    (*(v34 + 8))(v36, v33);
    return v62;
  }

  v116 = v48;
  v49 = [v48 type];
  if (v49 != 1)
  {
    if (v49 == 2)
    {
      v148 = a9;
      __swift_project_boxed_opaque_existential_1(v152, v152[3]);
      v64 = sub_2287C9A70();
      v66 = v65;
      v67 = sub_2287CA540();
      v68 = sub_2287CA550();
      *&v153 = v143;
      v69 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v70 = swift_allocObject();
      v70[2] = v69;
      v70[3] = v64;
      v70[4] = v66;
      v70[5] = v67;
      v70[6] = v68;
      v71 = MEMORY[0x277CBCD88];
      sub_2287738D0(0, &qword_280DE0148, &qword_280DDFEB0, MEMORY[0x277D83D88], MEMORY[0x277CBCD88]);
      sub_22873AC94(0);
      v72 = MEMORY[0x277CBCD90];
      sub_2287737D8(&unk_280DE0150, &qword_280DE0148, v71, MEMORY[0x277CBCD90]);
      sub_2287CAF70();

      v73 = sub_2287693A8(&qword_280DE05C0, sub_22873AB44, MEMORY[0x277CBCC08]);
      v74 = sub_2287693A8(&qword_280DE1A98, sub_22873AC94, v72);
      MEMORY[0x22AABE600](v38, v73, v74);
      (*(v123 + 8))(v40, v38);
      sub_2287693A8(&qword_280DE06B0, sub_228773D34, MEMORY[0x277CBCBB0]);
      v75 = v125;
      v76 = sub_2287CAF40();
      (*(v124 + 8))(v43, v75);
      *&v153 = v76;
      v77 = sub_2287CAE40();

      *&v153 = v77;
      sub_228774608(0, &qword_280DE01C0, sub_22870CB48, MEMORY[0x277CBCD88]);
      v79 = v78;
      v80 = sub_22873AE8C();
      v81 = v126;
      sub_2287CAE10();

      *&v153 = v79;
      *(&v153 + 1) = v80;
      swift_getOpaqueTypeConformance2();
      v82 = v128;
      v62 = sub_2287CAF40();

      (*(v127 + 8))(v81, v82);
      return v62;
    }

    if (v49 != 3)
    {
      sub_22870CB48(0);
      sub_2287CADC0();
      sub_228773E20();
      v62 = sub_2287CAF40();

      goto LABEL_10;
    }
  }

  v50 = sub_2287CA540();
  v51 = sub_2287CA550();
  v129 = v50;
  v151 = v51;
  if (v144)
  {
    *&v153 = v144;
    sub_2287CA570();
    swift_retain_n();
    sub_2287CADB0();
    sub_22870D3A8(0, &qword_280DE35A0, MEMORY[0x277D84948]);
    v52 = v131;
    sub_2287CAD80();
    (*(v130 + 8))(v26, v52);
    v53 = v152;
    __swift_project_boxed_opaque_existential_1(v152, v152[3]);
    sub_2287C9A70();
    sub_22873C4AC();
    v54 = v133;
    v55 = sub_2287CAE70();

    (*(v132 + 8))(v29, v54);
    *&v153 = v55;
    sub_22873AC94(0);
    v57 = v56;
    v58 = sub_2287693A8(&qword_280DE1A98, sub_22873AC94, MEMORY[0x277CBCD90]);
    v59 = v145;
    sub_2287CAE10();

    *&v153 = v57;
    *(&v153 + 1) = v58;
    swift_getOpaqueTypeConformance2();
    v60 = v147;
    v61 = sub_2287CAE40();
    (*(v146 + 8))(v59, v60);
    *&v153 = v61;
    sub_228773CC0(0, &qword_280DE1AA0, sub_22870CB48, MEMORY[0x277CBCD88]);
    sub_228773AB8();
    v62 = sub_2287CAF40();
  }

  else
  {
    v144 = a11;
    v83 = v51;
    __swift_project_boxed_opaque_existential_1(v152, v152[3]);
    v84 = sub_2287C9A70();
    v86 = v85;
    *&v153 = v143;
    v87 = MEMORY[0x277CBCD88];
    sub_2287738D0(0, &qword_280DE0148, &qword_280DDFEB0, MEMORY[0x277D83D88], MEMORY[0x277CBCD88]);
    v88 = MEMORY[0x277CBCD90];
    sub_2287737D8(&unk_280DE0150, &qword_280DE0148, v87, MEMORY[0x277CBCD90]);
    v89 = v117;
    sub_2287CAFA0();
    v90 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v91 = swift_allocObject();
    v91[2] = v90;
    v91[3] = v84;
    v91[4] = v86;
    v91[5] = v50;
    v91[6] = v83;

    sub_2287CACC0();
    sub_228773770(0, &qword_280DE19D0, &qword_280DE1988, 0x277CCD928, MEMORY[0x277D83940]);
    sub_22873AC94(0);
    v93 = v92;
    sub_2287693A8(&qword_280DE0518, sub_22873C170, MEMORY[0x277CBCC58]);
    v94 = sub_2287693A8(&qword_280DE1A98, sub_22873AC94, v88);
    v95 = v118;
    v96 = v121;
    v53 = v152;
    sub_2287CAFE0();

    (*(v119 + 8))(v89, v96);
    sub_2287693A8(&qword_280DE0428, sub_228773BD4, MEMORY[0x277CBCCE0]);
    v97 = v122;
    v98 = sub_2287CAF40();
    (*(v120 + 8))(v95, v97);
    *&v153 = v98;
    v99 = v145;
    sub_2287CAE10();

    *&v153 = v93;
    *(&v153 + 1) = v94;
    swift_getOpaqueTypeConformance2();
    v100 = v147;
    v101 = sub_2287CAE40();
    (*(v146 + 8))(v99, v100);
    *&v153 = v101;
    sub_228773CC0(0, &qword_280DE1AA0, sub_22870CB48, MEMORY[0x277CBCD88]);
    sub_228773AB8();
    v62 = sub_2287CAF40();
  }

  if (v148)
  {
    v154 = v148;
    sub_2287010E4(v53, &v153);
    v102 = swift_allocObject();
    sub_228706AD4(&v153, v102 + 16);
    v103 = v149;
    *(v102 + 56) = v149;
    v104 = MEMORY[0x277CBCD88];
    sub_228773CC0(0, &qword_280DE1AF0, sub_2287691F4, MEMORY[0x277CBCD88]);
    sub_22873BFE0();

    v105 = v103;
    v106 = v134;
    sub_2287CAFB0();

    sub_22870CB48(0);
    sub_2287693A8(&qword_280DE0508, sub_228773B40, MEMORY[0x277CBCC90]);
    v107 = v136;
    v108 = v137;
    sub_2287CAF70();
    (*(v135 + 8))(v106, v108);
    sub_2287693A8(&qword_280DE05A0, sub_22873C014, MEMORY[0x277CBCC08]);
    v109 = v139;
    v110 = sub_2287CAE30();

    (*(v138 + 8))(v107, v109);
    *&v153 = v110;
    sub_228773CC0(0, &qword_280DE1AA0, sub_22870CB48, v104);
    sub_228773AB8();
    v111 = sub_2287CAF40();

    *&v153 = v111;
    v154 = v62;
    v112 = v140;
    sub_2287CAF00();
    sub_2287693A8(&qword_280DE0678, sub_22873BE44, MEMORY[0x277D10DD0]);
    v113 = v142;
    v114 = sub_2287CAF40();

    (*(v141 + 8))(v112, v113);
    return v114;
  }

  else
  {
  }

  return v62;
}

uint64_t sub_2287651E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = a5;
  v22 = a6;
  v9 = sub_2287CB080();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2287CB0E0();
  v13 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v6 + 160);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = a1;
  v17[4] = a2;
  aBlock[4] = v21;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228712EA8;
  aBlock[3] = v22;
  v18 = _Block_copy(aBlock);

  sub_2287CB0A0();
  v25 = MEMORY[0x277D84F90];
  sub_2287693A8(&qword_280DE3A28, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_2287723C0(0);
  sub_2287693A8(&qword_280DE3A08, sub_2287723C0, MEMORY[0x277D83970]);
  sub_2287CB880();
  MEMORY[0x22AABED90](0, v15, v12, v18);
  _Block_release(v18);
  (*(v10 + 8))(v12, v9);
  (*(v13 + 8))(v15, v24);
}

uint64_t sub_2287654DC(uint64_t a1, void (*a2)(uint64_t *__return_ptr, __int128 *))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = MEMORY[0x22AABF5F0]();
    sub_2287CAD30();
    v5[0] = v5[1];
    a2(&v6, v5);

    sub_2287CAD20();

    objc_autoreleasePoolPop(v4);
  }

  return result;
}

uint64_t sub_2287655B8()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 64));
  __swift_destroy_boxed_opaque_existential_0((v0 + 104));

  __swift_destroy_boxed_opaque_existential_0((v0 + 168));
  __swift_destroy_boxed_opaque_existential_0((v0 + 208));

  return v0;
}

uint64_t sub_228765638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_228774694(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_228775220(a4, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v10 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = a3;
    sub_228775238(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);

    sub_2287651E0(sub_228775878, v11, &unk_283BC2368, &unk_283BC2598, sub_2287763C8, &block_descriptor_217);
  }

  return result;
}

uint64_t sub_2287657AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22872C820(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2287745F0(a4, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v10 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = a3;
    sub_22877494C(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);

    sub_2287651E0(sub_228775BD8, v11, &unk_283BC2368, &unk_283BC2598, sub_2287763C8, &block_descriptor_217);
  }

  return result;
}

uint64_t sub_228765920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_228771868(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2287720B4(a4, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v10 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = a3;
    sub_2287720CC(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);

    sub_2287651E0(sub_2287725EC, v11, &unk_283BC1E18, &unk_283BC2048, sub_228772388, &block_descriptor_5);
  }

  return result;
}

uint64_t sub_228765A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22872C6C0(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_228771770(a4, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v10 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = a3;
    sub_228771B7C(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);

    sub_2287651E0(sub_2287727D8, v11, &unk_283BC1E18, &unk_283BC2048, sub_228772388, &block_descriptor_5);
  }

  return result;
}

uint64_t sub_228765C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_228774694(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_228775220(a3, &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    v9 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = a2;
    sub_228775238(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);

    sub_2287651E0(sub_228775618, v10, &unk_283BC2368, &unk_283BC2598, sub_2287763C8, &block_descriptor_217);
  }

  return result;
}

uint64_t sub_228765D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22872C820(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2287745F0(a3, &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    v9 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = a2;
    sub_22877494C(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);

    sub_2287651E0(sub_228775940, v10, &unk_283BC2368, &unk_283BC2598, sub_2287763C8, &block_descriptor_217);
  }

  return result;
}

uint64_t sub_228765EF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_228771868(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2287720B4(a3, &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    v9 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = a2;
    sub_2287720CC(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);

    sub_2287651E0(sub_228772334, v10, &unk_283BC1E18, &unk_283BC2048, sub_228772388, &block_descriptor_5);
  }

  return result;
}

uint64_t sub_228766064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22872C6C0(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_228771770(a3, &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    v9 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = a2;
    sub_228771B7C(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);

    sub_2287651E0(sub_2287726B4, v10, &unk_283BC1E18, &unk_283BC2048, sub_228772388, &block_descriptor_5);
  }

  return result;
}

uint64_t sub_228766228(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4)
{
  v7 = sub_2287CAA50();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CA9D0();
  v11 = sub_2287CAA40();
  v12 = sub_2287CB610();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136446210;
    sub_228774608(0, a2, a3, MEMORY[0x277CBCD88]);
    v20 = v15;
    sub_228771438(0, a4, a2, a3);
    v16 = sub_2287CB250();
    v18 = sub_2287031D8(v16, v17, &v21);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_2286FF000, v11, v12, "[%{public}s]: subscription to begin generation received", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x22AABFD90](v14, -1, -1);
    MEMORY[0x22AABFD90](v13, -1, -1);
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_228766414(void *a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4)
{
  v8 = sub_2287CAA50();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CA9D0();
  v12 = a1;
  v13 = sub_2287CAA40();
  v14 = sub_2287CB610();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v28 = v8;
    v16 = v15;
    v17 = swift_slowAlloc();
    v30 = v17;
    *v16 = 136446466;
    sub_228774608(0, a2, a3, MEMORY[0x277CBCD88]);
    v29 = v18;
    sub_228771438(0, a4, a2, a3);
    v19 = sub_2287CB250();
    v21 = sub_2287031D8(v19, v20, &v30);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2082;
    v29 = a1;
    v22 = a1;
    sub_22877149C(0);
    v23 = sub_2287CB250();
    v25 = sub_2287031D8(v23, v24, &v30);

    *(v16 + 14) = v25;
    _os_log_impl(&dword_2286FF000, v13, v14, "[%{public}s]: Sending completion event <%{public}s> for generation sent", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v17, -1, -1);
    MEMORY[0x22AABFD90](v16, -1, -1);

    return (*(v9 + 8))(v11, v28);
  }

  else
  {

    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_2287666D0(unint64_t *a1, uint64_t (*a2)(uint64_t), unint64_t *a3)
{
  v6 = sub_2287CAA50();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CA9D0();
  v10 = sub_2287CAA40();
  v11 = sub_2287CB610();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136446210;
    sub_228774608(0, a1, a2, MEMORY[0x277CBCD88]);
    v19 = v14;
    sub_228771438(0, a3, a1, a2);
    v15 = sub_2287CB250();
    v17 = sub_2287031D8(v15, v16, &v20);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_2286FF000, v10, v11, "[%{public}s]: cancellation received for generation", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x22AABFD90](v13, -1, -1);
    MEMORY[0x22AABFD90](v12, -1, -1);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2287668BC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v28 = a2;
  sub_2287706B8(0);
  v6 = *(v5 - 8);
  v29 = v5;
  v30 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228769228(0, &qword_280DE00C8, MEMORY[0x277D121A8], MEMORY[0x277CBCE78]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  sub_228774608(0, &qword_280DDFE38, MEMORY[0x277D121A8], MEMORY[0x277CBCF38]);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = &v27 - v17;
  v38 = a3;
  sub_2287CA570();

  sub_2287CADB0();
  sub_22870D3A8(0, &qword_280DE35A0, MEMORY[0x277D84948]);
  sub_2287CAD80();
  (*(v11 + 8))(v13, v10);
  sub_22873C4AC();
  v19 = sub_2287CAF40();
  (*(v16 + 8))(v18, v15);
  v20 = *a1;
  __swift_project_boxed_opaque_existential_1(a1 + 1, a1[4]);
  v21 = sub_2287C9A70();
  v32 = v19;
  v33 = v21;
  v34 = v22;
  v35 = a1;
  v36 = v28;
  v37 = a3;
  v23 = sub_228757440(sub_22877074C, v31, v20);

  v38 = v23;
  sub_228774608(0, &qword_280DE0200, sub_2287691F4, MEMORY[0x277CBCD88]);
  sub_22877078C(0);
  sub_22876928C();
  sub_2287693A8(&qword_280DDFFC0, sub_22877078C, MEMORY[0x277D83970]);
  sub_2287CAC40();
  sub_2287693A8(&qword_280DE0318, sub_2287706B8, MEMORY[0x277CBCD48]);
  v24 = v29;
  v25 = sub_2287CAF40();

  (*(v30 + 8))(v8, v24);
  return v25;
}

uint64_t sub_228766CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v59 = a7;
  v60 = a6;
  v75 = a2;
  v76 = a5;
  v73 = a3;
  v74 = a4;
  sub_228774608(0, &qword_280DE0088, sub_2287691F4, MEMORY[0x277CBCE88]);
  v61 = *(v8 - 8);
  v62 = v8;
  MEMORY[0x28223BE20](v8);
  v58 = v57 - v9;
  sub_228770814(0);
  v64 = *(v10 - 8);
  v65 = v10;
  MEMORY[0x28223BE20](v10);
  v63 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22877097C(0);
  v67 = *(v12 - 8);
  v68 = v12;
  MEMORY[0x28223BE20](v12);
  v66 = v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228770A6C(0);
  v70 = *(v14 - 8);
  v71 = v14;
  MEMORY[0x28223BE20](v14);
  v69 = v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287691F4(0);
  v17 = v16;
  v77 = *(v16 - 8);
  v18 = *(v77 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228770AA0(0);
  v21 = v20;
  v72 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2287CA3C0();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = v57 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v27, a1, v24);
  v28 = (*(v25 + 88))(v27, v24);
  if (v28 == *MEMORY[0x277D12100])
  {
    (*(v25 + 96))(v27, v24);
    v78 = v75;
    v29 = MEMORY[0x277CBCD88];
    sub_228774608(0, &qword_280DE0268, MEMORY[0x277D121A8], MEMORY[0x277CBCD88]);
    sub_22873DAE4();
    v30 = sub_2287CAEC0();

    v78 = v30;
    sub_228770280(v76, v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), sub_2287691F4);
    v31 = (*(v77 + 80) + 16) & ~*(v77 + 80);
    v32 = swift_allocObject();
    sub_228770390(v19, v32 + v31, sub_2287691F4);
    sub_228774608(0, &qword_280DE1AD0, sub_2287708C0, v29);
    sub_2287708F4();
    sub_2287CAF70();

    sub_2287693A8(&qword_280DE05E0, sub_228770AA0, MEMORY[0x277CBCC08]);
    v33 = sub_2287CAF40();
    (*(v72 + 8))(v23, v21);
    return v33;
  }

  v34 = v75;
  v57[0] = v21;
  v35 = v76;
  v57[1] = v17;
  if (v28 == *MEMORY[0x277D120D8])
  {
    (*(v25 + 96))(v27, v24);
    v78 = v34;
    v36 = MEMORY[0x277CBCD88];
    sub_228774608(0, &qword_280DE0268, MEMORY[0x277D121A8], MEMORY[0x277CBCD88]);
    sub_22873DAE4();
    v37 = sub_2287CAEC0();

    v78 = v37;
    sub_228770280(v35, v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), sub_2287691F4);
    v38 = (*(v77 + 80) + 16) & ~*(v77 + 80);
    v39 = swift_allocObject();
    sub_228770390(v19, v39 + v38, sub_2287691F4);
    sub_228774608(0, &qword_280DE1AD0, sub_2287708C0, v36);
    sub_2287708F4();
    sub_2287CAF70();

    sub_2287693A8(&qword_280DE05E0, sub_228770AA0, MEMORY[0x277CBCC08]);
    v40 = v57[0];
    v33 = sub_2287CAF40();
    (*(v72 + 8))(v23, v40);
    return v33;
  }

  v41 = v77;
  if (v28 == *MEMORY[0x277D120F8])
  {
    (*(v25 + 96))(v27, v24);
    v78 = v34;
    sub_228774608(0, &qword_280DE0268, MEMORY[0x277D121A8], MEMORY[0x277CBCD88]);
    sub_22873DAE4();
    v42 = sub_2287CAE80();

    v78 = v42;
    sub_228770280(v35, v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), sub_2287691F4);
    v43 = (*(v41 + 80) + 16) & ~*(v41 + 80);
    v44 = swift_allocObject();
    sub_228770390(v19, v44 + v43, sub_2287691F4);
    v45 = v69;
    sub_2287CAF70();

    sub_2287693A8(&qword_280DE0658, sub_228770A6C, MEMORY[0x277CBCC08]);
    v46 = v71;
    v33 = sub_2287CAF40();
    v47 = v70;
LABEL_9:
    v49 = *(v47 + 8);
    v50 = v45;
LABEL_10:
    v49(v50, v46);
    return v33;
  }

  if (v28 == *MEMORY[0x277D120F0])
  {
    (*(v25 + 96))(v27, v24);
    v78 = v34;
    sub_228774608(0, &qword_280DE0268, MEMORY[0x277D121A8], MEMORY[0x277CBCD88]);
    sub_22873DAE4();
    v48 = sub_2287CAEA0();

    v78 = v48;
    v45 = v66;
    sub_2287CAF50();

    sub_2287693A8(&qword_280DE07D0, sub_22877097C, MEMORY[0x277CBCB10]);
    v46 = v68;
    v33 = sub_2287CAF40();
    v47 = v67;
    goto LABEL_9;
  }

  if (v28 == *MEMORY[0x277D120E8])
  {
    (*(v25 + 96))(v27, v24);
    v78 = v34;
    v52 = MEMORY[0x277CBCD88];
    sub_228774608(0, &qword_280DE0268, MEMORY[0x277D121A8], MEMORY[0x277CBCD88]);
    sub_22873DAE4();
    v53 = sub_2287CAEC0();

    v78 = v53;
    sub_228774608(0, &qword_280DE1AD0, sub_2287708C0, v52);
    sub_2287708F4();
    v54 = v63;
    sub_2287CAF50();

    sub_2287693A8(&qword_280DE07C0, sub_228770814, MEMORY[0x277CBCB10]);
    v46 = v65;
    v33 = sub_2287CAF40();
    v49 = *(v64 + 8);
    v50 = v54;
    goto LABEL_10;
  }

  if (v28 == *MEMORY[0x277D120E0])
  {
    return sub_2287679D4(v59, v76, v73, v74);
  }

  sub_22870D3A8(0, &qword_280DE35A0, MEMORY[0x277D84948]);
  v55 = v58;
  sub_2287CADC0();
  sub_228770B4C();
  v56 = v62;
  v33 = sub_2287CAF40();
  (*(v61 + 8))(v55, v56);
  (*(v25 + 8))(v27, v24);
  return v33;
}