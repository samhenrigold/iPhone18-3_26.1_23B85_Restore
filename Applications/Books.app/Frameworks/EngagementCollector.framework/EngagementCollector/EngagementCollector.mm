unint64_t PropertyType.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

Swift::Int sub_1C74()
{
  v1 = *v0;
  sub_31900();
  sub_31910(v1);
  return sub_31920();
}

Swift::Int sub_1CE8(uint64_t a1)
{
  v2 = *v1;
  sub_31900();
  sub_31910(v2);
  return sub_31920();
}

unint64_t *sub_1D2C@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t BasePropertyConfiguration.eventName.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR___BMBasePropertyConfiguration_eventName);

  return v3;
}

uint64_t BasePropertyConfiguration.identifier.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR___BMBasePropertyConfiguration_identifier);

  return v3;
}

id BasePropertyConfiguration.__allocating_init(eventName:recordType:identifier:ageToExpire:countLimit:shouldBeCached:shouldBeSynced:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char a9)
{
  v18 = objc_allocWithZone(v9);
  v19 = &v18[OBJC_IVAR___BMBasePropertyConfiguration_eventName];
  *v19 = a1;
  v19[1] = a2;
  *&v18[OBJC_IVAR___BMBasePropertyConfiguration_recordType] = a3;
  v20 = &v18[OBJC_IVAR___BMBasePropertyConfiguration_identifier];
  *v20 = a4;
  v20[1] = a5;
  *&v18[OBJC_IVAR___BMBasePropertyConfiguration_countLimit] = a7;
  *&v18[OBJC_IVAR___BMBasePropertyConfiguration_ageToExpire] = a6;
  v18[OBJC_IVAR___BMBasePropertyConfiguration_shouldBeCached] = a8;
  v18[OBJC_IVAR___BMBasePropertyConfiguration_shouldBeSynced] = a9;
  v22.receiver = v18;
  v22.super_class = v9;
  return objc_msgSendSuper2(&v22, "init");
}

id BasePropertyConfiguration.init(eventName:recordType:identifier:ageToExpire:countLimit:shouldBeCached:shouldBeSynced:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char a9)
{
  v10 = &v9[OBJC_IVAR___BMBasePropertyConfiguration_eventName];
  *v10 = a1;
  v10[1] = a2;
  *&v9[OBJC_IVAR___BMBasePropertyConfiguration_recordType] = a3;
  v11 = &v9[OBJC_IVAR___BMBasePropertyConfiguration_identifier];
  *v11 = a4;
  v11[1] = a5;
  *&v9[OBJC_IVAR___BMBasePropertyConfiguration_countLimit] = a7;
  *&v9[OBJC_IVAR___BMBasePropertyConfiguration_ageToExpire] = a6;
  v9[OBJC_IVAR___BMBasePropertyConfiguration_shouldBeCached] = a8;
  v9[OBJC_IVAR___BMBasePropertyConfiguration_shouldBeSynced] = a9;
  v13.receiver = v9;
  v13.super_class = type metadata accessor for BasePropertyConfiguration();
  return objc_msgSendSuper2(&v13, "init");
}

uint64_t sub_20C4(uint64_t a1)
{
  sub_2224(a1, v10);
  if (!v11)
  {
    sub_22DC(v10);
    goto LABEL_20;
  }

  type metadata accessor for BasePropertyConfiguration();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    v7 = 0;
    return v7 & 1;
  }

  v2 = *(v1 + OBJC_IVAR___BMBasePropertyConfiguration_eventName) == *&v9[OBJC_IVAR___BMBasePropertyConfiguration_eventName] && *(v1 + OBJC_IVAR___BMBasePropertyConfiguration_eventName + 8) == *&v9[OBJC_IVAR___BMBasePropertyConfiguration_eventName + 8];
  if (!v2 && (sub_31850() & 1) == 0 || *(v1 + OBJC_IVAR___BMBasePropertyConfiguration_recordType) != *&v9[OBJC_IVAR___BMBasePropertyConfiguration_recordType] || *(v1 + OBJC_IVAR___BMBasePropertyConfiguration_ageToExpire) != *&v9[OBJC_IVAR___BMBasePropertyConfiguration_ageToExpire] || *(v1 + OBJC_IVAR___BMBasePropertyConfiguration_countLimit) != *&v9[OBJC_IVAR___BMBasePropertyConfiguration_countLimit])
  {
    goto LABEL_19;
  }

  v3 = *(v1 + OBJC_IVAR___BMBasePropertyConfiguration_identifier + 8);
  v4 = *&v9[OBJC_IVAR___BMBasePropertyConfiguration_identifier + 8];
  if (v3)
  {
    if (v4 && (*(v1 + OBJC_IVAR___BMBasePropertyConfiguration_identifier) == *&v9[OBJC_IVAR___BMBasePropertyConfiguration_identifier] && v3 == v4 || (sub_31850() & 1) != 0))
    {
      goto LABEL_16;
    }

    goto LABEL_19;
  }

  if (v4)
  {
LABEL_19:

    goto LABEL_20;
  }

LABEL_16:
  v5 = *(v1 + OBJC_IVAR___BMBasePropertyConfiguration_shouldBeSynced);
  v6 = v9[OBJC_IVAR___BMBasePropertyConfiguration_shouldBeSynced];

  v7 = v5 ^ v6 ^ 1;
  return v7 & 1;
}

uint64_t sub_2224(uint64_t a1, uint64_t a2)
{
  v4 = sub_2294(&qword_42260, &qword_32880);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2294(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_22DC(uint64_t a1)
{
  v2 = sub_2294(&qword_42260, &qword_32880);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id BaseDonor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BasePropertyConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BasePropertyConfiguration();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_252C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = &v13[OBJC_IVAR___BMBasePropertyConfiguration_eventName];
  *v14 = a1;
  v14[1] = a2;
  *&v13[OBJC_IVAR___BMBasePropertyConfiguration_recordType] = a6;
  v15 = &v13[OBJC_IVAR___BMBasePropertyConfiguration_identifier];
  *v15 = 0;
  v15[1] = 0;
  *&v13[OBJC_IVAR___BMBasePropertyConfiguration_countLimit] = 0x7FFFFFFFFFFFFFFFLL;
  *&v13[OBJC_IVAR___BMBasePropertyConfiguration_ageToExpire] = a3;
  v13[OBJC_IVAR___BMBasePropertyConfiguration_shouldBeCached] = a4;
  v13[OBJC_IVAR___BMBasePropertyConfiguration_shouldBeSynced] = a5;
  v17.receiver = v13;
  v17.super_class = type metadata accessor for BasePropertyConfiguration();
  return objc_msgSendSuper2(&v17, "init");
}

id sub_260C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6)
{
  v7 = &v6[OBJC_IVAR___BMBasePropertyConfiguration_eventName];
  *v7 = a1;
  v7[1] = a2;
  *&v6[OBJC_IVAR___BMBasePropertyConfiguration_recordType] = a6;
  v8 = &v6[OBJC_IVAR___BMBasePropertyConfiguration_identifier];
  *v8 = 0;
  v8[1] = 0;
  *&v6[OBJC_IVAR___BMBasePropertyConfiguration_countLimit] = 0x7FFFFFFFFFFFFFFFLL;
  *&v6[OBJC_IVAR___BMBasePropertyConfiguration_ageToExpire] = a3;
  v6[OBJC_IVAR___BMBasePropertyConfiguration_shouldBeCached] = a4;
  v6[OBJC_IVAR___BMBasePropertyConfiguration_shouldBeSynced] = a5;
  v10.receiver = v6;
  v10.super_class = type metadata accessor for BasePropertyConfiguration();
  return objc_msgSendSuper2(&v10, "init");
}

id CollectionPropertyConfiguration.__allocating_init(eventName:identifier:ageToExpire:countLimit:shouldBeCached:shouldBeSynced:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  v17 = objc_allocWithZone(v8);
  v18 = &v17[OBJC_IVAR___BMBasePropertyConfiguration_eventName];
  *v18 = a1;
  v18[1] = a2;
  *&v17[OBJC_IVAR___BMBasePropertyConfiguration_recordType] = 2;
  v19 = &v17[OBJC_IVAR___BMBasePropertyConfiguration_identifier];
  *v19 = a3;
  v19[1] = a4;
  *&v17[OBJC_IVAR___BMBasePropertyConfiguration_countLimit] = a6;
  *&v17[OBJC_IVAR___BMBasePropertyConfiguration_ageToExpire] = a5;
  v17[OBJC_IVAR___BMBasePropertyConfiguration_shouldBeCached] = a7;
  v17[OBJC_IVAR___BMBasePropertyConfiguration_shouldBeSynced] = a8;
  v21.receiver = v17;
  v21.super_class = type metadata accessor for BasePropertyConfiguration();
  return objc_msgSendSuper2(&v21, "init");
}

id CollectionPropertyConfiguration.init(eventName:identifier:ageToExpire:countLimit:shouldBeCached:shouldBeSynced:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  v9 = &v8[OBJC_IVAR___BMBasePropertyConfiguration_eventName];
  *v9 = a1;
  v9[1] = a2;
  *&v8[OBJC_IVAR___BMBasePropertyConfiguration_recordType] = 2;
  v10 = &v8[OBJC_IVAR___BMBasePropertyConfiguration_identifier];
  *v10 = a3;
  v10[1] = a4;
  *&v8[OBJC_IVAR___BMBasePropertyConfiguration_countLimit] = a6;
  *&v8[OBJC_IVAR___BMBasePropertyConfiguration_ageToExpire] = a5;
  v8[OBJC_IVAR___BMBasePropertyConfiguration_shouldBeCached] = a7;
  v8[OBJC_IVAR___BMBasePropertyConfiguration_shouldBeSynced] = a8;
  v12.receiver = v8;
  v12.super_class = type metadata accessor for BasePropertyConfiguration();
  return objc_msgSendSuper2(&v12, "init");
}

id _s19EngagementCollector26StatePropertyConfigurationCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_28BC()
{
  result = qword_42268;
  if (!qword_42268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_42268);
  }

  return result;
}

uint64_t sub_2A88(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2AA8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_423D0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_423D0);
    }
  }
}

Swift::Int PropertyError.hashValue.getter()
{
  v1 = *v0;
  sub_31900();
  sub_31910(v1);
  return sub_31920();
}

Swift::Int sub_2C04(uint64_t a1)
{
  v2 = *v1;
  sub_31900();
  sub_31910(v2);
  return sub_31920();
}

uint64_t sub_2C58@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 createdAt];
  if (v3)
  {
    v4 = v3;
    sub_31160();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_31180();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_2CFC(uint64_t a1, void **a2)
{
  v4 = sub_2294(&qword_42490, &qword_32CB0);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  sub_B488(a1, &v11 - v5, &qword_42490, &qword_32CB0);
  v7 = *a2;
  v8 = sub_31180();
  v9 = *(v8 - 8);
  isa = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    isa = sub_31120().super.isa;
    (*(v9 + 8))(v6, v8);
  }

  [v7 setCreatedAt:isa];
}

void sub_2E38(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 data];
  if (v3)
  {
    v4 = v3;
    v5 = sub_310F0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_2EA0(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1] >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = sub_310E0().super.isa;
  }

  v4 = isa;
  [v2 setData:?];
}

void sub_2F18(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_31320();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_2F7C(void *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1])
  {
    v7 = sub_31300();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [v6 *a5];
}

id CDCloudSyncVersions.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id CDProperty.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for CDProperty();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id CDProperty.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CDProperty();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_3158@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CDProperty();
  result = sub_316E0();
  *a2 = result;
  return result;
}

uint64_t CDProperty.SpecialPlistKeys.init(rawValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_3CD00;
  v8._object = a2;
  v6 = sub_31810(v5, v8);

  *a3 = v6 != 0;
  return result;
}

Swift::Int sub_3210()
{
  sub_31900();
  sub_31370();
  return sub_31920();
}

Swift::Int sub_327C(uint64_t a1)
{
  sub_31900();
  sub_31370();
  return sub_31920();
}

uint64_t sub_32CC@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_3CD38;
  v7._object = v3;
  v5 = sub_31810(v4, v7);

  *a2 = v5 != 0;
  return result;
}

void sub_3368(unint64_t a1, char a2, void (*a3)(uint64_t *))
{
  if (a2)
  {
    v19 = a1;
    v20 = 0u;
    v21 = 0u;
    v22 = 256;
    a3(&v19);
    return;
  }

  if (a1 >> 62)
  {
    if (sub_317C0())
    {
      goto LABEL_5;
    }

LABEL_19:
    sub_8C34();
    v16 = swift_allocError();
    *v17 = 1;
    v19 = v16;
    v20 = 0u;
    v21 = 0u;
    v22 = 256;
    a3(&v19);

    return;
  }

  if (!*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_19;
  }

LABEL_5:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = sub_31700();
  }

  else
  {
    if (!*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return;
    }

    v5 = *(a1 + 32);
  }

  v18 = v5;
  v6 = sub_53D8();
  if (v6)
  {
    v7 = v6;
    v8 = [v18 identifier];
    if (v8)
    {
      v9 = v8;
      v10 = sub_31320();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0;
    }

    v15 = sub_56D8(v7);

    v19 = v10;
    *&v20 = v12;
    v21 = 0uLL;
    *(&v20 + 1) = v15;
    v22 = 1;
    a3(&v19);
  }

  else
  {
    sub_8C34();
    v13 = swift_allocError();
    *v14 = 0;
    v19 = v13;
    v20 = 0u;
    v21 = 0u;
    v22 = 256;
    a3(&v19);
  }
}

uint64_t static CDProperty.fetchCollectionValues(_:assetIDs:sortByCreatedAt:limit:context:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t), uint64_t a8)
{
  v11 = a4;
  sub_2294(&qword_42440, &unk_32AB0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_32A60;
  *(v15 + 32) = 7955819;
  *(v15 + 40) = 0xE300000000000000;
  *(v15 + 88) = &type metadata for String;
  *(v15 + 56) = &type metadata for String;
  *(v15 + 64) = a1;
  *(v15 + 72) = a2;
  swift_retain_n();

  v16 = sub_31300();
  isa = sub_313D0().super.isa;

  v18 = [objc_opt_self() predicateWithFormat:v16 argumentArray:isa];

  sub_6144(v18, 0, 0, a3, v11, a5, a6, a7);
}

uint64_t sub_3758(unint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (a2)
  {
    return a3(a1, 1);
  }

  if (a1 >> 62)
  {
LABEL_29:
    v5 = sub_317C0();
    if (v5)
    {
LABEL_5:
      v6 = 0;
      v7 = _swiftEmptyArrayStorage;
      do
      {
        v8 = v6;
        while (1)
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v9 = sub_31700();
          }

          else
          {
            if (v8 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_28;
            }

            v9 = *(a1 + 8 * v8 + 32);
          }

          v10 = v9;
          v6 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            __break(1u);
LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

          v11 = sub_53D8();
          if (v11)
          {
            break;
          }

          ++v8;
          if (v6 == v5)
          {
            goto LABEL_31;
          }
        }

        v12 = v11;
        v13 = [v10 identifier];
        if (v13)
        {
          v14 = v13;
          v15 = sub_31320();
          v27 = v16;
          v28 = v15;
        }

        else
        {
          v27 = 0;
          v28 = 0;
        }

        v17 = [v10 assetID];
        if (v17)
        {
          v18 = v17;
          v19 = sub_31320();
          v25 = v20;
          v26 = v19;
        }

        else
        {
          v25 = 0;
          v26 = 0;
        }

        v21 = sub_56D8(v12);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_2E8B0(0, *(v7 + 2) + 1, 1, v7);
        }

        v23 = *(v7 + 2);
        v22 = *(v7 + 3);
        if (v23 >= v22 >> 1)
        {
          v7 = sub_2E8B0((v22 > 1), v23 + 1, 1, v7);
        }

        *(v7 + 2) = v23 + 1;
        v24 = &v7[48 * v23];
        *(v24 + 4) = v28;
        *(v24 + 5) = v27;
        *(v24 + 6) = v26;
        *(v24 + 7) = v25;
        *(v24 + 8) = v21;
        v24[72] = 2;
      }

      while (v6 != v5);
      goto LABEL_31;
    }
  }

  else
  {
    v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v5)
    {
      goto LABEL_5;
    }
  }

  v7 = _swiftEmptyArrayStorage;
LABEL_31:
  a3(v7, 0);
}

uint64_t sub_39C4@<X0>(uint64_t a1@<X8>)
{
  result = sub_53D8();
  if (result)
  {
    v4 = result;
    v5 = [v1 identifier];
    if (v5)
    {
      v6 = v5;
      v7 = sub_31320();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v14 = [v1 assetID];
    if (v14)
    {
      v15 = v14;
      v10 = sub_31320();
      v11 = v16;
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    v12 = sub_56D8(v4);

    v13 = 2;
  }

  else
  {
    v7 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = -1;
  }

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v10;
  *(a1 + 24) = v11;
  *(a1 + 32) = v12;
  *(a1 + 40) = v13;
  return result;
}

uint64_t sub_3AC8(unint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    return a3(a1, 1);
  }

  v9 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_35:
    v38 = a3;
    v39 = sub_317C0();
    a3 = v38;
    v10 = v39;
    if (v39)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v10 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v10)
    {
LABEL_5:
      v11 = 0;
      v12 = _swiftEmptyArrayStorage;
      v44 = a4;
      v45 = a3;
      while (1)
      {
        v46 = v12;
        v13 = v11;
        while (1)
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v14 = sub_31700();
          }

          else
          {
            if (v13 >= *(v9 + 16))
            {
              goto LABEL_34;
            }

            v14 = *(a1 + 8 * v13 + 32);
          }

          v15 = v14;
          v11 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            __break(1u);
LABEL_34:
            __break(1u);
            goto LABEL_35;
          }

          v16 = [v14 key];
          if (v16)
          {
            break;
          }

LABEL_9:

          ++v13;
          if (v11 == v10)
          {
            v45(v46, 0);
            goto LABEL_38;
          }
        }

        v17 = v16;
        v18 = v9;
        a4 = sub_31320();
        v20 = v19;

        if (!*(a5 + 16))
        {
          break;
        }

        v21 = sub_17054(a4, v20);
        a4 = v22;

        v9 = v18;
        if ((a4 & 1) == 0)
        {
          goto LABEL_9;
        }

        v23 = *(*(a5 + 56) + 8 * v21);
        swift_unknownObjectRetain();
        a4 = v15;
        v24 = sub_53D8();
        if (!v24)
        {
          swift_unknownObjectRelease();
          goto LABEL_8;
        }

        v25 = v24;
        v26 = [v15 identifier];
        if (v26)
        {
          v27 = v26;
          v28 = sub_31320();
          v42 = v29;
          v43 = v28;
        }

        else
        {
          v42 = 0;
          v43 = 0;
        }

        v30 = [v15 assetID];
        if (v30)
        {
          v31 = v30;
          v32 = sub_31320();
          v40 = v33;
          v41 = v32;
        }

        else
        {
          v40 = 0;
          v41 = 0;
        }

        v34 = sub_56D8(v25);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = sub_2E9CC(0, v46[2] + 1, 1, v46);
        }

        v36 = v46[2];
        v35 = v46[3];
        if (v36 >= v35 >> 1)
        {
          v46 = sub_2E9CC((v35 > 1), v36 + 1, 1, v46);
        }

        a3 = v45;
        v46[2] = v36 + 1;
        v37 = &v46[7 * v36];
        v37[4] = v23;
        v37[5] = v43;
        v37[6] = v42;
        v37[7] = v41;
        v37[8] = v40;
        v37[9] = v34;
        v12 = v46;
        *(v37 + 80) = 2;
        a4 = v44;
        v9 = v18;
        if (v11 == v10)
        {
          goto LABEL_37;
        }
      }

LABEL_8:
      v9 = v18;
      goto LABEL_9;
    }
  }

  v12 = _swiftEmptyArrayStorage;
LABEL_37:
  a3(v12, 0);
LABEL_38:
}

uint64_t static CDProperty.fetchCollectionValue(_:identifier:assetIDs:context:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t *), uint64_t a8)
{
  sub_2294(&qword_42440, &unk_32AB0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_32A60;
  *(v15 + 32) = 7955819;
  *(v15 + 40) = 0xE300000000000000;
  *(v15 + 88) = &type metadata for String;
  *(v15 + 56) = &type metadata for String;
  *(v15 + 64) = a1;
  *(v15 + 72) = a2;
  swift_retain_n();

  v16 = sub_31300();
  isa = sub_313D0().super.isa;

  v18 = [objc_opt_self() predicateWithFormat:v16 argumentArray:isa];

  sub_7374(v18, a3, a4, a5, 0, 1, a6, a7);
}

uint64_t sub_3F64(unint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  if (a2)
  {
    v20 = a1;
    v21 = 0u;
    v22 = 0u;
    v23 = 256;
    return a3(&v20);
  }

  if (a1 >> 62)
  {
    result = sub_317C0();
    if (result)
    {
      goto LABEL_5;
    }

LABEL_17:
    sub_8C34();
    v18 = swift_allocError();
    *v19 = 1;
    v20 = v18;
    v21 = 0u;
    v22 = 0u;
    v23 = 256;
    a3(&v20);
    goto LABEL_18;
  }

  result = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  if (!result)
  {
    goto LABEL_17;
  }

LABEL_5:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = sub_31700();
  }

  else
  {
    if (!*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return result;
    }

    v6 = *(a1 + 32);
  }

  v7 = v6;
  v8 = sub_53D8();
  if (v8)
  {
    v9 = v8;
    v10 = [v7 identifier];
    if (v10)
    {
      v11 = v10;
      v12 = sub_31320();
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0;
    }

    v17 = sub_56D8(v9);

    v20 = v12;
    *&v21 = v14;
    v22 = 0uLL;
    *(&v21 + 1) = v17;
    v23 = 1;
    a3(&v20);
  }

  sub_8C34();
  v15 = swift_allocError();
  *v16 = 0;
  v20 = v15;
  v21 = 0u;
  v22 = 0u;
  v23 = 256;
  a3(&v20);

LABEL_18:
}

void sub_41F0(unint64_t a1, char a2, void (*a3)(id *))
{
  if (a2)
  {
    v9 = a1;
    v10 = 0u;
    v11 = 0u;
    v12 = 256;
    a3(&v9);
    return;
  }

  if (a1 >> 62)
  {
    if (sub_317C0())
    {
      goto LABEL_5;
    }

LABEL_12:
    sub_8C34();
    v6 = swift_allocError();
    *v7 = 1;
    v9 = v6;
    v10 = 0u;
    v11 = 0u;
    v12 = 256;
    a3(&v9);

    return;
  }

  if (!*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = sub_31700();
  }

  else
  {
    if (!*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return;
    }

    v5 = *(a1 + 32);
  }

  v8 = v5;
  v9 = [v5 count];
  v10 = 0u;
  v11 = 0u;
  v12 = 0;
  a3(&v9);
}

void CDProperty.toValue(recordType:completion:)(char *a1, void (*a2)(uint64_t *))
{
  if (a1 == &dword_0 + 2)
  {
    sub_39C4(v24);
    v11 = v25;
    if (v25 != 255)
    {
      v13 = v24[3];
      v12 = v24[4];
      v10 = v24[1];
      v14 = v24[2];
      v8 = v24[0];
LABEL_19:
      v26 = v8;
      *&v27 = v10;
      *(&v27 + 1) = v14;
      *&v28 = v13;
      *(&v28 + 1) = v12;
      v29 = v11;
      a2(&v26);

      sub_8C88(v8, v10, v14, v13, v12, v11);
      return;
    }
  }

  else
  {
    if (a1 != &dword_0 + 1)
    {
      if (a1)
      {
        sub_31880();
        __break(1u);
        return;
      }

      v8 = [v2 count];
      v10 = 0;
      v14 = 0;
      v13 = 0;
      v12 = 0;
      v11 = 0;
      goto LABEL_19;
    }

    v4 = sub_53D8();
    if (v4)
    {
      v5 = v4;
      v6 = [v2 identifier];
      if (v6)
      {
        v7 = v6;
        v8 = sub_31320();
        v10 = v9;
      }

      else
      {
        v8 = 0;
        v10 = 0;
      }

      v14 = sub_56D8(v5);

      v13 = 0;
      v12 = 0;
      v11 = 1;
      goto LABEL_19;
    }
  }

  if (qword_42220 != -1)
  {
    swift_once();
  }

  v15 = sub_311B0();
  sub_8BFC(v15, qword_434B0);
  v16 = sub_31190();
  v17 = sub_314D0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    sub_8C34();
    swift_allocError();
    *v20 = 1;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 4) = v21;
    *v19 = v21;
    _os_log_impl(&dword_0, v16, v17, "Could not fetch. %@", v18, 0xCu);
    sub_B5AC(v19, &qword_42790, &unk_334A0);
  }

  sub_8C34();
  v22 = swift_allocError();
  *v23 = 1;
  v26 = v22;
  v27 = 0u;
  v28 = 0u;
  v29 = 256;
  a2(&v26);
}

id sub_46A0(void *a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a1)
  {
    v8 = a1;
  }

  else
  {
    v10 = objc_opt_self();
    v11 = sub_31300();
    v12 = [v10 entityForName:v11 inManagedObjectContext:a5];

    if (!v12)
    {
      return 0;
    }

    v8 = [objc_allocWithZone(type metadata accessor for CDProperty()) initWithEntity:v12 insertIntoManagedObjectContext:a5];
  }

  v13 = v8;
  v14 = a1;
  isa = sub_31120().super.isa;
  [v13 setCreatedAt:isa];

  v16 = [a2 eventName];
  [v13 setKey:v16];

  if (*(a4 + 40))
  {
    v18 = a4[1];
    v17 = a4[2];
    if (*(a4 + 40) == 1)
    {
      v19 = *(v17 + 16);

      if (v19 && (v20 = sub_17054(0x44497465737361, 0xE700000000000000), (v21 & 1) != 0) && (sub_B61C(*(v17 + 56) + 32 * v20, v45), sub_2294(&qword_424D0, &qword_32CD8), (swift_dynamicCast() & 1) != 0))
      {
        v22 = sub_31300();
      }

      else
      {
        v22 = 0;
      }

      [v13 setAssetID:v22];

      v26 = sub_A6F8(a4, v25);
      if (v27 >> 60 == 15)
      {
        v28 = 0;
      }

      else
      {
        v29 = v26;
        v30 = v27;
        v28 = sub_310E0().super.isa;
        sub_B544(v29, v30);
      }

      [v13 setData:v28];

      if (v18)
      {
        goto LABEL_32;
      }

      v31 = [a2 identifier];
      if (v31)
      {
        goto LABEL_21;
      }

      goto LABEL_36;
    }

    v23 = a4[3];
    if (v23)
    {
      v45[4] = a4[2];
      v46 = v23;
    }

    else
    {
      v33 = a4[4];
      v34 = *(v33 + 16);

      if (!v34 || (v35 = sub_17054(0x44497465737361, 0xE700000000000000), (v36 & 1) == 0) || (sub_B61C(*(v33 + 56) + 32 * v35, v45), sub_2294(&qword_424D0, &qword_32CD8), (swift_dynamicCast() & 1) == 0) || !v46)
      {

        v24 = 0;
LABEL_28:
        [v13 setAssetID:v24];

        v38 = sub_A6F8(a4, v37);
        if (v39 >> 60 == 15)
        {
          v40 = 0;
        }

        else
        {
          v41 = v38;
          v42 = v39;
          v40 = sub_310E0().super.isa;
          sub_B544(v41, v42);
        }

        [v13 setData:v40];

        if (v18)
        {
          goto LABEL_32;
        }

        v31 = [a2 identifier];
        if (v31)
        {
LABEL_21:
          v32 = v31;
          sub_31320();

LABEL_32:
          v43 = sub_31300();

LABEL_33:
          [v13 setIdentifier:v43];

          return v13;
        }

LABEL_36:
        v43 = 0;
        goto LABEL_33;
      }
    }

    v24 = sub_31300();

    goto LABEL_28;
  }

  [v13 setCount:*a4];
  return v13;
}

uint64_t sub_4AD4(unint64_t a1, char a2, void (**a3)(char *, char *, uint64_t), void *a4, uint64_t (*a5)(void *, void *, char *, __int128 *), uint64_t a6, void (*a7)(id, uint64_t), uint64_t a8)
{
  v119 = a5;
  v120 = a6;
  v124 = sub_31180();
  v14 = *(v124 - 8);
  __chkstk_darwin(v124);
  v121 = &v109 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2294(&unk_42700, &qword_32CD0);
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v122 = &v109 - v19;
  v112 = a8;
  v113 = a7;
  v111 = a4;
  v117 = v17;
  v118 = a3;
  v116 = v14;
  v114 = v18;
  if (a2)
  {
    if (qword_42220 == -1)
    {
LABEL_3:
      v20 = sub_311B0();
      sub_8BFC(v20, qword_434B0);
      v21 = sub_31190();
      v22 = sub_314C0();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_0, v21, v22, "No existing record, creating new one", v23, 2u);
      }

      goto LABEL_48;
    }

LABEL_46:
    swift_once();
    goto LABEL_3;
  }

  if (a1 >> 62)
  {
    v24 = sub_317C0();
    if (v24)
    {
      goto LABEL_8;
    }

LABEL_48:
    v123 = _swiftEmptyDictionarySingleton;
    v33 = v124;
    goto LABEL_49;
  }

  v24 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  if (!v24)
  {
    goto LABEL_48;
  }

LABEL_8:
  v25 = 0;
  v123 = _swiftEmptyDictionarySingleton;
  p_type = &stru_40FF0.type;
  v27 = &stru_40FF0.type;
  do
  {
    v28 = v25;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v29 = sub_31700();
      }

      else
      {
        if (v28 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_45;
        }

        v29 = *(a1 + 8 * v28 + 32);
      }

      v30 = v29;
      v25 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      v31 = [v29 p_type[24]];
      if (v31)
      {
        v34 = v31;
        v35 = sub_31320();
        v37 = v36;

        v115 = v30;
        v38 = v123;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v125 = v38;
        v110 = v35;
        v40 = v35;
        v41 = v37;
        v42 = sub_17054(v40, v37);
        v44 = v38[2];
        v45 = (v43 & 1) == 0;
        v46 = __OFADD__(v44, v45);
        v47 = v44 + v45;
        if (v46)
        {
          __break(1u);
LABEL_77:
          __break(1u);
          goto LABEL_78;
        }

        v48 = v43;
        if (v38[3] < v47)
        {
          sub_17650(v47, isUniquelyReferenced_nonNull_native);
          v49 = v37;
          v42 = sub_17054(v110, v37);
          v27 = (&stru_40FF0 + 16);
          if ((v48 & 1) == (v50 & 1))
          {
            p_type = (&stru_40FF0 + 16);
            if (v48)
            {
              goto LABEL_23;
            }

LABEL_32:
            v68 = v125;
            *(v125 + 8 * (v42 >> 6) + 64) |= 1 << v42;
            v69 = (v68[6] + 16 * v42);
            *v69 = v110;
            v69[1] = v49;
            v70 = v115;
            *(v68[7] + 8 * v42) = v115;

            v71 = v68[2];
            v46 = __OFADD__(v71, 1);
            v72 = v71 + 1;
            if (!v46)
            {
              goto LABEL_39;
            }

LABEL_78:
            __break(1u);
LABEL_79:
            __break(1u);
          }

LABEL_80:
          result = sub_31890();
          __break(1u);
          return result;
        }

        v27 = (&stru_40FF0 + 16);
        if (isUniquelyReferenced_nonNull_native)
        {
          v49 = v41;
          p_type = (&stru_40FF0 + 16);
          if ((v43 & 1) == 0)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v76 = v42;
          sub_187A8();
          v42 = v76;
          v49 = v41;
          p_type = (&stru_40FF0 + 16);
          if ((v48 & 1) == 0)
          {
            goto LABEL_32;
          }
        }

LABEL_23:
        v51 = v42;

        v123 = v125;
        v52 = *(v125 + 56);
        v53 = *(v52 + 8 * v51);
        v54 = v115;
LABEL_29:
        *(v52 + 8 * v51) = v54;

        goto LABEL_40;
      }

      v32 = [v30 v27[28]];
      if (v32)
      {
        break;
      }

      ++v28;
      v33 = v124;
      if (v25 == v24)
      {
        goto LABEL_49;
      }
    }

    v55 = v32;
    v115 = sub_31320();
    v57 = v56;

    v110 = v30;
    v58 = v123;
    v59 = swift_isUniquelyReferenced_nonNull_native();
    *&v125 = v58;
    v109 = v57;
    v60 = sub_17054(v115, v57);
    v62 = v58[2];
    v63 = (v61 & 1) == 0;
    v46 = __OFADD__(v62, v63);
    v64 = v62 + v63;
    if (v46)
    {
      goto LABEL_77;
    }

    v65 = v61;
    if (v58[3] >= v64)
    {
      if ((v59 & 1) == 0)
      {
        v77 = v60;
        sub_187A8();
        v60 = v77;
      }

      v66 = v109;
      if ((v65 & 1) == 0)
      {
        goto LABEL_38;
      }

LABEL_28:
      v51 = v60;

      v123 = v125;
      v52 = *(v125 + 56);
      v53 = *(v52 + 8 * v51);
      v54 = v110;
      goto LABEL_29;
    }

    sub_17650(v64, v59);
    v66 = v109;
    v60 = sub_17054(v115, v109);
    if ((v65 & 1) != (v67 & 1))
    {
      goto LABEL_80;
    }

    if (v65)
    {
      goto LABEL_28;
    }

LABEL_38:
    v68 = v125;
    *(v125 + 8 * (v60 >> 6) + 64) |= 1 << v60;
    v73 = (v68[6] + 16 * v60);
    *v73 = v115;
    v73[1] = v66;
    v74 = v110;
    *(v68[7] + 8 * v60) = v110;

    v75 = v68[2];
    v46 = __OFADD__(v75, 1);
    v72 = v75 + 1;
    if (v46)
    {
      goto LABEL_79;
    }

LABEL_39:
    v123 = v68;
    v68[2] = v72;
LABEL_40:
    v33 = v124;
  }

  while (v25 != v24);
LABEL_49:
  v78 = v118[2];
  if (!v78)
  {

    goto LABEL_74;
  }

  v79 = v121;
  v80 = (v122 + *(v114 + 48));
  v81 = v118 + ((*(v117 + 80) + 32) & ~*(v117 + 80));
  v117 = *(v117 + 72);
  v118 = (v116 + 4);
  v115 = 0;
  ++v116;
  v82 = v111;
  while (2)
  {
    v83 = v122;
    sub_B488(v81, v122, &unk_42700, &qword_32CD0);
    v84 = v80[1];
    v125 = *v80;
    *v126 = v84;
    *&v126[9] = *(v80 + 25);
    (*v118)(v79, v83, v33);
    v85 = v82;
    if ([v82 recordType] == &dword_0 + 2 && v126[24] == 2 && (v86 = *(&v125 + 1), v114 = v125, , , , , , v86))
    {
      v87 = v123;
      if (v123[2])
      {
        v88 = sub_17054(v114, v86);
        v90 = v89;

        v79 = v121;
        if (v90)
        {
          v91 = *(v87[7] + 8 * v88);
          v92 = v91;
        }

        else
        {
          v91 = 0;
        }

        v82 = v85;
      }

      else
      {

        v91 = 0;
        v82 = v85;
        v79 = v121;
      }
    }

    else
    {
      v82 = v85;
      v93 = [v85 identifier];
      if (!v93)
      {
        v93 = [v85 eventName];
      }

      v94 = v93;
      v95 = sub_31320();
      v97 = v96;

      v98 = v123;
      v79 = v121;
      if (v123[2])
      {
        v99 = sub_17054(v95, v97);
        v101 = v100;

        if (v101)
        {
          v91 = *(v98[7] + 8 * v99);
          v102 = v91;
          goto LABEL_66;
        }
      }

      else
      {
      }

      v91 = 0;
    }

LABEL_66:
    v103 = v91;
    v104 = v119(v91, v82, v79, &v125);
    sub_B4F0(&v125);

    if (v104)
    {
    }

    else
    {
      sub_8C34();
      v105 = swift_allocError();
      *v106 = 0;

      v115 = v105;
    }

    v33 = v124;
    (*v116)(v79, v124);
    v81 += v117;
    v78 = (v78 - 1);
    if (v78)
    {
      continue;
    }

    break;
  }

  v107 = v115;
  if (v115)
  {
    swift_errorRetain();
    v113(v107, 1);
  }

LABEL_74:
  v113(0, 0);
}

uint64_t sub_53D8()
{
  v1 = [v0 data];
  if (v1)
  {
    v2 = v1;
    v3 = sub_310F0();
    v5 = v4;

    v6 = objc_opt_self();
    isa = sub_310E0().super.isa;
    v21[0] = 0;
    v8 = [v6 JSONObjectWithData:isa options:0 error:v21];

    if (v8)
    {
      v9 = v21[0];
      sub_31680();
      swift_unknownObjectRelease();
      sub_2294(&qword_424E8, &qword_32CF0);
      if (swift_dynamicCast())
      {
        sub_B558(v3, v5);
        return v20;
      }

      if (qword_42220 != -1)
      {
        swift_once();
      }

      v16 = sub_311B0();
      sub_8BFC(v16, qword_434B0);
      v17 = sub_31190();
      v18 = sub_314D0();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_0, v17, v18, "Tried to convert a Property to a StatePropertyValue but data can't be deserialized to a valid state value", v19, 2u);
      }

      sub_B558(v3, v5);
    }

    else
    {
      v15 = v21[0];
      sub_31070();

      swift_willThrow();
      sub_B558(v3, v5);
    }
  }

  else
  {
    if (qword_42220 != -1)
    {
      swift_once();
    }

    v11 = sub_311B0();
    sub_8BFC(v11, qword_434B0);
    v12 = sub_31190();
    v13 = sub_314D0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_0, v12, v13, "Tried to convert a Property to a StatePropertyValue without data", v14, 2u);
    }
  }

  return 0;
}

unint64_t sub_56D8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_2294(&qword_424E0, &qword_32CE8);
    v2 = sub_31800();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = v12 | (v11 << 6);
        v14 = (*(a1 + 48) + 16 * v13);
        v15 = *v14;
        v16 = v14[1];
        sub_B61C(*(a1 + 56) + 32 * v13, v29);
        *&v28 = v15;
        *(&v28 + 1) = v16;
        v26[2] = v28;
        v27[0] = v29[0];
        v27[1] = v29[1];
        v17 = v28;
        sub_B60C(v27, &v22);

        sub_2294(&qword_424D0, &qword_32CD8);
        swift_dynamicCast();
        sub_B60C(&v23, v25);
        sub_B60C(v25, v26);
        sub_B60C(v26, &v24);
        result = sub_17054(v17, *(&v17 + 1));
        if (v18)
        {
          *(v2[6] + 16 * result) = v17;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          sub_9170(v10);
          result = sub_B60C(&v24, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v17;
          result = sub_B60C(&v24, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_5964(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_2294(&qword_42480, &qword_32CA8);
    v2 = sub_31800();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 8;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_B61C(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];

    swift_dynamicCast();
    sub_B60C(v33, v32);
    sub_2294(&qword_424D0, &qword_32CD8);
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_B60C(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_B60C(v31, v32);
    result = sub_316B0(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~v7[v18 >> 6]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = v7[v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~v7[v18 >> 6])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_B60C(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_5C60(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_2294(&qword_42480, &qword_32CA8);
    v2 = sub_31800();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 8;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(a1 + 56) + 8 * v13);
    *&v32[0] = *v14;
    *(&v32[0] + 1) = v15;

    v16;
    swift_dynamicCast();
    sub_B304(0, &qword_42488, NSObject_ptr);
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_B60C(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_B60C(v31, v32);
    result = sub_316B0(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~v7[v18 >> 6]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = v7[v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~v7[v18 >> 6])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_B60C(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

double sub_5F30@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_17054(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_18780();
      v10 = v12;
    }

    sub_B60C((*(v10 + 56) + 32 * v8), a3);
    sub_2ED78(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

void *sub_5FD4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = (&dword_0 + 1);
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      v19 = __OFADD__(v14, 1);
      v14 = (v14 + 1);
      if (v19)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_6144(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t))
{
  v14 = objc_allocWithZone(NSFetchRequest);
  v15 = sub_31300();
  v16 = [v14 initWithEntityName:v15];

  [v16 setPredicate:a1];
  if (a3)
  {
    sub_2294(&qword_42440, &unk_32AB0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_32A60;
    *(v17 + 32) = 0x696669746E656469;
    *(v17 + 40) = 0xEA00000000007265;
    *(v17 + 88) = &type metadata for String;
    *(v17 + 56) = &type metadata for String;
    *(v17 + 64) = a2;
    *(v17 + 72) = a3;

    v18 = sub_31300();
    isa = sub_313D0().super.isa;

    v20 = [objc_opt_self() predicateWithFormat:v18 argumentArray:isa];
  }

  else
  {
    v21 = a1;
  }

  sub_313C0();
  if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_31400();
  }

  sub_31410();
  if (a4)
  {

    v22 = sub_2294(&qword_424F0, qword_32CF8);
    sub_B678(&qword_424F8, &qword_424F0, qword_32CF8, &protocol conformance descriptor for Set<A>);
    if (sub_31490())
    {
      sub_2294(&qword_42440, &unk_32AB0);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_32A60;
      *(v23 + 32) = 0x44497465737361;
      *(v23 + 40) = 0xE700000000000000;
      *(v23 + 88) = v22;
      *(v23 + 56) = &type metadata for String;
      *(v23 + 64) = a4;
      v24 = sub_31300();
      v25 = sub_313D0().super.isa;

      v26 = [objc_opt_self() predicateWithFormat:v24 argumentArray:v25];

      sub_313C0();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_31400();
      }

      sub_31410();
    }

    else
    {
    }
  }

  sub_B304(0, &qword_424B0, NSPredicate_ptr);
  v27 = sub_313D0().super.isa;
  v28 = [objc_opt_self() andPredicateWithSubpredicates:v27];

  [v16 setPredicate:v28];
  if (a5)
  {
    sub_2294(&qword_42498, &qword_32CB8);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_32A70;
    v30 = objc_allocWithZone(NSSortDescriptor);
    v31 = sub_31300();
    v32 = [v30 initWithKey:v31 ascending:1];

    *(v29 + 32) = v32;
    sub_B304(0, &qword_424A0, NSSortDescriptor_ptr);
    v33 = sub_313D0().super.isa;

    [v16 setSortDescriptors:v33];
  }

  if (a6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v16 setFetchLimit:a6];
  }

  type metadata accessor for CDProperty();
  v34 = sub_31620();

  sub_3758(v34, 0, a8);
}

void _s19EngagementCollector10CDPropertyC21fetchCollectionValues22propertyConfigurations8assetIDs15sortByCreatedAt5limit7context10completionySayAA21PropertyConfiguration_pG_ShySSGSgSbSiSo22NSManagedObjectContextCys6ResultOySayAaK_p_AA0R5ValueOtGs5Error_pGctFZ_0(unint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t), uint64_t a7)
{
  v57 = a6;
  v7 = a1;
  if (a1 >> 62)
  {
LABEL_27:
    v8 = sub_317C0();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v8)
    {
LABEL_3:
      v9 = 0;
      v63 = (v7 & 0xFFFFFFFFFFFFFF8);
      v65 = v7 & 0xC000000000000001;
      v10 = _swiftEmptyDictionarySingleton;
      v62 = v7;
      while (1)
      {
        if (v65)
        {
          v11 = sub_31700();
          v12 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (v9 >= v63[2])
          {
            goto LABEL_24;
          }

          v11 = *(v7 + 8 * v9 + 32);
          swift_unknownObjectRetain();
          v12 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_23:
            __break(1u);
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }
        }

        v13 = [v11 eventName];
        v14 = sub_31320();
        v16 = v15;

        swift_unknownObjectRetain();
        v17 = v10;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v67 = v17;
        v7 = sub_17054(v14, v16);
        v20 = v17[2];
        v21 = (v19 & 1) == 0;
        v22 = v20 + v21;
        if (__OFADD__(v20, v21))
        {
          goto LABEL_25;
        }

        v23 = v19;
        if (v17[3] >= v22)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v19)
            {
              goto LABEL_4;
            }
          }

          else
          {
            sub_18610();
            if (v23)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_173A8(v22, isUniquelyReferenced_nonNull_native);
          v24 = sub_17054(v14, v16);
          if ((v23 & 1) != (v25 & 1))
          {
            sub_31890();
            __break(1u);
            return;
          }

          v7 = v24;
          if (v23)
          {
LABEL_4:

            v10 = v67;
            *(*(v67 + 56) + 8 * v7) = v11;
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            goto LABEL_5;
          }
        }

        v10 = v67;
        *(v67 + 8 * (v7 >> 6) + 64) |= 1 << v7;
        v26 = (v10[6] + 16 * v7);
        *v26 = v14;
        v26[1] = v16;
        *(v10[7] + 8 * v7) = v11;
        swift_unknownObjectRelease();
        v27 = v10[2];
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          goto LABEL_26;
        }

        v10[2] = v29;
LABEL_5:
        ++v9;
        v7 = v62;
        if (v12 == v8)
        {
          goto LABEL_29;
        }
      }
    }
  }

  v10 = _swiftEmptyDictionarySingleton;
LABEL_29:
  v30 = v10[2];
  v66 = v10;
  if (!v30)
  {
    goto LABEL_32;
  }

  v31 = sub_2EC6C(v30, 0);
  v32 = sub_5FD4(&v67, v31 + 4, v30, v10);
  v33 = v67;

  sub_B6C0(v33);
  if (v32 != v30)
  {
    __break(1u);
LABEL_32:
    v31 = _swiftEmptyArrayStorage;
  }

  sub_2294(&qword_42440, &unk_32AB0);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_32A60;
  *(v34 + 56) = &type metadata for String;
  *(v34 + 32) = 7955819;
  *(v34 + 40) = 0xE300000000000000;
  *(v34 + 88) = sub_2294(&qword_424C0, &qword_32CC8);
  *(v34 + 64) = v31;
  swift_retain_n();

  v35 = sub_31300();
  isa = sub_313D0().super.isa;

  v37 = objc_opt_self();
  v38 = [v37 predicateWithFormat:v35 argumentArray:isa];

  v39 = objc_allocWithZone(NSFetchRequest);
  v40 = sub_31300();
  v41 = [v39 initWithEntityName:v40];

  p_type = &stru_40FF0.type;
  v64 = v41;
  [v41 setPredicate:v38];
  v67 = _swiftEmptyArrayStorage;
  v43 = v38;
  sub_313C0();
  if (*(&dword_10 + (v67 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v67 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_31400();
  }

  sub_31410();
  if (a2)
  {

    v44 = sub_2294(&qword_424F0, qword_32CF8);
    sub_B678(&qword_424F8, &qword_424F0, qword_32CF8, &protocol conformance descriptor for Set<A>);
    if (sub_31490())
    {
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_32A60;
      *(v45 + 32) = 0x44497465737361;
      *(v45 + 40) = 0xE700000000000000;
      *(v45 + 88) = v44;
      *(v45 + 56) = &type metadata for String;
      *(v45 + 64) = a2;
      v46 = sub_31300();
      v47 = sub_313D0().super.isa;

      v48 = [v37 predicateWithFormat:v46 argumentArray:v47];

      sub_313C0();
      p_type = (&stru_40FF0 + 16);
      if (*(&dword_10 + (v67 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v67 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_31400();
      }

      sub_31410();
    }

    else
    {

      p_type = &stru_40FF0.type;
    }
  }

  sub_B304(0, &qword_424B0, NSPredicate_ptr);
  v49 = sub_313D0().super.isa;
  v50 = [objc_opt_self() andPredicateWithSubpredicates:v49];

  [v64 p_type[37]];
  if (a3)
  {
    sub_2294(&qword_42498, &qword_32CB8);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_32A70;
    v52 = objc_allocWithZone(NSSortDescriptor);
    v53 = sub_31300();
    v54 = [v52 initWithKey:v53 ascending:1];

    *(v51 + 32) = v54;
    sub_B304(0, &qword_424A0, NSSortDescriptor_ptr);
    v55 = sub_313D0().super.isa;

    [v64 setSortDescriptors:v55];
  }

  if (a4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v64 setFetchLimit:?];
  }

  type metadata accessor for CDProperty();
  v56 = sub_31620();

  sub_3AC8(v56, 0, v57, a7, v66);

  swift_bridgeObjectRelease_n();
}

void sub_7374(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t *))
{
  v14 = objc_allocWithZone(NSFetchRequest);
  v15 = sub_31300();
  v16 = [v14 initWithEntityName:v15];

  [v16 setPredicate:a1];
  if (a3)
  {
    sub_2294(&qword_42440, &unk_32AB0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_32A60;
    *(v17 + 32) = 0x696669746E656469;
    *(v17 + 40) = 0xEA00000000007265;
    *(v17 + 88) = &type metadata for String;
    *(v17 + 56) = &type metadata for String;
    *(v17 + 64) = a2;
    *(v17 + 72) = a3;

    v18 = sub_31300();
    isa = sub_313D0().super.isa;

    v20 = [objc_opt_self() predicateWithFormat:v18 argumentArray:isa];
  }

  else
  {
    v21 = a1;
  }

  sub_313C0();
  if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_31400();
  }

  sub_31410();
  if (a4)
  {

    v22 = sub_2294(&qword_424F0, qword_32CF8);
    sub_B678(&qword_424F8, &qword_424F0, qword_32CF8, &protocol conformance descriptor for Set<A>);
    if (sub_31490())
    {
      sub_2294(&qword_42440, &unk_32AB0);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_32A60;
      *(v23 + 32) = 0x44497465737361;
      *(v23 + 40) = 0xE700000000000000;
      *(v23 + 88) = v22;
      *(v23 + 56) = &type metadata for String;
      *(v23 + 64) = a4;
      v24 = sub_31300();
      v25 = sub_313D0().super.isa;

      v26 = [objc_opt_self() predicateWithFormat:v24 argumentArray:v25];

      sub_313C0();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_31400();
      }

      sub_31410();
    }

    else
    {
    }
  }

  sub_B304(0, &qword_424B0, NSPredicate_ptr);
  v27 = sub_313D0().super.isa;
  v28 = [objc_opt_self() andPredicateWithSubpredicates:v27];

  [v16 setPredicate:v28];
  if (a5)
  {
    sub_2294(&qword_42498, &qword_32CB8);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_32A70;
    v30 = objc_allocWithZone(NSSortDescriptor);
    v31 = sub_31300();
    v32 = [v30 initWithKey:v31 ascending:1];

    *(v29 + 32) = v32;
    sub_B304(0, &qword_424A0, NSSortDescriptor_ptr);
    v33 = sub_313D0().super.isa;

    [v16 setSortDescriptors:v33];
  }

  if (a6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v16 setFetchLimit:a6];
  }

  type metadata accessor for CDProperty();
  v34 = sub_31620();

  sub_3F64(v34, 0, a8);
}

void sub_7B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, void, uint64_t, uint64_t))
{
  sub_2294(&qword_42440, &unk_32AB0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_32A60;
  *(v11 + 32) = 7955819;
  *(v11 + 40) = 0xE300000000000000;
  *(v11 + 88) = &type metadata for String;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = a1;
  *(v11 + 72) = a2;
  swift_retain_n();

  v12 = sub_31300();
  isa = sub_313D0().super.isa;

  v14 = [objc_opt_self() predicateWithFormat:v12 argumentArray:isa];

  v15 = objc_allocWithZone(NSFetchRequest);
  v16 = sub_31300();
  v21 = [v15 initWithEntityName:v16];

  [v21 setPredicate:v14];
  v17 = v14;
  sub_313C0();
  if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_31400();
  }

  sub_31410();
  sub_B304(0, &qword_424B0, NSPredicate_ptr);
  v18 = sub_313D0().super.isa;
  v19 = [objc_opt_self() andPredicateWithSubpredicates:v18];

  [v21 setPredicate:v19];
  [v21 setFetchLimit:1];
  type metadata accessor for CDProperty();
  v20 = sub_31620();

  a6(v20, 0, a4, a5);
}

void _s19EngagementCollector10CDPropertyC14fetchObjectIDs9startDate03endH010eventNames7context10completiony10Foundation0H0VSg_AMSaySSGSgSo09NSManagedE7ContextCys6ResultOySaySo0oE2IDCGs5Error_pGctFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void), uint64_t a6)
{
  v58 = a6;
  v59 = a5;
  v56 = a3;
  v57 = a4;
  v54 = a2;
  v7 = sub_2294(&qword_42490, &qword_32CB0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v52 - v11;
  v13 = sub_31180();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v55 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v52 - v17;
  v19 = objc_allocWithZone(NSFetchRequest);
  v20 = sub_31300();
  v60 = [v19 initWithEntityName:v20];

  v61 = _swiftEmptyArrayStorage;
  sub_B488(a1, v12, &qword_42490, &qword_32CB0);
  v53 = *(v14 + 48);
  if (v53(v12, 1, v13) == 1)
  {
    v21 = v14;
    sub_B5AC(v12, &qword_42490, &qword_32CB0);
    v22 = v60;
  }

  else
  {
    (*(v14 + 32))(v18, v12, v13);
    sub_2294(&qword_42440, &unk_32AB0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_32A60;
    *(v23 + 56) = &type metadata for String;
    *(v23 + 32) = 0x4164657461657263;
    *(v23 + 40) = 0xE900000000000074;
    *(v23 + 88) = v13;
    v24 = sub_B34C((v23 + 64));
    (*(v14 + 16))(v24, v18, v13);
    v25 = sub_31300();
    isa = sub_313D0().super.isa;

    v27 = [objc_opt_self() predicateWithFormat:v25 argumentArray:isa];

    sub_313C0();
    if (*(&dword_10 + (v61 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v61 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_31400();
    }

    sub_31410();
    v21 = v14;
    (*(v14 + 8))(v18, v13);
    v22 = v60;
  }

  sub_B488(v54, v10, &qword_42490, &qword_32CB0);
  v28 = v53(v10, 1, v13);
  v29 = v55;
  if (v28 == 1)
  {
    sub_B5AC(v10, &qword_42490, &qword_32CB0);
    v30 = v56;
    p_type = (&stru_40FF0 + 16);
    v32 = swift_unknownObjectWeakDestroy;
    if (!v56)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  (*(v21 + 32))(v55, v10, v13);
  sub_2294(&qword_42440, &unk_32AB0);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_32A60;
  *(v33 + 56) = &type metadata for String;
  *(v33 + 32) = 0x4164657461657263;
  *(v33 + 40) = 0xE900000000000074;
  *(v33 + 88) = v13;
  v34 = sub_B34C((v33 + 64));
  (*(v21 + 16))(v34, v29, v13);
  v35 = v29;
  v36 = sub_31300();
  v37 = sub_313D0().super.isa;

  p_type = &stru_40FF0.type;
  v38 = [objc_opt_self() predicateWithFormat:v36 argumentArray:v37];

  sub_313C0();
  if (*(&dword_10 + (v61 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v61 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_31400();
  }

  sub_31410();
  (*(v21 + 8))(v35, v13);
  v30 = v56;
  v32 = swift_unknownObjectWeakDestroy;
  if (v56)
  {
LABEL_12:
    sub_2294(&qword_42440, &unk_32AB0);
    v39 = swift_allocObject();
    *(v39 + 16) = *(v32 + 166);
    *(v39 + 56) = &type metadata for String;
    *(v39 + 32) = 7955819;
    *(v39 + 40) = 0xE300000000000000;
    *(v39 + 88) = sub_2294(&qword_424C0, &qword_32CC8);
    *(v39 + 64) = v30;

    v40 = sub_31300();
    v41 = sub_313D0().super.isa;

    v42 = [objc_opt_self() p_type[23]];

    sub_313C0();
    if (*(&dword_10 + (v61 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v61 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_31400();
    }

    sub_31410();
  }

LABEL_15:
  sub_B304(0, &qword_424B0, NSPredicate_ptr);
  v43 = sub_313D0().super.isa;
  v44 = [objc_opt_self() andPredicateWithSubpredicates:v43];

  [v22 setPredicate:v44];
  v45 = objc_allocWithZone(NSSortDescriptor);
  v46 = sub_31300();
  v47 = [v45 initWithKey:v46 ascending:1];

  sub_2294(&qword_42498, &qword_32CB8);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_32A70;
  *(v48 + 32) = v47;
  sub_B304(0, &qword_424A0, NSSortDescriptor_ptr);
  v49 = v47;
  v50 = sub_313D0().super.isa;

  [v22 setSortDescriptors:v50];

  [v22 setResultType:1];
  sub_B304(0, &qword_424B8, NSManagedObjectID_ptr);
  v51 = sub_31620();

  v59(v51, 0);
}

uint64_t sub_8BFC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_8C34()
{
  result = qword_425B0;
  if (!qword_425B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_425B0);
  }

  return result;
}

void sub_8C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != 1)
  {
    if (a6 != 2)
    {
      return;
    }
  }
}

unint64_t sub_8D00()
{
  result = qword_42448;
  if (!qword_42448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_42448);
  }

  return result;
}

unint64_t sub_8D64()
{
  result = qword_42450;
  if (!qword_42450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_42450);
  }

  return result;
}

id sub_8DC4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 count];
  *a2 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PropertyError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PropertyError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CDProperty.SpecialPlistKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for CDProperty.SpecialPlistKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_9170(void *a1)
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

void sub_91BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void (*a7)(uint64_t, uint64_t *, char *), uint64_t a8, uint64_t (*a9)(void), uint64_t a10)
{
  v56 = a7;
  v57 = a8;
  v54 = a5;
  v55 = a6;
  v62 = a3;
  v63 = a4;
  v61 = a2;
  v11 = sub_2294(&qword_42490, &qword_32CB0);
  v12 = __chkstk_darwin(v11 - 8);
  v60 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v53 - v14;
  v16 = sub_31180();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v58 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v53 - v20;
  v22 = objc_allocWithZone(NSFetchRequest);
  v23 = sub_31300();
  v64 = [v22 initWithEntityName:v23];

  v65 = _swiftEmptyArrayStorage;
  sub_B488(a1, v15, &qword_42490, &qword_32CB0);
  v59 = *(v17 + 48);
  if (v59(v15, 1, v16) == 1)
  {
    v24 = v17;
    sub_B5AC(v15, &qword_42490, &qword_32CB0);
  }

  else
  {
    (*(v17 + 32))(v21, v15, v16);
    sub_2294(&qword_42440, &unk_32AB0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_32A60;
    *(v25 + 56) = &type metadata for String;
    *(v25 + 32) = 0x4164657461657263;
    *(v25 + 40) = 0xE900000000000074;
    *(v25 + 88) = v16;
    v26 = sub_B34C((v25 + 64));
    (*(v17 + 16))(v26, v21, v16);
    v27 = sub_31300();
    isa = sub_313D0().super.isa;

    v29 = [objc_opt_self() predicateWithFormat:v27 argumentArray:isa];

    sub_313C0();
    if (*(&dword_10 + (v65 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v65 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_31400();
    }

    sub_31410();
    v24 = v17;
    (*(v17 + 8))(v21, v16);
  }

  v30 = v60;
  sub_B488(v61, v60, &qword_42490, &qword_32CB0);
  if (v59(v30, 1, v16) == 1)
  {
    sub_B5AC(v30, &qword_42490, &qword_32CB0);
    v31 = v62;
    p_type = (&stru_40FF0 + 16);
  }

  else
  {
    v33 = v58;
    (*(v24 + 32))(v58, v30, v16);
    sub_2294(&qword_42440, &unk_32AB0);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_32A60;
    *(v34 + 56) = &type metadata for String;
    *(v34 + 32) = 0x4164657461657263;
    *(v34 + 40) = 0xE900000000000074;
    *(v34 + 88) = v16;
    v35 = sub_B34C((v34 + 64));
    (*(v24 + 16))(v35, v33, v16);
    v36 = sub_31300();
    v37 = sub_313D0().super.isa;

    p_type = &stru_40FF0.type;
    v38 = [objc_opt_self() predicateWithFormat:v36 argumentArray:v37];

    sub_313C0();
    if (*(&dword_10 + (v65 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v65 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_31400();
    }

    sub_31410();
    (*(v24 + 8))(v33, v16);
    v31 = v62;
  }

  v39 = v64;
  if (v31)
  {
    sub_2294(&qword_42440, &unk_32AB0);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_32A60;
    *(v40 + 56) = &type metadata for String;
    *(v40 + 32) = 7955819;
    *(v40 + 40) = 0xE300000000000000;
    *(v40 + 88) = sub_2294(&qword_424C0, &qword_32CC8);
    *(v40 + 64) = v31;

    v41 = sub_31300();
    v42 = sub_313D0().super.isa;

    v43 = [objc_opt_self() p_type[23]];

    sub_313C0();
    if (*(&dword_10 + (v65 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v65 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_31400();
    }

    sub_31410();
  }

  sub_B304(0, &qword_424B0, NSPredicate_ptr);
  v44 = sub_313D0().super.isa;
  v45 = [objc_opt_self() andPredicateWithSubpredicates:v44];

  [v39 setPredicate:v45];
  v46 = objc_allocWithZone(NSSortDescriptor);
  v47 = sub_31300();
  v48 = [v46 initWithKey:v47 ascending:1];

  sub_2294(&qword_42498, &qword_32CB8);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_32A70;
  *(v49 + 32) = v48;
  sub_B304(0, &qword_424A0, NSSortDescriptor_ptr);
  v50 = v48;
  v51 = sub_313D0().super.isa;

  [v39 setSortDescriptors:v51];

  [v39 setResultType:1];
  sub_B304(0, &qword_424B8, NSManagedObjectID_ptr);
  v52 = sub_31620();

  sub_22BF8(v52, 0, v54, v55, v56, v57, a9, a10);
}

uint64_t sub_9D94(char **a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v47 = v12;
  v12[4] = a6;
  v48 = swift_allocObject();
  *(v48 + 16) = a3;
  v13 = a1[2];
  v14 = a3;
  v50 = a1;
  if (!v13)
  {
    v49 = _swiftEmptyArrayStorage;
    goto LABEL_20;
  }

  v15 = 0;
  v49 = _swiftEmptyArrayStorage;
  p_type = &stru_40FF0.type;
  do
  {
    v17 = v15;
    while (1)
    {
      if (v17 >= v13)
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v19 = sub_2294(&unk_42700, &qword_32CD0);
      v15 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_26;
      }

      v20 = a1 + ((*(*(v19 - 8) + 80) + 32) & ~*(*(v19 - 8) + 80)) + *(*(v19 - 8) + 72) * v17 + *(v19 + 48);
      v21 = *v20;
      v22 = *(v20 + 1);
      v23 = v20[40];
      if ([a2 recordType] != &dword_0 + 2 || v23 != 2)
      {
        break;
      }

      if (v22)
      {
        goto LABEL_13;
      }

LABEL_5:
      ++v17;
      a1 = v50;
      if (v15 == v13)
      {
        goto LABEL_20;
      }
    }

    v18 = [a2 identifier];
    if (!v18)
    {
      goto LABEL_5;
    }

    v24 = v18;
    v21 = sub_31320();
    v22 = v25;

LABEL_13:
    a1 = v50;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v49 = sub_2E9F0(0, *(v49 + 2) + 1, 1, v49);
    }

    v27 = *(v49 + 2);
    v26 = *(v49 + 3);
    v28 = v27 + 1;
    if (v27 >= v26 >> 1)
    {
      v30 = sub_2E9F0((v26 > 1), v27 + 1, 1, v49);
      v28 = v27 + 1;
      v49 = v30;
    }

    *(v49 + 2) = v28;
    v29 = &v49[16 * v27];
    *(v29 + 4) = v21;
    *(v29 + 5) = v22;
  }

  while (v15 != v13);
LABEL_20:
  v31 = [a2 eventName];
  v32 = sub_31320();
  v34 = v33;

  swift_bridgeObjectRetain_n();
  swift_unknownObjectRetain_n();
  swift_retain_n();
  swift_retain_n();
  v35 = sub_2294(&qword_424C0, &qword_32CC8);
  sub_B678(&qword_424C8, &qword_424C0, &qword_32CC8, &protocol conformance descriptor for [A]);
  if (sub_31490())
  {
    sub_2294(&qword_42440, &unk_32AB0);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_32A80;
    *(v36 + 32) = 7955819;
    *(v36 + 40) = 0xE300000000000000;
    *(v36 + 56) = &type metadata for String;
    *(v36 + 64) = v32;
    *(v36 + 72) = v34;
    *(v36 + 88) = &type metadata for String;
    *(v36 + 96) = 0x696669746E656469;
    *(v36 + 104) = 0xEA00000000007265;
    *(v36 + 152) = v35;
    *(v36 + 120) = &type metadata for String;
    *(v36 + 128) = v49;
  }

  else
  {

    sub_2294(&qword_42440, &unk_32AB0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_32A60;
    *(v37 + 32) = 7955819;
    *(v37 + 40) = 0xE300000000000000;
    *(v37 + 88) = &type metadata for String;
    *(v37 + 56) = &type metadata for String;
    *(v37 + 64) = v32;
    *(v37 + 72) = v34;
  }

  v38 = sub_31300();
  isa = sub_313D0().super.isa;

  v40 = [objc_opt_self() predicateWithFormat:v38 argumentArray:isa];

  v41 = objc_allocWithZone(NSFetchRequest);

  swift_unknownObjectRetain();
  v15 = v48;

  v42 = sub_31300();
  p_type = [v41 initWithEntityName:v42];

  a1 = &stru_40FF0.type;
  [p_type setPredicate:v40];
  v17 = v40;
  sub_313C0();
  if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
LABEL_27:
    sub_31400();
  }

  sub_31410();
  sub_B304(0, &qword_424B0, NSPredicate_ptr);
  v43 = sub_313D0().super.isa;
  v44 = [objc_opt_self() andPredicateWithSubpredicates:v43];

  [p_type a1[37]];
  [p_type setFetchLimit:0];
  type metadata accessor for CDProperty();
  v45 = sub_31620();

  sub_4AD4(v45, 0, v50, a2, sub_B438, v15, sub_B3F0, v47);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease_n();
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_A6F8(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 40);
  if (result)
  {
    v4 = 32;
    if (result == 1)
    {
      v4 = 16;
    }

    v21 = *(a1 + v4);

    sub_5F30(0x44497465737361, 0xE700000000000000, v22);
    sub_B5AC(v22, &qword_424D8, &qword_32CE0);
    sub_5964(v21);

    v5 = objc_allocWithZone(NSDictionary);
    isa = sub_312C0().super.isa;

    v7 = [v5 initWithDictionary:isa];

    v8 = objc_opt_self();
    *&v22[0] = 0;
    v9 = [v8 dataWithJSONObject:v7 options:1 error:v22];
    v10 = *&v22[0];
    if (v9)
    {
      v11 = sub_310F0();

      return v11;
    }

    else
    {
      v12 = v10;
      sub_31070();

      swift_willThrow();
      if (qword_42220 != -1)
      {
        swift_once();
      }

      v13 = sub_311B0();
      sub_8BFC(v13, qword_434B0);
      swift_errorRetain();
      v14 = sub_31190();
      v15 = sub_314D0();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *&v22[0] = v17;
        *v16 = 136315138;
        swift_getErrorValue();
        v18 = sub_318A0();
        v20 = sub_28BCC(v18, v19, v22);

        *(v16 + 4) = v20;
        _os_log_impl(&dword_0, v14, v15, "Could not convert StatePropertyValue to a valid JSON data object: %s", v16, 0xCu);
        sub_9170(v17);
      }

      else
      {
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_AA04(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(NSFetchRequest);
  v5 = sub_31300();
  v6 = [v4 initWithEntityName:v5];

  sub_2294(&qword_42440, &unk_32AB0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_32A60;
  *(v7 + 32) = 7955819;
  *(v7 + 40) = 0xE300000000000000;
  *(v7 + 88) = &type metadata for String;
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = a1;
  *(v7 + 72) = a2;

  v8 = sub_31300();
  isa = sub_313D0().super.isa;

  v10 = [objc_opt_self() predicateWithFormat:v8 argumentArray:isa];

  [v6 setPredicate:v10];
  v11 = objc_allocWithZone(NSSortDescriptor);
  v12 = sub_31300();
  v13 = [v11 initWithKey:v12 ascending:1];

  sub_2294(&qword_42498, &qword_32CB8);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_32A70;
  *(v14 + 32) = v13;
  sub_B304(0, &qword_424A0, NSSortDescriptor_ptr);
  v15 = v13;
  v16 = sub_313D0().super.isa;

  [v6 setSortDescriptors:v16];

  type metadata accessor for CDProperty();
  v17 = sub_31620();

  return v17;
}

uint64_t sub_AEE8(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(NSFetchRequest);
  v5 = sub_31300();
  v6 = [v4 initWithEntityName:v5];

  sub_2294(&qword_42440, &unk_32AB0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_32A60;
  *(v7 + 32) = 7955819;
  *(v7 + 40) = 0xE300000000000000;
  *(v7 + 88) = &type metadata for String;
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = a1;
  *(v7 + 72) = a2;

  v8 = sub_31300();
  isa = sub_313D0().super.isa;

  v10 = [objc_opt_self() predicateWithFormat:v8 argumentArray:isa];

  [v6 setPredicate:v10];
  type metadata accessor for CDProperty();
  v11 = sub_31610();

  return v11;
}

uint64_t sub_B304(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t *sub_B34C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_B3B0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_B400()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_B440(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_B488(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2294(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_B544(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_B558(result, a2);
  }

  return result;
}

uint64_t sub_B558(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_B5AC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_2294(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

_OWORD *sub_B60C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_B61C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_B678(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_B440(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id BMPropertyValue.__allocating_init(with:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *(a1 + 40);
  if (v4 == 255)
  {
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v5 = &v3[OBJC_IVAR____TtC19EngagementCollector15BMPropertyValue_propertyValue];
    v6 = *(a1 + 16);
    *v5 = *a1;
    *(v5 + 1) = v6;
    *(v5 + 4) = *(a1 + 32);
    v5[40] = v4;
    v8.receiver = v3;
    v8.super_class = v1;
    return objc_msgSendSuper2(&v8, "init");
  }
}

id BMPropertyValue.init(with:)(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 == 255)
  {
    type metadata accessor for BMPropertyValue();
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v3 = &v1[OBJC_IVAR____TtC19EngagementCollector15BMPropertyValue_propertyValue];
    v4 = *(a1 + 16);
    *v3 = *a1;
    *(v3 + 1) = v4;
    *(v3 + 4) = *(a1 + 32);
    v3[40] = v2;
    v6.receiver = v1;
    v6.super_class = type metadata accessor for BMPropertyValue();
    return objc_msgSendSuper2(&v6, "init");
  }
}

id BMPropertyValue.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BMPropertyValue();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t PropertyValue.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 40);
  if (!*(v0 + 40))
  {
    v5 = 0xE700000000000000;
    v4 = 0x7265746E756F63;
LABEL_13:
    v11 = 0;
    v12 = 0xE000000000000000;
    sub_316D0(37);
    v14 = 0;
    v15 = 0xE000000000000000;
    v21._object = 0x8000000000034830;
    v21._countAndFlagsBits = 0xD000000000000015;
    sub_31390(v21);
    v22._countAndFlagsBits = v4;
    v22._object = v5;
    sub_31390(v22);

    v23._countAndFlagsBits = 0x6C6156776172202CLL;
    v23._object = 0xEC000000203A6575;
    sub_31390(v23);
    if (v2)
    {
      if (v2 == 1)
      {
        v9 = *(v0 + 16);
      }

      else
      {
        v9 = *(v0 + 32);
      }

      v13 = sub_2294(&qword_42508, &qword_32D10);
      v11 = v9;
    }

    else
    {
      v13 = &type metadata for Int;
      v11 = v1;
    }

    goto LABEL_19;
  }

  v3 = *(v0 + 8);
  if (v2 == 1)
  {
    v4 = 0x6574617473;
  }

  else
  {
    v4 = 0x697463656C6C6F63;
  }

  if (v2 == 1)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xEA00000000006E6FLL;
  }

  if (!v3)
  {
    goto LABEL_13;
  }

  v11 = 0;
  v12 = 0xE000000000000000;
  sub_316D0(53);
  v14 = 0;
  v15 = 0xE000000000000000;
  v16._object = 0x8000000000034830;
  v16._countAndFlagsBits = 0xD000000000000015;
  sub_31390(v16);
  v17._countAndFlagsBits = v4;
  v17._object = v5;
  sub_31390(v17);

  v18._countAndFlagsBits = 0x69746E656469202CLL;
  v18._object = 0xEE00203A72656966;
  sub_31390(v18);
  v19._countAndFlagsBits = v1;
  v19._object = v3;
  sub_31390(v19);
  v20._countAndFlagsBits = 0x6C6156776172202CLL;
  v20._object = 0xEC000000203A6575;
  sub_31390(v20);
  v6 = 16;
  if (v2 == 2)
  {
    v6 = 32;
  }

  v7 = *(v0 + v6);
  v8 = sub_2294(&qword_42508, &qword_32D10);

  v13 = v8;
  v11 = v7;
LABEL_19:
  sub_31790();
  sub_9170(&v11);
  return v14;
}

void PropertyValue.rawValue.getter(uint64_t *a1@<X8>)
{
  if (*(v1 + 40))
  {
    if (*(v1 + 40) == 1)
    {
      v3 = v1[2];
    }

    else
    {
      v3 = v1[4];
    }

    a1[3] = sub_2294(&qword_42508, &qword_32D10);
    *a1 = v3;
  }

  else
  {
    v4 = *v1;
    a1[3] = &type metadata for Int;
    *a1 = v4;
  }
}

uint64_t PropertyValue.assetID.getter(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 40) < 2u)
  {
    return 0;
  }

  v3 = *(v2 + 16);

  return v3;
}

uint64_t dispatch thunk of BMPropertyValue.__allocating_init(with:)(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(v1 + 88);
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v8 = v2;
  v9 = v3;
  return v4(v7);
}

__n128 sub_BC7C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_BC90(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_BCD8(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 40) = -a2;
    }
  }

  return result;
}

id sub_BD98(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CDConfiguration();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_BDF0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CDConfiguration();
  result = sub_316E0();
  *a2 = result;
  return result;
}

void sub_BE30(void *a1, char a2, uint64_t a3, void *a4, void (*a5)(id, void))
{
  if (a2)
  {
    v8 = objc_opt_self();
    v9 = sub_31300();
    v10 = [v8 entityForName:v9 inManagedObjectContext:a3];

    if (!v10)
    {
      __break(1u);
      return;
    }

    v11 = [objc_allocWithZone(type metadata accessor for CDConfiguration()) initWithEntity:v10 insertIntoManagedObjectContext:a3];
  }

  else
  {
    v11 = a1;
  }

  v13 = v11;
  v12 = [a4 eventName];
  [v13 setPropertyName:v12];

  [v13 setAgeToExpire:{objc_msgSend(a4, "ageToExpire")}];
  [v13 setCountLimit:{objc_msgSend(a4, "countLimit")}];
  [v13 setRecordType:{objc_msgSend(a4, "recordType")}];
  [v13 setShouldBeSynced:{objc_msgSend(a4, "shouldBeSynced")}];
  a5(v13, 0);
}

unint64_t sub_C008(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_C21C(v3);
    v3 = result;
  }

  v5 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *(&stru_20.cmd + 8 * a1 + (v3 & 0xFFFFFFFFFFFFFF8));
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

id sub_C098()
{
  v1 = v0;
  v2 = [v0 propertyName];
  if (v2)
  {
    v3 = v2;
    v4 = sub_31320();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = [v1 ageToExpire];
  v8 = [v1 countLimit];
  v9 = [v1 recordType];
  v10 = [v1 shouldBeSynced];
  if (v6)
  {
    if (v9 < 3)
    {
      v11 = v10;
      v12 = type metadata accessor for BasePropertyConfiguration();
      v13 = objc_allocWithZone(v12);
      v14 = &v13[OBJC_IVAR___BMBasePropertyConfiguration_eventName];
      *v14 = v4;
      v14[1] = v6;
      *&v13[OBJC_IVAR___BMBasePropertyConfiguration_recordType] = v9;
      v15 = &v13[OBJC_IVAR___BMBasePropertyConfiguration_identifier];
      *v15 = 0;
      v15[1] = 0;
      *&v13[OBJC_IVAR___BMBasePropertyConfiguration_countLimit] = v8;
      *&v13[OBJC_IVAR___BMBasePropertyConfiguration_ageToExpire] = v7;
      v13[OBJC_IVAR___BMBasePropertyConfiguration_shouldBeCached] = 0;
      v13[OBJC_IVAR___BMBasePropertyConfiguration_shouldBeSynced] = v11;
      v17.receiver = v13;
      v17.super_class = v12;
      return objc_msgSendSuper2(&v17, "init");
    }
  }

  return 0;
}

uint64_t sub_C21C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_317C0();
  }

  return sub_31710();
}

unint64_t sub_C280(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2294(&unk_42650, &qword_32E98);
    v3 = sub_31800();
    v4 = a1 + 32;

    while (1)
    {
      sub_D74C(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_17054(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_B6C8(&v15, (v3[7] + 32 * result));
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

void sub_C390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(id, void))
{
  v11 = objc_allocWithZone(NSFetchRequest);
  v12 = sub_31300();
  v30 = [v11 initWithEntityName:v12];

  sub_2294(&qword_42440, &unk_32AB0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_32A60;
  strcpy((v13 + 32), "propertyName");
  *(v13 + 45) = 0;
  *(v13 + 46) = -5120;
  *(v13 + 88) = &type metadata for String;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = a1;
  *(v13 + 72) = a2;

  v14 = sub_31300();
  isa = sub_313D0().super.isa;

  v16 = [objc_opt_self() predicateWithFormat:v14 argumentArray:isa];

  [v30 setPredicate:v16];
  [v30 setFetchLimit:1];
  type metadata accessor for CDConfiguration();
  v17 = sub_31620();
  if (!(v17 >> 62))
  {
    if (*(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_3;
    }

LABEL_10:

    sub_2294(&qword_42560, &qword_32E88);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_32E20;
    *(inited + 32) = 0xD000000000000014;
    v24 = inited + 32;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = 0x8000000000034910;
    *(inited + 48) = 0xD000000000000017;
    *(inited + 56) = 0x8000000000034930;
    sub_C280(inited);
    swift_setDeallocating();
    sub_B5AC(v24, &qword_42568, &qword_32E90);
    v25 = objc_allocWithZone(NSError);
    v26 = sub_31300();
    v27 = sub_312C0().super.isa;

    v28 = [v25 initWithDomain:v26 code:1002 userInfo:v27];

    v29 = v28;
    sub_BE30(v28, 1, a4, a5, a6);

    return;
  }

  v21 = v17;
  v22 = sub_317C0();
  v17 = v21;
  if (!v22)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v17 & 0xC000000000000001) != 0)
  {
    v18 = sub_31700();
  }

  else
  {
    if (!*(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return;
    }

    v18 = *(v17 + 32);
  }

  v19 = v18;

  v20 = v19;
  sub_BE30(v19, 0, a4, a5, a6);
}

void sub_CA08(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(id, uint64_t))
{
  v7 = objc_allocWithZone(NSFetchRequest);
  v8 = sub_31300();
  v9 = [v7 initWithEntityName:v8];

  sub_2294(&qword_42440, &unk_32AB0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_32A60;
  strcpy((v10 + 32), "propertyName");
  *(v10 + 45) = 0;
  *(v10 + 46) = -5120;
  *(v10 + 88) = &type metadata for String;
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = a1;
  *(v10 + 72) = a2;

  v11 = sub_31300();
  isa = sub_313D0().super.isa;

  v13 = [objc_opt_self() predicateWithFormat:v11 argumentArray:isa];

  [v9 setPredicate:v13];
  [v9 setFetchLimit:1];
  type metadata accessor for CDConfiguration();
  v14 = sub_31620();
  if (!(v14 >> 62))
  {
    if (*(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_3;
    }

LABEL_10:

    sub_2294(&qword_42560, &qword_32E88);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_32E20;
    *(inited + 32) = 0xD000000000000014;
    v21 = inited + 32;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = 0x8000000000034910;
    *(inited + 48) = 0xD000000000000017;
    *(inited + 56) = 0x8000000000034930;
    sub_C280(inited);
    swift_setDeallocating();
    sub_B5AC(v21, &qword_42568, &qword_32E90);
    v22 = objc_allocWithZone(NSError);
    v23 = sub_31300();
    v24 = sub_312C0().super.isa;

    v25 = [v22 initWithDomain:v23 code:1002 userInfo:v24];

    v26 = v25;
    a4(v25, 1);

    return;
  }

  v18 = v14;
  v19 = sub_317C0();
  v14 = v18;
  if (!v19)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v14 & 0xC000000000000001) != 0)
  {
    v15 = sub_31700();
  }

  else
  {
    if (!*(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return;
    }

    v15 = *(v14 + 32);
  }

  v16 = v15;

  v17 = v16;
  v27 = sub_C098();
  a4(v27, 0);
}

void sub_D050(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v4 = objc_allocWithZone(NSFetchRequest);
  v5 = sub_31300();
  v7 = [v4 initWithEntityName:v5];

  type metadata accessor for CDConfiguration();
  v6 = sub_31620();
  sub_26918(v6, 0, a2);
}

void sub_D3A8(uint64_t a1, void (*a2)(void))
{
  v3 = objc_allocWithZone(NSFetchRequest);
  v4 = sub_31300();
  v5 = [v3 initWithEntityName:v4];

  type metadata accessor for CDConfiguration();
  sub_31620();
  a2();
}

unint64_t sub_D700()
{
  result = qword_424A8;
  if (!qword_424A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_424A8);
  }

  return result;
}

uint64_t sub_D74C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2294(&qword_42568, &qword_32E90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_D7BC(unint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(NSFetchRequest);
  v5 = sub_31300();
  v6 = [v4 initWithEntityName:v5];

  v7 = type metadata accessor for CDConfiguration();
  v8 = sub_31620();
  v21 = v8;
  v93 = a1;
  if (v8 >> 62)
  {
LABEL_94:
    v22 = sub_317C0();
  }

  else
  {
    v22 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
  }

  v99 = a2;
  v95 = v21;
  v90 = v6;
  v91 = v7;
  if (v22)
  {
    if (v22 < 1)
    {
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      result = sub_31890();
      __break(1u);
      return result;
    }

    v23 = 0;
    v97 = v21 & 0xC000000000000001;
    v96 = _swiftEmptyDictionarySingleton;
    while (1)
    {
      if (v97)
      {
        v24 = sub_31700();
      }

      else
      {
        v24 = *(v21 + 8 * v23 + 32);
      }

      v25 = v24;
      v26 = [v24 propertyName];
      if (v26)
      {
        v27 = v26;
        v28 = sub_31320();
        v30 = v29;

        if (v96[2] && (v31 = sub_17054(v28, v30), (v32 & 1) != 0))
        {
          v102 = *(v96[7] + 8 * v31);
        }

        else
        {
          v102 = _swiftEmptyArrayStorage;
        }

        v33 = v25;
        sub_313C0();
        if (*(&dword_10 + (v102 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v102 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          v27 = *(&dword_10 + (v102 & 0xFFFFFFFFFFFFFF8));
          sub_31400();
        }

        sub_31410();
        v34 = v102;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v101 = v96;
        v36 = sub_17054(v28, v30);
        v38 = v96[2];
        v39 = (v37 & 1) == 0;
        v40 = __OFADD__(v38, v39);
        v41 = v38 + v39;
        if (v40)
        {
          __break(1u);
LABEL_91:
          __break(1u);
          swift_once();
          v9 = sub_311B0();
          sub_8BFC(v9, qword_434B0);
          v10 = v27;
          v11 = sub_31190();
          v12 = sub_314D0();

          if (os_log_type_enabled(v11, v12))
          {
            v13 = swift_slowAlloc();
            v14 = swift_slowAlloc();
            v100 = v14;
            *v13 = 136315138;
            v15 = [v10 localizedDescription];
            v16 = sub_31320();
            v18 = v17;

            v19 = sub_28BCC(v16, v18, &v100);

            *(v13 + 4) = v19;
            _os_log_impl(&dword_0, v11, v12, "Could not fetch. %s", v13, 0xCu);
            sub_9170(v14);
          }

          return v10;
        }

        v42 = v37;
        if (v96[3] >= v41)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v27 = v36;
            sub_18914();
            v36 = v27;
          }
        }

        else
        {
          sub_178F4(v41, isUniquelyReferenced_nonNull_native);
          v36 = sub_17054(v28, v30);
          if ((v42 & 1) != (v43 & 1))
          {
            goto LABEL_100;
          }
        }

        v44 = v101;
        v96 = v101;
        if (v42)
        {
          *(v101[7] + 8 * v36) = v34;
        }

        else
        {
          v101[(v36 >> 6) + 8] |= 1 << v36;
          v45 = (v44[6] + 16 * v36);
          *v45 = v28;
          v45[1] = v30;
          *(v44[7] + 8 * v36) = v34;
          v46 = v44[2];
          v40 = __OFADD__(v46, 1);
          v47 = v46 + 1;
          if (v40)
          {
            goto LABEL_91;
          }

          v44[2] = v47;
        }

        a2 = v99;
        v21 = v95;
      }

      else
      {
      }

      if (v22 == ++v23)
      {
        goto LABEL_35;
      }
    }
  }

  v96 = _swiftEmptyDictionarySingleton;
LABEL_35:
  v48 = v93;
  if (v93 >> 62)
  {
    v85 = sub_317C0();
    v48 = v93;
    v6 = v85;
  }

  else
  {
    v6 = *(&dword_10 + (v93 & 0xFFFFFFFFFFFFFF8));
  }

  v7 = 0x6769666E6F434443;
  if (!v6)
  {
    goto LABEL_89;
  }

  v49 = 0;
  v50 = v48 & 0xC000000000000001;
  v86 = v48 + 32;
  v87 = v48 & 0xFFFFFFFFFFFFFF8;
  v51 = qword_434B0;
  v52 = &off_42000;
  v88 = v48 & 0xC000000000000001;
  v89 = v6;
  while (1)
  {
    if (v50)
    {
      v94 = sub_31700();
      v40 = __OFADD__(v49, 1);
      v53 = v49 + 1;
      if (v40)
      {
        goto LABEL_92;
      }
    }

    else
    {
      if (v49 >= *(v87 + 16))
      {
        goto LABEL_97;
      }

      v94 = *(v86 + 8 * v49);
      swift_unknownObjectRetain();
      v40 = __OFADD__(v49, 1);
      v53 = v49 + 1;
      if (v40)
      {
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
        goto LABEL_94;
      }
    }

    v92 = v53;
    v6 = [v94 eventName];
    v54 = sub_31320();
    v56 = v55;

    if (v96[2])
    {
      v6 = sub_17054(v54, v56);
      v58 = v57;

      if (v58)
      {
        v21 = *(v96[7] + 8 * v6);
        v102 = v21;
        swift_bridgeObjectRetain_n();
        goto LABEL_50;
      }
    }

    else
    {
    }

    v21 = _swiftEmptyArrayStorage;
    v102 = _swiftEmptyArrayStorage;
LABEL_50:
    if (v21 >> 62)
    {
      v59 = sub_317C0();
    }

    else
    {
      v59 = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8));
    }

    if (!v59)
    {
      v60 = objc_opt_self();
      v61 = sub_31300();
      v62 = [v60 entityForName:v61 inManagedObjectContext:a2];

      if (!v62)
      {
        goto LABEL_99;
      }

      v6 = [objc_allocWithZone(v91) initWithEntity:v62 insertIntoManagedObjectContext:a2];
      v63 = [v94 eventName];
      [v6 setPropertyName:v63];

      [v6 setRecordType:{objc_msgSend(v94, "recordType")}];
      v64 = v6;
      sub_313C0();
      if (*(&dword_10 + (v102 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v102 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v6 = *(&dword_10 + (v102 & 0xFFFFFFFFFFFFFF8));
        sub_31400();
      }

      sub_31410();

      v21 = v102;
    }

    if (v21 >> 62)
    {
      v65 = sub_317C0();
      if (!v65)
      {
        goto LABEL_98;
      }
    }

    else
    {
      v65 = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8));
      if (!v65)
      {
        goto LABEL_98;
      }
    }

    if ((v21 & 0xC000000000000001) != 0)
    {
      v66 = sub_31700();
      v7 = v94;
    }

    else
    {
      v7 = v94;
      if (!*(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_93;
      }

      v66 = *(v21 + 32);
    }

    v67 = [v7 ageToExpire];
    if (v67 != [v66 ageToExpire])
    {
      [v66 setAgeToExpire:{objc_msgSend(v7, "ageToExpire")}];
    }

    v68 = [v7 countLimit];
    if (v68 != [v66 countLimit])
    {
      [v66 setCountLimit:{objc_msgSend(v7, "countLimit")}];
    }

    v69 = [v7 shouldBeSynced];
    if (v69 != [v66 shouldBeSynced])
    {
      [v66 setShouldBeSynced:{objc_msgSend(v7, "shouldBeSynced")}];
    }

    v70 = v65 - 1;
    if (v65 < 1)
    {
      goto LABEL_98;
    }

    if (v65 != 1)
    {
      break;
    }

LABEL_81:
    swift_unknownObjectRelease();

    v50 = v88;
    v6 = v89;
    v49 = v92;
    v7 = 0x6769666E6F434443;
    v21 = v95;
    if (v92 == v89)
    {
      goto LABEL_89;
    }
  }

  v98 = v65;
  while (v65 >= (v70 + 1))
  {
    v71 = sub_C008(v70);
    if (v52[68] != -1)
    {
      swift_once();
    }

    v72 = sub_311B0();
    sub_8BFC(v72, v51);
    v73 = v71;
    v74 = sub_31190();
    v75 = sub_314D0();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = v51;
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v101 = v78;
      *v77 = 136315138;
      v79 = [v73 propertyName];
      if (v79)
      {
        v80 = v79;
        v81 = sub_31320();
        v83 = v82;
      }

      else
      {
        v83 = 0xE300000000000000;
        v81 = 7104878;
      }

      v84 = sub_28BCC(v81, v83, &v101);

      *(v77 + 4) = v84;
      _os_log_impl(&dword_0, v74, v75, "Found erroneous duplicated stored configuration %s.  Deleting", v77, 0xCu);
      sub_9170(v78);

      v51 = v76;
      v52 = &off_42000;
      v65 = v98;
      a2 = v99;
    }

    else
    {
    }

    [a2 deleteObject:v73];

    if (!--v70)
    {
      goto LABEL_81;
    }
  }

  __break(1u);
LABEL_89:

  return 0;
}

uint64_t sub_E2F8()
{
  v0 = sub_311B0();
  sub_E37C(v0, qword_434B0);
  sub_8BFC(v0, qword_434B0);
  return sub_311A0();
}

uint64_t *sub_E37C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void *sub_E3E0(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_317C0();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_2ECF0(v3, 0);
  sub_1941C((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t ManagerConfiguration.localStorageDirectory.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___BMInternalManagerConfiguration_localStorageDirectory;
  v4 = sub_310D0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id ManagerConfiguration.__allocating_init(localStorageDirectory:shouldRunUpdatesOnSchedule:shouldPurgeOutdatedData:)(uint64_t a1, char a2, char a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = OBJC_IVAR___BMInternalManagerConfiguration_localStorageDirectory;
  v9 = sub_310D0();
  v10 = *(v9 - 8);
  (*(v10 + 16))(&v7[v8], a1, v9);
  v7[OBJC_IVAR___BMInternalManagerConfiguration_shouldRunUpdatesOnSchedule] = a2;
  v7[OBJC_IVAR___BMInternalManagerConfiguration_shouldPurgeOutdatedData] = a3;
  v13.receiver = v7;
  v13.super_class = v3;
  v11 = objc_msgSendSuper2(&v13, "init");
  (*(v10 + 8))(a1, v9);
  return v11;
}

id ManagerConfiguration.init(localStorageDirectory:shouldRunUpdatesOnSchedule:shouldPurgeOutdatedData:)(uint64_t a1, char a2, char a3)
{
  v7 = OBJC_IVAR___BMInternalManagerConfiguration_localStorageDirectory;
  v8 = sub_310D0();
  v9 = *(v8 - 8);
  (*(v9 + 16))(&v3[v7], a1, v8);
  v3[OBJC_IVAR___BMInternalManagerConfiguration_shouldRunUpdatesOnSchedule] = a2;
  v3[OBJC_IVAR___BMInternalManagerConfiguration_shouldPurgeOutdatedData] = a3;
  v12.receiver = v3;
  v12.super_class = type metadata accessor for ManagerConfiguration(0);
  v10 = objc_msgSendSuper2(&v12, "init");
  (*(v9 + 8))(a1, v8);
  return v10;
}

uint64_t type metadata accessor for ManagerConfiguration(uint64_t a1)
{
  result = qword_42608;
  if (!qword_42608)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_E978()
{
  sub_316D0(110);
  v6._countAndFlagsBits = 0xD00000000000002FLL;
  v6._object = 0x8000000000034990;
  sub_31390(v6);
  sub_310D0();
  sub_1C938(&qword_42570, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v7._countAndFlagsBits = sub_31820();
  sub_31390(v7);

  v8._countAndFlagsBits = 0xD00000000000001ELL;
  v8._object = 0x80000000000349C0;
  sub_31390(v8);
  if (*(v0 + OBJC_IVAR___BMInternalManagerConfiguration_shouldRunUpdatesOnSchedule))
  {
    v1._countAndFlagsBits = 1702195828;
  }

  else
  {
    v1._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___BMInternalManagerConfiguration_shouldRunUpdatesOnSchedule))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  v1._object = v2;
  sub_31390(v1);

  v9._object = 0x80000000000349E0;
  v9._countAndFlagsBits = 0xD00000000000001BLL;
  sub_31390(v9);
  if (*(v0 + OBJC_IVAR___BMInternalManagerConfiguration_shouldPurgeOutdatedData))
  {
    v3._countAndFlagsBits = 1702195828;
  }

  else
  {
    v3._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___BMInternalManagerConfiguration_shouldPurgeOutdatedData))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  v3._object = v4;
  sub_31390(v3);

  return 0;
}

id ManagerConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagerConfiguration(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *Manager.configuration.getter()
{
  v1 = *(v0 + OBJC_IVAR___BMInternalManager_configuration);
  v2 = v1;
  return v1;
}

_BYTE *Manager.__allocating_init(configuration:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1A79C(a1);

  return v4;
}

_BYTE *Manager.init(configuration:)(void *a1)
{
  v2 = sub_1A79C(a1);

  return v2;
}

id Manager.__deallocating_deinit()
{
  if (*&v0[OBJC_IVAR___BMInternalManager_scheduledUpdateWorkItem])
  {

    sub_31290();
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for Manager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_EE58()
{
  v1 = sub_31200();
  v18 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_31240();
  v4 = *(v17 - 8);
  __chkstk_darwin(v17);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_31210();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8B4();
  (*(v8 + 104))(v10, enum case for DispatchQoS.QoSClass.background(_:), v7);
  v11 = sub_315B0();
  (*(v8 + 8))(v10, v7);
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  aBlock[4] = sub_1B938;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23BEC;
  aBlock[3] = &unk_3D3C8;
  v13 = _Block_copy(aBlock);
  v14 = v0;
  sub_31230();
  v19 = _swiftEmptyArrayStorage;
  sub_1C938(&qword_42660, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_2294(&qword_42668, &qword_33000);
  sub_B678(&qword_42670, &qword_42668, &qword_33000, &protocol conformance descriptor for [A]);
  sub_31690();
  sub_31590();
  _Block_release(v13);

  (*(v18 + 8))(v3, v1);
  (*(v4 + 8))(v6, v17);
}

uint64_t sub_F1F4()
{
  v0 = sub_2294(&qword_42590, &unk_32ED0);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  swift_beginAccess();

  v4 = sub_E3E0(v3);
  v5 = sub_31480();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = v4;
  *(v6 + 40) = xmmword_32EC0;
  *(v6 + 56) = sub_F33C;
  *(v6 + 64) = 0;
  sub_10C5C(0, 0, v2, &unk_32EE0, v6);
}

void sub_F33C(uint64_t *a1)
{
  if (a1[1])
  {
    if (qword_42220 != -1)
    {
      swift_once();
    }

    v1 = sub_311B0();
    sub_8BFC(v1, qword_434B0);
    oslog = sub_31190();
    v2 = sub_314D0();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v13 = v4;
      *v3 = 136315138;
      sub_1C5A8();
      v5 = sub_318A0();
      v7 = sub_28BCC(v5, v6, &v13);

      *(v3 + 4) = v7;
      _os_log_impl(&dword_0, oslog, v2, "Error from completion: %s", v3, 0xCu);
      sub_9170(v4);

LABEL_10:
    }
  }

  else
  {
    v8 = *a1;
    if (qword_42220 != -1)
    {
      swift_once();
    }

    v9 = sub_311B0();
    sub_8BFC(v9, qword_434B0);

    oslog = sub_31190();
    v10 = sub_314D0();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = *(v8 + 16);
      sub_1C59C(v8, 0);
      _os_log_impl(&dword_0, oslog, v10, "received properties for submit: %ld", v11, 0xCu);
      goto LABEL_10;
    }

    sub_1C59C(v8, 0);
  }
}

uint64_t sub_F810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*(v4 + OBJC_IVAR___BMInternalManager_localStorage) + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
  os_unfair_lock_lock(v9 + 4);
  sub_1AE34(&v14);
  os_unfair_lock_unlock(v9 + 4);
  v10 = v14;
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = a1;
  v12[6] = a2;

  sub_2C458(v10, sub_1AED0, v12);
}

uint64_t sub_F96C(void (*a1)(uint64_t *))
{
  v2 = sub_2294(&unk_425A0, &unk_32EE8);
  __chkstk_darwin(v2);
  v4 = (&v16 - v3);
  v5 = sub_2294(&qword_42490, &qword_32CB0);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_31180();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() standardUserDefaults];
  sub_FC30(v7);

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_B5AC(v7, &qword_42490, &qword_32CB0);
    sub_8C34();
    v13 = swift_allocError();
    *v14 = 1;
    *v4 = v13;
    swift_storeEnumTagMultiPayload();
    a1(v4);
    return sub_B5AC(v4, &unk_425A0, &unk_32EE8);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    (*(v9 + 16))(v4, v11, v8);
    swift_storeEnumTagMultiPayload();
    a1(v4);
    sub_B5AC(v4, &unk_425A0, &unk_32EE8);
    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_FC30@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_31300();
  v4 = [v1 objectForKey:v3];

  if (v4)
  {
    sub_31680();
    swift_unknownObjectRelease();
    sub_B5AC(v9, &qword_42260, &qword_32880);
    v5 = sub_31300();
    [v1 doubleForKey:v5];

    sub_31100();
    v6 = 0;
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    sub_B5AC(v9, &qword_42260, &qword_32880);
    v6 = 1;
  }

  v7 = sub_31180();
  return (*(*(v7 - 8) + 56))(a1, v6, 1, v7);
}

uint64_t sub_FD8C(uint64_t a1, uint64_t (*a2)(void, void))
{
  v4 = sub_2294(&qword_42490, &qword_32CB0);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = [objc_opt_self() standardUserDefaults];
  v8 = sub_31180();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v6, a1, v8);
  (*(v9 + 56))(v6, 0, 1, v8);
  sub_FED8(v6);

  return a2(0, 0);
}

uint64_t sub_FED8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2294(&qword_42490, &qword_32CB0);
  __chkstk_darwin(v4 - 8);
  v6 = v13 - v5;
  sub_B488(a1, v13 - v5, &qword_42490, &qword_32CB0);
  v7 = sub_31180();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_B5AC(v6, &qword_42490, &qword_32CB0);
    v9 = 0;
  }

  else
  {
    sub_31110();
    v13[1] = v10;
    (*(v8 + 8))(v6, v7);
    v9 = sub_31840();
  }

  v11 = sub_31300();
  [v2 setObject:v9 forKey:v11];
  swift_unknownObjectRelease();

  return sub_B5AC(a1, &qword_42490, &qword_32CB0);
}

void sub_10088(void *a1, uint64_t a2)
{
  swift_getObjectType();

  sub_199D0(a1, a2, v2);
}

uint64_t Manager.register(donor:)(void *a1)
{
  result = sub_27214(a1);
  if (!v2)
  {
    [a1 addDonorObserver:v1];
    return sub_101A0(a1);
  }

  return result;
}

uint64_t sub_101A0(void *a1)
{
  v2 = v1;
  v4 = sub_2294(&qword_42590, &unk_32ED0);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  v7 = [a1 eventConfigurations];
  type metadata accessor for BasePropertyConfiguration();
  v8 = sub_313E0();

  v25 = _swiftEmptyArrayStorage;
  if (v8 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)); i; i = sub_317C0())
  {
    v23 = v6;
    v24 = v2;
    v10 = 0;
    v2 = &OBJC_IVAR___BMBasePropertyConfiguration_shouldBeCached;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = sub_31700();
      }

      else
      {
        if (v10 >= *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_15;
        }

        v11 = *(v8 + 8 * v10 + 32);
      }

      v6 = (v10 + 1);
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (*(v11 + OBJC_IVAR___BMBasePropertyConfiguration_shouldBeCached))
      {
        sub_31740();
        sub_31770();
        sub_31780();
        sub_31750();
      }

      else
      {
      }

      ++v10;
      if (v6 == i)
      {
        v2 = v24;
        v12 = v25;
        v6 = v23;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v12 = _swiftEmptyArrayStorage;
LABEL_18:

  if (qword_42220 != -1)
  {
    swift_once();
  }

  v13 = sub_311B0();
  sub_8BFC(v13, qword_434B0);
  v14 = sub_31190();
  v15 = sub_314E0();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v25 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_28BCC(0xD000000000000021, 0x8000000000034C80, &v25);
    _os_log_impl(&dword_0, v14, v15, "Manager - %s", v16, 0xCu);
    sub_9170(v17);
  }

  v18 = sub_31480();
  (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v2;
  v19[5] = v12;
  v20 = v2;
  sub_10C5C(0, 0, v6, &unk_33108, v19);
}

void *Manager.donor(type:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR___BMInternalManager_collector);
  swift_beginAccess();
  v6 = *(v5 + 32);
  if (v6 >> 62)
  {
LABEL_23:
    v7 = sub_317C0();
  }

  else
  {
    v7 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
  }

  if (v7)
  {
    v8 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = sub_31700();
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_17:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v8 >= *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          goto LABEL_23;
        }

        v9 = *(v6 + 8 * v8 + 32);
        swift_unknownObjectRetain();
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_17;
        }
      }

      v11 = [v9 type];
      v12 = sub_31320();
      v14 = v13;

      if (v12 == a1 && v14 == a2)
      {

LABEL_20:

        return v9;
      }

      v16 = sub_31850();

      if (v16)
      {
        goto LABEL_20;
      }

      swift_unknownObjectRelease();
      ++v8;
    }

    while (v10 != v7);
  }

  return 0;
}

uint64_t sub_106AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 48) = a4;
  *(v5 + 56) = a5;
  return _swift_task_switch(sub_106CC, 0, 0);
}

uint64_t sub_106CC(uint64_t a1, uint64_t a2)
{
  if (v2[7] >> 62)
  {

    sub_2294(&qword_426E0, &qword_330C8);
    v3 = sub_317B0();
  }

  else
  {

    sub_31860();
    v3 = v2[7];
  }

  v2[8] = v3;
  v4 = swift_task_alloc();
  v2[9] = v4;
  *v4 = v2;
  v4[1] = sub_107DC;

  return sub_25CCC(v3);
}

uint64_t sub_107DC(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = a2;

  return _swift_task_switch(sub_10900, 0, 0);
}

uint64_t sub_10900()
{
  v15 = v0;
  if (*(v0 + 88))
  {
    v1 = *(v0 + 80);
    if (qword_42220 != -1)
    {
      swift_once();
      v1 = *(v0 + 80);
    }

    v2 = sub_311B0();
    sub_8BFC(v2, qword_434B0);
    swift_errorRetain();
    v3 = sub_31190();
    v4 = sub_314D0();
    sub_1C704(v1, 1);
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 80);
    if (v5)
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v14 = v8;
      *v7 = 136315138;
      swift_getErrorValue();
      v9 = sub_318A0();
      v11 = sub_28BCC(v9, v10, &v14);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_0, v3, v4, "Error storing cached updated configurations %s", v7, 0xCu);
      sub_9170(v8);

      sub_1C704(v6, 1);
    }

    else
    {

      sub_1C704(v6, 1);
    }
  }

  v12 = *(v0 + 8);

  return v12();
}

unint64_t *sub_10ADC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_19250(0, v1, 0);
    v3 = (a1 + 80);
    do
    {
      v4 = *(v3 - 5);
      v5 = *(v3 - 4);
      v6 = *(v3 - 3);
      v8 = *(v3 - 2);
      v7 = *(v3 - 1);
      v9 = *v3;
      v10 = *(v3 - 6);
      sub_1BBC8(v4, v5, v6, v8, v7, v9);
      sub_2294(&qword_426B0, &qword_334C0);
      sub_2294(&qword_426B8, &qword_330A0);
      swift_dynamicCast();
      v11 = v18;
      v12 = v19;
      v14 = _swiftEmptyArrayStorage[2];
      v13 = _swiftEmptyArrayStorage[3];
      if (v14 >= v13 >> 1)
      {
        sub_19250((v13 > 1), v14 + 1, 1);
        v12 = v19;
        v11 = v18;
      }

      _swiftEmptyArrayStorage[2] = v14 + 1;
      v15 = &_swiftEmptyArrayStorage[7 * v14];
      v15[4] = v17;
      v3 += 56;
      *(v15 + 5) = v11;
      *(v15 + 7) = v12;
      v15[9] = v20;
      *(v15 + 80) = v21;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2294(&qword_42590, &unk_32ED0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_B488(a3, v25 - v10, &qword_42590, &unk_32ED0);
  v12 = sub_31480();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_B5AC(v11, &qword_42590, &unk_32ED0);
  }

  else
  {
    sub_31470();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_31420();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_31350() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_B5AC(a3, &qword_42590, &unk_32ED0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_B5AC(a3, &qword_42590, &unk_32ED0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void Manager.propertyDidChange(_:propertyConfiguration:)(void *a1, void *a2)
{
  if (*(a2 + OBJC_IVAR___BMBasePropertyConfiguration_shouldBeCached) == 1)
  {
    v4 = sub_31300();
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = a2;
    v9[4] = sub_1AF60;
    v9[5] = v6;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_11248;
    v9[3] = &unk_3D198;
    v7 = _Block_copy(v9);
    v8 = a2;

    [a1 donateWithConfiguration:v8 context:v4 donationCompleteBlock:v7];
    _Block_release(v7);
  }
}

void sub_110AC(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a1)
    {
      v7 = a1 + OBJC_IVAR____TtC19EngagementCollector15BMPropertyValue_propertyValue;
      v8 = *(a1 + OBJC_IVAR____TtC19EngagementCollector15BMPropertyValue_propertyValue);
      v9 = *(v7 + 8);
      v10 = *(v7 + 16);
      v11 = *(v7 + 24);
      v12 = *(v7 + 32);
      v13 = *(v7 + 40);
      sub_2294(&qword_426F8, &unk_330E0);
      v14 = (sub_2294(&unk_42700, &qword_32CD0) - 8);
      v18 = a3;
      v15 = (*(*v14 + 80) + 32) & ~*(*v14 + 80);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_32E20;
      v17 = v16 + v15 + v14[14];
      sub_1BBC8(v8, v9, v10, v11, v12, v13);
      sub_31170();
      *v17 = v8;
      *(v17 + 8) = v9;
      *(v17 + 16) = v10;
      *(v17 + 24) = v11;
      *(v17 + 32) = v12;
      *(v17 + 40) = v13;
      sub_19654(v18, v16, v6);
    }

    else
    {
    }
  }
}

void sub_11248(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t Manager.updateLocalStorage(completion:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_2294(&qword_42590, &unk_32ED0);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = v7;
  swift_beginAccess();

  v10 = sub_E3E0(v9);
  v11 = sub_31480();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v10;
  v12[5] = 0xD000000000000012;
  v12[6] = 0x8000000000034970;
  v12[7] = sub_1AF84;
  v12[8] = v8;
  sub_10C5C(0, 0, v6, &unk_32EF8, v12);
}

uint64_t sub_1151C(uint64_t *a1, char *a2, uint64_t a3, uint64_t a4)
{
  if ((a1[1] & 1) == 0)
  {
    v15 = qword_42220;
    v45 = *a1;

    if (v15 != -1)
    {
      swift_once();
    }

    v16 = sub_311B0();
    sub_8BFC(v16, qword_434B0);

    v17 = sub_31190();
    v18 = sub_314C0();
    v35 = a2;
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134217984;
      *(v19 + 4) = *(v45 + 16);
      sub_1C59C(v45, 0);
      _os_log_impl(&dword_0, v17, v18, "Received properties for local storage: %ld", v19, 0xCu);
    }

    else
    {
      sub_1C59C(v45, 0);
    }

    v20 = 1 << *(v45 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v45 + 64);
    swift_beginAccess();
    a2 = 0;
    v23 = (v20 + 63) >> 6;
    while (v22)
    {
LABEL_21:
      v25 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v26 = v25 | (a2 << 6);
      v27 = *(*(v45 + 48) + 8 * v26);
      if (*(v27 + OBJC_IVAR___BMBasePropertyConfiguration_shouldBeCached))
      {
        v28 = *(v45 + 56) + 48 * v26;
        v38 = *v28;
        v41 = *(v28 + 16);
        v43 = *(v28 + 24);
        v44 = *(v28 + 8);
        v29 = *(v28 + 32);
        v42 = *(v28 + 40);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v37 = Strong;
          sub_2294(&qword_426F8, &unk_330E0);
          v31 = (sub_2294(&unk_42700, &qword_32CD0) - 8);
          v39 = v29;
          v32 = (*(*v31 + 80) + 32) & ~*(*v31 + 80);
          v40 = swift_allocObject();
          *(v40 + 16) = xmmword_32E20;
          v33 = v40 + v32 + v31[14];
          v36 = v27;
          sub_1BBC8(v38, v44, v41, v43, v39, v42);
          sub_31170();
          *v33 = v38;
          *(v33 + 8) = v44;
          *(v33 + 16) = v41;
          *(v33 + 24) = v43;
          *(v33 + 32) = v39;
          *(v33 + 40) = v42;
          v34 = v36;
          sub_1BBC8(v38, v44, v41, v43, v39, v42);
          sub_19654(v34, v40, v37);

          sub_8C88(v38, v44, v41, v43, v39, v42);
        }
      }
    }

    while (1)
    {
      v24 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        break;
      }

      if (v24 >= v23)
      {

        return (v35)(0, 0);
      }

      v22 = *(v45 + 64 + 8 * v24);
      ++a2;
      if (v22)
      {
        a2 = v24;
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_26;
  }

  if (qword_42220 != -1)
  {
LABEL_26:
    swift_once();
  }

  v5 = sub_311B0();
  sub_8BFC(v5, qword_434B0);
  v6 = sub_31190();
  v7 = sub_314D0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v46[0] = v9;
    *v8 = 136315138;
    sub_1C5A8();
    v10 = sub_318A0();
    v12 = sub_28BCC(v10, v11, v46);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_0, v6, v7, "Error from completion: %s", v8, 0xCu);
    sub_9170(v9);
  }

  sub_1C5A8();
  v13 = swift_allocError();
  (a2)(v13, 1);
}

void sub_11A7C(uint64_t a1, char a2, void *a3)
{
  if (a2)
  {
    if (qword_42220 != -1)
    {
      swift_once();
    }

    v5 = sub_311B0();
    sub_8BFC(v5, qword_434B0);
    swift_unknownObjectRetain();
    sub_1C6F8(a1, 1);
    oslog = sub_31190();
    v6 = sub_314D0();
    swift_unknownObjectRelease();
    sub_1C704(a1, 1);
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v7 = 136315394;
      v8 = [a3 eventName];
      v9 = sub_31320();
      v11 = v10;

      v12 = sub_28BCC(v9, v11, &v17);

      *(v7 + 4) = v12;
      *(v7 + 12) = 2080;
      swift_getErrorValue();
      v13 = sub_318A0();
      v15 = sub_28BCC(v13, v14, &v17);

      *(v7 + 14) = v15;
      _os_log_impl(&dword_0, oslog, v6, "Property values for %s could not get saved: %s", v7, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall Manager.forcePurgeLocalStorage()()
{
  v1 = *(v0 + OBJC_IVAR___BMInternalManager_localStorage);
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  v3[2] = v1;
  v3[3] = sub_1B160;
  v3[4] = v2;
  v4 = *(v1 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
  swift_retain_n();

  os_unfair_lock_lock(v4 + 4);
  sub_1CB04(&v6);
  os_unfair_lock_unlock(v4 + 4);
  v5 = v6;
  sub_2C458(v6, sub_1B16C, v3);

  sub_2CF28();
}

uint64_t sub_11DD0()
{
  v1 = sub_31270();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v16 - v6;
  v8 = sub_31200();
  result = __chkstk_darwin(v8);
  if (*(v0 + OBJC_IVAR___BMInternalManager_shouldScheduleUpdates) == 1)
  {
    v10 = swift_allocObject();
    v18 = v2;
    v11 = v10;
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1C980;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23BEC;
    aBlock[3] = &unk_3DA30;
    v16 = _Block_copy(aBlock);
    v19 = _swiftEmptyArrayStorage;
    sub_1C938(&qword_42660, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);

    sub_2294(&qword_42668, &qword_33000);
    v17 = v1;
    sub_B678(&qword_42670, &qword_42668, &qword_33000, &protocol conformance descriptor for [A]);
    sub_31690();
    sub_312A0();
    swift_allocObject();
    v12 = sub_31280();

    *(v0 + OBJC_IVAR___BMInternalManager_scheduledUpdateWorkItem) = v12;

    sub_31260();
    sub_312B0();
    v13 = *(v18 + 8);
    v14 = v5;
    v15 = v17;
    v13(v14, v17);
    sub_31540();

    return (v13)(v7, v15);
  }

  return result;
}

void sub_1211C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_12170();
  }
}

uint64_t sub_12170()
{
  v0 = sub_2294(&qword_42590, &unk_32ED0);
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - v1;
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  v5[2] = sub_1C988;
  v5[3] = v3;
  v5[4] = v4;
  swift_beginAccess();
  swift_retain_n();

  v7 = sub_E3E0(v6);
  v8 = sub_31480();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v7;
  v9[5] = 0xD000000000000012;
  v9[6] = 0x8000000000034970;
  v9[7] = sub_1CAD4;
  v9[8] = v5;

  sub_10C5C(0, 0, v2, &unk_33160, v9);
}

void sub_123A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_11DD0();
  }
}

void Manager.getAllConfigurations(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR___BMInternalManager_localStorage);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = sub_1CB00;
  v7[4] = v6;
  v8 = *(v5 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);

  os_unfair_lock_lock(v8 + 4);
  sub_1CB04(&v10);
  os_unfair_lock_unlock(v8 + 4);
  v9 = v10;
  sub_2C458(v10, sub_1CB28, v7);
}

uint64_t sub_1253C()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  v4 = sub_2294(&qword_425B8, &qword_32F10);
  *v3 = v0;
  v3[1] = sub_12644;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000016, 0x8000000000034A90, sub_1B178, v2, v4);
}

uint64_t sub_12644()
{

  return _swift_task_switch(sub_1CB24, 0, 0);
}

void sub_1275C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2294(&qword_426F0, &qword_330D8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15[-v6];
  (*(v5 + 16))(&v15[-v6], a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  v10 = *(a2 + OBJC_IVAR___BMInternalManager_localStorage);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1C510;
  *(v11 + 24) = v9;
  v12 = swift_allocObject();
  v12[2] = v10;
  v12[3] = sub_1CB00;
  v12[4] = v11;
  v13 = *(v10 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
  v16 = sub_1CAE4;
  v17 = v10;

  os_unfair_lock_lock(v13 + 4);
  sub_1CB04(&v18);
  os_unfair_lock_unlock(v13 + 4);
  v14 = v18;
  sub_2C458(v18, sub_1CB28, v12);
}

void Manager.getProperties(config:assetIDs:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();

  sub_1A388(a1, a2, a3, a4, v4);
}

uint64_t sub_129EC(uint64_t *a1, uint64_t (*a2)(void *))
{
  if (*(a1 + 41))
  {
    return a2(_swiftEmptyArrayStorage);
  }

  v5 = a1[3];
  v4 = a1[4];
  v7 = a1[1];
  v6 = a1[2];
  v8 = *a1;
  v9 = *(a1 + 40);
  sub_2294(&qword_426A0, &qword_33038);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_32E20;
  *(v11 + 32) = v8;
  *(v11 + 40) = *(a1 + 1);
  *(v11 + 56) = *(a1 + 3);
  *(v11 + 72) = *(a1 + 40);
  sub_1BBC8(v8, v7, v6, v5, v4, v9);
  a2(v11);
}

uint64_t Manager.getProperties(config:assetIDs:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return _swift_task_switch(sub_12B28, 0, 0);
}

uint64_t sub_12B28()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[7] = v5;
  v6 = sub_2294(&qword_425C0, &qword_32F20);
  *v5 = v0;
  v5[1] = sub_12C40;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD00000000000001FLL, 0x8000000000034AB0, sub_1B180, v4, v6);
}

uint64_t sub_12C40()
{

  return _swift_task_switch(sub_1CB24, 0, 0);
}

uint64_t sub_12D58(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_2294(&unk_42690, &unk_33028);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - v10;
  (*(v9 + 16))(&v15 - v10, a1, v8);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  (*(v9 + 32))(v13 + v12, v11, v8);
  swift_getObjectType();
  sub_1A388(a3, a4, sub_1C334, v13, a2);
}

uint64_t sub_12EC8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  sub_2294(a3, a4);
  return sub_31440();
}

uint64_t Manager.getProperties(configs:assetIDs:sortByCreatedAt:limit:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = v4;
  *(v5 + 80) = a3;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  return _swift_task_switch(sub_12F4C, 0, 0);
}

uint64_t sub_12F4C()
{
  v1 = *(v0 + 24);
  if (v1 >> 62)
  {
LABEL_35:
    v2 = sub_317C0();
    v35 = v0;
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v38 = v1 & 0xFFFFFFFFFFFFFF8;
      v39 = v1 & 0xC000000000000001;
      v4 = _swiftEmptyDictionarySingleton;
      v36 = v2;
      v37 = *(v0 + 24) + 32;
      p_type = &stru_40FF0.type;
      while (1)
      {
        if (v39)
        {
          v6 = sub_31700();
          v7 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_31;
          }
        }

        else
        {
          if (v3 >= *(v38 + 16))
          {
            goto LABEL_32;
          }

          v6 = *(v37 + 8 * v3);
          swift_unknownObjectRetain();
          v7 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
LABEL_33:
            __break(1u);
LABEL_34:
            __break(1u);
            goto LABEL_35;
          }
        }

        v8 = [v6 p_type[43]];
        if (v4[2] && (v9 = sub_170CC(v8), (v10 & 1) != 0))
        {
          v40 = *(v4[7] + 8 * v9);
        }

        else
        {
          v40 = _swiftEmptyArrayStorage;
        }

        v11 = [v6 toBaseConfiguration];
        sub_313C0();
        if (*(&dword_10 + (v40 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v40 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_31400();
        }

        sub_31410();
        v0 = v40;
        v12 = p_type;
        v13 = [v6 p_type[43]];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42 = v4;
        v1 = v4;
        v15 = sub_170CC(v13);
        v17 = v4[2];
        v18 = (v16 & 1) == 0;
        v19 = __OFADD__(v17, v18);
        v20 = v17 + v18;
        if (v19)
        {
          goto LABEL_33;
        }

        v21 = v16;
        if (v4[3] < v20)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_20;
        }

        v1 = &v42;
        v25 = v15;
        sub_18A84();
        v15 = v25;
        v4 = v42;
        if (v21)
        {
LABEL_4:
          *(v4[7] + 8 * v15) = v40;

          swift_unknownObjectRelease();
          goto LABEL_5;
        }

LABEL_21:
        v4[(v15 >> 6) + 8] |= 1 << v15;
        *(v4[6] + 8 * v15) = v13;
        *(v4[7] + 8 * v15) = v40;
        swift_unknownObjectRelease();
        v23 = v4[2];
        v19 = __OFADD__(v23, 1);
        v24 = v23 + 1;
        if (v19)
        {
          goto LABEL_34;
        }

        v4[2] = v24;
LABEL_5:
        ++v3;
        p_type = v12;
        if (v7 == v36)
        {
          goto LABEL_37;
        }
      }

      sub_17B9C(v20, isUniquelyReferenced_nonNull_native);
      v4 = v42;
      v1 = v42;
      v15 = sub_170CC(v13);
      if ((v21 & 1) != (v22 & 1))
      {

        return sub_31890();
      }

LABEL_20:
      if (v21)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  v4 = _swiftEmptyDictionarySingleton;
LABEL_37:
  *(v35 + 56) = v4;
  v27 = *(v35 + 40);
  v28 = *(v35 + 80);
  v29 = *(v35 + 32);
  v30 = *(*(v35 + 48) + OBJC_IVAR___BMInternalManager_localStorage);
  v31 = sub_2294(&qword_425C8, &qword_32F30);
  v32 = swift_task_alloc();
  *(v35 + 64) = v32;
  *(v32 + 16) = v4;
  *(v32 + 24) = v30;
  *(v32 + 32) = v29;
  *(v32 + 40) = v28;
  *(v32 + 48) = v27;
  v33 = sub_2294(&qword_425D0, &qword_32F48);
  v34 = swift_task_alloc();
  *(v35 + 72) = v34;
  *v34 = v35;
  v34[1] = sub_1337C;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v35 + 16, v31, v33, 0, 0, &unk_32F40, v32, v31);
}

uint64_t sub_1337C()
{

  return _swift_task_switch(sub_1CB24, 0, 0);
}

uint64_t sub_134B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 328) = a6;
  *(v7 + 224) = a5;
  *(v7 + 232) = a7;
  *(v7 + 208) = a3;
  *(v7 + 216) = a4;
  *(v7 + 192) = a1;
  *(v7 + 200) = a2;
  sub_2294(&qword_42590, &unk_32ED0);
  *(v7 + 240) = swift_task_alloc();
  *(v7 + 248) = swift_task_alloc();
  *(v7 + 256) = swift_task_alloc();
  *(v7 + 264) = swift_task_alloc();
  *(v7 + 272) = swift_task_alloc();
  *(v7 + 280) = swift_task_alloc();
  v8 = sub_2294(&qword_426A8, &qword_33040);
  *(v7 + 288) = v8;
  *(v7 + 296) = *(v8 - 8);
  *(v7 + 304) = swift_task_alloc();

  return _swift_task_switch(sub_135FC, 0, 0);
}

uint64_t sub_135FC(uint64_t a1, uint64_t a2)
{
  v82 = v2 + 10;
  v83 = v2 + 6;
  v76 = *(v2 + 328);
  v3 = v2[26];
  v4 = v3 + 64;
  v75 = v2 + 2;
  v5 = -1;
  v6 = -1 << *(v3 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v3 + 64);
  v8 = (63 - v6) >> 6;

  v13 = 0;
  v78 = v3 + 64;
  v79 = v3;
  v77 = v8;
  v92 = v2;
  while (v7)
  {
LABEL_11:
    v15 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v16 = (v13 << 9) | (8 * v15);
    v17 = *(*(v3 + 48) + v16);
    v18 = *(*(v3 + 56) + v16);
    v93 = v18;
    if (v17)
    {
      if (v17 == 1)
      {
        if (v18 >> 62)
        {
          v71 = v13;
          v9 = sub_317C0();
          v13 = v71;
          v31 = v9;
          if (v9)
          {
LABEL_19:
            if (v31 < 1)
            {
              goto LABEL_63;
            }

            v80 = v13;
            v81 = v7;
            v84 = v18 & 0xC000000000000001;
            v86 = *v2[25];

            v32 = 0;
            v88 = v31;
            do
            {
              v90 = v32;
              if (v84)
              {
                v34 = sub_31700();
              }

              else
              {
                v34 = *(v18 + 8 * v32 + 32);
              }

              v35 = v34;
              v37 = v2[32];
              v36 = v2[33];
              v38 = v2[27];
              v39 = sub_31480();
              v40 = *(v39 - 8);
              (*(v40 + 56))(v36, 1, 1, v39);
              v41 = swift_allocObject();
              v41[2] = 0;
              v41[3] = 0;
              v41[4] = v38;
              v41[5] = v35;
              sub_B488(v36, v37, &qword_42590, &unk_32ED0);
              LODWORD(v36) = (*(v40 + 48))(v37, 1, v39);

              v42 = v35;
              v43 = v2[32];
              if (v36 == 1)
              {
                sub_B5AC(v2[32], &qword_42590, &unk_32ED0);
              }

              else
              {
                sub_31470();
                (*(v40 + 8))(v43, v39);
              }

              v2 = v92;
              if (v41[2])
              {
                swift_getObjectType();
                swift_unknownObjectRetain();
                v44 = sub_31420();
                v46 = v45;
                swift_unknownObjectRelease();
              }

              else
              {
                v44 = 0;
                v46 = 0;
              }

              v47 = swift_allocObject();
              *(v47 + 16) = &unk_33070;
              *(v47 + 24) = v41;

              sub_2294(&qword_425C8, &qword_32F30);
              v48 = (v46 | v44);
              if (v46 | v44)
              {
                v48 = v83;
                *v83 = 0;
                v83[1] = 0;
                v92[8] = v44;
                v92[9] = v46;
              }

              v18 = v93;
              ++v32;
              v33 = v92[33];
              v92[17] = 1;
              v92[18] = v48;
              v92[19] = v86;
              swift_task_create();

              sub_B5AC(v33, &qword_42590, &unk_32ED0);
            }

            while (v88 != v90 + 1);
LABEL_4:

            goto LABEL_5;
          }
        }

        else
        {
          v31 = *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8));
          if (v31)
          {
            goto LABEL_19;
          }
        }
      }

      else if (v17 == 2)
      {
        v80 = v13;
        v81 = v7;
        v19 = v2[31];
        v94 = v2[30];
        v21 = v2[28];
        v20 = v2[29];
        v22 = v2[27];
        v23 = sub_31480();
        v24 = *(v23 - 8);
        (*(v24 + 56))(v19, 1, 1, v23);
        v25 = swift_allocObject();
        *(v25 + 16) = 0;
        v26 = (v25 + 16);
        *(v25 + 24) = 0;
        *(v25 + 32) = v22;
        *(v25 + 40) = v18;
        *(v25 + 48) = v21;
        *(v25 + 56) = v76;
        *(v25 + 64) = v20;
        sub_B488(v19, v94, &qword_42590, &unk_32ED0);
        LODWORD(v19) = (*(v24 + 48))(v94, 1, v23);

        v27 = v2[30];
        if (v19 == 1)
        {
          sub_B5AC(v2[30], &qword_42590, &unk_32ED0);
          if (!*v26)
          {
            goto LABEL_50;
          }
        }

        else
        {
          sub_31470();
          (*(v24 + 8))(v27, v23);
          if (!*v26)
          {
LABEL_50:
            v28 = 0;
            v30 = 0;
            goto LABEL_51;
          }
        }

        swift_getObjectType();
        swift_unknownObjectRetain();
        v28 = sub_31420();
        v30 = v29;
        swift_unknownObjectRelease();
LABEL_51:
        v67 = *v2[25];
        v68 = swift_allocObject();
        *(v68 + 16) = &unk_33050;
        *(v68 + 24) = v25;

        sub_2294(&qword_425C8, &qword_32F30);
        v69 = (v30 | v28);
        if (v30 | v28)
        {
          v69 = v75;
          *v75 = 0;
          v75[1] = 0;
          v2[4] = v28;
          v2[5] = v30;
        }

        v70 = v2[31];
        v2[14] = 1;
        v2[15] = v69;
        v2[16] = v67;
        swift_task_create();

        v9 = sub_B5AC(v70, &qword_42590, &unk_32ED0);
LABEL_5:
        v4 = v78;
        v3 = v79;
        v8 = v77;
        v13 = v80;
        v7 = v81;
      }
    }

    else if (v18 >> 62)
    {
      v72 = v13;
      v9 = sub_317C0();
      v13 = v72;
      v49 = v9;
      if (v9)
      {
LABEL_35:
        if (v49 < 1)
        {
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
          return TaskGroup.Iterator.next(isolation:)(v9, v10, v11, v12);
        }

        v80 = v13;
        v81 = v7;
        v85 = v18 & 0xC000000000000001;
        v87 = *v2[25];

        v50 = 0;
        v89 = v49;
        do
        {
          v91 = v50;
          if (v85)
          {
            v52 = sub_31700();
          }

          else
          {
            v52 = *(v18 + 8 * v50 + 32);
          }

          v53 = v52;
          v55 = v2[34];
          v54 = v2[35];
          v56 = v2[27];
          v57 = sub_31480();
          v58 = *(v57 - 8);
          (*(v58 + 56))(v54, 1, 1, v57);
          v59 = swift_allocObject();
          v59[2] = 0;
          v59[3] = 0;
          v59[4] = v56;
          v59[5] = v53;
          sub_B488(v54, v55, &qword_42590, &unk_32ED0);
          LODWORD(v54) = (*(v58 + 48))(v55, 1, v57);

          v60 = v53;
          v61 = v2[34];
          if (v54 == 1)
          {
            sub_B5AC(v2[34], &qword_42590, &unk_32ED0);
          }

          else
          {
            sub_31470();
            (*(v58 + 8))(v61, v57);
          }

          v2 = v92;
          if (v59[2])
          {
            swift_getObjectType();
            swift_unknownObjectRetain();
            v62 = sub_31420();
            v64 = v63;
            swift_unknownObjectRelease();
          }

          else
          {
            v62 = 0;
            v64 = 0;
          }

          v65 = swift_allocObject();
          *(v65 + 16) = &unk_33088;
          *(v65 + 24) = v59;

          sub_2294(&qword_425C8, &qword_32F30);
          v66 = (v64 | v62);
          if (v64 | v62)
          {
            v66 = v82;
            *v82 = 0;
            v82[1] = 0;
            v92[12] = v62;
            v92[13] = v64;
          }

          v18 = v93;
          ++v50;
          v51 = v92[35];
          v92[20] = 1;
          v92[21] = v66;
          v92[22] = v87;
          swift_task_create();

          sub_B5AC(v51, &qword_42590, &unk_32ED0);
        }

        while (v89 != v91 + 1);
        goto LABEL_4;
      }
    }

    else
    {
      v49 = *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8));
      if (v49)
      {
        goto LABEL_35;
      }
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_62;
    }

    if (v14 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v14);
    ++v13;
    if (v7)
    {
      v13 = v14;
      goto LABEL_11;
    }
  }

  sub_2294(&qword_425C8, &qword_32F30);
  sub_31450();
  v2[39] = _swiftEmptyArrayStorage;
  v73 = swift_task_alloc();
  v2[40] = v73;
  *v73 = v2;
  v73[1] = sub_14054;
  v12 = v2[36];
  v9 = (v2 + 23);
  v10 = 0;
  v11 = 0;

  return TaskGroup.Iterator.next(isolation:)(v9, v10, v11, v12);
}

uint64_t sub_14054()
{

  return _swift_task_switch(sub_14150, 0, 0);
}

uint64_t sub_14150(void *isUniquelyReferenced_nonNull_native, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[23];
  v6 = v4[39];
  if (v5)
  {
    v7 = *(v5 + 16);
    v8 = *(v6 + 16);
    v9 = v8 + v7;
    if (__OFADD__(v8, v7))
    {
      __break(1u);
    }

    else
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = v4[39];
      if (isUniquelyReferenced_nonNull_native && v9 <= v10[3] >> 1)
      {
        if (*(v5 + 16))
        {
          goto LABEL_6;
        }
      }

      else
      {
        if (v8 <= v9)
        {
          v18 = v8 + v7;
        }

        else
        {
          v18 = v8;
        }

        isUniquelyReferenced_nonNull_native = sub_2EAFC(isUniquelyReferenced_nonNull_native, v18, 1, v4[39]);
        v10 = isUniquelyReferenced_nonNull_native;
        if (*(v5 + 16))
        {
LABEL_6:
          if ((v10[3] >> 1) - v10[2] >= v7)
          {
            sub_2294(&qword_426B0, &qword_334C0);
            swift_arrayInitWithCopy();

            if (!v7)
            {
              goto LABEL_18;
            }

            v11 = v10[2];
            v12 = __OFADD__(v11, v7);
            v13 = v11 + v7;
            if (!v12)
            {
              v10[2] = v13;
              goto LABEL_18;
            }

LABEL_24:
            __break(1u);
            return TaskGroup.Iterator.next(isolation:)(isUniquelyReferenced_nonNull_native, a2, a3, a4);
          }

LABEL_23:
          __break(1u);
          goto LABEL_24;
        }
      }

      if (!v7)
      {
LABEL_18:
        v4[39] = v10;
        v19 = swift_task_alloc();
        v4[40] = v19;
        *v19 = v4;
        v19[1] = sub_14054;
        a4 = v4[36];
        isUniquelyReferenced_nonNull_native = v4 + 23;
        a2 = 0;
        a3 = 0;

        return TaskGroup.Iterator.next(isolation:)(isUniquelyReferenced_nonNull_native, a2, a3, a4);
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  v14 = v4[24];
  (*(v4[37] + 8))(v4[38], v4[36], a3, a4);
  v15 = sub_10ADC(v6);

  *v14 = v15;

  v16 = v4[1];

  return v16();
}

uint64_t sub_143C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return _swift_task_switch(sub_143E4, 0, 0);
}

uint64_t sub_143E4()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = sub_2294(&qword_425C8, &qword_32F30);
  *v2 = v0;
  v2[1] = sub_1CA24;
  v4 = *(v0 + 16);

  return withCheckedContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000036, 0x8000000000034C40, sub_1C0AC, v1, v3);
}

void sub_144EC(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = sub_2294(&qword_426C8, &qword_330B0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v19[-v9];
  v12 = *&a3[OBJC_IVAR___BMBasePropertyConfiguration_eventName];
  v11 = *&a3[OBJC_IVAR___BMBasePropertyConfiguration_eventName + 8];
  (*(v7 + 16))(&v19[-v9], a1, v6);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  (*(v7 + 32))(v14 + v13, v10, v6);
  *(v14 + ((v8 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  v15 = swift_allocObject();
  v15[2] = v12;
  v15[3] = v11;
  v15[4] = a2;
  v15[5] = sub_1CAE0;
  v15[6] = v14;
  v16 = *(a2 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
  v20 = sub_1CAE4;
  v21 = a2;
  v17 = a3;

  os_unfair_lock_lock(v16 + 4);
  sub_1CB04(&v22);
  os_unfair_lock_unlock(v16 + 4);
  v18 = v22;
  sub_2C458(v22, sub_1CA90, v15);
}

uint64_t sub_1470C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return _swift_task_switch(sub_14730, 0, 0);
}

uint64_t sub_14730()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = sub_2294(&qword_425C8, &qword_32F30);
  *v2 = v0;
  v2[1] = sub_14838;
  v4 = *(v0 + 16);

  return withCheckedContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000036, 0x8000000000034C40, sub_1C0B8, v1, v3);
}

uint64_t sub_14838()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_14948(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = sub_2294(&qword_426C8, &qword_330B0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v19[-v9];
  v12 = *&a3[OBJC_IVAR___BMBasePropertyConfiguration_eventName];
  v11 = *&a3[OBJC_IVAR___BMBasePropertyConfiguration_eventName + 8];
  (*(v7 + 16))(&v19[-v9], a1, v6);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  (*(v7 + 32))(v14 + v13, v10, v6);
  *(v14 + ((v8 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  v15 = swift_allocObject();
  v15[2] = v12;
  v15[3] = v11;
  v15[4] = a2;
  v15[5] = sub_1C168;
  v15[6] = v14;
  v16 = *(a2 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
  v20 = sub_1CAE4;
  v21 = a2;
  v17 = a3;

  os_unfair_lock_lock(v16 + 4);
  sub_1CB04(&v22);
  os_unfair_lock_unlock(v16 + 4);
  v18 = v22;
  sub_2C458(v22, sub_1CA9C, v15);
}

uint64_t sub_14B68(uint64_t *a1, uint64_t a2, void *a3)
{
  if (*(a1 + 41))
  {
    v10[0] = _swiftEmptyArrayStorage;
    sub_2294(&qword_426C8, &qword_330B0);
  }

  else
  {
    v4 = *a1;
    sub_2294(&qword_426D0, &qword_330B8);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_32E20;
    *(v6 + 32) = a3;
    *(v6 + 40) = v4;
    v7 = *(a1 + 3);
    *(v6 + 48) = *(a1 + 1);
    *(v6 + 64) = v7;
    *(v6 + 80) = *(a1 + 40);
    v10[6] = v6;
    sub_B488(a1, v10, &qword_426D8, &qword_330C0);
    v8 = a3;
    sub_2294(&qword_426C8, &qword_330B0);
  }

  return sub_31440();
}

uint64_t sub_14C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 40) = a6;
  *(v8 + 48) = a8;
  *(v8 + 72) = a7;
  *(v8 + 24) = a4;
  *(v8 + 32) = a5;
  *(v8 + 16) = a1;
  return _swift_task_switch(sub_14C90, 0, 0);
}

uint64_t sub_14C90()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *(v4 + 16) = *(v0 + 24);
  *(v4 + 32) = v3;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  v6 = sub_2294(&qword_425C8, &qword_32F30);
  *v5 = v0;
  v5[1] = sub_14DB4;
  v7 = *(v0 + 16);

  return withCheckedContinuation<A>(isolation:function:_:)(v7, 0, 0, 0xD000000000000036, 0x8000000000034C40, sub_1C208, v4, v6);
}

uint64_t sub_14DB4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_14EC4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v22 = a6;
  v11 = sub_2294(&qword_426C8, &qword_330B0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - v13;

  if (a3 >> 62)
  {
    sub_2294(&qword_426E0, &qword_330C8);
    v20 = sub_317B0();

    a3 = v20;
  }

  else
  {
    sub_31860();
  }

  (*(v12 + 16))(v14, a1, v11);
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = swift_allocObject();
  (*(v12 + 32))(v16 + v15, v14, v11);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  *(v17 + 32) = a5 & 1;
  *(v17 + 40) = v22;
  *(v17 + 48) = a2;
  *(v17 + 56) = sub_1C230;
  *(v17 + 64) = v16;
  v18 = *(a2 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
  __chkstk_darwin(v17);
  *(&v21 - 2) = sub_1CAE4;
  *(&v21 - 1) = a2;

  os_unfair_lock_lock(v18 + 4);
  sub_1CB04(&v23);
  os_unfair_lock_unlock(v18 + 4);
  v19 = v23;
  sub_2C458(v23, sub_1C30C, v17);
}

uint64_t sub_15158(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      sub_19290(0, v2, 0);
      v4 = _swiftEmptyArrayStorage;
      v5 = (a1 + 80);
      do
      {
        v6 = *(v5 - 6);
        v7 = *(v5 - 3);
        v8 = *(v5 - 2);
        v9 = *(v5 - 1);
        v10 = *v5;
        v17 = *(v5 - 4);
        v18 = *(v5 - 5);
        sub_1BBC8(v18, v17, v7, v8, v9, *v5);
        v11 = [v6 toBaseConfiguration];
        v19 = v4;
        v13 = v4[2];
        v12 = v4[3];
        if (v13 >= v12 >> 1)
        {
          v15 = v11;
          sub_19290((v12 > 1), v13 + 1, 1);
          v11 = v15;
          v4 = v19;
        }

        v5 += 56;
        v4[2] = v13 + 1;
        v14 = &v4[7 * v13];
        v14[4] = v11;
        v14[5] = v18;
        v14[6] = v17;
        v14[7] = v7;
        v14[8] = v8;
        v14[9] = v9;
        *(v14 + 80) = v10;
        --v2;
      }

      while (v2);
    }
  }

  sub_2294(&qword_426C8, &qword_330B0);
  return sub_31440();
}

void Manager.getProperties(propertyName:assetIDs:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = *(v6 + OBJC_IVAR___BMInternalManager_localStorage);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a4;
  v14[4] = a5;
  v14[5] = a3;
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = v12;
  v15[5] = sub_1B26C;
  v15[6] = v14;
  v16 = *(v12 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);

  os_unfair_lock_lock(v16 + 4);
  sub_1CB04(&v18);
  os_unfair_lock_unlock(v16 + 4);
  v17 = v18;
  sub_2C458(v18, sub_1B270, v15);
}

void sub_1544C(void *a1, char a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    a4();
    return;
  }

  v12 = Strong;
  if (a2)
  {
    sub_2294(&unk_42780, &qword_32CC0);
    swift_willThrowTypedImpl();
  }

  else if (a1)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = a4;
    *(v13 + 24) = a5;
    sub_1BB58(a1, 0);
    sub_1BB58(a1, 0);

    sub_19F74(a1, a6, sub_1BB30, v13, v12);

    sub_1BB64(a1, 0);
    sub_1BB64(a1, 0);
    return;
  }

  (a4)(0);
}

uint64_t Manager.getProperties(propertyName:assetIDs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return _swift_task_switch(sub_155C0, 0, 0);
}

uint64_t sub_155C0()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v7 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v7;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  v5 = sub_2294(&qword_425C0, &qword_32F20);
  *v4 = v0;
  v4[1] = sub_156E4;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000025, 0x8000000000034AD0, sub_1B288, v3, v5);
}

uint64_t sub_156E4()
{

  return _swift_task_switch(sub_157FC, 0, 0);
}

void sub_15814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_2294(&unk_42690, &unk_33028);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22[-v12];
  (*(v11 + 16))(&v22[-v12], a1, v10);
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = swift_allocObject();
  (*(v11 + 32))(v15 + v14, v13, v10);
  v16 = *(a2 + OBJC_IVAR___BMInternalManager_localStorage);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = sub_1BA20;
  v18[4] = v15;
  v18[5] = a5;
  v19 = swift_allocObject();
  v19[2] = a3;
  v19[3] = a4;
  v19[4] = v16;
  v19[5] = sub_1CAFC;
  v19[6] = v18;
  v20 = *(v16 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
  v23 = sub_1CAE4;
  v24 = v16;

  os_unfair_lock_lock(v20 + 4);
  sub_1CB04(&v25);
  os_unfair_lock_unlock(v20 + 4);
  v21 = v25;
  sub_2C458(v25, sub_1CA7C, v19);
}

uint64_t sub_15A9C(void *a1, uint64_t a2)
{

  sub_2294(&unk_42690, &unk_33028);
  return sub_31440();
}

uint64_t Manager.getProperties(propertyNames:assetIDs:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return _swift_task_switch(sub_15B20, 0, 0);
}

uint64_t sub_15B20()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[9] = v3;
  v4 = sub_2294(&qword_425B8, &qword_32F10);
  *v3 = v0;
  v3[1] = sub_15C28;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 4, 0, 0, 0xD000000000000016, 0x8000000000034A90, sub_1CB20, v2, v4);
}

uint64_t sub_15C28()
{

  return _swift_task_switch(sub_15D40, 0, 0);
}

uint64_t sub_15D40()
{
  v1 = *(v0 + 32);
  if (v1 >> 62)
  {
LABEL_16:
    v2 = sub_317C0();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v16 = v20 + 2;
      v17 = v2;
      v18 = v1 & 0xFFFFFFFFFFFFFF8;
      v19 = v1 & 0xC000000000000001;
      do
      {
        if (v19)
        {
          v4 = sub_31700();
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_13:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v3 >= *(v18 + 16))
          {
            __break(1u);
            goto LABEL_16;
          }

          v4 = *(v1 + 8 * v3 + 32);
          swift_unknownObjectRetain();
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_13;
          }
        }

        v6 = v1;
        v7 = v20[5];
        v8 = [v4 eventName];
        v9 = sub_31320();
        v11 = v10;

        v20[2] = v9;
        v20[3] = v11;
        v12 = swift_task_alloc();
        *(v12 + 16) = v16;
        LOBYTE(v7) = sub_16DB8(sub_1B294, v12, v7);

        if (v7)
        {
          sub_31740();
          sub_31770();
          sub_31780();
          sub_31750();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        v1 = v6;
        ++v3;
      }

      while (v5 != v17);
    }
  }

  v20[10] = _swiftEmptyArrayStorage;

  v13 = swift_task_alloc();
  v20[11] = v13;
  *v13 = v20;
  v13[1] = sub_15FAC;
  v14 = v20[6];

  return Manager.getProperties(configs:assetIDs:sortByCreatedAt:limit:)(_swiftEmptyArrayStorage, v14, 0, 0);
}

uint64_t sub_15FAC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t Manager.getEarliestTimestamp(propertyNames:assetIDs:earliestTimestampComparator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[19] = a5;
  v6[20] = v5;
  v6[17] = a3;
  v6[18] = a4;
  v6[15] = a1;
  v6[16] = a2;
  sub_2294(&qword_42490, &qword_32CB0);
  v6[21] = swift_task_alloc();

  return _swift_task_switch(sub_16168, 0, 0);
}

uint64_t sub_16168()
{
  v1 = v0[20];
  v2 = swift_task_alloc();
  v0[22] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[23] = v3;
  v4 = sub_2294(&qword_425B8, &qword_32F10);
  *v3 = v0;
  v3[1] = sub_16270;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 14, 0, 0, 0xD000000000000016, 0x8000000000034A90, sub_1CB20, v2, v4);
}

uint64_t sub_16270()
{

  return _swift_task_switch(sub_16388, 0, 0);
}

uint64_t sub_16388()
{
  v1 = v0[14];
  if (v1 >> 62)
  {
LABEL_25:
    v18 = v1;
    v2 = sub_317C0();
    v1 = v18;
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v4 = v0[16];
      v23 = v1 & 0xFFFFFFFFFFFFFF8;
      v24 = v1 & 0xC000000000000001;
      v5 = v1 + 32;
      v0 = (v4 + 56);
      while (1)
      {
        if (v24)
        {
          v6 = sub_31700();
          v7 = __OFADD__(v3++, 1);
          if (v7)
          {
LABEL_22:
            __break(1u);
LABEL_23:
            v0 = v22;
            break;
          }
        }

        else
        {
          if (v3 >= *(v23 + 16))
          {
            __break(1u);
            goto LABEL_25;
          }

          v6 = *(v5 + 8 * v3);
          swift_unknownObjectRetain();
          v7 = __OFADD__(v3++, 1);
          if (v7)
          {
            goto LABEL_22;
          }
        }

        v8 = [v6 eventName];
        v9 = sub_31320();
        v11 = v10;

        if (*(v4 + 16) && (sub_31900(), sub_31370(), v12 = sub_31920(), v13 = -1 << *(v4 + 32), v14 = v12 & ~v13, ((*(v0 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0))
        {
          v15 = ~v13;
          while (1)
          {
            v16 = (*(v4 + 48) + 16 * v14);
            v17 = *v16 == v9 && v16[1] == v11;
            if (v17 || (sub_31850() & 1) != 0)
            {
              break;
            }

            v14 = (v14 + 1) & v15;
            if (((*(v0 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

          sub_31740();
          sub_31770();
          sub_31780();
          v1 = sub_31750();
        }

        else
        {
LABEL_4:
          swift_unknownObjectRelease();
        }

        if (v3 == v2)
        {
          goto LABEL_23;
        }
      }
    }
  }

  v0[24] = _swiftEmptyArrayStorage;

  v19 = swift_task_alloc();
  v0[25] = v19;
  *v19 = v0;
  v19[1] = sub_1663C;
  v20 = v0[17];

  return Manager.getProperties(configs:assetIDs:sortByCreatedAt:limit:)(_swiftEmptyArrayStorage, v20, 1, 20);
}

uint64_t sub_1663C(uint64_t a1)
{
  *(*v1 + 208) = a1;

  return _swift_task_switch(sub_1675C, 0, 0);
}

uint64_t sub_1675C()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 120);
  v3 = sub_31180();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = *(v1 + 16);
  if (v4)
  {
    v5 = (*(v0 + 208) + 40);
    do
    {
      v6 = *(v0 + 168);
      v7 = *(v0 + 144);
      v8 = *(v0 + 120);
      v9 = *(v5 + 25);
      v10 = v5[1];
      *(v0 + 16) = *v5;
      *(v0 + 32) = v10;
      *(v0 + 41) = v9;
      sub_1B2EC(v0 + 16, v0 + 64);
      v7(v0 + 16, v8);
      sub_B4F0(v0 + 16);
      sub_B5AC(v8, &qword_42490, &qword_32CB0);
      sub_1B348(v6, v8);
      v5 = (v5 + 56);
      --v4;
    }

    while (v4);
  }

  v11 = *(v0 + 8);

  return v11();
}

void Manager.enumerate(startDate:endDate:closure:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a5;
  v31 = a6;
  v28 = a3;
  v29 = a4;
  v9 = sub_2294(&qword_42490, &qword_32CB0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9 - 8);
  v13 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v28 - v14;
  v16 = *(v6 + OBJC_IVAR___BMInternalManager_localStorage);
  sub_B488(a1, &v28 - v14, &qword_42490, &qword_32CB0);
  sub_B488(a2, v13, &qword_42490, &qword_32CB0);
  v17 = *(v10 + 80);
  v18 = (v17 + 24) & ~v17;
  v19 = (v11 + v17 + v18) & ~v17;
  v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = v16;
  sub_1B348(v15, v21 + v18);
  sub_1B348(v13, v21 + v19);
  v22 = (v21 + v20);
  v23 = v29;
  *v22 = v28;
  v22[1] = v23;
  v24 = (v21 + ((v20 + 23) & 0xFFFFFFFFFFFFFFF8));
  v25 = v31;
  *v24 = v30;
  v24[1] = v25;
  v26 = *(v16 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
  v32 = sub_1CAE4;
  v33 = v16;

  os_unfair_lock_lock(v26 + 4);
  sub_1CB04(&v34);
  os_unfair_lock_unlock(v26 + 4);
  v27 = v34;
  sub_2C458(v34, sub_1B558, v21);
}

uint64_t Manager.fetchCounts(_:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return _swift_task_switch(sub_16B00, 0, 0);
}

uint64_t sub_16B00()
{
  v1 = v0[3];
  v2 = *(v0[4] + OBJC_IVAR___BMInternalManager_localStorage);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  v5 = sub_2294(&qword_425D8, &qword_32F70);
  *v4 = v0;
  v4[1] = sub_16C1C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0x756F436863746566, 0xEF293A5F2873746ELL, sub_1B618, v3, v5);
}

uint64_t sub_16C1C()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_16D54;
  }

  else
  {

    v2 = sub_16D38;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_16D54()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_16DB8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_16E64(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_16F5C;

  return v6(a1);
}

uint64_t sub_16F5C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_17054(uint64_t a1, uint64_t a2)
{
  sub_31900();
  sub_31370();
  v4 = sub_31920();

  return sub_171C0(a1, a2, v4);
}

unint64_t sub_170CC(Swift::UInt a1)
{
  sub_31900();
  sub_31910(a1);
  v2 = sub_31920();

  return sub_17278(a1, v2);
}

unint64_t sub_17138(uint64_t a1)
{
  v2 = sub_318F0();

  return sub_17278(a1, v2);
}

unint64_t sub_1717C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_31660(*(v2 + 40));

  return sub_172E4(a1, v4);
}

unint64_t sub_171C0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_31850())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_17278(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_172E4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for BasePropertyConfiguration();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_31670();

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

uint64_t sub_173A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2294(&qword_42688, &qword_33020);
  v34 = v4;
  result = sub_317F0();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      sub_31900();
      sub_31370();
      result = sub_31920();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_17650(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2294(&unk_42710, &unk_330F0);
  v35 = v4;
  result = sub_317F0();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_31900();
      sub_31370();
      result = sub_31920();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_178F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2294(&unk_42720, &unk_33110);
  v34 = v4;
  result = sub_317F0();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_31900();
      sub_31370();
      result = sub_31920();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_17B9C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2294(&qword_426E8, &qword_330D0);
  v30 = v4;
  result = sub_317F0();
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_31900();
      sub_31910(v20);
      result = sub_31920();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
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

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_17E2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2294(&qword_42680, &qword_33018);
  v34 = v4;
  result = sub_317F0();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_31900();
      sub_31370();
      result = sub_31920();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_180CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2294(&qword_42678, &qword_33010);
  result = sub_317F0();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
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
      v20 = 8 * (v17 | (v8 << 6));
      v21 = *(*(v5 + 48) + v20);
      v22 = *(v5 + 56) + v20;
      if (v4)
      {
        sub_1B9C4(v22, v32);
      }

      else
      {
        sub_1B968(v22, v32);
      }

      result = sub_318F0();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 8 * v15;
      *(*(v7 + 48) + v16) = v21;
      result = sub_1B9C4(v32, *(v7 + 56) + v16);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if (v4)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1834C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2294(&qword_42730, &qword_33138);
  v37 = v4;
  result = sub_317F0();
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
      v22 = *(v5 + 56) + 48 * v20;
      v23 = *(v22 + 8);
      v24 = *(v22 + 16);
      v25 = *(v22 + 24);
      v39 = *(v22 + 32);
      v40 = *v22;
      v38 = *(v22 + 40);
      if ((v37 & 1) == 0)
      {
        v26 = v21;
        sub_1BBC8(v40, v23, v24, v25, v39, v38);
      }

      result = sub_31660(*(v7 + 40));
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
      v16 = *(v7 + 56) + 48 * v15;
      *v16 = v40;
      *(v16 + 8) = v23;
      *(v16 + 16) = v24;
      *(v16 + 24) = v25;
      *(v16 + 32) = v39;
      *(v16 + 40) = v38;
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

void *sub_18610()
{
  v1 = v0;
  sub_2294(&qword_42688, &qword_33020);
  v2 = *v0;
  v3 = sub_317E0();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = swift_unknownObjectRetain();
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

id sub_187A8()
{
  v1 = v0;
  sub_2294(&unk_42710, &unk_330F0);
  v2 = *v0;
  v3 = sub_317E0();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

void *sub_18914()
{
  v1 = v0;
  sub_2294(&unk_42720, &unk_33110);
  v2 = *v0;
  v3 = sub_317E0();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

void *sub_18A84()
{
  v1 = v0;
  sub_2294(&qword_426E8, &qword_330D0);
  v2 = *v0;
  v3 = sub_317E0();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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