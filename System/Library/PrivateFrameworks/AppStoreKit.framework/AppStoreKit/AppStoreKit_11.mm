uint64_t sub_1E1422A5C(void **__dst, id *__src, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v17 = *v4;
      v18 = *v6;
      v19 = v17;
      v20 = v6;
      v21 = sub_1E1AA68D0(v18, v19);

      if (v21)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4++;
      v6 = v20;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v20;
    v6 = v20 + 1;
    if (v7 == v20)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
    v34 = v4;
LABEL_24:
    v33 = v6;
    v22 = v6 - 1;
    --v5;
    v23 = v14;
    do
    {
      v24 = v5 + 1;
      v25 = *--v23;
      v26 = v22;
      v27 = *v22;
      v28 = v25;
      v29 = v27;
      v30 = sub_1E1AA68D0(v28, v29);

      if (v30)
      {
        v31 = v26;
        if (v24 != v33)
        {
          *v5 = *v26;
        }

        v4 = v34;
        if (v14 <= v34 || (v6 = v31, v31 <= v7))
        {
          v6 = v31;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v24 != v14)
      {
        *v5 = *v23;
      }

      --v5;
      v14 = v23;
      v22 = v26;
    }

    while (v23 > v34);
    v14 = v23;
    v6 = v33;
    v4 = v34;
  }

LABEL_35:
  if (v6 != v4 || v6 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v14 - v4));
  }

  return 1;
}

uint64_t sub_1E1422CE4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB39B0, &unk_1E1B08A70);
  v3 = sub_1E1AF588C();
  if (*(a1 + OBJC_IVAR____TtC11AppStoreKit15UpdateAllAction_ordering))
  {
    v7[0] = *(a1 + OBJC_IVAR____TtC11AppStoreKit15UpdateAllAction_ordering);
    sub_1E1AF586C();
  }

  else
  {
    type metadata accessor for UpdateStore();
    sub_1E1AF421C();
    sub_1E1AF55EC();
    v4 = v7[0];
    v7[4] = sub_1E1423040;
    v7[5] = v3;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1107296256;
    v7[2] = sub_1E1439704;
    v7[3] = &block_descriptor_9;
    v5 = _Block_copy(v7);

    [v4 getUpdatesWithCompletionBlock_];
    _Block_release(v5);
  }

  return v3;
}

uint64_t sub_1E1422E28(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3910, qword_1E1B089E0);
  v4 = sub_1E1AF588C();
  v5 = [objc_opt_self() defaultCenter];
  if (qword_1ECEB0DA0 != -1)
  {
    swift_once();
  }

  [v5 postNotificationName:qword_1ECEB3918 object:a1];

  sub_1E1422CE4(a1, a2);
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = v4;
  v7 = sub_1E13006E4(0, &qword_1EE1E3430, 0x1E69E9610);
  swift_retain_n();

  v8 = sub_1E1AF68EC();
  v10[3] = v7;
  v10[4] = MEMORY[0x1E69AB720];
  v10[0] = v8;
  sub_1E1AF57FC();

  __swift_destroy_boxed_opaque_existential_1(v10);
  return v4;
}

void sub_1E1422FEC()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3.underlyingAdamID._object = swift_getObjectType();
  v4[0] = v2;
  v4[1] = v1;
  v3.underlyingAdamID._countAndFlagsBits = v4;
  AppStateController.clearWaiting(for:)(v3);
}

uint64_t sub_1E1423050(uint64_t a1, int a2)
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

uint64_t sub_1E1423098(uint64_t result, int a2, int a3)
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

id sub_1E14230F4(uint64_t a1)
{
  v3 = objc_opt_self();
  result = [v3 valueWithNewObjectInContext_];
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1Tm((v1 + 16), *(v1 + 40));
    v6 = v5;
    v7 = [v3 valueWithObject:sub_1E1AF748C() inContext:a1];
    result = swift_unknownObjectRelease();
    if (v7)
    {
      sub_1E1AF6C5C();

      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1E14231E4()
{
  result = qword_1ECEB39C0;
  if (!qword_1ECEB39C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB39C0);
  }

  return result;
}

unint64_t sub_1E1423240()
{
  result = qword_1ECEB39C8;
  if (!qword_1ECEB39C8)
  {
    type metadata accessor for TodayPage(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB39C8);
  }

  return result;
}

uint64_t FramedMedia.__allocating_init(id:isFullWidth:hasRoundedCorners:ordinal:caption:impressionMetrics:)(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  LODWORD(v11) = a3;
  v29 = a2;
  v13 = sub_1E1AEFEAC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  sub_1E134FD1C(a1, &v32, &unk_1ECEB5670, qword_1E1B03EC0);
  if (*(&v33 + 1))
  {
    v18 = v33;
    *(v17 + 48) = v32;
    *(v17 + 64) = v18;
    *(v17 + 80) = v34;
  }

  else
  {
    sub_1E1AEFE9C();
    v19 = sub_1E1AEFE7C();
    v27 = a7;
    v20 = a4;
    v21 = a6;
    v22 = v19;
    v28 = v11;
    v11 = a5;
    v24 = v23;
    (*(v14 + 8))(v16, v13);
    v30 = v22;
    v31 = v24;
    a6 = v21;
    a4 = v20;
    a7 = v27;
    a5 = v11;
    LOBYTE(v11) = v28;
    sub_1E1AF6F6C();
    sub_1E1308058(&v32, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  sub_1E1308058(a1, &unk_1ECEB5670, qword_1E1B03EC0);
  sub_1E134B7C8(a7, v17 + OBJC_IVAR____TtC11AppStoreKit11FramedMedia_impressionMetrics);
  *(v17 + 17) = v29 & 1;
  *(v17 + 16) = v11 & 1;
  *(v17 + 24) = a4;
  *(v17 + 32) = a5;
  *(v17 + 40) = a6;
  return v17;
}

uint64_t FramedMedia.init(id:isFullWidth:hasRoundedCorners:ordinal:caption:impressionMetrics:)(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  LODWORD(v13) = a3;
  v30 = a2;
  v15 = sub_1E1AEFEAC();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E134FD1C(a1, &v33, &unk_1ECEB5670, qword_1E1B03EC0);
  if (*(&v34 + 1))
  {
    v36 = v33;
    v37 = v34;
    v38 = v35;
  }

  else
  {
    sub_1E1AEFE9C();
    v19 = sub_1E1AEFE7C();
    v28 = a7;
    v20 = a4;
    v21 = a6;
    v22 = v19;
    v29 = v13;
    v13 = a5;
    v24 = v23;
    (*(v16 + 8))(v18, v15);
    v31 = v22;
    v32 = v24;
    a6 = v21;
    a4 = v20;
    a7 = v28;
    a5 = v13;
    LOBYTE(v13) = v29;
    sub_1E1AF6F6C();
    sub_1E1308058(&v33, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  sub_1E1308058(a1, &unk_1ECEB5670, qword_1E1B03EC0);
  v25 = v37;
  *(v8 + 48) = v36;
  *(v8 + 64) = v25;
  *(v8 + 80) = v38;
  sub_1E134B7C8(a7, v8 + OBJC_IVAR____TtC11AppStoreKit11FramedMedia_impressionMetrics);
  *(v8 + 17) = v30 & 1;
  *(v8 + 16) = v13 & 1;
  *(v8 + 24) = a4;
  *(v8 + 32) = a5;
  *(v8 + 40) = a6;
  return v8;
}

uint64_t FramedMedia.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  FramedMedia.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t FramedMedia.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v61 = a2;
  v5 = sub_1E1AF39DC();
  v55 = *(v5 - 8);
  v56 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v51 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v50 = &v47 - v8;
  v49 = sub_1E1AEFEAC();
  v9 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E1AF380C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v52 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v47 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v47 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v47 - v22;
  v54 = a1;
  sub_1E1AF381C();
  v24 = sub_1E1AF37CC();
  v53 = v12;
  if (v25)
  {
    v57 = v24;
    v58 = v25;
    sub_1E1AF6F6C();
    v26 = *(v13 + 8);
    v26(v23, v12);
  }

  else
  {
    sub_1E1AEFE9C();
    v27 = sub_1E1AEFE7C();
    v48 = v17;
    v28 = v12;
    v29 = v3;
    v31 = v30;
    (*(v9 + 8))(v11, v49);
    v57 = v27;
    v58 = v31;
    v3 = v29;
    sub_1E1AF6F6C();
    v26 = *(v13 + 8);
    v32 = v28;
    v17 = v48;
    v26(v23, v32);
  }

  v33 = v59[1];
  *(v3 + 48) = v59[0];
  *(v3 + 64) = v33;
  *(v3 + 80) = v60;
  sub_1E1AF46DC();
  v34 = v3;
  v35 = v54;
  sub_1E1AF381C();
  (*(v55 + 16))(v51, v61, v56);
  v36 = v50;
  sub_1E1AF464C();
  sub_1E134B7C8(v36, v3 + OBJC_IVAR____TtC11AppStoreKit11FramedMedia_impressionMetrics);
  sub_1E1AF381C();
  v37 = sub_1E1AF37CC();
  v50 = v38;
  v51 = v37;
  v39 = v53;
  v26(v20, v53);
  sub_1E1AF381C();
  sub_1E1423CD4();
  sub_1E1AF369C();
  v26(v20, v39);
  LODWORD(v49) = LOBYTE(v59[0]);
  sub_1E1AF381C();
  v40 = sub_1E1AF370C();
  v26(v17, v39);
  *(v34 + 17) = v40 & 1;
  v41 = v52;
  sub_1E1AF381C();
  LOBYTE(v36) = sub_1E1AF370C();
  v26(v41, v39);
  *(v34 + 16) = (v36 == 2) | v36 & 1;
  sub_1E1AF381C();
  v42 = sub_1E1AF37CC();
  v44 = v43;
  v26(v20, v39);
  *(v34 + 24) = v42;
  *(v34 + 32) = v44;
  LOBYTE(v59[0]) = v49;
  LOBYTE(v57) = 2;
  v45 = _s11AppStoreKit9ParagraphC7prepare4text2of4withSo18NSAttributedStringCSSSg_AA10StyledTextC9MediaTypeOAC5StyleOtFZ_0(v51, v50, v59, &v57);

  (*(v55 + 8))(v61, v56);
  v26(v35, v39);
  *(v34 + 40) = v45;
  return v34;
}

unint64_t sub_1E1423CD4()
{
  result = qword_1EE1F7BC8;
  if (!qword_1EE1F7BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1F7BC8);
  }

  return result;
}

uint64_t FramedMedia.ordinal.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t FramedMedia.deinit()
{

  sub_1E134B88C(v0 + 48);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit11FramedMedia_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  return v0;
}

uint64_t FramedMedia.__deallocating_deinit()
{

  sub_1E134B88C(v0 + 48);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit11FramedMedia_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);

  return swift_deallocClassInstance();
}

uint64_t sub_1E1423EB0@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 136))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_1E1423F2C()
{
  result = qword_1EE1F7690[0];
  if (!qword_1EE1F7690[0])
  {
    type metadata accessor for FramedMedia(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1F7690);
  }

  return result;
}

uint64_t type metadata accessor for FramedMedia(uint64_t a1)
{
  result = qword_1EE1F7680;
  if (!qword_1EE1F7680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E1423FD8(uint64_t a1)
{
  sub_1E134EAF4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t InstallPagePreInstallPaidLayout.init(metrics:iconView:titleText:subtitleText:separator:descriptionText:bottomLockupView:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X8>)
{
  v14 = *(a1 + 208);
  *(a8 + 432) = *(a1 + 192);
  *(a8 + 448) = v14;
  *(a8 + 464) = *(a1 + 224);
  *(a8 + 480) = *(a1 + 240);
  v15 = *(a1 + 144);
  *(a8 + 368) = *(a1 + 128);
  *(a8 + 384) = v15;
  v16 = *(a1 + 176);
  *(a8 + 400) = *(a1 + 160);
  *(a8 + 416) = v16;
  v17 = *(a1 + 80);
  *(a8 + 304) = *(a1 + 64);
  *(a8 + 320) = v17;
  v18 = *(a1 + 112);
  *(a8 + 336) = *(a1 + 96);
  *(a8 + 352) = v18;
  v19 = *(a1 + 16);
  *(a8 + 240) = *a1;
  *(a8 + 256) = v19;
  v20 = *(a1 + 48);
  *(a8 + 272) = *(a1 + 32);
  *(a8 + 288) = v20;
  sub_1E1308EC0(a2, a8);
  sub_1E1308EC0(a3, a8 + 40);
  sub_1E1308EC0(a4, a8 + 80);
  sub_1E1308EC0(a5, a8 + 120);
  sub_1E1308EC0(a6, a8 + 160);

  return sub_1E1308EC0(a7, a8 + 200);
}

uint64_t InstallPagePreInstallPaidLayout.Metrics.init(titleSpace:subtitleSpace:separatorSpace:descriptionSpace:iconViewMargin:bottomLockupMargin:horizontalMargin:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v14 = *a7;
  sub_1E1308EC0(a1, a8);
  sub_1E1308EC0(a2, a8 + 40);
  sub_1E1308EC0(a3, a8 + 80);
  sub_1E1308EC0(a4, a8 + 120);
  sub_1E1308EC0(a5, a8 + 160);
  result = sub_1E1308EC0(a6, a8 + 200);
  *(a8 + 240) = v14;
  return result;
}

uint64_t InstallPagePreInstallPaidLayout.Metrics.titleSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_1E1308EC0(a1, v1);
}

uint64_t InstallPagePreInstallPaidLayout.Metrics.subtitleSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 40));

  return sub_1E1308EC0(a1, v1 + 40);
}

uint64_t InstallPagePreInstallPaidLayout.Metrics.separatorSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 80));

  return sub_1E1308EC0(a1, v1 + 80);
}

uint64_t InstallPagePreInstallPaidLayout.Metrics.descriptionSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 120));

  return sub_1E1308EC0(a1, v1 + 120);
}

uint64_t InstallPagePreInstallPaidLayout.Metrics.iconViewMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 160));

  return sub_1E1308EC0(a1, v1 + 160);
}

uint64_t InstallPagePreInstallPaidLayout.Metrics.bottomLockupMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 200));

  return sub_1E1308EC0(a1, v1 + 200);
}

uint64_t InstallPagePreInstallPaidLayout.Metrics.horizontalMargin.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 240) = v2;
  return result;
}

double InstallPagePreInstallPaidLayout.measurements(fitting:in:)(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v49 = a1;
  v6 = sub_1E1AF162C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v9;
  v10 = sub_1E1AF165C();
  v50 = *(v10 - 8);
  v51 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v47 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v3[60];
  v55[0] = a1;
  (*(*v13 + 104))(v56, v55, v11);
  (*(v7 + 104))(v9, *MEMORY[0x1E69AB970], v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB39D0, &unk_1E1B038F0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1E1B07790;
  sub_1E1300B24((v4 + 50), v56);
  v15 = sub_1E1AF1A1C();
  v16 = MEMORY[0x1E69ABA90];
  *(v14 + 56) = v15;
  *(v14 + 64) = v16;
  __swift_allocate_boxed_opaque_existential_0((v14 + 32));
  sub_1E1AF1A2C();
  v18 = v4[3];
  v17 = v4[4];
  v19 = __swift_project_boxed_opaque_existential_1Tm(v4, v18);
  *(v14 + 96) = v18;
  *(v14 + 104) = *(v17 + 8);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v14 + 72));
  (*(*(v18 - 8) + 16))(boxed_opaque_existential_0, v19, v18);
  v22 = v4[8];
  v21 = v4[9];
  v23 = __swift_project_boxed_opaque_existential_1Tm(v4 + 5, v22);
  v57 = v22;
  v58 = *(*(v21 + 8) + 8);
  v24 = __swift_allocate_boxed_opaque_existential_0(v56);
  (*(*(v22 - 8) + 16))(v24, v23, v22);
  sub_1E1300B24((v4 + 30), v55);
  v25 = sub_1E1AF140C();
  v26 = MEMORY[0x1E69AB908];
  v53 = v25;
  v54 = MEMORY[0x1E69AB908];
  __swift_allocate_boxed_opaque_existential_0(v52);
  sub_1E1AF13FC();
  v27 = sub_1E1AF1A6C();
  v28 = MEMORY[0x1E69ABAA0];
  *(v14 + 136) = v27;
  *(v14 + 144) = v28;
  __swift_allocate_boxed_opaque_existential_0((v14 + 112));
  sub_1E1AF1A5C();
  v30 = v4[13];
  v29 = v4[14];
  v31 = __swift_project_boxed_opaque_existential_1Tm(v4 + 10, v30);
  v57 = v30;
  v58 = *(*(v29 + 8) + 8);
  v32 = __swift_allocate_boxed_opaque_existential_0(v56);
  (*(*(v30 - 8) + 16))(v32, v31, v30);
  sub_1E1300B24((v4 + 35), v55);
  v53 = v25;
  v54 = v26;
  __swift_allocate_boxed_opaque_existential_0(v52);
  sub_1E1AF13FC();
  *(v14 + 176) = v27;
  *(v14 + 184) = v28;
  __swift_allocate_boxed_opaque_existential_0((v14 + 152));
  sub_1E1AF1A5C();
  sub_1E1300B24((v4 + 40), v56);
  *(v14 + 216) = v15;
  v33 = MEMORY[0x1E69ABA90];
  *(v14 + 224) = MEMORY[0x1E69ABA90];
  __swift_allocate_boxed_opaque_existential_0((v14 + 192));
  sub_1E1AF1A2C();
  v34 = v4[23];
  v35 = v4[24];
  v36 = __swift_project_boxed_opaque_existential_1Tm(v4 + 20, v34);
  v57 = v34;
  v58 = *(*(v35 + 8) + 8);
  v37 = __swift_allocate_boxed_opaque_existential_0(v56);
  (*(*(v34 - 8) + 16))(v37, v36, v34);
  sub_1E1300B24((v4 + 45), v55);
  v53 = v25;
  v54 = MEMORY[0x1E69AB908];
  __swift_allocate_boxed_opaque_existential_0(v52);
  sub_1E1AF13FC();
  *(v14 + 256) = v27;
  *(v14 + 264) = v28;
  __swift_allocate_boxed_opaque_existential_0((v14 + 232));
  sub_1E1AF1A5C();
  sub_1E1300B24((v4 + 55), v56);
  *(v14 + 296) = v15;
  *(v14 + 304) = v33;
  __swift_allocate_boxed_opaque_existential_0((v14 + 272));
  sub_1E1AF1A2C();
  v38 = v4[28];
  v39 = v4[29];
  v40 = __swift_project_boxed_opaque_existential_1Tm(v4 + 25, v38);
  *(v14 + 336) = v38;
  *(v14 + 344) = *(v39 + 8);
  v41 = __swift_allocate_boxed_opaque_existential_0((v14 + 312));
  (*(*(v38 - 8) + 16))(v41, v40, v38);
  v42 = v47;
  sub_1E1AF163C();
  sub_1E1AF161C();
  v44 = v43;
  (*(v50 + 8))(v42, v51);
  return v44;
}

uint64_t InstallPagePreInstallPaidLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v7 = v6;
  v90 = a1;
  v91 = a2;
  v86 = sub_1E1AF191C();
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v87 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v83 = &v73 - v14;
  v89 = sub_1E1AF193C();
  v88 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v84 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E1AF184C();
  v104 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1E1AF188C();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1E1AF18BC();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = v26;
  v81 = sub_1E1AF18DC();
  v82 = *(v81 - 8);
  v27 = MEMORY[0x1EEE9AC00](v81);
  v80 = &v73 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 104))(v26, *MEMORY[0x1E69ABA28], v23, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2AE0, &qword_1E1B02A80);
  v29 = *(sub_1E1AF189C() - 8);
  v100 = *(v29 + 72);
  v30 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v31 = swift_allocObject();
  v78 = v31;
  *(v31 + 16) = xmmword_1E1B05090;
  v94 = v31 + v30;
  v32 = v7[8];
  v33 = v7[9];
  v34 = __swift_project_boxed_opaque_existential_1Tm(v7 + 5, v32);
  v110 = v32;
  v111 = *(v33 + 8);
  v35 = __swift_allocate_boxed_opaque_existential_0(&v109);
  (*(*(v32 - 8) + 16))(v35, v34, v32);
  v98 = *MEMORY[0x1E69ABA18];
  v97 = *(v20 + 104);
  v99 = v20 + 104;
  v36 = v19;
  v97(v22);
  v108 = MEMORY[0x1E69E7CC0];
  v103 = sub_1E1425840();
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2AF0, &qword_1E1B08CF0);
  v96 = sub_1E1383E14();
  sub_1E1AF6EEC();
  v37 = v22;
  sub_1E1AF186C();
  v95 = *(v104 + 8);
  v104 += 8;
  v95(v18, v16);
  v38 = *(v20 + 8);
  v93 = v20 + 8;
  v102 = v38;
  v39 = v36;
  v76 = v36;
  v38(v22, v36);
  __swift_destroy_boxed_opaque_existential_1(&v109);
  v92 = v7;
  v41 = v7[13];
  v40 = v7[14];
  v42 = __swift_project_boxed_opaque_existential_1Tm(v7 + 10, v41);
  v110 = v41;
  v111 = *(v40 + 8);
  v43 = __swift_allocate_boxed_opaque_existential_0(&v109);
  (*(*(v41 - 8) + 16))(v43, v42, v41);
  v44 = v22;
  v45 = v98;
  v46 = v39;
  v47 = v97;
  (v97)(v44, v98, v46);
  v108 = MEMORY[0x1E69E7CC0];
  v75 = v18;
  sub_1E1AF6EEC();
  v48 = v100;
  sub_1E1AF186C();
  v49 = v95;
  v95(v18, v16);
  v50 = v76;
  v102(v37, v76);
  __swift_destroy_boxed_opaque_existential_1(&v109);
  v74 = 2 * v48;
  v51 = v50;
  v47(v37, v45, v50);
  v109 = MEMORY[0x1E69E7CC0];
  v52 = v75;
  v53 = v16;
  v77 = v16;
  sub_1E1AF6EEC();
  v54 = v74;
  v55 = v92;
  sub_1E1AF186C();
  v56 = v52;
  v49(v52, v53);
  v57 = v51;
  v102(v37, v51);
  v100 += v54;
  v58 = v55;
  v59 = v55[23];
  v60 = v55[24];
  v61 = __swift_project_boxed_opaque_existential_1Tm(v55 + 20, v59);
  v110 = v59;
  v111 = *(v60 + 8);
  v62 = __swift_allocate_boxed_opaque_existential_0(&v109);
  (*(*(v59 - 8) + 16))(v62, v61, v59);
  (v97)(v37, v98, v57);
  v108 = MEMORY[0x1E69E7CC0];
  v63 = v77;
  sub_1E1AF6EEC();
  sub_1E1AF186C();
  v95(v56, v63);
  v102(v37, v57);
  __swift_destroy_boxed_opaque_existential_1(&v109);
  v110 = sub_1E1AF140C();
  v111 = MEMORY[0x1E69AB908];
  __swift_allocate_boxed_opaque_existential_0(&v109);
  sub_1E1AF13FC();
  v64 = v80;
  sub_1E1AF18CC();
  v65 = v81;
  v110 = v81;
  v111 = MEMORY[0x1E69ABA38];
  v66 = __swift_allocate_boxed_opaque_existential_0(&v109);
  v67 = v82;
  (*(v82 + 16))(v66, v64, v65);
  sub_1E1300B24(v55, &v108);
  v68 = *MEMORY[0x1E69ABA58];
  v69 = *(v85 + 104);
  v70 = v86;
  v69(v83, v68, v86);
  sub_1E1300B24((v58 + 50), v107);
  sub_1E1300B24((v58 + 25), v106);
  v69(v87, v68, v70);
  sub_1E1300B24((v58 + 55), v105);
  v71 = v84;
  sub_1E1AF192C();
  InstallPagePreInstallPaidLayout.measurements(fitting:in:)(v90, a5, a6);
  v112.origin.x = a3;
  v112.origin.y = a4;
  v112.size.width = a5;
  v112.size.height = a6;
  CGRectGetMidX(v112);
  v113.origin.x = a3;
  v113.origin.y = a4;
  v113.size.width = a5;
  v113.size.height = a6;
  CGRectGetMinY(v113);
  sub_1E1AF190C();
  (*(v88 + 8))(v71, v89);
  return (*(v67 + 8))(v64, v65);
}

unint64_t sub_1E1425840()
{
  result = qword_1EE1D2A80;
  if (!qword_1EE1D2A80)
  {
    sub_1E1AF184C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1D2A80);
  }

  return result;
}

uint64_t sub_1E14258B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 488))
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

uint64_t sub_1E14258FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 456) = 0u;
    *(result + 472) = 0u;
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
      *(result + 488) = 1;
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

    *(result + 488) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy248_8(uint64_t a1, __int128 *a2)
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
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 30);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_1E1425A14(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 248))
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

uint64_t sub_1E1425A5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 248) = 1;
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

    *(result + 248) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t AppStoreMetricsFieldsBuilder.addValue(_:forField:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E137A5C4(a1, v6);

  return sub_1E138692C(v6, a2, a3);
}

uint64_t sub_1E1425C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E137A5C4(a1, v6);

  return sub_1E138692C(v6, a2, a3);
}

void *static GKLocalPlayer.currentAcknowledgedPlayer.getter()
{
  v0 = [swift_getObjCClassFromMetadata() currentLocalPlayer];
  if (!v0)
  {
    if (qword_1EE1D27D8 != -1)
    {
      swift_once();
    }

    v3 = sub_1E1AF591C();
    __swift_project_value_buffer(v3, qword_1EE2154B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF548C();
    goto LABEL_9;
  }

  v1 = v0;
  if (([v0 hasAcknowledgedLatestGDPR] & 1) == 0)
  {
    if (qword_1EE1D27D8 != -1)
    {
      swift_once();
    }

    v2 = sub_1E1AF591C();
    __swift_project_value_buffer(v2, qword_1EE2154B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF548C();

LABEL_9:

    return 0;
  }

  return v1;
}

double AppStoreDeepLink.init(url:refApp:refUrl:refKind:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = *a6;
  v12 = *(a6 + 8);
  v13 = sub_1E1AEFCCC();
  v14 = *(v13 - 8);
  (*(v14 + 16))(a7, a1, v13);
  v15 = sub_1E1AEFBDC();
  v17 = v16;
  (*(v14 + 8))(a1, v13);
  v18 = type metadata accessor for AppStoreDeepLink(0);
  v19 = (a7 + v18[5]);
  *v19 = v15;
  v19[1] = v17;
  v20 = (a7 + v18[6]);
  *v20 = a2;
  v20[1] = a3;
  v21 = (a7 + v18[7]);
  *v21 = a4;
  v21[1] = a5;
  v22 = a7 + v18[8];
  *v22 = v11;
  *(v22 + 8) = v12;
  v23 = a7 + v18[9];
  *v23 = a2;
  *(v23 + 8) = a3;
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  *(v23 + 32) = v11;
  *(v23 + 40) = v12;

  return sub_1E13E23E4(v11, v12);
}

uint64_t type metadata accessor for AppStoreDeepLink(uint64_t a1)
{
  result = qword_1EE1F8628;
  if (!qword_1EE1F8628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1E14260D0@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B28, qword_1E1B03BE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v74 = &v64 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v64 - v7;
  v9 = sub_1E1AEFCCC();
  v76 = *(v9 - 8);
  v77 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v75 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E1AF380C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v73 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v64 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v64 - v18;
  v78 = type metadata accessor for AppStoreDeepLink(0);
  v20 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v22 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1E1AF37AC())
  {
    (*(v12 + 8))(a1, v11);
LABEL_8:
    (*(v20 + 56))(a2, 1, 1, v78);
    return result;
  }

  v72 = a2;
  sub_1E1AF381C();
  v23 = sub_1E1AF37CC();
  v25 = v24;
  v26 = v19;
  v27 = *(v12 + 8);
  v27(v26, v11);
  if (!v25)
  {
    v27(a1, v11);
    goto LABEL_7;
  }

  v70 = a1;
  v71 = v27;
  sub_1E1AEFCAC();
  v29 = v76;
  v28 = v77;
  if ((*(v76 + 48))(v8, 1, v77) == 1)
  {
    v71(v70, v11);

    sub_1E1308058(v8, &unk_1ECEB4B60, &unk_1E1B02620);
LABEL_7:
    a2 = v72;
    goto LABEL_8;
  }

  v31 = *(v29 + 32);
  v69 = v22;
  v32 = v75;
  v31(v75, v8, v28);
  v33 = v69;
  (*(v29 + 16))(v69, v32, v28);
  v34 = v78;
  v35 = &v33[*(v78 + 20)];
  v36 = v33;
  *v35 = v23;
  v35[1] = v25;
  v37 = v70;
  sub_1E1AF381C();
  v38 = sub_1E1AF37CC();
  v40 = v39;
  v41 = v71;
  v71(v16, v11);
  v42 = &v36[*(v34 + 24)];
  v67 = v40;
  v68 = v38;
  *v42 = v38;
  v42[1] = v40;

  sub_1E1AF381C();
  v43 = sub_1E1AF37CC();
  v45 = v44;
  v41(v16, v11);
  v46 = &v36[*(v34 + 28)];
  v66 = v43;
  *v46 = v43;
  v46[1] = v45;

  sub_1E1AF381C();
  v47 = sub_1E1AF37CC();
  v64 = v48;
  v65 = v47;
  v41(v16, v11);
  v49 = v73;
  sub_1E1AF381C();
  v50 = v74;
  sub_1E1AF368C();
  v41(v49, v11);
  v51 = sub_1E1AF40DC();
  v52 = *(v51 - 8);
  if ((*(v52 + 48))(v50, 1, v51) == 1)
  {
    sub_1E1308058(v50, &qword_1ECEB2B28, qword_1E1B03BE0);
    v53 = 0;
  }

  else
  {
    v53 = sub_1E1AF40AC();
    (*(v52 + 8))(v50, v51);
  }

  v54 = v72;
  ReferrerData.Kind.init(rawValue:)(v65, v64, v53, &v79);
  v71(v37, v11);
  (*(v76 + 8))(v75, v77);
  v55 = v79;
  v56 = v80;
  v57 = v78;
  v59 = v68;
  v58 = v69;
  v60 = &v69[*(v78 + 32)];
  *v60 = v79;
  v60[8] = v56;
  v61 = v58 + *(v57 + 36);
  v62 = v66;
  v63 = v67;
  *v61 = v59;
  *(v61 + 8) = v63;
  *(v61 + 16) = v62;
  *(v61 + 24) = v45;
  *(v61 + 32) = v55;
  *(v61 + 40) = v56;
  sub_1E14282FC(v58, v54);
  (*(v20 + 56))(v54, 0, 1, v57);
  return sub_1E13E23E4(v55, v56);
}

void sub_1E14267BC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1E1AF380C();
  v9 = MEMORY[0x1EEE9AC00](v8);
  (*(v11 + 16))(&v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v8, v9);
  if (swift_dynamicCast())
  {
    v12 = v15;
    v17 = v14;
    v18 = v15;
    v13 = v16;
    v19 = v16;
    *(a4 + 16) = v14;
    *(a4 + 32) = v12;
    *(a4 + 48) = v13;
  }

  else
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    sub_1E1308058(&v14, &unk_1ECEB5670, qword_1E1B03EC0);
    a1 = 0;
    a2 = 0;
    *(a4 + 48) = 0;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
  }

  *a4 = a1;
  *(a4 + 8) = a2;
}

uint64_t AppStoreDeepLink.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E1AEFCCC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AppStoreDeepLink.urlString.getter()
{
  v1 = *(v0 + *(type metadata accessor for AppStoreDeepLink(0) + 20));

  return v1;
}

uint64_t AppStoreDeepLink.refApp.getter()
{
  v1 = *(v0 + *(type metadata accessor for AppStoreDeepLink(0) + 24));

  return v1;
}

uint64_t AppStoreDeepLink.refUrl.getter()
{
  v1 = *(v0 + *(type metadata accessor for AppStoreDeepLink(0) + 28));

  return v1;
}

double AppStoreDeepLink.refKind.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppStoreDeepLink(0) + 32);
  v4 = *v3;
  *a1 = *v3;
  v5 = *(v3 + 8);
  *(a1 + 8) = v5;

  return sub_1E13E23E4(v4, v5);
}

double AppStoreDeepLink.referral.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppStoreDeepLink(0) + 36);
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  v6 = *(v3 + 40);
  *(a1 + 40) = v6;

  return sub_1E13E23E4(v5, v6);
}

unint64_t sub_1E1426B1C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB39D8, &qword_1E1B09030);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E1B02CC0;
  *(inited + 32) = 7107189;
  *(inited + 40) = 0xE300000000000000;
  v3 = type metadata accessor for AppStoreDeepLink(0);
  v4 = (v1 + v3[5]);
  v5 = v4[1];
  v19[0] = *v4;
  v19[1] = v5;

  sub_1E1AF6F6C();
  v6 = sub_1E159D2A0(inited);
  swift_setDeallocating();
  sub_1E1308058(inited + 32, &qword_1ECEB39E0, &qword_1E1B09038);
  v22 = v6;
  if (*(v1 + v3[6] + 8))
  {

    sub_1E1AF6F6C();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1E1599798(v19, 0x707041666572, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
    v22 = v6;
  }

  if (*(v1 + v3[7] + 8))
  {

    sub_1E1AF6F6C();
    v8 = swift_isUniquelyReferenced_nonNull_native();
    sub_1E1599798(v19, 0x6C7255666572, 0xE600000000000000, v8);
    v22 = v6;
  }

  v9 = (v1 + v3[8]);
  v10 = *(v9 + 8);
  v20 = *v9;
  v21 = v10;
  ReferrerData.Kind.rawValue.getter();
  v12 = v11;

  if (v12)
  {
    sub_1E1AF6F6C();
    v13 = swift_isUniquelyReferenced_nonNull_native();
    sub_1E1599798(v19, 0x646E694B666572, 0xE700000000000000, v13);
    v22 = v6;
  }

  else
  {
    sub_1E1496ABC(0x646E694B666572, 0xE700000000000000, v19);
    sub_1E1308058(v19, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  ReferrerData.Kind.rawValue.getter();
  v15 = v14;

  if (v15)
  {
    v20 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB26F0, &qword_1E1B09040);
    sub_1E1428360();
    sub_1E1AF6F6C();
    v16 = v22;
    v17 = swift_isUniquelyReferenced_nonNull_native();
    sub_1E1599798(v19, 0x43646E694B666572, 0xEE00747865746E6FLL, v17);
    return v16;
  }

  else
  {
    sub_1E1496ABC(0x43646E694B666572, 0xEE00747865746E6FLL, v19);
    sub_1E1308058(v19, &unk_1ECEB5670, qword_1E1B03EC0);
    return v22;
  }
}

uint64_t _s11AppStoreKit0aB8DeepLinkV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1E1AEFC4C() & 1) == 0)
  {
    goto LABEL_27;
  }

  v4 = type metadata accessor for AppStoreDeepLink(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_1E1AF74AC() & 1) == 0)
  {
    goto LABEL_27;
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v13[1];
  if (v12)
  {
    if (!v14)
    {
      goto LABEL_27;
    }

    v15 = *v11 == *v13 && v12 == v14;
    if (!v15 && (sub_1E1AF74AC() & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (v14)
  {
    goto LABEL_27;
  }

  v16 = v4[7];
  v17 = (a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  v20 = v19[1];
  if (!v18)
  {
    if (!v20)
    {
      goto LABEL_25;
    }

LABEL_27:
    v35 = 0;
    return v35 & 1;
  }

  if (!v20)
  {
    goto LABEL_27;
  }

  v21 = *v17 == *v19 && v18 == v20;
  if (!v21 && (sub_1E1AF74AC() & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_25:
  v22 = v4[8];
  v23 = *(a1 + v22 + 8);
  v46 = *(a1 + v22);
  LOBYTE(v47) = v23;
  v24 = a2 + v22;
  v25 = *(v24 + 8);
  v41 = *v24;
  LOBYTE(v42) = v25;
  sub_1E13E23E4(v46, v23);
  sub_1E13E23E4(v41, v25);
  v26 = _s11AppStoreKit12ReferrerDataV4KindO2eeoiySbAE_AEtFZ_0(&v46, &v41);
  sub_1E137B778(v41, v42);
  sub_1E137B778(v46, v47);
  if ((v26 & 1) == 0)
  {
    goto LABEL_27;
  }

  v27 = a1 + v4[9];
  v28 = *(v27 + 24);
  v29 = *(v27 + 32);
  v30 = *(v27 + 40);
  v46 = *v27;
  v47 = *(v27 + 8);
  v48 = v28;
  v49 = v29;
  v50 = v30;
  v31 = a2 + v4[9];
  v32 = *(v31 + 24);
  v33 = *(v31 + 32);
  v34 = *(v31 + 40);
  v41 = *v31;
  v42 = *(v31 + 8);
  v43 = v32;
  v44 = v33;
  v45 = v34;

  sub_1E13E23E4(v29, v30);

  sub_1E13E23E4(v33, v34);
  v35 = _s11AppStoreKit12ReferrerDataV2eeoiySbAC_ACtFZ_0(&v46, &v41);
  v36 = v44;
  v37 = v45;

  sub_1E137B778(v36, v37);
  v38 = v49;
  v39 = v50;

  sub_1E137B778(v38, v39);
  return v35 & 1;
}

uint64_t _s11AppStoreKit0aB8DeepLinkV17trampolineMetrics4from3forSDySSs11AnyHashableVGSg10Foundation3URLVSg_SStFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a1;
  v67[4] = *MEMORY[0x1E69E9840];
  v3 = sub_1E1AF5E5C();
  v59 = *(v3 - 8);
  v60 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v58 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1AEF59C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v61 = &v55 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB39F0, &qword_1E1B489E0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v55 - v12;
  v14 = sub_1E1AEF65C();
  v64 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v62 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v55 - v17;
  v19 = sub_1E1AEFCCC();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v63 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1E1AF602C();
  result = 0;
  if (v22)
  {
    sub_1E1307FE8(v65, v18);
    if ((*(v20 + 48))(v18, 1, v19) == 1)
    {
      v24 = &unk_1ECEB4B60;
      v25 = &unk_1E1B02620;
      v26 = v18;
    }

    else
    {
      v27 = v63;
      (*(v20 + 32))(v63, v18, v19);
      sub_1E1AEF5EC();
      v28 = v64;
      v29 = v14;
      if ((*(v64 + 48))(v13, 1, v14) != 1)
      {
        v30 = v62;
        (*(v28 + 32))(v62, v13, v29);
        v31 = sub_1E1AEF5CC();
        if (v31)
        {
          v32 = v31;
          v55 = v29;
          v56 = v19;
          v57 = v20;
          if (*(v31 + 16))
          {
            v33 = *(v31 + 16);
            v34 = 0;
            v65 = v6 + 16;
            while (1)
            {
              if (v34 >= *(v32 + 16))
              {
                __break(1u);
              }

              (*(v6 + 16))(v8, v32 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v34, v5);
              if (sub_1E1AEF57C() == 0xD000000000000011 && 0x80000001E1B5DF50 == v35)
              {
                break;
              }

              v36 = sub_1E1AF74AC();

              if (v36)
              {
                goto LABEL_20;
              }

              ++v34;
              (*(v6 + 8))(v8, v5);
              if (v33 == v34)
              {
                goto LABEL_17;
              }
            }

LABEL_20:

            v37 = v61;
            (*(v6 + 32))(v61, v8, v5);
            sub_1E1AEF58C();
            v39 = v38;
            (*(v6 + 8))(v37, v5);
            v40 = v57;
            v41 = v55;
            if (v39)
            {
              v42 = v58;
              sub_1E1AF5E4C();
              v43 = sub_1E1AF5E0C();
              v45 = v44;

              (*(v59 + 8))(v42, v60);
              v46 = v56;
              v47 = v64;
              v48 = v62;
              if (v45 >> 60 != 15)
              {
                v49 = objc_opt_self();
                v50 = sub_1E1AEFD2C();
                v67[0] = 0;
                v51 = [v49 JSONObjectWithData:v50 options:0 error:v67];

                if (v51)
                {
                  v52 = v67[0];
                  sub_1E1AF6EBC();
                  sub_1E1337F64(v43, v45);
                  swift_unknownObjectRelease();
                  (*(v47 + 8))(v48, v41);
                  (*(v40 + 8))(v63, v46);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB26F0, &qword_1E1B09040);
                  if (swift_dynamicCast())
                  {
                    return v66;
                  }

                  return 0;
                }

                v53 = v67[0];
                v54 = sub_1E1AEFB2C();

                swift_willThrow();
                sub_1E1337F64(v43, v45);
              }

              (*(v47 + 8))(v48, v41);
              (*(v40 + 8))(v63, v46);
            }

            else
            {
              (*(v64 + 8))(v62, v55);
              (*(v40 + 8))(v63, v56);
            }
          }

          else
          {
LABEL_17:

            (*(v64 + 8))(v62, v55);
            (*(v57 + 8))(v63, v56);
          }
        }

        else
        {
          (*(v28 + 8))(v30, v29);
          (*(v20 + 8))(v27, v19);
        }

        return 0;
      }

      (*(v20 + 8))(v27, v19);
      v24 = &qword_1ECEB39F0;
      v25 = &qword_1E1B489E0;
      v26 = v13;
    }

    sub_1E1308058(v26, v24, v25);
    return 0;
  }

  return result;
}

uint64_t _s11AppStoreKit0aB8DeepLinkV13widgetMetrics4from3forSDySSs11AnyHashableVGSg10Foundation3URLVSg_SStFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v77 = *MEMORY[0x1E69E9840];
  v4 = sub_1E1AF5E5C();
  v67 = *(v4 - 8);
  v68 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v66 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AEF59C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v69 = &v62 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB39F0, &qword_1E1B489E0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v62 - v13;
  v15 = sub_1E1AEF65C();
  v16 = *(v15 - 8);
  v71 = v15;
  v72 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v70 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v62 - v19;
  v21 = sub_1E1AEFCCC();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v73 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1E1AF602C();
  result = 0;
  if (v24)
  {
    sub_1E1307FE8(a1, v20);
    if ((*(v22 + 48))(v20, 1, v21) == 1)
    {
      v26 = &unk_1ECEB4B60;
      v27 = &unk_1E1B02620;
      v28 = v20;
    }

    else
    {
      v29 = v73;
      (*(v22 + 32))(v73, v20, v21);
      sub_1E1AEF5EC();
      v30 = v71;
      v31 = v72;
      if ((*(v72 + 48))(v14, 1, v71) != 1)
      {
        v32 = v70;
        (*(v31 + 32))(v70, v14, v30);
        v33 = sub_1E1AEF5CC();
        if (!v33)
        {
          (*(v31 + 8))(v32, v30);
          (*(v22 + 8))(v73, v21);
          return 0;
        }

        v34 = v33;
        v63 = v21;
        v64 = v22;
        v65 = *(v33 + 16);
        if (!v65)
        {
LABEL_17:

          (*(v72 + 8))(v70, v71);
          (*(v64 + 8))(v73, v63);
          return 0;
        }

        v35 = 0;
        v36 = 0x7363697274656DLL;
        while (1)
        {
          if (v35 >= *(v34 + 16))
          {
            __break(1u);
          }

          (*(v7 + 16))(v9, v34 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v35, v6);
          if (sub_1E1AEF57C() == v36 && v37 == 0xE700000000000000)
          {
            break;
          }

          v38 = v36;
          v39 = sub_1E1AF74AC();

          if (v39)
          {
            goto LABEL_20;
          }

          ++v35;
          (*(v7 + 8))(v9, v6);
          v36 = v38;
          if (v65 == v35)
          {
            goto LABEL_17;
          }
        }

LABEL_20:

        v40 = v69;
        (*(v7 + 32))(v69, v9, v6);
        sub_1E1AEF58C();
        v42 = v41;
        (*(v7 + 8))(v40, v6);
        v44 = v63;
        v43 = v64;
        if (!v42)
        {
          (*(v72 + 8))(v70, v71);
          (*(v43 + 8))(v73, v44);
          return 0;
        }

        v45 = v66;
        sub_1E1AF5E4C();
        v46 = sub_1E1AF5E0C();
        v48 = v47;

        (*(v67 + 8))(v45, v68);
        v49 = v73;
        v50 = v70;
        if (v48 >> 60 != 15)
        {
          v51 = objc_opt_self();
          v52 = sub_1E1AEFD2C();
          *&v75[0] = 0;
          v53 = [v51 JSONObjectWithData:v52 options:0 error:v75];

          if (!v53)
          {
            v59 = *&v75[0];
            v60 = v44;
            v61 = sub_1E1AEFB2C();

            swift_willThrow();
            sub_1E1337F64(v46, v48);

            (*(v72 + 8))(v50, v71);
            (*(v43 + 8))(v49, v60);
            return 0;
          }

          v54 = *&v75[0];
          sub_1E1AF6EBC();
          swift_unknownObjectRelease();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB26F0, &qword_1E1B09040);
          if (swift_dynamicCast())
          {
            v55 = v74;
            v56 = v71;
            if (*(v74 + 16))
            {
              v57 = sub_1E13018F8(0x6449746567646977, 0xE800000000000000);
              if (v58)
              {
                sub_1E134E724(*(v55 + 56) + 40 * v57, v75);
                sub_1E1337F64(v46, v48);
                (*(v72 + 8))(v50, v56);
                (*(v43 + 8))(v49, v44);
                sub_1E1308058(v75, &unk_1ECEB5670, qword_1E1B03EC0);
                return v55;
              }
            }

            sub_1E1337F64(v46, v48);

            (*(v72 + 8))(v50, v56);
            (*(v43 + 8))(v49, v44);
            v76 = 0;
            memset(v75, 0, sizeof(v75));
            v26 = &unk_1ECEB5670;
            v27 = qword_1E1B03EC0;
            v28 = v75;
            goto LABEL_6;
          }

          sub_1E1337F64(v46, v48);
        }

        (*(v72 + 8))(v50, v71);
        (*(v43 + 8))(v49, v44);
        return 0;
      }

      (*(v22 + 8))(v29, v21);
      v26 = &qword_1ECEB39F0;
      v27 = &qword_1E1B489E0;
      v28 = v14;
    }

LABEL_6:
    sub_1E1308058(v28, v26, v27);
    return 0;
  }

  return result;
}

void sub_1E142820C(uint64_t a1)
{
  sub_1E1AEFCCC();
  if (v1 <= 0x3F)
  {
    sub_1E14282AC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E14282AC()
{
  if (!qword_1EE1D2688)
  {
    v0 = sub_1E1AF6D9C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE1D2688);
    }
  }
}

uint64_t sub_1E14282FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppStoreDeepLink(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E1428360()
{
  result = qword_1ECEB39E8;
  if (!qword_1ECEB39E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB26F0, &qword_1E1B09040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB39E8);
  }

  return result;
}

uint64_t sub_1E14283DC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1E1428430()
{
  sub_1E13006E4(0, &qword_1EE1E31F0, 0x1E696AD98);
  result = sub_1E1AF6CDC();
  qword_1EE216BA0 = result;
  return result;
}

uint64_t _JetTraceReporter.init(metricsConfiguration:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for _JetTraceReporter(0);
  v5 = v4 - 8;
  v41 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v42 = v6;
  v43 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AF68DC();
  v39 = *(v7 - 8);
  v40 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v38 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1E1AF68AC();
  MEMORY[0x1EEE9AC00](v36);
  v9 = sub_1E1AF324C();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = *(v5 + 36);
  v11 = sub_1E1AF3EFC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 16);
  v35 = v11;
  v13(a2 + v10, a1);
  sub_1E1AF3EEC();
  v37 = a1;
  a2[6] = sub_1E1AF3ECC();
  a2[7] = v14;
  if (qword_1ECEB0F40 != -1)
  {
    swift_once();
  }

  v15 = qword_1EE1EE5E0;
  type metadata accessor for _JetTraceAggregator();
  v16 = swift_allocObject();
  *(v16 + 32) = 0u;
  v34 = (v16 + 32);
  *(v16 + 16) = 0u;
  *(v16 + 96) = 0u;
  *(v16 + 112) = 0u;
  v17 = MEMORY[0x1E69E7CC0];
  *(v16 + 128) = sub_1E159F790(MEMORY[0x1E69E7CC0]);
  v18 = sub_1E159F92C(v17);
  v19 = MEMORY[0x1E69E7CD0];
  *(v16 + 136) = v18;
  *(v16 + 144) = v19;
  *(v16 + 152) = v17;
  *(v16 + 160) = v17;
  *(v16 + 168) = v17;
  *(v16 + 176) = 0;
  *(v16 + 48) = v15;
  *(v16 + 56) = xmmword_1E1B09050;
  *(v16 + 72) = 0x404E000000000000;
  swift_beginAccess();
  v20 = *(v16 + 16);
  v21 = *(v16 + 24);
  *(v16 + 24) = 0;
  *(v16 + 16) = 0;
  v22 = v15;
  sub_1E1300EA8(v20, v21);
  *(v16 + 80) = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  sub_1E13006E4(0, &qword_1EE1E3430, 0x1E69E9610);
  sub_1E1AF322C();
  v44 = v17;
  sub_1E1408288();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A90, &unk_1E1B02C60);
  sub_1E1429210();
  sub_1E1AF6EEC();
  (*(v39 + 104))(v38, *MEMORY[0x1E69E8090], v40);
  v23 = sub_1E1AF692C();
  (*(v12 + 8))(v37, v35);
  *(v16 + 88) = v23;
  *a2 = v16;
  v24 = v43;
  sub_1E1429274(a2, v43);
  v25 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v26 = swift_allocObject();
  sub_1E14292D8(v24, v26 + v25);
  v27 = *(v16 + 16);
  v28 = *(v16 + 24);
  *(v16 + 16) = sub_1E142933C;
  *(v16 + 24) = v26;

  sub_1E1300EA8(v27, v28);
  sub_1E1429274(a2, v24);
  v29 = swift_allocObject();
  sub_1E14292D8(v24, v29 + v25);
  v30 = v34;
  swift_beginAccess();
  v31 = *v30;
  v32 = *(v16 + 40);
  *v30 = sub_1E14293B8;
  *(v16 + 40) = v29;
  sub_1E1300EA8(v31, v32);
}

uint64_t type metadata accessor for _JetTraceReporter(uint64_t a1)
{
  result = qword_1EE1F04F0;
  if (!qword_1EE1F04F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E14289E4(unint64_t *a1)
{
  v2 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v55 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF481C();
  v57 = *(v4 - 8);
  v58 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v56 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v7 = a1[1];
  v9 = a1[2];
  v8 = a1[3];
  v10 = MEMORY[0x1E69E6158];
  v54 = a1[4];
  v63 = MEMORY[0x1E69E6158];
  *&v62 = 6778732;
  *(&v62 + 1) = 0xE300000000000000;
  sub_1E1301CF0(&v62, v61);

  v11 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v60 = v11;
  sub_1E159827C(v61, 0x707954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  v13 = v60;
  if (qword_1ECEB0DA8 != -1)
  {
    swift_once();
  }

  v14 = qword_1EE216BA0;
  v63 = sub_1E13006E4(0, &qword_1EE1E31F0, 0x1E696AD98);
  *&v62 = v14;
  sub_1E1301CF0(&v62, v61);
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v60 = v13;
  sub_1E159827C(v61, 0x726556746E657665, 0xEC0000006E6F6973, v16);
  v17 = v60;
  v63 = v10;
  strcpy(&v62, "jetTraceEvents");
  HIBYTE(v62) = -18;
  sub_1E1301CF0(&v62, v61);
  v18 = swift_isUniquelyReferenced_nonNull_native();
  v60 = v17;
  sub_1E159827C(v61, 0x614E726567676F6CLL, 0xEA0000000000656DLL, v18);
  v19 = v60;
  v63 = v10;
  *&v62 = v7;
  *(&v62 + 1) = v9;
  sub_1E1301CF0(&v62, v61);
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v60 = v19;
  sub_1E159827C(v61, 0x6D614E746E657665, 0xE900000000000065, v20);
  v21 = v60;
  v63 = MEMORY[0x1E69E63B0];
  *&v62 = v6 / 1000000.0;
  sub_1E1301CF0(&v62, v61);
  v22 = swift_isUniquelyReferenced_nonNull_native();
  v60 = v21;
  sub_1E159827C(v61, 0x6E6F697461727564, 0xEA0000000000734DLL, v22);
  v23 = v60;
  v24 = *(v8 + 16);
  v25 = MEMORY[0x1E69E7CC0];
  if (v24)
  {
    *&v62 = MEMORY[0x1E69E7CC0];
    sub_1E135C088(0, v24, 0);
    v25 = v62;
    v53 = v8;
    v26 = (v8 + 72);
    v27 = v24;
    do
    {
      v28 = *(v26 - 1);
      v29 = *v26;
      *&v62 = v25;
      v30 = *(v25 + 16);
      v31 = *(v25 + 24);

      if (v30 >= v31 >> 1)
      {
        sub_1E135C088((v31 > 1), v30 + 1, 1);
        v25 = v62;
      }

      *(v25 + 16) = v30 + 1;
      v32 = v25 + 16 * v30;
      *(v32 + 32) = v28;
      *(v32 + 40) = v29;
      v26 += 6;
      --v27;
    }

    while (v27);
    v8 = v53;
  }

  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2D10, &unk_1E1B04970);
  v63 = v33;
  *&v62 = v25;
  sub_1E1301CF0(&v62, v61);
  v34 = swift_isUniquelyReferenced_nonNull_native();
  v60 = v23;
  sub_1E159827C(v61, 0x7974697669746361, 0xED000073656D614ELL, v34);
  v35 = v60;
  v36 = MEMORY[0x1E69E7CC0];
  if (v24)
  {
    *&v62 = MEMORY[0x1E69E7CC0];
    sub_1E135C088(0, v24, 0);
    v36 = v62;
    v37 = (v8 + 40);
    do
    {
      v38 = *(v37 - 1);
      v39 = *v37;
      *&v62 = v36;
      v41 = *(v36 + 16);
      v40 = *(v36 + 24);

      if (v41 >= v40 >> 1)
      {
        sub_1E135C088((v40 > 1), v41 + 1, 1);
        v36 = v62;
      }

      *(v36 + 16) = v41 + 1;
      v42 = v36 + 16 * v41;
      *(v42 + 32) = v38;
      *(v42 + 40) = v39;
      v37 += 6;
      --v24;
    }

    while (v24);
  }

  v63 = v33;
  *&v62 = v36;
  sub_1E1301CF0(&v62, v61);
  v43 = swift_isUniquelyReferenced_nonNull_native();
  v60 = v35;
  sub_1E159827C(v61, 0x7974697669746361, 0xEB00000000736449, v43);
  v44 = v60;

  sub_1E14C6330(v54);
  v46 = v45;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  *&v62 = v44;
  sub_1E1429508(v46, sub_1E160785C, 0, v47, &v62);

  v48 = v62;

  v49 = v56;
  sub_1E1AF47EC();
  if (qword_1EE1D2768 != -1)
  {
    swift_once();
  }

  v50 = sub_1E1AF591C();
  __swift_project_value_buffer(v50, qword_1EE216140);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7260, &unk_1E1B14430);
  *&v62 = v48;
  sub_1E1AF385C();
  sub_1E13E44F8(&v62);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  sub_1E1AF548C();

  __swift_project_boxed_opaque_existential_1Tm((v59 + 8), *(v59 + 32));
  sub_1E1AF49EC();
  return (*(v57 + 8))(v49, v58);
}

Swift::Void __swiftcall _JetTraceReporter.start()()
{
  v1 = *v0;
  v2 = *(v1 + 80);
  [v2 lock];
  sub_1E1651B04(v1);

  [v2 unlock];
}

unint64_t sub_1E1429210()
{
  result = qword_1EE1E34D8;
  if (!qword_1EE1E34D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECEB7A90, &unk_1E1B02C60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E34D8);
  }

  return result;
}

uint64_t sub_1E1429274(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _JetTraceReporter(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E14292D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _JetTraceReporter(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E142933C(uint64_t a1)
{
  type metadata accessor for _JetTraceReporter(0);
  v2 = *(a1 + 32);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v6 = v2;
  return sub_1E14289E4(v5);
}

uint64_t sub_1E1429400(uint64_t a1)
{
  result = type metadata accessor for _JetTraceAggregator();
  if (v2 <= 0x3F)
  {
    result = sub_1E14294A4();
    if (v3 <= 0x3F)
    {
      result = sub_1E1AF3EFC();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1E14294A4()
{
  result = qword_1ECEB39F8;
  if (!qword_1ECEB39F8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ECEB39F8);
  }

  return result;
}

unint64_t sub_1E1429508(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v48 = a1;
  v49 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v50 = v8;
  v51 = 0;
  v52 = v11 & v9;
  v53 = a2;
  v54 = a3;

  sub_1E16076FC(&v46);
  v12 = *(&v46 + 1);
  if (!*(&v46 + 1))
  {
    goto LABEL_25;
  }

  v13 = v46;
  sub_1E1301CF0(v47, v45);
  v14 = *a5;
  result = sub_1E13018F8(v13, v12);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (*(v14 + 24) < v20)
  {
    sub_1E168807C(v20, a4 & 1);
    result = sub_1E13018F8(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_1E1AF757C();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_1E14154D8();
    result = v26;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v21)
  {
LABEL_11:
    v23 = *a5;
    v24 = 32 * result;
    sub_1E137A5C4(*(*a5 + 56) + 32 * result, v44);
    __swift_destroy_boxed_opaque_existential_1(v45);

    v25 = *(v23 + 56);
    __swift_destroy_boxed_opaque_existential_1((v25 + v24));
    sub_1E1301CF0(v44, (v25 + v24));
    goto LABEL_15;
  }

LABEL_13:
  v27 = *a5;
  *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v28 = (v27[6] + 16 * result);
  *v28 = v13;
  v28[1] = v12;
  result = sub_1E1301CF0(v45, (v27[7] + 32 * result));
  v29 = v27[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (!v19)
  {
    v27[2] = v30;
LABEL_15:
    sub_1E16076FC(&v46);
    v12 = *(&v46 + 1);
    if (*(&v46 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v46;
        sub_1E1301CF0(v47, v45);
        v34 = *a5;
        result = sub_1E13018F8(v13, v12);
        v36 = *(v34 + 16);
        v37 = (v35 & 1) == 0;
        v19 = __OFADD__(v36, v37);
        v38 = v36 + v37;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v35;
        if (*(v34 + 24) < v38)
        {
          sub_1E168807C(v38, 1);
          result = sub_1E13018F8(v13, v12);
          if ((a4 & 1) != (v39 & 1))
          {
            goto LABEL_8;
          }
        }

        if (a4)
        {
          v31 = *a5;
          v32 = 32 * result;
          sub_1E137A5C4(*(*a5 + 56) + 32 * result, v44);
          __swift_destroy_boxed_opaque_existential_1(v45);

          v33 = *(v31 + 56);
          __swift_destroy_boxed_opaque_existential_1((v33 + v32));
          sub_1E1301CF0(v44, (v33 + v32));
        }

        else
        {
          v40 = *a5;
          *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
          v41 = (v40[6] + 16 * result);
          *v41 = v13;
          v41[1] = v12;
          result = sub_1E1301CF0(v45, (v40[7] + 32 * result));
          v42 = v40[2];
          v19 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v40[2] = v43;
        }

        sub_1E16076FC(&v46);
        v12 = *(&v46 + 1);
      }

      while (*(&v46 + 1));
    }

LABEL_25:
    sub_1E1337ECC(v48);
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1E1429878(uint64_t a1, uint64_t a2)
{
  v2 = sub_1E1AF72FC();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E14298CC(char a1)
{
  if (a1)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_1E14298FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1E1429970(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1E14299DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1E1429A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1E1429ABC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1E1429878(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1E1429AEC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E14298CC(*v1);
  *a1 = result;
  a1[1] = 0xE700000000000000;
  return result;
}

uint64_t HttpActionImplementation.perform(_:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = a3;
  v5 = sub_1E1AEF3AC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF539C();
  v49 = *(v9 - 8);
  v10 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v43 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3910, qword_1E1B089E0);
  v51 = sub_1E1AF588C();
  sub_1E13006E4(0, &qword_1EE1E3488, 0x1E698CBA8);
  sub_1E1AF421C();
  sub_1E1AF55EC();
  v44 = v54[0];
  v45 = v13;
  v47 = v9;
  v48 = a2;
  sub_1E1AF55EC();
  sub_1E13006E4(0, &qword_1EE1E3470, 0x1E698CAC8);
  sub_1E1AF55EC();
  v14 = v54[0];
  v46 = v54[0];
  type metadata accessor for ASKBagContract(0);
  sub_1E1AF55EC();
  v52 = v54[0];
  v15 = [objc_allocWithZone(MEMORY[0x1E698CB88]) initWithBag_];
  swift_unknownObjectRelease();
  [v15 setIncludeClientVersions_];
  v16 = [objc_opt_self() ams_sharedAccountStore];
  v17 = [v16 ams_activeiTunesAccount];

  [v15 setAccount_];
  [v15 setClientInfo_];
  v18 = [objc_allocWithZone(MEMORY[0x1E698CB90]) init];
  [v15 setResponseDecoder_];

  v19 = OBJC_IVAR____TtC11AppStoreKit10HttpAction_isStoreRequest;
  v20 = a1;
  swift_beginAccess();
  if (*(a1 + v19))
  {
    v21 = 2;
  }

  else
  {
    v21 = 0;
  }

  [v15 setAnisetteType_];
  [v15 setMescalType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3A00, &qword_1E1B09098);
  sub_1E197B7E8();
  v22 = sub_1E1AEF31C();
  (*(v6 + 8))(v8, v5);
  v23 = [v15 requestByEncodingRequest:v22 parameters:0];

  sub_1E1AF587C();
  v24 = sub_1E1AF470C();
  v25 = MEMORY[0x1E69AB218];
  v55 = v24;
  v56 = MEMORY[0x1E69AB218];
  __swift_allocate_boxed_opaque_existential_0(v54);
  sub_1E1AF46FC();
  sub_1E1AF57DC();

  __swift_destroy_boxed_opaque_existential_1(v54);
  v26 = swift_allocObject();
  v27 = v44;
  *(v26 + 16) = v44;
  v55 = v24;
  v56 = v25;
  __swift_allocate_boxed_opaque_existential_0(v54);
  v44 = v27;
  sub_1E1AF46FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3A08, &qword_1E1B090A0);
  sub_1E142ACD0();
  v43 = sub_1E1AF585C();

  __swift_destroy_boxed_opaque_existential_1(v54);
  v28 = v49;
  v29 = v50;
  v30 = v45;
  v31 = v47;
  (*(v49 + 16))(v50, v45, v47);
  v32 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v33 = (v10 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  v35 = *(v53 + 16);
  *(v34 + 16) = v35;
  *(v34 + 24) = v20;
  (*(v28 + 32))(v34 + v32, v29, v31);
  v36 = v51;
  *(v34 + v33) = v51;
  v37 = v48;
  *(v34 + ((v33 + 15) & 0xFFFFFFFFFFFFFFF8)) = v48;
  v38 = swift_allocObject();
  v38[2] = v35;
  v38[3] = v20;
  v38[4] = v36;
  v38[5] = v37;
  v39 = v36;
  v40 = sub_1E13006E4(0, &qword_1EE1E3430, 0x1E69E9610);
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v41 = sub_1E1AF68EC();
  v55 = v40;
  v56 = MEMORY[0x1E69AB720];
  v54[0] = v41;
  sub_1E1AF57FC();

  (*(v28 + 8))(v30, v31);
  __swift_destroy_boxed_opaque_existential_1(v54);
  return v39;
}

void sub_1E142A1CC(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a6;
  v28[0] = a5;
  v32 = a4;
  v29 = a3;
  v31 = sub_1E1AF3E2C();
  v8 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *a1;
  if (qword_1ECEB12B0 != -1)
  {
    swift_once();
  }

  v11 = sub_1E1AF591C();
  v28[1] = __swift_project_value_buffer(v11, qword_1ECEBA3E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B070F0;
  sub_1E1AF382C();
  v36 = type metadata accessor for HttpAction(0);
  v35[0] = a2;

  sub_1E1AF38DC();
  v33 = a2;
  sub_1E1308058(v35, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF382C();
  v12 = sub_1E1AF539C();
  v36 = v12;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v35);
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_0, v29, v12);
  sub_1E1AF38DC();
  sub_1E1308058(v35, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF382C();
  v36 = sub_1E13006E4(0, qword_1ECEB3AA0, 0x1E698CB98);
  v35[0] = v30;
  v14 = v30;
  sub_1E1AF38DC();
  sub_1E1308058(v35, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF549C();

  v15 = v31;
  (*(v8 + 104))(v10, *MEMORY[0x1E69AB010], v31);
  sub_1E1AF586C();
  (*(v8 + 8))(v10, v15);
  v16 = [objc_opt_self() defaultCenter];
  v17 = sub_1E1AF5DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3A98, &qword_1E1B09130);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E1B02CC0;
  v35[0] = 0x746C75736572;
  v35[1] = 0xE600000000000000;
  sub_1E1AF6F6C();
  v19 = v34;
  *(inited + 96) = type metadata accessor for HttpActionImplementation.Result(0, v34, v20, v21);
  *(inited + 72) = 0;
  sub_1E13609A4(inited);
  swift_setDeallocating();
  sub_1E1308058(inited + 32, &qword_1ECEBCAA0, &unk_1E1B02C50);
  v22 = sub_1E1AF5C6C();

  [v16 postNotificationName:v17 object:0 userInfo:v22];

  v23 = OBJC_IVAR____TtC11AppStoreKit10HttpAction_successAction;
  v24 = v33;
  swift_beginAccess();
  v25 = *(v24 + v23);
  if (v25)
  {
    v36 = type metadata accessor for Action(0);
    v37 = sub_1E142AE74(qword_1EE1D2F80, type metadata accessor for Action, &protocol conformance descriptor for Action);
    v35[0] = v25;
    type metadata accessor for HttpActionImplementation(0, v19, v26, v27);
    swift_retain_n();
    swift_getWitnessTable();
    sub_1E1834054(v35, v28[0]);

    __swift_destroy_boxed_opaque_existential_1(v35);
  }
}

void sub_1E142A794(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_1ECEB12B0 != -1)
  {
    swift_once();
  }

  v7 = sub_1E1AF591C();
  __swift_project_value_buffer(v7, qword_1ECEBA3E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B05090;
  sub_1E1AF382C();
  v26 = type metadata accessor for HttpAction(0);
  v25[0] = a2;

  sub_1E1AF38DC();
  sub_1E1308058(v25, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF382C();
  swift_getErrorValue();
  v8 = v29;
  v9 = v30;
  v26 = v30;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v25);
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_0, v8, v9);
  sub_1E1AF38DC();
  sub_1E1308058(v25, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF54AC();

  sub_1E1AF584C();
  v11 = [objc_opt_self() defaultCenter];
  v12 = sub_1E1AF5DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3A98, &qword_1E1B09130);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E1B02CC0;
  v25[0] = 0x746C75736572;
  v25[1] = 0xE600000000000000;
  sub_1E1AF6F6C();
  *(inited + 96) = type metadata accessor for HttpActionImplementation.Result(0, a5, v14, v15);
  *(inited + 72) = 1;
  sub_1E13609A4(inited);
  swift_setDeallocating();
  sub_1E1308058(inited + 32, &qword_1ECEBCAA0, &unk_1E1B02C50);
  v16 = sub_1E1AF5C6C();

  [v11 postNotificationName:v12 object:0 userInfo:v16];

  v25[0] = a1;
  v17 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB57A0, qword_1E1B05740);
  type metadata accessor for AMSError(0);
  if ((swift_dynamicCast() & 1) == 0 || (v18 = v28, v25[0] = v28, sub_1E142AE74(&qword_1ECEB20E0, type metadata accessor for AMSError, &unk_1E1B01C7C), sub_1E1AEFADC(), v18, v28 != 6))
  {
    v19 = OBJC_IVAR____TtC11AppStoreKit10HttpAction_failureAction;
    swift_beginAccess();
    v20 = *(a2 + v19);
    if (v20)
    {
      v26 = type metadata accessor for Action(0);
      v27 = sub_1E142AE74(qword_1EE1D2F80, type metadata accessor for Action, &protocol conformance descriptor for Action);
      v25[0] = v20;
      type metadata accessor for HttpActionImplementation(0, a5, v21, v22);
      swift_retain_n();
      swift_getWitnessTable();
      sub_1E1834054(v25, a4);

      __swift_destroy_boxed_opaque_existential_1(v25);
    }
  }
}

unint64_t sub_1E142ACD0()
{
  result = qword_1EE1D27E0;
  if (!qword_1EE1D27E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB3A08, &qword_1E1B090A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1D27E0);
  }

  return result;
}

void sub_1E142AD34(id *a1)
{
  v3 = *(v1 + 16);
  v4 = *(sub_1E1AF539C() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 24);
  v8 = *(v1 + v6);
  v9 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1E142A1CC(a1, v7, v1 + v5, v8, v9, v3);
}

uint64_t sub_1E142AE74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t BootstrapPhase.hashValue.getter()
{
  v1 = *v0;
  sub_1E1AF762C();
  MEMORY[0x1E6900360](v1);
  return sub_1E1AF767C();
}

uint64_t ShareSheetData.Metadata.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v66 = a3;
  v72 = a2;
  v4 = sub_1E1AF39DC();
  v70 = *(v4 - 8);
  v71 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v62 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v64 = &v61 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v65 = &v61 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v61 - v11;
  v13 = sub_1E1AF380C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v61 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v63 = &v61 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v61 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v61 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v61 - v25;
  v73 = a1;
  sub_1E1AF381C();
  v27 = sub_1E1AF37CC();
  v29 = v28;
  v30 = v26;
  v31 = v13;
  v68 = *(v14 + 8);
  v69 = v14 + 8;
  v68(v30, v13);
  if (v29)
  {
    v32 = v27 == 0x746375646F7270 && v29 == 0xE700000000000000;
    if (v32 || (sub_1E1AF74AC() & 1) != 0)
    {

      v33 = v73;
      (*(v14 + 16))(v23, v73, v13);
      v35 = v70;
      v34 = v71;
      v36 = v72;
      (*(v70 + 16))(v12, v72, v71);
      type metadata accessor for ShareSheetProductMetadata();
      swift_allocObject();
      v37 = v67;
      v38 = ShareSheetProductMetadata.init(deserializing:using:)(v23, v12);
      if (!v37)
      {
        v39 = v38;
        (*(v35 + 8))(v36, v34);
        result = (v68)(v33, v31);
        v41 = v39 | 0x4000000000000000;
LABEL_9:
        *v66 = v41;
        return result;
      }
    }

    else
    {
      v44 = v27 == 0x656C6369747261 && v29 == 0xE700000000000000;
      v35 = v70;
      if (v44 || (sub_1E1AF74AC() & 1) != 0)
      {

        v33 = v73;
        (*(v14 + 16))(v20, v73, v31);
        v45 = v65;
        v34 = v71;
        v36 = v72;
        (*(v35 + 16))(v65, v72, v71);
        type metadata accessor for ShareSheetArticleMetadata();
        swift_allocObject();
        v46 = v67;
        v47 = ShareSheetArticleMetadata.init(deserializing:using:)(v20, v45);
        if (!v46)
        {
          v48 = v47;
          (*(v35 + 8))(v36, v34);
          result = (v68)(v33, v31);
          *v66 = v48;
          return result;
        }
      }

      else if (v27 == 0x746E657645707061 && v29 == 0xE800000000000000 || (sub_1E1AF74AC() & 1) != 0)
      {

        v49 = v63;
        v33 = v73;
        (*(v14 + 16))(v63, v73, v31);
        v50 = v64;
        v34 = v71;
        v36 = v72;
        (*(v35 + 16))(v64, v72, v71);
        type metadata accessor for ShareSheetAppEventMetadata();
        swift_allocObject();
        v51 = v67;
        v52 = ShareSheetAppEventMetadata.init(deserializing:using:)(v49, v50);
        if (!v51)
        {
          v53 = v52;
          (*(v35 + 8))(v36, v34);
          result = (v68)(v33, v31);
          v41 = v53 | 0x8000000000000000;
          goto LABEL_9;
        }
      }

      else if (v27 == 0x636972656E6567 && v29 == 0xE700000000000000 || (sub_1E1AF74AC() & 1) != 0)
      {

        v54 = v61;
        v33 = v73;
        (*(v14 + 16))(v61, v73, v31);
        v55 = v62;
        v34 = v71;
        v36 = v72;
        (*(v35 + 16))(v62, v72, v71);
        type metadata accessor for ShareSheetGenericMetadata();
        swift_allocObject();
        v56 = v67;
        v57 = ShareSheetGenericMetadata.init(deserializing:using:)(v54, v55);
        if (!v56)
        {
          v58 = v57;
          (*(v35 + 8))(v36, v34);
          result = (v68)(v33, v31);
          v41 = v58 | 0xC000000000000000;
          goto LABEL_9;
        }
      }

      else
      {
        v59 = sub_1E1AF5A7C();
        sub_1E1380704();
        swift_allocError();
        *v60 = v27;
        v60[1] = v29;
        v60[2] = &type metadata for ShareSheetData.Metadata;
        (*(*(v59 - 8) + 104))(v60, *MEMORY[0x1E69AB680], v59);
        swift_willThrow();
        v33 = v73;
        v34 = v71;
        v36 = v72;
      }
    }
  }

  else
  {
    v42 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v43 = 0x747865746E6F63;
    v43[1] = 0xE700000000000000;
    v43[2] = &type metadata for ShareSheetData.Metadata;
    (*(*(v42 - 8) + 104))(v43, *MEMORY[0x1E69AB690], v42);
    swift_willThrow();
    v33 = v73;
    v34 = v71;
    v36 = v72;
    v35 = v70;
  }

  (*(v35 + 8))(v36, v34);
  return (v68)(v33, v31);
}

uint64_t ShareSheetData.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit14ShareSheetData_url;
  v4 = sub_1E1AEFCCC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ShareSheetData.__allocating_init(url:shortUrl:productMetadata:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = OBJC_IVAR____TtC11AppStoreKit14ShareSheetData_url;
  v8 = sub_1E1AEFCCC();
  (*(*(v8 - 8) + 32))(v6 + v7, a1, v8);
  sub_1E13E23F8(a2, v6 + OBJC_IVAR____TtC11AppStoreKit14ShareSheetData_shortUrl);
  *(v6 + OBJC_IVAR____TtC11AppStoreKit14ShareSheetData_metadata) = a3 | 0x4000000000000000;
  return v6;
}

uint64_t ShareSheetData.init(url:shortUrl:productMetadata:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC11AppStoreKit14ShareSheetData_url;
  v8 = sub_1E1AEFCCC();
  (*(*(v8 - 8) + 32))(v3 + v7, a1, v8);
  sub_1E13E23F8(a2, v3 + OBJC_IVAR____TtC11AppStoreKit14ShareSheetData_shortUrl);
  *(v3 + OBJC_IVAR____TtC11AppStoreKit14ShareSheetData_metadata) = a3 | 0x4000000000000000;
  return v3;
}

uint64_t ShareSheetData.__allocating_init(url:shortUrl:articleMetadata:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = OBJC_IVAR____TtC11AppStoreKit14ShareSheetData_url;
  v8 = sub_1E1AEFCCC();
  (*(*(v8 - 8) + 32))(v6 + v7, a1, v8);
  sub_1E13E23F8(a2, v6 + OBJC_IVAR____TtC11AppStoreKit14ShareSheetData_shortUrl);
  *(v6 + OBJC_IVAR____TtC11AppStoreKit14ShareSheetData_metadata) = a3;
  return v6;
}

uint64_t ShareSheetData.init(url:shortUrl:articleMetadata:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC11AppStoreKit14ShareSheetData_url;
  v8 = sub_1E1AEFCCC();
  (*(*(v8 - 8) + 32))(v3 + v7, a1, v8);
  sub_1E13E23F8(a2, v3 + OBJC_IVAR____TtC11AppStoreKit14ShareSheetData_shortUrl);
  *(v3 + OBJC_IVAR____TtC11AppStoreKit14ShareSheetData_metadata) = a3;
  return v3;
}

uint64_t ShareSheetData.__allocating_init(url:shortUrl:appEventMetadata:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = OBJC_IVAR____TtC11AppStoreKit14ShareSheetData_url;
  v8 = sub_1E1AEFCCC();
  (*(*(v8 - 8) + 32))(v6 + v7, a1, v8);
  sub_1E13E23F8(a2, v6 + OBJC_IVAR____TtC11AppStoreKit14ShareSheetData_shortUrl);
  *(v6 + OBJC_IVAR____TtC11AppStoreKit14ShareSheetData_metadata) = a3 | 0x8000000000000000;
  return v6;
}

uint64_t ShareSheetData.init(url:shortUrl:appEventMetadata:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC11AppStoreKit14ShareSheetData_url;
  v8 = sub_1E1AEFCCC();
  (*(*(v8 - 8) + 32))(v3 + v7, a1, v8);
  sub_1E13E23F8(a2, v3 + OBJC_IVAR____TtC11AppStoreKit14ShareSheetData_shortUrl);
  *(v3 + OBJC_IVAR____TtC11AppStoreKit14ShareSheetData_metadata) = a3 | 0x8000000000000000;
  return v3;
}

uint64_t ShareSheetData.__allocating_init(url:shortUrl:genericPageMetadata:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = OBJC_IVAR____TtC11AppStoreKit14ShareSheetData_url;
  v8 = sub_1E1AEFCCC();
  (*(*(v8 - 8) + 32))(v6 + v7, a1, v8);
  sub_1E13E23F8(a2, v6 + OBJC_IVAR____TtC11AppStoreKit14ShareSheetData_shortUrl);
  *(v6 + OBJC_IVAR____TtC11AppStoreKit14ShareSheetData_metadata) = a3 | 0xC000000000000000;
  return v6;
}

uint64_t ShareSheetData.init(url:shortUrl:genericPageMetadata:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC11AppStoreKit14ShareSheetData_url;
  v8 = sub_1E1AEFCCC();
  (*(*(v8 - 8) + 32))(v3 + v7, a1, v8);
  sub_1E13E23F8(a2, v3 + OBJC_IVAR____TtC11AppStoreKit14ShareSheetData_shortUrl);
  *(v3 + OBJC_IVAR____TtC11AppStoreKit14ShareSheetData_metadata) = a3 | 0xC000000000000000;
  return v3;
}

uint64_t ShareSheetData.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ShareSheetData.init(deserializing:using:)(a1, a2);
  return v4;
}

void *ShareSheetData.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v48 = a2;
  v50 = v3;
  v43 = *v3;
  v47 = sub_1E1AF39DC();
  v51 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v44 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - v10;
  v12 = sub_1E1AF380C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v42 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v41 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v41 - v19;
  v21 = sub_1E1AEFCCC();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v46 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a1;
  sub_1E1AF381C();
  sub_1E1AF36FC();
  v24 = v20;
  v25 = v12;
  v49 = *(v13 + 8);
  v49(v24, v12);
  if ((*(v22 + 48))(v11, 1, v21) == 1)
  {
    sub_1E13ECBA0(v11);
    v26 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v27 = 7107189;
    v28 = v43;
    v27[1] = 0xE300000000000000;
    v27[2] = v28;
    (*(*(v26 - 8) + 104))(v27, *MEMORY[0x1E69AB690], v26);
    swift_willThrow();
    (*(v51 + 8))(v48, v47);
    v49(v52, v12);
    v29 = v50;
  }

  else
  {
    v30 = v46;
    (*(v22 + 32))(v46, v11, v21);
    v31 = *(v22 + 16);
    v32 = v50;
    v41 = OBJC_IVAR____TtC11AppStoreKit14ShareSheetData_url;
    v31(v50 + OBJC_IVAR____TtC11AppStoreKit14ShareSheetData_url, v30, v21);
    sub_1E1AF381C();
    sub_1E1AF36FC();
    v43 = v25;
    v49(v17, v25);
    v33 = OBJC_IVAR____TtC11AppStoreKit14ShareSheetData_shortUrl;
    sub_1E13E23F8(v8, v32 + OBJC_IVAR____TtC11AppStoreKit14ShareSheetData_shortUrl);
    v34 = v42;
    sub_1E1AF381C();
    v35 = v44;
    v37 = v47;
    v36 = v48;
    (*(v51 + 16))(v44, v48, v47);
    v38 = v45;
    ShareSheetData.Metadata.init(deserializing:using:)(v34, v35, &v53);
    if (!v38)
    {
      (*(v51 + 8))(v36, v37);
      v49(v52, v43);
      (*(v22 + 8))(v46, v21);
      v29 = v50;
      *(v50 + OBJC_IVAR____TtC11AppStoreKit14ShareSheetData_metadata) = v53;
      return v29;
    }

    (*(v51 + 8))(v36, v37);
    v49(v52, v43);
    v39 = *(v22 + 8);
    v39(v46, v21);
    v29 = v50;
    v39(v50 + v41, v21);
    sub_1E13ECBA0(v29 + v33);
  }

  type metadata accessor for ShareSheetData(0);
  swift_deallocPartialClassInstance();
  return v29;
}

uint64_t ShareSheetData.deinit()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit14ShareSheetData_url;
  v2 = sub_1E1AEFCCC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E13ECBA0(v0 + OBJC_IVAR____TtC11AppStoreKit14ShareSheetData_shortUrl);

  return v0;
}

uint64_t ShareSheetData.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit14ShareSheetData_url;
  v2 = sub_1E1AEFCCC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E13ECBA0(v0 + OBJC_IVAR____TtC11AppStoreKit14ShareSheetData_shortUrl);

  return swift_deallocClassInstance();
}

void *sub_1E142C518@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for ShareSheetData(0);
  v7 = swift_allocObject();
  result = ShareSheetData.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t type metadata accessor for ShareSheetData(uint64_t a1)
{
  result = qword_1EE1F3AE0;
  if (!qword_1EE1F3AE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E142C5D8(uint64_t a1)
{
  sub_1E1AEFCCC();
  if (v1 <= 0x3F)
  {
    sub_1E130072C(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1E142C748(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 8))
  {
    return (*a1 + 125);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1E142C7A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t BasePage.__allocating_init(pageRefreshPolicy:pageMetrics:pageRenderEvent:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B28, &unk_1E1B11460);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v29 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v25 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  v14 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
  v15 = sub_1E1AF3C3C();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v13 + v14, a2, v15);
  v30 = v13;
  *(v13 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent) = a3;
  sub_1E142CF54(a4, v12);
  v17 = sub_1E1AF39DC();
  v18 = *(v17 - 8);
  v28 = *(v18 + 48);
  if (v28(v12, 1, v17) == 1)
  {
    sub_1E142CFC4(a4);
    (*(v16 + 8))(a2, v15);
  }

  else
  {
    v26 = a4;
    v27 = a2;
    v19 = qword_1EE1E3BC8;
    v25[0] = a1;

    v25[1] = a3;

    if (v19 != -1)
    {
      swift_once();
    }

    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30, qword_1E1B0C400);
    __swift_project_value_buffer(v20, qword_1EE1E3BD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38, &unk_1E1B11470);
    sub_1E1AF39EC();
    v21 = v31;
    if (v31)
    {
    }

    v22 = *(v18 + 8);
    v22(v12, v17);
    if (!v21)
    {

      sub_1E142CFC4(v26);
      (*(v16 + 8))(v27, v15);
      return v30;
    }

    v23 = v26;
    v12 = v29;
    sub_1E142CF54(v26, v29);
    if (v28(v12, 1, v17) != 1)
    {
      sub_1E15F0974();

      sub_1E142CFC4(v23);
      (*(v16 + 8))(v27, v15);
      v22(v12, v17);
      return v30;
    }

    sub_1E142CFC4(v23);
    (*(v16 + 8))(v27, v15);
  }

  sub_1E142CFC4(v12);
  return v30;
}

uint64_t BasePage.init(pageRefreshPolicy:pageMetrics:pageRenderEvent:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B28, &unk_1E1B11460);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v34 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - v12;
  *(v4 + 16) = a1;
  v14 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
  v15 = sub_1E1AF3C3C();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v4 + v14, a2, v15);
  v35 = v4;
  *(v4 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent) = a3;
  sub_1E142CF54(a4, v13);
  v17 = sub_1E1AF39DC();
  v18 = *(v17 - 8);
  v33 = *(v18 + 48);
  if (v33(v13, 1, v17) == 1)
  {
    sub_1E142CFC4(a4);
    (*(v16 + 8))(a2, v15);
    v19 = v13;
  }

  else
  {
    v28 = v18;
    v29 = a1;
    v31 = a4;
    v32 = a2;
    v20 = qword_1EE1E3BC8;

    v30 = a3;

    if (v20 != -1)
    {
      swift_once();
    }

    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30, qword_1E1B0C400);
    __swift_project_value_buffer(v21, qword_1EE1E3BD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38, &unk_1E1B11470);
    sub_1E1AF39EC();
    v22 = v36;
    if (v36)
    {
    }

    v23 = *(v28 + 8);
    v23(v13, v17);
    if (!v22)
    {

      sub_1E142CFC4(v31);
      (*(v16 + 8))(v32, v15);
      return v35;
    }

    v24 = v31;
    v25 = v34;
    sub_1E142CF54(v31, v34);
    if (v33(v25, 1, v17) != 1)
    {
      sub_1E15F0974();

      sub_1E142CFC4(v24);
      (*(v16 + 8))(v32, v15);
      v23(v25, v17);
      return v35;
    }

    sub_1E142CFC4(v24);
    (*(v16 + 8))(v32, v15);
    v19 = v25;
  }

  sub_1E142CFC4(v19);
  return v35;
}

uint64_t sub_1E142CF54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B28, &unk_1E1B11460);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E142CFC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B28, &unk_1E1B11460);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t BasePage.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  BasePage.init(deserializing:using:)(a1, a2);
  return v4;
}

void *BasePage.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v41 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B28, &unk_1E1B11460);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v32 = v27 - v4;
  v5 = sub_1E1AF3C3C();
  v30 = *(v5 - 8);
  v31 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v35 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1E1AF39DC();
  v7 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v34 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v27 - v10;
  v12 = sub_1E1AF380C();
  v38 = *(v12 - 8);
  v39 = v12;
  MEMORY[0x1EEE9AC00](v12);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v27 - v14;
  type metadata accessor for PageRefreshPolicy(0);
  sub_1E1AF381C();
  v40 = v7;
  v16 = *(v7 + 16);
  v17 = v33;
  v16(v11, a2, v33);
  sub_1E142DC50(&qword_1EE1F0EA0, type metadata accessor for PageRefreshPolicy, &protocol conformance descriptor for PageRefreshPolicy);
  v27[1] = v15;
  v29 = v11;
  v19 = v35;
  v18 = v36;
  sub_1E1AF464C();
  *(v18 + 16) = v42;
  sub_1E1AF381C();
  v28 = v16;
  v16(v34, a2, v17);
  v20 = v37;
  sub_1E1AF3BAC();
  if (v20)
  {
    (*(v40 + 8))(a2, v17);
    (*(v38 + 8))(v41, v39);

    type metadata accessor for BasePage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    (*(v30 + 32))(v18 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics, v19, v31);
    type metadata accessor for PageRenderMetricsEvent();
    v21 = a2;
    sub_1E1AF381C();
    v22 = a2;
    v23 = v28;
    v28(v29, v22, v17);
    sub_1E142DC50(&qword_1EE1EC280, type metadata accessor for PageRenderMetricsEvent, &protocol conformance descriptor for PageRenderMetricsEvent);
    sub_1E1AF464C();
    *(v18 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent) = v42;
    v24 = v32;
    v23(v32, v21, v17);
    v25 = v40;
    (*(v40 + 56))(v24, 0, 1, v17);
    sub_1E142DC98(v24);
    (*(v25 + 8))(v21, v17);
    (*(v38 + 8))(v41, v39);
    sub_1E142CFC4(v24);
  }

  return v18;
}

uint64_t sub_1E142D5D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
  swift_beginAccess();
  v5 = sub_1E1AF3C3C();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1E142D664(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1E1AF3C3C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

uint64_t sub_1E142D77C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
  swift_beginAccess();
  v4 = sub_1E1AF3C3C();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1E142D804(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
  swift_beginAccess();
  v4 = sub_1E1AF3C3C();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t BasePage.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
  v2 = sub_1E1AF3C3C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t BasePage.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
  v2 = sub_1E1AF3C3C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1E142DA30@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 112))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1E142DA80@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
  swift_beginAccess();
  v5 = sub_1E1AF3C3C();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_1E142DB0C(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
  swift_beginAccess();
  v5 = sub_1E1AF3C3C();
  (*(*(v5 - 8) + 40))(v3 + v4, a1, v5);
  return swift_endAccess();
}

uint64_t type metadata accessor for BasePage(uint64_t a1)
{
  result = qword_1EE1E48F0;
  if (!qword_1EE1E48F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E142DC50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E142DC98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B28, &unk_1E1B11460);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  sub_1E142CF54(a1, &v17 - v6);
  v8 = sub_1E1AF39DC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v7, 1, v8) == 1)
  {
    v11 = v7;
    return sub_1E142CFC4(v11);
  }

  if (qword_1EE1E3BC8 != -1)
  {
    swift_once();
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30, qword_1E1B0C400);
  __swift_project_value_buffer(v12, qword_1EE1E3BD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38, &unk_1E1B11470);
  sub_1E1AF39EC();
  v13 = v18;
  if (v18)
  {
  }

  v14 = *(v9 + 8);
  result = v14(v7, v8);
  if (v13)
  {
    sub_1E142CF54(a1, v4);
    if (v10(v4, 1, v8) != 1)
    {
      v16 = sub_1E15F0974();
      return (v14)(v4, v8, v16);
    }

    v11 = v4;
    return sub_1E142CFC4(v11);
  }

  return result;
}

uint64_t sub_1E142DEC0(uint64_t a1)
{
  result = sub_1E1AF3C3C();
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

void sub_1E142E020(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v28 = MEMORY[0x1E69E7CC0];
    sub_1E135C500(0, v1, 0);
    v2 = v28;
    v3 = a1 + 64;
    v4 = sub_1E1AF6EFC();
    v5 = a1;
    v6 = 0;
    v24 = v1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(v5 + 32))
    {
      v9 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_21;
      }

      v25 = *(v5 + 36);
      v10 = *(*(v5 + 56) + 8 * v4);
      sub_1E134E724(v10 + OBJC_IVAR____TtC11AppStoreKit6Action_id, v26);
      *(&v27 + 1) = v10;
      v28 = v2;
      v12 = *(v2 + 16);
      v11 = *(v2 + 24);

      if (v12 >= v11 >> 1)
      {
        sub_1E135C500((v11 > 1), v12 + 1, 1);
        v2 = v28;
      }

      *(v2 + 16) = v12 + 1;
      v13 = (v2 + 48 * v12);
      v14 = v26[0];
      v15 = v27;
      v13[3] = v26[1];
      v13[4] = v15;
      v13[2] = v14;
      v7 = 1 << *(v5 + 32);
      v3 = a1 + 64;
      if (v4 >= v7)
      {
        goto LABEL_22;
      }

      v16 = *(a1 + 64 + 8 * v9);
      if ((v16 & (1 << v4)) == 0)
      {
        goto LABEL_23;
      }

      if (v25 != *(v5 + 36))
      {
        goto LABEL_24;
      }

      v17 = v16 & (-2 << (v4 & 0x3F));
      if (v17)
      {
        v7 = __clz(__rbit64(v17)) | v4 & 0x7FFFFFFFFFFFFFC0;
        v8 = v24;
      }

      else
      {
        v18 = v9 << 6;
        v19 = v9 + 1;
        v20 = (a1 + 72 + 8 * v9);
        v8 = v24;
        while (v19 < (v7 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            sub_1E142EA30(v4, v25, 0);
            v5 = a1;
            v7 = __clz(__rbit64(v21)) + v18;
            goto LABEL_4;
          }
        }

        sub_1E142EA30(v4, v25, 0);
        v5 = a1;
      }

LABEL_4:
      ++v6;
      v4 = v7;
      if (v6 == v8)
      {
        return;
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
}

uint64_t sub_1E142E280(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B50, "~9\b");
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  v20 = a1;
  v7 = *(a1 + 40);

  v8 = sub_1E1AF2ABC();
  sub_1E1AF2ABC();

  sub_1E1AF2B1C();

  v9 = sub_1E1AF282C();
  sub_1E1AF275C();

  sub_1E1AF275C();

  v10 = sub_1E1AF2B2C();
  type metadata accessor for LinkableTextViewModel(0);
  v11 = swift_allocObject();

  sub_1E142E020(v12);
  v14 = v13;

  if (*(v14 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB37B8, &qword_1E1B216E0);
    v15 = sub_1E1AF72CC();
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC8];
  }

  v21 = v15;

  sub_1E142E5BC(v16, 1, &v21);

  *(v11 + qword_1ECEB46A0) = v21;
  v11[3] = v8;
  v11[4] = v10;
  LinkableText.asMarkdownAttributedString()(v6);
  v17 = sub_1E1AEF91C();
  if ((*(*(v17 - 8) + 48))(v6, 1, v17))
  {
  }

  else
  {
    v21 = v9;
    sub_1E142E9DC();
    sub_1E1AEF93C();
  }

  sub_1E134FD1C(v6, v11 + qword_1ECEB4698, &qword_1ECEB3B50, "~9\b");
  v11[2] = v7;
  sub_1E142E974(v6);
  *(v2 + 16) = v20;
  *(v2 + 24) = v11;
  return v2;
}

uint64_t sub_1E142E4E8()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ProductCapabilityViewModel(uint64_t a1)
{
  result = qword_1ECEB3B40;
  if (!qword_1ECEB3B40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E142E5BC(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_21;
  }

  LOBYTE(v6) = a2;
  sub_1E134FD1C(a1 + 32, &v43, &qword_1ECEB26A0, qword_1E1B09530);
  v40 = v43;
  v41 = v44;
  v7 = v46;
  v42 = v45;
  v8 = *a3;
  v9 = sub_1E135FCF4(&v40);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  LOBYTE(v15) = v10;
  if (v8[3] < v14)
  {
    sub_1E168B0C0(v14, v6 & 1);
    v9 = sub_1E135FCF4(&v40);
    if ((v15 & 1) == (v16 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v9 = sub_1E1AF757C();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v15)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v19 = v9;
  sub_1E14171D0();
  v9 = v19;
  if (v15)
  {
LABEL_8:
    v17 = swift_allocError();
    swift_willThrow();
    v47 = v17;
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB57A0, qword_1E1B05740);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_1E134B88C(&v40);

      return;
    }

    goto LABEL_25;
  }

LABEL_11:
  v20 = *a3;
  *(*a3 + 8 * (v9 >> 6) + 64) |= 1 << v9;
  v21 = v20[6] + 40 * v9;
  v22 = v40;
  v23 = v41;
  *(v21 + 32) = v42;
  *v21 = v22;
  *(v21 + 16) = v23;
  *(v20[7] + 8 * v9) = v7;
  v24 = v20[2];
  v13 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (!v13)
  {
    v20[2] = v25;
    if (v4 != 1)
    {
      v15 = a1 + 80;
      v6 = 1;
      while (v6 < *(a1 + 16))
      {
        sub_1E134FD1C(v15, &v43, &qword_1ECEB26A0, qword_1E1B09530);
        v40 = v43;
        v41 = v44;
        v7 = v46;
        v42 = v45;
        v26 = *a3;
        v27 = sub_1E135FCF4(&v40);
        v29 = v26[2];
        v30 = (v28 & 1) == 0;
        v13 = __OFADD__(v29, v30);
        v31 = v29 + v30;
        if (v13)
        {
          goto LABEL_22;
        }

        v32 = v28;
        if (v26[3] < v31)
        {
          sub_1E168B0C0(v31, 1);
          v27 = sub_1E135FCF4(&v40);
          if ((v32 & 1) != (v33 & 1))
          {
            goto LABEL_5;
          }
        }

        if (v32)
        {
          goto LABEL_8;
        }

        v34 = *a3;
        *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
        v35 = v34[6] + 40 * v27;
        v36 = v40;
        v37 = v41;
        *(v35 + 32) = v42;
        *v35 = v36;
        *(v35 + 16) = v37;
        *(v34[7] + 8 * v27) = v7;
        v38 = v34[2];
        v13 = __OFADD__(v38, 1);
        v39 = v38 + 1;
        if (v13)
        {
          goto LABEL_23;
        }

        ++v6;
        v34[2] = v39;
        v15 += 48;
        if (v4 == v6)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_24;
    }

LABEL_21:

    return;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  sub_1E1AF6FEC();
  MEMORY[0x1E68FECA0](0xD00000000000001BLL, 0x80000001E1B5E120);
  sub_1E1AF714C();
  MEMORY[0x1E68FECA0](39, 0xE100000000000000);
  sub_1E1AF71FC();
  __break(1u);
}

uint64_t sub_1E142E974(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B50, "~9\b");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E142E9DC()
{
  result = qword_1ECEB3B58;
  if (!qword_1ECEB3B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB3B58);
  }

  return result;
}

double sub_1E142EA30(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1E142EA84(uint64_t a1)
{
  result = type metadata accessor for AccessibilityFeatures(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ScaledSpaceMetric(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

__n128 sub_1E142EB2C@<Q0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B70, &qword_1E1B095C8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (v12 - v3);
  type metadata accessor for AccessibilityFeaturesDetailsView(0);
  v5 = ScaledSpaceMetric.wrappedValue.getter();
  *v4 = sub_1E1AF256C();
  v4[1] = v5;
  *(v4 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B78, &qword_1E1B095D0);

  v7 = sub_1E143087C(v6);

  *&v12[0] = v7;
  swift_getKeyPath(byte_1E1B095D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B80, &qword_1E1B09600);
  type metadata accessor for AccessibilityFeaturesDetailsView.FeatureView(0);
  sub_1E1302CD4(&qword_1ECEB3B88, &qword_1ECEB3B80, &qword_1E1B09600, MEMORY[0x1E69E6338]);
  sub_1E1431064(&qword_1ECEB3B90, type metadata accessor for AccessibilityFeaturesDetailsView.FeatureView, &unk_1E1B096A4);
  sub_1E1AF2CAC();
  sub_1E1AF2D2C();
  sub_1E1AF230C();
  sub_1E137F600(v4, a1, &qword_1ECEB3B70, &qword_1E1B095C8);
  v8 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B98, &qword_1E1B09608) + 36);
  v9 = v12[5];
  *(v8 + 64) = v12[4];
  *(v8 + 80) = v9;
  *(v8 + 96) = v12[6];
  v10 = v12[1];
  *v8 = v12[0];
  *(v8 + 16) = v10;
  result = v12[3];
  *(v8 + 32) = v12[2];
  *(v8 + 48) = result;
  return result;
}

uint64_t sub_1E142EDB4@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = sub_1E1AF284C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = a1;
  v8 = type metadata accessor for AccessibilityFeaturesDetailsView.FeatureView(0);
  v15[1] = 0x4046000000000000;
  (*(v5 + 104))(v7, *MEMORY[0x1E6980F00], v4);
  sub_1E1430A8C();

  sub_1E1AF20DC();
  v9 = (a2 + v8[6]);
  *v9 = swift_getKeyPath("Ȼ;\v");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3BA8, &qword_1E1B09640);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for ScaledSpaceMetric(0);
  *(v9 + *(v10 + 20)) = 0x4020000000000000;
  v11 = (a2 + v8[7]);
  *v11 = swift_getKeyPath("Ȼ;\v");
  swift_storeEnumTagMultiPayload();
  *(v11 + *(v10 + 20)) = 0x4010000000000000;
  v12 = v8[8];
  *(a2 + v12) = swift_getKeyPath("Ȼ;\v");
  swift_storeEnumTagMultiPayload();
  v13 = a2 + v8[9];
  result = swift_getKeyPath(byte_1E1B09648);
  *v13 = result;
  v13[8] = 0;
  return result;
}

uint64_t sub_1E142EFB0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v17[1] = a1;
  v3 = sub_1E1AF261C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3C00, &qword_1E1B096F8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = v17 - v9;
  v12 = *(v11 + 36);
  *&v10[v12] = swift_getKeyPath("Ȼ;\v", v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3BA8, &qword_1E1B09640);
  swift_storeEnumTagMultiPayload();
  v13 = &v10[*(v7 + 40)];
  *v13 = swift_getKeyPath("Ȼ;\v");
  swift_storeEnumTagMultiPayload();
  v14 = type metadata accessor for ScaledSpaceMetric(0);
  *&v13[*(v14 + 20)] = 0x4010000000000000;
  v15 = &v10[*(v7 + 44)];
  *v15 = swift_getKeyPath("Ȼ;\v");
  swift_storeEnumTagMultiPayload();
  *&v15[*(v14 + 20)] = 0x4020000000000000;
  sub_1E142F200(v2, v10);
  sub_1E1AF260C();
  sub_1E1302CD4(&qword_1ECEB3C08, &qword_1ECEB3C00, &qword_1E1B096F8, &unk_1E1B097B0);
  sub_1E1AF29FC();
  (*(v4 + 8))(v6, v3);
  return sub_1E1308058(v10, &qword_1ECEB3C00, &qword_1E1B096F8);
}

uint64_t sub_1E142F200@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v62 = sub_1E1AF227C();
  v68 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v4 = v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3C10, &qword_1E1B09700);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v61 - v6;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3C18, &qword_1E1B09708);
  MEMORY[0x1EEE9AC00](v63);
  v9 = v61 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3C20, &qword_1E1B09710);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v66 = v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v67 = v61 - v13;
  v14 = *(*a1 + 88);
  v15 = type metadata accessor for SwiftUIArtworkView(0);
  v16 = v15[6];
  v17 = *MEMORY[0x1E6981688];
  v18 = sub_1E1AF2BAC();
  (*(*(v18 - 8) + 104))(&v7[v16], v17, v18);
  *(v7 + 1) = 0;
  *(v7 + 2) = 0;
  *v7 = v14;
  v7[24] = 1;
  v19 = &v7[v15[7]];
  *v19 = 0;
  *(v19 + 1) = 0;
  v19[16] = 1;
  v7[v15[8]] = 2;
  v7[v15[9]] = 0;

  v20 = sub_1E1AF276C();
  KeyPath = swift_getKeyPath(aX_5);
  v22 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3C28, &qword_1E1B3A770) + 36)];
  *v22 = KeyPath;
  v22[1] = v20;
  v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3C30, &unk_1E1B09750) + 36)] = 1;
  sub_1E1AF221C();
  v23 = type metadata accessor for AccessibilityFeaturesDetailsView.FeatureView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3BB8, &qword_1E1B15F60);
  sub_1E1AF20FC();
  sub_1E1AF20FC();
  v24 = a1;
  v61[1] = *(v23 + 32);
  v25 = v62;
  sub_1E18710E0();
  v26 = _s11AppStoreKit15PageEnvironmentV4isAXSbvg_0();
  v27 = *(v68 + 8);
  v64 = v4;
  v68 += 8;
  v61[0] = v27;
  v27(v4, v25);
  if (v26)
  {
    sub_1E1AF2D2C();
  }

  else
  {
    sub_1E1AF2D1C();
  }

  sub_1E1AF214C();
  sub_1E137F600(v7, v9, &qword_1ECEB3C10, &qword_1E1B09700);
  v28 = &v9[*(v63 + 36)];
  v29 = v103;
  *v28 = v102;
  *(v28 + 1) = v29;
  *(v28 + 2) = v104;
  sub_1E1430DAC();
  sub_1E1AF29DC();
  sub_1E1308058(v9, &qword_1ECEB3C18, &qword_1E1B09708);
  v63 = sub_1E1AF257C();
  v30 = ScaledSpaceMetric.wrappedValue.getter();
  v91 = 0;
  sub_1E142FAA4(v24, &v74);
  v96 = v75[0];
  v97 = v75[1];
  v98 = v75[2];
  v99 = *&v75[3];
  v95 = v74;
  v100[2] = v75[1];
  v100[3] = v75[2];
  v101 = *&v75[3];
  v100[0] = v74;
  v100[1] = v75[0];
  sub_1E134FD1C(&v95, &v69, &qword_1ECEB3C88, &qword_1E1B09768);
  sub_1E1308058(v100, &qword_1ECEB3C88, &qword_1E1B09768);
  *(&v90[1] + 7) = v96;
  *(&v90[2] + 7) = v97;
  *(&v90[3] + 7) = v98;
  *(&v90[4] + 7) = v99;
  *(v90 + 7) = v95;
  v31 = v91;
  v32 = sub_1E1AF26EC();
  v33 = v64;
  sub_1E18710E0();
  v34 = _s11AppStoreKit15PageEnvironmentV4isAXSbvg_0();
  (v61[0])(v33, v25);
  if ((v34 & 1) == 0)
  {
    ScaledSpaceMetric.wrappedValue.getter();
  }

  sub_1E1AF207C();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v92 = 0;
  sub_1E1AF2D2C();
  sub_1E1AF230C();
  *&v94[55] = v105[3];
  *&v94[71] = v105[4];
  *&v94[87] = v105[5];
  *&v94[103] = v105[6];
  *&v94[7] = v105[0];
  *&v94[23] = v105[1];
  *&v94[39] = v105[2];
  v44 = v66;
  v43 = v67;
  sub_1E134FD1C(v67, v66, &qword_1ECEB3C20, &qword_1E1B09710);
  v45 = v65;
  sub_1E134FD1C(v44, v65, &qword_1ECEB3C20, &qword_1E1B09710);
  v46 = (v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3C90, &qword_1E1B09770) + 48));
  v47 = v63;
  *&v69 = v63;
  *(&v69 + 1) = v30;
  LOBYTE(v70[0]) = v31;
  *(&v70[1] + 1) = v90[1];
  *(&v70[2] + 1) = v90[2];
  *(&v70[3] + 1) = v90[3];
  v70[4] = *(&v90[3] + 15);
  *(v70 + 1) = v90[0];
  LOBYTE(v71) = v32;
  *(&v71 + 1) = *v93;
  DWORD1(v71) = *&v93[3];
  *(&v71 + 1) = v36;
  *&v72 = v38;
  *(&v72 + 1) = v40;
  *&v73[0] = v42;
  BYTE8(v73[0]) = 0;
  *(v73 + 9) = *v94;
  *(&v73[3] + 9) = *&v94[48];
  *(&v73[2] + 9) = *&v94[32];
  *(&v73[1] + 9) = *&v94[16];
  *(&v73[7] + 1) = *&v94[111];
  *(&v73[6] + 9) = *&v94[96];
  *(&v73[5] + 9) = *&v94[80];
  *(&v73[4] + 9) = *&v94[64];
  v48 = v69;
  v49 = v70[0];
  v50 = v70[2];
  v46[2] = v70[1];
  v46[3] = v50;
  *v46 = v48;
  v46[1] = v49;
  v51 = v70[3];
  v52 = v70[4];
  v53 = v72;
  v46[6] = v71;
  v46[7] = v53;
  v46[4] = v51;
  v46[5] = v52;
  v54 = v73[0];
  v55 = v73[1];
  v56 = v73[3];
  v46[10] = v73[2];
  v46[11] = v56;
  v46[8] = v54;
  v46[9] = v55;
  v57 = v73[4];
  v58 = v73[5];
  v59 = v73[7];
  v46[14] = v73[6];
  v46[15] = v59;
  v46[12] = v57;
  v46[13] = v58;
  sub_1E134FD1C(&v69, &v74, qword_1ECEB3C98, &qword_1E1B09778);
  sub_1E1308058(v43, &qword_1ECEB3C20, &qword_1E1B09710);
  *(&v74 + 1) = v30;
  *(&v75[1] + 1) = v90[1];
  *(&v75[2] + 1) = v90[2];
  *(&v75[3] + 1) = v90[3];
  v75[4] = *(&v90[3] + 15);
  *&v74 = v47;
  LOBYTE(v75[0]) = v31;
  *(v75 + 1) = v90[0];
  v76 = v32;
  *v77 = *v93;
  *&v77[3] = *&v93[3];
  v78 = v36;
  v79 = v38;
  v80 = v40;
  v81 = v42;
  v82 = 0;
  v87 = *&v94[64];
  v88 = *&v94[80];
  *v89 = *&v94[96];
  *&v89[15] = *&v94[111];
  v83 = *v94;
  v84 = *&v94[16];
  v85 = *&v94[32];
  v86 = *&v94[48];
  sub_1E1308058(&v74, qword_1ECEB3C98, &qword_1E1B09778);
  return sub_1E1308058(v44, &qword_1ECEB3C20, &qword_1E1B09710);
}

double sub_1E142FAA4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_1E13B8AA4();

  v4 = sub_1E1AF293C();
  v6 = v5;
  v8 = v7;
  sub_1E1AF275C();
  sub_1E1AF27CC();

  sub_1E1AF283C();

  sub_1E1AF27CC();

  v9 = sub_1E1AF28EC();
  v35 = v10;
  v36 = v9;
  v12 = v11;
  v14 = v13;
  sub_1E1431100(v4, v6, v8 & 1);

  if (*(v3 + 80))
  {

    v15 = sub_1E1AF293C();
    v17 = v16;
    v19 = v18;
    sub_1E1AF274C();
    v20 = sub_1E1AF28EC();
    v34 = v12;
    v22 = v21;
    v24 = v23;

    sub_1E1431100(v15, v17, v19 & 1);

    sub_1E1AF25BC();
    v25 = sub_1E1AF28DC();
    v27 = v26;
    LOBYTE(v15) = v28;
    v30 = v29;
    v31 = v22;
    v12 = v34;
    sub_1E1431100(v20, v31, v24 & 1);

    v32 = v15 & 1;
    sub_1E1431110(v25, v27, v15 & 1);
  }

  else
  {
    v25 = 0;
    v27 = 0;
    v32 = 0;
    v30 = 0;
  }

  sub_1E1431110(v36, v35, v12 & 1);

  sub_1E1431120(v25, v27, v32, v30);
  sub_1E1431164(v25, v27, v32, v30);
  *a2 = v36;
  *(a2 + 8) = v35;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v14;
  *(a2 + 32) = 1;
  *(a2 + 40) = v25;
  *(a2 + 48) = v27;
  *(a2 + 56) = v32;
  *(a2 + 64) = v30;
  sub_1E1431164(v25, v27, v32, v30);
  sub_1E1431100(v36, v35, v12 & 1);

  return result;
}

uint64_t sub_1E142FD44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = sub_1E1AF2C4C();
  v44 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v41 - v9;
  v45 = v4;
  v46 = v3;
  v10 = sub_1E1AF2C6C();
  v42 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v41 = &v41 - v14;
  v15 = sub_1E1AF227C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1E1AF25AC();
  v48 = *(v19 - 8);
  v49 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v47 = &v41 - v20;
  v21 = v2;
  sub_1E18710E0();
  v22 = _s11AppStoreKit15PageEnvironmentV4isAXSbvg_0();
  (*(v16 + 8))(v18, v15);
  if (v22)
  {
    sub_1E1AF257C();
    ScaledSpaceMetric.wrappedValue.getter();
    MEMORY[0x1EEE9AC00](v23);
    v24 = v45;
    *(&v41 - 4) = v46;
    *(&v41 - 3) = v24;
    *(&v41 - 2) = v21;
    sub_1E1AF2C5C();
    WitnessTable = swift_getWitnessTable();
    v26 = v41;
    sub_1E1701198();
    v27 = *(v42 + 8);
    v27(v12, v10);
    sub_1E1701198();
    v28 = swift_getWitnessTable();
    v29 = v47;
    sub_1E1430314(v12, v10, v5, WitnessTable, v28);
    v27(v12, v10);
    v30 = v26;
    v31 = v10;
  }

  else
  {
    sub_1E1AF251C();
    ScaledSpaceMetric.wrappedValue.getter();
    MEMORY[0x1EEE9AC00](v32);
    v33 = v45;
    *(&v41 - 4) = v46;
    *(&v41 - 3) = v33;
    *(&v41 - 2) = v21;
    sub_1E1AF2C3C();
    v34 = swift_getWitnessTable();
    v35 = v43;
    sub_1E1701198();
    v27 = *(v44 + 8);
    v27(v7, v5);
    sub_1E1701198();
    v36 = swift_getWitnessTable();
    v29 = v47;
    sub_1E14304E8(v7, v10, v5, v36, v34);
    v27(v7, v5);
    v30 = v35;
    v31 = v5;
  }

  v27(v30, v31);
  v37 = swift_getWitnessTable();
  v38 = swift_getWitnessTable();
  v51 = v37;
  v52 = v38;
  v39 = v49;
  swift_getWitnessTable();
  sub_1E1701198();
  return (*(v48 + 8))(v29, v39);
}

uint64_t sub_1E1430314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1E1AF258C();
  v8 = MEMORY[0x1EEE9AC00](v7);
  (*(*(a2 - 8) + 16))(&v11 - v9, a1, a2, v8);
  swift_storeEnumTagMultiPayload();
  return sub_1E1AF259C();
}

uint64_t sub_1E143040C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1701198();
  sub_1E1701198();
  return (*(v3 + 8))(v5, a2);
}

uint64_t sub_1E14304E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1E1AF258C();
  v8 = MEMORY[0x1EEE9AC00](v7);
  (*(*(a3 - 8) + 16))(&v11 - v9, a1, a3, v8);
  swift_storeEnumTagMultiPayload();
  return sub_1E1AF259C();
}

uint64_t sub_1E14305E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E1AF242C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E143061C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E1AF244C();
  *a1 = result;
  return result;
}

char *sub_1E1430674(char *result)
{
  v1 = *(result + 2);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = (result + 32);
    v6 = (MEMORY[0x1E69E7CC0] + 32);
    while (1)
    {
      *&v29[0] = v3;
      result = sub_1E13AD998(v5, v29 + 8);
      v39 = v29[8];
      v40 = v29[9];
      v41[0] = v30[0];
      *(v41 + 10) = *(v30 + 10);
      v35 = v29[4];
      v36 = v29[5];
      v37 = v29[6];
      v38 = v29[7];
      v31 = v29[0];
      v32 = v29[1];
      v33 = v29[2];
      v34 = v29[3];
      if (!v4)
      {
        v7 = *(v2 + 3);
        if (((v7 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_23;
        }

        v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
        if (v8 <= 1)
        {
          v9 = 1;
        }

        else
        {
          v9 = v8;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB27A8, &unk_1E1B09680);
        v10 = swift_allocObject();
        v11 = (_swift_stdlib_malloc_size(v10) - 32) / 192;
        *(v10 + 2) = v9;
        *(v10 + 3) = 2 * v11;
        v12 = v10 + 32;
        v13 = *(v2 + 3) >> 1;
        v14 = 192 * v13;
        if (*(v2 + 2))
        {
          v15 = v2 + 32;
          if (v10 != v2 || v12 >= &v15[v14])
          {
            memmove(v10 + 32, v15, 192 * v13);
          }

          *(v2 + 2) = 0;
        }

        v6 = &v12[v14];
        v4 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - v13;

        v2 = v10;
      }

      v16 = __OFSUB__(v4--, 1);
      if (v16)
      {
        break;
      }

      ++v3;
      v17 = v31;
      v18 = v32;
      v19 = v34;
      *(v6 + 2) = v33;
      *(v6 + 3) = v19;
      *v6 = v17;
      *(v6 + 1) = v18;
      v20 = v35;
      v21 = v36;
      v22 = v38;
      *(v6 + 6) = v37;
      *(v6 + 7) = v22;
      *(v6 + 4) = v20;
      *(v6 + 5) = v21;
      v23 = v39;
      v24 = v40;
      v25 = v41[0];
      *(v6 + 170) = *(v41 + 10);
      *(v6 + 9) = v24;
      *(v6 + 10) = v25;
      *(v6 + 8) = v23;
      v6 += 192;
      v5 += 184;
      if (v1 == v3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v4 = 0;
LABEL_18:
  v26 = *(v2 + 3);
  if (v26 < 2)
  {
    return v2;
  }

  v27 = v26 >> 1;
  v16 = __OFSUB__(v27, v4);
  v28 = v27 - v4;
  if (!v16)
  {
    *(v2 + 2) = v28;
    return v2;
  }

LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_1E143087C(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    goto LABEL_35;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = v1 & 0xC000000000000001;
    v7 = (MEMORY[0x1E69E7CC0] + 32);
    v8 = v1 & 0xFFFFFFFFFFFFFF8;
    v27 = v1 & 0xC000000000000001;
    v28 = v1;
    v26 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v6)
      {
        result = MEMORY[0x1E68FFD80](v4, v1);
        v9 = result;
        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_26:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *(v8 + 16))
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          result = sub_1E1AF71CC();
          v2 = result;
          goto LABEL_3;
        }

        v9 = *(v1 + 8 * v4 + 32);

        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_26;
        }
      }

      if (!v5)
      {
        v11 = v3[3];
        if (((v11 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v12 = v2;
        v13 = v11 & 0xFFFFFFFFFFFFFFFELL;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3BB0, &qword_1E1B09678);
        v15 = swift_allocObject();
        v16 = _swift_stdlib_malloc_size(v15);
        v17 = v16 - 32;
        if (v16 < 32)
        {
          v17 = v16 - 17;
        }

        v18 = v17 >> 4;
        v15[2] = v14;
        v15[3] = 2 * (v17 >> 4);
        v19 = (v15 + 4);
        v20 = v3[3] >> 1;
        if (v3[2])
        {
          v21 = v3 + 4;
          if (v15 != v3 || v19 >= v21 + 16 * v20)
          {
            memmove(v15 + 4, v21, 16 * v20);
          }

          v3[2] = 0;
        }

        v7 = (v19 + 16 * v20);
        v5 = (v18 & 0x7FFFFFFFFFFFFFFFLL) - v20;

        v3 = v15;
        v2 = v12;
        v6 = v27;
        v1 = v28;
        v8 = v26;
      }

      v22 = __OFSUB__(v5--, 1);
      if (v22)
      {
        goto LABEL_33;
      }

      *v7 = v4;
      v7[1] = v9;
      v7 += 2;
      ++v4;
      if (v10 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  v5 = 0;
LABEL_28:
  v23 = v3[3];
  if (v23 < 2)
  {
    return v3;
  }

  v24 = v23 >> 1;
  v22 = __OFSUB__(v24, v5);
  v25 = v24 - v5;
  if (!v22)
  {
    v3[2] = v25;
    return v3;
  }

  __break(1u);
  return result;
}

unint64_t sub_1E1430A8C()
{
  result = qword_1ECEB3BA0;
  if (!qword_1ECEB3BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB3BA0);
  }

  return result;
}

void sub_1E1430B08(uint64_t a1)
{
  type metadata accessor for AccessibilityFeature(319);
  if (v1 <= 0x3F)
  {
    sub_1E1430BD4(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ScaledSpaceMetric(319);
      if (v3 <= 0x3F)
      {
        sub_1E1430C30(319);
        if (v4 <= 0x3F)
        {
          sub_1E1430C88();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E1430BD4(uint64_t a1)
{
  if (!qword_1ECEB3BD8)
  {
    sub_1E1430A8C();
    v1 = sub_1E1AF210C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECEB3BD8);
    }
  }
}

void sub_1E1430C30(uint64_t a1)
{
  if (!qword_1ECEB3BE0)
  {
    sub_1E1AF227C();
    v1 = sub_1E1AF20BC();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECEB3BE0);
    }
  }
}

void sub_1E1430C88()
{
  if (!qword_1ECEB3BE8)
  {
    v0 = sub_1E1AF20BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECEB3BE8);
    }
  }
}

unint64_t sub_1E1430CD8()
{
  result = qword_1ECEB3BF0;
  if (!qword_1ECEB3BF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB3B98, &qword_1E1B09608);
    sub_1E1302CD4(&qword_1ECEB3BF8, &qword_1ECEB3B70, &qword_1E1B095C8, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB3BF0);
  }

  return result;
}

unint64_t sub_1E1430DAC()
{
  result = qword_1ECEB3C38;
  if (!qword_1ECEB3C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB3C18, &qword_1E1B09708);
    sub_1E1430E38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB3C38);
  }

  return result;
}

unint64_t sub_1E1430E38()
{
  result = qword_1ECEB3C40;
  if (!qword_1ECEB3C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB3C10, &qword_1E1B09700);
    sub_1E1430EF0();
    sub_1E1302CD4(&qword_1ECEB3C78, &qword_1ECEB3C80, &qword_1E1B09760, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB3C40);
  }

  return result;
}

unint64_t sub_1E1430EF0()
{
  result = qword_1ECEB3C48;
  if (!qword_1ECEB3C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB3C30, &unk_1E1B09750);
    sub_1E1430F7C();
    sub_1E14310AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB3C48);
  }

  return result;
}

unint64_t sub_1E1430F7C()
{
  result = qword_1ECEB3C50;
  if (!qword_1ECEB3C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB3C28, &qword_1E1B3A770);
    sub_1E1431064(&qword_1ECEB3C58, type metadata accessor for SwiftUIArtworkView, &unk_1E1B1B914);
    sub_1E1302CD4(&qword_1ECEB3C60, &qword_1ECEB3C68, qword_1E1B3A790, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB3C50);
  }

  return result;
}

uint64_t sub_1E1431064(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E14310AC()
{
  result = qword_1ECEB3C70;
  if (!qword_1ECEB3C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB3C70);
  }

  return result;
}

double sub_1E1431100(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

double sub_1E1431110(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

double sub_1E1431120(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1E1431110(a1, a2, a3 & 1);
  }

  return result;
}

double sub_1E1431164(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1E1431100(a1, a2, a3 & 1);
  }

  return result;
}

void sub_1E14311B0(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1E1430C30(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ScaledSpaceMetric(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1E1431250(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(sub_1E1AF227C() - 8);
  v9 = 8;
  if (*(v8 + 64) > 8uLL)
  {
    v9 = *(v8 + 64);
  }

  if (v7 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = v7;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(v8 + 80) & 0xF8 | 7;
  v12 = *(v6 + 64) + v11;
  if (v10 >= a2)
  {
    goto LABEL_29;
  }

  v13 = (((v9 & 0xFFFFFFFFFFFFFFF8) + 16 + v11 + ((v9 + v11 + (v12 & ~v11) + 1) & ~v11)) & ~v11) + (v9 & 0xFFFFFFFFFFFFFFF8) + 16;
  v14 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = a2 - v10 + 1;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_29;
      }
    }
  }

  else if (!v17 || (v18 = *(a1 + v13)) == 0)
  {
LABEL_29:
    if (v7 < 0xFE)
    {
      v23 = *(((a1 + v12) & ~v11) + v9);
      if (v23 >= 2)
      {
        return (v23 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v22 = *(v6 + 48);

      return v22(a1, v7, v5);
    }
  }

  v20 = v18 - 1;
  if (v14)
  {
    v20 = 0;
    v21 = *a1;
  }

  else
  {
    v21 = 0;
  }

  return v10 + (v21 | v20) + 1;
}

void sub_1E1431478(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v28 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_1E1AF227C() - 8);
  v11 = *(v10 + 64);
  if (v11 <= 8)
  {
    v11 = 8;
  }

  if (v9 <= 0xFE)
  {
    v12 = 254;
  }

  else
  {
    v12 = v9;
  }

  v13 = *(v10 + 80) & 0xF8 | 7;
  v14 = *(v8 + 64) + v13;
  v15 = v11 + 1;
  v16 = (((v11 & 0xFFFFFFFFFFFFFFF8) + 16 + v13 + ((v11 + 1 + v13 + (v14 & ~v13)) & ~v13)) & ~v13) + (v11 & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v12 >= a3)
  {
    v19 = 0;
    v20 = a2 - v12;
    if (a2 <= v12)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v16)
    {
      v17 = 2;
    }

    else
    {
      v17 = a3 - v12 + 1;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = a2 - v12;
    if (a2 <= v12)
    {
LABEL_19:
      if (v19 > 1)
      {
        if (v19 != 2)
        {
          *(a1 + v16) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *(a1 + v16) = 0;
      }

      else if (v19)
      {
        *(a1 + v16) = 0;
        if (!a2)
        {
          return;
        }

LABEL_35:
        if (v9 < 0xFE)
        {
          v24 = ((a1 + v14) & ~v13);
          if (a2 > 0xFE)
          {
            if (v15 <= 3)
            {
              v25 = ~(-1 << (8 * v15));
            }

            else
            {
              v25 = -1;
            }

            if (v15)
            {
              v26 = v25 & (a2 - 255);
              if (v15 <= 3)
              {
                v27 = v15;
              }

              else
              {
                v27 = 4;
              }

              bzero(v24, v15);
              if (v27 > 2)
              {
                if (v27 == 3)
                {
                  *v24 = v26;
                  v24[2] = BYTE2(v26);
                }

                else
                {
                  *v24 = v26;
                }
              }

              else if (v27 == 1)
              {
                *v24 = v26;
              }

              else
              {
                *v24 = v26;
              }
            }
          }

          else
          {
            v24[v11] = -a2;
          }
        }

        else
        {
          v23 = *(v28 + 56);

          v23(a1, a2, v9, v7);
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }
  }

  if (v16)
  {
    v21 = 1;
  }

  else
  {
    v21 = v20;
  }

  if (v16)
  {
    v22 = ~v12 + a2;
    bzero(a1, v16);
    *a1 = v22;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      *(a1 + v16) = v21;
    }

    else
    {
      *(a1 + v16) = v21;
    }
  }

  else if (v19)
  {
    *(a1 + v16) = v21;
  }
}

uint64_t AppStateDataSourceError.errorDescription.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  if (*(v0 + 48))
  {
    if (*(v0 + 48) == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECEBD930, &qword_1E1B02980);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1E1B03760;

      v6 = sub_1E1AF5DBC();
      v7 = AMSHashIfNeeded();

      if (v7)
      {
        v8 = sub_1E1AF5DFC();
        v10 = v9;
      }

      else
      {
        v8 = 0;
        v10 = 0;
      }

      v26 = MEMORY[0x1E69E6158];
      *(v5 + 56) = MEMORY[0x1E69E6158];
      v27 = sub_1E13C2F48();
      if (v10)
      {
        v28 = v8;
      }

      else
      {
        v28 = 0;
      }

      v29 = 0xE000000000000000;
      if (v10)
      {
        v29 = v10;
      }

      *(v5 + 32) = v28;
      *(v5 + 40) = v29;
      *(v5 + 96) = v26;
      *(v5 + 104) = v27;
      *(v5 + 64) = v27;
      *(v5 + 72) = v2;
      *(v5 + 80) = v1;
      *(v5 + 136) = v26;
      *(v5 + 144) = v27;
      *(v5 + 112) = v4;
      *(v5 + 120) = v3;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECEBD930, &qword_1E1B02980);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1E1B02CD0;
      v24 = MEMORY[0x1E69E6158];
      *(v23 + 56) = MEMORY[0x1E69E6158];
      v25 = sub_1E13C2F48();
      *(v23 + 32) = v2;
      *(v23 + 40) = v1;
      *(v23 + 96) = v24;
      *(v23 + 104) = v25;
      *(v23 + 64) = v25;
      *(v23 + 72) = v4;
      *(v23 + 80) = v3;
    }
  }

  else if (v0[4])
  {

    v11 = sub_1E1AEFB1C();
    v12 = [v11 code];

    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECEBD930, &qword_1E1B02980);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1E1B05090;
    v14 = MEMORY[0x1E69E6158];
    *(v13 + 56) = MEMORY[0x1E69E6158];
    v15 = sub_1E13C2F48();
    *(v13 + 32) = v2;
    *(v13 + 40) = v1;
    *(v13 + 96) = v14;
    *(v13 + 104) = v15;
    *(v13 + 64) = v15;
    *(v13 + 72) = v4;
    v16 = MEMORY[0x1E69E6530];
    *(v13 + 80) = v3;
    v17 = MEMORY[0x1E69E65A8];
    *(v13 + 136) = v16;
    *(v13 + 144) = v17;
    *(v13 + 112) = v12;
    v18 = sub_1E1AEFB1C();
    v19 = [v18 domain];

    v20 = sub_1E1AF5DFC();
    v22 = v21;

    *(v13 + 176) = v14;
    *(v13 + 184) = v15;
    *(v13 + 152) = v20;
    *(v13 + 160) = v22;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECEBD930, &qword_1E1B02980);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1E1B03760;
    v32 = MEMORY[0x1E69E6158];
    *(v31 + 56) = MEMORY[0x1E69E6158];
    v33 = sub_1E13C2F48();
    *(v31 + 32) = v2;
    *(v31 + 40) = v1;
    *(v31 + 96) = v32;
    *(v31 + 104) = v33;
    *(v31 + 64) = v33;
    *(v31 + 72) = v4;
    *(v31 + 80) = v3;
    *(v31 + 136) = v32;
    *(v31 + 144) = v33;
    *(v31 + 112) = 4271950;
    *(v31 + 120) = 0xE300000000000000;
  }

  return sub_1E1AF5E3C();
}

unint64_t sub_1E1431B6C()
{
  result = qword_1ECEB3D20;
  if (!qword_1ECEB3D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB3D20);
  }

  return result;
}

uint64_t sub_1E1431BCC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 49))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_1E1431C14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t ChartOrCategoryBrickContext.BrickType.hashValue.getter()
{
  v1 = *v0;
  sub_1E1AF762C();
  MEMORY[0x1E6900360](v1);
  return sub_1E1AF767C();
}

uint64_t ChartOrCategoryBrickContext.LabelMetrics.init(numberOfLines:fontUseCase:contentSizeCategoryMapping:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  v9 = type metadata accessor for ChartOrCategoryBrickContext.LabelMetrics(0);
  v10 = *(v9 + 20);
  v11 = sub_1E1AF12AC();
  result = (*(*(v11 - 8) + 32))(&a5[v10], a2, v11);
  v13 = &a5[*(v9 + 24)];
  *v13 = a3;
  *(v13 + 1) = a4;
  return result;
}

uint64_t ChartOrCategoryBrickContext.LabelMetrics.fontUseCase.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ChartOrCategoryBrickContext.LabelMetrics(0) + 20);
  v4 = sub_1E1AF12AC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ChartOrCategoryBrickContext.LabelMetrics.contentSizeCategoryMapping.getter()
{
  v1 = (v0 + *(type metadata accessor for ChartOrCategoryBrickContext.LabelMetrics(0) + 24));
  v2 = *v1;
  sub_1E1300E34(*v1, v1[1]);
  return v2;
}

uint64_t sub_1E14320C0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v78 = a3;
  v80 = sub_1E1AF12AC();
  v82 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v77 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v76 = &v70 - v7;
  v75 = type metadata accessor for PlaceholderChartOrCategoryBrickFontStyles(0);
  MEMORY[0x1EEE9AC00](v75);
  v81 = (&v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = type metadata accessor for ChartOrCategoryBrickCollectionViewCellLayout.Metrics(0);
  MEMORY[0x1EEE9AC00](v74);
  v10 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v70 - v12;
  v83 = type metadata accessor for ChartOrCategoryBrickContext(0);
  MEMORY[0x1EEE9AC00](v83);
  v84 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1300B24(a1, v84);
  sub_1E1300B24(a1, v85);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3D28, &qword_1E1B09A30);
  type metadata accessor for SearchChartOrCategory(0);
  v15 = swift_dynamicCast();
  v16 = v15;
  if (v15)
  {
  }

  __swift_destroy_boxed_opaque_existential_1(v85);
  v18 = v83;
  v17 = v84;
  *(v84 + v83[8]) = v16;
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v19);
  (*(v20 + 16))(v85, v19, v20);
  v21 = LOBYTE(v85[0]);
  *(v17 + v18[6]) = v85[0];
  v22 = a1[3];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v22);
  v24 = (*(v23 + 24))(v22, v23);
  if (v24)
  {
    LOBYTE(v85[0]) = v21;
    v25 = a2;
    v26 = sub_1E1433664(v24, v85);
  }

  else
  {
    v25 = a2;
    v26 = 0;
  }

  *(v84 + v83[9]) = v26;
  v79 = a1;
  LODWORD(v73) = v21;
  if (v21)
  {
    if (v21 != 1)
    {
      v37 = qword_1ECEB0DE0;

      v38 = v74;
      if (v37 != -1)
      {
        v69 = v74;
        swift_once();
        v38 = v69;
      }

      v39 = __swift_project_value_buffer(v38, qword_1ECEB3FE0);
      sub_1E14334CC(v39, v10, type metadata accessor for ChartOrCategoryBrickCollectionViewCellLayout.Metrics);
      sub_1E1433534(v10, v13, type metadata accessor for ChartOrCategoryBrickCollectionViewCellLayout.Metrics);
      sub_1E14334CC(v13, v84 + v83[5], type metadata accessor for ChartOrCategoryBrickCollectionViewCellLayout.Metrics);

      sub_1E1433BD8(v13, type metadata accessor for ChartOrCategoryBrickCollectionViewCellLayout.Metrics);
      goto LABEL_20;
    }

    v27 = qword_1ECEB0DD8;

    v28 = v74;
    if (v27 != -1)
    {
      swift_once();
    }

    v29 = qword_1ECEB3FC8;
  }

  else
  {
    v30 = qword_1EE1D8E90;

    if (v30 != -1)
    {
      swift_once();
    }

    v29 = qword_1EE1D8EA0;
    v28 = v74;
  }

  v31 = __swift_project_value_buffer(v28, v29);
  sub_1E14334CC(v31, v10, type metadata accessor for ChartOrCategoryBrickCollectionViewCellLayout.Metrics);
  sub_1E1433534(v10, v13, type metadata accessor for ChartOrCategoryBrickCollectionViewCellLayout.Metrics);
  v32 = v84 + v83[5];
  sub_1E14334CC(v13, v32, type metadata accessor for ChartOrCategoryBrickCollectionViewCellLayout.Metrics);
  v33 = sub_1E1AF74AC();

  sub_1E1433BD8(v13, type metadata accessor for ChartOrCategoryBrickCollectionViewCellLayout.Metrics);
  if (v33)
  {
LABEL_20:

    goto LABEL_21;
  }

  if (v26)
  {
    v34 = *(v26 + 32);
    v35 = *(v26 + 40);

    v36 = v32 + *(v28 + 24);
    *v36 = v34;
    *(v36 + 8) = v35;
    *(v36 + 16) = 0;
  }

LABEL_21:
  v74 = v26;
  *(v84 + v83[10]) = v25;
  v40 = *MEMORY[0x1E69DDCF8];
  v41 = v81;
  v42 = v82;
  *v81 = *MEMORY[0x1E69DDCF8];
  *(v41 + 2) = 0;
  v43 = *MEMORY[0x1E69AB8C0];
  v44 = *(v42 + 104);
  v45 = v80;
  (v44)(v41, v43, v80);
  v46 = v75;
  v47 = v41 + *(v75 + 20);
  *v47 = v40;
  *(v47 + 2) = 0;
  v71 = v47;
  v44();
  v48 = (v41 + v46[6]);
  *v48 = v40;
  *(v48 + 2) = 0;
  (v44)(v48, v43, v45);
  v49 = v41 + v46[7];
  *v49 = v40;
  *(v49 + 2) = 0;
  (v44)(v49, v43, v45);
  v50 = v41 + v46[8];
  *v50 = v40;
  *(v50 + 2) = 0;
  (v44)(v50, v43, v45);
  v51 = v41 + v46[9];
  *v51 = v40;
  *(v51 + 2) = 0;
  (v44)(v51, v43, v45);
  v52 = v40;
  v53 = *(v82 + 16);
  if (v73)
  {
    if (v73 == 1)
    {
      v72 = sub_1E14344E4;
      v73 = sub_1E14344E4;
      v75 = 2;
    }

    else
    {
      v72 = sub_1E14344E8;
      v73 = sub_1E14344EC;
      v75 = 3;
      v48 = v50;
      v49 = v51;
    }
  }

  else
  {
    v75 = 3;
    v48 = v81;
    v49 = v71;
    v72 = sub_1E14344F0;
    v73 = sub_1E14344F4;
  }

  v54 = v76;
  v55 = v48;
  v56 = v80;
  v53(v76, v55, v80);
  v57 = v77;
  v53(v77, v49, v56);
  v58 = v84;
  v59 = (v84 + v83[7]);
  v60 = v52;

  v61 = type metadata accessor for ChartOrCategoryBrickContext.BrickLabelMetrics(0);
  v62 = v59 + *(v61 + 20);
  *v62 = 2;
  v63 = type metadata accessor for ChartOrCategoryBrickContext.LabelMetrics(0);
  v64 = *(v82 + 32);
  v64(&v62[*(v63 + 20)], v54, v56);
  v65 = &v62[*(v63 + 24)];
  *v65 = v72;
  v65[1] = 0;
  v66 = v59 + *(v61 + 24);
  *v66 = 1;
  v64(&v66[*(v63 + 20)], v57, v56);
  v67 = &v66[*(v63 + 24)];
  *v67 = v73;
  v67[1] = 0;
  *v59 = v75;
  sub_1E1433BD8(v81, type metadata accessor for PlaceholderChartOrCategoryBrickFontStyles);
  sub_1E1433534(v58, v78, type metadata accessor for ChartOrCategoryBrickContext);
  return __swift_destroy_boxed_opaque_existential_1(v79);
}

uint64_t ChartOrCategoryBrickContext.init(model:fontStyles:in:)@<X0>(void *a1@<X0>, void (*a2)(void *__return_ptr, uint64_t *)@<X1>, uint64_t a3@<X2>, uint64_t (*a4)()@<X3>, uint64_t a5@<X8>)
{
  v79 = a4;
  v74 = a3;
  v71 = a2;
  v77 = a5;
  v6 = sub_1E1AF12AC();
  v75 = *(v6 - 8);
  v76 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v72 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v80 = &v70 - v9;
  v78 = type metadata accessor for ChartOrCategoryBrickCollectionViewCellLayout.Metrics(0);
  MEMORY[0x1EEE9AC00](v78);
  v11 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v70 - v13;
  v15 = type metadata accessor for ChartOrCategoryBrickContext(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1300B24(a1, v17);
  v81 = a1;
  sub_1E1300B24(a1, v83);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3D28, &qword_1E1B09A30);
  type metadata accessor for SearchChartOrCategory(0);
  v18 = swift_dynamicCast();
  v19 = v18;
  if (v18)
  {
  }

  __swift_destroy_boxed_opaque_existential_1(v83);
  v17[v15[8]] = v19;
  v20 = v81;
  v22 = v81[3];
  v21 = v81[4];
  __swift_project_boxed_opaque_existential_1Tm(v81, v22);
  (*(v21 + 16))(v83, v22, v21);
  v23 = LOBYTE(v83[0]);
  v17[v15[6]] = v83[0];
  v24 = v20[3];
  v25 = v20[4];
  __swift_project_boxed_opaque_existential_1Tm(v20, v24);
  v26 = (*(v25 + 24))(v24, v25);
  if (v26)
  {
    LOBYTE(v83[0]) = v23;
    v27 = sub_1E1433664(v26, v83);
  }

  else
  {
    v27 = 0;
  }

  *&v17[v15[9]] = v27;
  v28 = v80;
  v73 = v17;
  if (!v23)
  {
    v31 = qword_1EE1D8E90;

    if (v31 != -1)
    {
      swift_once();
    }

    v30 = qword_1EE1D8EA0;
    goto LABEL_14;
  }

  if (v23 == 1)
  {
    v29 = qword_1ECEB0DD8;

    if (v29 != -1)
    {
      swift_once();
    }

    v30 = qword_1ECEB3FC8;
LABEL_14:
    v32 = __swift_project_value_buffer(v78, v30);
    sub_1E14334CC(v32, v11, type metadata accessor for ChartOrCategoryBrickCollectionViewCellLayout.Metrics);
    sub_1E1433534(v11, v14, type metadata accessor for ChartOrCategoryBrickCollectionViewCellLayout.Metrics);
    v33 = &v17[v15[5]];
    sub_1E14334CC(v14, v33, type metadata accessor for ChartOrCategoryBrickCollectionViewCellLayout.Metrics);
    v34 = sub_1E1AF74AC();

    sub_1E1433BD8(v14, type metadata accessor for ChartOrCategoryBrickCollectionViewCellLayout.Metrics);
    if (v34)
    {

      v35 = v79;
    }

    else
    {
      v35 = v79;
      if (v27)
      {
        v36 = *(v27 + 32);
        v37 = *(v27 + 40);

        v38 = v33 + *(v78 + 24);
        *v38 = v36;
        *(v38 + 8) = v37;
        *(v38 + 16) = 0;
      }
    }

    *&v17[v15[10]] = v35;
    LOBYTE(v82) = v19;
    v71(v83, &v82);
    v39 = v84;
    v40 = v85;
    __swift_project_boxed_opaque_existential_1Tm(v83, v84);
    v41 = v80;
    if (v23)
    {
      (*(v40 + 24))(v39, v40);
      v42 = v84;
      v43 = v85;
      __swift_project_boxed_opaque_existential_1Tm(v83, v84);
      v44 = v72;
      (*(v43 + 32))(v42, v43);
      v45 = sub_1E14335EC;
      v79 = sub_1E14344E4;
      v46 = 2;
    }

    else
    {
      (*(v40 + 8))(v39, v40);
      v56 = v84;
      v57 = v85;
      __swift_project_boxed_opaque_existential_1Tm(v83, v84);
      v44 = v72;
      (*(v57 + 16))(v56, v57);
      v45 = sub_1E1433614;
      v79 = sub_1E143363C;
      v46 = 3;
    }

    v78 = v46;
    v54 = v44;
    v55 = v41;
    goto LABEL_25;
  }

  v47 = qword_1ECEB0DE0;

  if (v47 != -1)
  {
    swift_once();
  }

  v48 = __swift_project_value_buffer(v78, qword_1ECEB3FE0);
  sub_1E14334CC(v48, v11, type metadata accessor for ChartOrCategoryBrickCollectionViewCellLayout.Metrics);
  sub_1E1433534(v11, v14, type metadata accessor for ChartOrCategoryBrickCollectionViewCellLayout.Metrics);
  sub_1E14334CC(v14, &v17[v15[5]], type metadata accessor for ChartOrCategoryBrickCollectionViewCellLayout.Metrics);

  sub_1E1433BD8(v14, type metadata accessor for ChartOrCategoryBrickCollectionViewCellLayout.Metrics);

  *&v17[v15[10]] = v79;
  LOBYTE(v82) = v19;
  v71(v83, &v82);
  v49 = v84;
  v50 = v85;
  __swift_project_boxed_opaque_existential_1Tm(v83, v84);
  (*(v50 + 40))(v49, v50);
  v51 = v84;
  v52 = v85;
  __swift_project_boxed_opaque_existential_1Tm(v83, v84);
  v53 = v72;
  (*(v52 + 48))(v51, v52);
  v45 = sub_1E143359C;
  v78 = 3;
  v79 = sub_1E14335C4;
  v54 = v53;
  v55 = v28;
LABEL_25:

  v58 = v73;
  v59 = &v73[v15[7]];
  v60 = type metadata accessor for ChartOrCategoryBrickContext.BrickLabelMetrics(0);
  v61 = &v59[*(v60 + 20)];
  *v61 = 2;
  v62 = type metadata accessor for ChartOrCategoryBrickContext.LabelMetrics(0);
  v63 = *(v75 + 32);
  v64 = v55;
  v65 = v76;
  v63(&v61[*(v62 + 20)], v64, v76);
  v66 = &v61[*(v62 + 24)];
  *v66 = v45;
  v66[1] = 0;
  v67 = &v59[*(v60 + 24)];
  *v67 = 1;
  v63(&v67[*(v62 + 20)], v54, v65);
  v68 = &v67[*(v62 + 24)];
  *v68 = v79;
  v68[1] = 0;
  *v59 = v78;
  __swift_destroy_boxed_opaque_existential_1(v83);
  sub_1E1433534(v58, v77, type metadata accessor for ChartOrCategoryBrickContext);
  return __swift_destroy_boxed_opaque_existential_1(v81);
}

uint64_t ChartOrCategoryBrickContext.style.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ChartOrCategoryBrickContext(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t ChartOrCategoryBrickContext.brickType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ChartOrCategoryBrickContext(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t ChartOrCategoryBrickContext.currentArtwork.getter()
{
  type metadata accessor for ChartOrCategoryBrickContext(0);
}

id ChartOrCategoryBrickContext.traitCollection.getter()
{
  v1 = *(v0 + *(type metadata accessor for ChartOrCategoryBrickContext(0) + 40));

  return v1;
}

uint64_t sub_1E1433394()
{
  v0 = type metadata accessor for ChartOrCategoryBrickContext(0);
  __swift_allocate_value_buffer(v0, qword_1EE1D7528);
  v1 = __swift_project_value_buffer(v0, qword_1EE1D7528);
  v4[3] = &type metadata for PlaceholderBrick;
  v4[4] = &protocol witness table for PlaceholderBrick;
  v2 = swift_allocObject();
  v4[0] = v2;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0xE000000000000000;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 40) = 0;
  return sub_1E14320C0(v4, [objc_allocWithZone(MEMORY[0x1E69DD1B8]) init], v1);
}

uint64_t static ChartOrCategoryBrickContext.measurableContext.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE1D7520 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ChartOrCategoryBrickContext(0);
  v3 = __swift_project_value_buffer(v2, qword_1EE1D7528);
  return sub_1E14334CC(v3, a1, type metadata accessor for ChartOrCategoryBrickContext);
}

uint64_t sub_1E14334CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E1433534(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_1E143359C(uint64_t a1)
{
  v1 = sub_1E14341F0(a1);

  return v1;
}

id sub_1E14335C4(uint64_t a1)
{
  v1 = sub_1E14343A0(a1);

  return v1;
}

id sub_1E14335EC(uint64_t a1)
{
  v1 = sub_1E14340AC(a1);

  return v1;
}

id sub_1E1433614(uint64_t a1)
{
  sub_1E1433C38(a1);

  return v1;
}

id sub_1E143363C(uint64_t a1)
{
  v1 = sub_1E1433EF8(a1);

  return v1;
}

unint64_t sub_1E1433664(unint64_t a1, unsigned __int8 *a2)
{
  if (*a2 > 1u)
  {
    if (a1 >> 62)
    {
      result = sub_1E1AF71CC();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      goto LABEL_23;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
    }

    __break(1u);
LABEL_15:
    if (v4)
    {
      result = sub_1E1AF71CC();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    if ((a1 & 0xC000000000000001) == 0)
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }
    }

LABEL_23:
    result = 0;
    return MEMORY[0x1E68FFD80](result, a1);
  }

  v3 = sub_1E1AF697C();
  v4 = a1 >> 62;
  if ((v3 & 1) == 0)
  {
    goto LABEL_15;
  }

  if (!v4)
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = sub_1E1AF71CC();
  if (result)
  {
LABEL_5:
    if (!__OFSUB__(result--, 1))
    {
      if ((a1 & 0xC000000000000001) == 0)
      {
        if ((result & 0x8000000000000000) == 0)
        {
          if (result < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
          }

LABEL_32:
          __break(1u);
          return result;
        }

LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      return MEMORY[0x1E68FFD80](result, a1);
    }

    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  return result;
}

unint64_t sub_1E14337A4()
{
  result = qword_1ECEB3D30;
  if (!qword_1ECEB3D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB3D30);
  }

  return result;
}

void sub_1E1433820(uint64_t a1)
{
  sub_1E14338FC();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ChartOrCategoryBrickCollectionViewCellLayout.Metrics(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ChartOrCategoryBrickContext.BrickLabelMetrics(319);
      if (v3 <= 0x3F)
      {
        sub_1E1433960(319);
        if (v4 <= 0x3F)
        {
          sub_1E14339B8();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_1E14338FC()
{
  result = qword_1EE1DC410;
  if (!qword_1EE1DC410)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE1DC410);
  }

  return result;
}

void sub_1E1433960(uint64_t a1)
{
  if (!qword_1EE1D2F48)
  {
    type metadata accessor for Artwork(255);
    v1 = sub_1E1AF6D9C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE1D2F48);
    }
  }
}

unint64_t sub_1E14339B8()
{
  result = qword_1EE1E3428;
  if (!qword_1EE1E3428)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE1E3428);
  }

  return result;
}

void sub_1E1433A3C(uint64_t a1)
{
  sub_1E1AF12AC();
  if (v1 <= 0x3F)
  {
    sub_1E1433AD0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E1433AD0(uint64_t a1)
{
  if (!qword_1EE1D20F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB9450, &unk_1E1B09B60);
    v1 = sub_1E1AF6D9C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE1D20F8);
    }
  }
}

uint64_t sub_1E1433B5C(uint64_t a1)
{
  result = type metadata accessor for ChartOrCategoryBrickContext.LabelMetrics(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E1433BD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1E1433C38(uint64_t a1)
{
  v1 = sub_1E1AF5DFC();
  v3 = v2;
  if (v1 == sub_1E1AF5DFC() && v3 == v4)
  {

    goto LABEL_5;
  }

  v5 = sub_1E1AF74AC();

  if (v5)
  {
LABEL_5:
    if ((sub_1E1AF6ABC() & 1) == 0)
    {
      return;
    }
  }

  v6 = *MEMORY[0x1E69DDC38];
  v7 = *MEMORY[0x1E69DDC40];
  v8 = v6;
  if ((sub_1E1AF6AFC() & 1) == 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (sub_1E1AF6AEC())
  {
    v9 = sub_1E1AF6AFC();

    if (v9)
    {
      return;
    }
  }

  else
  {
  }

  v10 = sub_1E1AF5DFC();
  v12 = v11;
  if (v10 == sub_1E1AF5DFC() && v12 == v13)
  {
LABEL_14:

    return;
  }

  v14 = sub_1E1AF74AC();

  if ((v14 & 1) == 0)
  {
    v15 = sub_1E1AF5DFC();
    v17 = v16;
    if (v15 == sub_1E1AF5DFC() && v17 == v18)
    {
      goto LABEL_14;
    }

    v19 = sub_1E1AF74AC();

    if ((v19 & 1) == 0)
    {
      v20 = sub_1E1AF5DFC();
      v22 = v21;
      if (v20 == sub_1E1AF5DFC() && v22 == v23)
      {

LABEL_23:
        sub_1E1AF6AFC();
        return;
      }

      v24 = sub_1E1AF74AC();

      if (v24)
      {
        goto LABEL_23;
      }

LABEL_26:
      __break(1u);
    }
  }
}

uint64_t sub_1E1433EF8(uint64_t a1)
{
  v2 = sub_1E1AF5DFC();
  v4 = v3;
  if (v2 == sub_1E1AF5DFC() && v4 == v5)
  {

    goto LABEL_15;
  }

  v7 = sub_1E1AF74AC();

  if (v7)
  {
LABEL_15:
    v18 = MEMORY[0x1E69DDC28];
    return *v18;
  }

  v8 = sub_1E1AF5DFC();
  v10 = v9;
  if (v8 == sub_1E1AF5DFC() && v10 == v11)
  {

    goto LABEL_19;
  }

  v13 = sub_1E1AF74AC();

  if (v13)
  {
LABEL_19:
    v18 = MEMORY[0x1E69DDC30];
    return *v18;
  }

  v14 = sub_1E1AF5DFC();
  v16 = v15;
  if (v14 == sub_1E1AF5DFC() && v16 == v17)
  {
  }

  else
  {
    v20 = sub_1E1AF74AC();

    if ((v20 & 1) == 0)
    {
      return a1;
    }
  }

  if (sub_1E1AF6ABC())
  {
    return *MEMORY[0x1E69DDC38];
  }

  return a1;
}

uint64_t sub_1E14340AC(uint64_t a1)
{
  v2 = sub_1E1AF5DFC();
  v4 = v3;
  if (v2 == sub_1E1AF5DFC() && v4 == v5)
  {
  }

  else
  {
    v6 = sub_1E1AF74AC();

    if ((v6 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  if (sub_1E1AF6ABC())
  {
    return *MEMORY[0x1E69DDC40];
  }

LABEL_7:
  v8 = *MEMORY[0x1E69DDC70];
  v9 = sub_1E1AF5DFC();
  v11 = v10;
  if (v9 != sub_1E1AF5DFC() || v11 != v12)
  {
    v14 = sub_1E1AF74AC();

    if (v14)
    {
      goto LABEL_14;
    }

    __break(1u);
  }

LABEL_14:
  if (sub_1E1AF6AFC())
  {
    return v8;
  }

  else
  {
    return a1;
  }
}

uint64_t sub_1E14341F0(uint64_t a1)
{
  v2 = *MEMORY[0x1E69DDC58];
  v3 = *MEMORY[0x1E69DDC70];
  v4 = v2;
  result = sub_1E1AF6AFC();
  if (result)
  {
    if (sub_1E1AF6AEC())
    {
      v6 = sub_1E1AF6AFC();

      if (v6)
      {
        return v3;
      }
    }

    else
    {
    }

    v7 = sub_1E1AF5DFC();
    v9 = v8;
    if (v7 == sub_1E1AF5DFC() && v9 == v10)
    {
    }

    else
    {
      v12 = sub_1E1AF74AC();

      if ((v12 & 1) == 0)
      {
        v13 = sub_1E1AF5DFC();
        v15 = v14;
        if (v13 == sub_1E1AF5DFC() && v15 == v16)
        {

          goto LABEL_18;
        }

        v17 = sub_1E1AF74AC();

        if (v17)
        {
LABEL_18:
          if (sub_1E1AF6ABC())
          {
            return v4;
          }

          else
          {
            return a1;
          }
        }

        return a1;
      }
    }

    return *MEMORY[0x1E69DDC60];
  }

  __break(1u);
  return result;
}

uint64_t sub_1E14343A0(uint64_t a1)
{
  v2 = *MEMORY[0x1E69DDC58];
  v3 = *MEMORY[0x1E69DDC70];
  v4 = v2;
  result = sub_1E1AF6AFC();
  if (result)
  {
    if (sub_1E1AF6AEC())
    {
      v6 = sub_1E1AF6AFC();

      if (v6)
      {
        return v3;
      }
    }

    else
    {
    }

    v7 = sub_1E1AF5DFC();
    v9 = v8;
    if (v7 != sub_1E1AF5DFC() || v9 != v10)
    {
      v12 = sub_1E1AF74AC();

      if (v12)
      {
        goto LABEL_13;
      }

      __break(1u);
    }

LABEL_13:
    if (sub_1E1AF6AFC())
    {
      return *MEMORY[0x1E69DDC60];
    }

    else
    {
      return a1;
    }
  }

  __break(1u);
  return result;
}

uint64_t GameCenterGameplayHistoryRecord.__allocating_init(playerId:timestamp:)(uint64_t a1, uint64_t a2, double a3)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  return result;
}

uint64_t GameCenterGameplayHistoryRecord.init(playerId:timestamp:)(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return v3;
}

double *GameCenterGameplayHistoryRecord.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v26 = a2;
  v3 = 0x6449726579616C70;
  v4 = sub_1E1AF380C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v25 - v9;
  sub_1E1AF381C();
  v11 = sub_1E1AF37CC();
  v13 = v12;
  v14 = *(v5 + 8);
  v14(v10, v4);
  if (v13)
  {
    v25[0] = v11;
    v15 = 0xE900000000000070;
    v3 = 0x6D617473656D6974;
    sub_1E1AF381C();
    v16 = sub_1E1AF37BC();
    v14(v7, v4);
    v17 = a1;
    if (v16)
    {
      sub_1E1AF652C();
      v19 = v18;

      v20 = sub_1E1AF39DC();
      (*(*(v20 - 8) + 8))(v26, v20);
      v14(a1, v4);
      type metadata accessor for GameCenterGameplayHistoryRecord();
      result = swift_allocObject();
      result[2] = *v25;
      *(result + 3) = v13;
      *(result + 4) = v19;
      return result;
    }
  }

  else
  {
    v17 = a1;
    v15 = 0xE800000000000000;
  }

  v22 = sub_1E1AF5A7C();
  sub_1E1435CF4(&qword_1EE1E3580, 255, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
  swift_allocError();
  *v23 = v3;
  v23[1] = v15;
  v23[2] = v25[2];
  (*(*(v22 - 8) + 104))(v23, *MEMORY[0x1E69AB690], v22);
  swift_willThrow();
  v24 = sub_1E1AF39DC();
  (*(*(v24 - 8) + 8))(v26, v24);
  return (v14)(v17, v4);
}

uint64_t GameCenterGameplayHistoryRecord.playerId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void sub_1E14348DC(void *a1)
{
  v3 = objc_opt_self();
  if (![v3 valueWithNewObjectInContext_])
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v12 = v1[2];
  v15 = v1[3];

  v4 = [v3 valueWithObject:sub_1E1AF755C() inContext:{a1, v12, v15}];
  swift_unknownObjectRelease();
  if (v4)
  {
    v13 = v4;
    sub_1E1434AFC();
    v5 = a1;
    v4 = sub_1E1AF748C();
  }

  else
  {
    v6 = a1;
  }

  v7 = [v3 valueWithObject:v4 inContext:{a1, v13}];
  swift_unknownObjectRelease();

  if (!v7)
  {
    goto LABEL_12;
  }

  sub_1E1AF6C5C();
  v8 = [v3 valueWithObject:sub_1E1AF755C() inContext:{a1, v1[4]}];
  swift_unknownObjectRelease();
  if (v8)
  {
    v14 = v8;
    sub_1E1434AFC();
    v9 = a1;
    v8 = sub_1E1AF748C();
  }

  else
  {
    v10 = a1;
  }

  v11 = [v3 valueWithObject:v8 inContext:{a1, v14}];
  swift_unknownObjectRelease();

  if (v11)
  {
    sub_1E1AF6C5C();
    return;
  }

LABEL_13:
  __break(1u);
}

unint64_t sub_1E1434AFC()
{
  result = qword_1EE1E32A8;
  if (!qword_1EE1E32A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE1E32A8);
  }

  return result;
}

uint64_t sub_1E1434B48()
{
  MEMORY[0x1E68FECA0](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1E68FECA0](64, 0xE100000000000000);
  sub_1E1AF656C();
  return 0;
}

uint64_t GameCenterGameplayHistoryRecord.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

double *sub_1E1434C0C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, double **a3@<X8>)
{
  result = GameCenterGameplayHistoryRecord.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1E1434C5C()
{
  MEMORY[0x1E68FECA0](*(*v0 + 16), *(*v0 + 24));
  MEMORY[0x1E68FECA0](64, 0xE100000000000000);
  sub_1E1AF656C();
  return 0;
}

uint64_t GameCenterGameplayHistory.__allocating_init(adamId:platformId:isArcade:records:)(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  result = swift_allocObject();
  v9 = a1[1];
  *(result + 16) = *a1;
  *(result + 24) = v9;
  *(result + 32) = a2;
  *(result + 40) = a3;
  *(result + 48) = a4;
  return result;
}

uint64_t GameCenterGameplayHistory.init(adamId:platformId:isArcade:records:)(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a1[1];
  *(v4 + 16) = *a1;
  *(v4 + 24) = v5;
  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  *(v4 + 48) = a4;
  return v4;
}

uint64_t GameCenterGameplayHistory.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90, &qword_1E1B00D30);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v46 = &v41[-v4];
  v5 = sub_1E1AF380C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v41[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41[-v9];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v41[-v12];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v41[-v15];
  v17 = 0xE600000000000000;
  sub_1E1AF381C();
  v45 = sub_1E1AF37CC();
  v19 = v18;
  v22 = *(v6 + 8);
  v20 = (v6 + 8);
  v21 = v22;
  v22(v16, v5);
  if (!v19)
  {
    v24 = 0x64496D616461;
    v27 = v5;
    goto LABEL_6;
  }

  v23 = v19;
  v24 = 0x6D726F6674616C70;
  sub_1E1AF381C();
  v43 = sub_1E1AF36EC();
  v26 = v25;
  v21(v13, v5);
  v27 = v5;
  if ((v26 & 1) != 0 || (v24 = 0x6564616372417369, sub_1E1AF381C(), v28 = sub_1E1AF370C(), v21(v10, v27), v28 == 2))
  {

    v17 = 0xE800000000000000;
LABEL_6:
    v29 = sub_1E1AF5A7C();
    sub_1E1435CF4(&qword_1EE1E3580, 255, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    *v30 = v24;
    v30[1] = v17;
    v30[2] = v47;
    (*(*(v29 - 8) + 104))(v30, *MEMORY[0x1E69AB690], v29);
    swift_willThrow();
    v21(a1, v27);
    v31 = sub_1E1AF39DC();
    (*(*(v31 - 8) + 8))(v48, v31);
    return a1;
  }

  v42 = v28;
  v33 = v44;
  sub_1E1AF381C();
  v34 = v46;
  sub_1E1AF374C();
  v47 = v27;
  v21(v33, v27);
  v35 = sub_1E1AF5A6C();
  v36 = *(v35 - 8);
  v37 = (*(v36 + 48))(v34, 1, v35);
  if (v37 == 1)
  {
    sub_1E14352B8(v34);
    v38 = MEMORY[0x1E69E7CC0];
    v39 = v48;
  }

  else
  {
    v44 = v20;
    MEMORY[0x1EEE9AC00](v37);
    v39 = v48;
    *&v41[-16] = v48;
    type metadata accessor for GameCenterGameplayHistoryRecord();
    v38 = sub_1E1AF59FC();
    (*(v36 + 8))(v34, v35);
  }

  v21(a1, v47);
  type metadata accessor for GameCenterGameplayHistory();
  a1 = swift_allocObject();
  *(a1 + 16) = v45;
  *(a1 + 24) = v23;
  *(a1 + 32) = v43;
  *(a1 + 40) = v42 & 1;
  *(a1 + 48) = v38;
  v40 = sub_1E1AF39DC();
  (*(*(v40 - 8) + 8))(v39, v40);
  return a1;
}

uint64_t sub_1E14352B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90, &qword_1E1B00D30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E1435344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15[1] = a3;
  v5 = sub_1E1AF39DC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF380C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GameCenterGameplayHistoryRecord();
  (*(v10 + 16))(v12, a1, v9);
  (*(v6 + 16))(v8, a2, v5);
  sub_1E1435CF4(&unk_1ECEB3D40, v13, type metadata accessor for GameCenterGameplayHistoryRecord, &protocol conformance descriptor for GameCenterGameplayHistoryRecord);
  return sub_1E1AF464C();
}

double GameCenterGameplayHistory.adamId.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;

  return result;
}

void sub_1E143555C(void *a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  if (![v4 valueWithNewObjectInContext_])
  {
    goto LABEL_25;
  }

  v19 = v1[2];
  v25 = v1[3];

  v5 = [v4 valueWithObject:sub_1E1AF755C() inContext:{a1, v19, v25}];
  swift_unknownObjectRelease();
  if (!v5)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  sub_1E1AF6C5C();
  v6 = [v4 valueWithObject:sub_1E1AF755C() inContext:{a1, v1[4]}];
  swift_unknownObjectRelease();
  if (v6)
  {
    v20 = v6;
    sub_1E1434AFC();
    v7 = a1;
    v6 = sub_1E1AF748C();
  }

  else
  {
    v8 = a1;
  }

  v9 = [v4 valueWithObject:v6 inContext:{a1, v20}];
  swift_unknownObjectRelease();

  if (!v9)
  {
    goto LABEL_27;
  }

  sub_1E1AF6C5C();
  LOBYTE(v21) = *(v2 + 40);
  v10 = [v4 valueWithObject:sub_1E1AF755C() inContext:{a1, v21}];
  swift_unknownObjectRelease();
  if (v10)
  {
    v22 = v10;
    sub_1E1434AFC();
    v11 = a1;
    v10 = sub_1E1AF748C();
  }

  else
  {
    v12 = a1;
  }

  v13 = [v4 valueWithObject:v10 inContext:{a1, v22}];
  swift_unknownObjectRelease();

  if (!v13)
  {
    goto LABEL_28;
  }

  sub_1E1AF6C5C();
  v14 = v2[6];
  if (v14 >> 62)
  {
    v15 = sub_1E1AF71CC();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = MEMORY[0x1E69E7CC0];
  if (!v15)
  {
    goto LABEL_21;
  }

  v23 = MEMORY[0x1E69E7CC0];
  sub_1E1AF70EC();
  if (v15 < 0)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v17 = 0;
  do
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E68FFD80](v17, v14);
    }

    else
    {
    }

    ++v17;
    sub_1E14348DC(a1);

    sub_1E1AF70BC();
    sub_1E1AF70FC();
    sub_1E1AF710C();
    sub_1E1AF70CC();
  }

  while (v15 != v17);
  v16 = v23;
LABEL_21:
  v24 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3D38, &qword_1E1B12FC0);
  v18 = [v4 valueWithObject:sub_1E1AF755C() inContext:{a1, v24}];
  swift_unknownObjectRelease();
  if (v18)
  {
    sub_1E1AF6C5C();
    return;
  }

LABEL_29:
  __break(1u);
}

uint64_t sub_1E143594C()
{
  sub_1E1AF6FEC();
  MEMORY[0x1E68FECA0](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1E68FECA0](93, 0xE100000000000000);

  MEMORY[0x1E68FECA0](0x6F6674616C705B20, 0xEB00000000206D72);
  v1 = sub_1E1AF742C();
  MEMORY[0x1E68FECA0](v1);

  MEMORY[0x1E68FECA0](0x656463617261202CLL, 0xEA0000000000203FLL);
  if (*(v0 + 40))
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*(v0 + 40))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x1E68FECA0](v2, v3);

  MEMORY[0x1E68FECA0](0x64726F636552205DLL, 0xEB00000000203A73);
  v4 = *(v0 + 48);
  v5 = type metadata accessor for GameCenterGameplayHistoryRecord();
  v6 = MEMORY[0x1E68FEF50](v4, v5);
  MEMORY[0x1E68FECA0](v6);

  return 0x5B2064496D616441;
}

uint64_t GameCenterGameplayHistory.deinit()
{

  return v0;
}

uint64_t GameCenterGameplayHistory.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1E1435B48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = GameCenterGameplayHistory.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1E1435CF4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E1435D6C()
{
  v0 = sub_1E1AF58EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF591C();
  __swift_allocate_value_buffer(v4, qword_1ECEF42E0);
  __swift_project_value_buffer(v4, qword_1ECEF42E0);
  if (qword_1EE1E3588 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EE2160F8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1E1AF590C();
}

id sub_1E1435EC0()
{
  result = [objc_allocWithZone(ASKAtomicBox) init];
  qword_1EE216A18 = result;
  return result;
}

uint64_t sub_1E1435EF4(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  a1();
  v4[3] = sub_1E1AF470C();
  v4[4] = MEMORY[0x1E69AB218];
  __swift_allocate_boxed_opaque_existential_0(v4);
  swift_retain_n();
  sub_1E1AF46FC();
  sub_1E1AF57FC();

  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t sub_1E1435FBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v104 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20, &unk_1E1B02E40);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v106 = &v79 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5F70, "p7\b");
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v79 - v9;
  v11 = sub_1E1AF539C();
  v115 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v113 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v117 = &v79 - v14;
  v111 = v15;
  sub_1E1AF416C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D60, &unk_1E1B09DD0);
  sub_1E1AF416C();
  v16 = v126;
  v17 = type metadata accessor for JSMediaTokenServiceObject();
  v18 = objc_allocWithZone(v17);
  *&v18[OBJC_IVAR____TtC11AppStoreKit25JSMediaTokenServiceObject_tokenService] = v16;
  v127.receiver = v18;
  v127.super_class = v17;
  v103 = objc_msgSendSuper2(&v127, sel_init);
  sub_1E13006E4(0, &qword_1EE1E3490, 0x1E698C8D8);
  sub_1E1AF416C();
  v112 = v126;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3D70, &qword_1E1B1ABC0);
  sub_1E1AF416C();
  swift_beginAccess();
  v19 = *(*__swift_project_boxed_opaque_existential_1Tm((v3 + 16), *(v3 + 40)) + OBJC_IVAR____TtC11AppStoreKit16JSJetpackFetcher_virtualMachine);

  v102 = v19;
  v20 = sub_1E1437B8C(v3);

  swift_beginAccess();
  v21 = *__swift_project_boxed_opaque_existential_1Tm((v3 + 16), *(v3 + 40));
  v124 = type metadata accessor for JSJetpackFetcher(0);
  v125 = &off_1F5C58770;
  *&v123 = v21;
  sub_1E1300B24(&v123, &v122);
  v22 = swift_allocObject();
  sub_1E1308EC0(&v122, v22 + 16);

  __swift_destroy_boxed_opaque_existential_1(&v123);
  swift_endAccess();
  v114 = sub_1E1AF470C();
  v124 = v114;
  v125 = MEMORY[0x1E69AB218];
  __swift_allocate_boxed_opaque_existential_0(&v123);
  sub_1E1AF46FC();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D78, &qword_1E1B09DE0);
  v24 = a1;
  v25 = sub_1E1302CD4(&unk_1EE1E3630, &unk_1ECEB3D78, &qword_1E1B09DE0, MEMORY[0x1E69AB658]);
  v100 = v23;
  v99 = v25;
  v116 = v20;
  v101 = sub_1E1AF585C();

  __swift_destroy_boxed_opaque_existential_1(&v123);
  type metadata accessor for ASKBagContract(0);
  sub_1E1AF416C();
  v26 = v123;
  v27 = type metadata accessor for JSResilientDeepLinks();
  v28 = objc_allocWithZone(v27);
  *&v28[OBJC_IVAR____TtC11AppStoreKit20JSResilientDeepLinks_bag] = v26;
  v121.receiver = v28;
  v121.super_class = v27;

  v110 = objc_msgSendSuper2(&v121, &off_1E8711B78);
  type metadata accessor for Restrictions();
  sub_1E1AF416C();
  v118 = v123;
  type metadata accessor for GameCenter();
  sub_1E1AF416C();
  v95 = v123;
  type metadata accessor for AppleSilicon();
  sub_1E1AF416C();
  v109 = v123;
  type metadata accessor for AdsService();
  sub_1E1AF416C();
  v29 = v123;
  v30 = type metadata accessor for JSAdsObject();
  v31 = objc_allocWithZone(v30);
  *&v31[OBJC_IVAR____TtC11AppStoreKit11JSAdsObject_backingService] = v29;
  v120.receiver = v31;
  v120.super_class = v30;
  v107 = objc_msgSendSuper2(&v120, &off_1E8711B78);
  type metadata accessor for AppStoreOnDeviceRecommendationsManager();
  sub_1E1AF416C();
  v92 = v123;
  type metadata accessor for OnDeviceSearchHistoryManager();
  sub_1E1AF416C();
  v91 = v123;
  type metadata accessor for OnDevicePersonalizationDataManager();
  sub_1E1AF416C();
  v90 = v123;
  type metadata accessor for AppStoreLocalizerFactory(0);
  sub_1E1AF416C();
  v32 = v123;
  if (qword_1EE1E30C0 != -1)
  {
    swift_once();
  }

  sub_1E1AF536C();
  sub_1E1AF531C();
  (*(v8 + 8))(v10, v7);
  v34 = v123;
  v105 = (v34 >> 64);
  v33 = v34;
  v89 = v123;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D88, &qword_1E1B09DF8);

  v35 = sub_1E1AF588C();
  v36 = v32;
  v96 = v32;
  v37 = v35;
  v38 = sub_1E1AF649C();
  v39 = *(v38 - 8);
  v97 = v26;
  v40 = *(v39 + 56);
  v41 = v106;
  v40(v106, 1, 1, v38);
  v42 = swift_allocObject();
  v42[2] = 0;
  v42[3] = 0;
  v42[4] = &unk_1E1B09DF0;
  v42[5] = v36;
  v108 = v37;
  v42[6] = v37;

  sub_1E1974308(0, 0, v41, &unk_1E1B09E00, v42);

  v43 = swift_allocObject();
  v43[2] = v36;
  v43[3] = v33;
  v43[4] = v105;

  v44 = sub_1E1AF588C();
  v40(v41, 1, 1, v38);
  v45 = swift_allocObject();
  v45[2] = 0;
  v45[3] = 0;
  v45[4] = &unk_1E1B09E10;
  v45[5] = v43;
  v45[6] = v44;
  v94 = v44;

  sub_1E1974308(0, 0, v41, &unk_1E1B09E18, v45);

  type metadata accessor for MetricsIdStore();
  sub_1E1AF416C();
  v106 = v123;
  v46 = MEMORY[0x1E69AB658];
  v87 = MEMORY[0x1E69AB658];
  sub_1E1302CD4(&unk_1EE1E3620, &unk_1ECEB3D88, &qword_1E1B09DF8, MEMORY[0x1E69AB658]);
  v93 = sub_1E1AF57EC();
  type metadata accessor for JSTimeoutManager();
  sub_1E1AF416C();
  v85 = v123;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D98, &qword_1E1B09E20);
  sub_1E1302CD4(&qword_1EE1E3660, &unk_1ECEB3D98, &qword_1E1B09E20, v46);
  v88 = sub_1E1AF57EC();
  v47 = v115;
  v48 = v111;
  (*(v115 + 16))(v113, v117, v111);
  sub_1E1300B24(&v126, &v123);
  v79 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v80 = &v98[v79 + 7] & 0xFFFFFFFFFFFFFFF8;
  v84 = (v80 + 15) & 0xFFFFFFFFFFFFFFF8;
  v98 = ((v84 + 47) & 0xFFFFFFFFFFFFFFF8);
  v83 = (v98 + 15) & 0xFFFFFFFFFFFFFFF8;
  v82 = (v83 + 15) & 0xFFFFFFFFFFFFFFF8;
  v81 = (v82 + 15) & 0xFFFFFFFFFFFFFFF8;
  v49 = (v81 + 15) & 0xFFFFFFFFFFFFFFF8;
  v50 = (v49 + 15) & 0xFFFFFFFFFFFFFFF8;
  v51 = (v50 + 15) & 0xFFFFFFFFFFFFFFF8;
  v86 = v24;
  v52 = (v51 + 15) & 0xFFFFFFFFFFFFFFF8;
  v53 = (v52 + 15) & 0xFFFFFFFFFFFFFFF8;
  v54 = (v53 + 23) & 0xFFFFFFFFFFFFFFF8;
  v55 = swift_allocObject();
  (*(v47 + 32))(v55 + v79, v113, v48);
  *(v55 + v80) = v112;
  sub_1E1308EC0(&v123, v55 + v84);
  v56 = v95;
  *&v98[v55] = v95;
  *(v55 + v83) = v109;
  *(v55 + v82) = v107;
  *(v55 + v81) = v118;
  *(v55 + v49) = v110;
  v57 = v92;
  *(v55 + v50) = v92;
  v58 = v91;
  *(v55 + v51) = v91;
  v59 = v90;
  *(v55 + v52) = v90;
  v60 = (v55 + v53);
  v61 = v105;
  *v60 = v89;
  v60[1] = v61;
  v62 = v85;
  *(v55 + v54) = v85;
  *(v55 + ((v54 + 15) & 0xFFFFFFFFFFFFFFF8)) = v106;
  v63 = swift_allocObject();
  *(v63 + 16) = sub_1E1438924;
  *(v63 + 24) = v55;
  v124 = v114;
  v125 = MEMORY[0x1E69AB218];
  __swift_allocate_boxed_opaque_existential_0(&v123);
  v113 = v112;
  v112 = v56;
  v109 = v109;
  v107 = v107;

  v110 = v110;
  v105 = v57;
  v98 = v58;
  v95 = v59;
  v92 = v62;

  sub_1E1AF46FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3DA8, &qword_1E1B09E28);
  sub_1E1302CD4(&qword_1EE1E3640, &qword_1ECEB3DA8, &qword_1E1B09E28, v87);
  sub_1E1AF585C();

  __swift_destroy_boxed_opaque_existential_1(&v123);
  sub_1E13006E4(0, &qword_1EE1E3470, 0x1E698CAC8);
  sub_1E1AF421C();

  sub_1E1AF55EC();
  v64 = v122;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3DB0, &qword_1E1B09E30);
  sub_1E1AF55EC();
  v65 = type metadata accessor for JSCampaignAttribution();
  v66 = objc_allocWithZone(v65);
  *&v66[OBJC_IVAR____TtC11AppStoreKit21JSCampaignAttribution_process] = v64;
  sub_1E1300B24(&v123, &v66[OBJC_IVAR____TtC11AppStoreKit21JSCampaignAttribution_accounts]);
  v119.receiver = v66;
  v119.super_class = v65;
  v67 = v64;
  v68 = objc_msgSendSuper2(&v119, sel_init);

  __swift_destroy_boxed_opaque_existential_1(&v123);
  sub_1E1AF57EC();
  v69 = swift_allocObject();
  v70 = v102;
  v69[2] = v102;
  v69[3] = v68;
  v71 = v103;
  v72 = v104;
  v69[4] = v103;
  v69[5] = v72;
  v73 = swift_allocObject();
  *(v73 + 16) = sub_1E1438AAC;
  *(v73 + 24) = v69;
  v124 = v114;
  v125 = MEMORY[0x1E69AB218];
  __swift_allocate_boxed_opaque_existential_0(&v123);
  v74 = v70;
  v75 = v68;
  v76 = v71;

  sub_1E1AF46FC();
  v77 = sub_1E1AF57DC();

  __swift_destroy_boxed_opaque_existential_1(&v126);
  (*(v115 + 8))(v117, v111);
  __swift_destroy_boxed_opaque_existential_1(&v123);
  return v77;
}

uint64_t sub_1E1436FF4(uint64_t a1)
{
  swift_beginAccess();
  sub_1E1300B24(a1 + 16, v5);
  __swift_project_boxed_opaque_existential_1Tm(v5, v5[3]);
  v2 = off_1F5C58788[0];
  type metadata accessor for JSJetpackFetcher(0);
  v3 = v2();
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

uint64_t sub_1E143708C(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3DD0, &qword_1E1B09E48);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3DD8, &qword_1E1B09E50);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v14 - v9;
  __swift_project_boxed_opaque_existential_1Tm(a2, a2[3]);
  sub_1E195A2CC(v10);
  sub_1E195AA9C(v6);
  sub_1E1302CD4(&qword_1EE1E3AE0, &unk_1ECEB3DD8, &qword_1E1B09E50, MEMORY[0x1E69AB0C8]);
  v11 = sub_1E1AF3D8C();
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
  v14[1] = v11;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3DE8, &qword_1E1B09E58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3DF0, qword_1E1B09E60);
  sub_1E1302CD4(&qword_1EE1E3AA8, &qword_1ECEB3DE8, &qword_1E1B09E58, MEMORY[0x1E69AB168]);
  sub_1E1AF3D7C();

  v12 = sub_1E1AF429C();

  return v12;
}

uint64_t sub_1E1437338(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E130B5DC;

  return AppStoreLocalizerFactory.localizer(forLanguage:)(a1, 0, 0);
}

uint64_t sub_1E14373E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1E130B5D8;

  return AppStoreLocalizerFactory.localizer(forLanguage:)(a1, a3, a4);
}

uint64_t sub_1E143749C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *a7, void *a8, void *a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  v81 = a5;
  v82 = a8;
  v75 = a7;
  v69 = a6;
  v79 = sub_1E1AF539C();
  v74 = *(v79 - 8);
  v22 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v80 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5F70, "p7\b");
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v60 - v25;
  sub_1E1300B24(a1, v91);
  sub_1E1300B24(a2, &v92);
  sub_1E1438AF0(v91, &v86);
  sub_1E1308EC0(&v86, v90);
  __swift_destroy_boxed_opaque_existential_1(v89);
  sub_1E1438AF0(v91, &v86);
  sub_1E1308EC0(v89, v85);
  __swift_destroy_boxed_opaque_existential_1(&v86);
  v27 = a3[3];
  v28 = a3[4];
  __swift_project_boxed_opaque_existential_1Tm(a3, v27);
  v65 = (*(v28 + 24))(v27, v28);
  if (qword_1EE1E3148 != -1)
  {
    swift_once();
  }

  v78 = a18;
  v73 = a17;
  v76 = a16;
  v63 = a15;
  v77 = a14;
  v72 = a13;
  v71 = a12;
  v70 = a11;
  v68 = a10;
  v67 = a9;
  sub_1E1AF536C();
  v29 = sub_1E1AF533C();
  v30 = *(v24 + 8);
  v30(v26, v23);
  if (qword_1EE1E2DE0 != -1)
  {
    swift_once();
  }

  sub_1E1AF536C();
  v66 = sub_1E1AF533C();
  v30(v26, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3DC0, &qword_1E1B09E40);
  sub_1E1302CD4(&qword_1EE1E3618, &unk_1ECEB3DC0, &qword_1E1B09E40, MEMORY[0x1E69AB658]);
  v64 = sub_1E1AF57EC();
  sub_1E1300B24(v90, &v86);
  sub_1E1300B24(v85, v84);
  sub_1E1300B24(v69, v83);
  v31 = v74;
  (*(v74 + 16))(v80, a4, v79);
  v60 = (*(v31 + 80) + 176) & ~*(v31 + 80);
  v62 = (v22 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = (v62 + 15) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v61 + 15) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
  v69 = v29;
  v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  sub_1E1308EC0(&v86, (v38 + 16));
  sub_1E1308EC0(v84, (v38 + 56));
  v39 = v76;
  *(v38 + 12) = v63;
  *(v38 + 13) = v39;
  *(v38 + 14) = v81;
  sub_1E1308EC0(v83, (v38 + 120));
  v40 = v78;
  *(v38 + 20) = v77;
  *(v38 + 21) = v40;
  (*(v31 + 32))(&v38[v60], v80, v79);
  *&v38[v62] = v65;
  v41 = v75;
  *&v38[v61] = v75;
  *&v38[v32] = v82;
  v42 = v67;
  *&v38[v33] = v67;
  *&v38[v34] = v68;
  v43 = v70;
  *&v38[v35] = v70;
  v44 = v71;
  *&v38[v36] = v71;
  v46 = v72;
  v45 = v73;
  *&v38[v37] = v72;
  *&v38[(v37 + 15) & 0xFFFFFFFFFFFFFFF8] = v45;
  v47 = v45;
  v48 = swift_allocObject();
  *(v48 + 16) = sub_1E1438B60;
  *(v48 + 24) = v38;
  v87 = sub_1E1AF470C();
  v88 = MEMORY[0x1E69AB218];
  __swift_allocate_boxed_opaque_existential_0(&v86);

  v49 = v81;
  v50 = v77;

  v51 = v41;
  v52 = v82;
  v53 = v42;

  v54 = v43;
  v55 = v44;
  v56 = v46;
  v57 = v47;
  sub_1E1AF46FC();
  type metadata accessor for ASKGlobal();
  v58 = sub_1E1AF57DC();

  __swift_destroy_boxed_opaque_existential_1(v85);
  __swift_destroy_boxed_opaque_existential_1(v90);
  sub_1E1308058(v91, &qword_1ECEB3DB8, &qword_1E1B09E38);
  __swift_destroy_boxed_opaque_existential_1(&v86);
  return v58;
}

double sub_1E1437AAC@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  sub_1E1300B24(a2, (a7 + 4));
  *a7 = a3;
  a7[1] = a1;
  a7[2] = a4;
  a7[3] = a5;
  a7[9] = a6;
  v13 = a3;
  v14 = a1;
  v15 = a4;
  v16 = a5;

  return result;
}

uint64_t sub_1E1437B30()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1E1437B8C(uint64_t a1)
{
  v2 = sub_1E1AF320C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF324C();
  v45 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v44 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E1AF326C();
  v43 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v46 = &v34 - v11;
  v12 = sub_1E1AF321C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = qword_1EE1ED910;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = [qword_1EE216A18 value];
  if (v17)
  {
    v18 = v17;
    v38 = v5;
    v39 = v6;
    v40 = v3;
    v41 = v2;
    v42 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D98, &qword_1E1B09E20);
    v37 = sub_1E1AF588C();
    sub_1E13807AC();
    v20 = v19;
    v36 = v18;
    if (qword_1ECEB0DB8 != -1)
    {
      swift_once();
    }

    v21 = sub_1E1AF591C();
    __swift_project_value_buffer(v21, qword_1ECEF42E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B03760;
    sub_1E1AF382C();
    v49 = MEMORY[0x1E69E63B0];
    aBlock[0] = v20;
    sub_1E1AF38BC();
    sub_1E1308058(aBlock, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF382C();
    sub_1E1AF548C();

    sub_1E13006E4(0, &qword_1EE1E3430, 0x1E69E9610);
    (*(v13 + 104))(v15, *MEMORY[0x1E69E7F98], v12);
    v35 = sub_1E1AF693C();
    (*(v13 + 8))(v15, v12);
    sub_1E1AF325C();
    sub_1E1AF32DC();
    v43 = *(v43 + 8);
    (v43)(v9, v47);
    v22 = swift_allocObject();
    v23 = v42;
    v22[2] = sub_1E1438D1C;
    v22[3] = v23;
    v24 = v37;
    v22[4] = v37;
    v50 = sub_1E1438D24;
    v51 = v22;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E1302D64;
    v49 = &block_descriptor_12;
    v25 = _Block_copy(aBlock);

    v26 = v44;
    sub_1E1AF322C();
    v52 = MEMORY[0x1E69E7CC0];
    sub_1E139D5D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00, &qword_1E1B04850);
    sub_1E1302CD4(&qword_1EE1E3500, &qword_1ECEB3E00, &qword_1E1B04850, MEMORY[0x1E69E6328]);
    v27 = v38;
    v28 = v41;
    sub_1E1AF6EEC();
    v29 = v46;
    v30 = v35;
    MEMORY[0x1E68FF5E0](v46, v26, v27, v25);
    _Block_release(v25);

    (*(v40 + 8))(v27, v28);
    (*(v45 + 8))(v26, v39);
    (v43)(v29, v47);

    return v24;
  }

  else
  {
    swift_beginAccess();
    sub_1E1300B24(a1 + 16, aBlock);
    __swift_project_boxed_opaque_existential_1Tm(aBlock, v49);
    v32 = off_1F5C58788[0];
    type metadata accessor for JSJetpackFetcher(0);
    v33 = v32();
    __swift_destroy_boxed_opaque_existential_1(aBlock);

    return v33;
  }
}

uint64_t sub_1E14382EC(uint64_t a1)
{
  if (qword_1ECEB0DB8 != -1)
  {
    swift_once();
  }

  v1 = sub_1E1AF591C();
  __swift_project_value_buffer(v1, qword_1ECEF42E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  v2 = sub_1E1AEFB1C();
  v3 = AMSLogableError();

  v4 = sub_1E1AF5DFC();
  v6 = v5;

  v12 = MEMORY[0x1E69E6158];
  v10 = v4;
  v11 = v6;
  sub_1E1AF38BC();
  sub_1E1308058(&v10, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF54AC();

  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF382C();
  sub_1E1AF548C();

  if (qword_1ECEB0FA0 != -1)
  {
    swift_once();
  }

  [qword_1ECEB7B80 setValue_];
  if (qword_1EE1ED910 != -1)
  {
    swift_once();
  }

  v7 = qword_1EE216A18;
  if (![qword_1EE216A18 value])
  {
    type metadata accessor for JitterBackoff();
    v8 = swift_allocObject();
    *(v8 + 32) = 0;
    *(v8 + 16) = xmmword_1E1B09D70;
    [v7 setValue_];
  }
}

uint64_t sub_1E14385D4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E130B5DC;

  return sub_1E1437338(a1);
}

uint64_t sub_1E1438670(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E130B5D8;

  return sub_1E1973458(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1E143874C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E130B5D8;

  return sub_1E14373E0(a1, v4, v5, v6);
}

uint64_t objectdestroy_4Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E1438848(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E130B5DC;

  return sub_1E1973458(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1E1438924(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *(sub_1E1AF539C() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 47) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_1E143749C(a1, a2, a3, v3 + v8, *(v3 + v9), v3 + v10, *(v3 + v11), *(v3 + v12), *(v3 + v13), *(v3 + v14), *(v3 + v15), *(v3 + v16), *(v3 + v17), *(v3 + v18), *(v3 + v19), *(v3 + v19 + 8), *(v3 + ((v19 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((((v19 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1E1438AF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3DB8, &qword_1E1B09E38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1E1438B60(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = *(sub_1E1AF539C() - 8);
  v10 = (*(v9 + 80) + 176) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_1E16A204C(a1, a2, a3, a4, (v4 + 16), (v4 + 56), *(v4 + 96), *(v4 + 104), *(v4 + 112), (v4 + 120), *(v4 + 160), *(v4 + 168), (v4 + v10), *(v4 + v11), *(v4 + v12), *(v4 + v13), *(v4 + v14), *(v4 + v15), *(v4 + v16), *(v4 + v17), *(v4 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((((v17 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1E1438CB4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1], a1[2], a1[3]);
  *a2 = result;
  return result;
}

id sub_1E1438D34(uint64_t a1)
{
  v2 = objc_opt_self();
  result = [v2 valueWithNewObjectInContext_];
  if (result)
  {
    v4 = result;
    type metadata accessor for ArcadeWelcomePageIntent(0);
    v7 = sub_1E1AEFBDC();
    v6 = [v2 valueWithObject:sub_1E1AF755C() inContext:{a1, v7, v5}];
    result = swift_unknownObjectRelease();
    if (v6)
    {
      sub_1E1AF6C5C();
      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for ArcadeWelcomePageIntent(uint64_t a1)
{
  result = qword_1ECEB3E08;
  if (!qword_1ECEB3E08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E1438F64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E1439004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = a3;
  v49 = a2;
  v46 = sub_1E1AEFEAC();
  v45 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v44 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v43 - v6;
  v8 = sub_1E1AF3E1C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v43 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v43 - v16;
  v18 = sub_1E1AEFCCC();
  v60 = 0u;
  v61 = 0u;
  v62 = 0;
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  v59[3] = type metadata accessor for ReportConcernAction(0);
  v59[0] = a1;

  sub_1E1AF3DFC();
  v19 = sub_1E1AF4CFC();
  v21 = v20;
  v22 = type metadata accessor for FlowAction(0);
  v23 = swift_allocObject();
  *(v23 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageDataPageRenderMetrics) = 0;
  v24 = v23 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageData;
  *v24 = 0u;
  *(v24 + 16) = 0u;
  *(v24 + 32) = 0;
  v25 = (v23 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_appStateController);
  *v25 = 0;
  v25[1] = 0;
  *(v23 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_page) = 38;
  sub_1E134FD1C(v17, v23 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageUrl, &unk_1ECEB4B60, &unk_1E1B02620);
  v26 = (v23 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_referrerUrl);
  *v26 = 0;
  v26[1] = 0;
  v27 = v23 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_referrerData;
  *v27 = xmmword_1E1B04490;
  *(v27 + 24) = 0;
  *(v27 + 32) = 0;
  *(v27 + 16) = 0;
  *(v27 + 40) = 0;
  *(v23 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_presentationContext) = 0;
  *(v23 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_animationBehavior) = 0;
  *(v23 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_origin) = 0;
  v28 = (v23 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_presentation);
  *v28 = v19;
  v28[1] = v21;
  sub_1E134FD1C(&v60, v58, &unk_1ECEB5670, qword_1E1B03EC0);
  v29 = *(v9 + 16);
  v47 = v11;
  v29(v11, v14, v8);
  v30 = sub_1E1AF46DC();
  v31 = v7;
  (*(*(v30 - 8) + 56))(v7, 1, 1, v30);
  v32 = (v23 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v32 = 0u;
  v32[1] = 0u;
  sub_1E134FD1C(v58, &v52, &unk_1ECEB5670, qword_1E1B03EC0);
  if (*(&v53 + 1))
  {
    v55 = v52;
    v56 = v53;
    v57 = v54;
  }

  else
  {
    v33 = v44;
    sub_1E1AEFE9C();
    v34 = sub_1E1AEFE7C();
    v36 = v35;
    (*(v45 + 8))(v33, v46);
    v50 = v34;
    v51 = v36;
    sub_1E1AF6F6C();
    sub_1E1308058(&v52, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  sub_1E1308058(v58, &unk_1ECEB5670, qword_1E1B03EC0);
  v37 = v23 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  v38 = v56;
  *v37 = v55;
  *(v37 + 16) = v38;
  *(v37 + 32) = v57;
  sub_1E134B7C8(v31, v23 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  *(v23 + 16) = 0u;
  *(v23 + 32) = 0u;
  (*(v9 + 32))(v23 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v47, v8);

  FlowAction.setPageData(_:)(v59);

  (*(v9 + 8))(v14, v8);
  sub_1E1308058(v17, &unk_1ECEB4B60, &unk_1E1B02620);
  sub_1E1308058(&v60, &unk_1ECEB5670, qword_1E1B03EC0);
  sub_1E1308058(v59, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  *(&v61 + 1) = v22;
  v62 = sub_1E14396B0(&qword_1ECEB3EB0, type metadata accessor for FlowAction);
  *&v60 = v23;
  type metadata accessor for ReportConcernActionImplementation(0, v48, v39, v40);

  swift_getWitnessTable();
  v41 = sub_1E1834054(&v60, v49);

  __swift_destroy_boxed_opaque_existential_1(&v60);
  return v41;
}

uint64_t sub_1E14396B0(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

double sub_1E1439704(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_1E13006E4(0, &qword_1ECEB39B8, 0x1E698B550);
  v3 = sub_1E1AF621C();

  v2(v3);

  return result;
}

uint64_t sub_1E1439788()
{
  v0 = sub_1E1AF58EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF591C();
  __swift_allocate_value_buffer(v4, qword_1ECEB3EB8);
  __swift_project_value_buffer(v4, qword_1ECEB3EB8);
  if (qword_1EE1E3588 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EE2160F8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1E1AF590C();
}

uint64_t sub_1E14398DC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v37 = a2;
  v38 = a5;
  v34 = a4;
  v36 = a3;
  v39 = a1;
  v35 = sub_1E1AF68DC();
  v33 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v32 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF68AC();
  MEMORY[0x1EEE9AC00](v8);
  v31 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E1AF324C();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = OBJC_IVAR____TtC11AppStoreKit22LegacyUpdatesPresenter_onUpdatesDataChanged;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB94D0, &qword_1E1B029C0);
  swift_allocObject();
  *(v5 + v11) = sub_1E1AF5BEC();
  v12 = OBJC_IVAR____TtC11AppStoreKit22LegacyUpdatesPresenter_onPerformAction;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB27D0, &qword_1E1B02C70);
  swift_allocObject();
  *(v5 + v12) = sub_1E1AF5BEC();
  v13 = OBJC_IVAR____TtC11AppStoreKit22LegacyUpdatesPresenter_onShowWhatsNew;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3F58, &unk_1E1B4DBB0);
  swift_allocObject();
  *(v5 + v13) = sub_1E1AF5BEC();
  v14 = OBJC_IVAR____TtC11AppStoreKit22LegacyUpdatesPresenter_onUpdateAllChanged;
  swift_allocObject();
  *(v5 + v14) = sub_1E1AF5BEC();
  *(v5 + OBJC_IVAR____TtC11AppStoreKit22LegacyUpdatesPresenter_hasLoaded) = 0;
  v15 = MEMORY[0x1E69E7CC0];
  *(v6 + OBJC_IVAR____TtC11AppStoreKit22LegacyUpdatesPresenter_pendingManualUpdates) = MEMORY[0x1E69E7CC0];
  *(v6 + OBJC_IVAR____TtC11AppStoreKit22LegacyUpdatesPresenter_pendingAutomaticUpdates) = v15;
  *(v6 + OBJC_IVAR____TtC11AppStoreKit22LegacyUpdatesPresenter_recentUpdates) = v15;
  *(v6 + OBJC_IVAR____TtC11AppStoreKit22LegacyUpdatesPresenter_haveDoneInitialUpdatesFetch) = 0;
  *(v6 + OBJC_IVAR____TtC11AppStoreKit22LegacyUpdatesPresenter_expandedUpdates) = MEMORY[0x1E69E7CD0];
  *(v6 + OBJC_IVAR____TtC11AppStoreKit22LegacyUpdatesPresenter_appStateControllerReady) = 0;
  v16 = OBJC_IVAR____TtC11AppStoreKit22LegacyUpdatesPresenter_organizationQueue;
  sub_1E13006E4(0, &qword_1EE1E3430, 0x1E69E9610);
  sub_1E1AF323C();
  v40 = v15;
  sub_1E13029BC(&qword_1EE1E3438, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A90, &unk_1E1B02C60);
  sub_1E13FF6F8(&qword_1EE1E34D8, &unk_1ECEB7A90, &unk_1E1B02C60);
  v17 = v34;
  sub_1E1AF6EEC();
  (*(v33 + 104))(v32, *MEMORY[0x1E69E8090], v35);
  v18 = v36;
  *(v6 + v16) = sub_1E1AF692C();
  *(v6 + OBJC_IVAR____TtC11AppStoreKit22LegacyUpdatesPresenter____lazy_storage___numberFormatter) = 0;
  v19 = OBJC_IVAR____TtC11AppStoreKit22LegacyUpdatesPresenter_lastServerRefreshTime;
  v20 = sub_1E1AEFE6C();
  (*(*(v20 - 8) + 56))(v6 + v19, 1, 1, v20);
  v21 = OBJC_IVAR____TtC11AppStoreKit22LegacyUpdatesPresenter_isUpdateAllEnabledForSection;
  *(v6 + v21) = sub_1E159FFE0(&unk_1F5C27CA0);
  v23 = v37;
  v22 = v38;
  *(v6 + OBJC_IVAR____TtC11AppStoreKit22LegacyUpdatesPresenter_updateStore) = v37;
  *(v6 + OBJC_IVAR____TtC11AppStoreKit22LegacyUpdatesPresenter_automaticUpdates) = v18;
  v24 = (v6 + OBJC_IVAR____TtC11AppStoreKit22LegacyUpdatesPresenter_appStateController);
  *v24 = v17;
  v24[1] = v22;
  v25 = v23;

  swift_unknownObjectRetain();

  v27 = sub_1E138C578(v26, 0, 0, 0);

  v28 = objc_opt_self();

  v29 = [v28 defaultCenter];
  if (qword_1EE1E1918 != -1)
  {
    swift_once();
  }

  [v29 addObserver:v27 selector:? name:? object:?];

  swift_unknownObjectRelease();

  return v27;
}

double sub_1E1439E2C()
{

  swift_unknownObjectRelease();

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit22LegacyUpdatesPresenter_lastServerRefreshTime, &unk_1ECEBB780, &unk_1E1B029A0);

  return result;
}

uint64_t sub_1E1439F4C()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v2 = BasePresenter.deinit();

  swift_unknownObjectRelease();

  sub_1E1308058(v2 + OBJC_IVAR____TtC11AppStoreKit22LegacyUpdatesPresenter_lastServerRefreshTime, &unk_1ECEBB780, &unk_1E1B029A0);

  return v2;
}

uint64_t sub_1E143A0AC()
{
  sub_1E1439F4C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LegacyUpdatesPresenter(uint64_t a1)
{
  result = qword_1ECEB3F28;
  if (!qword_1ECEB3F28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1E143A154()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit22LegacyUpdatesPresenter____lazy_storage___numberFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC11AppStoreKit22LegacyUpdatesPresenter____lazy_storage___numberFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11AppStoreKit22LegacyUpdatesPresenter____lazy_storage___numberFormatter);
  }

  else
  {
    v4 = sub_1E143A1B4();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1E143A1B4()
{
  v0 = sub_1E1AEFF8C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - v5;
  v7 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  [v7 setNumberStyle_];
  [v7 setFormatterBehavior_];
  sub_1E1AEFF4C();
  Locale.normalizedLocale.getter(v3);
  v8 = *(v1 + 8);
  v8(v6, v0);
  v9 = sub_1E1AEFF2C();
  v8(v3, v0);
  [v7 setLocale_];

  [v7 setMinimumFractionDigits_];
  return v7;
}

uint64_t sub_1E143A334(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1E1AF320C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E1AF324C();
  isEscapingClosureAtFileLocation = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v18 = objc_opt_self();
    v9 = swift_allocObject();
    *(v9 + 16) = v4;
    *(v9 + 24) = a2;
    *(v9 + 32) = a3 & 1;
    *(v9 + 40) = v8;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_1E14403D8;
    *(v19 + 24) = v9;
    v30 = sub_1E13E2A70;
    v31 = v19;
    aBlock = MEMORY[0x1E69E9820];
    v27 = 1107296256;
    v28 = sub_1E1551FBC;
    v29 = &block_descriptor_132;
    v12 = _Block_copy(&aBlock);
    v17 = v31;

    [v18 traceUpdatesPresenterUpdateBadgeCount_];
    _Block_release(v12);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  v25 = result;
  sub_1E13006E4(0, &qword_1EE1E3430, 0x1E69E9610);
  v24 = sub_1E1AF68EC();
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = a2;
  *(v21 + 32) = a3 & 1;
  v30 = sub_1E14403CC;
  v31 = v21;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_1E1302D64;
  v29 = &block_descriptor_122;
  v22 = _Block_copy(&aBlock);

  sub_1E1AF322C();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1E13029BC(&qword_1EE1E3C80, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00, &qword_1E1B04850);
  sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00, &qword_1E1B04850);
  sub_1E1AF6EEC();
  v23 = v24;
  MEMORY[0x1E68FF640](0, v17, v12, v22);
  _Block_release(v22);

  (*(v10 + 8))(v12, v9);
  return (*(isEscapingClosureAtFileLocation + 8))(v17, v25);
}

void sub_1E143A7A8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = *(a1 + OBJC_IVAR____TtC11AppStoreKit22LegacyUpdatesPresenter_updateStore);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3 & 1;
  *(v9 + 40) = a4;
  v11[4] = sub_1E14403E8;
  v11[5] = v9;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1E143AEC4;
  v11[3] = &block_descriptor_138;
  v10 = _Block_copy(v11);

  [v8 refreshUpdateCountWithCompletionBlock_];
  _Block_release(v10);
}

uint64_t sub_1E143A8B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v21 = a6;
  v9 = sub_1E1AF320C();
  v23 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1E1AF324C();
  v12 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E13006E4(0, &qword_1EE1E3430, 0x1E69E9610);
  v15 = sub_1E1AF68EC();
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = a1;
  *(v17 + 32) = a4;
  *(v17 + 40) = a5 & 1;
  *(v17 + 48) = v21;
  aBlock[4] = sub_1E14403F8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = &block_descriptor_145;
  v18 = _Block_copy(aBlock);

  sub_1E1AF322C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1E13029BC(&qword_1EE1E3C80, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00, &qword_1E1B04850);
  sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00, &qword_1E1B04850);
  sub_1E1AF6EEC();
  MEMORY[0x1E68FF640](0, v14, v11, v18);
  _Block_release(v18);

  (*(v23 + 8))(v11, v9);
  return (*(v12 + 8))(v14, v22);
}

uint64_t sub_1E143ABD0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    sub_1E143AFE0(a2);
    if ((a4 & 1) == 0 && a2 != a3)
    {
      if (qword_1ECEB0DC8 != -1)
      {
        swift_once();
      }

      v9 = sub_1E1AF591C();
      __swift_project_value_buffer(v9, qword_1ECEB3EB8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B05090;
      sub_1E1AF382C();
      v11 = MEMORY[0x1E69E6530];
      v10[0] = a3;
      sub_1E1AF38BC();
      sub_1E1308058(v10, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1AF382C();
      v11 = MEMORY[0x1E69E6530];
      v10[0] = a2;
      sub_1E1AF38BC();
      sub_1E1308058(v10, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1AF549C();

      if (*(v8 + OBJC_IVAR____TtC11AppStoreKit22LegacyUpdatesPresenter_haveDoneInitialUpdatesFetch) == 1)
      {
        if (*(v8 + OBJC_IVAR____TtC11AppStoreKit22LegacyUpdatesPresenter_appStateControllerReady) == 1)
        {
          sub_1E143C3C8(0, 0, 0);
        }
      }

      else
      {
        *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
        sub_1E1AF382C();
        sub_1E1AF549C();
      }
    }
  }

  return result;
}

void sub_1E143AEC4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1E143AF3C(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a3)
    {
      v6 = *(result + OBJC_IVAR____TtC11AppStoreKit22LegacyUpdatesPresenter_pendingManualUpdates);
      if (v6 >> 62)
      {
        a2 = sub_1E1AF71CC();
      }

      else
      {
        a2 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    sub_1E143AFE0(a2);
  }

  return result;
}

id sub_1E143AFE0(uint64_t a1)
{
  sub_1E1AF44CC();
  swift_allocObject();
  sub_1E1AF44AC();
  if (qword_1ECEB15C8 != -1)
  {
    swift_once();
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3F50, qword_1E1B0A0D0);
  __swift_project_value_buffer(v3, qword_1EE1DF2C0);
  sub_1E1AF3C8C();

  if (v5 != 2 && (v5 & 1) == 0 || a1 >= 1)
  {
    return [*(v1 + OBJC_IVAR____TtC11AppStoreKit22LegacyUpdatesPresenter_updateStore) showApplicationBadgeForPendingUpdates];
  }

  return result;
}

uint64_t sub_1E143B0FC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E1AF320C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF324C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1E14F9DB8(*(v2 + OBJC_IVAR____TtC11AppStoreKit22LegacyUpdatesPresenter_isUpdateAllEnabledForSection), a1);
  if ((result & 1) == 0)
  {
    sub_1E13006E4(0, &qword_1EE1E3430, 0x1E69E9610);
    v17 = sub_1E1AF68EC();
    v13 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1E1440438;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E1302D64;
    aBlock[3] = &block_descriptor_53;
    v14 = _Block_copy(aBlock);

    sub_1E1AF322C();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1E13029BC(&qword_1EE1E3C80, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    v16 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00, &qword_1E1B04850);
    sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00, &qword_1E1B04850);
    sub_1E1AF6EEC();
    v15 = v17;
    MEMORY[0x1E68FF640](0, v11, v7, v14);
    _Block_release(v14);

    (*(v5 + 8))(v7, v4);
    return (*(v9 + 8))(v11, v16);
  }

  return result;
}

uint64_t sub_1E143B3FC(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_1E1AF5BCC();
  }

  return result;
}

uint64_t sub_1E143B470(_BYTE *a1)
{
  if (*a1)
  {
    if (*a1 != 1)
    {
      return 0;
    }

    v2 = OBJC_IVAR____TtC11AppStoreKit22LegacyUpdatesPresenter_pendingAutomaticUpdates;
  }

  else
  {
    v2 = OBJC_IVAR____TtC11AppStoreKit22LegacyUpdatesPresenter_pendingManualUpdates;
  }

  v3 = *(v1 + v2);
  if (v3 >> 62)
  {
    if (sub_1E1AF71CC() < 1)
    {
      return 0;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    return 0;
  }

  v4 = sub_1E143A154();
  sub_1E13006E4(0, &qword_1EE1E31F0, 0x1E696AD98);
  v5 = sub_1E1AF6CEC();
  v6 = [v4 stringFromNumber_];

  if (v6)
  {
    v7 = sub_1E1AF5DFC();

    return v7;
  }

  return 0;
}

void sub_1E143B574()
{
  if ((*(v0 + OBJC_IVAR____TtC11AppStoreKit22LegacyUpdatesPresenter_hasLoaded) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC11AppStoreKit22LegacyUpdatesPresenter_hasLoaded) = 1;
    v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit22LegacyUpdatesPresenter_appStateController + 8);
    ObjectType = swift_getObjectType();
    v3 = swift_allocObject();
    swift_weakInit();
    v4 = *(v1 + 16);

    v4(sub_1E143F334, v3, ObjectType, v1);
  }
}

uint64_t sub_1E143B64C(uint64_t a1)
{
  v2 = sub_1E1AF320C();
  v12 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E1AF324C();
  v5 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E13006E4(0, &qword_1EE1E3430, 0x1E69E9610);
  v8 = sub_1E1AF68EC();
  aBlock[4] = sub_1E143F33C;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = &block_descriptor_13;
  v9 = _Block_copy(aBlock);

  sub_1E1AF322C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1E13029BC(&qword_1EE1E3C80, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00, &qword_1E1B04850);
  sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00, &qword_1E1B04850);
  sub_1E1AF6EEC();
  MEMORY[0x1E68FF640](0, v7, v4, v9);
  _Block_release(v9);

  (*(v12 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v11);
}

uint64_t sub_1E143B918(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC11AppStoreKit22LegacyUpdatesPresenter_appStateControllerReady) = 1;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + OBJC_IVAR____TtC11AppStoreKit22LegacyUpdatesPresenter_appStateControllerReady) == 1)
    {
      sub_1E143C3C8(0, 0, 1);
    }
  }

  return result;
}

void sub_1E143B9C8()
{
  if (*(v0 + OBJC_IVAR____TtC11AppStoreKit22LegacyUpdatesPresenter_hasLoaded) == 1)
  {
    v1 = objc_opt_self();
    v2 = swift_allocObject();
    *(v2 + 16) = sub_1E14403A4;
    *(v2 + 24) = v0;
    v4[4] = sub_1E137AFA8;
    v4[5] = v2;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 1107296256;
    v4[2] = sub_1E1551FBC;
    v4[3] = &block_descriptor_115;
    v3 = _Block_copy(v4);

    [v1 traceUpdatesPresenterUpdateStoreDidChange_];
    _Block_release(v3);
    LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

    if (v1)
    {
      __break(1u);
    }
  }
}

void sub_1E143BB60(uint64_t a1)
{
  sub_1E13A8B64(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1E143BC48(unsigned __int8 *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11AppStoreKit22LegacyUpdatesPresenter_isUpdateAllEnabledForSection);
  if (*(v2 + 16) && (v3 = sub_1E130A768(*a1), (v4 & 1) != 0))
  {
    return *(*(v2 + 56) + v3);
  }

  else
  {
    return 0;
  }
}

void sub_1E143BC94(_BYTE *a1)
{
  v2 = sub_1E1AEFEAC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v57 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v55 - v6;
  v8 = sub_1E1AF3E1C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v63 = &v55 - v13;
  v14 = *a1;
  if (!*a1)
  {
    v15 = &OBJC_IVAR____TtC11AppStoreKit22LegacyUpdatesPresenter_pendingManualUpdates;
LABEL_5:
    v16 = *(v64 + *v15);
    swift_bridgeObjectRetain_n();
    if (!(v16 >> 62))
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

  if (v14 == 1)
  {
    v15 = &OBJC_IVAR____TtC11AppStoreKit22LegacyUpdatesPresenter_pendingAutomaticUpdates;
    goto LABEL_5;
  }

  v16 = MEMORY[0x1E69E7CC0];
  if (!(MEMORY[0x1E69E7CC0] >> 62))
  {
LABEL_6:
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v17)
    {
      v55 = v3;
      v56 = v2;
      v58 = v11;
      v59 = v7;
      v60 = v9;
      v61 = v8;
      v62 = v14;
      v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v66 = v16 & 0xFFFFFFFFFFFFFF8;
      v67 = v18;
      goto LABEL_8;
    }

LABEL_33:

    return;
  }

LABEL_28:
  if (v16 < 0)
  {
    v41 = v16;
  }

  else
  {
    v41 = v16 & 0xFFFFFFFFFFFFFF8;
  }

  v67 = v41;
  v42 = sub_1E1AF71CC();

  if (!v42)
  {
    goto LABEL_33;
  }

  v66 = v16 & 0xFFFFFFFFFFFFFF8;
  v55 = v3;
  v56 = v2;
  v58 = v11;
  v59 = v7;
  v60 = v9;
  v61 = v8;
  v62 = v14;
  v67 = sub_1E1AF71CC();
LABEL_8:
  v19 = 0;
  v20 = v16;
  v21 = v16 & 0xC000000000000001;
  v65 = MEMORY[0x1E69E7CC0];
  while (v67 != v19)
  {
    if (v21)
    {
      v26 = MEMORY[0x1E68FFD80](v19, v20);
      v27 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_38;
      }
    }

    else
    {
      if (v19 >= *(v66 + 16))
      {
        goto LABEL_39;
      }

      v26 = *(v20 + 8 * v19 + 32);

      v27 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        return;
      }
    }

    v28 = v26[5];
    if (v28)
    {
      v22 = v26[3];
      v23 = v26[4];
      v24 = v26[2];

      v25 = v28;
    }

    else
    {
      v24 = 0;
      v22 = 0;
      v23 = 0;
      v25 = 0;
    }

    ++v19;
    if (v22)
    {
      v29 = v65;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_1E172E0D0(0, v29[2] + 1, 1, v29);
      }

      v31 = v29[2];
      v30 = v29[3];
      if (v31 >= v30 >> 1)
      {
        v29 = sub_1E172E0D0((v30 > 1), v31 + 1, 1, v29);
      }

      v29[2] = v31 + 1;
      v65 = v29;
      v32 = &v29[4 * v31];
      v32[4] = v24;
      v32[5] = v22;
      v32[6] = v23;
      v32[7] = v25;
      v19 = v27;
    }
  }

  v33 = v63;
  sub_1E1AF3DFC();
  type metadata accessor for UpdateAllAction(0);
  v34 = swift_allocObject();
  *(v34 + OBJC_IVAR____TtC11AppStoreKit15UpdateAllAction_ordering) = v65;
  memset(v76, 0, 40);
  v35 = v60;
  v36 = v58;
  v37 = v61;
  (*(v60 + 16))(v58, v33, v61);
  v38 = sub_1E1AF46DC();
  v39 = v59;
  (*(*(v38 - 8) + 56))(v59, 1, 1, v38);
  v40 = (v34 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v40 = 0u;
  v40[1] = 0u;
  sub_1E134FD1C(v76, &v70, &unk_1ECEB5670, qword_1E1B03EC0);
  if (*(&v71 + 1))
  {
    v73 = v70;
    v74 = v71;
    v75 = v72;
  }

  else
  {
    v43 = v57;
    sub_1E1AEFE9C();
    v44 = sub_1E1AEFE7C();
    v46 = v45;
    (*(v55 + 8))(v43, v56);
    v68 = v44;
    v69 = v46;
    sub_1E1AF6F6C();
    sub_1E1308058(&v70, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  v47 = v62;
  sub_1E1308058(v76, &unk_1ECEB5670, qword_1E1B03EC0);
  (*(v35 + 8))(v63, v37);
  v48 = v34 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  v49 = v74;
  *v48 = v73;
  *(v48 + 16) = v49;
  *(v48 + 32) = v75;
  sub_1E134B7C8(v39, v34 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  *(v34 + 16) = 0u;
  *(v34 + 32) = 0u;
  (*(v35 + 32))(v34 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v36, v37);
  v50 = v64;
  *&v76[0] = v34;
  memset(v76 + 8, 0, 32);

  sub_1E1AF5BCC();
  sub_1E1308058(v76, &qword_1ECEB24C8, &qword_1E1B30450);
  v51 = OBJC_IVAR____TtC11AppStoreKit22LegacyUpdatesPresenter_isUpdateAllEnabledForSection;
  v52 = *(v50 + OBJC_IVAR____TtC11AppStoreKit22LegacyUpdatesPresenter_isUpdateAllEnabledForSection);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v76[0] = v52;
  sub_1E1599DA8(0, v47, isUniquelyReferenced_nonNull_native);
  v54 = *(v50 + v51);
  *(v50 + v51) = *&v76[0];
  sub_1E143B0FC(v54);
}

uint64_t sub_1E143C3C8(int a1, int a2, int a3)
{
  v68 = a3;
  v57 = a2;
  v4 = sub_1E1AF0F7C();
  v66 = *(v4 - 8);
  v67 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v64 = v5;
  v65 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v69 = &v53 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780, &unk_1E1B029A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v62 = &v53 - v9;
  v61 = sub_1E1AEFE6C();
  v60 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v56 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v55 = &v53 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v54 = &v53 - v14;
  if (qword_1ECEB0DC8 != -1)
  {
    swift_once();
  }

  v15 = sub_1E1AF591C();
  v58 = __swift_project_value_buffer(v15, qword_1ECEB3EB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B09FF0;
  sub_1E1AF382C();
  v16 = MEMORY[0x1E69E6370];
  v73 = MEMORY[0x1E69E6370];
  v59 = a1;
  v17 = a1 & 1;
  LOBYTE(aBlock) = v17;
  sub_1E1AF38BC();
  sub_1E1308058(&aBlock, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF382C();
  v73 = v16;
  LOBYTE(aBlock) = v17;
  sub_1E1AF38BC();
  sub_1E1308058(&aBlock, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF382C();
  v73 = v16;
  v68 &= 1u;
  LOBYTE(aBlock) = v68;
  sub_1E1AF38BC();
  sub_1E1308058(&aBlock, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF382C();
  sub_1E1AF549C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3F48, &qword_1E1B0A090);
  v18 = sub_1E1AF588C();
  v19 = OBJC_IVAR____TtC11AppStoreKit22LegacyUpdatesPresenter_lastServerRefreshTime;
  v20 = v63;
  swift_beginAccess();
  v21 = v20 + v19;
  v22 = v62;
  sub_1E134FD1C(v21, v62, &unk_1ECEBB780, &unk_1E1B029A0);
  v23 = v60;
  v24 = v61;
  if ((*(v60 + 48))(v22, 1, v61) == 1)
  {
    sub_1E1308058(v22, &unk_1ECEBB780, &unk_1E1B029A0);
    v26 = v66;
    v25 = v67;
    if ((v59 & 1) == 0)
    {
      v27 = 0;
      goto LABEL_9;
    }

LABEL_8:
    v27 = 1;
    goto LABEL_9;
  }

  v28 = v54;
  (*(v23 + 32))(v54, v22, v24);
  v29 = v55;
  sub_1E1AEFE5C();
  v30 = v56;
  sub_1E1AEFDAC();
  sub_1E13029BC(&qword_1EE1FADC0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  v31 = sub_1E1AF5D7C();
  v32 = *(v23 + 8);
  v32(v30, v24);
  v32(v29, v24);
  v32(v28, v24);
  v27 = v59 & v57;
  if (v59)
  {
    v26 = v66;
    v25 = v67;
    if (v31)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v26 = v66;
  v25 = v67;
LABEL_9:
  sub_1E1AF483C();
  sub_1E1AF482C();
  v33 = v69;
  sub_1E1AF0F4C();
  v34 = sub_1E1AF6A1C();
  v35 = sub_1E1AF482C();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECEBD930, &qword_1E1B02980);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1E1B02CC0;
  v37 = MEMORY[0x1E69E65A8];
  *(v36 + 56) = MEMORY[0x1E69E6530];
  *(v36 + 64) = v37;
  *(v36 + 32) = v27 & 1;
  sub_1E1AF0F2C(v34, &dword_1E12FC000, v35, "LegacyUpdatesPresenter:_refreshUpdates", 38, 2, v33, "fromServer=%{public}i", 21, 2, v36);

  v38 = v65;
  (*(v26 + 16))(v65, v33, v25);
  v39 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v40 = swift_allocObject();
  (*(v26 + 32))(v40 + v39, v38, v25);
  v41 = sub_1E13006E4(0, &qword_1EE1E3430, 0x1E69E9610);
  v42 = sub_1E1AF68EC();
  v43 = MEMORY[0x1E69AB720];
  v73 = v41;
  v74 = MEMORY[0x1E69AB720];
  aBlock = v42;
  sub_1E1AF583C();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  swift_beginAccess();
  *(v20 + 32) = 1;
  if (v27)
  {
    sub_1E143EBAC();
    v44 = *(v20 + OBJC_IVAR____TtC11AppStoreKit22LegacyUpdatesPresenter_updateStore);
    v45 = swift_allocObject();
    swift_weakInit();
    v46 = swift_allocObject();
    *(v46 + 16) = v18;
    *(v46 + 24) = v45;
    v74 = sub_1E143F5EC;
    v75 = v46;
    aBlock = MEMORY[0x1E69E9820];
    v71 = 1107296256;
    v72 = sub_1E143D02C;
    v73 = &block_descriptor_82_0;
    v47 = _Block_copy(&aBlock);

    [v44 reloadFromServerWithCompletionBlock_];
  }

  else
  {
    v48 = *(v20 + OBJC_IVAR____TtC11AppStoreKit22LegacyUpdatesPresenter_updateStore);
    v74 = sub_1E143F5AC;
    v75 = v18;
    aBlock = MEMORY[0x1E69E9820];
    v71 = 1107296256;
    v72 = sub_1E1439704;
    v73 = &block_descriptor_70_0;
    v47 = _Block_copy(&aBlock);

    [v48 getUpdatesWithCompletionBlock_];
  }

  _Block_release(v47);
  v49 = swift_allocObject();
  swift_weakInit();
  v50 = swift_allocObject();
  *(v50 + 16) = v49;
  *(v50 + 24) = v27 & 1;
  *(v50 + 25) = v68;
  swift_allocObject();
  swift_weakInit();

  v51 = sub_1E1AF68EC();
  v73 = v41;
  v74 = v43;
  aBlock = v51;
  sub_1E1AF57FC();

  (*(v26 + 8))(v69, v25);
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
}