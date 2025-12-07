__n128 sub_100001CCC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100001CE0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100001D00(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 64) = v3;
  return result;
}

__n128 sub_100001D6C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_100001D80(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100001DA0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 20) = v3;
  return result;
}

__n128 sub_100001DE0(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100001DEC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100001E0C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

void sub_100001E4C(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_100002028(uint64_t a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v4[5] = sub_100003EE4(0, &qword_10003C330, PRPosterDescriptor_ptr);
  v7 = sub_1000233CC();
  v4[6] = v7;
  v8 = a2;
  v9 = a4;
  v10 = swift_task_alloc();
  v4[7] = v10;
  *v10 = v4;
  v10[1] = sub_100002140;

  return sub_100003560(v7);
}

uint64_t sub_100002140(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *(*v2 + 16);
  v7 = *v2;

  if (v3)
  {
    v8 = sub_10002307C();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    isa = sub_1000234DC().super.isa;

    v10 = isa;
    v9 = 0;
    v8 = isa;
  }

  v12 = *(v4 + 32);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

id sub_100002340(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for UpdateController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100002398(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000023E0()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100002430()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000024F0;

  return sub_100002028(v2, v3, v5, v4);
}

uint64_t sub_1000024F0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000025E4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_100003F84;

  return v6();
}

uint64_t sub_1000026D0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100003F84;

  return sub_1000025E4(v2, v3, v4);
}

uint64_t sub_100002790(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1000024F0;

  return v7();
}

uint64_t sub_100002878()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000028B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100003F84;

  return sub_100002790(a1, v4, v5, v6);
}

uint64_t sub_100002984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002398(&qword_10003C328, &qword_100026338);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_100002C40(a3, v23 - v10);
  v12 = sub_10002354C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100002CB0(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_10002353C();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_10002352C();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_10002343C() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_100002CB0(a3);

    return v21;
  }

LABEL_8:
  sub_100002CB0(a3);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_100002C40(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002398(&qword_10003C328, &qword_100026338);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100002CB0(uint64_t a1)
{
  v2 = sub_100002398(&qword_10003C328, &qword_100026338);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100002D18(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100002E10;

  return v6(a1);
}

uint64_t sub_100002E10()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100002F08()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100002F40(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100003F84;

  return sub_100002D18(a1, v4);
}

uint64_t sub_100002FF8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000024F0;

  return sub_100002D18(a1, v4);
}

void *sub_1000030B0(void *result, int64_t a2, char a3, void *a4)
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
    sub_100002398(&qword_10003C350, &qword_100026398);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100002398(&qword_10003C358, &unk_1000263A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1000031F8(void *a1, unsigned __int8 a2)
{
  if (a2 == 1)
  {
  }

  else
  {
    v4 = sub_1000237AC();

    if ((v4 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v5 = [a1 preferredTimeFontConfigurations];
  sub_100003EE4(0, &qword_10003C348, PRTimeFontConfiguration_ptr);
  v6 = sub_1000234EC();

  if (v6 >> 62)
  {
    v7 = sub_10002373C();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7)
  {
    v8 = [a1 preferredTimeFontConfigurations];
    v9 = sub_1000234EC();

    if ((v9 & 0xC000000000000001) != 0)
    {
      v10 = sub_10002367C();
    }

    else
    {
      if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_35:
        swift_once();
LABEL_15:
        v15 = sub_10002335C();
        sub_100003EAC(v15, qword_10003D508);
        v16 = sub_10002333C();
        v17 = sub_10002358C();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          v27 = v19;
          *v18 = 136315138;
          v20 = 0xE600000000000000;
          v21 = 0x73746867696CLL;
          if (a2 != 2)
          {
            v21 = 1684632167;
            v20 = 0xE400000000000000;
          }

          v22 = 0xE700000000000000;
          if (a2)
          {
            v23 = 0x656C636974726170;
          }

          else
          {
            v23 = 0x73657069727473;
          }

          if (a2)
          {
            v22 = 0xE900000000000073;
          }

          if (a2 <= 1u)
          {
            v24 = v23;
          }

          else
          {
            v24 = v21;
          }

          if (a2 <= 1u)
          {
            v25 = v22;
          }

          else
          {
            v25 = v20;
          }

          v26 = sub_10000C980(v24, v25, &v27);

          *(v18 + 4) = v26;
          _os_log_impl(&_mh_execute_header, v16, v17, "descriptor for “%s” does not have current schema, will be updated", v18, 0xCu);
          sub_100003F2C(v19);
        }

        return 0;
      }

      v10 = *(v9 + 32);
    }

    v11 = v10;

    [v11 weight];
    v13 = v12;

    if (v13 >= 1.0)
    {
LABEL_12:
      if (sub_1000118B8(a1))
      {
        return 1;
      }

      if (qword_10003BEA8 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_35;
    }
  }

  return 0;
}

uint64_t sub_100003580()
{
  v63 = v0;
  v1 = 0;
  v2 = _swiftEmptyArrayStorage;
  do
  {
    v4 = *(&off_100034E20 + v1 + 32);
    if (v4 == 2)
    {
      v9 = v2;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v2 = v9;
      }

      else
      {
        v2 = sub_1000030B0(0, v9[2] + 1, 1, v9);
      }

      v11 = v2[2];
      v10 = v2[3];
      v8 = v11 + 1;
      if (v11 >= v10 >> 1)
      {
        v2 = sub_1000030B0((v10 > 1), v11 + 1, 1, v2);
      }

      v2[2] = v8;
      v12 = &v2[3 * v11];
      *(v12 + 32) = 2;
      *(v12 + 5) = xmmword_1000262D0;
    }

    else if (v4 == 3)
    {
      v5 = v2;

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v2 = v5;
      }

      else
      {
        v2 = sub_1000030B0(0, v5[2] + 1, 1, v5);
      }

      v7 = v2[2];
      v6 = v2[3];
      v8 = v7 + 1;
      if (v7 >= v6 >> 1)
      {
        v2 = sub_1000030B0((v6 > 1), v7 + 1, 1, v2);
      }

      v2[2] = v8;
      v3 = &v2[3 * v7];
      *(v3 + 32) = 3;
      v3[5] = *"fill";
      v3[6] = 0xE400000000000000;
    }

    else
    {
      v13 = v2;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v2 = v13;
      }

      else
      {
        v2 = sub_1000030B0(0, v13[2] + 1, 1, v13);
      }

      v15 = v2[2];
      v14 = v2[3];
      v8 = v15 + 1;
      if (v15 >= v14 >> 1)
      {
        v2 = sub_1000030B0((v14 > 1), v15 + 1, 1, v2);
      }

      v2[2] = v8;
      v16 = &v2[3 * v15];
      *(v16 + 32) = v4;
      v16[5] = 0;
      v16[6] = 0;
    }

    ++v1;
  }

  while (v1 != 4);
  v60 = *(v58 + 16);
  v17 = (v2 + 6);
  v56 = PRTimeFontIdentifierSoft;
  v57 = PRTimeFontIdentifierRounded;
  do
  {
    v18 = *(v17 - 16);
    v19 = *(v17 - 1);
    v20 = *v17;
    if (*v17)
    {
      v61 = 0;
      v62 = 0xE000000000000000;
      v21 = 0x73746867696CLL;
      if (v18 != 2)
      {
        v21 = 1684632167;
      }

      v22 = 0xE600000000000000;
      if (v18 != 2)
      {
        v22 = 0xE400000000000000;
      }

      v23 = 0x656C636974726170;
      if (!v18)
      {
        v23 = 0x73657069727473;
      }

      v24 = 0xE900000000000073;
      if (!v18)
      {
        v24 = 0xE700000000000000;
      }

      if (v18 <= 1)
      {
        v25 = v23;
      }

      else
      {
        v25 = v21;
      }

      if (v18 <= 1)
      {
        v26 = v24;
      }

      else
      {
        v26 = v22;
      }

      swift_bridgeObjectRetain_n();
      v65._countAndFlagsBits = v25;
      v65._object = v26;
      sub_10002348C(v65);

      v66._countAndFlagsBits = 45;
      v66._object = 0xE100000000000000;
      sub_10002348C(v66);
      v67._countAndFlagsBits = v19;
      v67._object = v20;
      sub_10002348C(v67);

      v27 = v61;
      v28 = v62;
    }

    else
    {
      v29 = 0x73746867696CLL;
      if (v18 != 2)
      {
        v29 = 1684632167;
      }

      v30 = 0xE600000000000000;
      if (v18 != 2)
      {
        v30 = 0xE400000000000000;
      }

      v31 = 0x656C636974726170;
      if (!*(v17 - 16))
      {
        v31 = 0x73657069727473;
      }

      v32 = 0xE900000000000073;
      if (!*(v17 - 16))
      {
        v32 = 0xE700000000000000;
      }

      if (*(v17 - 16) <= 1u)
      {
        v27 = v31;
      }

      else
      {
        v27 = v29;
      }

      if (*(v17 - 16) <= 1u)
      {
        v28 = v32;
      }

      else
      {
        v28 = v30;
      }
    }

    if (*(v60 + 16))
    {
      v33 = sub_1000058D0(v27, v28);
      v35 = v34;

      if (v35)
      {
        v36 = *(*(v60 + 56) + 8 * v33);
        if (sub_1000031F8(v36, v18))
        {

          goto LABEL_74;
        }
      }
    }

    else
    {
    }

    if (qword_10003BEA8 != -1)
    {
      swift_once();
    }

    v37 = sub_10002335C();
    sub_100003EAC(v37, qword_10003D508);

    v38 = sub_10002333C();
    v39 = sub_10002358C();

    v59 = v19;
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v61 = v41;
      *v40 = 136315138;
      *(v40 + 4) = sub_10000C980(v27, v28, &v61);
      _os_log_impl(&_mh_execute_header, v38, v39, "building new descriptor for “%s”", v40, 0xCu);
      sub_100003F2C(v41);
    }

    v42 = sub_10002340C();

    v36 = [objc_opt_self() mutableDescriptorWithIdentifier:v42];

    if (v18 > 1)
    {
      sub_100002398(&qword_10003C338, &qword_100026390);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_1000262E0;
      if (v18 == 2)
      {
        v44 = [objc_allocWithZone(PRTimeFontConfiguration) initWithTimeFontIdentifier:v57 weight:600.0];
      }

      else
      {
        *(v43 + 32) = [objc_opt_self() vibrantMonochromeColor];
        sub_100003EE4(0, &qword_10003C340, PRPosterColor_ptr);
        isa = sub_1000234DC().super.isa;

        [v36 setPreferredTitleColors:isa];

        v43 = swift_allocObject();
        *(v43 + 16) = xmmword_1000262E0;
        v44 = [objc_allocWithZone(PRTimeFontConfiguration) initWithTimeFontIdentifier:v56 weight:1000.0];
      }

      *(v43 + 32) = v44;
      sub_100003EE4(0, &qword_10003C348, PRTimeFontConfiguration_ptr);
      v52 = sub_1000234DC().super.isa;

      [v36 setPreferredTimeFontConfigurations:v52];

      v50 = v59;
    }

    else
    {

      if (v18)
      {
        sub_100002398(&qword_10003C338, &qword_100026390);
        v45 = swift_allocObject();
        *(v45 + 16) = xmmword_1000262F0;
        v46 = objc_opt_self();
        *(v45 + 32) = [v46 vibrantMonochromeColor];
        *(v45 + 40) = [v46 vibrantMaterialColor];
        sub_100003EE4(0, &qword_10003C340, PRPosterColor_ptr);
        v47 = sub_1000234DC().super.isa;

        [v36 setPreferredTitleColors:v47];

        v48 = swift_allocObject();
        *(v48 + 16) = xmmword_1000262E0;
        *(v48 + 32) = [objc_allocWithZone(PRTimeFontConfiguration) initWithTimeFontIdentifier:v57 weight:700.0];
        sub_100003EE4(0, &qword_10003C348, PRTimeFontConfiguration_ptr);
        v49 = sub_1000234DC().super.isa;

        [v36 setPreferredTimeFontConfigurations:v49];
      }

      v50 = 0;
      v20 = 0;
    }

    sub_100011A40(v36, v50, v20);
LABEL_74:

    v53 = v36;
    sub_1000234CC();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1000234FC();
    }

    sub_10002351C();
    v17 += 3;

    --v8;
  }

  while (v8);

  v54 = *(v58 + 8);

  return v54(_swiftEmptyArrayStorage);
}

uint64_t sub_100003EAC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100003EE4(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_100003F2C(void *a1)
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

uint64_t sub_100003F88(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x73657069727473;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x73746867696CLL;
    }

    else
    {
      v4 = 1684632167;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x656C636974726170;
    }

    else
    {
      v4 = 0x73657069727473;
    }

    if (v3)
    {
      v5 = 0xE900000000000073;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x73746867696CLL;
  if (a2 != 2)
  {
    v8 = 1684632167;
    v7 = 0xE400000000000000;
  }

  if (a2)
  {
    v2 = 0x656C636974726170;
    v6 = 0xE900000000000073;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1000237AC();
  }

  return v11 & 1;
}

uint64_t sub_1000040BC(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 7305076;
    }

    else
    {
      v3 = 6647407;
    }

    v2 = 0xE300000000000000;
  }

  else if (a1 == 2)
  {
    v2 = 0xE500000000000000;
    v3 = 0x6565726874;
  }

  else
  {
    v2 = 0xE400000000000000;
    if (a1 == 3)
    {
      v3 = 1920298854;
    }

    else
    {
      v3 = 1702259046;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 7305076;
    }

    else
    {
      v7 = 6647407;
    }

    v6 = 0xE300000000000000;
    if (v3 != v7)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v4 = 1920298854;
    if (a2 != 3)
    {
      v4 = 1702259046;
    }

    if (a2 == 2)
    {
      v5 = 0x6565726874;
    }

    else
    {
      v5 = v4;
    }

    if (a2 == 2)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xE400000000000000;
    }

    if (v3 != v5)
    {
      goto LABEL_28;
    }
  }

  if (v2 != v6)
  {
LABEL_28:
    v8 = sub_1000237AC();
    goto LABEL_29;
  }

  v8 = 1;
LABEL_29:

  return v8 & 1;
}

uint64_t sub_100004204(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, float a7)
{
  *&v107.f64[0] = a6;
  v116.i64[0] = a4;
  v109 = a3;
  v118 = a1;
  v11 = sub_1000230BC();
  v115 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = v7;
  *&v108.f64[0] = a5;
  *(v7 + 32) = a5;
  v14 = objc_allocWithZone(MTKMeshBufferAllocator);
  v119.i64[0] = a2;
  v117[0] = [v14 initWithDevice:a2];
  v15 = [objc_allocWithZone(MDLVertexDescriptor) init];
  sub_100002398(&unk_10003D430, &qword_100026460);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1000263B0;
  v17 = [objc_allocWithZone(MDLVertexAttribute) initWithName:MDLVertexAttributePosition format:786435 offset:0 bufferIndex:0];
  v18 = sub_100003EE4(0, &unk_10003C430, MDLVertexAttribute_ptr);
  *(v16 + 56) = v18;
  *(v16 + 32) = v17;
  v19 = [objc_allocWithZone(MDLVertexAttribute) initWithName:MDLVertexAttributeNormal format:786435 offset:16 bufferIndex:0];
  *(v16 + 88) = v18;
  *(v16 + 64) = v19;
  v20 = objc_allocWithZone(MDLVertexAttribute);
  v21 = v115;
  v22 = [v20 initWithName:MDLVertexAttributeTextureCoordinate format:786434 offset:32 bufferIndex:0];
  *(v16 + 120) = v18;
  *(v16 + 96) = v22;
  sub_100003EE4(0, &unk_10003D440, NSMutableArray_ptr);
  v23 = sub_1000235CC();
  [v15 setAttributes:v23];

  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1000263C0;
  v25 = [objc_allocWithZone(MDLVertexBufferLayout) initWithStride:48];
  *(v24 + 56) = sub_100003EE4(0, &unk_10003C440, MDLVertexBufferLayout_ptr);
  *(v24 + 32) = v25;
  v26 = sub_1000235CC();
  [v15 setLayouts:v26];

  (*(v21 + 16))(v13, v118, v11);
  v27 = objc_allocWithZone(MDLAsset);
  v28 = v15;
  v29 = v117[0];
  sub_10002309C(v30);
  v32 = v31;
  v34 = *(v21 + 8);
  v33 = v21 + 8;
  v113 = v11;
  v112 = v34;
  v34(v13, v11);
  v35 = [v27 initWithURL:v32 vertexDescriptor:v28 bufferAllocator:v29];

  v110 = v28;
  v111.i64[0] = v29;

  sub_100003EE4(0, &unk_10003D450, MDLMesh_ptr);
  v36 = [v35 childObjectsOfClass:swift_getObjCClassFromMetadata()];
  sub_100003EE4(0, &unk_10003C450, MDLObject_ptr);
  v37 = sub_1000234EC();

  if (v37 >> 62)
  {
    goto LABEL_51;
  }

  v38 = v37 & 0xFFFFFFFFFFFFFF8;

  sub_1000237BC();
  v39 = swift_dynamicCastMetatype();
  v40 = v114;
  v41 = v119.i64[0];
  if (v39 || (v42 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
  {

    if (v37 >> 62)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v105 = v35;
    v43 = v38 + 32;
    while (1)
    {
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
        break;
      }

      v43 += 8;
      if (!--v42)
      {

        goto LABEL_11;
      }
    }

    v37 = v38 | 1;
LABEL_11:
    v35 = v105;
    if (v37 >> 62)
    {
      goto LABEL_52;
    }
  }

LABEL_12:
  if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
LABEL_53:

    sub_100005838();
    swift_allocError();
    *v97 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();

    goto LABEL_54;
  }

  while (1)
  {
    if ((v37 & 0xC000000000000001) != 0)
    {
      v44 = sub_10002367C();
    }

    else
    {
      if (!*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_59;
      }

      v44 = *(v37 + 32);
    }

    v45 = v44;
    v46 = objc_allocWithZone(MTKMesh);
    *&v122[0] = 0;
    swift_unknownObjectRetain();
    v47 = [v46 initWithMesh:v45 device:v41 error:v122];
    if (!v47)
    {
      v79 = v35;
      v80 = *&v122[0];
      sub_10002308C();

      swift_willThrow();

      swift_unknownObjectRelease_n();
LABEL_54:
      v112(v118, v113);
      goto LABEL_55;
    }

    v48 = v47;
    v49 = *&v122[0];

    swift_unknownObjectRelease();
    *(v40 + 16) = v48;
    v50 = [v41 newDefaultLibrary];
    if (!v50)
    {

      sub_100005838();
      swift_allocError();
      *v81 = 0;
      swift_willThrow();
      swift_unknownObjectRelease();

      v112(v118, v113);
LABEL_38:

      goto LABEL_55;
    }

    v51 = v50;
    v105 = v35;
    v115 = v33;
    v52 = [objc_allocWithZone(MTLRenderPipelineDescriptor) init];
    v53 = sub_10002340C();
    v54 = [v51 newFunctionWithName:v53];

    [v52 setVertexFunction:v54];
    swift_unknownObjectRelease();
    [v52 setRasterSampleCount:v116.i64[0]];
    v116.i64[0] = v52;
    v55 = [v52 colorAttachments];
    v56 = [v55 objectAtIndexedSubscript:0];

    if (!v56)
    {
      __break(1u);
LABEL_63:
      v99 = v120;
      if (v120 > v33)
      {
        __break(1u);
LABEL_65:
        sub_1000237DC();
        __break(1u);
      }

      *(v37 + 16) = v99;

      type metadata accessor for PrideLightsTextMeshDrawer();
      result = swift_deallocPartialClassInstance();
      __break(1u);
      return result;
    }

    v57 = v109;
    [v56 setPixelFormat:v109];
    [v56 setBlendingEnabled:1];
    [v56 setPixelFormat:v57];
    [v56 setRgbBlendOperation:0];
    [v56 setSourceRGBBlendFactor:4];
    v109 = v56;
    [v56 setDestinationRGBBlendFactor:5];
    v117[0] = [objc_allocWithZone(MTLFunctionConstantValues) init];
    v58 = sub_100007F70(_swiftEmptyArrayStorage);
    v33 = 0;
LABEL_22:
    v59 = *(&off_100034E48 + v33 + 32);
    LOWORD(v121) = *(&off_100034E48 + v33 + 32);
    v60 = v117[0];
    [v117[0] setConstantValue:&v121 type:37 atIndex:0];
    v61 = sub_10002340C();
    *&v122[0] = 0;
    v62 = [v51 newFunctionWithName:v61 constantValues:v60 error:v122];

    if (!v62)
    {
      v82 = *&v122[0];

      sub_10002308C();

      swift_willThrow();
      swift_unknownObjectRelease();

LABEL_37:
      swift_unknownObjectRelease();

      v112(v118, v113);
      v40 = v114;
      goto LABEL_38;
    }

    v63 = *&v122[0];
    v64 = v116.i64[0];
    [v116.i64[0] setFragmentFunction:v62];
    swift_unknownObjectRelease();
    *&v122[0] = 0;
    v65 = [v41 newRenderPipelineStateWithDescriptor:v64 error:v122];
    if (!v65)
    {
      v83 = *&v122[0];

      sub_10002308C();

      swift_willThrow();
      swift_unknownObjectRelease();
      goto LABEL_37;
    }

    v35 = v65;
    v37 = v51;
    v66 = *&v122[0];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v122[0] = v58;
    v69 = sub_100005948(v59);
    v70 = v58[2];
    v71 = (v68 & 1) == 0;
    v72 = v70 + v71;
    if (!__OFADD__(v70, v71))
    {
      break;
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:

    v96 = sub_10002372C();
    swift_bridgeObjectRelease_n();
    v37 = v96;
    v40 = v114;
    v41 = v119.i64[0];
    if (!(v96 >> 62))
    {
      goto LABEL_12;
    }

LABEL_52:
    if (sub_10002373C() != 1)
    {
      goto LABEL_53;
    }
  }

  v73 = v68;
  if (v58[3] >= v72)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100006DE4();
    }
  }

  else
  {
    sub_10000618C(v72, isUniquelyReferenced_nonNull_native);
    v74 = sub_100005948(v59);
    if ((v73 & 1) != (v75 & 1))
    {
      goto LABEL_65;
    }

    v69 = v74;
  }

  v51 = v37;
  v58 = *&v122[0];
  if (v73)
  {
    *(*(*&v122[0] + 56) + 8 * v69) = v35;
    swift_unknownObjectRelease();
  }

  else
  {
    *(*&v122[0] + 8 * (v69 >> 6) + 64) |= 1 << v69;
    *(v58[6] + v69) = v59;
    *(v58[7] + 8 * v69) = v35;
    v76 = v58[2];
    v77 = __OFADD__(v76, 1);
    v78 = v76 + 1;
    if (v77)
    {
      goto LABEL_50;
    }

    v58[2] = v78;
  }

  ++v33;
  v41 = v119.i64[0];
  if (v33 != 5)
  {
    goto LABEL_22;
  }

  *(v114 + 24) = v58;
  v121 = v107.f64[0];
  v33 = *&v108.f64[0];
  if ((*&v108.f64[0] & 0x8000000000000000) != 0)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v84 = v105;
  if (*&v108.f64[0])
  {
    type metadata accessor for PrideLightsPerInstanceValues(0);

    v37 = sub_10002350C();
    *(v37 + 16) = v33;
  }

  else
  {

    v37 = _swiftEmptyArrayStorage;
  }

  v120 = 0;
  *&v122[0] = v37 + 32;
  *(&v122[0] + 1) = v33;
  v86 = v106.f64[0];
  sub_100005258(v122, &v120, &v121, v33, v85);
  if (v86 != 0.0)
  {
    goto LABEL_63;
  }

  if (v120 > v33)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
  }

  *(v37 + 16) = v120;
  if (v33 >> 58)
  {
    goto LABEL_61;
  }

  v87 = 32 * v33;
  v88 = [v41 newBufferWithLength:32 * v33 options:0];
  if (v88)
  {
    v89 = v84;
    v90 = v88;
    v91 = [swift_unknownObjectRetain() contents];
    v92 = v90;
    memmove(v91, (v37 + 32), v87);

    v40 = v114;
    *(v114 + 40) = v90;
    swift_unknownObjectRetain();
    sub_100008064(v122, 0.698131701, a7);
    v103 = v122[1];
    v100 = v122[0];
    v106 = v122[3];
    v101 = v122[2];
    v107 = v122[5];
    v102 = v122[4];
    v108 = v122[7];
    v104 = v122[6];
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v119 = vcvt_hight_f32_f64(vcvt_f32_f64(v100), v103);
    *v117 = vcvt_hight_f32_f64(vcvt_f32_f64(v101), v106);
    v116 = vcvt_hight_f32_f64(vcvt_f32_f64(v102), v107);
    v111 = vcvt_hight_f32_f64(vcvt_f32_f64(v104), v108);
    v112(v118, v113);
    v93 = *v117;
    *(v40 + 48) = v119;
    *(v40 + 64) = v93;
    v94 = v111;
    *(v40 + 80) = v116;
    *(v40 + 96) = v94;
    return v40;
  }

  sub_100005838();
  swift_allocError();
  *v95 = 1;
  swift_willThrow();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v112(v118, v113);
  v40 = v114;

LABEL_55:
  type metadata accessor for PrideLightsTextMeshDrawer();
  swift_deallocPartialClassInstance();
  return v40;
}

void *sub_100005258(void *result, unint64_t *a2, unint64_t *a3, uint64_t a4, __n128 a5)
{
  v5 = a4;
  v6 = *a3;
  do
  {
    v6 -= 0x61C8864680B583EBLL;
    v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) >> 27));
    v8 = vcvts_n_f32_u64(((v7 >> 31) ^ v7) & 0xFFFFFF, 0x18uLL);
  }

  while (v8 == 1.0);
  *a3 = v6;
  if (a4 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a4)
    {
      v39 = a2;
      sub_100007BB8(a3);

LABEL_27:
      *v39 = v5;
      return result;
    }

    v42 = result;
    v9 = v8 + 0.0;
    sub_1000073B4(0, a4, 0);
    v10 = 0;
    v11 = v5;
    v41 = v5;
    do
    {
      v12 = *a3;
      v13 = *a3 - 0x61C8864680B583EBLL;
      *a3 = v13;
      v14 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) >> 27));
      v15 = 16777217 * ((v14 >> 31) ^ v14);
      if (v15 < 0xFFFF01)
      {
        v16 = v12 + 0x3C6EF372FE94F82ALL;
        do
        {
          v13 -= 0x61C8864680B583EBLL;
          v17 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v16 ^ (v16 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v16 ^ (v16 >> 30))) >> 27));
          v15 = 16777217 * ((v17 >> 31) ^ v17);
          v16 -= 0x61C8864680B583EBLL;
        }

        while (v15 < 0xFFFF01);
        *a3 = v13;
      }

      v18 = (vcvts_n_f32_u64(HIDWORD(v15), 0x18uLL) * 0.2) + 0.0;
      if (HIDWORD(v15) == 0x1000000)
      {
        v18 = 0.2;
      }

      v19 = remainderf(v9 + ((v18 + v10) / v11), 1.0);
      v21 = _swiftEmptyArrayStorage[2];
      v20 = _swiftEmptyArrayStorage[3];
      if (v21 >= v20 >> 1)
      {
        v22 = v19;
        sub_1000073B4((v20 > 1), v21 + 1, 1);
        v19 = v22;
      }

      ++v10;
      _swiftEmptyArrayStorage[2] = v21 + 1;
      *(&_swiftEmptyArrayStorage[4] + v21) = v19;
      v5 = v41;
    }

    while (v10 != v41);
    result = sub_100007BB8(a3);
    if (_swiftEmptyArrayStorage[2] >= v41)
    {
      v23 = 0;
      v24 = (*v42 + 28);
      v25 = vdup_n_s32(0x3CCCCCCDu);
      do
      {
        v38 = 0.0;
        if (v41 != 1)
        {
          v38 = (((v23 + v23) / (v41 - 1)) + -1.0) * 0.05;
        }

        v43 = v38;
        v26 = v23 + 1;
        sub_100005660(a3, -1.0, 1.0);
        v28 = v27;
        v29 = vcvts_n_f32_u32(sub_100007D74(0x1000001uLL), 0x18uLL) + 0.0;
        v30 = sub_100007D74(0x1000001uLL);
        v31 = (vcvts_n_f32_u32(v30, 0x18uLL) * 0.5) + 0.2;
        if (v30 == 0x1000000)
        {
          v32 = 0.7;
        }

        else
        {
          v32 = v31;
        }

        v33 = *(&_swiftEmptyArrayStorage[4] + v23);
        v34 = vcvts_n_f32_u32(sub_100007D74(0x1000001uLL), 0x18uLL) + 1.0;
        v35 = *a3 - 0x61C8864680B583EBLL;
        *a3 = v35;
        v36 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v35 ^ (v35 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v35 ^ (v35 >> 30))) >> 27));
        *&v37 = vmul_f32(v28, v25);
        *(&v37 + 1) = LODWORD(v43);
        *(v24 - 7) = v37;
        *(v24 - 3) = v29;
        *(v24 - 2) = v32;
        if ((HIWORD(v36) ^ (v36 >> 17)))
        {
          v34 = -v34;
        }

        *(v24 - 1) = v33;
        *v24 = v34;
        v24 += 8;
        ++v23;
      }

      while (v41 != v26);

      v39 = a2;
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_100005660(unint64_t *result, float a2, float a3)
{
  if (COERCE_INT(fabs(a3 - a2)) > 2139095039)
  {
    __break(1u);
  }

  else
  {
    v3 = *result - 0x61C8864680B583EBLL;
    v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v3 ^ (v3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v3 ^ (v3 >> 30))) >> 27));
    if (16777217 * ((v4 >> 31) ^ v4) < 0xFFFF01)
    {
      v5 = *result + 0x3C6EF372FE94F82ALL;
      do
      {
        v3 -= 0x61C8864680B583EBLL;
        v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v5 ^ (v5 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v5 ^ (v5 >> 30))) >> 27));
        v5 -= 0x61C8864680B583EBLL;
      }

      while (16777217 * ((v6 >> 31) ^ v6) < 0xFFFF01);
    }

    v7 = v3 - 0x61C8864680B583EBLL;
    v8 = 0xBF58476D1CE4E5B9 * ((v3 - 0x61C8864680B583EBLL) ^ ((v3 - 0x61C8864680B583EBLL) >> 30));
    if (16777217 * (((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31) ^ (321982955 * (v8 ^ (v8 >> 27)))) < 0xFFFF01)
    {
      v9 = v3 + 0x3C6EF372FE94F82ALL;
      do
      {
        v7 -= 0x61C8864680B583EBLL;
        v10 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) >> 27));
        v9 -= 0x61C8864680B583EBLL;
      }

      while (16777217 * ((v10 >> 31) ^ v10) < 0xFFFF01);
    }

    *result = v7;
  }

  return result;
}

uint64_t sub_1000057CC()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_100005838()
{
  result = qword_10003C8C0;
  if (!qword_10003C8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C8C0);
  }

  return result;
}

unint64_t sub_10000588C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10002362C(*(v2 + 40));

  return sub_100005AD0(a1, v4);
}

unint64_t sub_1000058D0(uint64_t a1, uint64_t a2)
{
  sub_10002382C();
  sub_10002345C();
  v4 = sub_10002384C();

  return sub_100005B98(a1, a2, v4);
}

unint64_t sub_100005948(uint64_t a1)
{
  v1 = a1;
  sub_10002382C();
  sub_10002345C();

  v2 = sub_10002384C();

  return sub_100005C50(v1, v2);
}

unint64_t sub_100005A30(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000235DC(*(v2 + 40));
  return sub_100005E08(a1, v4, &unk_10003D200, PRRenderer_ptr);
}

unint64_t sub_100005A80(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000235DC(*(v2 + 40));
  return sub_100005E08(a1, v4, &qword_10003C488, PREditor_ptr);
}

unint64_t sub_100005AD0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000080DC(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_10002363C();
      sub_100008138(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100005B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1000237AC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100005C50(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 <= 1)
      {
        v8 = *(*(v2 + 48) + v4) ? 7305076 : 6647407;
        v9 = 0xE300000000000000;
      }

      else if (v7 == 2)
      {
        v9 = 0xE500000000000000;
        v8 = 0x6565726874;
      }

      else
      {
        v8 = v7 == 3 ? 1920298854 : 1702259046;
        v9 = 0xE400000000000000;
      }

      if (v6 == 3)
      {
        v10 = 1920298854;
      }

      else
      {
        v10 = 1702259046;
      }

      v11 = 0xE400000000000000;
      if (v6 == 2)
      {
        v10 = 0x6565726874;
        v11 = 0xE500000000000000;
      }

      v12 = v6 ? 7305076 : 6647407;
      v13 = v6 <= 1 ? v12 : v10;
      v14 = v6 <= 1 ? 0xE300000000000000 : v11;
      if (v8 == v13 && v9 == v14)
      {
        break;
      }

      v15 = sub_1000237AC();

      if ((v15 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_100005E08(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_100003EE4(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_1000235EC();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

uint64_t sub_100005ED4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100002398(&qword_10003C490, &qword_100026490);
  result = sub_10002375C();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_1000081FC((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_1000080DC(v23, &v36);
        sub_100008588(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_10002362C(*(v7 + 40));
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_1000081FC(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_10000618C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100002398(&qword_10003C468, &qword_100026470);
  v30 = v4;
  result = sub_10002375C();
  v7 = result;
  if (*(v5 + 16))
  {
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
LABEL_16:
      v22 = v19 | (v8 << 6);
      v23 = *(*(v5 + 48) + v22);
      v24 = *(*(v5 + 56) + 8 * v22);
      if ((v30 & 1) == 0)
      {
        swift_unknownObjectRetain();
      }

      sub_10002382C();
      sub_10002345C();

      result = sub_10002384C();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v15) >> 6;
        while (++v17 != v26 || (v25 & 1) == 0)
        {
          v27 = v17 == v26;
          if (v17 == v26)
          {
            v17 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v17);
          if (v28 != -1)
          {
            v18 = __clz(__rbit64(~v28)) + (v17 << 6);
            goto LABEL_8;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v23;
      *(*(v7 + 56) + 8 * v18) = v24;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
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
        goto LABEL_16;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_100006488(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100002398(&unk_10003C4D0, &unk_100027430);
  result = sub_10002375C();
  v7 = result;
  if (*(v5 + 16))
  {
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
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      result = sub_1000235DC(*(v7 + 40));
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_100006718(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_100002398(a3, a4);
  result = sub_10002375C();
  v9 = result;
  if (*(v7 + 16))
  {
    v33 = v4;
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
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v6 & 1) == 0)
      {
        v24 = v22;
      }

      result = sub_1000235DC(*(v9 + 40));
      v25 = -1 << *(v9 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v6 & 1) == 0)
    {

      v5 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v7 + 32);
    v5 = v33;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_100006980(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100002398(&qword_10003C4B0, &qword_1000264B0);
  v37 = v4;
  result = sub_10002375C();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 48 * v20);
      v23 = v22[1];
      v24 = v22[3];
      v39 = v22[2];
      v40 = *v22;
      v25 = v22[5];
      v38 = v22[4];
      if ((v37 & 1) == 0)
      {

        v26 = v21;
      }

      result = sub_1000235DC(*(v7 + 40));
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 48 * v15);
      *v16 = v40;
      v16[1] = v23;
      v16[2] = v39;
      v16[3] = v24;
      v16[4] = v38;
      v16[5] = v25;
      ++*(v7 + 16);
      v5 = v36;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void *sub_100006C40()
{
  v1 = v0;
  sub_100002398(&qword_10003C490, &qword_100026490);
  v2 = *v0;
  v3 = sub_10002374C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_1000080DC(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_100008588(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_1000081FC(v22, (*(v4 + 56) + v17));
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

  return result;
}

void sub_100006DE4()
{
  v1 = v0;
  sub_100002398(&qword_10003C468, &qword_100026470);
  v2 = *v0;
  v3 = sub_10002374C();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        swift_unknownObjectRetain();
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

id sub_100006F40()
{
  v1 = v0;
  sub_100002398(&unk_10003C4D0, &unk_100027430);
  v2 = *v0;
  v3 = sub_10002374C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

  return result;
}

void *sub_1000070C8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100002398(a1, a2);
  v4 = *v2;
  v5 = sub_10002374C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
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
        v21 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        *(*(v6 + 56) + 8 * v19) = v21;
        v22 = v20;
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

      v18 = *(v4 + 64 + 8 * v10);
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

  return result;
}

void *sub_10000721C()
{
  v1 = v0;
  sub_100002398(&qword_10003C4B0, &qword_1000264B0);
  v2 = *v0;
  v3 = sub_10002374C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = (*(v2 + 56) + 48 * v17);
        v20 = *v19;
        v21 = v19[1];
        v22 = v19[2];
        v23 = v19[3];
        v25 = v19[4];
        v24 = v19[5];
        *(*(v4 + 48) + 8 * v17) = v18;
        v26 = (*(v4 + 56) + 48 * v17);
        *v26 = v20;
        v26[1] = v21;
        v26[2] = v22;
        v26[3] = v23;
        v26[4] = v25;
        v26[5] = v24;

        v27 = v18;
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

  return result;
}

char *sub_1000073B4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100007494(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000073D4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100007598(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000073F4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000768C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100007414(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100007788(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100007434(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000788C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100007454(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000079A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100007474(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100007AAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100007494(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002398(&qword_10003C460, &qword_100026468);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_100007598(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002398(&qword_10003C4B8, &qword_1000264B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

char *sub_10000768C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002398(&qword_10003C470, &qword_100026478);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_100007788(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002398(&qword_10003C478, &unk_100026480);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_10000788C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002398(&unk_10003C4C0, &unk_1000264C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 20);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[20 * v8])
    {
      memmove(v12, v13, 20 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 20 * v8);
  }

  return v10;
}

char *sub_1000079A8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002398(&qword_10003C480, &qword_100027940);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_100007AAC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002398(&unk_10003C4A0, &qword_1000264A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100007BB8(uint64_t result)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  v4 = v3 - 2;
  if (v3 >= 2)
  {
    v5 = 0;
    v22 = result;
    v6 = *result;
    while (1)
    {
      v8 = v6 - 0x61C8864680B583EBLL;
      v9 = 0xBF58476D1CE4E5B9 * ((v6 - 0x61C8864680B583EBLL) ^ ((v6 - 0x61C8864680B583EBLL) >> 30));
      v10 = (0x94D049BB133111EBLL * (v9 ^ (v9 >> 27))) ^ ((0x94D049BB133111EBLL * (v9 ^ (v9 >> 27))) >> 31);
      v11 = v10 * v3;
      v12 = (v10 * v3) >> 64;
      if (v3 > v11)
      {
        v13 = -v3 % v3;
        if (v13 > v11)
        {
          v14 = v6 + 0x3C6EF372FE94F82ALL;
          do
          {
            v8 -= 0x61C8864680B583EBLL;
            v15 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v14 ^ (v14 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v14 ^ (v14 >> 30))) >> 27));
            v16 = v15 ^ (v15 >> 31);
            v14 -= 0x61C8864680B583EBLL;
          }

          while (v13 > v16 * v3);
          v12 = (v16 * v3) >> 64;
        }
      }

      v6 = v8;
      v17 = v5 + v12;
      if (__OFADD__(v5, v12))
      {
        break;
      }

      if (v5 != v17)
      {
        v18 = *(v2 + 16);
        if (v5 >= v18)
        {
          goto LABEL_21;
        }

        if (v17 >= v18)
        {
          goto LABEL_22;
        }

        v19 = *(v2 + 32 + 4 * v5);
        v20 = *(v2 + 32 + 4 * v17);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_100007E40(v2);
          v2 = result;
        }

        v21 = *(v2 + 16);
        if (v5 >= v21)
        {
          goto LABEL_23;
        }

        *(v2 + 32 + 4 * v5) = v20;
        if (v17 >= v21)
        {
          goto LABEL_24;
        }

        *(v2 + 32 + 4 * v17) = v19;
        *v1 = v2;
      }

      --v3;
      if (v5++ == v4)
      {
        *v22 = v6;
        return result;
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
  }

  return result;
}

unint64_t sub_100007D74(unint64_t result)
{
  if (result)
  {
    v2 = *v1;
    v3 = *v1 - 0x61C8864680B583EBLL;
    *v1 = v3;
    v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v3 ^ (v3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v3 ^ (v3 >> 30))) >> 27));
    v5 = result * ((v4 >> 31) ^ v4);
    if (v5 < result)
    {
      v6 = -result % result;
      if (v6 > v5)
      {
        v7 = v2 + 0x3C6EF372FE94F82ALL;
        do
        {
          v3 -= 0x61C8864680B583EBLL;
          v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v7 ^ (v7 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v7 ^ (v7 >> 30))) >> 27));
          v5 = result * ((v8 >> 31) ^ v8);
          v7 -= 0x61C8864680B583EBLL;
        }

        while (v6 > v5);
        *v1 = v3;
      }
    }

    return HIDWORD(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100007E54(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002398(&qword_10003C490, &qword_100026490);
    v3 = sub_10002377C();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000818C(v4, v13);
      result = sub_10000588C(v13);
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
      result = sub_1000081FC(&v15, (v3[7] + 32 * result));
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100007F70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002398(&qword_10003C468, &qword_100026470);
    v3 = sub_10002377C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      swift_unknownObjectRetain();
      result = sub_100005948(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

double sub_100008064@<D0>(_OWORD *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v5 = tan(a2 * 0.5);
  *&v6 = 0;
  *(&v6 + 1) = 1.0 / v5;
  *a1 = COERCE_UNSIGNED_INT64(1.0 / v5 / a3);
  a1[1] = 0u;
  a1[2] = v6;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = xmmword_1000263D0;
  result = 0.01001001;
  a1[6] = 0u;
  a1[7] = xmmword_1000263E0;
  return result;
}

uint64_t sub_10000818C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002398(&qword_10003C498, &qword_100026498);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_1000081FC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_100008234(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002398(&unk_10003C4D0, &unk_100027430);
    v3 = sub_10002377C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_100005A30(v6);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100008354(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(id))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_100002398(a2, a3);
    v7 = sub_10002377C();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *i;
      v10 = *(i - 1);

      result = a4(v10);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v10;
      *(v7[7] + 8 * result) = v9;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10000844C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002398(&qword_10003C4B0, &qword_1000264B0);
    v3 = sub_10002377C();

    for (i = (a1 + 80); ; i += 7)
    {
      v5 = *(i - 6);
      v6 = *(i - 5);
      v7 = *(i - 4);
      v8 = *(i - 3);
      v9 = *(i - 2);
      v10 = *(i - 1);
      v11 = *i;

      v12 = v5;

      result = sub_100005A80(v12);
      if (v14)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v12;
      v15 = (v3[7] + 48 * result);
      *v15 = v6;
      v15[1] = v7;
      v15[2] = v8;
      v15[3] = v9;
      v15[4] = v10;
      v15[5] = v11;
      v16 = v3[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v3[2] = v18;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100008588(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

double sub_1000085E4(double a1, double a2, double a3, double a4, double a5, double a6, double a7, __n128 a8)
{
  v9 = *(v8 + 32);
  v10 = *(v8 + 56);
  v23.f64[0] = *(v8 + 48);
  v23.f64[1] = v10;
  v22 = v9;
  sub_10000891C(&v22, v24, a8);
  sub_1000089C0(v24, &v22, v24[1], v24[3], v24[5]);
  v11 = vcvt_hight_f32_f64(vcvt_f32_f64(v22), v23);
  __asm { FMOV            V5.4S, #1.0 }

  v17 = *(v8 + 64);
  if (v17 != 0.0)
  {
    v21 = v11;
    v18 = __sincosf_stret(v17);
    LODWORD(v19) = HIDWORD(v18);
    *(&v19 + 1) = -*&v18;
    v11.i64[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19, v21.f32[0]), v18, *v21.f32, 1), xmmword_1000264E0, v21, 2), xmmword_1000264F0, v21, 3).u64[0];
  }

  return *v11.i64;
}

float32x2_t sub_100008778@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v22 = a3;
  v6 = sub_10002356C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = vsubq_f32(*a1, *v3);
  v11 = vmuls_lane_f32(v22.n128_f32[0], v10, 2);
  v10.i64[0] = vaddq_f32(*v3, vmulq_n_f32(v10, v22.n128_f32[0])).u64[0];
  v10.f32[2] = COERCE_FLOAT(*(v3 + 8)) + v11;
  v10.i32[3] = 0;
  v23 = v10;
  v24 = vdupq_lane_s32(v22.n128_u64[0], 0);
  v12 = *(v3 + 16) + ((*(a1 + 16) - *(v3 + 16)) * v22.n128_f32[0]);
  v13 = *(v3 + 32);
  v20[2] = *(v3 + 48);
  v21 = v13;
  v14 = *(a1 + 32);
  v20[0] = *(a1 + 48);
  v20[1] = v14;
  (*(v7 + 104))(v9, enum case for SPRotation3D.SlerpPath.shortest(_:), v6);
  sub_10002355C();
  v21 = v16;
  v22 = v15;
  (*(v7 + 8))(v9, v6);
  v17 = v22;
  *a2 = v23;
  *(a2 + 16) = v12;
  v18 = v21;
  *(a2 + 32) = v17;
  *(a2 + 48) = v18;
  result = vadd_f32(*(v3 + 64), vmul_f32(vsub_f32(*(a1 + 64), *(v3 + 64)), *v24.i8));
  *(a2 + 64) = result;
  return result;
}

double sub_10000891C@<D0>(float64x2_t *a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q7>)
{
  _Q0 = *a1;
  _Q2 = a1[1];
  _D1 = a1->f64[1];
  _D5 = _Q2.f64[1];
  __asm { FMLA            D3, D5, V2.D[1] }

  v13 = vmuld_lane_f64(_Q2.f64[0], _Q2, 1);
  v14.f64[0] = vmuld_lane_f64(_D1, _Q2, 1);
  *&v3 = -(v14.f64[0] - a1->f64[0] * _Q2.f64[0]) - (v14.f64[0] - a1->f64[0] * _Q2.f64[0]);
  *(&_Q3 + 1) = v13 + a1->f64[0] * _D1 + v13 + a1->f64[0] * _D1;
  *&v15 = -(v13 - a1->f64[0] * _D1) - (v13 - a1->f64[0] * _D1);
  __asm
  {
    FMLA            D4, D1, V0.D[1]
    FMLA            D4, D5, V2.D[1]
  }

  a3.n128_f64[0] = vmuld_lane_f64(a1->f64[0], _Q2, 1);
  a3.n128_f64[0] = a3.n128_f64[0] + _D1 * _Q2.f64[0] + a3.n128_f64[0] + _D1 * _Q2.f64[0];
  *(&v15 + 1) = _D4 - _Q0.f64[0] * _Q0.f64[0];
  v14.f64[1] = -(a1->f64[0] * _Q2.f64[1]);
  v18 = vmlaq_n_f64(v14, *a1, _Q2.f64[0]);
  *a2 = _Q3;
  *(a2 + 16) = v3;
  __asm { FMLS            D2, D1, V0.D[1] }

  *(a2 + 32) = v15;
  *(a2 + 48) = a3;
  *(a2 + 64) = vaddq_f64(v18, v18);
  *(a2 + 80) = _Q2;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  result = 0.0;
  *(a2 + 112) = 0u;
  return result;
}

__n128 sub_1000089C0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q1>, __n128 a4@<Q3>, __n128 a5@<Q5>)
{
  result = *a1;
  a3.n128_u64[0] = *(a1 + 16);
  v6 = *(a1 + 32);
  a4.n128_u64[0] = *(a1 + 48);
  v7 = *(a1 + 64);
  a5.n128_u64[0] = *(a1 + 80);
  v8 = *(a1 + 96);
  __asm { FMOV            V7.2D, #1.0 }

  *&_Q7 = *(a1 + 112);
  *a2 = *a1;
  *(a2 + 16) = a3;
  *(a2 + 32) = v6;
  *(a2 + 48) = a4;
  *(a2 + 64) = v7;
  *(a2 + 80) = a5;
  *(a2 + 96) = v8;
  *(a2 + 112) = _Q7;
  return result;
}

id sub_1000089FC()
{
  v1 = OBJC_IVAR____TtC20PridePosterExtension17DrawingController_coordinators;
  *&v0[v1] = sub_10000820C(_swiftEmptyArrayStorage);
  v2 = OBJC_IVAR____TtC20PridePosterExtension17DrawingController_sensitiveUIOverlays;
  *&v0[v2] = sub_100008234(_swiftEmptyArrayStorage);
  v8.receiver = v0;
  v8.super_class = type metadata accessor for DrawingController();
  v3 = objc_msgSendSuper2(&v8, "init");
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 defaultCenter];
  [v6 addObserver:v5 selector:"reduceMotionChanged" name:UIAccessibilityReduceMotionStatusDidChangeNotification object:0];

  return v5;
}

id sub_100008B00()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for DrawingController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100008C48(void *a1, void *a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = [a2 contents];
  v7 = sub_100009700();
  swift_unknownObjectRelease();
  if (v7 != 4)
  {
    if (qword_10003BEA8 != -1)
    {
      swift_once();
    }

    v8 = sub_10002335C();
    sub_100003EAC(v8, qword_10003D508);
    v9 = sub_10002333C();
    v10 = sub_10002358C();
    v45 = a1;
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *&v53[0] = v12;
      *v11 = 136446210;
      if (v7 > 1u)
      {
        if (v7 == 2)
        {
          v14 = 0xE600000000000000;
          v13 = 0x73746867696CLL;
        }

        else
        {
          v14 = 0xE400000000000000;
          v13 = 1684632167;
        }
      }

      else if (v7)
      {
        v13 = 0x656C636974726170;
        v14 = 0xE900000000000073;
      }

      else
      {
        v13 = 0x73657069727473;
        v14 = 0xE700000000000000;
      }

      v15 = sub_10000C980(v13, v14, v53);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "setting up with identifier “%{public}s”", v11, 0xCu);
      sub_100003F2C(v12);
    }

    if (v7 > 1u)
    {
      if (v7 == 2)
      {
        type metadata accessor for PrideLightsRenderer(0);
        v16 = &unk_10003C620;
        v17 = type metadata accessor for PrideLightsRenderer;
        v18 = &unk_100026B50;
      }

      else
      {
        type metadata accessor for PrideGridRenderer(0);
        v16 = &unk_10003C5B0;
        v17 = type metadata accessor for PrideGridRenderer;
        v18 = &unk_100026860;
      }
    }

    else if (v7)
    {
      type metadata accessor for PrideParticlesRenderer(0);
      v16 = &unk_10003C628;
      v17 = type metadata accessor for PrideParticlesRenderer;
      v18 = &unk_1000272F8;
    }

    else
    {
      type metadata accessor for PrideStripesRenderer();
      v16 = &unk_10003C630;
      v17 = type metadata accessor for PrideStripesRenderer;
      v18 = &unk_100026D58;
    }

    sub_10000AD54(v16, v17, v18);
    swift_unknownObjectRetain();
    sub_10001125C(v53);
    if (v55)
    {
      v19 = v54;
    }

    else
    {
      v19 = 0;
    }

    if (v55)
    {
      v20 = v55;
    }

    else
    {
      v20 = 0xE000000000000000;
    }

    v42 = v3;
    if (v7 == 2)
    {

      v21 = sub_1000107C0(v19, v20);
      if (v21 != 5)
      {
        v24 = sub_10000DB38(v21);
LABEL_32:
        v25 = v24;
        v26 = swift_allocObject();
        *(v26 + 16) = v7;
        *(v26 + 24) = v25;
        v27 = swift_allocObject();
        *(v27 + 16) = sub_10000AC64;
        *(v27 + 24) = v26;
        v51 = sub_10000AC80;
        v52 = v27;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        v49 = sub_100009BF4;
        v50 = &unk_100035610;
        v28 = _Block_copy(&aBlock);
        v43 = v25;

        v29 = v45;
        [v45 updatePreferences:v28];
        _Block_release(v28);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          __break(1u);
        }

        else
        {
          v56 = v53[0];
          aBlock = v53[0];

          v57._countAndFlagsBits = 44;
          v57._object = 0xE100000000000000;
          sub_10002348C(v57);
          sub_10002348C(v53[1]);
          sub_10000ACC0(&v56);

          sub_1000232CC();
          swift_allocObject();
          swift_unknownObjectRetain();
          v31 = sub_10002329C();

          v32 = v31;
          v33 = [v45 backgroundView];
          v34 = [v45 floatingView];
          sub_1000232AC();

          isEscapingClosureAtFileLocation = OBJC_IVAR____TtC20PridePosterExtension17DrawingController_coordinators;
          swift_beginAccess();
          v35 = *(v42 + isEscapingClosureAtFileLocation);
          if ((v35 & 0xC000000000000001) == 0)
          {

LABEL_40:
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v46 = *(v42 + isEscapingClosureAtFileLocation);
            sub_10001E7F8(v32, v45, isUniquelyReferenced_nonNull_native);
            *(v42 + isEscapingClosureAtFileLocation) = v46;
            swift_endAccess();
            v38 = swift_allocObject();
            swift_unknownObjectWeakInit();
            sub_1000232BC();
            if (v50)
            {
              sub_100002398(&unk_10003C580, qword_100026540);
              sub_100002398(&qword_10003C618, qword_100026558);
              if (swift_dynamicCast())
              {
                ObjectType = swift_getObjectType();
                v44 = *(v47 + 16);

                v44(sub_10000AD4C, v38, ObjectType);
                v29 = v45;
                swift_unknownObjectRelease();
              }
            }

            else
            {
              sub_10000ABCC(&aBlock, &qword_10003C578, &qword_100026538);
            }

            isEscapingClosureAtFileLocation = v43;
            sub_1000232BC();
            if (v50)
            {
              sub_100002398(&unk_10003C580, qword_100026540);
              type metadata accessor for PrideLightsRenderer(0);
              if (swift_dynamicCast())
              {
                v27 = v46;
                IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
                *(v46 + OBJC_IVAR____TtC20PridePosterExtension19PrideLightsRenderer_reduceMotion) = IsReduceMotionEnabled;
                if (!IsReduceMotionEnabled)
                {
                  v41 = 2;
                  goto LABEL_51;
                }

                if (qword_10003BE80 == -1)
                {
LABEL_48:
                  v41 = (byte_10003C900 & 1) == 0;
LABEL_51:
                  *(*(v27 + OBJC_IVAR____TtC20PridePosterExtension19PrideLightsRenderer_cameraController) + 19) = v41;

                  goto LABEL_52;
                }

LABEL_56:
                swift_once();
                goto LABEL_48;
              }
            }

            else
            {
              sub_10000ABCC(&aBlock, &qword_10003C578, &qword_100026538);
            }

LABEL_52:
            sub_10000A140(v29, [a2 isSnapshot], v7);

            return;
          }

          if (v35 < 0)
          {
            v27 = *(v42 + isEscapingClosureAtFileLocation);
          }

          else
          {
            v27 = v35 & 0xFFFFFFFFFFFFFF8;
          }

          v36 = sub_1000236FC();
          if (!__OFADD__(v36, 1))
          {
            *(v42 + isEscapingClosureAtFileLocation) = sub_10001DDA8(v27, v36 + 1);
            goto LABEL_40;
          }
        }

        __break(1u);
        goto LABEL_56;
      }

      v22 = [objc_opt_self() whiteColor];
    }

    else
    {
      v23 = objc_opt_self();

      v22 = [v23 whiteColor];
    }

    v24 = v22;
    goto LABEL_32;
  }
}

unint64_t sub_100009700()
{
  v1 = [v0 descriptorIdentifier];
  if (v1)
  {
    v2 = v1;
    v3 = sub_10002341C();
    v5 = v4;

    v6 = v3 == 1852399981 && v5 == 0xE400000000000000;
    if (v6 || (sub_1000237AC() & 1) != 0)
    {

      return 0;
    }

    else
    {
      sub_100010E04(45, 0xE100000000000000, v3, v5);
      if ((v13 & 1) == 0)
      {
        sub_1000234BC();

        v3 = sub_10002344C();
        v5 = v14;
      }

      return sub_10002006C(v3, v5);
    }
  }

  else
  {
    if (qword_10003BEA8 != -1)
    {
      swift_once();
    }

    v8 = sub_10002335C();
    sub_100003EAC(v8, qword_10003D508);
    v9 = sub_10002333C();
    v10 = sub_10002359C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v15 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_10000C980(0x29656E6F6E28, 0xE600000000000000, &v15);
      _os_log_impl(&_mh_execute_header, v9, v10, "unknown identifier “%s”", v11, 0xCu);
      sub_100003F2C(v12);
    }

    return 4;
  }
}

id sub_100009950(void *a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  if (a3 == 1)
  {

    goto LABEL_5;
  }

  v7 = sub_1000237AC();

  if (v7)
  {
LABEL_5:
    [a1 setHandlesWakeAnimation:1];
    v8 = objc_opt_self();
    v9 = [v8 whiteColor];
    v10 = [v8 darkGrayColor];
    v11 = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.6];
    v12 = [objc_opt_self() legibilitySettingsForStyle:1 primaryColor:v9 secondaryColor:v10 shadowColor:v11];

    [a1 setDesiredLegibilitySettings:v12];
  }

  if (a3 > 2u)
  {

    goto LABEL_10;
  }

  v13 = sub_1000237AC();

  if (v13)
  {
LABEL_10:
    v14 = [objc_opt_self() currentDevice];
    v15 = [v14 userInterfaceIdiom];

    [a1 setHandlesWakeAnimation:v15 == 1];
  }

  return [a1 setPreferredProminentColor:a4];
}

uint64_t sub_100009BF4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, v6);

  return swift_unknownObjectRelease();
}

void sub_100009C5C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong noteContentSignificantlyChanged];
  }
}

void sub_100009D38(void *a1, void *a2, void *a3)
{
  v7 = OBJC_IVAR____TtC20PridePosterExtension17DrawingController_coordinators;
  swift_beginAccess();
  v8 = *(v3 + v7);

  v9 = sub_10001BC0C(a1, v8);

  if (v9)
  {
    sub_10000A66C(a1, [a2 isSnapshot]);
    v10 = [a3 animationSettings];
    sub_10002328C();
  }

  else
  {
    if (qword_10003BEA8 != -1)
    {
      swift_once();
    }

    v11 = sub_10002335C();
    sub_100003EAC(v11, qword_10003D508);
    v12 = sub_10002333C();
    v13 = sub_10002359C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "no renderer to update", v14, 2u);
    }
  }
}

void sub_10000A140(void *a1, char a2, unsigned __int8 a3)
{
  v5 = 0x73657069727473;
  v6 = a3;
  v7 = 0xE700000000000000;
  v8 = 0xE600000000000000;
  v9 = 0x73746867696CLL;
  if (a3 != 2)
  {
    v9 = 1684632167;
    v8 = 0xE400000000000000;
  }

  if (a3)
  {
    v5 = 0x656C636974726170;
    v7 = 0xE900000000000073;
  }

  if (a3 <= 1u)
  {
    v10 = v5;
  }

  else
  {
    v10 = v9;
  }

  if (v6 <= 1)
  {
    v11 = v7;
  }

  else
  {
    v11 = v8;
  }

  if (v10 == 1684632167 && v11 == 0xE400000000000000)
  {
  }

  else
  {
    v13 = sub_1000237AC();

    if ((v13 & 1) == 0)
    {
      return;
    }
  }

  v14 = MobileGestalt_get_current_device();
  if (!v14)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v15 = v14;
  appleInternalInstallCapability = MobileGestalt_get_appleInternalInstallCapability();

  if (!appleInternalInstallCapability)
  {
    return;
  }

  v17 = [objc_opt_self() mainScreen];
  [v17 bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v26 = [objc_allocWithZone(UIView) initWithFrame:{v19, v21, v23, v25}];
  v27 = objc_opt_self();
  v28 = [v27 blackColor];
  [v26 setBackgroundColor:v28];

  v29 = [objc_opt_self() configurationWithPointSize:100.0];
  v30 = sub_10002340C();
  v31 = [objc_opt_self() systemImageNamed:v30 withConfiguration:v29];

  v32 = [objc_allocWithZone(UIImageView) initWithImage:v31];
  [v32 setTranslatesAutoresizingMaskIntoConstraints:0];
  v33 = [v27 secondaryLabelColor];
  [v32 setTintColor:v33];

  [v26 addSubview:v32];
  sub_100002398(&qword_10003C338, &qword_100026390);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1000262F0;
  v35 = objc_opt_self();
  *(v34 + 32) = [v35 constraintWithItem:v32 attribute:9 relatedBy:0 toItem:v26 attribute:9 multiplier:1.0 constant:0.0];
  *(v34 + 40) = [v35 constraintWithItem:v32 attribute:10 relatedBy:0 toItem:v26 attribute:10 multiplier:1.0 constant:0.0];
  sub_100003EE4(0, &qword_10003C5A0, NSLayoutConstraint_ptr);
  isa = sub_1000234DC().super.isa;

  [v26 addConstraints:isa];

  v37 = [a1 foregroundView];
  [v37 addSubview:v26];

  v38 = OBJC_IVAR____TtC20PridePosterExtension17DrawingController_sensitiveUIOverlays;
  swift_beginAccess();
  v39 = *(v3 + v38);
  if ((v39 & 0xC000000000000001) == 0)
  {
    v43 = v26;
    goto LABEL_24;
  }

  if (v39 < 0)
  {
    v40 = *(v3 + v38);
  }

  else
  {
    v40 = v39 & 0xFFFFFFFFFFFFFF8;
  }

  v41 = v26;
  v42 = sub_1000236FC();
  if (__OFADD__(v42, 1))
  {
    __break(1u);
    goto LABEL_27;
  }

  *(v3 + v38) = sub_10001DB5C(v40, v42 + 1);
LABEL_24:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v45 = *(v3 + v38);
  sub_10001E680(v26, a1, isUniquelyReferenced_nonNull_native);
  *(v3 + v38) = v45;
  swift_endAccess();
  sub_10000A66C(a1, a2 & 1);
}

void sub_10000A66C(void *a1, char a2)
{
  v5 = MobileGestalt_get_current_device();
  if (!v5)
  {
    __break(1u);
    return;
  }

  v6 = v5;
  appleInternalInstallCapability = MobileGestalt_get_appleInternalInstallCapability();

  if (appleInternalInstallCapability)
  {
    v8 = OBJC_IVAR____TtC20PridePosterExtension17DrawingController_sensitiveUIOverlays;
    swift_beginAccess();
    v9 = *(v2 + v8);

    v10 = sub_10001BB48(a1, v9);

    if (v10)
    {
      v11 = objc_allocWithZone(NSUserDefaults);
      v12 = sub_10002340C();
      v13 = [v11 initWithSuiteName:v12];

      if (v13)
      {
        v14 = sub_10002340C();
        v15 = [v13 objectForKey:v14];

        if (v15)
        {
          sub_10002360C();
          swift_unknownObjectRelease();
          sub_10000ABCC(v19, &unk_10003C590, &qword_1000268C0);
          v16 = sub_10002340C();
          v17 = [v13 BOOLForKey:v16];

          v18 = v17 | a2;
LABEL_9:
          [v10 setHidden:v18 & 1];

          return;
        }

        memset(v19, 0, sizeof(v19));
        sub_10000ABCC(v19, &unk_10003C590, &qword_1000268C0);
      }

      v18 = 1;
      goto LABEL_9;
    }
  }
}

uint64_t sub_10000A858()
{
  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  v2 = OBJC_IVAR____TtC20PridePosterExtension17DrawingController_coordinators;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = sub_1000236EC() | 0x8000000000000000;
  }

  else
  {
    v8 = -1 << *(v3 + 32);
    v5 = ~v8;
    v4 = v3 + 64;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v6 = v10 & *(v3 + 64);
    v7 = v3;
  }

  v12 = 0;
  v13 = (v5 + 64) >> 6;
  while ((v7 & 0x8000000000000000) != 0)
  {
    if (!sub_10002371C())
    {
      return sub_10000ABC4(v7);
    }

    v20 = v19;
    sub_100003EE4(0, &unk_10003D200, PRRenderer_ptr);
    swift_dynamicCast();
    v18 = v24[0];
    v23 = v20;
    sub_1000232CC();
    swift_dynamicCast();
    v16 = v12;
    v17 = v6;
    if (!v18)
    {
      return sub_10000ABC4(v7);
    }

LABEL_19:

    sub_1000232BC();
    if (v24[3])
    {
      sub_100002398(&unk_10003C580, qword_100026540);
      type metadata accessor for PrideLightsRenderer(0);
      if (swift_dynamicCast())
      {
        *(v23 + OBJC_IVAR____TtC20PridePosterExtension19PrideLightsRenderer_reduceMotion) = IsReduceMotionEnabled;
        if (IsReduceMotionEnabled)
        {
          if (qword_10003BE80 != -1)
          {
            swift_once();
          }

          v21 = byte_10003C900;

          v22 = (v21 & 1) == 0;
        }

        else
        {

          v22 = 2;
        }

        *(*(v23 + OBJC_IVAR____TtC20PridePosterExtension19PrideLightsRenderer_cameraController) + 19) = v22;
      }
    }

    else
    {

      result = sub_10000ABCC(v24, &qword_10003C578, &qword_100026538);
    }

    v12 = v16;
    v6 = v17;
  }

  v14 = v12;
  v15 = v6;
  v16 = v12;
  if (v6)
  {
LABEL_15:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v7 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));

    if (!v18)
    {
      return sub_10000ABC4(v7);
    }

    goto LABEL_19;
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      return sub_10000ABC4(v7);
    }

    v15 = *(v4 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10000ABCC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002398(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000AC2C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000ACA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000AD14()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000AD54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10000AD9C()
{
  v0 = kCGColorSpaceSRGB;
  v1 = CGColorSpaceCreateWithName(v0);

  qword_10003D478 = v1;
}

uint64_t sub_10000ADE0()
{
  v0 = sub_100002398(&unk_10003C8F0, &qword_1000268D0);
  sub_10000D9D4(v0, qword_10003D480);
  v1 = sub_100003EAC(v0, qword_10003D480);
  v2 = sub_1000232DC();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

float sub_10000AE80@<S0>(double *a1@<X0>, float *a2@<X8>)
{
  v2 = *a1;
  result = (v2 * 3.1416) / 180.0;
  *a2 = result;
  return result;
}

float sub_10000AEAC@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  result = (*a1 * 3.1416) / 180.0;
  *a2 = result;
  return result;
}

void sub_10000AED8(float32x2_t a1, float a2, float a3)
{
  v4 = __sincosf_stret(a2);
  v5.f32[0] = v4.__cosval;
  v5.f32[1] = -v4.__sinval;
  v6.f32[0] = 1.0 / a3;
  v7 = vmul_n_f32(v5, 0.44 / a3);
  v8 = vadd_f32(vmla_n_f32(v7, v4, 1.0 / a3), a1);
  v9 = vdup_lane_s32(a1, 0);
  v9.i32[0] = v8.i32[0];
  v10 = vbsl_s8(vcage_f32(__PAIR64__(a1.u32[1], v8.u32[1]), v9), vabs_f32(__PAIR64__(a1.u32[1], v8.u32[1])), vabs_f32(v9));
  if (*v10.i32 >= *&v10.i32[1])
  {
    v11 = *&v10.i32[1];
  }

  else
  {
    v11 = *v10.i32;
  }

  if (*&v10.i32[1] > *v10.i32)
  {
    v10.i32[0] = v10.i32[1];
  }

  v12 = vabs_f32(vadd_f32(vmls_lane_f32(v7, v4, v6, 0), a1));
  if (v12.f32[0] <= v12.f32[1])
  {
    v12.f32[0] = v12.f32[1];
  }

  if (v12.f32[0] >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12.f32[0];
  }

  if (*v10.i32 > v12.f32[0])
  {
    v12.f32[0] = *v10.i32;
  }

  v14 = vmul_n_f32(v5, -(0.44 / a3));
  v15 = vabs_f32(vadd_f32(vmls_lane_f32(v14, v4, v6, 0), a1));
  if (v15.f32[0] <= v15.f32[1])
  {
    v15.f32[0] = v15.f32[1];
  }

  if (v15.f32[0] >= v13)
  {
    v16 = v13;
  }

  else
  {
    v16 = v15.f32[0];
  }

  if (v12.f32[0] > v15.f32[0])
  {
    v15.f32[0] = v12.f32[0];
  }

  v17 = vabs_f32(vadd_f32(vmla_n_f32(v14, v4, v6.f32[0]), a1));
  v18 = v17.f32[1];
  if (v17.f32[0] > v17.f32[1])
  {
    v18 = v17.f32[0];
  }

  if (v18 >= v16)
  {
    v19 = v16;
  }

  else
  {
    v19 = v18;
  }

  if (v15.f32[0] > v18)
  {
    v18 = v15.f32[0];
  }

  if (v19 > v18)
  {
    __break(1u);
  }
}

double sub_10000B008()
{
  sub_100002398(&unk_10003C8D0, &qword_1000268B8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100026570;
  *(v0 + 32) = 0xBFA7AE14BFC66666;
  *(v0 + 40) = 0x400000003EB2B8C1;
  result = 0.0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0xBFD47AE13FD851ECLL;
  *(v0 + 64) = 0x40400000BED67750;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0xC0170A3DC01D70A4;
  *(v0 + 88) = 0x40A00000BED67750;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0xBFF851ECBFFEB852;
  *(v0 + 112) = 0x402000003E685695;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0xBF9C28F6BFA3D70ALL;
  *(v0 + 136) = 0x406000003E685695;
  *(v0 + 144) = 0;
  *(v0 + 152) = 0xC005C28F4007AE14;
  *(v0 + 160) = 0x40A00000BED67750;
  *(v0 + 168) = 0;
  *(v0 + 176) = 0xC0000000C008F5C3;
  *(v0 + 184) = 0x400000003E685695;
  *(v0 + 192) = 0;
  *(v0 + 200) = 0xC01AE148401EB852;
  *(v0 + 208) = 0x406000003E449809;
  *(v0 + 216) = 0;
  *(v0 + 224) = 0xBFE666663FEA3D71;
  *(v0 + 232) = 0x40800000BED67750;
  *(v0 + 240) = 0;
  *(v0 + 248) = 0xBF21CAC13F41CAC1;
  *(v0 + 256) = 0x406000003E449809;
  *(v0 + 264) = 0;
  *(v0 + 272) = 0xC02B851FC03147AELL;
  *(v0 + 280) = 0x40A000003E20D97BLL;
  *(v0 + 288) = 0;
  *(v0 + 296) = 0xC011EB85C0170A3DLL;
  *(v0 + 304) = 0x408000003EB2B8C1;
  *(v0 + 312) = 0;
  qword_10003D498 = v0;
  return result;
}

double sub_10000B14C()
{
  sub_100002398(&unk_10003C8D0, &qword_1000268B8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100026570;
  *(v0 + 32) = 0xBFA66666BFD5C28FLL;
  *(v0 + 40) = 0x400D70A43EB2B8C1;
  *(v0 + 48) = 0xBCCCCCCD00000000;
  *(v0 + 56) = 0xC00B9581C00ED917;
  *(v0 + 64) = 0x404A0DEDBE860A91;
  *(v0 + 72) = 0xBC23D70A3C23D70ALL;
  *(v0 + 80) = 0xC01F4BC74021A9FCLL;
  *(v0 + 88) = 0x4097AEE6BEB2B8C1;
  *(v0 + 96) = 0x3C23D70A3BA3D70ALL;
  *(v0 + 104) = 0xBFA353F83FBD2F1BLL;
  *(v0 + 112) = 0x404A0DEDBE860A91;
  *(v0 + 120) = 0x3D6147AEBCA3D70ALL;
  *(v0 + 128) = 0xC0140831C015E354;
  *(v0 + 136) = 0x40ABE83E3ECD87ACLL;
  *(v0 + 144) = 0xBD4CCCCDBC23D70ALL;
  *(v0 + 152) = 0xBFFA1CAC40083127;
  *(v0 + 160) = 0x4021A5123E449809;
  *(v0 + 168) = 0xBCA3D70A00000000;
  *(v0 + 176) = 0xBFF7AE14BFFBC6A8;
  *(v0 + 184) = 0x4083566D3ECD87ACLL;
  *(v0 + 192) = 1017370378;
  *(v0 + 200) = 0xBF8E147BBFA45A1DLL;
  *(v0 + 208) = 0x4072786CBE8EFA35;
  *(v0 + 216) = 0xBD9374BCBD4CCCCDLL;
  *(v0 + 224) = 0xBFA49BA63FC83127;
  *(v0 + 232) = 0x4035D97F3E97E9D8;
  *(v0 + 240) = 0x3D89374CBD9FBE77;
  *(v0 + 248) = 0xBFA7AE143FCED917;
  *(v0 + 256) = 0x400D70A4BE685695;
  *(v0 + 264) = 0xBE0A3D71BD75C28FLL;
  *(v0 + 272) = 0xC01FEF9EC01F0A3DLL;
  *(v0 + 280) = 0x40ABE83E3E7A35DCLL;
  *(v0 + 288) = 0x3C75C28F3D0F5C29;
  *(v0 + 296) = 0xBF9E147BBFA83127;
  result = 121.062393;
  *(v0 + 304) = 0x405E43FE3ECD87ACLL;
  *(v0 + 312) = 0x3C75C28FBBA3D70ALL;
  qword_10003D4A0 = v0;
  return result;
}

id sub_10000B2F4()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 1.0;
  LODWORD(v2) = 1051260355;
  LODWORD(v3) = 1045220557;
  v4 = [v0 initWithControlPoints:v2 :0.0 :v3 :v1];
  v5 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v6) = 1059766403;
  LODWORD(v7) = 1.0;
  LODWORD(v8) = 1051260355;
  v9 = [v5 initWithControlPoints:v8 :0.0 :v6 :v7];
  v10 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v11) = 1043207291;
  LODWORD(v12) = 1.0;
  LODWORD(v13) = 1043207291;
  LODWORD(v14) = 1045220557;
  result = [v10 initWithControlPoints:v11 :v13 :v14 :v12];
  qword_10003C6A0 = v4;
  qword_10003C6A8 = v9;
  qword_10003C6B0 = result;
  return result;
}

void sub_10000B3C8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v127 = a4;
  *&v132 = a2;
  v6 = sub_100002398(&qword_10003C8C8, &qword_1000268B0);
  v7 = __chkstk_darwin(v6 - 8);
  v120 = &v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v129 = (&v118 - v9);
  v130 = sub_10002321C();
  v128 = *(v130 - 8);
  __chkstk_darwin(v130);
  v131 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000232FC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v118 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10002332C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v118 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002318C();
  sub_10002331C();
  v20 = v19;
  v21 = *(v16 + 8);
  v125 = v15;
  v124 = v16 + 8;
  v123 = v21;
  v21(v18, v15);
  v22 = v20;
  v23 = 1.0;
  v24.f32[0] = 1.0 - v22;
  *&v134 = a1;
  sub_10002319C();
  sub_1000232EC();
  v26 = v25;
  v27 = *(v12 + 8);
  v122 = v11;
  v121 = v12 + 8;
  v27(v14, v11);
  v135 = v4;
  v126 = v4[OBJC_IVAR____TtC20PridePosterExtension17PrideGridRenderer_isiPad];
  if (v126 != 1)
  {
    v36 = (v24.f32[0] * -0.8) + 1.0;
    v29 = v134;
    p_class_meths = v132;
    v44 = v129;
    v42 = v133;
    goto LABEL_5;
  }

  v118 = v27;
  if (qword_10003BE70 != -1)
  {
    goto LABEL_71;
  }

  while (1)
  {
    v28 = qword_10003C6A0;
    v29 = v134;
    sub_10002318C();
    sub_10002330C();
    v31 = v30;
    v32 = v125;
    v33 = v123;
    v123(v18, v125);
    v34 = v31 / 0.833333333;
    *&v34 = v31 / 0.833333333;
    *&v34 = fminf(*&v34, v23);
    [v28 _solveForInput:v34];
    v36 = v35;
    v37 = qword_10003C6A8;
    sub_10002318C();
    sub_10002330C();
    v39 = v38;
    v33(v18, v32);
    v40 = v39 / 0.277777778;
    *&v40 = v39 / 0.277777778;
    *&v40 = fminf(*&v40, v23);
    [v37 _solveForInput:v40];
    v23 = v41;
    v42 = v133;
    p_class_meths = v132;
    v44 = v129;
    v27 = v118;
LABEL_5:
    v45 = v26;
    v46 = 0.0;
    if (sub_1000231BC())
    {
      v47 = v42;
      v14 = v135;
      goto LABEL_51;
    }

    v48 = OBJC_IVAR____TtC20PridePosterExtension17PrideGridRenderer_lastNonSnapshotState;
    v49 = v135;
    swift_beginAccess();
    v129 = v48;
    sub_10000DA38(v48 + v49, v44, &qword_10003C8C8, &qword_1000268B0);
    v50 = v128;
    v51 = v130;
    if ((*(v128 + 48))(v44, 1, v130) == 1)
    {
      sub_10000ABCC(v44, &qword_10003C8C8, &qword_1000268B0);
      sub_10002319C();
      sub_1000232EC();
      v26 = v52;
      v27(v14, v122);
      v14 = v135;
      if (v26 == 1.0)
      {
        v135[OBJC_IVAR____TtC20PridePosterExtension17PrideGridRenderer_lastLockTransitionWasToUnlocked] = 1;
      }

      v67 = v130;
      v68 = v128;
      v47 = v133;
      goto LABEL_50;
    }

    (*(v50 + 32))(v131, v44, v51);
    sub_10002319C();
    sub_1000232EC();
    v54 = v53;
    v55 = v122;
    v56 = v27;
    v27(v14, v122);
    p_class_meths = &OBJC_PROTOCOL___MTLDevice.class_meths;
    if (v54 != 1.0 || (sub_10002319C(), sub_1000232EC(), v58 = v57, v27(v14, v55), v58 == 1.0) || (v135[OBJC_IVAR____TtC20PridePosterExtension17PrideGridRenderer_lastLockTransitionWasToUnlocked] & 1) != 0)
    {
      sub_10002319C();
      sub_1000232EC();
      v60 = v59;
      v27(v14, v55);
      v47 = v133;
      if (v60 == 0.0)
      {
        sub_10002319C();
        sub_1000232EC();
        v62 = v61;
        v56(v14, v55);
        if (v62 != 0.0 && v135[OBJC_IVAR____TtC20PridePosterExtension17PrideGridRenderer_lastLockTransitionWasToUnlocked] == 1)
        {
          v63 = v135;
          v135[OBJC_IVAR____TtC20PridePosterExtension17PrideGridRenderer_lastLockTransitionWasToUnlocked] = 0;
          v64 = *&v63[OBJC_IVAR____TtC20PridePosterExtension17PrideGridRenderer_lastSettledOffset];
          v65 = __OFADD__(v64, 2);
          v66 = v64 + 2;
          if (v65)
          {
            goto LABEL_77;
          }

          *&v63[OBJC_IVAR____TtC20PridePosterExtension17PrideGridRenderer_lastSettledOffset] = v66 % 12;
          sub_10000C398();
        }
      }
    }

    else
    {
      v135[OBJC_IVAR____TtC20PridePosterExtension17PrideGridRenderer_lastLockTransitionWasToUnlocked] = 1;
      v47 = v133;
    }

    sub_10002318C();
    sub_10002331C();
    v26 = v69;
    v123(v18, v125);
    v70 = v26;
    v71 = 1.0;
    v72 = 1.0 - v70;
    if ((v126 & 1) == 0)
    {
      goto LABEL_25;
    }

    v67 = v130;
    if (v24.f32[0] == 1.0)
    {
      v68 = v128;
      (*(v128 + 8))(v131, v130);
      v73 = OBJC_IVAR____TtC20PridePosterExtension17PrideGridRenderer_currentLayoutIndex;
      v14 = v135;
      v74 = *&v135[OBJC_IVAR____TtC20PridePosterExtension17PrideGridRenderer_currentLayoutIndex];
      v65 = __OFADD__(v74, 1);
      v75 = v74 + 1;
      if (v65)
      {
        goto LABEL_74;
      }

      v76 = *(*&v135[OBJC_IVAR____TtC20PridePosterExtension17PrideGridRenderer_layouts] + 16);
      if (v76)
      {
LABEL_31:
        *&v14[v73] = v75 % v76;
        goto LABEL_47;
      }

      __break(1u);
LABEL_25:
      v67 = v130;
      if (v24.f32[0] <= 0.0 || v72 > v24.f32[0])
      {
        v68 = v128;
        (*(v128 + 8))(v131, v130);
        v14 = v135;
        if (v24.f32[0] < v72)
        {
          v78 = &v135[OBJC_IVAR____TtC20PridePosterExtension17PrideGridRenderer_nextLayoutIndex];
          *v78 = 0;
          v78[8] = 1;
        }

        goto LABEL_47;
      }

      v14 = v135;
      v68 = v128;
      if (v24.f32[0] == v71 && v72 == 0.0)
      {
        (*(v128 + 8))(v131, v130);
        v73 = OBJC_IVAR____TtC20PridePosterExtension17PrideGridRenderer_currentLayoutIndex;
        v77 = *&v14[OBJC_IVAR____TtC20PridePosterExtension17PrideGridRenderer_currentLayoutIndex];
        v65 = __OFADD__(v77, 1);
        v75 = v77 + 1;
        if (v65)
        {
          goto LABEL_75;
        }

        v76 = *(*&v14[OBJC_IVAR____TtC20PridePosterExtension17PrideGridRenderer_layouts] + 16);
        if (!v76)
        {
          goto LABEL_76;
        }

        goto LABEL_31;
      }

      if (v24.f32[0] >= 0.25)
      {
        v87 = &v135[OBJC_IVAR____TtC20PridePosterExtension17PrideGridRenderer_nextLayoutIndex];
        if ((v135[OBJC_IVAR____TtC20PridePosterExtension17PrideGridRenderer_nextLayoutIndex + 8] & 1) == 0)
        {
          *&v135[OBJC_IVAR____TtC20PridePosterExtension17PrideGridRenderer_currentLayoutIndex] = *v87;
          *v87 = 0;
          v87[8] = 1;
          sub_10000C3B8();
          v67 = v130;
        }

        v23 = ((v24.f32[0] + -0.25) / 0.75) * 0.2;
        (*(v68 + 8))(v131, v67);
        v45 = 0.0;
        goto LABEL_46;
      }

      (*(v128 + 8))(v131, v130);
      v23 = (v24.f32[0] * -4.0) + 1.0;
      v83 = &v14[OBJC_IVAR____TtC20PridePosterExtension17PrideGridRenderer_nextLayoutIndex];
      if (v14[OBJC_IVAR____TtC20PridePosterExtension17PrideGridRenderer_nextLayoutIndex + 8] == 1)
      {
        v84 = *&v14[OBJC_IVAR____TtC20PridePosterExtension17PrideGridRenderer_currentLayoutIndex];
        v65 = __OFADD__(v84, 1);
        v85 = v84 + 1;
        if (v65)
        {
          __break(1u);
        }

        else
        {
          v86 = *(*&v14[OBJC_IVAR____TtC20PridePosterExtension17PrideGridRenderer_layouts] + 16);
          if (v86)
          {
            *v83 = v85 % v86;
            v83[8] = 0;
            goto LABEL_46;
          }
        }

        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
      }

LABEL_46:
      v36 = v23;
      goto LABEL_47;
    }

    v14 = v135;
    if (v24.f32[0] >= v72)
    {
      v68 = v128;
      (*(v128 + 8))(v131, v130);
      goto LABEL_47;
    }

    v55 = v47;
    if (qword_10003BE70 != -1)
    {
LABEL_78:
      swift_once();
    }

    v79 = qword_10003C6B0;
    sub_10002318C();
    sub_10002330C();
    v26 = v80;
    v123(v18, v125);
    *&v81 = v26;
    [v79 _solveForInput:v81];
    LODWORD(v26) = v82;
    v68 = v128;
    v67 = v130;
    (*(v128 + 8))(v131, v130);
    v46 = (1.0 - *&v26) * -0.5;
    v47 = v55;
LABEL_47:
    if (*(&p_class_meths[216]->entrysize + v14))
    {
      v45 = 1.0;
    }

    p_class_meths = v132;
LABEL_50:
    v88 = v120;
    (*(v68 + 16))(v120, v29, v67);
    (*(v68 + 56))(v88, 0, 1, v67);
    v89 = v129;
    swift_beginAccess();
    sub_10000DAA0(v88, v89 + v14);
    swift_endAccess();
LABEL_51:
    v29 = [objc_allocWithZone(MTLRenderPassDescriptor) init];
    v90 = [v29 colorAttachments];
    v91 = [v90 objectAtIndexedSubscript:0];

    if (!v91)
    {
      goto LABEL_81;
    }

    [v91 setLoadAction:0];

    v92 = [v29 colorAttachments];
    v93 = [v92 objectAtIndexedSubscript:0];

    if (!v93)
    {
      goto LABEL_82;
    }

    [v93 setTexture:p_class_meths];

    v94 = [v127 renderCommandEncoderWithDescriptor:v29];
    if (!v94)
    {
      sub_100005838();
      swift_allocError();
      *v102 = 2;
      swift_willThrow();
      goto LABEL_67;
    }

    v18 = v94;
    v55 = v47;
    [v94 setRenderPipelineState:*(v14 + 4)];
    v95 = v14[64];
    v119 = v24.f32[0];
    *&v135 = v23;
    *&v131 = v36;
    *&v130 = v46;
    if (v95)
    {
      v96 = *&v14[OBJC_IVAR____TtC20PridePosterExtension17PrideGridRenderer_currentLayoutIndex];
      if ((v96 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v97 = *&v14[OBJC_IVAR____TtC20PridePosterExtension17PrideGridRenderer_layouts];
        if (v96 < *(v97 + 16))
        {
          v98 = v97 + 24 * v96;
          v99 = (v98 + 32);
          v100 = *(v98 + 40);
          LODWORD(v26) = *(v98 + 44);
          v101 = (v98 + 48);
          goto LABEL_60;
        }
      }

      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v99 = (v14 + 40);
    v101 = (v14 + 56);
    v100 = *(v14 + 12);
    LODWORD(v26) = *(v14 + 13);
LABEL_60:
    v129 = *v101;
    v24 = *v99;
    v103 = [p_class_meths width];
    v136 = v103 / [p_class_meths height];
    [v18 setVertexBytes:&v136 length:4 atIndex:0];
    if (v126)
    {
      v23 = 6.3348;
    }

    else
    {
      v23 = 4.0;
    }

    sub_10000AED8(v24, v100, *&v26);
    v105 = v104;
    v107 = v106;
    sub_1000231DC();
    v132 = v108;
    sub_1000231CC();
    v111 = __sincosf_stret(v100 + v109);
    *&v110 = v111.__cosval;
    v134 = v110;
    v112 = powf(1.0 - v45, 1.4);
    *v113.i32 = v23 * *&v26;
    if (COERCE_INT(fabs(v23 * *&v26)) > 2139095039)
    {
      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    if (*v113.i32 <= -32769.0)
    {
      goto LABEL_69;
    }

    if (*v113.i32 < 32768.0)
    {
      break;
    }

LABEL_70:
    __break(1u);
LABEL_71:
    swift_once();
  }

  v114 = 1.0 / (((v119 * -0.05) + 1.0) * *&v26);
  v115.i32[0] = v134;
  v115.f32[1] = -v111.__sinval;
  v116 = vmul_n_f32(v115, v114);
  v115.f32[0] = *&v14[OBJC_IVAR____TtC20PridePosterExtension17PrideGridRenderer_lastSettledOffset];
  v117 = *v113.i32;
  *v113.i32 = v114 * v111.__sinval;
  v137[0] = v116;
  v137[1] = vzip1_s32(v113, v116);
  v137[2] = vadd_f32(v24, vmul_n_f32(v129, *&v132));
  v138 = v131;
  v139 = v135;
  v140 = 1.0 - v112;
  v141 = *&v130 + v115.f32[0];
  v142 = v117;
  v143 = v105;
  v144 = v107;
  [v18 setFragmentBytes:v137 length:56 atIndex:0];
  [v18 drawPrimitives:3 vertexStart:0 vertexCount:3];
  [v18 endEncoding];
  swift_unknownObjectRelease();
LABEL_67:
}

void sub_10000C3E0(void *a1, uint64_t a2, void *a3)
{
  v7 = [objc_opt_self() standardUserDefaults];
  v8 = *(v3 + *a1);
  sub_10002348C(*(v3 + OBJC_IVAR____TtC20PridePosterExtension17PrideGridRenderer_instanceIdentifier));
  v14._countAndFlagsBits = 45;
  v14._object = 0xE100000000000000;
  sub_10002348C(v14);
  v15._countAndFlagsBits = a2;
  v15._object = a3;
  sub_10002348C(v15);
  v9 = sub_10002340C();

  [v7 setInteger:v8 forKey:{v9, 0x2D64697267, 0xE500000000000000}];

  v10 = *(v3 + 16);
  if (v10)
  {
    v11 = *(v3 + 24);

    v10(v12);

    sub_10000D978(v10, v11);
  }
}

uint64_t sub_10000C520()
{
  sub_10000D978(*(v0 + 16), *(v0 + 24));
  swift_unknownObjectRelease();
  sub_10000ABCC(v0 + OBJC_IVAR____TtC20PridePosterExtension17PrideGridRenderer_lastNonSnapshotState, &qword_10003C8C8, &qword_1000268B0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PrideGridRenderer(uint64_t a1)
{
  result = qword_10003C720;
  if (!qword_10003C720)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000C61C(uint64_t a1)
{
  sub_10000C704(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10000C704(uint64_t a1)
{
  if (!qword_10003C730)
  {
    sub_10002321C();
    v1 = sub_1000235FC();
    if (!v2)
    {
      atomic_store(v1, &qword_10003C730);
    }
  }
}

__n128 initializeBufferWithCopyOfBuffer for PrideGridRenderer.Layout(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PrideGridRenderer.Layout(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PrideGridRenderer.Layout(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

uint64_t sub_10000C7D4()
{
  if (qword_10003BE50 != -1)
  {
    swift_once();
  }

  v0 = qword_10003D478;
  v1 = qword_10003D478;
  return v0;
}

uint64_t sub_10000C838@<X0>(uint64_t a1@<X8>)
{
  if (qword_10003BE58 != -1)
  {
    swift_once();
  }

  v2 = sub_100002398(&unk_10003C8F0, &qword_1000268D0);
  v3 = sub_100003EAC(v2, qword_10003D480);
  return sub_10000DA38(v3, a1, &unk_10003C8F0, &qword_1000268D0);
}

void sub_10000C8C8(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  type metadata accessor for PrideGridRenderer(0);
  swift_allocObject();
  sub_10000D404(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = v11;
  }
}

uint64_t sub_10000C96C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_10000D978(v3, v4);
}

uint64_t sub_10000C980(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  sub_10000CA4C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
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
    sub_100008588(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100003F2C(v11);
  return v7;
}

void sub_10000CA4C(uint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
          *(__dst + v9) = 0;
          *a1 = __dst;
          return;
        }
      }
    }

LABEL_8:
    sub_10000CB58(a5, a6);
    *a1 = v8;
    return;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    v7 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    v7 = sub_10002368C();
    a6 = v11;
    if (!v7)
    {
      __break(1u);
      return;
    }
  }

  *a1 = v7;
  if ((a6 & 0x8000000000000000) == 0)
  {
    swift_unknownObjectRetain();
  }
}

void *sub_10000CB58(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000CBA4(a1, a2);
  sub_10000CCD4(&off_100034DF8);
  return v3;
}

void *sub_10000CBA4(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_10000CDC0(v5, 0);
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

  result = sub_10002368C();
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
        v10 = sub_10002349C();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000CDC0(v10, 0);
        result = sub_10002366C();
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

uint64_t sub_10000CCD4(uint64_t result)
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

  result = sub_10000CE34(result, v11, 1, v3);
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

void *sub_10000CDC0(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100002398(&qword_10003C8E8, &qword_1000268C8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000CE34(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002398(&qword_10003C8E8, &qword_1000268C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

unint64_t sub_10000CF28(uint64_t a1, unint64_t a2)
{
  v4 = [objc_opt_self() currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5 == 1)
  {
    if (qword_10003BE68 != -1)
    {
      swift_once();
    }

    v6 = *(qword_10003D4A0 + 16);
    v7 = 9;
    if ((a2 & 0x2000000000000000) != 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (qword_10003BE60 != -1)
    {
      swift_once();
    }

    v6 = *(qword_10003D498 + 16);
    v7 = 1;
    if ((a2 & 0x2000000000000000) != 0)
    {
LABEL_5:
      if ((a2 & 0xF00000000000000) == 0)
      {
        return v7;
      }

      goto LABEL_11;
    }
  }

  if ((a1 & 0xFFFFFFFFFFFFLL) == 0)
  {
    return v7;
  }

LABEL_11:
  v26 = v6;
  *&v31[0] = 0x2D64697267;
  *(&v31[0] + 1) = 0xE500000000000000;
  v32._countAndFlagsBits = a1;
  v32._object = a2;
  sub_10002348C(v32);
  v33._countAndFlagsBits = 45;
  v33._object = 0xE100000000000000;
  sub_10002348C(v33);
  v34._countAndFlagsBits = 0x6E4974756F79616CLL;
  v34._object = 0xEB00000000786564;
  sub_10002348C(v34);
  v8 = objc_opt_self();
  v9 = [v8 standardUserDefaults];
  v10 = sub_10002340C();
  v11 = [v9 objectForKey:v10];

  if (v11)
  {
    sub_10002360C();
    swift_unknownObjectRelease();
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  v31[0] = v29;
  v31[1] = v30;
  if (*(&v30 + 1))
  {
    sub_10000D988();
    if (swift_dynamicCast())
    {

      if (qword_10003BEA8 != -1)
      {
        swift_once();
      }

      v12 = sub_10002335C();
      sub_100003EAC(v12, qword_10003D508);
      v13 = v28;

      v14 = sub_10002333C();
      v15 = sub_10002358C();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *&v31[0] = v17;
        *v16 = 134349314;
        *(v16 + 4) = [v13 integerValue];

        *(v16 + 12) = 2082;
        *(v16 + 14) = sub_10000C980(a1, a2, v31);
        _os_log_impl(&_mh_execute_header, v14, v15, "found layout index “%{public}ld” in defaults for configuration “%{public}s”", v16, 0x16u);
        sub_100003F2C(v17);
      }

      else
      {
      }

      v24 = [v13 integerValue];

      if ((v24 & ~(v24 >> 63)) >= v27)
      {
        return v27;
      }

      else
      {
        return v24 & ~(v24 >> 63);
      }
    }
  }

  else
  {
    sub_10000ABCC(v31, &unk_10003C590, &qword_1000268C0);
  }

  if (qword_10003BEA8 != -1)
  {
    swift_once();
  }

  v18 = sub_10002335C();
  sub_100003EAC(v18, qword_10003D508);
  v19 = sub_10002333C();
  v20 = sub_10002358C();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "did not find identifier in defaults, choosing hero", v21, 2u);
  }

  v22 = [v8 standardUserDefaults];
  v23 = sub_10002340C();

  [v22 setInteger:v7 forKey:v23];

  return v7;
}

void sub_10000D404(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 40) = 0;
  *(v4 + 64) = 1;
  v9 = OBJC_IVAR____TtC20PridePosterExtension17PrideGridRenderer_lastNonSnapshotState;
  v10 = sub_10002321C();
  (*(*(v10 - 8) + 56))(v4 + v9, 1, 1, v10);
  *(v4 + OBJC_IVAR____TtC20PridePosterExtension17PrideGridRenderer_lastLockTransitionWasToUnlocked) = 0;
  *(v4 + OBJC_IVAR____TtC20PridePosterExtension17PrideGridRenderer_lastSettledOffset) = 0;
  v11 = v4 + OBJC_IVAR____TtC20PridePosterExtension17PrideGridRenderer_nextLayoutIndex;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = [a1 newDefaultLibrary];
  if (!v12)
  {

    sub_100005838();
    swift_allocError();
    *v27 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  v13 = v12;
  v14 = [objc_allocWithZone(MTLRenderPipelineDescriptor) init];
  v15 = [v14 colorAttachments];
  v16 = [v15 objectAtIndexedSubscript:0];

  if (v16)
  {
    [v16 setPixelFormat:81];

    v17 = sub_10002340C();
    v18 = [v13 newFunctionWithName:v17];

    [v14 setVertexFunction:v18];
    swift_unknownObjectRelease();
    v19 = sub_10002340C();
    v20 = [v13 newFunctionWithName:v19];

    [v14 setFragmentFunction:v20];
    swift_unknownObjectRelease();
    v34[0] = 0;
    v21 = [a1 newRenderPipelineStateWithDescriptor:v14 error:v34];
    v22 = v34[0];
    if (v21)
    {
      v5[4] = v21;
      v23 = objc_opt_self();
      v24 = v22;
      v25 = [v23 currentDevice];
      v26 = [v25 userInterfaceIdiom];

      *(v5 + OBJC_IVAR____TtC20PridePosterExtension17PrideGridRenderer_isiPad) = v26 == 1;
      if (v26 == 1)
      {
        if (qword_10003BE68 == -1)
        {
          goto LABEL_11;
        }
      }

      else if (qword_10003BE60 == -1)
      {
LABEL_11:

        *(v5 + OBJC_IVAR____TtC20PridePosterExtension17PrideGridRenderer_currentLayoutIndex) = sub_10000CF28(a2, a3);
        v29 = (v5 + OBJC_IVAR____TtC20PridePosterExtension17PrideGridRenderer_instanceIdentifier);
        *v29 = a2;
        v29[1] = a3;
        v30 = objc_opt_self();

        v31 = [v30 standardUserDefaults];
        v34[0] = 0x2D64697267;
        v34[1] = 0xE500000000000000;
        v35._countAndFlagsBits = a2;
        v35._object = a3;
        sub_10002348C(v35);

        v36._countAndFlagsBits = 45;
        v36._object = 0xE100000000000000;
        sub_10002348C(v36);
        v37._countAndFlagsBits = 0x73736572676F7270;
        v37._object = 0xE800000000000000;
        sub_10002348C(v37);
        v32 = sub_10002340C();

        v33 = [v31 integerForKey:v32];

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        *(v5 + OBJC_IVAR____TtC20PridePosterExtension17PrideGridRenderer_lastSettledOffset) = v33;
        return;
      }

      swift_once();
      goto LABEL_11;
    }

    v28 = v34[0];

    sub_10002308C();

    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

LABEL_9:
    swift_unknownObjectRelease();
    sub_10000D978(v5[2], v5[3]);
    sub_10000ABCC(v5 + OBJC_IVAR____TtC20PridePosterExtension17PrideGridRenderer_lastNonSnapshotState, &qword_10003C8C8, &qword_1000268B0);
    type metadata accessor for PrideGridRenderer(0);
    swift_deallocPartialClassInstance();
    return;
  }

  __break(1u);
}

uint64_t sub_10000D978(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_10000D988()
{
  result = qword_10003C8E0;
  if (!qword_10003C8E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10003C8E0);
  }

  return result;
}

uint64_t *sub_10000D9D4(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10000DA38(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002398(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000DAA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002398(&qword_10003C8C8, &qword_1000268B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_10000DB38(unsigned __int8 a1)
{
  v2 = objc_allocWithZone(UIColor);
  if (a1 <= 1u)
  {
    if (!a1)
    {
      v3 = 0.980392157;
      v4 = 0.423529412;
      v5 = 1.0;
      goto LABEL_11;
    }

    v4 = 0.435294118;
    v5 = 0.752941176;
  }

  else
  {
    if (a1 == 2)
    {
      v3 = 0.874509804;
      v4 = 0.376470588;
      v5 = 1.0;
      goto LABEL_11;
    }

    if (a1 == 3)
    {
      v3 = 0.91372549;
      v4 = 0.619607843;
      v5 = 1.0;
      goto LABEL_11;
    }

    v4 = 0.929411765;
    v5 = 0.545098039;
  }

  v3 = 1.0;
LABEL_11:

  return [v2 initWithRed:v3 green:v4 blue:v5 alpha:1.0];
}

uint64_t sub_10000DC18()
{
  v0 = sub_100002398(&unk_10003C8F0, &qword_1000268D0);
  sub_10000D9D4(v0, qword_10003D4A8);
  v1 = sub_100003EAC(v0, qword_10003D4A8);
  v2 = sub_1000232DC();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

Swift::Int sub_10000DCC4()
{
  sub_10002382C();
  sub_10002345C();

  return sub_10002384C();
}

uint64_t sub_10000DD84(uint64_t a1)
{
  sub_10002345C();
}

Swift::Int sub_10000DE30(uint64_t a1)
{
  sub_10002382C();
  sub_10002345C();

  return sub_10002384C();
}

unint64_t sub_10000DEEC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000107C0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_10000DF1C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 6647407;
  v5 = 0xE500000000000000;
  v6 = 0x6565726874;
  v7 = 1920298854;
  if (v2 != 3)
  {
    v7 = 1702259046;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = 7305076;
    v3 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

void sub_10000DFA8()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  byte_10003C900 = v1 == 1;
}

void sub_10000E00C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v96 = a6;
  v13 = sub_1000230BC();
  v94 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v89 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v81 - v17;
  __chkstk_darwin(v16);
  v93 = &v81 - v19;
  v6[2] = 0;
  v6[3] = 0;
  v20 = OBJC_IVAR____TtC20PridePosterExtension19PrideLightsRenderer_lastNonSnapshotState;
  sub_10002320C();
  *(v7 + OBJC_IVAR____TtC20PridePosterExtension19PrideLightsRenderer_lastUnlockTransitionWasToUnlocked) = 0;
  *(v7 + OBJC_IVAR____TtC20PridePosterExtension19PrideLightsRenderer_reduceMotion) = 0;
  v21 = (v7 + OBJC_IVAR____TtC20PridePosterExtension19PrideLightsRenderer_instanceIdentifier);
  v91 = a2;
  *v21 = a2;
  v21[1] = a3;
  v22 = v21;

  v23 = [a1 newDefaultLibrary];
  if (!v23)
  {

    sub_100005838();
    swift_allocError();
    *v47 = 0;
    swift_willThrow();
LABEL_11:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_10000D978(v7[2], v7[3]);
    v46 = v20;
    goto LABEL_18;
  }

  v95 = a3;
  v92 = v23;
  v88 = v13;
  v84 = objc_opt_self();
  v24 = [v84 texture2DDescriptorWithPixelFormat:92 width:a4 height:a5 mipmapped:0];
  [v24 setSampleCount:2];
  [v24 setUsage:4];
  if ([a1 supportsFamily:1004])
  {
    v25 = 3;
  }

  else
  {
    v25 = 2;
  }

  [v24 setStorageMode:v25];
  [v24 setTextureType:4];
  v26 = [a1 newTextureWithDescriptor:v24];
  if (!v26)
  {

    sub_100005838();
    swift_allocError();
    *v48 = 1;
    swift_willThrow();
    swift_unknownObjectRelease();

    goto LABEL_11;
  }

  v83 = a4;
  v85 = a5;
  v86 = v22;
  v87 = v20;
  v7[4] = v26;
  v27 = v26;
  v28 = objc_opt_self();
  swift_unknownObjectRetain();
  v29 = [v28 mainBundle];
  v30 = sub_10002340C();
  v31 = sub_10002340C();
  v32 = [v29 URLForResource:v30 withExtension:v31];

  if (!v32)
  {

    sub_100005838();
    swift_allocError();
    *v49 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v43 = 0;
    v44 = 0;
    v45 = 0;
LABEL_13:
    v46 = v87;
    goto LABEL_14;
  }

  v81 = v27;
  v82 = v24;
  sub_1000230AC();

  v33 = v94;
  v34 = a1;
  v35 = v93;
  v36 = v88;
  (*(v94 + 32))(v93, v18, v88);
  v37 = v89;
  (*(v33 + 16))(v89, v35, v36);
  v38 = v83;
  v39 = v83 / v85;
  swift_unknownObjectRetain();
  v40 = sub_100011E30(v91, v95);
  type metadata accessor for PrideLightsTextMeshDrawer();
  swift_allocObject();
  v41 = v90;
  v42 = sub_100004204(v37, v34, 0x5C, 2, 18, v40, v39);
  v90 = v41;
  if (v41)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    (*(v33 + 8))(v35, v36);
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = v87;
    goto LABEL_14;
  }

  v7[5] = v42;
  v51 = v85;
  v52 = [v84 texture2DDescriptorWithPixelFormat:92 width:v38 height:v85 mipmapped:0];
  [v52 setUsage:5];
  [v52 setStorageMode:2];
  v53 = [v34 newTextureWithDescriptor:v52];
  v46 = v87;
  v54 = v34;
  if (!v53)
  {

    sub_100005838();
    swift_allocError();
    v43 = 1;
    *v62 = 1;
    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    (*(v94 + 8))(v93, v88);
    v44 = 0;
    v45 = 0;
LABEL_14:
    sub_10000D978(v7[2], v7[3]);
    swift_unknownObjectRelease();
    if (v43)
    {

      if ((v44 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else if (!v44)
    {
LABEL_16:
      if (v45)
      {
LABEL_17:
      }

LABEL_18:
      v50 = sub_10002321C();
      (*(*(v50 - 8) + 8))(&v46[v7], v50);

      type metadata accessor for PrideLightsRenderer(0);
      swift_deallocPartialClassInstance();
      return;
    }

    swift_unknownObjectRelease();
    if ((v45 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v89 = v52;
  v7[6] = v53;
  v55 = v38 / 2;
  v56 = v53;
  type metadata accessor for PrideLightsBloomer();
  swift_allocObject();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v57 = v92;
  swift_unknownObjectRetain();
  v58 = v90;
  sub_100014CCC(v54, v57, v55, v51 / 2);
  v60 = v56;
  v61 = v82;
  if (v58)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    (*(v94 + 8))(v93, v88);
    v45 = 0;
    v43 = 1;
    v44 = 1;
    goto LABEL_14;
  }

  v90 = v60;
  v7[7] = v59;
  v63 = [objc_allocWithZone(MTLRenderPipelineDescriptor) init];
  v64 = sub_10002340C();
  v65 = [v57 newFunctionWithName:v64];

  [v63 setVertexFunction:v65];
  swift_unknownObjectRelease();
  v66 = sub_10002340C();
  v67 = [v57 newFunctionWithName:v66];

  [v63 setFragmentFunction:v67];
  swift_unknownObjectRelease();
  v68 = [v63 colorAttachments];
  v69 = [v68 objectAtIndexedSubscript:0];

  if (!v69)
  {
    __break(1u);
    return;
  }

  [v69 setPixelFormat:81];
  v97 = 0;
  v70 = [v54 newRenderPipelineStateWithDescriptor:v63 error:&v97];
  v71 = v97;
  v73 = v94;
  v72 = v95;
  v74 = v91;
  if (!v70)
  {
    v79 = v94;
    v80 = v97;

    sub_10002308C();

    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    (*(v79 + 8))(v93, v88);
    v43 = 1;
    v44 = 1;
    v45 = 1;
    goto LABEL_13;
  }

  v86 = v69;
  v87 = v63;
  v7[8] = v70;
  v75 = v71;
  v98._countAndFlagsBits = v74;
  v98._object = v72;
  v76 = sub_100010864(v98);

  if (qword_10003BE80 != -1)
  {
    swift_once();
  }

  v77 = byte_10003C900;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  type metadata accessor for PrideLightsCameraController();
  v78 = swift_allocObject();
  v78[17] = 21;
  v78[19] = 2;
  (*(v73 + 8))(v93, v88);
  v78[16] = v76;
  v78[18] = v77;
  *(v7 + OBJC_IVAR____TtC20PridePosterExtension19PrideLightsRenderer_cameraController) = v78;
}

void sub_10000EB08(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v119 = a4;
  v108 = a2;
  v118 = a1;
  v121 = sub_1000232FC();
  v120.i64[0] = *(v121 - 8);
  __chkstk_darwin(v121);
  v114.i64[0] = &v103[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v113.i64[0] = sub_10002332C();
  v112.i64[0] = *(v113.i64[0] - 8);
  __chkstk_darwin(v113.i64[0]);
  v111 = &v103[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1000231EC();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v103[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v103[-v12];
  v14 = [objc_allocWithZone(MTLRenderPassDescriptor) init];
  v15 = [v14 colorAttachments];
  v16 = [v15 objectAtIndexedSubscript:0];

  if (!v16)
  {
    goto LABEL_54;
  }

  v17 = *(v4 + 32);
  v18 = v16;
  [v18 setTexture:v17];
  v116 = v4;
  v115 = *(v4 + 48);
  [v18 setResolveTexture:?];
  [v18 setLoadAction:2];
  [v18 setClearColor:{0.0, 0.0, 0.0, 1.0}];
  [v18 setStoreAction:2];

  v19 = [v119 renderCommandEncoderWithDescriptor:v14];
  if (!v19)
  {

    return;
  }

  v122 = v19;
  v109 = v18;
  v110 = v14;
  v20 = v118;
  sub_1000231FC();
  v21 = *(v8 + 88);
  if (v21(v13, v7) == enum case for WallpaperMetalCoordination.WallpaperState.Look.constant(_:))
  {
    (*(v8 + 96))(v13, v7);
    v23 = *v13;
    v22 = v13[1];

    v24 = sub_1000107C0(v23, v22);
    if (v24 == 5)
    {
      v25 = sub_10001080C(v23, v22);
      if (v25 == 5)
      {
        v26 = 0;
      }

      else
      {
        v26 = v25;
      }
    }

    else
    {
      v26 = v24;
    }

    v28 = v118;
  }

  else
  {
    v27 = *(v8 + 8);
    v27(v13, v7);
    sub_1000231FC();
    if (v21(v11, v7) == enum case for WallpaperMetalCoordination.WallpaperState.Look.transitioning(_:))
    {
      (*(v8 + 96))(v11, v7);
      v28 = v11[1];
      v106 = *v11;
      v29 = v11[3];
      v107 = v11[2];
      v30 = v122;
      if (qword_10003BEA8 == -1)
      {
        goto LABEL_11;
      }

      goto LABEL_52;
    }

    v28 = v20;
    v27(v11, v7);
    v26 = 0;
  }

  v42 = v116;
  v30 = v122;
  v35 = v121;
  v36 = v120.i64[0];
  v37 = v114.i64[0];
  while (1)
  {
    v43 = v111;
    sub_10002318C();
    sub_10002331C();
    v45 = v44;
    (*(v112.i64[0] + 8))(v43, v113.i64[0]);
    v46 = v45;
    sub_10002319C();
    sub_1000232EC();
    v48 = v47;
    (*(v36 + 8))(v37, v35);
    v49 = v48;
    if ((sub_1000231BC() & 1) == 0)
    {
      sub_10000FA40();
    }

    v50 = *(v42 + 40);
    if (*(v42 + OBJC_IVAR____TtC20PridePosterExtension19PrideLightsRenderer_reduceMotion))
    {
      v49 = 0.0;
      v51 = 0.0;
    }

    else
    {
      v51 = (v46 * 0.08) + (v49 * 0.2);
    }

    sub_100017984(&v128);
    v121 = v50;
    v52 = *(v50 + 24);
    if (!*(v52 + 16))
    {
      goto LABEL_40;
    }

    v53 = sub_100005948(v26);
    if ((v54 & 1) == 0)
    {
      goto LABEL_40;
    }

    v55 = *(*(v52 + 56) + 8 * v53);
    swift_unknownObjectRetain();
    [v30 setRenderPipelineState:v55];
    [v30 setCullMode:0];
    v29 = [*(v121 + 16) vertexBuffers];
    sub_100003EE4(0, &unk_10003CAB0, MTKMeshBuffer_ptr);
    v56 = sub_1000234EC();

    if ((v56 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v57 = *(v56 + 32);
      goto LABEL_29;
    }

    __break(1u);
LABEL_52:
    swift_once();
LABEL_11:
    v31 = sub_10002335C();
    sub_100003EAC(v31, qword_10003D508);

    v32 = sub_10002333C();
    v33 = sub_10002359C();

    v34 = os_log_type_enabled(v32, v33);
    v35 = v121;
    v36 = v120.i64[0];
    v37 = v114.i64[0];
    if (v34)
    {
      v38 = swift_slowAlloc();
      v104 = v33;
      v39 = v38;
      v105 = swift_slowAlloc();
      *&v123[0] = v105;
      *v39 = 136315394;
      v40 = sub_10000C980(v106, v28, v123);

      *(v39 + 4) = v40;
      *(v39 + 12) = 2080;
      v41 = sub_10000C980(v107, v29, v123);

      *(v39 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v32, v104, "unexpected look %s → %s", v39, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v26 = 0;
    v28 = v118;
    v42 = v116;
  }

  v57 = sub_10002367C();
LABEL_29:
  v58 = v57;
  v111 = v55;

  v59 = [v58 buffer];
  v107 = v58;
  [v30 setVertexBuffer:v59 offset:objc_msgSend(v58 atIndex:{"offset"), 0}];
  swift_unknownObjectRelease();
  v60 = v121;
  v61 = *(v121 + 64);
  v112 = *(v121 + 48);
  v113 = v61;
  v62 = *(v121 + 96);
  v114 = *(v121 + 80);
  v120 = v62;
  *v69.i64 = sub_1000085E4(*v62.i64, *v114.i64, v63, v64, v65, v66, v67, v68);
  v123[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v112, v69.f32[0]), v113, *v69.f32, 1), v114, v69, 2), v120, v69, 3);
  v123[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v112, v70.f32[0]), v113, *v70.f32, 1), v114, v70, 2), v120, v70, 3);
  v123[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v112, v71.f32[0]), v113, *v71.f32, 1), v114, v71, 2), v120, v71, 3);
  v123[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v112, v72.f32[0]), v113, *v72.f32, 1), v114, v72, 2), v120, v72, 3);
  v124 = v46;
  v125 = v51;
  v126 = v49;
  v127 = v129;
  [v30 setVertexBytes:v123 length:80 atIndex:1];
  [v30 setVertexBuffer:*(v60 + 40) offset:0 atIndex:2];
  [v30 setFragmentBytes:v123 length:80 atIndex:0];
  v73 = [*(v60 + 16) submeshes];
  sub_100003EE4(0, &unk_10003D460, MTKSubmesh_ptr);
  v74 = sub_1000234EC();

  v120.i64[0] = v74;
  if (v74 >> 62)
  {
    v75 = sub_10002373C();
    if (v75)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v75 = *((v120.i64[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v75)
    {
LABEL_31:
      if (v75 >= 1)
      {
        v76 = 0;
        v77 = v120.i64[0] & 0xC000000000000001;
        do
        {
          if (v77)
          {
            v78 = sub_10002367C();
          }

          else
          {
            v78 = *(v120.i64[0] + 8 * v76 + 32);
          }

          v79 = v78;
          ++v76;
          v80 = [v78 indexBuffer];
          v81 = [v79 primitiveType];
          v82 = [v79 indexCount];
          v83 = [v79 indexType];
          v84 = [v80 buffer];
          v85 = [v80 offset];
          [v122 drawIndexedPrimitives:v81 indexCount:v82 indexType:v83 indexBuffer:v84 indexBufferOffset:v85 instanceCount:*(v121 + 32)];

          swift_unknownObjectRelease();
        }

        while (v75 != v76);
        goto LABEL_39;
      }

      __break(1u);
LABEL_54:
      __break(1u);
    }
  }

LABEL_39:

  swift_unknownObjectRelease();
  v28 = v118;
  v42 = v116;
  v30 = v122;
LABEL_40:
  [v30 endEncoding];
  v86 = v117;
  v87 = sub_1000152E4(v115, v119);
  if (v86)
  {
    v88 = sub_1000231BC();

    swift_unknownObjectRelease();
    if ((v88 & 1) == 0)
    {
      v89 = OBJC_IVAR____TtC20PridePosterExtension19PrideLightsRenderer_lastNonSnapshotState;
      swift_beginAccess();
      v90 = sub_10002321C();
      (*(*(v90 - 8) + 24))(v42 + v89, v28, v90);
      swift_endAccess();
    }
  }

  else
  {
    v117 = 0;
    v91 = v87;
    v92 = [objc_allocWithZone(MTLRenderPassDescriptor) init];
    v93 = [v92 colorAttachments];
    v94 = [v93 objectAtIndexedSubscript:0];

    if (!v94)
    {
      __break(1u);
      return;
    }

    v95 = v94;
    [v95 setLoadAction:0];
    [v95 setStoreAction:1];
    [v95 setTexture:v108];

    v96 = [v119 renderCommandEncoderWithDescriptor:v92];
    if (v96)
    {
      v97 = v96;
      swift_getObjectType();
      [v97 setRenderPipelineState:*(v42 + 64)];
      [v97 setFragmentTexture:v115 atIndex:0];
      [v97 setFragmentTexture:v91 atIndex:1];
      sub_100001D50();
      [v97 endEncoding];
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      v98 = v118;
      v99 = sub_1000231BC();

      swift_unknownObjectRelease();
      if (v99)
      {
        return;
      }
    }

    else
    {
      swift_unknownObjectRelease();

      v98 = v118;
      v100 = sub_1000231BC();

      swift_unknownObjectRelease();
      if (v100)
      {
        return;
      }
    }

    v101 = OBJC_IVAR____TtC20PridePosterExtension19PrideLightsRenderer_lastNonSnapshotState;
    swift_beginAccess();
    v102 = sub_10002321C();
    (*(*(v102 - 8) + 24))(v42 + v101, v98, v102);
    swift_endAccess();
  }
}

void sub_10000FA40()
{
  v0 = sub_10002332C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002321C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000232FC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10003BE80 != -1)
  {
    swift_once();
  }

  if (byte_10003C900)
  {
    sub_10002318C();
    sub_10002330C();
    v13 = v12;
    v14 = *(v1 + 8);
    v14(v3, v0);
    if (v13 != 0.0)
    {
      v15 = OBJC_IVAR____TtC20PridePosterExtension19PrideLightsRenderer_lastNonSnapshotState;
      v16 = v56;
      swift_beginAccess();
      (*(v5 + 16))(v7, v16 + v15, v4);
      sub_10002318C();
      (*(v5 + 8))(v7, v4);
      sub_10002330C();
      v18 = v17;
      v14(v3, v0);
      if (v18 == 0.0)
      {
        v19 = v56;
        v20 = *(v56 + 16);
        if (v20)
        {
          v21 = *(v56 + 24);

          v20(v22);
          sub_10000D978(v20, v21);
        }

        v23 = *(v19 + OBJC_IVAR____TtC20PridePosterExtension19PrideLightsRenderer_cameraController);
        sub_100017C70();
        LOBYTE(v23) = *(v23 + 16);
        v24 = [objc_opt_self() standardUserDefaults];
        sub_100015CA8(v23);
        v25 = sub_10002340C();

        v59 = *(v19 + OBJC_IVAR____TtC20PridePosterExtension19PrideLightsRenderer_instanceIdentifier);
        v57 = 0x2D73746867696CLL;
        v58 = 0xE700000000000000;
        sub_10002348C(v59);
        v60._countAndFlagsBits = 45;
        v60._object = 0xE100000000000000;
        sub_10002348C(v60);
        v61._object = 0x8000000100025AA0;
        v61._countAndFlagsBits = 0xD000000000000010;
        sub_10002348C(v61);
        v26 = sub_10002340C();

        [v24 setObject:v25 forKey:v26];
      }
    }

    return;
  }

  sub_10002319C();
  sub_1000232EC();
  v28 = v27;
  v29 = *(v9 + 8);
  v29(v11, v8);
  v30 = v28;
  v31 = OBJC_IVAR____TtC20PridePosterExtension19PrideLightsRenderer_lastNonSnapshotState;
  v32 = v56;
  swift_beginAccess();
  (*(v5 + 16))(v7, v32 + v31, v4);
  sub_10002319C();
  (*(v5 + 8))(v7, v4);
  sub_1000232EC();
  v34 = v33;
  v29(v11, v8);
  v35 = v34;
  if (v30 == 0.0)
  {
    if (v35 != 0.0)
    {
      v36 = OBJC_IVAR____TtC20PridePosterExtension19PrideLightsRenderer_lastUnlockTransitionWasToUnlocked;
      if (*(v32 + OBJC_IVAR____TtC20PridePosterExtension19PrideLightsRenderer_lastUnlockTransitionWasToUnlocked) == 1)
      {
        if (qword_10003BEA8 != -1)
        {
          swift_once();
        }

        v37 = sub_10002335C();
        sub_100003EAC(v37, qword_10003D508);
        v38 = sub_10002333C();
        v39 = sub_10002358C();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          *v40 = 0;
          _os_log_impl(&_mh_execute_header, v38, v39, "finished lock transition", v40, 2u);
        }

        sub_100017C70();
        *(v32 + v36) = 0;
        return;
      }
    }
  }

  else if (v35 == 0.0)
  {
    v41 = *(v32 + 16);
    if (v41)
    {
      v42 = *(v32 + 24);

      v41(v43);
      sub_10000D978(v41, v42);
    }
  }

  if (v30 == 1.0 && v35 != 1.0)
  {
    v45 = OBJC_IVAR____TtC20PridePosterExtension19PrideLightsRenderer_lastUnlockTransitionWasToUnlocked;
    if ((*(v56 + OBJC_IVAR____TtC20PridePosterExtension19PrideLightsRenderer_lastUnlockTransitionWasToUnlocked) & 1) == 0)
    {
      v46 = v56;
      v47 = *(v56 + OBJC_IVAR____TtC20PridePosterExtension19PrideLightsRenderer_cameraController);
      v48 = *(v47 + 17);
      if (v48 == 21)
      {
        LOBYTE(v48) = *(v47 + 16);
      }

      else
      {
        *(v47 + 16) = v48;
      }

      *(v47 + 17) = 21;
      if (qword_10003BEA8 != -1)
      {
        swift_once();
      }

      v49 = sub_10002335C();
      sub_100003EAC(v49, qword_10003D508);
      v50 = sub_10002333C();
      v51 = sub_10002358C();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&_mh_execute_header, v50, v51, "finished unlock transition", v52, 2u);
      }

      v53 = [objc_opt_self() standardUserDefaults];
      sub_100015CA8(v48);
      v54 = sub_10002340C();

      v62 = *(v46 + OBJC_IVAR____TtC20PridePosterExtension19PrideLightsRenderer_instanceIdentifier);
      v57 = 0x2D73746867696CLL;
      v58 = 0xE700000000000000;
      sub_10002348C(v62);
      v63._countAndFlagsBits = 45;
      v63._object = 0xE100000000000000;
      sub_10002348C(v63);
      v64._object = 0x8000000100025AA0;
      v64._countAndFlagsBits = 0xD000000000000010;
      sub_10002348C(v64);
      v55 = sub_10002340C();

      [v53 setObject:v54 forKey:v55];

      *(v46 + v45) = 1;
    }
  }
}

uint64_t *sub_1000101CC()
{
  sub_10000D978(*(v0 + 16), *(v0 + 24));
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC20PridePosterExtension19PrideLightsRenderer_lastNonSnapshotState;
  v2 = sub_10002321C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_100010280()
{
  sub_1000101CC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PrideLightsRenderer(uint64_t a1)
{
  result = qword_10003C950;
  if (!qword_10003C950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001032C(uint64_t a1)
{
  result = sub_10002321C();
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

uint64_t getEnumTagSinglePayload for PrideLightsRenderer.Palette(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PrideLightsRenderer.Palette(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100010570()
{
  result = qword_10003CA98;
  if (!qword_10003CA98)
  {
    sub_1000105D4(&qword_10003CAA0, qword_100026A60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CA98);
  }

  return result;
}

uint64_t sub_1000105D4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100010620()
{
  result = qword_10003CAA8;
  if (!qword_10003CAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CAA8);
  }

  return result;
}

uint64_t sub_10001067C@<X0>(uint64_t a1@<X8>)
{
  if (qword_10003BE78 != -1)
  {
    swift_once();
  }

  v2 = sub_100002398(&unk_10003C8F0, &qword_1000268D0);
  v3 = sub_100003EAC(v2, qword_10003D4A8);

  return sub_100010CDC(v3, a1);
}

void sub_100010700(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  type metadata accessor for PrideLightsRenderer(0);
  v15 = swift_allocObject();
  sub_10000E00C(a1, a2, a3, a4, a5, a6);
  if (!v7)
  {
    *a7 = v15;
  }
}

unint64_t sub_1000107C0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100034EF0;
  v6._object = a2;
  v4 = sub_10002378C(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10001080C(uint64_t a1, uint64_t a2)
{
  v2 = sub_10002346C();

  if ((v2 - 4) >= 8)
  {
    return 5;
  }

  else
  {
    return (0x305040201050500uLL >> (8 * (v2 - 4)));
  }
}

unint64_t sub_100010864(Swift::String a1)
{
  v1 = HIBYTE(a1._object) & 0xF;
  if ((a1._object & 0x2000000000000000) == 0)
  {
    v1 = a1._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v1)
  {
    object = a1._object;
    countAndFlagsBits = a1._countAndFlagsBits;
    sub_10002348C(a1);
    v28._countAndFlagsBits = 45;
    v28._object = 0xE100000000000000;
    sub_10002348C(v28);
    v29._object = 0x8000000100025AA0;
    v29._countAndFlagsBits = 0xD000000000000010;
    sub_10002348C(v29);
    v4 = objc_opt_self();
    v5 = [v4 standardUserDefaults];
    v6 = sub_10002340C();
    v7 = [v5 stringForKey:v6];

    if (!v7)
    {
LABEL_10:
      if (qword_10003BEA8 != -1)
      {
        swift_once();
      }

      v13 = sub_10002335C();
      sub_100003EAC(v13, qword_10003D508);
      v14 = sub_10002333C();
      v15 = sub_10002358C();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "did not find identifier in defaults, choosing hero", v16, 2u);
      }

      if (qword_10003BE98 != -1)
      {
        swift_once();
      }

      v17 = byte_10003D4E8;
      v18 = [v4 standardUserDefaults];
      sub_100015CA8(v17);
      v19 = sub_10002340C();

      v20 = sub_10002340C();

      [v18 setValue:v19 forKey:v20];

      return v17;
    }

    v8 = sub_10002341C();
    v10 = v9;

    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (!v11 || (, v12 = sub_1000190A8(v8, v10), v12 == 21))
    {

      goto LABEL_10;
    }

    v17 = v12;

    if (qword_10003BEA8 != -1)
    {
      swift_once();
    }

    v22 = sub_10002335C();
    sub_100003EAC(v22, qword_10003D508);

    v23 = sub_10002333C();
    v24 = sub_10002358C();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v25 = 136446466;
      v26 = sub_10000C980(v8, v10, &v27);

      *(v25 + 4) = v26;
      *(v25 + 12) = 2082;
      *(v25 + 14) = sub_10000C980(countAndFlagsBits, object, &v27);
      _os_log_impl(&_mh_execute_header, v23, v24, "found camera identifier “%{public}s” in defaults for configuration “%{public}s”", v25, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
    if (qword_10003BE98 != -1)
    {
      swift_once();
    }

    return byte_10003D4E8;
  }

  return v17;
}

uint64_t sub_100010CDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002398(&unk_10003C8F0, &qword_1000268D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 sub_100010D4C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100010D60(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_100010DA8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_100010E04(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_1000234AC() != a1 || v9 != a2)
  {
    v10 = sub_1000237AC();

    if (v10)
    {
      return v8;
    }

    v8 = sub_10002347C();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

id sub_100010EF4(void *a1)
{
  v24[0] = 0;
  v3 = [objc_msgSend(a1 "sourceContents")];
  swift_unknownObjectRelease();
  v4 = v24[0];
  if (v3)
  {
    sub_1000233CC();
    v5 = v4;
  }

  else
  {
    v6 = v24[0];
    sub_10002308C();

    swift_willThrow();

    sub_100007E54(_swiftEmptyArrayStorage);
  }

  *&v22 = 0xD000000000000011;
  *(&v22 + 1) = 0x8000000100025AE0;
  sub_10002364C();
  v7 = *v1;
  v8 = v1[1];
  v23 = &type metadata for String;
  *&v22 = v7;
  *(&v22 + 1) = v8;
  sub_1000081FC(&v22, v21);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_10001E534(v21, v24, isUniquelyReferenced_nonNull_native);
  sub_100008138(v24);
  *&v22 = 0xD000000000000012;
  *(&v22 + 1) = 0x8000000100025960;
  sub_10002364C();
  v10 = v1[2];
  v11 = v1[3];
  v23 = &type metadata for String;
  *&v22 = v10;
  *(&v22 + 1) = v11;
  sub_1000081FC(&v22, v21);

  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_10001E534(v21, v24, v12);
  sub_100008138(v24);
  v13 = v1[5];
  if (v13)
  {
    v14 = v1[4];
    strcpy(&v22, "lookIdentifier");
    HIBYTE(v22) = -18;

    sub_10002364C();
    v23 = &type metadata for String;
    *&v22 = v14;
    *(&v22 + 1) = v13;
    sub_1000081FC(&v22, v21);
    v15 = swift_isUniquelyReferenced_nonNull_native();
    sub_10001E534(v21, v24, v15);
    sub_100008138(v24);
  }

  v16 = [a1 targetConfiguration];
  isa = sub_1000233BC().super.isa;

  v24[0] = 0;
  v18 = [v16 storeUserInfo:isa error:v24];

  if (v18)
  {
    return v24[0];
  }

  v20 = v24[0];
  sub_10002308C();

  return swift_willThrow();
}

uint64_t sub_10001125C@<X0>(uint64_t *a2@<X8>)
{
  v42 = sub_10002310C();
  v3 = *(v42 - 8);
  __chkstk_darwin(v42);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = &OBJC_PROTOCOL___PRPosterRenderingEnvironment;
  v6 = swift_dynamicCastObjCProtocolConditional();
  if (v6)
  {
    v7 = &selRef_contents;
  }

  else
  {
    v47 = &OBJC_PROTOCOL___PRPosterEditingEnvironment;
    v6 = swift_dynamicCastObjCProtocolConditional();
    if (!v6)
    {
      swift_unknownObjectRelease();
      v41 = 0;
      goto LABEL_9;
    }

    v7 = &selRef_sourceContents;
  }

  v8 = [v6 *v7];
  swift_unknownObjectRelease();
  v45[0] = 0;
  v41 = v8;
  v9 = [v8 loadUserInfoWithError:v45];
  v10 = v45[0];
  if (v9)
  {
    v11 = v9;
    v12 = sub_1000233CC();
    v13 = v10;

    goto LABEL_10;
  }

  v14 = v45[0];
  sub_10002308C();

  swift_willThrow();

LABEL_9:
  v12 = sub_100007E54(_swiftEmptyArrayStorage);
LABEL_10:
  if (qword_10003BEA8 != -1)
  {
    swift_once();
  }

  v15 = sub_10002335C();
  sub_100003EAC(v15, qword_10003D508);

  v16 = sub_10002333C();
  v17 = sub_10002358C();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v45[0] = v19;
    *v18 = 136315138;
    v20 = sub_1000233DC();
    v22 = sub_10000C980(v20, v21, v45);

    *(v18 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v16, v17, "\nloaded user info: %s\n\n", v18, 0xCu);
    sub_100003F2C(v19);
  }

  v43 = 0xD000000000000017;
  v44 = 0x8000000100025AC0;
  sub_10002364C();
  if (!*(v12 + 16) || (v23 = sub_10000588C(v45), (v24 & 1) == 0))
  {
    sub_100008138(v45);
    goto LABEL_19;
  }

  sub_100008588(*(v12 + 56) + 32 * v23, v46);
  sub_100008138(v45);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    v43 = 0xD000000000000011;
    v44 = 0x8000000100025AE0;
    sub_10002364C();
    if (*(v12 + 16) && (v29 = sub_10000588C(v45), (v30 & 1) != 0))
    {
      sub_100008588(*(v12 + 56) + 32 * v29, v46);
      sub_100008138(v45);
      if (swift_dynamicCast())
      {
        v25 = v43;
        v26 = v44;
LABEL_25:
        v43 = 0xD000000000000012;
        v44 = 0x8000000100025960;
        sub_10002364C();
        if (*(v12 + 16) && (v32 = sub_10000588C(v45), (v33 & 1) != 0))
        {
          sub_100008588(*(v12 + 56) + 32 * v32, v46);
          sub_100008138(v45);
          if (swift_dynamicCast())
          {
            v28 = v43;
            v27 = v44;
            goto LABEL_31;
          }
        }

        else
        {
          sub_100008138(v45);
        }

        sub_1000230FC();
        v28 = sub_1000230DC();
        v27 = v34;
        (*(v3 + 8))(v5, v42);
        goto LABEL_31;
      }
    }

    else
    {
      sub_100008138(v45);
    }

    sub_1000230FC();
    v25 = sub_1000230DC();
    v26 = v31;
    (*(v3 + 8))(v5, v42);
    goto LABEL_25;
  }

  v25 = v43;
  v26 = v44;
  v27 = 0x8000000100025B00;
  v28 = 0xD000000000000024;
LABEL_31:
  strcpy(v46, "lookIdentifier");
  v46[15] = -18;
  sub_10002364C();
  if (*(v12 + 16) && (v35 = sub_10000588C(v45), (v36 & 1) != 0))
  {
    sub_100008588(*(v12 + 56) + 32 * v35, v46);
    swift_unknownObjectRelease();
    sub_100008138(v45);

    result = swift_dynamicCast();
    v38 = v43;
    v39 = v44;
    if (!result)
    {
      v38 = 0;
      v39 = 0;
    }
  }

  else
  {

    swift_unknownObjectRelease();
    result = sub_100008138(v45);
    v38 = 0;
    v39 = 0;
  }

  *a2 = v25;
  a2[1] = v26;
  a2[2] = v28;
  a2[3] = v27;
  a2[4] = v38;
  a2[5] = v39;
  return result;
}

uint64_t sub_1000118B8(void *a1)
{
  v12[0] = 0;
  v1 = [a1 loadUserInfoWithError:v12];
  v2 = v12[0];
  if (v1)
  {
    v3 = v1;
    v4 = sub_1000233CC();
    v5 = v2;

    *&v11[0] = 0xD000000000000011;
    *(&v11[0] + 1) = 0x8000000100025AE0;
    sub_10002364C();
    if (*(v4 + 16) && (v6 = sub_10000588C(v12), (v7 & 1) != 0))
    {
      sub_100008588(*(v4 + 56) + 32 * v6, v11);
      sub_100008138(v12);

      v8 = 1;
    }

    else
    {

      sub_100008138(v12);
      v8 = 0;
      memset(v11, 0, sizeof(v11));
    }

    sub_10000ABCC(v11, &unk_10003C590, &qword_1000268C0);
  }

  else
  {
    v9 = v12[0];
    sub_10002308C();

    swift_willThrow();

    return 0;
  }

  return v8;
}

void sub_100011A40(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10002310C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002398(&unk_10003CB90, " \x1B");
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000263C0;
  v29[0] = 0xD000000000000011;
  v29[1] = 0x8000000100025AE0;
  sub_10002364C();
  sub_1000230FC();
  v11 = sub_1000230DC();
  v13 = v12;
  (*(v7 + 8))(v9, v6);
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = v11;
  *(inited + 80) = v13;
  v14 = sub_100007E54(inited);
  swift_setDeallocating();
  sub_10000ABCC(inited + 32, &qword_10003C498, &qword_100026498);
  if (a3)
  {
    strcpy(&v27, "lookIdentifier");
    HIBYTE(v27) = -18;

    sub_10002364C();
    v28 = &type metadata for String;
    *&v27 = a2;
    *(&v27 + 1) = a3;
    sub_1000081FC(&v27, v26);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25[2] = v14;
    sub_10001E534(v26, v29, isUniquelyReferenced_nonNull_native);
    sub_100008138(v29);
  }

  isa = sub_1000233BC().super.isa;

  v29[0] = 0;
  v17 = [a1 storeUserInfo:isa error:v29];

  v18 = v29[0];
  if (v17)
  {

    v19 = v18;
  }

  else
  {
    v25[1] = v29[0];
    v20 = v29[0];
    sub_10002308C();

    swift_willThrow();
    if (qword_10003BEA8 != -1)
    {
      swift_once();
    }

    v21 = sub_10002335C();
    sub_100003EAC(v21, qword_10003D508);
    v22 = sub_10002333C();
    v23 = sub_10002359C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "couldn’t store descriptor user info", v24, 2u);
    }
  }
}

uint64_t sub_100011E30(uint64_t a1, unint64_t a2)
{
  v4 = sub_100002398(&qword_10003CAC0, " \x1B");
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  sub_100010E04(44, 0xE100000000000000, a1, a2);
  if (v7)
  {
    return 4;
  }

  sub_1000234BC();
  sub_10002344C();

  sub_1000230CC();

  v8 = sub_10002310C();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    sub_10000ABCC(v6, &qword_10003CAC0, " \x1B");
    return 4;
  }

  v11 = sub_1000230EC();
  (*(v9 + 8))(v6, v8);
  return v11;
}

uint64_t sub_100011FAC()
{
  v0 = sub_100002398(&unk_10003C8F0, &qword_1000268D0);
  sub_10000D9D4(v0, qword_10003D4C8);
  v1 = sub_100003EAC(v0, qword_10003D4C8);
  v2 = sub_1000232DC();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

float32x4_t sub_10001204C@<Q0>(char a1@<W0>, float32x4_t *a2@<X8>, float a3@<S0>, float a4@<S1>)
{
  v8 = *v4;
  v37 = *v4;
  LODWORD(v6) = *(v4 + 1);
  v7 = v6 + -2.0;
  LODWORD(v8) = 2.0;
  v9.i32[0] = 0;
  if (a1)
  {
    *&v8 = 0.0;
  }

  v10 = *&v8 + *(&v8 + 2);
  v11 = (*&v8 + *(&v8 + 2)) / (v7 - (*&v8 + *(&v8 + 2)));
  v9.i32[1] = 0;
  v9.i32[3] = -1.0;
  if (fabsf(v10) == INFINITY)
  {
    v9.i32[2] = 0;
    v36 = v9;
  }

  else
  {
    v9.f32[2] = -1.0 - v11;
    v36 = v9;
    v7 = -(v7 * v11);
  }

  v34 = a3 * 11.43;
  v35 = v7;
  v12 = __sincosf_stret(a4);
  *&v13 = -v12.__sinval;
  HIDWORD(v13) = LODWORD(v12.__cosval);
  v14 = v4[3];
  v15 = vaddq_f32(vmlaq_f32(vmulq_n_f32(__PAIR64__(LODWORD(v12.__sinval), LODWORD(v12.__cosval)), v14.f32[0]), 0, v13), 0);
  v16 = vmulq_f32(__PAIR64__(LODWORD(v12.__sinval), LODWORD(v12.__cosval)), 0);
  v17 = vaddq_f32(vmlaq_lane_f32(v16, v13, *v14.f32, 1), 0);
  v18 = vmlaq_f32(v16, 0, v13);
  v19 = vaddq_f32(v18, 0);
  v20 = vaddq_f32(vmlaq_laneq_f32(v18, xmmword_1000264E0, v14, 2), 0);
  v21 = vaddq_f32(v19, xmmword_1000264F0);
  v22 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v15, vdupq_n_s32(0x4136E180u)), 0, v17), 0, v20), 0, v21);
  v23 = vmulq_f32(v15, 0);
  v24 = vmlaq_f32(vmlaq_f32(vmlaq_n_f32(v23, v17, v34), 0, v20), 0, v21);
  v25 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v15, v36.f32[0]), v17, *v36.f32, 1), v20, v36, 2), v21, v36, 3);
  v26 = vmlaq_f32(vmlaq_n_f32(vmlaq_f32(v23, 0, v17), v20, v35), 0, v21);
  v27 = vmulq_f32(v22, 0);
  v28 = vmulq_n_f32(v22, 0.0 - *&v37);
  v29 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v22, 0, v24), 0, v25), 0, v26);
  v30 = vmlaq_f32(vmlaq_f32(vaddq_f32(v24, v27), 0, v25), 0, v26);
  v31 = vmlaq_f32(vaddq_f32(v25, vmlaq_f32(v27, 0, v24)), 0, v26);
  v32 = vmlaq_n_f32(vmlaq_n_f32(v28, v24, 0.0 - *(&v37 + 1)), v25, 0.0 - v6);
  v25.i32[0] = *(v4 + 9);
  *a2 = v29;
  a2[1] = v30;
  result = vaddq_f32(v26, v32);
  a2[2] = v31;
  a2[3] = result;
  a2[4].i32[0] = v25.i32[0];
  return result;
}

float sub_100012224@<S0>(float32x4_t *a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v4 = vsubq_f32(*a1, *v3);
  *&v5 = vaddq_f32(*v3, vmulq_n_f32(v4, a3)).u64[0];
  *(&v5 + 2) = COERCE_FLOAT(v3->i64[1]) + vmuls_lane_f32(a3, v4, 2);
  HIDWORD(v5) = 0;
  v6 = v3[3];
  v7 = vsubq_f32(a1[3], v6);
  *&v8 = vaddq_f32(v6, vmulq_n_f32(v7, a3)).u64[0];
  v6.f32[0] = COERCE_FLOAT(v3[3].i64[1]) + vmuls_lane_f32(a3, v7, 2);
  v7.i32[0] = v3[2].i32[0];
  *(&v8 + 1) = v6.u32[0];
  v6.f32[0] = (a1[2].f32[0] - v7.f32[0]) * a3;
  v9 = vaddq_f32(v3[1], vmulq_n_f32(vsubq_f32(a1[1], v3[1]), a3));
  *a2 = v5;
  *(a2 + 16) = v9;
  result = v7.f32[0] + v6.f32[0];
  *(a2 + 32) = v7.f32[0] + v6.f32[0];
  *(a2 + 36) = 0;
  *(a2 + 48) = v8;
  return result;
}

void sub_1000122A8(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  *(v6 + 144) = xmmword_100026BF0;
  v13 = [a1 newCommandQueue];
  if (!v13)
  {

LABEL_7:
    sub_100005838();
    swift_allocError();
    *v26 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();
LABEL_38:
    swift_unknownObjectRelease();
    goto LABEL_39;
  }

  v74 = a3;
  v14 = v13;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v76 = 0;
  v17 = a1;
  v18 = [a1 newDefaultLibraryWithBundle:v16 error:&v76];

  v19 = v76;
  if (!v18)
  {
    v25 = v76;

    sub_10002308C();

    swift_willThrow();
    swift_unknownObjectRelease();

    goto LABEL_7;
  }

  *(v6 + 32) = v17;
  *(v6 + 40) = v14;
  *(v6 + 16) = a2;
  *(v6 + 24) = v74;
  v20 = v19;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  sub_100013B00(a4, a5, v17, v77);
  if (v7)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    goto LABEL_27;
  }

  v73 = v17;
  v27 = v77[1];
  *(v6 + 72) = v77[0];
  *(v6 + 88) = v27;
  *(v6 + 104) = v78;
  v28 = sub_10002340C();
  v29 = [v18 newFunctionWithName:v28];

  if (!v29)
  {
    goto LABEL_25;
  }

  v30 = sub_10002340C();
  v31 = [v18 newFunctionWithName:v30];

  if (!v31)
  {
LABEL_24:
    swift_unknownObjectRelease();
LABEL_25:

    sub_100005838();
    swift_allocError();
    *v68 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v21 = 0;
    goto LABEL_26;
  }

  v32 = v31;
  v33 = sub_10002340C();
  v34 = [v18 newFunctionWithName:v33];

  if (!v34)
  {
LABEL_23:
    swift_unknownObjectRelease();
    goto LABEL_24;
  }

  v35 = sub_10002340C();
  v36 = [v18 newFunctionWithName:v35];

  if (!v36)
  {
    swift_unknownObjectRelease();
    goto LABEL_23;
  }

  v37 = [objc_allocWithZone(MTLRenderPipelineDescriptor) init];
  [v37 setVertexFunction:v29];
  [v37 setFragmentFunction:v32];
  v38 = [v37 colorAttachments];
  v39 = [v38 objectAtIndexedSubscript:0];

  if (v39)
  {
    [v39 setPixelFormat:80];

    [v37 setRasterSampleCount:4];
    [v37 setDepthAttachmentPixelFormat:250];
    v40 = [objc_allocWithZone(MTLRenderPipelineDescriptor) init];
    [v40 setVertexFunction:v34];
    v41 = v36;
    v42 = v40;
    [v40 setFragmentFunction:v41];
    v43 = [v40 colorAttachments];
    v44 = [v43 objectAtIndexedSubscript:0];

    if (v44)
    {

      [v44 setPixelFormat:10];

      [v42 setDepthAttachmentPixelFormat:250];
      v76 = 0;
      v75 = v37;
      v45 = [v73 newRenderPipelineStateWithDescriptor:v37 error:&v76];
      v46 = v76;
      v21 = v45 != 0;
      if (v45)
      {
        *(v6 + 48) = v45;
        v76 = 0;
        v47 = v46;
        v48 = [v73 newRenderPipelineStateWithDescriptor:v42 error:&v76];
        v46 = v76;
        if (v48)
        {
          *(v6 + 64) = v48;
          v49 = objc_allocWithZone(MTLDepthStencilDescriptor);
          v50 = v46;
          v51 = [v49 init];
          [v51 setDepthWriteEnabled:1];
          [v51 setDepthCompareFunction:4];
          v52 = [v73 newDepthStencilStateWithDescriptor:v51];
          if (v52)
          {
            v72 = v51;
            *(v6 + 56) = v52;
            swift_unknownObjectRetain();
            v53 = sub_100013F34(v73);
            if (v53)
            {
              *(v6 + 120) = v53;
              *(v6 + 128) = v54;
              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
              v55 = [v73 newBufferWithLength:768 options:0];
              if (v55)
              {
                *(v6 + 136) = v55;
                v56 = objc_opt_self();
                swift_unknownObjectRetain();
                swift_unknownObjectRetain();
                v57 = [v56 mainScreen];
                [v57 scale];
                v59 = v58;

                v60 = v59;
                *&v59 = v60 * 20.0;
                v61 = objc_allocWithZone(MPSImageGaussianBlur);
                LODWORD(v62) = LODWORD(v59);
                v63 = [v61 initWithDevice:v73 sigma:v62];
                swift_unknownObjectRelease();
                *(v6 + 112) = v63;
                v64 = [objc_opt_self() currentDevice];
                v65 = [v64 userInterfaceIdiom];

                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();

                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                *(v6 + 160) = v65 == 1;
                return;
              }

              sub_100005838();
              swift_allocError();
              *v71 = 0;
              swift_willThrow();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();

              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              v21 = 1;
              v22 = 1;
              v23 = 1;
              v24 = 1;
            }

            else
            {
              sub_100005838();
              swift_allocError();
              *v70 = 0;
              swift_willThrow();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();

              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              v24 = 0;
              v21 = 1;
              v22 = 1;
              v23 = 1;
            }
          }

          else
          {
            sub_100005838();
            swift_allocError();
            *v69 = 0;
            swift_willThrow();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            v22 = 0;
            v24 = 0;
            v21 = 1;
            v23 = 1;
          }

LABEL_27:

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          if (v21)
          {
            swift_unknownObjectRelease();
            if (!v22)
            {
LABEL_29:
              if (!v23)
              {
                goto LABEL_30;
              }

              goto LABEL_35;
            }
          }

          else if (!v22)
          {
            goto LABEL_29;
          }

          swift_unknownObjectRelease();
          if (!v23)
          {
LABEL_30:
            if (v7)
            {
              goto LABEL_31;
            }

            goto LABEL_36;
          }

LABEL_35:
          swift_unknownObjectRelease();
          if (v7)
          {
LABEL_31:
            if (!v24)
            {
              goto LABEL_39;
            }

LABEL_37:
            swift_unknownObjectRelease();
            goto LABEL_38;
          }

LABEL_36:
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          if (!v24)
          {
LABEL_39:
            type metadata accessor for PrideStripesRenderer();
            swift_deallocPartialClassInstance();
            return;
          }

          goto LABEL_37;
        }
      }

      v66 = v46;
      sub_10002308C();

      swift_willThrow();
      sub_100005838();
      swift_allocError();
      *v67 = 0;
      swift_willThrow();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

LABEL_26:
      v22 = 0;
      v23 = 0;
      v24 = 0;
      goto LABEL_27;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100012E08(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (result)
  {
    v7 = *(v3 + 24) >> 1;
    if (v7 >= v5)
    {
      goto LABEL_11;
    }

    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }
  }

  else if (v4 <= v5)
  {
    v8 = v4 + v2;
  }

  else
  {
    v8 = v4;
  }

  result = sub_1000073F4(result, v8, 1);
  v3 = *v1;
  v7 = *(*v1 + 24) >> 1;
LABEL_11:
  v9 = *(v3 + 16);
  v10 = v7 - v9;
  v11 = *(v6 + 16);
  if (v11)
  {
    if (v10 < v2)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    result = memcpy((v3 + 2 * v9 + 32), (v6 + 32), 2 * v2);
    if (v2)
    {
      v12 = *(v3 + 16);
      v13 = __OFADD__(v12, v2);
      v14 = v12 + v2;
      if (v13)
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      *(v3 + 16) = v14;
    }
  }

  else if (v2)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v2 == v10)
  {
    v15 = *(v6 + 16);
    if (v11 != v15)
    {
      if (v11 >= v15)
      {
LABEL_38:
        __break(1u);
        return result;
      }

      v16 = *(v3 + 16);
      v17 = *(v6 + 32 + 2 * v11);
      v18 = v11 + 1;
      while (1)
      {
LABEL_23:
        v19 = *(v3 + 24);
        if (v16 + 1 > (v19 >> 1))
        {
          result = sub_1000073F4((v19 > 1), v16 + 1, 1);
        }

        v3 = *v1;
        v20 = *(*v1 + 24) >> 1;
        if (v20 > v16)
        {
          break;
        }

        *(v3 + 16) = v16;
      }

      v21 = 0;
      while (1)
      {
        *(v3 + 2 * v16 + 32 + 2 * v21) = v17;
        if (v15 - v18 == v21)
        {

          *(v3 + 16) = v16 + v21 + 1;
          goto LABEL_32;
        }

        if (v18 + v21 >= *(v6 + 16))
        {
          break;
        }

        v17 = *(v6 + 32 + 2 * v18 + 2 * v21++);
        if (v20 - v16 == v21)
        {
          v18 += v21;
          v16 = v20;
          *(v3 + 16) = v20;
          goto LABEL_23;
        }
      }

      __break(1u);
      goto LABEL_34;
    }
  }

LABEL_32:
  *v1 = v3;
  return result;
}

void sub_100012FE0(uint64_t a1, id a2, uint64_t a3, void *a4)
{
  sub_100013520(v45, [a2 width] / objc_msgSend(a2, "height"));
  v7 = v47;
  v55[0] = v45[0];
  v55[1] = v45[1];
  v55[2] = v45[2];
  v55[3] = v45[3];
  v56 = v46;
  v53[0] = v48;
  v53[1] = v49;
  v53[2] = v50;
  v53[3] = v51;
  v54 = v52;
  v8 = *(v4 + 136);
  v9 = [swift_unknownObjectRetain() contents];
  v10 = v8;
  v11 = *(v4 + 144);
  if ((v11 - 0x80000000000000) >> 56 != 255)
  {
    __break(1u);
    goto LABEL_12;
  }

  v12 = &v9[256 * v11];
  v13 = v7[3];
  *v12 = v7[2];
  *(v12 + 1) = v13;
  v14 = v7[4];
  v15 = v7[5];
  v16 = v7[7];
  *(v12 + 4) = v7[6];
  *(v12 + 5) = v16;
  *(v12 + 2) = v14;
  *(v12 + 3) = v15;
  v17 = v7[8];
  v18 = v7[9];
  v19 = v7[11];
  *(v12 + 8) = v7[10];
  *(v12 + 9) = v19;
  *(v12 + 6) = v17;
  *(v12 + 7) = v18;
  v20 = v7[12];
  v21 = v7[13];
  v22 = v7[14];
  *(v12 + 204) = *(v7 + 236);
  *(v12 + 11) = v21;
  *(v12 + 12) = v22;
  *(v12 + 10) = v20;
  v42 = *(v4 + 80);
  v43 = *(v4 + 72);
  v23 = *(v4 + 88);
  v44 = *(v4 + 96);
  sub_100014944(v23, *(v4 + 104));
  v25 = v24;
  v26 = a4;
  v27 = [a4 renderCommandEncoderWithDescriptor:v24];

  if (!v27)
  {
    goto LABEL_5;
  }

  v28 = sub_10002340C();
  [v27 setLabel:v28];

  [v27 setRenderPipelineState:*(v4 + 64)];
  [v27 setDepthStencilState:*(v4 + 56)];
  [v27 setCullMode:0];
  [v27 setVertexBuffer:*(v4 + 120) offset:0 atIndex:0];
  [v27 setVertexBytes:v53 length:80 atIndex:1];
  v29 = *(v4 + 144);
  if ((v29 - 0x80000000000000) >> 56 != 255)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  [v27 setVertexBuffer:v8 offset:v29 << 8 atIndex:2];
  [v27 drawIndexedPrimitives:3 indexCount:2400 indexType:0 indexBuffer:*(v4 + 128) indexBufferOffset:0 instanceCount:11];
  [v27 endEncoding];
  [*(v4 + 112) encodeToCommandBuffer:v26 sourceTexture:v23 destinationTexture:v44];
  swift_unknownObjectRelease();
LABEL_5:
  sub_100014A98(v43, v42);
  v31 = v30;
  v32 = [v30 colorAttachments];
  v33 = [v32 objectAtIndexedSubscript:0];

  if (!v33)
  {
    goto LABEL_15;
  }

  [v33 setResolveTexture:a2];

  v34 = [v26 renderCommandEncoderWithDescriptor:v31];
  if (v34)
  {
    v35 = v34;
    v36 = sub_10002340C();
    [v35 setLabel:v36];

    [v35 setRenderPipelineState:*(v4 + 48)];
    [v35 setDepthStencilState:*(v4 + 56)];
    [v35 setCullMode:0];
    [v35 setVertexBuffer:*(v4 + 120) offset:0 atIndex:0];
    [v35 setVertexBytes:v55 length:80 atIndex:1];
    v37 = *(v4 + 144);
    if ((v37 - 0x80000000000000) >> 56 == 255)
    {
      [v35 setVertexBuffer:v8 offset:v37 << 8 atIndex:2];
      [v35 setFragmentTexture:v44 atIndex:0];
      [v35 drawIndexedPrimitives:3 indexCount:2400 indexType:0 indexBuffer:*(v4 + 128) indexBufferOffset:0 instanceCount:11];
      [v35 endEncoding];
      swift_unknownObjectRelease();

      v38 = *(v4 + 144);
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (!v39)
      {
        *(v4 + 144) = v40 % 3;
        return;
      }

      goto LABEL_14;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  sub_100005838();
  swift_allocError();
  *v41 = 2;
  swift_willThrow();
}

__n128 sub_100013520@<Q0>(uint64_t a1@<X8>, float a2@<S0>)
{
  v5 = sub_10002332C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000232FC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 160);
  sub_1000231CC();
  v15 = v14;
  sub_10002319C();
  sub_1000232EC();
  v17 = v16;
  (*(v10 + 8))(v12, v9);
  sub_1000231DC();
  v19 = v18;
  sub_10002318C();
  sub_10002331C();
  v21 = v20;
  (*(v6 + 8))(v8, v5);
  v22 = v21;
  *&v17 = v17;
  sub_1000141FC(v13, &v38, *&v17, v19, 1.0 - v22);
  v43 = v38;
  v44 = v39;
  v45 = v40;
  v46 = v41;
  v23 = v42;
  v24 = -v15;
  sub_10001204C(0, v36, a2, v24);
  v35 = v36[0];
  v34 = v36[1];
  v33 = v36[2];
  v32 = v36[3];
  LODWORD(v17) = v37;
  sub_10001204C(1, &v38, a2, v24);
  result = v38;
  v26 = v39;
  v27 = v40;
  v28 = v41;
  v29 = v42;
  v30 = v34;
  *a1 = v35;
  *(a1 + 16) = v30;
  v31 = v32;
  *(a1 + 32) = v33;
  *(a1 + 48) = v31;
  *(a1 + 64) = LODWORD(v17);
  *(a1 + 80) = v23;
  *(a1 + 96) = result;
  *(a1 + 112) = v26;
  *(a1 + 128) = v27;
  *(a1 + 144) = v28;
  *(a1 + 160) = v29;
  return result;
}

uint64_t sub_1000137FC()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1000138AC()
{
  sub_1000137FC();

  return swift_deallocClassInstance();
}

__n128 sub_100013904(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100013918(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_100013960(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1000139C0@<X0>(uint64_t a1@<X8>)
{
  if (qword_10003BE88 != -1)
  {
    swift_once();
  }

  v2 = sub_100002398(&unk_10003C8F0, &qword_1000268D0);
  v3 = sub_100003EAC(v2, qword_10003D4C8);

  return sub_100010CDC(v3, a1);
}

void sub_100013A44(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  type metadata accessor for PrideStripesRenderer();
  v15 = swift_allocObject();
  sub_1000122A8(a1, a2, a3, a4, a5, a6);
  if (!v7)
  {
    *a7 = v15;
  }
}

void sub_100013B00(unint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v7 = objc_opt_self();
  v8 = [v7 texture2DDescriptorWithPixelFormat:80 width:a1 height:a2 mipmapped:0];
  [v8 setTextureType:4];
  [v8 setStorageMode:3];
  [v8 setUsage:4];
  [v8 setSampleCount:4];
  [v8 copy];
  sub_10002360C();
  swift_unknownObjectRelease();
  sub_1000141B0();
  swift_dynamicCast();
  [v30 setPixelFormat:250];
  v9 = [a3 newTextureWithDescriptor:v8];
  if (!v9)
  {
    goto LABEL_14;
  }

  v10 = v9;
  v11 = [a3 newTextureWithDescriptor:v30];
  if (!v11)
  {
    swift_unknownObjectRelease();
LABEL_14:
    sub_100005838();
    swift_allocError();
    *v25 = 1;
    swift_willThrow();
    v17 = v8;
    v18 = v30;
LABEL_19:

    return;
  }

  v12 = ceilf(vcvts_n_f32_s64(a1, 2uLL));
  if ((LODWORD(v12) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v12 <= -9.2234e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v12 >= 9.2234e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v13 = ceilf(vcvts_n_f32_s64(a2, 2uLL));
  if ((LODWORD(v13) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v13 <= -9.2234e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v13 < 9.2234e18)
  {
    v27 = v11;
    v28 = v10;
    v14 = v12;
    v15 = v13;
    v16 = [v7 texture2DDescriptorWithPixelFormat:10 width:v12 height:v13 mipmapped:0];
    [v16 setStorageMode:2];
    [v16 setUsage:5];
    [v16 copy];
    sub_10002360C();
    swift_unknownObjectRelease();
    swift_dynamicCast();
    v17 = v30;
    [v30 setUsage:3];
    v18 = [v7 texture2DDescriptorWithPixelFormat:250 width:v14 height:v15 mipmapped:0];
    [v18 setStorageMode:3];
    [v18 setUsage:4];
    v19 = [a3 newTextureWithDescriptor:v16];
    if (v19)
    {
      v20 = v19;
      v21 = [a3 newTextureWithDescriptor:v30];
      if (v21)
      {
        v22 = v21;
        v23 = [a3 newTextureWithDescriptor:v18];
        if (v23)
        {
          v24 = v23;

          *a4 = v28;
          a4[1] = v27;
          a4[2] = v20;
          a4[3] = v22;
          a4[4] = v24;
          return;
        }

        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    sub_100005838();
    swift_allocError();
    *v26 = 1;
    swift_willThrow();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    goto LABEL_19;
  }

LABEL_25:
  __break(1u);
}