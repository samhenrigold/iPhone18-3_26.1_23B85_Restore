uint64_t NavigationManager.__allocating_init(usesNavigationStack:path:)(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = swift_allocObject();
  NavigationManager.init(usesNavigationStack:path:)(v3, a2);
  return v4;
}

uint64_t NavigationManager.init(usesNavigationStack:path:)(char a1, uint64_t a2)
{
  v3 = v2;
  v5 = MEMORY[0x277D84F90];
  *(v3 + 24) = MEMORY[0x277D84F90];
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0;
  *(v3 + 88) = sub_21BBB6718(v5);
  *(v3 + 96) = 0;
  *(v3 + 104) = 0;
  *(v3 + 112) = 0;
  result = sub_21BE25F4C();
  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = a2 + 32;
    v10 = MEMORY[0x277D84F90];
    v11 = a2 + 32;
    do
    {
      if (v8 >= *(a2 + 16))
      {
        __break(1u);
        goto LABEL_22;
      }

      sub_21BC23F14(v11, &v33);
      v12 = *(&v34 + 1);
      v13 = v35;
      __swift_project_boxed_opaque_existential_1Tm(&v33, *(&v34 + 1));
      (*(v13 + 16))(&v29, v12, v13);
      if (v29 == 3)
      {
        v29 = v33;
        v30 = v34;
        v31 = v35;
        v32 = v36;
        result = swift_isUniquelyReferenced_nonNull_native();
        v37 = v10;
        if ((result & 1) == 0)
        {
          result = sub_21BC59A1C(0, *(v10 + 16) + 1, 1);
          v10 = v37;
        }

        v15 = *(v10 + 16);
        v14 = *(v10 + 24);
        if (v15 >= v14 >> 1)
        {
          result = sub_21BC59A1C((v14 > 1), v15 + 1, 1);
          v10 = v37;
        }

        *(v10 + 16) = v15 + 1;
        v16 = v10 + 56 * v15;
        v17 = v29;
        v18 = v30;
        v19 = v31;
        *(v16 + 80) = v32;
        *(v16 + 48) = v18;
        *(v16 + 64) = v19;
        *(v16 + 32) = v17;
      }

      else
      {
        result = sub_21BC17C80(&v33);
      }

      ++v8;
      v11 += 56;
    }

    while (v7 != v8);

    v20 = 0;
    *(v3 + 24) = v10;
    while (v20 < *(a2 + 16))
    {
      sub_21BC23F14(v9, &v33);
      v21 = *(&v34 + 1);
      v22 = v35;
      __swift_project_boxed_opaque_existential_1Tm(&v33, *(&v34 + 1));
      (*(v22 + 16))(&v29, v21, v22);
      if (v29 != 3)
      {

        v26 = v34;
        v27 = v33;
        v24 = *(&v35 + 1);
        v25 = v35;
        v23 = v36;
        goto LABEL_20;
      }

      ++v20;
      result = sub_21BC17C80(&v33);
      v9 += 56;
      if (v7 == v20)
      {
        goto LABEL_18;
      }
    }

LABEL_22:
    __break(1u);
  }

  else
  {

    *(v3 + 24) = v5;
LABEL_18:

    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0u;
    v27 = 0u;
LABEL_20:
    sub_21BB3A4CC(v3 + 32, &qword_27CDB7278, &qword_21BE3A250);
    *(v3 + 32) = v27;
    *(v3 + 48) = v26;
    *(v3 + 64) = v25;
    *(v3 + 72) = v24;
    *(v3 + 80) = v23;
    *(v3 + 16) = a1 & 1;
    return v3;
  }

  return result;
}

char *NavigationManager.deinit()
{

  sub_21BB3A4CC(v0 + 32, &qword_27CDB7278, &qword_21BE3A250);

  sub_21BB5AEC4(*(v0 + 96), *(v0 + 104));

  v1 = OBJC_IVAR____TtC14FamilyCircleUI17NavigationManager___observationRegistrar;
  v2 = sub_21BE25F5C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t NavigationManager.__deallocating_deinit()
{

  sub_21BB3A4CC(v0 + 32, &qword_27CDB7278, &qword_21BE3A250);

  sub_21BB5AEC4(*(v0 + 96), *(v0 + 104));

  v1 = OBJC_IVAR____TtC14FamilyCircleUI17NavigationManager___observationRegistrar;
  v2 = sub_21BE25F5C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_21BC59524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_21BE2970C();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_21BC59624, 0, 0);
}

uint64_t sub_21BC59624()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_21BE2971C();
  v5 = sub_21BC5A2B0(&qword_27CDB7F08, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_21BE29A0C();
  sub_21BC5A2B0(&qword_27CDB7F10, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_21BE2972C();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_21BC597B4;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_21BC597B4()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21BC59970, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_21BC59970()
{

  v1 = *(v0 + 8);

  return v1();
}

char *sub_21BC599DC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21BDFB09C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21BC599FC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21BDFB1CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21BC59A1C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21BDFB3CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t type metadata accessor for NavigationManager(uint64_t a1)
{
  result = qword_280BD72C8;
  if (!qword_280BD72C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21BC59A88(uint64_t a1)
{
  v3 = *(v1 + 24);
  v11 = *(v1 + 16);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v7 = *(v1 + 72);
  v8 = *(v1 + 80);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21BBB7EB8;

  return sub_21BC56874(a1, v11, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_21BC59B84(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_21BBA6A64;

  return sub_21BC57CA4(a1, v4, v5, v6, v7, v8, v9, v10);
}

char *sub_21BC59C74(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21BDFB2C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21BC59C94(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21BDFB1A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21BC59CB4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21BDFB628(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21BC59CD4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21BDFB75C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21BC59CF4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21BDFB87C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21BC59D14(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21BDFB9C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21BC59D34(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21BDFB9EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21BC59D54(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21BDFBA14(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21BC59D74(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21BDFBB18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21BC59D94(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21BDFBB40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21BC59DB4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21BDFBC50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21BC59DD4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21BDFBE54(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21BC59DF4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21BDFBF74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21BC59E14(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21BDFC080(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_21BC59E34(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  result = *(a3 + 16);
  v6 = (a3 + 16 * result + 24);
  do
  {
    v7 = result;
    if (!result)
    {
      break;
    }

    v8 = *v6;
    v10[0] = *(v6 - 1);
    v10[1] = v8;

    v9 = a1(v10);

    if (v3)
    {
      break;
    }

    v6 -= 2;
    result = v7 - 1;
  }

  while ((v9 & 1) == 0);
  return result;
}

uint64_t sub_21BC59EE0(uint64_t a1)
{
  result = sub_21BE25F5C();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_21BC5A084(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_21BE2995C() & 1;
  }
}

_BYTE *sub_21BC5A0F4(_BYTE *result)
{
  if ((*result & 1) == 0)
  {
    return sub_21BC58A94(*(v1 + 56), *(v1 + 32));
  }

  return result;
}

uint64_t objectdestroy_46Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

_BYTE *sub_21BC5A19C(_BYTE *result)
{
  if ((*result & 1) == 0)
  {
    v2 = 0;
    memset(v1, 0, sizeof(v1));
    return sub_21BC55008(v1);
  }

  return result;
}

uint64_t sub_21BC5A1E8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21BBB7EB8;

  return sub_21BC575BC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_21BC5A2B0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_62Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BC5A368()
{
  *(*(v0 + 16) + 112) = *(v0 + 24);
}

uint64_t sub_21BC5A430(uint64_t a1, uint64_t a2)
{
  sub_21BBA3854(a1, v9, &qword_27CDB7278, &qword_21BE3A250);
  sub_21BBA3854(a2, &v11, &qword_27CDB7278, &qword_21BE3A250);
  if (!v10)
  {
    if (!*(&v12 + 1))
    {
      sub_21BB3A4CC(v9, &qword_27CDB7278, &qword_21BE3A250);
      v4 = 0;
      return v4 & 1;
    }

LABEL_7:
    sub_21BB3A4CC(v9, &qword_27CDB7F18, &qword_21BE3A3F8);
    v4 = 1;
    return v4 & 1;
  }

  sub_21BBA3854(v9, v8, &qword_27CDB7278, &qword_21BE3A250);
  if (!*(&v12 + 1))
  {
    sub_21BC17C80(v8);
    goto LABEL_7;
  }

  v6[0] = v11;
  v6[1] = v12;
  v6[2] = v13;
  v7 = v14;
  v3 = sub_21BD2D924(v6, v8);
  sub_21BC17C80(v6);
  sub_21BC17C80(v8);
  sub_21BB3A4CC(v9, &qword_27CDB7278, &qword_21BE3A250);
  v4 = v3 ^ 1;
  return v4 & 1;
}

uint64_t sub_21BC5A578(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7278, &qword_21BE3A250);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BC5A60C(uint64_t a1, unsigned __int8 a2)
{
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BC5A714(uint64_t a1, unsigned __int8 a2)
{
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BC5A824(uint64_t a1, unsigned __int8 a2)
{
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BC5A934(uint64_t a1, unsigned __int8 a2)
{
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

unint64_t sub_21BC5AA84(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x696D694C6D6D6F63;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0x6E6F697461636F6CLL;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x69636966656E6562;
      break;
    case 7:
      result = 0x6C5064756F6C4369;
      break;
    case 8:
      result = 0x6D657449656D6F68;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0x736143656C707061;
      break;
    case 11:
      result = 0x49746361746E6F63;
      break;
    case 12:
    case 15:
      result = 0xD000000000000012;
      break;
    case 13:
      result = 0xD000000000000015;
      break;
    case 14:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21BC5AC7C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_21BC5AA84(*a1);
  v5 = v4;
  if (v3 == sub_21BC5AA84(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21BE2995C();
  }

  return v8 & 1;
}

uint64_t sub_21BC5AD04()
{
  v1 = *v0;
  sub_21BE29ACC();
  sub_21BC5AA84(v1);
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BC5AD68(uint64_t a1)
{
  sub_21BC5AA84(*v1);
  sub_21BE28ABC();
}

uint64_t sub_21BC5ADBC(uint64_t a1)
{
  v2 = *v1;
  sub_21BE29ACC();
  sub_21BC5AA84(v2);
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

unint64_t sub_21BC5AE1C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21BC5C438(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_21BC5AE4C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_21BC5AA84(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_21BC5AF00(uint64_t a1)
{
  sub_21BE28ABC();
}

unint64_t sub_21BC5B044@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21BC5C4D8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_21BC5B074(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x756F59726F66;
  v5 = 0x800000021BE542B0;
  v6 = 0xD000000000000014;
  if (v2 != 5)
  {
    v6 = 0x4D65726F6C707865;
    v5 = 0xEB0000000065726FLL;
  }

  v7 = 0xEA00000000007075;
  v8 = 0x746553646C696863;
  if (v2 != 3)
  {
    v8 = 0x7250797465666173;
    v7 = 0xED00007963617669;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xED0000736E6F6974;
  v10 = 0x7069726373627573;
  if (v2 != 1)
  {
    v10 = 0x646C696843726F66;
    v9 = 0xEB000000006E6572;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_21BC5B1EC()
{
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BC5B2D4(uint64_t a1)
{
  sub_21BE28ABC();
}

uint64_t sub_21BC5B3A8(uint64_t a1)
{
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

unint64_t sub_21BC5B48C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21BC5C5E0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_21BC5B4BC(unint64_t *a1@<X8>)
{
  v2 = 0xEC000000746C7564;
  v3 = 0x41726F46796C6E6FLL;
  v4 = 0xEF6E6572646C6968;
  v5 = 0x43726F46796C6E6FLL;
  if (*v1 != 2)
  {
    v5 = 0x47726F46796C6E6FLL;
    v4 = 0xEF6E616964726175;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000010;
    v2 = 0x800000021BE54660;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t FamilyDestinations.ChecklistDestination.linkType.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = sub_21BE26A4C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BB3A35C(v1, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB59E8, &unk_21BE3A400);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7F20, &unk_21BE46130);
  if (swift_dynamicCast())
  {
    sub_21BB3D104(v25, v28);
    v8 = v29;
    v7 = v30;
    __swift_project_boxed_opaque_existential_1Tm(v28, v29);
    (*(*(v7 + 8) + 16))(v8);
    return __swift_destroy_boxed_opaque_existential_0Tm(v28);
  }

  else
  {
    v26 = 0;
    memset(v25, 0, sizeof(v25));
    sub_21BC5BE3C(v25);
    sub_21BE261BC();
    sub_21BC5BEA4(v1, v28);
    v10 = sub_21BE26A2C();
    v11 = sub_21BE28FDC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v24 = a1;
      v13 = v12;
      v14 = swift_slowAlloc();
      v27[0] = v14;
      *v13 = 136315138;
      v15 = v29;
      v16 = v30;
      __swift_project_boxed_opaque_existential_1Tm(v28, v29);
      v17 = (*(v16 + 32))(v15, v16);
      v18 = sub_21BC5AA84(v17);
      v20 = v19;
      sub_21BC5BEDC(v28);
      v21 = sub_21BB3D81C(v18, v20, v27);

      *(v13 + 4) = v21;
      _os_log_impl(&dword_21BB35000, v10, v11, "Unexpected link type request for %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      MEMORY[0x21CF05C50](v14, -1, -1);
      v22 = v13;
      a1 = v24;
      MEMORY[0x21CF05C50](v22, -1, -1);

      result = (*(v4 + 8))(v6, v3);
    }

    else
    {

      (*(v4 + 8))(v6, v3);
      result = sub_21BC5BEDC(v28);
    }

    *a1 = 0;
  }

  return result;
}

uint64_t FamilyDestinations.ChecklistDestination.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = v1[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1Tm(v2, v3);
  sub_21BBE7CF8(v3, v4);
  sub_21BE28ABC();

  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1Tm(v2, v5);
  v7 = (*(v6 + 32))(v5, v6);
  sub_21BC5AA84(v7);
  sub_21BE28ABC();
}

uint64_t FamilyDestinations.ChecklistDestination.hashValue.getter()
{
  v1 = v0;
  sub_21BE29ACC();
  v2 = v0[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v2);
  sub_21BBE7CF8(v2, v3);
  sub_21BE28ABC();

  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v4);
  v6 = (*(v5 + 32))(v4, v5);
  sub_21BC5AA84(v6);
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BC5BA00()
{
  v1 = v0;
  sub_21BE29ACC();
  v2 = v0[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v2);
  sub_21BBE7CF8(v2, v3);
  sub_21BE28ABC();

  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v4);
  v6 = (*(v5 + 32))(v4, v5);
  sub_21BC5AA84(v6);
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BC5BAE0(uint64_t a1)
{
  v2 = v1;
  v3 = v1[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1Tm(v2, v3);
  sub_21BBE7CF8(v3, v4);
  sub_21BE28ABC();

  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1Tm(v2, v5);
  v7 = (*(v6 + 32))(v5, v6);
  sub_21BC5AA84(v7);
  sub_21BE28ABC();
}

uint64_t sub_21BC5BBBC(uint64_t a1)
{
  v2 = v1;
  sub_21BE29ACC();
  v3 = v1[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1Tm(v2, v3);
  sub_21BBE7CF8(v3, v4);
  sub_21BE28ABC();

  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1Tm(v2, v5);
  v7 = (*(v6 + 32))(v5, v6);
  sub_21BC5AA84(v7);
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t _s14FamilyCircleUI0A12DestinationsO20ChecklistDestinationV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v4);
  v6 = sub_21BBE7CF8(v4, v5);
  v8 = v7;
  v9 = a2[3];
  v10 = a2[4];
  __swift_project_boxed_opaque_existential_1Tm(a2, v9);
  if (v6 == sub_21BBE7CF8(v9, v10) && v8 == v11)
  {
  }

  else
  {
    v13 = sub_21BE2995C();

    v14 = 0;
    if ((v13 & 1) == 0)
    {
      return v14 & 1;
    }
  }

  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v15);
  v17 = (*(v16 + 32))(v15, v16);
  v18 = a2[3];
  v19 = a2[4];
  __swift_project_boxed_opaque_existential_1Tm(a2, v18);
  v20 = (*(v19 + 32))(v18, v19);
  v21 = sub_21BC5AA84(v17);
  v23 = v22;
  if (v21 == sub_21BC5AA84(v20) && v23 == v24)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_21BE2995C();
  }

  return v14 & 1;
}

uint64_t sub_21BC5BE3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7F28, &qword_21BE3A410);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21BC5BF0C(uint64_t a1)
{
  result = sub_21BC5BF34();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21BC5BF34()
{
  result = qword_27CDB7F30;
  if (!qword_27CDB7F30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FamilyDestinations.ChecklistDestination, &type metadata for FamilyDestinations.ChecklistDestination, v0, v1);
    atomic_store(result, &qword_27CDB7F30);
  }

  return result;
}

unint64_t sub_21BC5BF8C()
{
  result = qword_27CDB7F38;
  if (!qword_27CDB7F38)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FamilyDestinations.ChecklistDestination, &type metadata for FamilyDestinations.ChecklistDestination, v0, v1);
    atomic_store(result, &qword_27CDB7F38);
  }

  return result;
}

uint64_t sub_21BC5BFE0(uint64_t a1, int a2)
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

uint64_t sub_21BC5C028(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for ChecklistItemType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ChecklistItemType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ChecklistCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ChecklistCategory(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21BC5C324()
{
  result = qword_280BD72F0;
  if (!qword_280BD72F0)
  {
    result = swift_getWitnessTable(byte_21BE3A5C4, &type metadata for ChecklistCategory, v0, v1);
    atomic_store(result, &qword_280BD72F0);
  }

  return result;
}

unint64_t sub_21BC5C37C()
{
  result = qword_27CDB7F40;
  if (!qword_27CDB7F40)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7F48, qword_21BE3A618);
    result = swift_getWitnessTable(MEMORY[0x277D83988], v3, v0, v1);
    atomic_store(result, &qword_27CDB7F40);
  }

  return result;
}

unint64_t sub_21BC5C3E4()
{
  result = qword_280BD72E0;
  if (!qword_280BD72E0)
  {
    result = swift_getWitnessTable(byte_21BE3A6D0, &type metadata for ChecklistItemType, v0, v1);
    atomic_store(result, &qword_280BD72E0);
  }

  return result;
}

unint64_t sub_21BC5C438(uint64_t a1, uint64_t a2)
{
  v2 = sub_21BE2980C();

  if (v2 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_21BC5C484()
{
  result = qword_27CDB7F50;
  if (!qword_27CDB7F50)
  {
    result = swift_getWitnessTable(aI_3, &type metadata for ChecklistItemType, v0, v1);
    atomic_store(result, &qword_27CDB7F50);
  }

  return result;
}

unint64_t sub_21BC5C4D8(uint64_t a1, uint64_t a2)
{
  v2 = sub_21BE2980C();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_21BC5C524()
{
  result = qword_27CDB7F58;
  if (!qword_27CDB7F58)
  {
    result = swift_getWitnessTable(aU, &type metadata for ChecklistCategory, v0, v1);
    atomic_store(result, &qword_27CDB7F58);
  }

  return result;
}

unint64_t sub_21BC5C58C()
{
  result = qword_280BD76F8;
  if (!qword_280BD76F8)
  {
    result = swift_getWitnessTable(aI_4, &type metadata for ChecklistRole, v0, v1);
    atomic_store(result, &qword_280BD76F8);
  }

  return result;
}

unint64_t sub_21BC5C5E0(uint64_t a1, uint64_t a2)
{
  v2 = sub_21BE2980C();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21BC5C680(uint64_t a1)
{
  sub_21BB3A35C(a1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7280, &unk_21BE36B80);
  if (!swift_dynamicCast())
  {
    v12 = 0u;
    memset(v13, 0, 25);
    v11 = 0u;
    goto LABEL_7;
  }

  if (!v12)
  {
LABEL_7:
    v8 = v11;
    v9 = v12;
    *v10 = v13[0];
    *&v10[9] = *(v13 + 9);
    sub_21BB3A4CC(&v8, &qword_27CDB7F70, &qword_21BE3A8F0);
    v6 = 0;
    return v6 & 1;
  }

  *&v10[9] = *(v13 + 9);
  v8 = v11;
  v9 = v12;
  *v10 = v13[0];
  v2 = sub_21BC5C62C(*(v1 + 56));
  v4 = v3;
  if (v2 == sub_21BC5C62C(BYTE8(v13[1])) && v4 == v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_21BE2995C();
  }

  sub_21BB3A4CC(&v8, &qword_27CDB7F70, &qword_21BE3A8F0);

  return v6 & 1;
}

uint64_t sub_21BC5C7D0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7F80, &unk_21BE3A900);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v21[-v4 - 8];
  v6 = type metadata accessor for FamilyDestinations.MemberPendingDetails(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_21BB3A35C(a1, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7280, &unk_21BE36B80);
  v10 = swift_dynamicCast();
  v11 = *(v7 + 56);
  if (v10)
  {
    v11(v5, 0, 1, v6);
    sub_21BC5D574(v5, v9);
    v12 = *v1 == *v9 && v1[1] == v9[1];
    if (v12 || (sub_21BE2995C()) && (sub_21BE25B4C())
    {
      v13 = *(v6 + 24);
      v14 = *(v1 + v13);
      v15 = *(v1 + v13 + 8);
      v16 = (v9 + v13);
      if (v14 == *v16 && v15 == v16[1])
      {
        v18 = 1;
      }

      else
      {
        v18 = sub_21BE2995C();
      }
    }

    else
    {
      v18 = 0;
    }

    sub_21BC22AF8(v9);
  }

  else
  {
    v11(v5, 1, 1, v6);
    sub_21BB3A4CC(v5, &qword_27CDB7F80, &unk_21BE3A900);
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_21BC5C9EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21BB3A35C(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7280, &unk_21BE36B80);
  if (swift_dynamicCast() && v8)
  {
    if (v7 == a2 && v8 == a3)
    {

      v5 = 1;
    }

    else
    {
      v5 = sub_21BE2995C();
    }
  }

  else
  {

    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_21BC5CAC0(uint64_t a1)
{
  sub_21BB3A35C(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7280, &unk_21BE36B80);
  if (swift_dynamicCast())
  {
    v8[0] = v4;
    v8[1] = v5;
    v9 = v6;
    v2 = _s14FamilyCircleUI0A12DestinationsO20ChecklistDestinationV2eeoiySbAE_AEtFZ_0(v1, v8);
    sub_21BC5BEDC(v8);
  }

  else
  {
    v6 = 0;
    v4 = 0u;
    v5 = 0u;
    sub_21BB3A4CC(&v4, &qword_27CDB7F78, &qword_21BE3A8F8);
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_21BC5CB78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21BB3A35C(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7280, &unk_21BE36B80);
  if (swift_dynamicCast())
  {
    if (v8 == a2 && v9 == a3)
    {

      v6 = 1;
    }

    else
    {
      v6 = sub_21BE2995C();
    }
  }

  else
  {

    v6 = 0;
  }

  return v6 & 1;
}

uint64_t LinkDestination.isEqual(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21BE2946C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v18[-v8 - 8];
  v10 = *(a2 - 8);
  MEMORY[0x28223BE20](v7);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_21BB3A35C(a1, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7280, &unk_21BE36B80);
  v13 = swift_dynamicCast();
  v14 = *(v10 + 56);
  if (v13)
  {
    v14(v9, 0, 1, a2);
    (*(v10 + 32))(v12, v9, a2);
    v15 = sub_21BE2899C();
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

uint64_t sub_21BC5CE7C(uint64_t a1, uint64_t a2)
{
  sub_21BB3A35C(a1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7280, &unk_21BE36B80);
  return swift_dynamicCast();
}

BOOL static DestinationType.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 3)
  {
    return v3 == 3;
  }

  if (v3 == 3)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t DestinationType.hash(into:)()
{
  v1 = *v0;
  if (v1 == 3)
  {
    v1 = 1;
  }

  else
  {
    MEMORY[0x21CF04C80](0);
  }

  return MEMORY[0x21CF04C80](v1);
}

uint64_t DestinationType.hashValue.getter()
{
  v1 = *v0;
  sub_21BE29ACC();
  if (v1 == 3)
  {
    v1 = 1;
  }

  else
  {
    MEMORY[0x21CF04C80](0);
  }

  MEMORY[0x21CF04C80](v1);
  return sub_21BE29B0C();
}

uint64_t sub_21BC5D01C()
{
  v1 = *v0;
  sub_21BE29ACC();
  if (v1 == 3)
  {
    v1 = 1;
  }

  else
  {
    MEMORY[0x21CF04C80](0);
  }

  MEMORY[0x21CF04C80](v1);
  return sub_21BE29B0C();
}

uint64_t sub_21BC5D080()
{
  v1 = *v0;
  if (v1 == 3)
  {
    v1 = 1;
  }

  else
  {
    MEMORY[0x21CF04C80](0);
  }

  return MEMORY[0x21CF04C80](v1);
}

uint64_t sub_21BC5D0C8(uint64_t a1)
{
  v2 = *v1;
  sub_21BE29ACC();
  if (v2 == 3)
  {
    v2 = 1;
  }

  else
  {
    MEMORY[0x21CF04C80](0);
  }

  MEMORY[0x21CF04C80](v2);
  return sub_21BE29B0C();
}

uint64_t FamilySheetBehavior.hashValue.getter()
{
  v1 = *v0;
  sub_21BE29ACC();
  MEMORY[0x21CF04C80](v1);
  return sub_21BE29B0C();
}

uint64_t LinkDestination.linkTypeIdentifier.getter(uint64_t a1)
{
  swift_getDynamicType();
  swift_getMetatypeMetadata();
  return sub_21BE28A7C();
}

unint64_t sub_21BC5D204()
{
  result = qword_27CDB7F60;
  if (!qword_27CDB7F60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DestinationType, &type metadata for DestinationType, v0, v1);
    atomic_store(result, &qword_27CDB7F60);
  }

  return result;
}

unint64_t sub_21BC5D25C()
{
  result = qword_27CDB7F68;
  if (!qword_27CDB7F68)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FamilySheetBehavior, &type metadata for FamilySheetBehavior, v0, v1);
    atomic_store(result, &qword_27CDB7F68);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DestinationType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_20;
  }

  v2 = a2 + 3;
  if (a2 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 3;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 3;
  v9 = v7 - 3;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DestinationType(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFD)
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_21BC5D42C(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_21BC5D440(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

uint64_t sub_21BC5D478(uint64_t a1, uint64_t a2)
{
  sub_21BB3A35C(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7280, &unk_21BE36B80);
  if (swift_dynamicCast() && v9)
  {
    v3 = sub_21BC5C62C(a2);
    v5 = v4;
    if (v3 == sub_21BC5C62C(v11) && v5 == v6)
    {
      v7 = 1;
    }

    else
    {
      v7 = sub_21BE2995C();
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_21BC5D574(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FamilyDestinations.MemberPendingDetails(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BC5D5E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_21BC5D630(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_21BC5D6B0()
{
  type metadata accessor for SubscriptionFamilyCache();
  v0 = swift_allocObject();
  return sub_21BE20608(v0);
}

uint64_t sub_21BC5D6E8@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25 - v4;
  v6 = *(v1 + 8);
  if (*(v6 + 16) && (v7 = sub_21BBB3108(0xD000000000000011, 0x800000021BE55910), (v8 & 1) != 0))
  {
    v9 = v7;
    v10 = *(v6 + 56);
    v11 = sub_21BE25B9C();
    v12 = *(v11 - 8);
    v13 = v12;
    v14 = *(v12 + 72);
    v15 = v10 + v14 * v9;
    v16 = *(v12 + 16);
    v16(v5, v15, v11);
    v17 = *(v13 + 56);
    v17(v5, 0, 1, v11);
    sub_21BB3A4CC(v5, &unk_27CDB57F0, &qword_21BE328A0);
    if (*(v6 + 16) && (v18 = sub_21BBB3108(0xD000000000000011, 0x800000021BE55910), (v19 & 1) != 0))
    {
      v16(a1, *(v6 + 56) + v18 * v14, v11);
      v20 = a1;
      v21 = 0;
    }

    else
    {
      v20 = a1;
      v21 = 1;
    }

    return v17(v20, v21, 1, v11);
  }

  else
  {
    v22 = sub_21BE25B9C();
    v23 = *(*(v22 - 8) + 56);
    v23(v5, 1, 1, v22);
    sub_21BB3A4CC(v5, &unk_27CDB57F0, &qword_21BE328A0);
    return (v23)(a1, 1, 1, v22);
  }
}

uint64_t sub_21BC5D940()
{
  if (!*v0 || (v1 = [*v0 subLabel]) == 0)
  {
    type metadata accessor for SubscriptionFamilyCache();
    sub_21BC5E1D0(&qword_27CDB7FA0, type metadata accessor for SubscriptionFamilyCache, protocol conformance descriptor for SimpleFamilyServerCache);
    sub_21BE26EAC();
    sub_21BE1EF28(&v17);
    v15 = v17;
    v16 = v18;
    v11 = sub_21BE20000(&v15);

    if (v11)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v17 = 0;
        v18 = 0;
        sub_21BE289FC();

        if (v18)
        {
          return v17;
        }
      }

      else
      {
      }
    }

    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v13 = [objc_opt_self() bundleForClass_];
    v3 = sub_21BE2599C();

    return v3;
  }

  v2 = v1;
  v3 = sub_21BE28A0C();
  type metadata accessor for SubscriptionFamilyCache();
  sub_21BC5E1D0(&qword_27CDB7FA0, type metadata accessor for SubscriptionFamilyCache, protocol conformance descriptor for SimpleFamilyServerCache);
  v4 = sub_21BE26EAC();
  sub_21BE1EF28(&v17);
  v6 = v17;
  v5 = v18;
  v7 = sub_21BE1F55C();
  if (v7)
  {
    v8 = v7;
    v9 = *(v4 + 24);
    v15 = *(v4 + 16);
    v16 = v9;

    MEMORY[0x21CF03CA0](46, 0xE100000000000000);
    MEMORY[0x21CF03CA0](v6, v5);
    v10 = sub_21BE289CC();

    [v8 setValue:v2 forKey:v10];
  }

  else
  {
  }

  return v3;
}

uint64_t sub_21BC5DC18@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v33 = sub_21BE27A2C();
  v31 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v30 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for StaticSelectableCellTemplate(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7F88, &qword_21BE3AA38);
  MEMORY[0x28223BE20](v28);
  v29 = &v28 - v6;
  sub_21BC5D6E8(&v5[v3[5]]);
  swift_unknownObjectWeakLoadStrong();
  v7 = sub_21BC5D940();
  v9 = v8;
  v10 = *(v1 + 24);
  v11 = *(v1 + 32);
  v37 = *(v1 + 16);
  v38 = v10;
  v39 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
  sub_21BE2856C();
  v12 = v34;
  v13 = v35;
  v14 = v36;
  if (qword_280BD76F0 != -1)
  {
    swift_once();
  }

  *v5 = 0xD000000000000011;
  *(v5 + 1) = 0x800000021BE55910;
  v5[v3[6]] = 1;
  swift_unknownObjectWeakInit();

  swift_unknownObjectRelease();
  v15 = &v5[v3[8]];
  *v15 = v7;
  v15[1] = v9;
  v16 = &v5[v3[9]];
  *v16 = 0;
  v16[8] = 1;
  v17 = &v5[v3[10]];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = &v5[v3[11]];
  *v18 = v12;
  *(v18 + 1) = v13;
  v18[16] = v14;
  v19 = &v5[v3[12]];
  *v19 = 0;
  *(v19 + 1) = 0;
  *&v5[v3[13]] = 0;
  v5[v3[14]] = 6;
  v20 = &v5[v3[15]];
  type metadata accessor for ServicesStore(0);
  sub_21BC5E1D0(&qword_27CDB5750, type metadata accessor for ServicesStore, protocol conformance descriptor for AsyncStore<A>);
  *v20 = sub_21BE270CC();
  v20[1] = v21;
  v5[v3[16]] = 0;
  v22 = &v5[v3[17]];
  LOBYTE(v34) = 0;
  sub_21BE283EC();
  v23 = v38;
  *v22 = v37;
  *(v22 + 1) = v23;
  sub_21BC46FB4();
  v24 = [swift_getObjCClassFromMetadata() defaultCenter];
  if (qword_27CDB4EE0 != -1)
  {
    swift_once();
  }

  sub_21BE2935C();

  sub_21BC5E1D0(&qword_27CDB7F90, type metadata accessor for StaticSelectableCellTemplate, aA7F);
  v25 = v29;
  sub_21BE2809C();
  sub_21BC5E088(v5);
  v26 = v30;
  sub_21BE27A0C();
  sub_21BC5E0E4();
  sub_21BE2805C();
  (*(v31 + 8))(v26, v33);
  return sub_21BB3A4CC(v25, &qword_27CDB7F88, &qword_21BE3AA38);
}

uint64_t sub_21BC5E088(uint64_t a1)
{
  v2 = type metadata accessor for StaticSelectableCellTemplate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21BC5E0E4()
{
  result = qword_27CDB7F98;
  if (!qword_27CDB7F98)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7F88, &qword_21BE3AA38);
    v4[0] = sub_21BC5E1D0(&qword_27CDB7F90, type metadata accessor for StaticSelectableCellTemplate, aA7F);
    v4[1] = sub_21BC5E1D0(&qword_27CDB6790, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB7F98);
  }

  return result;
}

uint64_t sub_21BC5E1D0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

Swift::Void __swiftcall UIViewController.fa_pushViaSettingsNavigation(_:)(UIViewController *a1)
{
  v3 = sub_21BE2694C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21BE288BC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v1 traitCollection];
  sub_21BE292BC();

  v12 = a1;
  sub_21BE2695C();
  sub_21BC5E3C0();
  sub_21BE2889C();
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
}

unint64_t sub_21BC5E3C0()
{
  result = qword_27CDB7FA8;
  if (!qword_27CDB7FA8)
  {
    v3 = sub_21BE2694C();
    result = swift_getWitnessTable(MEMORY[0x277D402F0], v3, v0, v1);
    atomic_store(result, &qword_27CDB7FA8);
  }

  return result;
}

uint64_t sub_21BC5E418(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_21BE2694C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21BE288BC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a3;
  v14 = a1;
  v15 = [v14 traitCollection];
  sub_21BE292BC();

  v16 = v13;
  sub_21BE2695C();
  sub_21BC5E3C0();
  sub_21BE2889C();

  (*(v6 + 8))(v8, v5);
  return (*(v10 + 8))(v12, v9);
}

void sub_21BC5E5E4(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_21BE25A7C();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

uint64_t sub_21BC5E760(uint64_t a1)
{
  v3 = OBJC_IVAR___FAPickerSelectMemberHook_delegate;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_21BC5E7B8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___FAPickerSelectMemberHook_delegate;
  swift_beginAccess();
  *(v3 + v4) = v2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_21BC5E95C()
{
  v1 = (v0 + OBJC_IVAR___FAPickerSelectMemberHook_activateAction);
  swift_beginAccess();
  v2 = *v1;
  sub_21BB3D80C(*v1, v1[1]);
  return v2;
}

uint64_t sub_21BC5EA78(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___FAPickerSelectMemberHook_activateAction);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_21BB5AEC4(v6, v7);
}

uint64_t sub_21BC5EAD8@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___FAPickerSelectMemberHook_activateAction);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21BC61B64;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21BB3D80C(v4, v5);
}

uint64_t sub_21BC5EB78(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21BC61B2C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR___FAPickerSelectMemberHook_activateAction);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_21BB3D80C(v3, v4);
  return sub_21BB5AEC4(v8, v9);
}

uint64_t sub_21BC5ED48(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, void))
{
  sub_21BC604DC(a3, a2);
  v7 = v4 + OBJC_IVAR___FAPickerSelectMemberHook_activateAction;
  swift_beginAccess();
  v8 = *v7;
  if (*v7)
  {
    v9 = *(v7 + 8);

    v8(a3);
    sub_21BB5AEC4(v8, v9);
  }

  return a4(1, 0);
}

uint64_t sub_21BC5EEFC(void *a1, uint64_t (*a2)(uint64_t, void))
{
  v4 = sub_21BBB5D24(MEMORY[0x277D84F90]);
  sub_21BC604DC(a1, v4);

  return a2(1, 0);
}

id sub_21BC5F018(char a1, char a2)
{
  v5 = objc_allocWithZone(v2);
  v5[OBJC_IVAR___FAPickerSelection_isAddSelection] = a1;
  *&v5[OBJC_IVAR___FAPickerSelection_selectedMember] = 0;
  v5[OBJC_IVAR___FAPickerSelection_isAddExistingTeenSelection] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id FAPickerSelection.__allocating_init(selectedMember:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v3[OBJC_IVAR___FAPickerSelection_isAddSelection] = 0;
  *&v3[OBJC_IVAR___FAPickerSelection_selectedMember] = a1;
  v3[OBJC_IVAR___FAPickerSelection_isAddExistingTeenSelection] = 0;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_21BC5F0F4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1684632420;
  }

  else
  {
    v3 = 25705;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1684632420;
  }

  else
  {
    v5 = 25705;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21BE2995C();
  }

  return v8 & 1;
}

uint64_t sub_21BC5F188()
{
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BC5F1F8(uint64_t a1)
{
  sub_21BE28ABC();
}

uint64_t sub_21BC5F254(uint64_t a1)
{
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BC5F2C0@<X0>(char *a2@<X8>)
{
  v3 = sub_21BE2980C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_21BC5F320(uint64_t *a1@<X8>)
{
  v2 = 25705;
  if (*v1)
  {
    v2 = 1684632420;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_21BC5F34C()
{
  if (*v0)
  {
    return 1684632420;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_21BC5F374@<X0>(char *a3@<X8>)
{
  v4 = sub_21BE2980C();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_21BC5F3D8(uint64_t a1)
{
  v2 = sub_21BC61B90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BC5F414(uint64_t a1)
{
  v2 = sub_21BC61B90();

  return MEMORY[0x2821FE720](a1, v2);
}

id FAPickerSelectMemberHook.init()()
{
  *&v0[OBJC_IVAR___FAPickerSelectMemberHook_delegate] = 0;
  v1 = &v0[OBJC_IVAR___FAPickerSelectMemberHook_activateAction];
  v2 = type metadata accessor for FAPickerSelectMemberHook();
  *v1 = 0;
  *(v1 + 1) = 0;
  v4.receiver = v0;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_init);
}

id FAPickerSelectMemberHook.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FAPickerSelectMemberHook();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21BC5F594()
{
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BC5F674(uint64_t a1)
{
  sub_21BE28ABC();
}

uint64_t sub_21BC5F740(uint64_t a1)
{
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

unint64_t sub_21BC5F81C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21BC61FA8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_21BC5F84C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1684632420;
  v5 = 0xE700000000000000;
  v6 = 0x6469656C707061;
  v7 = 0xE900000000000065;
  v8 = 0x6D614E7473726966;
  if (v2 != 3)
  {
    v8 = 0x656D614E7473616CLL;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x64697364746C61;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_21BC5F8E8()
{
  v1 = *v0;
  v2 = 1684632420;
  v3 = 0x6469656C707061;
  v4 = 0x6D614E7473726966;
  if (v1 != 3)
  {
    v4 = 0x656D614E7473616CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x64697364746C61;
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

unint64_t sub_21BC5F980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21BC61FA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21BC5F9A8(uint64_t a1)
{
  v2 = sub_21BC61BE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BC5F9E4(uint64_t a1)
{
  v2 = sub_21BC61BE4();

  return MEMORY[0x2821FE720](a1, v2);
}

void *FAPickerSelection.selectedMember.getter()
{
  v1 = *(v0 + OBJC_IVAR___FAPickerSelection_selectedMember);
  v2 = v1;
  return v1;
}

id sub_21BC5FAD4(uint64_t a1, uint64_t a2, char a3, char a4)
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v7 = objc_allocWithZone(ObjCClassMetadata);
  v7[OBJC_IVAR___FAPickerSelection_isAddSelection] = a3;
  *&v7[OBJC_IVAR___FAPickerSelection_selectedMember] = 0;
  v7[OBJC_IVAR___FAPickerSelection_isAddExistingTeenSelection] = a4;
  v10.receiver = v7;
  v10.super_class = ObjCClassMetadata;
  v8 = objc_msgSendSuper2(&v10, sel_init);

  return v8;
}

id FAPickerSelection.init(selectedMember:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR___FAPickerSelection_isAddSelection] = 0;
  *&v1[OBJC_IVAR___FAPickerSelection_selectedMember] = a1;
  v1[OBJC_IVAR___FAPickerSelection_isAddExistingTeenSelection] = 0;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id FAPickerSelection.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FAPickerSelection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21BC5FD10(void *a1)
{
  v1 = [a1 name];
  if (v1)
  {
    v2 = v1;
    v3 = sub_21BE28A0C();
    v5 = v4;

    if (v3 == 0xD000000000000014 && 0x800000021BE59B90 == v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = sub_21BE2995C();
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_21BC5FDBC(void *a1)
{
  v1 = [a1 clientInfo];
  if (!v1)
  {
    goto LABEL_10;
  }

  v2 = v1;
  v3 = sub_21BE2890C();

  sub_21BE28A0C();
  sub_21BE2958C();
  if (!*(v3 + 16) || (v4 = sub_21BBB31E8(v8), (v5 & 1) == 0))
  {

    sub_21BBB7238(v8);
LABEL_10:
    v9 = 0u;
    v10 = 0u;
    goto LABEL_11;
  }

  sub_21BB3DCD4(*(v3 + 56) + 32 * v4, &v9);
  sub_21BBB7238(v8);

  if (!*(&v10 + 1))
  {
LABEL_11:
    sub_21BB3A4CC(&v9, &qword_27CDB5940, &unk_21BE32B10);
    goto LABEL_12;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v6 = 0;
    return v6 & 1;
  }

  if (v8[0] == 0xD000000000000014 && 0x800000021BE59B90 == v8[1])
  {

    v6 = 1;
  }

  else
  {
    v6 = sub_21BE2995C();
  }

  return v6 & 1;
}

void *sub_21BC5FF50(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8080, &qword_21BE3AAE8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - v5;
  v7 = __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_21BC61BE4();
  sub_21BE29B4C();
  if (!v1)
  {
    v8 = sub_21BBB52D8(MEMORY[0x277D84F90]);
    v36 = v8;
    LOBYTE(v34) = 2;
    v9 = sub_21BE2982C();
    if (v10)
    {
      v35 = MEMORY[0x277D837D0];
      *&v34 = v9;
      *(&v34 + 1) = v10;
      sub_21BB414D0(&v34, v33);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = v8;
      sub_21BC800D4(v33, 0x612D7265626D656DLL, 0xEF64692D656C7070, isUniquelyReferenced_nonNull_native);
      v36 = v32;
    }

    else
    {
      sub_21BC7B790(0x612D7265626D656DLL, 0xEF64692D656C7070, &v34);
      sub_21BB3A4CC(&v34, &qword_27CDB5940, &unk_21BE32B10);
    }

    LOBYTE(v34) = 3;
    v12 = sub_21BE2982C();
    if (v13)
    {
      v35 = MEMORY[0x277D837D0];
      *&v34 = v12;
      *(&v34 + 1) = v13;
      sub_21BB414D0(&v34, v33);
      v14 = v36;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v32 = v14;
      sub_21BC800D4(v33, 0xD000000000000011, 0x800000021BE59B50, v15);
      v36 = v32;
    }

    else
    {
      sub_21BC7B790(0xD000000000000011, 0x800000021BE59B50, &v34);
      sub_21BB3A4CC(&v34, &qword_27CDB5940, &unk_21BE32B10);
    }

    LOBYTE(v34) = 4;
    v16 = sub_21BE2982C();
    if (v17)
    {
      v35 = MEMORY[0x277D837D0];
      *&v34 = v16;
      *(&v34 + 1) = v17;
      sub_21BB414D0(&v34, v33);
      v18 = v36;
      v19 = swift_isUniquelyReferenced_nonNull_native();
      v32 = v18;
      sub_21BC800D4(v33, 0xD000000000000010, 0x800000021BE59B70, v19);
      v36 = v32;
    }

    else
    {
      sub_21BC7B790(0xD000000000000010, 0x800000021BE59B70, &v34);
      sub_21BB3A4CC(&v34, &qword_27CDB5940, &unk_21BE32B10);
    }

    LOBYTE(v34) = 1;
    v20 = sub_21BE2982C();
    if (v21)
    {
      v35 = MEMORY[0x277D837D0];
      *&v34 = v20;
      *(&v34 + 1) = v21;
      sub_21BB414D0(&v34, v33);
      v22 = v36;
      v23 = swift_isUniquelyReferenced_nonNull_native();
      v32 = v22;
      sub_21BC800D4(v33, 0x612D7265626D656DLL, 0xEE0044495344746CLL, v23);
      v36 = v32;
    }

    else
    {
      sub_21BC7B790(0x612D7265626D656DLL, 0xEE0044495344746CLL, &v34);
      sub_21BB3A4CC(&v34, &qword_27CDB5940, &unk_21BE32B10);
    }

    LOBYTE(v34) = 0;
    v24 = sub_21BE2982C();
    if (v25)
    {
      v35 = MEMORY[0x277D837D0];
      *&v34 = v24;
      *(&v34 + 1) = v25;
      sub_21BB414D0(&v34, v33);
      v27 = v36;
      v28 = swift_isUniquelyReferenced_nonNull_native();
      v32 = v27;
      sub_21BC800D4(v33, 0x642D7265626D656DLL, 0xEB00000000646973, v28);
      v26 = v32;
    }

    else
    {
      sub_21BC7B790(0x642D7265626D656DLL, 0xEB00000000646973, &v34);
      sub_21BB3A4CC(&v34, &qword_27CDB5940, &unk_21BE32B10);
      v26 = v36;
    }

    sub_21BCA3434(v26);

    v29 = objc_allocWithZone(MEMORY[0x277D08268]);
    v30 = sub_21BE288EC();

    v7 = [v29 initWithDictionaryRepresentation_];

    (*(v4 + 8))(v6, v3);
  }

  return v7;
}

void sub_21BC604DC(void *a1, uint64_t a2)
{
  v117 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8048, &qword_21BE3AAB8);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v105 - v7;
  v9 = sub_21BE26A4C();
  v115 = *(v9 - 8);
  v116 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v111 = &v105 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v112 = &v105 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v113 = &v105 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v105 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v105 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v105 - v25;
  *&v126 = 0x6E6F69746361;
  *(&v126 + 1) = 0xE600000000000000;
  sub_21BE2958C();
  if (!*(a2 + 16) || (v27 = sub_21BBB31E8(v130), (v28 & 1) == 0))
  {
LABEL_10:
    sub_21BBB7238(v130);
    goto LABEL_11;
  }

  sub_21BB3DCD4(*(a2 + 56) + 32 * v27, &v128);
  sub_21BBB7238(v130);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v29 = 0;
    v30 = 0;
    goto LABEL_12;
  }

  v30 = *(&v126 + 1);
  v29 = v126;
  if (v126 == __PAIR128__(0xEF6E656554676E69, 0x7473697845646461) || (sub_21BE2995C() & 1) != 0)
  {

    sub_21BE2614C();
    v31 = sub_21BE26A2C();
    v32 = sub_21BE28FCC();
    if (os_log_type_enabled(v31, v32))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_21BB35000, v31, v32, "FAPickerSelectMemberHook.processElement selected addExistingTeen", v8, 2u);
      MEMORY[0x21CF05C50](v8, -1, -1);
    }

    (*(v115 + 8))(v26, v116);
    v33 = type metadata accessor for FAPickerSelection();
    v34 = objc_allocWithZone(v33);
    v34[OBJC_IVAR___FAPickerSelection_isAddSelection] = 0;
    *&v34[OBJC_IVAR___FAPickerSelection_selectedMember] = 0;
    v34[OBJC_IVAR___FAPickerSelection_isAddExistingTeenSelection] = 1;
    v118.receiver = v34;
    v118.super_class = v33;
    v35 = objc_msgSendSuper2(&v118, sel_init);
    *&v128 = 0xD000000000000010;
    *(&v128 + 1) = 0x800000021BE59940;
    sub_21BE2958C();
    v129 = v33;
    *&v128 = v35;
    v24 = v35;
    v36 = [v117 clientInfo];
    if (v36)
    {
      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_10;
  }

LABEL_12:
  *&v128 = 0x64657463656C6573;
  *(&v128 + 1) = 0xEA00000000006449;
  sub_21BE2958C();
  v37 = [v117 clientInfo];
  if (!v37)
  {
    goto LABEL_89;
  }

  v38 = v37;
  v39 = sub_21BE2890C();

  if (!*(v39 + 16) || (v40 = sub_21BBB31E8(v130), (v41 & 1) == 0))
  {

    sub_21BBB7238(v130);
    v114 = 0;
    v44 = 0;
    if (!v30)
    {
      goto LABEL_27;
    }

LABEL_23:
    if (v29 == 0xD000000000000014 && v30 == 0x800000021BE59B30)
    {
    }

    else
    {
      v45 = sub_21BE2995C();

      if ((v45 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

LABEL_34:
    sub_21BE2614C();

    v46 = sub_21BE26A2C();
    v47 = sub_21BE28FCC();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *&v128 = v49;
      *v48 = 136315138;
      v130[0] = v114;
      v130[1] = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7AB0, &qword_21BE39110);
      v50 = sub_21BE28A5C();
      v52 = sub_21BB3D81C(v50, v51, &v128);

      *(v48 + 4) = v52;
      _os_log_impl(&dword_21BB35000, v46, v47, "FAPickerSelectMemberHook.processElement %s selected", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v49);
      MEMORY[0x21CF05C50](v49, -1, -1);
      MEMORY[0x21CF05C50](v48, -1, -1);
    }

    else
    {
    }

    (*(v115 + 8))(v24, v116);
    v33 = type metadata accessor for FAPickerSelection();
    v53 = objc_allocWithZone(v33);
    v53[OBJC_IVAR___FAPickerSelection_isAddSelection] = 1;
    *&v53[OBJC_IVAR___FAPickerSelection_selectedMember] = 0;
    v53[OBJC_IVAR___FAPickerSelection_isAddExistingTeenSelection] = 0;
    v119.receiver = v53;
    v119.super_class = v33;
    v54 = objc_msgSendSuper2(&v119, sel_init);
    *&v128 = 0xD000000000000010;
    *(&v128 + 1) = 0x800000021BE59940;
    sub_21BE2958C();
    v129 = v33;
    *&v128 = v54;
    v24 = v54;
    v36 = [v117 clientInfo];
    if (!v36)
    {
      goto LABEL_90;
    }

LABEL_38:
    v55 = v36;
    v56 = sub_21BE2890C();

    *&v123 = v56;
    if (v33)
    {
      sub_21BB414D0(&v128, &v126);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v121[0] = v56;
      sub_21BC80224(&v126, v130, isUniquelyReferenced_nonNull_native);
      sub_21BBB7238(v130);
      if (*&v121[0])
      {
LABEL_40:
        v58 = sub_21BE288EC();

LABEL_43:
        [v117 setClientInfo_];

        return;
      }
    }

    else
    {
      sub_21BB3A4CC(&v128, &qword_27CDB5940, &unk_21BE32B10);
      sub_21BC7B834(v130, &v126);
      sub_21BB3A4CC(&v126, &qword_27CDB5940, &unk_21BE32B10);
      sub_21BBB7238(v130);
      if (v123)
      {
        goto LABEL_40;
      }
    }

    v58 = 0;
    goto LABEL_43;
  }

  sub_21BB3DCD4(*(v39 + 56) + 32 * v40, &v128);
  sub_21BBB7238(v130);

  v42 = swift_dynamicCast();
  v43 = v126;
  if (!v42)
  {
    v43 = 0;
  }

  v114 = v43;
  if (v42)
  {
    v44 = *(&v126 + 1);
  }

  else
  {
    v44 = 0;
  }

  if (v30)
  {
    goto LABEL_23;
  }

LABEL_27:
  if (!v44)
  {
    sub_21BE2614C();
    v59 = sub_21BE26A2C();
    v60 = sub_21BE28FCC();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_21BB35000, v59, v60, "FAPickerSelectMemberHook.processElement selectedId is nil", v61, 2u);
      MEMORY[0x21CF05C50](v61, -1, -1);
    }

    (*(v115 + 8))(v12, v116);
    return;
  }

  if (v114 == 0x646C696843646461 && v44 == 0xE800000000000000 || (sub_21BE2995C() & 1) != 0 || v114 == 0x6E656554646461 && v44 == 0xE700000000000000 || (sub_21BE2995C() & 1) != 0)
  {
    goto LABEL_34;
  }

  sub_21BE2614C();

  v62 = sub_21BE26A2C();
  v63 = sub_21BE28FCC();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v130[0] = v65;
    *v64 = 136315138;
    *(v64 + 4) = sub_21BB3D81C(v114, v44, v130);
    _os_log_impl(&dword_21BB35000, v62, v63, "FAPickerSelectMemberHook.processElement selected id is %s", v64, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v65);
    MEMORY[0x21CF05C50](v65, -1, -1);
    MEMORY[0x21CF05C50](v64, -1, -1);
  }

  v105 = *(v115 + 8);
  v105(v21, v116);
  *&v128 = 0xD000000000000013;
  *(&v128 + 1) = 0x800000021BE546F0;
  sub_21BE2958C();
  v66 = [v117 clientInfo];
  if (!v66)
  {
    goto LABEL_91;
  }

  v67 = v66;
  v68 = sub_21BE2890C();

  if (*(v68 + 16) && (v69 = sub_21BBB31E8(v130), (v70 & 1) != 0))
  {
    sub_21BB3DCD4(*(v68 + 56) + 32 * v69, &v128);
    sub_21BBB7238(v130);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB8070, &unk_21BE3AAD8);
    if (swift_dynamicCast())
    {
      v71 = v126;
      goto LABEL_56;
    }
  }

  else
  {

    sub_21BBB7238(v130);
  }

  v71 = MEMORY[0x277D84F90];
LABEL_56:
  v109 = *(v71 + 16);
  if (v109)
  {
    v110 = v8;
    v72 = 0;
    v73 = v71 + 32;
    v107 = v6;
    v108 = v71;
    while (1)
    {
      if (v72 >= *(v71 + 16))
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
        return;
      }

      sub_21BB3A35C(v73, &v128);
      __swift_project_boxed_opaque_existential_1Tm(&v128, v129);
      sub_21BC61B90();
      v74 = v110;
      sub_21BE29B4C();
      v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8058, &unk_21BE3AAC0);
      (*(*(v75 - 8) + 56))(v74, 0, 1, v75);
      v76 = v107;
      sub_21BBA3854(v74, v107, &qword_27CDB8048, &qword_21BE3AAB8);
      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8058, &unk_21BE3AAC0);
      v78 = *(v77 - 8);
      if ((*(v78 + 48))(v76, 1, v77) == 1)
      {
        break;
      }

      LOBYTE(v126) = 0;
      v79 = sub_21BE2982C();
      v81 = v80;
      v106 = v79;
      (*(v78 + 8))(v76, v77);
      if (!v81)
      {
        v71 = v108;
        goto LABEL_59;
      }

      v71 = v108;
      if (v106 == v114 && v81 == v44)
      {

        sub_21BB3A4CC(v110, &qword_27CDB8048, &qword_21BE3AAB8);
LABEL_87:
        sub_21BB3D104(&v128, v130);
        goto LABEL_70;
      }

      v82 = sub_21BE2995C();

      sub_21BB3A4CC(v110, &qword_27CDB8048, &qword_21BE3AAB8);
      if (v82)
      {
        goto LABEL_87;
      }

LABEL_60:
      ++v72;
      __swift_destroy_boxed_opaque_existential_0Tm(&v128);
      v73 += 40;
      if (v109 == v72)
      {
        goto LABEL_69;
      }
    }

    sub_21BB3A4CC(v76, &qword_27CDB8048, &qword_21BE3AAB8);
    v71 = v108;
LABEL_59:
    sub_21BB3A4CC(v110, &qword_27CDB8048, &qword_21BE3AAB8);
    goto LABEL_60;
  }

LABEL_69:
  memset(v130, 0, 40);
LABEL_70:
  sub_21BBA3854(v130, &v126, &unk_27CDB8060, &qword_21BE3BDC0);
  if (v127)
  {
    sub_21BB3D104(&v126, &v128);
    v87 = sub_21BC5FF50(&v128);
    sub_21BE2614C();
    v88 = v87;
    v89 = sub_21BE26A2C();
    v90 = sub_21BE28FCC();

    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      *v91 = 138412290;
      *(v91 + 4) = v88;
      *v92 = v88;
      v93 = v88;
      _os_log_impl(&dword_21BB35000, v89, v90, "FAPickerSelectMemberHook.processElement selected member %@", v91, 0xCu);
      sub_21BB3A4CC(v92, &qword_27CDB7AF0, &qword_21BE37410);
      MEMORY[0x21CF05C50](v92, -1, -1);
      MEMORY[0x21CF05C50](v91, -1, -1);
    }

    v105(v113, v116);
    v94 = type metadata accessor for FAPickerSelection();
    v95 = objc_allocWithZone(v94);
    v95[OBJC_IVAR___FAPickerSelection_isAddSelection] = 0;
    *&v95[OBJC_IVAR___FAPickerSelection_selectedMember] = v88;
    v95[OBJC_IVAR___FAPickerSelection_isAddExistingTeenSelection] = 0;
    v125.receiver = v95;
    v125.super_class = v94;
    v96 = v88;
    v97 = objc_msgSendSuper2(&v125, sel_init);
    *&v123 = 0xD000000000000010;
    *(&v123 + 1) = 0x800000021BE59940;
    sub_21BE2958C();
    v124 = v94;
    *&v123 = v97;
    v98 = v97;
    v99 = [v117 clientInfo];
    if (!v99)
    {
      goto LABEL_92;
    }

    v100 = v99;
    v101 = sub_21BE2890C();

    v122 = v101;
    if (v94)
    {
      sub_21BB414D0(&v123, v121);
      v102 = swift_isUniquelyReferenced_nonNull_native();
      v120 = v101;
      sub_21BC80224(v121, &v126, v102);
      sub_21BBB7238(&v126);
      v103 = v120;
    }

    else
    {
      sub_21BB3A4CC(&v123, &qword_27CDB5940, &unk_21BE32B10);
      sub_21BC7B834(&v126, v121);
      sub_21BB3A4CC(v121, &qword_27CDB5940, &unk_21BE32B10);
      sub_21BBB7238(&v126);
      v103 = v122;
    }

    if (v103)
    {
      v104 = sub_21BE288EC();
    }

    else
    {
      v104 = 0;
    }

    [v117 setClientInfo_];

    __swift_destroy_boxed_opaque_existential_0Tm(&v128);
  }

  else
  {

    sub_21BB3A4CC(&v126, &unk_27CDB8060, &qword_21BE3BDC0);
    v83 = v111;
    sub_21BE2614C();
    v84 = sub_21BE26A2C();
    v85 = sub_21BE28FCC();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&dword_21BB35000, v84, v85, "FAPickerSelectMemberHook.processElement selectedOptionDecoder is nil", v86, 2u);
      MEMORY[0x21CF05C50](v86, -1, -1);
    }

    v105(v83, v116);
  }

  sub_21BB3A4CC(v130, &unk_27CDB8060, &qword_21BE3BDC0);
}

uint64_t dispatch thunk of FAPickerSelectMemberHook.shouldMatch(_:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x90))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x98))();
}

uint64_t sub_21BC61B2C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

unint64_t sub_21BC61B90()
{
  result = qword_27CDB8050;
  if (!qword_27CDB8050)
  {
    result = swift_getWitnessTable(byte_21BE3AD2C, &type metadata for FAPickerSelectMemberHook.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CDB8050);
  }

  return result;
}

unint64_t sub_21BC61BE4()
{
  result = qword_27CDB8088;
  if (!qword_27CDB8088)
  {
    result = swift_getWitnessTable(aMF_0, &_s10CodingKeysON, v0, v1);
    atomic_store(result, &qword_27CDB8088);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FamilyRowStatus(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FamilyRowStatus(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21BC61D9C()
{
  result = qword_27CDB8090;
  if (!qword_27CDB8090)
  {
    result = swift_getWitnessTable(byte_21BE3ABC4, &type metadata for FAPickerSelectMemberHook.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CDB8090);
  }

  return result;
}

unint64_t sub_21BC61DF4()
{
  result = qword_27CDB8098;
  if (!qword_27CDB8098)
  {
    result = swift_getWitnessTable(byte_21BE3ACB4, &_s10CodingKeysON, v0, v1);
    atomic_store(result, &qword_27CDB8098);
  }

  return result;
}

unint64_t sub_21BC61E4C()
{
  result = qword_27CDB80A0;
  if (!qword_27CDB80A0)
  {
    result = swift_getWitnessTable(byte_21BE3ABEC, &_s10CodingKeysON, v0, v1);
    atomic_store(result, &qword_27CDB80A0);
  }

  return result;
}

unint64_t sub_21BC61EA4()
{
  result = qword_27CDB80A8;
  if (!qword_27CDB80A8)
  {
    result = swift_getWitnessTable(byte_21BE3AC14, &_s10CodingKeysON, v0, v1);
    atomic_store(result, &qword_27CDB80A8);
  }

  return result;
}

unint64_t sub_21BC61EFC()
{
  result = qword_27CDB80B0;
  if (!qword_27CDB80B0)
  {
    result = swift_getWitnessTable(byte_21BE3AAFC, &type metadata for FAPickerSelectMemberHook.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CDB80B0);
  }

  return result;
}

unint64_t sub_21BC61F54()
{
  result = qword_27CDB80B8;
  if (!qword_27CDB80B8)
  {
    result = swift_getWitnessTable(byte_21BE3AB24, &type metadata for FAPickerSelectMemberHook.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CDB80B8);
  }

  return result;
}

unint64_t sub_21BC61FA8(uint64_t a1, uint64_t a2)
{
  v2 = sub_21BE2980C();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21BC62014()
{
  v1 = sub_21BE2754C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 8);
  v5 = *v0;
  v10 = *v0;
  v6 = v11;

  if ((v6 & 1) == 0)
  {
    sub_21BE28FEC();
    v7 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();
    sub_21BB3A4CC(&v10, &qword_27CDB5C50, &qword_21BE33490);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_21BC62170()
{
  v1 = v0;
  v2 = sub_21BE26A4C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);
  v9 = v7 >> 62;
  if (v7 >> 62)
  {
    goto LABEL_34;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    return 0;
  }

  while (1)
  {
    v10 = v8 >> 62;
    if (v8 >> 62)
    {
      v33 = v4;
      v34 = sub_21BE2951C();
      v4 = v33;
      if (!v34)
      {
        return 0;
      }
    }

    else if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return 0;
    }

    v43 = MEMORY[0x277D84FA0];
    v40 = v4;
    v9 = v9 ? sub_21BE2951C() : *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = sub_21BC65D2C(v1, v42);
    if (!v9)
    {
      break;
    }

    v36 = v8 >> 62;
    v37 = v8;
    v38 = v6;
    v39 = v3;
    v6 = 0;
    v41 = v7 & 0xC000000000000001;
    v11 = v7 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v41)
      {
        v4 = MEMORY[0x21CF047C0](v6, v7);
      }

      else
      {
        if (v6 >= *(v11 + 16))
        {
          goto LABEL_33;
        }

        v4 = *(v7 + 8 * v6 + 32);
      }

      v12 = v4;
      v3 = (v6 + 1);
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v13 = [v4 participants];
      sub_21BB3A2A4(0, &qword_27CDB60E0, 0x277D445D8);
      v8 = v7;
      v14 = v9;
      sub_21BC692B8();
      v15 = sub_21BE28E4C();

      sub_21BC65D2C(v1, v42);
      sub_21BC68CD0(v15, v1, &v43);
      sub_21BC69320(v1);

      v9 = v14;
      v7 = v8;

      ++v6;
      if (v3 == v9)
      {
        v16 = v43;
        v6 = v38;
        v3 = v39;
        v10 = v36;
        v8 = v37;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v31 = v4;
    v32 = sub_21BE2951C();
    v4 = v31;
    if (v32 < 1)
    {
      return 0;
    }
  }

  v16 = MEMORY[0x277D84FA0];
LABEL_18:
  sub_21BC69320(v1);
  if ((v16 & 0xC000000000000001) == 0)
  {
    if (*(v16 + 16))
    {
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  if (!sub_21BE2951C())
  {
LABEL_23:
    sub_21BE261BC();
    v19 = sub_21BE26A2C();
    v20 = sub_21BE28FDC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v42[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_21BB3D81C(0x64616548627573, 0xE700000000000000, v42);
      _os_log_impl(&dword_21BB35000, v19, v20, "%s no grocery list participant is part of family", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      MEMORY[0x21CF05C50](v22, -1, -1);
      MEMORY[0x21CF05C50](v21, -1, -1);
    }

    (*(v3 + 1))(v6, v40);

    return 0;
  }

LABEL_20:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_21BE33260;
  if ((v16 & 0xC000000000000001) != 0)
  {
    v18 = sub_21BE2951C();
  }

  else
  {
    v18 = *(v16 + 16);
  }

  v24 = MEMORY[0x277D83B88];
  v25 = MEMORY[0x277D83C10];
  *(v17 + 56) = MEMORY[0x277D83B88];
  *(v17 + 64) = v25;
  *(v17 + 32) = v18;
  if (v10)
  {
    v26 = sub_21BE2951C();
  }

  else
  {
    v26 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v17 + 96) = v24;
  *(v17 + 104) = v25;
  *(v17 + 72) = v26;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v28 = objc_opt_self();

  v29 = [v28 bundleForClass_];
  sub_21BE2599C();

  v30 = sub_21BE289DC();

  return v30;
}

uint64_t sub_21BC62694@<X0>(void *a1@<X8>)
{
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8170, &unk_21BE3AE70);
  MEMORY[0x28223BE20](v52);
  v53 = &v45 - v2;
  v49 = sub_21BE2723C();
  MEMORY[0x28223BE20](v49);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8100, &unk_21BE4D1C0);
  MEMORY[0x28223BE20](v51);
  v6 = &v45 - v5;
  v7 = sub_21BE2838C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v12 = sub_21BE289CC();
  v13 = [v11 initWithBundleIdentifier_];

  v14 = [objc_opt_self() imageDescriptorNamed_];
  v15 = [v13 prepareImageForDescriptor_];

  if (v15)
  {
    v50 = v13;
    v54 = a1;
    v16 = [v15 CGImage];
    if (v16)
    {
      v17 = v16;
      [v15 iconSize];
      [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];

      sub_21BE2836C();
      (*(v8 + 104))(v10, *MEMORY[0x277CE0FE0], v7);
      v18 = sub_21BE283CC();

      (*(v8 + 8))(v10, v7);
      sub_21BE2869C();
      sub_21BE26F2C();
      v48 = v55;
      v19 = v56;
      v20 = v57;
      v47 = v58;
      v45 = v60;
      v46 = v59;
      v21 = *(v49 + 20);
      v22 = *MEMORY[0x277CE0118];
      v23 = sub_21BE276AC();
      (*(*(v23 - 8) + 104))(&v4[v21], v22, v23);
      __asm { FMOV            V0.2D, #9.0 }

      *v4 = _Q0;
      sub_21BE282AC();
      v29 = sub_21BE2831C();

      sub_21BE26ECC();
      v30 = &v6[*(v51 + 36)];
      sub_21BC691F8(v4, v30);
      v31 = v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8178, &unk_21BE4D270) + 36);
      v32 = v62;
      *v31 = v61;
      *(v31 + 16) = v32;
      *(v31 + 32) = v63;
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8180, &qword_21BE3AE80);
      *(v30 + *(v33 + 52)) = v29;
      *(v30 + *(v33 + 56)) = 256;
      v34 = sub_21BE2869C();
      v36 = v35;
      sub_21BC6925C(v4);
      v37 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8188, &unk_21BE4D280) + 36));
      *v37 = v34;
      v37[1] = v36;
      v38 = sub_21BE2869C();
      v40 = v39;
      v41 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8120, &qword_21BE4D1D0) + 36));
      *v41 = v38;
      v41[1] = v40;
      v42 = v48;
      *v6 = v18;
      *(v6 + 1) = v42;
      v6[16] = v19;
      *(v6 + 3) = v20;
      v6[32] = v47;
      v43 = v45;
      *(v6 + 5) = v46;
      *(v6 + 6) = v43;
      sub_21BBA3854(v6, v53, &qword_27CDB8100, &unk_21BE4D1C0);
      swift_storeEnumTagMultiPayload();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8110, &unk_21BE3AE10);
      sub_21BC65DF0();
      sub_21BC65EA8();
      sub_21BE2784C();

      return sub_21BB3A4CC(v6, &qword_27CDB8100, &unk_21BE4D1C0);
    }

    __break(1u);
  }

  result = sub_21BE2978C();
  __break(1u);
  return result;
}

void sub_21BC62C8C()
{
  v44[16] = *MEMORY[0x277D85DE8];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v43 - v5;
  v7 = sub_21BE25D6C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_21BC6326C())
  {
    return;
  }

  v11 = *(v0 + 24);
  if (v11 >> 62)
  {
    if (sub_21BE2951C())
    {
      if (sub_21BE2951C() == 1)
      {
        goto LABEL_5;
      }

LABEL_14:
      v32 = objc_opt_self();
      v44[0] = 0;
      v33 = [v32 urlDestinationTo:11 error:v44];
      v34 = v44[0];
      if (v33)
      {
        v35 = v33;
        sub_21BE25B5C();
        v36 = v34;

        v37 = 0;
      }

      else
      {
        v40 = v44[0];
        v41 = sub_21BE25A8C();

        swift_willThrow();
        v37 = 1;
      }

      v42 = sub_21BE25B9C();
      (*(*(v42 - 8) + 56))(v4, v37, 1, v42);
      sub_21BDEF00C(v4);
      sub_21BB3A4CC(v4, &unk_27CDB57F0, &qword_21BE328A0);
      return;
    }

LABEL_16:
    v38 = sub_21BC62014();
    swift_beginAccess();
    if (*(v38 + 17) == 1)
    {
      *(v38 + 17) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      v43[-2] = v38;
      LOBYTE(v43[-1]) = 1;
      v43[1] = v38;
      sub_21BC65FE8(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars, protocol conformance descriptor for ChecklistStateVars);
      sub_21BE25F0C();
    }

    return;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
    goto LABEL_16;
  }

  if (v12 != 1)
  {
    goto LABEL_14;
  }

LABEL_5:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x21CF047C0](0, v11);
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v13 = *(v11 + 32);
  }

  v14 = v13;
  v15 = [v13 listID];

  v16 = [v15 uuid];
  sub_21BE25D4C();

  v17 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DF8, &unk_21BE39E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  sub_21BE2939C();
  v44[0] = sub_21BE2938C();
  v44[1] = v19;
  v20 = MEMORY[0x277D837D0];
  v21 = sub_21BE2958C();
  v22 = MEMORY[0x21CF00EE0](v21);
  *(inited + 96) = v20;
  *(inited + 72) = v22;
  *(inited + 80) = v23;
  sub_21BBB5D24(inited);
  swift_setDeallocating();
  sub_21BB3A4CC(inited + 32, &qword_27CDB5900, &qword_21BE32AB0);
  v24 = sub_21BE288EC();

  v44[0] = 0;
  v25 = [v17 urlDestinationTo:10 params:v24 error:v44];

  v26 = v44[0];
  if (v25)
  {
    sub_21BE25B5C();
    v27 = v26;

    v28 = 0;
  }

  else
  {
    v29 = v44[0];
    v30 = sub_21BE25A8C();

    swift_willThrow();
    v28 = 1;
  }

  v31 = sub_21BE25B9C();
  (*(*(v31 - 8) + 56))(v6, v28, 1, v31);
  sub_21BDEF00C(v6);
  sub_21BB3A4CC(v6, &unk_27CDB57F0, &qword_21BE328A0);
  (*(v8 + 8))(v10, v7);
}

uint64_t sub_21BC6326C()
{
  v44[1] = *MEMORY[0x277D85DE8];
  v1 = sub_21BE26A4C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v37 = &v37 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v38 = &v37 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - v10;
  v12 = sub_21BE25DFC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v0;
  v16 = *(v0 + 88);
  sub_21BE25DBC();
  v17 = sub_21BE25DAC();
  (*(v13 + 8))(v15, v12);
  *&v43 = 0;
  v18 = [v16 fetchFamilyGroceryListEligibilityForFamilyChecklistWithLocale:v17 error:&v43];

  if (!v18)
  {
    v24 = v43;
    v25 = sub_21BE25A8C();

    swift_willThrow();
    sub_21BE261BC();
    v26 = v25;
    sub_21BC51D50(v25, 0xD00000000000003CLL, 0x800000021BE59D00);

    (*(v2 + 8))(v5, v1);
    return 0;
  }

  v19 = v2;
  v20 = v43;
  if ([v18 isEligible])
  {
    sub_21BE261BC();
    v21 = sub_21BE26A2C();
    v22 = sub_21BE28FFC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_21BB35000, v21, v22, "Not showing any alerts for grocery checklist item", v23, 2u);
      MEMORY[0x21CF05C50](v23, -1, -1);
    }

    (*(v19 + 8))(v11, v1);
    return 0;
  }

  if (([v18 ineligibilityReasons] & 0x100) != 0)
  {
    v28 = v38;
    sub_21BE261BC();
    v29 = sub_21BE26A2C();
    v30 = sub_21BE28FFC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_21BB35000, v29, v30, "Showing account update alert on grocery checklist item", v31, 2u);
      MEMORY[0x21CF05C50](v31, -1, -1);
    }

    (*(v19 + 8))(v28, v1);
    v43 = *(v39 + 56);
    v32 = *(v39 + 56);
    goto LABEL_17;
  }

  if (([v18 ineligibilityReasons] & 4) != 0)
  {
    v33 = v37;
    sub_21BE261BC();
    v34 = sub_21BE26A2C();
    v35 = sub_21BE28FFC();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_21BB35000, v34, v35, "Showing iCloud disabled alert on grocery checklist item", v36, 2u);
      MEMORY[0x21CF05C50](v36, -1, -1);
    }

    (*(v2 + 8))(v33, v1);
    v43 = *(v39 + 72);
    v32 = *(v39 + 72);
LABEL_17:
    v42 = v32;
    v40[0] = 1;
    v44[0] = *(&v43 + 1);
    sub_21BBA3854(v44, v41, &qword_27CDB5E28, &qword_21BE33898);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
    sub_21BE2840C();

    sub_21BB3A4CC(&v43, &qword_27CDBBB50, &unk_21BE333D0);
    return 1;
  }

  return 1;
}

double sub_21BC637C0@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v137 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5BC0, &qword_21BE33380);
  v122 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v120 = &v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v121 = &v109 - v6;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB80C0, &qword_21BE3ADD8);
  v119 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v125 = (&v109 - v7);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB80C8, &qword_21BE3ADE0);
  v116 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v124 = &v109 - v8;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB80D0, &qword_21BE3ADE8);
  v117 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v10 = &v109 - v9;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB80D8, &unk_21BE3ADF0);
  MEMORY[0x28223BE20](v131);
  v134 = &v109 - v11;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB80E0, &qword_21BE4D190);
  v12 = MEMORY[0x28223BE20](v130);
  v128 = &v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v129 = (&v109 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB80E8, &unk_21BE3AE00);
  MEMORY[0x28223BE20](v15 - 8);
  v133 = &v109 - v16;
  v123 = v3;
  v17 = swift_allocBox();
  v19 = v18;
  sub_21BC62014();
  type metadata accessor for ChecklistStateVars(0);
  sub_21BC65FE8(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars, protocol conformance descriptor for ChecklistStateVars);
  v118 = v19;
  sub_21BE2864C();
  v20 = *(v2 + 24);
  v127 = *(v2 + 16);
  v21 = *(v2 + 32);
  v163 = *(v2 + 40);
  v164 = *(v2 + 48);
  v166[0] = v20;
  if (v20 >> 62)
  {
    v22 = sub_21BE2951C();
  }

  else
  {
    v22 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v138 = v17;
  v165 = v21;
  v126 = v21;
  if (v22)
  {
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v24 = objc_opt_self();
    sub_21BBA3854(v166, &v149, &qword_27CDB5F20, &unk_21BE33BA0);
    sub_21BBA3854(&v165, &v149, &qword_27CDB5CC8, &qword_21BE36190);
    v25 = [v24 bundleForClass_];
    v26 = sub_21BE2599C();
    v124 = v27;
    v125 = v26;

    v28 = sub_21BC62170();
    v30 = v29;
    v31 = [v24 bundleForClass_];
    v32 = sub_21BE2599C();
    v34 = v33;

    v35 = v129;
    sub_21BC62694(v129);
    v36 = swift_allocObject();
    v37 = *(v2 + 48);
    v36[3] = *(v2 + 32);
    v36[4] = v37;
    v38 = *(v2 + 80);
    v36[5] = *(v2 + 64);
    v36[6] = v38;
    v39 = *(v2 + 16);
    v36[1] = *v2;
    v36[2] = v39;
    v160 = &type metadata for SharedFamilyGroceryItem;
    v161 = sub_21BBDAA6C();
    v40 = swift_allocObject();
    v159 = v40;
    v41 = v126;
    *(v40 + 16) = v127;
    *(v40 + 24) = v20;
    v42 = v163;
    *(v40 + 32) = v41;
    *(v40 + 40) = v42;
    *(v40 + 48) = v164;
    v149 = v125;
    v150 = v124;
    v151 = v28;
    v152 = v30;
    v153 = v32;
    v154 = v34;
    sub_21BBA3854(v35, v128, &qword_27CDB80E0, &qword_21BE4D190);
    sub_21BC65D2C(v2, &v141);
    sub_21BC65D64();
    v43 = sub_21BE2852C();
    sub_21BB3A4CC(v35, &qword_27CDB80E0, &qword_21BE4D190);
    v162 = v43;
    v157 = v36;
    v158 = 0;
    v155 = 0;
    v156 = sub_21BC6960C;
    sub_21BBC7A18(&v149, v134);
    swift_storeEnumTagMultiPayload();
    v131 = sub_21BBC24D4();
    v44 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8128, &qword_21BE3AE20);
    v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8130, &qword_21BE3ED60);
    v46 = sub_21BBC2528();
    v47 = sub_21BB41FA4();
    v48 = sub_21BB3B038(&qword_27CDB8138, &qword_27CDB8130, &qword_21BE3ED60, MEMORY[0x277CE14C0]);
    v49 = MEMORY[0x277D837D0];
    v141 = &type metadata for ChecklistNotSetupButtonCell;
    v142 = MEMORY[0x277D837D0];
    v50 = MEMORY[0x277CE0BD8];
    v143 = v45;
    v144 = MEMORY[0x277CE0BD8];
    v145 = v46;
    v146 = v47;
    v51 = MEMORY[0x277CE0BC8];
    v147 = v48;
    v148 = MEMORY[0x277CE0BC8];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v141 = v132;
    v142 = v49;
    v143 = v45;
    v144 = v50;
    v145 = OpaqueTypeConformance2;
    v146 = v47;
    v147 = v48;
    v148 = v51;
    v53 = swift_getOpaqueTypeConformance2();
    v54 = sub_21BC65F2C();
    v141 = v135;
    v142 = v44;
    v143 = v53;
    v144 = v54;
    swift_getOpaqueTypeConformance2();
    v55 = v133;
    sub_21BE2784C();
    sub_21BBC7A74(&v149);
  }

  else
  {
    type metadata accessor for ConfirmChildAgeViewModel();
    v56 = swift_getObjCClassFromMetadata();
    v57 = objc_opt_self();
    sub_21BBA3854(v166, &v149, &qword_27CDB5F20, &unk_21BE33BA0);
    sub_21BBA3854(&v165, &v149, &qword_27CDB5CC8, &qword_21BE36190);
    v58 = v56;
    v59 = [v57 bundleForClass_];
    v60 = sub_21BE2599C();
    v111 = v61;
    v112 = v60;

    v114 = v57;
    v115 = v58;
    v62 = v58;
    v63 = [v57 bundleForClass_];
    v64 = sub_21BE2599C();
    v113 = v10;
    v65 = v64;
    v67 = v66;

    v68 = v129;
    sub_21BC62694(v129);
    v69 = swift_allocObject();
    v70 = *(v2 + 48);
    v69[3] = *(v2 + 32);
    v69[4] = v70;
    v71 = *(v2 + 80);
    v69[5] = *(v2 + 64);
    v69[6] = v71;
    v72 = *(v2 + 16);
    v69[1] = *v2;
    v69[2] = v72;
    sub_21BC65D2C(v2, &v149);
    v73 = [v57 bundleForClass_];
    v74 = sub_21BE2599C();
    v110 = v75;

    v160 = &type metadata for SharedFamilyGroceryItem;
    v161 = sub_21BBDAA6C();
    v76 = swift_allocObject();
    v159 = v76;
    v77 = v126;
    *(v76 + 16) = v127;
    *(v76 + 24) = v20;
    v78 = v163;
    *(v76 + 32) = v77;
    *(v76 + 40) = v78;
    *(v76 + 48) = v164;
    v149 = v112;
    v150 = v111;
    v151 = v65;
    v152 = v67;
    sub_21BBA3854(v68, v128, &qword_27CDB80E0, &qword_21BE4D190);
    sub_21BC65D64();
    v79 = sub_21BE2852C();
    sub_21BB3A4CC(v68, &qword_27CDB80E0, &qword_21BE4D190);
    v162 = v79;
    v155 = v69;
    v156 = v74;
    v157 = v110;
    v158 = 0;
    v153 = 0;
    v154 = sub_21BC66084;
    v80 = [v114 bundleForClass_];
    v81 = sub_21BE2599C();
    v83 = v82;
    v127 = v82;

    *&v140 = v81;
    *(&v140 + 1) = v83;
    v139 = *(v2 + 72);
    v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
    v84 = sub_21BE2841C();
    v112 = &v109;
    LODWORD(v111) = v143;
    MEMORY[0x28223BE20](v84);
    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8130, &qword_21BE3ED60);
    v86 = sub_21BBC2528();
    v129 = sub_21BB41FA4();
    v130 = sub_21BB3B038(&qword_27CDB8138, &qword_27CDB8130, &qword_21BE3ED60, MEMORY[0x277CE14C0]);
    v87 = v86;
    sub_21BE280EC();

    sub_21BBC79C4(&v149);
    v88 = [v114 bundleForClass_];
    v89 = sub_21BE2599C();
    v91 = v90;
    v127 = v90;

    v141 = v89;
    v142 = v91;
    v140 = *(v2 + 56);
    v92 = sub_21BE2841C();
    v115 = &v109;
    LODWORD(v114) = v151;
    MEMORY[0x28223BE20](v92);
    v149 = &type metadata for ChecklistNotSetupButtonCell;
    v150 = MEMORY[0x277D837D0];
    v151 = v85;
    v126 = v85;
    v152 = MEMORY[0x277CE0BD8];
    v153 = v87;
    v154 = v129;
    v155 = v130;
    v156 = MEMORY[0x277CE0BC8];
    v128 = MEMORY[0x277CDEDF8];
    v93 = swift_getOpaqueTypeConformance2();
    v94 = v132;
    v95 = v125;
    sub_21BE280EC();

    (*(v119 + 8))(v95, v94);
    v97 = v122;
    v96 = v123;
    v98 = v120;
    (*(v122 + 16))(v120, v118, v123);
    v99 = v121;
    sub_21BE2863C();
    v100 = *(v97 + 8);
    v100(v98, v96);
    swift_getKeyPath();
    sub_21BE2865C();

    v100(v99, v96);

    v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8128, &qword_21BE3AE20);
    v149 = v94;
    v150 = MEMORY[0x277D837D0];
    v151 = v126;
    v152 = MEMORY[0x277CE0BD8];
    v153 = v93;
    v154 = v129;
    v155 = v130;
    v156 = MEMORY[0x277CE0BC8];
    v107 = swift_getOpaqueTypeConformance2();
    v108 = sub_21BC65F2C();
    v101 = v113;
    v102 = v135;
    v103 = v124;
    sub_21BE2812C();

    (*(v116 + 8))(v103, v102);
    v104 = v117;
    v105 = v136;
    (*(v117 + 16))(v134, v101, v136);
    swift_storeEnumTagMultiPayload();
    sub_21BBC24D4();
    v149 = v102;
    v150 = v127;
    v151 = v107;
    v152 = v108;
    swift_getOpaqueTypeConformance2();
    v55 = v133;
    sub_21BE2784C();
    (*(v104 + 8))(v101, v105);
  }

  sub_21BB4B810(v55, v137);

  return result;
}

uint64_t sub_21BC648C0@<X0>(void (*a1)(char *, uint64_t)@<X0>, _OWORD *a2@<X1>, char *a3@<X8>)
{
  v54 = a1;
  v61 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8158, &unk_21BE3AE50);
  MEMORY[0x28223BE20](v4 - 8);
  v58 = &v50 - v5;
  v55 = sub_21BE271FC();
  v6 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55A0, &unk_21BE32460);
  v53 = *(v62 - 8);
  v9 = MEMORY[0x28223BE20](v62);
  v60 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v50 - v11;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8160, &unk_21BE3AE60);
  v57 = *(v59 - 8);
  v13 = MEMORY[0x28223BE20](v59);
  v56 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v50 - v15;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = objc_opt_self();
  v19 = [v18 bundleForClass_];
  v20 = sub_21BE2599C();
  v22 = v21;

  v63[0] = v20;
  v63[1] = v22;
  sub_21BB41FA4();

  sub_21BE2845C();
  sub_21BE271EC();
  sub_21BB3B038(&qword_27CDB5598, &unk_27CDB55A0, &unk_21BE32460, MEMORY[0x277CDF028]);
  v23 = v16;
  v52 = v16;
  v24 = v62;
  sub_21BE27FBC();
  (*(v6 + 8))(v8, v55);
  v25 = v53;
  v54 = *(v53 + 8);
  v55 = v53 + 8;
  v54(v12, v24);
  v26 = [v18 bundleForClass_];
  v27 = sub_21BE2599C();
  v29 = v28;

  v63[12] = v27;
  v63[13] = v29;
  v30 = v58;
  sub_21BE26DEC();
  v31 = sub_21BE26DFC();
  (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
  v32 = swift_allocObject();
  v33 = a2[3];
  v32[3] = a2[2];
  v32[4] = v33;
  v34 = a2[5];
  v32[5] = a2[4];
  v32[6] = v34;
  v35 = a2[1];
  v32[1] = *a2;
  v32[2] = v35;
  sub_21BC65D2C(a2, v63);
  v51 = v12;
  sub_21BE2844C();
  v36 = v56;
  v37 = v57;
  v38 = *(v57 + 16);
  v39 = v23;
  v40 = v59;
  v38(v56, v39, v59);
  v41 = *(v25 + 16);
  v42 = v60;
  v43 = v12;
  v44 = v62;
  v41(v60, v43, v62);
  v45 = v61;
  v38(v61, v36, v40);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8168, &qword_21BE48080);
  v41(&v45[*(v46 + 48)], v42, v44);
  v47 = v54;
  v54(v51, v44);
  v48 = *(v37 + 8);
  v48(v52, v40);
  v47(v42, v44);
  return (v48)(v36, v40);
}

double sub_21BC64EF0(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5BC0, &qword_21BE33380);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - v3;
  v5 = swift_projectBox();
  (*(v2 + 16))(v4, v5, v1);
  sub_21BE2862C();
  (*(v2 + 8))(v4, v1);
  v6 = v9[3];
  swift_beginAccess();
  if (*(v6 + 17) == 1)
  {
    *(v6 + 17) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v9[-2] = v6;
    LOBYTE(v9[-1]) = 1;
    v9[2] = v6;
    sub_21BC65FE8(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars, protocol conformance descriptor for ChecklistStateVars);
    sub_21BE25F0C();
  }

  return result;
}

uint64_t sub_21BC650F8@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  sub_21BB41FA4();
  result = sub_21BE27DBC();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_21BC651D8@<X0>(_OWORD *a1@<X0>, char *a2@<X8>)
{
  v64 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8158, &unk_21BE3AE50);
  MEMORY[0x28223BE20](v3 - 8);
  v61 = &v53 - v4;
  v58 = sub_21BE271FC();
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55A0, &unk_21BE32460);
  v65 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v63 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v53 - v10;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8160, &unk_21BE3AE60);
  v60 = *(v62 - 8);
  v12 = MEMORY[0x28223BE20](v62);
  v59 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v53 - v14;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = objc_opt_self();
  v18 = [v17 bundleForClass_];
  v19 = sub_21BE2599C();
  v21 = v20;

  v67 = v19;
  v68 = v21;
  v22 = swift_allocObject();
  v23 = a1[3];
  v22[3] = a1[2];
  v22[4] = v23;
  v24 = a1[5];
  v22[5] = a1[4];
  v22[6] = v24;
  v25 = a1[1];
  v22[1] = *a1;
  v22[2] = v25;
  sub_21BC65D2C(a1, v66);
  v56 = sub_21BB41FA4();
  sub_21BE2845C();
  sub_21BE271EC();
  sub_21BB3B038(&qword_27CDB5598, &unk_27CDB55A0, &unk_21BE32460, MEMORY[0x277CDF028]);
  v26 = v15;
  v55 = v7;
  sub_21BE27FBC();
  (*(v57 + 8))(v6, v58);
  v27 = v65;
  v57 = *(v65 + 8);
  v58 = v65 + 8;
  v28 = v11;
  (v57)(v11, v7);
  v29 = [v17 bundleForClass_];
  v30 = sub_21BE2599C();
  v32 = v31;

  v67 = v30;
  v68 = v32;
  v33 = v61;
  sub_21BE26DEC();
  v34 = sub_21BE26DFC();
  (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
  v35 = swift_allocObject();
  v36 = a1[3];
  v35[3] = a1[2];
  v35[4] = v36;
  v37 = a1[5];
  v35[5] = a1[4];
  v35[6] = v37;
  v38 = a1[1];
  v35[1] = *a1;
  v35[2] = v38;
  sub_21BC65D2C(a1, v66);
  v39 = v28;
  v54 = v28;
  sub_21BE2844C();
  v41 = v59;
  v40 = v60;
  v42 = *(v60 + 16);
  v43 = v62;
  v42(v59, v26, v62);
  v44 = *(v27 + 16);
  v65 = v27 + 16;
  v45 = v63;
  v46 = v39;
  v47 = v55;
  v44(v63, v46, v55);
  v48 = v64;
  v42(v64, v41, v43);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8168, &qword_21BE48080);
  v44(&v48[*(v49 + 48)], v45, v47);
  v50 = v57;
  (v57)(v54, v47);
  v51 = *(v40 + 8);
  v51(v26, v43);
  v50(v45, v47);
  return (v51)(v41, v43);
}

uint64_t sub_21BC65848(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15[-v3];
  v5 = objc_opt_self();
  *&v16 = 0;
  v6 = [v5 urlDestinationTo:11 error:&v16];
  v7 = v16;
  if (v6)
  {
    v8 = v6;
    sub_21BE25B5C();
    v9 = v7;

    v10 = 0;
  }

  else
  {
    v11 = v16;
    v12 = sub_21BE25A8C();

    swift_willThrow();
    v10 = 1;
  }

  v13 = sub_21BE25B9C();
  (*(*(v13 - 8) + 56))(v4, v10, 1, v13);
  sub_21BDEF00C(v4);
  v16 = *(a1 + 56);
  v15[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2840C();
  return sub_21BB3A4CC(v4, &unk_27CDB57F0, &qword_21BE328A0);
}

uint64_t sub_21BC65A04@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  sub_21BB41FA4();
  result = sub_21BE27DBC();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

double sub_21BC65AE4(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5BC0, &qword_21BE33380);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - v3;
  v5 = swift_projectBox();
  (*(v2 + 16))(v4, v5, v1);
  sub_21BE2862C();
  (*(v2 + 8))(v4, v1);
  v6 = v9[3];
  swift_beginAccess();
  if (*(v6 + 17))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v9[-2] = v6;
    LOBYTE(v9[-1]) = 0;
    v9[2] = v6;
    sub_21BC65FE8(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars, protocol conformance descriptor for ChecklistStateVars);
    sub_21BE25F0C();
  }

  else
  {
    *(v6 + 17) = 0;
  }

  return result;
}

unint64_t sub_21BC65D64()
{
  result = qword_27CDB80F0;
  if (!qword_27CDB80F0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB80E0, &qword_21BE4D190);
    v4[0] = sub_21BC65DF0();
    v4[1] = sub_21BC65EA8();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27CDB80F0);
  }

  return result;
}

unint64_t sub_21BC65DF0()
{
  result = qword_27CDB80F8;
  if (!qword_27CDB80F8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8100, &unk_21BE4D1C0);
    v4[0] = sub_21BC65EA8();
    v4[1] = sub_21BB3B038(&qword_27CDB8118, &qword_27CDB8120, &qword_21BE4D1D0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB80F8);
  }

  return result;
}

unint64_t sub_21BC65EA8()
{
  result = qword_27CDB8108;
  if (!qword_27CDB8108)
  {
    v4[2] = v0;
    v4[3] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8110, &unk_21BE3AE10);
    v4[0] = MEMORY[0x277CE1078];
    v4[1] = MEMORY[0x277CDF678];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB8108);
  }

  return result;
}

unint64_t sub_21BC65F2C()
{
  result = qword_27CDB8140;
  if (!qword_27CDB8140)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8128, &qword_21BE3AE20);
    v4[0] = sub_21BC65FE8(&qword_27CDB8148, type metadata accessor for SharedGroceryListFlowView, asc_21BE47F8C);
    v4[1] = sub_21BC66030();
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB8140);
  }

  return result;
}

uint64_t sub_21BC65FE8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21BC66030()
{
  result = qword_27CDB8150;
  if (!qword_27CDB8150)
  {
    result = swift_getWitnessTable(aI_5, &type metadata for SheetModifier, v0, v1);
    atomic_store(result, &qword_27CDB8150);
  }

  return result;
}

uint64_t sub_21BC66160(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, void *a6)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v10 = sub_21BE295BC();
    v23 = v10;
    sub_21BE2950C();
    if (sub_21BE2953C())
    {
      sub_21BB3A2A4(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v17 = *(v10 + 16);
        if (*(v10 + 24) <= v17)
        {
          sub_21BC66810(v17 + 1, a3, a4);
        }

        v10 = v23;
        result = sub_21BE293FC();
        v12 = v23 + 56;
        v13 = -1 << *(v23 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v15 == v19;
            if (v15 == v19)
            {
              v15 = 0;
            }

            v18 |= v20;
            v21 = *(v12 + 8 * v15);
          }

          while (v21 == -1);
          v16 = __clz(__rbit64(~v21)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v23 + 48) + 8 * v16) = v22;
        ++*(v23 + 16);
      }

      while (sub_21BE2953C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v10;
}

void sub_21BC66360(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB81A0, &qword_21BE3AE90);
  v4 = sub_21BE295AC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v18 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v21 = *(*(v3 + 48) + (v18 | (v6 << 6)));
      sub_21BE29ACC();
      sub_21BE28ABC();

      v13 = sub_21BE29B0C();
      v14 = -1 << *(v5 + 32);
      v15 = v13 & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v12 + 8 * (v15 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v14) >> 6;
        while (++v16 != v23 || (v22 & 1) == 0)
        {
          v24 = v16 == v23;
          if (v16 == v23)
          {
            v16 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v16);
          if (v25 != -1)
          {
            v17 = __clz(__rbit64(~v25)) + (v16 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v12 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v12 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v5 + 48) + v17) = v21;
      ++*(v5 + 16);
    }

    v19 = v6;
    while (1)
    {
      v6 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v20 = v7[v6];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v10 = (v20 - 1) & v20;
        goto LABEL_16;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_21BC66810(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = sub_21BE295AC();
  v7 = v6;
  if (*(v5 + 16))
  {
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
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      v20 = sub_21BE293FC();
      v21 = -1 << *(v7 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero((v5 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
}

void sub_21BC66A30(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB6E70, qword_21BE361F0);
  v4 = sub_21BE295AC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_21BE29ACC();
      sub_21BE28ABC();
      v21 = sub_21BE29B0C();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

unint64_t sub_21BC66C94(uint64_t a1, uint64_t a2)
{
  sub_21BE293FC();
  result = sub_21BE294FC();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_21BC66D18()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB81A0, &qword_21BE3AE90);
  v2 = *v0;
  v3 = sub_21BE2959C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void sub_21BC66E58(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_21BE2959C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 56 + 8 * v8)
    {
      memmove(v7, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        v21 = v20;
      }

      while (v14);
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
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_21BC66F98()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB6E70, qword_21BE361F0);
  v2 = *v0;
  v3 = sub_21BE2959C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void sub_21BC670F4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB81A0, &qword_21BE3AE90);
  v4 = sub_21BE295AC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_17:
      v20 = *(*(v3 + 48) + (v17 | (v6 << 6)));
      sub_21BE29ACC();
      sub_21BE28ABC();

      v12 = sub_21BE29B0C();
      v13 = -1 << *(v5 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v11 + 8 * (v14 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        while (++v15 != v22 || (v21 & 1) == 0)
        {
          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v15);
          if (v24 != -1)
          {
            v16 = __clz(__rbit64(~v24)) + (v15 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_29;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v11 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v11 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v5 + 48) + v16) = v20;
      ++*(v5 + 16);
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_27;
      }

      v19 = *(v3 + 56 + 8 * v6);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v9 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v5;
  }
}

void sub_21BC67560(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = sub_21BE295AC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v27 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      v19 = sub_21BE293FC();
      v20 = -1 << *(v7 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v27;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v4 = v7;
  }
}

void sub_21BC6776C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB6E70, qword_21BE361F0);
  v4 = sub_21BE295AC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_21BE29ACC();

      sub_21BE28ABC();
      v20 = sub_21BE29B0C();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

uint64_t sub_21BC679EC(uint64_t *a1, void *a2, unint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_21BE2952C();

    if (v17)
    {

      sub_21BB3A2A4(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v36;
    }

    else
    {
      result = sub_21BE2951C();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = sub_21BC66160(v15, result + 1, a5, a6, a3, a4);
        v28 = *(v27 + 16);
        if (*(v27 + 24) <= v28)
        {
          sub_21BC66810(v28 + 1, a5, a6);
        }

        v29 = v16;
        sub_21BC66C94(v29, v27);

        *v11 = v27;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    sub_21BB3A2A4(0, a3, a4);
    v19 = sub_21BE293FC();
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = sub_21BE2940C();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v30 = *(*(v14 + 48) + 8 * v21);
      *a1 = v30;
      v31 = v30;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = *v11;
      v26 = a2;
      sub_21BC683A4(v26, v21, isUniquelyReferenced_nonNull_native, a5, a6, a3, a4);
      *v11 = v37;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}

uint64_t sub_21BC67C60(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_21BE29ACC();
  sub_21BE28ABC();
  v8 = sub_21BE29B0C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_21BE2995C() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_21BC68534(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_21BC67DB0(_BYTE *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  sub_21BE29ACC();
  sub_21BC5C62C(a2);
  sub_21BE28ABC();

  v6 = sub_21BE29B0C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_54:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_21BC686B4(a2, v8, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    result = 1;
    goto LABEL_57;
  }

  v9 = ~v7;
  while (2)
  {
    v10 = 0xE700000000000000;
    v11 = 0x6E776F6E6B6E75;
    switch(*(*(v5 + 48) + v8))
    {
      case 1:
        v11 = 0x696D694C6D6D6F63;
        v10 = 0xEE006D6574497374;
        break;
      case 2:
        v11 = 0xD000000000000013;
        v10 = 0x800000021BE543D0;
        break;
      case 3:
        v11 = 0xD000000000000014;
        v10 = 0x800000021BE543F0;
        break;
      case 4:
        v11 = 0x6E6F697461636F6CLL;
        v10 = 0xEC0000006D657449;
        break;
      case 5:
        v11 = 0xD000000000000013;
        v10 = 0x800000021BE54420;
        break;
      case 6:
        v11 = 0x69636966656E6562;
        v10 = 0xEF6D657449797261;
        break;
      case 7:
        v10 = 0xEE006D6574497375;
        v11 = 0x6C5064756F6C4369;
        break;
      case 8:
        v10 = 0xE800000000000000;
        v11 = 0x6D657449656D6F68;
        break;
      case 9:
        v11 = 0xD000000000000013;
        v10 = 0x800000021BE54460;
        break;
      case 0xA:
        v11 = 0x736143656C707061;
        v10 = 0xED00006D65744968;
        break;
      case 0xB:
        v11 = 0x49746361746E6F63;
        v10 = 0xEB000000006D6574;
        break;
      case 0xC:
        v11 = 0xD000000000000012;
        v10 = 0x800000021BE54490;
        break;
      case 0xD:
        v11 = 0xD000000000000015;
        v10 = 0x800000021BE544B0;
        break;
      case 0xE:
        v11 = 0xD000000000000018;
        v10 = 0x800000021BE544D0;
        break;
      case 0xF:
        v11 = 0xD000000000000012;
        v10 = 0x800000021BE544F0;
        break;
      default:
        break;
    }

    v12 = 0xE700000000000000;
    v13 = 0x6E776F6E6B6E75;
    switch(a2)
    {
      case 1:
        v12 = 0xEE006D6574497374;
        if (v11 == 0x696D694C6D6D6F63)
        {
          goto LABEL_48;
        }

        goto LABEL_49;
      case 2:
        v12 = 0x800000021BE543D0;
        if (v11 != 0xD000000000000013)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      case 3:
        v12 = 0x800000021BE543F0;
        if (v11 != 0xD000000000000014)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      case 4:
        v12 = 0xEC0000006D657449;
        if (v11 != 0x6E6F697461636F6CLL)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      case 5:
        v12 = 0x800000021BE54420;
        if (v11 != 0xD000000000000013)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      case 6:
        v12 = 0xEF6D657449797261;
        if (v11 != 0x69636966656E6562)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      case 7:
        v12 = 0xEE006D6574497375;
        if (v11 != 0x6C5064756F6C4369)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      case 8:
        v12 = 0xE800000000000000;
        if (v11 != 0x6D657449656D6F68)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      case 9:
        v12 = 0x800000021BE54460;
        if (v11 != 0xD000000000000013)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      case 10:
        v13 = 0x736143656C707061;
        v12 = 0xED00006D65744968;
        goto LABEL_47;
      case 11:
        v12 = 0xEB000000006D6574;
        if (v11 != 0x49746361746E6F63)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      case 12:
        v12 = 0x800000021BE54490;
        if (v11 != 0xD000000000000012)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      case 13:
        v12 = 0x800000021BE544B0;
        if (v11 != 0xD000000000000015)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      case 14:
        v12 = 0x800000021BE544D0;
        if (v11 != 0xD000000000000018)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      case 15:
        v12 = 0x800000021BE544F0;
        if (v11 != 0xD000000000000012)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      default:
LABEL_47:
        if (v11 != v13)
        {
          goto LABEL_49;
        }

LABEL_48:
        if (v10 != v12)
        {
LABEL_49:
          v14 = sub_21BE2995C();

          if (v14)
          {
            goto LABEL_56;
          }

          v8 = (v8 + 1) & v9;
          if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
          {
            goto LABEL_54;
          }

          continue;
        }

LABEL_56:
        result = 0;
        LOBYTE(a2) = *(*(v5 + 48) + v8);
LABEL_57:
        *a1 = a2;
        return result;
    }
  }
}

void sub_21BC683A4(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, void *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    v13 = a7;
    sub_21BC66810(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_21BC66E58(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_21BC67560(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = sub_21BE293FC();
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    sub_21BB3A2A4(0, v12, v13);
    do
    {
      v18 = *(*(v14 + 48) + 8 * a2);
      v19 = sub_21BE2940C();

      if (v19)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + 8 * a2) = a1;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return;
  }

  __break(1u);
LABEL_15:
  sub_21BE299EC();
  __break(1u);
}

void sub_21BC68534(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_21BC66A30(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_21BC66F98();
      goto LABEL_16;
    }

    sub_21BC6776C(v8 + 1);
  }

  v10 = *v4;
  sub_21BE29ACC();
  sub_21BE28ABC();
  v11 = sub_21BE29B0C();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == a1 && v14[1] == a2;
      if (v15 || (sub_21BE2995C() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = a1;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_21BE299EC();
  __break(1u);
}

void sub_21BC686B4(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_21BC66360(v7 + 1);
    }

    else
    {
      if (v8 > v7)
      {
        sub_21BC66D18();
        goto LABEL_61;
      }

      sub_21BC670F4(v7 + 1);
    }

    v9 = *v3;
    sub_21BE29ACC();
    sub_21BC5C62C(a1);
    sub_21BE28ABC();

    v10 = sub_21BE29B0C();
    v11 = -1 << *(v9 + 32);
    a2 = v10 & ~v11;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v12 = ~v11;
      while (2)
      {
        v13 = 0xE700000000000000;
        v14 = 0x6E776F6E6B6E75;
        switch(*(*(v9 + 48) + a2))
        {
          case 1:
            v14 = 0x696D694C6D6D6F63;
            v13 = 0xEE006D6574497374;
            break;
          case 2:
            v14 = 0xD000000000000013;
            v13 = 0x800000021BE543D0;
            break;
          case 3:
            v14 = 0xD000000000000014;
            v13 = 0x800000021BE543F0;
            break;
          case 4:
            v14 = 0x6E6F697461636F6CLL;
            v13 = 0xEC0000006D657449;
            break;
          case 5:
            v14 = 0xD000000000000013;
            v13 = 0x800000021BE54420;
            break;
          case 6:
            v14 = 0x69636966656E6562;
            v13 = 0xEF6D657449797261;
            break;
          case 7:
            v13 = 0xEE006D6574497375;
            v14 = 0x6C5064756F6C4369;
            break;
          case 8:
            v13 = 0xE800000000000000;
            v14 = 0x6D657449656D6F68;
            break;
          case 9:
            v14 = 0xD000000000000013;
            v13 = 0x800000021BE54460;
            break;
          case 0xA:
            v14 = 0x736143656C707061;
            v13 = 0xED00006D65744968;
            break;
          case 0xB:
            v14 = 0x49746361746E6F63;
            v13 = 0xEB000000006D6574;
            break;
          case 0xC:
            v14 = 0xD000000000000012;
            v13 = 0x800000021BE54490;
            break;
          case 0xD:
            v14 = 0xD000000000000015;
            v13 = 0x800000021BE544B0;
            break;
          case 0xE:
            v14 = 0xD000000000000018;
            v13 = 0x800000021BE544D0;
            break;
          case 0xF:
            v14 = 0xD000000000000012;
            v13 = 0x800000021BE544F0;
            break;
          default:
            break;
        }

        v15 = 0xE700000000000000;
        v16 = 0x6E776F6E6B6E75;
        switch(a1)
        {
          case 1:
            v15 = 0xEE006D6574497374;
            if (v14 == 0x696D694C6D6D6F63)
            {
              goto LABEL_55;
            }

            goto LABEL_56;
          case 2:
            v15 = 0x800000021BE543D0;
            if (v14 != 0xD000000000000013)
            {
              goto LABEL_56;
            }

            goto LABEL_55;
          case 3:
            v15 = 0x800000021BE543F0;
            if (v14 != 0xD000000000000014)
            {
              goto LABEL_56;
            }

            goto LABEL_55;
          case 4:
            v15 = 0xEC0000006D657449;
            if (v14 != 0x6E6F697461636F6CLL)
            {
              goto LABEL_56;
            }

            goto LABEL_55;
          case 5:
            v15 = 0x800000021BE54420;
            if (v14 != 0xD000000000000013)
            {
              goto LABEL_56;
            }

            goto LABEL_55;
          case 6:
            v15 = 0xEF6D657449797261;
            if (v14 != 0x69636966656E6562)
            {
              goto LABEL_56;
            }

            goto LABEL_55;
          case 7:
            v15 = 0xEE006D6574497375;
            if (v14 != 0x6C5064756F6C4369)
            {
              goto LABEL_56;
            }

            goto LABEL_55;
          case 8:
            v15 = 0xE800000000000000;
            if (v14 != 0x6D657449656D6F68)
            {
              goto LABEL_56;
            }

            goto LABEL_55;
          case 9:
            v15 = 0x800000021BE54460;
            if (v14 != 0xD000000000000013)
            {
              goto LABEL_56;
            }

            goto LABEL_55;
          case 10:
            v16 = 0x736143656C707061;
            v15 = 0xED00006D65744968;
            goto LABEL_54;
          case 11:
            v15 = 0xEB000000006D6574;
            if (v14 != 0x49746361746E6F63)
            {
              goto LABEL_56;
            }

            goto LABEL_55;
          case 12:
            v15 = 0x800000021BE54490;
            if (v14 != 0xD000000000000012)
            {
              goto LABEL_56;
            }

            goto LABEL_55;
          case 13:
            v15 = 0x800000021BE544B0;
            if (v14 != 0xD000000000000015)
            {
              goto LABEL_56;
            }

            goto LABEL_55;
          case 14:
            v15 = 0x800000021BE544D0;
            if (v14 != 0xD000000000000018)
            {
              goto LABEL_56;
            }

            goto LABEL_55;
          case 15:
            v15 = 0x800000021BE544F0;
            if (v14 != 0xD000000000000012)
            {
              goto LABEL_56;
            }

            goto LABEL_55;
          default:
LABEL_54:
            if (v14 != v16)
            {
              goto LABEL_56;
            }

LABEL_55:
            if (v13 == v15)
            {
              goto LABEL_64;
            }

LABEL_56:
            v17 = sub_21BE2995C();

            if (v17)
            {
              goto LABEL_65;
            }

            a2 = (a2 + 1) & v12;
            if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
            {
              break;
            }

            continue;
        }

        break;
      }
    }
  }

LABEL_61:
  v18 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = a1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_64:

LABEL_65:
    sub_21BE299EC();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v21;
  }
}

void sub_21BC68CD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = a3;
  v46 = a2;
  v3 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_21BE2950C();
    sub_21BB3A2A4(0, &qword_27CDB60E0, 0x277D445D8);
    sub_21BC692B8();
    sub_21BE28E7C();
    v3 = v54;
    v4 = v55;
    v5 = v56;
    v6 = v57;
    v7 = v58;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v9 = ~v8;
    v10 = -v8;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v7 = v11 & *(a1 + 56);

    v5 = v9;
    v6 = 0;
  }

  v42 = v5;
  v12 = (v5 + 64) >> 6;
  v44 = v4;
  v45 = v3;
  for (i = v12; ; v12 = i)
  {
    if (v3 < 0)
    {
      v18 = sub_21BE2953C();
      if (!v18 || (v59 = v18, sub_21BB3A2A4(0, &qword_27CDB60E0, 0x277D445D8), swift_dynamicCast(), v17 = v52, v15 = v6, v16 = v7, !v52))
      {
LABEL_35:
        sub_21BC50480(v3);
        return;
      }
    }

    else
    {
      v13 = v6;
      v14 = v7;
      v15 = v6;
      if (!v7)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= v12)
          {
            goto LABEL_35;
          }

          v14 = *(v4 + 8 * v15);
          ++v13;
          if (v14)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
        goto LABEL_37;
      }

LABEL_14:
      v16 = (v14 - 1) & v14;
      v17 = *(*(v3 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
      if (!v17)
      {
        goto LABEL_35;
      }
    }

    v50 = v17;
    v47 = v16;
    v48 = v15;
    v19 = *(v46 + 32);
    if (v19 >> 62)
    {
      break;
    }

    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
      goto LABEL_20;
    }

LABEL_8:

    v7 = v47;
    v6 = v48;
    v4 = v44;
    v3 = v45;
  }

  v20 = sub_21BE2951C();
  if (!v20)
  {
    goto LABEL_8;
  }

LABEL_20:
  if (v20 >= 1)
  {
    v21 = 0;
    v51 = v19 & 0xC000000000000001;
    while (1)
    {
      if (v51)
      {
        v22 = MEMORY[0x21CF047C0](v21, v19);
      }

      else
      {
        v22 = *(v19 + 8 * v21 + 32);
      }

      v23 = v22;
      v24 = [v22 appleID];
      if (v24)
      {
        v25 = v24;
        v26 = sub_21BE28A0C();
        v28 = v27;

        v29 = [v50 emails];
        v30 = sub_21BE28C3C();

        v52 = v26;
        v53 = v28;
        MEMORY[0x28223BE20](v31);
        v41 = &v52;
        LOBYTE(v26) = sub_21BC9BF08(sub_21BC69628, v40, v30);

        if (v26)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v32 = [v23 memberPhoneNumbers];
        if (v32)
        {
          v33 = v32;
          v34 = sub_21BE28A0C();
          v36 = v35;

          v37 = [v50 phones];
          v38 = sub_21BE28C3C();

          v52 = v34;
          v53 = v36;
          MEMORY[0x28223BE20](v39);
          v41 = &v52;
          LOBYTE(v37) = sub_21BC9BF08(sub_21BBF0CC4, v40, v38);

          if (v37)
          {
LABEL_32:
            sub_21BC679EC(&v52, v23, &qword_280BD8A40, 0x277D08268, &qword_27CDB8198, &qword_21BE3AE88);

            goto LABEL_23;
          }
        }
      }

LABEL_23:
      if (v20 == ++v21)
      {
        goto LABEL_8;
      }
    }
  }

LABEL_37:
  __break(1u);
}

uint64_t objectdestroyTm_5()
{

  return swift_deallocObject();
}

uint64_t sub_21BC691F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21BE2723C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BC6925C(uint64_t a1)
{
  v2 = sub_21BE2723C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21BC692B8()
{
  result = qword_27CDB8190;
  if (!qword_27CDB8190)
  {
    v3 = sub_21BB3A2A4(255, &qword_27CDB60E0, 0x277D445D8);
    result = swift_getWitnessTable(MEMORY[0x277D85378], v3, v0, v1);
    atomic_store(result, &qword_27CDB8190);
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_21BC6936C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_21BC693B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21BC6941C()
{
  result = qword_27CDB81A8;
  if (!qword_27CDB81A8)
  {
    v10[20] = v0;
    v10[21] = v1;
    v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB80E8, &unk_21BE3AE00);
    v8 = sub_21BBC24D4();
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB80C8, &qword_21BE3ADE0);
    v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8128, &qword_21BE3AE20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB80C0, &qword_21BE3ADD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8130, &qword_21BE3ED60);
    sub_21BBC2528();
    v5 = sub_21BB41FA4();
    v6 = sub_21BB3B038(&qword_27CDB8138, &qword_27CDB8130, &qword_21BE3ED60, MEMORY[0x277CE14C0]);
    v7 = MEMORY[0x277CE0BC8];
    v10[6] = swift_getOpaqueTypeConformance2();
    v10[7] = v5;
    v10[8] = v6;
    v10[9] = v7;
    v10[2] = v3;
    v10[3] = v4;
    v10[4] = swift_getOpaqueTypeConformance2();
    v10[5] = sub_21BC65F2C();
    v10[0] = v8;
    v10[1] = swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v9, v10);
    atomic_store(result, &qword_27CDB81A8);
  }

  return result;
}

uint64_t sub_21BC69644(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = sub_21BE28A0C();
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = *(*(v5 + 64) + 40);
  *v8 = a2;
  v8[1] = v6;
  v8[2] = v7;
  v9 = a2;

  return MEMORY[0x282200948](v5);
}

uint64_t FamilyMemberWithSharedAppleCard.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  sub_21BE2941C();
  sub_21BE29AEC();
  if (v2)
  {
    sub_21BE28ABC();
  }

  sub_21BE29AEC();
  if (v4)
  {
    return sub_21BE29AEC();
  }

  sub_21BE29AEC();
  return MEMORY[0x21CF04C80](v3);
}

uint64_t FamilyMemberWithSharedAppleCard.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  sub_21BE29ACC();
  sub_21BE2941C();
  sub_21BE29AEC();
  if (v1)
  {
    sub_21BE28ABC();
  }

  sub_21BE29AEC();
  sub_21BE29AEC();
  if (!v3)
  {
    MEMORY[0x21CF04C80](v2);
  }

  return sub_21BE29B0C();
}

uint64_t sub_21BC69870()
{
  v1 = *(v0 + 24);
  v2 = v0[4];
  v3 = *(v0 + 40);
  v6 = *v0;
  v7 = *(v0 + 1);
  v8 = v1;
  v9 = v2;
  v10 = v3;
  sub_21BE29ACC();
  FamilyMemberWithSharedAppleCard.hash(into:)(v5);
  return sub_21BE29B0C();
}

uint64_t sub_21BC698E0(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = v1[4];
  v4 = *(v1 + 40);
  v7 = *v1;
  v8 = *(v1 + 1);
  v9 = v2;
  v10 = v3;
  v11 = v4;
  sub_21BE29ACC();
  FamilyMemberWithSharedAppleCard.hash(into:)(v6);
  return sub_21BE29B0C();
}

uint64_t sub_21BC69960()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  return v1;
}

uint64_t sub_21BC699D4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  return v1;
}

uint64_t sub_21BC69A5C(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  v3 = sub_21BE26A4C();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_21BE28D7C();
  v2[9] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();
  v2[10] = v5;
  v2[11] = v4;

  return MEMORY[0x2822009F8](sub_21BC69B50, v5, v4);
}

uint64_t sub_21BC69B50(uint64_t a1)
{
  sub_21BE2614C();
  v2 = sub_21BE26A2C();
  v3 = sub_21BE28FFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21BB35000, v2, v3, "AppleCardFamilySettingsViewModel, appleCardPublisher value changed", v4, 2u);
    MEMORY[0x21CF05C50](v4, -1, -1);
  }

  v6 = v1[7];
  v5 = v1[8];
  v7 = v1[6];

  (*(v6 + 8))(v5, v7);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1[12] = Strong;
  if (Strong)
  {
    v9 = swift_task_alloc();
    v1[13] = v9;
    *v9 = v1;
    v9[1] = sub_21BC69CF4;

    return sub_21BC6A4A4();
  }

  else
  {

    v11 = v1[1];

    return v11();
  }
}

uint64_t sub_21BC69CF4()
{
  v1 = *v0;
  v2 = *(*v0 + 96);

  v3 = *(v1 + 88);
  v4 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_21BC69E34, v4, v3);
}

uint64_t sub_21BC69E34()
{

  v1 = *(v0 + 8);

  return v1();
}

id AppleCardFamilySettingsViewModel.__deallocating_deinit()
{
  sub_21BB3A2A4(0, &qword_280BD6908, 0x277CCA9A0);
  v1 = [swift_getObjCClassFromMetadata() defaultCenter];
  [v1 removeObserver_];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for AppleCardFamilySettingsViewModel(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

double sub_21BC6A178()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  v5 = sub_21BE26A4C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE2614C();
  v9 = sub_21BE26A2C();
  v10 = sub_21BE28FFC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_21BB35000, v9, v10, "AppleCardFamilySettingsViewModel, got notification to update service account", v11, 2u);
    MEMORY[0x21CF05C50](v11, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  v12 = sub_21BE28DAC();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  sub_21BE28D7C();
  v13 = v1;
  v14 = sub_21BE28D6C();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = v13;
  sub_21BBA932C(0, 0, v4, &unk_21BE3B390, v15);

  return result;
}

uint64_t sub_21BC6A3B0()
{
  v0[2] = sub_21BE28D7C();
  v0[3] = sub_21BE28D6C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21BBAFDA8;

  return sub_21BC6A4A4();
}

uint64_t sub_21BC6A4A4()
{
  v1[25] = v0;
  v2 = sub_21BE26A4C();
  v1[26] = v2;
  v1[27] = *(v2 - 8);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = sub_21BE28D7C();
  v1[34] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v1[35] = v4;
  v1[36] = v3;

  return MEMORY[0x2822009F8](sub_21BC6A5CC, v4, v3);
}

uint64_t sub_21BC6A5CC()
{
  v1 = v0[25];
  v2 = OBJC_IVAR____TtC14FamilyCircleUI32AppleCardFamilySettingsViewModel_appleCardStore;
  v0[37] = OBJC_IVAR____TtC14FamilyCircleUI32AppleCardFamilySettingsViewModel_appleCardStore;
  if (*(*__swift_project_boxed_opaque_existential_1Tm((v1 + v2), *(v1 + v2 + 24)) + qword_280BDCB78) == 1)
  {
    v3 = (v0[25] + OBJC_IVAR____TtC14FamilyCircleUI32AppleCardFamilySettingsViewModel_familyCircleStore);
    v4 = v3[3];
    v5 = v3[4];
    __swift_project_boxed_opaque_existential_1Tm(v3, v4);
    v6 = (*(v5 + 8))(v4, v5);
    v0[38] = v6;
    if (v6)
    {
      v0[39] = sub_21BE28D6C();
      v8 = sub_21BE28D0C();
      v0[40] = v8;
      v0[41] = v7;

      return MEMORY[0x2822009F8](sub_21BC6A850, v8, v7);
    }

    sub_21BE2614C();
    v9 = sub_21BE26A2C();
    v10 = sub_21BE28FFC();
    v17 = os_log_type_enabled(v9, v10);
    v12 = v0[29];
    v14 = v0[26];
    v13 = v0[27];
    if (v17)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = "AppleCardFamilySettingsViewModel, no family";
      goto LABEL_10;
    }
  }

  else
  {

    sub_21BE2614C();
    v9 = sub_21BE26A2C();
    v10 = sub_21BE28FFC();
    v11 = os_log_type_enabled(v9, v10);
    v13 = v0[27];
    v12 = v0[28];
    v14 = v0[26];
    if (v11)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = "AppleCardFamilySettingsViewModel, not showing apple card row, no need to load model";
LABEL_10:
      _os_log_impl(&dword_21BB35000, v9, v10, v16, v15, 2u);
      MEMORY[0x21CF05C50](v15, -1, -1);
    }
  }

  (*(v13 + 8))(v12, v14);

  v18 = v0[1];

  return v18();
}

uint64_t sub_21BC6A850()
{
  v1 = v0[38];
  v2 = v0[25];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8230, &unk_21BE3B110);
  v0[42] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8238, &unk_21BE4DC00);
  v0[43] = v4;
  v5 = sub_21BE28D6C();
  v0[44] = v5;
  v6 = swift_task_alloc();
  v0[45] = v6;
  *(v6 + 16) = v1;
  *(v6 + 24) = v2;
  v7 = swift_task_alloc();
  v0[46] = v7;
  *v7 = v0;
  v7[1] = sub_21BC6A994;
  v8 = MEMORY[0x277D85700];

  return MEMORY[0x282200600](v0 + 24, v3, v4, v5, v8, &unk_21BE3B128, v6, v3);
}

uint64_t sub_21BC6A994()
{
  v1 = *v0;

  v2 = *(v1 + 328);
  v3 = *(v1 + 320);

  return MEMORY[0x2822009F8](sub_21BC6AAF4, v3, v2);
}

uint64_t sub_21BC6AAF4()
{

  v0[47] = v0[24];
  v1 = v0[35];
  v2 = v0[36];

  return MEMORY[0x2822009F8](sub_21BC6AB60, v1, v2);
}

uint64_t sub_21BC6AB60()
{
  v1 = v0[47];

  v0[48] = sub_21BC708F8(v2);

  v0[49] = sub_21BC70798(v1);
  v0[50] = 0;

  v0[51] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v0[52] = v4;
  v0[53] = v3;

  return MEMORY[0x2822009F8](sub_21BC6AC28, v4, v3);
}

uint64_t sub_21BC6AC28()
{
  v1 = v0[48];
  v2 = v0[25];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8240, &qword_21BE3B130);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8248, &qword_21BE3B138);
  v5 = sub_21BE28D6C();
  v0[54] = v5;
  v6 = swift_task_alloc();
  v0[55] = v6;
  *(v6 + 16) = v1;
  *(v6 + 24) = v2;
  v7 = swift_task_alloc();
  v0[56] = v7;
  *v7 = v0;
  v7[1] = sub_21BC6AD64;
  v8 = MEMORY[0x277D85700];

  return MEMORY[0x282200600](v0 + 16, v3, v4, v5, v8, &unk_21BE3B148, v6, v3);
}

uint64_t sub_21BC6AD64()
{
  v1 = *v0;

  v2 = *(v1 + 424);
  v3 = *(v1 + 416);

  return MEMORY[0x2822009F8](sub_21BC6AEC4, v3, v2);
}

uint64_t sub_21BC6AEC4()
{

  v0[57] = v0[16];
  v0[58] = sub_21BE28D6C();
  v2 = sub_21BE28D0C();
  v0[59] = v2;
  v0[60] = v1;

  return MEMORY[0x2822009F8](sub_21BC6AF60, v2, v1);
}

uint64_t sub_21BC6AF60()
{
  v1 = v0[57];
  v2 = v0[48];
  v3 = v0[25];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8228, &qword_21BE3B0E0);
  v5 = sub_21BE28D6C();
  v0[61] = v5;
  v6 = swift_task_alloc();
  v0[62] = v6;
  v6[2] = v2;
  v6[3] = v3;
  v6[4] = v1;
  v7 = swift_task_alloc();
  v0[63] = v7;
  *v7 = v0;
  v7[1] = sub_21BC6B090;
  v8 = MEMORY[0x277D85700];

  return MEMORY[0x282200600](v0 + 17, &type metadata for FamilyMemberWithSharedAppleCard, v4, v5, v8, &unk_21BE3B158, v6, &type metadata for FamilyMemberWithSharedAppleCard);
}

uint64_t sub_21BC6B090()
{
  v1 = *v0;

  v2 = *(v1 + 480);
  v3 = *(v1 + 472);

  return MEMORY[0x2822009F8](sub_21BC6B214, v3, v2);
}

uint64_t sub_21BC6B214()
{

  v0[64] = v0[17];
  v0[65] = sub_21BE28D6C();
  v2 = sub_21BE28D0C();
  v0[66] = v2;
  v0[67] = v1;

  return MEMORY[0x2822009F8](sub_21BC6B2B4, v2, v1);
}

uint64_t sub_21BC6B2B4(uint64_t a1)
{
  v2 = v1[49];
  v3 = v1[25];
  v4 = sub_21BE28D6C();
  v1[68] = v4;
  v5 = swift_task_alloc();
  v1[69] = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v3;
  v6 = swift_task_alloc();
  v1[70] = v6;
  *v6 = v1;
  v6[1] = sub_21BC6B3B4;
  v7 = v1[42];
  v8 = v1[43];
  v9 = MEMORY[0x277D85700];

  return MEMORY[0x282200600](v1 + 18, v7, v8, v4, v9, &unk_21BE3B168, v5, v7);
}

uint64_t sub_21BC6B3B4()
{
  v1 = *v0;

  v2 = *(v1 + 536);
  v3 = *(v1 + 528);

  return MEMORY[0x2822009F8](sub_21BC6B538, v3, v2);
}

uint64_t sub_21BC6B538()
{

  v0[71] = v0[18];
  v1 = v0[35];
  v2 = v0[36];

  return MEMORY[0x2822009F8](sub_21BC6B5A4, v1, v2);
}

uint64_t sub_21BC6B5A4()
{
  v125 = v0;
  v1 = *(v0 + 512);
  v2 = *(v0 + 200);

  swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  *(v0 + 152) = v1;
  v4 = v2;
  sub_21BE26CBC();

  v6 = sub_21BC708F8(v5);

  v7 = 0;
  v9 = v6 + 64;
  v8 = *(v6 + 64);
  v112 = v0 + 16;
  v113 = v6;
  v10 = -1;
  v11 = -1 << *(v6 + 32);
  if (-v11 < 64)
  {
    v10 = ~(-1 << -v11);
  }

  v12 = v10 & v8;
  v13 = (63 - v11) >> 6;
  v117 = v0;
  if ((v10 & v8) != 0)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v14 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_45;
    }

    if (v14 >= v13)
    {
      break;
    }

    v12 = *(v9 + 8 * v14);
    ++v7;
    if (v12)
    {
      v7 = v14;
      do
      {
LABEL_8:
        v15 = *(*(v113 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v12)))));
        swift_getKeyPath();
        swift_getKeyPath();
        v16 = v15;
        v17 = sub_21BE26C9C();
        v6 = v18;
        v19 = *v18;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v6 = v19;
        v114 = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v19 = sub_21BBBD6B0(0, *(v19 + 2) + 1, 1, v19);
          *v6 = v19;
        }

        KeyPath = *(v19 + 2);
        v21 = *(v19 + 3);
        if (KeyPath >= v21 >> 1)
        {
          v19 = sub_21BBBD6B0((v21 > 1), KeyPath + 1, 1, v19);
          *v6 = v19;
        }

        *(v19 + 2) = KeyPath + 1;
        v22 = &v19[48 * KeyPath];
        *(v22 + 5) = 0;
        *(v22 + 6) = 0;
        v12 &= v12 - 1;
        *(v22 + 4) = v16;
        v22[56] = 1;
        *(v22 + 8) = 0;
        v22[72] = 0;
        v114(v112, 0);

        v0 = v117;
      }

      while (v12);
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v23 = *(*(v0 + 160) + 16);

  if (v23)
  {
    v24 = *(v0 + 304);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v25 = *(*(v0 + 168) + 16);

    v26 = [v24 members];
    sub_21BB3A2A4(0, &qword_280BD8A40, 0x277D08268);
    v27 = sub_21BE28C3C();

    if (v27 >> 62)
    {
      v28 = sub_21BE2951C();
    }

    else
    {
      v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (__OFSUB__(v28, 1))
    {
      __break(1u);
      return result;
    }

    if (v25 == v28 - 1)
    {
      sub_21BE2614C();
      v30 = sub_21BE26A2C();
      v31 = sub_21BE28FFC();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_21BB35000, v30, v31, "AppleCardFamilySettingsViewModel, shared with all family members. Hide Share Card Button.", v32, 2u);
        MEMORY[0x21CF05C50](v32, -1, -1);
      }

      v33 = *(v0 + 248);
      v34 = *(v0 + 208);
      v35 = *(v0 + 216);
      v36 = *(v0 + 200);

      (*(v35 + 8))(v33, v34);
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 577) = 0;
      v37 = v36;
      sub_21BE26CBC();
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 578) = 1;
      v38 = v37;
      sub_21BE26CBC();
      type metadata accessor for ConfirmChildAgeViewModel();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v40 = [objc_opt_self() bundleForClass_];
      v111 = 0x800000021BE59EE0;
      v41 = sub_21BE2599C();
      v43 = v42;

      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 112) = v41;
      *(v0 + 120) = v43;
      v44 = v38;
      sub_21BE26CBC();
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 580) = 1;
      v45 = v44;
      goto LABEL_38;
    }

    sub_21BE2614C();
    v62 = sub_21BE26A2C();
    v63 = sub_21BE28FFC();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_21BB35000, v62, v63, "AppleCardFamilySettingsViewModel, shared with some members", v64, 2u);
      MEMORY[0x21CF05C50](v64, -1, -1);
    }

    v65 = *(v0 + 240);
    v9 = *(v0 + 208);
    v66 = *(v0 + 216);

    (*(v66 + 8))(v65, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
    v116 = swift_allocObject();
    *(v116 + 16) = xmmword_21BE32770;
    v6 = swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v7 = *(v0 + 176);
    v0 = *(v7 + 16);
    if (v0)
    {
      v67 = 0;
      v68 = v7 + 48;
      v13 = MEMORY[0x277D84F90];
      KeyPath = MEMORY[0x277D83800];
      while (v67 < *(v7 + 16))
      {
        v69 = *(v68 - 16);

        v70 = v69;
        *(v117 + 64) = sub_21BE2917C();
        *(v117 + 72) = v71;
        v9 = sub_21BE28B8C();
        v73 = v72;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_21BBBC990(0, *(v13 + 16) + 1, 1, v13);
        }

        v6 = *(v13 + 16);
        v74 = *(v13 + 24);
        if (v6 >= v74 >> 1)
        {
          v13 = sub_21BBBC990((v74 > 1), v6 + 1, 1, v13);
        }

        ++v67;
        *(v13 + 16) = v6 + 1;
        v75 = v13 + 16 * v6;
        *(v75 + 32) = v9;
        *(v75 + 40) = v73;
        v68 += 48;
        if (v0 == v67)
        {
          goto LABEL_37;
        }
      }

LABEL_45:
      __break(1u);
LABEL_46:
      swift_once();
      goto LABEL_41;
    }

    v13 = MEMORY[0x277D84F90];
LABEL_37:
    v0 = v117;
    v115 = *(v117 + 200);

    *(v117 + 184) = v13;
    type metadata accessor for ConfirmChildAgeViewModel();
    v76 = swift_getObjCClassFromMetadata();
    v77 = objc_opt_self();
    v78 = [v77 bundleForClass_];
    sub_21BE2599C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6EF0, &unk_21BE33800);
    sub_21BBBF03C();
    v79 = sub_21BE2897C();
    v81 = v80;

    *(v116 + 56) = MEMORY[0x277D837D0];
    *(v116 + 64) = sub_21BBBEFE8();
    *(v116 + 32) = v79;
    *(v116 + 40) = v81;

    v82 = [v77 bundleForClass_];
    v111 = 0xEC00000048544957;
    sub_21BE2599C();

    v83 = sub_21BE289DC();
    v85 = v84;

    swift_getKeyPath();
    swift_getKeyPath();
    *(v117 + 80) = v83;
    *(v117 + 88) = v85;
    v86 = v115;
    sub_21BE26CBC();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v117 + 576) = 0;
    v87 = v86;
    sub_21BE26CBC();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v117 + 583) = 0;
    v88 = v87;
    sub_21BE26CBC();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v117 + 579) = 1;
    v89 = v88;
  }

  else
  {
    sub_21BE2614C();
    v46 = sub_21BE26A2C();
    v47 = sub_21BE28FFC();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_21BB35000, v46, v47, "AppleCardFamilySettingsViewModel, not sharing with any family members, show share flow", v48, 2u);
      MEMORY[0x21CF05C50](v48, -1, -1);
    }

    v49 = *(v0 + 256);
    v50 = *(v0 + 208);
    v51 = *(v0 + 216);
    v52 = *(v0 + 200);

    (*(v51 + 8))(v49, v50);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 581) = 1;
    v53 = v52;
    sub_21BE26CBC();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 582) = 0;
    v54 = v53;
    sub_21BE26CBC();
    type metadata accessor for ConfirmChildAgeViewModel();
    v55 = swift_getObjCClassFromMetadata();
    v56 = [objc_opt_self() bundleForClass_];
    v111 = 0x800000021BE59F00;
    v57 = sub_21BE2599C();
    v59 = v58;

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 96) = v57;
    *(v0 + 104) = v59;
    v60 = v54;
    sub_21BE26CBC();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 584) = 0;
    v61 = v60;
  }

LABEL_38:
  sub_21BE26CBC();
  v90 = (*(v0 + 200) + OBJC_IVAR____TtC14FamilyCircleUI32AppleCardFamilySettingsViewModel__persistedCache);
  v91 = *v90;
  v92 = v90[1];
  sub_21BC718B0(*v90, v92);
  type metadata accessor for AppleCardFamilyCache();
  sub_21BC718B8();
  v93 = sub_21BE26EAC();
  sub_21BB47CE0(v91, v92);
  sub_21BE1EF04(v118);
  v95 = v118[0];
  v94 = v118[1];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v96 = sub_21BE289CC();

  v97 = sub_21BE1F55C();
  if (v97)
  {
    v98 = v97;
    v99 = *(v93 + 24);
    v119 = *(v93 + 16);
    v120 = v99;

    MEMORY[0x21CF03CA0](46, 0xE100000000000000);
    MEMORY[0x21CF03CA0](v95, v94);
    v100 = sub_21BE289CC();

    [v98 setValue:v96 forKey:{v100, v111}];

    v96 = v100;
  }

  v101 = *(v0 + 568);
  v102 = *(v0 + 384);
  v103 = *(v0 + 296);
  v104 = *(v0 + 304);
  v105 = *(v0 + 200);

  v106 = (v105 + v103);
  v107 = *v90;
  v7 = v90[1];
  sub_21BC718B0(*v90, v7);
  sub_21BE26EAC();
  sub_21BB47CE0(v107, v7);
  v108 = sub_21BE1F55C();
  [v108 synchronize];

  LOBYTE(v7) = *(*__swift_project_boxed_opaque_existential_1Tm(v106, v106[3]) + qword_280BDCB80);
  v13 = *(*__swift_project_boxed_opaque_existential_1Tm(v106, v106[3]) + qword_280BDCB58);
  v6 = [v104 ageCategory];
  v9 = *(v101 + 16);

  KeyPath = *(v102 + 16);

  if (qword_27CDB4F90 != -1)
  {
    goto LABEL_46;
  }

LABEL_41:
  v109 = *(v0 + 304);
  LOBYTE(v119) = v7;
  v120 = v13;
  v121 = v6;
  v122 = v9;
  v123 = KeyPath;
  v124 = 771;
  sub_21BD236A8(&v119);

  v110 = *(v0 + 8);

  return v110();
}

uint64_t sub_21BC6C578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a3;
  v4[16] = a4;
  v4[13] = a1;
  v4[14] = a2;
  v5 = sub_21BE26A4C();
  v4[17] = v5;
  v4[18] = *(v5 - 8);
  v4[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8250, &qword_21BE3B2E0);
  v4[22] = v6;
  v4[23] = *(v6 - 8);
  v4[24] = swift_task_alloc();
  v4[25] = sub_21BE28D7C();
  v4[26] = sub_21BE28D6C();
  v8 = sub_21BE28D0C();
  v4[27] = v8;
  v4[28] = v7;

  return MEMORY[0x2822009F8](sub_21BC6C720, v8, v7);
}

uint64_t sub_21BC6C720()
{
  v1 = [*(v0 + 120) members];
  *(v0 + 232) = sub_21BB3A2A4(0, &qword_280BD8A40, 0x277D08268);
  v2 = sub_21BE28C3C();

  if (v2 >> 62)
  {
    v3 = sub_21BE2951C();
    v7 = v3;
    if (!v3)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v7 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_21;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
    return MEMORY[0x2822002E8](v3, v4, v5, v6);
  }

  v8 = 0;
  v9 = v2 & 0xC000000000000001;
  v10 = &selRef_fa_URLByAddingAirdropInviteParams;
  v34 = v7;
  v35 = v2;
  v33 = v2 & 0xC000000000000001;
  do
  {
    if (v9)
    {
      v11 = MEMORY[0x21CF047C0](v8, v2);
    }

    else
    {
      v11 = *(v2 + 8 * v8 + 32);
    }

    v12 = v11;
    if ([v11 v10[268]])
    {
    }

    else
    {
      v14 = *(v0 + 160);
      v13 = *(v0 + 168);
      v15 = *(v0 + 128);
      v16 = sub_21BE28DAC();
      v17 = *(v16 - 8);
      (*(v17 + 56))(v13, 1, 1, v16);
      v18 = swift_allocObject();
      v18[2] = 0;
      v18[3] = 0;
      v18[4] = v15;
      v18[5] = v12;
      sub_21BC39020(v13, v14);
      LODWORD(v14) = (*(v17 + 48))(v14, 1, v16);
      v19 = v15;
      v20 = v12;
      v21 = *(v0 + 160);
      if (v14 == 1)
      {
        sub_21BBDE578(*(v0 + 160));
      }

      else
      {
        sub_21BE28D9C();
        (*(v17 + 8))(v21, v16);
      }

      v2 = v35;
      if (v18[2])
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v22 = sub_21BE28D0C();
        v24 = v23;
        swift_unknownObjectRelease();
      }

      else
      {
        v22 = 0;
        v24 = 0;
      }

      v25 = **(v0 + 112);
      v26 = swift_allocObject();
      *(v26 + 16) = &unk_21BE3B378;
      *(v26 + 24) = v18;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8230, &unk_21BE3B110);
      v27 = v24 | v22;
      if (v24 | v22)
      {
        v27 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v22;
        *(v0 + 40) = v24;
      }

      v28 = *(v0 + 168);
      *(v0 + 48) = 1;
      *(v0 + 56) = v27;
      *(v0 + 64) = v25;
      swift_task_create();

      sub_21BBDE578(v28);
      v9 = v33;
      v7 = v34;
      v10 = &selRef_fa_URLByAddingAirdropInviteParams;
    }

    ++v8;
  }

  while (v7 != v8);
LABEL_21:

  v29 = sub_21BBB561C(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8230, &unk_21BE3B110);
  sub_21BE28D4C();
  *(v0 + 240) = v29;
  v30 = sub_21BE28D6C();
  *(v0 + 248) = v30;
  v31 = swift_task_alloc();
  *(v0 + 256) = v31;
  *v31 = v0;
  v31[1] = sub_21BC6CB44;
  v6 = *(v0 + 176);
  v5 = MEMORY[0x277D85700];
  v3 = v0 + 72;
  v4 = v30;

  return MEMORY[0x2822002E8](v3, v4, v5, v6);
}

uint64_t sub_21BC6CB44()
{
  v1 = *v0;

  v2 = *(v1 + 224);
  v3 = *(v1 + 216);

  return MEMORY[0x2822009F8](sub_21BC6CC88, v3, v2);
}

uint64_t sub_21BC6CC88(uint64_t a1)
{
  v2 = *(v1 + 72);
  if (v2)
  {
    v3 = *(v1 + 80);
    sub_21BE2614C();
    v4 = v2;
    v5 = sub_21BE26A2C();
    v6 = sub_21BE28FFC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *(v1 + 96) = v8;
      *v7 = 136315394;
      v9 = [v4 fullName];
      v40 = v3;
      if (v9 || (v9 = [v4 altDSID]) != 0)
      {
        v10 = v9;
        v11 = sub_21BE28A0C();
        v13 = v12;
      }

      else
      {
        v11 = 0;
        v13 = 0xE000000000000000;
      }

      v14 = *(v1 + 144);
      v38 = *(v1 + 136);
      v39 = *(v1 + 152);
      v15 = sub_21BB3D81C(v11, v13, (v1 + 96));

      *(v7 + 4) = v15;
      *(v7 + 12) = 1024;

      v3 = v40;
      *(v7 + 14) = v40 & 1;

      _os_log_impl(&dword_21BB35000, v5, v6, "AppleCardFamilySettingsViewModel, card shared with %s: %{BOOL}d ", v7, 0x12u);
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
      MEMORY[0x21CF05C50](v8, -1, -1);
      MEMORY[0x21CF05C50](v7, -1, -1);

      (*(v14 + 8))(v39, v38);
    }

    else
    {
      v20 = *(v1 + 144);
      v7 = *(v1 + 152);
      v21 = *(v1 + 136);

      (*(v20 + 8))(v7, v21);
    }

    v22 = *(v1 + 240);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 88) = v22;
    v24 = sub_21BBB31A4(v4);
    v28 = *(v22 + 16);
    v29 = (v25 & 1) == 0;
    v30 = __OFADD__(v28, v29);
    v31 = v28 + v29;
    if (v30)
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v7) = v25;
      if (*(*(v1 + 240) + 24) < v31)
      {
        sub_21BC7D26C(v31, isUniquelyReferenced_nonNull_native);
        v24 = sub_21BBB31A4(v4);
        if ((v7 & 1) != (v25 & 1))
        {

          return sub_21BE299FC();
        }

LABEL_18:
        v32 = *(v1 + 88);
        if (v7)
        {
LABEL_19:
          *(v32[7] + v24) = v3 & 1;

          goto LABEL_25;
        }

LABEL_23:
        v32[(v24 >> 6) + 8] |= 1 << v24;
        *(v32[6] + 8 * v24) = v4;
        *(v32[7] + v24) = v3 & 1;
        v34 = v32[2];
        v30 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v30)
        {
          __break(1u);
          return MEMORY[0x2822002E8](v24, v25, v26, v27);
        }

        v32[2] = v35;
LABEL_25:
        *(v1 + 240) = v32;
        v36 = sub_21BE28D6C();
        *(v1 + 248) = v36;
        v37 = swift_task_alloc();
        *(v1 + 256) = v37;
        *v37 = v1;
        v37[1] = sub_21BC6CB44;
        v27 = *(v1 + 176);
        v26 = MEMORY[0x277D85700];
        v24 = v1 + 72;
        v25 = v36;

        return MEMORY[0x2822002E8](v24, v25, v26, v27);
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_18;
      }
    }

    v33 = v24;
    sub_21BC815D4();
    v24 = v33;
    v32 = *(v1 + 88);
    if (v7)
    {
      goto LABEL_19;
    }

    goto LABEL_23;
  }

  v16 = *(v1 + 240);
  v17 = *(v1 + 104);
  (*(*(v1 + 184) + 8))(*(v1 + 192), *(v1 + 176));

  *v17 = v16;

  v18 = *(v1 + 8);

  return v18();
}

uint64_t sub_21BC6D0D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v5[18] = a1;
  return MEMORY[0x2822009F8](sub_21BC6D0F8, 0, 0);
}

uint64_t sub_21BC6D0F8()
{
  *(v0 + 168) = OBJC_IVAR____TtC14FamilyCircleUI32AppleCardFamilySettingsViewModel_appleCardUtilities;
  sub_21BE28D7C();
  *(v0 + 176) = sub_21BE28D6C();
  v2 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BC6D198, v2, v1);
}

uint64_t sub_21BC6D198()
{
  v1 = v0[21];
  v2 = v0[19];

  v0[23] = *(v2 + v1);

  return MEMORY[0x2822009F8](sub_21BC6D20C, 0, 0);
}

uint64_t sub_21BC6D20C()
{
  v1 = [*(v0 + 160) altDSID];
  if (v1)
  {
    v2 = v1;
    sub_21BE28A0C();
  }

  v3 = *(v0 + 184);
  v4 = sub_21BE289CC();
  *(v0 + 192) = v4;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 200;
  *(v0 + 24) = sub_21BC6D388;
  v5 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB61F0, &qword_21BE39610);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_21BBDC4C4;
  *(v0 + 104) = &block_descriptor_116;
  *(v0 + 112) = v5;
  [v3 appleCardIsSharedWithWithAltDSID:v4 completion:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_21BC6D388()
{

  return MEMORY[0x2822009F8](sub_21BC71F54, 0, 0);
}

uint64_t sub_21BC6D468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v5[16] = a2;
  v5[17] = a3;
  v5[15] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8258, &qword_21BE3B310);
  v5[22] = v6;
  v5[23] = *(v6 - 8);
  v5[24] = swift_task_alloc();
  v5[25] = sub_21BE28D7C();
  v5[26] = sub_21BE28D6C();
  v8 = sub_21BE28D0C();
  v5[27] = v8;
  v5[28] = v7;

  return MEMORY[0x2822009F8](sub_21BC6D5B8, v8, v7);
}

uint64_t sub_21BC6D5B8()
{
  v1 = *(v0 + 136);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v5 = -1;
  v6 = -1 << *(*(v0 + 136) + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v36 = *(v0 + 136);

  v13 = 0;
  v34 = v8;
  v35 = v3;
  while (v7)
  {
LABEL_11:
    v17 = *(v0 + 168);
    v37 = *(v0 + 160);
    v19 = *(v0 + 144);
    v18 = *(v0 + 152);
    v20 = *(*(v36 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v7)))));
    v21 = sub_21BE28DAC();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v17, 1, 1, v21);
    v23 = swift_allocObject();
    v23[2] = 0;
    v23[3] = 0;
    v23[4] = v19;
    v23[5] = v20;
    v23[6] = v18;
    sub_21BC39020(v17, v37);
    LODWORD(v17) = (*(v22 + 48))(v37, 1, v21);
    v38 = v20;
    v24 = v19;

    v25 = *(v0 + 160);
    if (v17 == 1)
    {
      sub_21BBDE578(*(v0 + 160));
    }

    else
    {
      sub_21BE28D9C();
      (*(v22 + 8))(v25, v21);
    }

    if (v23[2])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v26 = sub_21BE28D0C();
      v28 = v27;
      swift_unknownObjectRelease();
    }

    else
    {
      v26 = 0;
      v28 = 0;
    }

    v29 = **(v0 + 128);
    v30 = swift_allocObject();
    *(v30 + 16) = &unk_21BE3B320;
    *(v30 + 24) = v23;

    if (v28 | v26)
    {
      v14 = v0 + 64;
      *(v0 + 64) = 0;
      *(v0 + 72) = 0;
      *(v0 + 80) = v26;
      *(v0 + 88) = v28;
    }

    else
    {
      v14 = 0;
    }

    v15 = *(v0 + 168);
    v7 &= v7 - 1;
    *(v0 + 96) = 1;
    *(v0 + 104) = v14;
    *(v0 + 112) = v29;
    swift_task_create();

    v9 = sub_21BBDE578(v15);
    v8 = v34;
    v3 = v35;
  }

  while (1)
  {
    v16 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      return MEMORY[0x2822002E8](v9, v10, v11, v12);
    }

    if (v16 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v16);
    ++v13;
    if (v7)
    {
      v13 = v16;
      goto LABEL_11;
    }
  }

  sub_21BE28D4C();
  *(v0 + 232) = MEMORY[0x277D84F90];
  v31 = sub_21BE28D6C();
  *(v0 + 240) = v31;
  v32 = swift_task_alloc();
  *(v0 + 248) = v32;
  *v32 = v0;
  v32[1] = sub_21BC6D988;
  v12 = *(v0 + 176);
  v11 = MEMORY[0x277D85700];
  v9 = v0 + 16;
  v10 = v31;

  return MEMORY[0x2822002E8](v9, v10, v11, v12);
}

uint64_t sub_21BC6D988()
{
  v1 = *v0;

  v2 = *(v1 + 224);
  v3 = *(v1 + 216);

  return MEMORY[0x2822009F8](sub_21BC6DACC, v3, v2);
}

uint64_t sub_21BC6DACC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 232);
  if (v1)
  {
    v18 = *(v0 + 24);
    v4 = *(v0 + 40);
    v3 = *(v0 + 48);
    v5 = *(v0 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v0 + 232);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_21BBBD6B0(0, *(v7 + 2) + 1, 1, v7);
    }

    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    if (v9 >= v8 >> 1)
    {
      v7 = sub_21BBBD6B0((v8 > 1), v9 + 1, 1, v7);
    }

    *(v7 + 2) = v9 + 1;
    v10 = &v7[48 * v9];
    *(v10 + 4) = v1;
    *(v10 + 40) = v18;
    v10[56] = v4 & 1;
    *(v10 + 8) = v3;
    v10[72] = v5 & 1;
    *(v0 + 232) = v7;
    v11 = sub_21BE28D6C();
    *(v0 + 240) = v11;
    v12 = swift_task_alloc();
    *(v0 + 248) = v12;
    *v12 = v0;
    v12[1] = sub_21BC6D988;
    v13 = *(v0 + 176);
    v14 = MEMORY[0x277D85700];

    return MEMORY[0x2822002E8](v0 + 16, v11, v14, v13);
  }

  else
  {
    v15 = *(v0 + 120);
    (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));

    *v15 = v2;

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_21BC6DCD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[21] = a1;
  v6[22] = a4;
  return MEMORY[0x2822009F8](sub_21BC6DCF4, 0, 0);
}

uint64_t sub_21BC6DCF4()
{
  *(v0 + 200) = OBJC_IVAR____TtC14FamilyCircleUI32AppleCardFamilySettingsViewModel_appleCardUtilities;
  sub_21BE28D7C();
  *(v0 + 208) = sub_21BE28D6C();
  v2 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BC6DD94, v2, v1);
}

uint64_t sub_21BC6DD94()
{
  v1 = v0[25];
  v2 = v0[22];

  v0[27] = *(v2 + v1);

  return MEMORY[0x2822009F8](sub_21BC6DE08, 0, 0);
}

uint64_t sub_21BC6DE08()
{
  v1 = [*(v0 + 184) altDSID];
  if (v1)
  {
    v2 = v1;
    sub_21BE28A0C();
  }

  v3 = *(v0 + 216);
  v4 = sub_21BE289CC();
  *(v0 + 224) = v4;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_21BC6DF84;
  v5 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7C70, &unk_21BE39790);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_21BC69644;
  *(v0 + 104) = &block_descriptor_90;
  *(v0 + 112) = v5;
  [v3 appleCardTransactionLimitForAltDSID:v4 completion:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_21BC6DF84()
{

  return MEMORY[0x2822009F8](sub_21BC6E064, 0, 0);
}

uint64_t sub_21BC6E064()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 160);

  if (v1)
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v4 = *(v0 + 192);
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = [objc_opt_self() bundleForClass_];
    v7 = sub_21BE2599C();
    v9 = v8;

    if (*(v4 + 16) && (v10 = sub_21BBB31A4(*(v0 + 184)), (v11 & 1) != 0))
    {
      v12 = 0;
      v13 = *(*(*(v0 + 192) + 56) + 8 * v10);
    }

    else
    {
      v13 = 0;
      v12 = 1;
    }

    v14 = *(v0 + 184);
    v15 = *(v0 + 168);

    *v15 = v14;
    *(v15 + 8) = v7;
    *(v15 + 16) = v9;
    *(v15 + 24) = 0;
  }

  else
  {
    v16 = objc_allocWithZone(MEMORY[0x277D37E50]);
    v17 = v1;

    v18 = sub_21BE289CC();

    v19 = [v16 initWithAmount:v17 currency:v18 exponent:0];

    if (v19)
    {
      v20 = [v19 formattedStringValue];
      if (v20)
      {
        v21 = *(v0 + 192);
        v22 = v20;
        v23 = sub_21BE28A0C();
        v25 = v24;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_21BE32770;
        *(v26 + 56) = MEMORY[0x277D837D0];
        *(v26 + 64) = sub_21BBBEFE8();
        *(v26 + 32) = v23;
        *(v26 + 40) = v25;
        type metadata accessor for ConfirmChildAgeViewModel();
        v27 = swift_getObjCClassFromMetadata();
        v28 = objc_opt_self();

        v29 = [v28 bundleForClass_];
        sub_21BE2599C();

        v30 = sub_21BE289DC();
        v32 = v31;

        if (*(v21 + 16) && (v33 = sub_21BBB31A4(*(v0 + 184)), (v34 & 1) != 0))
        {
          v12 = 0;
          v13 = *(*(*(v0 + 192) + 56) + 8 * v33);
        }

        else
        {
          v13 = 0;
          v12 = 1;
        }

        v35 = *(v0 + 184);
        v36 = *(v0 + 168);

        *v36 = v35;
        *(v36 + 8) = v30;
        *(v36 + 16) = v32;
        *(v36 + 24) = 0;
        goto LABEL_24;
      }
    }

    if (*(*(v0 + 192) + 16) && (v37 = sub_21BBB31A4(*(v0 + 184)), (v38 & 1) != 0))
    {
      v12 = 0;
      v13 = *(*(*(v0 + 192) + 56) + 8 * v37);
    }

    else
    {
      v13 = 0;
      v12 = 1;
    }

    v39 = *(v0 + 184);
    v40 = *(v0 + 168);

    *(v40 + 8) = 0;
    *(v40 + 16) = 0;
    *v40 = v39;
    *(v40 + 24) = 0;
  }

LABEL_24:
  v41 = *(v0 + 184);
  v42 = *(v0 + 168);
  *(v42 + 32) = v13;
  *(v42 + 40) = v12;
  v45 = *(v0 + 8);
  v43 = v41;

  return v45();
}

uint64_t sub_21BC6E450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a3;
  v4[16] = a4;
  v4[13] = a1;
  v4[14] = a2;
  v5 = sub_21BE26A4C();
  v4[17] = v5;
  v4[18] = *(v5 - 8);
  v4[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8250, &qword_21BE3B2E0);
  v4[22] = v6;
  v4[23] = *(v6 - 8);
  v4[24] = swift_task_alloc();
  v4[25] = sub_21BE28D7C();
  v4[26] = sub_21BE28D6C();
  v8 = sub_21BE28D0C();
  v4[27] = v8;
  v4[28] = v7;

  return MEMORY[0x2822009F8](sub_21BC6E5F8, v8, v7);
}

uint64_t sub_21BC6E5F8()
{
  v1 = v0[15];
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v37 = v0 + 2;
  v5 = -1;
  v6 = -1 << *(v0[15] + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v41 = v0[15];

  v13 = 0;
  v39 = v8;
  v40 = v3;
  v38 = v0;
  while (v7)
  {
LABEL_10:
    v17 = v0[20];
    v16 = v0[21];
    v18 = v0[16];
    v19 = *(*(v41 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v7)))));
    v20 = sub_21BE28DAC();
    v21 = *(v20 - 8);
    (*(v21 + 56))(v16, 1, 1, v20);
    v22 = swift_allocObject();
    v22[2] = 0;
    v23 = v22 + 2;
    v22[3] = 0;
    v22[4] = v18;
    v22[5] = v19;
    sub_21BC39020(v16, v17);
    LODWORD(v17) = (*(v21 + 48))(v17, 1, v20);
    v24 = v19;
    v0 = v38;
    v42 = v24;
    v25 = v18;
    v26 = v38[20];
    if (v17 == 1)
    {
      sub_21BBDE578(v38[20]);
      if (*v23)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_21BE28D9C();
      (*(v21 + 8))(v26, v20);
      if (*v23)
      {
LABEL_12:
        swift_getObjectType();
        swift_unknownObjectRetain();
        v27 = sub_21BE28D0C();
        v29 = v28;
        swift_unknownObjectRelease();
        goto LABEL_15;
      }
    }

    v27 = 0;
    v29 = 0;
LABEL_15:
    v30 = *v38[14];
    v31 = swift_allocObject();
    *(v31 + 16) = &unk_21BE3B2F0;
    *(v31 + 24) = v22;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8230, &unk_21BE3B110);
    v32 = (v29 | v27);
    if (v29 | v27)
    {
      v32 = v37;
      *v37 = 0;
      v37[1] = 0;
      v38[4] = v27;
      v38[5] = v29;
    }

    v14 = v38[21];
    v7 &= v7 - 1;
    v38[6] = 1;
    v38[7] = v32;
    v38[8] = v30;
    swift_task_create();

    v9 = sub_21BBDE578(v14);
    v8 = v39;
    v3 = v40;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      return MEMORY[0x2822002E8](v9, v10, v11, v12);
    }

    if (v15 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v15);
    ++v13;
    if (v7)
    {
      v13 = v15;
      goto LABEL_10;
    }
  }

  v33 = sub_21BBB561C(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8230, &unk_21BE3B110);
  sub_21BE28D4C();
  v0[29] = v33;
  v34 = sub_21BE28D6C();
  v0[30] = v34;
  v35 = swift_task_alloc();
  v0[31] = v35;
  *v35 = v0;
  v35[1] = sub_21BC6E9E4;
  v12 = v0[22];
  v11 = MEMORY[0x277D85700];
  v9 = (v0 + 9);
  v10 = v34;

  return MEMORY[0x2822002E8](v9, v10, v11, v12);
}

uint64_t sub_21BC6E9E4()
{
  v1 = *v0;

  v2 = *(v1 + 224);
  v3 = *(v1 + 216);

  return MEMORY[0x2822009F8](sub_21BC6EB28, v3, v2);
}

uint64_t sub_21BC6EB28(uint64_t a1)
{
  v2 = *(v1 + 72);
  if (v2)
  {
    v3 = *(v1 + 80);
    sub_21BE2614C();
    v4 = v2;
    v5 = sub_21BE26A2C();
    v6 = sub_21BE28FFC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *(v1 + 96) = v8;
      *v7 = 136315394;
      v9 = [v4 fullName];
      v40 = v3;
      if (v9 || (v9 = [v4 altDSID]) != 0)
      {
        v10 = v9;
        v11 = sub_21BE28A0C();
        v13 = v12;
      }

      else
      {
        v11 = 0;
        v13 = 0xE000000000000000;
      }

      v14 = *(v1 + 144);
      v38 = *(v1 + 136);
      v39 = *(v1 + 152);
      v15 = sub_21BB3D81C(v11, v13, (v1 + 96));

      *(v7 + 4) = v15;
      *(v7 + 12) = 1024;

      v3 = v40;
      *(v7 + 14) = v40 & 1;

      _os_log_impl(&dword_21BB35000, v5, v6, "AppleCardFamilySettingsViewModel, has Pending card invite %s: %{BOOL}d ", v7, 0x12u);
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
      MEMORY[0x21CF05C50](v8, -1, -1);
      MEMORY[0x21CF05C50](v7, -1, -1);

      (*(v14 + 8))(v39, v38);
    }

    else
    {
      v20 = *(v1 + 144);
      v7 = *(v1 + 152);
      v21 = *(v1 + 136);

      (*(v20 + 8))(v7, v21);
    }

    v22 = *(v1 + 232);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 88) = v22;
    v24 = sub_21BBB31A4(v4);
    v28 = *(v22 + 16);
    v29 = (v25 & 1) == 0;
    v30 = __OFADD__(v28, v29);
    v31 = v28 + v29;
    if (v30)
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v7) = v25;
      if (*(*(v1 + 232) + 24) < v31)
      {
        sub_21BC7D26C(v31, isUniquelyReferenced_nonNull_native);
        v24 = sub_21BBB31A4(v4);
        if ((v7 & 1) != (v25 & 1))
        {
          sub_21BB3A2A4(0, &qword_280BD8A40, 0x277D08268);

          return sub_21BE299FC();
        }

LABEL_18:
        v32 = *(v1 + 88);
        if (v7)
        {
LABEL_19:
          *(v32[7] + v24) = v3 & 1;

          goto LABEL_25;
        }

LABEL_23:
        v32[(v24 >> 6) + 8] |= 1 << v24;
        *(v32[6] + 8 * v24) = v4;
        *(v32[7] + v24) = v3 & 1;
        v34 = v32[2];
        v30 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v30)
        {
          __break(1u);
          return MEMORY[0x2822002E8](v24, v25, v26, v27);
        }

        v32[2] = v35;
LABEL_25:
        *(v1 + 232) = v32;
        v36 = sub_21BE28D6C();
        *(v1 + 240) = v36;
        v37 = swift_task_alloc();
        *(v1 + 248) = v37;
        *v37 = v1;
        v37[1] = sub_21BC6E9E4;
        v27 = *(v1 + 176);
        v26 = MEMORY[0x277D85700];
        v24 = v1 + 72;
        v25 = v36;

        return MEMORY[0x2822002E8](v24, v25, v26, v27);
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_18;
      }
    }

    v33 = v24;
    sub_21BC815D4();
    v24 = v33;
    v32 = *(v1 + 88);
    if (v7)
    {
      goto LABEL_19;
    }

    goto LABEL_23;
  }

  v16 = *(v1 + 232);
  v17 = *(v1 + 104);
  (*(*(v1 + 184) + 8))(*(v1 + 192), *(v1 + 176));

  *v17 = v16;

  v18 = *(v1 + 8);

  return v18();
}

uint64_t sub_21BC6EF88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v5[18] = a1;
  return MEMORY[0x2822009F8](sub_21BC6EFAC, 0, 0);
}

uint64_t sub_21BC6EFAC()
{
  *(v0 + 168) = OBJC_IVAR____TtC14FamilyCircleUI32AppleCardFamilySettingsViewModel_appleCardUtilities;
  sub_21BE28D7C();
  *(v0 + 176) = sub_21BE28D6C();
  v2 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BC6F04C, v2, v1);
}

uint64_t sub_21BC6F04C()
{
  v1 = v0[21];
  v2 = v0[19];

  v0[23] = *(v2 + v1);

  return MEMORY[0x2822009F8](sub_21BC6F0C0, 0, 0);
}

uint64_t sub_21BC6F0C0()
{
  v1 = [*(v0 + 160) altDSID];
  if (v1)
  {
    v2 = v1;
    sub_21BE28A0C();
  }

  v3 = *(v0 + 184);
  v4 = sub_21BE289CC();
  *(v0 + 192) = v4;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 200;
  *(v0 + 24) = sub_21BC6F23C;
  v5 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB61F0, &qword_21BE39610);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_21BBDC4C4;
  *(v0 + 104) = &block_descriptor_18;
  *(v0 + 112) = v5;
  [v3 hasSentPendingAppleCardInvitationToUserWithAltDSID:v4 completion:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_21BC6F23C()
{

  return MEMORY[0x2822009F8](sub_21BC6F31C, 0, 0);
}

uint64_t sub_21BC6F31C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  v3 = *(v0 + 200);

  *v2 = v1;
  *(v2 + 8) = v3;
  v6 = *(v0 + 8);
  v4 = v1;

  return v6();
}

uint64_t sub_21BC6F3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a3;
  v4[16] = a4;
  v4[13] = a1;
  v4[14] = a2;
  v5 = sub_21BE26A4C();
  v4[17] = v5;
  v4[18] = *(v5 - 8);
  v4[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8260, &qword_21BE3B340);
  v4[22] = v6;
  v4[23] = *(v6 - 8);
  v4[24] = swift_task_alloc();
  v4[25] = sub_21BE28D7C();
  v4[26] = sub_21BE28D6C();
  v8 = sub_21BE28D0C();
  v4[27] = v8;
  v4[28] = v7;

  return MEMORY[0x2822009F8](sub_21BC6F54C, v8, v7);
}

uint64_t sub_21BC6F54C()
{
  v1 = v0[15];
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v37 = v0 + 2;
  v5 = -1;
  v6 = -1 << *(v0[15] + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v41 = v0[15];

  v13 = 0;
  v39 = v8;
  v40 = v3;
  v38 = v0;
  while (v7)
  {
LABEL_10:
    v17 = v0[20];
    v16 = v0[21];
    v18 = v0[16];
    v19 = *(*(v41 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v7)))));
    v20 = sub_21BE28DAC();
    v21 = *(v20 - 8);
    (*(v21 + 56))(v16, 1, 1, v20);
    v22 = swift_allocObject();
    v22[2] = 0;
    v23 = v22 + 2;
    v22[3] = 0;
    v22[4] = v18;
    v22[5] = v19;
    sub_21BC39020(v16, v17);
    LODWORD(v17) = (*(v21 + 48))(v17, 1, v20);
    v24 = v19;
    v0 = v38;
    v42 = v24;
    v25 = v18;
    v26 = v38[20];
    if (v17 == 1)
    {
      sub_21BBDE578(v38[20]);
      if (*v23)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_21BE28D9C();
      (*(v21 + 8))(v26, v20);
      if (*v23)
      {
LABEL_12:
        swift_getObjectType();
        swift_unknownObjectRetain();
        v27 = sub_21BE28D0C();
        v29 = v28;
        swift_unknownObjectRelease();
        goto LABEL_15;
      }
    }

    v27 = 0;
    v29 = 0;
LABEL_15:
    v30 = *v38[14];
    v31 = swift_allocObject();
    *(v31 + 16) = &unk_21BE3B350;
    *(v31 + 24) = v22;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8240, &qword_21BE3B130);
    v32 = (v29 | v27);
    if (v29 | v27)
    {
      v32 = v37;
      *v37 = 0;
      v37[1] = 0;
      v38[4] = v27;
      v38[5] = v29;
    }

    v14 = v38[21];
    v7 &= v7 - 1;
    v38[6] = 1;
    v38[7] = v32;
    v38[8] = v30;
    swift_task_create();

    v9 = sub_21BBDE578(v14);
    v8 = v39;
    v3 = v40;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      return MEMORY[0x2822002E8](v9, v10, v11, v12);
    }

    if (v15 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v15);
    ++v13;
    if (v7)
    {
      v13 = v15;
      goto LABEL_10;
    }
  }

  v33 = sub_21BBB6984(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8240, &qword_21BE3B130);
  sub_21BE28D4C();
  v0[29] = v33;
  v34 = sub_21BE28D6C();
  v0[30] = v34;
  v35 = swift_task_alloc();
  v0[31] = v35;
  *v35 = v0;
  v35[1] = sub_21BC6F938;
  v12 = v0[22];
  v11 = MEMORY[0x277D85700];
  v9 = (v0 + 9);
  v10 = v34;

  return MEMORY[0x2822002E8](v9, v10, v11, v12);
}