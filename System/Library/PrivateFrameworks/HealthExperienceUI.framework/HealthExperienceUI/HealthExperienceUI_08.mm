uint64_t sub_1B9FEB28C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  sub_1B9F68124(v2 + v4, v7);
  if (v7[3])
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    sub_1B9F0D950(0, &qword_1EDC6CCD8, &protocol descriptor for FavoritableDisplaying);
    if (swift_dynamicCast())
    {
      if (*(&v9 + 1))
      {
        return sub_1B9F1134C(&v8, a2);
      }
    }

    else
    {
      v10 = 0;
      v8 = 0u;
      v9 = 0u;
    }
  }

  else
  {
    sub_1B9F43A50(v7, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    v8 = 0u;
    v9 = 0u;
    v10 = 0;
  }

  sub_1B9F43A50(&v8, &qword_1EBBE9BB0, &qword_1EDC6CCD8, &protocol descriptor for FavoritableDisplaying);
  *&v8 = 0;
  *(&v8 + 1) = 0xE000000000000000;
  sub_1BA4A7DF8();

  v7[0] = 0xD00000000000001BLL;
  v7[1] = 0x80000001BA4E24D0;
  sub_1B9F68124(v2 + v4, &v8);
  sub_1B9F0CDE8(0, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  v6 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v6);

  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

void sub_1B9FEB474()
{
  v1 = v0;
  v2 = sub_1B9FE9E60();
  sub_1B9FEB28C(&OBJC_IVAR____TtC18HealthExperienceUI31EditFavoritesCollectionViewCell_item, v14);
  v3 = v15;
  v4 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v5 = (*(v4 + 48))(v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v14);
  if (v5)
  {
    sub_1B9FE9D6C();
  }

  else
  {
    sub_1B9FE9C70();
  }

  v7 = v6;
  [v2 setImage_];

  v8 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI31EditFavoritesCollectionViewCell____lazy_storage___accessoryImageView);
  sub_1B9FEB28C(&OBJC_IVAR____TtC18HealthExperienceUI31EditFavoritesCollectionViewCell_item, v14);
  v9 = v15;
  v10 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  LOBYTE(v9) = (*(v10 + 48))(v9, v10);
  __swift_destroy_boxed_opaque_existential_1(v14);
  v11 = objc_opt_self();
  v12 = &selRef_tertiaryLabelColor;
  if ((v9 & 1) == 0)
  {
    v12 = &selRef_systemYellowColor;
  }

  v13 = [v11 *v12];
  [v8 setTintColor_];
}

void sub_1B9FEB5F0()
{
  v1 = v0;
  v2 = sub_1BA177638();
  sub_1B9FEB28C(&OBJC_IVAR____TtC18HealthExperienceUI27DataTypeDetailFavoritesCell_item, v14);
  v3 = v15;
  v4 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v5 = (*(v4 + 48))(v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v14);
  if (v5)
  {
    sub_1BA177544();
  }

  else
  {
    sub_1BA177448();
  }

  v7 = v6;
  [v2 setImage_];

  v8 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI27DataTypeDetailFavoritesCell____lazy_storage___accessoryImageView);
  sub_1B9FEB28C(&OBJC_IVAR____TtC18HealthExperienceUI27DataTypeDetailFavoritesCell_item, v14);
  v9 = v15;
  v10 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  LOBYTE(v9) = (*(v10 + 48))(v9, v10);
  __swift_destroy_boxed_opaque_existential_1(v14);
  v11 = objc_opt_self();
  v12 = &selRef_tertiaryLabelColor;
  if ((v9 & 1) == 0)
  {
    v12 = &selRef_systemYellowColor;
  }

  v13 = [v11 *v12];
  [v8 setTintColor_];
}

void sub_1B9FEB76C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1BA4A6758();
  }

  else
  {
    v3 = 0;
  }

  [v2 setAccessibilityIdentifier_];

  v4 = sub_1B9FE9E60();
  sub_1B9F25350();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BA4B5460;
  *(v5 + 32) = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  *(v5 + 40) = v6;
  *(v5 + 48) = 0x656C67676F54;
  *(v5 + 56) = 0xE600000000000000;
  v7 = sub_1BA4A6AE8();

  v8 = HKUIJoinStringsForAutomationIdentifier();

  [v4 setAccessibilityIdentifier_];
}

id sub_1B9FEB874(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for EditFavoritesCollectionViewCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1B9FEB970@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI31EditFavoritesCollectionViewCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1B9FEB9C8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI31EditFavoritesCollectionViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1B9FE9A68();
  return sub_1B9F43A50(a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
}

uint64_t (*sub_1B9FEBA4C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1B9FEBAB0;
}

uint64_t sub_1B9FEBAB0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1B9FE9A68();
  }

  return result;
}

void sub_1B9FEBB2C(void *a1, uint64_t a2)
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v4 = sub_1BA4A6758();

  aBlock[4] = sub_1B9FEC060;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BA0B06D4;
  aBlock[3] = &block_descriptor_2;
  v5 = _Block_copy(aBlock);

  v6 = objc_opt_self();
  v7 = [v6 actionWithTitle:v4 style:2 handler:{v5, 0xE000000000000000}];
  _Block_release(v5);

  sub_1BA4A1318();
  v8 = sub_1BA4A6758();

  v9 = [v6 actionWithTitle:v8 style:1 handler:{0, 0xE000000000000000}];

  sub_1BA4A1318();
  sub_1BA4A1318();
  v10 = sub_1BA4A6758();

  v11 = sub_1BA4A6758();

  v12 = [objc_opt_self() alertControllerWithTitle:v10 message:v11 preferredStyle:{0, 0xE000000000000000}];

  v13 = [v12 popoverPresentationController];
  [v13 setSourceItem_];

  [v12 addAction_];
  [v12 addAction_];
  [a1 presentViewController:v12 animated:1 completion:0];
}

void sub_1B9FEBEC4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1B9FEBF18();
  }
}

void sub_1B9FEBF18()
{
  sub_1B9FEB28C(&OBJC_IVAR____TtC18HealthExperienceUI31EditFavoritesCollectionViewCell_item, v11);
  v1 = v12;
  v2 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  (*(v2 + 32))(v10, v1, v2);
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_1B9FEB28C(&OBJC_IVAR____TtC18HealthExperienceUI31EditFavoritesCollectionViewCell_item, v7);
  v3 = v8;
  v4 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v4 + 16))(v3, v4);
  sub_1BA4A2378();

  __swift_destroy_boxed_opaque_existential_1(v7);
  __swift_destroy_boxed_opaque_existential_1(v10);
  __swift_destroy_boxed_opaque_existential_1(v11);
  v5 = [v0 viewController];
  if (v5)
  {
    v6 = v5;
    [v5 dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_1B9FEC068()
{
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](0);
  return sub_1BA4A84D8();
}

uint64_t sub_1B9FEC0AC(uint64_t a1)
{
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](0);
  return sub_1BA4A84D8();
}

uint64_t *sub_1B9FEC0EC(void *a1, void *a2)
{
  if (qword_1EBBE8510 != -1)
  {
    swift_once();
  }

  v5 = sub_1BA4A1318();
  v7 = v6;
  v8 = [a1 firstName];
  v9 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v11 = v10;

  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  *(v12 + 24) = a2;
  sub_1B9FED238(0, v13, v14, v15);
  swift_allocObject();
  v16 = a2;
  v17 = sub_1BA2F2F64(v5, v7, v9, v11, 0, 1, sub_1B9FEC278, 0, nullsub_1, v12, 0);

  return v17;
}

uint64_t sub_1B9FEC278(uint64_t *a1)
{
  if (a1[1])
  {
    v1 = *a1;
  }

  else
  {
    if (qword_1EBBE8510 != -1)
    {
      swift_once();
    }

    v1 = sub_1BA4A1318();
  }

  return v1;
}

void sub_1B9FEC350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    if (a4)
    {
      sub_1B9FED290(0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BA4B5460;
      *(inited + 32) = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      *(inited + 40) = v12;
      *(inited + 48) = a1;
      *(inited + 56) = a2;
      *(inited + 64) = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      *(inited + 72) = v13;
      *(inited + 80) = a3;
      *(inited + 88) = a4;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v14 = sub_1B9F12744(inited);
      swift_setDeallocating();
      sub_1B9F1D284();
      swift_arrayDestroy();
      v15 = [objc_allocWithZone(MEMORY[0x1E69A4048]) initWithHealthStore_];
      sub_1B9FEC7E8(v14);

      v16 = sub_1BA4A6618();

      v17 = *MEMORY[0x1E696C918];
      v18 = swift_allocObject();
      v18[2] = a1;
      v18[3] = a2;
      v18[4] = a3;
      v18[5] = a4;
      v18[6] = v5;
      v21[4] = sub_1B9FED2E8;
      v21[5] = v18;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 1107296256;
      v21[2] = sub_1BA454240;
      v21[3] = &block_descriptor_3;
      v19 = _Block_copy(v21);
      v20 = v17;

      [v15 setValue:v16 forKey:v20 completion:v19];
      _Block_release(v19);
    }
  }
}

uint64_t *sub_1B9FEC584(void *a1, void *a2)
{
  if (qword_1EBBE8510 != -1)
  {
    swift_once();
  }

  v5 = sub_1BA4A1318();
  v7 = v6;
  v8 = [a1 lastName];
  v9 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v11 = v10;

  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  *(v12 + 24) = a2;
  sub_1B9FED238(0, v13, v14, v15);
  swift_allocObject();
  v16 = a2;
  v17 = sub_1BA2F2F64(v5, v7, v9, v11, 0, 1, sub_1B9FEC710, 0, nullsub_1, v12, 0);

  return v17;
}

uint64_t sub_1B9FEC710(uint64_t *a1)
{
  if (a1[1])
  {
    v1 = *a1;
  }

  else
  {
    if (qword_1EBBE8510 != -1)
    {
      swift_once();
    }

    v1 = sub_1BA4A1318();
  }

  return v1;
}

void sub_1B9FEC7E8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1B9FED3BC();
    v2 = sub_1BA4A8098();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
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
  v7 = v2 + 64;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = (*(a1 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v5)))));
    v13 = v12[1];
    *&v30[0] = *v12;
    *(&v30[0] + 1) = v13;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_1B9F46920(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_1B9F46920(v29, v30);
    v14 = sub_1BA4A7D38();
    v15 = -1 << *(v2 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v9 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = *(v2 + 48) + 40 * v9;
    *v10 = v22;
    *(v10 + 16) = v23;
    *(v10 + 32) = v24;
    sub_1B9F46920(v30, (*(v2 + 56) + 32 * v9));
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_1B9FECACC(uint64_t a1, unint64_t *a2, void *a3)
{
  if (*(a1 + 16))
  {
    sub_1B9FDC7BC(0);
    v3 = sub_1BA4A8098();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v8 = v3 + 64;

  v9 = 0;
  while (v6)
  {
LABEL_15:
    v12 = (v9 << 9) | (8 * __clz(__rbit64(v6)));
    v13 = *(*(a1 + 48) + v12);
    v29 = *(*(a1 + 56) + v12);
    v14 = v29;
    sub_1B9F0ADF8(0, a2, a3);
    v15 = v13;
    v16 = v14;
    swift_dynamicCast();
    sub_1B9F46920((v30 + 8), v28);
    sub_1B9F46920(v28, v30);
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    sub_1BA4A8488();
    sub_1BA4A68C8();
    v17 = sub_1BA4A84D8();

    v18 = -1 << *(v3 + 32);
    v19 = v17 & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v8 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v8 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v8 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v8 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v6 &= v6 - 1;
    *(*(v3 + 48) + 8 * v10) = v15;
    sub_1B9F46920(v30, (*(v3 + 56) + 32 * v10));
    ++*(v3 + 16);
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return;
    }

    v6 = *(a1 + 64 + 8 * v11);
    ++v9;
    if (v6)
    {
      v9 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t sub_1B9FECD70(char a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  v53 = a3;
  v13 = sub_1BA4A3EA8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v24 = &v51 - v23;
  if (a1)
  {
    sub_1BA4A3D88();

    v25 = sub_1BA4A3E88();
    v26 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v54 = v14;
      v55 = v28;
      v51 = v28;
      *v27 = 136315650;
      v56 = a7;
      swift_getMetatypeMetadata();
      v29 = sub_1BA4A6808();
      v31 = a5;
      v32 = sub_1B9F0B82C(v29, v30, &v55);

      *(v27 + 4) = v32;
      v33 = v13;
      *(v27 + 12) = 2080;
      *(v27 + 14) = sub_1B9F0B82C(v53, a4, &v55);
      *(v27 + 22) = 2080;
      *(v27 + 24) = sub_1B9F0B82C(v31, a6, &v55);
      v34 = v51;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v34, -1, -1);
      MEMORY[0x1BFAF43A0](v27, -1, -1);

      return (*(v54 + 8))(v24, v33);
    }

    else
    {

      return (*(v14 + 8))(v24, v13);
    }
  }

  else
  {
    v54 = v14;
    v52 = a5;
    if (a2)
    {
      v36 = a2;
    }

    else
    {
      sub_1B9FED2F8(0, v20, v21, v22);
      sub_1B9FED478(qword_1EBBE9BC8, sub_1B9FED2F8, &unk_1BA4B6548);
      v36 = swift_allocError();
    }

    v37 = a2;
    sub_1BA4A3D88();

    v38 = v36;
    v39 = sub_1BA4A3E88();
    v40 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v55 = v42;
      v56 = a7;
      *v41 = 136315906;
      swift_getMetatypeMetadata();
      v43 = sub_1BA4A6808();
      v45 = sub_1B9F0B82C(v43, v44, &v55);
      v51 = v13;
      v46 = v45;

      *(v41 + 4) = v46;
      *(v41 + 12) = 2080;
      *(v41 + 14) = sub_1B9F0B82C(v53, a4, &v55);
      *(v41 + 22) = 2080;
      *(v41 + 24) = sub_1B9F0B82C(v52, a6, &v55);
      *(v41 + 32) = 2080;
      v56 = v36;
      v47 = v36;
      sub_1B9FED358();
      v48 = sub_1BA4A6808();
      v50 = sub_1B9F0B82C(v48, v49, &v55);

      *(v41 + 34) = v50;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v42, -1, -1);
      MEMORY[0x1BFAF43A0](v41, -1, -1);

      return (*(v54 + 8))(v17, v51);
    }

    else
    {

      return (*(v54 + 8))(v17, v13);
    }
  }
}

void sub_1B9FED238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_1EBBE9BB8)
  {
    v4 = type metadata accessor for HealthDetailsDemographicsItem(0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6178], a4);
    if (!v5)
    {
      atomic_store(v4, &qword_1EBBE9BB8);
    }
  }
}

void sub_1B9FED290(uint64_t a1)
{
  if (!qword_1EDC5DC08)
  {
    sub_1B9F1D284();
    v1 = sub_1BA4A82E8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5DC08);
    }
  }
}

void sub_1B9FED2F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_1EBBE9BC0)
  {
    v4 = _s30HealthDetailsDemographicsErrorOMa(0, a2, a3, a4);
    if (!v5)
    {
      atomic_store(v4, &qword_1EBBE9BC0);
    }
  }
}

unint64_t sub_1B9FED358()
{
  result = qword_1EDC6E310;
  if (!qword_1EDC6E310)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDC6E310);
  }

  return result;
}

void sub_1B9FED3BC()
{
  if (!qword_1EDC6B470)
  {
    v0 = sub_1BA4A80A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC6B470);
    }
  }
}

uint64_t sub_1B9FED478(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B9FED4F4(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_1B9FED584(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 32) = v2;
}

uint64_t sub_1B9FED61C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

uint64_t sub_1B9FED6B4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 40) = v2;
}

double sub_1B9FED714()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_1B9FED74C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
}

uint64_t sub_1B9FED7E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, int a6, void *a7, int a8, uint64_t a9)
{
  v90 = a8;
  v85 = a7;
  v87 = a6;
  v89 = a4;
  v92 = sub_1BA4A3EA8();
  v101 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92, v13);
  v100 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v93 = &v82 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v82 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v82 - v24;
  v26 = *a1;
  v27 = *(a1 + 8);
  v99 = *a2;
  v98 = *(a2 + 8);
  v97 = *(a2 + 16);
  v96 = *(a2 + 24);
  v95 = *(a2 + 25);
  sub_1BA4A3E58();
  v28 = sub_1BA4A3E88();
  v29 = sub_1BA4A6FC8();
  v30 = os_log_type_enabled(v28, v29);
  v91 = a3;
  v88 = a5;
  v86 = v26;
  v84 = v27;
  v94 = a9;
  v83 = v21;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *&v107[0] = v32;
    *v31 = 136315394;
    v33 = sub_1BA4A85D8();
    v35 = sub_1B9F0B82C(v33, v34, v107);

    *(v31 + 4) = v35;
    *(v31 + 12) = 2080;
    v102 = v26;
    LOBYTE(v103) = v27;
    sub_1B9F232A8(0, &qword_1EBBE9CD0, &type metadata for SummarySharingSetupAnalyticsBaseEvent.SharingEntriesAnalytics, MEMORY[0x1E69E6720]);
    v36 = sub_1BA4A6808();
    v38 = sub_1B9F0B82C(v36, v37, v107);

    *(v31 + 14) = v38;
    _os_log_impl(&dword_1B9F07000, v28, v29, "[%s] Received sharing analytics: %s", v31, 0x16u);
    swift_arrayDestroy();
    v39 = v32;
    v21 = v83;
    MEMORY[0x1BFAF43A0](v39, -1, -1);
    MEMORY[0x1BFAF43A0](v31, -1, -1);
  }

  v40 = *(v101 + 8);
  v41 = v92;
  v40(v25, v92);
  sub_1BA4A3E58();
  v42 = sub_1BA4A3E88();
  v43 = sub_1BA4A6FC8();
  v44 = os_log_type_enabled(v42, v43);
  v45 = v85;
  if (v44)
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *&v107[0] = v47;
    *v46 = 136315394;
    v48 = sub_1BA4A85D8();
    v50 = sub_1B9F0B82C(v48, v49, v107);

    *(v46 + 4) = v50;
    *(v46 + 12) = 2080;
    v102 = v99;
    LOBYTE(v103) = v98;
    v104 = v97;
    LOBYTE(v105) = v96;
    BYTE1(v105) = v95;
    v51 = sub_1BA4A6808();
    v53 = sub_1B9F0B82C(v51, v52, v107);

    *(v46 + 14) = v53;
    _os_log_impl(&dword_1B9F07000, v42, v43, "[%s] Received demographics analytics: %s", v46, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v47, -1, -1);
    MEMORY[0x1BFAF43A0](v46, -1, -1);

    v40(v83, v41);
  }

  else
  {

    v40(v21, v41);
  }

  v54 = v91;
  v55 = v93;
  sub_1BA4A3E58();

  v56 = sub_1BA4A3E88();
  v57 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v102 = v59;
    *v58 = 136315394;
    v60 = sub_1BA4A85D8();
    v62 = sub_1B9F0B82C(v60, v61, &v102);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2080;
    v63 = MEMORY[0x1BFAF1560](v54, &type metadata for SummarySharingSelectionSuggestedCategory);
    v65 = sub_1B9F0B82C(v63, v64, &v102);

    *(v58 + 14) = v65;
    _os_log_impl(&dword_1B9F07000, v56, v57, "[%s] Received suggested categories: %s", v58, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v59, -1, -1);
    MEMORY[0x1BFAF43A0](v58, -1, -1);

    v40(v93, v41);
  }

  else
  {

    v40(v55, v41);
  }

  v66 = v88;
  v67 = v100;
  sub_1BA4A3E58();

  v68 = sub_1BA4A3E88();
  v69 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v102 = v71;
    *v70 = 136315394;
    v72 = sub_1BA4A85D8();
    v74 = v40;
    v75 = sub_1B9F0B82C(v72, v73, &v102);

    *(v70 + 4) = v75;
    *(v70 + 12) = 2080;
    v76 = v89;
    *(v70 + 14) = sub_1B9F0B82C(v89, v66, &v102);
    _os_log_impl(&dword_1B9F07000, v68, v69, "[%s] Received paired device name: %s", v70, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v71, -1, -1);
    MEMORY[0x1BFAF43A0](v70, -1, -1);

    v74(v100, v92);
  }

  else
  {

    v40(v67, v41);
    v76 = v89;
  }

  *&v107[0] = v86;
  BYTE8(v107[0]) = v84;
  v102 = v99;
  LOBYTE(v103) = v98;
  v104 = v97;
  LOBYTE(v105) = v96;
  BYTE1(v105) = v95;
  v108[0] = v87;
  type metadata accessor for SummarySharingSetupAnalyticsEvent();
  swift_allocObject();

  v78 = SummarySharingSetupAnalyticsEvent.init(sharingEntriesAnalytics:userDemographicsAnalytics:location:version:usedDataSelectionWizard:pagesCompleted:totalPages:activeWatchProductType:countErrors:)(v107, &v102, v108, v77, 0, 0, 0, v76, v66, 0);
  swift_beginAccess();
  v45[4] = v78;

  v79 = sub_1B9FF2EA0(v54);
  swift_beginAccess();
  v45[3] = v79;
  swift_beginAccess();
  v45[5] = v54;

  if (v90)
  {
    v80 = type metadata accessor for SummarySharingOnboardingInfoViewController();
    memset(v107, 0, sizeof(v107));
    v102 = 0;
    v103 = 0;
    v104 = 0;
    v105 = 5;
    v106 = 7;

    sub_1B9FEEC64(v80, v107, 1, &v102);

    sub_1B9FF3BFC(v102, v103, v104, v105);
    return sub_1B9F23224(v107);
  }

  else
  {
  }
}

void *SummarySharingSelectionFlowContext.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_1EDC5E428 != -1)
  {
    swift_once();
  }

  [v1 postNotificationName:qword_1EDC5E430 object:0];

  return v0;
}

uint64_t SummarySharingSelectionFlowContext.__deallocating_deinit()
{
  SummarySharingSelectionFlowContext.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1B9FEE28C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for SummarySharingSelectionFlow(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B9FF1628(a1, v9);
  if (swift_getEnumCaseMultiPayload())
  {
    result = sub_1B9FF36AC(v9, type metadata accessor for SummarySharingSelectionFlow);
LABEL_8:
    v16 = -4;
    goto LABEL_9;
  }

  v11 = *v9;
  swift_beginAccess();
  v12 = *(v3 + 40);
  result = sub_1B9FEE484(v11, v12);
  if (v13)
  {
    goto LABEL_8;
  }

  v14 = result;
  v15 = *(v12 + 16);
  if (v15 < result)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (result < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v14 == v15)
  {
LABEL_7:

    goto LABEL_8;
  }

  v17 = v14 + 32;
  v18 = -v15;
  while (1)
  {
    v26[7] = *(v12 + v17);
    v19 = sub_1BA285F8C();
    v21 = v20;
    v26[6] = v11;
    if (v19 != sub_1BA285F8C() || v21 != v22)
    {
      break;
    }

LABEL_12:
    ++v17;
    if (v18 + v17 == 32)
    {
      goto LABEL_7;
    }
  }

  v24 = sub_1BA4A8338();

  if (v24)
  {
    goto LABEL_12;
  }

  v25 = *(v3 + 40);
  if (v17 - 32 >= *(v25 + 16))
  {
LABEL_22:
    __break(1u);
    return result;
  }

  v16 = *(v25 + v17);
LABEL_9:
  *a2 = v16;
  return result;
}

uint64_t sub_1B9FEE484(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    for (result = 0; v2 != result; ++result)
    {
      v5 = *(a2 + 32 + result);
      v6 = v5 >> 6;
      if (v5 >> 6 > 1)
      {
        if (v6 == 3)
        {
          if (v5 == 192)
          {
            if (a1 == 192)
            {
              return result;
            }
          }

          else if (v5 == 193)
          {
            if (a1 == 193)
            {
              return result;
            }
          }

          else if (a1 == 194)
          {
            return result;
          }
        }

        else if (*(a2 + 32 + result) > 0x81u)
        {
          if (v5 == 130)
          {
            if (a1 == 130)
            {
              return result;
            }
          }

          else if (a1 == 131)
          {
            return result;
          }
        }

        else if (v5 == 128)
        {
          if (a1 == 128)
          {
            return result;
          }
        }

        else if (a1 == 129)
        {
          return result;
        }
      }

      else if (v6)
      {
        if ((a1 & 0xC0) == 0x40 && ((v5 ^ a1) & 0x3F) == 0)
        {
          return result;
        }
      }

      else if (a1 <= 0x3Fu && v5 == a1)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_1B9FEE580(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(a1 + 3);
  v63 = *(a1 + 2);
  v64 = v2;
  v65 = *(a1 + 4);
  v3 = *(a1 + 1);
  v61 = *a1;
  v62 = v3;
  v4 = *(a2 + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  v7 = a2 + 32;
  v52 = *(a2 + 16);
  v53 = a2 + 32;
LABEL_6:
  v8 = (v7 + 80 * v6);
  v9 = v8[3];
  v57 = v8[2];
  v58 = v9;
  v10 = v8[4];
  v11 = v8[1];
  v55 = *v8;
  v56 = v11;
  v60[2] = v57;
  v60[3] = v9;
  v60[4] = v10;
  v60[1] = v11;
  v59 = v10;
  v60[0] = v55;
  v60[8] = v64;
  v60[9] = v65;
  v60[6] = v62;
  v60[7] = v63;
  v60[5] = v61;
  v12 = v55;
  v13 = HIWORD(v9) >> 14;
  if (v13 > 1)
  {
    if (v13 == 2)
    {
      if (*(a1 + 7) >> 62 == 2)
      {
        goto LABEL_12;
      }

      goto LABEL_3;
    }

    v20 = *(a1 + 7);
    if (v20 >> 62 != 3)
    {
      sub_1B9FF3650(a1, v54);
      sub_1B9FF3650(&v55, v54);
      goto LABEL_4;
    }

    v21 = v56;
    v23 = *(&v57 + 1);
    v22 = v57;
    v51 = v58;
    v49 = BYTE8(v58);
    v46 = v59;
    v48 = BYTE9(v58);
    v25 = *(a1 + 2);
    v24 = *(a1 + 3);
    v27 = *(a1 + 4);
    v26 = *(a1 + 5);
    v50 = *(a1 + 6);
    v45 = *(a1 + 8);
    v47 = *(a1 + 9);
    if (__PAIR128__(*(&v55 + 1), v55 | ((*(&v55 + 1) | ((*(&v55 + 5) | (BYTE7(v55) << 16)) << 32)) << 8)) != *a1)
    {
      v28 = v57;
      v44 = *(a1 + 7);
      v29 = *(a1 + 4);
      v30 = *(&v57 + 1);
      v31 = *(a1 + 3);
      v32 = sub_1BA4A8338();
      v24 = v31;
      v23 = v30;
      v27 = v29;
      v20 = v44;
      v22 = v28;
      if ((v32 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    if (*(&v21 + 1))
    {
      if (!v24)
      {
        goto LABEL_51;
      }

      if (v21 != __PAIR128__(v24, v25))
      {
        v33 = v22;
        v34 = v23;
        v35 = sub_1BA4A8338();
        v23 = v34;
        v22 = v33;
        if ((v35 & 1) == 0)
        {
          goto LABEL_51;
        }
      }
    }

    else if (v24)
    {
      goto LABEL_51;
    }

    if ((v22 != v27 || v23 != v26) && (sub_1BA4A8338() & 1) == 0)
    {
LABEL_51:
      sub_1B9FF3650(a1, v54);
      sub_1B9FF3650(&v55, v54);
      v4 = v52;
      goto LABEL_52;
    }

    v36 = *(v51 + 16);
    v7 = v53;
    if (v36 != *(v50 + 16))
    {
      sub_1B9FF3650(a1, v54);
      sub_1B9FF3650(&v55, v54);
      v4 = v52;
      goto LABEL_4;
    }

    v4 = v52;
    if (v36 && v51 != v50)
    {
      sub_1B9FF3650(&v55, v54);
      v37 = (v50 + 48);
      v38 = (v51 + 48);
      while (1)
      {
        v39 = *v38;
        v40 = *v37;
        if (*(v38 - 2) == *(v37 - 2) && *(v38 - 1) == *(v37 - 1))
        {
          if (v39 != v40)
          {
            goto LABEL_67;
          }
        }

        else if (sub_1BA4A8338() & 1) == 0 || ((v39 ^ v40))
        {
LABEL_67:
          sub_1B9FF3650(a1, v54);
LABEL_52:
          v7 = v53;
LABEL_4:
          sub_1B9FF36AC(v60, sub_1B9FF370C);
LABEL_5:
          if (++v6 == v4)
          {
            return 0;
          }

          goto LABEL_6;
        }

        v37 += 24;
        v38 += 24;
        if (!--v36)
        {
          goto LABEL_48;
        }
      }
    }

    sub_1B9FF3650(&v55, v54);
LABEL_48:
    if (v49 == 2)
    {
      v7 = v53;
      if (v20 != 2)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v7 = v53;
      if (v20 == 2 || ((v49 ^ v20) & 1) != 0)
      {
        goto LABEL_3;
      }
    }

    if (((v20 >> 8) & 1 ^ v48))
    {
      goto LABEL_3;
    }

    if (*(&v46 + 1))
    {
      if (!v47)
      {
        goto LABEL_3;
      }

      if (v46 == __PAIR128__(v47, v45))
      {
        sub_1B9FF3650(a1, v54);
        goto LABEL_79;
      }

      v42 = sub_1BA4A8338();
      sub_1B9FF3650(a1, v54);
      sub_1B9FF36AC(v60, sub_1B9FF370C);
      if ((v42 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_1B9FF3650(a1, v54);
      sub_1B9FF3650(&v55, v54);
      sub_1B9FF3650(a1, v54);
      sub_1B9FF36AC(v60, sub_1B9FF370C);
      sub_1B9FF3768(a1);
      sub_1B9FF3768(&v55);
      if (v47)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
    if (!v13)
    {
      if (!(*(a1 + 7) >> 62))
      {
LABEL_12:
        v14 = *a1;
        sub_1B9FF36AC(v60, sub_1B9FF370C);
        if (v12 != v14)
        {
          goto LABEL_5;
        }

        return v6;
      }

LABEL_3:
      sub_1B9FF3650(a1, v54);
      goto LABEL_4;
    }

    if (*(a1 + 7) >> 62 != 1)
    {
      goto LABEL_3;
    }

    if (v55)
    {
      v15 = 0x636F6C4261746562;
    }

    else
    {
      v15 = 0xD000000000000016;
    }

    if (v55)
    {
      v16 = 0xEC0000007372656BLL;
    }

    else
    {
      v16 = 0x80000001BA4E14F0;
    }

    if (*a1)
    {
      v17 = 0x636F6C4261746562;
    }

    else
    {
      v17 = 0xD000000000000016;
    }

    if (*a1)
    {
      v18 = 0xEC0000007372656BLL;
    }

    else
    {
      v18 = 0x80000001BA4E14F0;
    }

    if (v15 == v17 && v16 == v18)
    {

LABEL_79:
      sub_1B9FF36AC(v60, sub_1B9FF370C);
    }

    else
    {
      v19 = sub_1BA4A8338();

      sub_1B9FF36AC(v60, sub_1B9FF370C);
      if ((v19 & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  return v6;
}

unint64_t sub_1B9FEEB54(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = sub_1BA4A7CC8();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1BFAF2860](v5, a2);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    sub_1B9F0ADF8(0, &qword_1EDC6B5D0, 0x1E69DD258);
    v8 = sub_1BA4A7798();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_1B9FEEC64(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v5;
  v11 = sub_1BA4A3EA8();
  v68 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v61 - v17;
  v19 = *a4;
  v65 = *(a4 + 8);
  v66 = v19;
  v20 = *(a4 + 16);
  v63 = *(a4 + 24);
  v64 = v20;
  v62 = *(a4 + 32);
  sub_1B9FF168C(a2, &v74);
  v67 = v14;
  if (v75)
  {
    sub_1B9F46920(&v74, &v69);
    *&v74 = 0;
    *(&v74 + 1) = 0xE000000000000000;
    v21 = sub_1BA4A85D8();
    MEMORY[0x1BFAF1350](v21);

    MEMORY[0x1BFAF1350](95, 0xE100000000000000);
    sub_1BA4A7FB8();
    v22 = *(&v74 + 1);
    v23 = v74;
    __swift_destroy_boxed_opaque_existential_1(&v69);
  }

  else
  {
    sub_1B9F23224(&v74);
    *&v69 = a1;
    sub_1B9FE957C();
    v23 = sub_1BA4A6808();
    v22 = v24;
  }

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v74 = v5[7];
  v5[7] = 0x8000000000000000;
  sub_1B9FF1860(a3 & 1, v23, v22, isUniquelyReferenced_nonNull_native);

  v5[7] = v74;
  swift_endAccess();
  sub_1BA4A3DD8();

  v26 = sub_1BA4A3E88();
  v27 = sub_1BA4A6FC8();

  v28 = os_log_type_enabled(v26, v27);
  v61[1] = v10;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v61[0] = v18;
    v31 = v23;
    v32 = v30;
    *&v69 = v30;
    *v29 = 136315394;
    v33 = sub_1BA4A85D8();
    v35 = v11;
    v36 = sub_1B9F0B82C(v33, v34, &v69);

    *(v29 + 4) = v36;
    *(v29 + 12) = 2080;
    v37 = sub_1B9F0B82C(v31, v22, &v69);

    *(v29 + 14) = v37;
    v11 = v35;
    _os_log_impl(&dword_1B9F07000, v26, v27, "[%s] Completed onboarding step: %s", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v32, -1, -1);
    MEMORY[0x1BFAF43A0](v29, -1, -1);

    v38 = *(v68 + 8);
    v38(v61[0], v35);
  }

  else
  {

    v38 = *(v68 + 8);
    v38(v18, v11);
  }

  swift_beginAccess();
  v39 = v5[4];
  v41 = v65;
  v40 = v66;
  *&v69 = v66;
  *(&v69 + 1) = v65;
  v43 = v63;
  v42 = v64;
  v70 = v64;
  v71 = v63;
  LOBYTE(v72) = v62;
  type metadata accessor for SummarySharingSetupDetailAnalyticsEvent();
  swift_allocObject();

  sub_1B9FF2FA4(v40, v41, v42, v43);
  v44 = sub_1BA29A764(v39, &v69);

  v45 = v67;
  sub_1BA4A3DD8();

  v46 = sub_1BA4A3E88();
  v47 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *&v69 = v49;
    *v48 = 136315394;
    v50 = sub_1BA4A85D8();
    v66 = v11;
    v52 = sub_1B9F0B82C(v50, v51, &v69);

    *(v48 + 4) = v52;
    *(v48 + 12) = 2080;
    v73 = v5[4];
    type metadata accessor for SummarySharingSetupAnalyticsEvent();

    v53 = sub_1BA4A6808();
    v55 = sub_1B9F0B82C(v53, v54, &v69);

    *(v48 + 14) = v55;
    _os_log_impl(&dword_1B9F07000, v46, v47, "[%s] Submitting detail analytics: %s", v48, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v49, -1, -1);
    MEMORY[0x1BFAF43A0](v48, -1, -1);

    v56 = v67;
    v57 = v66;
  }

  else
  {

    v56 = v45;
    v57 = v11;
  }

  v38(v56, v57);
  v73 = v44;
  v58 = sub_1BA4A29B8();
  v59 = sub_1BA4A29A8();
  v71 = v58;
  v72 = MEMORY[0x1E69A3198];
  *&v69 = v59;
  sub_1B9FF3C70(&qword_1EBBE9C58, type metadata accessor for SummarySharingSetupDetailAnalyticsEvent, &protocol conformance descriptor for SummarySharingSetupDetailAnalyticsEvent);
  sub_1BA4A2B58();
  __swift_destroy_boxed_opaque_existential_1(&v69);
}

void sub_1B9FEF28C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_1B9F248E4(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v11 = sub_1B9F24A34(a3, a4);
    v13 = v12;

    if (v13)
    {
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v5;
      v18 = *v5;
      if (!v14)
      {
        sub_1BA0F1474();
        v15 = v18;
      }

      sub_1BA0F6A1C(v11, v15, v16);
      *v5 = v15;
    }
  }
}

void sub_1B9FEF394(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1 == 2)
  {
    v6 = sub_1B9F24A34(a2, a3);
    v8 = v7;

    if (v8)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v4;
      v15 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1BA0F1B08();
        v10 = v15;
      }

      sub_1BA0F6D88(v6, v10, v11);
      *v4 = v10;
    }
  }

  else
  {
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v4;
    sub_1B9FF1860(a1 & 1, a2, a3, v14);

    *v4 = v16;
  }
}

uint64_t sub_1B9FEF480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B9F3D3D0(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v16 + 48))(a1, 1, v13) == 1)
  {
    sub_1B9FF3244(a1, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    sub_1BA0F6758(a2, a3, v10);

    return sub_1B9FF3244(v10, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  }

  else
  {
    sub_1B9FF3588(a1, v15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1B9FF1FFC(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

void sub_1B9FEF65C(uint64_t a1, void *a2)
{
  sub_1B9F3D3D0(0, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v17 - v7;
  v9 = sub_1BA4A1728();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v12) == 1)
  {
    v15 = MEMORY[0x1E6969530];
    sub_1B9FF3244(a1, &qword_1EDC6E440, MEMORY[0x1E6969530]);
    sub_1BA0F68B0(a2, v8);

    sub_1B9FF3244(v8, &qword_1EDC6E440, v15);
  }

  else
  {
    (*(v10 + 32))(v14, a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_1B9FF2160(v14, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v18;
  }
}

void sub_1B9FEF83C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1B9F36508(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v9 = sub_1B9F24A34(a2, a3);
    v11 = v10;

    if (v11)
    {
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v4;
      v16 = *v4;
      if (!v12)
      {
        sub_1BA0F3028();
        v13 = v16;
      }

      sub_1BA0F7808(v9, v13, v14);
      *v4 = v13;
    }
  }
}

void sub_1B9FEF934(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_1B9FF23EC(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
  }

  else
  {
    v7 = sub_1B9FDA928(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v14 = *v3;
      if (!v10)
      {
        sub_1BA0F3188();
        v11 = v14;
      }

      sub_1BA0F79B8(v9, v11, v12);
      *v3 = v11;
    }
  }
}

id sub_1B9FEF9F4(void *a1, uint64_t a2)
{
  v3 = v2;
  v55 = a1;
  v5 = sub_1BA4A3EA8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v10 = *(a2 + 8);
  v12 = *(a2 + 24);
  v53 = *(a2 + 16);
  v54 = v10;
  v52 = *(a2 + 32);
  swift_beginAccess();
  v13 = *(v3 + 32);
  swift_beginAccess();

  v14 = sub_1BA4A6DC8();
  v15 = *(v13 + 88);
  *(v13 + 88) = v14;

  v16 = *(v3 + 16);
  result = [*(*(v3 + 32) + 64) BOOLValue];
  if (result)
  {
    result = swift_beginAccess();
    v18 = *(v3 + 24);
    if (*(v3 + 48))
    {
      v19 = 1;
      goto LABEL_6;
    }
  }

  else
  {
    v18 = 1;
    v19 = 1;
    if (*(v3 + 48))
    {
      goto LABEL_6;
    }
  }

  v19 = 0;
LABEL_6:
  v20 = 6;
  if (v16)
  {
    v20 = 7;
  }

  v21 = __OFADD__(v20, v18);
  v22 = v20 + v18;
  if (v21)
  {
    __break(1u);
    goto LABEL_19;
  }

  v23 = v22 + v19;
  if (__OFADD__(v22, v19))
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v51 = v11;
  v24 = *(v3 + 32);
  v25 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  v26 = [v25 initWithInteger_];
  v27 = *(v24 + 96);
  *(v24 + 96) = v26;

  sub_1BA4A3DD8();

  v28 = sub_1BA4A3E88();
  v29 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v50 = v12;
    v49 = v5;
    v32 = v31;
    v56[0] = v31;
    *v30 = 136315394;
    v33 = sub_1BA4A85D8();
    v35 = sub_1B9F0B82C(v33, v34, v56);

    *(v30 + 4) = v35;
    *(v30 + 12) = 2080;
    v59 = *(v3 + 32);
    type metadata accessor for SummarySharingSetupAnalyticsEvent();

    v36 = sub_1BA4A6808();
    v38 = sub_1B9F0B82C(v36, v37, v56);

    *(v30 + 14) = v38;
    _os_log_impl(&dword_1B9F07000, v28, v29, "[%s] Submitting onboarding analytics: %s", v30, 0x16u);
    swift_arrayDestroy();
    v12 = v50;
    MEMORY[0x1BFAF43A0](v32, -1, -1);
    MEMORY[0x1BFAF43A0](v30, -1, -1);

    (*(v6 + 8))(v9, v49);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  v59 = *(v3 + 32);
  v39 = sub_1BA4A29B8();

  v40 = sub_1BA4A29A8();
  v41 = MEMORY[0x1E69A3198];
  v57 = v39;
  v58 = MEMORY[0x1E69A3198];
  v56[0] = v40;
  type metadata accessor for SummarySharingSetupAnalyticsEvent();
  sub_1B9FF3C70(&qword_1EBBE9C60, type metadata accessor for SummarySharingSetupAnalyticsEvent, &protocol conformance descriptor for SummarySharingSetupAnalyticsEvent);
  sub_1BA4A2B58();

  result = __swift_destroy_boxed_opaque_existential_1(v56);
  if (v12 != 12)
  {
    v42 = v51;
    v44 = v53;
    v43 = v54;
    v56[0] = v51;
    v56[1] = v54;
    v56[2] = v53;
    v57 = v12;
    LOBYTE(v58) = v52;
    type metadata accessor for SummarySharingSetupDetailAnalyticsEvent();
    swift_allocObject();
    sub_1B9FF2FBC(v42, v43, v44, v12);

    v46 = sub_1BA29A764(v45, v56);

    v59 = v46;
    v47 = sub_1BA4A29A8();
    v57 = v39;
    v58 = v41;
    v56[0] = v47;
    sub_1B9FF3C70(&qword_1EBBE9C58, type metadata accessor for SummarySharingSetupDetailAnalyticsEvent, &protocol conformance descriptor for SummarySharingSetupDetailAnalyticsEvent);
    sub_1BA4A2B58();
    __swift_destroy_boxed_opaque_existential_1(v56);
  }

  if (v55)
  {
    return [v55 dismissViewControllerAnimated:1 completion:0];
  }

  return result;
}

uint64_t sub_1B9FEFF28(char a1)
{
  v3 = *v1;
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v9 = sub_1BA4A3E88();
  v10 = sub_1BA4A6FC8();
  v11 = os_log_type_enabled(v9, v10);
  v24 = v3;
  if (v11)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25 = v13;
    *v12 = 136446466;
    v14 = sub_1BA4A85D8();
    v23 = v4;
    v16 = sub_1B9F0B82C(v14, v15, &v25);

    *(v12 + 4) = v16;
    *(v12 + 12) = 1024;
    *(v12 + 14) = a1 & 1;
    _os_log_impl(&dword_1B9F07000, v9, v10, "[%{public}s] Starting sharable model background generation, commitAsUrgent: %{BOOL}d", v12, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1BFAF43A0](v13, -1, -1);
    MEMORY[0x1BFAF43A0](v12, -1, -1);

    (*(v5 + 8))(v8, v23);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  v26 = 1;
  sub_1BA4A4DC8();
  v17 = [objc_opt_self() defaultCenter];
  if (qword_1EDC5E400 != -1)
  {
    swift_once();
  }

  [v17 postNotificationName:qword_1EDC5E408 object:0];

  v18 = [objc_allocWithZone(sub_1BA4A3578()) init];
  sub_1BA4A3558();
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  v21 = v24;
  *(v20 + 16) = v19;
  *(v20 + 24) = v21;

  sub_1BA4A3568();
}

void sub_1B9FF0280(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v34 - v11;
  if (a1)
  {
    v13 = a1;
    sub_1BA4A3DD8();
    v14 = a1;
    v15 = sub_1BA4A3E88();
    v16 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v35 = v4;
      v19 = v18;
      v37[0] = v18;
      *v17 = 136446466;
      v20 = sub_1BA4A85D8();
      v22 = sub_1B9F0B82C(v20, v21, v37);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2082;
      swift_getErrorValue();
      v23 = sub_1BA4A8418();
      v25 = sub_1B9F0B82C(v23, v24, v37);

      *(v17 + 14) = v25;
      _os_log_impl(&dword_1B9F07000, v15, v16, "[%{public}s] Error trying to run sharable model background generation %{public}s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v19, -1, -1);
      MEMORY[0x1BFAF43A0](v17, -1, -1);

      (*(v5 + 8))(v12, v35);
    }

    else
    {

      (*(v5 + 8))(v12, v4);
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {

      v36 = 3;
      sub_1BA4A4DC8();

      goto LABEL_11;
    }
  }

  else
  {
    sub_1BA4A3DD8();
    v26 = sub_1BA4A3E88();
    v27 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v37[0] = v29;
      *v28 = 136446210;
      v30 = sub_1BA4A85D8();
      v32 = sub_1B9F0B82C(v30, v31, v37);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_1B9F07000, v26, v27, "[%{public}s] Sharable model background generation completed", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1BFAF43A0](v29, -1, -1);
      MEMORY[0x1BFAF43A0](v28, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {

      v36 = 2;
      sub_1BA4A4DC8();
LABEL_11:
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v33 = [objc_opt_self() defaultCenter];
    if (qword_1EDC5E428 != -1)
    {
      swift_once();
    }

    [v33 postNotificationName:qword_1EDC5E430 object:0];
  }
}

void sub_1B9FF0708()
{
  v0 = [objc_opt_self() defaultCenter];
  v1 = v0;
  if (qword_1EDC5E428 != -1)
  {
    swift_once();
    v0 = v1;
  }

  [v0 postNotificationName:qword_1EDC5E430 object:0];
}

uint64_t sub_1B9FF07A8()
{
  v38 = MEMORY[0x1E69E8050];
  sub_1B9F3D3D0(0, &qword_1EDC6B5B8, MEMORY[0x1E69E8050]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v30 - v3;
  v37 = sub_1BA4A72D8();
  v34 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9FF2FD4(0);
  v31 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9FF30D8(0);
  v14 = *(v13 - 8);
  v32 = v13;
  v33 = v14;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9FF31A4(0);
  v19 = *(v18 - 8);
  v35 = v18;
  v36 = v19;
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *(v0 + 64);
  sub_1B9FF39C0(0, &qword_1EBBE9C70, &type metadata for SummarySharingSelectionFlowContext.SharableModelBackgroundGenerationState, MEMORY[0x1E695BF98]);
  sub_1B9FF305C();

  sub_1BA4A50F8();

  sub_1BA4A72B8();
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
  v23 = sub_1BA4A7308();
  v39 = v23;
  v24 = sub_1BA4A72A8();
  (*(*(v24 - 8) + 56))(v4, 1, 1, v24);
  sub_1B9FF3C70(&qword_1EBBE9C88, sub_1B9FF2FD4, MEMORY[0x1E695BCE8]);
  sub_1B9F3DC80();
  v25 = v31;
  sub_1BA4A50B8();
  sub_1B9FF3244(v4, &qword_1EDC6B5B8, v38);

  (*(v34 + 8))(v7, v37);
  (*(v9 + 8))(v12, v25);
  sub_1B9FF3C70(&qword_1EBBE9C98, sub_1B9FF30D8, MEMORY[0x1E695BE48]);
  v26 = v32;
  sub_1BA4A4FE8();
  (*(v33 + 8))(v17, v26);
  sub_1B9FF3C70(&qword_1EBBE9CA0, sub_1B9FF31A4, MEMORY[0x1E695BD60]);
  v27 = v35;
  v28 = sub_1BA4A4F98();
  (*(v36 + 8))(v22, v27);
  return v28;
}

BOOL sub_1B9FF0CDC(_BYTE *a1)
{
  v1 = *a1;
  v2 = 1;
  if (!*a1)
  {
    return v2;
  }

  if (v1 != 3)
  {
    return v1 == 2;
  }

  type metadata accessor for SummarySharingOnboardingError(0);
  sub_1B9FF3C70(&qword_1EBBE9D20, type metadata accessor for SummarySharingOnboardingError, &protocol conformance descriptor for SummarySharingOnboardingError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  return v4 & 1;
}

uint64_t sub_1B9FF0D98@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SummarySharingOnboardingError(0);
  sub_1B9FF3C70(&qword_1EBBE9D20, type metadata accessor for SummarySharingOnboardingError, &protocol conformance descriptor for SummarySharingOnboardingError);
  *a1 = swift_allocError();

  return swift_storeEnumTagMultiPayload();
}

void sub_1B9FF0E2C()
{
  swift_beginAccess();
  *(v0 + 56) = sub_1B9FF274C(*(v0 + 56));
  swift_endAccess();

  swift_beginAccess();
  v1 = *(v0 + 32);
  sub_1B9F0ADF8(0, &qword_1EDC6E360, 0x1E696AD98);

  v2 = sub_1BA4A7758();
  v3 = *(v1 + 64);
  *(v1 + 64) = v2;
}

void sub_1B9FF0EE8()
{
  swift_beginAccess();
  if (__OFADD__([*(*(v0 + 32) + 104) integerValue], 1))
  {
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 32);

    v2 = sub_1BA4A6DC8();
    v3 = *(v1 + 104);
    *(v1 + 104) = v2;
  }
}

uint64_t sub_1B9FF0F74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA4A3A28();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v13 = &v27 - v12;
  v14 = *(a1 + 16);
  if (v14 != *(a2 + 16))
  {
    v24 = 0;
    return v24 & 1;
  }

  if (!v14 || a1 == a2)
  {
    v24 = 1;
    return v24 & 1;
  }

  v15 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v16 = a1 + v15;
  v17 = a2 + v15;
  v19 = *(v5 + 16);
  v18 = v5 + 16;
  v20 = (v18 - 8);
  v27 = *(v18 + 56);
  v28 = v19;
  while (1)
  {
    v21 = v28;
    result = (v28)(v13, v16, v4, v11);
    if (!v14)
    {
      break;
    }

    v23 = v18;
    v21(v8, v17, v4);
    sub_1B9FF3C70(&qword_1EBBEA620, MEMORY[0x1E69A3910], MEMORY[0x1E69A3920]);
    v24 = sub_1BA4A6728();
    v25 = *v20;
    (*v20)(v8, v4);
    v25(v13, v4);
    if (v24)
    {
      v17 += v27;
      v16 += v27;
      v26 = v14-- == 1;
      v18 = v23;
      if (!v26)
      {
        continue;
      }
    }

    return v24 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B9FF1188(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    v4 = (a1 + 48);
    do
    {
      v5 = *v4;
      v6 = *v3;
      if (*(v4 - 2) == *(v3 - 2) && *(v4 - 1) == *(v3 - 1))
      {
        if (v5 != v6)
        {
          return 0;
        }
      }

      else
      {
        v8 = sub_1BA4A8338();
        result = 0;
        if (v8 & 1) == 0 || ((v5 ^ v6))
        {
          return result;
        }
      }

      v3 += 24;
      v4 += 24;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1B9FF126C(unint64_t a1, unint64_t a2, unint64_t *a3, void *a4)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v7)
    {
      goto LABEL_29;
    }

    v9 = v5 & 0xFFFFFFFFFFFFFF8;
    v10 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v5 < 0)
    {
      v9 = v5;
    }

    if (v6)
    {
      v10 = v9;
    }

    v11 = a2 & 0xFFFFFFFFFFFFFF8;
    v12 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v11 = a2;
    }

    if (a2 >> 62)
    {
      v12 = v11;
    }

    if (v10 == v12)
    {
LABEL_29:
      v20 = 1;
      return v20 & 1;
    }

    if (v7 < 0)
    {
      __break(1u);
      return result;
    }

    v6 = sub_1B9F0ADF8(0, a3, a4);
    if (((a2 | v5) & 0xC000000000000001) != 0)
    {
      v13 = a2 & 0xC000000000000001;
      v14 = 4;
      while (1)
      {
        v15 = v14 - 4;
        v16 = v14 - 3;
        if (__OFADD__(v14 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x1BFAF2860](v14 - 4, v5);
          if (!v13)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v15 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v17 = *(v5 + 8 * v14);
          if (!v13)
          {
LABEL_24:
            if (v15 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v18 = *(a2 + 8 * v14);
            goto LABEL_26;
          }
        }

        v18 = MEMORY[0x1BFAF2860](v14 - 4, a2);
LABEL_26:
        v19 = v18;
        v20 = sub_1BA4A7798();

        if (v20)
        {
          ++v14;
          if (v16 != v7)
          {
            continue;
          }
        }

        return v20 & 1;
      }
    }

    v21 = (v5 + 32);
    v22 = (a2 + 32);
    v23 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = v7 - 1;
    while (1)
    {
      if (!v23)
      {
        goto LABEL_40;
      }

      if (!v24)
      {
        break;
      }

      v27 = *v21++;
      v26 = v27;
      v28 = *v22++;
      a2 = v26;
      v5 = v28;
      v20 = sub_1BA4A7798();

      v30 = v25-- != 0;
      if (v20)
      {
        --v24;
        --v23;
        if (v30)
        {
          continue;
        }
      }

      return v20 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v31 = a4;
    v32 = a3;
    v33 = sub_1BA4A7CC8();
    a3 = v32;
    a4 = v31;
    v7 = v33;
  }

  v34 = a4;
  v35 = a3;
  result = sub_1BA4A7CC8();
  a3 = v35;
  a4 = v34;
  if (v7 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1B9FF14D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3;
      v7 = *v4;
      if (v6 == 1)
      {
        v8 = 0xD000000000000012;
      }

      else
      {
        v8 = 0x73657461647075;
      }

      if (v6 == 1)
      {
        v9 = 0x80000001BA4E14D0;
      }

      else
      {
        v9 = 0xE700000000000000;
      }

      if (*v3)
      {
        v10 = v8;
      }

      else
      {
        v10 = 0x737472656C61;
      }

      if (*v3)
      {
        v11 = v9;
      }

      else
      {
        v11 = 0xE600000000000000;
      }

      if (v7 == 1)
      {
        v12 = 0xD000000000000012;
      }

      else
      {
        v12 = 0x73657461647075;
      }

      if (v7 == 1)
      {
        v13 = 0x80000001BA4E14D0;
      }

      else
      {
        v13 = 0xE700000000000000;
      }

      if (*v4)
      {
        v14 = v12;
      }

      else
      {
        v14 = 0x737472656C61;
      }

      if (*v4)
      {
        v15 = v13;
      }

      else
      {
        v15 = 0xE600000000000000;
      }

      if (v10 == v14 && v11 == v15)
      {
      }

      else
      {
        v5 = sub_1BA4A8338();

        if ((v5 & 1) == 0)
        {
          return 0;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1B9FF1628(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummarySharingSelectionFlow(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B9FF168C(uint64_t a1, uint64_t a2)
{
  sub_1B9F232A8(0, &qword_1EDC6E300, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1B9FF1718(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B9F24A34(a2, a3);
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
      sub_1BA0F1778();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1B9F1CB18(v16, a4 & 1);
    v11 = sub_1B9F24A34(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_1BA4A83B8();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 48 * v11;

    sub_1B9FF3C14(a1, v22);
  }

  else
  {
    sub_1BA0F7DE4(v11, a2, a3, a1, v21);
  }
}

void sub_1B9FF1860(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B9F24A34(a2, a3);
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
      sub_1BA0F1B08();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1BA0F3C84(v16, a4 & 1);
    v11 = sub_1B9F24A34(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      sub_1BA4A83B8();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + v11) = a1 & 1;
  }

  else
  {
    sub_1BA0F7E40(v11, a2, a3, a1 & 1, v21);
  }
}

void sub_1B9FF1994(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B9F24A34(a2, a3);
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
      sub_1BA0F1FB0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1BA0F4210(v16, a4 & 1);
    v11 = sub_1B9F24A34(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_1BA4A83B8();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    sub_1B9F46920(a1, v22);
  }

  else
  {
    sub_1BA0F7ECC(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_1B9FF1AE4(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1B9FDA8E4(a2);
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
      sub_1BA0F216C();
      goto LABEL_7;
    }

    sub_1BA0F44E0(v13, a3 & 1);
    v19 = sub_1B9FDA8E4(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1B9FDC70C(a2, v21);
      return sub_1BA0F7F38(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_1BA4A83B8();
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
  __swift_destroy_boxed_opaque_existential_1(v17);

  return sub_1B9F46920(a1, v17);
}

void sub_1B9FF1C30(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1B9FDA7CC(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1BA0F2328();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1BA0F47B0(v13, a3 & 1);
    v8 = sub_1B9FDA7CC(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      sub_1B9F0ADF8(0, &qword_1EDC6E920, 0x1E696C2E0);
      sub_1BA4A83B8();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v8);
    *(v19 + 8 * v8) = a1;
  }

  else
  {
    sub_1BA0F7E88(v8, a2, a1, v18);

    v21 = a2;
  }
}

_OWORD *sub_1B9FF1D74(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1B9F4E588(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1BA0F247C();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1BA0F4A0C(v13, a3 & 1);
    v8 = sub_1B9F4E588(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for Key(0);
      result = sub_1BA4A83B8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_1(v19);

    return sub_1B9F46920(a1, v19);
  }

  else
  {
    sub_1BA0F7FB4(v8, a2, a1, v18);

    return a2;
  }
}

void sub_1B9FF1EB4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B9F24A34(a2, a3);
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
      sub_1BA0F25F0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1BA0F4CD0(v16, a4 & 1);
    v11 = sub_1B9F24A34(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_1BA4A83B8();
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
    sub_1B9F23574(v11, a2, a3, a1, v21);
  }
}

void sub_1B9FF1FFC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1B9F24A34(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1BA0F2A3C();
      goto LABEL_7;
    }

    sub_1BA0F5238(v15, a4 & 1);
    v21 = sub_1B9F24A34(a2, a3);
    if ((v16 & 1) == (v22 & 1))
    {
      v12 = v21;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_1BA4A83B8();
    __break(1u);
    return;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0) - 8) + 72) * v12;

    sub_1B9FF35EC(a1, v20);
    return;
  }

LABEL_13:
  sub_1BA0F801C(v12, a2, a3, a1, v18);
}

id sub_1B9FF2160(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v9 = sub_1B9FDAB44(a2);
  v10 = v7[2];
  v11 = (v8 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_17;
  }

  v13 = v8;
  v14 = v7[3];
  if (v14 < v12 || (a3 & 1) == 0)
  {
    if (v14 >= v12 && (a3 & 1) == 0)
    {
      sub_1BA0F2C7C();
      goto LABEL_7;
    }

    sub_1BA0F5584(v12, a3 & 1);
    v23 = sub_1B9FDAB44(a2);
    if ((v13 & 1) == (v24 & 1))
    {
      v9 = v23;
      v15 = *v4;
      if (v13)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_1BA4A27B8();
    result = sub_1BA4A83B8();
    __break(1u);
    return result;
  }

LABEL_7:
  v15 = *v4;
  if (v13)
  {
LABEL_8:
    v16 = v15[7];
    v17 = sub_1BA4A1728();
    v18 = *(v17 - 8);
    v19 = *(v18 + 40);
    v20 = v17;
    v21 = v16 + *(v18 + 72) * v9;

    return v19(v21, a1, v20);
  }

LABEL_13:
  sub_1BA0F80B4(v9, a2, a1, v15);

  return a2;
}

uint64_t sub_1B9FF22D0(void *a1, char a2, double a3)
{
  v4 = v3;
  v7 = *v3;
  result = sub_1B9FDAB44(a1);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_14;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a2 & 1) == 0)
  {
    if (v15 >= v13 && (a2 & 1) == 0)
    {
      v16 = result;
      sub_1BA0F2ED8();
      result = v16;
      goto LABEL_8;
    }

    sub_1BA0F58C4(v13, a2 & 1);
    result = sub_1B9FDAB44(a1);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_14:
      sub_1BA4A27B8();
      result = sub_1BA4A83B8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * result) = a3;
  }

  else
  {
    sub_1BA0F8160(result, a1, v18, a3);

    return a1;
  }

  return result;
}

void sub_1B9FF23EC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1B9FDA928(a2);
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
      sub_1BA0F3188();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1BA0F5B20(v14, a3 & 1);
    v9 = sub_1B9FDA928(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      sub_1BA4A83B8();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v9);
    *(v20 + 8 * v9) = a1;
  }

  else
  {

    sub_1BA0F7E88(v9, a2, a1, v19);
  }
}

uint64_t sub_1B9FF250C(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  result = sub_1B9FDA96C(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_14;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = result;
      sub_1BA0F3430();
      result = v16;
      goto LABEL_8;
    }

    sub_1BA0F6038(v13, a3 & 1);
    result = sub_1B9FDA96C(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_14:
      sub_1B9F0ADF8(0, &qword_1EDC6B5C0, 0x1E69A4368);
      result = sub_1BA4A83B8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * result) = a1;
  }

  else
  {
    sub_1BA0F7E88(result, a2, a1, v18);

    return a2;
  }

  return result;
}

uint64_t sub_1B9FF263C(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1B9FDA81C(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      sub_1BA0F3580();
      result = v17;
      goto LABEL_8;
    }

    sub_1BA0F6290(v14, a3 & 1);
    result = sub_1B9FDA81C(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = sub_1BA4A83B8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + result) = a1 & 1;
  }

  else
  {

    return sub_1BA0F81A4(result, a2, a1 & 1, v19);
  }

  return result;
}

unint64_t *sub_1B9FF274C(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  v8 = 8 * (v6 >> 6);
  if (v5 <= 0xD)
  {
    goto LABEL_2;
  }

  v12 = 8 * (v6 >> 6);

  if (swift_stdlib_isStackAllocationSafe())
  {

    v8 = v12;
LABEL_2:
    MEMORY[0x1EEE9AC00](a1, v8);
    v10 = v16 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    result = sub_1B9FF28AC(v10, v7, v3);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v13 = swift_slowAlloc();
  v14 = v2;
  v15 = sub_1B9FF2998(v13, v7, v3);
  result = MEMORY[0x1BFAF43A0](v13, -1, -1);
  if (!v14)
  {
    return v15;
  }

  return result;
}

unint64_t *sub_1B9FF28AC(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 56) + v11) == 1)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_1BA202188(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_1BA202188(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1B9FF2998(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_1B9FF28AC(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t *sub_1B9FF2A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, int a6, char a7)
{
  v8 = v7;
  v35 = a6;
  v31[1] = a3;
  v31[2] = a4;
  v34 = *v8;
  sub_1B9FF37BC(0);
  v16 = *(v15 - 8);
  v36 = v15;
  v37 = v16;
  MEMORY[0x1EEE9AC00](v15, v17);
  v33 = v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a5;
  v32 = *a5;
  v8[3] = 0;
  v20 = MEMORY[0x1E69E7CC0];
  v8[5] = MEMORY[0x1E69E7CC0];
  v8[7] = sub_1B9FDB688(v20);
  LOBYTE(v40) = 0;
  sub_1B9FF39C0(0, &qword_1EBBE9C70, &type metadata for SummarySharingSelectionFlowContext.SharableModelBackgroundGenerationState, MEMORY[0x1E695BF98]);
  swift_allocObject();
  v8[8] = sub_1BA4A4DF8();
  *(v8 + 72) = 0;
  v44 = 0;
  v45 = 2;
  v40 = 0;
  v41 = 1;
  v42 = 0;
  v43 = 1;
  LOBYTE(v39) = v19;
  type metadata accessor for SummarySharingSetupAnalyticsEvent();
  swift_allocObject();
  v8[4] = SummarySharingSetupAnalyticsEvent.init(sharingEntriesAnalytics:userDemographicsAnalytics:location:version:usedDataSelectionWizard:pagesCompleted:totalPages:activeWatchProductType:countErrors:)(&v44, &v40, &v39, v21, 0, 0, 0, 1701736302, 0xE400000000000000, 0);
  *(v8 + 16) = a7;
  *(v8 + 48) = [objc_opt_self() authorizationStatusForEntityType_] == 0;
  v39 = a3;
  v40 = a1;
  v44 = a2;
  v38 = a4;
  sub_1B9FF3954(0, &qword_1EBBE9CC8, &qword_1EBBE9CD0, &type metadata for SummarySharingSetupAnalyticsBaseEvent.SharingEntriesAnalytics, MEMORY[0x1E69E6720]);
  v31[3] = v22;
  v23 = MEMORY[0x1E695BED0];
  sub_1B9FF39C0(0, &qword_1EBBE9CD8, &type metadata for UserDemographicsAnalytics, MEMORY[0x1E695BED0]);
  v31[0] = v24;
  sub_1B9FF3954(0, &qword_1EBBE9CE0, &qword_1EBBE9CE8, &type metadata for SummarySharingSelectionSuggestedCategory, MEMORY[0x1E69E62F8]);
  v25 = MEMORY[0x1E69E6158];
  sub_1B9FF39C0(0, &qword_1EBBE9CF0, MEMORY[0x1E69E6158], v23);
  sub_1B9FF3A28();
  sub_1B9FF3AAC(&qword_1EBBE9D00, &qword_1EBBE9CD8, &type metadata for UserDemographicsAnalytics);
  sub_1B9FF3B10();
  sub_1B9FF3AAC(&qword_1EBBE9D10, &qword_1EBBE9CF0, v25);

  v26 = v33;
  sub_1BA4A4BA8();
  v27 = swift_allocObject();
  *(v27 + 16) = v32;
  *(v27 + 24) = v8;
  *(v27 + 32) = v35;
  *(v27 + 40) = v34;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_1B9FF3B94;
  *(v28 + 24) = v27;
  sub_1B9FF3C70(&qword_1EBBE9D18, sub_1B9FF37BC, MEMORY[0x1E695BD98]);

  v29 = v36;
  sub_1BA4A4F78();

  (*(v37 + 8))(v26, v29);
  return v8;
}

uint64_t sub_1B9FF2EA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1B9F1C360(0, v1, 0);
    v2 = v15;
    v4 = a1 + 32;
    do
    {
      ++v4;
      v5 = sub_1BA285F8C();
      v16 = v2;
      v8 = *(v2 + 16);
      v7 = *(v2 + 24);
      if (v8 >= v7 >> 1)
      {
        v10 = v5;
        v11 = v6;
        sub_1B9F1C360((v7 > 1), v8 + 1, 1);
        v6 = v11;
        v5 = v10;
        v2 = v16;
      }

      *(v2 + 16) = v8 + 1;
      v9 = v2 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v6;
      --v1;
    }

    while (v1);
  }

  v12 = sub_1B9F12EB8(v2);

  v13 = *(v12 + 16);

  return v13;
}

double sub_1B9FF2FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a4 - 1) >= 0xB)
  {
  }

  return result;
}

double sub_1B9FF2FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 12)
  {
    return sub_1B9FF2FA4(a1, a2, a3, a4);
  }

  return result;
}

void sub_1B9FF2FD4(uint64_t a1)
{
  if (!qword_1EBBE9C68)
  {
    sub_1B9FF39C0(255, &qword_1EBBE9C70, &type metadata for SummarySharingSelectionFlowContext.SharableModelBackgroundGenerationState, MEMORY[0x1E695BF98]);
    sub_1B9FF305C();
    v1 = sub_1BA4A4B28();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBE9C68);
    }
  }
}

unint64_t sub_1B9FF305C()
{
  result = qword_1EBBE9C78;
  if (!qword_1EBBE9C78)
  {
    sub_1B9FF39C0(255, &qword_1EBBE9C70, &type metadata for SummarySharingSelectionFlowContext.SharableModelBackgroundGenerationState, MEMORY[0x1E695BF98]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBE9C78);
  }

  return result;
}

void sub_1B9FF30D8(uint64_t a1)
{
  if (!qword_1EBBE9C80)
  {
    sub_1B9FF2FD4(255);
    sub_1B9F0ADF8(255, &qword_1EDC6B5A0, 0x1E69E9610);
    sub_1B9FF3C70(&qword_1EBBE9C88, sub_1B9FF2FD4, MEMORY[0x1E695BCE8]);
    sub_1B9F3DC80();
    v1 = sub_1BA4A4C38();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBE9C80);
    }
  }
}

void sub_1B9FF31A4(uint64_t a1)
{
  if (!qword_1EBBE9C90)
  {
    sub_1B9FF30D8(255);
    sub_1B9FF3C70(&qword_1EBBE9C98, sub_1B9FF30D8, MEMORY[0x1E695BE48]);
    v1 = sub_1BA4A4B78();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBE9C90);
    }
  }
}

uint64_t sub_1B9FF3244(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1B9F3D3D0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1B9FF3534()
{
  result = qword_1EBBE9CA8;
  if (!qword_1EBBE9CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBE9CA8);
  }

  return result;
}

uint64_t sub_1B9FF3588(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B9FF35EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B9FF36AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1B9FF370C()
{
  if (!qword_1EBBE9CB8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBE9CB8);
    }
  }
}

void sub_1B9FF37BC(uint64_t a1)
{
  if (!qword_1EBBE9CC0)
  {
    sub_1B9FF3954(255, &qword_1EBBE9CC8, &qword_1EBBE9CD0, &type metadata for SummarySharingSetupAnalyticsBaseEvent.SharingEntriesAnalytics, MEMORY[0x1E69E6720]);
    v1 = MEMORY[0x1E695BED0];
    sub_1B9FF39C0(255, &qword_1EBBE9CD8, &type metadata for UserDemographicsAnalytics, MEMORY[0x1E695BED0]);
    sub_1B9FF3954(255, &qword_1EBBE9CE0, &qword_1EBBE9CE8, &type metadata for SummarySharingSelectionSuggestedCategory, MEMORY[0x1E69E62F8]);
    v2 = MEMORY[0x1E69E6158];
    sub_1B9FF39C0(255, &qword_1EBBE9CF0, MEMORY[0x1E69E6158], v1);
    sub_1B9FF3A28();
    sub_1B9FF3AAC(&qword_1EBBE9D00, &qword_1EBBE9CD8, &type metadata for UserDemographicsAnalytics);
    sub_1B9FF3B10();
    sub_1B9FF3AAC(&qword_1EBBE9D10, &qword_1EBBE9CF0, v2);
    v3 = sub_1BA4A4B98();
    if (!v4)
    {
      atomic_store(v3, &qword_1EBBE9CC0);
    }
  }
}

void sub_1B9FF3954(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  if (!*a2)
  {
    sub_1B9F232A8(255, a3, a4, a5);
    v6 = sub_1BA4A4D18();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1B9FF39C0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, void, void))
{
  if (!*a2)
  {
    v5 = a4(0, a3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1B9FF3A28()
{
  result = qword_1EBBE9CF8;
  if (!qword_1EBBE9CF8)
  {
    sub_1B9FF3954(255, &qword_1EBBE9CC8, &qword_1EBBE9CD0, &type metadata for SummarySharingSetupAnalyticsBaseEvent.SharingEntriesAnalytics, MEMORY[0x1E69E6720]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBE9CF8);
  }

  return result;
}

uint64_t sub_1B9FF3AAC(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1B9FF39C0(255, a2, a3, MEMORY[0x1E695BED0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B9FF3B10()
{
  result = qword_1EBBE9D08;
  if (!qword_1EBBE9D08)
  {
    sub_1B9FF3954(255, &qword_1EBBE9CE0, &qword_1EBBE9CE8, &type metadata for SummarySharingSelectionSuggestedCategory, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBE9D08);
  }

  return result;
}

uint64_t sub_1B9FF3BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a4 - 1) >= 0xB)
  {
  }

  return result;
}

uint64_t sub_1B9FF3C70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void DataTypeDescriptionAttribution.init(displayType:mode:)(void *a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  v6 = [a1 presentation];
  v7 = [v6 summaryAttribution];

  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = [v7 attribution];
  v9 = [v8 string];

  v10 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v12 = v11;

  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    if (a2 == 1)
    {
    }

    else
    {
      v14 = sub_1BA4A8338();

      if (v14 & 1) == 0 && ([v7 primaryProfileOnly])
      {
        goto LABEL_8;
      }
    }

    v15 = [v7 attribution];
    v16 = [v7 hasLink];

    goto LABEL_12;
  }

LABEL_8:

LABEL_9:
  v15 = 0;
  v16 = 0;
LABEL_12:
  *a3 = v15;
  *(a3 + 8) = v16;
}

uint64_t DataTypeDescriptionProviding.baseIdentifier.setter(uint64_t a1, uint64_t a2)
{
  nullsub_1();
}

uint64_t (*DataTypeDescriptionProviding.baseIdentifier.modify(void *a1))(uint64_t a1)
{
  *a1 = 0;
  a1[1] = 0;
  return sub_1B9FF3F48;
}

uint64_t DataTypeDescriptionDataSource.init(descriptionProvider:contentInsetsReference:)(void *a1, uint64_t a2)
{
  sub_1B9F3E26C(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v37 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9FF6688(0);
  v39 = *(v8 - 8);
  v40 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v38 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BA4A1798();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1BA4A7CC8())
  {
    v16 = sub_1B9FF611C(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CD0];
  }

  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI29DataTypeDescriptionDataSource_subscriptions) = v16;
  sub_1B9F0A534(a1, v2 + OBJC_IVAR____TtC18HealthExperienceUI29DataTypeDescriptionDataSource_descriptionProvider);
  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI29DataTypeDescriptionDataSource_contentInsetsReference) = a2;
  v42 = v2;
  sub_1B9FF4614(a1, v49);
  sub_1B9FF6758();
  inited = swift_initStackObject();
  v41 = xmmword_1BA4B5480;
  *(inited + 16) = xmmword_1BA4B5480;
  sub_1B9F1B378(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
  v18 = swift_allocObject();
  *(v18 + 16) = v41;
  *(v18 + 56) = &type metadata for DataTypeDetailDescriptionCell.Item;
  *(v18 + 64) = sub_1B9FF67A8();
  v19 = swift_allocObject();
  *(v18 + 32) = v19;
  v20 = v50[0];
  v19[3] = v49[2];
  v19[4] = v20;
  *(v19 + 73) = *(v50 + 9);
  v21 = v49[1];
  v19[1] = v49[0];
  v19[2] = v21;
  sub_1B9FF67FC(v49, v46);
  sub_1BA4A1788();
  v22 = sub_1BA4A1748();
  v24 = v23;
  (*(v12 + 8))(v15, v11);
  v25 = MEMORY[0x1E69E7CC0];
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = sub_1B9F1C5F0(v25);
  *(inited + 32) = 0;
  *(inited + 40) = 0;

  *(inited + 48) = v18;
  v26 = Array<A>.identifierToIndexDict()(v18);

  *(inited + 56) = v26;
  *(inited + 64) = v22;
  *(inited + 72) = v24;
  v27 = swift_allocObject();
  *(v27 + 16) = a2;
  v28 = sub_1B9F1DAFC(inited, 1, sub_1B9FF6858, v27);

  sub_1B9F0A534(a1, v45);
  sub_1B9F0D950(0, &qword_1EDC646E0, &protocol descriptor for DataTypeDescriptionProviding);
  sub_1B9F0D950(0, &qword_1EDC60D18, &protocol descriptor for UpdatingDataTypeDescriptionProviding);
  if (swift_dynamicCast())
  {
    sub_1B9F1134C(v43, v46);
    v42 = a1;
    v29 = v47;
    v30 = v48;
    __swift_project_boxed_opaque_existential_1(v46, v47);
    v45[0] = (*(v30 + 16))(v29, v30);
    sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
    v31 = sub_1BA4A7308();
    *&v43[0] = v31;
    v32 = sub_1BA4A72A8();
    v33 = v37;
    (*(*(v32 - 8) + 56))(v37, 1, 1, v32);
    sub_1BA4A4E28();
    sub_1B9F3E1E0(&qword_1EDC6B5B0, &qword_1EDC6B5A0, 0x1E69E9610, MEMORY[0x1E69E8028]);
    v34 = v38;
    sub_1BA4A50A8();
    sub_1B9F3E2C4(v33);

    swift_allocObject();
    swift_weakInit();
    sub_1B9F2A93C(&qword_1EDC5F530, sub_1B9FF6688, MEMORY[0x1E695BE98]);
    v35 = v40;
    sub_1BA4A5148();

    (*(v39 + 8))(v34, v35);
    swift_beginAccess();
    sub_1BA4A4D28();
    swift_endAccess();

    sub_1B9FF6860(v49);
    __swift_destroy_boxed_opaque_existential_1(v42);
    __swift_destroy_boxed_opaque_existential_1(v46);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_1B9FF6860(v49);
    memset(v43, 0, sizeof(v43));
    v44 = 0;
    sub_1B9FF68B4(v43);
  }

  return v28;
}

void sub_1B9FF4614(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = sub_1BA4A1798();
  v4 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  v10 = (*(v9 + 16))(v8, v9);
  v34 = v11;
  v35 = v10;
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v14 = (*(v13 + 24))(v12, v13);
  v16 = v15;
  v18 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  (*(v17 + 32))(&v37, v18, v17);
  v19 = v37;
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  (*(v21 + 32))(&v37, v20, v21);
  if (v37)
  {
    v22 = v38;

    v23 = v22 & 1;
  }

  else
  {
    v23 = 2;
  }

  v25 = a1[3];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v25);
  v26 = (*(*(v24 + 8) + 8))(v25);
  v27 = v34;
  *(a2 + 32) = v35;
  *(a2 + 40) = v27;
  *(a2 + 48) = v14;
  *(a2 + 56) = v16;
  *(a2 + 64) = v19;
  *(a2 + 72) = v23;
  *(a2 + 16) = v26;
  *(a2 + 24) = v28;
  v37 = 0x5F6D657449;
  v38 = 0xE500000000000000;
  v29 = v19;
  sub_1BA4A1788();
  sub_1B9F2A93C(&qword_1EDC6AE60, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v30 = v36;
  v31 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v31);

  (*(v4 + 8))(v7, v30);

  v32 = v38;
  *a2 = v37;
  *(a2 + 8) = v32;
}

id sub_1B9FF48B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EDC6D410 != -1)
  {
    swift_once();
  }

  v15[4] = xmmword_1EDC6D458;
  v15[5] = *&qword_1EDC6D468;
  v15[6] = xmmword_1EDC6D478;
  v15[7] = xmmword_1EDC6D488;
  v15[0] = xmmword_1EDC6D418;
  v15[1] = *&qword_1EDC6D428;
  v9 = xmmword_1EDC6D418;
  v10 = *&qword_1EDC6D428;
  v13 = xmmword_1EDC6D458;
  v15[2] = xmmword_1EDC6D438;
  v15[3] = xmmword_1EDC6D448;
  v11 = xmmword_1EDC6D438;
  v12 = xmmword_1EDC6D448;
  v7 = xmmword_1EDC6D478;
  v8 = xmmword_1EDC6D488;
  v14 = qword_1EDC6D468;
  v16 = xmmword_1EDC6D418;
  v17 = *&qword_1EDC6D428;
  v19 = xmmword_1EDC6D448;
  v20 = xmmword_1EDC6D458;
  v18 = xmmword_1EDC6D438;
  *&v21 = qword_1EDC6D468;
  *(&v21 + 1) = a3;
  v22 = xmmword_1EDC6D478;
  v23 = xmmword_1EDC6D488;
  sub_1B9F0ADF8(0, &qword_1EDC6B530, 0x1E6995580);
  v6[4] = v20;
  v6[5] = v21;
  v6[6] = v22;
  v6[7] = v23;
  v6[0] = v16;
  v6[1] = v17;
  v6[2] = v18;
  v6[3] = v19;
  sub_1B9F1D9A4(v15, v24);
  sub_1B9F1D9A4(&v16, v24);
  v4 = sub_1B9F293A8(v6);
  v24[2] = v11;
  v24[3] = v12;
  v24[4] = v13;
  v24[0] = v9;
  v24[1] = v10;
  v25 = v14;
  v26 = a3;
  v27 = v7;
  v28 = v8;
  sub_1B9F1DA58(v24);
  return v4;
}

uint64_t sub_1B9FF4A1C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B9FF4CFC();
  }

  return result;
}

uint64_t sub_1B9FF4A74@<X0>(void *a1@<X8>)
{
  v3 = sub_1BA4A4428();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  sub_1B9F1B378(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BA4B5480;
  v8 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI29DataTypeDescriptionDataSource_descriptionProvider + 24);
  v9 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI29DataTypeDescriptionDataSource_descriptionProvider + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC18HealthExperienceUI29DataTypeDescriptionDataSource_descriptionProvider), v8);
  v10 = (*(v9 + 16))(v8, v9);
  v12 = v11;
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = sub_1B9F1BE20();
  *(v7 + 32) = v10;
  *(v7 + 40) = v12;
  v13 = sub_1BA4A6768();
  v15 = v14;

  _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
  v16 = type metadata accessor for HeaderItem(0);
  swift_allocObject();
  HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(v13, v15, 0, 0, 0, 0, v6, 0, 0);
  v18 = v17;
  a1[3] = v16;
  result = sub_1B9F2A93C(&qword_1EDC69800, type metadata accessor for HeaderItem, &protocol conformance descriptor for HeaderItem);
  a1[4] = result;
  *a1 = v18;
  return result;
}

uint64_t sub_1B9FF4CFC()
{
  v1 = v0;
  v2 = sub_1BA4A1798();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  v7 = sub_1BA4A64F8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
  *v11 = sub_1BA4A7308();
  (*(v8 + 104))(v11, *MEMORY[0x1E69E8020], v7);
  v12 = sub_1BA4A6528();
  result = (*(v8 + 8))(v11, v7);
  if (v12)
  {
    sub_1B9FF4614((v1 + OBJC_IVAR____TtC18HealthExperienceUI29DataTypeDescriptionDataSource_descriptionProvider), v26);
    sub_1B9FF6758();
    inited = swift_initStackObject();
    v24 = xmmword_1BA4B5480;
    *(inited + 16) = xmmword_1BA4B5480;
    sub_1B9F1B378(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
    v15 = swift_allocObject();
    *(v15 + 16) = v24;
    *(v15 + 56) = &type metadata for DataTypeDetailDescriptionCell.Item;
    *(v15 + 64) = sub_1B9FF67A8();
    v16 = swift_allocObject();
    *(v15 + 32) = v16;
    v17 = v27[0];
    v16[3] = v26[2];
    v16[4] = v17;
    *(v16 + 73) = *(v27 + 9);
    v18 = v26[1];
    v16[1] = v26[0];
    v16[2] = v18;
    sub_1B9FF67FC(v26, v25);
    sub_1BA4A1788();
    v19 = sub_1BA4A1748();
    v21 = v20;
    (*(v3 + 8))(v6, v2);
    v22 = MEMORY[0x1E69E7CC0];
    *(inited + 48) = MEMORY[0x1E69E7CC0];
    *(inited + 56) = sub_1B9F1C5F0(v22);
    *(inited + 40) = 0;
    *(inited + 32) = 0;

    *(inited + 48) = v15;
    v23 = Array<A>.identifierToIndexDict()(v15);

    *(inited + 56) = v23;
    *(inited + 64) = v19;
    *(inited + 72) = v21;
    sub_1BA0E7F10(inited, 1);
    sub_1B9FF6860(v26);
    swift_setDeallocating();
    return sub_1B9FF7224(inited + 32);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B9FF5330()
{
  v1 = v0;
  sub_1B9FF7974(0, &qword_1EBBE9D70, MEMORY[0x1E69E6158], MEMORY[0x1E69E6178], type metadata accessor for HealthDetailsDemographicsCell);
  v3 = v2;
  v4 = swift_conformsToProtocol2();
  if (v4)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_1B9FF71B0();
    sub_1BA4A6808();
    v7 = sub_1BA4A6758();

    [v1 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v7];
  }

  else
  {
    v8 = v4;
    v9 = (*(v4 + 24))(v3, v4);
    (*(*(v8 + 16) + 8))(v3);
    v10 = sub_1BA4A6758();

    [v1 registerNib:v9 forCellWithReuseIdentifier:v10];
  }
}

void sub_1B9FF54A8()
{
  v1 = v0;
  sub_1B9FF7974(0, &qword_1EBBE9D60, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], type metadata accessor for HealthDetailsDemographicsCellWithPicker);
  v3 = v2;
  v4 = swift_conformsToProtocol2();
  if (v4)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_1B9FF713C();
    sub_1BA4A6808();
    v7 = sub_1BA4A6758();

    [v1 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v7];
  }

  else
  {
    v8 = v4;
    v9 = (*(v4 + 24))(v3, v4);
    (*(*(v8 + 16) + 8))(v3);
    v10 = sub_1BA4A6758();

    [v1 registerNib:v9 forCellWithReuseIdentifier:v10];
  }
}

uint64_t sub_1B9FF5ED4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18HealthExperienceUI29DataTypeDescriptionDataSource_descriptionProvider));
}

uint64_t DataTypeDescriptionDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18HealthExperienceUI29DataTypeDescriptionDataSource_descriptionProvider));

  return v0;
}

uint64_t DataTypeDescriptionDataSource.__deallocating_deinit()
{
  DataTypeDescriptionDataSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1B9FF6070(uint64_t a1, uint64_t a2)
{
  nullsub_1();
}

void (*sub_1B9FF60B4(void *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = DataTypeDescriptionProviding.baseIdentifier.modify(v2);
  return sub_1B9FCDD98;
}

unint64_t sub_1B9FF611C(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_1BA4A7CC8();
    if (result)
    {
LABEL_3:
      sub_1B9FF7A70(0);
      result = sub_1BA4A7D98();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_1BA4A7CC8();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v21 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  v20 = v1;
  while (v21)
  {
    result = MEMORY[0x1BFAF2860](v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    sub_1BA4A4D58();
    sub_1B9F2A93C(&qword_1EBBE9E88, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);
    result = sub_1BA4A6698();
    v10 = -1 << *(v3 + 32);
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *(v7 + 8 * (v11 >> 6));
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      sub_1B9F2A93C(&qword_1EBBE9E90, MEMORY[0x1E695BF10], MEMORY[0x1E695BF20]);
      do
      {
        result = sub_1BA4A6728();
        if (result)
        {

          v1 = v20;
          goto LABEL_11;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v7 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v1 = v20;
    }

    *(v7 + 8 * v12) = v14 | v13;
    *(*(v3 + 48) + 8 * v11) = v8;
    v16 = *(v3 + 16);
    v9 = __OFADD__(v16, 1);
    v17 = v16 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v17;
LABEL_11:
    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v18 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

void sub_1B9FF63A4(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1BA4A7CC8())
    {
LABEL_3:
      sub_1B9FF79C8(0);
      v3 = sub_1BA4A7D98();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_1BA4A7CC8();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = MEMORY[0x1BFAF2860](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_1BA4A7788();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_1B9F0ADF8(0, &qword_1EBBE9E48, 0x1E696C0B8);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_1BA4A7798();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v35 = v1 + 32;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v35 + 8 * v22);
      v24 = sub_1BA4A7788();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_1B9F0ADF8(0, &qword_1EBBE9E48, 0x1E696C0B8);
        do
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_1BA4A7798();

          if (v32)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
        }

        while (((1 << v26) & v28) != 0);
        v5 = v38;
      }

      *(v6 + 8 * v27) = v29 | v28;
      *(*(v3 + 48) + 8 * v26) = v23;
      v33 = *(v3 + 16);
      v9 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v34;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_1B9FF6688(uint64_t a1)
{
  if (!qword_1EDC5F528)
  {
    sub_1BA4A4E28();
    sub_1B9F0ADF8(255, &qword_1EDC6B5A0, 0x1E69E9610);
    sub_1B9F3E1E0(&qword_1EDC6B5B0, &qword_1EDC6B5A0, 0x1E69E9610, MEMORY[0x1E69E8028]);
    v1 = sub_1BA4A4CC8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5F528);
    }
  }
}

void sub_1B9FF6758()
{
  if (!qword_1EDC5DC90)
  {
    v0 = sub_1BA4A82E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5DC90);
    }
  }
}

unint64_t sub_1B9FF67A8()
{
  result = qword_1EDC64018;
  if (!qword_1EDC64018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC64018);
  }

  return result;
}

uint64_t sub_1B9FF68B4(uint64_t a1)
{
  sub_1B9F1B378(0, &qword_1EDC60D10, &qword_1EDC60D18, &protocol descriptor for UpdatingDataTypeDescriptionProviding, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1B9FF6958(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_1B9FF69A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for DataTypeDescriptionDataSource(uint64_t a1)
{
  result = qword_1EDC6E0E8;
  if (!qword_1EDC6E0E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B9FF6B78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B9FF7974(0, &qword_1EDC5E058, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], MEMORY[0x1E69E6A10]);
    v3 = sub_1BA4A7D98();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_1BA4A8488();

      sub_1BA4A68C8();
      result = sub_1BA4A84D8();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_1BA4A8338();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1B9FF6D00(uint64_t a1)
{
  v2 = sub_1BA4A1898();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v39 = &v32 - v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    sub_1B9FF7014(0);
    v11 = sub_1BA4A7D98();
    v12 = 0;
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v37 = v14;
    v38 = v11 + 56;
    v15 = *(v13 + 64);
    v34 = v10;
    v35 = a1 + ((v15 + 32) & ~v15);
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    v33 = (v13 + 16);
    while (1)
    {
      v36 = v12;
      v37(v39, v35 + v16 * v12, v2);
      sub_1B9F2A93C(&qword_1EBBE9D38, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AD8]);
      v18 = sub_1BA4A6698();
      v19 = ~(-1 << *(v11 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v13;
          v37(v6, *(v11 + 48) + v20 * v16, v2);
          sub_1B9F2A93C(&qword_1EBBE9D40, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AE0]);
          v25 = sub_1BA4A6728();
          v26 = *v17;
          (*v17)(v6, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v13 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v13 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v11 + 48) + v20 * v16, v27, v2);
        v29 = *(v11 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v11 + 16) = v31;
      }

      v12 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v11;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

void sub_1B9FF7014(uint64_t a1)
{
  if (!qword_1EBBE9D30)
  {
    sub_1BA4A1898();
    sub_1B9F2A93C(&qword_1EBBE9D38, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AD8]);
    v1 = sub_1BA4A7DA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBE9D30);
    }
  }
}

void sub_1B9FF70A8(uint64_t a1)
{
  if (!qword_1EBBE9D48)
  {
    v2 = sub_1BA4A1148();
    v3 = sub_1B9F2A93C(&qword_1EBBE9D50, MEMORY[0x1E6968278], &protocol conformance descriptor for DateComponents);
    v5 = type metadata accessor for HealthDetailsDemographicsCell(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EBBE9D48);
    }
  }
}

unint64_t sub_1B9FF713C()
{
  result = qword_1EBBE9D68;
  if (!qword_1EBBE9D68)
  {
    sub_1B9FF7974(255, &qword_1EBBE9D60, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], type metadata accessor for HealthDetailsDemographicsCellWithPicker);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBE9D68);
  }

  return result;
}

unint64_t sub_1B9FF71B0()
{
  result = qword_1EBBE9D78;
  if (!qword_1EBBE9D78)
  {
    sub_1B9FF7974(255, &qword_1EBBE9D70, MEMORY[0x1E69E6158], MEMORY[0x1E69E6178], type metadata accessor for HealthDetailsDemographicsCell);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBE9D78);
  }

  return result;
}

void sub_1B9FF7278(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1BA4A7CC8())
    {
LABEL_3:
      sub_1B9FF7538(0);
      v3 = sub_1BA4A7D98();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_1BA4A7CC8();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v37 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v35 = v1;
    while (1)
    {
      v8 = MEMORY[0x1BFAF2860](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_1BA4A7788();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_1BA4A27B8();
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_1BA4A7798();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v35;
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v35;
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = *(v1 + 32 + 8 * v22);
      v24 = sub_1BA4A7788();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_1BA4A27B8();
        while (1)
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_1BA4A7798();

          if (v32)
          {
            break;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
          if (((1 << v26) & v28) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v27) = v29 | v28;
        *(*(v3 + 48) + 8 * v26) = v23;
        v33 = *(v3 + 16);
        v9 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v34;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void sub_1B9FF7538(uint64_t a1)
{
  if (!qword_1EDC5E060)
  {
    sub_1BA4A27B8();
    sub_1B9F2A93C(&qword_1EDC6AD90, MEMORY[0x1E69A3DD0], MEMORY[0x1E69E81B8]);
    v1 = sub_1BA4A7DA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5E060);
    }
  }
}

uint64_t sub_1B9FF75CC(uint64_t a1)
{
  v2 = sub_1BA4A2A88();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v39 = &v32 - v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    sub_1B9FF78E0(0);
    v11 = sub_1BA4A7D98();
    v12 = 0;
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v37 = v14;
    v38 = v11 + 56;
    v15 = *(v13 + 64);
    v34 = v10;
    v35 = a1 + ((v15 + 32) & ~v15);
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    v33 = (v13 + 16);
    while (1)
    {
      v36 = v12;
      v37(v39, v35 + v16 * v12, v2);
      sub_1B9F2A93C(&qword_1EBBE9D88, MEMORY[0x1E69A31E0], MEMORY[0x1E69A31F0]);
      v18 = sub_1BA4A6698();
      v19 = ~(-1 << *(v11 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v13;
          v37(v6, *(v11 + 48) + v20 * v16, v2);
          sub_1B9F2A93C(&qword_1EBBE9D90, MEMORY[0x1E69A31E0], MEMORY[0x1E69A31F8]);
          v25 = sub_1BA4A6728();
          v26 = *v17;
          (*v17)(v6, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v13 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v13 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v11 + 48) + v20 * v16, v27, v2);
        v29 = *(v11 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v11 + 16) = v31;
      }

      v12 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v11;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

void sub_1B9FF78E0(uint64_t a1)
{
  if (!qword_1EBBE9D80)
  {
    sub_1BA4A2A88();
    sub_1B9F2A93C(&qword_1EBBE9D88, MEMORY[0x1E69A31E0], MEMORY[0x1E69A31F0]);
    v1 = sub_1BA4A7DA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBE9D80);
    }
  }
}

void sub_1B9FF7974(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1B9FF79C8(uint64_t a1)
{
  if (!qword_1EBBE9E40)
  {
    sub_1B9F0ADF8(255, &qword_1EBBE9E48, 0x1E696C0B8);
    sub_1B9F3E1E0(&qword_1EBBE9E50, &qword_1EBBE9E48, 0x1E696C0B8, MEMORY[0x1E69E81B8]);
    v1 = sub_1BA4A7DA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBE9E40);
    }
  }
}

void sub_1B9FF7A70(uint64_t a1)
{
  if (!qword_1EBBE9E80)
  {
    sub_1BA4A4D58();
    sub_1B9F2A93C(&qword_1EBBE9E88, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);
    v1 = sub_1BA4A7DA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBE9E80);
    }
  }
}

unint64_t LayoutConfigurationTypeProviding.layout(for:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 2);
  v5 = *a1;
  v6 = v3;
  return LayoutConfigurationTypeProviding.layoutConfigurationDefaultLayout(for:)(&v5, a2, a3);
}

unint64_t LayoutConfigurationTypeProviding.layoutConfigurationDefaultLayout(for:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ListLayoutConfiguration(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v45[0] = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9FF8718(0, qword_1EDC66C30, type metadata accessor for LayoutConfigurationType);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v45 - v11;
  v13 = type metadata accessor for LayoutConfigurationType(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = (v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v22 = v45 - v21;
  v23 = *a1;
  v24 = a1[1];
  v46 = a1[2];
  v47 = v23;
  v25 = v24;
  v26 = *(a3 + 16);
  v58 = a2;
  v26(v20);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1B9FF86BC(v12, qword_1EDC66C30, type metadata accessor for LayoutConfigurationType);
    *&v48 = 0;
    *(&v48 + 1) = 0xE000000000000000;
    sub_1BA4A7DF8();

    v56 = 91;
    v57 = 0xE100000000000000;
    v27 = sub_1BA4A85D8();
    MEMORY[0x1BFAF1350](v27);

    MEMORY[0x1BFAF1350](0xD000000000000024, 0x80000001BA4E2970);
    *&v48 = v47;
    *(&v48 + 1) = v25;
    *&v49 = v46;
    swift_unknownObjectRetain();
    v28 = sub_1BA4A6808();
    MEMORY[0x1BFAF1350](v28);

    v29 = v56;
    v30 = v57;
    sub_1B9FF806C();
    swift_allocError();
    *v31 = v29;
    *(v31 + 8) = v30;
    *(v31 + 16) = 1;
    swift_willThrow();
  }

  else
  {
    sub_1B9FF81FC(v12, v22, type metadata accessor for LayoutConfigurationType);
    sub_1B9FF80C0(v22, v17);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v33 = v17[5];
        v52 = v17[4];
        v53 = v33;
        v34 = v17[7];
        v54 = v17[6];
        v55 = v34;
        v35 = v17[1];
        v48 = *v17;
        v49 = v35;
        v36 = v17[3];
        v50 = v17[2];
        v51 = v36;
        sub_1B9F0ADF8(0, &qword_1EDC6B530, 0x1E6995580);
        v30 = sub_1B9F293A8(&v48);
        v37 = type metadata accessor for LayoutConfigurationType;
        v38 = v22;
      }

      else
      {
        sub_1B9FF8124(0);
        v40 = *(v17 + *(v39 + 48));
        v41 = v45[0];
        sub_1B9FF81FC(v17, v45[0], type metadata accessor for ListLayoutConfiguration);
        v42 = swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_1B9F0E310(v41[20], v41[21]);
        v41[20] = sub_1B9FF83C0;
        v41[21] = v42;
        v43 = swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_1B9F0E310(v41[22], v41[23]);
        v41[22] = sub_1B9FF8524;
        v41[23] = v43;
        v30 = ListLayoutConfiguration.layout(for:)(v25);

        sub_1B9FF852C(v22, type metadata accessor for LayoutConfigurationType);
        v38 = v41;
        v37 = type metadata accessor for ListLayoutConfiguration;
      }

      sub_1B9FF852C(v38, v37);
    }

    else
    {
      sub_1B9FF852C(v22, type metadata accessor for LayoutConfigurationType);
      return *v17;
    }
  }

  return v30;
}

uint64_t type metadata accessor for LayoutConfigurationType(uint64_t a1)
{
  result = qword_1EDC66C60;
  if (!qword_1EDC66C60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B9FF806C()
{
  result = qword_1EBBEAB00;
  if (!qword_1EBBEAB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEAB00);
  }

  return result;
}

uint64_t sub_1B9FF80C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LayoutConfigurationType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1B9FF8124(uint64_t a1)
{
  if (!qword_1EDC66AD8[0])
  {
    type metadata accessor for ListLayoutConfiguration(255);
    sub_1B9FF8194(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_1EDC66AD8);
    }
  }
}

void sub_1B9FF8194(uint64_t a1)
{
  if (!qword_1EDC5E4E0)
  {
    sub_1B9F0ADF8(255, &qword_1EDC5E4E8, 0x1E69DC7F0);
    v1 = sub_1BA4A7AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5E4E0);
    }
  }
}

uint64_t sub_1B9FF81FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B9FF8264(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v3 = Strong, v4 = sub_1BA4A18F8(), v5 = [v3 cellForItemAtIndexPath_], v3, v4, v5) && (v13[0] = v5, sub_1B9F0ADF8(0, &qword_1EDC6B550, 0x1E69DC7F8), sub_1B9FF876C(), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v11 + 1))
    {
      sub_1B9F1134C(&v10, v13);
      v6 = v14;
      v7 = v15;
      __swift_project_boxed_opaque_existential_1(v13, v14);
      v8 = (*(v7 + 8))(v6, v7);
      __swift_destroy_boxed_opaque_existential_1(v13);
      return v8;
    }
  }

  else
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
  }

  sub_1B9FF86BC(&v10, &qword_1EBBE98F8, sub_1B9FF876C);
  return 0;
}

uint64_t sub_1B9FF83C8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v3 = Strong, v4 = sub_1BA4A18F8(), v5 = [v3 cellForItemAtIndexPath_], v3, v4, v5) && (v13[0] = v5, sub_1B9F0ADF8(0, &qword_1EDC6B550, 0x1E69DC7F8), sub_1B9FF876C(), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v11 + 1))
    {
      sub_1B9F1134C(&v10, v13);
      v6 = v14;
      v7 = v15;
      __swift_project_boxed_opaque_existential_1(v13, v14);
      v8 = (*(v7 + 16))(v6, v7);
      __swift_destroy_boxed_opaque_existential_1(v13);
      return v8;
    }
  }

  else
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
  }

  sub_1B9FF86BC(&v10, &qword_1EBBE98F8, sub_1B9FF876C);
  return 0;
}

uint64_t sub_1B9FF852C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1B9FF861C(uint64_t a1)
{
  sub_1B9F0ADF8(319, &qword_1EDC6B530, 0x1E6995580);
  if (v1 <= 0x3F)
  {
    sub_1B9FF8124(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_1B9FF86BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1B9FF8718(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1B9FF8718(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1B9FF876C()
{
  result = qword_1EBBE9900;
  if (!qword_1EBBE9900)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EBBE9900);
  }

  return result;
}

uint64_t OnboardingPromotionFeatureStatusFeedItemProvider.makeUpgradeConfiguration()@<X0>(uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 56);

  return v5(a3, 1, 1, AssociatedTypeWitness);
}

uint64_t OnboardingPromotionFeatureStatusFeedItemProvider.makeConfiguration(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v87 = a3;
  v88 = a4;
  v89 = a2;
  v5 = sub_1BA4A3EA8();
  v80 = *(v5 - 8);
  v81 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v82 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A38B8();
  v78 = *(v8 - 8);
  v79 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v77 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BA4A3908();
  v84 = *(v11 - 8);
  v85 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v83 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BA4A38E8();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1BA4A3938();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v76 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v75 - v25;
  v29 = MEMORY[0x1EEE9AC00](v27, v28);
  v30 = *(v20 + 16);
  v31 = a1;
  v33 = &v75 - v32;
  v30(v29);
  v34 = (*(v20 + 88))(v33, v19);
  if (v34 == *MEMORY[0x1E69A3888])
  {
    (*(v20 + 96))(v33, v19);
    v35 = v15;
    (*(v15 + 32))(v18, v33, v14);
    v36 = v87;
    v37 = v89;
    v38 = (*(v87 + 24))(v89, v87);
    v39 = v14;
    if (v38)
    {
      v40 = v38;
      v41 = v83;
      sub_1BA4A38A8();
      v42 = sub_1BA4A3918();
      (*(v84 + 8))(v41, v85);
      LOBYTE(v41) = [v42 areAllRequirementsSatisfied];

      if (v41)
      {
        (*(v36 + 40))(v37, v36);

        return (*(v35 + 8))(v18, v39);
      }

      (*(v35 + 8))(v18, v39);
    }

    else
    {
      (*(v15 + 8))(v18, v14);
    }

    swift_getAssociatedTypeWitness();
LABEL_14:
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    return (*(*(AssociatedTypeWitness - 8) + 56))(v88, 1, 1, AssociatedTypeWitness);
  }

  v75 = v33;
  if (v34 == *MEMORY[0x1E69A3880])
  {
    v44 = v75;
    (*(v20 + 96))(v75, v19);
    v46 = v77;
    v45 = v78;
    v47 = v79;
    (*(v78 + 32))(v77, v44, v79);
    v48 = v83;
    sub_1BA4A38A8();
    v49 = v87;
    v50 = v89;
    v51 = (*(v87 + 16))(v89, v87);
    v52 = sub_1BA4A3918();

    (*(v84 + 8))(v48, v85);
    LODWORD(v48) = [v52 areAllRequirementsSatisfied];

    if (v48)
    {
      v53 = v88;
      (*(v49 + 32))(v50, v49);
      (*(v45 + 8))(v46, v47);
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      v54 = swift_getAssociatedTypeWitness();
      return (*(*(v54 - 8) + 56))(v53, 0, 1, v54);
    }

    (*(v45 + 8))(v46, v47);
    swift_getAssociatedTypeWitness();
    goto LABEL_14;
  }

  v55 = v82;
  _s18HealthExperienceUI0A44ChecklistStagedFeatureStatusFeedItemProviderPAAE6logger2os6LoggerVvg_0();
  v56 = v26;
  v57 = v19;
  (v30)(v26, v31, v19);
  v58 = sub_1BA4A3E88();
  v59 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    LODWORD(v85) = v59;
    v61 = v60;
    v86 = swift_slowAlloc();
    v90 = v86;
    *v61 = 136446466;
    v62 = sub_1BA4A85D8();
    v64 = sub_1B9F0B82C(v62, v63, &v90);

    *(v61 + 4) = v64;
    *(v61 + 12) = 2080;
    (v30)(v76, v56, v19);
    v65 = sub_1BA4A6808();
    v67 = v66;
    v68 = *(v20 + 8);
    v68(v56, v19);
    v69 = sub_1B9F0B82C(v65, v67, &v90);
    v57 = v19;

    *(v61 + 14) = v69;
    _os_log_impl(&dword_1B9F07000, v58, v85, "[%{public}s] Unknown feature status received: %s", v61, 0x16u);
    v70 = v86;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v70, -1, -1);
    MEMORY[0x1BFAF43A0](v61, -1, -1);

    (*(v80 + 8))(v82, v81);
  }

  else
  {

    v72 = *(v20 + 8);
    v72(v56, v19);
    v73 = v55;
    v68 = v72;
    (*(v80 + 8))(v73, v81);
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v74 = swift_getAssociatedTypeWitness();
  (*(*(v74 - 8) + 56))(v88, 1, 1, v74);
  return (v68)(v75, v57);
}

uint64_t PDFStaticFileNameProvider.fileName()()
{
  v2 = *v0;
  v3 = v0[1];
  v5 = *(v1 + 8);

  return v5(v2, v3);
}

uint64_t sub_1B9FF94CC()
{
  v2 = *v0;
  v3 = v0[1];
  v5 = *(v1 + 8);

  return v5(v2, v3);
}

char *PDFFileNameProvider.__allocating_init(characteristicsProvider:localizedFeatureName:options:calendarOverride:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_1B9F1134C(a1, (v10 + 112));
  *(v10 + 19) = a2;
  *(v10 + 20) = a3;
  *(v10 + 21) = a4;
  v11 = OBJC_IVAR____TtC18HealthExperienceUI19PDFFileNameProvider_calendarOverride;
  v12 = sub_1BA4A18A8();
  (*(*(v12 - 8) + 32))(&v10[v11], a5, v12);
  return v10;
}

char *PDFFileNameProvider.init(characteristicsProvider:localizedFeatureName:options:calendarOverride:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_defaultActor_initialize();
  sub_1B9F1134C(a1, (v5 + 112));
  *(v5 + 19) = a2;
  *(v5 + 20) = a3;
  *(v5 + 21) = a4;
  v11 = OBJC_IVAR____TtC18HealthExperienceUI19PDFFileNameProvider_calendarOverride;
  v12 = sub_1BA4A18A8();
  (*(*(v12 - 8) + 32))(&v5[v11], a5, v12);
  return v5;
}

uint64_t sub_1B9FF96A4()
{
  *(v1 + 16) = v0;
  type metadata accessor for PDFCharacteristicsProvider.Content(0);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B9FF9734, v0, 0);
}

uint64_t sub_1B9FF9734()
{
  v1 = v0[2];
  v2 = v1[17];
  v3 = v1[18];
  __swift_project_boxed_opaque_existential_1(v1 + 14, v2);
  v7 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1B9FF9864;
  v5 = v0[3];

  return v7(v5, v2, v3);
}

uint64_t sub_1B9FF9864()
{
  v2 = *v1;
  *(*v1 + 40) = v0;

  v3 = *(v2 + 16);
  if (v0)
  {
    v4 = sub_1B9FF9A34;
  }

  else
  {
    v4 = sub_1B9FF9990;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B9FF9990()
{
  v1 = v0[3];
  v2 = _s18HealthExperienceUI20PDFFileNameGeneratorV04fileE015characteristics016localizedFeatureE07options16calendarOverrideSSAA26PDFCharacteristicsProviderC7ContentV_SSShyAC7OptionsOG10Foundation8CalendarVtFZ_0(v1, *(v0[2] + 152), *(v0[2] + 160), *(v0[2] + 168), v0[2] + OBJC_IVAR____TtC18HealthExperienceUI19PDFFileNameProvider_calendarOverride);
  v4 = v3;
  sub_1B9FF9FB0(v1);

  v5 = v0[1];

  return v5(v2, v4);
}

uint64_t sub_1B9FF9A34()
{

  v1 = *(v0 + 8);

  return v1();
}

char *PDFFileNameProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));

  v1 = OBJC_IVAR____TtC18HealthExperienceUI19PDFFileNameProvider_calendarOverride;
  v2 = sub_1BA4A18A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t PDFFileNameProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));

  v1 = OBJC_IVAR____TtC18HealthExperienceUI19PDFFileNameProvider_calendarOverride;
  v2 = sub_1BA4A18A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1B9FF9BC0()
{
  type metadata accessor for PDFCharacteristicsProvider.Content(0);
  v2 = swift_task_alloc();
  v3 = *v0;
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1B9FF9C4C, v3, 0);
}

uint64_t sub_1B9FF9C4C()
{
  v1 = v0[3];
  v2 = v1[17];
  v3 = v1[18];
  __swift_project_boxed_opaque_existential_1(v1 + 14, v2);
  v7 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1B9FF9D7C;
  v5 = v0[2];

  return v7(v5, v2, v3);
}

uint64_t sub_1B9FF9D7C()
{
  v2 = *v1;
  *(*v1 + 40) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_1B9FF9F4C;
  }

  else
  {
    v4 = sub_1B9FF9EA8;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B9FF9EA8()
{
  v1 = v0[2];
  v2 = _s18HealthExperienceUI20PDFFileNameGeneratorV04fileE015characteristics016localizedFeatureE07options16calendarOverrideSSAA26PDFCharacteristicsProviderC7ContentV_SSShyAC7OptionsOG10Foundation8CalendarVtFZ_0(v1, *(v0[3] + 152), *(v0[3] + 160), *(v0[3] + 168), v0[3] + OBJC_IVAR____TtC18HealthExperienceUI19PDFFileNameProvider_calendarOverride);
  v4 = v3;
  sub_1B9FF9FB0(v1);

  v5 = v0[1];

  return v5(v2, v4);
}

uint64_t sub_1B9FF9F4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B9FF9FB0(uint64_t a1)
{
  v2 = type metadata accessor for PDFCharacteristicsProvider.Content(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of PDFFileNameProviding.fileName()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B9FFA510;

  return v7(a1, a2);
}

uint64_t sub_1B9FFA124(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1B9FFA16C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for PDFFileNameProvider(uint64_t a1)
{
  result = qword_1EBBE9EA0;
  if (!qword_1EBBE9EA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B9FFA20C(uint64_t a1)
{
  result = sub_1BA4A18A8();
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

uint64_t dispatch thunk of PDFFileNameProvider.fileName()()
{
  v4 = (*(*v0 + 128) + **(*v0 + 128));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1B9FFA404;

  return v4();
}

uint64_t sub_1B9FFA404(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

void *ProfileSharingBaseViewController.__allocating_init(title:detailText:icon:contentLayout:isLastPage:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, char a7)
{
  v8 = v7;
  v13 = objc_allocWithZone(v8);
  *&v13[OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_nextButton] = 0;
  *&v13[OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_doneButton] = 0;
  *&v13[OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_cancelButton] = 0;
  v14 = sub_1BA4A6758();

  if (a4)
  {
    v15 = sub_1BA4A6758();
  }

  else
  {
    v15 = 0;
  }

  v21.receiver = v13;
  v21.super_class = type metadata accessor for OnboardingViewControllerWithNextButton();
  v16 = objc_msgSendSuper2(&v21, sel_initWithTitle_detailText_icon_contentLayout_, v14, v15, a5, a6);

  v17 = v16;
  v18 = [v17 headerView];
  LODWORD(v19) = 1036831949;
  [v18 setTitleHyphenationFactor_];

  (*((*MEMORY[0x1E69E7D40] & *v17) + 0xB8))(a7 & 1);
  return v17;
}

void *ProfileSharingBaseViewController.init(title:detailText:icon:contentLayout:isLastPage:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, char a7)
{
  *&v7[OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_nextButton] = 0;
  *&v7[OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_doneButton] = 0;
  *&v7[OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_cancelButton] = 0;
  v12 = sub_1BA4A6758();

  if (a4)
  {
    v13 = sub_1BA4A6758();
  }

  else
  {
    v13 = 0;
  }

  v19.receiver = v7;
  v19.super_class = type metadata accessor for OnboardingViewControllerWithNextButton();
  v14 = objc_msgSendSuper2(&v19, sel_initWithTitle_detailText_icon_contentLayout_, v12, v13, a5, a6);

  v15 = v14;
  v16 = [v15 headerView];
  LODWORD(v17) = 1036831949;
  [v16 setTitleHyphenationFactor_];

  (*((*MEMORY[0x1E69E7D40] & *v15) + 0xB8))(a7 & 1);
  return v15;
}

id ProfileSharingBaseViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProfileSharingBaseViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B9FFA86C()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBC092E0 = result;
  *algn_1EBC092E8 = v1;
  return result;
}

uint64_t sub_1B9FFA938()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBC092F0 = result;
  *algn_1EBC092F8 = v1;
  return result;
}

uint64_t sub_1B9FFAA10()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBC09300 = result;
  *algn_1EBC09308 = v1;
  return result;
}

uint64_t sub_1B9FFAADC()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBC09310 = result;
  *algn_1EBC09318 = v1;
  return result;
}

uint64_t sub_1B9FFABA8()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBC09320 = result;
  *algn_1EBC09328 = v1;
  return result;
}

uint64_t sub_1B9FFAC74()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBC09330 = result;
  *algn_1EBC09338 = v1;
  return result;
}

uint64_t sub_1B9FFAD40()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBC09340 = result;
  *algn_1EBC09348 = v1;
  return result;
}

uint64_t sub_1B9FFAE0C()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBC09350 = result;
  *algn_1EBC09358 = v1;
  return result;
}

uint64_t sub_1B9FFAED8()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBC09360 = result;
  *algn_1EBC09368 = v1;
  return result;
}

uint64_t sub_1B9FFAFA4()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBC09370 = result;
  *algn_1EBC09378 = v1;
  return result;
}

id ImageViewWithShadow.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *sub_1B9FFB0D8(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC18HealthExperienceUI12PDFImageCell_imageView;
  v10 = [objc_allocWithZone(type metadata accessor for ImageViewWithShadow()) init];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v9] = v10;
  v11 = OBJC_IVAR____TtC18HealthExperienceUI12PDFImageCell_paginationView;
  v12 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  if (qword_1EBBE8250 != -1)
  {
    swift_once();
  }

  [v12 setBackgroundColor_];
  [v12 _setContinuousCornerRadius_];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v11] = v12;
  v13 = OBJC_IVAR____TtC18HealthExperienceUI12PDFImageCell_label;
  v14 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v14 setNumberOfLines_];
  v15 = sub_1B9F6B774(*MEMORY[0x1E69DDD80], *MEMORY[0x1E69DB980], 0, 0, 0, 0, 1);
  [v14 setFont_];

  if (qword_1EBBE8248 != -1)
  {
    swift_once();
  }

  [v14 setTextColor_];
  [v14 setTextAlignment_];
  [v14 setAdjustsFontForContentSizeCategory_];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v13] = v14;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI12PDFImageCell_lastRequestedPreviewImageId] = 0;
  v21.receiver = v4;
  v21.super_class = type metadata accessor for PDFImageCell();
  v16 = objc_msgSendSuper2(&v21, sel_initWithFrame_, a1, a2, a3, a4);
  v17 = [v16 contentView];
  [v17 addSubview_];

  v18 = [v16 contentView];
  [v18 addSubview_];

  v19 = [v16 contentView];
  [v19 addSubview_];

  sub_1B9FFB4E4();
  return v16;
}

void sub_1B9FFB4E4()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI12PDFImageCell_imageView];
  v3 = [v1 contentView];
  [v2 hk:v3 alignConstraintsWithView:?];

  v4 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI12PDFImageCell_label];
  v5 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI12PDFImageCell_paginationView];
  [v4 hk:v5 alignVerticalConstraintsWithView:7.0 margin:?];
  [v4 hk:v5 alignHorizontalConstraintsWithView:14.0 margin:?];
  v6 = objc_opt_self();
  sub_1B9F1C048(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BA4B5890;
  v8 = [v4 centerXAnchor];
  v9 = [v2 centerXAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v7 + 32) = v10;
  v11 = [v5 leadingAnchor];
  v12 = [v2 leadingAnchor];
  v13 = [v11 constraintGreaterThanOrEqualToAnchor:v12 constant:12.0];

  *(v7 + 40) = v13;
  v14 = [v2 trailingAnchor];
  v15 = [v5 trailingAnchor];
  v16 = [v14 constraintGreaterThanOrEqualToAnchor:v15 constant:12.0];

  *(v7 + 48) = v16;
  v17 = [v2 bottomAnchor];
  v18 = [v5 bottomAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:12.0];

  *(v7 + 56) = v19;
  sub_1B9F740B0();
  v20 = sub_1BA4A6AE8();

  [v6 activateConstraints_];
}

uint64_t sub_1B9FFB7C4(uint64_t a1, unint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI12PDFImageCell_lastRequestedPreviewImageId) + 1;
  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI12PDFImageCell_lastRequestedPreviewImageId) = v4;
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;

  sub_1BA37B0E4(a2, sub_1B9FFB92C, v6);
}

void sub_1B9FFB894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (*&Strong[OBJC_IVAR____TtC18HealthExperienceUI12PDFImageCell_lastRequestedPreviewImageId] == a3)
    {
      v6 = Strong;
      [*&Strong[OBJC_IVAR____TtC18HealthExperienceUI12PDFImageCell_imageView] setImage_];
      Strong = v6;
    }
  }
}

void sub_1B9FFB934(uint64_t a1, uint64_t a2)
{
  if (a2)
  {

    v5 = sub_1BA4A6758();
    [v2 setAccessibilityIdentifier_];

    v6 = *&v2[OBJC_IVAR____TtC18HealthExperienceUI12PDFImageCell_imageView];
    sub_1B9F1C048(0, &qword_1EDC6E330, MEMORY[0x1E69E6158]);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1BA4B5460;
    *(v7 + 32) = a1;
    *(v7 + 40) = a2;
    *(v7 + 48) = 0x6569566567616D49;
    *(v7 + 56) = 0xE900000000000077;

    v8 = sub_1BA4A6AE8();

    v9 = HKUIJoinStringsForAutomationIdentifier();

    [v6 setAccessibilityIdentifier_];
    v10 = *&v2[OBJC_IVAR____TtC18HealthExperienceUI12PDFImageCell_paginationView];
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1BA4B5460;
    *(v11 + 32) = a1;
    *(v11 + 40) = a2;
    strcpy((v11 + 48), "PaginationView");
    *(v11 + 63) = -18;

    v12 = sub_1BA4A6AE8();

    v13 = HKUIJoinStringsForAutomationIdentifier();

    [v10 setAccessibilityIdentifier_];
    v14 = *&v2[OBJC_IVAR____TtC18HealthExperienceUI12PDFImageCell_label];
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1BA4B5460;
    *(v15 + 32) = a1;
    *(v15 + 40) = a2;
    *(v15 + 48) = 0x6C6562614CLL;
    *(v15 + 56) = 0xE500000000000000;
    v16 = sub_1BA4A6AE8();

    v18 = HKUIJoinStringsForAutomationIdentifier();

    [v14 setAccessibilityIdentifier_];
  }

  else
  {
    [v2 setAccessibilityIdentifier_];
    [*&v2[OBJC_IVAR____TtC18HealthExperienceUI12PDFImageCell_imageView] setAccessibilityIdentifier_];
    [*&v2[OBJC_IVAR____TtC18HealthExperienceUI12PDFImageCell_paginationView] setAccessibilityIdentifier_];
    v17 = *&v2[OBJC_IVAR____TtC18HealthExperienceUI12PDFImageCell_label];

    [v17 setAccessibilityIdentifier_];
  }
}

id ImageViewWithShadow.init()()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for ImageViewWithShadow();
  v1 = objc_msgSendSuper2(&v10, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v2 = [v1 layer];
  [v2 setShadowRadius_];

  v3 = [v1 layer];
  v4 = [objc_opt_self() blackColor];
  v5 = [v4 CGColor];

  [v3 setShadowColor_];
  v6 = [v1 layer];
  LODWORD(v7) = 1041865114;
  [v6 setShadowOpacity_];

  v8 = [v1 layer];
  [v8 setShadowOffset_];

  return v1;
}

id ImageViewWithShadow.__allocating_init(image:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithImage_];

  return v3;
}

id ImageViewWithShadow.__allocating_init(image:highlightedImage:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithImage:a1 highlightedImage:a2];

  return v5;
}

id ImageViewWithShadow.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id sub_1B9FFC1F8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1B9FFC27C()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.384313725 green:0.384313725 blue:0.384313725 alpha:1.0];
  qword_1EBBE9EB0 = result;
  return result;
}

id sub_1B9FFC2C4()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.956862745 green:0.956862745 blue:0.956862745 alpha:1.0];
  qword_1EBBE9EB8 = result;
  return result;
}

void sub_1B9FFC30C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI12PDFImageCell_imageView;
  v2 = [objc_allocWithZone(type metadata accessor for ImageViewWithShadow()) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v1) = v2;
  v3 = OBJC_IVAR____TtC18HealthExperienceUI12PDFImageCell_paginationView;
  v4 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  if (qword_1EBBE8250 != -1)
  {
    swift_once();
  }

  [v4 setBackgroundColor_];
  [v4 _setContinuousCornerRadius_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v3) = v4;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI12PDFImageCell_label;
  v6 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v6 setNumberOfLines_];
  v7 = sub_1B9F6B774(*MEMORY[0x1E69DDD80], *MEMORY[0x1E69DB980], 0, 0, 0, 0, 1);
  [v6 setFont_];

  if (qword_1EBBE8248 != -1)
  {
    swift_once();
  }

  [v6 setTextColor_];
  [v6 setTextAlignment_];
  [v6 setAdjustsFontForContentSizeCategory_];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v5) = v6;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI12PDFImageCell_lastRequestedPreviewImageId) = 0;
  sub_1BA4A8018();
  __break(1u);
}

uint64_t sub_1B9FFC540()
{
  if (*v0)
  {
    return 0x6579616C70736964;
  }

  else
  {
    return 0x656C626967696C65;
  }
}

uint64_t sub_1B9FFC580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C626967696C65 && a2 == 0xE800000000000000;
  if (v6 || (sub_1BA4A8338() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6579616C70736964 && a2 == 0xE900000000000064)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BA4A8338();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B9FFC664(uint64_t a1)
{
  v2 = sub_1B9FFFCD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B9FFC6A0(uint64_t a1)
{
  v2 = sub_1B9FFFCD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B9FFC6E8(uint64_t a1)
{
  v2 = sub_1B9FFFBE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B9FFC724(uint64_t a1)
{
  v2 = sub_1B9FFFBE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B9FFC760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1BA4A8338();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B9FFC7E0(uint64_t a1)
{
  v2 = sub_1B9FFFC34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B9FFC81C(uint64_t a1)
{
  v2 = sub_1B9FFFC34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AlertStackModalPresentationManager.EligibilityState.encode(to:)(void *a1)
{
  v2 = MEMORY[0x1E69E6F58];
  sub_1B9FFFD28(0, &qword_1EDC5DCF8, sub_1B9FFFBE0, &type metadata for AlertStackModalPresentationManager.EligibilityState.DisplayedCodingKeys, MEMORY[0x1E69E6F58]);
  v33 = v3;
  v31 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v29 = &v29 - v5;
  sub_1B9FFFD28(0, &qword_1EDC5DD00, sub_1B9FFFC34, &type metadata for AlertStackModalPresentationManager.EligibilityState.EligibleCodingKeys, v2);
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v32 = &v29 - v8;
  v9 = sub_1BA4A1728();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v30 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AlertStackModalPresentationManager.EligibilityState(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9FFFD28(0, &qword_1EDC5DD08, sub_1B9FFFCD4, &type metadata for AlertStackModalPresentationManager.EligibilityState.CodingKeys, v2);
  v37 = v17;
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v29 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B9FFFCD4();
  sub_1BA4A8548();
  sub_1BA000A40(v36, v16, type metadata accessor for AlertStackModalPresentationManager.EligibilityState);
  if ((*(v10 + 48))(v16, 1, v9) == 1)
  {
    v39 = 1;
    sub_1B9FFFBE0();
    v22 = v29;
    v23 = v37;
    sub_1BA4A81F8();
    (*(v31 + 8))(v22, v33);
    return (*(v18 + 8))(v21, v23);
  }

  else
  {
    v25 = v30;
    (*(v10 + 32))(v30, v16, v9);
    v38 = 0;
    sub_1B9FFFC34();
    v26 = v32;
    v27 = v37;
    sub_1BA4A81F8();
    sub_1B9F42A1C(&qword_1EDC6AE80, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    v28 = v35;
    sub_1BA4A8288();
    (*(v34 + 8))(v26, v28);
    (*(v10 + 8))(v25, v9);
    return (*(v18 + 8))(v21, v27);
  }
}

uint64_t AlertStackModalPresentationManager.EligibilityState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1B9FFFD28(0, &qword_1EBBE9EE0, sub_1B9FFFBE0, &type metadata for AlertStackModalPresentationManager.EligibilityState.DisplayedCodingKeys, MEMORY[0x1E69E6F48]);
  v47 = *(v4 - 8);
  v48 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v53 = &v44 - v6;
  sub_1B9FFFD28(0, &qword_1EBBE9EE8, sub_1B9FFFC34, &type metadata for AlertStackModalPresentationManager.EligibilityState.EligibleCodingKeys, v3);
  v8 = *(v7 - 8);
  v49 = v7;
  v50 = v8;
  MEMORY[0x1EEE9AC00](v7, v9);
  v52 = &v44 - v10;
  sub_1B9FFFD28(0, &qword_1EBBE9EF0, sub_1B9FFFCD4, &type metadata for AlertStackModalPresentationManager.EligibilityState.CodingKeys, v3);
  v12 = v11;
  v54 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v44 - v14;
  v16 = type metadata accessor for AlertStackModalPresentationManager.EligibilityState(0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v44 - v22;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B9FFFCD4();
  v24 = v55;
  sub_1BA4A8528();
  if (v24)
  {
    goto LABEL_7;
  }

  v45 = v19;
  v46 = v23;
  v25 = v52;
  v26 = v53;
  v55 = a1;
  v27 = sub_1BA4A81D8();
  v28 = v15;
  if (*(v27 + 16) != 1)
  {
    v31 = sub_1BA4A7E68();
    swift_allocError();
    v33 = v32;
    sub_1B9FFFD90(0);
    *v33 = v16;
    sub_1BA4A8128();
    sub_1BA4A7E48();
    (*(*(v31 - 8) + 104))(v33, *MEMORY[0x1E69E6AF8], v31);
    swift_willThrow();
    (*(v54 + 8))(v28, v12);
    swift_unknownObjectRelease();
    a1 = v55;
LABEL_7:
    v41 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v41);
  }

  if (*(v27 + 32))
  {
    v57 = 1;
    sub_1B9FFFBE0();
    sub_1BA4A8118();
    v29 = v51;
    v30 = v54;
    (*(v47 + 8))(v26, v48);
    (*(v30 + 8))(v15, v12);
    swift_unknownObjectRelease();
    v36 = sub_1BA4A1728();
    v37 = v46;
    (*(*(v36 - 8) + 56))(v46, 1, 1, v36);
  }

  else
  {
    v56 = 0;
    sub_1B9FFFC34();
    sub_1BA4A8118();
    v34 = v12;
    v35 = v54;
    v38 = v34;
    v39 = sub_1BA4A1728();
    sub_1B9F42A1C(&qword_1EDC6AE70, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    v40 = v49;
    sub_1BA4A81C8();
    (*(v50 + 8))(v25, v40);
    (*(v35 + 8))(v28, v38);
    swift_unknownObjectRelease();
    v43 = v45;
    (*(*(v39 - 8) + 56))(v45, 0, 1, v39);
    v37 = v46;
    sub_1B9FFFE4C(v43, v46);
    v29 = v51;
  }

  sub_1B9FFFE4C(v37, v29);
  v41 = v55;
  return __swift_destroy_boxed_opaque_existential_1(v41);
}

uint64_t sub_1B9FFD3B8()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 15;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t AlertStackModalPresentationManager.__allocating_init(healthStore:)(void *a1)
{
  v2 = swift_allocObject();
  v3 = [objc_opt_self() healthAppDefaultsDomainWithHealthStore_];

  *(v2 + 16) = v3;
  return v2;
}

uint64_t AlertStackModalPresentationManager.init(healthStore:)(void *a1)
{
  v3 = [objc_opt_self() healthAppDefaultsDomainWithHealthStore_];

  *(v1 + 16) = v3;
  return v1;
}

uint64_t sub_1B9FFD4EC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[2];
  sub_1BA4A0EB8();
  swift_allocObject();
  v7 = sub_1BA4A0EA8();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a1;
  v8[4] = a2;
  v8[5] = v5;
  v11[4] = sub_1B9FFFEB0;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1B9FFE26C;
  v11[3] = &block_descriptor_4;
  v9 = _Block_copy(v11);

  [v6 allValuesWithCompletion_];
  _Block_release(v9);
}

uint64_t sub_1B9FFD634(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  if (!a1)
  {
    goto LABEL_5;
  }

  v10 = sub_1BA0006CC(a1, a3, a6);

  v11 = *(v10 + 16);
  if (v11)
  {
    while (1)
    {
      v12 = sub_1BA021990(v11, 0);
      v13 = sub_1BA0233B8(&v15, v12 + 4, v11, v10);
      sub_1B9F52E48(v15);
      if (v13 == v11)
      {
        break;
      }

      __break(1u);
LABEL_5:
      v10 = sub_1B9FDB798(MEMORY[0x1E69E7CC0]);
      v11 = *(v10 + 16);
      if (!v11)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:

    v12 = MEMORY[0x1E69E7CC0];
  }

  a4(v12);
}

uint64_t sub_1B9FFD73C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v91 = a4;
  v89 = a3;
  v93 = sub_1BA4A3EA8();
  v92 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93, v6);
  v8 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v90 = &v82 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v84 = &v82 - v14;
  v86 = sub_1BA4A1728();
  v88 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86, v15);
  v17 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v83 = &v82 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v85 = &v82 - v23;
  sub_1B9F6A7B0(0, &qword_1EBBE9F18, type metadata accessor for AlertStackModalPresentationManager.EligibilityState);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v27 = &v82 - v26;
  v28 = type metadata accessor for AlertStackModalPresentationManager.EligibilityState(0);
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v30);
  v32 = &v82 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33, v34);
  v87 = &v82 - v35;
  v36 = *a1;
  v37 = a1[1];
  v100[0] = v36;
  v100[1] = v37;
  sub_1B9F0AD9C(a2, &v101);
  v99[0] = v36;
  v99[1] = v37;
  v97 = 0xD000000000000014;
  v98 = 0x80000001BA4E31A0;
  sub_1B9F252FC();

  if (sub_1BA4A7BC8())
  {
    sub_1BA000A40(v100, v99, sub_1BA0009D8);

    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_8:
      v49 = v90;
      sub_1BA4A3D78();
      sub_1BA000A40(v100, v99, sub_1BA0009D8);
      v50 = sub_1BA4A3E88();
      v51 = sub_1BA4A6FA8();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v102 = v53;
        *v52 = 136315394;
        v54 = sub_1BA4A85D8();
        v56 = sub_1B9F0B82C(v54, v55, &v102);

        *(v52 + 4) = v56;
        *(v52 + 12) = 2080;
        sub_1BA000A40(v99, &v97, sub_1BA0009D8);

        v57 = MEMORY[0x1E6969080];
        v58 = swift_dynamicCast();
        v59 = v95;
        v60 = v96;
        if (!v58)
        {
          v59 = 0;
          v60 = 0xF000000000000000;
        }

        v95 = v59;
        v96 = v60;
        sub_1B9F216C8(0, &unk_1EDC6E268, v57, MEMORY[0x1E69E6720]);
        v61 = sub_1BA4A6808();
        v63 = v62;
        sub_1BA000978(v99, sub_1BA0009D8);
        v64 = sub_1B9F0B82C(v61, v63, &v102);

        *(v52 + 14) = v64;
        _os_log_impl(&dword_1B9F07000, v50, v51, "[%s] Could not decode EligibilityState from data: %s", v52, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v53, -1, -1);
        MEMORY[0x1BFAF43A0](v52, -1, -1);
      }

      else
      {

        sub_1BA000978(v99, sub_1BA0009D8);
      }

      (*(v92 + 8))(v49, v93);
      goto LABEL_14;
    }

    v39 = v97;
    v38 = v98;
    sub_1B9F42A1C(&qword_1EBBE9F20, type metadata accessor for AlertStackModalPresentationManager.EligibilityState, &protocol conformance descriptor for AlertStackModalPresentationManager.EligibilityState);
    v40 = v94;
    sub_1BA4A0E98();
    if (v40)
    {

      sub_1B9F2BB4C(v39, v38);
      (*(v29 + 56))(v27, 1, 1, v28);
      sub_1BA0004A0(v27, &qword_1EBBE9F18, type metadata accessor for AlertStackModalPresentationManager.EligibilityState);
      goto LABEL_8;
    }

    v90 = v38;
    (*(v29 + 56))(v27, 0, 1, v28);
    v66 = v87;
    sub_1B9FFFE4C(v27, v87);
    sub_1BA000A40(v66, v32, type metadata accessor for AlertStackModalPresentationManager.EligibilityState);
    v67 = v88;
    v68 = v86;
    if ((*(v88 + 48))(v32, 1, v86) == 1)
    {
      sub_1BA000978(v66, type metadata accessor for AlertStackModalPresentationManager.EligibilityState);
      sub_1B9F2BB4C(v39, v90);
      sub_1BA000978(v32, type metadata accessor for AlertStackModalPresentationManager.EligibilityState);
LABEL_14:
      v48 = 0;
      goto LABEL_15;
    }

    v94 = 0;
    (*(v67 + 32))(v85, v32, v68);
    sub_1BA4A1718();
    v69 = v83;
    sub_1BA4A1688();
    v72 = *(v67 + 8);
    v70 = v67 + 8;
    v71 = v72;
    v72(v17, v68);
    v48 = sub_1BA4A16C8();
    v72(v69, v68);
    v73 = v84;
    sub_1BA4A3D78();
    v74 = sub_1BA4A3E88();
    v75 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v99[0] = v77;
      *v76 = 136315394;
      v78 = sub_1BA4A85D8();
      v80 = sub_1B9F0B82C(v78, v79, v99);
      v88 = v70;
      v81 = v80;

      *(v76 + 4) = v81;
      *(v76 + 12) = 1024;
      *(v76 + 14) = v48 & 1;
      _os_log_impl(&dword_1B9F07000, v74, v75, "[%s] Is alert eligible to display alert stack: %{BOOL}d", v76, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v77);
      MEMORY[0x1BFAF43A0](v77, -1, -1);
      MEMORY[0x1BFAF43A0](v76, -1, -1);
      sub_1B9F2BB4C(v39, v90);

      (*(v92 + 8))(v84, v93);
      v71(v85, v86);
    }

    else
    {
      sub_1B9F2BB4C(v39, v90);

      (*(v92 + 8))(v73, v93);
      v71(v85, v68);
    }

    sub_1BA000978(v87, type metadata accessor for AlertStackModalPresentationManager.EligibilityState);
  }

  else
  {
    sub_1BA4A3D78();
    v41 = sub_1BA4A3E88();
    v42 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v99[0] = v44;
      *v43 = 136315138;
      v45 = sub_1BA4A85D8();
      v47 = sub_1B9F0B82C(v45, v46, v99);

      *(v43 + 4) = v47;
      _os_log_impl(&dword_1B9F07000, v41, v42, "[%s] No alerts found in kv domain that contain the expected prefix for displaying alert stack", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v44);
      MEMORY[0x1BFAF43A0](v44, -1, -1);
      MEMORY[0x1BFAF43A0](v43, -1, -1);
    }

    (*(v92 + 8))(v8, v93);
    v48 = 0;
  }

LABEL_15:
  sub_1BA000978(v100, sub_1BA0009D8);
  return v48 & 1;
}

uint64_t sub_1B9FFE26C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1BA4A6628();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_1B9FFE318(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = type metadata accessor for AlertStackModalPresentationManager.EligibilityState(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A0EE8();
  swift_allocObject();
  sub_1BA4A0ED8();
  v10 = sub_1BA4A1728();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_1B9F42A1C(&qword_1EDC61D28, type metadata accessor for AlertStackModalPresentationManager.EligibilityState, &protocol conformance descriptor for AlertStackModalPresentationManager.EligibilityState);
  v11 = sub_1BA4A0EC8();
  v12 = v9;
  v14 = v13;
  sub_1BA000978(v12, type metadata accessor for AlertStackModalPresentationManager.EligibilityState);

  v15 = v2[2];
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = v11;
  v16[4] = v14;
  v16[5] = a1;
  v16[6] = a2;
  v16[7] = v5;
  sub_1BA4A0EB8();
  swift_allocObject();
  v17 = v15;
  sub_1B9F206D4(v11, v14);
  sub_1B9F0F1B8(a1, a2);
  v18 = sub_1BA4A0EA8();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = sub_1B9FFFEBC;
  v19[4] = v16;
  v19[5] = v5;
  aBlock[4] = sub_1BA000B1C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9FFE26C;
  aBlock[3] = &block_descriptor_10;
  v20 = _Block_copy(aBlock);

  [v17 allValuesWithCompletion_];
  _Block_release(v20);

  return sub_1B9F2BB4C(v11, v14);
}

uint64_t sub_1B9FFE628(uint64_t result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(result + 16);
  if (v7)
  {
    v14 = (result + 40);
    do
    {
      v15 = *v14;
      v16[0] = *(v14 - 1);
      v16[1] = v15;

      sub_1B9FFE6D8(v16, a2, a3, a4, a5, a6, a7);

      v14 += 2;
      --v7;
    }

    while (v7);
  }

  return result;
}

void sub_1B9FFE6D8(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *a1;
  v11 = a1[1];
  v13 = sub_1BA4A15F8();
  v14 = sub_1BA4A6758();
  v15 = swift_allocObject();
  v15[2] = v12;
  v15[3] = v11;
  v15[4] = a5;
  v15[5] = a6;
  v15[6] = a7;
  v17[4] = sub_1BA000968;
  v17[5] = v15;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1BA454240;
  v17[3] = &block_descriptor_46;
  v16 = _Block_copy(v17);

  sub_1B9F0F1B8(a5, a6);

  [a2 setData:v13 forKey:v14 completion:v16];
  _Block_release(v16);
}

uint64_t sub_1B9FFE828(int a1, void *a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(void, void), uint64_t a6, uint64_t a7)
{
  v35 = a3;
  v36 = a1;
  v11 = sub_1BA4A3EA8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();

  v16 = a2;
  v17 = sub_1BA4A3E88();
  v18 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v17, v18))
  {
    v32 = v11;
    v33 = a6;
    v34 = a5;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v37 = v31;
    *v19 = 136315906;
    v21 = sub_1BA4A85D8();
    v23 = sub_1B9F0B82C(v21, v22, &v37);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_1B9F0B82C(v35, a4, &v37);
    *(v19 + 22) = 1024;
    v24 = v36;
    *(v19 + 24) = v36 & 1;
    *(v19 + 28) = 2112;
    if (a2)
    {
      v25 = a2;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      v27 = v26;
    }

    else
    {
      v26 = 0;
      v27 = 0;
    }

    *(v19 + 30) = v26;
    *v20 = v27;
    _os_log_impl(&dword_1B9F07000, v17, v18, "[%s] Set alert eligibility false for key: %s, success: %{BOOL}d, error: %@", v19, 0x26u);
    sub_1BA0004A0(v20, &qword_1EDC6B490, sub_1BA0004FC);
    MEMORY[0x1BFAF43A0](v20, -1, -1);
    v29 = v31;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v29, -1, -1);
    MEMORY[0x1BFAF43A0](v19, -1, -1);

    result = (*(v12 + 8))(v15, v32);
    a5 = v34;
    if (v34)
    {
      return a5(v24 & 1, a2);
    }
  }

  else
  {

    result = (*(v12 + 8))(v15, v11);
    v24 = v36;
    if (a5)
    {
      return a5(v24 & 1, a2);
    }
  }

  return result;
}

uint64_t (*static AlertStackModalPresentationManager.afterCommitBlock(creationDate:healthStore:completion:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4))(uint64_t a1)
{
  v5 = v4;
  v30 = a3;
  v31 = a4;
  v29 = a2;
  v7 = sub_1BA4A1728();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v28 - v13;
  sub_1BA4A1718();
  sub_1BA4A1688();
  v15 = *(v8 + 8);
  v15(&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v16 = sub_1BA4A16C8();
  v15(v14, v7);
  (*(v8 + 16))(v14, a1, v7);
  v17 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v18 = (v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  if (v16)
  {
    v20 = sub_1B9FFFFA4;
  }

  else
  {
    v20 = sub_1B9FFFECC;
  }

  v21 = swift_allocObject();
  *(v21 + 16) = v5;
  (*(v8 + 32))(v21 + v17, v14, v7);
  v22 = v29;
  v23 = v30;
  *(v21 + v18) = v29;
  v24 = (v21 + v19);
  v25 = v31;
  *v24 = v23;
  v24[1] = v25;
  *(v21 + ((v19 + 23) & 0xFFFFFFFFFFFFFFF8)) = v5;
  v26 = v22;
  sub_1B9F0F1B8(v23, v25);
  return v20;
}

uint64_t sub_1B9FFED4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v37 = a7;
  v38 = a5;
  v39 = a6;
  v40 = type metadata accessor for AlertStackModalPresentationManager.EligibilityState(0);
  MEMORY[0x1EEE9AC00](v40, v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BA4A1E38();
  aBlock = 0xD000000000000015;
  v42 = 0x80000001BA4E3180;
  MEMORY[0x1BFAF1350](v12);

  MEMORY[0x1BFAF1350](95, 0xE100000000000000);

  v14 = aBlock;
  v13 = v42;
  v15 = sub_1BA4A1728();
  sub_1B9F42A1C(&qword_1EDC6E448, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
  v16 = sub_1BA4A82D8();
  v18 = v17;
  aBlock = v14;
  v42 = v13;

  MEMORY[0x1BFAF1350](v16, v18);

  v19 = aBlock;
  v20 = v42;
  v21 = [objc_opt_self() healthAppDefaultsDomainWithHealthStore_];
  v22 = sub_1BA4A7178();
  v24 = v23;
  v25 = *(v15 - 8);
  (*(v25 + 16))(v11, a3, v15);
  (*(v25 + 56))(v11, 0, 1, v15);
  if (v24 >> 60 == 15)
  {
    sub_1BA4A0EE8();
    swift_allocObject();
    sub_1BA4A0ED8();
    sub_1B9F42A1C(&qword_1EDC61D28, type metadata accessor for AlertStackModalPresentationManager.EligibilityState, &protocol conformance descriptor for AlertStackModalPresentationManager.EligibilityState);
    v26 = sub_1BA4A0EC8();
    v28 = v27;

    v29 = sub_1BA4A15F8();
    v30 = sub_1BA4A6758();
    v31 = swift_allocObject();
    v31[2] = v19;
    v31[3] = v20;
    v33 = v38;
    v32 = v39;
    v31[4] = v38;
    v31[5] = v32;
    v31[6] = v37;
    v45 = sub_1BA000494;
    v46 = v31;
    aBlock = MEMORY[0x1E69E9820];
    v42 = 1107296256;
    v43 = sub_1BA454240;
    v44 = &block_descriptor_34;
    v34 = _Block_copy(&aBlock);
    sub_1B9F0F1B8(v33, v32);

    [v21 setData:v29 forKey:v30 completion:v34];

    sub_1B9F2BB4C(v26, v28);
    _Block_release(v34);
  }

  else
  {

    sub_1B9F6AC8C(v22, v24);
  }

  return sub_1BA000978(v11, type metadata accessor for AlertStackModalPresentationManager.EligibilityState);
}

void sub_1B9FFF190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = sub_1BA4A1E38();
  MEMORY[0x1BFAF1350](v10);

  MEMORY[0x1BFAF1350](95, 0xE100000000000000);

  sub_1BA4A1728();
  sub_1B9F42A1C(&qword_1EDC6E448, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
  v11 = sub_1BA4A82D8();
  v13 = v12;

  MEMORY[0x1BFAF1350](v11, v13);

  v14 = [objc_opt_self() healthAppDefaultsDomainWithHealthStore_];
  sub_1B9F216C8(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;
  *(inited + 32) = 0xD000000000000015;
  *(inited + 40) = 0x80000001BA4E3180;

  sub_1B9FF6B78(inited);
  swift_setDeallocating();
  sub_1BA000898(inited + 32);
  v16 = sub_1BA4A6D68();

  v17 = swift_allocObject();
  v17[2] = 0xD000000000000015;
  v17[3] = 0x80000001BA4E3180;
  v17[4] = a5;
  v17[5] = a6;
  v17[6] = a7;
  aBlock[4] = sub_1BA0008EC;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BA454240;
  aBlock[3] = &block_descriptor_40;
  v18 = _Block_copy(aBlock);
  sub_1B9F0F1B8(a5, a6);

  [v14 removeValuesForKeys:v16 completion:v18];
  _Block_release(v18);
}

uint64_t sub_1B9FFF45C(int a1, void *a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t a7, const char *a8)
{
  v36 = a8;
  v34 = a3;
  v35 = a1;
  v12 = sub_1BA4A3EA8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s18HealthExperienceUI0A44ChecklistStagedFeatureStatusFeedItemProviderPAAE6logger2os6LoggerVvg_0();

  v17 = a2;
  v18 = sub_1BA4A3E88();
  v19 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v18, v19))
  {
    v31 = v12;
    v32 = a6;
    v33 = a5;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v37 = v30;
    *v20 = 136315906;
    v22 = sub_1BA4A85D8();
    v24 = sub_1B9F0B82C(v22, v23, &v37);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_1B9F0B82C(v34, a4, &v37);
    *(v20 + 22) = 1024;
    *(v20 + 24) = v35 & 1;
    *(v20 + 28) = 2112;
    if (a2)
    {
      v25 = a2;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      v27 = v26;
    }

    else
    {
      v26 = 0;
      v27 = 0;
    }

    *(v20 + 30) = v26;
    *v21 = v27;
    _os_log_impl(&dword_1B9F07000, v18, v19, v36, v20, 0x26u);
    sub_1BA0004A0(v21, &qword_1EDC6B490, sub_1BA0004FC);
    MEMORY[0x1BFAF43A0](v21, -1, -1);
    v29 = v30;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v29, -1, -1);
    MEMORY[0x1BFAF43A0](v20, -1, -1);

    result = (*(v13 + 8))(v16, v31);
    a5 = v33;
    if (v33)
    {
      return a5(result);
    }
  }

  else
  {

    result = (*(v13 + 8))(v16, v12);
    if (a5)
    {
      return a5(result);
    }
  }

  return result;
}

uint64_t AlertStackModalPresentationManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t *sub_1B9FFF790(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_1BA000548(a1, a2, a3, a4, a5);

  return v5;
}

unint64_t *sub_1B9FFF7D4(unint64_t *result, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v10 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_retain_n();
    sub_1B9FFF894(v10, a2, a3, a4, &v11, a5);

    if (!v5)
    {
      a3 = v11;
    }

    return a3;
  }

  return result;
}

uint64_t sub_1B9FFF894@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t **a5@<X8>, uint64_t a6@<X4>)
{

  v13 = sub_1B9FFF790(a1, a2, a3, a4, a6);

  if (!v6)
  {
    *a5 = v13;
  }

  return result;
}

uint64_t _s18HealthExperienceUI34AlertStackModalPresentationManagerC16EligibilityStateO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA4A1728();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AlertStackModalPresentationManager.EligibilityState(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA000AA8(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 + 56);
  sub_1BA000A40(a1, v16, type metadata accessor for AlertStackModalPresentationManager.EligibilityState);
  sub_1BA000A40(a2, &v16[v18], type metadata accessor for AlertStackModalPresentationManager.EligibilityState);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    v20 = 1;
    v21 = v19(&v16[v18], 1, v4);
    v22 = type metadata accessor for AlertStackModalPresentationManager.EligibilityState;
    if (v21 == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_1BA000A40(v16, v12, type metadata accessor for AlertStackModalPresentationManager.EligibilityState);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v16[v18], v4);
      v20 = sub_1BA4A16E8();
      v23 = *(v5 + 8);
      v23(v8, v4);
      v23(v12, v4);
      v22 = type metadata accessor for AlertStackModalPresentationManager.EligibilityState;
      goto LABEL_8;
    }

    (*(v5 + 8))(v12, v4);
  }

  v20 = 0;
  v22 = sub_1BA000AA8;
LABEL_8:
  sub_1BA000978(v16, v22);
  return v20 & 1;
}

unint64_t sub_1B9FFFBE0()
{
  result = qword_1EDC61D40;
  if (!qword_1EDC61D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC61D40);
  }

  return result;
}

unint64_t sub_1B9FFFC34()
{
  result = qword_1EDC61D58;
  if (!qword_1EDC61D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC61D58);
  }

  return result;
}

uint64_t type metadata accessor for AlertStackModalPresentationManager.EligibilityState(uint64_t a1)
{
  result = qword_1EDC61CF8;
  if (!qword_1EDC61CF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B9FFFCD4()
{
  result = qword_1EDC61D70;
  if (!qword_1EDC61D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC61D70);
  }

  return result;
}

void sub_1B9FFFD28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1B9FFFD90(uint64_t a1)
{
  if (!qword_1EBBE9EF8)
  {
    sub_1B9FFFE00();
    sub_1BA4A7E58();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBE9EF8);
    }
  }
}

unint64_t sub_1B9FFFE00()
{
  result = qword_1EBBE9F00;
  if (!qword_1EBBE9F00)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1EBBE9F00);
  }

  return result;
}

uint64_t sub_1B9FFFE4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlertStackModalPresentationManager.EligibilityState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_12Tm()
{
  v1 = sub_1BA4A1728();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v6))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1B9FFFFBC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_1BA4A1728() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  v9 = *(v2 + v6);
  v10 = *(v2 + v7);
  v11 = *(v2 + v7 + 8);
  v12 = *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8));

  return a2(a1, v8, v2 + v5, v9, v10, v11, v12);
}

uint64_t sub_1BA00014C(uint64_t a1)
{
  v1 = sub_1BA4A1728();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

unint64_t sub_1BA0001D8()
{
  result = qword_1EBBE9F08;
  if (!qword_1EBBE9F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBE9F08);
  }

  return result;
}

unint64_t sub_1BA000230()
{
  result = qword_1EBBE9F10;
  if (!qword_1EBBE9F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBE9F10);
  }

  return result;
}

unint64_t sub_1BA000288()
{
  result = qword_1EDC61D60;
  if (!qword_1EDC61D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC61D60);
  }

  return result;
}

unint64_t sub_1BA0002E0()
{
  result = qword_1EDC61D68;
  if (!qword_1EDC61D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC61D68);
  }

  return result;
}

unint64_t sub_1BA000338()
{
  result = qword_1EDC61D48;
  if (!qword_1EDC61D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC61D48);
  }

  return result;
}

unint64_t sub_1BA000390()
{
  result = qword_1EDC61D50;
  if (!qword_1EDC61D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC61D50);
  }

  return result;
}

unint64_t sub_1BA0003E8()
{
  result = qword_1EDC61D30;
  if (!qword_1EDC61D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC61D30);
  }

  return result;
}

unint64_t sub_1BA000440()
{
  result = qword_1EDC61D38;
  if (!qword_1EDC61D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC61D38);
  }

  return result;
}

uint64_t sub_1BA0004A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1B9F6A7B0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1BA0004FC()
{
  result = qword_1EDC6E350;
  if (!qword_1EDC6E350)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC6E350);
  }

  return result;
}

unint64_t *sub_1BA000548(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a5;
  v24 = 0;
  v23 = result;
  v7 = 0;
  v8 = a3 + 64;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 64);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v16 = v13 | (v7 << 6);
    v17 = *(a3 + 56);
    v18 = (*(a3 + 48) + 16 * v16);
    v19 = v18[1];
    v27[0] = *v18;
    v27[1] = v19;
    sub_1B9F0AD9C(v17 + 32 * v16, v26);

    v20 = sub_1B9FFD73C(v27, v26, a4, v28);
    __swift_destroy_boxed_opaque_existential_1(v26);

    if (v5)
    {
      return result;
    }

    if (v20)
    {
      *(v23 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v24++, 1))
      {
        __break(1u);
        return sub_1BA2023C8(v23, a2, v24, a3);
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      return sub_1BA2023C8(v23, a2, v24, a3);
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1BA0006CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v17[1] = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;
  v12 = swift_retain_n();
  if (v9 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v16 = swift_slowAlloc();

      v14 = sub_1B9FFF7D4(v16, v10, a1, a2, a3);
      MEMORY[0x1BFAF43A0](v16, -1, -1);

      return v14;
    }
  }

  MEMORY[0x1EEE9AC00](v12, v13);
  bzero(v17 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v11);

  v14 = sub_1BA000548((v17 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0)), v10, a1, a2, a3);

  if (v4)
  {
    swift_willThrow();
  }

  return v14;
}

uint64_t objectdestroy_30Tm()
{

  if (*(v0 + 32))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BA000978(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1BA0009D8()
{
  if (!qword_1EDC6E420)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC6E420);
    }
  }
}

uint64_t sub_1BA000A40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1BA000AA8(uint64_t a1)
{
  if (!qword_1EBBE9F28)
  {
    type metadata accessor for AlertStackModalPresentationManager.EligibilityState(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBE9F28);
    }
  }
}

uint64_t DataTypeDetailConfiguration.ContributingFactorsComponent.makeDataSource(context:)()
{
  sub_1B9F1B310(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BA4B5460;
  v1 = type metadata accessor for ContentConfigurationItem(0);
  *(v0 + 56) = v1;
  v2 = sub_1BA001B20(&qword_1EDC664A0, type metadata accessor for ContentConfigurationItem, &protocol conformance descriptor for ContentConfigurationItem);
  *(v0 + 64) = v2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 32));
  sub_1BA000EF4(0xD000000000000017, 0x80000001BA4E3200, boxed_opaque_existential_1);
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  v4 = __swift_allocate_boxed_opaque_existential_1((v0 + 72));
  sub_1BA000EF4(0xD000000000000019, 0x80000001BA4E3220, v4);
  v5 = MEMORY[0x1E69E7CC0];
  sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);

  v7 = Array<A>.identifierToIndexDict()(v6);

  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BA4B5480;
  *(v8 + 56) = v1;
  *(v8 + 64) = v2;
  v9 = __swift_allocate_boxed_opaque_existential_1((v8 + 32));
  sub_1BA000EF4(0xD00000000000001DLL, 0x80000001BA4E3280, v9);
  sub_1B9F1C5F0(v5);

  v11 = Array<A>.identifierToIndexDict()(v10);

  sub_1B9F1C048(0, &qword_1EDC5DC90, &type metadata for ArrayDataSourceSection);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1BA4B5460;
  *(v12 + 32) = 0xD000000000000011;
  *(v12 + 40) = 0x80000001BA4E31E0;
  *(v12 + 48) = v0;
  *(v12 + 56) = v7;
  *(v12 + 64) = 0xD000000000000010;
  *(v12 + 72) = 0x80000001BA4E3240;
  *(v12 + 80) = 0xD000000000000016;
  *(v12 + 88) = 0x80000001BA4E3260;
  *(v12 + 96) = v8;
  *(v12 + 104) = v11;
  *(v12 + 112) = 0xD000000000000015;
  *(v12 + 120) = 0x80000001BA4E32A0;
  type metadata accessor for ArrayDataSource(0);
  swift_allocObject();
  v13 = sub_1B9F348D8(v12, 0xD000000000000013, 0x80000001BA4E31C0);

  sub_1BA001A4C(0);
  v14 = swift_allocObject();
  v14[4] = v13;
  v14[5] = sub_1BA001484;
  v14[6] = 0;
  v16 = v13[5];
  v15 = v13[6];
  v14[2] = v16;
  v14[3] = v15;
  sub_1BA001A88(0, &qword_1EBBE9F38, sub_1BA001A4C, &protocol witness table for Supplementary<A>, type metadata accessor for DataSourceWithLayout);
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  *(v17 + 24) = v16;
  *(v17 + 32) = v15;
  *(v17 + 40) = 0;
  *(v17 + 48) = sub_1BA0015CC;
  *(v17 + 56) = 0;
  swift_bridgeObjectRetain_n();
  return v17;
}

uint64_t sub_1BA000EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a2;
  v42 = a1;
  sub_1BA001B68(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v37 = &v35 - v6;
  v7 = sub_1BA4A3FB8();
  v38 = *(v7 - 8);
  v39 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1BA4A3F18();
  v11 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1BA4A4428();
  v15 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40, v16);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A43A8();
  v19 = sub_1BA4A6758();
  v20 = [objc_opt_self() systemImageNamed_];

  sub_1BA4A43D8();
  v21 = [objc_opt_self() labelColor];
  v22 = sub_1BA4A42D8();
  sub_1BA4A42B8();
  v22(&v43, 0);

  sub_1BA4A43B8();
  v23 = MEMORY[0x1E69DC110];
  v24 = v40;
  *(a3 + 96) = v40;
  *(a3 + 104) = v23;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a3 + 72));
  (*(v15 + 16))(boxed_opaque_existential_1, v18, v24);
  sub_1BA001B68(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
  sub_1BA4A3FE8();
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1BA4B5480;
  v27 = v36;
  (*(v11 + 104))(v14, *MEMORY[0x1E69DBF28], v36);
  v28 = sub_1BA4A3F48();
  (*(*(v28 - 8) + 56))(v37, 1, 1, v28);
  sub_1BA4A3FA8();
  sub_1BA4A3F78();
  (*(v38 + 8))(v10, v39);
  (*(v11 + 8))(v14, v27);
  v29 = type metadata accessor for ContentConfigurationItem(0);
  v30 = v29[10];
  v31 = sub_1BA4A4168();
  (*(*(v31 - 8) + 56))(a3 + v30, 1, 1, v31);
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1B9F2F610(&v43);
  *(&v44 + 1) = &type metadata for BasicCellSelectionHandler;
  v45 = &off_1F381BCC8;
  *&v43 = nullsub_1;
  *(&v43 + 1) = 0;
  LOBYTE(v44) = 2;
  (*(v15 + 8))(v18, v40);
  sub_1B9F2F698(&v43, a3 + 16);
  *(a3 + v29[12]) = 0;
  *(a3 + v29[13]) = 0;
  v32 = v41;
  *a3 = v42;
  *(a3 + 8) = v32;
  *(a3 + 112) = 0;
  *(a3 + 120) = v26;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  v33 = (a3 + v29[11]);
  *v33 = 0;
  v33[1] = 0;

  return sub_1B9F2F610(&v43);
}

uint64_t sub_1BA001484@<X0>(void *a1@<X8>)
{
  v2 = sub_1BA4A4428();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BA4A1968();
  if (v6)
  {
    v7 = 0xD000000000000016;
  }

  else
  {
    v7 = 0xD000000000000011;
  }

  if (v6)
  {
    v8 = "ContributingData";
  }

  else
  {
    v8 = "ContributingFactors";
  }

  _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
  v9 = type metadata accessor for HeaderItem(0);
  swift_allocObject();
  HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(v7, v8 | 0x8000000000000000, 0, 0, 0, 0, v5, 0, 0);
  v11 = v10;
  a1[3] = v9;
  result = sub_1BA001B20(&qword_1EDC69800, type metadata accessor for HeaderItem, &protocol conformance descriptor for HeaderItem);
  a1[4] = result;
  *a1 = v11;
  return result;
}

void *sub_1BA0015CC(uint64_t a1)
{
  v2 = sub_1BA4A47D8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A47B8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1BA4A4848();
  v12 = *(v33 - 8);
  v14 = MEMORY[0x1EEE9AC00](v33, v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 8);
  (*(v8 + 104))(v11, *MEMORY[0x1E69DC238], v7, v14);
  sub_1BA4A47E8();
  (*(v3 + 104))(v6, *MEMORY[0x1E69DC280], v2);
  sub_1BA4A4808();
  v18 = [objc_opt_self() clearColor];
  sub_1BA4A4818();
  v19 = [v17 traitCollection];
  sub_1BA4A7368();

  sub_1B9F0ADF8(0, &qword_1EDC6B530, 0x1E6995580);
  v20 = sub_1BA4A7638();
  [v20 setContentInsetsReference_];
  sub_1BA4A65A8();
  [v20 setInterGroupSpacing_];
  [v20 setInterGroupSpacing_];
  sub_1B9F1C048(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1BA4B5470;
  v22 = objc_opt_self();
  v23 = [v22 estimatedDimension_];
  v24 = [v22 fractionalWidthDimension_];
  v25 = [objc_opt_self() sizeWithWidthDimension:v24 heightDimension:v23];

  v26 = *MEMORY[0x1E69DDC08];
  v27 = objc_opt_self();
  v28 = v26;
  v29 = [v27 boundarySupplementaryItemWithLayoutSize:v25 elementKind:v28 alignment:2];

  *(v21 + 32) = v29;
  sub_1B9F0ADF8(0, &qword_1EDC6B4E8, 0x1E6995548);
  v30 = sub_1BA4A6AE8();

  [v20 setBoundarySupplementaryItems_];

  (*(v12 + 8))(v16, v33);
  return v20;
}

void sub_1BA001A88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1BA001B20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BA001B68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t MedicationsAffectHeartRateOnboardingViewController.ActionStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](v1);
  return sub_1BA4A84D8();
}

uint64_t sub_1BA001CA8(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC18HealthExperienceUI50MedicationsAffectHeartRateOnboardingViewController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1BA001D14(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI50MedicationsAffectHeartRateOnboardingViewController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1BA001DB4;
}

void sub_1BA001DB4(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t MedicationsAffectHeartRateOnboardingViewController.baseAutomationIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI50MedicationsAffectHeartRateOnboardingViewController_baseAutomationIdentifier);

  return v1;
}

char *MedicationsAffectHeartRateOnboardingViewController.__allocating_init(healthStore:actionStyle:primaryButtonTintColorOverride:)(void *a1, char *a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_1BA002450(a1, a2, a3);

  return v8;
}

char *MedicationsAffectHeartRateOnboardingViewController.init(healthStore:actionStyle:primaryButtonTintColorOverride:)(void *a1, char *a2, void *a3)
{
  v5 = sub_1BA002450(a1, a2, a3);

  return v5;
}

id sub_1BA001F14()
{
  v20.receiver = v0;
  v20.super_class = type metadata accessor for MedicationsAffectHeartRateOnboardingViewController();
  objc_msgSendSuper2(&v20, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI50MedicationsAffectHeartRateOnboardingViewController_baseAutomationIdentifier];
  v1 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI50MedicationsAffectHeartRateOnboardingViewController_baseAutomationIdentifier + 8];
  v3 = sub_1BA4A6758();
  [v0 setAccessibilityIdentifier_];

  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  v5 = result;
  sub_1B9F25350();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BA4B5460;
  *(v6 + 32) = v2;
  *(v6 + 40) = v1;
  *(v6 + 48) = 2003134806;
  *(v6 + 56) = 0xE400000000000000;

  v7 = sub_1BA4A6AE8();

  v8 = HKUIJoinStringsForAutomationIdentifier();

  [v5 setAccessibilityIdentifier_];
  result = [v0 tableView];
  if (!result)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v9 = result;
  [result setSectionHeaderTopPadding_];

  if (v0[OBJC_IVAR____TtC18HealthExperienceUI50MedicationsAffectHeartRateOnboardingViewController_actionStyle])
  {
    v10 = 0x74747542656E6F44;
  }

  else
  {
    v10 = 0x65756E69746E6F43;
  }

  if (v0[OBJC_IVAR____TtC18HealthExperienceUI50MedicationsAffectHeartRateOnboardingViewController_actionStyle])
  {
    v11 = 0xEA00000000006E6FLL;
  }

  else
  {
    v11 = 0xEE006E6F74747542;
  }

  v12 = &selRef_hxui_addDoneButtonWithAccessibilityIdentifier_;
  if (!v0[OBJC_IVAR____TtC18HealthExperienceUI50MedicationsAffectHeartRateOnboardingViewController_actionStyle])
  {
    v12 = &selRef_hxui_addContinueButtonWithAccessibilityIdentifier_;
  }

  v13 = [v0 *v12];
  v14 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI50MedicationsAffectHeartRateOnboardingViewController_primaryButton];
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI50MedicationsAffectHeartRateOnboardingViewController_primaryButton] = v13;
  v15 = v13;

  v16 = swift_allocObject();
  *(v16 + 16) = v19;
  *(v16 + 32) = v2;
  *(v16 + 40) = v1;
  *(v16 + 48) = v10;
  *(v16 + 56) = v11;

  v17 = sub_1BA4A6AE8();

  v18 = HKUIJoinStringsForAutomationIdentifier();

  [v15 setAccessibilityIdentifier_];
  result = *&v0[OBJC_IVAR____TtC18HealthExperienceUI50MedicationsAffectHeartRateOnboardingViewController_primaryButton];
  if (result)
  {
    return [result setTintColor_];
  }

  return result;
}

uint64_t sub_1BA0022E8()
{

  swift_unknownObjectRelease();

  sub_1B9FAB600(v0 + OBJC_IVAR____TtC18HealthExperienceUI50MedicationsAffectHeartRateOnboardingViewController_delegate);
}

id MedicationsAffectHeartRateOnboardingViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationsAffectHeartRateOnboardingViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_1BA002450(void *a1, char *a2, void *a3)
{
  v4 = v3;
  v7 = *a2;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI50MedicationsAffectHeartRateOnboardingViewController_primaryButton] = 0;
  v8 = OBJC_IVAR____TtC18HealthExperienceUI50MedicationsAffectHeartRateOnboardingViewController_primaryButtonTintColorOverride;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI50MedicationsAffectHeartRateOnboardingViewController_primaryButtonTintColorOverride] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI50MedicationsAffectHeartRateOnboardingViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI50MedicationsAffectHeartRateOnboardingViewController_baseAutomationIdentifier];
  *v9 = 0xD000000000000030;
  v9[1] = 0x80000001BA4E33E0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI50MedicationsAffectHeartRateOnboardingViewController_healthStore] = a1;
  v4[OBJC_IVAR____TtC18HealthExperienceUI50MedicationsAffectHeartRateOnboardingViewController_actionStyle] = v7;
  type metadata accessor for MedicationsAffectHeartRateDataSource(0);
  swift_allocObject();
  v10 = a1;
  v11 = sub_1BA0AE778(v10);
  v12 = OBJC_IVAR____TtC18HealthExperienceUI50MedicationsAffectHeartRateOnboardingViewController_dataSource;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI50MedicationsAffectHeartRateOnboardingViewController_dataSource] = v11;
  type metadata accessor for MedicationsAffectHeartRateDataSourceDelegate();
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  v14 = &v4[OBJC_IVAR____TtC18HealthExperienceUI50MedicationsAffectHeartRateOnboardingViewController_dataSourceDelegate];
  *v14 = v13;
  v14[1] = &protocol witness table for MedicationsAffectHeartRateDataSourceDelegate;
  v15 = *&v4[v8];
  *&v4[v8] = a3;
  v16 = v10;
  v17 = a3;

  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  sub_1BA4A1318();
  v18 = *&v4[v12];
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_dataSourceAdaptor] = 0;
  v19 = &v4[OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_dataSource];
  *v19 = v18;
  v19[1] = &protocol witness table for MutableArrayDataSource;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_tableViewStyle] = 2;
  v4[OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_useSystemMargins] = 1;
  v4[OBJC_IVAR____TtC18HealthExperienceUI29OnboardingTableViewController_allowAnimations] = 1;

  v20 = sub_1BA4A6758();

  v21 = sub_1BA4A6758();

  v26.receiver = v4;
  v26.super_class = type metadata accessor for OnboardingTableViewController();
  v22 = objc_msgSendSuper2(&v26, sel_initWithTitle_detailText_icon_adoptTableViewScrollView_, v20, v21, 0, 1, 0xE000000000000000);

  [v22 setModalInPresentation_];
  v23 = *&v22[OBJC_IVAR____TtC18HealthExperienceUI50MedicationsAffectHeartRateOnboardingViewController_dataSourceDelegate + 8];
  v24 = *&v22[OBJC_IVAR____TtC18HealthExperienceUI50MedicationsAffectHeartRateOnboardingViewController_dataSource] + OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_delegate;
  swift_beginAccess();
  *(v24 + 8) = v23;
  swift_unknownObjectWeakAssign();
  return v22;
}

unint64_t sub_1BA002788()
{
  result = qword_1EBBE9F68;
  if (!qword_1EBBE9F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBE9F68);
  }

  return result;
}

id DynamicFontLabel.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void sub_1BA002968(void *a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI16DynamicFontLabel_textStyle;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x98))();
}

uint64_t (*sub_1BA002A00(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA002EFC;
}

uint64_t sub_1BA002A64(int a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI16DynamicFontLabel_symbolicTraits;
  v4 = swift_beginAccess();
  *(v1 + v3) = a1;
  return (*((*MEMORY[0x1E69E7D40] & *v1) + 0x98))(v4);
}

uint64_t (*sub_1BA002AE8(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA002B4C;
}

uint64_t sub_1BA002B50(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*((*MEMORY[0x1E69E7D40] & **(a1 + 24)) + 0x98))(result);
  }

  return result;
}

id DynamicFontLabel.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DynamicFontLabel.init(coder:)(void *a1)
{
  v3 = *MEMORY[0x1E69DDDC8];
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI16DynamicFontLabel_textStyle] = *MEMORY[0x1E69DDDC8];
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI16DynamicFontLabel_symbolicTraits] = 2;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for DynamicFontLabel();
  v4 = v3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id DynamicFontLabel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DynamicFontLabel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1BA002F00()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI29SharingOverviewViewController____lazy_storage___store;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29SharingOverviewViewController____lazy_storage___store);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29SharingOverviewViewController____lazy_storage___store);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E696C4F0]) initWithHealthStore_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1BA002F84(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI29SharingOverviewViewController_syncObserver;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_1BA003034(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI29SharingOverviewViewController_syncObserver;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1BA0030EC()
{
  sub_1B9F12538();
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B9F23FB0();
  type metadata accessor for SharingOverviewDataSource(0);
  v7 = swift_dynamicCastClass();
  if (!v7)
  {

    return 0;
  }

  v49 = v6;
  v50 = v7;
  v8 = *(v7 + OBJC_IVAR____TtC18HealthExperienceUI25SharingOverviewDataSource_profilesYouAreSharingWithDataSource);
  v9 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  (*(v2 + 16))(v5, v8 + v9, v1);

  v10 = sub_1BA4A4578();
  (*(v2 + 8))(v5, v1);
  v11 = *(v10 + 16);
  v12 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_sections;
  swift_beginAccess();
  if (!v11)
  {
    v15 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  v13 = 0;
  v14 = v10 + 40;
  v47 = v11 - 1;
  v15 = MEMORY[0x1E69E7CC0];
  v48 = v10 + 40;
  do
  {
    v16 = (v14 + 16 * v13);
    v17 = v13;
    while (1)
    {
      if (v17 >= *(v10 + 16))
      {
        __break(1u);
        goto LABEL_24;
      }

      v18 = *(v8 + v12);
      if (*(v18 + 16))
      {
        break;
      }

LABEL_5:
      ++v17;
      v16 += 2;
      if (v11 == v17)
      {
        goto LABEL_19;
      }
    }

    v19 = *(v16 - 1);
    v20 = *v16;

    v21 = sub_1B9F24A34(v19, v20);
    if ((v22 & 1) == 0)
    {

      goto LABEL_5;
    }

    v23 = (*(v18 + 56) + 48 * v21);
    v25 = *v23;
    v24 = v23[1];
    v26 = v23[2];
    v27 = v23[3];
    v29 = v23[4];
    v28 = v23[5];
    v42 = v25;
    v43 = v29;
    v41 = v28;
    v46 = v24;

    v44 = v26;

    v45 = v27;
    v30 = v41;

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v31 = v42;
    }

    else
    {
      v31 = v42;
      v15 = sub_1B9F21540(0, *(v15 + 2) + 1, 1, v15);
    }

    v33 = *(v15 + 2);
    v32 = *(v15 + 3);
    if (v33 >= v32 >> 1)
    {
      v15 = sub_1B9F21540((v32 > 1), v33 + 1, 1, v15);
    }

    v13 = v17 + 1;
    *(v15 + 2) = v33 + 1;
    v34 = &v15[48 * v33];
    v35 = v46;
    *(v34 + 4) = v31;
    *(v34 + 5) = v35;
    v36 = v45;
    *(v34 + 6) = v44;
    *(v34 + 7) = v36;
    *(v34 + 8) = v43;
    *(v34 + 9) = v30;
    v14 = v48;
  }

  while (v47 != v17);
LABEL_19:

  v38 = sub_1BA00A2A0(v15);

  if (v38 >> 62)
  {
LABEL_24:
    v37 = sub_1BA4A7CC8();
  }

  else
  {
    v37 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v37;
}

uint64_t SharingOverviewViewController.sidebarSelectionIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29SharingOverviewViewController_sidebarSelectionIdentifier);

  return v1;
}

uint64_t sub_1BA003534()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  return sub_1BA4A1318();
}

char *SharingOverviewViewController.__allocating_init(healthExperienceStore:healthStore:pinnedContentManager:)(void *a1, void *a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_1B9F10D68(a1, a2, a3);

  return v8;
}

uint64_t sub_1BA003648(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_1B9F0A534(a2, v12);
  sub_1B9F0A534(a4, v11);
  type metadata accessor for SharingOverviewDataSource(0);
  swift_allocObject();
  v7 = a3;
  v8 = sub_1BA15D308(v12, v7, v11);

  v11[0] = a1;
  type metadata accessor for PlatformTabCollectionViewController();
  sub_1B9F0D950(0, &qword_1EDC65F88, &protocol descriptor for ViewPendingInviteHandler);
  v9 = a1;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
  }

  sub_1BA19FD7C(v12);
  return v8;
}

void sub_1BA0037E8()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for SharingOverviewViewController();
  objc_msgSendSuper2(&v6, sel_viewDidLoad);
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() systemGroupedBackgroundColor];
    [v2 setBackgroundColor_];

    v4 = [v0 collectionView];
    if (v4)
    {
      v5 = v4;
      [v4 setAllowsFocus_];

      sub_1BA003910();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1BA003910()
{
  v1 = [v0 tabBarItem];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1;
  v3 = sub_1BA4A6AE8();
  v4 = HKUIJoinStringsForAutomationIdentifier();

  [v2 setAccessibilityIdentifier_];
  v5 = [v0 collectionView];
  if (!v5)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v6 = v5;
  v7 = sub_1BA4A6AE8();
  v8 = HKUIJoinStringsForAutomationIdentifier();

  [v6 setAccessibilityIdentifier_];
}

void sub_1BA003BC0()
{
  v1 = sub_1BA4A3678();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  (*(v2 + 104))(v5, *MEMORY[0x1E69A2C30], v1);
  v6 = sub_1BA4A35B8();

  (*(v2 + 8))(v5, v1);
  [v0 setUserActivity_];
}

void sub_1BA003D98()
{
  sub_1B9F36938();
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for HostViewCell(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_1BA00B428(0, &qword_1EDC6DDE0, type metadata accessor for HostViewCell);
    sub_1BA4A6808();
    v4 = sub_1BA4A6758();

    [v2 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v4];
  }

  else
  {
    __break(1u);
  }
}

id sub_1BA003E68(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = MEMORY[0x1E69E6720];
  sub_1B9F3D424(0, &qword_1EDC6B5B8, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v81 = &v72 - v7;
  sub_1BA00A6C8(0);
  v85 = v8;
  v84 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v82 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F3D424(0, &qword_1EDC6ACC8, MEMORY[0x1E69A2C88], v4);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v72 - v13;
  v88 = sub_1BA4A3778();
  v87 = *(v88 - 8);
  v15 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v88, v16);
  v80 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v86 = &v72 - v19;
  v20 = sub_1BA4A3EA8();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v25 = sub_1BA4A3E88();
  v26 = sub_1BA4A6F98();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = v2;
    v28 = a1;
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_1B9F07000, v25, v26, "Attempting to restore Sharing Overview View Controller from User Activity.", v29, 2u);
    v30 = v29;
    a1 = v28;
    v2 = v27;
    MEMORY[0x1BFAF43A0](v30, -1, -1);
  }

  (*(v21 + 8))(v24, v20);
  v31 = sub_1BA4A70A8();
  if (v31)
  {
    v32 = v31;
    v33 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
    [v33 setProfileIdentifier_];
    [v33 resume];
    v34 = [v32 type];
    if (v34 == 2)
    {
      sub_1B9F0A534(v2 + OBJC_IVAR____TtC18HealthExperienceUI29SharingOverviewViewController_healthExperienceStore, &v93);
      sub_1B9F0A534(v2 + OBJC_IVAR____TtC18HealthExperienceUI29SharingOverviewViewController_pinnedContentManager, v92);
      type metadata accessor for ProfileGradientsProviderFactory();
      swift_initStaticObject();
      v35 = v2;
      __swift_project_boxed_opaque_existential_1(&v93, v94);
      v36 = v33;
      v43 = sub_1BA4A1B68();
      v38 = sub_1B9FE10EC(v36, v43, MEMORY[0x1E69E7CC0]);

      sub_1B9F0A534(&v93, v91);
      sub_1B9F0A534(v92, v90);
      v44 = objc_allocWithZone(type metadata accessor for SharedProfileOverviewViewController());
      v40 = sub_1BA1E87F4(v36, v91, v38, v90);
    }

    else
    {
      if (v34 != 3)
      {

        v48 = type metadata accessor for SharingOverviewViewController();
        v95 = v2;
        v49 = &v95;
        goto LABEL_17;
      }

      sub_1B9F0A534(v2 + OBJC_IVAR____TtC18HealthExperienceUI29SharingOverviewViewController_healthExperienceStore, &v93);
      sub_1B9F0A534(v2 + OBJC_IVAR____TtC18HealthExperienceUI29SharingOverviewViewController_pinnedContentManager, v92);
      type metadata accessor for ProfileGradientsProviderFactory();
      swift_initStaticObject();
      v35 = v2;
      __swift_project_boxed_opaque_existential_1(&v93, v94);
      v36 = v33;
      v37 = sub_1BA4A1B68();
      v38 = sub_1B9FE10EC(v36, v37, MEMORY[0x1E69E7CC0]);

      sub_1B9F0A534(&v93, v91);
      sub_1B9F0A534(v92, v90);
      v39 = objc_allocWithZone(type metadata accessor for ProfileOverviewViewController());
      v40 = sub_1BA1803C4(v36, v91, v90, v38);
    }

    v45 = v40;

    __swift_destroy_boxed_opaque_existential_1(v92);
    __swift_destroy_boxed_opaque_existential_1(&v93);
    v46 = [v35 navigationController];
    if (v46)
    {
      v47 = v46;
      [v46 pushViewController:v45 animated:0];
    }

    [v45 restoreUserActivityState_];

    v48 = type metadata accessor for SharingOverviewViewController();
    v89.receiver = v35;
    v49 = &v89;
  }

  else
  {
    if (sub_1BA4A3718())
    {
      sub_1BA4A3738();
      v41 = v87;
      v42 = v88;
      if ((*(v87 + 48))(v14, 1, v88) == 1)
      {
        sub_1BA00A89C(v14, &qword_1EDC6ACC8, MEMORY[0x1E69A2C88], MEMORY[0x1E69E6720], sub_1B9F3D424);
      }

      else
      {
        v78 = a1;
        v50 = *(v41 + 32);
        v79 = v41 + 32;
        v51 = v86;
        v50(v86, v14, v42);
        v74 = v50;
        v52 = v41;
        v53 = sub_1BA002F00();
        v54 = *(v52 + 16);
        v76 = v52 + 16;
        v77 = v54;
        v55 = v80;
        v54(v80, v51, v42);
        v75 = *(v52 + 80);
        v72 = ((v75 + 16) & ~v75) + v15;
        v56 = (v75 + 16) & ~v75;
        v73 = v56;
        v57 = swift_allocObject();
        v50((v57 + v56), v55, v42);
        v58 = sub_1BA4A7668();

        v93 = v58;
        sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
        v59 = sub_1BA4A7308();
        v92[0] = v59;
        v60 = sub_1BA4A72A8();
        v61 = v81;
        (*(*(v60 - 8) + 56))(v81, 1, 1, v60);
        sub_1BA00A794(0);
        sub_1B9F114D4(&qword_1EBBE9FC8, sub_1BA00A794, MEMORY[0x1E695BED8]);
        sub_1B9F3DC80();
        v62 = v82;
        sub_1BA4A50A8();
        sub_1BA00A89C(v61, &qword_1EDC6B5B8, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720], sub_1B9F3D424);

        v63 = swift_allocObject();
        v64 = ObjectType;
        *(v63 + 16) = ObjectType;
        v65 = v86;
        v66 = v88;
        v77(v55, v86, v88);
        v67 = (v72 + 7) & 0xFFFFFFFFFFFFFFF8;
        v68 = swift_allocObject();
        v74(v68 + v73, v55, v66);
        a1 = v78;
        *(v68 + v67) = v2;
        *(v68 + ((v67 + 15) & 0xFFFFFFFFFFFFFFF8)) = v64;
        sub_1B9F114D4(&qword_1EBBE9FD0, sub_1BA00A6C8, MEMORY[0x1E695BE98]);
        v69 = v2;
        v70 = v85;
        sub_1BA4A4F88();

        (*(v84 + 8))(v62, v70);
        (*(v87 + 8))(v65, v66);
      }
    }

    v48 = type metadata accessor for SharingOverviewViewController();
    v96 = v2;
    v49 = &v96;
  }

LABEL_17:
  v49->super_class = v48;
  return [(objc_super *)v49 restoreUserActivityState:a1];
}