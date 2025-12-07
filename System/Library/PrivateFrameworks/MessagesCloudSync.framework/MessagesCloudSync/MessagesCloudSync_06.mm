uint64_t sub_22B9AED94()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B9AEE20;

  return sub_22B9AE7F0();
}

uint64_t sub_22B9AEE20(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v9 = *v2;
  *(v4 + 24) = a1;

  ObjectType = swift_getObjectType();
  v8 = (*(a2 + 24) + **(a2 + 24));
  v6 = swift_task_alloc();
  *(v4 + 32) = v6;
  *v6 = v9;
  v6[1] = sub_22B9AEFEC;

  return v8(ObjectType, a2);
}

uint64_t sub_22B9AEFEC(uint64_t a1)
{
  v5 = *v1;

  swift_unknownObjectRelease();
  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_22B9AF104()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B9AF190;

  return sub_22B9AE7F0();
}

uint64_t sub_22B9AF190(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v9 = *v2;
  *(v4 + 24) = a1;

  ObjectType = swift_getObjectType();
  v8 = (*(a2 + 32) + **(a2 + 32));
  v6 = swift_task_alloc();
  *(v4 + 32) = v6;
  *v6 = v9;
  v6[1] = sub_22B9AF35C;

  return v8(ObjectType, a2);
}

uint64_t sub_22B9AF35C()
{
  v3 = *v0;

  swift_unknownObjectRelease();
  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22B9AF46C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = swift_task_alloc();
  v4[6] = v5;
  *v5 = v4;
  v5[1] = sub_22B9AF500;

  return sub_22B9AE7F0();
}

uint64_t sub_22B9AF500(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *v2;
  v4[7] = a1;

  ObjectType = swift_getObjectType();
  v12 = (*(a2 + 40) + **(a2 + 40));
  v7 = swift_task_alloc();
  v4[8] = v7;
  *v7 = v5;
  v7[1] = sub_22B9AF710;
  v8 = v4[4];
  v9 = v4[3];
  v10 = v4[2];

  return v12(v10, v9, v8, ObjectType, a2);
}

uint64_t sub_22B9AF710(uint64_t a1, char a2)
{
  v6 = *v3;
  *(v6 + 72) = v2;

  v7 = *(v6 + 40);
  if (v2)
  {
    v8 = sub_22B9AF8C4;
  }

  else
  {
    *(v6 + 88) = a2;
    *(v6 + 80) = a1;
    v8 = sub_22B9AF854;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_22B9AF854()
{
  v1 = *(v0 + 88);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);
  v3 = *(v0 + 80);

  return v2(v3, v1 & 1);
}

uint64_t sub_22B9AF8C4()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B9AF928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = swift_task_alloc();
  v5[7] = v6;
  *v6 = v5;
  v6[1] = sub_22B9AF9C0;

  return sub_22B9AE7F0();
}

uint64_t sub_22B9AF9C0(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *v2;
  v4[8] = a1;

  ObjectType = swift_getObjectType();
  v13 = (*(a2 + 48) + **(a2 + 48));
  v7 = swift_task_alloc();
  v4[9] = v7;
  *v7 = v5;
  v7[1] = sub_22B9AFBE4;
  v8 = v4[5];
  v9 = v4[4];
  v10 = v4[3];
  v11 = v4[2];

  return v13(v11, v10, v9, v8, ObjectType, a2);
}

uint64_t sub_22B9AFBE4(uint64_t a1)
{
  v4 = *v2;
  v4[10] = v1;

  v5 = v4[6];
  if (v1)
  {
    v6 = sub_22B9AFD88;
  }

  else
  {
    v4[11] = a1;
    v6 = sub_22B9AFD20;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22B9AFD20()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);
  v2 = *(v0 + 88);

  return v1(v2);
}

uint64_t sub_22B9AFD88()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B9AFDEC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_22B9AFE7C;

  return sub_22B9AE7F0();
}

uint64_t sub_22B9AFE7C(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *v2;
  v4[5] = a1;

  ObjectType = swift_getObjectType();
  v10 = (*(a2 + 56) + **(a2 + 56));
  v7 = swift_task_alloc();
  v4[6] = v7;
  *v7 = v5;
  v7[1] = sub_22B9B0064;
  v8 = v4[2];

  return v10(v8, ObjectType, a2);
}

uint64_t sub_22B9B0064(uint64_t a1)
{
  v4 = *v2;
  v4[7] = v1;

  v5 = v4[3];
  if (v1)
  {
    v6 = sub_22B9B0208;
  }

  else
  {
    v4[8] = a1;
    v6 = sub_22B9B01A0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22B9B01A0()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);
  v2 = *(v0 + 64);

  return v1(v2);
}

uint64_t sub_22B9B0208()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B9B026C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = swift_task_alloc();
  v6[8] = v7;
  *v7 = v6;
  v7[1] = sub_22B9B0304;

  return sub_22B9AE7F0();
}

uint64_t sub_22B9B0304(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *v2;
  v4[9] = a1;

  ObjectType = swift_getObjectType();
  v14 = (*(a2 + 64) + **(a2 + 64));
  v7 = swift_task_alloc();
  v4[10] = v7;
  *v7 = v5;
  v7[1] = sub_22B9B053C;
  v8 = v4[6];
  v9 = v4[5];
  v10 = v4[4];
  v11 = v4[3];
  v12 = v4[2];

  return v14(v12, v11, v10, v9, v8, ObjectType, a2);
}

uint64_t sub_22B9B053C()
{
  v2 = *(*v1 + 56);
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_22B9B22A8;
  }

  else
  {
    v3 = sub_22B9B22B8;
  }

  return MEMORY[0x2822009F8](v3, v2, 0);
}

uint64_t sub_22B9B0664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = swift_task_alloc();
  v6[8] = v7;
  *v7 = v6;
  v7[1] = sub_22B9B06FC;

  return sub_22B9AE7F0();
}

uint64_t sub_22B9B06FC(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *v2;
  v4[9] = a1;

  ObjectType = swift_getObjectType();
  v14 = (*(a2 + 72) + **(a2 + 72));
  v7 = swift_task_alloc();
  v4[10] = v7;
  *v7 = v5;
  v7[1] = sub_22B9B0934;
  v8 = v4[6];
  v9 = v4[5];
  v10 = v4[4];
  v11 = v4[3];
  v12 = v4[2];

  return v14(v12, v11, v10, v9, v8, ObjectType, a2);
}

uint64_t sub_22B9B0934()
{
  v2 = *(*v1 + 56);
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_22B9B0AC0;
  }

  else
  {
    v3 = sub_22B9B0A5C;
  }

  return MEMORY[0x2822009F8](v3, v2, 0);
}

uint64_t sub_22B9B0A5C()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B9B0AC0()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B9B0B24(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 88) = a2;
  *(v5 + 16) = a1;
  *(v5 + 24) = a3;
  v6 = swift_task_alloc();
  *(v5 + 48) = v6;
  *v6 = v5;
  v6[1] = sub_22B9B0BBC;

  return sub_22B9AE7F0();
}

uint64_t sub_22B9B0BBC(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *v2;
  *(v4 + 56) = a1;

  ObjectType = swift_getObjectType();
  v13 = (*(a2 + 80) + **(a2 + 80));
  v7 = swift_task_alloc();
  *(v4 + 64) = v7;
  *v7 = v5;
  v7[1] = sub_22B9B0DD0;
  v8 = *(v4 + 32);
  v9 = *(v4 + 24);
  v10 = *(v4 + 88);
  v11 = *(v4 + 16);

  return v13(v11, v10, v9, v8, ObjectType, a2);
}

uint64_t sub_22B9B0DD0(uint64_t a1, char a2)
{
  v6 = *v3;
  *(v6 + 72) = v2;

  v7 = *(v6 + 40);
  if (v2)
  {
    v8 = sub_22B9B22AC;
  }

  else
  {
    *(v6 + 89) = a2;
    *(v6 + 80) = a1;
    v8 = sub_22B9B0F14;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_22B9B0F14()
{
  v1 = *(v0 + 89);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);
  v3 = *(v0 + 80);

  return v2(v3, v1 & 1);
}

uint64_t sub_22B9B0F84()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_22B9B1014;

  return sub_22B9AE7F0();
}

uint64_t sub_22B9B1014(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v9 = *v2;
  *(v4 + 32) = a1;

  ObjectType = swift_getObjectType();
  v8 = (*(a2 + 96) + **(a2 + 96));
  v6 = swift_task_alloc();
  *(v4 + 40) = v6;
  *v6 = v9;
  v6[1] = sub_22B9B11E0;

  return v8(ObjectType, a2);
}

uint64_t sub_22B9B11E0()
{
  v2 = *(*v1 + 16);
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_22B9B136C;
  }

  else
  {
    v3 = sub_22B9B1308;
  }

  return MEMORY[0x2822009F8](v3, v2, 0);
}

uint64_t sub_22B9B1308()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B9B136C()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B9B13D0()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_22B9B1460;

  return sub_22B9AE7F0();
}

uint64_t sub_22B9B1460(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v9 = *v2;
  *(v4 + 32) = a1;

  ObjectType = swift_getObjectType();
  v8 = (*(a2 + 128) + **(a2 + 128));
  v6 = swift_task_alloc();
  *(v4 + 40) = v6;
  *v6 = v9;
  v6[1] = sub_22B9AEC6C;

  return v8(ObjectType, a2);
}

uint64_t sub_22B9B162C()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_22B9B16BC;

  return sub_22B9AE7F0();
}

uint64_t sub_22B9B16BC(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v9 = *v2;
  *(v4 + 32) = a1;

  ObjectType = swift_getObjectType();
  v8 = (*(a2 + 136) + **(a2 + 136));
  v6 = swift_task_alloc();
  *(v4 + 40) = v6;
  *v6 = v9;
  v6[1] = sub_22B9AEC6C;

  return v8(ObjectType, a2);
}

uint64_t sub_22B9B1888()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22B9B18F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B945AC8;

  return sub_22B9AEA10();
}

uint64_t sub_22B9B1980()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B9B1A0C;

  return sub_22B9AED94();
}

uint64_t sub_22B9B1A0C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_22B9B1B08()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B943E68;

  return sub_22B9AF104();
}

uint64_t sub_22B9B1B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22B947814;

  return sub_22B9AF46C(a1, a2, a3);
}

uint64_t sub_22B9B1C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22B9B22B4;

  return sub_22B9AF928(a1, a2, a3, a4);
}

uint64_t sub_22B9B1CFC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22B9B1D90;

  return sub_22B9AFDEC(a1);
}

uint64_t sub_22B9B1D90(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_22B9B1E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_22B945AC8;

  return sub_22B9B026C(a1, a2, a3, a4, a5);
}

uint64_t sub_22B9B1F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_22B945AC8;

  return sub_22B9B0664(a1, a2, a3, a4, a5);
}

uint64_t sub_22B9B2018(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22B980888;

  return sub_22B9B0B24(a1, a2, a3, a4);
}

uint64_t sub_22B9B20D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B943E68;

  return sub_22B9B0F84();
}

uint64_t sub_22B9B2160()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B945AC8;

  return sub_22B9B13D0();
}

uint64_t sub_22B9B21EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B945AC8;

  return sub_22B9B162C();
}

id sub_22B9B2318()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_22B9B23C0()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_22B9B23F0()
{
  sub_22B9B23C0();

  return swift_deallocClassInstance();
}

uint64_t sub_22B9B2424()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_22B9B2464()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_22B9B259C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_22B9B2600(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_22B9B265C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_22B9B26F0@<X0>(void *a1@<X0>, SEL *a2@<X4>, uint64_t a3@<X8>)
{
  v6 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  if (a1)
  {
    v9 = a1;
    v10 = [v9 *a2];
    if (v10 != -1)
    {
      v11 = [objc_opt_self() __im_dateWithNanosecondTimeIntervalSinceReferenceDate_];
      if (v11)
      {
        v12 = v11;
        sub_22BA0FD5C();

        v13 = sub_22BA0FD8C();
        (*(*(v13 - 8) + 56))(v8, 0, 1, v13);
      }

      else
      {

        v17 = sub_22BA0FD8C();
        (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
      }

      return sub_22B935A74(v8, a3);
    }
  }

  v14 = sub_22BA0FD8C();
  v15 = *(*(v14 - 8) + 56);

  return v15(a3, 1, 1, v14);
}

uint64_t sub_22B9B28C0()
{
  sub_22BA10D3C();
  sub_22BA1008C();

  return sub_22BA10D6C();
}

uint64_t sub_22B9B2954(uint64_t a1)
{
  sub_22BA1008C();
}

uint64_t sub_22B9B29D4(uint64_t a1)
{
  sub_22BA10D3C();
  sub_22BA1008C();

  return sub_22BA10D6C();
}

unint64_t sub_22B9B2A64@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22B9B3714(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_22B9B2A94(void *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0xE900000000000034;
  if (*v1 == 2)
  {
    v3 = 0xE900000000000033;
  }

  if (*v1)
  {
    v2 = 0xE900000000000032;
  }

  if (*v1 <= 1u)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  *a1 = 0x6F746F725067736DLL;
  a1[1] = v4;
}

unint64_t sub_22B9B2B30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22B9B3714(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22B9B2B58(uint64_t a1)
{
  v2 = sub_22B9B35A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22B9B2B94(uint64_t a1)
{
  v2 = sub_22B9B35A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22B9B2BD0(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v37 = a5;
  v38 = a4;
  v9 = sub_22B9349C8(&qword_27D8D5740, &qword_22BA180A8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - v11;
  sub_22B9358B4(a1, a1[3]);
  sub_22B9B35A8();
  sub_22BA10D9C();
  if (a2)
  {
    v13 = a2;
    v14 = [v13 data];
    if (v14)
    {
      v15 = v14;
      v16 = sub_22BA0FCAC();
      v18 = v17;
    }

    else
    {
      v16 = 0;
      v18 = 0xF000000000000000;
    }

    v39 = v16;
    v40 = v18;
    v41 = 0;
    sub_22B9349C8(&qword_27D8D54F8, &unk_22BA180B0);
    sub_22B993568();
    sub_22BA10BEC();
    if (v5)
    {
      goto LABEL_19;
    }

    sub_22B9359A8(v39, v40);
  }

  if (a3)
  {
    v19 = a3;
    v20 = [v19 data];
    if (v20)
    {
      v21 = v20;
      v22 = sub_22BA0FCAC();
      v24 = v23;
    }

    else
    {
      v22 = 0;
      v24 = 0xF000000000000000;
    }

    v39 = v22;
    v40 = v24;
    v41 = 1;
    sub_22B9349C8(&qword_27D8D54F8, &unk_22BA180B0);
    sub_22B993568();
    sub_22BA10BEC();
    if (v5)
    {

LABEL_26:
      sub_22B9359A8(v39, v40);
      return (*(v10 + 8))(v12, v9);
    }

    sub_22B9359A8(v39, v40);
  }

  if (v38)
  {
    v13 = v38;
    v25 = [v13 data];
    if (v25)
    {
      v26 = v25;
      v27 = sub_22BA0FCAC();
      v29 = v28;
    }

    else
    {
      v27 = 0;
      v29 = 0xF000000000000000;
    }

    v39 = v27;
    v40 = v29;
    v41 = 2;
    sub_22B9349C8(&qword_27D8D54F8, &unk_22BA180B0);
    sub_22B993568();
    sub_22BA10BEC();
    if (v5)
    {
LABEL_19:

      goto LABEL_26;
    }

    sub_22B9359A8(v39, v40);
  }

  if (v37)
  {
    v30 = v37;
    v31 = [v30 data];
    if (v31)
    {
      v32 = v31;
      v33 = sub_22BA0FCAC();
      v35 = v34;
    }

    else
    {
      v33 = 0;
      v35 = 0xF000000000000000;
    }

    v39 = v33;
    v40 = v35;
    v41 = 3;
    sub_22B9349C8(&qword_27D8D54F8, &unk_22BA180B0);
    sub_22B993568();
    sub_22BA10BEC();

    goto LABEL_26;
  }

  return (*(v10 + 8))(v12, v9);
}

void sub_22B9B2F84(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_22B9B2FD4(a1);
  if (!v2)
  {
    *a2 = v4;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }
}

void sub_22B9B2FD4(void *a1)
{
  v3 = sub_22B9349C8(&qword_27D8D5738, &qword_22BA180A0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v42 - v5;
  sub_22B9358B4(a1, a1[3]);
  sub_22B9B35A8();
  sub_22BA10D8C();
  if (v1)
  {
LABEL_3:
    sub_22B936C4C(a1);
    return;
  }

  v48 = 0;
  v7 = sub_22B9363C8();
  sub_22BA10AFC();
  v8 = v47;
  if (v47 >> 60 == 15)
  {
    v45 = 0;
  }

  else
  {
    v43 = v46;
    v9 = sub_22BA0FC8C();
    v10 = [v9 _FTOptionallyDecompressData];

    if (v10)
    {
      v11 = sub_22BA0FCAC();
      v44 = v7;
      v13 = v12;

      v14 = v11;
      v15 = sub_22BA0FC8C();
      v16 = v13;
      v7 = v44;
      sub_22B9359BC(v14, v16);
    }

    else
    {
      v15 = 0;
    }

    v45 = [objc_allocWithZone(MEMORY[0x277D1ABF0]) initWithData_];

    sub_22B9359A8(v43, v8);
  }

  v48 = 1;
  sub_22BA10AFC();
  v17 = v47;
  if (v47 >> 60 == 15)
  {
    v18 = 0;
  }

  else
  {
    v43 = v46;
    v44 = v7;
    v19 = sub_22BA0FC8C();
    v20 = [v19 _FTOptionallyDecompressData];

    if (v20)
    {
      v21 = sub_22BA0FCAC();
      v23 = v22;

      v24 = v23;
      v25 = sub_22BA0FC8C();
      sub_22B9359BC(v21, v24);
    }

    else
    {
      v25 = 0;
    }

    v7 = v44;
    v18 = [objc_allocWithZone(MEMORY[0x277D1AC00]) initWithData_];

    sub_22B9359A8(v43, v17);
  }

  v48 = 2;
  sub_22BA10AFC();
  v43 = 0;
  v26 = v47;
  if (v47 >> 60 == 15)
  {
    v27 = 0;
  }

  else
  {
    v44 = v7;
    v42 = v46;
    v28 = sub_22BA0FC8C();
    v29 = [v28 _FTOptionallyDecompressData];

    if (v29)
    {
      v30 = sub_22BA0FCAC();
      v32 = v31;

      v29 = sub_22BA0FC8C();
      sub_22B9359BC(v30, v32);
    }

    v27 = [objc_allocWithZone(MEMORY[0x277D1AC08]) initWithData_];

    sub_22B9359A8(v42, v26);
  }

  v48 = 3;
  v33 = v43;
  sub_22BA10AFC();
  if (!v33)
  {
    v44 = v47;
    if (v47 >> 60 == 15)
    {
      (*(v4 + 8))(v6, v3);
    }

    else
    {
      v43 = v46;
      v35 = sub_22BA0FC8C();
      v36 = [v35 _FTOptionallyDecompressData];

      if (v36)
      {
        v42 = sub_22BA0FCAC();
        v38 = v37;

        v39 = v42;
        v40 = sub_22BA0FC8C();
        v41 = v39;
        v36 = v40;
        sub_22B9359BC(v41, v38);
      }

      [objc_allocWithZone(MEMORY[0x277D1AC10]) initWithData_];

      sub_22B9359A8(v43, v44);
      (*(v4 + 8))(v6, v3);
    }

    goto LABEL_3;
  }

  (*(v4 + 8))(v6, v3);
  v34 = v43;
  sub_22B936C4C(a1);

  if (!v34)
  {
  }
}

unint64_t sub_22B9B35A8()
{
  result = qword_281415E50;
  if (!qword_281415E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281415E50);
  }

  return result;
}

unint64_t sub_22B9B3610()
{
  result = qword_27D8D5748;
  if (!qword_27D8D5748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5748);
  }

  return result;
}

unint64_t sub_22B9B3668()
{
  result = qword_281415E40;
  if (!qword_281415E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281415E40);
  }

  return result;
}

unint64_t sub_22B9B36C0()
{
  result = qword_281415E48;
  if (!qword_281415E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281415E48);
  }

  return result;
}

unint64_t sub_22B9B3714(uint64_t a1, uint64_t a2)
{
  v2 = sub_22BA10AAC();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_22B9B3760(uint64_t a1, unsigned __int8 a2)
{
  sub_22BA1008C();
}

uint64_t sub_22B9B38C0(uint64_t a1, unsigned __int8 a2)
{
  sub_22BA1008C();
}

uint64_t sub_22B9B3A48(uint64_t a1, unsigned __int8 a2)
{
  sub_22BA1008C();
}

uint64_t SyncPhase.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0x7274656D656C6554;
    v7 = 0x6172745374736554;
    if (v1 != 8)
    {
      v7 = 1953719636;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0x6C6E4F746E756F43;
    if (v1 != 5)
    {
      v8 = 0x74696E4972657355;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x6C616974696E49;
    v3 = 0x6369646F69726550;
    v4 = 0x70756B636142;
    if (v1 != 3)
    {
      v4 = 0xD000000000000017;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0x6C6C69666B636142;
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
}

uint64_t sub_22B9B3D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v17 = a3;
  v5 = sub_22B9349C8(&qword_27D8D51A0, &qword_22BA15448);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  v8 = 0;
  v18 = 0x800000022BA1BD10;
  while (1)
  {
    v9 = byte_283F51BE0[v8 + 32];
    if (v9 > 4)
    {
      if (byte_283F51BE0[v8 + 32] <= 6u)
      {
        v11 = 0x6C6E4F746E756F43;
        if (v9 == 5)
        {
          v10 = 0xE900000000000079;
        }

        else
        {
          v11 = 0x74696E4972657355;
          v10 = 0xED00006465746169;
        }
      }

      else if (v9 == 7)
      {
        v11 = 0x7274656D656C6554;
        v10 = 0xE900000000000079;
      }

      else
      {
        v11 = 0x6172745374736554;
        if (v9 == 8)
        {
          v10 = 0xEE007372656C6767;
        }

        else
        {
          v11 = 1953719636;
          v10 = 0xE400000000000000;
        }
      }
    }

    else if (byte_283F51BE0[v8 + 32] <= 1u)
    {
      v11 = 0x6C616974696E49;
      if (byte_283F51BE0[v8 + 32])
      {
        v11 = 0x6C6C69666B636142;
        v10 = 0xE800000000000000;
      }

      else
      {
        v10 = 0xE700000000000000;
      }
    }

    else if (v9 == 2)
    {
      v10 = 0xE800000000000000;
      v11 = 0x6369646F69726550;
    }

    else if (v9 == 3)
    {
      v10 = 0xE600000000000000;
      v11 = 0x70756B636142;
    }

    else
    {
      v11 = 0xD000000000000017;
      v10 = v18;
    }

    v21 = v11;
    v22 = v10;
    v19 = a1;
    v20 = a2;
    v12 = sub_22BA0FDEC();
    (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
    sub_22B936ACC();
    v13 = sub_22BA1078C();
    v15 = v14;
    sub_22B9B452C(v7);

    if ((v15 & 1) == 0 && !(v13 >> 14))
    {
      break;
    }

    if (++v8 == 10)
    {
      LOBYTE(v9) = 10;
      break;
    }
  }

  *v17 = v9;
  return result;
}

MessagesCloudSync::SyncPhase_optional __swiftcall SyncPhase.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22BA10AAC();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_22B9B4074()
{
  result = qword_27D8D5750;
  if (!qword_27D8D5750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5750);
  }

  return result;
}

uint64_t sub_22B9B40C8()
{
  v1 = *v0;
  sub_22BA10D3C();
  sub_22B9B38C0(v3, v1);
  return sub_22BA10D6C();
}

uint64_t sub_22B9B4118(uint64_t a1)
{
  v2 = *v1;
  sub_22BA10D3C();
  sub_22B9B38C0(v4, v2);
  return sub_22BA10D6C();
}

uint64_t sub_22B9B4168@<X0>(uint64_t *a1@<X8>)
{
  result = SyncPhase.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22B9B4240(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B9B44D8();

  return MEMORY[0x2821FC220](a1, a2, v4);
}

uint64_t sub_22B9B4294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_22B9B44D8();

  return MEMORY[0x2821FC228](a1, a4, a2, a5, v10, a3);
}

unint64_t sub_22B9B4314()
{
  result = qword_27D8D5758;
  if (!qword_27D8D5758)
  {
    sub_22B948760(&qword_27D8D5760, &qword_22BA18330);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5758);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SyncPhase(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SyncPhase(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22B9B44D8()
{
  result = qword_27D8D5768;
  if (!qword_27D8D5768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5768);
  }

  return result;
}

uint64_t sub_22B9B452C(uint64_t a1)
{
  v2 = sub_22B9349C8(&qword_27D8D51A0, &qword_22BA15448);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22B9B45A4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;
  *(v6 + 80) = a3;
  *(v6 + 16) = a1;
  *(v6 + 24) = a4;
  return MEMORY[0x2822009F8](sub_22B9B45CC, 0, 0);
}

uint64_t sub_22B9B45CC()
{
  v1 = *(v0 + 16);
  [*(v0 + 40) setFirstSyncDateToNow];
  v2 = *(v1 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_syncDatabase + 8);
  ObjectType = swift_getObjectType();
  v6 = (*(v2 + 136) + **(v2 + 136));
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_22B9B4710;

  return v6(ObjectType, v2);
}

uint64_t sub_22B9B4710()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22B9B4840, 0, 0);
  }
}

uint64_t sub_22B9B4840()
{
  v1 = *(v0 + 40);
  v7 = *(v0 + 24);
  v2 = *(v0 + 80);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v7;
  *(v3 + 40) = v1;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_22B9B4954;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000015, 0x800000022BA1C690, sub_22B9B4F48, v3, v5);
}

uint64_t sub_22B9B4954()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_22B9B4A70;
  }

  else
  {

    v2 = sub_22B97F914;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22B9B4A70()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_22B9B4AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = sub_22B9349C8(&qword_27D8D53C8, &unk_22BA18460);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = aBlock - v9;
  (*(v8 + 16))(aBlock - v9, a1, v7);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = swift_allocObject();
  (*(v8 + 32))(v12 + v11, v10, v7);
  aBlock[4] = sub_22B9B4F58;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B9B4E10;
  aBlock[3] = &unk_283F56408;
  v13 = _Block_copy(aBlock);

  [a5 toggleiCloudBackupsIfNeeded_];
  _Block_release(v13);
}

uint64_t sub_22B9B4C84(uint64_t a1, void *a2)
{
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v4 = sub_22BA0FEFC();
  sub_22B936CA8(v4, qword_28141AD40);
  v5 = a2;
  v6 = sub_22BA0FEDC();
  v7 = sub_22BA1046C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 134218242;
    *(v8 + 4) = a1;
    *(v8 + 12) = 2112;
    if (a2)
    {
      v10 = a2;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      v12 = v11;
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    *(v8 + 14) = v11;
    *v9 = v12;
    _os_log_impl(&dword_22B92A000, v6, v7, "Sync complete, toggle icloud backups result %ld, error %@", v8, 0x16u);
    sub_22B95DEF0(v9);
    MEMORY[0x23189ADD0](v9, -1, -1);
    MEMORY[0x23189ADD0](v8, -1, -1);
  }

  sub_22B9349C8(&qword_27D8D53C8, &unk_22BA18460);
  return sub_22BA102BC();
}

void sub_22B9B4E10(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_22B9B4E88(uint64_t a1)
{
  v4 = *v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22B947814;

  return sub_22B9B45A4(a1, v9, v4, v5, v6, v7);
}

uint64_t sub_22B9B4F58(uint64_t a1, void *a2)
{
  sub_22B9349C8(&qword_27D8D53C8, &unk_22BA18460);

  return sub_22B9B4C84(a1, a2);
}

uint64_t sub_22B9B4FE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B9B4FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_22B936C98(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_22B9BAE64(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_22B936BEC(a1, &unk_27D8D5A30, qword_22BA13390);
    sub_22B9EB6F0(a2, a3, v9);

    return sub_22B936BEC(v9, &unk_27D8D5A30, qword_22BA13390);
  }

  return result;
}

uint64_t sub_22B9B50CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_22B9BB48C(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_22B990A58(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_22B9EC830();
        v16 = v18;
      }

      result = sub_22B9EB944(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

void sub_22B9B51D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_22BA0FF1C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isMainThread])
  {
    sub_22B9BC248(a1, a2);
  }

  else
  {
    sub_22B951A54(0, &qword_281414B30, 0x277D85C78);
    v10 = sub_22BA1050C();
    v11 = sub_22BA0FF0C();
    MEMORY[0x28223BE20](v11);
    v12[-4] = v3;
    v12[-3] = a1;
    v12[-2] = a2;
    sub_22BA1051C();
    (*(v7 + 8))(v9, v6);
  }
}

void sub_22B9B5378()
{
  v1 = v0;
  v2 = sub_22BA0FF1C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isMainThread])
  {
    sub_22B9BC538();
  }

  else
  {
    sub_22B951A54(0, &qword_281414B30, 0x277D85C78);
    v6 = sub_22BA1050C();
    v7 = sub_22BA0FF0C();
    MEMORY[0x28223BE20](v7);
    v8[-2] = v1;
    sub_22BA1051C();
    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_22B9B5500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_22B9349C8(&unk_27D8D5780, &qword_22BA13DB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_22B9934AC(a3, v22 - v9, &unk_27D8D5780, &qword_22BA13DB0);
  v11 = sub_22BA1030C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_22B936BEC(v10, &unk_27D8D5780, &qword_22BA13DB0);
  }

  else
  {
    sub_22BA102FC();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_22BA1029C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_22BA1006C() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_22B936BEC(a3, &unk_27D8D5780, &qword_22BA13DB0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22B936BEC(a3, &unk_27D8D5780, &qword_22BA13DB0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_22B9B57AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_22B9B580C()
{
  v1 = *(v0 + 17);
  if (v1 > 4)
  {
    v6 = 0x7274656D656C6554;
    v7 = 0x6172745374736554;
    if (v1 != 8)
    {
      v7 = 1953719636;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0x6C6E4F746E756F43;
    if (v1 != 5)
    {
      v8 = 0x74696E4972657355;
    }

    if (*(v0 + 17) <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x6C616974696E49;
    v3 = 0x6369646F69726550;
    v4 = 0x70756B636142;
    if (v1 != 3)
    {
      v4 = 0xD000000000000017;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*(v0 + 17))
    {
      v2 = 0x6C6C69666B636142;
    }

    if (*(v0 + 17) <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

id sub_22B9B5960()
{
  result = sub_22B9B5980();
  qword_28141AF08 = result;
  return result;
}

id sub_22B9B5980()
{
  v0 = sub_22BA0FDCC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281414B60 != -1)
  {
    swift_once();
  }

  v4 = qword_281414B68;
  v5 = qword_28141ACE8;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = qword_28141ACF0;
  type metadata accessor for CloudState();
  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = v6;
  v7[6] = 0;
  v7[7] = 0;
  v8 = v6;
  v9 = sub_22BA0FFCC();
  v10 = [v8 stringForKey_];

  if (v10)
  {
    v11 = sub_22BA0FFFC();
    v13 = v12;
  }

  else
  {
    sub_22BA0FDBC();
    v11 = sub_22BA0FD9C();
    v13 = v14;
    (*(v1 + 8))(v3, v0);

    v15 = sub_22BA0FFCC();
    v16 = sub_22BA0FFCC();
    [v8 setObject:v15 forKey:v16];
  }

  v7[4] = v11;
  v7[5] = v13;
  v17 = sub_22B9BB724(v7);

  return v17;
}

uint64_t static SyncCoordinator.isSyncing()()
{
  v1 = v0;
  v2 = sub_22BA0FF1C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ([objc_opt_self() isMainThread])
  {
    return off_281416A80 != 0;
  }

  v10 = 0;
  sub_22B951A54(0, &qword_281414B30, 0x277D85C78);
  v7 = sub_22BA1050C();
  v8 = sub_22BA0FF0C();
  MEMORY[0x28223BE20](v8);
  *&v9[-16] = &v10;
  *&v9[-8] = v1;
  sub_22BA1051C();

  (*(v3 + 8))(v5, v2);
  return v10;
}

uint64_t static SyncCoordinator.clearSyncStoreWhenSafe()()
{
  v1[2] = v0;
  v2 = sub_22BA0FF1C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B9B5ECC, 0, 0);
}

uint64_t sub_22B9B5ECC()
{
  if ([objc_opt_self() isMainThread])
  {
    if (off_281416A80)
    {
LABEL_3:
      if (qword_281414B68 != -1)
      {
        swift_once();
      }

      [qword_28141ACF0 setBool:1 forKey:*MEMORY[0x277D199F8]];
      if (qword_281414D30 != -1)
      {
        swift_once();
      }

      v1 = sub_22BA0FEFC();
      sub_22B936CA8(v1, qword_28141AD40);
      v2 = sub_22BA0FEDC();
      v3 = sub_22BA1046C();
      if (os_log_type_enabled(v2, v3))
      {
        v4 = swift_slowAlloc();
        *v4 = 0;
        _os_log_impl(&dword_22B92A000, v2, v3, "Sync store will be deleted on completion of sync", v4, 2u);
        MEMORY[0x23189ADD0](v4, -1, -1);
      }

      v5 = *(v0 + 8);

      return v5();
    }
  }

  else
  {
    *(v0 + 56) = 0;
    v8 = *(v0 + 32);
    v7 = *(v0 + 40);
    v9 = *(v0 + 16);
    v10 = *(v0 + 24);
    sub_22B951A54(0, &qword_281414B30, 0x277D85C78);
    v11 = sub_22BA1050C();
    sub_22BA0FF0C();
    v12 = swift_task_alloc();
    *(v12 + 16) = v0 + 56;
    *(v12 + 24) = v9;
    sub_22BA1051C();

    (*(v8 + 8))(v7, v10);
    if (*(v0 + 56) == 1)
    {
      goto LABEL_3;
    }
  }

  if (qword_281416778 != -1)
  {
    swift_once();
  }

  v13 = *(&xmmword_28141AEB0 + 1);
  ObjectType = swift_getObjectType();
  v16 = (*(v13 + 24) + **(v13 + 24));
  v15 = swift_task_alloc();
  *(v0 + 48) = v15;
  *v15 = v0;
  v15[1] = sub_22B9B6254;

  return v16(ObjectType, v13);
}

uint64_t sub_22B9B6254(char a1)
{
  *(*v1 + 57) = a1;

  return MEMORY[0x2822009F8](sub_22B9B6354, 0, 0);
}

uint64_t sub_22B9B6354()
{
  v13 = v0;
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v1 = sub_22BA0FEFC();
  sub_22B936CA8(v1, qword_28141AD40);
  v2 = sub_22BA0FEDC();
  v3 = sub_22BA1046C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 57);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    if (v4)
    {
      v7 = 7562585;
    }

    else
    {
      v7 = 28494;
    }

    if (v4)
    {
      v8 = 0xE300000000000000;
    }

    else
    {
      v8 = 0xE200000000000000;
    }

    v9 = sub_22B99153C(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_22B92A000, v2, v3, "No sync in progress, deleted Sync store immediately success: %s", v5, 0xCu);
    sub_22B936C4C(v6);
    MEMORY[0x23189ADD0](v6, -1, -1);
    MEMORY[0x23189ADD0](v5, -1, -1);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_22B9B6660(const void *a1, uint64_t a2)
{
  *(v2 + 16) = _Block_copy(a1);
  swift_getObjCClassMetadata();
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_22B9B6704;

  return static SyncCoordinator.clearSyncStoreWhenSafe()();
}

uint64_t sub_22B9B6704()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v2 = *(v4 + 8);

  return v2();
}

void static SyncCoordinator.clearLocalCountsWhenSafe()()
{
  v1 = v0;
  v2 = sub_22BA0FF1C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ([objc_opt_self() isMainThread])
  {
    if (off_281416A80)
    {
LABEL_3:
      if (qword_281414D30 != -1)
      {
        swift_once();
      }

      v6 = sub_22BA0FEFC();
      sub_22B936CA8(v6, qword_28141AD40);
      v7 = sub_22BA0FEDC();
      v8 = sub_22BA1046C();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_22B92A000, v7, v8, "Tried clearing local counts but currently in a sync, will clear on completion", v9, 2u);
        MEMORY[0x23189ADD0](v9, -1, -1);
      }

      goto LABEL_15;
    }
  }

  else
  {
    v18 = 0;
    sub_22B951A54(0, &qword_281414B30, 0x277D85C78);
    v10 = sub_22BA1050C();
    v11 = sub_22BA0FF0C();
    MEMORY[0x28223BE20](v11);
    *&v17[-16] = &v18;
    *&v17[-8] = v1;
    sub_22BA1051C();

    (*(v3 + 8))(v5, v2);
    if (v18)
    {
      goto LABEL_3;
    }
  }

  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v12 = sub_22BA0FEFC();
  sub_22B936CA8(v12, qword_28141AD40);
  v13 = sub_22BA0FEDC();
  v14 = sub_22BA1046C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_22B92A000, v13, v14, "Clearing local counts", v15, 2u);
    MEMORY[0x23189ADD0](v15, -1, -1);
  }

  if (qword_281414F10 != -1)
  {
    swift_once();
  }

  v16 = sub_22BA0FFCC();
  IMDKVPersistValueForKey();

  v7 = sub_22BA0FFCC();
  IMDKVPersistValueForKey();
LABEL_15:
}

id static SyncCoordinator.register(store:asType:)(uint64_t a1, uint64_t a2)
{
  if (qword_281416508 != -1)
  {
    swift_once();
  }

  v4 = qword_28141AE28;

  return [v4 registerRecordStoreWithType:a2 store:a1];
}

uint64_t sub_22B9B6D80(uint64_t a1, uint64_t *a2)
{
  *a2 = a1;
  swift_unknownObjectRelease();

  return swift_unknownObjectRetain();
}

uint64_t sub_22B9B6DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *a4 = a3;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

uint64_t static SyncCoordinator.register(notifier:)(uint64_t a1)
{
  if (qword_281416500 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = swift_unknownObjectRetain();
  MEMORY[0x231899830](v1);
  if (*((qword_28141AE00 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((qword_28141AE00 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22BA1022C();
  }

  sub_22BA1026C();
  return swift_endAccess();
}

uint64_t static SyncCoordinator.startInitialSync(delegate:)(void *a1)
{
  type metadata accessor for CloudSyncFactory();
  result = sub_22B968F70(v7);
  if (!v2)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    *(v5 + 24) = a1;
    swift_unknownObjectRetain();
    sub_22B96AA6C(v6);
    sub_22B9BC988(v6, a1, v7, &unk_22BA184A8, v5);

    sub_22B936C4C(v6);
    return sub_22B936C4C(v7);
  }

  return result;
}

uint64_t sub_22B9B70AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a3;
  *(v6 + 16) = a5;
  *(v6 + 24) = a6;
  *(v6 + 48) = a3;
  if (qword_281416450 != -1)
  {
    swift_once();
  }

  *(v6 + 32) = qword_281416458;
  v12 = swift_task_alloc();
  *(v6 + 40) = v12;
  *v12 = v6;
  v12[1] = sub_22B9B71D0;

  return sub_22B9BDBA8(a6, a1, a2, v9, a4, 88, 1);
}

uint64_t sub_22B9B71D0()
{

  sub_22BA102EC();
  v1 = sub_22BA1029C();

  return MEMORY[0x2822009F8](sub_22B9B72FC, v1, v0);
}

uint64_t sub_22B9B72FC()
{
  v1 = *(v0 + 48);
  if (v1 <= 0x3F)
  {
    if (v1)
    {
      v2 = sub_22BA10C6C();

      if ((v2 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v3 = sub_22BA0FEFC();
    sub_22B936CA8(v3, qword_28141AD40);
    v4 = sub_22BA0FEDC();
    v5 = sub_22BA1046C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_22B92A000, v4, v5, "Scheduling backfill sync after initial sync, which will kick off periodic after that", v6, 2u);
      MEMORY[0x23189ADD0](v6, -1, -1);
    }

    v7 = *(v0 + 24);

    static SyncCoordinator.scheduleBackfillSync(delegate:)(v7);
  }

LABEL_11:
  v8 = *(v0 + 8);

  return v8();
}

uint64_t static SyncCoordinator.scheduleBackfillSync(delegate:)(void *a1)
{
  type metadata accessor for CloudSyncFactory();
  result = sub_22B968F70(v8);
  if (!v2)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    *(v5 + 24) = a1;
    v9 = 1;
    swift_unknownObjectRetain();
    v6 = sub_22B9DBCF0();
    sub_22B96C910(&v9, 2, 3, v6, 0, v7);
    swift_unknownObjectRelease();
    sub_22B9BC988(v7, a1, v8, &unk_22BA184B8, v5);

    sub_22B936C4C(v7);
    return sub_22B936C4C(v8);
  }

  return result;
}

uint64_t sub_22B9B75CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a3;
  *(v6 + 16) = a5;
  *(v6 + 24) = a6;
  *(v6 + 48) = a3;
  if (qword_281416450 != -1)
  {
    swift_once();
  }

  *(v6 + 32) = qword_281416458;
  v12 = swift_task_alloc();
  *(v6 + 40) = v12;
  *v12 = v6;
  v12[1] = sub_22B9B76F0;

  return sub_22B9BDBA8(a6, a1, a2, v9, a4, 89, 1);
}

uint64_t sub_22B9B76F0()
{

  sub_22BA102EC();
  v1 = sub_22BA1029C();

  return MEMORY[0x2822009F8](sub_22B9B781C, v1, v0);
}

uint64_t sub_22B9B781C()
{
  v1 = *(v0 + 48);
  if (v1 <= 0x3F)
  {
    if (v1)
    {
      v2 = sub_22BA10C6C();

      if ((v2 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v3 = sub_22BA0FEFC();
    sub_22B936CA8(v3, qword_28141AD40);
    v4 = sub_22BA0FEDC();
    v5 = sub_22BA1046C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_22B92A000, v4, v5, "Scheduling asset download after backfill sync", v6, 2u);
      MEMORY[0x23189ADD0](v6, -1, -1);
    }

    v7 = *(v0 + 24);

    static SyncCoordinator.scheduleAttachmentAssetDownloadSync(delegate:)(v7);
  }

LABEL_11:
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_22B9B7B38(void *a1, uint64_t a2, void (*a3)(void *__return_ptr, void), uint64_t a4)
{
  type metadata accessor for CloudSyncFactory();
  result = sub_22B968F70(v12);
  if (!v5)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v4;
    *(v10 + 24) = a1;
    swift_unknownObjectRetain();
    a3(v11, 0);
    sub_22B9BC988(v11, a1, v12, a4, v10);

    sub_22B936C4C(v11);
    return sub_22B936C4C(v12);
  }

  return result;
}

uint64_t sub_22B9B7C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a3;
  *(v6 + 24) = a5;
  *(v6 + 32) = a6;
  *(v6 + 16) = a4;
  *(v6 + 56) = a3;
  if (qword_281416450 != -1)
  {
    swift_once();
  }

  *(v6 + 40) = qword_281416458;
  v12 = swift_task_alloc();
  *(v6 + 48) = v12;
  *v12 = v6;
  v12[1] = sub_22B9B7D58;

  return sub_22B9BDBA8(a6, a1, a2, v9, a4, 90, 1);
}

uint64_t sub_22B9B7D58()
{

  sub_22BA102EC();
  v1 = sub_22BA1029C();

  return MEMORY[0x2822009F8](sub_22B9B7E84, v1, v0);
}

uint64_t sub_22B9B7E84()
{
  if (*(v0 + 16))
  {
    goto LABEL_5;
  }

  v1 = *(v0 + 56);
  if (v1 > 0x3F)
  {
    goto LABEL_5;
  }

  if ((v1 & 1) == 0)
  {

    goto LABEL_10;
  }

  v2 = sub_22BA10C6C();

  if (v2)
  {
LABEL_10:
    sub_22B9B8164(*(v0 + 32));
    goto LABEL_12;
  }

LABEL_5:
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v3 = sub_22BA0FEFC();
  sub_22B936CA8(v3, qword_28141AD40);
  v4 = sub_22BA0FEDC();
  v5 = sub_22BA1044C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_22B92A000, v4, v5, "Encountered error during previous sync, not attempting to re-schedule asset download sync", v6, 2u);
    MEMORY[0x23189ADD0](v6, -1, -1);
  }

LABEL_12:
  type metadata accessor for CloudState();
  if (!sub_22BA0876C())
  {
    sub_22B9BEF4C(*(v0 + 32));
  }

  v7 = *(v0 + 8);

  return v7();
}

void sub_22B9B8164(void *a1)
{
  if (qword_28141ADC8)
  {
    if ((*(qword_28141ADD0 + 216))())
    {
      if (qword_281414D30 != -1)
      {
        swift_once();
      }

      v2 = sub_22BA0FEFC();
      sub_22B936CA8(v2, qword_28141AD40);
      v3 = sub_22BA0FEDC();
      v4 = sub_22BA1046C();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&dword_22B92A000, v3, v4, "User has finished attachment download sync, not re-scheduling", v5, 2u);
        MEMORY[0x23189ADD0](v5, -1, -1);
      }
    }

    else
    {
      if (qword_281414D30 != -1)
      {
        swift_once();
      }

      v6 = sub_22BA0FEFC();
      sub_22B936CA8(v6, qword_28141AD40);
      v7 = sub_22BA0FEDC();
      v8 = sub_22BA1046C();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_22B92A000, v7, v8, "User has not finished attachment download sync, scheduling attachment download sync", v9, 2u);
        MEMORY[0x23189ADD0](v9, -1, -1);
      }

      static SyncCoordinator.scheduleAttachmentAssetDownloadSync(delegate:)(a1);
    }
  }

  else
  {
    sub_22B952500();
    swift_allocError();
    swift_willThrow();
  }
}

uint64_t static SyncCoordinator.scheduleBackupSync(delegate:)(void *a1)
{
  type metadata accessor for CloudSyncFactory();
  result = sub_22B968F70(v8);
  if (!v2)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    *(v5 + 24) = a1;
    v9 = 3;
    swift_unknownObjectRetain();
    sub_22B9DB944();
    sub_22B96C910(&v9, 6, 7, v6, 0, v7);
    swift_unknownObjectRelease();
    sub_22B9BC988(v7, a1, v8, &unk_22BA184E8, v5);

    sub_22B936C4C(v7);
    return sub_22B936C4C(v8);
  }

  return result;
}

uint64_t sub_22B9B84D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a3;
  if (qword_281416450 != -1)
  {
    swift_once();
  }

  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_22B943E68;

  return sub_22B9BDBA8(a6, a1, a2, v9, a4, 91, 1);
}

uint64_t sub_22B9B85F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a3;
  if (qword_281416450 != -1)
  {
    swift_once();
  }

  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_22B945AC8;

  return sub_22B9BDBA8(a6, a1, a2, v9, a4, 94, 1);
}

uint64_t sub_22B9B8720()
{
  if (qword_281416450 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B9B87C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  swift_unknownObjectRetain();
  a5(a3);
  swift_unknownObjectRelease();
  return 1;
}

uint64_t static SyncCoordinator.startUserInitiatedSync(delegate:)(void *a1)
{
  type metadata accessor for CloudSyncFactory();
  result = sub_22B968F70(v10);
  if (!v2)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    *(v5 + 24) = a1;
    v8 = 6;
    swift_unknownObjectRetain();
    v6 = sub_22BA0FFCC();
    IMBagIntValueWithDefault();

    sub_22B9DBA9C();
    sub_22B96C910(&v8, 12, 13, v7, 0, v9);
    swift_unknownObjectRelease();
    sub_22B9BC988(v9, a1, v10, &unk_22BA184F8, v5);

    sub_22B936C4C(v9);
    return sub_22B936C4C(v10);
  }

  return result;
}

uint64_t sub_22B9B89BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a3;
  if (qword_281416450 != -1)
  {
    swift_once();
  }

  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_22B945AC8;

  return sub_22B9BDBA8(a6, a1, a2, v9, a4, 90, 1);
}

uint64_t sub_22B9B8AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  swift_getObjCClassMetadata();
  v6 = swift_unknownObjectRetain();
  a5(v6);
  swift_unknownObjectRelease();
  return 1;
}

unint64_t static SyncCoordinator.initiateSync(for:delegate:forceRunNow:)(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  sub_22B9B3D30(a1, a2, &v27);
  v10 = v27;
  sub_22B9349C8(&unk_27D8D4E00, &qword_22BA13E00);
  if (v10 == 10)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22BA13410;
    *(inited + 32) = 0x73736563637573;
    *(inited + 40) = 0xE700000000000000;
    v12 = MEMORY[0x277D839B0];
    *(inited + 48) = 0;
    *(inited + 72) = v12;
    *(inited + 80) = 0x6E6F73616572;
    *(inited + 88) = 0xE600000000000000;
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    sub_22BA108FC();

    *&v27 = 0x61685020636E7953;
    *(&v27 + 1) = 0xEB00000000206573;
    MEMORY[0x231899730](a1, a2);
    MEMORY[0x231899730](0x65646920746F6E20, 0xEF6465696669746ELL);
    v13 = v27;
    *(inited + 120) = MEMORY[0x277D837D0];
    *(inited + 96) = v13;
    v14 = sub_22B9BBA8C(inited);
    swift_setDeallocating();
    sub_22B9349C8(&unk_27D8D5770, &qword_22BA135E0);
    swift_arrayDestroy();
    return v14;
  }

  else
  {
    v16 = v4;
    v17 = swift_initStackObject();
    *(v17 + 16) = xmmword_22BA13CB0;
    *(v17 + 32) = 0x6573616870;
    *(v17 + 40) = 0xE500000000000000;
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    LOBYTE(v26[0]) = v10;
    sub_22BA10A2C();
    v18 = v27;
    v19 = MEMORY[0x277D837D0];
    *(v17 + 72) = MEMORY[0x277D837D0];
    *(v17 + 48) = v18;
    v20 = sub_22B9BBA8C(v17);
    swift_setDeallocating();
    sub_22B936BEC(v17 + 32, &unk_27D8D5770, &qword_22BA135E0);
    type metadata accessor for CloudSyncFactory();
    sub_22B968F70(&v27);
    if (v5)
    {
      v28 = MEMORY[0x277D839B0];
      LOBYTE(v27) = 0;
      sub_22B936C98(&v27, v26);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = v20;
      sub_22B9BAE64(v26, 0x73736563637573, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
      v23 = v29;
      *&v27 = 0;
      *(&v27 + 1) = 0xE000000000000000;
      sub_22BA108FC();
      MEMORY[0x231899730](0xD00000000000001BLL, 0x800000022BA1DD90);
      *&v26[0] = v5;
      sub_22B9349C8(&qword_27D8D55E0, &unk_22BA135D0);
      sub_22BA10A2C();
      v28 = v19;
      sub_22B936C98(&v27, v26);
      v24 = swift_isUniquelyReferenced_nonNull_native();
      v29 = v23;
      sub_22B9BAE64(v26, 0x6E6F73616572, 0xE600000000000000, v24);
    }

    else
    {
      v21 = swift_allocObject();
      *(v21 + 16) = v16;
      *(v21 + 24) = a3;
      *(v21 + 32) = v10;
      LOBYTE(v29) = v10;
      swift_unknownObjectRetain();
      sub_22B96A870(&v29, a4 & 1, v26);
      sub_22B9BC988(v26, a3, &v27, &unk_22BA18510, v21);

      sub_22B936C4C(v26);
      sub_22B936C4C(&v27);
      v28 = MEMORY[0x277D839B0];
      LOBYTE(v27) = 1;
      sub_22B936C98(&v27, v26);
      v25 = swift_isUniquelyReferenced_nonNull_native();
      v29 = v20;
      sub_22B9BAE64(v26, 0x73736563637573, 0xE700000000000000, v25);
    }

    return v29;
  }
}

uint64_t sub_22B9B9048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (qword_281416450 != -1)
  {
    swift_once();
  }

  if (a7 > 8u)
  {
    v14 = 99;
  }

  else
  {
    v14 = aXyzCcC[a7];
  }

  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_22B945AC8;

  return sub_22B9BDBA8(a6, a1, a2, a3, a4, v14, 1);
}

void sub_22B9B92A0()
{
  v1 = sub_22BA0FD8C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*sub_22B9358B4((v0 + 16), *(v0 + 40)) + 17) == 1)
  {
  }

  else
  {
    v5 = sub_22BA10C6C();

    if ((v5 & 1) == 0)
    {
      return;
    }
  }

  sub_22BA0FD6C();
  sub_22BA0FCEC();
  v7 = v6;
  (*(v2 + 8))(v4, v1);
  if (v7 <= 60.0)
  {
    sub_22B9BF7D4();
    v8 = swift_allocError();
    sub_22B975FD8(28, v8, 0, 0);
  }
}

uint64_t static SyncCoordinator.fetchSyncStoreCounts(_:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_22B9349C8(&unk_27D8D5780, &qword_22BA13DB0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_22BA1030C();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = a1;
  v9[6] = a2;

  sub_22B9B5500(0, 0, v7, &unk_22BA18528, v9);
}

uint64_t sub_22B9B96E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = swift_task_alloc();
  v6[4] = v7;
  *v7 = v6;
  v7[1] = sub_22B9B9774;

  return sub_22B9BF87C();
}

uint64_t sub_22B9B9774(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 40) = a1;

    return MEMORY[0x2822009F8](sub_22B9B98C0, 0, 0);
  }
}

uint64_t sub_22B9B98C0()
{
  (*(v0 + 16))(*(v0 + 40));

  v1 = *(v0 + 8);

  return v1();
}

void sub_22B9B9A84(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_22BA0FF5C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

id SyncCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SyncCoordinator.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SyncCoordinator();
  return objc_msgSendSuper2(&v3, sel_init);
}

id SyncCoordinator.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SyncCoordinator();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_22B9B9BF0(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 560) = v3;
  *(v4 + 552) = a3;
  *(v4 + 616) = a2;
  *(v4 + 544) = a1;
  sub_22BA1003C();
  *(v4 + 568) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B9B9C8C, 0, 0);
}

uint64_t sub_22B9B9C8C()
{
  v1 = *(*(v0 + 560) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector);
  *(v0 + 576) = v1;
  return MEMORY[0x2822009F8](sub_22B9B9CBC, v1, 0);
}

uint64_t sub_22B9B9CBC()
{
  if (qword_281416A58 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 576);
  swift_beginAccess();
  v2 = *(v1 + 128);
  *(v0 + 16) = *(v1 + 112);
  *(v0 + 32) = v2;
  v3 = *(v1 + 144);
  v4 = *(v1 + 160);
  v5 = *(v1 + 176);
  *(v0 + 96) = *(v1 + 192);
  *(v0 + 64) = v4;
  *(v0 + 80) = v5;
  *(v0 + 48) = v3;
  v7 = *(v1 + 160);
  v6 = *(v1 + 176);
  v8 = *(v1 + 192);
  *(v0 + 136) = *(v1 + 144);
  *(v0 + 184) = v8;
  *(v0 + 168) = v6;
  *(v0 + 152) = v7;
  v9 = *(v1 + 112);
  *(v0 + 120) = *(v1 + 128);
  *(v0 + 104) = v9;
  sub_22B964698(v0 + 16, v0 + 192);
  sub_22B9BF828();
  v10 = sub_22BA0F99C();
  v11 = *(v0 + 152);
  *(v0 + 400) = *(v0 + 136);
  *(v0 + 416) = v11;
  *(v0 + 432) = *(v0 + 168);
  *(v0 + 448) = *(v0 + 184);
  v12 = *(v0 + 120);
  *(v0 + 368) = *(v0 + 104);
  *(v0 + 384) = v12;
  v13 = v10;
  v15 = v14;
  sub_22B9646D0(v0 + 368);
  sub_22BA1002C();
  v16 = sub_22BA1000C();
  v18 = v17;
  sub_22B9359BC(v13, v15);
  if (!v18)
  {
    v18 = 0x800000022BA1DF60;
    v16 = 0xD00000000000001ALL;
  }

  *(v0 + 592) = v18;
  *(v0 + 584) = v16;

  return MEMORY[0x2822009F8](sub_22B9B9EBC, 0, 0);
}

uint64_t sub_22B9B9EBC()
{
  v44 = v0;
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v1 = sub_22BA0FEFC();
  *(v0 + 600) = sub_22B936CA8(v1, qword_28141AD40);

  v2 = sub_22BA0FEDC();
  v3 = sub_22BA1046C();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 592);
  if (v4)
  {
    v6 = *(v0 + 584);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v42 = v8;
    *v7 = 136315138;
    v9 = sub_22B99153C(v6, v5, &v42);

    *(v7 + 4) = v9;
    _os_log_impl(&dword_22B92A000, v2, v3, "%s", v7, 0xCu);
    sub_22B936C4C(v8);
    MEMORY[0x23189ADD0](v8, -1, -1);
    MEMORY[0x23189ADD0](v7, -1, -1);

    v10 = *(v0 + 552);
    if (v10)
    {
LABEL_5:
      v11 = v10;
      v12 = swift_task_alloc();
      *(v0 + 608) = v12;
      *v12 = v0;
      v12[1] = sub_22B9BA5BC;

      return sub_22B97D504(v10);
    }
  }

  else
  {

    v10 = *(v0 + 552);
    if (v10)
    {
      goto LABEL_5;
    }
  }

  v14 = *(v0 + 560);
  v15 = *(v0 + 616);
  v16 = (v14 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState);
  sub_22B935B38(v14 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState, v0 + 456);
  sub_22B9358B4((v0 + 456), *(v0 + 480));
  LOBYTE(v42) = *(*sub_22B9358B4((v14 + 16), *(v14 + 40)) + 17);
  if ((v15 & 1) == 0)
  {

    goto LABEL_13;
  }

  v17 = sub_22BA10C6C();

  if (v17)
  {
LABEL_13:
    v19 = *(v0 + 552);
    v18 = v19 == 0;
    goto LABEL_14;
  }

  v18 = 0;
  v19 = *(v0 + 552);
LABEL_14:
  sub_22BA09450(&v42, v18);
  sub_22B936C4C((v0 + 456));
  if (v19 && (v20 = *(v0 + 552), *(v0 + 536) = v20, v21 = v20, sub_22B9349C8(&qword_27D8D55E0, &unk_22BA135D0), swift_dynamicCast()) && (v22 = *(v0 + 520), sub_22B944AB0(v22), v22 >= 5))
  {

    v34 = sub_22BA0FEDC();
    v35 = sub_22BA1046C();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 136315138;
      v41 = v37;
      v42 = 0x2E636E7973;
      v43 = 0xE500000000000000;
      sub_22B9358B4((v14 + 16), *(v14 + 40));
      v38 = sub_22B9B580C();
      MEMORY[0x231899730](v38);

      MEMORY[0x231899730](46, 0xE100000000000000);
      sub_22BA0FDCC();
      sub_22B944034();
      v39 = sub_22BA10C1C();
      MEMORY[0x231899730](v39);

      v40 = sub_22B99153C(v42, v43, &v41);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_22B92A000, v34, v35, "Tried to kick off %s, while another sync was in progress. See above for active sync handle. Not setting completed sync date or resetting sync state and status.", v36, 0xCu);
      sub_22B936C4C(v37);
      MEMORY[0x23189ADD0](v37, -1, -1);
      MEMORY[0x23189ADD0](v36, -1, -1);
    }
  }

  else
  {
    v23 = *(*sub_22B9358B4(v16, v16[3]) + 56);
    if (v23)
    {
      [v23 setSyncJobStateWithState_];
    }

    sub_22B9358B4(v16, v16[3]);
    sub_22BA08EA4(1);
  }

  v24 = sub_22B9358B4(v16, v16[3]);
  if (*(*sub_22B9358B4((v14 + 16), *(v14 + 40)) + 17))
  {
    if (*(v0 + 616))
    {
      goto LABEL_22;
    }

LABEL_25:

LABEL_26:
    v26 = sub_22B9358B4(v16, v16[3]);
    if (!*(*sub_22B9358B4((v14 + 16), *(v14 + 40)) + 17))
    {
      [*(*v26 + 16) setBool:1 forKey:*MEMORY[0x277D19A58]];
    }

    goto LABEL_28;
  }

  [*(*v24 + 16) setBool:1 forKey:*MEMORY[0x277D19A60]];
  if ((*(v0 + 616) & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_22:
  v25 = sub_22BA10C6C();

  if (v25)
  {
    goto LABEL_26;
  }

LABEL_28:
  v27 = *(v0 + 544);
  if (v27)
  {
    v28 = *(v0 + 552);
    v42 = 0x2E636E7973;
    v43 = 0xE500000000000000;
    sub_22B9358B4((v14 + 16), *(v14 + 40));
    v29 = sub_22B9B580C();
    MEMORY[0x231899730](v29);

    MEMORY[0x231899730](46, 0xE100000000000000);
    sub_22BA0FDCC();
    sub_22B944034();
    v30 = sub_22BA10C1C();
    MEMORY[0x231899730](v30);

    v31 = sub_22BA0FFCC();

    v32 = sub_22BA0FDAC();
    if (v28)
    {
      v28 = sub_22BA0FB5C();
    }

    [v27 syncCoordinatorFinishedSyncWithName:v31 identifier:v32 error:v28];
  }

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_22B9BA5BC()
{

  return MEMORY[0x2822009F8](sub_22B9BA6B8, 0, 0);
}

uint64_t sub_22B9BA6B8()
{
  v32 = v0;

  v1 = *(v0 + 560);
  v2 = *(v0 + 616);
  v3 = (v1 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState);
  sub_22B935B38(v1 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState, v0 + 456);
  sub_22B9358B4((v0 + 456), *(v0 + 480));
  LOBYTE(v30) = *(*sub_22B9358B4((v1 + 16), *(v1 + 40)) + 17);
  if ((v2 & 1) == 0)
  {

    goto LABEL_5;
  }

  v4 = sub_22BA10C6C();

  if (v4)
  {
LABEL_5:
    v6 = *(v0 + 552);
    v5 = v6 == 0;
    goto LABEL_6;
  }

  v5 = 0;
  v6 = *(v0 + 552);
LABEL_6:
  sub_22BA09450(&v30, v5);
  sub_22B936C4C((v0 + 456));
  if (v6 && (v7 = *(v0 + 552), *(v0 + 536) = v7, v8 = v7, sub_22B9349C8(&qword_27D8D55E0, &unk_22BA135D0), swift_dynamicCast()) && (v9 = *(v0 + 520), sub_22B944AB0(v9), v9 >= 5))
  {

    v22 = sub_22BA0FEDC();
    v23 = sub_22BA1046C();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 136315138;
      v29 = v25;
      v30 = 0x2E636E7973;
      v31 = 0xE500000000000000;
      sub_22B9358B4((v1 + 16), *(v1 + 40));
      v26 = sub_22B9B580C();
      MEMORY[0x231899730](v26);

      MEMORY[0x231899730](46, 0xE100000000000000);
      sub_22BA0FDCC();
      sub_22B944034();
      v27 = sub_22BA10C1C();
      MEMORY[0x231899730](v27);

      v28 = sub_22B99153C(v30, v31, &v29);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_22B92A000, v22, v23, "Tried to kick off %s, while another sync was in progress. See above for active sync handle. Not setting completed sync date or resetting sync state and status.", v24, 0xCu);
      sub_22B936C4C(v25);
      MEMORY[0x23189ADD0](v25, -1, -1);
      MEMORY[0x23189ADD0](v24, -1, -1);
    }
  }

  else
  {
    v10 = *(*sub_22B9358B4(v3, v3[3]) + 56);
    if (v10)
    {
      [v10 setSyncJobStateWithState_];
    }

    sub_22B9358B4(v3, v3[3]);
    sub_22BA08EA4(1);
  }

  v11 = sub_22B9358B4(v3, v3[3]);
  if (*(*sub_22B9358B4((v1 + 16), *(v1 + 40)) + 17))
  {
    if (*(v0 + 616))
    {
      goto LABEL_14;
    }
  }

  else
  {
    [*(*v11 + 16) setBool:1 forKey:*MEMORY[0x277D19A60]];
    if (*(v0 + 616))
    {
LABEL_14:
      v12 = sub_22BA10C6C();

      if ((v12 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    }
  }

LABEL_18:
  v13 = sub_22B9358B4(v3, v3[3]);
  if (!*(*sub_22B9358B4((v1 + 16), *(v1 + 40)) + 17))
  {
    [*(*v13 + 16) setBool:1 forKey:*MEMORY[0x277D19A58]];
  }

LABEL_20:
  v14 = *(v0 + 544);
  if (v14)
  {
    v15 = *(v0 + 552);
    v30 = 0x2E636E7973;
    v31 = 0xE500000000000000;
    sub_22B9358B4((v1 + 16), *(v1 + 40));
    v16 = sub_22B9B580C();
    MEMORY[0x231899730](v16);

    MEMORY[0x231899730](46, 0xE100000000000000);
    sub_22BA0FDCC();
    sub_22B944034();
    v17 = sub_22BA10C1C();
    MEMORY[0x231899730](v17);

    v18 = sub_22BA0FFCC();

    v19 = sub_22BA0FDAC();
    if (v15)
    {
      v15 = sub_22BA0FB5C();
    }

    [v14 syncCoordinatorFinishedSyncWithName:v18 identifier:v19 error:v15];
  }

  v20 = *(v0 + 8);

  return v20();
}

void sub_22B9BABE4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22B990A58(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_22B9EBAF4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_22B9D7F9C(v16, a4 & 1);
    v11 = sub_22B990A58(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      sub_22BA10CBC();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {
    sub_22B9D9D64(v11, a2, a3, a1, v21);
  }
}

id sub_22B9BAD14(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_22B990B14(a3);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_16;
  }

  v16 = v11;
  v17 = v9[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      v18 = v10;
      sub_22B9EBDD0();
      v10 = v18;
      goto LABEL_8;
    }

    sub_22B9D84F8(v15, a4 & 1);
    v10 = sub_22B990B14(a3);
    if ((v16 & 1) != (v19 & 1))
    {
LABEL_16:
      sub_22B951A54(0, &qword_281414BE0, 0x277CBC5D0);
      result = sub_22BA10CBC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v5;
  if (v16)
  {
    v21 = (v20[7] + 16 * v10);
    *v21 = a1;
    v21[1] = a2;
  }

  else
  {
    sub_22B9D9DAC(v10, a3, a1, a2, v20);

    return a3;
  }
}

void sub_22B9BAE64(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22B990A58(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_22B9EBF40();
      v11 = v19;
      goto LABEL_8;
    }

    sub_22B9D877C(v16, a4 & 1);
    v11 = sub_22B990A58(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_22BA10CBC();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_22B936C4C(v22);

    sub_22B936C98(a1, v22);
  }

  else
  {
    sub_22B9D9DF4(v11, a2, a3, a1, v21);
  }
}

void sub_22B9BAFB4(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22B990A58(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_22B9EC0E4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_22B9D8A34(v16, a4 & 1);
    v11 = sub_22B990A58(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      sub_22BA10CBC();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 48 * v11);
    v23 = a1[1];
    *v22 = *a1;
    v22[1] = v23;
    *(v22 + 25) = *(a1 + 25);
  }

  else
  {
    sub_22B9D9E60(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_22B9BB0F8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_22B990B64(a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      sub_22B9EC284();
      result = v19;
      goto LABEL_8;
    }

    sub_22B9D8D34(v16, a4 & 1);
    result = sub_22B990B64(a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      result = sub_22BA10CBC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 16 * result);
    *v22 = a1;
    v22[1] = a2;
  }

  else
  {

    return sub_22B9D9EBC(result, a3, a1, a2, v21);
  }

  return result;
}

_OWORD *sub_22B9BB21C(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_22B990AD0(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_22B9EC530();
      goto LABEL_7;
    }

    sub_22B9D92B4(v13, a3 & 1);
    v19 = sub_22B990AD0(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_22B958068(a2, v21);
      return sub_22B9D9F04(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_22BA10CBC();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_22B936C4C(v17);

  return sub_22B936C98(a1, v17);
}

unint64_t sub_22B9BB368(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_22B990D50(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_22B9EC6D4();
      v9 = v17;
      goto LABEL_8;
    }

    sub_22B9D956C(v14, a3 & 1);
    v9 = sub_22B990D50(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      type metadata accessor for RecordStoreType(0);
      result = sub_22BA10CBC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;

    return swift_unknownObjectRelease();
  }

  else
  {

    return sub_22B9D9F80(v9, a2, a1, v19);
  }
}

void sub_22B9BB48C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_22B990A58(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_22B9EC830();
      v13 = v21;
      goto LABEL_8;
    }

    sub_22B9D97FC(v18, a5 & 1);
    v13 = sub_22B990A58(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      sub_22BA10CBC();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  else
  {
    sub_22B9D9FC4(v13, a3, a4, a1, a2, v23);
  }
}

void sub_22B9BB5DC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22B990A58(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_22B9EC9A8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_22B9D9ABC(v16, a4 & 1);
    v11 = sub_22B990A58(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_22BA10CBC();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {
    sub_22B9D9D64(v11, a2, a3, a1, v21);
  }
}

id sub_22B9BB724(uint64_t *a1)
{
  v10 = *a1;
  v11 = &off_283F589F0;
  v9[0] = a1;
  v1 = objc_allocWithZone(MEMORY[0x277CBC230]);

  v2 = [v1 init];
  [v2 setMmcsEncryptionSupport_];
  [v2 setUseZoneWidePCS_];
  sub_22B9358B4(v9, v10);
  if (sub_22BA08818())
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v4 = objc_allocWithZone(MEMORY[0x277CBC220]);
  v5 = sub_22BA0FFCC();
  v6 = [v4 initWithContainerIdentifier:v5 environment:v3];

  v7 = [objc_allocWithZone(MEMORY[0x277CBC218]) initWithContainerID:v6 options:v2];
  sub_22B936C4C(v9);
  return v7;
}

unint64_t sub_22B9BB884(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22B9349C8(&qword_27D8D5808, qword_22BA18600);
    v3 = sub_22BA10A8C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_22B990A58(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
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

unint64_t sub_22B9BB998(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22B9349C8(&unk_27D8D5790, &unk_22BA19790);
    v3 = sub_22BA10A8C();

    for (i = (a1 + 40); ; i = (i + 24))
    {
      v5 = *(i - 8);
      v11 = *i;
      result = sub_22B990B64(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

unint64_t sub_22B9BBA8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22B9349C8(&qword_27D8D5510, &qword_22BA16DF0);
    v3 = sub_22BA10A8C();
    v4 = a1 + 32;

    while (1)
    {
      sub_22B9934AC(v4, &v13, &unk_27D8D5770, &qword_22BA135E0);
      v5 = v13;
      v6 = v14;
      result = sub_22B990A58(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_22B936C98(&v15, (v3[7] + 32 * result));
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

unint64_t sub_22B9BBBBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22B9349C8(&qword_27D8D5820, &qword_22BA186B8);
    v3 = sub_22BA10A8C();
    v4 = a1 + 32;

    while (1)
    {
      sub_22B9934AC(v4, &v11, &qword_27D8D5620, &qword_22BA186C0);
      v5 = v11;
      result = sub_22B990C6C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_22B936C98(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_22B9BBCE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22B9349C8(&qword_27D8D5810, &qword_22BA186A8);
    v3 = sub_22BA10A8C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_22B990D00(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_22B9BBDF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22B9349C8(&unk_27D8D57A0, &qword_22BA18568);
    v3 = sub_22BA10A8C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);

      result = sub_22B990B14(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = (v3[7] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
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

unint64_t sub_22B9BBEF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22B9349C8(&qword_27D8D5508, &unk_22BA16DE0);
    v3 = sub_22BA10A8C();
    v4 = a1 + 32;

    while (1)
    {
      sub_22B9934AC(v4, v13, &unk_27D8D57B0, &unk_22BA16D78);
      result = sub_22B990AD0(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_22B936C98(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_22B9BC02C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22B9349C8(&qword_27D8D5818, &qword_22BA186B0);
    v3 = sub_22BA10A8C();

    for (i = (a1 + 64); ; i += 40)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_22B990A58(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = v3[7] + 24 * result;
      *v13 = v7;
      *(v13 + 8) = v8;
      *(v13 + 16) = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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

unint64_t sub_22B9BC154(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_22B9349C8(a2, a3);
    v5 = sub_22BA10A8C();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_22B990A58(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

void sub_22B9BC248(uint64_t a1, uint64_t a2)
{
  v2 = off_281416A80;
  if (off_281416A80)
  {
    v3 = *(&off_281416A80 + 1);
    sub_22B944A5C();
    swift_allocError();
    *v4 = v2;
    v4[1] = v3;
    swift_willThrow();
    swift_unknownObjectRetain();
  }

  else
  {
    off_281416A80 = a1;
    *(&off_281416A80 + 1) = a2;
    v6 = qword_281414D30;
    swift_unknownObjectRetain();
    if (v6 != -1)
    {
      swift_once();
    }

    v7 = sub_22BA0FEFC();
    sub_22B936CA8(v7, qword_28141AD40);
    swift_unknownObjectRetain();
    v8 = sub_22BA0FEDC();
    v9 = sub_22BA1046C();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 136315138;
      v15 = v11;
      sub_22B9358B4((a1 + 16), *(a1 + 40));
      v12 = sub_22B9B580C();
      MEMORY[0x231899730](v12);

      MEMORY[0x231899730](46, 0xE100000000000000);
      sub_22BA0FDCC();
      sub_22B944034();
      v13 = sub_22BA10C1C();
      MEMORY[0x231899730](v13);

      v14 = sub_22B99153C(0x2E636E7973, 0xE500000000000000, &v15);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_22B92A000, v8, v9, "Activated sync %s", v10, 0xCu);
      sub_22B936C4C(v11);
      MEMORY[0x23189ADD0](v11, -1, -1);
      MEMORY[0x23189ADD0](v10, -1, -1);
    }
  }
}

uint64_t sub_22B9BC494()
{
  v0 = sub_22B9ECB18();
  if (*(v0 + 16) && (v1 = sub_22B990A58(0xD000000000000022, 0x800000022BA1DF30), (v2 & 1) != 0))
  {
    sub_22B936B20(*(v0 + 56) + 32 * v1, v5);

    v3 = 1;
  }

  else
  {

    v3 = 0;
    memset(v5, 0, sizeof(v5));
  }

  sub_22B936BEC(v5, &unk_27D8D5A30, qword_22BA13390);
  return v3;
}

void sub_22B9BC538()
{
  v0 = off_281416A80;
  if (off_281416A80)
  {
    off_281416A80 = 0;
    *(&off_281416A80 + 1) = 0;
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v1 = sub_22BA0FEFC();
    sub_22B936CA8(v1, qword_28141AD40);
    swift_unknownObjectRetain();
    v2 = sub_22BA0FEDC();
    v3 = sub_22BA1046C();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 136315138;
      v10 = v5;
      sub_22B9358B4((v0 + 16), *(v0 + 40));
      v6 = sub_22B9B580C();
      MEMORY[0x231899730](v6);

      MEMORY[0x231899730](46, 0xE100000000000000);
      sub_22BA0FDCC();
      sub_22B944034();
      v7 = sub_22BA10C1C();
      MEMORY[0x231899730](v7);

      v8 = sub_22B99153C(0x2E636E7973, 0xE500000000000000, &v10);

      *(v4 + 4) = v8;
      _os_log_impl(&dword_22B92A000, v2, v3, "Deactivated sync %s", v4, 0xCu);
      sub_22B936C4C(v5);
      MEMORY[0x23189ADD0](v5, -1, -1);
      MEMORY[0x23189ADD0](v4, -1, -1);

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_22B944A5C();
    swift_allocError();
    *v9 = xmmword_22BA18470;
    swift_willThrow();
  }
}

uint64_t sub_22B9BC788(uint64_t a1)
{
  if (a1 && (swift_unknownObjectRetain(), sub_22B9349C8(&qword_27D8D57F8, &qword_22BA185F0), sub_22B9349C8(&qword_27D8D5800, &qword_22BA185F8), (swift_dynamicCast() & 1) != 0))
  {
    v1 = *(&v9 + 1);
    if (*(&v9 + 1))
    {
      v2 = v10;
      sub_22B9358B4(&v8, *(&v9 + 1));
      v3 = (*(v2 + 8))(v1, v2);
      v5 = v4;
      result = sub_22B936C4C(&v8);
      qword_28141ADC8 = v3;
      qword_28141ADD0 = v5;
      return result;
    }
  }

  else
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
  }

  sub_22B936BEC(&v8, &qword_27D8D57F0, &qword_22BA185E8);
  sub_22B944A5C();
  swift_allocError();
  *v7 = xmmword_22BA18480;
  return swift_willThrow();
}

uint64_t sub_22B9BC8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *(v4 + 16);
  v10 = *(v4 + 24);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_22B943E68;

  return sub_22B9B70AC(a1, a2, a3, a4, v11, v10);
}

void sub_22B9BC988(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_22BA0FD8C();
  v11 = *(v10 - 8);
  v134 = v10;
  v135 = v11;
  v12 = MEMORY[0x28223BE20](v10);
  v125 = &v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v126 = &v111 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v131 = &v111 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v111 - v18;
  v20 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v127 = &v111 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v128 = &v111 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v111 - v26;
  MEMORY[0x28223BE20](v25);
  v136 = &v111 - v28;
  v29 = sub_22B9358B4(a3, a3[3]);
  v30 = a1[3];
  v153 = a1;
  if (!*(*sub_22B9358B4(a1, v30) + 17))
  {
    [*(*v29 + 16) setBool:1 forKey:*MEMORY[0x277D19A68]];
  }

  sub_22B9358B4(a3, a3[3]);
  v31 = sub_22BA09CBC();
  if (v31)
  {
    [v31 setSyncCancelled_];
  }

  if (*(*sub_22B9358B4(v153, v153[3]) + 72) == 1)
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v32 = sub_22BA0FEFC();
    sub_22B936CA8(v32, qword_28141AD40);
    sub_22B935B38(v153, &v138);
    v33 = sub_22BA0FEDC();
    v34 = sub_22BA1046C();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v133 = a5;
      v36 = v35;
      v37 = swift_slowAlloc();
      v132 = a2;
      v38 = v37;
      v150[0] = v37;
      *v36 = 136315138;
      sub_22B9358B4(&v138, v141);
      v39 = sub_22B9B580C();
      v40 = a3;
      v41 = a4;
      v43 = v42;
      sub_22B936C4C(&v138);
      v44 = sub_22B99153C(v39, v43, v150);
      a4 = v41;
      a3 = v40;

      *(v36 + 4) = v44;
      _os_log_impl(&dword_22B92A000, v33, v34, "%s running immediately", v36, 0xCu);
      sub_22B936C4C(v38);
      v45 = v38;
      a2 = v132;
      MEMORY[0x23189ADD0](v45, -1, -1);
      v46 = v36;
      a5 = v133;
      MEMORY[0x23189ADD0](v46, -1, -1);
    }

    else
    {

      sub_22B936C4C(&v138);
    }

    if (qword_281416A68 != -1)
    {
      swift_once();
    }

    sub_22B935B38(&unk_28141AEE0, &v138);
    sub_22B9358B4(&v138, v141);
    if (qword_281416A70 != -1)
    {
      swift_once();
    }

    v58 = [qword_28141AF08 privateCloudDatabase];
    v151 = sub_22B951A54(0, &qword_281414BF0, 0x277CBC280);
    v152 = &off_283F53198;
    v150[0] = v58;
    if (qword_281414F10 != -1)
    {
      swift_once();
    }

    sub_22B935B38(&unk_28141AD68, v149);
    if (qword_281416500 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v59 = qword_28141AE00;

    sub_22B93809C(v153, a3, v150, v149, a2, v59, a4, a5);
    sub_22B936C4C(v149);

    sub_22B936C4C(v150);
    v60 = &v138;
    goto LABEL_49;
  }

  v130 = v19;
  v133 = a5;
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v47 = sub_22BA0FEFC();
  v48 = sub_22B936CA8(v47, qword_28141AD40);
  sub_22B935B38(v153, &v138);
  v129 = v48;
  v49 = sub_22BA0FEDC();
  v50 = sub_22BA1046C();
  v51 = os_log_type_enabled(v49, v50);
  v132 = a2;
  v123 = a3;
  v124 = a4;
  if (v51)
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v150[0] = v53;
    *v52 = 136315138;
    sub_22B9358B4(&v138, v141);
    v54 = sub_22B9B580C();
    v56 = v55;
    sub_22B936C4C(&v138);
    v57 = sub_22B99153C(v54, v56, v150);

    *(v52 + 4) = v57;
    _os_log_impl(&dword_22B92A000, v49, v50, "%s scheduling", v52, 0xCu);
    sub_22B936C4C(v53);
    MEMORY[0x23189ADD0](v53, -1, -1);
    MEMORY[0x23189ADD0](v52, -1, -1);
  }

  else
  {

    sub_22B936C4C(&v138);
  }

  v61 = v134;
  v62 = v135;
  if (qword_281416A68 != -1)
  {
    swift_once();
  }

  sub_22B935B38(&unk_28141AEE0, v150);
  sub_22B9358B4(v150, v151);
  if (qword_281416A70 != -1)
  {
    swift_once();
  }

  v63 = [qword_28141AF08 privateCloudDatabase];
  v149[3] = sub_22B951A54(0, &qword_281414BF0, 0x277CBC280);
  v149[4] = &off_283F53198;
  v149[0] = v63;
  if (qword_281414F10 != -1)
  {
    swift_once();
  }

  sub_22B935B38(&unk_28141AD68, v148);
  if (qword_281416500 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v64 = qword_28141AE00;
  v65 = v136;
  v121 = v62[7];
  v121(v136, 1, 1, v61);
  v66 = *(*sub_22B9358B4(v153, v153[3]) + 80);
  sub_22B9934AC(v65, v27, &unk_27D8D4A90, &qword_22BA126A0);
  v67 = v62[6];
  v68 = v67(v27, 1, v61);
  v122 = v64;
  if (v68 == 1)
  {

    swift_unknownObjectRetain();
    sub_22B936BEC(v27, &unk_27D8D4A90, &qword_22BA126A0);
LABEL_45:
    sub_22B935B38(v153, &v138);
    v96 = sub_22BA0FEDC();
    v97 = sub_22BA1046C();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      *&v147[0] = v99;
      *v98 = 136315138;
      sub_22B9358B4(&v138, v141);
      v100 = sub_22B9B580C();
      v102 = v101;
      sub_22B936C4C(&v138);
      v103 = sub_22B99153C(v100, v102, v147);

      *(v98 + 4) = v103;
      _os_log_impl(&dword_22B92A000, v96, v97, "Registering xpc_activity: %s", v98, 0xCu);
      sub_22B936C4C(v99);
      MEMORY[0x23189ADD0](v99, -1, -1);
      MEMORY[0x23189ADD0](v98, -1, -1);
    }

    else
    {

      sub_22B936C4C(&v138);
    }

    v104 = v153;
    sub_22B9358B4(v153, v153[3]);
    v138 = 0;
    v139 = 0xE000000000000000;
    sub_22BA108FC();

    v138 = 0xD000000000000018;
    v139 = 0x800000022BA1C340;
    v105 = sub_22B9B580C();
    MEMORY[0x231899730](v105);

    v137 = *MEMORY[0x277D86238];
    v106 = swift_allocObject();
    *(v106 + 24) = 0;
    swift_unknownObjectWeakInit();
    sub_22B935B38(v104, v147);
    sub_22B935B38(v123, v146);
    sub_22B935B38(v149, v145);
    sub_22B935B38(v148, v144);
    v107 = swift_allocObject();
    sub_22B92DFEC(v147, (v107 + 2));
    v107[7] = v66;
    v107[8] = v106;
    sub_22B92DFEC(v146, (v107 + 9));
    sub_22B92DFEC(v145, (v107 + 14));
    v108 = v122;
    v107[19] = v132;
    v107[20] = v108;
    v107[21] = 0;
    sub_22B92DFEC(v144, (v107 + 22));
    v109 = v133;
    v107[27] = v124;
    v107[28] = v109;
    v142 = sub_22B9449FC;
    v143 = v107;
    v138 = MEMORY[0x277D85DD0];
    v139 = 1107296256;
    v140 = sub_22B9B57AC;
    v141 = &unk_283F56688;
    v110 = _Block_copy(&v138);
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();

    sub_22BA1006C();

    IMRegisterSADAwareXPCActivity();
    _Block_release(v110);
    swift_unknownObjectRelease();
    sub_22B936BEC(v136, &unk_27D8D4A90, &qword_22BA126A0);
    sub_22B936C4C(v148);

    sub_22B936C4C(v149);
    v60 = v150;
LABEL_49:
    sub_22B936C4C(v60);
    return;
  }

  v118 = v67;
  v69 = v61;
  v72 = v62[4];
  v71 = v62 + 4;
  v70 = v72;
  v72(v130, v27, v69);

  v120 = v66;
  swift_unknownObjectRetain();
  sub_22BA0FD3C();
  v74 = ceil(v73);
  if ((*&v74 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_51;
  }

  if (v74 <= -9.22337204e18)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v74 < 9.22337204e18)
  {
    v115 = v70;
    v116 = v71;
    v75 = v74;
    v77 = v134;
    v76 = v135;
    v78 = v131;
    v119 = v135[2];
    v119(v131, v130, v134);
    v79 = sub_22BA0FEDC();
    v117 = sub_22BA1046C();
    if (os_log_type_enabled(v79, v117))
    {
      v113 = v79;
      v114 = v75;
      v80 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v138 = v112;
      *v80 = 136315394;
      v81 = v128;
      v119(v128, v78, v77);
      v121(v81, 0, 1, v77);
      v82 = v127;
      sub_22B9934AC(v81, v127, &unk_27D8D4A90, &qword_22BA126A0);
      if (v118(v82, 1, v77) == 1)
      {
        v83 = v78;
        sub_22B936BEC(v82, &unk_27D8D4A90, &qword_22BA126A0);
        sub_22B936BEC(v81, &unk_27D8D4A90, &qword_22BA126A0);
        v84 = v135[1];
        v84(v83, v77);
        v85 = 0xE300000000000000;
        v86 = 7104878;
      }

      else
      {
        v89 = v126;
        v115(v126, v82, v77);
        v119(v125, v89, v77);
        v127 = sub_22BA1005C();
        v85 = v90;
        v84 = v135[1];
        v84(v89, v77);
        sub_22B936BEC(v81, &unk_27D8D4A90, &qword_22BA126A0);
        v84(v131, v77);
        v86 = v127;
      }

      v88 = v77;
      v91 = v117;
      v92 = sub_22B99153C(v86, v85, &v138);

      *(v80 + 4) = v92;
      *(v80 + 12) = 2048;
      v93 = v113;
      v75 = v114;
      *(v80 + 14) = v114;
      _os_log_impl(&dword_22B92A000, v93, v91, "Overriding xpc_activity XPC_ACTIVITY_EARLIEST_START_DATE with %s, delay: %lld", v80, 0x16u);
      v94 = v112;
      sub_22B936C4C(v112);
      MEMORY[0x23189ADD0](v94, -1, -1);
      MEMORY[0x23189ADD0](v80, -1, -1);
    }

    else
    {

      v87 = v78;
      v84 = v76[1];
      v84(v87, v77);
      v88 = v77;
    }

    v95 = v120;
    xpc_dictionary_set_int64(v120, *MEMORY[0x277D86250], v75);
    v84(v130, v88);
    v66 = v95;
    goto LABEL_45;
  }

LABEL_52:
  __break(1u);
}

uint64_t sub_22B9BD950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *(v4 + 16);
  v10 = *(v4 + 24);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_22B945AC8;

  return sub_22B9B75CC(a1, a2, a3, a4, v11, v10);
}

uint64_t sub_22B9BDA18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *(v4 + 16);
  v10 = *(v4 + 24);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_22B945AC8;

  return sub_22B9B85F8(a1, a2, a3, a4, v11, v10);
}

uint64_t sub_22B9BDAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *(v4 + 16);
  v10 = *(v4 + 24);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_22B945AC8;

  return sub_22B9B7C30(a1, a2, a3, a4, v11, v10);
}

uint64_t sub_22B9BDBA8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, char a7)
{
  *(v7 + 114) = a7;
  *(v7 + 113) = a6;
  *(v7 + 112) = a4;
  *(v7 + 40) = a3;
  *(v7 + 48) = a5;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  if (qword_281416450 != -1)
  {
    swift_once();
  }

  sub_22BA102EC();
  v9 = sub_22BA1029C();
  *(v7 + 56) = v9;
  *(v7 + 64) = v8;

  return MEMORY[0x2822009F8](sub_22B9BDC70, v9, v8);
}

uint64_t sub_22B9BDC70()
{
  v1 = *(v0 + 112);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  if (v1 > 0x3F)
  {
    sub_22B9BF7AC(*(v0 + 32), *(v0 + 40), v1);
    v9 = swift_task_alloc();
    *(v0 + 96) = v9;
    *v9 = v0;
    v9[1] = sub_22B9BEBA0;
    v6 = *(v0 + 48);
    v8 = *(v0 + 24);
    v7 = 1;
    goto LABEL_5;
  }

  sub_22B9B92A0();
  if (sub_22B9BC494())
  {
    v4 = *(v0 + 112);
    v5 = swift_task_alloc();
    *(v0 + 80) = v5;
    *v5 = v0;
    v5[1] = sub_22B9BE028;
    v6 = *(v0 + 48);
    v7 = v4 & 1;
    v8 = *(v0 + 24);
LABEL_5:

    return sub_22B9B9BF0(v8, v7, v6);
  }

  v11 = *(v3 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_attemptCount);
  v12 = swift_task_alloc();
  *(v0 + 72) = v12;
  *v12 = v0;
  v12[1] = sub_22B9BDE98;
  v13 = *(v0 + 40);
  v14 = *(v0 + 48);
  v15 = *(v0 + 32);
  v16 = *(v0 + 112);

  return sub_22B9E923C(v3, v2, v11, v15, v13, v16, v14, 1);
}

uint64_t sub_22B9BDE98()
{
  v1 = *v0;
  v2 = *v0;

  v3 = *(v1 + 112);
  v4 = swift_task_alloc();
  *(v1 + 80) = v4;
  *v4 = v2;
  v4[1] = sub_22B9BE028;
  v5 = *(v1 + 48);
  v6 = *(v1 + 24);

  return sub_22B9B9BF0(v6, v3 & 1, v5);
}

uint64_t sub_22B9BE028()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_22B9BE148, v3, v2);
}

uint64_t sub_22B9BE148()
{
  v47 = v0;
  if (*(v0 + 113) == 99)
  {
    v1 = *(v0 + 48);
    if (v1)
    {
      v2 = v1;
      if (qword_281414D30 != -1)
      {
        swift_once();
      }

      v4 = *(v0 + 32);
      v3 = *(v0 + 40);
      v5 = *(v0 + 112);
      v6 = sub_22BA0FEFC();
      sub_22B936CA8(v6, qword_28141AD40);
      v7 = v1;
      sub_22B9BF7AC(v4, v3, v5);
      v8 = sub_22BA0FEDC();
      v9 = sub_22BA1045C();
      sub_22B9BF7C0(v4, v3, v5);

      if (os_log_type_enabled(v8, v9))
      {
        v10 = *(v0 + 32);
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v46 = v12;
        *v11 = 136315394;
        sub_22B9358B4((v10 + 16), *(v10 + 40));
        v13 = sub_22B9B580C();
        v15 = sub_22B99153C(v13, v14, &v46);

        *(v11 + 4) = v15;
        *(v11 + 12) = 2080;
        *(v0 + 16) = v1;
        v16 = v1;
        sub_22B9349C8(&qword_27D8D55E0, &unk_22BA135D0);
        v17 = sub_22BA1005C();
        v19 = sub_22B99153C(v17, v18, &v46);

        *(v11 + 14) = v19;
        _os_log_impl(&dword_22B92A000, v8, v9, "Completion called for %s sync with error %s", v11, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23189ADD0](v12, -1, -1);
        MEMORY[0x23189ADD0](v11, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      if (qword_281414D30 != -1)
      {
        swift_once();
      }

      v30 = *(v0 + 32);
      v29 = *(v0 + 40);
      v31 = *(v0 + 112);
      v32 = sub_22BA0FEFC();
      sub_22B936CA8(v32, qword_28141AD40);
      swift_unknownObjectRetain();
      v33 = sub_22BA0FEDC();
      v34 = sub_22BA1046C();
      sub_22B9BF7C0(v30, v29, v31);
      if (os_log_type_enabled(v33, v34))
      {
        v35 = *(v0 + 112);
        v36 = *(v0 + 32);
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v46 = v38;
        *v37 = 136315394;
        sub_22B9358B4((v36 + 16), *(v36 + 40));
        v39 = sub_22B9B580C();
        v41 = sub_22B99153C(v39, v40, &v46);

        *(v37 + 4) = v41;
        *(v37 + 12) = 2080;
        if (v35)
        {
          v42 = 0x7972746572;
        }

        else
        {
          v42 = 1701736292;
        }

        if (v35)
        {
          v43 = 0xE500000000000000;
        }

        else
        {
          v43 = 0xE400000000000000;
        }

        v44 = sub_22B99153C(v42, v43, &v46);

        *(v37 + 14) = v44;
        _os_log_impl(&dword_22B92A000, v33, v34, "%s sync finished with response %s", v37, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23189ADD0](v38, -1, -1);
        MEMORY[0x23189ADD0](v37, -1, -1);
      }

      if (*(v0 + 114) == 1 && qword_28141ADC8)
      {
        (*(qword_28141ADD0 + 136))(qword_28141ADC8);
      }
    }

    v45 = *(v0 + 8);

    return v45();
  }

  else
  {
    v20 = *(v0 + 32);
    v21 = *(v0 + 40);
    v22 = *(v20 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_attemptCount);
    v23 = swift_task_alloc();
    *(v0 + 88) = v23;
    *v23 = v0;
    v23[1] = sub_22B9BE65C;
    v24 = *(v0 + 40);
    v25 = *(v0 + 48);
    v26 = *(v0 + 32);
    v27 = *(v0 + 112);
    v56 = *(v0 + 113);
    v55 = 477;
    v54 = 2;
    v53 = 75;
    v52 = "handleSyncCompletion(delegate:scheduledStatus:error:metric:reloadDatabase:)";
    v51 = 2;
    v49 = "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/MessagesCloudSync/CloudKit/SyncCoordinator.swift";
    v50 = 106;

    return sub_22B9E923C(v20, v21, v22, v26, v24, v27, v25, 1);
  }
}

uint64_t sub_22B9BE65C()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_22B9BE77C, v3, v2);
}

uint64_t sub_22B9BE77C()
{
  v39 = v0;
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = v1;
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 32);
    v3 = *(v0 + 40);
    v5 = *(v0 + 112);
    v6 = sub_22BA0FEFC();
    sub_22B936CA8(v6, qword_28141AD40);
    v7 = v1;
    sub_22B9BF7AC(v4, v3, v5);
    v8 = sub_22BA0FEDC();
    v9 = sub_22BA1045C();
    sub_22B9BF7C0(v4, v3, v5);

    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 32);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v38 = v12;
      *v11 = 136315394;
      sub_22B9358B4((v10 + 16), *(v10 + 40));
      v13 = sub_22B9B580C();
      v15 = sub_22B99153C(v13, v14, &v38);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2080;
      *(v0 + 16) = v1;
      v16 = v1;
      sub_22B9349C8(&qword_27D8D55E0, &unk_22BA135D0);
      v17 = sub_22BA1005C();
      v19 = sub_22B99153C(v17, v18, &v38);

      *(v11 + 14) = v19;
      _os_log_impl(&dword_22B92A000, v8, v9, "Completion called for %s sync with error %s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23189ADD0](v12, -1, -1);
      MEMORY[0x23189ADD0](v11, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v21 = *(v0 + 32);
    v20 = *(v0 + 40);
    v22 = *(v0 + 112);
    v23 = sub_22BA0FEFC();
    sub_22B936CA8(v23, qword_28141AD40);
    swift_unknownObjectRetain();
    v24 = sub_22BA0FEDC();
    v25 = sub_22BA1046C();
    sub_22B9BF7C0(v21, v20, v22);
    if (os_log_type_enabled(v24, v25))
    {
      v26 = *(v0 + 112);
      v27 = *(v0 + 32);
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v38 = v29;
      *v28 = 136315394;
      sub_22B9358B4((v27 + 16), *(v27 + 40));
      v30 = sub_22B9B580C();
      v32 = sub_22B99153C(v30, v31, &v38);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2080;
      if (v26)
      {
        v33 = 0x7972746572;
      }

      else
      {
        v33 = 1701736292;
      }

      if (v26)
      {
        v34 = 0xE500000000000000;
      }

      else
      {
        v34 = 0xE400000000000000;
      }

      v35 = sub_22B99153C(v33, v34, &v38);

      *(v28 + 14) = v35;
      _os_log_impl(&dword_22B92A000, v24, v25, "%s sync finished with response %s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23189ADD0](v29, -1, -1);
      MEMORY[0x23189ADD0](v28, -1, -1);
    }

    if (*(v0 + 114) == 1 && qword_28141ADC8)
    {
      (*(qword_28141ADD0 + 136))(qword_28141ADC8);
    }
  }

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_22B9BEBA0()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_22B9BECC0, v3, v2);
}

uint64_t sub_22B9BECC0()
{
  if (*(v0 + 113) == 99)
  {
    sub_22B9BF7C0(*(v0 + 32), *(v0 + 40), *(v0 + 112));
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = *(v0 + 32);
    v4 = *(v0 + 40);
    v5 = *(v3 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_attemptCount);
    v6 = swift_task_alloc();
    *(v0 + 104) = v6;
    *v6 = v0;
    v6[1] = sub_22B9BEE14;
    v7 = *(v0 + 40);
    v8 = *(v0 + 48);
    v9 = *(v0 + 32);
    v10 = *(v0 + 112);

    return sub_22B9E923C(v3, v4, v5, v9, v7, v10, v8, 1);
  }
}

uint64_t sub_22B9BEE14()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *v0;
  v4 = *(v3 + 112);

  sub_22B9BF7C0(v2, v1, v4);
  v5 = *(v3 + 8);

  return v5();
}

void sub_22B9BEF4C(void *a1)
{
  type metadata accessor for CloudState();
  if (sub_22BA0876C())
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v3 = sub_22BA0FEFC();
    sub_22B936CA8(v3, qword_28141AD40);
    v4 = sub_22BA0FEDC();
    v5 = sub_22BA1046C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = 1;
      _os_log_impl(&dword_22B92A000, v4, v5, "Already finished telemetry not scheduling, current version: %ld", v6, 0xCu);
      MEMORY[0x23189ADD0](v6, -1, -1);
    }
  }

  else
  {
    type metadata accessor for CloudSyncFactory();
    sub_22B968F70(v8);
    if (!v1)
    {
      sub_22B96C35C(0, v7);
      sub_22B9BC988(v7, a1, v8, &unk_22BA185D8, 0);
      sub_22B936C4C(v7);
      sub_22B936C4C(v8);
    }
  }
}

uint64_t sub_22B9BF0D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *(v4 + 16);
  v10 = *(v4 + 24);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_22B945AC8;

  return sub_22B9B84D0(a1, a2, a3, a4, v11, v10);
}

uint64_t sub_22B9BF198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *(v4 + 16);
  v10 = *(v4 + 24);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_22B945AC8;

  return sub_22B9B89BC(a1, a2, a3, a4, v11, v10);
}

uint64_t sub_22B9BF260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 16);
  v11 = *(v4 + 24);
  v12 = *(v4 + 32);
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_22B945AC8;

  return sub_22B9B9048(a1, a2, a3, a4, v10, v11, v12);
}

uint64_t sub_22B9BF338(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22B945AC8;

  return sub_22B9B96E4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_22B9BF42C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22B9BF46C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22B943E68;

  return sub_22B9B96E4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_22B9BF534()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22B945AC8;

  return sub_22B9B6660(v2, v3);
}

uint64_t sub_22B9BF5E0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22B945AC8;

  return sub_22BA0493C(v2, v3, v4);
}

uint64_t sub_22B9BF6A0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22B9BF6E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22B945AC8;

  return sub_22BA04A24(a1, v4, v5, v6);
}

uint64_t sub_22B9BF7AC(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xBFu)
  {
    return swift_unknownObjectRetain();
  }

  return v3;
}

uint64_t sub_22B9BF7C0(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xBFu)
  {
    return swift_unknownObjectRelease();
  }

  return v3;
}

unint64_t sub_22B9BF7D4()
{
  result = qword_281416960;
  if (!qword_281416960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281416960);
  }

  return result;
}

unint64_t sub_22B9BF828()
{
  result = qword_281416A18;
  if (!qword_281416A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281416A18);
  }

  return result;
}

uint64_t sub_22B9BF898()
{
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v1 = sub_22BA0FEFC();
  v0[18] = sub_22B936CA8(v1, qword_28141AD40);
  v2 = sub_22BA0FEDC();
  v3 = sub_22BA1046C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22B92A000, v2, v3, "Fetching sync store statistics", v4, 2u);
    MEMORY[0x23189ADD0](v4, -1, -1);
  }

  if (qword_281416778 != -1)
  {
    swift_once();
  }

  v0[19] = xmmword_28141AEB0;
  swift_unknownObjectRetain();
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = sub_22B9BFA3C;

  return sub_22B9A9140();
}

uint64_t sub_22B9BFA3C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[2] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = v2;
  v4[21] = v2;

  if (v2)
  {
    v5 = sub_22B9BFD30;
  }

  else
  {
    swift_unknownObjectRelease();
    v5 = sub_22B9BFB60;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22B9BFB60()
{
  swift_unknownObjectRetain();
  v1 = swift_task_alloc();
  *(v0 + 176) = v1;
  *v1 = v0;
  v1[1] = sub_22B9BFC0C;

  return sub_22B9A9D5C();
}

uint64_t sub_22B9BFC0C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[6] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v4[9] = v2;
  v4[23] = v2;

  if (v2)
  {
    v5 = sub_22B9C0054;
  }

  else
  {
    swift_unknownObjectRelease();
    v5 = sub_22B9BFE84;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22B9BFD30()
{
  v1 = *(v0 + 168);
  swift_unknownObjectRelease();
  v2 = v1;
  v3 = sub_22BA0FEDC();
  v4 = sub_22BA1044C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_22B92A000, v3, v4, "Encountered error fetching sync store counts for statistics: %@", v5, 0xCu);
    sub_22B936BEC(v6, &qword_27D8D4CD0, qword_22BA14360);
    MEMORY[0x23189ADD0](v6, -1, -1);
    MEMORY[0x23189ADD0](v5, -1, -1);
  }

  swift_willThrow();
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_22B9BFE84()
{
  swift_unknownObjectRetain();
  v1 = swift_task_alloc();
  *(v0 + 192) = v1;
  *v1 = v0;
  v1[1] = sub_22B9BFF30;

  return sub_22B9AA594();
}

uint64_t sub_22B9BFF30(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[10] = v3;
  v4[11] = a1;
  v4[12] = a2;
  v4[13] = v2;
  v4[25] = v2;

  if (v2)
  {
    v5 = sub_22B9C0378;
  }

  else
  {
    swift_unknownObjectRelease();
    v5 = sub_22B9C01A8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22B9C0054()
{
  v1 = *(v0 + 184);
  swift_unknownObjectRelease();
  v2 = v1;
  v3 = sub_22BA0FEDC();
  v4 = sub_22BA1044C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_22B92A000, v3, v4, "Encountered error fetching sync store counts for statistics: %@", v5, 0xCu);
    sub_22B936BEC(v6, &qword_27D8D4CD0, qword_22BA14360);
    MEMORY[0x23189ADD0](v6, -1, -1);
    MEMORY[0x23189ADD0](v5, -1, -1);
  }

  swift_willThrow();
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_22B9C01A8()
{
  swift_unknownObjectRetain();
  v1 = swift_task_alloc();
  *(v0 + 208) = v1;
  *v1 = v0;
  v1[1] = sub_22B9C0254;

  return sub_22B9AAC90();
}

uint64_t sub_22B9C0254(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[14] = v3;
  v4[15] = a1;
  v4[16] = a2;
  v4[17] = v2;
  v4[27] = v2;

  if (v2)
  {
    v5 = sub_22B9C06E8;
  }

  else
  {
    swift_unknownObjectRelease();
    v5 = sub_22B9C04CC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22B9C0378()
{
  v1 = *(v0 + 200);
  swift_unknownObjectRelease();
  v2 = v1;
  v3 = sub_22BA0FEDC();
  v4 = sub_22BA1044C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_22B92A000, v3, v4, "Encountered error fetching sync store counts for statistics: %@", v5, 0xCu);
    sub_22B936BEC(v6, &qword_27D8D4CD0, qword_22BA14360);
    MEMORY[0x23189ADD0](v6, -1, -1);
    MEMORY[0x23189ADD0](v5, -1, -1);
  }

  swift_willThrow();
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_22B9C04CC()
{
  swift_unknownObjectRetain();
  v1 = swift_task_alloc();
  *(v0 + 224) = v1;
  *v1 = v0;
  v1[1] = sub_22B9C0578;

  return sub_22B9AB398();
}

uint64_t sub_22B9C0578(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 232) = v2;

  if (v2)
  {
    v7 = sub_22B9C0AF0;
  }

  else
  {
    v8 = v6[16];
    v9 = v6[11];
    v10 = v6[12];
    v11 = v6[7];
    v12 = v6[8];
    v13 = v6[4];
    v15 = v6[3];
    v16 = v6[15];
    swift_unknownObjectRelease();
    v6[30] = a2;
    v6[31] = a1;
    v6[32] = v8;
    v6[33] = v16;
    v6[34] = v10;
    v6[35] = v9;
    v6[36] = v12;
    v6[37] = v11;
    v6[38] = v13;
    v6[39] = v15;
    v7 = sub_22B9C083C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22B9C06E8()
{
  v1 = *(v0 + 216);
  swift_unknownObjectRelease();
  v2 = v1;
  v3 = sub_22BA0FEDC();
  v4 = sub_22BA1044C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_22B92A000, v3, v4, "Encountered error fetching sync store counts for statistics: %@", v5, 0xCu);
    sub_22B936BEC(v6, &qword_27D8D4CD0, qword_22BA14360);
    MEMORY[0x23189ADD0](v6, -1, -1);
    MEMORY[0x23189ADD0](v5, -1, -1);
  }

  swift_willThrow();
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_22B9C083C()
{
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[37];
  v4 = v0[35];
  v20 = v0[36];
  v21 = v0[34];
  v5 = v0[33];
  v6 = v0[31];
  v22 = v0[32];
  v23 = v0[30];
  v7 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_22B9BABE4(v1, 0xD000000000000014, 0x800000022BA1DF80, isUniquelyReferenced_nonNull_native);
  v9 = swift_isUniquelyReferenced_nonNull_native();
  sub_22B9BABE4(v3, 0xD000000000000017, 0x800000022BA1DFA0, v9);
  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_22B9BABE4(v4, 0xD00000000000001ALL, 0x800000022BA1DFC0, v10);
  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_22B9BABE4(v5, 0xD00000000000001ELL, 0x800000022BA1DFE0, v11);
  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_22B9BABE4(v6, 0xD000000000000023, 0x800000022BA1E000, v12);
  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_22B9BABE4(v2, 0xD000000000000013, 0x800000022BA1E030, v13);
  v14 = swift_isUniquelyReferenced_nonNull_native();
  sub_22B9BABE4(v20, 0xD000000000000016, 0x800000022BA1E050, v14);
  v15 = swift_isUniquelyReferenced_nonNull_native();
  sub_22B9BABE4(v21, 0xD000000000000019, 0x800000022BA1E070, v15);
  v16 = swift_isUniquelyReferenced_nonNull_native();
  sub_22B9BABE4(v22, 0xD00000000000001DLL, 0x800000022BA1E090, v16);
  v17 = swift_isUniquelyReferenced_nonNull_native();
  sub_22B9BABE4(v23, 0xD000000000000022, 0x800000022BA1E0B0, v17);
  v18 = v0[1];

  return v18(v7);
}

uint64_t sub_22B9C0AF0()
{
  v1 = *(v0 + 232);
  swift_unknownObjectRelease();
  v2 = v1;
  v3 = sub_22BA0FEDC();
  v4 = sub_22BA1044C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_22B92A000, v3, v4, "Encountered error fetching sync store counts for statistics: %@", v5, 0xCu);
    sub_22B936BEC(v6, &qword_27D8D4CD0, qword_22BA14360);
    MEMORY[0x23189ADD0](v6, -1, -1);
    MEMORY[0x23189ADD0](v5, -1, -1);
  }

  swift_willThrow();
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_22B9C0C44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B9C0C90(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_22B9C0CA8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 16))
  {
    return (*a1 + 2147483643);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22B9C0D00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

void *sub_22B9C0D50(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_22B9C0D98(char a1)
{
  result = 24936;
  switch(a1)
  {
    case 1:
      result = 25204;
      break;
    case 2:
      result = 0x6368746170787561;
      break;
    case 3:
      result = 116;
      break;
    case 4:
      result = 1936876918;
      break;
    case 5:
      result = 0x6368746170;
      break;
    case 6:
      result = 29545;
      break;
    case 7:
      result = 1768121705;
      break;
    case 8:
      result = 1685284201;
      break;
    case 9:
      result = 26473;
      break;
    case 10:
      result = 28276;
      break;
    case 11:
      result = 7627891;
      break;
    case 12:
      result = 7627875;
      break;
    case 13:
      result = 0x6469756761;
      break;
    case 14:
      result = 28262;
      break;
    case 15:
      result = 6841453;
      break;
    case 16:
      result = 26997;
      break;
    case 17:
      result = 6911347;
      break;
    case 18:
      result = 6911329;
      break;
    case 19:
      result = 29811;
      break;
    case 20:
      result = 0x74656D696DLL;
      break;
    case 21:
      result = 0x737465737361;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22B9C0F08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 320))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 192);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22B9C0F50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 312) = 0;
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 320) = 1;
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
      *(result + 192) = (a2 - 1);
      return result;
    }

    *(result + 320) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22B9C0FF4(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_22B9C0D98(*a1);
  v5 = v4;
  if (v3 == sub_22B9C0D98(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22BA10C6C();
  }

  return v8 & 1;
}

uint64_t sub_22B9C107C()
{
  v1 = *v0;
  sub_22BA10D3C();
  sub_22B9C0D98(v1);
  sub_22BA1008C();

  return sub_22BA10D6C();
}

uint64_t sub_22B9C10E0(uint64_t a1)
{
  sub_22B9C0D98(*v1);
  sub_22BA1008C();
}

uint64_t sub_22B9C1134(uint64_t a1)
{
  v2 = *v1;
  sub_22BA10D3C();
  sub_22B9C0D98(v2);
  sub_22BA1008C();

  return sub_22BA10D6C();
}

unint64_t sub_22B9C1194@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22B9C188C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_22B9C11C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22B9C0D98(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_22B9C11F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22B9C188C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22B9C122C(uint64_t a1)
{
  v2 = sub_22B9C26D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22B9C1268(uint64_t a1)
{
  v2 = sub_22B9C26D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22B9C12A4(void *a1)
{
  v3 = v1;
  v5 = sub_22B9349C8(&qword_27D8D5830, &unk_22BA18978);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7 - 8];
  sub_22B9358B4(a1, a1[3]);
  sub_22B9C26D4();
  sub_22BA10D9C();
  LOBYTE(v13) = 0;
  sub_22BA10B8C();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    sub_22BA10BBC();
    LOBYTE(v13) = 2;
    sub_22BA10B7C();
    LOBYTE(v13) = 3;
    sub_22BA10B7C();
    LOBYTE(v13) = 4;
    sub_22BA10B9C();
    LOBYTE(v13) = 5;
    sub_22BA10B7C();
    LOBYTE(v13) = 6;
    sub_22BA10B8C();
    LOBYTE(v13) = 7;
    sub_22BA10B7C();
    LOBYTE(v13) = 8;
    sub_22BA10B7C();
    LOBYTE(v13) = 9;
    sub_22BA10B8C();
    LOBYTE(v13) = 10;
    sub_22BA10B7C();
    LOBYTE(v13) = 11;
    sub_22BA10BBC();
    LOBYTE(v13) = 12;
    sub_22BA10BBC();
    LOBYTE(v13) = 13;
    sub_22BA10B7C();
    LOBYTE(v13) = 14;
    sub_22BA10B7C();
    LOBYTE(v13) = 15;
    sub_22BA10B7C();
    LOBYTE(v13) = 19;
    sub_22BA10B9C();
    LOBYTE(v13) = 20;
    sub_22BA10B7C();
    v16 = *(v3 + 232);
    v13 = *(v3 + 232);
    v12 = 16;
    sub_22B9C2758(&v16, v11);
    sub_22B968DB4();
    sub_22BA10BAC();
    sub_22B9359A8(v13, *(&v13 + 1));
    v15 = *(v3 + 248);
    v13 = *(v3 + 248);
    v12 = 17;
    sub_22B9C2758(&v15, v11);
    sub_22BA10BAC();
    sub_22B9359A8(v13, *(&v13 + 1));
    v13 = *(v3 + 264);
    v14 = v13;
    v12 = 18;
    sub_22B9C2758(&v14, v11);
    sub_22BA10BAC();
    sub_22B9359A8(v13, *(&v13 + 1));
    *&v13 = *(v3 + 312);
    v11[0] = 21;
    sub_22B9349C8(&qword_27D8D54A8, &qword_22BA18970);
    sub_22B9C27C8(&qword_27D8D5838, sub_22B9C284C, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_22BA10BAC();
  }

  return (*(v6 + 8))(v8, v5);
}

void *sub_22B9C1828@<X0>(void *a1@<X8>, void *a2@<X0>)
{
  result = sub_22B9C18E0(a2, v5);
  if (!v2)
  {
    return memcpy(a1, v5, 0x140uLL);
  }

  return result;
}

unint64_t sub_22B9C188C(uint64_t a1, uint64_t a2)
{
  v2 = sub_22BA10C7C();

  if (v2 >= 0x16)
  {
    return 22;
  }

  else
  {
    return v2;
  }
}

void *sub_22B9C18E0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_22B9349C8(&qword_27D8D5828, &qword_22BA18968);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v40 - v7;
  v9 = a1[3];
  v141 = a1;
  sub_22B9358B4(a1, v9);
  sub_22B9C26D4();
  sub_22BA10D8C();
  if (v2)
  {
    return sub_22B936C4C(v141);
  }

  v10 = v6;
  LOBYTE(v79) = 0;
  v11 = sub_22BA10ADC();
  LOBYTE(v79) = 1;
  v12 = sub_22BA10B0C();
  v139 = v13 & 1;
  LOBYTE(v79) = 2;
  v75 = sub_22BA10ACC();
  v76 = v15;
  LOBYTE(v79) = 3;
  v16 = sub_22BA10ACC();
  v72 = v17;
  v74 = v16;
  LOBYTE(v79) = 4;
  v71 = 0;
  v73 = sub_22BA10AEC();
  v137 = v18 & 1;
  LOBYTE(v79) = 5;
  v57 = sub_22BA10ACC();
  v70 = v20;
  LOBYTE(v79) = 6;
  v56 = sub_22BA10ADC();
  LOBYTE(v79) = 7;
  v55 = sub_22BA10ACC();
  v69 = v21;
  LOBYTE(v79) = 8;
  v54 = sub_22BA10ACC();
  v68 = v22;
  v77 = 0;
  LOBYTE(v79) = 9;
  v23 = sub_22BA10ADC();
  v77 = 0;
  v24 = v23;
  LOBYTE(v79) = 10;
  v53 = sub_22BA10ACC();
  v67 = v25;
  v77 = 0;
  LOBYTE(v79) = 11;
  v52 = sub_22BA10B0C();
  v77 = 0;
  v133 = v26 & 1;
  LOBYTE(v79) = 12;
  v51 = sub_22BA10B0C();
  v77 = 0;
  v131 = v27 & 1;
  LOBYTE(v79) = 13;
  v50 = sub_22BA10B1C();
  v66 = v28;
  v77 = 0;
  LOBYTE(v79) = 14;
  v49 = sub_22BA10ACC();
  v65 = v29;
  v77 = 0;
  LOBYTE(v79) = 15;
  v48 = sub_22BA10ACC();
  v64 = v30;
  v77 = 0;
  LOBYTE(v78[0]) = 16;
  v59 = sub_22B9363C8();
  v31 = v77;
  sub_22BA10AFC();
  v77 = v31;
  if (v31)
  {
    (*(v10 + 8))(v8, v5);
    LODWORD(v74) = 0;
    LODWORD(v75) = 0;
    LODWORD(v73) = 1;
    v19 = v71;
    sub_22B936C4C(v141);

    if (!v19)
    {
    }

    if (v73)
    {

      if (v74)
      {
        goto LABEL_12;
      }
    }

    else if (v74)
    {
LABEL_12:
      result = sub_22B9359A8(v63, v62);
      if ((v75 & 1) == 0)
      {
        return result;
      }

      return sub_22B9359A8(v61, v60);
    }

    if (!v75)
    {
      return result;
    }

    return sub_22B9359A8(v61, v60);
  }

  v62 = v80;
  v63 = v79;
  LOBYTE(v78[0]) = 17;
  sub_22BA10AFC();
  v77 = 0;
  v60 = v80;
  v61 = v79;
  LOBYTE(v78[0]) = 18;
  sub_22BA10AFC();
  v77 = 0;
  v58 = v80;
  v59 = v79;
  LOBYTE(v79) = 19;
  v47 = sub_22BA10AEC();
  v77 = 0;
  v129 = v32 & 1;
  LOBYTE(v79) = 20;
  v45 = sub_22BA10ACC();
  v46 = v33;
  v77 = 0;
  sub_22B9349C8(&qword_27D8D54A8, &qword_22BA18970);
  v126 = 21;
  sub_22B9C27C8(&qword_281414C60, sub_22B9931D0, MEMORY[0x277D83808], MEMORY[0x277D83528]);
  v34 = v77;
  sub_22BA10AFC();
  v77 = v34;
  (*(v10 + 8))(v8, v5);
  if (v34)
  {
    sub_22B936C4C(v141);

    sub_22B9359A8(v63, v62);
    sub_22B9359A8(v61, v60);
    sub_22B9359A8(v59, v58);
  }

  else
  {
    v40 = v127;
    LOBYTE(v78[0]) = v11;
    *(v78 + 1) = v140[0];
    HIDWORD(v78[0]) = *(v140 + 3);
    v43 = v12;
    v78[1] = v12;
    v42 = v139;
    LOBYTE(v78[2]) = v139;
    *(&v78[2] + 1) = *v138;
    HIDWORD(v78[2]) = *&v138[3];
    v78[3] = v75;
    v78[4] = v76;
    v78[5] = v74;
    v78[6] = v72;
    v78[7] = v73;
    v41 = v137;
    LOBYTE(v78[8]) = v137;
    *(&v78[8] + 1) = *v136;
    HIDWORD(v78[8]) = *&v136[3];
    v78[9] = v57;
    v78[10] = v70;
    LOBYTE(v78[11]) = v56;
    *(&v78[11] + 1) = *v135;
    HIDWORD(v78[11]) = *&v135[3];
    v78[12] = v55;
    v78[13] = v69;
    v78[14] = v54;
    v78[15] = v68;
    v44 = v24;
    LOBYTE(v78[16]) = v24;
    HIDWORD(v78[16]) = *&v134[3];
    *(&v78[16] + 1) = *v134;
    v78[17] = v53;
    v78[18] = v67;
    v78[19] = v52;
    LODWORD(v71) = v133;
    LOBYTE(v78[20]) = v133;
    HIDWORD(v78[20]) = *&v132[3];
    *(&v78[20] + 1) = *v132;
    v35 = v50;
    v78[21] = v51;
    *(&v78[22] + 1) = *v130;
    *(&v78[36] + 1) = *v128;
    v36 = v131;
    LOBYTE(v78[22]) = v131;
    HIDWORD(v78[22]) = *&v130[3];
    v37 = v66;
    v78[23] = v50;
    v78[24] = v66;
    v38 = v49;
    v78[25] = v49;
    v78[26] = v65;
    v78[27] = v48;
    v78[28] = v64;
    v78[29] = v63;
    v78[30] = v62;
    v78[31] = v61;
    v78[32] = v60;
    v78[33] = v59;
    v78[34] = v58;
    v78[35] = v47;
    HIDWORD(v78[36]) = *&v128[3];
    v39 = v129;
    LOBYTE(v78[36]) = v129;
    v78[37] = v45;
    v78[38] = v46;
    v78[39] = v127;
    sub_22B9AE744(v78, &v79);
    sub_22B936C4C(v141);
    LOBYTE(v79) = v11;
    v80 = v43;
    v81 = v42;
    v83 = v75;
    v84 = v76;
    v85 = v74;
    v86 = v72;
    v87 = v73;
    v88 = v41;
    v90 = v57;
    v91 = v70;
    v92 = v56;
    *(&v79 + 1) = v140[0];
    HIDWORD(v79) = *(v140 + 3);
    *v82 = *v138;
    *&v82[3] = *&v138[3];
    *&v89[3] = *&v136[3];
    *v89 = *v136;
    *v93 = *v135;
    *&v93[3] = *&v135[3];
    v94 = v55;
    v95 = v69;
    v96 = v54;
    v97 = v68;
    v98 = v44;
    *&v99[3] = *&v134[3];
    *v99 = *v134;
    v100 = v53;
    v101 = v67;
    v102 = v52;
    v103 = v71;
    *&v104[3] = *&v132[3];
    *v104 = *v132;
    v105 = v51;
    v106 = v36;
    *&v107[3] = *&v130[3];
    *v107 = *v130;
    v108 = v35;
    v109 = v37;
    v110 = v38;
    v111 = v65;
    v112 = v48;
    v113 = v64;
    v114 = v63;
    v115 = v62;
    v116 = v61;
    v117 = v60;
    v118 = v59;
    v119 = v58;
    v120 = v47;
    v121 = v39;
    *v122 = *v128;
    *&v122[3] = *&v128[3];
    v123 = v45;
    v124 = v46;
    v125 = v40;
    sub_22B9C2728(&v79);
    return memcpy(a2, v78, 0x140uLL);
  }
}

unint64_t sub_22B9C26D4()
{
  result = qword_281415650;
  if (!qword_281415650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281415650);
  }

  return result;
}

uint64_t sub_22B9C2758(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B9349C8(&qword_27D8D54F8, &unk_22BA180B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B9C27C8(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_22B948760(&qword_27D8D54A8, &qword_22BA18970);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22B9C284C()
{
  result = qword_27D8D5840;
  if (!qword_27D8D5840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5840);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SyncNotification(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEB)
  {
    goto LABEL_17;
  }

  if (a2 + 21 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 21) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 21;
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

      return (*a1 | (v4 << 8)) - 21;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v8 = v6 - 22;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SyncNotification(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEB)
  {
    v4 = 0;
  }

  if (a2 > 0xEA)
  {
    v5 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
    *result = a2 + 21;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22B9C29F4()
{
  result = qword_27D8D5848;
  if (!qword_27D8D5848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5848);
  }

  return result;
}

unint64_t sub_22B9C2A4C()
{
  result = qword_281415640;
  if (!qword_281415640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281415640);
  }

  return result;
}

unint64_t sub_22B9C2AA4()
{
  result = qword_281415648;
  if (!qword_281415648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281415648);
  }

  return result;
}

uint64_t sub_22B9C2B10(uint64_t a1)
{
  sub_22BA1008C();
}

unint64_t sub_22B9C2C50@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22B9C2E30(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_22B9C2C80(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF32766465747079;
  v4 = 0x72636E4574616863;
  v5 = 0xEF31566574616470;
  v6 = 0x556567617373656DLL;
  if (v2 != 5)
  {
    v6 = 0x6E776F6E6B6E75;
    v5 = 0xE700000000000000;
  }

  v7 = 0xEA0000000000746ELL;
  v8 = 0x656D686361747461;
  if (v2 != 3)
  {
    v8 = 0xD000000000000012;
    v7 = 0x800000022BA1BA10;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  if (v2 != 1)
  {
    v4 = 0xD000000000000012;
    v3 = 0x800000022BA1B9F0;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000012;
    v3 = 0x800000022BA1B9C0;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_22B9C2E30(uint64_t a1, uint64_t a2)
{
  v2 = sub_22BA10AAC();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_22B9C2E90()
{
  result = qword_27D8D5850;
  if (!qword_27D8D5850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5850);
  }

  return result;
}

unint64_t sub_22B9C2EE4()
{
  result = qword_27D8D5858;
  if (!qword_27D8D5858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5858);
  }

  return result;
}

Swift::Int __swiftcall CKRecordID.protocolBufferSize(for:)(Swift::Int a1)
{
  v1 = a1;
  v2 = __OFADD__(a1, 2);
  result = a1 + 2;
  if (v2)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  if (v1 >= 128)
  {
    while (1)
    {
      v4 = result + 1;
      if (__OFADD__(result, 1))
      {
        break;
      }

      v5 = v1 >> 14;
      v1 = v1 >> 7;
      ++result;
      if (!v5)
      {
        return v4;
      }
    }

    __break(1u);
    goto LABEL_8;
  }

  return result;
}

__n128 sub_22B9C2F84(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22B9C2F98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22B9C2FE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_22B9C3040(uint64_t a1)
{
  sub_22BA108FC();

  strcpy(&v19, "Summary for ");
  BYTE13(v19) = 0;
  HIWORD(v19) = -5120;

  v2 = sub_22BA10C1C();
  MEMORY[0x231899730](v2);

  result = MEMORY[0x231899730](0x203A736570797420, 0xE800000000000000);
  v4 = 0;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v18 = v19;
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v4;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = v10 | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    v15 = (*(a1 + 56) + 48 * v11);
    v16 = v15[1];
    v19 = *v15;
    v20[0] = v16;
    *(v20 + 9) = *(v15 + 25);

    MEMORY[0x231899730](v13, v14);

    MEMORY[0x231899730](32, 0xE100000000000000);
    v17 = sub_22B9C3378();
    MEMORY[0x231899730](v17);

    MEMORY[0x231899730](8233, 0xE200000000000000);
    MEMORY[0x231899730](40, 0xE100000000000000);
  }

  while (1)
  {
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v18;
    }

    v7 = *(a1 + 64 + 8 * v9);
    ++v4;
    if (v7)
    {
      v4 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22B9C3254(uint64_t result)
{
  v1 = 0;
  v2 = 0;
  v3 = 1 << *(result + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(result + 64);
  do
  {
    if (!v5)
    {
      while (1)
      {
        v6 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          break;
        }

        if (v6 >= ((v3 + 63) >> 6))
        {
          return v2;
        }

        v5 = *(result + 64 + 8 * v6);
        ++v1;
        if (v5)
        {
          v1 = v6;
          goto LABEL_9;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      return result;
    }

LABEL_9:
    v7 = (*(result + 56) + 48 * (__clz(__rbit64(v5)) | (v1 << 6)));
    v8 = v7[2];
    v9 = *v7 + v8;
    if (__OFADD__(*v7, v8))
    {
      goto LABEL_16;
    }

    v10 = v7[4];
    v11 = __OFADD__(v9, v10);
    v12 = v9 + v10;
    if (v11)
    {
      goto LABEL_17;
    }

    v5 &= v5 - 1;
    v11 = __OFADD__(v2, v12);
    v2 += v12;
  }

  while (!v11);
  __break(1u);
  return v2;
}

uint64_t sub_22B9C330C(uint64_t a1, char a2)
{
  if (!a2)
  {
    v5 = __OFADD__(*v2, a1);
    result = *v2 + a1;
    if (!v5)
    {
      v7 = 1;
      v3 = v2;
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  if (a2 == 1)
  {
    v3 = v2 + 2;
    v4 = v2[2];
    v5 = __OFADD__(v4, a1);
    result = v4 + a1;
    if (!v5)
    {
      v7 = 3;
LABEL_9:
      *v3 = result;
      LOBYTE(v2[v7]) = a2;
      return result;
    }

    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v3 = v2 + 4;
  v8 = v2[4];
  v5 = __OFADD__(v8, a1);
  result = v8 + a1;
  if (!v5)
  {
    v7 = 5;
    goto LABEL_9;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_22B9C3378()
{
  sub_22BA108FC();

  v0 = sub_22BA10C1C();
  MEMORY[0x231899730](v0);

  MEMORY[0x231899730](0x73696E6966202C5DLL, 0xEB000000005B2068);
  v1 = sub_22BA10C1C();
  MEMORY[0x231899730](v1);

  MEMORY[0x231899730](0x206C696166202C5DLL, 0xE90000000000005BLL);
  v2 = sub_22BA10C1C();
  MEMORY[0x231899730](v2);

  MEMORY[0x231899730](4071517, 0xE300000000000000);
  return 0x207472617473203CLL;
}

void sub_22B9C34D8(NSObject *a1, char a2, uint64_t a3, unint64_t a4, NSObject *a5)
{
  v6 = v5;
  v12 = *v5;
  if (*(v12 + 16) && (v13 = sub_22B990A58(a3, a4), (v14 & 1) != 0))
  {
    v15 = *(v12 + 56) + 48 * v13;
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);
    v19 = *(v15 + 24);
    v20 = *(v15 + 32);
    LOBYTE(v15) = *(v15 + 40);
    *&v50 = v16;
    BYTE8(v50) = v17;
    v51 = v18;
    v52 = v19;
    v53 = v20;
    v54 = v15;
    a1 = sub_22B9C330C(a1, a2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v55 = *v6;
    sub_22B9BAFB4(&v50, a3, a4, isUniquelyReferenced_nonNull_native);
    *v6 = v55;
    if (!a5)
    {
LABEL_4:
      if (qword_281414D18 != -1)
      {
        swift_once();
      }

      v22 = sub_22BA0FEFC();
      sub_22B936CA8(v22, qword_28141AD10);

      oslog = sub_22BA0FEDC();
      v23 = sub_22BA1043C();

      if (os_log_type_enabled(oslog, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v49 = v25;
        *v24 = 136315650;
        if (a2)
        {
          if (a2 == 1)
          {
            v26 = 0x6873696E6966;
          }

          else
          {
            v26 = 1818845542;
          }

          if (a2 == 1)
          {
            v27 = 0xE600000000000000;
          }

          else
          {
            v27 = 0xE400000000000000;
          }
        }

        else
        {
          v26 = 0x7472617473;
          v27 = 0xE500000000000000;
        }

        v46 = sub_22B99153C(v26, v27, &v49);

        *(v24 + 4) = v46;
        *(v24 + 12) = 2080;
        *(v24 + 14) = sub_22B99153C(a3, a4, &v49);
        *(v24 + 22) = 2048;
        *(v24 + 24) = a1;
        _os_log_impl(&dword_22B92A000, oslog, v23, "%s importing %s, count: %ld", v24, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x23189ADD0](v25, -1, -1);
        MEMORY[0x23189ADD0](v24, -1, -1);

        return;
      }

      v42 = oslog;

LABEL_32:

      return;
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v28 = 0;
        v29 = 0;
        v30 = a1;
      }

      else
      {
        v30 = 0;
        v29 = 0;
        v28 = a1;
      }
    }

    else
    {
      v28 = a2;
      v30 = a2;
      v29 = a1;
    }

    *&v55 = v29;
    BYTE8(v55) = 0;
    v56 = v30;
    v57 = 1;
    v58 = v28;
    v59 = 2;
    v31 = swift_isUniquelyReferenced_nonNull_native();
    v49 = *v6;
    sub_22B9BAFB4(&v55, a3, a4, v31);
    *v6 = v49;
    if (!a5)
    {
      goto LABEL_4;
    }
  }

  v32 = a5;
  if (qword_281414D18 != -1)
  {
    swift_once();
  }

  v33 = sub_22BA0FEFC();
  sub_22B936CA8(v33, qword_28141AD10);
  v34 = a5;

  v35 = sub_22BA0FEDC();
  v36 = sub_22BA1044C();

  if (!os_log_type_enabled(v35, v36))
  {

    v42 = a5;

    goto LABEL_32;
  }

  osloga = a1;
  v37 = swift_slowAlloc();
  v38 = swift_slowAlloc();
  v39 = swift_slowAlloc();
  v49 = v39;
  *v37 = 136315906;
  if (a2)
  {
    if (a2 == 1)
    {
      v40 = 0x6873696E6966;
    }

    else
    {
      v40 = 1818845542;
    }

    if (a2 == 1)
    {
      v41 = 0xE600000000000000;
    }

    else
    {
      v41 = 0xE400000000000000;
    }
  }

  else
  {
    v40 = 0x7472617473;
    v41 = 0xE500000000000000;
  }

  v43 = sub_22B99153C(v40, v41, &v49);

  *(v37 + 4) = v43;
  *(v37 + 12) = 2080;
  *(v37 + 14) = sub_22B99153C(a3, a4, &v49);
  *(v37 + 22) = 2048;
  *(v37 + 24) = osloga;
  *(v37 + 32) = 2112;
  v44 = a5;
  v45 = _swift_stdlib_bridgeErrorToNSError();
  *(v37 + 34) = v45;
  *v38 = v45;
  _os_log_impl(&dword_22B92A000, v35, v36, "%s importing %s, count: %ld, error: %@", v37, 0x2Au);
  sub_22B95DEF0(v38);
  MEMORY[0x23189ADD0](v38, -1, -1);
  swift_arrayDestroy();
  MEMORY[0x23189ADD0](v39, -1, -1);
  MEMORY[0x23189ADD0](v37, -1, -1);
}

uint64_t initializeBufferWithCopyOfBuffer for ImportSummary.TypeSummary.StateCount(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ImportSummary.TypeSummary.StateCount(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ImportSummary.TypeSummary.StateCount(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void sub_22B9C3B28(void *a1)
{
  v2 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18[-v3];
  v5 = type metadata accessor for ActionRecord(0);
  v6 = (a1 + *(v5 + 68));
  v8 = *v6;
  v7 = v6[1];
  if (v7)
  {
    sub_22B9349C8(&qword_27D8D5110, &unk_22BA15140);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22BA13CB0;
    *(inited + 32) = 0x6E6F737265505A46;
    *(inited + 40) = 0xEA00000000004449;
    *(inited + 48) = v8;
    *(inited + 56) = v7;

    v10 = sub_22B9BB884(inited);
    swift_setDeallocating();
    sub_22B967A40(inited + 32);
    sub_22B98BF80(v10);

    v11 = sub_22BA0FF5C();
  }

  else
  {
    v11 = 0;
  }

  sub_22B94498C(a1 + *(v5 + 64), v4);
  v12 = sub_22BA0FD8C();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v4, 1, v12) != 1)
  {
    v14 = sub_22BA0FCFC();
    (*(v13 + 8))(v4, v12);
  }

  if (a1[1])
  {
    v15 = sub_22BA0FFCC();
    if (a1[3])
    {
      goto LABEL_8;
    }
  }

  else
  {
    v15 = 0;
    if (a1[3])
    {
LABEL_8:
      v16 = sub_22BA0FFCC();
      if (!v7)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  v16 = 0;
  if (v7)
  {
LABEL_9:
    v7 = sub_22BA0FFCC();
  }

LABEL_10:
  v17 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSenderInfo:v11 time:v14 guid:v15 messageID:0 account:0 accountID:0 service:v16 handle:v7 roomName:0 unformattedID:0 countryCode:0 type:2];

  if (v17)
  {
    sub_22B9752A4(a1);
  }

  else
  {
    __break(1u);
  }
}

void sub_22B9C3DF8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = [v4 groupTitle];
    [v3 setTitle_];

    sub_22B977794();
    if (v6)
    {
      osloga = sub_22BA0FFCC();

      [v3 setOtherHandle_];
    }

    else
    {
      [v3 setOtherHandle_];
    }
  }

  else
  {
    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v9 = sub_22BA0FEFC();
    sub_22B936CA8(v9, qword_28141AD10);

    oslog = sub_22BA0FEDC();
    v10 = sub_22BA1044C();

    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v15 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_22B99153C(a2, a3, &v15);
      _os_log_impl(&dword_22B92A000, oslog, v10, "No Proto for IMGroupTitleChangeItem %s", v11, 0xCu);
      sub_22B936C4C(v12);
      MEMORY[0x23189ADD0](v12, -1, -1);
      MEMORY[0x23189ADD0](v11, -1, -1);
    }
  }
}

uint64_t sub_22B9C4068()
{
  v0 = sub_22B9349C8(&qword_27D8D5210, qword_22BA16040);
  sub_22B9C40C0(v0, qword_28141ACD0);
  v1 = sub_22B936CA8(v0, qword_28141ACD0);
  return sub_22B9C4124(v1);
}

uint64_t *sub_22B9C40C0(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_22B9C4124@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SyncStore(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  if (qword_281415E28 != -1)
  {
    swift_once();
  }

  v4 = sub_22BA0FFCC();
  v5 = sub_22BA0FFCC();
  v6 = [v3 URLForResource:v4 withExtension:v5];

  if (v6)
  {
    sub_22BA0FC0C();

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_22BA0FC4C();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v7, 1, v8);
}

uint64_t sub_22B9C4280()
{
  sub_22B936C4C((v0 + 16));
  v1 = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_identifier;
  v2 = sub_22BA0FDCC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_startDate;
  v4 = sub_22BA0FD8C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_22B936C4C((v0 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_activity));
  sub_22B936C4C((v0 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState));
  sub_22B936C4C((v0 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudDatabase));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_22B936C4C((v0 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_fileProvider));
  sub_22B936C4C((v0 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_telemetryService));

  sub_22B936C4C((v0 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_countStore));
  return v0;
}

uint64_t sub_22B9C43D8()
{
  sub_22B9C4280();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SyncContext(uint64_t a1)
{
  result = qword_281416638;
  if (!qword_281416638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B9C4484(uint64_t a1)
{
  result = sub_22BA0FDCC();
  if (v2 <= 0x3F)
  {
    result = sub_22BA0FD8C();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_22B9C45AC(uint64_t a1)
{
  type metadata accessor for RemoteRecord();
  sub_22B9349C8(&qword_27D8D5860, qword_22BA18DC8);
  result = sub_22BA1004C();
  qword_28141ADE8 = result;
  unk_28141ADF0 = v2;
  return result;
}

id sub_22B9C4680()
{
  result = sub_22B9C46A0();
  qword_28141ACC8 = result;
  return result;
}

id sub_22B9C46A0()
{
  v0 = sub_22B9349C8(&qword_27D8D5210, qword_22BA16040);
  MEMORY[0x28223BE20](v0);
  v2 = &v24 - v1;
  v3 = sub_22BA0FC4C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281414AF0 != -1)
  {
    swift_once();
  }

  v7 = sub_22B936CA8(v0, qword_28141ACD0);
  sub_22B9AE680(v7, v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_22B9C4AEC(v2);
LABEL_13:
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v18 = sub_22BA0FEFC();
    sub_22B936CA8(v18, qword_28141AD40);
    v19 = sub_22BA0FEDC();
    v20 = sub_22BA1044C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_22B92A000, v19, v20, "Error: failed to load object model for SyncContainer", v21, 2u);
      MEMORY[0x23189ADD0](v21, -1, -1);
    }

    if (qword_281415E28 != -1)
    {
      swift_once();
    }

    v22 = objc_allocWithZone(MEMORY[0x277CBE4A0]);
    v10 = sub_22BA0FFCC();
    v17 = [v22 initWithName_];
    goto LABEL_20;
  }

  (*(v4 + 32))(v6, v2, v3);
  v8 = objc_allocWithZone(MEMORY[0x277CBE450]);
  v9 = sub_22BA0FBBC();
  v10 = [v8 initWithContentsOfURL_];

  (*(v4 + 8))(v6, v3);
  if (!v10)
  {
    goto LABEL_13;
  }

  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v11 = sub_22BA0FEFC();
  sub_22B936CA8(v11, qword_28141AD40);
  v12 = sub_22BA0FEDC();
  v13 = sub_22BA1046C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_22B92A000, v12, v13, "Loaded object model for SyncContainer", v14, 2u);
    MEMORY[0x23189ADD0](v14, -1, -1);
  }

  if (qword_281415E28 != -1)
  {
    swift_once();
  }

  v15 = objc_allocWithZone(MEMORY[0x277CBE4A0]);
  v16 = sub_22BA0FFCC();
  v17 = [v15 initWithName:v16 managedObjectModel:v10];

LABEL_20:
  return v17;
}

uint64_t sub_22B9C4AEC(uint64_t a1)
{
  v2 = sub_22B9349C8(&qword_27D8D5210, qword_22BA16040);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22B9C4B70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000017 && 0x800000022BA1E1E0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_22BA10C6C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_22B9C4C04(uint64_t a1)
{
  v2 = sub_22B9C53E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22B9C4C40(uint64_t a1)
{
  v2 = sub_22B9C53E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22B9C4C7C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22B9349C8(&qword_27D8D5890, &qword_22BA18E70);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  sub_22B9358B4(a1, a1[3]);
  sub_22B9C551C();
  sub_22BA10D9C();
  v12 = 0;
  sub_22BA10BDC();
  if (!v3)
  {
    v11 = 1;
    sub_22BA10BDC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_22B9C4E04(void *a1, uint64_t a2)
{
  v4 = sub_22B9349C8(&qword_27D8D5868, &qword_22BA18E60);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  sub_22B9358B4(a1, a1[3]);
  sub_22B9C53E8();
  sub_22BA10D9C();
  v9[1] = a2;
  sub_22B9349C8(&qword_27D8D5878, &qword_22BA18E68);
  sub_22B9C543C();
  sub_22BA10BEC();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_22B9C4F7C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v3 = 0xD000000000000010;
  }

  if (v2)
  {
    v4 = "h";
  }

  else
  {
    v4 = "byteSizeExceeded";
  }

  if (*a2)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0xD000000000000010;
  }

  if (*a2)
  {
    v6 = "byteSizeExceeded";
  }

  else
  {
    v6 = "h";
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22BA10C6C();
  }

  return v8 & 1;
}

uint64_t sub_22B9C5024()
{
  sub_22BA10D3C();
  sub_22BA1008C();

  return sub_22BA10D6C();
}

uint64_t sub_22B9C50A0(uint64_t a1)
{
  sub_22BA1008C();
}

uint64_t sub_22B9C5108(uint64_t a1)
{
  sub_22BA10D3C();
  sub_22BA1008C();

  return sub_22BA10D6C();
}

uint64_t sub_22B9C5180@<X0>(char *a2@<X8>)
{
  v3 = sub_22BA10AAC();

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

void sub_22B9C51E0(unint64_t *a1@<X8>)
{
  v2 = "byteSizeExceeded";
  v3 = 0xD000000000000010;
  if (*v1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v2 = "h";
  }

  *a1 = v3;
  a1[1] = v2 | 0x8000000000000000;
}

uint64_t sub_22B9C526C()
{
  v1 = 0x5365676172657661;
  if (*v0 != 1)
  {
    v1 = 0x69614674696D696CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x756F436C61746F74;
  }
}

uint64_t sub_22B9C52DC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22B9C57F4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22B9C5304(uint64_t a1)
{
  v2 = sub_22B9C551C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22B9C5340(uint64_t a1)
{
  v2 = sub_22B9C551C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22B9C537C(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = 0;
    v4 = 0;
    v5 = a1 + 32;
    while (1)
    {
      v6 = *(v5 + 8 * v3);
      v7 = __OFADD__(v4, v6);
      v4 += v6;
      if (v7)
      {
        break;
      }

      if (result == ++v3)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_22B9C53E8()
{
  result = qword_27D8D5870;
  if (!qword_27D8D5870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5870);
  }

  return result;
}

unint64_t sub_22B9C543C()
{
  result = qword_27D8D5880;
  if (!qword_27D8D5880)
  {
    sub_22B948760(&qword_27D8D5878, &qword_22BA18E68);
    sub_22B9C54C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5880);
  }

  return result;
}

unint64_t sub_22B9C54C8()
{
  result = qword_27D8D5888;
  if (!qword_27D8D5888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5888);
  }

  return result;
}

unint64_t sub_22B9C551C()
{
  result = qword_27D8D5898;
  if (!qword_27D8D5898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5898);
  }

  return result;
}

uint64_t sub_22B9C5590(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_22B9C55E8()
{
  result = qword_27D8D58A0;
  if (!qword_27D8D58A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D58A0);
  }

  return result;
}

unint64_t sub_22B9C5640()
{
  result = qword_27D8D58A8;
  if (!qword_27D8D58A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D58A8);
  }

  return result;
}

unint64_t sub_22B9C5698()
{
  result = qword_27D8D58B0;
  if (!qword_27D8D58B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D58B0);
  }

  return result;
}

unint64_t sub_22B9C56F0()
{
  result = qword_27D8D58B8;
  if (!qword_27D8D58B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D58B8);
  }

  return result;
}

unint64_t sub_22B9C5748()
{
  result = qword_27D8D58C0;
  if (!qword_27D8D58C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D58C0);
  }

  return result;
}

unint64_t sub_22B9C57A0()
{
  result = qword_27D8D58C8;
  if (!qword_27D8D58C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D58C8);
  }

  return result;
}

uint64_t sub_22B9C57F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756F436C61746F74 && a2 == 0xEA0000000000746ELL;
  if (v4 || (sub_22BA10C6C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5365676172657661 && a2 == 0xEB00000000657A69 || (sub_22BA10C6C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69614674696D696CLL && a2 == 0xEC0000006572756CLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_22BA10C6C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_22B9C5930()
{
  result = qword_27D8D58D0;
  if (!qword_27D8D58D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D58D0);
  }

  return result;
}

unint64_t sub_22B9C5984()
{
  result = qword_27D8D58D8;
  if (!qword_27D8D58D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D58D8);
  }

  return result;
}

uint64_t type metadata accessor for ActionRecord(uint64_t a1)
{
  result = qword_281415F40;
  if (!qword_281415F40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22B9C5A6C(uint64_t a1)
{
  sub_22B9651AC(319, &qword_281414C40, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_22B934C68(319);
    if (v2 <= 0x3F)
    {
      sub_22B9651AC(319, qword_281416020, &type metadata for ActionProto);
      if (v3 <= 0x3F)
      {
        sub_22B9651AC(319, &qword_281415E38, &type metadata for MessageProto);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22B9C5BA4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a2;
  v3 = sub_22B9349C8(&qword_27D8D58F8, &qword_22BA19310);
  v107 = *(v3 - 8);
  v108 = v3;
  MEMORY[0x28223BE20](v3);
  v109 = &v101 - v4;
  v5 = sub_22B9349C8(&qword_27D8D4B80, &qword_22BA12C30);
  v110 = *(v5 - 8);
  v111 = v5;
  MEMORY[0x28223BE20](v5);
  v112 = &v101 - v6;
  v7 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v106 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v101 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v101 - v13;
  v15 = sub_22B9349C8(&qword_27D8D4B90, &qword_22BA12C40);
  v113 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v101 - v16;
  v18 = type metadata accessor for ActionRecord(0);
  MEMORY[0x28223BE20](v18);
  v20 = (&v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = a1[3];
  v115 = a1;
  sub_22B9358B4(a1, v21);
  sub_22B9358F8();
  v22 = v114;
  sub_22BA10D8C();
  if (v22)
  {
    sub_22B936C4C(v115);
    return;
  }

  v23 = v14;
  v24 = v113;
  v104 = v18;
  v114 = v20;
  LOBYTE(v116[0]) = 0;
  v25 = v17;
  v26 = sub_22BA10ACC();
  v27 = v114;
  *v114 = v26;
  v27[1] = v28;
  LOBYTE(v116[0]) = 1;
  v27[2] = sub_22BA10ACC();
  v27[3] = v29;
  LOBYTE(v116[0]) = 2;
  v102 = 0;
  v27[4] = sub_22BA10ACC();
  v27[5] = v30;
  LOBYTE(v116[0]) = 3;
  v27[6] = sub_22BA10ACC();
  v27[7] = v31;
  LOBYTE(v116[0]) = 4;
  v27[8] = sub_22BA10ACC();
  v27[9] = v32;
  LOBYTE(v116[0]) = 5;
  v33 = sub_22BA10ACC();
  v103 = 0;
  v27[10] = v33;
  v27[11] = v34;
  v35 = sub_22BA0FD8C();
  LOBYTE(v116[0]) = 6;
  sub_22B9C7D0C(&unk_281416C00, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v36 = v103;
  sub_22BA10AFC();
  v103 = v36;
  if (v36)
  {
    (*(v24 + 8))(v25, v15);
    v37 = 0;
    v38 = 0;
    v39 = 0;
    LODWORD(v113) = 0;
    goto LABEL_13;
  }

  sub_22B935A74(v23, v27 + v104[10]);
  LOBYTE(v116[0]) = 7;
  v40 = v103;
  sub_22BA10AFC();
  v103 = v40;
  if (v40)
  {
    (*(v24 + 8))(v25, v15);
    v38 = 0;
    v39 = 0;
    LODWORD(v113) = 0;
    v37 = 1;
    goto LABEL_13;
  }

  v41 = v35;
  sub_22B935A74(v12, v114 + v104[11]);
  LOBYTE(v116[0]) = 8;
  v42 = v103;
  v43 = sub_22BA10ACC();
  v103 = v42;
  if (v42)
  {
    (*(v24 + 8))(v25, v15);
    v39 = 0;
    LODWORD(v113) = 0;
    v37 = 1;
    v38 = 1;
    goto LABEL_13;
  }

  v45 = v25;
  v46 = (v114 + v104[12]);
  *v46 = v43;
  v46[1] = v44;
  sub_22B9358B4(v115, v115[3]);
  sub_22B93641C();
  v47 = v103;
  sub_22BA10D8C();
  v103 = v47;
  if (v47)
  {
    (*(v24 + 8))(v25, v15);
    LODWORD(v113) = 0;
    v37 = 1;
    v38 = 1;
    v39 = 1;
    goto LABEL_13;
  }

  LOBYTE(v116[0]) = 0;
  v48 = sub_22BA10ACC();
  v103 = 0;
  v53 = (v114 + v104[13]);
  *v53 = v48;
  v53[1] = v49;
  v121 = 1;
  sub_22B936470();
  v54 = v103;
  sub_22BA10B3C();
  v103 = v54;
  if (v54 || (v55 = v115, *(v114 + v104[14]) = v116[0], sub_22B9358B4(v55, v55[3]), sub_22B9C7D54(), v56 = v103, sub_22BA10D8C(), (v103 = v56) != 0))
  {
LABEL_31:
    (*(v110 + 8))(v112, v111);
    (*(v24 + 8))(v25, v15);
    v37 = 1;
    v38 = 1;
    v39 = 1;
    LODWORD(v113) = 1;
LABEL_13:
    v50 = v102;
    sub_22B936C4C(v115);
    v51 = v114;

    if (!v50)
    {
    }

    if (v37)
    {
      v52 = v104;
      sub_22B961B24(v51 + v104[10]);
      if (v38)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v52 = v104;
      if (v38)
      {
LABEL_22:
        sub_22B961B24(v51 + v52[11]);
        if ((v39 & 1) == 0)
        {
LABEL_23:
          if (!v113)
          {
            return;
          }

          goto LABEL_24;
        }

LABEL_18:

        if ((v113 & 1) == 0)
        {
          return;
        }

LABEL_24:

        return;
      }
    }

    if (!v39)
    {
      goto LABEL_23;
    }

    goto LABEL_18;
  }

  v121 = 1;
  sub_22B978580();
  v57 = v103;
  sub_22BA10B3C();
  v103 = v57;
  if (v57 || (*(v114 + v104[15]) = v116[0], LOBYTE(v116[0]) = 0, v58 = v103, v59 = sub_22BA10B0C(), (v103 = v58) != 0))
  {
    (*(v107 + 8))(v109, v108);
    goto LABEL_31;
  }

  v61 = v60;
  v62 = 1;
  v63 = 1;
  if ((v61 & 1) == 0)
  {
    v64 = [objc_opt_self() __im_dateWithNanosecondTimeIntervalSinceReferenceDate_];
    if (!v64)
    {
      __break(1u);
      return;
    }

    v65 = v64;
    sub_22BA0FD5C();

    v63 = 0;
  }

  v66 = v106;
  (*(*(v41 - 8) + 56))(v106, v63, 1, v41);
  sub_22B935A74(v66, v114 + v104[16]);
  LOBYTE(v116[0]) = 1;
  v67 = v103;
  v68 = sub_22BA10ACC();
  v70 = v67;
  if (v67)
  {
    (*(v107 + 8))(v109, v108);
    (*(v110 + 8))(v112, v111);
    (*(v24 + 8))(v45, v15);
    v71 = 0;
    v72 = 0;
    v62 = 0;
    v73 = 0;
    v103 = v67;
    goto LABEL_44;
  }

  v74 = (v114 + v104[17]);
  *v74 = v68;
  v74[1] = v69;
  LOBYTE(v116[0]) = 2;
  v75 = sub_22BA10ACC();
  v103 = 0;
  v76 = (v114 + v104[18]);
  *v76 = v75;
  v76[1] = v77;
  LOBYTE(v116[0]) = 3;
  v78 = v103;
  v79 = sub_22BA10ACC();
  v103 = v78;
  if (v78)
  {
    (*(v107 + 8))(v109, v108);
    (*(v110 + 8))(v112, v111);
    (*(v24 + 8))(v45, v15);
    v72 = 0;
    v62 = 0;
    v73 = 0;
    v71 = 1;
    goto LABEL_44;
  }

  v81 = (v114 + v104[19]);
  *v81 = v79;
  v81[1] = v80;
  sub_22B935B38(v115, v116);
  v82 = v103;
  sub_22B977E78(v116, v117);
  v103 = v82;
  if (v82)
  {
    (*(v107 + 8))(v109, v108);
    (*(v110 + 8))(v112, v111);
    (*(v24 + 8))(v45, v15);
    v62 = 0;
LABEL_43:
    v73 = 0;
    v71 = 1;
    v72 = 1;
    goto LABEL_44;
  }

  v83 = v115;
  v84 = v114 + v104[20];
  *v84 = v117[0];
  *(v84 + 8) = v118;
  *(v84 + 24) = v119;
  *(v84 + 40) = v120;
  sub_22B935B38(v83, v116);
  v85 = v103;
  sub_22B9B2FD4(v116);
  v103 = v85;
  if (v85)
  {
    (*(v107 + 8))(v109, v108);
    (*(v110 + 8))(v112, v111);
    (*(v24 + 8))(v45, v15);
    goto LABEL_43;
  }

  v93 = (v114 + v104[21]);
  *v93 = v86;
  v93[1] = v87;
  v93[2] = v88;
  v93[3] = v89;
  LOBYTE(v116[0]) = 4;
  v94 = v103;
  v95 = sub_22BA10ACC();
  v103 = v94;
  if (!v94)
  {
    v97 = v95;
    v98 = v96;
    (*(v107 + 8))(v109, v108);
    (*(v110 + 8))(v112, v111);
    (*(v24 + 8))(v45, v15);
    v99 = v114;
    v100 = (v114 + v104[22]);
    *v100 = v97;
    v100[1] = v98;
    sub_22B9C7DA8(v99, v105);
    sub_22B936C4C(v115);
    sub_22B9752A4(v99);
    return;
  }

  (*(v107 + 8))(v109, v108);
  (*(v110 + 8))(v112, v111);
  (*(v24 + 8))(v45, v15);
  v71 = 1;
  v72 = 1;
  v73 = 1;
LABEL_44:
  sub_22B936C4C(v115);
  v90 = v114;

  v91 = v104;
  sub_22B961B24(v90 + v104[10]);
  sub_22B961B24(v90 + v91[11]);

  sub_22B961B24(v90 + v91[16]);
  if (v70)
  {
    if (v71)
    {
      goto LABEL_46;
    }
  }

  else
  {

    if (v71)
    {
LABEL_46:

      if ((v72 & 1) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_52;
    }
  }

  if (!v72)
  {
LABEL_47:
    if (v62)
    {
      goto LABEL_48;
    }

    goto LABEL_53;
  }

LABEL_52:

  if (v62)
  {
LABEL_48:
    v92 = (v114 + v104[20]);
    sub_22B9C7C98(*v92, v92[1], v92[2], v92[3], v92[4], v92[5], v92[6]);
    if (v73)
    {
      goto LABEL_54;
    }

    return;
  }

LABEL_53:
  if (v73)
  {
LABEL_54:
    sub_22B93594C(*(v114 + v104[21]), *(v114 + v104[21] + 8), *(v114 + v104[21] + 16), *(v114 + v104[21] + 24));
  }
}

uint64_t sub_22B9C6C44()
{
  v1 = *v0;
  sub_22BA10D3C();
  MEMORY[0x23189A3B0](v1 + 3);
  return sub_22BA10D6C();
}

uint64_t sub_22B9C6CBC(uint64_t a1)
{
  v2 = *v1;
  sub_22BA10D3C();
  MEMORY[0x23189A3B0](v2 + 3);
  return sub_22BA10D6C();
}

uint64_t sub_22B9C6D00@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22B9C7E0C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_22B9C6DA0()
{
  result = qword_27D8D58E0;
  if (!qword_27D8D58E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D58E0);
  }

  return result;
}

uint64_t sub_22B9C6E00()
{
  sub_22BA10D3C();
  sub_22BA1008C();

  return sub_22BA10D6C();
}

uint64_t sub_22B9C6EC8(uint64_t a1)
{
  sub_22BA1008C();
}

uint64_t sub_22B9C6F7C(uint64_t a1)
{
  sub_22BA10D3C();
  sub_22BA1008C();

  return sub_22BA10D6C();
}

unint64_t sub_22B9C7040@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22B9C7FA0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_22B9C7070(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701669236;
  v5 = 0xE500000000000000;
  v6 = 0x6469754772;
  v7 = 0xE400000000000000;
  v8 = 1682531172;
  if (v2 != 3)
  {
    v8 = 0x444974616863;
    v7 = 0xE600000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x7265646E6573;
    v3 = 0xE600000000000000;
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

uint64_t sub_22B9C70F4()
{
  v1 = *v0;
  v2 = 1701669236;
  v3 = 0x6469754772;
  v4 = 1682531172;
  if (v1 != 3)
  {
    v4 = 0x444974616863;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7265646E6573;
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

unint64_t sub_22B9C7174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22B9C7FA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22B9C71A8(uint64_t a1)
{
  v2 = sub_22B9C7D54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22B9C71E4(uint64_t a1)
{
  v2 = sub_22B9C7D54();

  return MEMORY[0x2821FE720](a1, v2);
}

id sub_22B9C7220()
{
  v1 = v0;
  v2 = type metadata accessor for ActionRecord(0);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v117 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = (&v117 - v7);
  v9 = *(v1 + *(v6 + 60));
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      sub_22B951A54(0, &qword_27D8D5908, 0x277D1AA50);
      sub_22B9C7DA8(v1, v8);
      sub_22B9E7DF4(v8);
      v11 = v46;
      v47 = (v1 + v2[20]);
      v48 = v47[1];
      if (v48 == 1)
      {
        goto LABEL_19;
      }

      v120 = v5;
      v49 = v47[2];
      v50 = v47[3];
      v51 = v47[4];
      v52 = v47[5];
      v53 = v47[6];
      v119 = *v47;
      v122[0] = v119;
      v123 = v48;
      v124 = v49;
      v125 = v50;
      v126 = v51;
      v127 = v52;
      v128 = v53;
      v54 = v53;
      v55 = v48;
      v56 = v49;
      v57 = v50;
      v118 = v51;
      v58 = v51;
      v117 = v52;
      v59 = v52;
      result = [v11 guid];
      if (result)
      {
        v60 = result;
        v61 = sub_22BA0FFFC();
        v63 = v62;

        sub_22B9E7FA8(v122, v61, v63);

        v65 = v118;
        v64 = v119;
        v66 = v48;
        v67 = v49;
        v68 = v50;
        v69 = v117;
        v70 = v53;
LABEL_18:
        sub_22B9C7C98(v64, v66, v67, v68, v65, v69, v70);
        v5 = v120;
        goto LABEL_19;
      }

      __break(1u);
    }

    else
    {
      if (v9 != 3)
      {
        sub_22B951A54(0, &qword_27D8D5910, 0x277D1A9E0);
        sub_22B9C7DA8(v1, v8);
        sub_22B974F2C(v8);
        v11 = v71;
        v72 = (v1 + v2[20]);
        v13 = v72[1];
        if (v13 == 1)
        {
          goto LABEL_19;
        }

        v73 = *v72;
        v15 = v72[2];
        v16 = v72[3];
        v18 = v72[4];
        v74 = v72[5];
        v75 = v72[6];
        v119 = v73;
        v120 = v5;
        v122[0] = v73;
        v123 = v13;
        v124 = v15;
        v125 = v16;
        v126 = v18;
        v127 = v74;
        v128 = v75;
        v118 = v75;
        v76 = v75;
        v77 = v13;
        v78 = v15;
        v79 = v16;
        v80 = v18;
        v117 = v74;
        v81 = v74;
        result = [v11 guid];
        if (result)
        {
          v82 = result;
          v83 = sub_22BA0FFFC();
          v85 = v84;

          sub_22B9750E0(v122, v83, v85);
          goto LABEL_17;
        }

LABEL_60:
        __break(1u);
        return result;
      }

      sub_22B951A54(0, &qword_27D8D5920, 0x277D1AB28);
      sub_22B9C7DA8(v1, v8);
      sub_22BA0A048(v8);
      v11 = v10;
      v12 = (v1 + v2[20]);
      v13 = v12[1];
      if (v13 == 1)
      {
        goto LABEL_19;
      }

      v14 = *v12;
      v15 = v12[2];
      v16 = v12[3];
      v18 = v12[4];
      v17 = v12[5];
      v19 = v12[6];
      v119 = v14;
      v120 = v5;
      v122[0] = v14;
      v123 = v13;
      v124 = v15;
      v125 = v16;
      v126 = v18;
      v127 = v17;
      v128 = v19;
      v118 = v19;
      v20 = v19;
      v21 = v13;
      v22 = v15;
      v23 = v16;
      v24 = v18;
      v117 = v17;
      v25 = v17;
      result = [v11 guid];
      if (result)
      {
        v27 = result;
        v28 = sub_22BA0FFFC();
        v30 = v29;

        sub_22BA0A2A0(v122, v28, v30);
LABEL_17:

        v70 = v118;
        v64 = v119;
        v66 = v13;
        v67 = v15;
        v68 = v16;
        v65 = v18;
        v69 = v117;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (*(v1 + *(v6 + 60)))
  {
    sub_22B951A54(0, &qword_27D8D5918, 0x277D1AA38);
    sub_22B9C7DA8(v1, v8);
    sub_22B9774B8(v8);
    v11 = v88;
    v86 = v1[3];
    if (v86)
    {
      goto LABEL_20;
    }

LABEL_22:
    v89 = v11;
    goto LABEL_23;
  }

  sub_22B951A54(0, &qword_27D8D5928, 0x277D1A9F0);
  sub_22B9C7DA8(v1, v8);
  sub_22B9C3B28(v8);
  v11 = v31;
  v32 = (v1 + v2[20]);
  v13 = v32[1];
  if (v13 != 1)
  {
    v33 = *v32;
    v15 = v32[2];
    v16 = v32[3];
    v18 = v32[4];
    v34 = v32[5];
    v35 = v32[6];
    v119 = v33;
    v120 = v5;
    v122[0] = v33;
    v123 = v13;
    v124 = v15;
    v125 = v16;
    v126 = v18;
    v127 = v34;
    v128 = v35;
    v118 = v35;
    v36 = v35;
    v37 = v13;
    v38 = v15;
    v39 = v16;
    v40 = v18;
    v117 = v34;
    v41 = v34;
    result = [v11 guid];
    if (result)
    {
      v42 = result;
      v43 = sub_22BA0FFFC();
      v45 = v44;

      sub_22B9C3DF8(v122, v43, v45);
      goto LABEL_17;
    }

    goto LABEL_59;
  }

LABEL_19:
  v86 = v1[3];
  if (!v86)
  {
    goto LABEL_22;
  }

LABEL_20:
  v87 = v11;
  v86 = sub_22BA0FFCC();
LABEL_23:
  v90 = &off_27871A000;
  [v11 setService_];

  v91 = (v1 + v2[21]);
  v92 = *v91;
  v93 = v91[3];
  if (v92 != 1 && v93 != 0)
  {
    v95 = v93;
    if ([v95 hasActualService])
    {
      if (qword_281414D30 != -1)
      {
        swift_once();
      }

      v96 = sub_22BA0FEFC();
      sub_22B936CA8(v96, qword_28141AD40);
      sub_22B9C7DA8(v1, v5);
      v97 = v95;
      v98 = sub_22BA0FEDC();
      v99 = sub_22BA1046C();

      if (os_log_type_enabled(v98, v99))
      {
        v120 = v5;
        v100 = swift_slowAlloc();
        v119 = swift_slowAlloc();
        v121 = v119;
        *v100 = 136315394;
        v101 = [v97 actualService];
        if (v101)
        {
          v102 = v101;
          v103 = sub_22BA0FFFC();
          v105 = v104;
        }

        else
        {
          v105 = 0xE300000000000000;
          v103 = 7104878;
        }

        LODWORD(v118) = v99;
        v106 = sub_22B99153C(v103, v105, &v121);

        *(v100 + 4) = v106;
        *(v100 + 12) = 2080;
        v107 = v120;
        if (*(v120 + 3))
        {
          v108 = *(v120 + 2);
          v109 = *(v120 + 3);
          v90 = &off_27871A000;
        }

        else
        {
          v109 = 0xE300000000000000;
          v90 = &off_27871A000;
          v108 = 7104878;
        }

        sub_22B9752A4(v107);
        v110 = sub_22B99153C(v108, v109, &v121);

        *(v100 + 14) = v110;
        _os_log_impl(&dword_22B92A000, v98, v118, "using proto4 service %s over %s", v100, 0x16u);
        v111 = v119;
        swift_arrayDestroy();
        MEMORY[0x23189ADD0](v111, -1, -1);
        MEMORY[0x23189ADD0](v100, -1, -1);
      }

      else
      {

        sub_22B9752A4(v5);
      }

      v95 = [v97 actualService];
      [v11 v90[268]];
    }
  }

  if (*(v1 + v2[19] + 8))
  {
    v112 = sub_22BA0FFCC();
  }

  else
  {
    v112 = 0;
  }

  [v11 setDestinationCallerID_];

  if (*(v1 + v2[18] + 8))
  {
    v113 = sub_22BA0FFCC();
  }

  else
  {
    v113 = 0;
  }

  [v11 setReplyToGUID_];

  if (*(v1 + v2[22] + 8))
  {
    v114 = sub_22BA0FFCC();
  }

  else
  {
    v114 = 0;
  }

  [v11 setCloudKitChatID_];

  if (v1[7])
  {
    v115 = sub_22BA0FFCC();
  }

  else
  {
    v115 = 0;
  }

  [v11 setCloudKitRecordID_];

  if (v1[5])
  {
    v116 = sub_22BA0FFCC();
  }

  else
  {
    v116 = 0;
  }

  [v11 setCloudKitRecordChangeTag_];

  [v11 setCloudKitSyncState_];
  [v11 setCloudKitServerChangeTokenBlob_];
  return v11;
}