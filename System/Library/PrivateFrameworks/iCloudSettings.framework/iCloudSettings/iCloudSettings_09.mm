uint64_t get_enum_tag_for_layout_string_14iCloudSettings18ICSAnalyticsViewIDO(uint64_t a1)
{
  if ((*(a1 + 16) & 0xFu) <= 9)
  {
    return *(a1 + 16) & 0xF;
  }

  else
  {
    return (*a1 + 10);
  }
}

uint64_t sub_2759363EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF6 && *(a1 + 17))
  {
    return (*a1 + 246);
  }

  v3 = *(a1 + 16);
  if (v3 <= 0xA)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_275936434(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF5)
  {
    *(result + 16) = 0;
    *result = a2 - 246;
    *(result + 8) = 0;
    if (a3 >= 0xF6)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF6)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_275936478(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xA)
  {
    *result = a2 - 10;
    *(result + 8) = 0;
    LOBYTE(a2) = 10;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_2759364F0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (a1 == 0x656C616974696E69 && a2 == 0xE900000000000064 || (sub_2759BAAC8() & 1) != 0)
    {

      return 0;
    }

    if (a1 == 0x6574656C706D6F63 && a2 == 0xE900000000000064 || (sub_2759BAAC8() & 1) != 0)
    {

      return 1;
    }

    if (a1 == 0x656C6C65636E6163 && a2 == 0xE900000000000064)
    {

      return 2;
    }

    v5 = sub_2759BAAC8();

    if (v5)
    {
      return 2;
    }
  }

  return 0;
}

unint64_t sub_275936630(uint64_t a1, uint64_t a2)
{
  v2 = sub_2759BAA48();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2759366D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_27585F7A0;

  return sub_2759353A8(a1, v4);
}

uint64_t sub_275936788(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_27585A7E4;

  return sub_2759353A8(a1, v4);
}

uint64_t sub_275936854()
{
  swift_getKeyPath();
  sub_2759381E4(&qword_280A11238, &unk_2759CA8B8);
  sub_2759B8638();
}

uint64_t sub_2759368E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2759381E4(&qword_280A11238, &unk_2759CA8B8);
  sub_2759B8638();

  *a2 = *(v3 + 64);
}

uint64_t sub_27593697C(uint64_t a1)
{
  if (!*(v1 + 64))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2759381E4(&qword_280A11238, &unk_2759CA8B8);
    sub_2759B8628();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v3 = sub_2759B9D08();

  if ((v3 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 64) = a1;
}

void *sub_275936AD0()
{
  swift_getKeyPath();
  sub_2759381E4(&qword_280A11238, &unk_2759CA8B8);
  sub_2759B8638();

  v1 = *(v0 + 112);
  v2 = v1;
  return v1;
}

id sub_275936B64@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2759381E4(&qword_280A11238, &unk_2759CA8B8);
  sub_2759B8638();

  v4 = *(v3 + 112);
  *a2 = v4;

  return v4;
}

void sub_275936C08(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 112);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2759381E4(&qword_280A11238, &unk_2759CA8B8);
    sub_2759B8628();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_275938318();
  v5 = v4;
  v6 = a1;
  v7 = sub_2759BA788();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 112);
LABEL_8:
  *(v2 + 112) = a1;
}

id sub_275936D74()
{
  v1 = *(v0 + 40);
  v2 = sub_2759BA298();
  v4 = v3;
  if (v2 == sub_2759BA298() && v4 == v5)
  {
    goto LABEL_16;
  }

  v7 = sub_2759BAAC8();
  v8 = v1;

  if (v7)
  {
LABEL_6:

    goto LABEL_17;
  }

  v9 = sub_2759BA298();
  v11 = v10;
  if (v9 == sub_2759BA298() && v11 == v12)
  {

LABEL_16:

    goto LABEL_17;
  }

  v14 = sub_2759BAAC8();

  if (v14)
  {
    goto LABEL_6;
  }

  v15 = sub_2759BA298();
  v17 = v16;
  if (v15 == sub_2759BA298() && v17 == v18)
  {
    goto LABEL_34;
  }

  v23 = sub_2759BAAC8();

  if (v23)
  {
    goto LABEL_6;
  }

  v24 = sub_2759BA298();
  v26 = v25;
  if (v24 == sub_2759BA298() && v26 == v27)
  {
    goto LABEL_34;
  }

  v28 = sub_2759BAAC8();

  if (v28)
  {
    goto LABEL_6;
  }

  v29 = sub_2759BA298();
  v31 = v30;
  if (v29 == sub_2759BA298() && v31 == v32)
  {
    goto LABEL_34;
  }

  v33 = sub_2759BAAC8();

  if (v33)
  {
    goto LABEL_6;
  }

  v34 = sub_2759BA298();
  v36 = v35;
  if (v34 == sub_2759BA298() && v36 == v37)
  {
    goto LABEL_34;
  }

  v38 = sub_2759BAAC8();

  if (v38)
  {
    goto LABEL_6;
  }

  v39 = sub_2759BA298();
  v41 = v40;
  if (v39 == sub_2759BA298() && v41 == v42)
  {
LABEL_34:

    goto LABEL_17;
  }

  v43 = sub_2759BAAC8();

  if ((v43 & 1) == 0)
  {
    return 0;
  }

LABEL_17:
  v19 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v20 = sub_2759BA258();
  v21 = [v19 initWithBundleIdentifier_];

  return v21;
}

uint64_t sub_2759371C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  sub_2759BA4C8();
  v4[13] = sub_2759BA4B8();
  v5 = sub_2759BA468();
  v4[14] = v5;
  v4[15] = v6;

  return MEMORY[0x2822009F8](sub_275937290, v5, v6);
}

uint64_t sub_275937290()
{
  v1 = v0[12];
  v2 = *(v1 + 56);
  if (v2)
  {
    v3 = *(v1 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FEB0, &qword_2759C2620);
    inited = swift_initStackObject();
    v0[16] = inited;
    *(inited + 16) = xmmword_2759C17A0;
    *(inited + 32) = v3;
    *(inited + 40) = v2;

    v5 = swift_task_alloc();
    v0[17] = v5;
    *v5 = v0;
    v5[1] = sub_275937418;

    return sub_275871740(inited, 28.0, 28.0);
  }

  else
  {

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_275937418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *v3;
  v5[8] = v3;
  v5[9] = a1;
  v5[10] = a2;
  v5[11] = a3;
  v5[18] = a1;

  swift_setDeallocating();
  swift_arrayDestroy();
  v6 = v4[15];
  v7 = v4[14];

  return MEMORY[0x2822009F8](sub_2759375AC, v7, v6);
}

uint64_t sub_2759375AC()
{
  v1 = *(v0 + 144);

  if (v1)
  {
    v2 = *(v0 + 144);

    v3 = v2;
    v4 = sub_2759B9C98();
    sub_27593697C(v4);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_275937668()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v1[3] = swift_task_alloc();
  sub_2759BA4C8();
  v1[4] = sub_2759BA4B8();
  v3 = sub_2759BA468();
  v1[5] = v3;
  v1[6] = v2;

  return MEMORY[0x2822009F8](sub_275937738, v3, v2);
}

uint64_t sub_275937738()
{
  v1 = v0[2];
  v0[7] = *(v1 + 32);
  v2 = *(v1 + 40);
  v0[8] = v2;
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_2759377E4;

  return sub_27590E9A4(v2, 0, 0);
}

uint64_t sub_2759377E4()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_275937904, v3, v2);
}

uint64_t sub_275937904()
{
  v1 = v0[7];
  v2 = v0[3];

  v3 = *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel_analyticsController);
  v4 = sub_2759BA298();
  v6 = v5;
  v7 = v3;

  sub_2759BA4D8();
  v8 = sub_2759BA518();
  (*(*(v8 - 8) + 56))(v2, 0, 1, v8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = v9;
  *(v10 + 40) = xmmword_2759C43F0;
  *(v10 + 56) = 10;
  *(v10 + 58) = 0;
  *(v10 + 64) = 1;
  *(v10 + 72) = 0;
  *(v10 + 80) = v4;
  *(v10 + 88) = v6;
  *(v10 + 96) = 2;

  sub_275931D20(0, 0, v2, &unk_2759C4530, v10);

  swift_bridgeObjectRelease_n();
  sub_275936100(v2);

  v11 = v0[1];

  return v11();
}

uint64_t sub_275937AC0()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 72));

  v1 = OBJC_IVAR____TtC14iCloudSettings24iCloudDataclassCardModel___observationRegistrar;
  v2 = sub_2759B8678();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_275937B58()
{
  sub_275937AC0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for iCloudDataclassCardModel(uint64_t a1)
{
  result = qword_280A11220;
  if (!qword_280A11220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_275937C04(uint64_t a1)
{
  result = sub_2759B8678();
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

uint64_t sub_275937CD8()
{
  v1 = *(v0 + 16);

  return v1;
}

void sub_275937D30(uint64_t a1@<X8>)
{
  v3 = sub_275888EA4(*(v1 + 40));
  if (v3)
  {
    v4 = *&v3[OBJC_IVAR____TtC14iCloudSettings9iCloudApp_icons];
    if (v4)
    {
      v8 = v3;
      v5 = v4;
      sub_2759889A0(a1);

      return;
    }
  }

  v6 = sub_2759B8508();
  v7 = *(*(v6 - 8) + 56);

  v7(a1, 1, 1, v6);
}

uint64_t sub_275937E10()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_27585A7E4;

  return sub_275937668();
}

uint64_t sub_275937E9C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_2759BA518();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_2759BA4C8();

  v6 = sub_2759BA4B8();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v1;
  sub_27587D460(0, 0, v4, &unk_2759C2DD8, v7);
}

uint64_t sub_275937FC0()
{
  sub_2759BABD8();
  sub_2759BA298();
  sub_2759BA328();

  return sub_2759BAC08();
}

double sub_275938024(uint64_t a1)
{
  sub_2759BA298();
  sub_2759BA328();

  return result;
}

uint64_t sub_27593807C(uint64_t a1)
{
  sub_2759BABD8();
  sub_2759BA298();
  sub_2759BA328();

  return sub_2759BAC08();
}

uint64_t sub_2759380DC(uint64_t a1, uint64_t a2)
{
  v2 = sub_2759BA298();
  v4 = v3;
  if (v2 == sub_2759BA298() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2759BAAC8();
  }

  return v7 & 1;
}

uint64_t sub_2759381A0(uint64_t a1)
{
  result = sub_2759381E4(&qword_280A11238, &unk_2759CA8B8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2759381E4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for iCloudDataclassCardModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_275938228(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585A7E4;

  return sub_2759371C4(a1, v4, v5, v6);
}

uint64_t sub_2759382DC()
{
  *(*(v0 + 16) + 64) = *(v0 + 24);
}

unint64_t sub_275938318()
{
  result = qword_280A0F7B0;
  if (!qword_280A0F7B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280A0F7B0);
  }

  return result;
}

uint64_t type metadata accessor for AppsUsingiCloudSection(uint64_t a1)
{
  result = qword_280A11248;
  if (!qword_280A11248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_275938400(uint64_t a1)
{
  sub_27593858C(319, &qword_280A107E8, MEMORY[0x277D402D0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_27593858C(319, &qword_280A0F5F0, MEMORY[0x277CE02A8], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_27593858C(319, &qword_280A0F5F8, type metadata accessor for iCloudHomeViewModel, MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        sub_27593858C(319, &qword_280A11258, MEMORY[0x277CDF6E0], MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_2759B8878();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_27593858C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_27593860C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2759B93D8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6E8, &qword_2759C9C70);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for AppsUsingiCloudSection(0);
  sub_27586FBC8(v1 + *(v10 + 20), v9, &qword_280A0F6E8, &qword_2759C9C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2759B94D8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2759BA658();
    v13 = sub_2759B97C8();
    sub_2759B88C8();

    sub_2759B93C8();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_275938814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v3 = sub_2759B9648();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11280, &qword_2759CAAC8);
  MEMORY[0x28223BE20](v7);
  v9 = v18 - v8;
  v18[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11270, &qword_2759CAAB8);
  v10 = *(v18[0] - 8);
  MEMORY[0x28223BE20](v18[0]);
  v12 = v18 - v11;
  *v9 = sub_2759B94F8();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A112B8, &unk_2759CAB08);
  sub_275938B68(a1, &v9[*(v13 + 44)]);
  sub_2759B9638();
  v14 = sub_27589B02C(&qword_280A11288, &qword_280A11280, &qword_2759CAAC8, MEMORY[0x277CE1198]);
  v15 = sub_27593C13C(&qword_280A0FC00, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
  sub_2759B9A68();
  (*(v4 + 8))(v6, v3);
  sub_27586BF04(v9, &qword_280A11280, &qword_2759CAAC8);
  sub_2759B9FA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11278, &qword_2759CAAC0);
  v18[2] = v7;
  v18[3] = v3;
  v18[4] = v14;
  v18[5] = v15;
  swift_getOpaqueTypeConformance2();
  sub_27593BE80();
  v16 = v18[0];
  sub_2759B9B98();
  return (*(v10 + 8))(v12, v16);
}

uint64_t sub_275938B68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0EED8, qword_2759C9B60);
  MEMORY[0x28223BE20](v3 - 8);
  v54 = &v45 - v4;
  v5 = sub_2759B94D8();
  v51 = *(v5 - 8);
  v52 = v5;
  MEMORY[0x28223BE20](v5);
  v47 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2759B8F58();
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A112C0, &qword_2759CAB18);
  v11 = v10 - 8;
  v12 = MEMORY[0x28223BE20](v10);
  v53 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = (&v45 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A112C8, &qword_2759CAB20);
  v17 = v16 - 8;
  v18 = MEMORY[0x28223BE20](v16);
  v50 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v45 - v20;
  v46 = &v45 - v20;
  sub_275939068(a1, &v45 - v20);
  v22 = sub_2759B97F8();
  sub_2759B8D78();
  v23 = &v21[*(v17 + 44)];
  *v23 = v22;
  *(v23 + 1) = v24;
  *(v23 + 2) = v25;
  *(v23 + 3) = v26;
  *(v23 + 4) = v27;
  v23[40] = 0;
  v28 = (a1 + *(type metadata accessor for AppsUsingiCloudSection(0) + 24));
  v30 = v28[1];
  v57 = *v28;
  v29 = v57;
  v58 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v31 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11240, qword_2759CAA20);
  sub_2759B9D68();
  v32 = v47;
  sub_27593860C(v47);
  v45 = sub_27588790C(v9, v32);

  (*(v51 + 8))(v32, v52);
  v34 = v48;
  v33 = v49;
  (*(v48 + 8))(v9, v49);
  v57 = v29;
  v58 = v30;
  sub_2759B9D68();
  v35 = v56;
  v36 = v54;
  (*(v34 + 56))(v54, 1, 1, v33);
  v37 = v36;
  v38 = sub_2758965BC(v36);

  sub_27586BF04(v37, &qword_280A0EED8, qword_2759C9B60);
  *v15 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6E8, &qword_2759C9C70);
  swift_storeEnumTagMultiPayload();
  v39 = v46;
  *(v15 + *(v11 + 52)) = v45;
  *(v15 + *(v11 + 56)) = v38;
  v40 = v50;
  sub_27586FBC8(v39, v50, &qword_280A112C8, &qword_2759CAB20);
  v41 = v53;
  sub_27586FBC8(v15, v53, &qword_280A112C0, &qword_2759CAB18);
  v42 = v55;
  sub_27586FBC8(v40, v55, &qword_280A112C8, &qword_2759CAB20);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A112D0, &unk_2759CAB60);
  sub_27586FBC8(v41, v42 + *(v43 + 48), &qword_280A112C0, &qword_2759CAB18);
  sub_27586BF04(v15, &qword_280A112C0, &qword_2759CAB18);
  sub_27586BF04(v39, &qword_280A112C8, &qword_2759CAB20);
  sub_27586BF04(v41, &qword_280A112C0, &qword_2759CAB18);
  return sub_27586BF04(v40, &qword_280A112C8, &qword_2759CAB20);
}

uint64_t sub_275939068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10500, &qword_2759C9C10);
  v73 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v70 = &v70 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A112D8, &qword_2759CAB70);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v76 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v74 = &v70 - v7;
  v8 = type metadata accessor for AppsUsingiCloudSection(0);
  v9 = v8 - 8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A112E0, &qword_2759CAB78);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v70 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A112E8, &unk_2759CAB80);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v72 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v70 - v19;
  sub_27593C184(a1, &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v22 = swift_allocObject();
  sub_27593C1E8(&v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  v78 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A112F0, &qword_2759CAB90);
  sub_27593C2B4();
  sub_2759B9DB8();
  sub_27589B02C(&qword_280A11320, &qword_280A112E0, &qword_2759CAB78, MEMORY[0x277CDF028]);
  v71 = v20;
  sub_2759B9B38();
  (*(v13 + 8))(v15, v12);
  v23 = (a1 + *(v9 + 32));
  v25 = *v23;
  v24 = v23[1];
  v79 = v25;
  v80 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v26 = v83;
  swift_getKeyPath();
  v79 = v26;
  sub_27593C13C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
  sub_2759B8638();

  v27 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v28 = *&v26[v27];
  v29 = v28;

  if (!v28)
  {
    goto LABEL_9;
  }

  v30 = *&v29[OBJC_IVAR___ICSHomeDataModel_icloudAppsCard];

  v32 = *&v30[OBJC_IVAR____TtC14iCloudSettings14iCloudAppsCard_subtitle];
  v31 = *&v30[OBJC_IVAR____TtC14iCloudSettings14iCloudAppsCard_subtitle + 8];

  v36 = HIBYTE(v31) & 0xF;
  if ((v31 & 0x2000000000000000) == 0)
  {
    v36 = v32 & 0xFFFFFFFFFFFFLL;
  }

  if (!v36)
  {

LABEL_9:
    v63 = 1;
    v57 = v74;
    v56 = v75;
    goto LABEL_10;
  }

  v79 = v32;
  v80 = v31;
  sub_27589F2D4(v33, v34, v35);
  v37 = sub_2759B99C8();
  v39 = v38;
  v41 = v40;
  sub_2759B9848();
  v42 = sub_2759B9988();
  v44 = v43;
  v46 = v45;

  sub_27589F328(v37, v39, v41 & 1);

  if (qword_280A0E3C0 != -1)
  {
    swift_once();
  }

  v79 = qword_280A239C0;

  v47 = sub_2759B9958();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  sub_27589F328(v42, v44, v46 & 1);

  v79 = v47;
  v80 = v49;
  v81 = v51 & 1;
  v82 = v53;
  v54 = v70;
  sub_2759B9B38();
  sub_27589F328(v47, v49, v51 & 1);

  v55 = sub_2759B97E8();
  sub_2759B8D78();
  v57 = v74;
  v56 = v75;
  v58 = v54 + *(v75 + 36);
  *v58 = v55;
  *(v58 + 8) = v59;
  *(v58 + 16) = v60;
  *(v58 + 24) = v61;
  *(v58 + 32) = v62;
  *(v58 + 40) = 0;
  sub_27589F26C(v54, v57, &qword_280A10500, &qword_2759C9C10);
  v63 = 0;
LABEL_10:
  (*(v73 + 56))(v57, v63, 1, v56);
  v65 = v71;
  v64 = v72;
  sub_27586FBC8(v71, v72, &qword_280A112E8, &unk_2759CAB80);
  v66 = v76;
  sub_27586FBC8(v57, v76, &qword_280A112D8, &qword_2759CAB70);
  v67 = v77;
  sub_27586FBC8(v64, v77, &qword_280A112E8, &unk_2759CAB80);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11328, &qword_2759CABD0);
  sub_27586FBC8(v66, v67 + *(v68 + 48), &qword_280A112D8, &qword_2759CAB70);
  sub_27586BF04(v57, &qword_280A112D8, &qword_2759CAB70);
  sub_27586BF04(v65, &qword_280A112E8, &unk_2759CAB80);
  sub_27586BF04(v66, &qword_280A112D8, &qword_2759CAB70);
  return sub_27586BF04(v64, &qword_280A112E8, &unk_2759CAB80);
}

uint64_t sub_275939814(uint64_t a1)
{
  type metadata accessor for AppsUsingiCloudSection(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  sub_275913D20();

  return sub_275939888();
}

uint64_t sub_275939888()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v13 - v2;
  v4 = (v0 + *(type metadata accessor for AppsUsingiCloudSection(0) + 24));
  v6 = *v4;
  v5 = v4[1];
  v15 = v6;
  v16 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v7 = v14;
  v8 = *&v14[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel_analyticsController];

  sub_2759BA4D8();
  v9 = sub_2759BA518();
  (*(*(v9 - 8) + 56))(v3, 0, 1, v9);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = v10;
  *(v11 + 40) = xmmword_2759C43F0;
  *(v11 + 56) = 5130;
  *(v11 + 58) = 0;
  *(v11 + 64) = 1;
  *(v11 + 72) = 0;
  *(v11 + 80) = 0;
  *(v11 + 88) = 0;
  *(v11 + 96) = 10;
  sub_275931D20(0, 0, v3, &unk_2759C4530, v11);

  return sub_27586BF04(v3, &unk_280A0E510, &qword_2759C33C0);
}

uint64_t sub_275939A68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11318, &qword_2759CABA0);
  MEMORY[0x28223BE20](v26);
  v4 = &v24 - v3;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11330, &qword_2759CABD8);
  MEMORY[0x28223BE20](v24);
  v6 = &v24 - v5;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11308, &qword_2759CAB98);
  MEMORY[0x28223BE20](v25);
  v8 = &v24 - v7;
  v9 = sub_2759B94D8();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - v14;
  sub_27593860C(&v24 - v14);
  (*(v10 + 104))(v13, *MEMORY[0x277CE0280], v9);
  v16 = sub_2758B2220(v15, v13);
  v17 = *(v10 + 8);
  v17(v13, v9);
  v17(v15, v9);
  if (v16)
  {
    *v8 = sub_2759B94E8();
    *(v8 + 1) = 0;
    v8[16] = 1;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11340, &qword_2759CABE8);
    sub_27593AE3C(a1, &v8[*(v18 + 44)]);
    v19 = &qword_280A11308;
    v20 = &qword_2759CAB98;
    sub_27586FBC8(v8, v6, &qword_280A11308, &qword_2759CAB98);
    swift_storeEnumTagMultiPayload();
    sub_27589B02C(&qword_280A11300, &qword_280A11308, &qword_2759CAB98, MEMORY[0x277CE1198]);
    sub_27589B02C(&qword_280A11310, &qword_280A11318, &qword_2759CABA0, MEMORY[0x277CE1138]);
    sub_2759B95E8();
    v21 = v8;
  }

  else
  {
    *v4 = sub_2759B9418();
    *(v4 + 1) = 0;
    v4[16] = 1;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11338, &qword_2759CABE0);
    sub_27593A2E4(a1, &v4[*(v22 + 44)]);
    v19 = &qword_280A11318;
    v20 = &qword_2759CABA0;
    sub_27586FBC8(v4, v6, &qword_280A11318, &qword_2759CABA0);
    swift_storeEnumTagMultiPayload();
    sub_27589B02C(&qword_280A11300, &qword_280A11308, &qword_2759CAB98, MEMORY[0x277CE1198]);
    sub_27589B02C(&qword_280A11310, &qword_280A11318, &qword_2759CABA0, MEMORY[0x277CE1138]);
    sub_2759B95E8();
    v21 = v4;
  }

  return sub_27586BF04(v21, v19, v20);
}

uint64_t sub_275939EC4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = a2();
  sub_2759B8D78();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11270, &qword_2759CAAB8);
  (*(*(v15 - 8) + 16))(a3, a1, v15);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11278, &qword_2759CAAC0);
  v17 = a3 + *(result + 36);
  *v17 = v6;
  *(v17 + 8) = v8;
  *(v17 + 16) = v10;
  *(v17 + 24) = v12;
  *(v17 + 32) = v14;
  *(v17 + 40) = 0;
  return result;
}

uint64_t sub_275939F9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_2759B8838();
  v24 = *(v3 - 8);
  v25 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A112A8, &unk_2759CAAD0);
  v6 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v8 = &v23 - v7;
  v9 = *(type metadata accessor for AppsUsingiCloudSection(0) + 24);
  v23 = a1;
  v10 = (a1 + v9);
  v12 = *v10;
  v11 = v10[1];
  v29 = *v10;
  v30 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v13 = v28;
  swift_getKeyPath();
  v29 = v13;
  sub_27593C13C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
  sub_2759B8638();

  Strong = swift_unknownObjectWeakLoadStrong();

  if (!Strong)
  {
    goto LABEL_5;
  }

  v29 = v12;
  v30 = v11;
  sub_2759B9D68();
  v15 = v28;
  v16 = sub_27587C10C();

  if (!v16)
  {

LABEL_5:
    v21 = 1;
    v20 = v27;
    return (*(v6 + 56))(v20, v21, 1, v26);
  }

  v17 = v16;
  v18 = Strong;
  sub_2759B8828();
  sub_27593C13C(&qword_280A112B0, MEMORY[0x277CFB258], MEMORY[0x277CFB250]);
  v19 = v25;
  sub_2759B9B38();

  (*(v24 + 8))(v5, v19);
  v20 = v27;
  sub_27589F26C(v8, v27, &qword_280A112A8, &unk_2759CAAD0);
  v21 = 0;
  return (*(v6 + 56))(v20, v21, 1, v26);
}

uint64_t sub_27593A2E4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v111 = a2;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10AB8, &qword_2759C7C48);
  v3 = MEMORY[0x28223BE20](v110);
  v115 = &v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v112 = (&v99 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F600, &qword_2759C4210);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v114 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v113 = &v99 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v117 = &v99 - v12;
  MEMORY[0x28223BE20](v11);
  v116 = &v99 - v13;
  sub_2759BA028();
  sub_2759B8F18();
  v108 = v124;
  v107 = v125;
  v106 = v126;
  v105 = v127;
  v104 = v128;
  v103 = v129;
  v14 = (a1 + *(type metadata accessor for AppsUsingiCloudSection(0) + 24));
  v16 = v14[1];
  v119 = *v14;
  v15 = v119;
  v120 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v18 = v123;
  v109 = sub_275882918();

  v100 = v15;
  v119 = v15;
  v120 = v16;
  v102 = v16;
  v101 = v17;
  sub_2759B9D68();
  v19 = v123;
  swift_getKeyPath();
  v119 = v19;
  v99 = sub_27593C13C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
  sub_2759B8638();

  v20 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v21 = *&v19[v20];
  v22 = v21;

  if (v21)
  {
    v23 = *&v22[OBJC_IVAR___ICSHomeDataModel_icloudAppsCard];

    v24 = *&v23[OBJC_IVAR____TtC14iCloudSettings14iCloudAppsCard_title];
    v25 = *&v23[OBJC_IVAR____TtC14iCloudSettings14iCloudAppsCard_title + 8];
  }

  else
  {
    type metadata accessor for iCloudHomeViewModel(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v23 = [objc_opt_self() bundleForClass_];
    v24 = sub_2759B83C8();
    v25 = v27;
  }

  v119 = v24;
  v120 = v25;
  sub_27589F2D4(v28, v29, v30);
  v31 = sub_2759B99C8();
  v33 = v32;
  v35 = v34;
  sub_2759B9858();
  v36 = sub_2759B9988();
  v38 = v37;
  v40 = v39;

  sub_27589F328(v31, v33, v35 & 1);

  if (qword_280A0E3B8 != -1)
  {
    swift_once();
  }

  v119 = qword_280A239B8;

  v41 = sub_2759B9958();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  sub_27589F328(v36, v38, v40 & 1);

  v119 = v41;
  v120 = v43;
  v121 = v45 & 1;
  v122 = v47;
  sub_2759B9B38();
  sub_27589F328(v41, v43, v45 & 1);

  v119 = v100;
  v120 = v102;
  sub_2759B9D68();
  v48 = v118;
  swift_getKeyPath();
  v119 = v48;
  sub_2759B8638();

  v49 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v50 = *&v48[v49];
  v51 = v50;

  if (v50)
  {
    v52 = *&v51[OBJC_IVAR___ICSHomeDataModel_icloudAppsCard];

    v53 = *&v52[OBJC_IVAR____TtC14iCloudSettings14iCloudAppsCard_detailLabel];
    v54 = *&v52[OBJC_IVAR____TtC14iCloudSettings14iCloudAppsCard_detailLabel + 8];
  }

  else
  {
    type metadata accessor for iCloudHomeViewModel(0);
    v55 = swift_getObjCClassFromMetadata();
    v56 = [objc_opt_self() bundleForClass_];
    v53 = sub_2759B83C8();
    v54 = v57;
  }

  v119 = v53;
  v120 = v54;
  v58 = sub_2759B99C8();
  v60 = v59;
  v62 = v61;
  sub_2759B9858();
  v63 = sub_2759B9988();
  v65 = v64;
  v67 = v66;

  sub_27589F328(v58, v60, v62 & 1);

  if (qword_280A0E3C0 != -1)
  {
    swift_once();
  }

  v119 = qword_280A239C0;

  v68 = sub_2759B9958();
  v70 = v69;
  v72 = v71;
  v74 = v73;
  sub_27589F328(v63, v65, v67 & 1);

  v119 = v68;
  v120 = v70;
  v121 = v72 & 1;
  v122 = v74;
  v75 = v117;
  sub_2759B9B38();
  sub_27589F328(v68, v70, v72 & 1);

  v76 = sub_2759B9CB8();
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10AC0, &qword_2759C7C78);
  v78 = v112;
  v79 = (v112 + *(v77 + 36));
  v80 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F1A8, &qword_2759C8C00) + 28);
  v81 = *MEMORY[0x277CE1050];
  v82 = sub_2759B9D18();
  (*(*(v82 - 8) + 104))(v79 + v80, v81, v82);
  *v79 = swift_getKeyPath();
  *v78 = v76;
  v83 = sub_2759B98F8();
  KeyPath = swift_getKeyPath();
  v85 = (v78 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10AC8, &qword_2759C7CE0) + 36));
  *v85 = KeyPath;
  v85[1] = v83;
  v86 = [objc_opt_self() tertiaryLabelColor];
  v87 = sub_2759B9BD8();
  v88 = swift_getKeyPath();
  v89 = (v78 + *(v110 + 36));
  *v89 = v88;
  v89[1] = v87;
  v90 = v116;
  v91 = v113;
  sub_27586FBC8(v116, v113, &qword_280A0F600, &qword_2759C4210);
  v92 = v114;
  sub_27586FBC8(v75, v114, &qword_280A0F600, &qword_2759C4210);
  v93 = v115;
  sub_27586FBC8(v78, v115, &qword_280A10AB8, &qword_2759C7C48);
  v94 = v111;
  *v111 = v108;
  *(v94 + 8) = v107;
  v94[2] = v106;
  *(v94 + 24) = v105;
  v95 = v103;
  v94[4] = v104;
  v94[5] = v95;
  v94[6] = v109;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11368, &qword_2759CACC0);
  sub_27586FBC8(v91, v94 + v96[12], &qword_280A0F600, &qword_2759C4210);
  v97 = v94 + v96[16];
  *v97 = 0x4020000000000000;
  v97[8] = 0;
  sub_27586FBC8(v92, v94 + v96[20], &qword_280A0F600, &qword_2759C4210);
  sub_27586FBC8(v93, v94 + v96[24], &qword_280A10AB8, &qword_2759C7C48);

  sub_27586BF04(v78, &qword_280A10AB8, &qword_2759C7C48);
  sub_27586BF04(v117, &qword_280A0F600, &qword_2759C4210);
  sub_27586BF04(v90, &qword_280A0F600, &qword_2759C4210);
  sub_27586BF04(v93, &qword_280A10AB8, &qword_2759C7C48);
  sub_27586BF04(v92, &qword_280A0F600, &qword_2759C4210);
  sub_27586BF04(v91, &qword_280A0F600, &qword_2759C4210);
}

uint64_t sub_27593AE3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10A90, &qword_2759CABF0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11348, &qword_2759CABF8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  *v15 = sub_2759B9418();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11350, &unk_2759CAC00);
  sub_27593B084(a1, &v15[*(v16 + 44)]);
  *v9 = sub_2759B9418();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10AA8, &qword_2759C7C38);
  sub_27593B5C8(a1, &v9[*(v17 + 44)]);
  sub_27586FBC8(v15, v13, &qword_280A11348, &qword_2759CABF8);
  sub_27586FBC8(v9, v7, &qword_280A10A90, &qword_2759CABF0);
  sub_27586FBC8(v13, a2, &qword_280A11348, &qword_2759CABF8);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11358, &qword_2759CAC10);
  sub_27586FBC8(v7, a2 + *(v18 + 48), &qword_280A10A90, &qword_2759CABF0);
  sub_27586BF04(v9, &qword_280A10A90, &qword_2759CABF0);
  sub_27586BF04(v15, &qword_280A11348, &qword_2759CABF8);
  sub_27586BF04(v7, &qword_280A10A90, &qword_2759CABF0);
  return sub_27586BF04(v13, &qword_280A11348, &qword_2759CABF8);
}

uint64_t sub_27593B084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F600, &qword_2759C4210);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v57 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v56 = &v48 - v7;
  sub_2759BA028();
  sub_2759B8F18();
  v54 = v63;
  v53 = v64;
  v52 = v65;
  v51 = v66;
  v50 = v67;
  v49 = v68;
  v8 = (a1 + *(type metadata accessor for AppsUsingiCloudSection(0) + 24));
  v10 = v8[1];
  v58 = *v8;
  v9 = v58;
  v59 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v11 = v62;
  v55 = sub_275882918();

  v58 = v9;
  v59 = v10;
  sub_2759B9D68();
  v12 = v62;
  swift_getKeyPath();
  v58 = v12;
  sub_27593C13C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
  sub_2759B8638();

  v13 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v14 = *&v12[v13];
  v15 = v14;

  if (v14)
  {
    v16 = *&v15[OBJC_IVAR___ICSHomeDataModel_icloudAppsCard];

    v17 = *&v16[OBJC_IVAR____TtC14iCloudSettings14iCloudAppsCard_title];
    v18 = *&v16[OBJC_IVAR____TtC14iCloudSettings14iCloudAppsCard_title + 8];
  }

  else
  {
    type metadata accessor for iCloudHomeViewModel(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v16 = [objc_opt_self() bundleForClass_];
    v17 = sub_2759B83C8();
    v18 = v20;
  }

  v58 = v17;
  v59 = v18;
  sub_27589F2D4(v21, v22, v23);
  v24 = sub_2759B99C8();
  v26 = v25;
  v28 = v27;
  sub_2759B9858();
  v29 = sub_2759B9988();
  v31 = v30;
  v33 = v32;

  sub_27589F328(v24, v26, v28 & 1);

  if (qword_280A0E3B8 != -1)
  {
    swift_once();
  }

  v58 = qword_280A239B8;

  v34 = sub_2759B9958();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_27589F328(v29, v31, v33 & 1);

  v58 = v34;
  v59 = v36;
  v60 = v38 & 1;
  v61 = v40;
  v41 = v56;
  sub_2759B9B38();
  sub_27589F328(v34, v36, v38 & 1);

  v42 = v57;
  sub_27586FBC8(v41, v57, &qword_280A0F600, &qword_2759C4210);
  v43 = v55;
  *a2 = v54;
  *(a2 + 8) = v53;
  *(a2 + 16) = v52;
  *(a2 + 24) = v51;
  v44 = v49;
  *(a2 + 32) = v50;
  *(a2 + 40) = v44;
  *(a2 + 48) = v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11360, &qword_2759CACB8);
  sub_27586FBC8(v42, a2 + *(v45 + 48), &qword_280A0F600, &qword_2759C4210);
  v46 = a2 + *(v45 + 64);
  *v46 = 0;
  *(v46 + 8) = 1;

  sub_27586BF04(v41, &qword_280A0F600, &qword_2759C4210);
  sub_27586BF04(v42, &qword_280A0F600, &qword_2759C4210);
}

uint64_t sub_27593B5C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10AB8, &qword_2759C7C48);
  v3 = MEMORY[0x28223BE20](v62);
  v65 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = (&v62 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F600, &qword_2759C4210);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v64 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v63 = &v62 - v10;
  v11 = (a1 + *(type metadata accessor for AppsUsingiCloudSection(0) + 24));
  v13 = *v11;
  v12 = v11[1];
  v67 = v13;
  v68 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v14 = v71;
  swift_getKeyPath();
  v67 = v14;
  sub_27593C13C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
  sub_2759B8638();

  v15 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v16 = *&v14[v15];
  v17 = v16;

  if (v16)
  {
    v18 = *&v17[OBJC_IVAR___ICSHomeDataModel_icloudAppsCard];

    v19 = *&v18[OBJC_IVAR____TtC14iCloudSettings14iCloudAppsCard_detailLabel];
    v20 = *&v18[OBJC_IVAR____TtC14iCloudSettings14iCloudAppsCard_detailLabel + 8];
  }

  else
  {
    type metadata accessor for iCloudHomeViewModel(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v18 = [objc_opt_self() bundleForClass_];
    v19 = sub_2759B83C8();
    v20 = v22;
  }

  v67 = v19;
  v68 = v20;
  sub_27589F2D4(v23, v24, v25);
  v26 = sub_2759B99C8();
  v28 = v27;
  v30 = v29;
  sub_2759B9858();
  v31 = sub_2759B9988();
  v33 = v32;
  v35 = v34;

  sub_27589F328(v26, v28, v30 & 1);

  if (qword_280A0E3C0 != -1)
  {
    swift_once();
  }

  v67 = qword_280A239C0;

  v36 = sub_2759B9958();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  sub_27589F328(v31, v33, v35 & 1);

  v67 = v36;
  v68 = v38;
  v69 = v40 & 1;
  v70 = v42;
  v43 = v63;
  sub_2759B9B38();
  sub_27589F328(v36, v38, v40 & 1);

  v44 = sub_2759B9CB8();
  v45 = (v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10AC0, &qword_2759C7C78) + 36));
  v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F1A8, &qword_2759C8C00) + 28);
  v47 = *MEMORY[0x277CE1050];
  v48 = sub_2759B9D18();
  (*(*(v48 - 8) + 104))(v45 + v46, v47, v48);
  *v45 = swift_getKeyPath();
  *v6 = v44;
  v49 = sub_2759B98F8();
  KeyPath = swift_getKeyPath();
  v51 = (v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10AC8, &qword_2759C7CE0) + 36));
  *v51 = KeyPath;
  v51[1] = v49;
  v52 = [objc_opt_self() tertiaryLabelColor];
  v53 = sub_2759B9BD8();
  v54 = swift_getKeyPath();
  v55 = (v6 + *(v62 + 36));
  *v55 = v54;
  v55[1] = v53;
  v56 = v64;
  sub_27586FBC8(v43, v64, &qword_280A0F600, &qword_2759C4210);
  v57 = v65;
  sub_27586FBC8(v6, v65, &qword_280A10AB8, &qword_2759C7C48);
  v58 = v66;
  sub_27586FBC8(v56, v66, &qword_280A0F600, &qword_2759C4210);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10AD0, &qword_2759CACB0);
  v60 = v58 + *(v59 + 48);
  *v60 = 0x4020000000000000;
  *(v60 + 8) = 0;
  sub_27586FBC8(v57, v58 + *(v59 + 64), &qword_280A10AB8, &qword_2759C7C48);
  sub_27586BF04(v6, &qword_280A10AB8, &qword_2759C7C48);
  sub_27586BF04(v43, &qword_280A0F600, &qword_2759C4210);
  sub_27586BF04(v57, &qword_280A10AB8, &qword_2759C7C48);
  return sub_27586BF04(v56, &qword_280A0F600, &qword_2759C4210);
}

uint64_t sub_27593BC48()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11260, &qword_2759CAAA8);
  MEMORY[0x28223BE20](v1);
  v13 = v0;
  sub_275939F9C(v0, &v12[-v2]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11268, &qword_2759CAAB0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11270, &qword_2759CAAB8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11278, &qword_2759CAAC0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11280, &qword_2759CAAC8);
  v6 = sub_2759B9648();
  v7 = sub_27589B02C(&qword_280A11288, &qword_280A11280, &qword_2759CAAC8, MEMORY[0x277CE1198]);
  v8 = sub_27593C13C(&qword_280A0FC00, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
  v14 = v5;
  v15 = v6;
  v16 = v7;
  v17 = v8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v10 = sub_27593BE80();
  v14 = v3;
  v15 = MEMORY[0x277CE1350];
  v16 = v4;
  v17 = v4;
  v18 = OpaqueTypeConformance2;
  v19 = MEMORY[0x277CE1340];
  v20 = v10;
  v21 = v10;
  swift_getOpaqueTypeConformance2();
  sub_27593BFCC();
  return sub_2759B9F48();
}

unint64_t sub_27593BE80()
{
  result = qword_280A11290;
  if (!qword_280A11290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11278, &qword_2759CAAC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11280, &qword_2759CAAC8);
    sub_2759B9648();
    sub_27589B02C(&qword_280A11288, &qword_280A11280, &qword_2759CAAC8, MEMORY[0x277CE1198]);
    sub_27593C13C(&qword_280A0FC00, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11290);
  }

  return result;
}

unint64_t sub_27593BFCC()
{
  result = qword_280A11298;
  if (!qword_280A11298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11260, &qword_2759CAAA8);
    sub_27593C050();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11298);
  }

  return result;
}

unint64_t sub_27593C050()
{
  result = qword_280A112A0;
  if (!qword_280A112A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A112A8, &unk_2759CAAD0);
    sub_27593C13C(&qword_280A112B0, MEMORY[0x277CFB258], MEMORY[0x277CFB250]);
    sub_27593C13C(&qword_280A0F688, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A112A0);
  }

  return result;
}

uint64_t sub_27593C13C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_27593C184(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppsUsingiCloudSection(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27593C1E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppsUsingiCloudSection(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27593C24C()
{
  v1 = *(type metadata accessor for AppsUsingiCloudSection(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_275939814(v2);
}

unint64_t sub_27593C2B4()
{
  result = qword_280A112F8;
  if (!qword_280A112F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A112F0, &qword_2759CAB90);
    sub_27589B02C(&qword_280A11300, &qword_280A11308, &qword_2759CAB98, MEMORY[0x277CE1198]);
    sub_27589B02C(&qword_280A11310, &qword_280A11318, &qword_2759CABA0, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A112F8);
  }

  return result;
}

unint64_t sub_27593C398()
{
  result = qword_280A11370;
  if (!qword_280A11370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11378, qword_2759CACC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11270, &qword_2759CAAB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11278, &qword_2759CAAC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11280, &qword_2759CAAC8);
    sub_2759B9648();
    sub_27589B02C(&qword_280A11288, &qword_280A11280, &qword_2759CAAC8, MEMORY[0x277CE1198]);
    sub_27593C13C(&qword_280A0FC00, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
    swift_getOpaqueTypeConformance2();
    sub_27593BE80();
    swift_getOpaqueTypeConformance2();
    sub_27593BFCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11370);
  }

  return result;
}

uint64_t type metadata accessor for InternalSymbolView(uint64_t a1)
{
  result = qword_280A11380;
  if (!qword_280A11380)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27593C5E4(uint64_t a1)
{
  sub_27586E3E8(319, &qword_280A0E888, MEMORY[0x277D23340], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_27593C708(319);
    if (v2 <= 0x3F)
    {
      sub_27586E3E8(319, &qword_280A0E6C8, MEMORY[0x277D232D0], MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_27585AF74(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_27593C708(uint64_t a1)
{
  if (!qword_280A11390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11398, &unk_2759CBFB0);
    v1 = sub_2759BA448();
    if (!v2)
    {
      atomic_store(v1, &qword_280A11390);
    }
  }
}

uint64_t sub_27593C76C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E8A8, qword_2759C2120);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for InternalSymbolView(0);
  sub_27593D87C(v1 + *(v6 + 20), v5);
  v7 = sub_2759B8C48();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    sub_27585F4E0(v5);
    v13 = 0;
    v14 = 1;
LABEL_5:
    result = sub_2759B95E8();
    v10 = v16;
    *a1 = v15;
    *(a1 + 8) = v10;
    return result;
  }

  if (*(v1 + *(v6 + 32)))
  {

    sub_2759B8C38();

    (*(v8 + 8))(v5, v7);
    sub_2759B9CE8();
    v11 = sub_2759B9CA8();

    v13 = v11;
    v14 = 0;
    goto LABEL_5;
  }

  sub_2759B8C08();
  sub_27593D940(&qword_280A0E6E0, MEMORY[0x277D23330], MEMORY[0x277D233A0]);
  result = sub_2759B9158();
  __break(1u);
  return result;
}

uint64_t sub_27593C9E0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000012;
  v4 = 0x80000002759DD170;
  if (v2 == 1)
  {
    v5 = 0x80000002759DD170;
  }

  else
  {
    v3 = 0x646F4D6567616D69;
    v5 = 0xEE00737265696669;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 25705;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE200000000000000;
  }

  v8 = 0xD000000000000012;
  if (*a2 != 1)
  {
    v8 = 0x646F4D6567616D69;
    v4 = 0xEE00737265696669;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 25705;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE200000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2759BAAC8();
  }

  return v11 & 1;
}

uint64_t sub_27593CAEC()
{
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

double sub_27593CB94(uint64_t a1)
{
  sub_2759BA328();

  return result;
}

uint64_t sub_27593CC28(uint64_t a1)
{
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

unint64_t sub_27593CCCC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_27593DBE4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_27593CCFC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0x80000002759DD170;
  v5 = 0xD000000000000012;
  if (v2 != 1)
  {
    v5 = 0x646F4D6567616D69;
    v4 = 0xEE00737265696669;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 25705;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_27593CD60()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0x646F4D6567616D69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

unint64_t sub_27593CDC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27593DBE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27593CDE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_27593D8EC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_27593CE24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_27593D8EC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_27593CE60@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v53 = sub_2759B8C88();
  v49 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v56 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E8A8, qword_2759C2120);
  MEMORY[0x28223BE20](v4 - 8);
  v51 = (&v47 - v5);
  v50 = sub_2759B85A8();
  v54 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A113C0, &unk_2759CAE30);
  v55 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v47 - v9;
  v11 = type metadata accessor for InternalSymbolView(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = (&v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v14 + *(v12 + 28)) = MEMORY[0x277D84F90];
  v15 = v14 + *(v12 + 32);
  sub_2759B8C08();
  sub_27593D940(&qword_280A0E6E0, MEMORY[0x277D23330], MEMORY[0x277D233A0]);
  v57 = sub_2759B9168();
  *v15 = v57;
  *(v15 + 1) = v16;
  v17 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27593D8EC(v17, v18, v19);
  v20 = v58;
  sub_2759BAC18();
  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v21 = v54;
    v47 = v14;
    v48 = v11;
    v58 = a1;
    LOBYTE(v59) = 0;
    v22 = sub_2759BAA58();
    if (!v23)
    {
      v25 = v7;
      sub_2759B8598();
      v26 = sub_2759B8588();
      v28 = v27;
      (*(v21 + 8))(v25, v50);
      v23 = v28;
      v22 = v26;
    }

    v29 = v51;
    v30 = v52;
    v31 = v56;
    v32 = v47;
    *v47 = v22;
    *(v32 + 8) = v23;
    sub_2759B8C48();
    LOBYTE(v59) = 1;
    sub_27593D940(&qword_280A0E8C0, MEMORY[0x277D23340], MEMORY[0x277D23348]);
    sub_2759BAA68();
    sub_27586FC84(v29, v32 + *(v48 + 20));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FD28, &qword_2759C56F8);
    LOBYTE(v59) = 2;
    sub_2758CD9FC();
    sub_2759BAA68();
    v50 = v10;
    v33 = v61;
    v34 = MEMORY[0x277D84F90];
    v35 = v58;
    v36 = v55;
    if (v61)
    {
      v37 = *(v61 + 16);
      if (v37)
      {
        v60 = MEMORY[0x277D84F90];
        sub_2759509F0(0, v37, 0);
        v34 = v60;
        v38 = v49 + 16;
        v57 = *(v49 + 16);
        v39 = *(v49 + 80);
        v49 = v33;
        v40 = v33 + ((v39 + 32) & ~v39);
        v54 = *(v38 + 56);
        v51 = (v38 - 8);
        v41 = v53;
        do
        {
          v42 = v31;
          v43 = v31;
          v44 = v38;
          v57(v42, v40, v41);
          sub_2759B8C78();
          v41 = v53;
          (*v51)(v43, v53);
          v60 = v34;
          v46 = *(v34 + 16);
          v45 = *(v34 + 24);
          if (v46 >= v45 >> 1)
          {
            sub_2759509F0((v45 > 1), v46 + 1, 1);
            v41 = v53;
            v34 = v60;
          }

          *(v34 + 16) = v46 + 1;
          sub_275827D1C(&v59, v34 + 40 * v46 + 32);
          v40 += v54;
          --v37;
          v38 = v44;
          v31 = v56;
        }

        while (v37);

        v35 = v58;
        v30 = v52;
      }

      else
      {
      }

      v36 = v55;
      v32 = v47;
    }

    (*(v36 + 8))(v50, v8);
    *(v32 + *(v48 + 24)) = v34;
    sub_27593D988(v32, v30);
    __swift_destroy_boxed_opaque_existential_1(v35);
    return sub_27593D9EC(v32);
  }
}

uint64_t sub_27593D4FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_27593D940(&qword_280A11050, type metadata accessor for InternalSymbolView, &unk_2759CADE8);

  return MEMORY[0x282182170](a1, v4, a2);
}

uint64_t sub_27593D580(uint64_t a1, uint64_t a2)
{
  v4 = sub_27593D940(&qword_280A113A0, type metadata accessor for InternalSymbolView, &unk_2759CAD98);

  return MEMORY[0x282182168](a1, a2, v4);
}

uint64_t sub_27593D5FC(uint64_t a1)
{
  v2 = sub_27593D940(&qword_280A113A0, type metadata accessor for InternalSymbolView, &unk_2759CAD98);

  return MEMORY[0x2821822F0](a1, v2);
}

uint64_t sub_27593D678(uint64_t a1, uint64_t a2)
{
  v4 = sub_27593D940(&qword_280A113B8, type metadata accessor for InternalSymbolView, &unk_2759CAD60);

  return MEMORY[0x282182160](a1, a2, v4);
}

uint64_t sub_27593D734(uint64_t a1, uint64_t a2)
{
  sub_27593D940(&qword_280A11050, type metadata accessor for InternalSymbolView, &unk_2759CADE8);
  sub_27593D940(&qword_280A113A0, type metadata accessor for InternalSymbolView, &unk_2759CAD98);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_27593D87C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E8A8, qword_2759C2120);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_27593D8EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A113C8;
  if (!qword_280A113C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A113C8);
  }

  return result;
}

uint64_t sub_27593D940(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_27593D988(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InternalSymbolView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27593D9EC(uint64_t a1)
{
  v2 = type metadata accessor for InternalSymbolView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_27593DA58()
{
  result = qword_280A113D0;
  if (!qword_280A113D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A113D8, &qword_2759CAE58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A113D0);
  }

  return result;
}

unint64_t sub_27593DAE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A113E0;
  if (!qword_280A113E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A113E0);
  }

  return result;
}

unint64_t sub_27593DB38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A113E8;
  if (!qword_280A113E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A113E8);
  }

  return result;
}

unint64_t sub_27593DB90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A113F0;
  if (!qword_280A113F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A113F0);
  }

  return result;
}

unint64_t sub_27593DBE4(uint64_t a1, uint64_t a2)
{
  v2 = sub_2759BAA48();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

void sub_27593DC40(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v11 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  if (a4)
  {
    v12 = a4;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v13 = sub_27595CE18(v12);

  v14 = sub_27592E2A4(v13, a2, a3, v11, v19);

  if (a5)
  {
    v15 = a5;
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v16 = sub_27595CE18(v15);

  v17 = sub_275964980(v16, a2, a3, v14);

  v18 = MEMORY[0x277CE11C0];
  a6[3] = MEMORY[0x277CE11C8];
  a6[4] = v18;
  *a6 = v17;
}

uint64_t sub_27593DD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  return MEMORY[0x2822009F8](sub_27593DD94, 0, 0);
}

uint64_t sub_27593DD94()
{
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 23;
  v0[3] = sub_27593DEB0;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10D50, &qword_2759C8DA8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_27590F81C;
  v0[13] = &block_descriptor_10;
  v0[14] = v2;
  [v1 fetchMultiUserVoiceIdentificationSetting_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_27593DEB0()
{

  return MEMORY[0x2822009F8](sub_27593DF90, 0, 0);
}

uint64_t sub_27593DF90()
{
  if (*(v0 + 184) == 1)
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v1 = sub_2759B89A8();
    __swift_project_value_buffer(v1, qword_2815ADE70);
    v2 = sub_2759B8988();
    v3 = sub_2759BA668();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_275819000, v2, v3, "IfVoiceIdentificationInHomeEnabledAction: enabled, performing then actions", v4, 2u);
      MEMORY[0x277C85860](v4, -1, -1);
    }

    v5 = *(v0 + 168);

    if (!v5)
    {
      goto LABEL_14;
    }

LABEL_13:
    sub_2759BA438();
    goto LABEL_14;
  }

  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v6 = sub_2759B89A8();
  __swift_project_value_buffer(v6, qword_2815ADE70);
  v7 = sub_2759B8988();
  v8 = sub_2759BA668();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_275819000, v7, v8, "IfVoiceIdentificationInHomeEnabledAction: NOT enabled, performing else actions", v9, 2u);
    MEMORY[0x277C85860](v9, -1, -1);
  }

  v10 = *(v0 + 176);

  if (v10)
  {
    goto LABEL_13;
  }

LABEL_14:
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_27593E188(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 1702063205;
  }

  else
  {
    v2 = 1852139636;
  }

  if (*a2)
  {
    v3 = 1702063205;
  }

  else
  {
    v3 = 1852139636;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_2759BAAC8();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_27593E200()
{
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

double sub_27593E268(uint64_t a1)
{
  sub_2759BA328();

  return result;
}

uint64_t sub_27593E2B4(uint64_t a1)
{
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

void sub_27593E318(char *a2@<X8>)
{
  v3 = sub_2759BAA48();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_27593E378(uint64_t *a1@<X8>)
{
  v2 = 1852139636;
  if (*v1)
  {
    v2 = 1702063205;
  }

  *a1 = v2;
  a1[1] = 0xE400000000000000;
}

uint64_t sub_27593E3A0()
{
  if (*v0)
  {
    return 1702063205;
  }

  else
  {
    return 1852139636;
  }
}

void sub_27593E3C4(char *a3@<X8>)
{
  v4 = sub_2759BAA48();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v4)
  {
    v5 = 0;
  }

  *a3 = v5;
}

uint64_t sub_27593E428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_27593EC94(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_27593E464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_27593EC94(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_27593E4A0(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[2];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_27585A7E4;

  return sub_27593DD6C(a1, a2, v6, v7, v8);
}

void *sub_27593E5DC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_27593E6E8(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

unint64_t sub_27593E610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A113F8;
  if (!qword_280A113F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A113F8);
  }

  return result;
}

unint64_t sub_27593E668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A11400;
  if (!qword_280A11400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11400);
  }

  return result;
}

void *sub_27593E6E8(void *a1)
{
  v3 = sub_2759B8BD8();
  v49 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11408, &unk_2759CB0F0);
  v50 = *(v6 - 1);
  MEMORY[0x28223BE20](v6);
  v8 = v43 - v7;
  v9 = [objc_allocWithZone(MEMORY[0x277CEF3A8]) init];
  v10 = a1[3];
  v53 = a1;
  v11 = __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_27593EC94(v11, v12, v13);
  sub_2759BAC18();
  v14 = v1;
  if (v1)
  {

    __swift_destroy_boxed_opaque_existential_1(v53);
    return v6;
  }

  v54 = v3;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FB10, &qword_2759C79D0);
  LOBYTE(v55[0]) = 0;
  v16 = sub_2758C7304();
  v17 = v8;
  sub_2759BAA68();
  v19 = v6;
  v6 = v9;
  if (v57)
  {
    v48 = v19;
    v20 = *(v57 + 16);
    if (v20)
    {
      v43[2] = v16;
      v44 = v15;
      v45 = v8;
      v46 = 0;
      v47 = v6;
      v56 = MEMORY[0x277D84F90];
      v21 = v57;
      sub_2759509B0(0, v20, 0);
      v22 = v56;
      v23 = *(v49 + 16);
      v24 = *(v49 + 80);
      v43[1] = v21;
      v25 = v21 + ((v24 + 32) & ~v24);
      v51 = *(v49 + 72);
      v52 = v23;
      v26 = (v49 + 8);
      v27 = v54;
      do
      {
        v52(v5, v25, v27);
        sub_2759B8BC8();
        v27 = v54;
        (*v26)(v5, v54);
        v56 = v22;
        v29 = *(v22 + 16);
        v28 = *(v22 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_2759509B0((v28 > 1), v29 + 1, 1);
          v27 = v54;
          v22 = v56;
        }

        *(v22 + 16) = v29 + 1;
        sub_275827D1C(v55, v22 + 40 * v29 + 32);
        v25 += v51;
        --v20;
      }

      while (v20);

      v30 = v53;
      v14 = v46;
      v6 = v47;
      v31 = v48;
      v17 = v45;
      goto LABEL_15;
    }

    v31 = v48;
  }

  else
  {
    v31 = v19;
  }

  v30 = v53;
LABEL_15:
  LOBYTE(v55[0]) = 1;
  sub_2759BAA68();
  if (v14)
  {
    (*(v50 + 8))(v17, v31);

    __swift_destroy_boxed_opaque_existential_1(v30);
  }

  else
  {
    v32 = v57;
    if (v57)
    {
      v48 = v31;
      v33 = *(v57 + 16);
      if (v33)
      {
        v45 = v17;
        v46 = 0;
        v47 = v6;
        v56 = MEMORY[0x277D84F90];
        sub_2759509B0(0, v33, 0);
        v34 = v56;
        v35 = v49 + 16;
        v36 = *(v49 + 16);
        v37 = *(v49 + 80);
        v44 = v32;
        v38 = v32 + ((v37 + 32) & ~v37);
        v51 = *(v49 + 72);
        v52 = v36;
        v49 += 8;
        v39 = v54;
        do
        {
          v40 = v35;
          v52(v5, v38, v39);
          sub_2759B8BC8();
          v39 = v54;
          (*v49)(v5, v54);
          v56 = v34;
          v42 = *(v34 + 16);
          v41 = *(v34 + 24);
          if (v42 >= v41 >> 1)
          {
            sub_2759509B0((v41 > 1), v42 + 1, 1);
            v39 = v54;
            v34 = v56;
          }

          *(v34 + 16) = v42 + 1;
          sub_275827D1C(v55, v34 + 40 * v42 + 32);
          v38 += v51;
          --v33;
          v35 = v40;
        }

        while (v33);
        (*(v50 + 8))(v45, v48);

        v30 = v53;
        v6 = v47;
      }

      else
      {

        (*(v50 + 8))(v17, v48);
      }
    }

    else
    {
      (*(v50 + 8))(v17, v31);
    }

    __swift_destroy_boxed_opaque_existential_1(v30);
  }

  return v6;
}

unint64_t sub_27593EC94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A11410;
  if (!qword_280A11410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11410);
  }

  return result;
}

unint64_t sub_27593ECE8()
{
  result = qword_280A0FB20;
  if (!qword_280A0FB20)
  {
    sub_2759B8BD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0FB20);
  }

  return result;
}

unint64_t sub_27593ED54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A11418;
  if (!qword_280A11418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11418);
  }

  return result;
}

unint64_t sub_27593EDAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A11420;
  if (!qword_280A11420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11420);
  }

  return result;
}

unint64_t sub_27593EE04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A11428;
  if (!qword_280A11428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11428);
  }

  return result;
}

void sub_27593EEB0(uint64_t a1)
{
  sub_27593EFC4(319);
  if (v1 <= 0x3F)
  {
    sub_27594812C(319, &qword_280A11440, &type metadata for ManageStorageThermometerState, MEMORY[0x277CE10B8]);
    if (v2 <= 0x3F)
    {
      sub_27594812C(319, &qword_280A11448, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_2758BEB54(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_27593EFC4(uint64_t a1)
{
  if (!qword_280A0F8E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280A11C70, qword_2759C1240);
    v1 = sub_2759B9D98();
    if (!v2)
    {
      atomic_store(v1, &qword_280A0F8E8);
    }
  }
}

uint64_t sub_27593F044@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2759B93D8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ComplexThermometer(0);
  sub_27586FBC8(v1 + *(v10 + 44), v9, &qword_280A0FE90, qword_2759C4940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2759B8DA8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2759BA658();
    v13 = sub_2759B97C8();
    sub_2759B88C8();

    sub_2759B93C8();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_27593F24C@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = sub_2759BA038();
  a3[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11590, &qword_2759CB6F8);
  return sub_27593F2AC(a1, a2, a3 + *(v7 + 44));
}

uint64_t sub_27593F2AC@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v75 = a3;
  v79 = sub_2759B8F58();
  v5 = *(v79 - 8);
  v76 = *(v5 + 64);
  MEMORY[0x28223BE20](v79);
  v78 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ComplexThermometer(0);
  v70 = *(v7 - 8);
  v8 = *(v70 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11598, &qword_2759CB700);
  MEMORY[0x28223BE20](v77);
  v11 = (&v63 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A115A0, &qword_2759CB708);
  v73 = *(v12 - 8);
  v74 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v72 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v71 = &v63 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11128, &qword_2759CA080);
  v17 = v16 - 8;
  v18 = MEMORY[0x28223BE20](v16);
  v69 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v63 - v20;
  v22 = *MEMORY[0x277CE0118];
  v23 = sub_2759B94B8();
  (*(*(v23 - 8) + 104))(v21, v22, v23);
  sub_2759B8F48();
  sub_2759BA028();
  sub_2759B8F18();
  v24 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11120, &qword_2759CA078) + 36)];
  v25 = v83;
  *v24 = v82;
  *(v24 + 1) = v25;
  *(v24 + 2) = v84;
  v26 = *(a2 + 3);
  v27 = *(v17 + 44);
  v66 = v21;
  *&v21[v27] = v26;

  *v11 = sub_2759BA038();
  v11[1] = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A115A8, &qword_2759CB710);
  sub_27593FAA8(a2, a1, v11 + *(v29 + 44));
  v30 = sub_2759BA038();
  v32 = v31;
  v33 = (v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A115B0, &qword_2759CB718) + 36));
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A115B8, &qword_2759CB720);
  sub_2759404B0(a2, v33 + *(v34 + 36));
  *v33 = v30;
  v33[1] = v32;
  sub_275948380(a2, v9, type metadata accessor for ComplexThermometer);
  v35 = *(v5 + 16);
  v36 = v78;
  v68 = a1;
  v37 = v79;
  v64 = v35;
  v35(v78, a1, v79);
  v38 = *(v70 + 80);
  v39 = (v38 + 16) & ~v38;
  v40 = *(v5 + 80);
  v41 = (v8 + v40 + v39) & ~v40;
  v63 = v38 | v40;
  v42 = swift_allocObject();
  v65 = v9;
  sub_275947D80(v9, v42 + v39, type metadata accessor for ComplexThermometer);
  v43 = *(v5 + 32);
  v70 = v5 + 32;
  v43(v42 + v41, v36, v37);
  v44 = (v11 + *(v77 + 36));
  *v44 = sub_275948468;
  v44[1] = v42;
  v44[2] = 0;
  v44[3] = 0;
  v67 = a2;
  v81 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA28, &qword_2759C4AB8);
  sub_2759B9D68();
  v45 = v80;
  if (v80)
  {
    swift_getKeyPath();
    *&v81 = v45;
    sub_275947B3C(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel, &protocol conformance descriptor for ManageStorageAppsListViewModel);
    sub_2759B8638();

    v46 = *&v45[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__appsListDataModel];
    v47 = v46;
  }

  else
  {
    v46 = 0;
  }

  *&v81 = v46;
  v48 = v65;
  sub_275948380(v67, v65, type metadata accessor for ComplexThermometer);
  v50 = v78;
  v49 = v79;
  v64(v78, v68, v79);
  v51 = swift_allocObject();
  sub_275947D80(v48, v51 + v39, type metadata accessor for ComplexThermometer);
  v43(v51 + v41, v50, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11188, &unk_2759CA220);
  sub_2759486FC();
  sub_275931330();
  v52 = v71;
  sub_2759B9B88();

  sub_27586BF04(v11, &qword_280A11598, &qword_2759CB700);
  v53 = v66;
  v54 = v69;
  sub_27586FBC8(v66, v69, &qword_280A11128, &qword_2759CA080);
  v56 = v72;
  v55 = v73;
  v57 = *(v73 + 16);
  v58 = v74;
  v57(v72, v52, v74);
  v59 = v75;
  sub_27586FBC8(v54, v75, &qword_280A11128, &qword_2759CA080);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A115E8, &qword_2759CB730);
  v57((v59 + *(v60 + 48)), v56, v58);
  v61 = *(v55 + 8);
  v61(v52, v58);
  sub_27586BF04(v53, &qword_280A11128, &qword_2759CA080);
  v61(v56, v58);
  return sub_27586BF04(v54, &qword_280A11128, &qword_2759CA080);
}

uint64_t sub_27593FAA8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a2;
  v41 = a3;
  v4 = type metadata accessor for ComplexThermometer(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A115F0, &qword_2759CB760);
  v8 = MEMORY[0x28223BE20](v38);
  v40 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v33 - v10;
  *v11 = sub_2759B9418();
  *(v11 + 1) = 0x3FF0000000000000;
  v12 = v11;
  v11[16] = 0;
  v46 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA28, &qword_2759C4AB8);
  sub_2759B9D68();
  v13 = v42;
  if (v42)
  {
    swift_getKeyPath();
    *&v46 = v13;
    sub_275947B3C(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel, &protocol conformance descriptor for ManageStorageAppsListViewModel);
    sub_2759B8638();

    v14 = *&v13[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__thermometerSections];
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A115F8, &qword_2759CB768) + 44);
  *&v46 = v14;
  KeyPath = swift_getKeyPath();
  v37 = type metadata accessor for ComplexThermometer;
  sub_275948380(a1, v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ComplexThermometer);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  v34 = type metadata accessor for ComplexThermometer;
  sub_275947D80(v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for ComplexThermometer);
  v33[1] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11600, &qword_2759CB790);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11608, &qword_2759CB798);
  sub_27589B02C(&qword_280A11610, &qword_280A11600, &qword_2759CB790, MEMORY[0x277D83980]);
  sub_275947B3C(&qword_280A11618, type metadata accessor for ManageStorageThermometerSection, MEMORY[0x277D85378]);
  sub_275948A30();
  sub_2759B9ED8();
  sub_275948380(a1, v7, v37);
  v17 = swift_allocObject();
  sub_275947D80(v7, v17 + v15, v34);
  v18 = (v12 + *(v38 + 36));
  v33[0] = v12;
  *v18 = sub_275948C80;
  v18[1] = v17;
  sub_2759B8F48();
  sub_2759BA028();
  sub_2759B8F18();
  v19 = v55;
  v20 = v56;
  v39 = v57;
  v21 = v58;
  v23 = v59;
  v22 = v60;
  v24 = *(a1 + 4);
  if (*(a1 + 16) >= 2u)
  {
    v25 = 0.0;
  }

  else
  {
    v25 = 1.0;
  }

  v54 = v56;
  v53 = v58;
  v26 = v40;
  sub_27586FBC8(v12, v40, &qword_280A115F0, &qword_2759CB760);
  v27 = v41;
  sub_27586FBC8(v26, v41, &qword_280A115F0, &qword_2759CB760);
  v28 = (v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11660, &qword_2759CB7C0) + 48));
  *&v42 = v19;
  BYTE8(v42) = v20;
  v29 = v39;
  *&v43 = v39;
  BYTE8(v43) = v21;
  *&v44 = v23;
  *(&v44 + 1) = v22;
  *&v45 = v24;
  *(&v45 + 1) = v25;
  v30 = v43;
  *v28 = v42;
  v28[1] = v30;
  v31 = v45;
  v28[2] = v44;
  v28[3] = v31;

  sub_27586FBC8(&v42, &v46, &qword_280A11668, &qword_2759CB7C8);
  sub_27586BF04(v33[0], &qword_280A115F0, &qword_2759CB760);
  *&v46 = v19;
  BYTE8(v46) = v20;
  v47 = v29;
  v48 = v21;
  v49 = v23;
  v50 = v22;
  v51 = v24;
  v52 = v25;
  sub_27586BF04(&v46, &qword_280A11668, &qword_2759CB7C8);
  return sub_27586BF04(v26, &qword_280A115F0, &qword_2759CB760);
}

uint64_t sub_2759400A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_275947B3C(&qword_280A0F538, type metadata accessor for ThermometerSectionViewModel, &unk_2759C3C10);
  sub_2759B8638();

  sub_2759BA028();
  sub_2759B8F18();
  v6 = sub_2759401E4(v5);
  v7 = *(a2 + 24);
  v8 = sub_2759B97D8();
  *a3 = v5;
  *(a3 + 8) = v10;
  *(a3 + 16) = v11;
  *(a3 + 24) = v12;
  *(a3 + 32) = v13;
  *(a3 + 40) = v14;
  *(a3 + 48) = v6;
  *(a3 + 56) = v7;
  *(a3 + 64) = v8;
}

uint64_t sub_2759401E4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2759B8DA8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  sub_27593F044(&v16 - v9);
  (*(v5 + 104))(v8, *MEMORY[0x277CDF3D0], v4);
  v11 = sub_2759B8D98();
  v12 = *(v5 + 8);
  v12(v8, v4);
  v12(v10, v4);
  swift_getKeyPath();
  v17 = a1;
  sub_275947B3C(&qword_280A0F538, type metadata accessor for ThermometerSectionViewModel, &unk_2759C3C10);
  sub_2759B8638();

  if (v11)
  {
    v13 = 24;
  }

  else
  {
    v13 = 32;
  }

  v14 = *(a1 + v13);

  if (*(v2 + 16) >= 4u)
  {
    swift_getKeyPath();
    v17 = a1;
    sub_275947B3C(&qword_280A0F538, type metadata accessor for ThermometerSectionViewModel, &unk_2759C3C10);
    sub_2759B8638();

    if ((*(a1 + 64) & 1) == 0)
    {

      v14 = *(v2 + 48);
    }
  }

  return v14;
}

void sub_2759404B0(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2759B9EC8();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *MEMORY[0x277CE0118];
  v8 = sub_2759B94B8();
  (*(*(v8 - 8) + 104))(v6, v7, v8);
  sub_2759B8F48();
  if (*(a1 + 16) - 2 >= 3)
  {
    if (!*(a1 + 16))
    {
LABEL_26:
      sub_2759BA028();
      sub_2759B8F18();
      sub_275947D80(v6, a2, MEMORY[0x277CE1260]);
      v23 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11120, &qword_2759CA078) + 36));
      v24 = v30;
      *v23 = v29;
      v23[1] = v24;
      v23[2] = v31;
      return;
    }

    v29 = *a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA28, &qword_2759C4AB8);
    sub_2759B9D68();
    v13 = v28;
    if (v28)
    {
      swift_getKeyPath();
      *&v29 = v13;
      sub_275947B3C(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel, &protocol conformance descriptor for ManageStorageAppsListViewModel);
      sub_2759B8638();

      v14 = *&v13[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__thermometerSections];

      if (!(v14 >> 62))
      {
LABEL_7:

        goto LABEL_26;
      }
    }

    else if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_7;
    }

    sub_2759BA9E8();
    goto LABEL_7;
  }

  v9 = *a1;
  v10 = a1[1];
  *&v29 = *a1;
  *(&v29 + 1) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA28, &qword_2759C4AB8);
  sub_2759B9D68();
  v11 = v28;
  if (v28)
  {
    swift_getKeyPath();
    *&v29 = v11;
    sub_275947B3C(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel, &protocol conformance descriptor for ManageStorageAppsListViewModel);
    sub_2759B8638();

    v12 = *&v11[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__thermometerSections];
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v27 = v6;
  if (v12 >> 62)
  {
LABEL_32:
    v15 = sub_2759BA9E8();
  }

  else
  {
    v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = v15 - 1;
  if (!__OFSUB__(v15, 1))
  {
    *&v29 = v9;
    *(&v29 + 1) = v10;
    sub_2759B9D68();
    v17 = v28;
    if (v28)
    {
      swift_getKeyPath();
      *&v29 = v17;
      sub_275947B3C(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel, &protocol conformance descriptor for ManageStorageAppsListViewModel);
      sub_2759B8638();

      v18 = *&v17[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__thermometerSections];

      if (!(v18 >> 62))
      {
LABEL_14:
        v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_15:
        v26 = a2;
        v20 = v16;
        if (v19)
        {
          v9 = 0;
          a2 = v18 & 0xFFFFFFFFFFFFFF8;
          do
          {
            if ((v18 & 0xC000000000000001) != 0)
            {
              v21 = MEMORY[0x277C846A0](v9, v18);
              v10 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
LABEL_24:
                __break(1u);
                break;
              }
            }

            else
            {
              if (v9 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                goto LABEL_32;
              }

              v21 = *(v18 + 8 * v9 + 32);

              v10 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                goto LABEL_24;
              }
            }

            swift_getKeyPath();
            *&v29 = v21;
            sub_275947B3C(&qword_280A0F538, type metadata accessor for ThermometerSectionViewModel, &unk_2759C3C10);
            sub_2759B8638();

            v22 = *(v21 + 40);

            v20 = v20 + v22;
            ++v9;
          }

          while (v10 != v19);
        }

        a2 = v26;
        v6 = v27;
        goto LABEL_26;
      }
    }

    else
    {
      v18 = MEMORY[0x277D84F90];
      if (!(MEMORY[0x277D84F90] >> 62))
      {
        goto LABEL_14;
      }
    }

    v19 = sub_2759BA9E8();
    goto LABEL_15;
  }

  __break(1u);
}

void sub_275940A28(__int128 *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA28, &qword_2759C4AB8);
  sub_2759B9D68();
  if (v2)
  {
    sub_2759B8F48();
    sub_2758AB5E4(v1);
  }
}

uint64_t sub_275940A9C@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_275948380(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ComplexThermometer);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_275947D80(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for ComplexThermometer);
  *a2 = sub_2759483E8;
  a2[1] = v7;
  return result;
}

uint64_t sub_275940BB0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2759B93D8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for StorageThermometerCategoriesView(0);
  sub_27586FBC8(v1 + *(v10 + 24), v9, &qword_280A0FE90, qword_2759C4940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2759B8DA8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2759BA658();
    v13 = sub_2759B97C8();
    sub_2759B88C8();

    sub_2759B93C8();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_275940DB8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v81 = a1;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11670, &qword_2759CB820);
  MEMORY[0x28223BE20](v71);
  v72 = (&v68 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11678, &qword_2759CB828);
  MEMORY[0x28223BE20](v4);
  v6 = &v68 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11680, &qword_2759CB830);
  MEMORY[0x28223BE20](v7);
  v9 = (&v68 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11688, &qword_2759CB838);
  MEMORY[0x28223BE20](v10);
  v12 = &v68 - v11;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11690, &qword_2759CB840);
  MEMORY[0x28223BE20](v77);
  v79 = &v68 - v13;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11698, &qword_2759CB848);
  MEMORY[0x28223BE20](v75);
  v76 = &v68 - v14;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A116A0, &qword_2759CB850);
  MEMORY[0x28223BE20](v78);
  v16 = (&v68 - v15);
  v17 = type metadata accessor for StorageThermometerCategoriesView(0);
  v73 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v74 = v18;
  v19 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A116A8, &qword_2759CB858);
  v21 = MEMORY[0x28223BE20](v20);
  v69 = (&v68 - v22);
  v23 = *(v2 + 16);
  v80 = v4;
  if (v23 >= 3)
  {
    v69 = v9;
    v70 = v6;
    if (v23 == 3)
    {
      v70 = v21;
      v71 = v10;
      v72 = v16;
      v35 = sub_2759BA038();
      v36 = v69;
      *v69 = v35;
      v36[1] = v37;
      *(v36 + 16) = 0;
      v36[3] = 0x4024000000000000;
      *(v36 + 32) = 0;
      v86 = *v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA28, &qword_2759C4AB8);
      sub_2759B9D68();
      v38 = v85;
      v39 = v19;
      if (v85)
      {
        swift_getKeyPath();
        *&v86 = v38;
        sub_275947B3C(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel, &protocol conformance descriptor for ManageStorageAppsListViewModel);
        sub_2759B8638();

        v40 = *&v38[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__thermometerSections];
      }

      else
      {
        v40 = MEMORY[0x277D84F90];
      }

      v56 = v73;
      *&v86 = v40;
      swift_getKeyPath();
      sub_275948380(v2, v39, type metadata accessor for StorageThermometerCategoriesView);
      v57 = (*(v56 + 80) + 16) & ~*(v56 + 80);
      v58 = swift_allocObject();
      sub_275947D80(v39, v58 + v57, type metadata accessor for StorageThermometerCategoriesView);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11600, &qword_2759CB790);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A116C8, &qword_2759CB868);
      sub_27589B02C(&qword_280A11610, &qword_280A11600, &qword_2759CB790, MEMORY[0x277D83980]);
      sub_275947B3C(&qword_280A11618, type metadata accessor for ManageStorageThermometerSection, MEMORY[0x277D85378]);
      sub_275948D0C();
      v59 = v69;
      sub_2759B9ED8();
      sub_2759491E4();
      sub_2759B9B38();
      sub_27586BF04(v59, &qword_280A11680, &qword_2759CB830);
      v60 = &qword_280A11688;
      v61 = &qword_2759CB838;
      sub_27586FBC8(v12, v76, &qword_280A11688, &qword_2759CB838);
      swift_storeEnumTagMultiPayload();
      sub_275949014();
      sub_2759492C8(&qword_280A11738, &qword_280A11688, &qword_2759CB838, sub_2759491E4);
      v62 = v72;
      sub_2759B95E8();
      sub_27586FBC8(v62, v79, &qword_280A116A0, &qword_2759CB850);
      swift_storeEnumTagMultiPayload();
      sub_275948F5C();
      sub_2759492C8(&qword_280A11748, &qword_280A11678, &qword_2759CB828, sub_275948DF4);
      sub_2759B95E8();
      sub_27586BF04(v62, &qword_280A116A0, &qword_2759CB850);
      v53 = v12;
    }

    else
    {
      v42 = sub_2759BA038();
      v43 = v72;
      *v72 = v42;
      v43[1] = v44;
      *(v43 + 16) = 0;
      v43[3] = 0x4024000000000000;
      *(v43 + 32) = 0;
      v86 = *v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA28, &qword_2759C4AB8);
      sub_2759B9D68();
      v45 = v85;
      v46 = v19;
      if (v85)
      {
        swift_getKeyPath();
        *&v86 = v45;
        sub_275947B3C(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel, &protocol conformance descriptor for ManageStorageAppsListViewModel);
        sub_2759B8638();

        v47 = *&v45[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__thermometerSections];
      }

      else
      {
        v47 = MEMORY[0x277D84F90];
      }

      *&v86 = v47;
      swift_getKeyPath();
      sub_275948380(v2, v46, type metadata accessor for StorageThermometerCategoriesView);
      v63 = (*(v73 + 80) + 16) & ~*(v73 + 80);
      v64 = swift_allocObject();
      sub_275947D80(v46, v64 + v63, type metadata accessor for StorageThermometerCategoriesView);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11600, &qword_2759CB790);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A116B0, &qword_2759CB860);
      sub_27589B02C(&qword_280A11610, &qword_280A11600, &qword_2759CB790, MEMORY[0x277D83980]);
      sub_275947B3C(&qword_280A11618, type metadata accessor for ManageStorageThermometerSection, MEMORY[0x277D85378]);
      sub_27594917C(&qword_280A116B8, &qword_280A116B0, &qword_2759CB860, MEMORY[0x277CE1550]);
      v65 = v72;
      sub_2759B9ED8();
      sub_275948DF4();
      v66 = v70;
      sub_2759B9B38();
      sub_27586BF04(v65, &qword_280A11670, &qword_2759CB820);
      v60 = &qword_280A11678;
      v61 = &qword_2759CB828;
      sub_27586FBC8(v66, v79, &qword_280A11678, &qword_2759CB828);
      swift_storeEnumTagMultiPayload();
      sub_275948F5C();
      sub_2759492C8(&qword_280A11748, &qword_280A11678, &qword_2759CB828, sub_275948DF4);
      sub_2759B95E8();
      v53 = v66;
    }

    v54 = v60;
    v55 = v61;
  }

  else
  {
    v68 = v19;
    v70 = v21;
    v71 = v10;
    v72 = v16;
    v25 = *v2;
    v24 = *(v2 + 8);
    *&v86 = *v2;
    *(&v86 + 1) = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA28, &qword_2759C4AB8);
    sub_2759B9D68();
    v26 = v85;
    if (v85 && (swift_getKeyPath(), *&v86 = v26, sub_275947B3C(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel, &protocol conformance descriptor for ManageStorageAppsListViewModel), sub_2759B8638(), , v27 = *&v26[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__appsListDataModel], v28 = v27, v26, v27))
    {

      v29 = sub_2759BA038();
      v30 = *(v2 + *(v17 + 28));
      v84 = 0;
      v83 = 0;
      v82 = 0;
      v31 = v69;
      *v69 = v29;
      *(v31 + 8) = v32;
      *(v31 + 16) = 0;
      *(v31 + 24) = 0x4024000000000000;
      *(v31 + 32) = 0;
      *(v31 + 40) = v30;
      *(v31 + 48) = 0;
      *&v86 = v25;
      *(&v86 + 1) = v24;
      sub_2759B9D68();
      v33 = v85;
      if (v85)
      {
        swift_getKeyPath();
        *&v86 = v33;
        sub_2759B8638();

        v34 = *&v33[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__thermometerSections];
      }

      else
      {
        v34 = MEMORY[0x277D84F90];
      }

      v48 = v68;
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11720, &qword_2759CB888);
      *&v86 = v34;
      swift_getKeyPath();
      sub_275948380(v2, v48, type metadata accessor for StorageThermometerCategoriesView);
      v50 = (*(v73 + 80) + 16) & ~*(v73 + 80);
      v51 = swift_allocObject();
      sub_275947D80(v48, v51 + v50, type metadata accessor for StorageThermometerCategoriesView);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11600, &qword_2759CB790);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A116C8, &qword_2759CB868);
      sub_27589B02C(&qword_280A11610, &qword_280A11600, &qword_2759CB790, MEMORY[0x277D83980]);
      sub_275947B3C(&qword_280A11618, type metadata accessor for ManageStorageThermometerSection, MEMORY[0x277D85378]);
      sub_275948D0C();
      sub_2759B9ED8();
      (*(*(v49 - 8) + 56))(v31, 0, 1, v49);
    }

    else
    {
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11720, &qword_2759CB888);
      v31 = v69;
      (*(*(v41 - 8) + 56))(v69, 1, 1, v41);
    }

    sub_27586FBC8(v31, v76, &qword_280A116A8, &qword_2759CB858);
    swift_storeEnumTagMultiPayload();
    sub_275949014();
    sub_2759492C8(&qword_280A11738, &qword_280A11688, &qword_2759CB838, sub_2759491E4);
    v52 = v72;
    sub_2759B95E8();
    sub_27586FBC8(v52, v79, &qword_280A116A0, &qword_2759CB850);
    swift_storeEnumTagMultiPayload();
    sub_275948F5C();
    sub_2759492C8(&qword_280A11748, &qword_280A11678, &qword_2759CB828, sub_275948DF4);
    sub_2759B95E8();
    sub_27586BF04(v52, &qword_280A116A0, &qword_2759CB850);
    v53 = v31;
    v54 = &qword_280A116A8;
    v55 = &qword_2759CB858;
  }

  return sub_27586BF04(v53, v54, v55);
}

uint64_t sub_275941D10(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = sub_2759B9418();
  v12 = 0;
  sub_2759420B8(a2, v3, &v30);
  v25 = v42;
  v26 = v43;
  v21 = v38;
  v22 = v39;
  v23 = v40;
  v24 = v41;
  v17 = v34;
  v18 = v35;
  v19 = v36;
  v20 = v37;
  v13 = v30;
  v14 = v31;
  v15 = v32;
  v16 = v33;
  v28[12] = v42;
  v28[13] = v43;
  v28[8] = v38;
  v28[9] = v39;
  v28[10] = v40;
  v28[11] = v41;
  v28[4] = v34;
  v28[5] = v35;
  v28[6] = v36;
  v28[7] = v37;
  v28[0] = v30;
  v28[1] = v31;
  v27 = v44;
  v29 = v44;
  v28[2] = v32;
  v28[3] = v33;
  sub_27586FBC8(&v13, &v9, &qword_280A11750, &qword_2759CB898);
  sub_27586BF04(v28, &qword_280A11750, &qword_2759CB898);
  *(&v11[11] + 7) = v24;
  *(&v11[12] + 7) = v25;
  *(&v11[13] + 7) = v26;
  *(&v11[14] + 7) = v27;
  *(&v11[7] + 7) = v20;
  *(&v11[8] + 7) = v21;
  *(&v11[9] + 7) = v22;
  *(&v11[10] + 7) = v23;
  *(&v11[3] + 7) = v16;
  *(&v11[4] + 7) = v17;
  *(&v11[5] + 7) = v18;
  *(&v11[6] + 7) = v19;
  *(v11 + 7) = v13;
  *(&v11[1] + 7) = v14;
  *(&v11[2] + 7) = v15;
  *&v10[177] = v11[11];
  *&v10[193] = v11[12];
  *&v10[209] = v11[13];
  *&v10[224] = *(&v11[13] + 15);
  *&v10[113] = v11[7];
  *&v10[129] = v11[8];
  *&v10[145] = v11[9];
  *&v10[161] = v11[10];
  *&v10[49] = v11[3];
  *&v10[65] = v11[4];
  *&v10[81] = v11[5];
  *&v10[97] = v11[6];
  *&v10[1] = v11[0];
  *&v10[17] = v11[1];
  *&v9 = v4;
  *(&v9 + 1) = 0x4008000000000000;
  v10[0] = v12;
  *&v10[33] = v11[2];
  *&v30 = 0;
  *(&v30 + 1) = 0xE000000000000000;
  sub_2759BA8C8();

  *&v30 = 0xD000000000000011;
  *(&v30 + 1) = 0x80000002759E2350;
  v5 = (*(v3 + 16) + OBJC_IVAR____TtC14iCloudSettings31ManageStorageThermometerSection_displayLabel);
  v6 = *v5;
  v7 = v5[1];

  MEMORY[0x277C840E0](v6, v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A116D8, &qword_2759CB870);
  sub_27589B02C(&qword_280A116D0, &qword_280A116D8, &qword_2759CB870, MEMORY[0x277CE1138]);
  sub_2759B9B38();

  v42 = *&v10[176];
  v43 = *&v10[192];
  v44 = *&v10[208];
  v45 = *&v10[224];
  v38 = *&v10[112];
  v39 = *&v10[128];
  v40 = *&v10[144];
  v41 = *&v10[160];
  v34 = *&v10[48];
  v35 = *&v10[64];
  v36 = *&v10[80];
  v37 = *&v10[96];
  v30 = v9;
  v31 = *v10;
  v32 = *&v10[16];
  v33 = *&v10[32];
  return sub_27586BF04(&v30, &qword_280A116D8, &qword_2759CB870);
}

uint64_t sub_2759420B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v69 = a2;
  v5 = sub_2759B8DA8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v56 - v10;
  v67 = a1;
  sub_275940BB0(&v56 - v10);
  v12 = *(v6 + 104);
  LODWORD(v66) = *MEMORY[0x277CDF3D0];
  v65 = v12;
  v12(v9);
  LOBYTE(a1) = sub_2759B8D98();
  v13 = *(v6 + 8);
  v13(v9, v5);
  v13(v11, v5);
  swift_getKeyPath();
  v68 = OBJC_IVAR____TtC14iCloudSettings27ThermometerSectionViewModel___observationRegistrar;
  v113 = *&v69;
  sub_275947B3C(&qword_280A0F538, type metadata accessor for ThermometerSectionViewModel, &unk_2759C3C10);
  sub_2759B8638();

  if (a1)
  {
    v14 = 24;
  }

  else
  {
    v14 = 32;
  }

  v68 = *(v69 + v14);

  sub_275940BB0(v11);
  v65(v9, v66, v5);
  v15 = sub_2759B8D98();
  v13(v9, v5);
  v13(v11, v5);
  if (v15)
  {
    sub_2759B9C28();
  }

  else
  {
    sub_2759B9C48();
  }

  v66 = sub_2759B9C58();

  sub_2759B8DD8();
  v16 = v137;
  v17 = v137 * 0.5;
  v18 = v138;
  v64 = v138;
  v61 = v139;
  v19 = v140;
  v20 = v141;
  v63 = v141;
  v21 = v142;
  v65 = sub_2759BA028();
  v62 = v22;
  v23 = type metadata accessor for StorageThermometerCategoriesView(0);
  v24 = v67;
  sub_2759BA028();
  v25 = sub_2759B8F18();
  v26 = (*(v69 + 16) + OBJC_IVAR____TtC14iCloudSettings31ManageStorageThermometerSection_displayLabel);
  v27 = v26[1];
  v113 = *v26;
  v114 = v27;
  sub_27589F2D4(v25, v28, v29);

  *&v69 = COERCE_DOUBLE(sub_2759B99C8());
  v59 = v31;
  v60 = v30;
  v33 = v32;
  KeyPath = swift_getKeyPath();
  v34 = *(v24 + *(v23 + 36));
  v57 = swift_getKeyPath();
  LOBYTE(v27) = v33 & 1;
  LOBYTE(v113) = v33 & 1;
  LOBYTE(v88) = 0;
  v35 = *(v24 + *(v23 + 40));
  v36 = swift_getKeyPath();
  *&v88 = v17;
  *(&v88 + 1) = v16;
  *&v89 = __PAIR64__(v61, v18);
  v37 = v61;
  *(&v89 + 1) = v19;
  *&v90 = v20;
  *(&v90 + 1) = v21;
  *&v91 = v66;
  WORD4(v91) = 256;
  *(&v91 + 10) = v135;
  HIWORD(v91) = v136;
  *&v92 = v68;
  WORD4(v92) = 256;
  HIWORD(v92) = v134;
  *(&v92 + 10) = v133;
  v38 = v62;
  *&v93 = v65;
  *(&v93 + 1) = v62;
  v94 = v85;
  v95 = v86;
  v72 = v90;
  v73 = v91;
  v96 = v87;
  v76 = v85;
  v77 = v86;
  v70 = v88;
  v71 = v89;
  v74 = v92;
  v75 = v93;
  v39 = v69;
  *&v97 = v69;
  v41 = v59;
  v40 = v60;
  *(&v97 + 1) = v60;
  LOBYTE(v98) = LOBYTE(v27);
  *(&v98 + 1) = v59;
  v43 = v57;
  v42 = KeyPath;
  *&v99 = KeyPath;
  *(&v99 + 1) = 1;
  LOBYTE(v100) = 0;
  *(&v100 + 1) = v57;
  *&v101 = v34;
  *(&v101 + 1) = v36;
  v102 = v35;
  v84 = v35;
  v44 = v99;
  v82 = v100;
  v83 = v101;
  v78 = v87;
  v79 = v97;
  v80 = v98;
  v81 = v99;
  v45 = v89;
  *a3 = v88;
  *(a3 + 16) = v45;
  v46 = v72;
  v47 = v73;
  v48 = v75;
  *(a3 + 64) = v74;
  *(a3 + 80) = v48;
  *(a3 + 32) = v46;
  *(a3 + 48) = v47;
  v49 = v76;
  v50 = v77;
  v51 = v79;
  *(a3 + 128) = v78;
  *(a3 + 144) = v51;
  *(a3 + 96) = v49;
  *(a3 + 112) = v50;
  v52 = v80;
  v53 = v82;
  v54 = v83;
  *(a3 + 224) = v84;
  *(a3 + 192) = v53;
  *(a3 + 208) = v54;
  *(a3 + 160) = v52;
  *(a3 + 176) = v44;
  v103[0] = v39;
  v103[1] = v40;
  v104 = LOBYTE(v27);
  v105 = v41;
  v106 = v42;
  v107 = 1;
  v108 = 0;
  v109 = v43;
  v110 = v34;
  v111 = v36;
  v112 = v35;

  sub_27586FBC8(&v88, &v113, &qword_280A11758, &qword_2759CB930);
  sub_27586FBC8(&v97, &v113, &qword_280A11760, &qword_2759CB938);
  sub_27586BF04(v103, &qword_280A11760, &qword_2759CB938);
  v113 = v17;
  v114 = v16;
  v115 = v64;
  v116 = v37;
  v117 = v19;
  v118 = v63;
  v119 = v21;
  v120 = v66;
  v121 = 256;
  v122 = v135;
  v123 = v136;
  v124 = v68;
  v125 = 256;
  v127 = v134;
  v126 = v133;
  v128 = v65;
  v129 = v38;
  v130 = v85;
  v131 = v86;
  v132 = v87;
  return sub_27586BF04(&v113, &qword_280A11758, &qword_2759CB930);
}

uint64_t sub_275942754@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A116C8, &qword_2759CB868);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  v10 = *a1;
  swift_getKeyPath();
  *&v34 = v10;
  sub_275947B3C(&qword_280A0F538, type metadata accessor for ThermometerSectionViewModel, &unk_2759C3C10);
  sub_2759B8638();

  if (*(*&v10 + 64) != 1)
  {
    return (*(v7 + 56))(a3, 1, 1, v6);
  }

  v12 = sub_2759B9418();
  v16 = 0;
  sub_275942BC4(a2, v10, &v34);
  v29 = v46;
  v30 = v47;
  v25 = v42;
  v26 = v43;
  v27 = v44;
  v28 = v45;
  v21 = v38;
  v22 = v39;
  v23 = v40;
  v24 = v41;
  v17 = v34;
  v18 = v35;
  v19 = v36;
  v20 = v37;
  v32[12] = v46;
  v32[13] = v47;
  v32[8] = v42;
  v32[9] = v43;
  v32[10] = v44;
  v32[11] = v45;
  v32[4] = v38;
  v32[5] = v39;
  v32[6] = v40;
  v32[7] = v41;
  v32[0] = v34;
  v32[1] = v35;
  v31 = v48;
  v33 = v48;
  v32[2] = v36;
  v32[3] = v37;
  sub_27586FBC8(&v17, &v13, &qword_280A11750, &qword_2759CB898);
  sub_27586BF04(v32, &qword_280A11750, &qword_2759CB898);
  *(&v15[11] + 7) = v28;
  *(&v15[12] + 7) = v29;
  *(&v15[13] + 7) = v30;
  *(&v15[14] + 7) = v31;
  *(&v15[7] + 7) = v24;
  *(&v15[8] + 7) = v25;
  *(&v15[9] + 7) = v26;
  *(&v15[10] + 7) = v27;
  *(&v15[3] + 7) = v20;
  *(&v15[4] + 7) = v21;
  *(&v15[5] + 7) = v22;
  *(&v15[6] + 7) = v23;
  *(v15 + 7) = v17;
  *(&v15[1] + 7) = v18;
  *(&v15[2] + 7) = v19;
  *(&v14[11] + 1) = v15[11];
  *(&v14[12] + 1) = v15[12];
  *(&v14[13] + 1) = v15[13];
  v14[14] = *(&v15[13] + 15);
  *(&v14[7] + 1) = v15[7];
  *(&v14[8] + 1) = v15[8];
  *(&v14[9] + 1) = v15[9];
  *(&v14[10] + 1) = v15[10];
  *(&v14[3] + 1) = v15[3];
  *(&v14[4] + 1) = v15[4];
  *(&v14[5] + 1) = v15[5];
  *(&v14[6] + 1) = v15[6];
  *(v14 + 1) = v15[0];
  *(&v14[1] + 1) = v15[1];
  *&v13 = v12;
  *(&v13 + 1) = 0x4008000000000000;
  LOBYTE(v14[0]) = v16;
  *(&v14[2] + 1) = v15[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A116D8, &qword_2759CB870);
  sub_27589B02C(&qword_280A116D0, &qword_280A116D8, &qword_2759CB870, MEMORY[0x277CE1138]);
  sub_2759B9B38();
  v46 = v14[11];
  v47 = v14[12];
  v48 = v14[13];
  v49 = v14[14];
  v42 = v14[7];
  v43 = v14[8];
  v44 = v14[9];
  v45 = v14[10];
  v38 = v14[3];
  v39 = v14[4];
  v40 = v14[5];
  v41 = v14[6];
  v34 = v13;
  v35 = v14[0];
  v36 = v14[1];
  v37 = v14[2];
  sub_27586BF04(&v34, &qword_280A116D8, &qword_2759CB870);
  sub_275823B8C(v9, a3);
  return (*(v7 + 56))(a3, 0, 1, v6);
}

uint64_t sub_275942BC4@<X0>(uint64_t a1@<X0>, double a2@<X1>, void (*a3)(char *, uint64_t)@<X8>)
{
  v64 = a2;
  v5 = sub_2759B8DA8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v54 - v10;
  v65 = a1;
  sub_275940BB0(&v54 - v10);
  v12 = *(v6 + 104);
  LODWORD(v63) = *MEMORY[0x277CDF3D0];
  v62 = v12;
  v12(v9);
  LOBYTE(a1) = sub_2759B8D98();
  v13 = *(v6 + 8);
  v13(v9, v5);
  v13(v11, v5);
  swift_getKeyPath();
  if (a1)
  {
    v61 = v13;
    v14 = v64;
    v106 = v64;
    sub_275947B3C(&qword_280A0F538, type metadata accessor for ThermometerSectionViewModel, &unk_2759C3C10);
    sub_2759B8638();
    v13 = v61;

    v15 = 24;
  }

  else
  {
    v61 = a3;
    v14 = v64;
    v106 = v64;
    sub_275947B3C(&qword_280A0F538, type metadata accessor for ThermometerSectionViewModel, &unk_2759C3C10);
    sub_2759B8638();
    a3 = v61;

    v15 = 32;
  }

  v58 = *(*&v14 + v15);

  sub_275940BB0(v11);
  v62(v9, v63, v5);
  v16 = sub_2759B8D98();
  v13(v9, v5);
  v13(v11, v5);
  if (v16)
  {
    sub_2759B9C28();
  }

  else
  {
    sub_2759B9C48();
  }

  v64 = COERCE_DOUBLE(sub_2759B9C58());

  sub_2759B8DD8();
  v17 = v135;
  v60 = v137;
  LODWORD(v61) = v136;
  v18 = v138;
  v59 = v139;
  v19 = v140;
  v20 = sub_2759BA028();
  v62 = v21;
  v63 = v20;
  v22 = type metadata accessor for StorageThermometerCategoriesView(0);
  sub_2759BA028();
  sub_2759B8F18();
  swift_getKeyPath();
  v106 = v14;
  sub_275947B3C(&qword_280A0F538, type metadata accessor for ThermometerSectionViewModel, &unk_2759C3C10);
  sub_2759B8638();

  if (*(*&v14 + 56))
  {
    v25 = *(*&v14 + 48);
    v26 = *(*&v14 + 56);
  }

  else
  {
    v25 = *(*(*&v14 + 16) + OBJC_IVAR____TtC14iCloudSettings31ManageStorageThermometerSection_displayLabel);
  }

  v106 = v25;
  v107 = *&v26;
  sub_27589F2D4(v26, v23, v24);

  v27 = sub_2759B99C8();
  v29 = v28;
  v31 = v30;
  v57 = v32;
  KeyPath = swift_getKeyPath();
  v33 = v65;
  v34 = *(v65 + *(v22 + 36));
  v55 = swift_getKeyPath();
  v35 = v31 & 1;
  v127 = v31 & 1;
  v126 = 0;
  v36 = *(v33 + *(v22 + 40));
  v37 = swift_getKeyPath();
  *&v81 = v17 * 0.5;
  *(&v81 + 1) = v17;
  *&v82 = __PAIR64__(v60, v61);
  *(&v82 + 1) = v18;
  v38 = v58;
  *&v83 = v59;
  *(&v83 + 1) = v19;
  *&v84 = v64;
  WORD4(v84) = 256;
  *(&v84 + 10) = v133;
  HIWORD(v84) = v134;
  *&v85 = v58;
  WORD4(v85) = 256;
  HIWORD(v85) = v132;
  *(&v85 + 10) = v131;
  *&v86 = v63;
  *(&v86 + 1) = v62;
  v87 = v128;
  v88 = v129;
  v89 = v130;
  v68 = v83;
  v69 = v84;
  v72 = v128;
  v73 = v129;
  v66 = v81;
  v67 = v82;
  v70 = v85;
  v71 = v86;
  *&v90 = v27;
  *(&v90 + 1) = v29;
  LOBYTE(v91) = v35;
  v40 = KeyPath;
  v39 = v57;
  *(&v91 + 1) = v57;
  *&v92 = KeyPath;
  *(&v92 + 1) = 1;
  LOBYTE(v93) = 0;
  v41 = v55;
  *(&v93 + 1) = v55;
  *&v94 = v34;
  *(&v94 + 1) = v37;
  v95 = v36;
  v80 = v36;
  v42 = v92;
  v78 = v93;
  v79 = v94;
  v74 = v130;
  v75 = v90;
  v76 = v91;
  v77 = v92;
  v43 = v82;
  *a3 = v81;
  *(a3 + 1) = v43;
  v44 = v68;
  v45 = v69;
  v46 = v71;
  *(a3 + 4) = v70;
  *(a3 + 5) = v46;
  *(a3 + 2) = v44;
  *(a3 + 3) = v45;
  v47 = v72;
  v48 = v73;
  v49 = v75;
  *(a3 + 8) = v74;
  *(a3 + 9) = v49;
  *(a3 + 6) = v47;
  *(a3 + 7) = v48;
  v50 = v76;
  v51 = v78;
  v52 = v79;
  *(a3 + 28) = v80;
  *(a3 + 12) = v51;
  *(a3 + 13) = v52;
  *(a3 + 10) = v50;
  *(a3 + 11) = v42;
  v96[0] = v27;
  v96[1] = v29;
  v97 = v35;
  v98 = v39;
  v99 = v40;
  v100 = 1;
  v101 = 0;
  v102 = v41;
  v103 = v34;
  v104 = v37;
  v105 = v36;

  sub_27586FBC8(&v81, &v106, &qword_280A11758, &qword_2759CB930);
  sub_27586FBC8(&v90, &v106, &qword_280A11760, &qword_2759CB938);
  sub_27586BF04(v96, &qword_280A11760, &qword_2759CB938);
  v106 = v17 * 0.5;
  v107 = v17;
  v108 = v61;
  v109 = v60;
  v110 = v18;
  v111 = v59;
  v112 = v19;
  v113 = v64;
  v114 = 256;
  v115 = v133;
  v116 = v134;
  v117 = v38;
  v118 = 256;
  v120 = v132;
  v119 = v131;
  v121 = v63;
  v122 = v62;
  v123 = v128;
  v124 = v129;
  v125 = v130;
  return sub_27586BF04(&v106, &qword_280A11758, &qword_2759CB930);
}

uint64_t sub_2759432CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a3;
  v5 = sub_2759B8DA8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - v10;
  v12 = *a1;
  v20 = a2;
  sub_275940BB0(&v19 - v10);
  (*(v6 + 104))(v9, *MEMORY[0x277CDF3D0], v5);
  LOBYTE(a1) = sub_2759B8D98();
  v13 = *(v6 + 8);
  v13(v9, v5);
  v13(v11, v5);
  swift_getKeyPath();
  *&v43 = v12;
  sub_275947B3C(&qword_280A0F538, type metadata accessor for ThermometerSectionViewModel, &unk_2759C3C10);
  sub_2759B8638();

  if (a1)
  {
    v14 = 24;
  }

  else
  {
    v14 = 32;
  }

  v15 = *(v12 + v14);

  v16 = sub_2759B9418();
  v25 = 0;
  sub_275943874(v15, v20, v12, &v43);
  v38 = v55;
  v39 = v56;
  v34 = v51;
  v35 = v52;
  v36 = v53;
  v37 = v54;
  v30 = v47;
  v31 = v48;
  v32 = v49;
  v33 = v50;
  v26 = v43;
  v27 = v44;
  v28 = v45;
  v29 = v46;
  v41[12] = v55;
  v41[13] = v56;
  v41[8] = v51;
  v41[9] = v52;
  v41[10] = v53;
  v41[11] = v54;
  v41[4] = v47;
  v41[5] = v48;
  v41[6] = v49;
  v41[7] = v50;
  v41[0] = v43;
  v41[1] = v44;
  v40 = v57;
  v42 = v57;
  v41[2] = v45;
  v41[3] = v46;
  sub_27586FBC8(&v26, &v22, &qword_280A11750, &qword_2759CB898);
  sub_27586BF04(v41, &qword_280A11750, &qword_2759CB898);
  *(&v24[11] + 7) = v37;
  *(&v24[12] + 7) = v38;
  *(&v24[13] + 7) = v39;
  *(&v24[14] + 7) = v40;
  *(&v24[7] + 7) = v33;
  *(&v24[8] + 7) = v34;
  *(&v24[9] + 7) = v35;
  *(&v24[10] + 7) = v36;
  *(&v24[3] + 7) = v29;
  *(&v24[4] + 7) = v30;
  *(&v24[5] + 7) = v31;
  *(&v24[6] + 7) = v32;
  *(v24 + 7) = v26;
  *(&v24[1] + 7) = v27;
  *(&v24[2] + 7) = v28;
  *(&v23[11] + 1) = v24[11];
  *(&v23[12] + 1) = v24[12];
  *(&v23[13] + 1) = v24[13];
  v23[14] = *(&v24[13] + 15);
  *(&v23[7] + 1) = v24[7];
  *(&v23[8] + 1) = v24[8];
  *(&v23[9] + 1) = v24[9];
  *(&v23[10] + 1) = v24[10];
  *(&v23[3] + 1) = v24[3];
  *(&v23[4] + 1) = v24[4];
  *(&v23[5] + 1) = v24[5];
  *(&v23[6] + 1) = v24[6];
  *(v23 + 1) = v24[0];
  *(&v23[1] + 1) = v24[1];
  *&v22 = v16;
  *(&v22 + 1) = 0x4008000000000000;
  LOBYTE(v23[0]) = v25;
  *(&v23[2] + 1) = v24[2];
  *&v43 = 0;
  *(&v43 + 1) = 0xE000000000000000;
  sub_2759BA8C8();

  *&v43 = 0xD000000000000011;
  *(&v43 + 1) = 0x80000002759E2350;
  v17 = sub_2759B9BE8();
  MEMORY[0x277C840E0](v17);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A116D8, &qword_2759CB870);
  sub_27589B02C(&qword_280A116D0, &qword_280A116D8, &qword_2759CB870, MEMORY[0x277CE1138]);
  sub_2759B9B38();

  v55 = v23[11];
  v56 = v23[12];
  v57 = v23[13];
  v58 = v23[14];
  v51 = v23[7];
  v52 = v23[8];
  v53 = v23[9];
  v54 = v23[10];
  v47 = v23[3];
  v48 = v23[4];
  v49 = v23[5];
  v50 = v23[6];
  v43 = v22;
  v44 = v23[0];
  v45 = v23[1];
  v46 = v23[2];
  return sub_27586BF04(&v43, &qword_280A116D8, &qword_2759CB870);
}

uint64_t sub_275943874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v63 = a3;
  v66 = a1;
  v6 = sub_2759B8DA8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v54 - v11;
  sub_275940BB0(&v54 - v11);
  (*(v7 + 104))(v10, *MEMORY[0x277CDF3D0], v6);
  v13 = sub_2759B8D98();
  v14 = *(v7 + 8);
  v14(v10, v6);
  v14(v12, v6);
  if (v13)
  {
    sub_2759B9C28();
  }

  else
  {
    sub_2759B9C48();
  }

  v65 = sub_2759B9C58();

  sub_2759B8DD8();
  v15 = v134;
  v16 = v134 * 0.5;
  v17 = v135;
  v18 = v136;
  v61 = v136;
  v62 = v135;
  v19 = v137;
  v59 = v138;
  v20 = v139;
  v64 = sub_2759BA028();
  v60 = v21;
  v22 = type metadata accessor for StorageThermometerCategoriesView(0);
  v23 = v66;

  sub_2759BA028();
  v24 = sub_2759B8F18();
  v25 = (*(v63 + 16) + OBJC_IVAR____TtC14iCloudSettings31ManageStorageThermometerSection_displayLabel);
  v26 = v25[1];
  v110 = *v25;
  v111 = v26;
  sub_27589F2D4(v24, v27, v28);

  v63 = sub_2759B99C8();
  v57 = v30;
  v58 = v29;
  LOBYTE(v26) = v31;
  KeyPath = swift_getKeyPath();
  v32 = *(a2 + *(v22 + 36));
  v55 = swift_getKeyPath();
  LOBYTE(v26) &= 1u;
  LOBYTE(v110) = LOBYTE(v26);
  LOBYTE(v85) = 0;
  v33 = *(a2 + *(v22 + 40));
  v34 = swift_getKeyPath();
  *&v85 = v16;
  *(&v85 + 1) = v15;
  *&v86 = __PAIR64__(v18, v17);
  *(&v86 + 1) = v19;
  v35 = v59;
  *&v87 = v59;
  *(&v87 + 1) = v20;
  *&v88 = v65;
  WORD4(v88) = 256;
  *(&v88 + 10) = v132;
  HIWORD(v88) = v133;
  *&v89 = v23;
  WORD4(v89) = 256;
  HIWORD(v89) = v131;
  *(&v89 + 10) = v130;
  v36 = v60;
  *&v90 = v64;
  *(&v90 + 1) = v60;
  v91 = v82;
  v92 = v83;
  v69 = v87;
  v70 = v88;
  v93 = v84;
  v73 = v82;
  v74 = v83;
  v67 = v85;
  v68 = v86;
  v71 = v89;
  v72 = v90;
  v37 = v63;
  *&v94 = v63;
  v39 = v57;
  v38 = v58;
  *(&v94 + 1) = v58;
  LOBYTE(v95) = LOBYTE(v26);
  *(&v95 + 1) = v57;
  v41 = v55;
  v40 = KeyPath;
  *&v96 = KeyPath;
  *(&v96 + 1) = 1;
  LOBYTE(v97) = 0;
  *(&v97 + 1) = v55;
  *&v98 = v32;
  *(&v98 + 1) = v34;
  v99 = v33;
  v81 = v33;
  v42 = v96;
  v79 = v97;
  v80 = v98;
  v75 = v84;
  v76 = v94;
  v77 = v95;
  v78 = v96;
  v43 = v86;
  *a4 = v85;
  *(a4 + 16) = v43;
  v44 = v69;
  v45 = v70;
  v46 = v72;
  *(a4 + 64) = v71;
  *(a4 + 80) = v46;
  *(a4 + 32) = v44;
  *(a4 + 48) = v45;
  v47 = v73;
  v48 = v74;
  v49 = v76;
  *(a4 + 128) = v75;
  *(a4 + 144) = v49;
  *(a4 + 96) = v47;
  *(a4 + 112) = v48;
  v50 = v77;
  v51 = v79;
  v52 = v80;
  *(a4 + 224) = v81;
  *(a4 + 192) = v51;
  *(a4 + 208) = v52;
  *(a4 + 160) = v50;
  *(a4 + 176) = v42;
  v100[0] = v37;
  v100[1] = v38;
  v101 = LOBYTE(v26);
  v102 = v39;
  v103 = v40;
  v104 = 1;
  v105 = 0;
  v106 = v41;
  v107 = v32;
  v108 = v34;
  v109 = v33;

  sub_27586FBC8(&v85, &v110, &qword_280A11758, &qword_2759CB930);
  sub_27586FBC8(&v94, &v110, &qword_280A11760, &qword_2759CB938);
  sub_27586BF04(v100, &qword_280A11760, &qword_2759CB938);
  v110 = v16;
  v111 = v15;
  v112 = v62;
  v113 = v61;
  v114 = v19;
  v115 = v35;
  v116 = v20;
  v117 = v65;
  v118 = 256;
  v119 = v132;
  v120 = v133;
  v121 = v66;
  v122 = 256;
  v124 = v131;
  v123 = v130;
  v125 = v64;
  v126 = v36;
  v127 = v82;
  v128 = v83;
  v129 = v84;
  return sub_27586BF04(&v110, &qword_280A11758, &qword_2759CB930);
}

uint64_t sub_275943DA0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11510, &qword_2759CB690);
  MEMORY[0x28223BE20](v1);
  v3 = &v18[-v2];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11518, &qword_2759CB698);
  MEMORY[0x28223BE20](v4);
  v6 = &v18[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11520, &qword_2759CB6A0);
  MEMORY[0x28223BE20](v7);
  v9 = &v18[-v8];
  if (*(v0 + 16) > 2u)
  {
    *v3 = sub_2759BA028();
    v3[1] = v15;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11528, &qword_2759CB6A8);
    sub_275944084(v0, v3 + *(v16 + 44));
    sub_27586FBC8(v3, v6, &qword_280A11510, &qword_2759CB690);
    swift_storeEnumTagMultiPayload();
    sub_27594829C();
    sub_27589B02C(&qword_280A11558, &qword_280A11510, &qword_2759CB690, MEMORY[0x277CE11A8]);
    sub_2759B95E8();
    v12 = v3;
    v13 = &qword_280A11510;
    v14 = &qword_2759CB690;
  }

  else
  {
    v10 = sub_2759BA038();
    v18[24] = 0;
    v18[16] = 1;
    v18[8] = 0;
    *v9 = v10;
    *(v9 + 1) = v11;
    v9[16] = 0;
    *(v9 + 3) = 0;
    v9[32] = 1;
    *(v9 + 5) = 0x4010000000000000;
    *(v9 + 24) = 256;
    sub_275944BDC(v0, &v9[*(v7 + 44)]);
    sub_27586FBC8(v9, v6, &qword_280A11520, &qword_2759CB6A0);
    swift_storeEnumTagMultiPayload();
    sub_27594829C();
    sub_27589B02C(&qword_280A11558, &qword_280A11510, &qword_2759CB690, MEMORY[0x277CE11A8]);
    sub_2759B95E8();
    v12 = v9;
    v13 = &qword_280A11520;
    v14 = &qword_2759CB6A0;
  }

  return sub_27586BF04(v12, v13, v14);
}

uint64_t sub_275944084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11520, &qword_2759CB6A0) - 8;
  MEMORY[0x28223BE20](v40);
  v4 = &v37 - v3;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11568, &qword_2759CB6D0) - 8;
  v5 = MEMORY[0x28223BE20](v39);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v37 - v8;
  MEMORY[0x28223BE20](v7);
  v38 = &v37 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11570, &qword_2759CB6D8);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11578, &qword_2759CB6E0);
  v16 = v15 - 8;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v37 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v37 - v23;
  v25 = sub_2759BA038();
  v48 = 0;
  v47 = 1;
  v46 = 0;
  *v14 = v25;
  *(v14 + 1) = v26;
  v14[16] = 0;
  *(v14 + 3) = 0;
  v14[32] = 1;
  *(v14 + 5) = 0x4010000000000000;
  *(v14 + 24) = 256;
  sub_27594449C(&v14[*(v12 + 52)]);
  v27 = *(a1 + 16);
  v28 = 0.0;
  if (v27 == 3)
  {
    v29 = 1.0;
  }

  else
  {
    v29 = 0.0;
  }

  sub_27589F26C(v14, v22, &qword_280A11570, &qword_2759CB6D8);
  *&v22[*(v16 + 44)] = v29;
  sub_27589F26C(v22, v24, &qword_280A11578, &qword_2759CB6E0);
  v30 = sub_2759BA038();
  v45 = 0;
  v44 = 1;
  v43 = 0;
  *v4 = v30;
  *(v4 + 1) = v31;
  v4[16] = 0;
  *(v4 + 3) = 0;
  v4[32] = 1;
  *(v4 + 5) = 0x4010000000000000;
  *(v4 + 24) = 256;
  sub_275944854(a1, &v4[*(v40 + 52)]);
  if (v27 == 4)
  {
    v28 = 1.0;
  }

  sub_27589F26C(v4, v9, &qword_280A11520, &qword_2759CB6A0);
  v32 = v38;
  *&v9[*(v39 + 44)] = v28;
  sub_27589F26C(v9, v32, &qword_280A11568, &qword_2759CB6D0);
  sub_27586FBC8(v24, v19, &qword_280A11578, &qword_2759CB6E0);
  v33 = v41;
  sub_27586FBC8(v32, v41, &qword_280A11568, &qword_2759CB6D0);
  v34 = v42;
  sub_27586FBC8(v19, v42, &qword_280A11578, &qword_2759CB6E0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11580, &qword_2759CB6E8);
  sub_27586FBC8(v33, v34 + *(v35 + 48), &qword_280A11568, &qword_2759CB6D0);
  sub_27586BF04(v32, &qword_280A11568, &qword_2759CB6D0);
  sub_27586BF04(v24, &qword_280A11578, &qword_2759CB6E0);
  sub_27586BF04(v33, &qword_280A11568, &qword_2759CB6D0);
  return sub_27586BF04(v19, &qword_280A11578, &qword_2759CB6E0);
}

uint64_t sub_27594449C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F600, &qword_2759C4210);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v21 - v6;
  v8 = sub_275944668();
  if (v9)
  {
    v11 = v8;
  }

  else
  {
    v11 = 0;
  }

  v12 = 0xE000000000000000;
  if (v9)
  {
    v12 = v9;
  }

  v21 = v11;
  v22 = v12;
  sub_27589F2D4(v8, v9, v10);
  v13 = sub_2759B99C8();
  v15 = v14;
  v21 = v13;
  v22 = v14;
  v17 = v16 & 1;
  v23 = v16 & 1;
  v24 = v18;
  sub_2759B9B38();
  sub_27589F328(v13, v15, v17);

  sub_27586FBC8(v7, v5, &qword_280A0F600, &qword_2759C4210);
  sub_27586FBC8(v5, a1, &qword_280A0F600, &qword_2759C4210);
  v19 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11588, &qword_2759CB6F0) + 48);
  *v19 = 0;
  *(v19 + 8) = 1;
  sub_27586BF04(v7, &qword_280A0F600, &qword_2759C4210);
  return sub_27586BF04(v5, &qword_280A0F600, &qword_2759C4210);
}

uint64_t sub_275944668()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA28, &qword_2759C4AB8);
  sub_2759B9D68();
  if (!v8)
  {
    return 0;
  }

  swift_getKeyPath();
  sub_275947B3C(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel, &protocol conformance descriptor for ManageStorageAppsListViewModel);
  sub_2759B8638();

  Strong = swift_unknownObjectWeakLoadStrong();

  if (!Strong)
  {
    return 0;
  }

  swift_getKeyPath();
  sub_275947B3C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
  sub_2759B8638();

  v1 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v2 = *&Strong[v1];
  v3 = v2;

  if (!v2)
  {
    return 0;
  }

  v4 = *&v3[OBJC_IVAR___ICSHomeDataModel_headerCard];

  v5 = *&v4[OBJC_IVAR____TtC14iCloudSettings10HeaderCard_storageSummary];
  v6 = *&v5[OBJC_IVAR____TtC14iCloudSettings14StorageSummary_storageBarLabel];

  return v6;
}

uint64_t sub_275944854@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F600, &qword_2759C4210);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v46 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v44 = &v44 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v44 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v15 = &v44 - v14;
  if (a1[4])
  {
    v16 = a1[3];
    v17 = a1[4];
  }

  else
  {
    v16 = 0;
    v17 = 0xE000000000000000;
  }

  v47 = v16;
  v48 = v17;
  sub_27589F2D4(v11, v12, v13);

  v18 = sub_2759B99C8();
  v20 = v19;
  v47 = v18;
  v48 = v19;
  v22 = v21 & 1;
  v49 = v21 & 1;
  v50 = v23;
  sub_2759B9B38();
  sub_27589F328(v18, v20, v22);

  if (a1[6])
  {
    v24 = a1[5];
    v25 = a1[6];
  }

  else
  {
    v24 = 0;
    v25 = 0xE000000000000000;
  }

  v47 = v24;
  v48 = v25;

  v26 = sub_2759B99C8();
  v28 = v27;
  v30 = v29;
  LODWORD(v47) = sub_2759B9688();
  v31 = sub_2759B9958();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_27589F328(v26, v28, v30 & 1);

  v47 = v31;
  v48 = v33;
  v49 = v35 & 1;
  v50 = v37;
  sub_2759B9B38();
  sub_27589F328(v31, v33, v35 & 1);

  v38 = v44;
  sub_27586FBC8(v15, v44, &qword_280A0F600, &qword_2759C4210);
  v39 = v46;
  sub_27586FBC8(v10, v46, &qword_280A0F600, &qword_2759C4210);
  v40 = v45;
  sub_27586FBC8(v38, v45, &qword_280A0F600, &qword_2759C4210);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11560, &qword_2759CB6C8);
  v42 = v40 + *(v41 + 48);
  *v42 = 0x4020000000000000;
  *(v42 + 8) = 0;
  sub_27586FBC8(v39, v40 + *(v41 + 64), &qword_280A0F600, &qword_2759C4210);
  sub_27586BF04(v10, &qword_280A0F600, &qword_2759C4210);
  sub_27586BF04(v15, &qword_280A0F600, &qword_2759C4210);
  sub_27586BF04(v39, &qword_280A0F600, &qword_2759C4210);
  return sub_27586BF04(v38, &qword_280A0F600, &qword_2759C4210);
}

uint64_t sub_275944BDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53[1] = a1;
  v57 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F600, &qword_2759C4210);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v56 = v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v55 = v53 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v54 = v53 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = v53 - v9;
  v11 = sub_275944668();
  if (v12)
  {
    v14 = v11;
  }

  else
  {
    v14 = 0;
  }

  v15 = 0xE000000000000000;
  if (v12)
  {
    v15 = v12;
  }

  v58 = v14;
  v59 = v15;
  sub_27589F2D4(v11, v12, v13);
  v16 = sub_2759B99C8();
  v18 = v17;
  v20 = v19;
  LODWORD(v58) = sub_2759B9668();
  v21 = sub_2759B9958();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_27589F328(v16, v18, v20 & 1);

  v58 = v21;
  v59 = v23;
  v60 = v25 & 1;
  v61 = v27;
  sub_2759B9B38();
  sub_27589F328(v21, v23, v25 & 1);

  v28 = sub_275944FB8();
  if (v29)
  {
    v30 = v28;
  }

  else
  {
    v30 = 0;
  }

  v31 = 0xE000000000000000;
  if (v29)
  {
    v31 = v29;
  }

  v58 = v30;
  v59 = v31;
  v32 = sub_2759B99C8();
  v34 = v33;
  v36 = v35;
  LODWORD(v58) = sub_2759B9688();
  v37 = sub_2759B9958();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  sub_27589F328(v32, v34, v36 & 1);

  v58 = v37;
  v59 = v39;
  v60 = v41 & 1;
  v61 = v43;
  v44 = v54;
  sub_2759B9B38();
  sub_27589F328(v37, v39, v41 & 1);

  v45 = v55;
  sub_27586FBC8(v10, v55, &qword_280A0F600, &qword_2759C4210);
  v46 = v44;
  v47 = v44;
  v48 = v56;
  sub_27586FBC8(v46, v56, &qword_280A0F600, &qword_2759C4210);
  v49 = v57;
  sub_27586FBC8(v45, v57, &qword_280A0F600, &qword_2759C4210);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11560, &qword_2759CB6C8);
  v51 = v49 + *(v50 + 48);
  *v51 = 0x4020000000000000;
  *(v51 + 8) = 0;
  sub_27586FBC8(v48, v49 + *(v50 + 64), &qword_280A0F600, &qword_2759C4210);
  sub_27586BF04(v47, &qword_280A0F600, &qword_2759C4210);
  sub_27586BF04(v10, &qword_280A0F600, &qword_2759C4210);
  sub_27586BF04(v48, &qword_280A0F600, &qword_2759C4210);
  return sub_27586BF04(v45, &qword_280A0F600, &qword_2759C4210);
}

uint64_t sub_275944FB8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA28, &qword_2759C4AB8);
  sub_2759B9D68();
  if (!v5)
  {
    return 0;
  }

  swift_getKeyPath();
  sub_275947B3C(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel, &protocol conformance descriptor for ManageStorageAppsListViewModel);
  sub_2759B8638();

  v0 = *&v5[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__appsListDataModel];
  v1 = v0;

  if (!v0)
  {
    return 0;
  }

  v2 = *&v1[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListDataModel_thermometer];

  v3 = *&v2[OBJC_IVAR____TtC14iCloudSettings24ManageStorageThermometer_usageLabel];

  return v3;
}

uint64_t sub_275945138@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2759B93D8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ManageStorageThermometerView(0);
  sub_27586FBC8(v1 + *(v10 + 36), v9, &qword_280A0FE90, qword_2759C4940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2759B8DA8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2759BA658();
    v13 = sub_2759B97C8();
    sub_2759B88C8();

    sub_2759B93C8();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_275945340()
{
  result = sub_2759BA0A8();
  qword_280A239A8 = result;
  return result;
}

void sub_275945368()
{
  sub_2759BA0A8();
  v0 = sub_2759BA068();

  qword_280A239B0 = v0;
}

uint64_t sub_2759453B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v31 = a1;
  v3 = type metadata accessor for ManageStorageThermometerView(0);
  v30 = *(v3 - 8);
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11458, &qword_2759CB370);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11460, &qword_2759CB378);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11468, &qword_2759CB380);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11470, &qword_2759CB388);
  v15 = *(*(v14 - 8) + 56);
  v15(v10, 1, 1, v14);
  sub_27594584C(v2, v7);
  v15(v7, 0, 1, v14);
  sub_275823714(v7, v10);
  v16 = v2;
  sub_275948380(v2, &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ManageStorageThermometerView);
  v17 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v29 = v4;
  v18 = swift_allocObject();
  v28 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275947D80(v28, v18 + v17, type metadata accessor for ManageStorageThermometerView);
  sub_27586FBC8(v10, v13, &qword_280A11460, &qword_2759CB378);
  v30 = v11;
  v19 = v16;
  v20 = &v13[*(v11 + 36)];
  *v20 = sub_275947880;
  v20[1] = v18;
  v20[2] = 0;
  v20[3] = 0;
  sub_27586BF04(v10, &qword_280A11460, &qword_2759CB378);
  v33 = *v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA28, &qword_2759C4AB8);
  sub_2759B9D68();
  v21 = v32;
  if (v32)
  {
    swift_getKeyPath();
    *&v33 = v21;
    sub_275947B3C(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel, &protocol conformance descriptor for ManageStorageAppsListViewModel);
    sub_2759B8638();

    v22 = *&v21[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__appsListDataModel];
    v23 = v22;
  }

  else
  {
    v22 = 0;
  }

  *&v33 = v22;
  v24 = v28;
  sub_275948380(v19, v28, type metadata accessor for ManageStorageThermometerView);
  v25 = swift_allocObject();
  sub_275947D80(v24, v25 + v17, type metadata accessor for ManageStorageThermometerView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11188, &unk_2759CA220);
  sub_275947A84();
  sub_275931330();
  sub_2759B9B88();

  return sub_27586BF04(v13, &qword_280A11468, &qword_2759CB380);
}

uint64_t sub_27594584C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v111 = a2;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11490, &qword_2759CB440);
  v3 = MEMORY[0x28223BE20](v109);
  v112 = &v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v110 = &v99 - v5;
  v101 = type metadata accessor for ComplexThermometer(0);
  v6 = MEMORY[0x28223BE20](v101);
  v8 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v103 = &v99 - v9;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11498, &qword_2759CB448);
  MEMORY[0x28223BE20](v102);
  v104 = &v99 - v10;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A114A0, &qword_2759CB450);
  MEMORY[0x28223BE20](v106);
  v105 = &v99 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A114A8, &qword_2759CB458);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v108 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v121 = &v99 - v15;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A114B0, &qword_2759CB460) - 8;
  v16 = MEMORY[0x28223BE20](v100);
  v107 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v120 = &v99 - v18;
  v119 = *a1;
  v118 = a1[1];
  *&v125 = v119;
  *(&v125 + 1) = v118;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA28, &qword_2759C4AB8);
  sub_2759B9D68();
  v113 = v122;
  v116 = *(a1 + 16);
  v115 = a1[3];
  LOBYTE(v125) = v116;
  *(&v125 + 1) = v115;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11488, &qword_2759CB3C0);
  sub_2759B9D68();
  v19 = v122;
  v21 = a1[6];
  v20 = a1[7];
  v23 = a1[8];
  v22 = a1[9];
  v122 = 0;

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A11C70, qword_2759C1240);
  sub_2759B9D58();
  v25 = v125;
  v122 = v113;
  v113 = v24;
  sub_2759B9D58();

  LOBYTE(v126) = v19;
  *(&v126 + 1) = v21;
  *&v127 = v20;
  *(&v127 + 1) = v23;
  v128 = v22;
  sub_2759B9FA8();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A114B8, &qword_2759CB468);
  sub_275947CA0(v26, v27, v28);
  sub_275947CF4();
  v29 = v120;
  sub_2759B9BA8();

  LOBYTE(v20) = sub_2759B97F8();
  sub_2759B8D78();
  v30 = v29 + *(v100 + 44);
  *v30 = v20;
  *(v30 + 8) = v31;
  *(v30 + 16) = v32;
  *(v30 + 24) = v33;
  *(v30 + 32) = v34;
  *(v30 + 40) = 0;
  *&v125 = v119;
  *(&v125 + 1) = v118;
  sub_2759B9D68();
  v35 = v122;
  LOBYTE(v125) = v116;
  *(&v125 + 1) = v115;
  sub_2759B9D68();
  v36 = v122;
  v37 = sub_275946668();
  v100 = a1;
  v38 = sub_275946808();
  if (qword_280A0E3C8 != -1)
  {
    swift_once();
  }

  v39 = qword_280A239C8;
  v122 = 0;

  sub_2759B9D58();
  v40 = v125;
  v122 = 0x3FF0000000000000;
  sub_2759B9D58();
  v41 = *(&v125 + 1);
  *(v8 + 7) = v125;
  *(v8 + 8) = v41;
  v42 = *(v101 + 44);
  *&v8[v42] = swift_getKeyPath();
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
  swift_storeEnumTagMultiPayload();
  v122 = v35;
  v43 = v35;
  sub_2759B9D58();

  *v8 = v125;
  v8[16] = v36;
  *(v8 + 3) = v37;
  *(v8 + 4) = v38;
  *(v8 + 6) = v39;
  v44 = 0.0;
  v45 = v8;
  if (v35)
  {
    swift_getKeyPath();
    *&v125 = v43;
    sub_275947B3C(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel, &protocol conformance descriptor for ManageStorageAppsListViewModel);
    v46 = v43;
    sub_2759B8638();

    Strong = swift_unknownObjectWeakLoadStrong();

    v48 = 1.0;
    if (Strong)
    {
      swift_getKeyPath();
      *&v125 = Strong;
      sub_275947B3C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
      sub_2759B8638();

      v49 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
      swift_beginAccess();
      v50 = *&Strong[v49];
      v51 = v50;

      if (v50)
      {
        v52 = *&v51[OBJC_IVAR___ICSHomeDataModel_headerCard];

        v53 = *&v52[OBJC_IVAR____TtC14iCloudSettings10HeaderCard_storageSummary];
        v54 = *&v53[OBJC_IVAR____TtC14iCloudSettings14StorageSummary_totalStorageInBytes];

        v48 = v54;
      }
    }

    swift_getKeyPath();
    *&v125 = v46;
    v55 = v46;
    sub_2759B8638();

    v56 = swift_unknownObjectWeakLoadStrong();

    if (v56)
    {
      swift_getKeyPath();
      *&v125 = v56;
      sub_275947B3C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
      sub_2759B8638();

      v57 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
      swift_beginAccess();
      v58 = *&v56[v57];
      v59 = v58;

      if (v58)
      {
        v60 = *&v59[OBJC_IVAR___ICSHomeDataModel_headerCard];

        v61 = *&v60[OBJC_IVAR____TtC14iCloudSettings10HeaderCard_storageSummary];
        v62 = *&v61[OBJC_IVAR____TtC14iCloudSettings14StorageSummary_usedStorageInBytes];

        v44 = v62;
      }
    }

    else
    {
    }
  }

  else
  {
    v48 = 1.0;
  }

  *(v45 + 40) = v44 / v48;
  v63 = v103;
  sub_275947D80(v45, v103, type metadata accessor for ComplexThermometer);
  sub_2759BA028();
  sub_2759B8F18();
  v64 = v104;
  sub_275947D80(v63, v104, type metadata accessor for ComplexThermometer);
  v65 = (v64 + *(v102 + 36));
  v66 = v126;
  *v65 = v125;
  v65[1] = v66;
  v65[2] = v127;
  v67 = sub_2759B97F8();
  sub_275946A08();
  sub_2759B8D78();
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v75 = v74;
  v76 = v64;
  v77 = v105;
  sub_27589F26C(v76, v105, &qword_280A11498, &qword_2759CB448);
  v78 = v77 + *(v106 + 36);
  *v78 = v67;
  *(v78 + 8) = v69;
  *(v78 + 16) = v71;
  *(v78 + 24) = v73;
  *(v78 + 32) = v75;
  *(v78 + 40) = 0;
  sub_275947DE8();
  v79 = v121;
  sub_2759B9B38();
  sub_27586BF04(v77, &qword_280A114A0, &qword_2759CB450);
  *&v124 = v119;
  *(&v124 + 1) = v118;
  sub_2759B9D68();
  v80 = v123;
  LOBYTE(v124) = v116;
  *(&v124 + 1) = v115;
  sub_2759B9D68();
  v81 = v123;
  KeyPath = swift_getKeyPath();
  v83 = type metadata accessor for StorageThermometerCategoriesView(0);
  v84 = v110;
  *&v110[v83[6]] = KeyPath;
  swift_storeEnumTagMultiPayload();
  v123 = v80;
  sub_2759B9D58();
  *v84 = v124;
  *(v84 + 16) = v81;
  *(v84 + v83[7]) = 0x4020000000000000;
  *(v84 + v83[8]) = 0x4024000000000000;
  v85 = v83[9];
  *(v84 + v85) = sub_2759B98D8();
  v86 = v83[10];
  *(v84 + v86) = sub_2759B9C68();
  LOBYTE(v86) = sub_2759B97F8();
  sub_2759B8D78();
  v87 = v84 + *(v109 + 36);
  *v87 = v86;
  *(v87 + 8) = v88;
  *(v87 + 16) = v89;
  *(v87 + 24) = v90;
  *(v87 + 32) = v91;
  *(v87 + 40) = 0;
  v92 = v120;
  v93 = v107;
  sub_27586FBC8(v120, v107, &qword_280A114B0, &qword_2759CB460);
  v94 = v108;
  sub_27586FBC8(v79, v108, &qword_280A114A8, &qword_2759CB458);
  v95 = v112;
  sub_27586FBC8(v84, v112, &qword_280A11490, &qword_2759CB440);
  v96 = v111;
  sub_27586FBC8(v93, v111, &qword_280A114B0, &qword_2759CB460);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A114E8, &qword_2759CB4A0);
  sub_27586FBC8(v94, v96 + *(v97 + 48), &qword_280A114A8, &qword_2759CB458);
  sub_27586FBC8(v95, v96 + *(v97 + 64), &qword_280A11490, &qword_2759CB440);
  sub_27586BF04(v84, &qword_280A11490, &qword_2759CB440);
  sub_27586BF04(v121, &qword_280A114A8, &qword_2759CB458);
  sub_27586BF04(v92, &qword_280A114B0, &qword_2759CB460);
  sub_27586BF04(v95, &qword_280A11490, &qword_2759CB440);
  sub_27586BF04(v94, &qword_280A114A8, &qword_2759CB458);
  return sub_27586BF04(v93, &qword_280A114B0, &qword_2759CB460);
}

uint64_t sub_2759465B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a1 + 24);
  v7 = *(a1 + 32);
  v10 = *(a1 + 40);
  v9 = *(a1 + 48);
  v11 = sub_2759B97E8();
  sub_2759B8D78();
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v8;
  *(a2 + 32) = v7;
  *(a2 + 40) = v10;
  *(a2 + 48) = v9;
  *(a2 + 56) = v11;
  *(a2 + 64) = v12;
  *(a2 + 72) = v13;
  *(a2 + 80) = v14;
  *(a2 + 88) = v15;
  *(a2 + 96) = 0;

  v16 = v5;
}

uint64_t sub_275946668()
{
  v1 = sub_2759B8DA8();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - v6;
  sub_275945138(&v15 - v6);
  (*(v2 + 104))(v5, *MEMORY[0x277CDF3D0], v1);
  v8 = sub_2759B8D98();
  v9 = *(v2 + 8);
  v9(v5, v1);
  v9(v7, v1);
  if (v8)
  {
    return sub_2759B9C48();
  }

  v11 = (v0 + *(type metadata accessor for ManageStorageThermometerView(0) + 44));
  v12 = *v11;
  v13 = v11[1];
  if (!sub_27594991C(*v11, v13, 1.0))
  {
    sub_27594972C(v12, v13);
  }

  v14 = sub_2759B9C58();

  return v14;
}

uint64_t sub_275946808()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA28, &qword_2759C4AB8);
  sub_2759B9D68();
  if (v11 && (swift_getKeyPath(), sub_275947B3C(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel, &protocol conformance descriptor for ManageStorageAppsListViewModel), sub_2759B8638(), , Strong = swift_unknownObjectWeakLoadStrong(), v11, Strong) && (swift_getKeyPath(), sub_275947B3C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel), sub_2759B8638(), , v1 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel, swift_beginAccess(), v2 = *&Strong[v1], v3 = v2, Strong, v2))
  {
    v4 = *&v3[OBJC_IVAR___ICSHomeDataModel_headerCard];

    v5 = *&v4[OBJC_IVAR____TtC14iCloudSettings10HeaderCard_storageSummary];
    v7 = *&v5[OBJC_IVAR____TtC14iCloudSettings14StorageSummary_storageBarColor];
    v6 = *&v5[OBJC_IVAR____TtC14iCloudSettings14StorageSummary_storageBarColor + 8];

    v8 = v7;
  }

  else
  {
    v8 = 0;
    v6 = 0xE000000000000000;
  }

  v9 = sub_27594972C(v8, v6);

  return v9;
}

double sub_275946A08()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11488, &qword_2759CB3C0);
  sub_2759B9D68();
  result = 8.0;
  if (v3 <= 2u)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA28, &qword_2759C4AB8);
    sub_2759B9D68();
    result = 24.0;
    if (v3)
    {
      swift_getKeyPath();
      sub_275947B3C(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel, &protocol conformance descriptor for ManageStorageAppsListViewModel);
      sub_2759B8638();

      v1 = *&v3[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__appsListDataModel];
      v2 = v1;

      result = 24.0;
      if (v1)
      {

        return 8.0;
      }
    }
  }

  return result;
}

void sub_275946B40(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11488, &qword_2759CB3C0);
  sub_2759B9D68();
  if (v1 > 1u)
  {
    if (v1 == 2)
    {
      return;
    }

    if (v1 != 3)
    {
      sub_275946D64();
      return;
    }

    sub_275946D64();
    if (qword_280A0E3B0 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  if (!v1)
  {
    if (qword_280A0E3B0 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  if (!sub_275947494())
  {
    return;
  }

  if (qword_280A0E3B0 != -1)
  {
LABEL_14:
    swift_once();
  }

LABEL_12:
  MEMORY[0x28223BE20](qword_280A239B0);
  sub_2759B9008();
}

void sub_275946D64()
{
  v2 = *(v0 + 40);
  if (!v2)
  {
    goto LABEL_31;
  }

  v28 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA28, &qword_2759C4AB8);
  sub_2759B9D68();
  if (!v29)
  {
    goto LABEL_31;
  }

  swift_getKeyPath();
  sub_275947B3C(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel, &protocol conformance descriptor for ManageStorageAppsListViewModel);
  sub_2759B8638();

  v3 = *&v29[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__thermometerSections];

  v4 = v3;
  if (v3 >> 62)
  {
    v14 = sub_2759BA9E8();
    v4 = v3;
    v5 = v14;
    if (v14)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_5:
      if (v5 >= 1)
      {
        v6 = 0;
        v7 = 0;
        v26 = v4 & 0xC000000000000001;
        v27 = v4;
        while (1)
        {
          if (v26)
          {
            v8 = MEMORY[0x277C846A0](v7);
          }

          else
          {
            v8 = *(v4 + 8 * v7 + 32);
          }

          v9 = (*(v8 + 16) + OBJC_IVAR____TtC14iCloudSettings31ManageStorageThermometerSection_bundleId);
          v10 = v28 == *v9 && v2 == v9[1];
          if (v10 || (sub_2759BAAC8() & 1) != 0)
          {
            break;
          }

          if (*(v8 + 64))
          {
            KeyPath = swift_getKeyPath();
            MEMORY[0x28223BE20](KeyPath);
            sub_275947B3C(&qword_280A0F538, type metadata accessor for ThermometerSectionViewModel, &unk_2759C3C10);
LABEL_23:
            sub_2759B8628();

            if (*(v8 + 56))
            {
              goto LABEL_24;
            }

            goto LABEL_7;
          }

          *(v8 + 64) = 0;
          if (*(v8 + 56))
          {
LABEL_24:
            v13 = swift_getKeyPath();
            MEMORY[0x28223BE20](v13);
            sub_275947B3C(&qword_280A0F538, type metadata accessor for ThermometerSectionViewModel, &unk_2759C3C10);
            sub_2759B8628();

            goto LABEL_8;
          }

LABEL_7:
          *(v8 + 48) = 0;
          *(v8 + 56) = 0;

LABEL_8:
          v4 = v27;
          if (v5 == ++v7)
          {

            if ((v6 & 1) == 0)
            {
              goto LABEL_31;
            }

            return;
          }
        }

        if (*(v8 + 64) == 1)
        {
          v6 = 1;
          *(v8 + 64) = 1;
          if (*(v8 + 56))
          {
            goto LABEL_24;
          }

          goto LABEL_7;
        }

        v11 = swift_getKeyPath();
        MEMORY[0x28223BE20](v11);
        v6 = 1;
        sub_275947B3C(&qword_280A0F538, type metadata accessor for ThermometerSectionViewModel, &unk_2759C3C10);
        goto LABEL_23;
      }

      __break(1u);
      goto LABEL_47;
    }
  }

LABEL_31:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA28, &qword_2759C4AB8);
  sub_2759B9D68();
  if (v29)
  {
    v1 = &OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_otherAppsDisplayLabel;
    v15 = *&v29[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_otherAppsDisplayLabel];
    v16 = *&v29[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_otherAppsDisplayLabel + 8];

    v17 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v17 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {
      sub_2759B9D68();
      swift_getKeyPath();
      sub_275947B3C(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel, &protocol conformance descriptor for ManageStorageAppsListViewModel);
      sub_2759B8638();

      v3 = *&v29[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__thermometerSections];

      if (!(v3 >> 62))
      {
        v18 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v18)
        {
LABEL_48:

          return;
        }

LABEL_37:
        v19 = __OFSUB__(v18, 1);
        v20 = v18 - 1;
        if (v19)
        {
          __break(1u);
        }

        else if ((v3 & 0xC000000000000001) == 0)
        {
          if ((v20 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v20 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v21 = *(v3 + 8 * v20 + 32);

LABEL_42:

            if (*(v21 + 64) == 1)
            {
              *(v21 + 64) = 1;
            }

            else
            {
              v22 = swift_getKeyPath();
              MEMORY[0x28223BE20](v22);
              sub_275947B3C(&qword_280A0F538, type metadata accessor for ThermometerSectionViewModel, &unk_2759C3C10);
              sub_2759B8628();
            }

            sub_2759B9D68();
            v23 = &v29[*v1];
            v24 = *v23;
            v25 = v23[1];

            sub_2758A4418(v24, v25);

            return;
          }

          __break(1u);
          return;
        }

        v21 = MEMORY[0x277C846A0](v20, v3);
        goto LABEL_42;
      }

LABEL_47:
      v18 = sub_2759BA9E8();
      if (!v18)
      {
        goto LABEL_48;
      }

      goto LABEL_37;
    }
  }
}

BOOL sub_275947494()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA28, &qword_2759C4AB8);
  sub_2759B9D68();
  result = 0;
  if (v6)
  {
    swift_getKeyPath();
    sub_275947B3C(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel, &protocol conformance descriptor for ManageStorageAppsListViewModel);
    sub_2759B8638();

    v0 = *&v6[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__appsListDataModel];
    v1 = v0;

    if (v0)
    {
      v2 = *&v1[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListDataModel_thermometer];

      v3 = *&v2[OBJC_IVAR____TtC14iCloudSettings24ManageStorageThermometer_sections];

      v4 = v3 >> 62 ? sub_2759BA9E8() : *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v4)
      {
        return 1;
      }
    }
  }

  return result;
}

void sub_2759475F0(__int128 *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11488, &qword_2759CB3C0);
  sub_2759B9D68();
  if (v3 > 2u)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA28, &qword_2759C4AB8);
    sub_2759B9D68();
    if (v3)
    {
      swift_getKeyPath();
      sub_275947B3C(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel, &protocol conformance descriptor for ManageStorageAppsListViewModel);
      sub_2759B8638();

      v1 = *&v3[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__appsListDataModel];
      v2 = v1;

      if (v1)
      {

        sub_275946D64();
      }
    }
  }

  else
  {
    if (qword_280A0E3A8 != -1)
    {
      swift_once();
    }

    MEMORY[0x28223BE20](qword_280A239A8);
    sub_2759B9008();
  }
}

uint64_t sub_2759477AC(uint64_t a1)
{
  sub_275947494();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11488, &qword_2759CB3C0);
  return sub_2759B9D78();
}

unint64_t sub_27594782C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A11450;
  if (!qword_280A11450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11450);
  }

  return result;
}

uint64_t objectdestroyTm_7()
{
  v1 = type metadata accessor for ManageStorageThermometerView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = *(v1 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_2759B8DA8();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_275947A10(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ManageStorageThermometerView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_275947A84()
{
  result = qword_280A11478;
  if (!qword_280A11478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11468, &qword_2759CB380);
    sub_27589B02C(&qword_280A11480, &qword_280A11460, &qword_2759CB378, &unk_2759C32E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11478);
  }

  return result;
}

uint64_t sub_275947B3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_275947CA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A114C0;
  if (!qword_280A114C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A114C0);
  }

  return result;
}

unint64_t sub_275947CF4()
{
  result = qword_280A114C8;
  if (!qword_280A114C8)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A114B8, &qword_2759CB468);
    sub_275947CA0(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A114C8);
  }

  return result;
}

uint64_t sub_275947D80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_275947DE8()
{
  result = qword_280A114D0;
  if (!qword_280A114D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A114A0, &qword_2759CB450);
    sub_275947E74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A114D0);
  }

  return result;
}

unint64_t sub_275947E74()
{
  result = qword_280A114D8;
  if (!qword_280A114D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11498, &qword_2759CB448);
    sub_275947B3C(&qword_280A114E0, type metadata accessor for ComplexThermometer, &unk_2759CB5EC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A114D8);
  }

  return result;
}

void sub_275947F78(uint64_t a1)
{
  sub_27593EFC4(319);
  if (v1 <= 0x3F)
  {
    sub_2758BEB54(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_275948050(uint64_t a1)
{
  sub_27593EFC4(319);
  if (v1 <= 0x3F)
  {
    sub_27594812C(319, &qword_280A0F908, MEMORY[0x277D839F8], MEMORY[0x277CE10B8]);
    if (v2 <= 0x3F)
    {
      sub_2758BEB54(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_27594812C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_27594817C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2759481D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_27594829C()
{
  result = qword_280A11530;
  if (!qword_280A11530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11520, &qword_2759CB6A0);
    sub_27589B02C(&qword_280A11538, &qword_280A11540, &qword_2759CB6B0, MEMORY[0x277CDF510]);
    sub_27589B02C(&qword_280A11548, &qword_280A11550, &unk_2759CB6B8, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11530);
  }

  return result;
}

uint64_t sub_275948380(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2759483E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for ComplexThermometer(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_27593F24C(a1, v6, a2);
}

uint64_t objectdestroy_64Tm()
{
  v1 = (type metadata accessor for ComplexThermometer(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_2759B8F58();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);

  v9 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_2759B8DA8();
    (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);
  }

  else
  {
  }

  v11 = v2 | v7;
  v12 = (v3 + v4 + v7) & ~v7;
  (*(v6 + 8))(v0 + v12, v5);

  return MEMORY[0x2821FE8E8](v0, v12 + v8, v11 | 7);
}

void sub_27594863C()
{
  v1 = *(type metadata accessor for ComplexThermometer(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_2759B8F58();
  sub_275940A28((v0 + v2));
}

unint64_t sub_2759486FC()
{
  result = qword_280A115C0;
  if (!qword_280A115C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11598, &qword_2759CB700);
    sub_275948788();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A115C0);
  }

  return result;
}

unint64_t sub_275948788()
{
  result = qword_280A115C8;
  if (!qword_280A115C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A115B0, &qword_2759CB718);
    sub_27589B02C(&qword_280A115D0, &qword_280A115D8, &qword_2759CB728, MEMORY[0x277CE11A8]);
    sub_27589B02C(&qword_280A115E0, &qword_280A115B8, &qword_2759CB720, MEMORY[0x277CE03E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A115C8);
  }

  return result;
}

uint64_t objectdestroy_61Tm()
{
  v1 = (type metadata accessor for ComplexThermometer(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_2759B8DA8();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2759489B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ComplexThermometer(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2759400A8(a1, v6, a2);
}

unint64_t sub_275948A30()
{
  result = qword_280A11620;
  if (!qword_280A11620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11608, &qword_2759CB798);
    sub_275948AE8();
    sub_27589B02C(&qword_280A11650, &qword_280A11658, &unk_2759CF990, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11620);
  }

  return result;
}

unint64_t sub_275948AE8()
{
  result = qword_280A11628;
  if (!qword_280A11628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11630, &qword_2759CB7A0);
    sub_275948BA0();
    sub_27589B02C(&qword_280A0F1F0, &qword_280A0F1F8, &unk_2759CB7B0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11628);
  }

  return result;
}

unint64_t sub_275948BA0()
{
  result = qword_280A11638;
  if (!qword_280A11638)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11640, &qword_2759CB7A8);
    sub_275948C2C(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11638);
  }

  return result;
}

unint64_t sub_275948C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A11648;
  if (!qword_280A11648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11648);
  }

  return result;
}

uint64_t sub_275948C80()
{
  v1 = type metadata accessor for ComplexThermometer(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  if (*(v0 + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 16) <= 2u)
  {
    return sub_2759B8E08();
  }

  return result;
}

unint64_t sub_275948D0C()
{
  result = qword_280A116C0;
  if (!qword_280A116C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A116C8, &qword_2759CB868);
    sub_27589B02C(&qword_280A116D0, &qword_280A116D8, &qword_2759CB870, MEMORY[0x277CE1138]);
    sub_275947B3C(&qword_280A0F688, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A116C0);
  }

  return result;
}

unint64_t sub_275948DF4()
{
  result = qword_280A116E0;
  if (!qword_280A116E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11670, &qword_2759CB820);
    sub_27589B02C(&qword_280A116E8, &qword_280A116F0, &qword_2759CB878, MEMORY[0x277CDF510]);
    sub_275948EAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A116E0);
  }

  return result;
}

unint64_t sub_275948EAC()
{
  result = qword_280A116F8;
  if (!qword_280A116F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11700, &qword_2759CB880);
    sub_27594917C(&qword_280A116B8, &qword_280A116B0, &qword_2759CB860, MEMORY[0x277CE1550]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A116F8);
  }

  return result;
}

unint64_t sub_275948F5C()
{
  result = qword_280A11708;
  if (!qword_280A11708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A116A0, &qword_2759CB850);
    sub_275949014();
    sub_2759492C8(&qword_280A11738, &qword_280A11688, &qword_2759CB838, sub_2759491E4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11708);
  }

  return result;
}

unint64_t sub_275949014()
{
  result = qword_280A11710;
  if (!qword_280A11710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A116A8, &qword_2759CB858);
    sub_275949098();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11710);
  }

  return result;
}

unint64_t sub_275949098()
{
  result = qword_280A11718;
  if (!qword_280A11718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11720, &qword_2759CB888);
    sub_27589B02C(&qword_280A11538, &qword_280A11540, &qword_2759CB6B0, MEMORY[0x277CDF510]);
    sub_27594917C(&qword_280A11728, &qword_280A11730, &qword_2759CB890, MEMORY[0x277CE1290]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11718);
  }

  return result;
}

uint64_t sub_27594917C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_275948D0C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2759491E4()
{
  result = qword_280A11740;
  if (!qword_280A11740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11680, &qword_2759CB830);
    sub_27589B02C(&qword_280A116E8, &qword_280A116F0, &qword_2759CB878, MEMORY[0x277CDF510]);
    sub_27594917C(&qword_280A11728, &qword_280A11730, &qword_2759CB890, MEMORY[0x277CE1290]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11740);
  }

  return result;
}

uint64_t sub_2759492C8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_275947B3C(&qword_280A0F688, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_90Tm()
{
  v1 = type metadata accessor for StorageThermometerCategoriesView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_2759B8DA8();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2759494DC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for StorageThermometerCategoriesView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_275949588()
{
  result = qword_280A11768;
  if (!qword_280A11768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11770, &qword_2759CB940);
    sub_27594829C();
    sub_27589B02C(&qword_280A11558, &qword_280A11510, &qword_2759CB690, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11768);
  }

  return result;
}

unint64_t sub_275949640()
{
  result = qword_280A11788;
  if (!qword_280A11788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11790, &unk_2759CB950);
    sub_275948F5C();
    sub_2759492C8(&qword_280A11748, &qword_280A11678, &qword_2759CB828, sub_275948DF4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11788);
  }

  return result;
}

uint64_t sub_27594972C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72476D6574737973 && a2 == 0xEB000000006E6565;
  if (v4 || (sub_2759BAAC8() & 1) != 0)
  {
    v5 = [objc_opt_self() systemGreenColor];
    goto LABEL_7;
  }

  if (a1 == 0x65596D6574737973 && a2 == 0xEC000000776F6C6CLL || (sub_2759BAAC8() & 1) != 0)
  {
    v5 = [objc_opt_self() systemYellowColor];
    goto LABEL_7;
  }

  if (a1 == 0x65526D6574737973 && a2 == 0xE900000000000064 || (sub_2759BAAC8() & 1) != 0)
  {
    v5 = [objc_opt_self() systemRedColor];
LABEL_7:
    v6 = v5;

    return sub_2759B9BD8();
  }

  if (a1 == 0x616E726574617571 && a2 == 0xEF6C6562614C7972 || (sub_2759BAAC8() & 1) != 0)
  {
    v8 = [objc_opt_self() quaternaryLabelColor];

    return sub_2759B9BD8();
  }

  return sub_2759B9C68();
}

uint64_t sub_27594991C(uint64_t a1, uint64_t a2, double a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = sub_2759B9BF8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[0] = 0;
  v7 = objc_allocWithZone(MEMORY[0x277CCAC80]);
  v8 = sub_2759BA258();
  v9 = [v7 initWithString_];

  LODWORD(v8) = [v9 scanHexLongLong_];
  result = 0;
  if (v8)
  {
    (*(v4 + 104))(v6, *MEMORY[0x277CE0EE0], v3);
    return sub_2759B9C78();
  }

  return result;
}

uint64_t sub_275949BD4(uint64_t a1, SEL *a2, uint64_t (*a3)(id), uint64_t *a4)
{
  v6 = [objc_opt_self() *a2];
  result = a3(v6);
  *a4 = result;
  return result;
}

id sub_275949C68(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  sub_2758BB4AC(a1, &v14 - v7);
  v9 = sub_2759B8508();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    v11 = sub_2759B84B8();
    (*(v10 + 8))(v8, v9);
  }

  if (a2)
  {
    a2 = sub_2759BA1C8();
  }

  v12 = [v3 openSensitiveURL:v11 withOptions:a2];

  return v12;
}

uint64_t sub_275949DD4(unsigned __int8 a1)
{
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

double sub_275949F08(uint64_t a1, unsigned __int8 a2)
{
  sub_2759BA328();

  return result;
}

uint64_t sub_27594A048(uint64_t a1, unsigned __int8 a2)
{
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

uint64_t sub_27594A1B0(uint64_t a1, unsigned __int8 a2)
{
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

uint64_t sub_27594A310(uint64_t a1, unsigned __int8 a2)
{
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

uint64_t sub_27594A440(uint64_t a1, unsigned __int8 a2)
{
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

uint64_t sub_27594A594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_2759BA258();
  v10[4] = a3;
  v10[5] = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_27594A654;
  v10[3] = &block_descriptor_11;
  v7 = _Block_copy(v10);

  v8 = AnalyticsSendEventLazy();

  _Block_release(v7);

  return v8;
}

id sub_27594A654(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_275861AF8(0, &qword_280A0F7B8, 0x277D82BB8);
    v4 = sub_2759BA1C8();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t DriveDeleteError.hashValue.getter()
{
  v1 = *v0;
  sub_2759BABD8();
  MEMORY[0x277C84980](v1);
  return sub_2759BAC08();
}

uint64_t DriveDeleteAction.skipObservation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14iCloudSettings17DriveDeleteAction_skipObservation;
  swift_beginAccess();
  return sub_27586FBC8(v1 + v3, a1, &qword_280A0FC48, &qword_2759C79C0);
}

uint64_t DriveDeleteAction.skipObservation.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14iCloudSettings17DriveDeleteAction_skipObservation;
  swift_beginAccess();
  sub_2758CE724(a1, v1 + v3, &qword_280A0FC48, &qword_2759C79C0);
  return swift_endAccess();
}

uint64_t DriveDeleteAction.modifyView(_:with:localStore:)@<X0>(uint64_t a1@<X0>, void *a3@<X2>, __int128 *a4@<X8>)
{
  v40 = a3;
  v6 = *(v4 + 40);
  sub_27586E058(a1, &v36);
  v7 = *(v6 + 16);

  if (!v7)
  {
LABEL_6:

    sub_275827D1C(&v36, a4);
    v11 = v28[2];
    sub_27586E058(a4, &v33);
    v12 = *(v11 + 16);

    if (v12)
    {
      v13 = 0;
      v14 = v11 + 32;
      while (v13 < *(v11 + 16))
      {
        sub_27586E058(v14, &v31);
        __swift_project_boxed_opaque_existential_1(&v31, v32);
        sub_2759B8B28();
        if (v5)
        {
LABEL_22:
          __swift_destroy_boxed_opaque_existential_1(&v33);

          __swift_destroy_boxed_opaque_existential_1(&v31);
          v27 = a4;
          return __swift_destroy_boxed_opaque_existential_1(v27);
        }

        ++v13;
        __swift_destroy_boxed_opaque_existential_1(&v33);
        __swift_destroy_boxed_opaque_existential_1(&v31);
        result = sub_275827D1C(v30, &v33);
        v14 += 40;
        if (v12 == v13)
        {
          goto LABEL_11;
        }
      }

LABEL_26:
      __break(1u);
    }

    else
    {
LABEL_11:

      sub_275827D1C(&v33, &v36);
      __swift_destroy_boxed_opaque_existential_1(a4);
      sub_275827D1C(&v36, a4);
      v15 = v28[3];
      sub_27586E058(a4, &v33);
      v16 = *(v15 + 16);

      if (!v16)
      {
LABEL_16:

        sub_275827D1C(&v33, &v36);
        __swift_destroy_boxed_opaque_existential_1(a4);
        sub_275827D1C(&v36, a4);
        v19 = v28[4];
        sub_27586E058(a4, &v33);
        v20 = *(v19 + 16);

        if (!v20)
        {
LABEL_21:

          sub_275827D1C(&v33, &v36);
          __swift_destroy_boxed_opaque_existential_1(a4);
          sub_275827D1C(&v36, a4);
          v23 = *(a4 + 3);
          v24 = *(a4 + 4);
          v40 = __swift_project_boxed_opaque_existential_1(a4, v23);
          swift_getKeyPath();
          swift_allocObject();
          swift_weakInit();
          v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280A11C70, qword_2759C1240);
          v26 = sub_27585D258();
          *&v36 = v23;
          *(&v36 + 1) = v25;
          v37 = v24;
          OpaqueTypeMetadata2 = v26;
          OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
          *&v33 = v23;
          *(&v33 + 1) = v25;
          v34 = v24;
          v35 = v26;
          OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
          __swift_allocate_boxed_opaque_existential_1(&v36);
          sub_2759B9B18();

          __swift_destroy_boxed_opaque_existential_1(a4);
          return sub_275827D1C(&v36, a4);
        }

        v21 = 0;
        v22 = v19 + 32;
        while (v21 < *(v19 + 16))
        {
          sub_27586E058(v22, &v31);
          __swift_project_boxed_opaque_existential_1(&v31, v32);
          sub_2759B8B28();
          if (v5)
          {
            goto LABEL_22;
          }

          ++v21;
          __swift_destroy_boxed_opaque_existential_1(&v33);
          __swift_destroy_boxed_opaque_existential_1(&v31);
          result = sub_275827D1C(v30, &v33);
          v22 += 40;
          if (v20 == v21)
          {
            goto LABEL_21;
          }
        }

        goto LABEL_28;
      }

      v17 = 0;
      v18 = v15 + 32;
      while (v17 < *(v15 + 16))
      {
        sub_27586E058(v18, &v31);
        __swift_project_boxed_opaque_existential_1(&v31, v32);
        sub_2759B8B28();
        if (v5)
        {
          goto LABEL_22;
        }

        ++v17;
        __swift_destroy_boxed_opaque_existential_1(&v33);
        __swift_destroy_boxed_opaque_existential_1(&v31);
        result = sub_275827D1C(v30, &v33);
        v18 += 40;
        if (v16 == v17)
        {
          goto LABEL_16;
        }
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
    return result;
  }

  v9 = 0;
  v10 = v6 + 32;
  while (1)
  {
    if (v9 >= *(v6 + 16))
    {
      __break(1u);
      goto LABEL_26;
    }

    sub_27586E058(v10, &v33);
    __swift_project_boxed_opaque_existential_1(&v33, v35);
    sub_2759B8B28();
    if (v5)
    {
      break;
    }

    ++v9;
    __swift_destroy_boxed_opaque_existential_1(&v36);
    __swift_destroy_boxed_opaque_existential_1(&v33);
    result = sub_275827D1C(&v31, &v36);
    v10 += 40;
    if (v7 == v9)
    {
      goto LABEL_6;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(&v36);

  v27 = &v33;
  return __swift_destroy_boxed_opaque_existential_1(v27);
}

void sub_27594ADB0(void *a1, uint64_t a2)
{
  if (*a1)
  {
    v2 = *(*a1 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_account);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v4 = *(Strong + OBJC_IVAR____TtC14iCloudSettings17DriveDeleteAction_account);
      *(Strong + OBJC_IVAR____TtC14iCloudSettings17DriveDeleteAction_account) = v2;
      v5 = v2;
    }
  }
}

uint64_t DriveDeleteAction.performAction(with:localStore:)(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  v4 = sub_2759B85A8();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27594AF0C, 0, 0);
}

uint64_t sub_27594AF0C(uint64_t a1)
{
  v31 = v1;
  v3 = v1[13];
  v2 = v1[14];
  v4 = v1[12];
  sub_2759B8598();
  v5 = sub_2759B8588();
  v7 = v6;
  (*(v3 + 8))(v2, v4);
  v9 = sub_275953258(8, v5, v7, v8);
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = MEMORY[0x277C840B0](v9, v11, v13, v15);
  v18 = v17;

  v1[15] = v16;
  v1[16] = v18;
  if (qword_280A0E360 != -1)
  {
    swift_once();
  }

  v19 = sub_2759B89A8();
  __swift_project_value_buffer(v19, qword_280A23900);

  v20 = sub_2759B8988();
  v21 = sub_2759BA668();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 136446210;
    v30[0] = v23;
    v30[1] = 91;
    v30[2] = 0xE100000000000000;

    MEMORY[0x277C840E0](0xD000000000000011, 0x80000002759CB9E0);
    MEMORY[0x277C840E0](2108704, 0xE300000000000000);
    MEMORY[0x277C840E0](v16, v18);
    MEMORY[0x277C840E0](93, 0xE100000000000000);

    v24 = sub_2758937B8(91, 0xE100000000000000, v30);

    *(v22 + 4) = v24;
    _os_log_impl(&dword_275819000, v20, v21, "%{public}s initiated", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x277C85860](v23, -1, -1);
    MEMORY[0x277C85860](v22, -1, -1);
  }

  v25 = v1[11];
  v26 = OBJC_IVAR____TtC14iCloudSettings17DriveDeleteAction_signpostController;
  v1[17] = OBJC_IVAR____TtC14iCloudSettings17DriveDeleteAction_signpostController;
  __swift_project_boxed_opaque_existential_1((v25 + v26), *(v25 + v26 + 24));
  sub_27598B4AC();
  v1[2] = 0xD000000000000011;
  v1[3] = 0x80000002759CB9E0;
  v1[4] = v16;
  v1[5] = v18;
  v27 = swift_task_alloc();
  v1[18] = v27;
  *v27 = v1;
  v27[1] = sub_27594B240;
  v28 = v1[9];

  return sub_27594B4D0((v1 + 6), v28, v1 + 2);
}

uint64_t sub_27594B240()
{

  return MEMORY[0x2822009F8](sub_27594B33C, 0, 0);
}

uint64_t sub_27594B33C()
{
  v27 = v0;
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = v1 >> 62;
  v5 = (v1 & 0x3FFFFFFFFFFFFFFFLL);
  if (v1 >> 62 == 2)
  {
    v6 = v1 & 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = 0;
  }

  if (v1 >> 62 == 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  if (v4)
  {
    v8 = v1 & 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = *(v0 + 48);
  }

  if (v4)
  {
    v9 = 1;
  }

  else
  {
    v9 = 3;
  }

  if (v4 <= 1)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  if (v4 <= 1)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  v23 = v11;
  v13 = *(v0 + 128);
  v12 = *(v0 + 136);
  v14 = *(v0 + 120);
  v24[0] = *(v0 + 48);
  v15 = *(v0 + 80);
  v16 = *(v0 + 72);
  v17 = (*(v0 + 88) + v12);
  v24[1] = v2;
  v25 = v3;
  v26[0] = 0xD000000000000011;
  v26[1] = 0x80000002759CB9E0;
  v26[2] = v14;
  v26[3] = v13;
  v22 = v3;
  v18 = v5;
  v19 = v10;
  sub_27594CC08(v24, v16, v15, v26);

  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  sub_27598B724();
  sub_275951E00(v10, v23, v2, v22, sub_27594A594);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_27594B4D0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *(v4 + 184) = a1;
  *(v4 + 192) = a2;
  v5 = *a3;
  *(v4 + 200) = v3;
  *(v4 + 208) = v5;
  *(v4 + 216) = *(a3 + 1);
  *(v4 + 232) = a3[3];
  return MEMORY[0x2822009F8](sub_27594B508, 0, 0);
}

uint64_t sub_27594B508()
{
  v47 = v0;
  v1 = *(v0 + 200);
  v2 = *(v1 + OBJC_IVAR____TtC14iCloudSettings17DriveDeleteAction_account);
  *(v0 + 240) = v2;
  if (v2)
  {
    swift_beginAccess();
    sub_27586FBC8(v1 + 48, v0 + 56, &qword_280A117A8, &unk_2759CBA38);
    if (*(v0 + 80))
    {
      sub_275827D1C((v0 + 56), v0 + 16);
      v3 = v2;
    }

    else
    {
      v22 = objc_opt_self();
      v23 = v2;
      v24 = [v22 defaultManager];
      v25 = [objc_opt_self() defaultManager];
      v26 = type metadata accessor for ICSCloudDocsFileProviderHelper();
      v27 = swift_allocObject();
      v28 = type metadata accessor for ICSiCloudDriveFileProvider();
      v29 = swift_allocObject();
      v29[7] = v26;
      v29[8] = &protocol witness table for ICSCloudDocsFileProviderHelper;
      v29[3] = v25;
      v29[4] = v27;
      v29[9] = v23;
      v29[2] = v24;
      *(v0 + 40) = v28;
      *(v0 + 48) = &protocol witness table for ICSiCloudDriveFileProvider;
      *(v0 + 16) = v29;
      if (*(v0 + 80))
      {
        sub_27586BF04(v0 + 56, &qword_280A117A8, &unk_2759CBA38);
      }
    }

    if (qword_280A0E360 != -1)
    {
      swift_once();
    }

    v30 = sub_2759B89A8();
    *(v0 + 248) = __swift_project_value_buffer(v30, qword_280A23900);

    v31 = sub_2759B8988();
    v32 = sub_2759BA668();

    if (os_log_type_enabled(v31, v32))
    {
      v34 = *(v0 + 224);
      v33 = *(v0 + 232);
      v36 = *(v0 + 208);
      v35 = *(v0 + 216);
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 136446210;
      v44 = v38;
      v45 = 91;
      v46 = 0xE100000000000000;

      MEMORY[0x277C840E0](v36, v35);
      MEMORY[0x277C840E0](2108704, 0xE300000000000000);
      MEMORY[0x277C840E0](v34, v33);
      MEMORY[0x277C840E0](93, 0xE100000000000000);

      v39 = sub_2758937B8(91, 0xE100000000000000, &v44);

      *(v37 + 4) = v39;
      _os_log_impl(&dword_275819000, v31, v32, "%{public}s Fetching files", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x277C85860](v38, -1, -1);
      MEMORY[0x277C85860](v37, -1, -1);
    }

    v40 = *(v0 + 40);
    v41 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v40);
    v43 = (*(v41 + 8) + **(v41 + 8));
    v42 = swift_task_alloc();
    *(v0 + 256) = v42;
    *v42 = v0;
    v42[1] = sub_27594BB44;

    return v43(v40, v41);
  }

  else
  {
    if (qword_280A0E360 != -1)
    {
      swift_once();
    }

    v4 = sub_2759B89A8();
    __swift_project_value_buffer(v4, qword_280A23900);

    v5 = sub_2759B8988();
    v6 = sub_2759BA648();

    if (os_log_type_enabled(v5, v6))
    {
      v8 = *(v0 + 224);
      v7 = *(v0 + 232);
      v10 = *(v0 + 208);
      v9 = *(v0 + 216);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 136446210;
      v44 = v12;
      v45 = 91;
      v46 = 0xE100000000000000;

      MEMORY[0x277C840E0](v10, v9);
      MEMORY[0x277C840E0](2108704, 0xE300000000000000);
      MEMORY[0x277C840E0](v8, v7);
      MEMORY[0x277C840E0](93, 0xE100000000000000);

      v13 = sub_2758937B8(91, 0xE100000000000000, &v44);

      *(v11 + 4) = v13;
      _os_log_impl(&dword_275819000, v5, v6, "%{public}s no account, bailing", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x277C85860](v12, -1, -1);
      MEMORY[0x277C85860](v11, -1, -1);
    }

    v14 = *(v0 + 184);
    sub_275954004(v15, v16, v17);
    v18 = swift_allocError();
    *v19 = 2;
    *v14 = v18;
    *(v14 + 8) = 0;
    *(v14 + 16) = 1;
    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_27594BB44(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 264) = a1;
  *(v3 + 272) = v1;

  if (v1)
  {
    v4 = sub_27594C6CC;
  }

  else
  {
    v4 = sub_27594BC58;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_27594BC58()
{
  v19 = v0;
  swift_bridgeObjectRetain_n();

  v1 = sub_2759B8988();
  v2 = sub_2759BA668();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 264);
  if (v3)
  {
    v5 = *(v0 + 232);
    v17 = *(v0 + 224);
    v7 = *(v0 + 208);
    v6 = *(v0 + 216);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 136446466;
    v18[0] = v9;
    v18[1] = 91;
    v18[2] = 0xE100000000000000;

    MEMORY[0x277C840E0](v7, v6);
    MEMORY[0x277C840E0](2108704, 0xE300000000000000);
    MEMORY[0x277C840E0](v17, v5);
    MEMORY[0x277C840E0](93, 0xE100000000000000);

    v10 = sub_2758937B8(91, 0xE100000000000000, v18);

    *(v8 + 4) = v10;
    *(v8 + 12) = 2050;
    if (v4 >> 62)
    {
      v11 = sub_2759BA9E8();
    }

    else
    {
      v11 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v8 + 14) = v11;

    _os_log_impl(&dword_275819000, v1, v2, "%{public}s Deleting %{public}ld files", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x277C85860](v9, -1, -1);
    MEMORY[0x277C85860](v8, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v13 = *(v0 + 224);
  v12 = *(v0 + 232);
  *(v0 + 96) = *(v0 + 208);
  *(v0 + 112) = v13;
  *(v0 + 120) = v12;
  v14 = swift_task_alloc();
  *(v0 + 280) = v14;
  *v14 = v0;
  v14[1] = sub_27594BF10;
  v15 = *(v0 + 264);

  return sub_2759538D4(v15, v0 + 96);
}

uint64_t sub_27594BF10()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_27594C258;
  }

  else
  {
    v2 = sub_27594C024;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_27594C024()
{
  v16 = v0;

  v1 = sub_2759B8988();
  v2 = sub_2759BA668();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[28];
    v3 = v0[29];
    v6 = v0[26];
    v5 = v0[27];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 136446210;
    v15[0] = v8;
    v15[1] = 91;
    v15[2] = 0xE100000000000000;

    MEMORY[0x277C840E0](v6, v5);
    MEMORY[0x277C840E0](2108704, 0xE300000000000000);
    MEMORY[0x277C840E0](v4, v3);
    MEMORY[0x277C840E0](93, 0xE100000000000000);

    v9 = sub_2758937B8(91, 0xE100000000000000, v15);

    *(v7 + 4) = v9;
    _os_log_impl(&dword_275819000, v1, v2, "%{public}s Syncing deleted files", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x277C85860](v8, -1, -1);
    MEMORY[0x277C85860](v7, -1, -1);
  }

  v11 = v0[28];
  v10 = v0[29];
  *(v0 + 8) = *(v0 + 13);
  v0[18] = v11;
  v0[19] = v10;
  v12 = swift_task_alloc();
  v0[37] = v12;
  *v12 = v0;
  v12[1] = sub_27594C504;
  v13 = v0[24];

  return sub_27594ED40((v0 + 2), v13, v0 + 16);
}

uint64_t sub_27594C258()
{
  v24 = v0;
  v1 = v0[36];

  v2 = v1;
  v3 = sub_2759B8988();
  v4 = sub_2759BA648();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[29];
    v21 = v0[28];
    v22 = v0[36];
    v6 = v0[26];
    v7 = v0[27];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v8 = 136446466;
    v23[0] = v10;
    v23[1] = 91;
    v23[2] = 0xE100000000000000;

    MEMORY[0x277C840E0](v6, v7);
    MEMORY[0x277C840E0](2108704, 0xE300000000000000);
    MEMORY[0x277C840E0](v21, v5);
    MEMORY[0x277C840E0](93, 0xE100000000000000);

    v11 = sub_2758937B8(91, 0xE100000000000000, v23);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2112;
    v12 = v22;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v13;
    *v9 = v13;
    _os_log_impl(&dword_275819000, v3, v4, "%{public}s caught error during delete: %@", v8, 0x16u);
    sub_27586BF04(v9, &unk_280A0FDE0, &unk_2759C2650);
    MEMORY[0x277C85860](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x277C85860](v10, -1, -1);
    MEMORY[0x277C85860](v8, -1, -1);
  }

  v14 = v0[33];
  if (v14 >> 62)
  {
    v15 = sub_2759BA9E8();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = v0[36];
  v17 = v0[30];
  v18 = v0[23];

  *v18 = v16 | 0x4000000000000000;
  *(v18 + 8) = v15;
  *(v18 + 16) = 0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v19 = v0[1];

  return v19();
}

uint64_t sub_27594C504()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_27594C95C;
  }

  else
  {
    v2 = sub_27594C618;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_27594C618()
{
  v1 = v0[33];
  if (v1 >> 62)
  {
    v2 = sub_2759BA9E8();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = v0[30];
  v4 = v0[23];

  *v4 = 0xC000000000000000;
  *(v4 + 8) = v2;
  *(v4 + 16) = 0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v5 = v0[1];

  return v5();
}

uint64_t sub_27594C6CC()
{
  v22 = v0;
  v1 = v0[34];

  v2 = v1;
  v3 = sub_2759B8988();
  v4 = sub_2759BA648();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[29];
    v19 = v0[34];
    v20 = v0[30];
    v6 = v0[27];
    v18 = v0[28];
    v7 = v0[26];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v8 = 136446466;
    v21[0] = v10;
    v21[1] = 91;
    v21[2] = 0xE100000000000000;

    MEMORY[0x277C840E0](v7, v6);
    MEMORY[0x277C840E0](2108704, 0xE300000000000000);
    MEMORY[0x277C840E0](v18, v5);
    MEMORY[0x277C840E0](93, 0xE100000000000000);

    v11 = sub_2758937B8(91, 0xE100000000000000, v21);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2112;
    v12 = v19;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v13;
    *v9 = v13;
    _os_log_impl(&dword_275819000, v3, v4, "%{public}s caught error during fetch: %@", v8, 0x16u);
    sub_27586BF04(v9, &unk_280A0FDE0, &unk_2759C2650);
    MEMORY[0x277C85860](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x277C85860](v10, -1, -1);
    MEMORY[0x277C85860](v8, -1, -1);
  }

  else
  {
    v14 = v0[30];
  }

  v15 = v0[23];
  *v15 = v0[34];
  *(v15 + 8) = 0;
  *(v15 + 16) = 1;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v16 = v0[1];

  return v16();
}

uint64_t sub_27594C95C()
{
  v24 = v0;
  v1 = v0[38];

  v2 = v1;
  v3 = sub_2759B8988();
  v4 = sub_2759BA648();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[29];
    v21 = v0[28];
    v22 = v0[38];
    v6 = v0[26];
    v7 = v0[27];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v8 = 136446466;
    v23[0] = v10;
    v23[1] = 91;
    v23[2] = 0xE100000000000000;

    MEMORY[0x277C840E0](v6, v7);
    MEMORY[0x277C840E0](2108704, 0xE300000000000000);
    MEMORY[0x277C840E0](v21, v5);
    MEMORY[0x277C840E0](93, 0xE100000000000000);

    v11 = sub_2758937B8(91, 0xE100000000000000, v23);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2112;
    v12 = v22;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v13;
    *v9 = v13;
    _os_log_impl(&dword_275819000, v3, v4, "%{public}s caught error: %@", v8, 0x16u);
    sub_27586BF04(v9, &unk_280A0FDE0, &unk_2759C2650);
    MEMORY[0x277C85860](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x277C85860](v10, -1, -1);
    MEMORY[0x277C85860](v8, -1, -1);
  }

  v14 = v0[33];
  if (v14 >> 62)
  {
    v15 = sub_2759BA9E8();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = v0[38];
  v17 = v0[30];
  v18 = v0[23];

  *v18 = v16 | 0x8000000000000000;
  *(v18 + 8) = v15;
  *(v18 + 16) = 0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v19 = v0[1];

  return v19();
}

double sub_27594CC08(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a1;
  v5 = a4[1];
  v6 = a4[3];
  v48 = *a4;
  v49 = a4[2];
  v7 = *a1 >> 62;
  p_prots = &OBJC_PROTOCOL___RUIObjectModelDelegate.prots;
  if (v7 <= 1)
  {
    v9 = (v4 & 0x3FFFFFFFFFFFFFFFLL);
    v10 = (v4 & 0x3FFFFFFFFFFFFFFFLL);
    if (qword_280A0E360 != -1)
    {
      swift_once();
    }

    v11 = sub_2759B89A8();
    __swift_project_value_buffer(v11, qword_280A23900);

    v12 = v9;
    v13 = sub_2759B8988();
    v14 = sub_2759BA648();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v15 = 136446466;
      v50 = v44;

      MEMORY[0x277C840E0](v48, v5);
      MEMORY[0x277C840E0](2108704, 0xE300000000000000);
      MEMORY[0x277C840E0](v49, v6);
      MEMORY[0x277C840E0](93, 0xE100000000000000);

      v17 = sub_2758937B8(91, 0xE100000000000000, &v50);

      *(v15 + 4) = v17;
      *(v15 + 12) = 2112;
      v18 = v9;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 14) = v19;
      *v16 = v19;

      _os_log_impl(&dword_275819000, v13, v14, "%{public}s client error while deleting files: %@", v15, 0x16u);
      sub_27586BF04(v16, &unk_280A0FDE0, &unk_2759C2650);
      v20 = v16;
      p_prots = (&OBJC_PROTOCOL___RUIObjectModelDelegate + 16);
      MEMORY[0x277C85860](v20, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v44);
      MEMORY[0x277C85860](v44, -1, -1);
      MEMORY[0x277C85860](v15, -1, -1);
    }

    else
    {
    }

LABEL_19:
    sub_2759BA438();

    goto LABEL_20;
  }

  if (v7 != 2)
  {
    if (qword_280A0E360 != -1)
    {
      swift_once();
    }

    v30 = sub_2759B89A8();
    __swift_project_value_buffer(v30, qword_280A23900);

    v31 = sub_2759B8988();
    v32 = sub_2759BA668();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 136446210;
      v50 = v34;

      MEMORY[0x277C840E0](v48, v5);
      MEMORY[0x277C840E0](2108704, 0xE300000000000000);
      MEMORY[0x277C840E0](v49, v6);
      MEMORY[0x277C840E0](93, 0xE100000000000000);

      v35 = sub_2758937B8(91, 0xE100000000000000, &v50);

      *(v33 + 4) = v35;
      _os_log_impl(&dword_275819000, v31, v32, "%{public}s performing success actions", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      v36 = v34;
      p_prots = &OBJC_PROTOCOL___RUIObjectModelDelegate.prots;
      MEMORY[0x277C85860](v36, -1, -1);
      MEMORY[0x277C85860](v33, -1, -1);
    }

    goto LABEL_19;
  }

  v21 = (v4 & 0x3FFFFFFFFFFFFFFFLL);
  if (qword_280A0E360 != -1)
  {
    swift_once();
  }

  v22 = sub_2759B89A8();
  __swift_project_value_buffer(v22, qword_280A23900);

  v23 = (v4 & 0x3FFFFFFFFFFFFFFFLL);
  v24 = sub_2759B8988();
  v25 = sub_2759BA648();

  if (os_log_type_enabled(v24, v25))
  {
    v46 = v25;
    v26 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v26 = 136446466;
    v50 = v47;

    MEMORY[0x277C840E0](v48, v5);
    MEMORY[0x277C840E0](2108704, 0xE300000000000000);
    MEMORY[0x277C840E0](v49, v6);
    MEMORY[0x277C840E0](93, 0xE100000000000000);

    v27 = sub_2758937B8(91, 0xE100000000000000, &v50);

    *(v26 + 4) = v27;
    p_prots = &OBJC_PROTOCOL___RUIObjectModelDelegate.prots;
    *(v26 + 12) = 2112;
    v28 = (v4 & 0x3FFFFFFFFFFFFFFFLL);
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v26 + 14) = v29;
    *v45 = v29;
    _os_log_impl(&dword_275819000, v24, v46, "%{public}s sync error while deleting files: %@", v26, 0x16u);
    sub_27586BF04(v45, &unk_280A0FDE0, &unk_2759C2650);
    MEMORY[0x277C85860](v45, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v47);
    MEMORY[0x277C85860](v47, -1, -1);
    MEMORY[0x277C85860](v26, -1, -1);
  }

  sub_2759BA438();

LABEL_20:
  if (p_prots[108] != -1)
  {
    swift_once();
  }

  v37 = sub_2759B89A8();
  __swift_project_value_buffer(v37, qword_280A23900);

  v38 = sub_2759B8988();
  v39 = sub_2759BA668();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v40 = 136446210;
    v50 = v41;

    MEMORY[0x277C840E0](v48, v5);
    MEMORY[0x277C840E0](2108704, 0xE300000000000000);
    MEMORY[0x277C840E0](v49, v6);
    MEMORY[0x277C840E0](93, 0xE100000000000000);

    v42 = sub_2758937B8(91, 0xE100000000000000, &v50);

    *(v40 + 4) = v42;
    _os_log_impl(&dword_275819000, v38, v39, "%{public}s performing completion actions", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x277C85860](v41, -1, -1);
    MEMORY[0x277C85860](v40, -1, -1);
  }

  sub_2759BA438();

  return result;
}

double sub_27594D4F8(uint64_t a1)
{
  sub_2759BA328();

  return result;
}

unint64_t sub_27594D61C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_275953F50(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_27594D64C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC0000006E6F6974;
  v4 = 0x656C706D6F436E6FLL;
  v5 = 0xEB00000000726F72;
  v6 = 0x7245636E79536E6FLL;
  v7 = 0x5255796669746F6ELL;
  v8 = 0xEF6E6F6974617672;
  if (v2 == 4)
  {
    v8 = 0xE90000000000004CLL;
  }

  else
  {
    v7 = 0x6573624F70696B73;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xE900000000000073;
  v10 = 0x7365636375536E6FLL;
  if (v2 != 1)
  {
    v10 = 0x746E65696C436E6FLL;
    v9 = 0xED0000726F727245;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_27594D738()
{
  v1 = *v0;
  v2 = 0x656C706D6F436E6FLL;
  v3 = 0x7245636E79536E6FLL;
  v4 = 0x5255796669746F6ELL;
  if (v1 != 4)
  {
    v4 = 0x6573624F70696B73;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7365636375536E6FLL;
  if (v1 != 1)
  {
    v5 = 0x746E65696C436E6FLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_27594D820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275953F50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27594D854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2759532F4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_27594D890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2759532F4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t DriveDeleteAction.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  DriveDeleteAction.init(from:)(a1);
  return v2;
}

uint64_t *DriveDeleteAction.init(from:)(void *a1)
{
  v3 = v1;
  v142 = *v3;
  v143 = v2;
  v5 = sub_2759B89A8();
  v136 = *(v5 - 8);
  v137 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v135 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v134 = &v116 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC48, &qword_2759C79C0);
  MEMORY[0x28223BE20](v9 - 8);
  v133 = &v116 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E8A8, qword_2759C2120);
  MEMORY[0x28223BE20](v11 - 8);
  v132 = &v116 - v12;
  v145 = sub_2759B8BD8();
  v138 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v144 = &v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11798, &unk_2759CBA28);
  v139 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v15 = &v116 - v14;
  *(v3 + 3) = 0u;
  v16 = (v3 + 6);
  v3[10] = 0;
  *(v3 + 4) = 0u;
  v17 = OBJC_IVAR____TtC14iCloudSettings17DriveDeleteAction_notifyURL;
  v18 = sub_2759B8C48();
  v19 = *(v18 - 8);
  v20 = *(v19 + 56);
  v130 = v17;
  v129 = v18;
  v126 = v20;
  v125 = v19 + 56;
  (v20)(v3 + v17, 1, 1);
  v21 = OBJC_IVAR____TtC14iCloudSettings17DriveDeleteAction_skipObservation;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC68, &qword_2759C7830);
  v23 = *(v22 - 8);
  v24 = *(v23 + 56);
  v131 = v21;
  v128 = v24;
  v127 = v23 + 56;
  v24(v3 + v21, 1, 1, v22);
  *(v3 + OBJC_IVAR____TtC14iCloudSettings17DriveDeleteAction_account) = 0;
  v25 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2759532F4(v25, v26, v27);
  v140 = v15;
  v28 = &unk_280A23000;
  v29 = v143;
  v30 = a1;
  sub_2759BAC18();
  v31 = &unk_280A23000;
  v32 = v29;
  if (v29)
  {
    goto LABEL_40;
  }

  v123 = (v3 + 6);
  v124 = v3;
  v122 = v22;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FB10, &qword_2759C79D0);
  LOBYTE(v149) = 0;
  v34 = sub_2758C7304();
  v35 = v140;
  v36 = v141;
  sub_2759BAA68();
  v37 = v35;
  v121 = v34;
  if (v146)
  {
    v38 = v146;
  }

  else
  {
    v38 = MEMORY[0x277D84F90];
  }

  v39 = *(v38 + 16);
  v119 = v30;
  v118 = v33;
  if (v39)
  {
    v120 = 0;
    v149 = MEMORY[0x277D84F90];
    v40 = v38;
    sub_2759509B0(0, v39, 0);
    v41 = v149;
    v143 = *(v138 + 16);
    v42 = (*(v138 + 80) + 32) & ~*(v138 + 80);
    v117 = v40;
    v43 = v40 + v42;
    v44 = *(v138 + 72);
    v45 = (v138 + 8);
    v46 = v145;
    do
    {
      v47 = v144;
      v143(v144, v43, v46);
      sub_2759B8BC8();
      v46 = v145;
      (*v45)(v47, v145);
      v149 = v41;
      v49 = *(v41 + 16);
      v48 = *(v41 + 24);
      if (v49 >= v48 >> 1)
      {
        sub_2759509B0((v48 > 1), v49 + 1, 1);
        v46 = v145;
        v41 = v149;
      }

      *(v41 + 16) = v49 + 1;
      sub_275827D1C(&v146, v41 + 40 * v49 + 32);
      v43 += v44;
      --v39;
    }

    while (v39);

    v50 = v124;
    v51 = v119;
    v37 = v140;
    v36 = v141;
    v52 = v139;
    v32 = v120;
  }

  else
  {

    v41 = MEMORY[0x277D84F90];
    v52 = v139;
    v51 = v30;
    v50 = v124;
  }

  v53 = v50;
  v50[5] = v41;
  LOBYTE(v149) = 2;
  sub_2759BAA68();
  if (v32)
  {
    (*(v52 + 8))(v37, v36);
LABEL_39:
    v3 = v53;

    v30 = v51;
    v31 = &unk_280A23000;
    v16 = v123;
    v28 = &unk_280A23000;
LABEL_40:
    sub_27586BF04(v16, &qword_280A117A8, &unk_2759CBA38);
    sub_27586BF04(v3 + v31[319], &qword_280A0E8A8, qword_2759C2120);
    sub_27586BF04(v3 + v28[317], &qword_280A0FC48, &qword_2759C79C0);

    swift_deallocPartialClassInstance();
    __swift_destroy_boxed_opaque_existential_1(v30);
    return v3;
  }

  v54 = v52;
  if (v146)
  {
    v55 = v146;
  }

  else
  {
    v55 = MEMORY[0x277D84F90];
  }

  v56 = *(v55 + 16);
  if (v56)
  {
    v120 = 0;
    v149 = MEMORY[0x277D84F90];
    v57 = v55;
    sub_2759509B0(0, v56, 0);
    v58 = v149;
    v143 = *(v138 + 16);
    v59 = (*(v138 + 80) + 32) & ~*(v138 + 80);
    v117 = v57;
    v60 = v57 + v59;
    v61 = *(v138 + 72);
    v62 = (v138 + 8);
    v63 = v145;
    do
    {
      v64 = v144;
      v143(v144, v60, v63);
      sub_2759B8BC8();
      v63 = v145;
      (*v62)(v64, v145);
      v149 = v58;
      v66 = *(v58 + 16);
      v65 = *(v58 + 24);
      if (v66 >= v65 >> 1)
      {
        sub_2759509B0((v65 > 1), v66 + 1, 1);
        v63 = v145;
        v58 = v149;
      }

      *(v58 + 16) = v66 + 1;
      sub_275827D1C(&v146, v58 + 40 * v66 + 32);
      v60 += v61;
      --v56;
    }

    while (v56);

    v67 = v124;
    v51 = v119;
    v37 = v140;
    v36 = v141;
    v68 = v139;
    v32 = v120;
  }

  else
  {

    v58 = MEMORY[0x277D84F90];
    v67 = v53;
    v68 = v54;
  }

  v53 = v67;
  v67[3] = v58;
  LOBYTE(v149) = 3;
  sub_2759BAA68();
  if (v32)
  {
    (*(v68 + 8))(v37, v36);
LABEL_38:

    goto LABEL_39;
  }

  v69 = v68;
  if (v146)
  {
    v70 = v146;
  }

  else
  {
    v70 = MEMORY[0x277D84F90];
  }

  v71 = *(v70 + 16);
  if (v71)
  {
    v120 = 0;
    v149 = MEMORY[0x277D84F90];
    v72 = v70;
    sub_2759509B0(0, v71, 0);
    v73 = v149;
    v143 = *(v138 + 16);
    v74 = (*(v138 + 80) + 32) & ~*(v138 + 80);
    v117 = v72;
    v75 = v72 + v74;
    v76 = *(v138 + 72);
    v77 = (v138 + 8);
    v78 = v145;
    do
    {
      v79 = v144;
      v143(v144, v75, v78);
      sub_2759B8BC8();
      v78 = v145;
      (*v77)(v79, v145);
      v149 = v73;
      v81 = *(v73 + 16);
      v80 = *(v73 + 24);
      if (v81 >= v80 >> 1)
      {
        sub_2759509B0((v80 > 1), v81 + 1, 1);
        v78 = v145;
        v73 = v149;
      }

      *(v73 + 16) = v81 + 1;
      sub_275827D1C(&v146, v73 + 40 * v81 + 32);
      v75 += v76;
      --v71;
    }

    while (v71);

    v82 = v124;
    v51 = v119;
    v37 = v140;
    v83 = v141;
    v84 = v139;
    v32 = v120;
  }

  else
  {

    v73 = MEMORY[0x277D84F90];
    v82 = v53;
    v84 = v69;
    v83 = v36;
  }

  v53 = v82;
  v82[4] = v73;
  LOBYTE(v149) = 1;
  v85 = v83;
  sub_2759BAA68();
  if (v32)
  {
    (*(v84 + 8))(v37, v85);

    goto LABEL_38;
  }

  if (v146)
  {
    v87 = v146;
  }

  else
  {
    v87 = MEMORY[0x277D84F90];
  }

  v88 = *(v87 + 16);
  if (v88)
  {
    v120 = 0;
    v149 = MEMORY[0x277D84F90];
    sub_2759509B0(0, v88, 0);
    v89 = v149;
    v91 = *(v138 + 16);
    v90 = v138 + 16;
    v142 = v87;
    v143 = v91;
    v92 = v87 + ((*(v138 + 80) + 32) & ~*(v138 + 80));
    v93 = *(v138 + 72);
    v94 = (v138 + 8);
    v95 = v145;
    do
    {
      v96 = v144;
      v97 = v90;
      v143(v144, v92, v95);
      sub_2759B8BC8();
      v95 = v145;
      (*v94)(v96, v145);
      v149 = v89;
      v99 = *(v89 + 16);
      v98 = *(v89 + 24);
      if (v99 >= v98 >> 1)
      {
        sub_2759509B0((v98 > 1), v99 + 1, 1);
        v95 = v145;
        v89 = v149;
      }

      *(v89 + 16) = v99 + 1;
      sub_275827D1C(&v146, v89 + 40 * v99 + 32);
      v92 += v93;
      --v88;
      v90 = v97;
    }

    while (v88);

    v53 = v124;
    v32 = v120;
  }

  else
  {

    v89 = MEMORY[0x277D84F90];
  }

  v100 = v53;
  v53[2] = v89;
  LOBYTE(v146) = 4;
  sub_275953FA4(&qword_280A0E8C0, MEMORY[0x277D23340], MEMORY[0x277D23348]);
  v101 = v132;
  v102 = v129;
  v103 = v32;
  sub_2759BAA68();
  v104 = v32;
  v105 = v137;
  v106 = v133;
  if (v103)
  {

    v126(v101, 1, 1, v102);
    v104 = 0;
  }

  v107 = v130;
  swift_beginAccess();
  sub_2758CE724(v101, v100 + v107, &qword_280A0E8A8, qword_2759C2120);
  swift_endAccess();
  LOBYTE(v146) = 5;
  sub_2758EA064();
  v108 = v122;
  sub_2759BAA68();
  if (v104)
  {

    v128(v106, 1, 1, v108);
  }

  v120 = 0;
  v109 = v134;
  v110 = v131;
  swift_beginAccess();
  sub_2758CE724(v106, v100 + v110, &qword_280A0FC48, &qword_2759C79C0);
  swift_endAccess();
  v100[11] = [objc_opt_self() defaultManager];
  if (qword_280A0E350 != -1)
  {
    swift_once();
  }

  v111 = __swift_project_value_buffer(v105, qword_280A238D0);
  v112 = v136;
  v113 = *(v136 + 16);
  v113(v109, v111, v105);
  v114 = type metadata accessor for ManageStorageAnalytics();
  v115 = swift_allocObject();
  v115[8] = 0;
  v115[9] = 0;
  v115[7] = 0;
  v113(v135, v109, v105);
  v115[5] = sub_2759B8928();
  v115[6] = &off_288481960;
  __swift_allocate_boxed_opaque_existential_1(v115 + 2);
  sub_2759B8908();
  (*(v112 + 8))(v109, v105);
  v147 = v114;
  v148 = &off_288485F28;
  *&v146 = v115;
  (*(v139 + 8))(v140, v141);
  sub_275827D1C(&v146, v100 + OBJC_IVAR____TtC14iCloudSettings17DriveDeleteAction_signpostController);
  __swift_destroy_boxed_opaque_existential_1(v119);
  return v100;
}

uint64_t DriveDeleteAction.__allocating_init(fileProvider:fpItemManager:onCompletion:onSuccess:onClientError:onSyncError:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v43 = a5;
  v44 = a6;
  v41 = a4;
  v42 = a3;
  v40 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC48, &qword_2759C79C0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v38 - v8;
  v10 = sub_2759B89A8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v38 - v15;
  v39 = a1;
  sub_27586E058(a1, v47);
  if (qword_280A0E350 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v10, qword_280A238D0);
  v18 = *(v11 + 16);
  v18(v16, v17, v10);
  v19 = type metadata accessor for ManageStorageAnalytics();
  v20 = swift_allocObject();
  v20[8] = 0;
  v20[9] = 0;
  v20[7] = 0;
  v18(v14, v16, v10);
  v20[5] = sub_2759B8928();
  v20[6] = &off_288481960;
  __swift_allocate_boxed_opaque_existential_1(v20 + 2);
  sub_2759B8908();
  (*(v11 + 8))(v16, v10);
  v46[3] = v19;
  v46[4] = &off_288485F28;
  v46[0] = v20;
  v21 = swift_allocObject();
  v22 = __swift_mutable_project_boxed_opaque_existential_1(v46, v19);
  MEMORY[0x28223BE20](v22);
  v24 = (&v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24);
  v26 = *v24;
  v27 = (v21 + OBJC_IVAR____TtC14iCloudSettings17DriveDeleteAction_signpostController);
  v27[3] = v19;
  v27[4] = &off_288485F28;
  *v27 = v26;
  __swift_destroy_boxed_opaque_existential_1(v39);
  *(v21 + 80) = 0;
  *(v21 + 64) = 0u;
  *(v21 + 48) = 0u;
  v28 = OBJC_IVAR____TtC14iCloudSettings17DriveDeleteAction_notifyURL;
  v29 = sub_2759B8C48();
  (*(*(v29 - 8) + 56))(v21 + v28, 1, 1, v29);
  v30 = OBJC_IVAR____TtC14iCloudSettings17DriveDeleteAction_skipObservation;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC68, &qword_2759C7830);
  v32 = *(v31 - 8);
  v33 = *(v32 + 56);
  v33(v21 + v30, 1, 1, v31);
  *(v21 + OBJC_IVAR____TtC14iCloudSettings17DriveDeleteAction_account) = 0;
  sub_275827D1C(v47, v45);
  swift_beginAccess();
  sub_2758CE724(v45, v21 + 48, &qword_280A117A8, &unk_2759CBA38);
  swift_endAccess();
  *(v21 + 88) = v40;
  v35 = v42;
  v34 = v43;
  *(v21 + 16) = v41;
  *(v21 + 24) = v34;
  *(v21 + 32) = v44;
  *(v21 + 40) = v35;
  *v9 = 0;
  (*(v32 + 104))(v9, *MEMORY[0x277D23230], v31);
  v33(v9, 0, 1, v31);
  v36 = OBJC_IVAR____TtC14iCloudSettings17DriveDeleteAction_skipObservation;
  swift_beginAccess();
  sub_2758CE724(v9, v21 + v36, &qword_280A0FC48, &qword_2759C79C0);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v46);
  return v21;
}

uint64_t sub_27594ED40(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *(v4 + 72) = a2;
  *(v4 + 80) = v3;
  *(v4 + 64) = a1;
  v6 = sub_2759B8C48();
  *(v4 + 88) = v6;
  *(v4 + 96) = *(v6 - 8);
  *(v4 + 104) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC68, &qword_2759C7830);
  *(v4 + 128) = v7;
  *(v4 + 136) = *(v7 - 8);
  v8 = swift_task_alloc();
  v9 = *a3;
  *(v4 + 144) = v8;
  *(v4 + 152) = v9;
  *(v4 + 160) = *(a3 + 1);
  *(v4 + 176) = a3[3];

  return MEMORY[0x2822009F8](sub_27594EEC8, 0, 0);
}

uint64_t sub_27594EEC8()
{
  v76 = v0;
  if (qword_280A0E360 != -1)
  {
    swift_once();
  }

  v69 = sub_2759B89A8();
  *(v0 + 184) = __swift_project_value_buffer(v69, qword_280A23900);

  v1 = sub_2759B8988();
  v2 = sub_2759BA668();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 168);
    v4 = *(v0 + 176);
    v5 = *(v0 + 152);
    v6 = *(v0 + 160);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 136446210;
    v73 = v8;
    v74 = 91;
    v75 = 0xE100000000000000;

    MEMORY[0x277C840E0](v5, v6);
    MEMORY[0x277C840E0](2108704, 0xE300000000000000);
    MEMORY[0x277C840E0](v3, v4);
    MEMORY[0x277C840E0](93, 0xE100000000000000);

    v9 = sub_2758937B8(91, 0xE100000000000000, &v73);

    *(v7 + 4) = v9;
    _os_log_impl(&dword_275819000, v1, v2, "%{public}s syncDeletedFiles", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x277C85860](v8, -1, -1);
    MEMORY[0x277C85860](v7, -1, -1);
  }

  v11 = *(v0 + 128);
  v10 = *(v0 + 136);
  v12 = *(v0 + 80);
  v13 = OBJC_IVAR____TtC14iCloudSettings17DriveDeleteAction_skipObservation;
  swift_beginAccess();
  if ((*(v10 + 48))(v12 + v13, 1, v11))
  {
    v14 = 2;
  }

  else
  {
    (*(*(v0 + 136) + 16))(*(v0 + 144), v12 + v13, *(v0 + 128));
    sub_2759B8AA8();
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
    v14 = *(v0 + 216);
  }

  v15 = sub_2759B8988();
  v16 = sub_2759BA668();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = *(v0 + 176);
    v68 = *(v0 + 168);
    v18 = *(v0 + 152);
    v19 = *(v0 + 160);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 136446466;
    v73 = v21;
    v74 = 91;
    v75 = 0xE100000000000000;

    MEMORY[0x277C840E0](v18, v19);
    MEMORY[0x277C840E0](2108704, 0xE300000000000000);
    MEMORY[0x277C840E0](v68, v17);
    MEMORY[0x277C840E0](93, 0xE100000000000000);

    v22 = sub_2758937B8(v74, v75, &v73);

    *(v20 + 4) = v22;
    *(v20 + 12) = 2080;
    v23 = 1702195828;
    if ((v14 & 1) == 0)
    {
      v23 = 0x65736C6166;
    }

    v24 = 0xE500000000000000;
    if (v14)
    {
      v24 = 0xE400000000000000;
    }

    if (v14 == 2)
    {
      v25 = 7104878;
    }

    else
    {
      v25 = v23;
    }

    if (v14 == 2)
    {
      v26 = 0xE300000000000000;
    }

    else
    {
      v26 = v24;
    }

    v27 = sub_2758937B8(v25, v26, &v73);

    *(v20 + 14) = v27;
    _os_log_impl(&dword_275819000, v15, v16, "%{public}s Skip observation flag: %s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x277C85860](v21, -1, -1);
    MEMORY[0x277C85860](v20, -1, -1);
  }

  if (v14 == 2 || (v14 & 1) != 0)
  {
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v69, qword_280A238A0);

    v28 = sub_2759B8988();
    v29 = sub_2759BA668();

    if (os_log_type_enabled(v28, v29))
    {
      v31 = *(v0 + 168);
      v30 = *(v0 + 176);
      v33 = *(v0 + 152);
      v32 = *(v0 + 160);
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 136446210;
      v73 = v35;
      v74 = 91;
      v75 = 0xE100000000000000;

      MEMORY[0x277C840E0](v33, v32);
      MEMORY[0x277C840E0](2108704, 0xE300000000000000);
      MEMORY[0x277C840E0](v31, v30);
      MEMORY[0x277C840E0](93, 0xE100000000000000);

      v36 = sub_2758937B8(v74, v75, &v73);

      *(v34 + 4) = v36;
      _os_log_impl(&dword_275819000, v28, v29, "%{public}s Skipping observation!", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x277C85860](v35, -1, -1);
      MEMORY[0x277C85860](v34, -1, -1);
    }

    v37 = *(v0 + 8);

    return v37();
  }

  else
  {
    v39 = *(v0 + 120);
    v40 = *(v0 + 88);
    v41 = *(v0 + 96);
    v42 = *(v0 + 80);
    v43 = sub_2759B8508();
    (*(*(v43 - 8) + 56))(v39, 1, 1, v43);
    v44 = OBJC_IVAR____TtC14iCloudSettings17DriveDeleteAction_notifyURL;
    swift_beginAccess();
    if (!(*(v41 + 48))(v42 + v44, 1, v40))
    {
      (*(*(v0 + 96) + 16))(*(v0 + 104), v42 + v44, *(v0 + 88));
      v45 = sub_2759B8C38();
      v47 = v46;
      (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

      v48 = sub_2759B8988();
      v49 = sub_2759BA668();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = *(v0 + 176);
        v70 = *(v0 + 168);
        v51 = *(v0 + 152);
        v52 = *(v0 + 160);
        v53 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v73 = v72;
        *v53 = 136446466;
        v74 = 91;
        v75 = 0xE100000000000000;

        MEMORY[0x277C840E0](v51, v52);
        MEMORY[0x277C840E0](2108704, 0xE300000000000000);
        MEMORY[0x277C840E0](v70, v50);
        MEMORY[0x277C840E0](93, 0xE100000000000000);

        v54 = sub_2758937B8(v74, v75, &v73);

        *(v53 + 4) = v54;
        *(v53 + 12) = 2080;
        *(v53 + 14) = sub_2758937B8(v45, v47, &v73);
        _os_log_impl(&dword_275819000, v48, v49, "%{public}s notifyURL: %s", v53, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x277C85860](v72, -1, -1);
        MEMORY[0x277C85860](v53, -1, -1);
      }

      v55 = *(v0 + 112);
      v56 = *(v0 + 120);
      sub_2759B84F8();

      sub_27586BF04(v56, &unk_280A0EB10, &qword_2759C0740);
      sub_2758B4BD0(v55, v56);
    }

    v57 = *(v0 + 64);
    v58 = v57[3];
    v59 = v57[4];
    __swift_project_boxed_opaque_existential_1(v57, v58);
    v60 = *MEMORY[0x277CC6358];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11830, &unk_2759CBF60);
    v61 = swift_allocObject();
    *(v0 + 192) = v61;
    v62 = MEMORY[0x277CC62E8];
    *(v61 + 16) = xmmword_2759C17A0;
    v63 = *v62;
    *(v61 + 32) = v63;
    v64 = *(v59 + 16);
    v65 = v63;
    v71 = (v64 + *v64);
    v66 = swift_task_alloc();
    *(v0 + 200) = v66;
    *v66 = v0;
    v66[1] = sub_27594F9EC;
    v67 = *(v0 + 120);

    return v71(v60, v61, v67, v58, v59);
  }
}

uint64_t sub_27594F9EC(char a1)
{
  v3 = *v2;
  *(v3 + 217) = a1;
  *(v3 + 208) = v1;

  if (v1)
  {
    v4 = sub_27594FDEC;
  }

  else
  {
    v4 = sub_27594FB2C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_27594FB2C()
{
  v18 = v0;

  v1 = sub_2759B8988();
  v2 = sub_2759BA668();

  if (os_log_type_enabled(v1, v2))
  {
    v16 = *(v0 + 217);
    v4 = *(v0 + 168);
    v3 = *(v0 + 176);
    v6 = *(v0 + 152);
    v5 = *(v0 + 160);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 136446466;
    v17[0] = v8;
    v17[1] = 91;
    v17[2] = 0xE100000000000000;

    MEMORY[0x277C840E0](v6, v5);
    MEMORY[0x277C840E0](2108704, 0xE300000000000000);
    MEMORY[0x277C840E0](v4, v3);
    MEMORY[0x277C840E0](93, 0xE100000000000000);

    v9 = sub_2758937B8(91, 0xE100000000000000, v17);

    *(v7 + 4) = v9;
    *(v7 + 12) = 1026;
    *(v7 + 14) = v16;
    _os_log_impl(&dword_275819000, v1, v2, "%{public}s delete sync complete. success: %{BOOL,public}d", v7, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x277C85860](v8, -1, -1);
    MEMORY[0x277C85860](v7, -1, -1);
  }

  if (*(v0 + 217) != 1)
  {
    sub_275954004(v10, v11, v12);
    swift_allocError();
    *v14 = 1;
    swift_willThrow();
  }

  sub_27586BF04(*(v0 + 120), &unk_280A0EB10, &qword_2759C0740);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_27594FDEC()
{
  sub_27586BF04(*(v0 + 120), &unk_280A0EB10, &qword_2759C0740);

  v1 = *(v0 + 8);

  return v1();
}

void sub_27594FE9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = a6;
  v31 = a7;
  v32 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F7C8, &qword_2759C4608);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - v12;
  v14 = objc_allocWithZone(MEMORY[0x277CC6470]);
  sub_275861AF8(0, &qword_280A11838, 0x277CC63E8);
  v15 = sub_2759BA3D8();
  v16 = [v14 initWithItems_];

  (*(v11 + 16))(v13, a1, v10);
  v17 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v18 = swift_allocObject();
  v29 = a3;
  *(v18 + 2) = a3;
  *(v18 + 3) = a4;
  v19 = v30;
  *(v18 + 4) = v32;
  *(v18 + 5) = v19;
  (*(v11 + 32))(&v18[v17], v13, v10);
  v38 = sub_275954068;
  v39 = v18;
  aBlock = MEMORY[0x277D85DD0];
  v35 = 1107296256;
  v36 = sub_2759504E8;
  v37 = &block_descriptor_64;
  v20 = _Block_copy(&aBlock);
  v21 = v16;

  [v21 setTransformCompletionBlock_];
  _Block_release(v20);

  if (qword_280A0E360 != -1)
  {
    swift_once();
  }

  v22 = sub_2759B89A8();
  __swift_project_value_buffer(v22, qword_280A23900);

  v23 = sub_2759B8988();
  v24 = sub_2759BA668();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 136446210;
    v33 = v26;
    aBlock = 91;
    v35 = 0xE100000000000000;

    MEMORY[0x277C840E0](v29, a4);
    MEMORY[0x277C840E0](2108704, 0xE300000000000000);
    MEMORY[0x277C840E0](v32, v19);
    MEMORY[0x277C840E0](93, 0xE100000000000000);

    v27 = sub_2758937B8(aBlock, v35, &v33);

    *(v25 + 4) = v27;
    _os_log_impl(&dword_275819000, v23, v24, "%{public}s starting move to trash operation", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x277C85860](v26, -1, -1);
    MEMORY[0x277C85860](v25, -1, -1);
  }

  [*(v31 + 88) scheduleAction_];
}

uint64_t sub_275950294(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_280A0E360 != -1)
  {
    swift_once();
  }

  v11 = sub_2759B89A8();
  __swift_project_value_buffer(v11, qword_280A23900);

  v12 = sub_2759B8988();
  v13 = sub_2759BA668();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 136446210;
    v19 = v15;

    MEMORY[0x277C840E0](a3, a4);
    MEMORY[0x277C840E0](2108704, 0xE300000000000000);
    MEMORY[0x277C840E0](a5, a6);
    MEMORY[0x277C840E0](93, 0xE100000000000000);

    v16 = sub_2758937B8(91, 0xE100000000000000, &v19);

    *(v14 + 4) = v16;
    _os_log_impl(&dword_275819000, v12, v13, "%{public}s trash operation is complete", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x277C85860](v15, -1, -1);
    MEMORY[0x277C85860](v14, -1, -1);
  }

  if (a2)
  {
    v17 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F7C8, &qword_2759C4608);
    return sub_2759BA478();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F7C8, &qword_2759C4608);
    return sub_2759BA488();
  }
}

double sub_2759504E8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_275861AF8(0, &qword_280A11838, 0x277CC63E8);
    v4 = sub_2759BA3E8();
  }

  v6 = a3;
  v5(v4, a3);

  return result;
}

uint64_t DriveDeleteAction.deinit()
{

  sub_27586BF04(v0 + 48, &qword_280A117A8, &unk_2759CBA38);

  sub_27586BF04(v0 + OBJC_IVAR____TtC14iCloudSettings17DriveDeleteAction_notifyURL, &qword_280A0E8A8, qword_2759C2120);
  sub_27586BF04(v0 + OBJC_IVAR____TtC14iCloudSettings17DriveDeleteAction_skipObservation, &qword_280A0FC48, &qword_2759C79C0);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC14iCloudSettings17DriveDeleteAction_signpostController));

  return v0;
}

uint64_t DriveDeleteAction.__deallocating_deinit()
{
  DriveDeleteAction.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_27595069C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_27585A7E4;

  return DriveDeleteAction.performAction(with:localStore:)(a1, a2);
}

uint64_t *sub_2759507F8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = DriveDeleteAction.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

char *sub_275950850(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_275950AD0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_275950870(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_275951098(a1, a2, a3, *v3, &qword_280A11860, &qword_2759CBF98, &qword_280A11868, &qword_2759CBFA0);
  *v3 = result;
  return result;
}

void *sub_2759508B0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_275950BD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2759508D0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_275950CFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2759508F0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_275951098(a1, a2, a3, *v3, &qword_280A117F0, &unk_2759CBF10, &qword_280A117F8, &qword_2759CCC40);
  *v3 = result;
  return result;
}

void *sub_275950930(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_275950E30(a1, a2, a3, *v3, &qword_280A11800, &unk_2759CBF20, &qword_280A11808, &qword_2759CCC50);
  *v3 = result;
  return result;
}

void *sub_275950970(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_275950E30(a1, a2, a3, *v3, &qword_280A11810, &qword_2759CBF30, &qword_280A11818, &qword_2759CBF38);
  *v3 = result;
  return result;
}

void *sub_2759509B0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_275951098(a1, a2, a3, *v3, &qword_280A11820, &qword_2759CBF40, &qword_280A0F920, &qword_2759D0380);
  *v3 = result;
  return result;
}

void *sub_2759509F0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_275951098(a1, a2, a3, *v3, &qword_280A11870, &qword_2759CBFA8, &qword_280A11398, &unk_2759CBFB0);
  *v3 = result;
  return result;
}

char *sub_275950A30(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2759511E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_275950A50(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2759512EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_275950A70(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2759513F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_275950A90(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2759514FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_275950AB0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2759515F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_275950AD0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11840, &unk_2759CBF70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_275950BD4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10BE8, &qword_2759C8168);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for Dataclass(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_275950CFC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EF10, &qword_2759C2690);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0ECB8, &qword_2759C2698);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_275950E30(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_275950F64(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0ECA8, &qword_2759C2680);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0ECB0, &qword_2759C2688);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_275951098(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}