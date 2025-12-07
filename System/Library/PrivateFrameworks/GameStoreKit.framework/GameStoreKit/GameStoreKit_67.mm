uint64_t sub_24ECE1BD0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  MEMORY[0x253050C20](*a1, a1[1]);
  MEMORY[0x253050C20](8250, 0xE200000000000000);
  result = sub_24F92CA38();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_24ECE1C8C()
{
}

uint64_t AppLaunchMetricsEvent.deinit()
{

  return v0;
}

uint64_t AppLaunchMetricsEvent.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_24ECE1DB8()
{
  result = qword_27F22D930;
  if (!qword_27F22D930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22D928, &qword_24F9A4D20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D930);
  }

  return result;
}

Swift::String __swiftcall localizedString(_:comment:)(Swift::String _, Swift::String comment)
{
  if (qword_27F210608 != -1)
  {
    swift_once();
  }

  v2 = off_27F22D938;
  os_unfair_lock_lock(off_27F22D938 + 6);
  v3 = *(v2 + 2);

  os_unfair_lock_unlock(v2 + 6);
  if (v3)
  {
    v4 = *(v3 + 16);
    swift_unknownObjectRetain();

    v5 = sub_24F92B098();
    v6 = [v4 string_];

    v7 = sub_24F92B0D8();
    v9 = v8;
    swift_unknownObjectRelease();

    v10 = v7;
    v11 = v9;
  }

  else
  {
    v12 = [objc_opt_self() mainBundle];
    v13 = sub_24F91F088();
    v15 = v14;

    if (v13)
    {
      v16 = 0;
    }

    else
    {
      v16 = v15 == 0xE100000000000000;
    }

    if (v16 || (sub_24F92CE08() & 1) != 0)
    {

      if (qword_27F2103D8 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v17 = qword_27F22B5B8;
      v13 = sub_24F91F088();
      v15 = v18;
    }

    v10 = v13;
    v11 = v15;
  }

  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

Swift::String_optional __swiftcall localizedStringForDecimal(_:_:)(NSNumber_optional a1, Swift::Int a2)
{
  v2 = *&a1.is_nil;
  isa = a1.value.super.super.isa;
  if (qword_27F210608 != -1)
  {
    swift_once();
  }

  v4 = off_27F22D938;
  os_unfair_lock_lock(off_27F22D938 + 6);
  v5 = *(v4 + 2);

  os_unfair_lock_unlock(v4 + 6);
  if (!v5)
  {
    if (isa)
    {
      v11 = [isa stringValue];
      isa = sub_24F92B0D8();
      v10 = v12;

      goto LABEL_10;
    }

LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  v6 = *(v5 + 16);
  swift_unknownObjectRetain();

  v7 = [v6 decimal:isa :v2];
  if (!v7)
  {
    swift_unknownObjectRelease();
    isa = 0;
    goto LABEL_9;
  }

  v8 = v7;
  isa = sub_24F92B0D8();
  v10 = v9;

  swift_unknownObjectRelease();
LABEL_10:
  v13 = isa;
  v14 = v10;
  result.value._object = v14;
  result.value._countAndFlagsBits = v13;
  return result;
}

Swift::String __swiftcall localizedString(_:with:)(Swift::String _, Swift::OpaquePointer with)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  if (qword_27F210608 != -1)
  {
    swift_once();
  }

  v4 = off_27F22D938;
  os_unfair_lock_lock(off_27F22D938 + 6);
  v5 = *(v4 + 2);

  os_unfair_lock_unlock(v4 + 6);
  if (v5)
  {
    v6 = *(v5 + 16);
    swift_unknownObjectRetain();

    v7 = sub_24F92B098();
    v8 = sub_24F92AE28();
    v9 = [v6 string:v7 with:v8];

    v10 = sub_24F92B0D8();
    v12 = v11;
    swift_unknownObjectRelease();

    v13 = v10;
    v14 = v12;
  }

  else
  {
    v15 = countAndFlagsBits;
    v16 = object;
    v17 = 0;
    v18 = 0xE000000000000000;

    v19 = localizedString(_:comment:)(*&v15, *&v17);
    v14 = v19._object;
    v13 = v19._countAndFlagsBits;
  }

  result._object = v14;
  result._countAndFlagsBits = v13;
  return result;
}

Swift::String __swiftcall localizedStringReferencingWiFi(_:comment:)(Swift::String _, Swift::String comment)
{
  object = comment._object;
  countAndFlagsBits = comment._countAndFlagsBits;
  v4 = _._object;
  v5 = _._countAndFlagsBits;
  if ([objc_opt_self() wapiCapability])
  {
    v6 = 1312902231;
  }

  else
  {
    v6 = 1229343063;
  }

  v13 = v6 & 0xFFFF0000FFFFFFFFLL | 0x5F00000000;
  MEMORY[0x253050C20](v5, v4);
  v7._countAndFlagsBits = v13;
  v7._object = 0xE500000000000000;
  v8._countAndFlagsBits = countAndFlagsBits;
  v8._object = object;
  v9 = localizedString(_:comment:)(v7, v8);

  v10 = v9._countAndFlagsBits;
  v11 = v9._object;
  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

uint64_t sub_24ECE242C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D950, &unk_24F995AA8);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 0;
  off_27F22D938 = result;
  return result;
}

uint64_t sub_24ECE2470(void *a1, uint64_t a2)
{

  *a1 = a2;
}

uint64_t sub_24ECE24B8()
{
  swift_unknownObjectRelease();
  sub_24E601704(v0 + 24, &qword_27F223248, &unk_24F96E1C0);

  v1 = OBJC_IVAR____TtC12GameStoreKit19PrimaryLocalization_legacyLocale;
  v2 = sub_24F91F7C8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

Swift::String __swiftcall localizedStringForAdsLanguage(_:)(Swift::String a1)
{
  if (qword_27F210608 != -1)
  {
    swift_once();
  }

  v1 = off_27F22D938;
  os_unfair_lock_lock(off_27F22D938 + 6);
  v2 = *(v1 + 2);

  os_unfair_lock_unlock(v1 + 6);
  if (v2)
  {
    sub_24EA28268(v2 + 24, &v19);
    if (v20)
    {
      sub_24E612E28(&v19, v21);
      __swift_project_boxed_opaque_existential_1(v21, v21[3]);
      v3 = sub_24F92AD38();
      v5 = v4;

      __swift_destroy_boxed_opaque_existential_1(v21);
    }

    else
    {
      sub_24E601704(&v19, &qword_27F223248, &unk_24F96E1C0);
      v11 = *(v2 + 16);
      v12 = sub_24F92B098();
      if (*(v2 + 72))
      {

        v13 = sub_24F92B098();
      }

      else
      {
        v13 = 0;
      }

      v14 = [v11 stringForPreferredLocale:v12 :v13];

      v3 = sub_24F92B0D8();
      v5 = v15;
    }
  }

  else
  {
    v6 = [objc_opt_self() mainBundle];
    v3 = sub_24F91F088();
    v5 = v7;

    if (v3)
    {
      v8 = 0;
    }

    else
    {
      v8 = v5 == 0xE100000000000000;
    }

    if (v8 || (sub_24F92CE08() & 1) != 0)
    {

      if (qword_27F2103D8 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v9 = qword_27F22B5B8;
      v3 = sub_24F91F088();
      v5 = v10;
    }
  }

  v16 = v3;
  v17 = v5;
  result._object = v17;
  result._countAndFlagsBits = v16;
  return result;
}

Swift::String_optional __swiftcall localizedFileSize(_:)(NSNumber a1)
{
  if (qword_27F210608 != -1)
  {
    swift_once();
  }

  v2 = off_27F22D938;
  os_unfair_lock_lock(off_27F22D938 + 6);
  v3 = *(v2 + 2);

  os_unfair_lock_unlock(v2 + 6);
  if (v3 && (v4 = *(v3 + 16), swift_unknownObjectRetain(), , v5 = [v4 fileSize_], swift_unknownObjectRelease(), v5))
  {
    v6 = sub_24F92B0D8();
    v8 = v7;

    v9 = v8;
    v10 = v6;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  result.value._object = v9;
  result.value._countAndFlagsBits = v10;
  return result;
}

uint64_t _s12GameStoreKit24localizedStringWithCount_5count7commentS2S_SiSStF_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FAD8, &qword_24F961870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  if (qword_27F210608 != -1)
  {
    swift_once();
  }

  v7 = off_27F22D938;
  os_unfair_lock_lock(off_27F22D938 + 6);
  v8 = *(v7 + 2);

  os_unfair_lock_unlock(v7 + 6);
  if (v8)
  {
    v9 = *(v8 + 16);
    swift_unknownObjectRetain();

    v10 = sub_24F92B098();
    v11 = [v9 stringWithCount:v10 :a3];

    v12 = sub_24F92B0D8();
    swift_unknownObjectRelease();

    return v12;
  }

  else
  {
    v14 = [objc_opt_self() mainBundle];
    v15 = sub_24F91F088();
    v17 = v16;

    if (!v15 && v17 == 0xE100000000000000 || (sub_24F92CE08() & 1) != 0)
    {

      if (qword_27F2103D8 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v18 = qword_27F22B5B8;
      sub_24F91F088();
    }

    v19 = sub_24F91F7C8();
    (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218A0, &qword_24F9876F0);
    v20 = swift_allocObject();
    v21 = MEMORY[0x277D83B88];
    *(v20 + 16) = xmmword_24F93DE60;
    v22 = MEMORY[0x277D83C10];
    *(v20 + 56) = v21;
    *(v20 + 64) = v22;
    *(v20 + 32) = a3;
    v23 = sub_24F92B108();

    sub_24E601704(v6, &qword_27F21FAD8, &qword_24F961870);
    return v23;
  }
}

uint64_t type metadata accessor for PrimaryLocalization(uint64_t a1)
{
  result = qword_27F22D940;
  if (!qword_27F22D940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24ECE2D08(uint64_t a1)
{
  result = sub_24F91F7C8();
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

uint64_t CrossfireReferralActionImplementation.perform(_:asPartOf:)(uint64_t a1)
{
  v2 = sub_24F928AE8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F210278 != -1)
  {
    swift_once();
  }

  v6 = a1 + OBJC_IVAR____TtC12GameStoreKit23CrossfireReferralAction_referrerData;
  v7 = *(a1 + OBJC_IVAR____TtC12GameStoreKit23CrossfireReferralAction_referrerData);
  v8 = *(a1 + OBJC_IVAR____TtC12GameStoreKit23CrossfireReferralAction_referrerData + 24);
  v9 = *(a1 + OBJC_IVAR____TtC12GameStoreKit23CrossfireReferralAction_referrerData + 32);
  v10 = *(v6 + 40);
  v14 = v7;
  v15 = *(v6 + 8);
  v16 = v8;
  v17 = v9;
  v18 = v10;

  sub_24E90BCC4(v9, v10);
  sub_24EB6C854(&v14);
  v11 = v17;
  v12 = v18;

  sub_24E7B6564(v11, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);
  (*(v3 + 104))(v5, *MEMORY[0x277D21CA8], v2);
  return sub_24F92A988();
}

unint64_t sub_24ECE2F6C()
{
  result = qword_27F22D958;
  if (!qword_27F22D958)
  {
    type metadata accessor for CrossfireReferralAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D958);
  }

  return result;
}

uint64_t sub_24ECE2FC4(uint64_t *a1)
{
  v2 = sub_24F928AE8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  if (qword_27F210278 != -1)
  {
    swift_once();
  }

  v7 = v6 + OBJC_IVAR____TtC12GameStoreKit23CrossfireReferralAction_referrerData;
  v8 = *(v6 + OBJC_IVAR____TtC12GameStoreKit23CrossfireReferralAction_referrerData);
  v9 = *(v6 + OBJC_IVAR____TtC12GameStoreKit23CrossfireReferralAction_referrerData + 24);
  v10 = *(v6 + OBJC_IVAR____TtC12GameStoreKit23CrossfireReferralAction_referrerData + 32);
  v11 = *(v7 + 40);
  v15 = v8;
  v16 = *(v7 + 8);
  v17 = v9;
  v18 = v10;
  v19 = v11;

  sub_24E90BCC4(v10, v11);
  sub_24EB6C854(&v15);
  v12 = v18;
  v13 = v19;

  sub_24E7B6564(v12, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);
  (*(v3 + 104))(v5, *MEMORY[0x277D21CA8], v2);
  return sub_24F92A988();
}

void SynchronizedAppStateDataSource.performExpectedAppStateUpdates(async:_:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a2;
  v27 = a3;
  v8 = sub_24F927DC8();
  v24 = *(v8 - 8);
  v25 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F927D88();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = (*(a5 + 24))(a4, a5, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0, &unk_24F96BDB0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_24F93DE60;
  sub_24F927D78();
  aBlock[0] = v17;
  sub_24E858250();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E8582A8();
  if (a1)
  {
    sub_24F92C6A8();
    v18 = swift_allocObject();
    v19 = v27;
    *(v18 + 16) = v26;
    *(v18 + 24) = v19;
    aBlock[4] = sub_24E97225C;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24EAF8248;
    aBlock[3] = &block_descriptor_69;
    v20 = _Block_copy(aBlock);

    sub_24F927DA8();
    MEMORY[0x2530518B0](0, v10, v15, v20);
    _Block_release(v20);

    (*(v24 + 8))(v10, v25);
    (*(v12 + 8))(v15, v11);
  }

  else
  {
    v21 = sub_24F92C6A8();
    MEMORY[0x28223BE20](v21);
    v22 = v27;
    *(&v23 - 2) = v26;
    *(&v23 - 1) = v22;
    sub_24F92BF08();

    (*(v12 + 8))(v15, v11);
  }
}

void SynchronizedAppStateDataSource.state(for:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a3 + 24))(a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BE00, &qword_24F96BDA0);
  sub_24F92BF18();
}

uint64_t sub_24ECE369C()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_69(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_24ECE36EC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v8 = OBJC_IVAR____TtC12GameStoreKit39RemotePersonalizationAppStateDataSource_expectedAppStates;
  swift_beginAccess();
  v9 = *(a1 + v8);
  if (*(v9 + 16))
  {

    v10 = sub_24E7728F0(a2, a3);
    if (v11)
    {
      v12 = (*(v9 + 56) + (v10 << 6));
      v14 = v12[2];
      v13 = v12[3];
      v15 = v12[1];
      v20[0] = *v12;
      v20[1] = v15;
      v20[2] = v14;
      v20[3] = v13;
      v16 = v12[1];
      *a4 = *v12;
      a4[1] = v16;
      v17 = v12[3];
      a4[2] = v12[2];
      a4[3] = v17;
      sub_24E8B9478(v20, &v19);

      return result;
    }
  }

  result = 0.0;
  *a4 = 0u;
  a4[1] = 0u;
  a4[2] = 0u;
  a4[3] = xmmword_24F962330;
  return result;
}

double sub_24ECE37D8@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, _OWORD *a5@<X8>)
{
  v8 = (*(a4 + 16))(a3, a4);
  if (*(v8 + 16) && (v9 = sub_24E7728F0(a1, a2), (v10 & 1) != 0))
  {
    v11 = (*(v8 + 56) + (v9 << 6));
    v13 = v11[2];
    v12 = v11[3];
    v14 = v11[1];
    v19[0] = *v11;
    v19[1] = v14;
    v19[2] = v13;
    v19[3] = v12;
    v15 = v11[1];
    *a5 = *v11;
    a5[1] = v15;
    v16 = v11[3];
    a5[2] = v11[2];
    a5[3] = v16;
    sub_24E8B9478(v19, &v18);
  }

  else
  {

    result = 0.0;
    *a5 = 0u;
    a5[1] = 0u;
    a5[2] = 0u;
    a5[3] = xmmword_24F962330;
  }

  return result;
}

uint64_t sub_24ECE3984()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D960, &unk_24F995B50);
  sub_24F92BF18();
  return v1;
}

uint64_t sub_24ECE3A08(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 24))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D960, &unk_24F995B50);
  sub_24F92BF18();

  return v4;
}

double sub_24ECE3ACC@<D0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = OBJC_IVAR____TtC12GameStoreKit39RemotePersonalizationAppStateDataSource_expectedAppStates;
  swift_beginAccess();
  *a1 = *(v3 + v4);

  return result;
}

uint64_t sub_24ECE3B54@<X0>(uint64_t *a1@<X8>)
{
  result = (*(*(v1 + 24) + 16))(*(v1 + 16));
  *a1 = result;
  return result;
}

uint64_t ArcadeWelcomeItemViewLayout.Metrics.init(imageAspectRatio:imageWidth:headingTopSpace:bodyTopSpace:textInsets:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  v18 = sub_24F922348();
  (*(*(v18 - 8) + 32))(a5, a1, v18);
  v19 = type metadata accessor for ArcadeWelcomeItemViewLayout.Metrics(0);
  sub_24E612C80(a2, a5 + v19[5]);
  sub_24E612C80(a3, a5 + v19[6]);
  result = sub_24E612C80(a4, a5 + v19[7]);
  v21 = (a5 + v19[8]);
  *v21 = a6;
  v21[1] = a7;
  v21[2] = a8;
  v21[3] = a9;
  return result;
}

uint64_t ArcadeWelcomeItemViewLayout.Metrics.imageAspectRatio.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F922348();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ArcadeWelcomeItemViewLayout.Metrics.imageAspectRatio.setter(uint64_t a1)
{
  v3 = sub_24F922348();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ArcadeWelcomeItemViewLayout.Metrics.imageWidth.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ArcadeWelcomeItemViewLayout.Metrics(0) + 20);
  __swift_destroy_boxed_opaque_existential_1((v1 + v3));

  return sub_24E612C80(a1, v1 + v3);
}

uint64_t ArcadeWelcomeItemViewLayout.Metrics.headingTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ArcadeWelcomeItemViewLayout.Metrics(0) + 24);
  __swift_destroy_boxed_opaque_existential_1((v1 + v3));

  return sub_24E612C80(a1, v1 + v3);
}

uint64_t ArcadeWelcomeItemViewLayout.Metrics.bodyTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ArcadeWelcomeItemViewLayout.Metrics(0) + 28);
  __swift_destroy_boxed_opaque_existential_1((v1 + v3));

  return sub_24E612C80(a1, v1 + v3);
}

uint64_t ArcadeWelcomeItemViewLayout.Metrics.textInsets.setter(double a1, double a2, double a3, double a4)
{
  result = type metadata accessor for ArcadeWelcomeItemViewLayout.Metrics(0);
  v10 = (v4 + *(result + 32));
  *v10 = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  return result;
}

uint64_t sub_24ECE40E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArcadeWelcomeItemViewLayout.Metrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ArcadeWelcomeItemViewLayout.init(metrics:headingText:bodyText:image:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  sub_24ECE40E0(a1, a5);
  v9 = type metadata accessor for ArcadeWelcomeItemViewLayout(0);
  sub_24E612C80(a2, a5 + v9[5]);
  sub_24E612C80(a3, a5 + v9[6]);
  v10 = a5 + v9[7];

  return sub_24E612C80(a4, v10);
}

double ArcadeWelcomeItemViewLayout.measurements(fitting:in:)(uint64_t a1, double a2, double a3)
{
  sub_24ECE4294(a1, &v9);
  _VerticalFlowLayout.measurements(fitting:in:)(a1, a2, a3);
  v7 = v6;

  return v7;
}

uint64_t sub_24ECE4294@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  v26 = a1;
  v27 = a2;
  v4 = sub_24F92CDB8();
  v24 = v4;
  v25 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213C50, &unk_24F9AFC90);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24F9479A0;
  v29 = type metadata accessor for ArcadeWelcomeItemViewLayout(0);
  v8 = (v2 + v29[7]);
  v9 = v8[3];
  v23[1] = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v28 = type metadata accessor for ArcadeWelcomeItemViewLayout.Metrics(0);
  v10 = (v2 + *(v28 + 20));
  v11 = v10[3];
  __swift_project_boxed_opaque_existential_1(v10, v11);
  sub_24E8ED7D8(v11);
  sub_24F9223A8();
  v25 = *(v25 + 8);
  (v25)(v6, v4);
  sub_24F922308();
  sub_24F922268();
  v34 = MEMORY[0x277D839F8];
  v35 = MEMORY[0x277D22A30];
  v32 = MEMORY[0x277D22A30];
  v33[0] = 0;
  *(&v31 + 1) = MEMORY[0x277D839F8];
  *&v30 = 0;
  sub_24E615E00(v36, v7 + 32);
  sub_24E615E00(v33, v7 + 80);
  sub_24E930DFC(&v30, v7 + 120);
  *(v7 + 72) = 256;
  *(v7 + 160) = 8;
  __swift_destroy_boxed_opaque_existential_1(v36);
  sub_24E930E6C(&v30);
  __swift_destroy_boxed_opaque_existential_1(v33);
  __swift_project_boxed_opaque_existential_1((v3 + v29[5]), *(v3 + v29[5] + 24));
  v12 = v28;
  sub_24F922258();
  v13 = (v3 + *(v12 + 24));
  v14 = v13[3];
  __swift_project_boxed_opaque_existential_1(v13, v14);
  sub_24E8ED7D8(v14);
  v15 = sub_24F9223A8();
  v16 = v24;
  v17 = v25;
  (v25)(v6, v24);
  v34 = MEMORY[0x277D85048];
  v35 = MEMORY[0x277D225F8];
  *v33 = v15;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_24E615E00(v36, v7 + 168);
  sub_24E615E00(v33, v7 + 216);
  sub_24E930DFC(&v30, v7 + 256);
  *(v7 + 208) = 257;
  *(v7 + 296) = 10;
  sub_24E930E6C(&v30);
  __swift_destroy_boxed_opaque_existential_1(v36);
  __swift_destroy_boxed_opaque_existential_1(v33);
  __swift_project_boxed_opaque_existential_1((v3 + v29[6]), *(v3 + v29[6] + 24));
  sub_24F922258();
  v18 = (v3 + *(v28 + 28));
  v19 = v18[3];
  __swift_project_boxed_opaque_existential_1(v18, v19);
  sub_24E8ED7D8(v19);
  v20 = sub_24F9223A8();
  v17(v6, v16);
  v34 = MEMORY[0x277D85048];
  v35 = MEMORY[0x277D225F8];
  *v33 = v20;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_24E615E00(v36, v7 + 304);
  sub_24E615E00(v33, v7 + 352);
  sub_24E930DFC(&v30, v7 + 392);
  *(v7 + 344) = 257;
  *(v7 + 432) = 10;
  sub_24E930E6C(&v30);
  __swift_destroy_boxed_opaque_existential_1(v36);
  result = __swift_destroy_boxed_opaque_existential_1(v33);
  v22 = v27;
  *v27 = 1;
  *(v22 + 1) = v7;
  return result;
}

uint64_t ArcadeWelcomeItemViewLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  sub_24ECE4294(a1, v12);
  _VerticalFlowLayout.placeChildren(relativeTo:in:)(a2, a3, a4, a5, a6);
}

uint64_t sub_24ECE4800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  sub_24ECE4294(a1, v12);
  _VerticalFlowLayout.placeChildren(relativeTo:in:)(a2, a3, a4, a5, a6);
}

double sub_24ECE48A0(uint64_t a1, double a2, double a3)
{
  sub_24ECE4294(a1, v9);
  _VerticalFlowLayout.measurements(fitting:in:)(a1, a2, a3);
  v7 = v6;

  return v7;
}

uint64_t sub_24ECE4994(uint64_t a1)
{
  result = type metadata accessor for ArcadeWelcomeItemViewLayout.Metrics(319);
  if (v2 <= 0x3F)
  {
    result = sub_24E8EFB54(319, &qword_27F2297C0, MEMORY[0x277D226F8]);
    if (v3 <= 0x3F)
    {
      result = sub_24E8EFB54(319, &qword_27F237A20, MEMORY[0x277D22640]);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 20) + 24);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_2(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

void sub_24ECE4C2C(uint64_t a1)
{
  sub_24F922348();
  if (v1 <= 0x3F)
  {
    sub_24E8EFB54(319, &qword_27F237A40, MEMORY[0x277D226C0]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for NSDirectionalEdgeInsets(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_24ECE4CF0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>, double a9@<D4>, double a10@<D5>, double a11@<D6>, float64_t a12@<D7>, double a13, float64_t a14)
{
  v46 = a11;
  v47 = a12;
  v45 = a6;
  v44 = a4;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680, &unk_24F981ED0);
  v23 = v22 - 8;
  MEMORY[0x28223BE20](v22);
  v25 = &v44 - v24;
  sub_24E60169C(a1, &v44 - v24, &unk_27F23A690, &qword_24F982880);
  sub_24E60169C(a2, &v25[*(v23 + 56)], &unk_27F23A690, &qword_24F982880);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
  sub_24F928A48();

  v26 = v52[5];
  swift_getKeyPath();
  sub_24F928A48();

  v52[2] = v52[3];
  if (Shelf.ContentType.rawValue.getter() == 0x6C6F686563616C70 && v27 == 0xEB00000000726564)
  {

    goto LABEL_5;
  }

  v28 = sub_24F92CE08();

  if (v28)
  {
LABEL_5:
    swift_getKeyPath();
    sub_24F928A48();

    v29 = v48;
    if (v48 != 104)
    {
      goto LABEL_7;
    }
  }

  swift_getKeyPath();
  sub_24F928A48();

  v29 = v52[4];
LABEL_7:
  v30 = type metadata accessor for PageEnvironment(0);
  v31 = *(a3 + *(v30 + 24));
  if (a5 > 1580.0)
  {
    a5 = 1580.0;
  }

  if (v31)
  {
    if (*(a3 + *(v30 + 32)))
    {
      v32 = 0.0;
    }

    else
    {
      v32 = 16.0;
    }
  }

  else
  {
    v32 = dbl_24F995CE8[sub_24E6B00B4(a5)];
  }

  v33 = v26 ^ 1;
  v34 = sub_24E6B00B4(a5);
  swift_getKeyPath();
  sub_24F928A48();

  if (v52[1])
  {
    v49 = v33 & 1;
    sub_24ECE740C(v32, dbl_24F995D30[v34], dbl_24F995D30[v34]);
    PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)(0xD000000000000012, 0x800000024FA5A3B0, &v49, 0, v35, v44, a5, v45, a7, a8, a9, a10, v46, v47, a13, a14);
    return sub_24E601704(v25, &unk_27F23A680, &unk_24F981ED0);
  }

  if (v29 <= 62)
  {
    if (v29 != 23 && v29 != 55)
    {
LABEL_27:
      v52[0] = v33 & 1;
      if (v31)
      {
        sub_24E69C15C(2.0, v32);
      }

      else
      {
        sub_24EF29A90(v32);
      }

      PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)(0x4164697267, 0xE500000000000000, v52, 0, v42, v44, a5, v45, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24), v46, v47, a13, a14);
      return sub_24E601704(v25, &unk_27F23A680, &unk_24F981ED0);
    }

LABEL_23:
    v50 = v33 & 1;
    _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
    sub_24EE7C714(v31, v32);
    PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)(0x4264697267, 0xE500000000000000, &v50, 0, v36, v44, a5, v45, a7, a8, a9, a10, v46, v47, a13, a14);
    return sub_24E601704(v25, &unk_27F23A680, &unk_24F981ED0);
  }

  if (v29 != 63 && v29 != 87)
  {
    if (v29 != 99)
    {
      goto LABEL_27;
    }

    goto LABEL_23;
  }

  v51 = v33 & 1;
  if (qword_27F210620 != -1)
  {
    swift_once();
  }

  v37 = qword_27F39C590;
  v38 = *MEMORY[0x277D768C8];
  v39 = *(MEMORY[0x277D768C8] + 8);
  v40 = *(MEMORY[0x277D768C8] + 16);
  v41 = *(MEMORY[0x277D768C8] + 24);

  PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)(0x65656C426C6C7566, 0xE900000000000064, &v51, 0, v37, v44, a5, v45, v38, v39, v40, v41, v46, v47, a13, a14);
  return sub_24E601704(v25, &unk_27F23A680, &unk_24F981ED0);
}

uint64_t sub_24ECE520C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D988, &qword_24F995CE0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11[-v2 - 8];
  v4 = *(v0 + 24);
  if (*(v4 + 16) != 1)
  {
    return 0;
  }

  sub_24E615E00(v4 + 32, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
  v5 = type metadata accessor for ComponentGrid(0);
  v6 = swift_dynamicCast();
  v7 = *(v5 - 8);
  v8 = 1;
  (*(v7 + 56))(v3, v6 ^ 1u, 1, v5);
  if ((*(v7 + 48))(v3, 1, v5))
  {
    if (*(v4 + 16) && (sub_24E615E00(v4 + 32, v11), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0), type metadata accessor for RibbonBar(0), (swift_dynamicCast() & 1) != 0))
    {

      v8 = 1;
    }

    else
    {
      v8 = 0;
    }
  }

  sub_24E601704(v3, &qword_27F22D988, &qword_24F995CE0);
  return v8;
}

uint64_t sub_24ECE53DC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>, double a9@<D4>, double a10@<D5>, double a11@<D6>, float64_t a12@<D7>, double a13, float64_t a14)
{
  v60 = a3;
  v56 = a11;
  v57 = a12;
  v55 = a6;
  v54 = a4;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680, &unk_24F981ED0);
  v22 = v21 - 8;
  MEMORY[0x28223BE20](v21);
  v24 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v54 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v54 - v29;
  sub_24E60169C(a1, &v54 - v29, &unk_27F23A690, &qword_24F982880);
  sub_24E60169C(a2, &v30[*(v22 + 56)], &unk_27F23A690, &qword_24F982880);
  v61 = v30;
  sub_24E60169C(v30, v27, &unk_27F23A680, &unk_24F981ED0);
  v31 = *(v22 + 56);
  sub_24E60169C(v27, v24, &unk_27F23A690, &qword_24F982880);
  v32 = *(v22 + 56);
  v58 = v24;
  v59 = v31;
  sub_24E60169C(&v27[v31], &v24[v32], &unk_27F23A690, &qword_24F982880);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
  sub_24F928A48();

  v33 = v66[5];
  swift_getKeyPath();
  sub_24F928A48();

  v66[2] = v66[3];
  if (Shelf.ContentType.rawValue.getter() == 0x6C6F686563616C70 && v34 == 0xEB00000000726564)
  {

    goto LABEL_5;
  }

  v35 = sub_24F92CE08();

  if (v35)
  {
LABEL_5:
    swift_getKeyPath();
    sub_24F928A48();

    v36 = v62;
    if (v62 != 104)
    {
      goto LABEL_7;
    }
  }

  swift_getKeyPath();
  sub_24F928A48();

  v36 = v66[4];
LABEL_7:
  v37 = type metadata accessor for PageEnvironment(0);
  v38 = *(v60 + *(v37 + 24));
  if (a5 > 1580.0)
  {
    a5 = 1580.0;
  }

  if (v38 == 1)
  {
    if (*(v60 + *(v37 + 32)))
    {
      v39 = 0.0;
    }

    else
    {
      v39 = 16.0;
    }
  }

  else
  {
    v39 = dbl_24F995CE8[sub_24E6B00B4(a5)];
  }

  v40 = v33 ^ 1;
  v41 = sub_24E6B00B4(a5);
  swift_getKeyPath();
  sub_24F928A48();

  if (v66[1] != 1)
  {
    if (v36 <= 62)
    {
      if (v36 != 23 && v36 != 55)
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (v36 == 63 || v36 == 87)
      {
        v65 = v40 & 1;
        v44 = v59;
        if (qword_27F210620 != -1)
        {
          swift_once();
        }

        v45 = qword_27F39C590;
        v46 = *MEMORY[0x277D768C8];
        v47 = *(MEMORY[0x277D768C8] + 8);
        v48 = *(MEMORY[0x277D768C8] + 16);
        v49 = *(MEMORY[0x277D768C8] + 24);

        PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)(0x65656C426C6C7566, 0xE900000000000064, &v65, 0, v45, v54, a5, v55, v46, v47, v48, v49, v56, v57, a13, a14);
        v50 = v58;
        goto LABEL_32;
      }

      if (v36 != 99)
      {
LABEL_28:
        v66[0] = v40 & 1;
        if (v38)
        {
          sub_24E69C15C(2.0, v39);
        }

        else
        {
          sub_24EF29A90(v39);
        }

        v52 = v58;
        v44 = v59;
        PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)(0x4164697267, 0xE500000000000000, v66, 0, v51, v54, a5, v55, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24), v56, v57, a13, a14);
        v50 = v52;
LABEL_32:
        sub_24E601704(v50, &unk_27F23A680, &unk_24F981ED0);
        sub_24E601704(v61, &unk_27F23A680, &unk_24F981ED0);
        goto LABEL_33;
      }
    }

    v64 = v40 & 1;
    _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
    sub_24EE7C714(v38, v39);
    PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)(0x4264697267, 0xE500000000000000, &v64, 0, v43, v54, a5, v55, a7, a8, a9, a10, v56, v57, a13, a14);
    goto LABEL_24;
  }

  v63 = v40 & 1;
  sub_24ECE740C(v39, dbl_24F995D30[v41], dbl_24F995D30[v41]);
  PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)(0xD000000000000012, 0x800000024FA5A3B0, &v63, 0, v42, v54, a5, v55, a7, a8, a9, a10, v56, v57, a13, a14);
LABEL_24:
  sub_24E601704(v58, &unk_27F23A680, &unk_24F981ED0);
  sub_24E601704(v61, &unk_27F23A680, &unk_24F981ED0);
  v44 = v59;
LABEL_33:
  sub_24E601704(&v27[v44], &unk_27F23A690, &qword_24F982880);
  return sub_24E601704(v27, &unk_27F23A690, &qword_24F982880);
}

double sub_24ECE5A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680, &unk_24F981ED0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  sub_24E60169C(a2, &v11[-v7], &unk_27F23A690, &qword_24F982880);
  sub_24E60169C(a3, &v8[*(v6 + 56)], &unk_27F23A690, &qword_24F982880);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
  sub_24F928A48();

  sub_24E601704(v8, &unk_27F23A680, &unk_24F981ED0);
  v9 = v12 == 17 || v12 == 63;
  result = 20.0;
  if (v9)
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_24ECE5BB0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24ECE520C();
  *a1 = result & 1;
  return result;
}

uint64_t Ratings.__allocating_init(id:componentType:productId:ratingAverage:ratingCounts:totalNumberOfRatings:totalNumberOfReviews:status:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, uint64_t a10)
{
  v28 = a8;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v27 - v19;
  v21 = swift_allocObject();
  v22 = (v21 + OBJC_IVAR____TtC12GameStoreKit7Ratings_productId);
  *v22 = a3;
  v22[1] = a4;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit7Ratings_ratingAverage) = a9;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit7Ratings_ratingCounts) = a5;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit7Ratings_totalNumberOfRatings) = a6;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit7Ratings_totalNumberOfReviews) = a7;
  LOBYTE(a7) = *a2;
  v23 = (v21 + OBJC_IVAR____TtC12GameStoreKit7Ratings_status);
  *v23 = v28;
  v23[1] = a10;
  sub_24E65E064(a1, v30);
  v29 = a7;
  v24 = sub_24F929608();
  (*(*(v24 - 8) + 56))(v20, 1, 1, v24);
  v25 = sub_24E9C00B8(v30, &v29, v20);
  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  return v25;
}

uint64_t Ratings.init(id:componentType:productId:ratingAverage:ratingCounts:totalNumberOfRatings:totalNumberOfReviews:status:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, uint64_t a10)
{
  v28 = a8;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v27 - v20;
  v22 = (v10 + OBJC_IVAR____TtC12GameStoreKit7Ratings_productId);
  *v22 = a3;
  v22[1] = a4;
  *(v10 + OBJC_IVAR____TtC12GameStoreKit7Ratings_ratingAverage) = a9;
  *(v10 + OBJC_IVAR____TtC12GameStoreKit7Ratings_ratingCounts) = a5;
  *(v10 + OBJC_IVAR____TtC12GameStoreKit7Ratings_totalNumberOfRatings) = a6;
  *(v10 + OBJC_IVAR____TtC12GameStoreKit7Ratings_totalNumberOfReviews) = a7;
  LOBYTE(a7) = *a2;
  v23 = (v10 + OBJC_IVAR____TtC12GameStoreKit7Ratings_status);
  *v23 = v28;
  v23[1] = a10;
  sub_24E65E064(a1, v30);
  v29 = a7;
  v24 = sub_24F929608();
  (*(*(v24 - 8) + 56))(v21, 1, 1, v24);
  v25 = sub_24E9C00B8(v30, &v29, v21);
  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  return v25;
}

uint64_t Ratings.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v75 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v3 - 8);
  v72 = &v66 - v4;
  v5 = sub_24F91F6B8();
  v71 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v73 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v70 = &v66 - v12;
  MEMORY[0x28223BE20](v13);
  v69 = &v66 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v66 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v66 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v66 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v66 - v25;
  v76 = a1;
  sub_24F928398();
  v27 = sub_24F928348();
  if (v28)
  {
    v78 = v27;
    v79 = v28;
  }

  else
  {
    sub_24F91F6A8();
    v29 = sub_24F91F668();
    v30 = v5;
    v31 = v23;
    v33 = v32;
    v71[1](v7, v30);
    v78 = v29;
    v79 = v33;
    v23 = v31;
  }

  sub_24F92C7F8();
  v34 = *(v9 + 8);
  v34(v26, v8);
  sub_24F928398();
  sub_24E9C07DC();
  sub_24F928208();
  v71 = v23;
  v34(v23, v8);
  v77 = v78;
  sub_24F928398();
  v35 = sub_24F928348();
  v67 = v36;
  v68 = v35;
  v34(v20, v8);
  sub_24F928398();
  v37 = sub_24F9282C8();
  v34(v17, v8);
  v38 = v69;
  sub_24F928398();
  v39 = v72;
  sub_24F9282B8();
  v40 = v34;
  v41 = v8;
  v42 = v40;
  v40(v38, v8);
  v43 = sub_24F92AC28();
  v44 = *(v43 - 8);
  if ((*(v44 + 48))(v39, 1, v43) == 1)
  {
    sub_24E601704(v39, &qword_27F2213B0, &qword_24F965EC0);
    v69 = 0;
  }

  else
  {
    sub_24E9421D0();
    v69 = sub_24F92ABC8();
    (*(v44 + 8))(v39, v43);
  }

  if ((v37 & 0x100000000) != 0)
  {
    v45 = 0.0;
  }

  else
  {
    v45 = *&v37;
  }

  v46 = v70;
  v47 = v76;
  sub_24F928398();
  v48 = sub_24F928258();
  v50 = v49;
  v51 = v42;
  v42(v46, v8);
  if (v50)
  {
    v52 = 0;
  }

  else
  {
    v52 = v48;
  }

  v72 = v52;
  v53 = v73;
  v54 = v47;
  sub_24F928398();
  v55 = sub_24F928258();
  v57 = v56;
  v42(v53, v8);
  if (v57)
  {
    v58 = 0;
  }

  else
  {
    v58 = v55;
  }

  v59 = v71;
  sub_24F928398();
  v60 = sub_24F928348();
  v62 = v61;
  v51(v59, v41);
  v63 = (*(v74 + 168))(v80, &v77, v68, v67, v69, v72, v58, v60, v45, v62);
  v64 = sub_24F9285B8();
  (*(*(v64 - 8) + 8))(v75, v64);
  v51(v54, v41);
  return v63;
}

uint64_t Ratings.productId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit7Ratings_productId);

  return v1;
}

uint64_t Ratings.status.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit7Ratings_status);

  return v1;
}

uint64_t sub_24ECE6674()
{
}

uint64_t Ratings.deinit()
{
  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit33ProductRatingsAndReviewsComponent_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return v0;
}

uint64_t Ratings.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit33ProductRatingsAndReviewsComponent_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Ratings(uint64_t a1)
{
  result = qword_27F22D990;
  if (!qword_27F22D990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_24ECE6914()
{
  type metadata accessor for AppLaunchMetricsEvent();
  swift_allocObject();
  result = AppLaunchMetricsEvent.init()();
  off_27F22D9A0 = result;
  return result;
}

id sub_24ECE6954()
{
  result = [objc_allocWithZone(MEMORY[0x277D225F0]) init];
  qword_27F22D9A8 = result;
  return result;
}

id static PendingAppLaunch.didFailToLaunch()()
{
  v0 = sub_24F91F648();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F210618 != -1)
  {
    swift_once();
  }

  v4 = qword_27F22D9A8;
  [qword_27F22D9A8 lock];
  if (qword_27F210610 != -1)
  {
    swift_once();
  }

  v5 = off_27F22D9A0;
  if (off_27F22D9A0)
  {

    sub_24F91F638();
    sub_24F91F5E8();
    v7 = v6;
    (*(v1 + 8))(v3, v0);
    swift_beginAccess();
    v5[20] = v7;
    *(v5 + 168) = 0;
  }

  return [v4 unlock];
}

id static PendingAppLaunch.didBuildDependencies(_:)()
{
  if (qword_27F210618 != -1)
  {
    swift_once();
  }

  v0 = qword_27F22D9A8;
  [qword_27F22D9A8 lock];
  if (qword_27F210610 != -1)
  {
    swift_once();
  }

  v1 = off_27F22D9A0;
  if (off_27F22D9A0)
  {

    v2 = sub_24F92AB58();
    swift_beginAccess();
    v1[26] = v2;
  }

  return [v0 unlock];
}

void static PendingAppLaunch.didFinishLaunch(postEventUsing:topic:)(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v7 = sub_24F927E38();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  if ((byte_27F22D288 & 1) == 0)
  {
    sub_24E74EC40();
    *v10 = sub_24F92BEF8();
    (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
    v12 = sub_24F927E68();
    (*(v8 + 8))(v10, v7);
    if (v12)
    {
      if (qword_27F210618 == -1)
      {
LABEL_9:
        v13 = qword_27F22D9A8;
        [qword_27F22D9A8 lock];
        sub_24ECE6F54(a2, a3, a1);
        [v13 unlock];
        return;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_9;
  }

  if (qword_27F210580 != -1)
  {
    swift_once();
  }

  v11 = sub_24F92AAE8();
  __swift_project_value_buffer(v11, qword_27F39C3E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  sub_24F92A588();

  if (qword_27F210610 != -1)
  {
    swift_once();
  }

  off_27F22D9A0 = 0;
}

void sub_24ECE6F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a3;
  v5 = sub_24F928698();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F91F648();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F210610 != -1)
  {
    swift_once();
  }

  v13 = off_27F22D9A0;
  if (off_27F22D9A0)
  {

    sub_24F91F638();
    sub_24F91F5E8();
    v15 = v14;
    (*(v10 + 8))(v12, v9);
    swift_beginAccess();
    v13[22] = v15;
    *(v13 + 184) = 0;
    swift_beginAccess();
    v13[7] = a1;
    v13[8] = a2;

    if (sub_24EA76370(v16))
    {
      if (qword_27F210580 != -1)
      {
        swift_once();
      }

      v17 = sub_24F92AAE8();
      __swift_project_value_buffer(v17, qword_27F39C3E0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93DE60;
      v20[3] = type metadata accessor for AppLaunchMetricsEvent();
      v20[0] = v13;

      sub_24F928438();
      sub_24E857CC8(v20);
      sub_24F92A588();
    }

    AppLaunchMetricsEvent.metricsData.getter(v8);
    if (qword_27F210658 != -1)
    {
      swift_once();
    }

    v18 = sub_24F929AB8();
    __swift_project_value_buffer(v18, qword_27F22E3B8);
    sub_24F929138();

    (*(v6 + 8))(v8, v5);
    off_27F22D9A0 = 0;
  }
}

__n128 sub_24ECE7324()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213CD0, &qword_24F93B918);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24F93DE60;
  if (qword_27F210640 != -1)
  {
    v9 = v0;
    swift_once();
    v0 = v9;
  }

  *(v0 + 32) = xmmword_24F944DE0;
  *(v0 + 48) = vdupq_n_s64(0xC0C81C8000000000);
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v0 + 88) = _Q0;
  *(v0 + 104) = xmmword_27F22E220;
  __asm { FMOV            V0.2D, #20.0 }

  *(v0 + 120) = _Q0;
  *(v0 + 136) = 0;
  *(v0 + 144) = 0;
  *(v0 + 152) = 1;
  result = *MEMORY[0x277D768C8];
  v8 = *(MEMORY[0x277D768C8] + 16);
  *(v0 + 160) = *MEMORY[0x277D768C8];
  *(v0 + 176) = v8;
  qword_27F39C590 = v0;
  return result;
}

__n128 sub_24ECE740C(double a1, double a2, double a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213CD0, &qword_24F93B918);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24F93DE60;
  *(v6 + 32) = xmmword_24F944DE0;
  *(v6 + 48) = vdupq_n_s64(0xC0C81C8000000000);
  *(v6 + 64) = 0;
  *(v6 + 72) = 0;
  *(v6 + 80) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v6 + 88) = _Q0;
  *(v6 + 104) = a2;
  *(v6 + 112) = a2;
  *(v6 + 120) = a3;
  *(v6 + 128) = a3;
  *(v6 + 152) = 1;
  v12 = MEMORY[0x277D768C8];
  *(v6 + 136) = a1;
  *(v6 + 144) = a1;
  result = *v12;
  v14 = *(v12 + 16);
  *(v6 + 160) = *v12;
  *(v6 + 176) = v14;
  return result;
}

__n128 sub_24ECE74B4(double a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213CD0, &qword_24F93B918);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24F93DE60;
  if (qword_27F210640 != -1)
  {
    v12 = v2;
    swift_once();
    v2 = v12;
  }

  *(v2 + 32) = xmmword_24F944DE0;
  *(v2 + 48) = vdupq_n_s64(0xC0C81C8000000000);
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v2 + 88) = _Q0;
  *(v2 + 104) = xmmword_27F22E220;
  __asm { FMOV            V0.2D, #20.0 }

  *(v2 + 120) = _Q0;
  *(v2 + 152) = 1;
  v9 = MEMORY[0x277D768C8];
  *(v2 + 136) = a1;
  *(v2 + 144) = a1;
  result = *v9;
  v11 = *(v9 + 16);
  *(v2 + 160) = *v9;
  *(v2 + 176) = v11;
  return result;
}

uint64_t sub_24ECE75A0(uint64_t *a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_24E8617F0(v6);
  }

  v7 = v6[2];
  v9[0] = v6 + 4;
  v9[1] = v7;
  result = sub_24ECE7F0C(v9, a2, a3);
  *a1 = v6;
  return result;
}

double HorizontalAlignmentLayout.measurements(fitting:in:)(uint64_t a1, double a2, double a3)
{
  sub_24ECEAC9C(*v3, a1, &v5, a2, a3);
  sub_24ECEB94C(&v5);
  return v5.var0;
}

void HorizontalAlignmentLayout.placeChildren(relativeTo:in:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  *v26 = a2;
  *&v26[8] = a3;
  v6 = *v5;
  *&v26[16] = a4;
  *&v26[24] = a5;
  sub_24ECEAC9C(*v5, a1, &v37, a4, a5);
  v31 = 0.0;
  v32 = 0.0;
  v33 = 1;
  v34 = xmmword_24F995DF0;
  v35 = xmmword_24F995DF0;
  v36 = xmmword_24F995DF0;
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = v6 + 32;
    do
    {
      if (v8 >= *(v6 + 16))
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        return;
      }

      *v29 = v8;
      sub_24ECEB97C(v9, &v29[8]);
      if (!*&v29[40])
      {
        break;
      }

      v10 = *v29;
      *v29 = *&v29[8];
      *&v29[16] = *&v29[24];
      *&v29[32] = *&v29[40];
      *&v29[48] = *&v29[56];
      *&v29[64] = *&v29[72];
      *&v29[80] = *&v29[88];
      *&v29[96] = *&v29[104];
      *&v29[112] = *&v29[120];
      *&v29[128] = *&v29[136];
      *&v29[144] = *&v29[152];
      *&v29[160] = *&v29[168];
      *&v29[176] = v30;
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_37;
      }

      if (v10 >= *(v38 + 16))
      {
        goto LABEL_38;
      }

      v11 = (v38 + (v10 << 6));
      v13 = v11[6];
      v12 = v11[7];
      v27 = v11[8];
      v28 = v11[9];
      v14 = v11[10];
      v15 = v11[11];
      v16 = v14 + CGRectGetMinX(*v26);
      v17 = v15 + CGRectGetMinY(*v26);
      __swift_project_boxed_opaque_existential_1(&v29[8], *&v29[32]);
      v18 = v13;
      sub_24F92C1D8();
      sub_24F922228();
      HIBYTE(v33) = 1;
      if (v33)
      {
        sub_24EE6A1B8(v16, v17, v13, v12, v13, v12, v27, v28);
      }

      else
      {
        v20 = v31;
        v19 = v32;
        v39.origin.x = v16;
        v39.origin.y = v17;
        v39.size.width = v18;
        v39.size.height = v12;
        if (*(&v34 + 1) < CGRectGetMaxY(v39))
        {
          v40.origin.x = v16;
          v40.origin.y = v17;
          v40.size.width = v18;
          v40.size.height = v12;
          if (CGRectGetMaxY(v40) <= v19)
          {
            v41.origin.x = v16;
            v41.origin.y = v17;
            v41.size.width = v18;
            v41.size.height = v12;
            *(&v34 + 1) = CGRectGetMaxY(v41);
          }
        }

        v42.origin.x = v16;
        v42.origin.y = v17;
        v42.size.width = v18;
        v42.size.height = v12;
        if (*(&v35 + 1) < CGRectGetMaxX(v42))
        {
          v43.origin.x = v16;
          v43.origin.y = v17;
          v43.size.width = v18;
          v43.size.height = v12;
          if (CGRectGetMaxX(v43) <= v20)
          {
            v44.origin.x = v16;
            v44.origin.y = v17;
            v44.size.width = v18;
            v44.size.height = v12;
            *(&v35 + 1) = CGRectGetMaxX(v44);
          }
        }

        v45.origin.x = v16;
        v45.origin.y = v17;
        v45.size.width = v18;
        v45.size.height = v12;
        v21 = v27 + CGRectGetMinY(v45);
        if (v21 > 0.0 && v21 <= v19)
        {
          if (v21 < *&v36)
          {
            *&v36 = v21;
          }

          if (*(&v36 + 1) < v21)
          {
            *(&v36 + 1) = v21;
          }
        }

        v46.origin.x = v16;
        v46.origin.y = v17;
        v46.size.width = v18;
        v46.size.height = v12;
        v23 = CGRectGetMaxY(v46) - v28;
        if (v23 > 0.0 && v23 <= v19)
        {
          if (v23 < *&v36)
          {
            *&v36 = v23;
          }

          if (*(&v36 + 1) < v23)
          {
            *(&v36 + 1) = v23;
          }
        }
      }

      ++v8;
      sub_24ECEB9B4(v29);
      v9 += 184;
    }

    while (v7 != v8);
    v25 = HIBYTE(v33);
    sub_24ECEB94C(&v37);
    if (v25 != 1)
    {
      goto LABEL_35;
    }

    sub_24F922138();
  }

  else
  {
    sub_24ECEB94C(&v37);
LABEL_35:
    sub_24F922168();
  }
}

double sub_24ECE7A54(uint64_t a1, double a2, double a3)
{
  sub_24ECEAC9C(*v3, a1, &v5, a2, a3);
  sub_24ECEB94C(&v5);
  return v5.var0;
}

_BYTE *static HorizontalAlignmentLayout.SizingPolicy.policy(priority:constrainedTo:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = *result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4 & 1;
  return result;
}

double static HorizontalAlignmentLayout.Child.child(view:leadingSpace:trailingSpace:verticalAnchor:horizontalGravity:sizingPolicy:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, char *a6@<X5>, char *a7@<X6>, uint64_t a8@<X8>)
{
  v19 = *a5;
  v12 = *(a5 + 1);
  v13 = *(a5 + 2);
  v21 = *a6;
  v14 = *a7;
  v16 = *(a7 + 1);
  v15 = *(a7 + 2);
  v17 = a7[24];
  *(a8 + 32) = swift_getObjectType();
  *(a8 + 40) = a2;
  *(a8 + 8) = a1;
  sub_24E615E00(a3, a8 + 48);
  sub_24E615E00(a4, a8 + 88);
  *a8 = a1;
  *(a8 + 128) = v19;
  *(a8 + 136) = v12;
  *(a8 + 144) = v13;
  *(a8 + 152) = v14;
  *(a8 + 160) = v16;
  *(a8 + 168) = v15;
  *(a8 + 176) = v17;
  *(a8 + 177) = v21;

  swift_unknownObjectRetain();
  return result;
}

uint64_t static HorizontalAlignmentLayout.VerticalAnchor.anchor(child:at:)@<X0>(char *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *a2;
  if ((*a2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
LABEL_5:
    *a3 = v3;
    *(a3 + 8) = v4;
    *(a3 + 16) = v5;
  }

  v6 = a3;
  sub_24ECEB97C((v4 & 0x7FFFFFFFFFFFFFFFLL) + 16, v9);
  v7 = v10;
  result = sub_24ECEB9B4(v9);
  v5 = v7 + 1;
  if (!__OFADD__(v7, 1))
  {
    a3 = v6;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t HorizontalAlignmentLayout.ChildSourceOffset.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

GameStoreKit::HorizontalAlignmentLayout::SizingPolicy::Priority_optional __swiftcall HorizontalAlignmentLayout.SizingPolicy.Priority.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 4)
  {
    v2 = 3;
  }

  else
  {
    v2 = 3 - rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_24ECE7CF8()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](3 - v1);
  return sub_24F92D0B8();
}

uint64_t sub_24ECE7D78()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](3 - v1);
  return sub_24F92D0B8();
}

uint64_t HorizontalAlignmentLayout.HorizontalGravity.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

__n128 sub_24ECE7EE8()
{
  xmmword_27F22D9B0 = 0uLL;
  result = *MEMORY[0x277D22A78];
  v1 = *(MEMORY[0x277D22A78] + 16);
  xmmword_27F22D9C0 = *MEMORY[0x277D22A78];
  xmmword_27F22D9D0 = v1;
  qword_27F22D9E0 = 0;
  unk_27F22D9E8 = 0;
  return result;
}

uint64_t sub_24ECE7F0C(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = sub_24F92CD78();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      if (v6 <= 1)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DA08, &qword_24F9962C0);
        v9 = sub_24F92B618();
        *(v9 + 16) = v6 / 2;
      }

      v11[0] = v9 + 32;
      v11[1] = v6 / 2;
      v10 = v9;
      a2(v11, v12, a1, v8);
      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

uint64_t sub_24ECE8024(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + 192 * a3);
    v6 = result - a3;
LABEL_5:
    v35 = a3;
    v7 = v6;
    v19 = v5;
    while (1)
    {
      sub_24ECEBE24(v5, &v24);
      v8 = v5 - 12;
      sub_24ECEBE24((v5 - 12), v23);
      sub_24ECEBE24(&v24, v20);
      v9 = v22;
      sub_24ECEB9B4(v21);
      sub_24ECEBE24(v23, v20);
      v10 = v22;
      sub_24ECEB9B4(v21);
      sub_24ECEBE94(v23);
      result = sub_24ECEBE94(&v24);
      if (v9 >= v10)
      {
LABEL_4:
        a3 = v35 + 1;
        v5 = v19 + 12;
        --v6;
        if (v35 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v32 = v5[8];
      v33 = v5[9];
      v34[0] = v5[10];
      *(v34 + 10) = *(v5 + 170);
      v28 = v5[4];
      v29 = v5[5];
      v30 = v5[6];
      v31 = v5[7];
      v24 = *v5;
      v25 = v5[1];
      v26 = v5[2];
      v27 = v5[3];
      v11 = *(v5 - 3);
      v5[8] = *(v5 - 4);
      v5[9] = v11;
      v12 = *(v5 - 1);
      v5[10] = *(v5 - 2);
      v5[11] = v12;
      v13 = *(v5 - 7);
      v5[4] = *(v5 - 8);
      v5[5] = v13;
      v14 = *(v5 - 5);
      v5[6] = *(v5 - 6);
      v5[7] = v14;
      v15 = *(v5 - 11);
      *v5 = *v8;
      v5[1] = v15;
      v16 = *(v5 - 9);
      v5[2] = *(v5 - 10);
      v5[3] = v16;
      *(v5 - 4) = v32;
      *(v5 - 3) = v33;
      *(v5 - 2) = v34[0];
      *(v5 - 22) = *(v34 + 10);
      *(v5 - 8) = v28;
      *(v5 - 7) = v29;
      *(v5 - 6) = v30;
      *(v5 - 5) = v31;
      *v8 = v24;
      *(v5 - 11) = v25;
      *(v5 - 10) = v26;
      *(v5 - 9) = v27;
      v5 -= 12;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24ECE8228(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + 192 * a3);
    v6 = result - a3;
LABEL_6:
    v37 = a3;
    v7 = v6;
    v21 = v5;
    while (1)
    {
      sub_24ECEBE24(v5, &v26);
      v8 = v5 - 12;
      sub_24ECEBE24((v5 - 12), v25);
      sub_24ECEBE24(&v26, v22);
      v9 = v24;
      sub_24ECEB9B4(v23);
      sub_24ECEBE24(v25, v22);
      v10 = v24;
      sub_24ECEB9B4(v23);
      if (v9)
      {
        if ((v10 & 1) == 0)
        {
          sub_24ECEBE94(v25);
          result = sub_24ECEBE94(&v26);
LABEL_5:
          a3 = v37 + 1;
          v5 = v21 + 12;
          --v6;
          if (v37 + 1 == a2)
          {
            return result;
          }

          goto LABEL_6;
        }

        v11 = v25[0] < v26;
      }

      else
      {
        if (v10)
        {
          sub_24ECEBE94(v25);
          result = sub_24ECEBE94(&v26);
          goto LABEL_17;
        }

        v11 = v26 < v25[0];
      }

      v12 = v11;
      sub_24ECEBE94(v25);
      result = sub_24ECEBE94(&v26);
      if ((v12 & 1) == 0)
      {
        goto LABEL_5;
      }

LABEL_17:
      if (!v4)
      {
        __break(1u);
        return result;
      }

      v34 = v5[8];
      v35 = v5[9];
      v36[0] = v5[10];
      *(v36 + 10) = *(v5 + 170);
      v30 = v5[4];
      v31 = v5[5];
      v32 = v5[6];
      v33 = v5[7];
      v26 = *v5;
      v27 = v5[1];
      v28 = v5[2];
      v29 = v5[3];
      v13 = *(v5 - 3);
      v5[8] = *(v5 - 4);
      v5[9] = v13;
      v14 = *(v5 - 1);
      v5[10] = *(v5 - 2);
      v5[11] = v14;
      v15 = *(v5 - 7);
      v5[4] = *(v5 - 8);
      v5[5] = v15;
      v16 = *(v5 - 5);
      v5[6] = *(v5 - 6);
      v5[7] = v16;
      v17 = *(v5 - 11);
      *v5 = *v8;
      v5[1] = v17;
      v18 = *(v5 - 9);
      v5[2] = *(v5 - 10);
      v5[3] = v18;
      *(v5 - 4) = v34;
      *(v5 - 3) = v35;
      *(v5 - 2) = v36[0];
      *(v5 - 22) = *(v36 + 10);
      *(v5 - 8) = v30;
      *(v5 - 7) = v31;
      *(v5 - 6) = v32;
      *(v5 - 5) = v33;
      *v8 = v26;
      *(v5 - 11) = v27;
      *(v5 - 10) = v28;
      *(v5 - 9) = v29;
      v5 -= 12;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t sub_24ECE8478(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + 192 * a3);
    v6 = result - a3;
LABEL_6:
    v37 = a3;
    v20 = v6;
    v21 = v5;
    while (1)
    {
      sub_24ECEBE24(v5, &v26);
      v7 = v5 - 12;
      sub_24ECEBE24((v5 - 12), v25);
      sub_24ECEBE24(&v26, v22);
      v8 = v24;
      sub_24ECEB9B4(v23);
      sub_24ECEBE24(v25, v22);
      v9 = v24;
      sub_24ECEB9B4(v23);
      if (3 - v9 >= (3 - v8))
      {
        if (v9 != v8)
        {
          sub_24ECEBE94(v25);
          result = sub_24ECEBE94(&v26);
LABEL_5:
          a3 = v37 + 1;
          v5 = v21 + 12;
          v6 = v20 - 1;
          if (v37 + 1 == a2)
          {
            return result;
          }

          goto LABEL_6;
        }

        v10 = v26;
        v11 = v25[0];
        sub_24ECEBE94(v25);
        result = sub_24ECEBE94(&v26);
        if (v10 >= v11)
        {
          goto LABEL_5;
        }
      }

      else
      {
        sub_24ECEBE94(v25);
        result = sub_24ECEBE94(&v26);
      }

      if (!v4)
      {
        break;
      }

      v34 = v5[8];
      v35 = v5[9];
      v36[0] = v5[10];
      *(v36 + 10) = *(v5 + 170);
      v30 = v5[4];
      v31 = v5[5];
      v32 = v5[6];
      v33 = v5[7];
      v26 = *v5;
      v27 = v5[1];
      v28 = v5[2];
      v29 = v5[3];
      v12 = *(v5 - 3);
      v5[8] = *(v5 - 4);
      v5[9] = v12;
      v13 = *(v5 - 1);
      v5[10] = *(v5 - 2);
      v5[11] = v13;
      v14 = *(v5 - 7);
      v5[4] = *(v5 - 8);
      v5[5] = v14;
      v15 = *(v5 - 5);
      v5[6] = *(v5 - 6);
      v5[7] = v15;
      v16 = *(v5 - 11);
      *v5 = *v7;
      v5[1] = v16;
      v17 = *(v5 - 9);
      v5[2] = *(v5 - 10);
      v5[3] = v17;
      *(v5 - 4) = v34;
      *(v5 - 3) = v35;
      *(v5 - 2) = v36[0];
      *(v5 - 22) = *(v36 + 10);
      *(v5 - 8) = v30;
      *(v5 - 7) = v31;
      *(v5 - 6) = v32;
      *(v5 - 5) = v33;
      *v7 = v26;
      *(v5 - 11) = v27;
      *(v5 - 10) = v28;
      *(v5 - 9) = v29;
      v5 -= 12;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24ECE86C4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v96 = result;
  v117 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_92:
    v5 = *v96;
    if (!*v96)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_125:
      result = sub_24E86164C(v9);
      v9 = result;
    }

    v86 = v6;
    v116 = v9;
    v87 = *(v9 + 2);
    if (v87 >= 2)
    {
      while (*v117)
      {
        v6 = (v87 - 1);
        v88 = *&v9[16 * v87];
        v89 = *&v9[16 * v87 + 24];
        sub_24ECEA268((*v117 + 192 * v88), (*v117 + 192 * *&v9[16 * v87 + 16]), (*v117 + 192 * v89), v5);
        if (v86)
        {
        }

        if (v89 < v88)
        {
          goto LABEL_118;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_24E86164C(v9);
        }

        if (v87 - 2 >= *(v9 + 2))
        {
          goto LABEL_119;
        }

        v90 = &v9[16 * v87];
        *v90 = v88;
        *(v90 + 1) = v89;
        v116 = v9;
        result = sub_24E8615C0(v87 - 1);
        v9 = v116;
        v87 = *(v116 + 2);
        if (v87 <= 1)
        {
        }
      }

      goto LABEL_129;
    }
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8;
    if (v8 + 1 >= v7)
    {
      v7 = v8 + 1;
    }

    else
    {
      v11 = *v117;
      sub_24ECEBE24(*v117 + 192 * (v8 + 1), &v105);
      v91 = 192 * v8;
      sub_24ECEBE24(v11 + 192 * v8, v104);
      sub_24ECEBE24(&v105, v101);
      v99 = v103;
      sub_24ECEB9B4(v102);
      sub_24ECEBE24(v104, v101);
      v97 = v103;
      sub_24ECEB9B4(v102);
      sub_24ECEBE94(v104);
      result = sub_24ECEBE94(&v105);
      v94 = v8;
      v12 = v8 + 2;
      v13 = v11 + 192 * v8 + 384;
      while (v7 != v12)
      {
        sub_24ECEBE24(v13, &v105);
        sub_24ECEBE24(v13 - 192, v104);
        sub_24ECEBE24(&v105, v101);
        v14 = v103;
        sub_24ECEB9B4(v102);
        sub_24ECEBE24(v104, v101);
        v5 = v6;
        v15 = v7;
        v16 = v103;
        sub_24ECEB9B4(v102);
        sub_24ECEBE94(v104);
        result = sub_24ECEBE94(&v105);
        v17 = v14 < v16;
        v7 = v15;
        v6 = v5;
        v18 = !v17;
        ++v12;
        v13 += 192;
        if ((((v99 < v97) ^ v18) & 1) == 0)
        {
          v7 = v12 - 1;
          break;
        }
      }

      v10 = v8;
      if (v99 < v97)
      {
        if (v7 < v8)
        {
          goto LABEL_122;
        }

        if (v8 < v7)
        {
          v19 = 192 * v7 - 192;
          v20 = v7;
          v21 = v91;
          do
          {
            if (v10 != --v7)
            {
              v23 = *v117;
              if (!*v117)
              {
                goto LABEL_128;
              }

              v22 = (v23 + v19);
              v113 = *&v21[v23 + 128];
              v114 = *&v21[v23 + 144];
              v115[0] = *&v21[v23 + 160];
              *(v115 + 10) = *&v21[v23 + 170];
              v109 = *&v21[v23 + 64];
              v110 = *&v21[v23 + 80];
              v111 = *&v21[v23 + 96];
              v112 = *&v21[v23 + 112];
              v105 = *&v21[v23];
              v106 = *&v21[v23 + 16];
              v107 = *&v21[v23 + 32];
              v108 = *&v21[v23 + 48];
              v5 = v21;
              result = memmove(&v21[v23], (v23 + v19), 0xC0uLL);
              v21 = v5;
              v22[8] = v113;
              v22[9] = v114;
              v22[10] = v115[0];
              *(v22 + 170) = *(v115 + 10);
              v22[4] = v109;
              v22[5] = v110;
              v22[6] = v111;
              v22[7] = v112;
              *v22 = v105;
              v22[1] = v106;
              v22[2] = v107;
              v22[3] = v108;
            }

            ++v10;
            v19 -= 192;
            v21 += 192;
          }

          while (v10 < v7);
          v10 = v94;
          v7 = v20;
        }
      }
    }

    v24 = v117[1];
    if (v7 < v24)
    {
      if (__OFSUB__(v7, v10))
      {
        goto LABEL_121;
      }

      if (v7 - v10 < a4)
      {
        if (__OFADD__(v10, a4))
        {
          goto LABEL_123;
        }

        if (v10 + a4 < v24)
        {
          v24 = v10 + a4;
        }

        if (v24 < v10)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (v7 != v24)
        {
          break;
        }
      }
    }

    v8 = v7;
    if (v7 < v10)
    {
      goto LABEL_120;
    }

LABEL_31:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_24E615ED8(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v26 = *(v9 + 2);
    v25 = *(v9 + 3);
    v27 = v26 + 1;
    if (v26 >= v25 >> 1)
    {
      result = sub_24E615ED8((v25 > 1), v26 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v27;
    v28 = &v9[16 * v26];
    *(v28 + 4) = v10;
    *(v28 + 5) = v8;
    v29 = *v96;
    if (!*v96)
    {
      goto LABEL_130;
    }

    if (v26)
    {
      while (1)
      {
        v30 = v27 - 1;
        if (v27 >= 4)
        {
          break;
        }

        if (v27 == 3)
        {
          v31 = *(v9 + 4);
          v32 = *(v9 + 5);
          v41 = __OFSUB__(v32, v31);
          v33 = v32 - v31;
          v34 = v41;
LABEL_50:
          if (v34)
          {
            goto LABEL_109;
          }

          v47 = &v9[16 * v27];
          v49 = *v47;
          v48 = *(v47 + 1);
          v50 = __OFSUB__(v48, v49);
          v51 = v48 - v49;
          v52 = v50;
          if (v50)
          {
            goto LABEL_112;
          }

          v53 = &v9[16 * v30 + 32];
          v55 = *v53;
          v54 = *(v53 + 1);
          v41 = __OFSUB__(v54, v55);
          v56 = v54 - v55;
          if (v41)
          {
            goto LABEL_115;
          }

          if (__OFADD__(v51, v56))
          {
            goto LABEL_116;
          }

          if (v51 + v56 >= v33)
          {
            if (v33 < v56)
            {
              v30 = v27 - 2;
            }

            goto LABEL_71;
          }

          goto LABEL_64;
        }

        v57 = &v9[16 * v27];
        v59 = *v57;
        v58 = *(v57 + 1);
        v41 = __OFSUB__(v58, v59);
        v51 = v58 - v59;
        v52 = v41;
LABEL_64:
        if (v52)
        {
          goto LABEL_111;
        }

        v60 = &v9[16 * v30];
        v62 = *(v60 + 4);
        v61 = *(v60 + 5);
        v41 = __OFSUB__(v61, v62);
        v63 = v61 - v62;
        if (v41)
        {
          goto LABEL_114;
        }

        if (v63 < v51)
        {
          goto LABEL_3;
        }

LABEL_71:
        v68 = v30 - 1;
        if (v30 - 1 >= v27)
        {
          __break(1u);
LABEL_105:
          __break(1u);
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
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        if (!*v117)
        {
          goto LABEL_127;
        }

        v69 = *&v9[16 * v68 + 32];
        v5 = *&v9[16 * v30 + 40];
        sub_24ECEA268((*v117 + 192 * v69), (*v117 + 192 * *&v9[16 * v30 + 32]), (*v117 + 192 * v5), v29);
        if (v6)
        {
        }

        if (v5 < v69)
        {
          goto LABEL_105;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_24E86164C(v9);
        }

        if (v68 >= *(v9 + 2))
        {
          goto LABEL_106;
        }

        v70 = &v9[16 * v68];
        *(v70 + 4) = v69;
        *(v70 + 5) = v5;
        v116 = v9;
        result = sub_24E8615C0(v30);
        v9 = v116;
        v27 = *(v116 + 2);
        if (v27 <= 1)
        {
          goto LABEL_3;
        }
      }

      v35 = &v9[16 * v27 + 32];
      v36 = *(v35 - 64);
      v37 = *(v35 - 56);
      v41 = __OFSUB__(v37, v36);
      v38 = v37 - v36;
      if (v41)
      {
        goto LABEL_107;
      }

      v40 = *(v35 - 48);
      v39 = *(v35 - 40);
      v41 = __OFSUB__(v39, v40);
      v33 = v39 - v40;
      v34 = v41;
      if (v41)
      {
        goto LABEL_108;
      }

      v42 = &v9[16 * v27];
      v44 = *v42;
      v43 = *(v42 + 1);
      v41 = __OFSUB__(v43, v44);
      v45 = v43 - v44;
      if (v41)
      {
        goto LABEL_110;
      }

      v41 = __OFADD__(v33, v45);
      v46 = v33 + v45;
      if (v41)
      {
        goto LABEL_113;
      }

      if (v46 >= v38)
      {
        v64 = &v9[16 * v30 + 32];
        v66 = *v64;
        v65 = *(v64 + 1);
        v41 = __OFSUB__(v65, v66);
        v67 = v65 - v66;
        if (v41)
        {
          goto LABEL_117;
        }

        if (v33 < v67)
        {
          v30 = v27 - 2;
        }

        goto LABEL_71;
      }

      goto LABEL_50;
    }

LABEL_3:
    v7 = v117[1];
    if (v8 >= v7)
    {
      goto LABEL_92;
    }
  }

  v98 = v24;
  v92 = v6;
  v71 = v7;
  v72 = *v117;
  v5 = *v117 + 192 * v71;
  v95 = v10;
  v100 = v71;
  v73 = v10 - v71;
LABEL_83:
  v74 = v73;
  v75 = v5;
  while (1)
  {
    sub_24ECEBE24(v75, &v105);
    v76 = v75 - 12;
    sub_24ECEBE24((v75 - 12), v104);
    sub_24ECEBE24(&v105, v101);
    v77 = v103;
    sub_24ECEB9B4(v102);
    sub_24ECEBE24(v104, v101);
    v78 = v103;
    sub_24ECEB9B4(v102);
    sub_24ECEBE94(v104);
    result = sub_24ECEBE94(&v105);
    if (v77 >= v78)
    {
LABEL_82:
      v5 += 192;
      --v73;
      if (++v100 != v98)
      {
        goto LABEL_83;
      }

      v6 = v92;
      v8 = v98;
      v10 = v95;
      if (v98 < v95)
      {
        goto LABEL_120;
      }

      goto LABEL_31;
    }

    if (!v72)
    {
      break;
    }

    v113 = v75[8];
    v114 = v75[9];
    v115[0] = v75[10];
    *(v115 + 10) = *(v75 + 170);
    v109 = v75[4];
    v110 = v75[5];
    v111 = v75[6];
    v112 = v75[7];
    v105 = *v75;
    v106 = v75[1];
    v107 = v75[2];
    v108 = v75[3];
    v79 = *(v75 - 3);
    v75[8] = *(v75 - 4);
    v75[9] = v79;
    v80 = *(v75 - 1);
    v75[10] = *(v75 - 2);
    v75[11] = v80;
    v81 = *(v75 - 7);
    v75[4] = *(v75 - 8);
    v75[5] = v81;
    v82 = *(v75 - 5);
    v75[6] = *(v75 - 6);
    v75[7] = v82;
    v83 = *(v75 - 11);
    *v75 = *v76;
    v75[1] = v83;
    v84 = *(v75 - 9);
    v75[2] = *(v75 - 10);
    v75[3] = v84;
    *(v75 - 4) = v113;
    *(v75 - 3) = v114;
    *(v75 - 2) = v115[0];
    *(v75 - 22) = *(v115 + 10);
    *(v75 - 8) = v109;
    *(v75 - 7) = v110;
    *(v75 - 6) = v111;
    *(v75 - 5) = v112;
    *v76 = v105;
    *(v75 - 11) = v106;
    *(v75 - 10) = v107;
    *(v75 - 9) = v108;
    v75 -= 12;
    if (__CFADD__(v74++, 1))
    {
      goto LABEL_82;
    }
  }

  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
  return result;
}

uint64_t sub_24ECE8F94(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v104 = result;
  v127 = a3;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_117:
    v9 = *v104;
    if (!*v104)
    {
      goto LABEL_155;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_119:
      v126 = v8;
      v95 = v8;
      v96 = *(v8 + 16);
      if (v96 >= 2)
      {
        while (*v127)
        {
          v97 = *&v95[16 * v96];
          v98 = *&v95[16 * v96 + 24];
          sub_24ECEA598((*v127 + 192 * v97), (*v127 + 192 * *&v95[16 * v96 + 16]), (*v127 + 192 * v98), v9);
          if (v5)
          {
          }

          if (v98 < v97)
          {
            goto LABEL_142;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v95 = sub_24E86164C(v95);
          }

          if (v96 - 2 >= *(v95 + 2))
          {
            goto LABEL_143;
          }

          v99 = &v95[16 * v96];
          *v99 = v97;
          *(v99 + 1) = v98;
          v126 = v95;
          v8 = &v126;
          result = sub_24E8615C0(v96 - 1);
          v95 = v126;
          v96 = *(v126 + 16);
          if (v96 <= 1)
          {
          }
        }

        goto LABEL_153;
      }
    }

LABEL_149:
    result = sub_24E86164C(v8);
    v8 = result;
    goto LABEL_119;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    v10 = (v7 + 1);
    if ((v7 + 1) < v6)
    {
      v101 = v8;
      v11 = *v127;
      v12 = v7 + 1;
      sub_24ECEBE24(*v127 + 192 * v10, &v115);
      v105 = v9;
      sub_24ECEBE24(v11 + 192 * v9, v114);
      sub_24ECEBE24(&v115, v111);
      v13 = v113;
      sub_24ECEB9B4(v112);
      sub_24ECEBE24(v114, v111);
      v14 = v113;
      sub_24ECEB9B4(v112);
      v102 = v5;
      if (v13)
      {
        if ((v14 & 1) == 0)
        {
          v108 = 0;
LABEL_16:
          v17 = v12;
          sub_24ECEBE94(v114);
          result = sub_24ECEBE94(&v115);
          v18 = (v105 + 2);
          v8 = 192 * v105;
          v19 = v11 + 192 * v105 + 384;
          v20 = 192 * v105 + 192;
          while (1)
          {
            v23 = v18;
            v9 = v17;
            v5 = v20;
            if (v18 >= v6)
            {
LABEL_29:
              if (v108)
              {
                v26 = v105;
                if (v23 < v105)
                {
                  goto LABEL_146;
                }

                if (v105 >= v23)
                {
                  v10 = v23;
                  v8 = v101;
                  v5 = v102;
                  v9 = v105;
                  goto LABEL_39;
                }

                do
                {
                  if (v26 != v9)
                  {
                    v27 = *v127;
                    if (!*v127)
                    {
                      goto LABEL_152;
                    }

                    v28 = (v27 + v5);
                    v123 = *(v27 + v8 + 128);
                    v124 = *(v27 + v8 + 144);
                    v125[0] = *(v27 + v8 + 160);
                    *(v125 + 10) = *(v27 + v8 + 170);
                    v119 = *(v27 + v8 + 64);
                    v120 = *(v27 + v8 + 80);
                    v121 = *(v27 + v8 + 96);
                    v122 = *(v27 + v8 + 112);
                    v115 = *(v27 + v8);
                    v116 = *(v27 + v8 + 16);
                    v117 = *(v27 + v8 + 32);
                    v118 = *(v27 + v8 + 48);
                    result = memmove((v27 + v8), (v27 + v5), 0xC0uLL);
                    v28[8] = v123;
                    v28[9] = v124;
                    v28[10] = v125[0];
                    *(v28 + 170) = *(v125 + 10);
                    v28[4] = v119;
                    v28[5] = v120;
                    v28[6] = v121;
                    v28[7] = v122;
                    *v28 = v115;
                    v28[1] = v116;
                    v28[2] = v117;
                    v28[3] = v118;
                  }

                  ++v26;
                  v5 -= 192;
                  v8 += 192;
                  v15 = v26 < v9--;
                }

                while (v15);
              }

              v10 = v23;
              v8 = v101;
              v5 = v102;
              v9 = v105;
              goto LABEL_39;
            }

            sub_24ECEBE24(v19, &v115);
            sub_24ECEBE24(v19 - 192, v114);
            sub_24ECEBE24(&v115, v111);
            v24 = v113;
            sub_24ECEB9B4(v112);
            sub_24ECEBE24(v114, v111);
            v25 = v113;
            sub_24ECEB9B4(v112);
            if (v24)
            {
              if (v25)
              {
                v21 = v114[0] < v115;
LABEL_18:
                v22 = v21;
                goto LABEL_21;
              }

              v22 = 0;
            }

            else
            {
              if ((v25 & 1) == 0)
              {
                v21 = v115 < v114[0];
                goto LABEL_18;
              }

              v22 = 1;
            }

LABEL_21:
            sub_24ECEBE94(v114);
            result = sub_24ECEBE94(&v115);
            v18 = v23 + 1;
            v19 += 192;
            v17 = v9 + 1;
            v20 = v5 + 192;
            if (v108 != v22)
            {
              goto LABEL_29;
            }
          }
        }

        v15 = v114[0] < v115;
      }

      else
      {
        if (v14)
        {
          v16 = 1;
LABEL_15:
          v108 = v16;
          goto LABEL_16;
        }

        v15 = v115 < v114[0];
      }

      v16 = v15;
      goto LABEL_15;
    }

LABEL_39:
    v29 = v127[1];
    if (v10 < v29)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_145;
      }

      if (v10 - v9 < a4)
      {
        break;
      }
    }

LABEL_66:
    if (v10 < v9)
    {
      goto LABEL_144;
    }

    v110 = v10;
    result = swift_isUniquelyReferenced_nonNull_native();
    v48 = v5;
    if ((result & 1) == 0)
    {
      result = sub_24E615ED8(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v50 = *(v8 + 16);
    v49 = *(v8 + 24);
    v5 = v50 + 1;
    if (v50 >= v49 >> 1)
    {
      result = sub_24E615ED8((v49 > 1), v50 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v5;
    v51 = v8 + 16 * v50;
    *(v51 + 32) = v9;
    *(v51 + 40) = v110;
    v52 = *v104;
    if (!*v104)
    {
      goto LABEL_154;
    }

    if (v50)
    {
      while (1)
      {
        v53 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v54 = *(v8 + 32);
          v55 = *(v8 + 40);
          v64 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          v57 = v64;
LABEL_86:
          if (v57)
          {
            goto LABEL_133;
          }

          v70 = (v8 + 16 * v5);
          v72 = *v70;
          v71 = v70[1];
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_136;
          }

          v76 = (v8 + 32 + 16 * v53);
          v78 = *v76;
          v77 = v76[1];
          v64 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v64)
          {
            goto LABEL_139;
          }

          if (__OFADD__(v74, v79))
          {
            goto LABEL_140;
          }

          if (v74 + v79 >= v56)
          {
            if (v56 < v79)
            {
              v53 = v5 - 2;
            }

            goto LABEL_107;
          }

          goto LABEL_100;
        }

        v80 = (v8 + 16 * v5);
        v82 = *v80;
        v81 = v80[1];
        v64 = __OFSUB__(v81, v82);
        v74 = v81 - v82;
        v75 = v64;
LABEL_100:
        if (v75)
        {
          goto LABEL_135;
        }

        v83 = v8 + 16 * v53;
        v85 = *(v83 + 32);
        v84 = *(v83 + 40);
        v64 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v64)
        {
          goto LABEL_138;
        }

        if (v86 < v74)
        {
          goto LABEL_3;
        }

LABEL_107:
        v91 = v53 - 1;
        if (v53 - 1 >= v5)
        {
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        if (!*v127)
        {
          goto LABEL_151;
        }

        v92 = v8;
        v93 = *(v8 + 32 + 16 * v91);
        v9 = *(v8 + 32 + 16 * v53 + 8);
        sub_24ECEA598((*v127 + 192 * v93), (*v127 + 192 * *(v8 + 32 + 16 * v53)), (*v127 + 192 * v9), v52);
        v5 = v48;
        if (v48)
        {
        }

        if (v9 < v93)
        {
          goto LABEL_129;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = sub_24E86164C(v8);
        }

        if (v91 >= *(v92 + 2))
        {
          goto LABEL_130;
        }

        v94 = &v92[16 * v91];
        *(v94 + 4) = v93;
        *(v94 + 5) = v9;
        v126 = v92;
        result = sub_24E8615C0(v53);
        v8 = v126;
        v5 = *(v126 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v58 = v8 + 32 + 16 * v5;
      v59 = *(v58 - 64);
      v60 = *(v58 - 56);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_131;
      }

      v63 = *(v58 - 48);
      v62 = *(v58 - 40);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_132;
      }

      v65 = (v8 + 16 * v5);
      v67 = *v65;
      v66 = v65[1];
      v64 = __OFSUB__(v66, v67);
      v68 = v66 - v67;
      if (v64)
      {
        goto LABEL_134;
      }

      v64 = __OFADD__(v56, v68);
      v69 = v56 + v68;
      if (v64)
      {
        goto LABEL_137;
      }

      if (v69 >= v61)
      {
        v87 = (v8 + 32 + 16 * v53);
        v89 = *v87;
        v88 = v87[1];
        v64 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v64)
        {
          goto LABEL_141;
        }

        if (v56 < v90)
        {
          v53 = v5 - 2;
        }

        goto LABEL_107;
      }

      goto LABEL_86;
    }

LABEL_3:
    v6 = v127[1];
    v7 = v110;
    v5 = v48;
    if (v110 >= v6)
    {
      goto LABEL_117;
    }
  }

  v30 = &v9[a4];
  if (__OFADD__(v9, a4))
  {
    goto LABEL_147;
  }

  if (v30 >= v29)
  {
    v30 = v127[1];
  }

  if (v30 < v9)
  {
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  if (v10 == v30)
  {
    goto LABEL_66;
  }

  v103 = v5;
  v31 = *v127;
  v32 = *v127 + 192 * v10;
  v106 = v9;
  v107 = v30;
  v33 = &v9[-v10];
LABEL_50:
  v109 = v10;
  v34 = v33;
  v35 = v32;
  while (1)
  {
    sub_24ECEBE24(v35, &v115);
    v36 = v35 - 12;
    sub_24ECEBE24((v35 - 12), v114);
    sub_24ECEBE24(&v115, v111);
    v37 = v113;
    sub_24ECEB9B4(v112);
    sub_24ECEBE24(v114, v111);
    v38 = v113;
    sub_24ECEB9B4(v112);
    if (v37)
    {
      if ((v38 & 1) == 0)
      {
        sub_24ECEBE94(v114);
        sub_24ECEBE94(&v115);
LABEL_49:
        v10 = v109 + 1;
        v32 += 192;
        --v33;
        if ((v109 + 1) == v107)
        {
          v10 = v107;
          v5 = v103;
          v9 = v106;
          goto LABEL_66;
        }

        goto LABEL_50;
      }

      v39 = v114[0] < v115;
    }

    else
    {
      if (v38)
      {
        sub_24ECEBE94(v114);
        result = sub_24ECEBE94(&v115);
        goto LABEL_61;
      }

      v39 = v115 < v114[0];
    }

    v40 = v39;
    sub_24ECEBE94(v114);
    result = sub_24ECEBE94(&v115);
    if ((v40 & 1) == 0)
    {
      goto LABEL_49;
    }

LABEL_61:
    if (!v31)
    {
      break;
    }

    v123 = v35[8];
    v124 = v35[9];
    v125[0] = v35[10];
    *(v125 + 10) = *(v35 + 170);
    v119 = v35[4];
    v120 = v35[5];
    v121 = v35[6];
    v122 = v35[7];
    v115 = *v35;
    v116 = v35[1];
    v117 = v35[2];
    v118 = v35[3];
    v41 = *(v35 - 3);
    v35[8] = *(v35 - 4);
    v35[9] = v41;
    v42 = *(v35 - 1);
    v35[10] = *(v35 - 2);
    v35[11] = v42;
    v43 = *(v35 - 7);
    v35[4] = *(v35 - 8);
    v35[5] = v43;
    v44 = *(v35 - 5);
    v35[6] = *(v35 - 6);
    v35[7] = v44;
    v45 = *(v35 - 11);
    *v35 = *v36;
    v35[1] = v45;
    v46 = *(v35 - 9);
    v35[2] = *(v35 - 10);
    v35[3] = v46;
    *(v35 - 4) = v123;
    *(v35 - 3) = v124;
    *(v35 - 2) = v125[0];
    *(v35 - 22) = *(v125 + 10);
    *(v35 - 8) = v119;
    *(v35 - 7) = v120;
    *(v35 - 6) = v121;
    *(v35 - 5) = v122;
    *v36 = v115;
    *(v35 - 11) = v116;
    *(v35 - 10) = v117;
    *(v35 - 9) = v118;
    v35 -= 12;
    if (__CFADD__(v34++, 1))
    {
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
  return result;
}

uint64_t sub_24ECE9910(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v98 = result;
  v119 = a3;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_101:
    v7 = *v98;
    if (!*v98)
    {
      goto LABEL_139;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_103:
      v118 = v8;
      v89 = v8;
      v8 = *(v8 + 16);
      if (v8 >= 2)
      {
        while (*v119)
        {
          v90 = *&v89[16 * v8];
          v91 = *&v89[16 * v8 + 24];
          sub_24ECEA91C((*v119 + 192 * v90), (*v119 + 192 * *&v89[16 * v8 + 16]), (*v119 + 192 * v91), v7);
          if (v5)
          {
          }

          if (v91 < v90)
          {
            goto LABEL_126;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v89 = sub_24E86164C(v89);
          }

          if ((v8 - 2) >= *(v89 + 2))
          {
            goto LABEL_127;
          }

          v92 = &v89[16 * v8];
          *v92 = v90;
          *(v92 + 1) = v91;
          v118 = v89;
          result = sub_24E8615C0(v8 - 1);
          v89 = v118;
          v8 = *(v118 + 16);
          if (v8 <= 1)
          {
          }
        }

        goto LABEL_137;
      }
    }

LABEL_133:
    result = sub_24E86164C(v8);
    v8 = result;
    goto LABEL_103;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    v99 = v7;
    if (v7 + 1 < v6)
    {
      v94 = v8;
      v11 = *v119;
      sub_24ECEBE24(*v119 + 192 * v10, &v107);
      sub_24ECEBE24(v11 + 192 * v7, v106);
      sub_24ECEBE24(&v107, v103);
      v12 = v105;
      sub_24ECEB9B4(v104);
      sub_24ECEBE24(v106, v103);
      v7 = v105;
      sub_24ECEB9B4(v104);
      v96 = v5;
      if (3 - v7 >= (3 - v12))
      {
        v101 = v7 == v12 && v107 < v106[0];
      }

      else
      {
        v101 = 1;
      }

      sub_24ECEBE94(v106);
      result = sub_24ECEBE94(&v107);
      v13 = v9 + 2;
      v14 = 192 * v9;
      v15 = v11 + 192 * v9 + 384;
      v16 = v14 + 192;
      do
      {
        v19 = v13;
        v8 = v10;
        v5 = v16;
        if (v13 >= v6)
        {
          break;
        }

        sub_24ECEBE24(v15, &v107);
        sub_24ECEBE24(v15 - 192, v106);
        sub_24ECEBE24(&v107, v103);
        v7 = v105;
        sub_24ECEB9B4(v104);
        sub_24ECEBE24(v106, v103);
        v20 = v105;
        sub_24ECEB9B4(v104);
        v17 = 3 - v20 < (3 - v7) || v20 == v7 && v107 < v106[0];
        sub_24ECEBE94(v106);
        result = sub_24ECEBE94(&v107);
        v13 = v19 + 1;
        v15 += 192;
        v16 = v5 + 192;
        v18 = v101 == v17;
        v10 = v8 + 1;
      }

      while (v18);
      if (!v101)
      {
        goto LABEL_28;
      }

      v21 = v99;
      if (v19 < v99)
      {
        goto LABEL_130;
      }

      if (v99 < v19)
      {
        do
        {
          if (v21 != v8)
          {
            v23 = *v119;
            if (!*v119)
            {
              goto LABEL_136;
            }

            v24 = (v23 + v5);
            v115 = *(v23 + v14 + 128);
            v116 = *(v23 + v14 + 144);
            v117[0] = *(v23 + v14 + 160);
            v7 = &v107;
            *(v117 + 10) = *(v23 + v14 + 170);
            v111 = *(v23 + v14 + 64);
            v112 = *(v23 + v14 + 80);
            v113 = *(v23 + v14 + 96);
            v114 = *(v23 + v14 + 112);
            v107 = *(v23 + v14);
            v108 = *(v23 + v14 + 16);
            v109 = *(v23 + v14 + 32);
            v110 = *(v23 + v14 + 48);
            result = memmove((v23 + v14), (v23 + v5), 0xC0uLL);
            v24[8] = v115;
            v24[9] = v116;
            v24[10] = v117[0];
            *(v24 + 170) = *(v117 + 10);
            v24[4] = v111;
            v24[5] = v112;
            v24[6] = v113;
            v24[7] = v114;
            *v24 = v107;
            v24[1] = v108;
            v24[2] = v109;
            v24[3] = v110;
          }

          ++v21;
          v5 -= 192;
          v14 += 192;
        }

        while (v21 < v8--);
LABEL_28:
        v10 = v19;
        v8 = v94;
        v5 = v96;
        v9 = v99;
        goto LABEL_29;
      }

      v10 = v19;
      v8 = v94;
      v5 = v96;
      v9 = v99;
    }

LABEL_29:
    v25 = v119[1];
    if (v10 < v25)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_129;
      }

      if (v10 - v9 < a4)
      {
        break;
      }
    }

LABEL_50:
    if (v10 < v9)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_24E615ED8(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v42 = *(v8 + 16);
    v41 = *(v8 + 24);
    v43 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      result = sub_24E615ED8((v41 > 1), v42 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v43;
    v44 = v8 + 16 * v42;
    *(v44 + 32) = v99;
    *(v44 + 40) = v10;
    v45 = *v98;
    if (!*v98)
    {
      goto LABEL_138;
    }

    v7 = v10;
    if (v42)
    {
      while (1)
      {
        v46 = v43 - 1;
        if (v43 >= 4)
        {
          break;
        }

        if (v43 == 3)
        {
          v47 = *(v8 + 32);
          v48 = *(v8 + 40);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_70:
          if (v50)
          {
            goto LABEL_117;
          }

          v63 = (v8 + 16 * v43);
          v65 = *v63;
          v64 = v63[1];
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_120;
          }

          v69 = (v8 + 32 + 16 * v46);
          v71 = *v69;
          v70 = v69[1];
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_123;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_124;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = v43 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        v73 = (v8 + 16 * v43);
        v75 = *v73;
        v74 = v73[1];
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_84:
        if (v68)
        {
          goto LABEL_119;
        }

        v76 = v8 + 16 * v46;
        v78 = *(v76 + 32);
        v77 = *(v76 + 40);
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_122;
        }

        if (v79 < v67)
        {
          goto LABEL_3;
        }

LABEL_91:
        v84 = v46 - 1;
        if (v46 - 1 >= v43)
        {
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        if (!*v119)
        {
          goto LABEL_135;
        }

        v85 = v8;
        v86 = v8 + 32;
        v8 = *(v8 + 32 + 16 * v84);
        v87 = *(v86 + 16 * v46 + 8);
        sub_24ECEA91C((*v119 + 192 * v8), (*v119 + 192 * *(v86 + 16 * v46)), (*v119 + 192 * v87), v45);
        if (v5)
        {
        }

        if (v87 < v8)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v85 = sub_24E86164C(v85);
        }

        if (v84 >= *(v85 + 2))
        {
          goto LABEL_114;
        }

        v88 = &v85[16 * v84];
        *(v88 + 4) = v8;
        *(v88 + 5) = v87;
        v118 = v85;
        result = sub_24E8615C0(v46);
        v8 = v118;
        v43 = *(v118 + 16);
        if (v43 <= 1)
        {
          goto LABEL_3;
        }
      }

      v51 = v8 + 32 + 16 * v43;
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_115;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_116;
      }

      v58 = (v8 + 16 * v43);
      v60 = *v58;
      v59 = v58[1];
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_118;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_121;
      }

      if (v62 >= v54)
      {
        v80 = (v8 + 32 + 16 * v46);
        v82 = *v80;
        v81 = v80[1];
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_125;
        }

        if (v49 < v83)
        {
          v46 = v43 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_70;
    }

LABEL_3:
    v6 = v119[1];
    if (v7 >= v6)
    {
      goto LABEL_101;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_131;
  }

  if (v9 + a4 < v25)
  {
    v25 = v9 + a4;
  }

  if (v25 < v9)
  {
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  if (v10 == v25)
  {
    goto LABEL_50;
  }

  v100 = v25;
  v95 = v8;
  v97 = v5;
  v26 = *v119;
  v27 = *v119 + 192 * v10;
  v28 = v9 - v10;
LABEL_40:
  v102 = v10;
  v29 = v28;
  v30 = v27;
  while (1)
  {
    sub_24ECEBE24(v30, &v107);
    v31 = v30 - 12;
    sub_24ECEBE24((v30 - 12), v106);
    sub_24ECEBE24(&v107, v103);
    v7 = v105;
    sub_24ECEB9B4(v104);
    sub_24ECEBE24(v106, v103);
    v32 = v105;
    sub_24ECEB9B4(v104);
    if (3 - v32 >= (3 - v7))
    {
      if (v32 != v7)
      {
        sub_24ECEBE94(v106);
        sub_24ECEBE94(&v107);
LABEL_39:
        v10 = v102 + 1;
        v27 += 192;
        --v28;
        if (v102 + 1 == v100)
        {
          v9 = v99;
          v10 = v100;
          v8 = v95;
          v5 = v97;
          goto LABEL_50;
        }

        goto LABEL_40;
      }

      v7 = v107;
      v33 = v106[0];
      sub_24ECEBE94(v106);
      result = sub_24ECEBE94(&v107);
      if (v7 >= v33)
      {
        goto LABEL_39;
      }
    }

    else
    {
      sub_24ECEBE94(v106);
      result = sub_24ECEBE94(&v107);
    }

    if (!v26)
    {
      break;
    }

    v115 = v30[8];
    v116 = v30[9];
    v117[0] = v30[10];
    *(v117 + 10) = *(v30 + 170);
    v111 = v30[4];
    v112 = v30[5];
    v113 = v30[6];
    v114 = v30[7];
    v107 = *v30;
    v108 = v30[1];
    v109 = v30[2];
    v110 = v30[3];
    v34 = *(v30 - 3);
    v30[8] = *(v30 - 4);
    v30[9] = v34;
    v35 = *(v30 - 1);
    v30[10] = *(v30 - 2);
    v30[11] = v35;
    v36 = *(v30 - 7);
    v30[4] = *(v30 - 8);
    v30[5] = v36;
    v37 = *(v30 - 5);
    v30[6] = *(v30 - 6);
    v30[7] = v37;
    v38 = *(v30 - 11);
    *v30 = *v31;
    v30[1] = v38;
    v39 = *(v30 - 9);
    v30[2] = *(v30 - 10);
    v30[3] = v39;
    *(v30 - 4) = v115;
    *(v30 - 3) = v116;
    *(v30 - 2) = v117[0];
    *(v30 - 22) = *(v117 + 10);
    *(v30 - 8) = v111;
    *(v30 - 7) = v112;
    *(v30 - 6) = v113;
    *(v30 - 5) = v114;
    *v31 = v107;
    *(v30 - 11) = v108;
    *(v30 - 10) = v109;
    *(v30 - 9) = v110;
    v30 -= 12;
    if (__CFADD__(v29++, 1))
    {
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
  return result;
}

uint64_t sub_24ECEA268(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 192;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 192;
  if (v9 >= v11)
  {
    v19 = 192 * v11;
    if (a4 != __src || &__src[v19] <= a4)
    {
      memmove(a4, __src, 192 * v11);
    }

    v13 = &v4[v19];
    if (v10 < 192 || v6 <= v7)
    {
      v18 = v6;
    }

    else
    {
      v37 = v4;
      v31 = v7;
      do
      {
        v20 = (v6 - 192);
        v21 = v13 - 192;
        v5 -= 192;
        while (1)
        {
          v24 = v21 + 192;
          v25 = v5 + 192;
          sub_24ECEBE24(v21, v36);
          v26 = v20;
          sub_24ECEBE24(v20, v35);
          sub_24ECEBE24(v36, v32);
          v27 = v34;
          sub_24ECEB9B4(v33);
          sub_24ECEBE24(v35, v32);
          v28 = v34;
          sub_24ECEB9B4(v33);
          sub_24ECEBE94(v35);
          sub_24ECEBE94(v36);
          if (v27 < v28)
          {
            break;
          }

          if (v25 != v24)
          {
            memmove(v5, v21, 0xC0uLL);
          }

          v22 = v21 - 192;
          v5 -= 192;
          v23 = v21 > v37;
          v21 -= 192;
          v20 = v26;
          if (!v23)
          {
            v13 = v22 + 192;
            v18 = v6;
            v4 = v37;
            goto LABEL_34;
          }
        }

        v17 = v25 == v6;
        v18 = v26;
        if (!v17)
        {
          memmove(v5, v26, 0xC0uLL);
        }

        v4 = v37;
        v13 = v21 + 192;
        if (v24 <= v37)
        {
          break;
        }

        v6 = v18;
      }

      while (v18 > v31);
      v13 = v21 + 192;
    }
  }

  else
  {
    v12 = 192 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12);
    }

    v13 = &v4[v12];
    if (v8 >= 192 && v6 < v5)
    {
      while (1)
      {
        sub_24ECEBE24(v6, v36);
        sub_24ECEBE24(v4, v35);
        sub_24ECEBE24(v36, v32);
        v14 = v34;
        sub_24ECEB9B4(v33);
        sub_24ECEBE24(v35, v32);
        v15 = v34;
        sub_24ECEB9B4(v33);
        sub_24ECEBE94(v35);
        sub_24ECEBE94(v36);
        if (v14 >= v15)
        {
          break;
        }

        v16 = v6;
        v17 = v7 == v6;
        v6 += 192;
        if (!v17)
        {
          goto LABEL_12;
        }

LABEL_13:
        v7 += 192;
        if (v4 >= v13 || v6 >= v5)
        {
          goto LABEL_15;
        }
      }

      v16 = v4;
      v17 = v7 == v4;
      v4 += 192;
      if (v17)
      {
        goto LABEL_13;
      }

LABEL_12:
      memmove(v7, v16, 0xC0uLL);
      goto LABEL_13;
    }

LABEL_15:
    v18 = v7;
  }

LABEL_34:
  v29 = 192 * ((v13 - v4) / 192);
  if (v18 != v4 || v18 >= &v4[v29])
  {
    memmove(v18, v4, v29);
  }

  return 1;
}

uint64_t sub_24ECEA598(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 192;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 192;
  if (v9 >= v11)
  {
    v21 = 192 * v11;
    if (a4 != __src || &__src[v21] <= a4)
    {
      memmove(a4, __src, 192 * v11);
    }

    v13 = &v4[v21];
    if (v10 < 192 || v6 <= v7)
    {
LABEL_52:
      v20 = v6;
      goto LABEL_53;
    }

    while (1)
    {
      v20 = v6 - 192;
      v22 = v13 - 192;
      v5 -= 192;
      while (1)
      {
        sub_24ECEBE24(v22, v34);
        sub_24ECEBE24((v6 - 192), v33);
        sub_24ECEBE24(v34, v30);
        v24 = v32;
        sub_24ECEB9B4(v31);
        sub_24ECEBE24(v33, v30);
        v25 = v32;
        sub_24ECEB9B4(v31);
        if (v24)
        {
          if ((v25 & 1) == 0)
          {
            v27 = 0;
            goto LABEL_44;
          }

          v26 = v33[0] < v34[0];
        }

        else
        {
          if (v25)
          {
            v27 = 1;
            goto LABEL_44;
          }

          v26 = v34[0] < v33[0];
        }

        v27 = v26;
LABEL_44:
        sub_24ECEBE94(v33);
        sub_24ECEBE94(v34);
        if (v27)
        {
          break;
        }

        if (v5 + 192 != v22 + 192)
        {
          memmove(v5, v22, 0xC0uLL);
        }

        v23 = v22 - 192;
        v5 -= 192;
        v16 = v22 > v4;
        v22 -= 192;
        if (!v16)
        {
          v13 = v23 + 192;
          goto LABEL_52;
        }
      }

      if (v5 + 192 != v6)
      {
        memmove(v5, v6 - 192, 0xC0uLL);
      }

      v13 = v22 + 192;
      if (v22 + 192 > v4)
      {
        v6 -= 192;
        if (v20 > v7)
        {
          continue;
        }
      }

      v13 = v22 + 192;
      goto LABEL_53;
    }
  }

  v12 = 192 * v9;
  if (a4 != __dst || &__dst[v12] <= a4)
  {
    memmove(a4, __dst, v12);
  }

  v13 = &v4[v12];
  if (v8 >= 192 && v6 < v5)
  {
    do
    {
      sub_24ECEBE24(v6, v34);
      sub_24ECEBE24(v4, v33);
      sub_24ECEBE24(v34, v30);
      v14 = v32;
      sub_24ECEB9B4(v31);
      sub_24ECEBE24(v33, v30);
      v15 = v32;
      sub_24ECEB9B4(v31);
      if (v14)
      {
        if ((v15 & 1) == 0)
        {
          sub_24ECEBE94(v33);
          sub_24ECEBE94(v34);
LABEL_21:
          v18 = v4;
          v19 = v7 == v4;
          v4 += 192;
          if (v19)
          {
            goto LABEL_23;
          }

LABEL_22:
          memmove(v7, v18, 0xC0uLL);
          goto LABEL_23;
        }

        v16 = v33[0] < v34[0];
      }

      else
      {
        if (v15)
        {
          sub_24ECEBE94(v33);
          sub_24ECEBE94(v34);
          goto LABEL_18;
        }

        v16 = v34[0] < v33[0];
      }

      v17 = v16;
      sub_24ECEBE94(v33);
      sub_24ECEBE94(v34);
      if ((v17 & 1) == 0)
      {
        goto LABEL_21;
      }

LABEL_18:
      v18 = v6;
      v19 = v7 == v6;
      v6 += 192;
      if (!v19)
      {
        goto LABEL_22;
      }

LABEL_23:
      v7 += 192;
    }

    while (v4 < v13 && v6 < v5);
  }

  v20 = v7;
LABEL_53:
  v28 = 192 * ((v13 - v4) / 192);
  if (v20 != v4 || v20 >= &v4[v28])
  {
    memmove(v20, v4, v28);
  }

  return 1;
}

uint64_t sub_24ECEA91C(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = (a2 - __src) / 192;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 192;
  if (v9 >= v11)
  {
    v20 = 192 * v11;
    if (__dst != a2 || &a2[v20] <= __dst)
    {
      memmove(__dst, a2, 192 * v11);
    }

    v13 = &v4[v20];
    if (v10 < 192 || v6 <= v7)
    {
LABEL_43:
      v21 = v6;
    }

    else
    {
      do
      {
        v21 = v6 - 192;
        v22 = v13 - 192;
        v5 -= 192;
        while (1)
        {
          sub_24ECEBE24(v22, v34);
          sub_24ECEBE24((v6 - 192), v33);
          sub_24ECEBE24(v34, v30);
          v25 = v32;
          sub_24ECEB9B4(v31);
          sub_24ECEBE24(v33, v30);
          v26 = v32;
          sub_24ECEB9B4(v31);
          v27 = 3 - v26 < (3 - v25) || v26 == v25 && v34[0] < v33[0];
          sub_24ECEBE94(v33);
          sub_24ECEBE94(v34);
          if (v27)
          {
            break;
          }

          if (v5 + 192 != v22 + 192)
          {
            memmove(v5, v22, 0xC0uLL);
          }

          v23 = v22 - 192;
          v5 -= 192;
          v24 = v22 > v4;
          v22 -= 192;
          if (!v24)
          {
            v13 = v23 + 192;
            goto LABEL_43;
          }
        }

        if (v5 + 192 != v6)
        {
          memmove(v5, v6 - 192, 0xC0uLL);
        }

        v13 = v22 + 192;
        if (v22 + 192 <= v4)
        {
          break;
        }

        v6 -= 192;
      }

      while (v21 > v7);
      v13 = v22 + 192;
    }
  }

  else
  {
    v12 = 192 * v9;
    if (__dst != __src || &__src[v12] <= __dst)
    {
      memmove(__dst, __src, v12);
    }

    v13 = &v4[v12];
    if (v8 >= 192 && v6 < v5)
    {
      while (1)
      {
        sub_24ECEBE24(v6, v34);
        sub_24ECEBE24(v4, v33);
        sub_24ECEBE24(v34, v30);
        v14 = v32;
        sub_24ECEB9B4(v31);
        sub_24ECEBE24(v33, v30);
        v15 = v32;
        sub_24ECEB9B4(v31);
        if (3 - v15 < (3 - v14))
        {
          break;
        }

        if (v15 == v14)
        {
          v18 = v34[0];
          v19 = v33[0];
          sub_24ECEBE94(v33);
          sub_24ECEBE94(v34);
          if (v18 < v19)
          {
            goto LABEL_9;
          }
        }

        else
        {
          sub_24ECEBE94(v33);
          sub_24ECEBE94(v34);
        }

        v16 = v4;
        v17 = v7 == v4;
        v4 += 192;
        if (!v17)
        {
          goto LABEL_10;
        }

LABEL_11:
        v7 += 192;
        if (v4 >= v13 || v6 >= v5)
        {
          goto LABEL_42;
        }
      }

      sub_24ECEBE94(v33);
      sub_24ECEBE94(v34);
LABEL_9:
      v16 = v6;
      v17 = v7 == v6;
      v6 += 192;
      if (v17)
      {
        goto LABEL_11;
      }

LABEL_10:
      memmove(v7, v16, 0xC0uLL);
      goto LABEL_11;
    }

LABEL_42:
    v21 = v7;
  }

  v28 = 192 * ((v13 - v4) / 192);
  if (v21 != v4 || v21 >= &v4[v28])
  {
    memmove(v21, v4, v28);
  }

  return 1;
}

void sub_24ECEAC9C(uint64_t a1@<X0>, uint64_t a2@<X1>, JUMeasurements *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v97 = a2;
  v90 = a5;
  v92 = a4;
  v88 = a3;
  v6 = v126;
  v96 = sub_24F92CDB8();
  v7 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v95 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F210628 != -1)
  {
    goto LABEL_107;
  }

  while (1)
  {
    v9 = xmmword_27F22D9C0;
    *(v6 + 13) = xmmword_27F22D9B0;
    *(v6 + 14) = v9;
    v10 = *&qword_27F22D9E0;
    *(v6 + 15) = xmmword_27F22D9D0;
    *(v6 + 16) = v10;
    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = sub_24F92B618();
      v13 = v12;
      *(v12 + 16) = v11;
      v14 = 32;
      do
      {
        v15 = (v12 + v14);
        v16 = *(v6 + 14);
        *v15 = *(v6 + 13);
        v15[1] = v16;
        v17 = *(v6 + 16);
        v15[2] = *(v6 + 15);
        v15[3] = v17;
        v14 += 64;
        --v11;
      }

      while (v11);
    }

    else
    {
      v13 = MEMORY[0x277D84F90];
    }

    v91 = a1;
    sub_24F406A20(a1);
    *&v126[0] = v18;
    sub_24ECE75A0(v126, sub_24ECE9910, sub_24ECE8478);
    v89 = 0;
    v98 = *&v126[0];
    v19 = *(*&v126[0] + 16);
    v102 = v13 + 32;
    v103 = *&v13;
    v94 = v19;
    if (v19)
    {
      v20 = 0;
      v6 = (v98 + 32);
      v93 = v7 + 1;
      v21 = v92;
      while (v20 < *(v98 + 16))
      {
        sub_24ECEBE24(v6, v126);
        v113 = *(v126 + 8);
        v114 = *(&v126[1] + 8);
        v111 = v126[9];
        v112[0] = v126[10];
        *(v112 + 10) = *(&v126[10] + 10);
        v107 = v126[5];
        v108 = v126[6];
        v109 = v126[7];
        v110 = v126[8];
        v105 = v126[3];
        v106 = v126[4];
        if (!*(&v126[2] + 1))
        {
          goto LABEL_20;
        }

        v99 = v20;
        v100 = v6;
        v101 = *&v126[0];
        v126[0] = v113;
        v126[1] = v114;
        *(&v126[7] + 8) = v110;
        *(&v126[8] + 8) = v111;
        *(&v126[9] + 8) = v112[0];
        *(&v126[10] + 2) = *(v112 + 10);
        *(&v126[4] + 8) = v107;
        *(&v126[5] + 8) = v108;
        *(&v126[6] + 8) = v109;
        *(&v126[3] + 8) = v106;
        *&v126[2] = *(&v126[2] + 1);
        *(&v126[2] + 8) = v105;
        v22 = v107;
        __swift_project_boxed_opaque_existential_1(&v126[3], v107);
        a1 = v95;
        sub_24E8ED7D8(v22);
        v23 = sub_24F9223A8();
        v24 = *v93;
        v6 = v96;
        (*v93)(a1, v96);
        v25 = *&v126[7];
        __swift_project_boxed_opaque_existential_1(&v126[5] + 1, *&v126[7]);
        sub_24E8ED7D8(v25);
        v26 = sub_24F9223A8();
        v24(a1, v6);
        if (v21 - v23 - v26 < 0.0)
        {
          v27 = 0.0;
        }

        else
        {
          v27 = v21 - v23 - v26;
        }

        v7 = __swift_project_boxed_opaque_existential_1(v126 + 1, *&v126[2]);
        sub_24F922288();
        if (v27 - v28 < 0.0)
        {
          v21 = 0.0;
        }

        else
        {
          v21 = v27 - v28;
        }

        if ((v101 & 0x8000000000000000) != 0)
        {
          goto LABEL_95;
        }

        v13 = *&v103;
        if (v101 >= *(*&v103 + 16))
        {
          goto LABEL_96;
        }

        v32 = v102 + (v101 << 6);
        *v32 = v23;
        *(v32 + 8) = v26;
        v20 = v99 + 1;
        *(v32 + 16) = v28;
        *(v32 + 24) = v29;
        *(v32 + 32) = v30;
        *(v32 + 40) = v31;
        *(v32 + 48) = 0;
        *(v32 + 56) = 0;
        sub_24ECEB9B4(v126);
        v6 = v100 + 192;
        if (v94 == v20)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
      goto LABEL_94;
    }

LABEL_20:

    sub_24F406A20(v91);
    *&v126[0] = v33;
    a1 = v126;
    v34 = v89;
    sub_24ECE75A0(v126, sub_24ECE8F94, sub_24ECE8228);
    if (v34)
    {
      v86 = v34;
LABEL_109:

      __break(1u);

      __break(1u);
      return;
    }

    v7 = *&v126[0];
    v35 = *(*&v126[0] + 16);
    if (!v35)
    {
      break;
    }

    v36 = 0;
    v6 = (*&v126[0] + 32);
    v37 = 0.0;
    v38 = v92;
    while (v36 < *(v7 + 2))
    {
      sub_24ECEBE24(v6, v126);
      v39 = *&v126[0];
      v113 = *(v126 + 8);
      v114 = *(&v126[1] + 8);
      v111 = v126[9];
      v112[0] = v126[10];
      *(v112 + 10) = *(&v126[10] + 10);
      v107 = v126[5];
      v108 = v126[6];
      v109 = v126[7];
      v110 = v126[8];
      v105 = v126[3];
      v106 = v126[4];
      if (!*(&v126[2] + 1))
      {
        goto LABEL_32;
      }

      v126[0] = v113;
      v126[1] = v114;
      *(&v126[7] + 8) = v110;
      *(&v126[8] + 8) = v111;
      *(&v126[9] + 8) = v112[0];
      *(&v126[10] + 2) = *(v112 + 10);
      *(&v126[3] + 8) = v106;
      *(&v126[4] + 8) = v107;
      *(&v126[5] + 8) = v108;
      *(&v126[6] + 8) = v109;
      *&v126[2] = *(&v126[2] + 1);
      *(&v126[2] + 8) = v105;
      if ((v39 & 0x8000000000000000) != 0)
      {
        goto LABEL_97;
      }

      if (v39 >= *(v13 + 16))
      {
        goto LABEL_98;
      }

      v40 = (v102 + (v39 << 6));
      v42 = *v40;
      v41 = v40[1];
      v43 = v40[2];
      if (BYTE1(v126[11]))
      {
        v44 = v38 - v43 - v41;
        v38 = v38 - (v41 + v42 + v43);
      }

      else
      {
        v44 = v37 + v42;
        v37 = v37 + v41 + v42 + v43;
      }

      sub_24ECEB9B4(v126);
      if (v39 >= *(v13 + 16))
      {
        goto LABEL_99;
      }

      ++v36;
      v40[6] = v44;
      v6 += 192;
      if (v35 == v36)
      {
        goto LABEL_32;
      }
    }

LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:
    swift_once();
  }

LABEL_32:

  sub_24F406A20(v91);
  v125 = v45;
  sub_24ECE75A0(&v125, sub_24ECE86C4, sub_24ECE8024);
  a1 = v125;
  *&v123 = v92;
  *(&v123 + 1) = v90;
  *v124 = 0;
  v6 = &v113;
  memset(&v124[8], 0, 32);
  *&v124[40] = xmmword_24F995DF0;
  v46 = sub_24E60BF00(MEMORY[0x277D84F90]);
  v7 = v126;
  v100 = *(a1 + 16);
  if (v100)
  {
    v34 = 0;
    v101 = a1 + 32;
    v99 = a1;
    while (1)
    {
      if (v34 >= *(a1 + 16))
      {
        goto LABEL_100;
      }

      sub_24ECEBE24(v101, v126);
      v48 = *&v126[0];
      v121 = *(v126 + 8);
      v122 = *(&v126[1] + 8);
      v119 = v126[9];
      v120[0] = v126[10];
      *(v120 + 10) = *(&v126[10] + 10);
      v115 = v126[5];
      v116 = v126[6];
      v117 = v126[7];
      v118 = v126[8];
      v113 = v126[3];
      v114 = v126[4];
      if (!*(&v126[2] + 1))
      {
        goto LABEL_92;
      }

      v126[0] = v121;
      v126[1] = v122;
      *(&v126[7] + 8) = v118;
      *(&v126[8] + 8) = v119;
      *(&v126[9] + 8) = v120[0];
      *(&v126[10] + 2) = *(v120 + 10);
      *(&v126[3] + 8) = v114;
      *(&v126[4] + 8) = v115;
      *(&v126[5] + 8) = v116;
      *(&v126[6] + 8) = v117;
      *&v126[2] = *(&v126[2] + 1);
      *(&v126[2] + 8) = v113;
      if ((v48 & 0x8000000000000000) != 0)
      {
        goto LABEL_101;
      }

      if (v48 >= *(*&v103 + 16))
      {
        goto LABEL_102;
      }

      v49 = (v102 + (v48 << 6));
      v50 = v49[2];
      v51 = v49[3];
      v53 = v49[4];
      v52 = v49[5];
      a1 = LOBYTE(v126[8]);
      if ((*(&v126[8] + 1) & 0x8000000000000000) == 0)
      {
        v54 = *(*(&v126[8] + 1) + 16);
        if (LOBYTE(v126[8]) > 1u)
        {
          goto LABEL_42;
        }

        goto LABEL_52;
      }

      v6 = (*(&v126[8] + 1) & 0x7FFFFFFFFFFFFFFFLL);
      v56 = *((*(&v126[8] + 1) & 0x7FFFFFFFFFFFFFFFLL) + 0xC2);
      sub_24ECEB97C((*(&v126[8] + 1) & 0x7FFFFFFFFFFFFFFFLL) + 16, &v105);
      if (!*(v46 + 2) || (v7 = v46, v57 = sub_24E76D97C(v105), (v58 & 1) == 0))
      {
        sub_24ECEB9B4(&v105);
        v54 = 0.0;
        if (a1 > 1)
        {
          goto LABEL_42;
        }

        goto LABEL_52;
      }

      v59 = (*(v46 + 7) + (v57 << 6));
      v61 = v59[3];
      v60 = v59[4];
      v62 = v59[5];
      v63 = v59[7];

      sub_24ECEB9B4(&v105);

      if (v56 <= 1)
      {
        break;
      }

      if (v56 != 2)
      {
        if (v56 != 3)
        {
          v60 = v61 - v62;
        }

        goto LABEL_87;
      }

      v54 = v63 + v61;
      if (a1 > 1)
      {
LABEL_42:
        v55 = v51;
        if (a1 != 2)
        {
          v55 = v53;
          if (a1 != 3)
          {
            v55 = v51 - v52;
          }
        }

        goto LABEL_54;
      }

LABEL_52:
      v55 = 0.0;
      if (a1)
      {
        v55 = v51 * 0.5;
      }

LABEL_54:
      if (v48 >= *(*&v103 + 16))
      {
        goto LABEL_103;
      }

      v64 = v54 - v55;
      v49[7] = v54 - v55;
      v65 = v49[3];
      v66 = v49[6] - *v49;
      v67 = v49[1] + *v49 + v49[2];
      v124[1] = 1;
      if (v124[0])
      {
        v7 = &v123;
        sub_24EE6A1B8(v66, v64, v67, v65, v50, v51, v53, v52);
      }

      else
      {
        v77 = *(&v123 + 1);
        v78 = *&v123;
        v127.origin.x = v66;
        v127.origin.y = v64;
        v127.size.width = v67;
        v127.size.height = v65;
        if (*&v124[16] < CGRectGetMaxY(v127))
        {
          v128.origin.x = v66;
          v128.origin.y = v64;
          v128.size.width = v67;
          v128.size.height = v65;
          if (CGRectGetMaxY(v128) <= v77)
          {
            v129.origin.x = v66;
            v129.origin.y = v64;
            v129.size.width = v67;
            v129.size.height = v65;
            *&v124[16] = CGRectGetMaxY(v129);
          }
        }

        v130.origin.x = v66;
        v130.origin.y = v64;
        v130.size.width = v67;
        v130.size.height = v65;
        if (*&v124[32] < CGRectGetMaxX(v130))
        {
          v131.origin.x = v66;
          v131.origin.y = v64;
          v131.size.width = v67;
          v131.size.height = v65;
          if (CGRectGetMaxX(v131) <= v78)
          {
            v132.origin.x = v66;
            v132.origin.y = v64;
            v132.size.width = v67;
            v132.size.height = v65;
            *&v124[32] = CGRectGetMaxX(v132);
          }
        }

        v133.origin.x = v66;
        v133.origin.y = v64;
        v133.size.width = v67;
        v133.size.height = v65;
        v79 = v53 + CGRectGetMinY(v133);
        if (v79 > 0.0 && v79 <= v77)
        {
          if (v79 < *&v124[40])
          {
            *&v124[40] = v79;
          }

          if (*&v124[48] < v79)
          {
            *&v124[48] = v79;
          }
        }

        v134.origin.x = v66;
        v134.origin.y = v64;
        v134.size.width = v67;
        v134.size.height = v65;
        v80 = CGRectGetMaxY(v134) - v52;
        if (v80 > 0.0 && v80 <= v77)
        {
          if (v80 < *&v124[40])
          {
            *&v124[40] = v80;
          }

          if (*&v124[48] < v80)
          {
            *&v124[48] = v80;
          }
        }
      }

      if (v48 >= *(*&v103 + 16))
      {
        goto LABEL_104;
      }

      v6 = *&v126[0];
      v105 = *v49;
      v106 = *(v49 + 1);
      v107 = *(v49 + 2);
      v108 = *(v49 + 3);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v104 = v46;
      v7 = v46;
      v69 = sub_24E76D97C(v6);
      v71 = *(v46 + 2);
      v72 = (v70 & 1) == 0;
      v73 = __OFADD__(v71, v72);
      v74 = v71 + v72;
      if (v73)
      {
        goto LABEL_105;
      }

      v75 = v70;
      if (*(v46 + 3) >= v74)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v7 = &v104;
          v84 = v69;
          sub_24E8B0160();
          v69 = v84;
        }
      }

      else
      {
        sub_24E89CFB8(v74, isUniquelyReferenced_nonNull_native);
        v7 = v104;
        v69 = sub_24E76D97C(v6);
        if ((v75 & 1) != (v76 & 1))
        {
          sub_24F92CF88();
          __break(1u);
          v86 = v89;
          goto LABEL_109;
        }
      }

      a1 = v99;
      v46 = v104;
      if (v75)
      {
        v47 = (*(v104 + 7) + (v69 << 6));
        *v47 = v105;
        v47[1] = v106;
        v47[2] = v107;
        v47[3] = v108;
        sub_24ECEB9B4(v126);
      }

      else
      {
        *(v104 + (v69 >> 6) + 8) |= 1 << v69;
        *(*(v46 + 6) + 8 * v69) = v6;
        v81 = (*(v46 + 7) + (v69 << 6));
        *v81 = v105;
        v81[1] = v106;
        v81[2] = v107;
        v81[3] = v108;
        sub_24ECEB9B4(v126);
        v82 = *(v46 + 2);
        v73 = __OFADD__(v82, 1);
        v83 = v82 + 1;
        if (v73)
        {
          goto LABEL_106;
        }

        *(v46 + 2) = v83;
      }

      ++v34;
      v101 += 192;
      v7 = v126;
      v6 = &v113;
      if (v100 == v34)
      {
        goto LABEL_91;
      }
    }

    v60 = 0.0;
    if (v56)
    {
      v60 = v61 * 0.5;
    }

LABEL_87:
    v54 = v63 + v60;
    if (a1 > 1)
    {
      goto LABEL_42;
    }

    goto LABEL_52;
  }

LABEL_91:
  memset(v126, 0, 186);
  v121 = *(v126 + 8);
  v122 = *(&v126[1] + 8);
  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v113 = 0u;
  *(v120 + 10) = *(&v126[10] + 10);
  v119 = 0u;
  v120[0] = 0u;
  v118 = 0u;
LABEL_92:

  v126[2] = *&v124[16];
  v126[3] = *&v124[32];
  *&v126[4] = *&v124[48];
  v126[0] = v123;
  v126[1] = *v124;
  v135 = FrameAccumulator.measurements()();
  v85 = v88;
  *v88 = v135;
  v85[1].var0 = v103;
  v135.var0 = v90;
  v85[1].var1 = v92;
  v85[1].var2 = v135.var0;
}

unint64_t sub_24ECEB9E8()
{
  result = qword_27F22D9F0;
  if (!qword_27F22D9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D9F0);
  }

  return result;
}

unint64_t sub_24ECEBA40()
{
  result = qword_27F22D9F8;
  if (!qword_27F22D9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D9F8);
  }

  return result;
}

unint64_t sub_24ECEBA98()
{
  result = qword_27F22DA00;
  if (!qword_27F22DA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DA00);
  }

  return result;
}

__n128 __swift_memcpy178_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 88);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_24ECEBB44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 178))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24ECEBB8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *(result + 176) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 178) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 178) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24ECEBC0C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && a1[24])
  {
    return (*a1 + 252);
  }

  v3 = *a1;
  v4 = v3 >= 5;
  v5 = v3 - 5;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_24ECEBC50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

uint64_t sub_24ECEBCC4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[25])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_24ECEBD08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_24ECEBD80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24ECEBDC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24ECEBE24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DA08, &qword_24F9962C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ECEBE94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DA08, &qword_24F9962C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double ContactLockup.id.getter@<D0>(uint64_t a1@<X8>)
{
  sub_24E60169C(v1, v5, &qword_27F213F18, &qword_24F93BE20);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t type metadata accessor for ContactLockup(uint64_t a1)
{
  result = qword_27F22DA40;
  if (!qword_27F22DA40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double ContactLockup.segue.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ContactLockup(0);
  sub_24E60169C(v1 + *(v3 + 40), v6, qword_27F24EC90, &unk_24F93C1D0);
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  return result;
}

uint64_t ContactLockup.contextMenu.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  v6 = type metadata accessor for ContactLockup(0);
  sub_24E60169C(v1 + *(v6 + 48), v5, &qword_27F215440, &unk_24F942BD0);
  return sub_24E6009C8(v5, a1, &qword_27F215460, &qword_24F942C00);
}

uint64_t sub_24ECEC26C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  v7 = type metadata accessor for ContactLockup(0);
  sub_24E60169C(a1 + *(v7 + 48), v6, &qword_27F215440, &unk_24F942BD0);
  return sub_24E6009C8(v6, a2, &qword_27F215460, &qword_24F942C00);
}

unint64_t sub_24ECEC3C4(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 25705;
    v6 = 0x4C7972616D697270;
    if (a1 != 2)
    {
      v6 = 0x614C786966657270;
    }

    if (a1)
    {
      v5 = 0x726174617661;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6575676573;
    v2 = 0x654D6C6169636F73;
    if (a1 != 7)
    {
      v2 = 0x4D747865746E6F63;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x634170756B636F6CLL;
    if (a1 != 4)
    {
      v3 = 0xD000000000000011;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_24ECEC500@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24ECEF558(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24ECEC528(uint64_t a1)
{
  v2 = sub_24ECECA20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ECEC564(uint64_t a1)
{
  v2 = sub_24ECECA20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ContactLockup.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DA10, &qword_24F9962F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24ECECA20();
  sub_24F92D128();
  LOBYTE(v15) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
  sub_24E602068(&qword_27F214040, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DB8]);
  sub_24F92CD48();
  if (!v2)
  {
    v9 = type metadata accessor for ContactLockup(0);
    LOBYTE(v15) = 1;
    type metadata accessor for PlayerAvatar(0);
    sub_24ECEFA04(&qword_27F218A38, type metadata accessor for PlayerAvatar, &protocol conformance descriptor for PlayerAvatar);
    sub_24F92CCF8();
    LOBYTE(v15) = 2;
    sub_24F92CD08();
    LOBYTE(v15) = 3;
    sub_24F92CCA8();
    v10 = v3 + *(v9 + 32);
    v11 = *(v10 + 8);
    v12 = *(v10 + 16);
    v15 = *v10;
    v16 = v11;
    v17 = v12;
    HIBYTE(v14) = 4;
    sub_24ECECA74(v15, v11, v12);
    sub_24ECECA8C();
    sub_24F92CCF8();
    sub_24E640000(v15, v16, v17);
    LOBYTE(v15) = 5;
    sub_24F929608();
    sub_24ECEFA04(&qword_27F214058, MEMORY[0x277D21F70], MEMORY[0x277D21F78]);
    sub_24F92CCF8();
    LOBYTE(v15) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050, MEMORY[0x277D21FD8], MEMORY[0x277D21D30]);
    sub_24F92CD48();
    v15 = *(v3 + *(v9 + 44));
    HIBYTE(v14) = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C1A0, &qword_24F9576D0);
    sub_24E7AA500();
    sub_24F92CD48();
    LOBYTE(v15) = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
    sub_24E65CD0C();
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_24ECECA20()
{
  result = qword_27F22DA18;
  if (!qword_27F22DA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DA18);
  }

  return result;
}

uint64_t sub_24ECECA74(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_24E672C48(a1, a2);
  }

  return a1;
}

unint64_t sub_24ECECA8C()
{
  result = qword_27F22DA20;
  if (!qword_27F22DA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DA20);
  }

  return result;
}

uint64_t ContactLockup.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v49);
  v50 = &v46 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v4 - 8);
  v51 = &v46 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227328, &unk_24F97E2A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v46 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DA28, &qword_24F9962F8);
  v53 = *(v9 - 8);
  v54 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v46 - v10;
  v12 = type metadata accessor for ContactLockup(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 20);
  v17 = type metadata accessor for PlayerAvatar(0);
  v18 = *(*(v17 - 8) + 56);
  v61 = v16;
  v18(&v14[v16], 1, 1, v17);
  v19 = &v14[v12[8]];
  *v19 = 0;
  *(v19 + 1) = 0;
  v60 = v19;
  v19[16] = -1;
  v20 = v12[9];
  v21 = sub_24F929608();
  v22 = *(*(v21 - 8) + 56);
  v58 = v20;
  v22(&v14[v20], 1, 1, v21);
  v23 = &v14[v12[10]];
  v64 = 0;
  v62 = 0u;
  v63 = 0u;
  *v23 = 0u;
  *(v23 + 16) = 0u;
  *(v23 + 32) = 0;
  v59 = v23;
  sub_24E61DA68(&v62, v23, qword_27F21B590, &unk_24F93BE30);
  v24 = v12[12];
  v25 = sub_24F92A6D8();
  v26 = *(*(v25 - 8) + 56);
  v57 = v24;
  v26(&v14[v24], 1, 1, v25);
  v27 = a1[3];
  v55 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_24ECECA20();
  v52 = v11;
  v28 = v56;
  sub_24F92D108();
  if (v28)
  {
    v30 = v61;
    __swift_destroy_boxed_opaque_existential_1(v55);
    sub_24E601704(&v14[v30], &qword_27F227328, &unk_24F97E2A0);
    v31 = v58;

    sub_24E640000(*v60, *(v60 + 1), v60[16]);
    sub_24E601704(&v14[v31], &qword_27F213E68, &unk_24F93BC80);
    sub_24E601704(v59, qword_27F24EC90, &unk_24F93C1D0);

    return sub_24E601704(&v14[v57], &qword_27F215440, &unk_24F942BD0);
  }

  else
  {
    v56 = v12;
    v29 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v65 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    sub_24F92CC68();
    v32 = v63;
    *v14 = v62;
    *(v14 + 1) = v32;
    *(v14 + 4) = v64;
    LOBYTE(v62) = 1;
    sub_24ECEFA04(&qword_27F2185A0, type metadata accessor for PlayerAvatar, &protocol conformance descriptor for PlayerAvatar);
    sub_24F92CC18();
    sub_24E61DA68(v8, &v14[v61], &qword_27F227328, &unk_24F97E2A0);
    LOBYTE(v62) = 2;
    v33 = sub_24F92CC28();
    v34 = v56;
    v35 = &v14[v56[6]];
    *v35 = v33;
    v35[1] = v36;
    LOBYTE(v62) = 3;
    v37 = sub_24F92CBC8();
    v38 = &v14[v34[7]];
    *v38 = v37;
    v38[1] = v39;
    v65 = 4;
    sub_24ECED500();
    sub_24F92CC18();
    v47 = *(&v62 + 1);
    v40 = v62;
    v41 = v63;
    v42 = v60;
    sub_24E640000(*v60, *(v60 + 1), v60[16]);
    v43 = v47;
    *v42 = v40;
    *(v42 + 1) = v43;
    v42[16] = v41;
    LOBYTE(v62) = 5;
    sub_24ECEFA04(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    sub_24F92CC18();
    sub_24E61DA68(v29, &v14[v58], &qword_27F213E68, &unk_24F93BC80);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v65 = 6;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40, MEMORY[0x277D21FD0], MEMORY[0x277D21D38]);
    sub_24F92CC68();
    sub_24E61DA68(&v62, v59, qword_27F24EC90, &unk_24F93C1D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C1A0, &qword_24F9576D0);
    v65 = 7;
    sub_24E7AA3E4();
    sub_24F92CC68();
    *&v14[v56[11]] = v62;
    LOBYTE(v62) = 8;
    sub_24E65CAA0();
    v44 = v50;
    sub_24F92CC68();
    (*(v53 + 8))(v52, v54);
    sub_24E61DA68(v44, &v14[v57], &qword_27F215440, &unk_24F942BD0);
    sub_24ECEFCD0(v14, v48, type metadata accessor for ContactLockup);
    __swift_destroy_boxed_opaque_existential_1(v55);
    return sub_24ECEFD38(v14, type metadata accessor for ContactLockup);
  }
}

unint64_t sub_24ECED500()
{
  result = qword_27F22DA30;
  if (!qword_27F22DA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DA30);
  }

  return result;
}

uint64_t sub_24ECED59C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 48), &v9 - v6, &qword_27F215440, &unk_24F942BD0);
  return sub_24E6009C8(v7, a2, &qword_27F215460, &qword_24F942C00);
}

double sub_24ECED694@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24E60169C(a1, v5, &qword_27F213F18, &qword_24F93BE20);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

double sub_24ECED6EC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ContactLockup(0);
  sub_24E60169C(a1 + *(v4 + 40), v7, qword_27F24EC90, &unk_24F93C1D0);
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v8;
  return result;
}

uint64_t sub_24ECED804(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227328, &unk_24F97E2A0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[12];

  return v15(v16, a2, v14);
}

uint64_t sub_24ECED9A8(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227328, &unk_24F97E2A0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[12];

  return v15(v16, a2, a2, v14);
}

void sub_24ECEDB38(uint64_t a1)
{
  sub_24E61C7D0(319);
  if (v1 <= 0x3F)
  {
    sub_24ECEDCEC(319, &qword_27F22DA50, type metadata accessor for PlayerAvatar);
    if (v2 <= 0x3F)
    {
      sub_24E66ECF0(319, &qword_27F254DE0, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        sub_24E66ECF0(319, &qword_27F22DA58, &type metadata for LockupAccessory);
        if (v4 <= 0x3F)
        {
          sub_24ECEDCEC(319, &qword_27F213EB0, MEMORY[0x277D21F70]);
          if (v5 <= 0x3F)
          {
            sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8, &unk_24F93D030);
            if (v6 <= 0x3F)
            {
              sub_24E65B038(319, &qword_27F21C120, &qword_27F213840, &unk_24F93B3C0);
              if (v7 <= 0x3F)
              {
                sub_24E65B038(319, &qword_27F215458, &qword_27F215460, &qword_24F942C00);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_24ECEDCEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F92C4A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_24ECEDD54()
{
  result = qword_27F22DA60;
  if (!qword_27F22DA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DA60);
  }

  return result;
}

unint64_t sub_24ECEDDAC()
{
  result = qword_27F22DA68;
  if (!qword_27F22DA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DA68);
  }

  return result;
}

unint64_t sub_24ECEDE04()
{
  result = qword_27F22DA70;
  if (!qword_27F22DA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DA70);
  }

  return result;
}

uint64_t sub_24ECEDE58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DA88, &qword_24F9965D0) - 8;
  MEMORY[0x28223BE20](v61);
  v4 = &v58 - v3;
  v59 = sub_24F9248C8();
  v5 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223760, &qword_24F96E7B8);
  MEMORY[0x28223BE20](v8);
  v10 = &v58 - v9;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223750, &qword_24F96E7B0);
  v11 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v13 = &v58 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DA90, &qword_24F9965D8);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v58 - v15;
  *v10 = sub_24F9249A8();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DA98, &unk_24F9965E0);
  sub_24ECEE3E8(a1, &v10[*(v17 + 44)]);
  v18 = sub_24F925868();
  sub_24F923318();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223788, &qword_24F96E7C8) + 36)];
  *v27 = v18;
  *(v27 + 1) = v20;
  *(v27 + 2) = v22;
  *(v27 + 3) = v24;
  *(v27 + 4) = v26;
  v27[40] = 0;
  v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223778, &qword_24F96E7C0) + 36)] = 0;
  sub_24F9248B8();
  sub_24E99CAB8();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v5 + 8))(v7, v59);
  sub_24E601704(v10, &qword_27F223760, &qword_24F96E7B8);
  v28 = type metadata accessor for ContactLockup(0);
  sub_24E993850(*(a1 + *(v28 + 44)));
  v29 = v13;
  v30 = v16;
  (*(v11 + 8))(v29, v58);
  v31 = v60;
  v32 = *(sub_24F924258() + 20);
  v33 = *MEMORY[0x277CE0118];
  v34 = sub_24F924B38();
  (*(*(v34 - 8) + 104))(&v4[v32], v33, v34);
  __asm { FMOV            V0.2D, #12.0 }

  *v4 = _Q0;
  *&v4[*(sub_24F924248() + 20)] = 0xC024000000000000;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v40 = sub_24F926D08();

  *&v4[*(v61 + 60)] = v40;
  sub_24E60169C(v4, v31, &qword_27F22DA88, &qword_24F9965D0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DAA0, &qword_24F9965F0);
  sub_24E60169C(v16, v31 + v41[9], &qword_27F22DA90, &qword_24F9965D8);
  v42 = v31 + v41[10];
  *v42 = sub_24F923398() & 1;
  *(v42 + 8) = v43;
  *(v42 + 16) = v44 & 1;
  v45 = v31 + v41[11];
  *v45 = swift_getKeyPath();
  *(v45 + 8) = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v46 = qword_27F24E488;
  v47 = sub_24F923398();
  v49 = v48;
  v51 = v50;
  v52 = v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DAA8, &qword_24F996620) + 36);
  *v52 = v46;
  *(v52 + 8) = v47 & 1;
  *(v52 + 16) = v49;
  *(v52 + 24) = v51 & 1;
  LOBYTE(v46) = sub_24F923398();
  v54 = v53;
  LOBYTE(v49) = v55;
  sub_24E601704(v4, &qword_27F22DA88, &qword_24F9965D0);
  sub_24E601704(v30, &qword_27F22DA90, &qword_24F9965D8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DAB0, &unk_24F996628);
  v57 = v31 + *(result + 36);
  *v57 = v46 & 1;
  *(v57 + 8) = v54;
  *(v57 + 16) = v49 & 1;
  return result;
}

uint64_t sub_24ECEE3E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v127 = a1;
  v125 = a2;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10);
  MEMORY[0x28223BE20](v111);
  v110 = &v106 - v2;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DAB8, &qword_24F996638);
  MEMORY[0x28223BE20](v121);
  v123 = &v106 - v3;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DAC0, &unk_24F996640);
  MEMORY[0x28223BE20](v113);
  v114 = (&v106 - v4);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DAC8, &qword_24FA03D00);
  MEMORY[0x28223BE20](v122);
  v115 = &v106 - v5;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DAD0, &qword_24F996650);
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v106 = &v106 - v6;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DAD8, &qword_24F996658);
  MEMORY[0x28223BE20](v112);
  v109 = &v106 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DAE0, &unk_24F996660);
  MEMORY[0x28223BE20](v8 - 8);
  v124 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v126 = &v106 - v11;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233C8, &unk_24F96E510);
  v12 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v14 = &v106 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227328, &unk_24F97E2A0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v106 - v16;
  v18 = type metadata accessor for PlayerAvatar(0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = (&v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22);
  v24 = &v106 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DAE8, &unk_24F996670);
  MEMORY[0x28223BE20](v25 - 8);
  v120 = &v106 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v106 - v28;
  v30 = type metadata accessor for ContactLockup(0);
  sub_24E60169C(v127 + v30[5], v17, &qword_27F227328, &unk_24F97E2A0);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_24E601704(v17, &qword_27F227328, &unk_24F97E2A0);
    v31 = 1;
    v32 = v29;
    v33 = v119;
  }

  else
  {
    sub_24E72FFFC(v17, v24);
    sub_24ECEFCD0(v24, v21, type metadata accessor for PlayerAvatar);
    LOBYTE(v132[0]) = 7;
    sub_24F8319B8(v21, v132, v14);
    sub_24F927618();
    sub_24F9238C8();
    v34 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233D0, &qword_24F958810) + 36)];
    v35 = v132[1];
    *v34 = v132[0];
    *(v34 + 1) = v35;
    *(v34 + 2) = v132[2];
    v36 = sub_24F925858();
    sub_24F923318();
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;
    sub_24ECEFD38(v24, type metadata accessor for PlayerAvatar);
    v45 = v119;
    v46 = &v14[*(v119 + 36)];
    *v46 = v36;
    *(v46 + 1) = v38;
    *(v46 + 2) = v40;
    *(v46 + 3) = v42;
    *(v46 + 4) = v44;
    v46[40] = 0;
    sub_24E6009C8(v14, v29, &qword_27F2233C8, &unk_24F96E510);
    v31 = 0;
    v32 = v29;
    v33 = v45;
  }

  (*(v12 + 56))(v32, v31, 1, v33);
  v47 = v30[7];
  v48 = (v127 + v30[6]);
  v49 = v48[1];
  v118 = *v48;
  v50 = *(v127 + v47 + 8);
  v117 = *(v127 + v47);
  v51 = v127 + v30[8];
  v52 = *(v51 + 16);
  v53 = v126;
  v119 = v50;
  v116 = v49;
  if (v52 == 255)
  {
    swift_storeEnumTagMultiPayload();
    sub_24ECEFA54();

    sub_24F924E28();
  }

  else
  {
    v55 = *v51;
    v54 = *(v51 + 8);
    if (v52)
    {
      v128 = *v51;
      v129 = v54;

      sub_24ECECA74(v55, v54, v52);
      sub_24E600AEC();
      v56 = sub_24F925E18();
      v58 = v57;
      v60 = v59;
      v127 = v32;
      sub_24F925898();
      v61 = sub_24F925C98();
      v63 = v62;
      v65 = v64;

      sub_24E600B40(v56, v58, v60 & 1);

      LODWORD(v56) = sub_24F9251C8();
      v66 = *(v111 + 36);
      v67 = *MEMORY[0x277CE13B8];
      v68 = sub_24F927748();
      v69 = v110;
      (*(*(v68 - 8) + 104))(&v110[v66], v67, v68);
      *v69 = v56;
      sub_24E602068(&qword_27F214428, &qword_27F213F10, &unk_24F93BE10, MEMORY[0x277CE03C0]);
      v70 = sub_24F925C58();
      v72 = v71;
      v74 = v73;
      v76 = v75;
      sub_24E600B40(v61, v63, v65 & 1);

      sub_24E601704(v69, &qword_27F213F10, &unk_24F93BE10);
      v77 = v114;
      *v114 = v70;
      v77[1] = v72;
      v78 = v74 & 1;
      v53 = v126;
      *(v77 + 16) = v78;
      v77[3] = v76;
      swift_storeEnumTagMultiPayload();
      sub_24E5FD138(v70, v72, v78);
      sub_24ECEFAE0();

      v79 = v115;
      sub_24F924E28();
      sub_24E60169C(v79, v123, &qword_27F22DAC8, &qword_24FA03D00);
      swift_storeEnumTagMultiPayload();
      sub_24ECEFA54();
      sub_24F924E28();
      sub_24E600B40(v70, v72, v78);

      v80 = v79;
      v32 = v127;
      v81 = &qword_27F22DAC8;
      v82 = &qword_24FA03D00;
    }

    else
    {
      sub_24E60169C(v127 + v30[10], &v128, qword_27F24EC90, &unk_24F93C1D0);
      if (v131)
      {

        sub_24ECECA74(v55, v54, v52);
        sub_24E601704(&v128, qword_27F21B590, &unk_24F93BE30);
        v83 = sub_24F926DF8();
        v84 = sub_24F925898();
        KeyPath = swift_getKeyPath();
        v128 = v83;
        v129 = KeyPath;
        v130 = v84;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F212AA0, &unk_24F9B2BE0);
        sub_24E60156C();
        v86 = v106;
        sub_24F9268B8();

        LODWORD(v83) = sub_24F9251C8();
        v87 = v108;
        v88 = (v86 + *(v108 + 36));
        v89 = *(v111 + 36);
        v90 = *MEMORY[0x277CE13B8];
        v91 = sub_24F927748();
        (*(*(v91 - 8) + 104))(&v88[v89], v90, v91);
        *v88 = v83;
        v92 = v109;
        sub_24ECEFC60(v86, v109);
        v93 = 0;
      }

      else
      {

        sub_24E601704(&v128, qword_27F21B590, &unk_24F93BE30);
        v93 = 1;
        v92 = v109;
        v87 = v108;
      }

      (*(v107 + 56))(v92, v93, 1, v87);
      sub_24E60169C(v92, v114, &qword_27F22DAD8, &qword_24F996658);
      swift_storeEnumTagMultiPayload();
      sub_24ECEFAE0();
      v94 = v115;
      sub_24F924E28();
      sub_24E60169C(v94, v123, &qword_27F22DAC8, &qword_24FA03D00);
      swift_storeEnumTagMultiPayload();
      sub_24ECEFA54();
      sub_24F924E28();
      sub_24E601704(v94, &qword_27F22DAC8, &qword_24FA03D00);
      v80 = v92;
      v81 = &qword_27F22DAD8;
      v82 = &qword_24F996658;
    }

    sub_24E601704(v80, v81, v82);
  }

  v95 = v120;
  sub_24E60169C(v32, v120, &qword_27F22DAE8, &unk_24F996670);
  v96 = v124;
  sub_24E60169C(v53, v124, &qword_27F22DAE0, &unk_24F996660);
  v97 = v125;
  sub_24E60169C(v95, v125, &qword_27F22DAE8, &unk_24F996670);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DB08, &qword_24F996680);
  v99 = (v97 + v98[12]);
  v100 = v32;
  v101 = v53;
  v102 = v116;
  *v99 = v118;
  v99[1] = v102;
  v103 = v119;
  v99[2] = v117;
  v99[3] = v103;
  v104 = v97 + v98[16];
  *v104 = 0;
  *(v104 + 8) = 1;
  sub_24E60169C(v96, v97 + v98[20], &qword_27F22DAE0, &unk_24F996660);

  sub_24E601704(v101, &qword_27F22DAE0, &unk_24F996660);
  sub_24E601704(v100, &qword_27F22DAE8, &unk_24F996670);
  sub_24E601704(v96, &qword_27F22DAE0, &unk_24F996660);

  return sub_24E601704(v95, &qword_27F22DAE8, &unk_24F996670);
}

uint64_t sub_24ECEF240(uint64_t a1)
{
  sub_24ECEF8AC();

  return sub_24F9218E8();
}

uint64_t sub_24ECEF284@<X0>(uint64_t a1@<X0>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a1;
  v7 = sub_24F91F0C8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_24F91F008();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v28 - v16;
  sub_24F91EFF8();
  if (a4)
  {

    sub_24F91F0B8();
    sub_24F91F018();
    v29 = sub_24F9258D8();
    sub_24E6584A4();
    sub_24F91F038();
    sub_24F91EEE8();
    sub_24F91EE58();
    sub_24F91EEE8();
    v18 = *(v9 + 8);
    v18(v11, v8);
    v18(v14, v8);
  }

  sub_24F91F0B8();
  sub_24F91F018();
  v29 = sub_24F925A28();
  sub_24E6584A4();
  sub_24F91F038();
  sub_24F91EEE8();
  (*(v9 + 16))(v11, v17, v8);
  v19 = sub_24F925DF8();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = *(v9 + 8);
  v26(v14, v8);
  result = (v26)(v17, v8);
  *a5 = v19;
  *(a5 + 8) = v21;
  *(a5 + 16) = v23 & 1;
  *(a5 + 24) = v25;
  return result;
}

uint64_t sub_24ECEF558(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726174617661 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4C7972616D697270 && a2 == 0xEC0000006C656261 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x614C786966657270 && a2 == 0xEB000000006C6562 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x634170756B636F6CLL && a2 == 0xEF79726F73736563 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x654D6C6169636F73 && a2 == 0xEA0000000000756ELL || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65)
  {

    return 8;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

unint64_t sub_24ECEF8AC()
{
  result = qword_27F22DA78;
  if (!qword_27F22DA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DA78);
  }

  return result;
}

unint64_t sub_24ECEF904()
{
  result = qword_27F22DA80;
  if (!qword_27F22DA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DA80);
  }

  return result;
}

uint64_t sub_24ECEFA04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24ECEFA54()
{
  result = qword_27F22DAF0;
  if (!qword_27F22DAF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22DAC8, &qword_24FA03D00);
    sub_24ECEFAE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DAF0);
  }

  return result;
}

unint64_t sub_24ECEFAE0()
{
  result = qword_27F22DAF8;
  if (!qword_27F22DAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22DAD8, &qword_24F996658);
    sub_24ECEFB64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DAF8);
  }

  return result;
}

unint64_t sub_24ECEFB64()
{
  result = qword_27F22DB00;
  if (!qword_27F22DB00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22DAD0, &qword_24F996650);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F212AA0, &unk_24F9B2BE0);
    sub_24E60156C();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F213F88, &qword_27F213F90, &qword_24F93BE60, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DB00);
  }

  return result;
}

uint64_t sub_24ECEFC60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DAD0, &qword_24F996650);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ECEFCD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24ECEFD38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24ECEFDAC()
{
  result = qword_27F22DB10;
  if (!qword_27F22DB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22DAB0, &unk_24F996628);
    sub_24ECEFE38();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DB10);
  }

  return result;
}

unint64_t sub_24ECEFE38()
{
  result = qword_27F22DB18;
  if (!qword_27F22DB18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22DAA8, &qword_24F996620);
    sub_24E602068(&qword_27F22DB20, &qword_27F22DAA0, &qword_24F9965F0, &unk_24FA2648C);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DB18);
  }

  return result;
}

uint64_t sub_24ECEFF2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24ECEFFFC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for SocialSuggestionsComponentGrid(uint64_t a1)
{
  result = qword_27F22DB28;
  if (!qword_27F22DB28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24ECF00F8(uint64_t a1)
{
  sub_24E61C7D0(319);
  if (v1 <= 0x3F)
  {
    sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8, &unk_24F93D030);
    if (v2 <= 0x3F)
    {
      sub_24E61C938(319);
      if (v3 <= 0x3F)
      {
        sub_24E65B038(319, &qword_27F21F938, &qword_27F21BE90, &qword_24F9538B0);
        if (v4 <= 0x3F)
        {
          sub_24ECF01F4();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24ECF01F4()
{
  if (!qword_27F22DB38)
  {
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F22DB38);
    }
  }
}

uint64_t sub_24ECF0244(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 153))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24ECF0264(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
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

  *(result + 153) = v3;
  return result;
}

uint64_t sub_24ECF02C8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DB88, &qword_24F9968B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24ECF1998();
  sub_24F92D128();
  LOBYTE(v14) = 0;
  sub_24F92CD38();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    sub_24F92CD38();
    v10 = *(v3 + 32);
    v14 = *(v3 + 16);
    v15 = v10;
    v16 = *(v3 + 48);
    v13 = 2;
    sub_24ECF1A40();
    sub_24F92CCF8();
    v11 = *(v3 + 72);
    v14 = *(v3 + 56);
    v15 = v11;
    v16 = *(v3 + 88);
    v13 = 3;
    sub_24F92CCF8();
    LOBYTE(v14) = 4;
    sub_24F92CCE8();
    LOBYTE(v14) = 5;
    sub_24F92CCE8();
    LOBYTE(v14) = 6;
    sub_24F92CCE8();
    LOBYTE(v14) = 7;
    sub_24F92CCE8();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_24ECF0584()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000012;
    if (v1 == 6)
    {
      v5 = 0xD000000000000010;
    }

    v6 = 0xD000000000000011;
    if (v1 == 4)
    {
      v6 = 0x5765676445706F74;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 1937207154;
    v3 = 0x746469576D657469;
    if (v1 != 2)
    {
      v3 = 0x676965486D657469;
    }

    if (*v0)
    {
      v2 = 0x726550736D657469;
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

uint64_t sub_24ECF0698@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24ECF1CC4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24ECF06C0(uint64_t a1)
{
  v2 = sub_24ECF1998();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ECF06FC(uint64_t a1)
{
  v2 = sub_24ECF1998();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24ECF0738@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_24ECF1628(a2, v9);
  if (!v2)
  {
    v5 = v9[7];
    a1[6] = v9[6];
    a1[7] = v5;
    a1[8] = v10[0];
    *(a1 + 137) = *(v10 + 9);
    v6 = v9[3];
    a1[2] = v9[2];
    a1[3] = v6;
    v7 = v9[5];
    a1[4] = v9[4];
    a1[5] = v7;
    result = *v9;
    v8 = v9[1];
    *a1 = v9[0];
    a1[1] = v8;
  }

  return result;
}

uint64_t sub_24ECF07B4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DB60, &qword_24F9968A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24ECF138C();
  sub_24F92D128();
  LOBYTE(v17) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
  sub_24E602068(&qword_27F214040, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DB8]);
  sub_24F92CD48();
  if (!v2)
  {
    LOBYTE(v17) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050, MEMORY[0x277D21FD8], MEMORY[0x277D21D30]);
    sub_24F92CD48();
    v9 = type metadata accessor for SocialSuggestionsComponentGrid(0);
    LOBYTE(v17) = 2;
    sub_24F929608();
    sub_24ECF14F4(&qword_27F214058, MEMORY[0x277D21F70], MEMORY[0x277D21F78]);
    sub_24F92CCF8();
    v27 = *(v3 + *(v9 + 28));
    v26 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F8A0, &unk_24F9608F0);
    sub_24ECF153C(&qword_27F21F8A8, &qword_27F21F8B0, MEMORY[0x277D21F20], MEMORY[0x277D21D30]);
    sub_24F92CD48();
    v10 = (v3 + *(v9 + 32));
    v11 = v10[7];
    v23 = v10[6];
    v24 = v11;
    v25[0] = v10[8];
    *(v25 + 10) = *(v10 + 138);
    v12 = v10[3];
    v19 = v10[2];
    v20 = v12;
    v13 = v10[5];
    v21 = v10[4];
    v22 = v13;
    v14 = v10[1];
    v17 = *v10;
    v18 = v14;
    v16[15] = 4;
    sub_24ECF15D4();
    sub_24F92CCF8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24ECF0B54@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v30 - v4;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DB48, &qword_24F9968A0);
  v32 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v7 = &v30 - v6;
  v8 = type metadata accessor for SocialSuggestionsComponentGrid(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v10 + 40) = 0u;
  *&v42 = 0;
  v40 = 0u;
  v41 = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 9) = 0;
  v39 = v10 + 40;
  sub_24E61DA68(&v40, (v10 + 40), qword_27F21B590, &unk_24F93BE30);
  v11 = *(v8 + 24);
  v12 = sub_24F929608();
  v13 = *(*(v12 - 8) + 56);
  v37 = v11;
  v13(&v10[v11], 1, 1, v12);
  v33 = v8;
  v14 = &v10[*(v8 + 32)];
  sub_24ECF1364(v49);
  v15 = v49[7];
  *(v14 + 6) = v49[6];
  *(v14 + 7) = v15;
  *(v14 + 8) = v50[0];
  *(v14 + 138) = *(v50 + 10);
  v16 = v49[3];
  *(v14 + 2) = v49[2];
  *(v14 + 3) = v16;
  v17 = v49[5];
  *(v14 + 4) = v49[4];
  *(v14 + 5) = v17;
  v18 = v49[1];
  *v14 = v49[0];
  *(v14 + 1) = v18;
  v19 = a1[3];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_24ECF138C();
  v34 = v7;
  v20 = v36;
  sub_24F92D108();
  if (v20)
  {
    v21 = v37;
    __swift_destroy_boxed_opaque_existential_1(v38);
    sub_24E601704(v39, qword_27F24EC90, &unk_24F93C1D0);
    return sub_24E601704(&v10[v21], &qword_27F213E68, &unk_24F93BC80);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v51 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    sub_24F92CC68();
    v22 = v41;
    *v10 = v40;
    *(v10 + 1) = v22;
    *(v10 + 4) = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v51 = 1;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40, MEMORY[0x277D21FD0], MEMORY[0x277D21D38]);
    sub_24F92CC68();
    v23 = v37;
    v24 = v32;
    sub_24E61DA68(&v40, v39, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v40) = 2;
    sub_24ECF14F4(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    sub_24F92CC18();
    sub_24E61DA68(v5, &v10[v23], &qword_27F213E68, &unk_24F93BC80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F8A0, &unk_24F9608F0);
    v51 = 3;
    sub_24ECF153C(&qword_27F21F8D0, &qword_27F21F8D8, MEMORY[0x277D21F18], MEMORY[0x277D21D38]);
    sub_24F92CC68();
    *&v10[*(v33 + 28)] = v40;
    v51 = 4;
    sub_24ECF13E0();
    sub_24F92CC18();
    (*(v24 + 8))(v34, v35);
    v25 = v47;
    *(v14 + 6) = v46;
    *(v14 + 7) = v25;
    *(v14 + 8) = v48[0];
    *(v14 + 138) = *(v48 + 10);
    v26 = v43;
    *(v14 + 2) = v42;
    *(v14 + 3) = v26;
    v27 = v45;
    *(v14 + 4) = v44;
    *(v14 + 5) = v27;
    v28 = v41;
    *v14 = v40;
    *(v14 + 1) = v28;
    sub_24ECF1434(v10, v31);
    __swift_destroy_boxed_opaque_existential_1(v38);
    return sub_24ECF1498(v10);
  }
}

unint64_t sub_24ECF11B4()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000011;
  v4 = 0x736D657469;
  if (v1 != 3)
  {
    v4 = 0x6369666963657073;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6575676573;
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

uint64_t sub_24ECF124C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24ECF1F80(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24ECF1274(uint64_t a1)
{
  v2 = sub_24ECF138C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ECF12B0(uint64_t a1)
{
  v2 = sub_24ECF138C();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24ECF1364(uint64_t a1)
{
  result = 0.0;
  *(a1 + 137) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 153) = 1;
  return result;
}

unint64_t sub_24ECF138C()
{
  result = qword_27F22DB50;
  if (!qword_27F22DB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DB50);
  }

  return result;
}

unint64_t sub_24ECF13E0()
{
  result = qword_27F22DB58;
  if (!qword_27F22DB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DB58);
  }

  return result;
}

uint64_t sub_24ECF1434(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SocialSuggestionsComponentGrid(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ECF1498(uint64_t a1)
{
  v2 = type metadata accessor for SocialSuggestionsComponentGrid(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24ECF14F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24ECF153C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21F8A0, &unk_24F9608F0);
    sub_24E602068(a2, &qword_27F21BE90, &qword_24F9538B0, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24ECF15D4()
{
  result = qword_27F22DB68;
  if (!qword_27F22DB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DB68);
  }

  return result;
}

uint64_t sub_24ECF1628@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DB70, &qword_24F9968B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24ECF1998();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v35) = 0;
  v9 = sub_24F92CC58();
  LOBYTE(v35) = 1;
  v34 = sub_24F92CC58();
  v44 = 2;
  sub_24ECF19EC();
  sub_24F92CC18();
  v32 = v36;
  v33 = v35;
  v43 = v37;
  v44 = 3;
  sub_24F92CC18();
  v30 = v36;
  v31 = v35;
  v42 = v37;
  LOBYTE(v35) = 4;
  v10 = sub_24F92CC08();
  v41 = v11 & 1;
  LOBYTE(v35) = 5;
  v29 = sub_24F92CC08();
  v40 = v12 & 1;
  LOBYTE(v35) = 6;
  v28 = sub_24F92CC08();
  v39 = v13 & 1;
  LOBYTE(v35) = 7;
  v14 = sub_24F92CC08();
  v16 = v15;
  v17 = *(v6 + 8);
  v27 = v14;
  v17(v8, v5);
  v16 &= 1u;
  v38 = v16;
  v18 = v43;
  v19 = v42;
  v20 = v41;
  v25 = v40;
  v26 = v39;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v22 = v34;
  *a2 = v9;
  *(a2 + 8) = v22;
  v23 = v32;
  *(a2 + 16) = v33;
  *(a2 + 32) = v23;
  *(a2 + 48) = v18;
  v24 = v31;
  *(a2 + 72) = v30;
  *(a2 + 56) = v24;
  *(a2 + 88) = v19;
  *(a2 + 96) = v10;
  *(a2 + 104) = v20;
  *(a2 + 112) = v29;
  *(a2 + 120) = v25;
  *(a2 + 128) = v28;
  *(a2 + 136) = v26;
  *(a2 + 144) = v27;
  *(a2 + 152) = v16;
  return result;
}

unint64_t sub_24ECF1998()
{
  result = qword_27F22DB78;
  if (!qword_27F22DB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DB78);
  }

  return result;
}

unint64_t sub_24ECF19EC()
{
  result = qword_27F22DB80;
  if (!qword_27F22DB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DB80);
  }

  return result;
}

unint64_t sub_24ECF1A40()
{
  result = qword_27F22DB90;
  if (!qword_27F22DB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DB90);
  }

  return result;
}

unint64_t sub_24ECF1AB8()
{
  result = qword_27F22DB98;
  if (!qword_27F22DB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DB98);
  }

  return result;
}

unint64_t sub_24ECF1B10()
{
  result = qword_27F22DBA0;
  if (!qword_27F22DBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DBA0);
  }

  return result;
}

unint64_t sub_24ECF1B68()
{
  result = qword_27F22DBA8;
  if (!qword_27F22DBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DBA8);
  }

  return result;
}

unint64_t sub_24ECF1BC0()
{
  result = qword_27F22DBB0;
  if (!qword_27F22DBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DBB0);
  }

  return result;
}

unint64_t sub_24ECF1C18()
{
  result = qword_27F22DBB8;
  if (!qword_27F22DBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DBB8);
  }

  return result;
}

unint64_t sub_24ECF1C70()
{
  result = qword_27F22DBC0;
  if (!qword_27F22DBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DBC0);
  }

  return result;
}

uint64_t sub_24ECF1CC4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1937207154 && a2 == 0xE400000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726550736D657469 && a2 == 0xEB00000000776F52 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746469576D657469 && a2 == 0xE900000000000068 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676965486D657469 && a2 == 0xEA00000000007468 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x5765676445706F74 && a2 == 0xED00007468676965 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA5A480 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA5A4A0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA5A4C0 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_24ECF1F80(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6369666963657073 && a2 == 0xED00006E6F697461)
  {

    return 4;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_24ECF2140(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DBD8, &qword_24F996BE8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24ECF287C();
  sub_24F92D128();
  v13 = 0;
  sub_24F92CD08();
  if (!v2)
  {
    v12 = 1;
    sub_24F92CCA8();
    v11 = *(v3 + 32);
    v10[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
    sub_24E61B71C(&qword_27F2137A0, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_24F92CCF8();
    v10[14] = 3;
    sub_24F92CD08();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_24ECF2378()
{
  v1 = 0x646E7542656D6167;
  v2 = 0x6F6272656461656CLL;
  if (*v0 != 2)
  {
    v2 = 0x4449726579616C70;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24ECF240C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24ECF29E8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24ECF2434(uint64_t a1)
{
  v2 = sub_24ECF287C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ECF2470(uint64_t a1)
{
  v2 = sub_24ECF287C();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24ECF24CC@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_24ECF2534(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t sub_24ECF2534@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DBC8, &unk_24F996BD8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24ECF287C();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = 0;
  v9 = sub_24F92CC28();
  v11 = v10;
  v26 = v9;
  v31 = 1;
  v12 = sub_24F92CBC8();
  v27 = v13;
  v25 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
  v30 = 2;
  sub_24E61B71C(&qword_27F216420, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  sub_24F92CC18();
  v24 = v28;
  v29 = 3;
  v14 = sub_24F92CC28();
  v16 = v15;
  v17 = *(v6 + 8);
  v23 = v14;
  v17(v8, v5);
  v18 = v24;

  v19 = v27;

  __swift_destroy_boxed_opaque_existential_1(a1);

  v21 = v25;
  *a2 = v26;
  a2[1] = v11;
  a2[2] = v21;
  a2[3] = v19;
  v22 = v23;
  a2[4] = v18;
  a2[5] = v22;
  a2[6] = v16;
  return result;
}

unint64_t sub_24ECF287C()
{
  result = qword_27F22DBD0;
  if (!qword_27F22DBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DBD0);
  }

  return result;
}

unint64_t sub_24ECF28E4()
{
  result = qword_27F22DBE0;
  if (!qword_27F22DBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DBE0);
  }

  return result;
}

unint64_t sub_24ECF293C()
{
  result = qword_27F22DBE8;
  if (!qword_27F22DBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DBE8);
  }

  return result;
}

unint64_t sub_24ECF2994()
{
  result = qword_27F22DBF0;
  if (!qword_27F22DBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DBF0);
  }

  return result;
}

uint64_t sub_24ECF29E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646E7542656D6167 && a2 == 0xEC0000004449656CLL;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA4D4E0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F6272656461656CLL && a2 == 0xEE00734449647261 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4449726579616C70 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t SearchLandingDiffablePageContentPresenter.__allocating_init(objectGraph:pageUrl:sidePackedPage:pendingPageRender:pageRenderMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v56 = a3;
  v57 = a4;
  v59 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - v12;
  v14 = swift_allocObject();
  v50 = a2;
  sub_24E60169C(a2, v13, &qword_27F228530, &unk_24F93C6E0);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = (v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  sub_24E911D90(v13, v17 + v15);
  v18 = v59;
  *(v17 + v16) = v59;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = a5;
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = a5;
  sub_24E60169C(a2, v10, &qword_27F228530, &unk_24F93C6E0);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_24ECB2574;
  *(v20 + 24) = v18;
  v55 = v20;
  *(v14 + qword_27F22F198) = 0;
  v21 = MEMORY[0x277D84F90];
  *(v14 + qword_27F22F1A0) = MEMORY[0x277D84F90];
  v22 = qword_27F39C780;
  v58 = a5;
  swift_retain_n();
  swift_retain_n();

  *(v14 + v22) = sub_24E60986C(v21);
  v23 = (v14 + qword_27F22F1A8);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v14 + qword_27F22F1B0);
  *v24 = 0;
  v24[1] = 0;
  v53 = v24;
  v25 = (v14 + qword_27F22F1B8);
  *v25 = 0;
  v25[1] = 0;
  v26 = (v14 + qword_27F22F1C0);
  *v26 = 0;
  v26[1] = 0;
  v52 = v26;
  v27 = (v14 + qword_27F22F1C8);
  *v27 = 0;
  v27[1] = 0;
  v51 = v27;
  v28 = (v14 + qword_27F39C788);
  *v28 = 0u;
  v28[1] = 0u;
  *(v28 + 25) = 0u;
  *(v14 + qword_27F39C790) = 0;
  *(v14 + qword_27F22F1D0) = 0;
  *(v14 + qword_27F22F1D8) = MEMORY[0x277D84FA0];
  *(v14 + qword_27F39C798) = 0;
  v29 = qword_27F39C7A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE58, &qword_24F989E30);
  swift_allocObject();
  *(v14 + v29) = sub_24F92ADA8();
  v30 = qword_27F39C7A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8, &unk_24F96A5F0);
  swift_allocObject();
  *(v14 + v30) = sub_24F92ADA8();
  v31 = qword_27F39C7B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE70, &qword_24F989E40);
  swift_allocObject();
  *(v14 + v31) = sub_24F92ADA8();
  v32 = qword_27F39C7B8;
  swift_allocObject();
  *(v14 + v32) = sub_24F92ADA8();
  v33 = qword_27F39C7C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8, &unk_24F96A600);
  swift_allocObject();
  *(v14 + v33) = sub_24F92ADA8();
  v34 = qword_27F39C7C8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0, &unk_24F989C70);
  swift_allocObject();
  v35 = sub_24F92ADA8();

  v36 = v19;

  v37 = v59;

  sub_24E601704(v50, &qword_27F228530, &unk_24F93C6E0);
  *(v14 + v34) = v35;
  v38 = qword_27F22F1E0;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D8, &unk_24F96A610);
  v40 = *(*(v39 - 8) + 56);
  v40(v14 + v38, 1, 1, v39);
  v40(v14 + qword_27F22F1E8, 1, 1, v39);
  v41 = v56;
  *(v14 + 16) = v37;
  sub_24E911D90(v54, v14 + qword_27F39C7D0);
  *v23 = sub_24ECF3B10;
  v23[1] = v17;
  *v25 = 0;
  v25[1] = 0;
  if (v41)
  {
    v42 = swift_allocObject();
    *(v42 + 16) = v41;
    v43 = sub_24E965688;
  }

  else
  {
    v43 = 0;
    v42 = 0;
  }

  v44 = v52;
  v45 = v53;
  *v53 = v43;
  v45[1] = v42;
  *v44 = sub_24ECB256C;
  v44[1] = v36;
  v46 = v51;
  v47 = v55;
  *v51 = sub_24ECF3DB0;
  v46[1] = v47;
  v48 = v58;
  *(v14 + qword_27F22F1F0) = v57;
  *(v14 + qword_27F39C7D8) = v48;
  return v14;
}

uint64_t SearchLandingDiffablePageContentPresenter.init(objectGraph:pageUrl:sidePackedPage:pendingPageRender:pageRenderMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v70 = a3;
  v71 = a4;
  v62 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v61 - v14;
  v64 = a2;
  sub_24E60169C(a2, &v61 - v14, &qword_27F228530, &unk_24F93C6E0);
  v16 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v17 = (v11 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  sub_24E911D90(v15, v18 + v16);
  v19 = v62;
  *(v18 + v17) = v62;
  *(v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)) = a5;
  v63 = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = a5;
  sub_24E60169C(a2, v12, &qword_27F228530, &unk_24F93C6E0);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_24ECF4144;
  *(v21 + 24) = v19;
  v68 = v21;
  *(v6 + qword_27F22F198) = 0;
  v22 = MEMORY[0x277D84F90];
  *(v6 + qword_27F22F1A0) = MEMORY[0x277D84F90];
  v23 = qword_27F39C780;
  v72 = a5;
  swift_retain_n();
  swift_retain_n();

  *(v6 + v23) = sub_24E60986C(v22);
  v24 = (v6 + qword_27F22F1A8);
  *v24 = 0;
  v24[1] = 0;
  v25 = (v6 + qword_27F22F1B0);
  *v25 = 0;
  v25[1] = 0;
  v26 = (v6 + qword_27F22F1B8);
  *v26 = 0;
  v26[1] = 0;
  v27 = (v6 + qword_27F22F1C0);
  *v27 = 0;
  v27[1] = 0;
  v65 = v27;
  v28 = (v6 + qword_27F22F1C8);
  *v28 = 0;
  v28[1] = 0;
  v66 = v28;
  v29 = (v6 + qword_27F39C788);
  *v29 = 0u;
  v29[1] = 0u;
  *(v29 + 25) = 0u;
  *(v6 + qword_27F39C790) = 0;
  *(v6 + qword_27F22F1D0) = 0;
  *(v6 + qword_27F22F1D8) = MEMORY[0x277D84FA0];
  *(v6 + qword_27F39C798) = 0;
  v30 = qword_27F39C7A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE58, &qword_24F989E30);
  swift_allocObject();
  *(v6 + v30) = sub_24F92ADA8();
  v31 = qword_27F39C7A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8, &unk_24F96A5F0);
  swift_allocObject();
  *(v6 + v31) = sub_24F92ADA8();
  v32 = qword_27F39C7B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE70, &qword_24F989E40);
  swift_allocObject();
  *(v6 + v32) = sub_24F92ADA8();
  v33 = qword_27F39C7B8;
  swift_allocObject();
  *(v6 + v33) = sub_24F92ADA8();
  v34 = qword_27F39C7C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8, &unk_24F96A600);
  swift_allocObject();
  *(v6 + v34) = sub_24F92ADA8();
  v35 = qword_27F39C7C8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0, &unk_24F989C70);
  swift_allocObject();
  v36 = sub_24F92ADA8();
  v37 = v63;

  v69 = v20;

  sub_24E601704(v64, &qword_27F228530, &unk_24F93C6E0);
  *(v6 + v35) = v36;
  v38 = qword_27F22F1E0;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D8, &unk_24F96A610);
  v40 = *(*(v39 - 8) + 56);
  v40(v6 + v38, 1, 1, v39);
  v41 = v39;
  v42 = v70;
  v40(v6 + qword_27F22F1E8, 1, 1, v41);
  *(v6 + 16) = v19;
  sub_24E911D90(v67, v6 + qword_27F39C7D0);
  v43 = *v24;
  v44 = v24[1];
  *v24 = sub_24ECF4140;
  v24[1] = v37;
  sub_24E824448(v43, v44);
  v45 = *v26;
  v46 = v26[1];
  *v26 = 0;
  v26[1] = 0;
  sub_24E824448(v45, v46);
  if (v42)
  {
    v47 = swift_allocObject();
    *(v47 + 16) = v42;
    v48 = sub_24EC02BCC;
  }

  else
  {
    v48 = 0;
    v47 = 0;
  }

  v50 = *v25;
  v49 = v25[1];
  *v25 = v48;
  v25[1] = v47;
  sub_24E824448(v50, v49);
  v51 = v65;
  v52 = *v65;
  v53 = v65[1];
  v54 = v69;
  *v65 = sub_24ECF4170;
  v51[1] = v54;
  sub_24E824448(v52, v53);
  v55 = v66;
  v56 = *v66;
  v57 = v66[1];
  v58 = v68;
  *v66 = sub_24ECF4148;
  v55[1] = v58;
  sub_24E824448(v56, v57);
  v59 = v72;
  *(v6 + qword_27F22F1F0) = v71;
  *(v6 + qword_27F39C7D8) = v59;
  return v6;
}

uint64_t sub_24ECF37DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2296F8, &qword_24F985350);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - v9;
  v11 = sub_24F91F4A8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(a2, v10, &qword_27F228530, &unk_24F93C6E0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_24E601704(v10, &qword_27F228530, &unk_24F93C6E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2296E0, &qword_24F985330);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DC08, &unk_24F996D60);
    sub_24ECF40CC();
    swift_allocError();
    *v15 = 0;
    return sub_24F92A978();
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    type metadata accessor for JSIntentDispatcher();
    sub_24F928FD8();
    sub_24F92A758();
    (*(v12 + 16))(v7, v14, v11);
    sub_24F929C28();

    sub_24F928FE8();
    sub_24F929BF8();

    v17 = sub_24F929C08();

    v18 = sub_24EB48430(v7, v17, "GameStoreKit/SearchLandingDiffablePageContentPresenter.swift", 60, 2);

    sub_24E601704(v7, &qword_27F2296F8, &qword_24F985350);
    (*(v12 + 8))(v14, v11);
    return v18;
  }
}

uint64_t sub_24ECF3B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for JSIntentDispatcher();
  sub_24F928FD8();
  sub_24F92A758();
  sub_24F929C28();

  sub_24F928FE8();
  sub_24F929BF8();

  v4 = sub_24F929C18();

  v5 = sub_24EB46264(a1, v4, "GameStoreKit/SearchLandingDiffablePageContentPresenter.swift", 60, 2);

  return v5;
}

uint64_t sub_24ECF3C04(uint64_t a1, uint64_t a2)
{
  sub_24E60169C(a1, &v6, &qword_27F2129B0, &unk_24F945320);
  if (v7)
  {
    sub_24E612B0C(&v6, v8);
    type metadata accessor for JSIntentDispatcher();
    sub_24F928FD8();
    sub_24F92A758();
    sub_24E643A9C(v8, &v6);
    v3 = sub_24EB486CC(&v6, a2, "GameStoreKit/SearchLandingDiffablePageContentPresenter.swift", 60, 2);

    sub_24E601704(&v6, &qword_27F2296E8, &qword_24F985338);
    __swift_destroy_boxed_opaque_existential_1(v8);
    return v3;
  }

  else
  {
    sub_24E601704(&v6, &qword_27F2129B0, &unk_24F945320);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2296E0, &qword_24F985330);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DC08, &unk_24F996D60);
    sub_24ECF40CC();
    swift_allocError();
    *v5 = 2;
    return sub_24F92A978();
  }
}

uint64_t sub_24ECF3D50(uint64_t a1, uint64_t (*a2)(_BYTE *))
{
  sub_24E643A9C(a1, v5);
  v3 = a2(v5);
  sub_24E601704(v5, &qword_27F2129B0, &unk_24F945320);
  return v3;
}

uint64_t SearchLandingDiffablePageContentPresenter.__deallocating_deinit()
{
  _s12GameStoreKit39TopChartDiffableSegmentContentPresenterCfd_0();

  return swift_deallocClassInstance();
}

void sub_24ECF3E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_24E824448(a10, a11);
  sub_24E824448(a6, a7);
  sub_24E824448(a4, a5);
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t objectdestroyTm_32()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_24F91F4A8();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_24ECF3FE4()
{

  return swift_deallocObject();
}

uint64_t sub_24ECF401C()
{

  return swift_deallocObject();
}

uint64_t type metadata accessor for SearchLandingDiffablePageContentPresenter(uint64_t a1)
{
  result = qword_27F22DBF8;
  if (!qword_27F22DBF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24ECF40CC()
{
  result = qword_27F22DC10;
  if (!qword_27F22DC10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22DC08, &unk_24F996D60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DC10);
  }

  return result;
}

id sub_24ECF4174(void *a1, void *a2, uint64_t a3)
{
  v63 = a2;
  v4 = v3;
  v69 = a3;
  v67 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DCC0, &qword_24F996E00);
  v60 = *(v5 - 8);
  v61 = v5;
  MEMORY[0x28223BE20](v5);
  v58 = &v47 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DCC8, &qword_24F996E08);
  v55 = *(v7 - 8);
  v56 = v7;
  MEMORY[0x28223BE20](v7);
  v66 = &v47 - v8;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DC60, &qword_24F996DB0);
  v59 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v57 = &v47 - v9;
  v50 = sub_24F927FF8();
  v10 = *(v50 - 1);
  MEMORY[0x28223BE20](v50);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_24F927ED8();
  v51 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v54 = v13;
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_24F927FA8();
  v73 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v65 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v47 - v17;
  v19 = sub_24F927FC8();
  MEMORY[0x28223BE20](v19 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DCD0, &qword_24F996E10);
  swift_allocObject();
  *(v3 + 16) = sub_24F928888();
  result = [objc_allocWithZone(MEMORY[0x277CD4660]) init];
  if (result)
  {
    *(v3 + OBJC_IVAR____TtC12GameStoreKit16JSJetpackFetcher_virtualMachine) = result;
    v21 = OBJC_IVAR____TtC12GameStoreKit16JSJetpackFetcher____lazy_storage___indexPipeline;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2222D8, &qword_24F969100);
    (*(*(v22 - 8) + 56))(v4 + v21, 1, 1, v22);
    v23 = OBJC_IVAR____TtC12GameStoreKit16JSJetpackFetcher____lazy_storage___sourceDataPipeline;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2222D0, &qword_24F9690F8);
    (*(*(v24 - 8) + 56))(v4 + v23, 1, 1, v24);
    sub_24F927FB8();
    sub_24F927FE8();
    swift_allocObject();
    v25 = sub_24F927FD8();
    v26 = v67;
    sub_24E615E00(v67, &v70);
    v49 = v25;

    sub_24F92A328();
    v64 = v18;
    sub_24F927F98();
    (*(v10 + 104))(v12, *MEMORY[0x277D21A38], v50);
    v71 = sub_24F928028();
    v72 = MEMORY[0x277D21A60];
    __swift_allocate_boxed_opaque_existential_1(&v70);
    sub_24F928018();
    sub_24F927EB8();
    v27 = OBJC_IVAR____TtC12GameStoreKit16JSJetpackFetcher_jetpackLoader;
    v28 = v51;
    v50 = *(v51 + 32);
    v29 = v53;
    v50(v4 + OBJC_IVAR____TtC12GameStoreKit16JSJetpackFetcher_jetpackLoader, v14, v53);
    v30 = *(v28 + 16);
    v48 = v4;
    v30(v14, v4 + v27, v29);
    sub_24F92AAF8();
    (*(v28 + 8))(v14, v29);
    (*(v73 + 16))(v65, v64, v68);
    v30(v14, v4 + v27, v29);
    sub_24E615E00(v26, &v70);
    v31 = v73;
    v32 = (*(v73 + 80) + 16) & ~*(v73 + 80);
    v33 = (v52 + *(v28 + 80) + v32) & ~*(v28 + 80);
    v34 = (v54 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
    v35 = swift_allocObject();
    v36 = *(v31 + 32);
    v37 = v68;
    v36(v35 + v32, v65, v68);
    v50(v35 + v33, v14, v29);
    sub_24E612C80(&v70, v35 + v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F38, &qword_24F944828);
    sub_24E602068(&qword_27F22DCD8, &qword_27F22DCC8, &qword_24F996E08, MEMORY[0x277D21FA8]);
    v38 = v56;
    v39 = v66;
    v40 = sub_24F928A08();

    (*(v55 + 8))(v39, v38);
    *&v70 = v40;
    v41 = v58;
    sub_24F928C48();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DCE0, &qword_24F996E18);
    v42 = MEMORY[0x277D21DF8];
    sub_24E602068(&qword_27F22DCE8, &qword_27F22DCE0, &qword_24F996E18, MEMORY[0x277D21DF8]);
    v43 = sub_24F928A38();
    (*(v60 + 8))(v41, v61);

    *&v70 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DCF0, &unk_24F996E20);
    sub_24E602068(&qword_27F22DCF8, &qword_27F22DCF0, &unk_24F996E20, v42);
    v44 = v57;
    sub_24F9289F8();

    v45 = v48;
    (*(v59 + 32))(v48 + OBJC_IVAR____TtC12GameStoreKit16JSJetpackFetcher_bundlePipeline, v44, v62);
    sub_24F928ED8();

    v46 = sub_24F92A498();
    (*(*(v46 - 8) + 8))(v69, v46);
    __swift_destroy_boxed_opaque_existential_1(v67);
    (*(v73 + 8))(v64, v37);
    return v45;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24ECF4AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a3;
  v26 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v5 - 8);
  v27 = &v23 - v6;
  v7 = sub_24F927ED8();
  v24 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = sub_24F927FA8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a2, v10, v13);
  (*(v8 + 16))(&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v25, v7);
  sub_24E615E00(v26, v28);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = (v12 + *(v8 + 80) + v15) & ~*(v8 + 80);
  v17 = swift_allocObject();
  (*(v11 + 32))(v17 + v15, v14, v10);
  (*(v8 + 32))(v17 + v16, &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v24);
  sub_24E612C80(v28, v17 + ((v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DD00, &qword_24F996E40);
  v18 = sub_24F92A9E8();
  v19 = sub_24F92B858();
  v20 = v27;
  (*(*(v19 - 8) + 56))(v27, 1, 1, v19);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_24F996E38;
  v21[5] = v17;
  v21[6] = v18;

  sub_24E6959D8(0, 0, v20, &unk_24F996E48, v21);

  return v18;
}

uint64_t sub_24ECF4E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_24F91F4A8();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DD08, &qword_24F996E50);
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ECF4F70, 0, 0);
}

uint64_t sub_24ECF4F70()
{
  v1 = v0[4];
  v2 = swift_task_alloc();
  v0[12] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[13] = v3;
  v4 = sub_24F927EF8();
  *v3 = v0;
  v3[1] = sub_24ECF5058;
  v5 = v0[11];
  v6 = MEMORY[0x277D21998];

  return MEMORY[0x28217E758](v5, &unk_24F996E60, v2, v4, v6);
}

uint64_t sub_24ECF5058()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_24ECF5440;
  }

  else
  {

    v2 = sub_24ECF5174;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ECF5174()
{
  v1 = v0[5];
  v2 = v1[3];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_24ECF5224;
  v4 = v0[8];

  return sub_24ECF5764(v4, v2);
}

uint64_t sub_24ECF5224()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_24ECF54B8;
  }

  else
  {
    v2 = sub_24ECF5338;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ECF5338()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F38, &qword_24F944828);
  (*(v6 + 16))(v7, v4, v5);
  sub_24F927F88();
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_24ECF5440()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ECF54B8()
{
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24ECF5540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return MEMORY[0x2822009F8](sub_24ECF5564, 0, 0);
}

uint64_t sub_24ECF5564()
{
  sub_24F928098();
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_24ECF5610;
  v2 = *(v0 + 56);

  return MEMORY[0x28217E6F8](v2, v0 + 16);
}

uint64_t sub_24ECF5610()
{
  v2 = *v1;
  v2[11] = v0;

  __swift_destroy_boxed_opaque_existential_1(v2 + 2);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24ECF574C, 0, 0);
  }

  else
  {
    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_24ECF5764(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DD10, &qword_24F996E70);
  v3[5] = swift_task_alloc();
  v5 = sub_24F927F58();
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DD18, &qword_24F996E78);
  v3[9] = swift_task_alloc();
  v3[10] = *(a2 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v6 = sub_24F927F18();
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ECF5954, 0, 0);
}

uint64_t sub_24ECF5954()
{
  v1 = v0[14];
  v2 = *(v0[10] + 16);
  v2(v0[12], v0[4], v0[3]);
  v3 = swift_dynamicCast();
  v4 = *(v1 + 56);
  if (v3)
  {
    v6 = v0[14];
    v5 = v0[15];
    v7 = v0[13];
    v8 = v0[9];
    v4(v8, 0, 1, v7);
    (*(v6 + 32))(v5, v8, v7);
    sub_24F927F08();
    (*(v6 + 8))(v0[15], v0[13]);

    v9 = v0[1];
LABEL_8:

    return v9();
  }

  v10 = v0[11];
  v11 = v0[9];
  v12 = v0[7];
  v13 = v0[4];
  v14 = v0[3];
  v4(v11, 1, 1, v0[13]);
  sub_24E601704(v11, &qword_27F22DD18, &qword_24F996E78);
  v2(v10, v13, v14);
  v15 = swift_dynamicCast();
  v16 = *(v12 + 56);
  if (!v15)
  {
    v23 = v0[5];
    v16(v23, 1, 1, v0[6]);
    sub_24E601704(v23, &qword_27F22DD10, &qword_24F996E70);
    sub_24ECF7930();
    swift_allocError();
    swift_willThrow();

    v9 = v0[1];
    goto LABEL_8;
  }

  v18 = v0[7];
  v17 = v0[8];
  v20 = v0[5];
  v19 = v0[6];
  v16(v20, 0, 1, v19);
  (*(v18 + 32))(v17, v20, v19);
  v21 = swift_task_alloc();
  v0[16] = v21;
  *v21 = v0;
  v21[1] = sub_24ECF5CB0;
  v22 = v0[2];

  return MEMORY[0x28217E740](v22);
}

uint64_t sub_24ECF5CB0()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_24ECF5E88;
  }

  else
  {
    v2 = sub_24ECF5DC4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ECF5DC4()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24ECF5E88()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24ECF5F48@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DC98, &qword_24F996DD8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v13 - v7;
  v9 = OBJC_IVAR____TtC12GameStoreKit16JSJetpackFetcher____lazy_storage___indexPipeline;
  swift_beginAccess();
  sub_24E60169C(v1 + v9, v8, &qword_27F22DC98, &qword_24F996DD8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2222D8, &qword_24F969100);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_24E601704(v8, &qword_27F22DC98, &qword_24F996DD8);
  v13[1] = OBJC_IVAR____TtC12GameStoreKit16JSJetpackFetcher_bundlePipeline;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DC60, &qword_24F996DB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DCA0, &qword_24F996DE0);
  sub_24E602068(&qword_27F22DC70, &qword_27F22DC60, &qword_24F996DB0, MEMORY[0x277D21D90]);
  v13[2] = sub_24F928A18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DCA8, &unk_24F996DE8);
  sub_24E602068(&qword_27F22DCB0, &qword_27F22DCA8, &unk_24F996DE8, MEMORY[0x277D21DF8]);
  sub_24F9289F8();

  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_24E61DA68(v5, v1 + v9, &qword_27F22DC98, &qword_24F996DD8);
  return swift_endAccess();
}

uint64_t sub_24ECF625C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v52 = a1;
  v48 = a2;
  v3 = sub_24F91F4A8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F928388();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F928078();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F928088();
  v14 = sub_24F927EE8();
  if (v2)
  {
    return (*(v11 + 8))(v13, v10);
  }

  v46 = v11;
  v47 = v10;
  v17 = v52;
  if (v15 >> 60 == 15)
  {
    v18 = sub_24F928068();
    v20 = v19;
    sub_24ECF733C();
    swift_allocError();
    *v21 = v18;
    v21[1] = v20;
    swift_willThrow();
    return (*(v46 + 8))(v13, v47);
  }

  else
  {
    v22 = v14;
    v23 = v15;
    sub_24E71CBC0(v14, v15);
    v44 = v22;
    v45 = v23;
    sub_24F928238();
    v24 = type metadata accessor for JSJetpackIndex(0);
    (*(v4 + 16))(v6, v17, v3);
    v25 = sub_24EE7CB00(v9, v6);
    v52 = v24;
    v26 = ASKBuildTypeGetCurrent(v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249E0, &qword_24F973100);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_24F9479A0;
    *(v27 + 32) = @"debug";
    *(v27 + 40) = @"convergence";
    *(v27 + 48) = @"internal";
    type metadata accessor for BuildType(0);
    v43 = v25;
    v28 = @"debug";
    v29 = @"convergence";
    v30 = @"internal";
    v31 = sub_24F92B588();

    LODWORD(v23) = ASKBuildTypeIsAnyOf(v26, v31);

    v32 = v43;
    v34 = v46;
    v33 = v47;
    if (v23)
    {
      v35 = *(v43 + OBJC_IVAR____TtC12GameStoreKit14JSJetpackIndex_properties);
      if (*(v35 + 16) && (v36 = sub_24E76D644(0x6E6F6973726576, 0xE700000000000000), (v37 & 1) != 0))
      {
        sub_24E643A9C(*(v35 + 56) + 32 * v36, v51);
        v38 = swift_dynamicCast();
        v39 = v38 == 0;
        if (v38)
        {
          v40 = v49;
        }

        else
        {
          v40 = 0;
        }

        if (v39)
        {
          v41 = 0;
        }

        else
        {
          v41 = v50;
        }
      }

      else
      {
        v40 = 0;
        v41 = 0;
      }

      sub_24EA2330C(v40, v41);
    }

    v42 = v48;
    v48[3] = v52;
    v42[4] = &off_2861F9570;
    sub_24E71CBAC(v44, v45);
    *v42 = v32;
    return (*(v34 + 8))(v13, v33);
  }
}

uint64_t sub_24ECF6718@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DC78, &qword_24F996DC8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  v9 = OBJC_IVAR____TtC12GameStoreKit16JSJetpackFetcher____lazy_storage___sourceDataPipeline;
  swift_beginAccess();
  sub_24E60169C(v1 + v9, v8, &qword_27F22DC78, &qword_24F996DC8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2222D0, &qword_24F9690F8);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_24E601704(v8, &qword_27F22DC78, &qword_24F996DC8);
  v15 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DC60, &qword_24F996DB0);
  sub_24E602068(&qword_27F22DC70, &qword_27F22DC60, &qword_24F996DB0, MEMORY[0x277D21D90]);
  v16 = sub_24F928A18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DC80, &qword_24F996DD0);
  sub_24E602068(&qword_27F22DC88, &qword_27F22DC80, &qword_24F996DD0, MEMORY[0x277D21DF8]);
  v12 = v15;
  sub_24F9289F8();

  (*(v11 + 16))(v5, v12, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_24E61DA68(v5, v1 + v9, &qword_27F22DC78, &qword_24F996DC8);
  return swift_endAccess();
}

uint64_t sub_24ECF6A18@<X0>(uint64_t *a1@<X8>)
{
  v4 = sub_24F928078();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F38, &qword_24F944828);
  sub_24F928058();
  v8 = sub_24F927EE8();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  if (v9 >> 60 == 15)
  {
    v10 = sub_24F928068();
    v12 = v11;
    sub_24ECF733C();
    swift_allocError();
    *v13 = v10;
    v13[1] = v12;
    swift_willThrow();
    return (*(v5 + 8))(v7, v4);
  }

  v15 = v8;
  v16 = v7;
  v17 = v9;
  result = (*(v5 + 8))(v16, v4);
  *a1 = v15;
  a1[1] = v17;
  return result;
}

uint64_t sub_24ECF6B98@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F38, &qword_24F944828);
  sub_24F927EF8();
  result = sub_24F928008();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24ECF6C00@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F38, &qword_24F944828) + 48);
  v5 = sub_24F927EF8();
  v6 = MEMORY[0x277D21998];
  a2[3] = v5;
  a2[4] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, a1 + v4, v5);
}

uint64_t sub_24ECF6CA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_24E60169C(a1, v9, &qword_27F22DCB8, &qword_24F996DF8);
  v5 = v10;
  v6 = v11;
  sub_24E612C80(v9, v12);
  v7 = *(a2 + OBJC_IVAR____TtC12GameStoreKit16JSJetpackFetcher_virtualMachine);
  sub_24EC65300(v5, v6, v12, v7, a3);
  __swift_destroy_boxed_opaque_existential_1(v12);

  return sub_24E627880(v5, v6);
}

uint64_t sub_24ECF6D5C()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit16JSJetpackFetcher_jetpackLoader;
  v2 = sub_24F927ED8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12GameStoreKit16JSJetpackFetcher_bundlePipeline;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DC60, &qword_24F996DB0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit16JSJetpackFetcher____lazy_storage___indexPipeline, &qword_27F22DC98, &qword_24F996DD8);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit16JSJetpackFetcher____lazy_storage___sourceDataPipeline, &qword_27F22DC78, &qword_24F996DC8);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for JSJetpackFetcher(uint64_t a1)
{
  result = qword_27F22DC38;
  if (!qword_27F22DC38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24ECF6EF0(uint64_t a1, __n128 a2)
{
  sub_24F927ED8();
  if (v2 <= 0x3F)
  {
    sub_24ECF70D0(319, &qword_27F22DC48, &qword_27F216F38, &qword_24F944828, MEMORY[0x277D21D88]);
    if (v3 <= 0x3F)
    {
      sub_24ECF70D0(319, &qword_27F22DC50, &qword_27F2222D8, &qword_24F969100, MEMORY[0x277D83D88]);
      if (v4 <= 0x3F)
      {
        sub_24ECF70D0(319, &qword_27F22DC58, &qword_27F2222D0, &qword_24F9690F8, MEMORY[0x277D83D88]);
        if (v5 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_24ECF70D0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_24ECF715C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2222D8, &qword_24F969100);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - v2;
  sub_24ECF5F48(&v6 - v2);
  v4 = sub_24F928ED8();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_24ECF7264(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DC60, &qword_24F996DB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  sub_24E602068(&qword_27F22DC70, &qword_27F22DC60, &qword_24F996DB0, MEMORY[0x277D21D90]);
  sub_24F928A18();
  v7 = sub_24F929088();

  return v7;
}

unint64_t sub_24ECF733C()
{
  result = qword_27F22DC90;
  if (!qword_27F22DC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DC90);
  }

  return result;
}

uint64_t sub_24ECF7394(uint64_t a1, __n128 a2)
{
  v4 = *(sub_24F927FA8() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_24F927ED8() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  return sub_24ECF4AF0(a1, v2 + v5, v2 + v8, v2 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t objectdestroyTm_33(__n128 a1)
{
  v2 = sub_24F927FA8();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = sub_24F927ED8();
  v7 = *(v6 - 8);
  v8 = (v4 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v1 + v4, v2);
  (*(v7 + 8))(v1 + v8, v6);
  __swift_destroy_boxed_opaque_existential_1((v1 + v9));

  return swift_deallocObject();
}

uint64_t sub_24ECF75EC(uint64_t a1, __n128 a2)
{
  v4 = v3;
  v6 = *(sub_24F927FA8() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_24F927ED8() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_task_alloc();
  *(v4 + 16) = v12;
  *v12 = v4;
  v12[1] = sub_24E6541E4;

  return sub_24ECF4E44(a1, v2 + v7, v2 + v10, v2 + v11);
}

uint64_t sub_24ECF775C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24ECF77A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24E614970;

  return sub_24E6953A8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_24ECF7880(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24E614970;

  return sub_24ECF5540(a1, a2, v6);
}

unint64_t sub_24ECF7930()
{
  result = qword_27F22DD20;
  if (!qword_27F22DD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DD20);
  }

  return result;
}

unint64_t sub_24ECF79AC()
{
  result = qword_27F22DD28;
  if (!qword_27F22DD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22DD28);
  }

  return result;
}

uint64_t sub_24ECF7A30@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  *a3 = sub_24F9249A8();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DD30, &qword_24F997080);
  sub_24ECF7C78(v3, (a3 + *(v5 + 44)));
  sub_24F927618();
  sub_24F9238C8();
  v6 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DD38, &qword_24F997088) + 36));
  *v6 = v24;
  v6[1] = v25;
  v6[2] = v26;
  LOBYTE(v3) = sub_24F9257F8();
  sub_24F923318();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DD40, &qword_24F997090) + 36);
  *v15 = v3;
  *(v15 + 8) = v8;
  *(v15 + 16) = v10;
  *(v15 + 24) = v12;
  *(v15 + 32) = v14;
  *(v15 + 40) = 0;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v16 = sub_24F926D08();

  LOBYTE(v3) = sub_24F925808();
  v17 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DD48, &qword_24F997098) + 36);
  *v17 = v16;
  *(v17 + 8) = v3;
  v18 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DD50, &unk_24F9970A0) + 36);
  v19 = *MEMORY[0x277CE0118];
  v20 = sub_24F924B38();
  v21 = *(*(v20 - 8) + 104);
  v21(v18, v19, v20);
  *(v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B698, &qword_24F984BC0) + 36)) = 0;
  v22 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DD58, &unk_24F9970B0) + 36);
  v21(v22, v19, v20);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2552C0, &qword_24F951970);
  *(v22 + *(result + 36)) = 256;
  return result;
}