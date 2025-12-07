id sub_23BDB08EC(void **a1)
{
  v2 = type metadata accessor for ChanceRainTemplateModel(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ChanceRainRectangularTemplateModel(0);
  sub_23BDB1254(a1 + *(v5 + 20), v4);
  v67 = *a1;
  v6 = sub_23BDAFFA8();
  v68 = v4;
  if (v6)
  {
    if (qword_27E1C55D0 != -1)
    {
      swift_once();
    }

    v7 = qword_27E1C5B70;
    v8 = sub_23BDC66C0();
    v9 = sub_23BDC66C0();
    v10 = [v7 localizedStringForKey:v8 value:0 table:v9];

    v11 = sub_23BDC66F0();
    v13 = v12;

    v71 = v11;
    v72 = v13;
    sub_23BD97C00();
    sub_23BDC6860();

    v14 = qword_27E1C5B70;
    v15 = sub_23BDC66C0();
    v16 = sub_23BDC66C0();
    v17 = [v14 localizedStringForKey:v15 value:0 table:v16];

    v18 = sub_23BDC66F0();
    v20 = v19;

    v69 = v18;
    v70 = v20;
    sub_23BDC6860();

    v21 = sub_23BDC66C0();

    v22 = sub_23BDC66C0();

    v23 = [objc_opt_self() textProviderWithText:v21 shortText:v22];

    v24 = objc_opt_self();
    v25 = v23;
    v26 = [v24 grayColor];
    [v25 setTintColor_];
  }

  else
  {
    v27 = a1 + *(v5 + 28);
    LODWORD(v27) = v27[*(sub_23BDC6590() + 28)];
    v28 = sub_23BDC66C0();
    if (v27 == 1)
    {
      v29 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.376470588 green:0.788235294 blue:0.97254902 alpha:1.0];
      v30 = NWCGlyphPrefixedTextProvider();

      v28 = v29;
    }

    else
    {
      v30 = [objc_opt_self() textProviderWithText_];
    }

    v31 = objc_opt_self();
    v32 = [v31 systemCyanColor];
    [v30 setTintColor_];

    v33 = &v4[*(v2 + 36)];
    v35 = *v33;
    v34 = *(v33 + 1);
    v36 = sub_23BDC66C0();
    v37 = sub_23BDC66C0();
    v38 = NWKUILocalizedString();

    if (!v38)
    {
      sub_23BDC66F0();
      v38 = sub_23BDC66C0();
    }

    v71 = v35;
    v72 = v34;

    MEMORY[0x23EEBD040](0x54524F48535FLL, 0xE600000000000000);
    v39 = sub_23BDC66C0();

    v40 = sub_23BDC66C0();
    v41 = NWKUILocalizedString();

    sub_23BDC66F0();
    if (qword_27E1C55D0 != -1)
    {
      swift_once();
    }

    v42 = qword_27E1C5B70;
    v43 = sub_23BDC66C0();
    v44 = sub_23BDC66C0();
    v45 = [v42 localizedStringForKey:v43 value:0 table:v44];

    if (!v45)
    {
      sub_23BDC66F0();
      v45 = sub_23BDC66C0();
    }

    v46 = sub_23BDC66C0();

    v47 = [objc_opt_self() textProviderWithText:v38 shortText:v46];

    v48 = v47;
    v49 = [v31 whiteColor];
    [v48 setTintColor_];

    v50 = sub_23BD96820(0, &qword_27E1C5D30, 0x277CBBB88);
    sub_23BD9628C(&unk_27E1C5BA0, &unk_23BDC8CA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23BDC8C50;
    *(inited + 56) = sub_23BD96820(0, &unk_27E1C58A0, 0x277CBBBA0);
    *(inited + 64) = sub_23BD99A58(&unk_27E1C5BB0, &unk_27E1C58A0, 0x277CBBBA0);
    *(inited + 32) = v30;
    *(inited + 96) = v50;
    *(inited + 104) = sub_23BD99A58(&unk_27E1C58B0, &qword_27E1C5D30, 0x277CBBB88);
    *(inited + 72) = v48;
    v52 = v48;
    v53 = v30;
    v54 = sub_23BDC69C0();
    swift_setDeallocating();
    sub_23BD9628C(&qword_27E1C5BC0, &qword_23BDC94C0);
    swift_arrayDestroy();
    v55 = [swift_getObjCClassFromMetadata() textProviderWithFormat:v45 arguments:v54];

    v25 = v55;
  }

  sub_23BD96820(0, &qword_27E1C5BC8, 0x277D2C798);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v57 = [objc_opt_self() fullColorImageProviderWithImageViewClass_];
  sub_23BD9628C(&unk_27E1C57B0, qword_23BDC9790);
  v58 = swift_initStackObject();
  *(v58 + 16) = xmmword_23BDC8C40;
  *(v58 + 32) = sub_23BDC66F0();
  v59 = v67;
  *(v58 + 40) = v60;
  *(v58 + 48) = v59;
  v61 = v59;
  v62 = sub_23BD984E0(v58);
  swift_setDeallocating();
  sub_23BDB12B8(v58 + 32);
  sub_23BD97E68(v62);

  sub_23BD9628C(&unk_27E1C5880, &unk_23BDC97B0);
  v63 = sub_23BDC6670();

  [v57 setMetadata_];

  v64 = [objc_allocWithZone(MEMORY[0x277CBB9B0]) initWithTextProvider:v25 imageProvider:v57];
  v65 = sub_23BDB1D54();

  sub_23BDB1320(v68);
  return v65;
}

uint64_t sub_23BDB1254(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChanceRainTemplateModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BDB12B8(uint64_t a1)
{
  v2 = sub_23BD9628C(&unk_27E1C5D20, qword_23BDC8D50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BDB1320(uint64_t a1)
{
  v2 = type metadata accessor for ChanceRainTemplateModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BDB137C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_23BDB13C4(uint64_t a1, uint64_t a2)
{
  sub_23BDC69A0();
  sub_23BDC6710();
  v4 = sub_23BDC69B0();

  return sub_23BDB14D0(a1, a2, v4);
}

unint64_t sub_23BDB143C(uint64_t a1)
{
  sub_23BDC66F0();
  sub_23BDC69A0();
  sub_23BDC6710();
  v2 = sub_23BDC69B0();

  return sub_23BDB1588(a1, v2);
}

unint64_t sub_23BDB14D0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_23BDC6980())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_23BDB1588(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_23BDC66F0();
      v8 = v7;
      if (v6 == sub_23BDC66F0() && v8 == v9)
      {
        break;
      }

      v11 = sub_23BDC6980();

      if ((v11 & 1) == 0)
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

uint64_t sub_23BDB168C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_23BD9628C(&qword_27E1C5BE8, &unk_23BDC94D0);
  v34 = v4;
  result = sub_23BDC6950();
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

      sub_23BDC69A0();
      sub_23BDC6710();
      result = sub_23BDC69B0();
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

void *sub_23BDB1934()
{
  v1 = v0;
  sub_23BD9628C(&qword_27E1C5BE8, &unk_23BDC94D0);
  v2 = *v0;
  v3 = sub_23BDC6940();
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

uint64_t sub_23BDB1AA4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = *a5;
  v11 = sub_23BDB13C4(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_23BDB168C(v16, a4 & 1);
      v11 = sub_23BDB13C4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_23BDC6990();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_23BDB1934();
      v11 = v19;
    }
  }

  v21 = *a5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

void *sub_23BDB1C20()
{
  v1 = sub_23BDC66F0();
  v3 = v2;
  v4 = sub_23BDC67C0();
  v5 = [v0 metadata];
  sub_23BD9628C(&qword_27E1C5BE0, &qword_23BDC94C8);
  v6 = sub_23BDC6680();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = v6;
  sub_23BDB1AA4(v4, v1, v3, isUniquelyReferenced_nonNull_native, &v10);

  v8 = sub_23BDC6670();

  [v0 setMetadata_];

  return v0;
}

void *sub_23BDB1D54()
{
  v1 = sub_23BDC66F0();
  v3 = v2;
  v4 = sub_23BDC67E0();
  v5 = [v0 metadata];
  sub_23BD9628C(&qword_27E1C5BE0, &qword_23BDC94C8);
  v6 = sub_23BDC6680();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = v6;
  sub_23BDB1AA4(v4, v1, v3, isUniquelyReferenced_nonNull_native, &v10);

  v8 = sub_23BDC6670();

  [v0 setMetadata_];

  return v0;
}

id sub_23BDB2128(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for WeatherDataSource(0);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t type metadata accessor for WeatherDataSource(uint64_t a1)
{
  result = qword_27E1C5BF0;
  if (!qword_27E1C5BF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23BDB21EC(unint64_t a1, uint64_t a2)
{
  v3 = sub_23BDC6650();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BDC6640();
  v7 = sub_23BDC6630();
  v8 = sub_23BDC6810();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_23BD93000, v7, v8, "Migrating to widget.", v9, 2u);
    MEMORY[0x23EEBD7D0](v9, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  v10 = objc_allocWithZone(MEMORY[0x277CBBBD0]);
  v11 = sub_23BDC66C0();
  v12 = sub_23BDC66C0();
  v13 = sub_23BDC66C0();
  v14 = [v10 initWithExtensionBundleIdentifier:v11 containerBundleIdentifier:v12 kind:v13 intent:0];

  (*(a2 + 16))(a2, v14);
}

uint64_t sub_23BDB2450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24[2] = a2;
  v24[3] = a6;
  v24[1] = a5;
  v8 = sub_23BDC63A0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23BD9628C(&qword_27E1C5960, &qword_23BDC8F50);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v24 - v13;
  v15 = sub_23BDC6010();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v24 - v20;
  sub_23BDA38EC(a4, v14);
  v22 = sub_23BDC6240();
  if ((*(*(v22 - 8) + 48))(v14, 1, v22) == 1)
  {
    sub_23BD962D4(v14, &qword_27E1C5960, &qword_23BDC8F50);
    sub_23BDC6000();
  }

  else
  {
    (*((*MEMORY[0x277D85000] & *v6) + 0x130))();
    sub_23BDC5F80();
    (*(v9 + 8))(v11, v8);
    sub_23BD962D4(v14, &qword_27E1C5960, &qword_23BDC8F50);
    (*(v16 + 32))(v21, v19, v15);
  }

  sub_23BDC5FD0();
  return (*(v16 + 8))(v21, v15);
}

uint64_t sub_23BDB2734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v39 = a1;
  v36 = a3;
  v40 = a2;
  v5 = sub_23BDC6590();
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23BD9628C(&qword_27E1C5960, &qword_23BDC8F50);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v35 - v13;
  v35 = sub_23BDC6010();
  v15 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TemplateData(0);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v35 - v22;
  sub_23BDC6000();
  sub_23BDA38EC(v4 + OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_forecast, v14);
  v37 = v4;
  sub_23BD9CC98(v4 + OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_location, v8);
  sub_23BDA38EC(v14, v12);
  v24 = &v8[*(v6 + 40)];
  if (*v24 == *MEMORY[0x277CE4278])
  {
    v25 = v24[1];
    v26 = *(MEMORY[0x277CE4278] + 8);
    sub_23BD962D4(v14, &qword_27E1C5960, &qword_23BDC8F50);
    if (v25 == v26)
    {
      sub_23BD962D4(v12, &qword_27E1C5960, &qword_23BDC8F50);
      v27 = sub_23BDC6240();
      (*(*(v27 - 8) + 56))(v12, 1, 1, v27);
    }
  }

  else
  {
    sub_23BD962D4(v14, &qword_27E1C5960, &qword_23BDC8F50);
  }

  (*(v15 + 32))(v21, v17, v35);
  sub_23BDA8F64(v12, &v21[*(v18 + 20)]);
  sub_23BDB6810(v8, &v21[*(v18 + 24)], MEMORY[0x277D2C7F0]);
  sub_23BDB6810(v21, v23, type metadata accessor for TemplateData);
  v28 = swift_allocObject();
  v29 = v36;
  v30 = v37;
  v28[2] = v37;
  v28[3] = v29;
  v28[4] = v38;
  ObjectType = swift_getObjectType();
  v32 = v30;

  v33 = [v32 family];
  (*(v40 + 40))(v33, v23, sub_23BDB6964, v28, ObjectType);
  sub_23BDB6878(v23, type metadata accessor for TemplateData);
}

id sub_23BDB2B3C(uint64_t a1)
{
  v3 = sub_23BDC6010();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  sub_23BDC6000();
  (*((*MEMORY[0x277D85000] & *v1) + 0x120))(v9);
  v11 = v10;
  v12 = *(v4 + 8);
  v12(v9, v3);
  ObjectType = swift_getObjectType();
  v14 = (*(v11 + 48))(a1, ObjectType, v11);
  [v14 finalize];
  result = sub_23BDC5F80();
  if (v14)
  {
    v16 = sub_23BDC5FA0();
    v17 = [objc_opt_self() entryWithDate:v16 complicationTemplate:v14];
    swift_unknownObjectRelease();

    v12(v7, v3);
    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23BDB2EB8()
{
  (*(v0 + 256))();
  if (qword_27E1C55D0 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1C5B70;
  v2 = sub_23BDC66C0();

  v3 = sub_23BDC66C0();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = sub_23BDC66F0();
  return v5;
}

uint64_t sub_23BDB2FD0()
{
  v0 = sub_23BDC6650();
  sub_23BDB4C20(v0, qword_27E1C5C08);
  sub_23BDB4BE8(v0, qword_27E1C5C08);
  return sub_23BDC6640();
}

uint64_t sub_23BDB3050@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E1C55E8 != -1)
  {
    swift_once();
  }

  v2 = sub_23BDC6650();
  v3 = sub_23BDB4BE8(v2, qword_27E1C5C08);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id sub_23BDB30F8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v0 setDateStyle_];
  result = [v0 setTimeStyle_];
  qword_27E1C77A0 = v0;
  return result;
}

void *sub_23BDB315C(void *a1, uint64_t a2, void *a3)
{
  v7 = sub_23BDC6650();
  v43 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_switcherTemplate] = 0;
  v10 = OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_forecast;
  v11 = sub_23BDC6240();
  (*(*(v11 - 8) + 56))(&v3[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_location;
  v13 = sub_23BDC6580();
  sub_23BD9CC98(v13, &v3[v12]);
  v3[OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_isActive] = 0;
  v14 = &v3[OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_coorindateID];
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  v15 = OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_templateFormatter;
  if (qword_27E1C55F8 != -1)
  {
    swift_once();
  }

  *&v3[v15] = xmmword_27E1C77C0;
  swift_unknownObjectRetain();
  sub_23BDC5F70();
  sub_23BDC5F70();
  v16 = &v3[OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_lastCurrentDescription];
  *v16 = 0x657320726576656ELL;
  v16[1] = 0xE900000000000074;
  sub_23BDC6640();
  v17 = type metadata accessor for BaseDataSource(0);
  v45.receiver = v3;
  v45.super_class = v17;
  v18 = objc_msgSendSuper2(&v45, sel_initWithComplication_family_forDevice_, a1, a2, a3);
  v19 = a2;
  v20 = a3;
  v21 = v18;
  v22 = *((*MEMORY[0x277D85000] & *v18) + 0x190);
  v23 = v18;
  v22();
  v24 = sub_23BDC6630();
  v25 = v9;
  v26 = sub_23BDC6810();

  if (!os_log_type_enabled(v24, v26))
  {

    (*(v43 + 8))(v25, v7);
    return v23;
  }

  v39 = v25;
  v40 = a1;
  v41 = v20;
  v42 = v7;
  v27 = swift_slowAlloc();
  v28 = swift_slowAlloc();
  v29 = swift_slowAlloc();
  v44 = v29;
  *v27 = 138412546;
  *(v27 + 4) = v23;
  *v28 = v21;
  *(v27 + 12) = 2082;
  if (*MEMORY[0x277CBB668] == v19)
  {
    v30 = 0x800000023BDC8110;
    v31 = v23;
    v32 = 0xD000000000000023;
LABEL_9:
    v38 = sub_23BDB4C84(v32, v30, &v44);

    *(v27 + 14) = v38;
    _os_log_impl(&dword_23BD93000, v24, v26, "%@ initialized for %{public}s", v27, 0x16u);
    sub_23BD962D4(v28, &qword_27E1C5C90, &unk_23BDC95F0);
    MEMORY[0x23EEBD7D0](v28, -1, -1);
    sub_23BD9CD40(v29);
    MEMORY[0x23EEBD7D0](v29, -1, -1);
    MEMORY[0x23EEBD7D0](v27, -1, -1);

    (*(v43 + 8))(v39, v42);
    return v23;
  }

  v33 = v23;
  result = CLKStringForComplicationFamily();
  if (result)
  {
    v35 = result;
    v36 = sub_23BDC66F0();
    v30 = v37;

    v32 = v36;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_23BDB3808(void *a1, uint64_t a2, unint64_t a3, void *a4, void (*a5)(id), uint64_t a6)
{
  v53 = a6;
  v54 = a5;
  v10 = sub_23BDC6650();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23BDC6010();
  result = MEMORY[0x28223BE20](v14);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v48 = v11;
    v49 = v10;
    v50 = v16;
    v51 = result;
    v52 = a2;
    v19 = a1;
    [v19 finalize];
    sub_23BDC6000();
    v20 = v19;
    v21 = sub_23BDC5FA0();
    v46 = [objc_opt_self() entryWithDate:v21 complicationTemplate:v20];
    v47 = v20;

    if (qword_27E1C55F0 != -1)
    {
      swift_once();
    }

    v22 = qword_27E1C77A0;
    v23 = sub_23BDC5FA0();
    v24 = [v22 stringFromDate_];

    v25 = sub_23BDC66F0();
    v27 = v26;

    (*((*MEMORY[0x277D85000] & *a4) + 0x190))();
    v28 = a4;

    v29 = sub_23BDC6630();
    v30 = sub_23BDC6810();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v45 = v13;
      v32 = v31;
      v44 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v33 = v25;
      v34 = v55;
      *v32 = 136447235;
      v35 = sub_23BDB4C84(v33, v27, &v55);

      *(v32 + 4) = v35;
      *(v32 + 12) = 2082;
      if (*(v28 + OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_isActive))
      {
        v36 = 0x657669746361;
      }

      else
      {
        v36 = 0x4954434120544F4ELL;
      }

      if (*(v28 + OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_isActive))
      {
        v37 = 0xE600000000000000;
      }

      else
      {
        v37 = 0xEA00000000004556;
      }

      v38 = sub_23BDB4C84(v36, v37, &v55);

      *(v32 + 14) = v38;
      *(v32 + 22) = 2081;
      *(v32 + 24) = sub_23BDB4C84(*(v28 + OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_coorindateID), *(v28 + OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_coorindateID + 8), &v55);
      *(v32 + 32) = 2082;
      v39 = v52;
      *(v32 + 34) = sub_23BDB4C84(v52, a3, &v55);
      *(v32 + 42) = 2114;
      *(v32 + 44) = v28;
      v40 = v44;
      *v44 = a4;
      v41 = v28;
      _os_log_impl(&dword_23BD93000, v29, v30, "getCurrentTimelineEntry (date: %{public}s, active: %{public}s, location: %{private}s, description: %{public}s,\nself: %{public}@", v32, 0x34u);
      sub_23BD962D4(v40, &qword_27E1C5C90, &unk_23BDC95F0);
      MEMORY[0x23EEBD7D0](v40, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x23EEBD7D0](v34, -1, -1);
      MEMORY[0x23EEBD7D0](v32, -1, -1);

      (*(v48 + 8))(v45, v49);
    }

    else
    {

      (*(v48 + 8))(v13, v49);
      v39 = v52;
    }

    v42 = (v28 + OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_lastCurrentDescription);
    *v42 = v39;
    v42[1] = a3;

    v43 = v46;
    v54(v46);

    return (*(v50 + 8))(v18, v51);
  }

  return result;
}

void sub_23BDB3D44(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
  _Block_release(v6);
}

uint64_t sub_23BDB3DC0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v51 = a2;
  v52 = a4;
  v50 = a3;
  v54 = sub_23BDC6590() - 8;
  MEMORY[0x28223BE20](v54);
  v49 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23BD9628C(&qword_27E1C5960, &qword_23BDC8F50);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v47 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v46 = &v45 - v9;
  v56 = type metadata accessor for TemplateData(0);
  v10 = MEMORY[0x28223BE20](v56);
  v57 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v58 = &v45 - v12;
  v13 = sub_23BDC6010();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v45 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v45 - v17;
  v19 = *(v14 + 16);
  v19(&v45 - v17, a1, v13);
  v20 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v21 = (v15 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  v24 = *(v14 + 32);
  v25 = v23 + v20;
  v26 = v50;
  v53 = v14 + 32;
  v48 = v24;
  v24(v25, v18, v13);
  *(v23 + v21) = v51;
  v27 = v52;
  *(v23 + v22) = v26;
  v28 = v45;
  v55 = a1;
  v29 = a1;
  v30 = v46;
  v19(v45, v29, v13);
  v31 = v47;
  v32 = v49;
  sub_23BDA38EC(v27 + OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_forecast, v30);
  sub_23BD9CC98(v27 + OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_location, v32);
  sub_23BDA38EC(v30, v31);
  v33 = (v32 + *(v54 + 40));
  if (*v33 == *MEMORY[0x277CE4278])
  {
    v34 = v33[1];
    v35 = *(MEMORY[0x277CE4278] + 8);

    sub_23BD962D4(v30, &qword_27E1C5960, &qword_23BDC8F50);
    if (v34 == v35)
    {
      sub_23BD962D4(v31, &qword_27E1C5960, &qword_23BDC8F50);
      v36 = sub_23BDC6240();
      (*(*(v36 - 8) + 56))(v31, 1, 1, v36);
    }
  }

  else
  {

    sub_23BD962D4(v30, &qword_27E1C5960, &qword_23BDC8F50);
  }

  v37 = v57;
  v48(v57, v28, v13);
  v38 = v56;
  sub_23BDA8F64(v31, &v37[*(v56 + 20)]);
  sub_23BDB6810(v32, &v37[*(v38 + 24)], MEMORY[0x277D2C7F0]);
  v39 = v37;
  v40 = v58;
  sub_23BDB6810(v39, v58, type metadata accessor for TemplateData);
  (*((*MEMORY[0x277D85000] & *v27) + 0x120))(v55);
  v42 = v41;
  ObjectType = swift_getObjectType();
  (*(v42 + 40))([v27 family], v40, sub_23BDB6750, v23, ObjectType, v42);
  swift_unknownObjectRelease();
  sub_23BDB6878(v40, type metadata accessor for TemplateData);
}

void sub_23BDB430C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    v10 = a1;
    [v10 finalize];
    v11 = v10;
    v12 = sub_23BDC5FA0();
    v13 = [objc_opt_self() entryWithDate:v12 complicationTemplate:v11];

    if (qword_27E1C55F0 != -1)
    {
      swift_once();
    }

    v14 = qword_27E1C77A0;
    v15 = sub_23BDC5FA0();
    v16 = [v14 stringFromDate_];

    v17 = sub_23BDC66F0();
    v19 = v18;

    MEMORY[0x23EEBD040](v17, v19);

    MEMORY[0x23EEBD040](8236, 0xE200000000000000);
    MEMORY[0x23EEBD040](a2, a3);
    MEMORY[0x23EEBD040](41, 0xE100000000000000);
    swift_beginAccess();
    v20 = *(a5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a5 + 16) = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_23BDA1B20(0, *(v20 + 2) + 1, 1, v20);
      *(a5 + 16) = v20;
    }

    v23 = *(v20 + 2);
    v22 = *(v20 + 3);
    if (v23 >= v22 >> 1)
    {
      v20 = sub_23BDA1B20((v22 > 1), v23 + 1, 1, v20);
    }

    *(v20 + 2) = v23 + 1;
    v24 = &v20[16 * v23];
    *(v24 + 4) = 40;
    *(v24 + 5) = 0xE100000000000000;
    *(a5 + 16) = v20;
    swift_endAccess();
    swift_beginAccess();
    v25 = v13;
    MEMORY[0x23EEBD070]();
    if (*((*(a6 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a6 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23BDC6790();
    }

    sub_23BDC67A0();
    swift_endAccess();
  }
}

id sub_23BDB4890()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseDataSource(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for BaseDataSource(uint64_t a1)
{
  result = qword_27E1C5C58;
  if (!qword_27E1C5C58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23BDB4A84(uint64_t a1)
{
  sub_23BDA9FA4(319);
  if (v1 <= 0x3F)
  {
    sub_23BDC6590();
    if (v2 <= 0x3F)
    {
      sub_23BDC6010();
      if (v3 <= 0x3F)
      {
        sub_23BDC6650();
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_23BDB4BE8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_23BDB4C20(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_23BDB4C84(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23BDB4D50(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_23BDB6648(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_23BD9CD40(v11);
  return v7;
}

unint64_t sub_23BDB4D50(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_23BDB4E5C(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_23BDC68D0();
    a6 = v11;
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

void *sub_23BDB4E5C(uint64_t a1, unint64_t a2)
{
  v3 = sub_23BDB4EA8(a1, a2);
  sub_23BDB4FD8(&unk_284E8CEE0);
  return v3;
}

void *sub_23BDB4EA8(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_23BDB50C4(v5, 0);
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

  result = sub_23BDC68D0();
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
        v10 = sub_23BDC6740();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23BDB50C4(v10, 0);
        result = sub_23BDC68A0();
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

uint64_t sub_23BDB4FD8(uint64_t result)
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

  result = sub_23BDB5138(result, v11, 1, v3);
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

void *sub_23BDB50C4(uint64_t a1, uint64_t a2)
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

  sub_23BD9628C(&qword_27E1C5C88, &unk_23BDC95E0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23BDB5138(char *result, int64_t a2, char a3, char *a4)
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
    sub_23BD9628C(&qword_27E1C5C88, &unk_23BDC95E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

uint64_t sub_23BDB522C()
{
  if (qword_27E1C55D0 != -1)
  {
    swift_once();
  }

  v0 = qword_27E1C5B70;
  v1 = sub_23BDC66C0();
  v2 = sub_23BDC66C0();
  v3 = [v0 localizedStringForKey:v1 value:0 table:v2];

  v4 = sub_23BDC66F0();
  return v4;
}

void sub_23BDB531C(void *a1, void (**a2)(void, void))
{
  v4 = sub_23BDC6010();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  _Block_copy(a2);
  sub_23BDC6000();
  v9 = (*((*MEMORY[0x277D85000] & *a1) + 0x120))(v7);
  v11 = v10;
  (*(v5 + 8))(v7, v4);
  if (byte_27E1C5C00 == 1)
  {
    v12 = sub_23BDB2B3C([a1 family]);
    (a2)[2](a2, v12);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_23BDB2734(v9, v11, sub_23BDB6910, v8);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_23BDB54F4(void *a1, uint64_t a2)
{
  v53 = a2;
  v3 = sub_23BDC6650();
  v50 = *(v3 - 8);
  v51 = v3;
  MEMORY[0x28223BE20](v3);
  v52 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23BDC6590();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23BDC63A0();
  v49 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23BD9628C(&qword_27E1C5960, &qword_23BDC8F50);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v47 - v12;
  v14 = sub_23BDC6010();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v47 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v47 - v22;
  if (byte_27E1C5C00 == 1)
  {
    v24 = sub_23BDB2B3C([a1 family]);
    v25 = [v24 date];

    sub_23BDC5FF0();
    v21 = v23;
  }

  else
  {
    sub_23BDA38EC(a1 + OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_forecast, v13);
    v26 = sub_23BDC6240();
    v27 = (*(*(v26 - 8) + 48))(v13, 1, v26);
    v28 = sub_23BD962D4(v13, &qword_27E1C5960, &qword_23BDC8F50);
    if (v27)
    {
      v29 = MEMORY[0x277D85000];
      sub_23BDC6000();
    }

    else
    {
      v29 = MEMORY[0x277D85000];
      (*((*MEMORY[0x277D85000] & *a1) + 0x130))(v28);
      sub_23BDC5F80();
      (*(v49 + 8))(v10, v8);
      (*(v15 + 32))(v21, v18, v14);
    }

    if (qword_27E1C55F0 != -1)
    {
      swift_once();
    }

    v30 = qword_27E1C77A0;
    v31 = sub_23BDC5FA0();
    v32 = [v30 stringFromDate_];

    v49 = sub_23BDC66F0();
    v34 = v33;

    sub_23BD9CC98(a1 + OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_location, v7);
    v48 = sub_23BDC6560();
    v36 = v35;
    v37 = sub_23BDB6878(v7, MEMORY[0x277D2C7F0]);
    v38 = v52;
    (*((*v29 & *a1) + 0x190))(v37);

    v39 = sub_23BDC6630();
    v40 = sub_23BDC6800();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v54 = v42;
      *v41 = 136315394;
      v43 = sub_23BDB4C84(v49, v34, &v54);

      *(v41 + 4) = v43;
      *(v41 + 12) = 2080;
      v44 = sub_23BDB4C84(v48, v36, &v54);

      *(v41 + 14) = v44;
      _os_log_impl(&dword_23BD93000, v39, v40, "Timeline end date: %s for location: %s", v41, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEBD7D0](v42, -1, -1);
      MEMORY[0x23EEBD7D0](v41, -1, -1);

      (*(v50 + 8))(v52, v51);
    }

    else
    {

      (*(v50 + 8))(v38, v51);
    }
  }

  v45 = sub_23BDC5FA0();
  (*(v53 + 16))(v53, v45);

  return (*(v15 + 8))(v21, v14);
}

void sub_23BDB5B84(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_23BDC6650();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v76 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v76 - v14;
  v16 = sub_23BD9628C(&qword_27E1C5960, &qword_23BDC8F50);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v76 - v17;
  v19 = sub_23BDC6590();
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (byte_27E1C5C00 == 1)
  {
    sub_23BD9628C(&qword_27E1C5C80, qword_23BDC9A30);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_23BDC9560;
    *(v22 + 32) = sub_23BDB2B3C([a2 family]);
    sub_23BDB65B4();
    v85 = sub_23BDC6770();
    (*(a3 + 16))(a3, v85);

    v23 = v85;
  }

  else
  {
    v76 = v10;
    v77 = v13;
    v85 = v7;
    v79 = v6;
    v80 = a3;
    v24 = swift_allocObject();
    v25 = MEMORY[0x277D84F90];
    *(v24 + 16) = MEMORY[0x277D84F90];
    v82 = (v24 + 16);
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    v81 = (v26 + 16);
    v27 = swift_allocObject();
    v27[2] = v26;
    v27[3] = v24;
    v27[4] = a2;
    v83 = v26;

    v28 = a2;
    v29 = [v28 family];
    sub_23BD9CC98(v28 + OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_location, v21);
    sub_23BDA38EC(v28 + OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_forecast, v18);
    v30 = *((*MEMORY[0x277D85000] & *v28) + 0x1B0);

    v30(v29, a1, v21, v18, sub_23BDB65A8, v27);
    sub_23BD962D4(v18, &qword_27E1C5960, &qword_23BDC8F50);
    sub_23BDB6878(v21, MEMORY[0x277D2C7F0]);
    v78 = v27;

    v32 = *((*MEMORY[0x277D85000] & *v28) + 0x190);
    v32(v31);

    v33 = sub_23BDC6630();
    v34 = sub_23BDC6810();
    v35 = os_log_type_enabled(v33, v34);
    v84 = v24;
    if (v35)
    {
      v36 = swift_slowAlloc();
      *v36 = 134349056;
      v37 = v82;
      swift_beginAccess();
      if (*v37 >> 62)
      {
        v38 = sub_23BDC6930();
      }

      else
      {
        v38 = *((*v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v39 = v79;
      *(v36 + 4) = v38;
      v40 = v85;

      _os_log_impl(&dword_23BD93000, v33, v34, "getTimelineEntries added %{public}ld entries.", v36, 0xCu);
      MEMORY[0x23EEBD7D0](v36, -1, -1);
    }

    else
    {

      v39 = v79;
      v40 = v85;
    }

    v43 = *(v40 + 8);
    v42 = v40 + 8;
    v41 = v43;
    v43(v15, v39);
    v44 = v81;
    v45 = swift_beginAccess();
    v46 = *v44;
    v47 = (*v44 + 16);
    v48 = *v47;
    if (*v47 < 0xD)
    {
      v65 = v76;
      v32(v45);

      v66 = sub_23BDC6630();
      v67 = sub_23BDC67F0();

      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v86[0] = v69;
        *v68 = 136446210;
        v79 = v41;
        v87 = *v81;

        sub_23BD9628C(&qword_27E1C5A08, &qword_23BDC8F58);
        sub_23BDB6600(&qword_27E1C5A10, &qword_27E1C5A08, &qword_23BDC8F58, MEMORY[0x277D83958]);
        v70 = sub_23BDC66A0();
        v72 = v71;

        v73 = sub_23BDB4C84(v70, v72, v86);

        *(v68 + 4) = v73;
        _os_log_impl(&dword_23BD93000, v66, v67, "getTimeLineEntries: [%{public}s]", v68, 0xCu);
        sub_23BD9CD40(v69);
        MEMORY[0x23EEBD7D0](v69, -1, -1);
        MEMORY[0x23EEBD7D0](v68, -1, -1);

        v79(v76, v39);
      }

      else
      {

        v41(v65, v39);
      }
    }

    else
    {
      v79 = v41;
      v85 = v42;
      v49 = &v47[2 * v48];
      v50 = v49[1];
      v81 = *v49;

      v52 = v77;
      v32(v51);
      v53 = v52;

      swift_unknownObjectRetain();
      v54 = sub_23BDC6630();
      v55 = sub_23BDC67F0();

      swift_unknownObjectRelease();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = 12;
        if (v48 < v48 - 12)
        {
          v56 = 0;
        }

        v57 = (2 * v56) | 1;
        v58 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v86[3] = v57;
        v87 = v76;
        *v58 = 136446466;
        v86[0] = v46;
        v86[1] = v46 + 32;
        v86[2] = 0;
        sub_23BD9628C(&qword_27E1C5C70, &unk_23BDC95D0);
        sub_23BDB6600(&qword_27E1C5C78, &qword_27E1C5C70, &unk_23BDC95D0, MEMORY[0x277D83FA0]);
        v59 = sub_23BDC66A0();
        v61 = sub_23BDB4C84(v59, v60, &v87);

        *(v58 + 4) = v61;
        *(v58 + 12) = 2082;
        v62 = sub_23BDB4C84(v81, v50, &v87);

        *(v58 + 14) = v62;
        _os_log_impl(&dword_23BD93000, v54, v55, "getTimeLineEntries: [%{public}s, …, %{public}s]", v58, 0x16u);
        v63 = v76;
        swift_arrayDestroy();
        MEMORY[0x23EEBD7D0](v63, -1, -1);
        MEMORY[0x23EEBD7D0](v58, -1, -1);
        swift_unknownObjectRelease();

        v64 = v77;
      }

      else
      {

        swift_unknownObjectRelease();
        v64 = v53;
      }

      v79(v64, v39);
    }

    v74 = v80;
    swift_beginAccess();
    sub_23BDB65B4();

    v75 = sub_23BDC6770();
    (*(v74 + 16))(v74, v75);
  }
}

uint64_t sub_23BDB6528()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23BDB6560()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_23BDB65B4()
{
  result = qword_27E1C5C68;
  if (!qword_27E1C5C68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1C5C68);
  }

  return result;
}

uint64_t sub_23BDB6600(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_23BD9B8CC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23BDB6648(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23BDB66A4()
{
  v1 = sub_23BDC6010();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

void sub_23BDB6750(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_23BDC6010() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v3 + v9);
  v11 = *(v3 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_23BDB430C(a1, a2, a3, v3 + v8, v10, v11);
}

uint64_t sub_23BDB6810(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23BDB6878(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23BDB68D8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23BDB6924()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23BDB6974(uint64_t a1)
{
  v2 = v1;
  v3 = *sub_23BDC65E0();
  v4 = type metadata accessor for WeatherTemplateModel(0);
  v5 = v4[6];
  v6 = *(*v3 + 152);

  v7 = v6(v2 + v5, 1, 2);
  v8 = v6(v2 + v4[8], 1, 2);
  v10 = v9;
  v11 = v6(v2 + v4[9], 1, 2);
  v13 = v12;
  MEMORY[0x23EEBD040](540690464, 0xE400000000000000);
  MEMORY[0x23EEBD040](v8, v10);

  MEMORY[0x23EEBD040](0x203A4C202CLL, 0xE500000000000000);
  MEMORY[0x23EEBD040](v11, v13);

  return v7;
}

uint64_t sub_23BDB6ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v133 = a2;
  v3 = sub_23BD9628C(&qword_27E1C59F0, &unk_23BDC8F30);
  MEMORY[0x28223BE20](v3 - 8);
  v132 = &v113 - v4;
  v118 = sub_23BDC6590();
  MEMORY[0x28223BE20](v118);
  v130 = &v113 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23BD9628C(&qword_27E1C5790, &unk_23BDC92E0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v129 = &v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v128 = &v113 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v131 = &v113 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v126 = &v113 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v140 = &v113 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v124 = &v113 - v18;
  MEMORY[0x28223BE20](v17);
  v139 = &v113 - v19;
  v117 = sub_23BDC6430();
  v115 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v114 = &v113 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_23BD9628C(&qword_27E1C5CA0, &unk_23BDC9650);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v113 - v22;
  v123 = sub_23BDC6350();
  v134 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v116 = &v113 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_23BDC6240();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v113 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_23BD9628C(&qword_27E1C5B18, &unk_23BDC92F0);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v125 = &v113 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v120 = &v113 - v33;
  MEMORY[0x28223BE20](v32);
  v141 = &v113 - v34;
  v35 = sub_23BD9628C(&qword_27E1C5660, &qword_23BDC89F0);
  MEMORY[0x28223BE20](v35 - 8);
  v37 = &v113 - v36;
  v38 = sub_23BD9628C(&qword_27E1C5960, &qword_23BDC8F50);
  MEMORY[0x28223BE20](v38 - 8);
  v40 = &v113 - v39;
  v41 = sub_23BDC6010();
  v42 = MEMORY[0x28223BE20](v41);
  v138 = &v113 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v127 = v44;
  v45 = *(v44 + 16);
  v137 = &v113 - v46;
  v135 = v47;
  v122 = v44 + 16;
  v121 = v45;
  v45();
  v48 = type metadata accessor for TemplateData(0);
  v49 = *(v48 + 20);
  v119 = a1;
  sub_23BD96394(a1 + v49, v40, &qword_27E1C5960, &qword_23BDC8F50);
  v50 = *(v26 + 48);
  v51 = v50(v40, 1, v25);
  v136 = v40;
  if (v51)
  {
    v52 = sub_23BDC6280();
    (*(*(v52 - 8) + 56))(v37, 1, 1, v52);
LABEL_4:
    sub_23BD962D4(v37, &qword_27E1C5660, &qword_23BDC89F0);
    v54 = v136;
    sub_23BD962D4(v136, &qword_27E1C5960, &qword_23BDC8F50);
    (*(v26 + 56))(v54, 1, 1, v25);
    goto LABEL_5;
  }

  sub_23BDC6210();
  v53 = sub_23BDC6280();
  if ((*(*(v53 - 8) + 48))(v37, 1, v53) == 1)
  {
    goto LABEL_4;
  }

  sub_23BD962D4(v37, &qword_27E1C5660, &qword_23BDC89F0);
  v54 = v136;
LABEL_5:
  if (v50(v54, 1, v25))
  {
    v55 = sub_23BDC6110();
    (*(*(v55 - 8) + 56))(v141, 1, 1, v55);
  }

  else
  {
    (*(v26 + 16))(v28, v54, v25);
    sub_23BDC61C0();
    (*(v26 + 8))(v28, v25);
  }

  if (v50(v54, 1, v25))
  {
    v146 = 0;
    memset(v145, 0, sizeof(v145));
  }

  else
  {
    (*(v26 + 16))(v28, v54, v25);
    sub_23BDC6200();
    (*(v26 + 8))(v28, v25);
  }

  v56 = v123;
  v119 += *(v48 + 24);
  LODWORD(v123) = sub_23BDC6820();
  if (v50(v54, 1, v25))
  {
    (*(v134 + 56))(v23, 1, 1, v56);
    v57 = v125;
    v58 = v124;
LABEL_14:
    sub_23BD962D4(v23, &qword_27E1C5CA0, &unk_23BDC9650);
    v118 = 0;
    v117 = 0;
    goto LABEL_15;
  }

  sub_23BDC6220();
  v59 = v134;
  v60 = (*(v134 + 48))(v23, 1, v56);
  v57 = v125;
  v58 = v124;
  if (v60 == 1)
  {
    goto LABEL_14;
  }

  v97 = v116;
  (*(v59 + 32))(v116, v23, v56);
  if (sub_23BDC6300())
  {
    if (qword_27E1C55D0 != -1)
    {
      swift_once();
    }

    v98 = qword_27E1C5B70;
    v99 = sub_23BDC66C0();
    v100 = sub_23BDC66C0();
    v101 = [v98 localizedStringForKey:v99 value:0 table:v100];

    v118 = sub_23BDC66F0();
    sub_23BD9628C(&unk_27E1C5BA0, &unk_23BDC8CA0);
    v102 = swift_allocObject();
    *(v102 + 16) = xmmword_23BDC8C50;
    v142[0] = sub_23BDC6330();
    sub_23BD9CD8C();
    v103 = sub_23BDC6870();
    v105 = v104;
    v106 = MEMORY[0x277D837D0];
    *(v102 + 56) = MEMORY[0x277D837D0];
    v107 = sub_23BD97C54();
    *(v102 + 64) = v107;
    *(v102 + 32) = v103;
    *(v102 + 40) = v105;
    v108 = v114;
    sub_23BDC6320();
    v109 = sub_23BDC63F0();
    v111 = v110;
    (*(v115 + 8))(v108, v117);
    *(v102 + 96) = v106;
    *(v102 + 104) = v107;
    v97 = v116;
    *(v102 + 72) = v109;
    *(v102 + 80) = v111;
    v118 = sub_23BDC6700();
    v117 = v112;

    v59 = v134;
  }

  else
  {
    v118 = 0;
    v117 = 0;
  }

  (*(v59 + 8))(v97, v56);
LABEL_15:
  v61 = *sub_23BDC65E0();
  sub_23BD96394(v145, v142, &qword_27E1C59A8, &unk_23BDC8EC0);
  v62 = v143;
  if (v143)
  {
    v63 = v144;
    sub_23BD9CCFC(v142, v143);
    v64 = *(v63 + 88);

    v64(v62, v63);
    v65 = sub_23BD9628C(&qword_27E1C5798, &unk_23BDC8D40);
    (*(*(v65 - 8) + 56))(v58, 0, 1, v65);
    sub_23BD9CD40(v142);
  }

  else
  {

    sub_23BD962D4(v142, &qword_27E1C59A8, &unk_23BDC8EC0);
    v66 = sub_23BD9628C(&qword_27E1C5798, &unk_23BDC8D40);
    (*(*(v66 - 8) + 56))(v58, 1, 1, v66);
  }

  v67 = *(*v61 + 176);
  v67(v58);
  sub_23BD962D4(v58, &qword_27E1C5790, &unk_23BDC92E0);
  v68 = v120;
  sub_23BD96394(v141, v120, &qword_27E1C5B18, &unk_23BDC92F0);
  v69 = sub_23BDC6110();
  v70 = *(v69 - 8);
  v71 = *(v70 + 48);
  if (v71(v68, 1, v69) == 1)
  {
    sub_23BD962D4(v68, &qword_27E1C5B18, &unk_23BDC92F0);
    v72 = 1;
    v73 = v126;
  }

  else
  {
    v73 = v126;
    sub_23BDC60E0();
    (*(v70 + 8))(v68, v69);
    v72 = 0;
  }

  v74 = sub_23BD9628C(&qword_27E1C5798, &unk_23BDC8D40);
  (*(*(v74 - 8) + 56))(v73, v72, 1, v74);
  v67(v73);
  sub_23BD962D4(v73, &qword_27E1C5790, &unk_23BDC92E0);
  sub_23BD96394(v141, v57, &qword_27E1C5B18, &unk_23BDC92F0);
  if (v71(v57, 1, v69) == 1)
  {
    sub_23BD962D4(v57, &qword_27E1C5B18, &unk_23BDC92F0);
    v75 = 1;
    v76 = v130;
    v77 = v129;
    v78 = v128;
  }

  else
  {
    v78 = v128;
    sub_23BDC60D0();
    (*(v70 + 8))(v57, v69);
    v75 = 0;
    v76 = v130;
    v77 = v129;
  }

  v79 = sub_23BD9628C(&qword_27E1C5798, &unk_23BDC8D40);
  (*(*(v79 - 8) + 56))(v78, v75, 1, v79);
  v80 = v131;
  v67(v78);
  sub_23BD962D4(v78, &qword_27E1C5790, &unk_23BDC92E0);
  v81 = v137;
  v82 = v135;
  (v121)(v138, v137, v135);
  sub_23BD9CC98(v119, v76);
  v83 = v139;
  sub_23BD96394(v139, v77, &qword_27E1C5790, &unk_23BDC92E0);
  sub_23BD96394(v145, v142, &qword_27E1C59A8, &unk_23BDC8EC0);
  v84 = v143;
  if (v143)
  {
    v85 = v83;
    v86 = v144;
    sub_23BD9CCFC(v142, v143);
    v87 = v132;
    (*(v86 + 40))(v84, v86);

    v88 = v85;
    v82 = v135;
    sub_23BD962D4(v88, &qword_27E1C5790, &unk_23BDC92E0);
    sub_23BD962D4(v145, &qword_27E1C59A8, &unk_23BDC8EC0);
    sub_23BD962D4(v141, &qword_27E1C5B18, &unk_23BDC92F0);
    v89 = v127;
    (*(v127 + 8))(v81, v82);
    v90 = sub_23BDC62F0();
    (*(*(v90 - 8) + 56))(v87, 0, 1, v90);
    sub_23BD9CD40(v142);
  }

  else
  {

    sub_23BD962D4(v83, &qword_27E1C5790, &unk_23BDC92E0);
    sub_23BD962D4(v145, &qword_27E1C59A8, &unk_23BDC8EC0);
    sub_23BD962D4(v141, &qword_27E1C5B18, &unk_23BDC92F0);
    v89 = v127;
    (*(v127 + 8))(v81, v82);
    sub_23BD962D4(v142, &qword_27E1C59A8, &unk_23BDC8EC0);
    v91 = sub_23BDC62F0();
    v87 = v132;
    (*(*(v91 - 8) + 56))(v132, 1, 1, v91);
  }

  v92 = v133;
  (*(v89 + 32))(v133, v138, v82);
  v93 = type metadata accessor for WeatherTemplateModel(0);
  sub_23BDA8FD4(v76, v92 + v93[5]);
  sub_23BDA1D38(v77, v92 + v93[6], &qword_27E1C5790, &unk_23BDC92E0);
  sub_23BDA1D38(v87, v92 + v93[7], &qword_27E1C59F0, &unk_23BDC8F30);
  sub_23BDA1D38(v140, v92 + v93[8], &qword_27E1C5790, &unk_23BDC92E0);
  sub_23BDA1D38(v80, v92 + v93[9], &qword_27E1C5790, &unk_23BDC92E0);
  v94 = (v92 + v93[10]);
  v95 = v117;
  *v94 = v118;
  v94[1] = v95;
  *(v92 + v93[11]) = v123 & 1;
  return sub_23BD962D4(v136, &qword_27E1C5960, &qword_23BDC8F50);
}

unint64_t sub_23BDB7DF4(uint64_t a1)
{
  result = sub_23BDB7E1C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23BDB7E1C()
{
  result = qword_27E1C5C98;
  if (!qword_27E1C5C98)
  {
    type metadata accessor for WeatherTemplateModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C5C98);
  }

  return result;
}

uint64_t type metadata accessor for WeatherTemplateModel(uint64_t a1)
{
  result = qword_27E1C5CA8;
  if (!qword_27E1C5CA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BDB7ED4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_23BDC6010();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_23BDC6590();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_23BD9628C(&qword_27E1C5790, &unk_23BDC92E0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_23BD9628C(&qword_27E1C59F0, &unk_23BDC8F30);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[10] + 8);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  v18 = v17 - 1;
  if (v18 < 0)
  {
    v18 = -1;
  }

  return (v18 + 1);
}

uint64_t sub_23BDB80AC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_23BDC6010();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_23BDC6590();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = sub_23BD9628C(&qword_27E1C5790, &unk_23BDC92E0);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = sub_23BD9628C(&qword_27E1C59F0, &unk_23BDC8F30);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[10] + 8) = a2;
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[7];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_23BDB8260(uint64_t a1)
{
  sub_23BDC6010();
  if (v1 <= 0x3F)
  {
    sub_23BDC6590();
    if (v2 <= 0x3F)
    {
      sub_23BDAE518(319);
      if (v3 <= 0x3F)
      {
        sub_23BDAE4C0(319);
        if (v4 <= 0x3F)
        {
          sub_23BDB8340();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_23BDB8340()
{
  if (!qword_27E1C59D0)
  {
    v0 = sub_23BDC6850();
    if (!v1)
    {
      atomic_store(v0, &qword_27E1C59D0);
    }
  }
}

uint64_t sub_23BDB8390()
{
  type metadata accessor for ChanceRainTemplateFormatter();
  v0 = swift_allocObject();
  *(v0 + 16) = *sub_23BDC6620();
  strcpy((v0 + 24), "umbrella.fill");
  *(v0 + 38) = -4864;
  v2 = sub_23BDBA1AC(&unk_27E1C5CF0, v1, type metadata accessor for ChanceRainTemplateFormatter, &unk_23BDC96AC);
  *&xmmword_27E1C77C0 = v0;
  *(&xmmword_27E1C77C0 + 1) = v2;
}

void sub_23BDB8444()
{
  v0 = [objc_opt_self() currentDevice];
  if (v0)
  {
    v1 = v0;
    v2 = objc_allocWithZone(MEMORY[0x277CBBAF8]);
    v3 = v1;
    v4 = [v2 initWithDevice:v3 identitySizeClass:2];

    [v4 scaledValue_];
    v6 = v5;
    [v4 scaledValue_];
    v8 = v7;
    CLKComplicationGraphicExtraLargeCircularScalingFactor();
    v10 = v9;

    qword_27E1C5CB8 = *&v6;
    qword_27E1C5CC0 = *&v8;
    *&qword_27E1C5CC8 = v6 * v10;
    *&qword_27E1C5CD0 = v8 * v10;
  }

  else
  {
    __break(1u);
  }
}

id sub_23BDB8548(uint64_t a1)
{

  v1 = sub_23BDC66C0();

  v2 = [objc_opt_self() symbolImageProviderWithSystemName_];

  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 systemCyanColor];
  [v4 setTintColor_];

  type metadata accessor for ChanceRainTemplateModel(0);
  v6 = sub_23BDC66C0();
  v7 = [objc_opt_self() textProviderWithText_];

  v8 = objc_allocWithZone(MEMORY[0x277CBBA90]);
  v9 = v7;
  v10 = [v8 initWithTextProvider:v9 imageProvider:v4];

  return v10;
}

id sub_23BDB86C4(uint64_t a1)
{

  v3 = sub_23BDC66C0();

  v4 = [objc_opt_self() symbolImageProviderWithSystemName_];

  v5 = objc_opt_self();
  v6 = [v5 systemCyanColor];
  [v4 setTintColor_];

  v7 = [v5 whiteColor];
  [v4 setTintColor_];

  v8 = type metadata accessor for ChanceRainTemplateModel(0);
  v9 = sub_23BDC66C0();
  v10 = [objc_opt_self() textProviderWithText_];

  v11 = (*(**(v1 + 16) + 184))(*(a1 + *(v8 + 24)), *(a1 + *(v8 + 24) + 8), *(a1 + *(v8 + 32)), 1);
  v12 = [v5 systemCyanColor];
  v13 = 0.0;
  if (v11 > 0.0)
  {
    v13 = v11;
  }

  v14 = fminf(v13, 1.0);
  v15 = objc_opt_self();
  *&v16 = v14;
  v17 = [v15 gaugeProviderWithStyle:1 gaugeColor:v12 fillFraction:v16];

  v18 = [objc_allocWithZone(MEMORY[0x277CBB8C8]) initWithGaugeProvider:v17 leadingTextProvider:v10 trailingTextProvider:0 imageProvider:v4];
  return v18;
}

id sub_23BDB88F4(uint64_t a1)
{
  v3 = type metadata accessor for ChanceRainTemplateModel(0);
  v4 = swift_allocObject();
  *(v4 + 16) = 10;
  v5 = sub_23BDC66C0();
  v22[4] = sub_23BDBA200;
  v22[5] = v4;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 1107296256;
  v22[2] = sub_23BDB93A0;
  v22[3] = &unk_284E8D578;
  v6 = _Block_copy(v22);
  sub_23BDC6F20(v7);
  v8 = [objc_opt_self() textProviderWithText:v5 overrideBlock:v6];

  _Block_release(v6);

  v9 = (*(**(v1 + 16) + 184))(*(a1 + *(v3 + 24)), *(a1 + *(v3 + 24) + 8), *(a1 + *(v3 + 32)), 1);
  v10 = objc_opt_self();
  v11 = [v10 systemCyanColor];
  v12 = 0.0;
  if (v9 > 0.0)
  {
    v12 = v9;
  }

  v13 = fminf(v12, 1.0);
  v14 = objc_opt_self();
  *&v15 = v13;
  v16 = [v14 gaugeProviderWithStyle:1 gaugeColor:v11 fillFraction:v15];

  v17 = sub_23BDC66C0();

  v18 = [objc_opt_self() symbolImageProviderWithSystemName_];

  v19 = [v10 systemCyanColor];
  [v18 setTintColor_];

  v20 = [objc_allocWithZone(MEMORY[0x277CBB860]) initWithGaugeProvider:v16 bottomImageProvider:v18 centerTextProvider:v8];
  return v20;
}

id sub_23BDB8B9C(uint64_t a1)
{
  v3 = type metadata accessor for ChanceRainTemplateModel(0);
  v4 = swift_allocObject();
  *(v4 + 16) = 12;
  v5 = sub_23BDC66C0();
  v22[4] = sub_23BDBA124;
  v22[5] = v4;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 1107296256;
  v22[2] = sub_23BDB93A0;
  v22[3] = &unk_284E8D528;
  v6 = _Block_copy(v22);
  sub_23BDC6F20(v7);
  v8 = [objc_opt_self() textProviderWithText:v5 overrideBlock:v6];

  _Block_release(v6);

  v9 = (*(**(v1 + 16) + 184))(*(a1 + *(v3 + 24)), *(a1 + *(v3 + 24) + 8), *(a1 + *(v3 + 32)), 1);
  v10 = objc_opt_self();
  v11 = [v10 systemCyanColor];
  v12 = 0.0;
  if (v9 > 0.0)
  {
    v12 = v9;
  }

  v13 = fminf(v12, 1.0);
  v14 = objc_opt_self();
  *&v15 = v13;
  v16 = [v14 gaugeProviderWithStyle:1 gaugeColor:v11 fillFraction:v15];

  v17 = sub_23BDC66C0();

  v18 = [objc_opt_self() symbolImageProviderWithSystemName_];

  v19 = [v10 systemCyanColor];
  [v18 setTintColor_];

  v20 = [objc_allocWithZone(MEMORY[0x277CBB948]) initWithGaugeProvider:v16 bottomImageProvider:v18 centerTextProvider:v8];
  return v20;
}

id sub_23BDB8E58(uint64_t a1, Class *a2, Class *a3)
{

  v6 = sub_23BDC66C0();

  v7 = [objc_opt_self() symbolImageProviderWithSystemName_];

  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 systemCyanColor];
  [v9 setTintColor_];

  if (*(a1 + *(type metadata accessor for ChanceRainTemplateModel(0) + 24) + 8) == 1)
  {
    v11 = [objc_allocWithZone(*a2) initWithImageProvider_];
  }

  else
  {
    v12 = sub_23BDC66C0();
    v13 = [objc_opt_self() textProviderWithText_];

    v11 = [objc_allocWithZone(*a3) initWithLine1ImageProvider:v9 line2TextProvider:v13];
  }

  return v11;
}

id sub_23BDB8FD8(uint64_t a1, uint64_t a2, uint64_t a3, id a4, uint64_t a5)
{
  if (a3)
  {
    return 0;
  }

  v8 = [a4 font];
  [v8 pointSize];
  v10 = v9;

  v11 = sub_23BDC6720();
  if (a5 == 12)
  {
    if (v11 > 4)
    {
      v12 = qword_27E1C5600;
      v13 = &qword_27E1C5CD0;
LABEL_12:
      if (v12 != -1)
      {
        swift_once();
      }

      v10 = v10 - *v13;
      goto LABEL_15;
    }

    if (sub_23BDC6720() >= 4)
    {
      v12 = qword_27E1C5600;
      v13 = &qword_27E1C5CC8;
      goto LABEL_12;
    }
  }

  else
  {
    if (v11 > 4)
    {
      v12 = qword_27E1C5600;
      v13 = &qword_27E1C5CC0;
      goto LABEL_12;
    }

    if (sub_23BDC6720() >= 4)
    {
      v12 = qword_27E1C5600;
      v13 = &qword_27E1C5CB8;
      goto LABEL_12;
    }
  }

LABEL_15:
  v14 = [a4 font];
  v15 = [v14 fontDescriptor];

  v16 = [objc_opt_self() fontWithDescriptor:v15 size:v10];
  sub_23BD9628C(&qword_27E1C5CE0, &qword_23BDC96C8);
  inited = swift_initStackObject();
  v18 = MEMORY[0x277D740A8];
  *(inited + 16) = xmmword_23BDC8C40;
  v19 = *v18;
  *(inited + 32) = v19;
  *(inited + 40) = v16;
  v20 = v19;
  v21 = v16;
  v22 = sub_23BD99B00(inited);
  swift_setDeallocating();
  sub_23BDBA144(inited + 32);
  sub_23BD980A4(v22);

  v23 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v24 = sub_23BDC66C0();
  type metadata accessor for Key(0);
  sub_23BDBA1AC(&qword_27E1C56F0, 255, type metadata accessor for Key, &unk_23BDC8BF8);
  v25 = sub_23BDC6670();

  v26 = [v23 initWithString:v24 attributes:v25];

  v27 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v28 = sub_23BDC66C0();
  v29 = [v27 initWithString_];

  v30 = sub_23BDC66C0();
  v31 = [v29 rangeOfString_];
  v33 = v32;

  if (v31 != sub_23BDC5F00())
  {
    v34 = [v21 _fontScaledByScaleFactor_];
    if (v34)
    {
      v35 = v34;
      [v26 addAttribute:v20 value:v35 range:{v31, v33}];
    }
  }

  return v26;
}

id sub_23BDB93A0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = sub_23BDC66F0();
  v9 = v8;

  v10 = a4;
  v11 = v6(v7, v9, a3, v10);

  return v11;
}

id sub_23BDB94B4(uint64_t a1)
{
  v2 = type metadata accessor for ChanceRainTemplateModel(0);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BDB1254(a1, v5);
  v6 = sub_23BDB9C98(&v5[*(v3 + 28)], v5[*(v3 + 32) + 8]);
  v7 = [objc_opt_self() systemCyanColor];
  [v6 setTintColor_];

  sub_23BDB1320(v5);
  v8 = sub_23BDC66C0();
  v9 = objc_opt_self();
  v10 = [v9 textProviderWithText_];

  v11 = sub_23BDC66C0();
  v12 = sub_23BDC66C0();
  v13 = NWKUILocalizedString();

  if (!v13)
  {
    sub_23BDC66F0();
    v13 = sub_23BDC66C0();
  }

  v14 = sub_23BDC66C0();
  v15 = sub_23BDC66C0();
  v16 = NWKUILocalizedString();

  if (!v16)
  {
    sub_23BDC66F0();
    v16 = sub_23BDC66C0();
  }

  v17 = [v9 textProviderWithText:v13 shortText:v16];

  v18 = [objc_allocWithZone(MEMORY[0x277CBBA08]) initWithHeaderTextProvider:v6 body1TextProvider:v10 body2TextProvider:v17];
  return v18;
}

id sub_23BDB9758(uint64_t a1)
{
  if (*(a1 + *(type metadata accessor for ChanceRainTemplateModel(0) + 24) + 8) == 1)
  {
    if (qword_27E1C55D0 != -1)
    {
      swift_once();
    }

    v1 = qword_27E1C5B70;
    v2 = sub_23BDC66C0();
    v3 = sub_23BDC66C0();
    v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

    if (!v4)
    {
      sub_23BDC66F0();
      v4 = sub_23BDC66C0();
    }

    v5 = [objc_opt_self() textProviderWithText_];

    v6 = [objc_allocWithZone(MEMORY[0x277CBBA80]) initWithTextProvider_];
  }

  else
  {
    v7 = sub_23BDC66C0();
    v8 = objc_opt_self();
    v9 = [v8 textProviderWithText_];

    v10 = sub_23BDC66C0();
    v11 = sub_23BDC66C0();
    v12 = NWKUILocalizedString();

    if (!v12)
    {
      sub_23BDC66F0();
      v12 = sub_23BDC66C0();
    }

    MEMORY[0x23EEBD040](0x54524F48535FLL, 0xE600000000000000);
    v13 = sub_23BDC66C0();

    v14 = sub_23BDC66C0();
    v15 = NWKUILocalizedString();

    sub_23BDC66F0();
    if (qword_27E1C55D0 != -1)
    {
      swift_once();
    }

    v16 = qword_27E1C5B70;
    v17 = sub_23BDC66C0();
    v18 = sub_23BDC66C0();
    v19 = [v16 localizedStringForKey:v17 value:0 table:v18];

    if (!v19)
    {
      sub_23BDC66F0();
      v19 = sub_23BDC66C0();
    }

    v20 = sub_23BDC66C0();

    v21 = [v8 textProviderWithText:v12 shortText:v20];

    v22 = sub_23BDAC0C0();
    sub_23BD9628C(&unk_27E1C5BA0, &unk_23BDC8CA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23BDC8C50;
    *(inited + 56) = v22;
    v24 = sub_23BDBA1AC(&unk_27E1C58B0, 255, sub_23BDAC0C0, MEMORY[0x277D85388]);
    *(inited + 32) = v9;
    *(inited + 96) = v22;
    *(inited + 104) = v24;
    *(inited + 64) = v24;
    *(inited + 72) = v21;
    v25 = v9;
    v26 = v21;
    v27 = sub_23BDC69C0();
    swift_setDeallocating();
    sub_23BD9628C(&qword_27E1C5BC0, &qword_23BDC94C0);
    swift_arrayDestroy();
    v28 = [swift_getObjCClassFromMetadata() textProviderWithFormat:v19 arguments:v27];

    v6 = [objc_allocWithZone(MEMORY[0x277CBBA80]) initWithTextProvider_];
  }

  return v6;
}

id sub_23BDB9C98(uint64_t *a1, char a2)
{
  if (a2)
  {
    if (qword_27E1C55D0 != -1)
    {
      swift_once();
    }

    v3 = qword_27E1C5B70;
    v4 = sub_23BDC66C0();
    v5 = sub_23BDC66C0();
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

    v7 = v6;
    v8 = v6;
    if (!v6)
    {
      sub_23BDC66F0();
      v8 = sub_23BDC66C0();

      sub_23BDC66F0();
      v7 = sub_23BDC66C0();
    }

    v9 = *(a1 + *(sub_23BDC6590() + 28));
    v10 = v6;
    if (v9 == 1)
    {

      v7 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.376470588 green:0.788235294 blue:0.97254902 alpha:1.0];
      v11 = NWCGlyphPrefixedTextProvider();

      goto LABEL_23;
    }

    v19 = [objc_opt_self() textProviderWithText_];
LABEL_22:
    v11 = v19;
    goto LABEL_23;
  }

  v12 = *a1;
  v13 = a1[1];
  v14 = *a1 == 0x65772D6C61636F6CLL && v13 == 0xED00007265687461;
  if (!v14 && (sub_23BDC6980() & 1) == 0 && (v12 != 0x7461636F4C20794DLL || v13 != 0xEB000000006E6F69) && (sub_23BDC6980() & 1) == 0)
  {
    v21 = *(a1 + *(sub_23BDC6590() + 28));
    v7 = sub_23BDC66C0();
    if (v21 == 1)
    {
      v22 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.376470588 green:0.788235294 blue:0.97254902 alpha:1.0];
      v11 = NWCGlyphPrefixedTextProvider();

      v7 = v22;
      goto LABEL_23;
    }

    v19 = [objc_opt_self() textProviderWithText_];
    goto LABEL_22;
  }

  if (qword_27E1C55D0 != -1)
  {
    swift_once();
  }

  v15 = qword_27E1C5B70;
  v16 = sub_23BDC66C0();
  v17 = sub_23BDC66C0();
  v18 = [v15 localizedStringForKey:v16 value:0 table:v17];

  if (!v18)
  {
    sub_23BDC66F0();
    v18 = sub_23BDC66C0();

    sub_23BDC66F0();
  }

  v7 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.376470588 green:0.788235294 blue:0.97254902 alpha:1.0];
  v11 = NWCGlyphPrefixedTextProvider();

LABEL_23:
  return v11;
}

uint64_t sub_23BDBA12C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23BDBA144(uint64_t a1)
{
  v2 = sub_23BD9628C(&qword_27E1C5CE8, qword_23BDC96D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BDBA1AC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_23BDBA208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, float *a3@<X8>)
{
  v102 = a3;
  v5 = sub_23BD9628C(&qword_27E1C5798, &unk_23BDC8D40);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v96 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v93 - v10;
  MEMORY[0x28223BE20](v9);
  v97 = &v93 - v12;
  v13 = sub_23BD9628C(&qword_27E1C5790, &unk_23BDC92E0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v100 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v93 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v93 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v105 = &v93 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v93 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v93 - v27;
  v29 = type metadata accessor for WeatherTemplateModel(0);
  sub_23BD9998C(a1 + *(v29 + 32), v28);
  v103 = v29;
  v104 = a1;
  v30 = a1 + *(v29 + 36);
  v31 = v26;
  sub_23BD9998C(v30, v26);
  v98 = v6;
  v32 = *(v6 + 48);
  if (v32(v28, 1, v5))
  {
    if (v32(v26, 1, v5))
    {
      goto LABEL_9;
    }

    v33 = 1.0;
LABEL_7:
    sub_23BDC5F50();
    if (v33 >= v35)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  sub_23BDC5F50();
  v33 = v34;
  if (!v32(v26, 1, v5))
  {
    goto LABEL_7;
  }

  if (v33 < 0.0)
  {
LABEL_8:
    v36 = v105;
    sub_23BD9998C(v28, v105);
    sub_23BDBAC50(v31, v28);
    sub_23BDBACC0(v36, v31);
  }

LABEL_9:
  sub_23BD9998C(v28, v21);
  v37 = v32(v21, 1, v5);
  v101 = v31;
  v106 = v28;
  if (v37 == 1)
  {
    v18 = v21;
LABEL_16:
    sub_23BDBAB8C(v18);
    v44 = sub_23BDC6610();
    v45 = *v44;
    v46 = *(*v44 + 16);
    v47 = MEMORY[0x277D84F90];
    v107 = MEMORY[0x277D84F90];
    v108 = MEMORY[0x277D84F90];
    if (v46)
    {
      v48 = 1.0 / v46;

      v49 = 0.0;
      v50 = 40;
      do
      {
        v51 = *(v45 + v50);
        MEMORY[0x23EEBD070]();
        if (*((v107 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v107 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_23BDC6790();
        }

        sub_23BDC67A0();
        v47 = v107;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
        MEMORY[0x23EEBD070]();
        if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v100 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_23BDC6790();
        }

        sub_23BDC67A0();

        v49 = v48 + v49;
        v50 += 16;
        --v46;
      }

      while (v46);
      v98 = v108;

      v28 = v106;
    }

    else
    {
      v98 = MEMORY[0x277D84F90];
    }

    v52 = objc_opt_self();
    v100 = [v52 whiteColor];
    v99 = [v52 whiteColor];
    v53 = *MEMORY[0x277CBB6C8];
    goto LABEL_26;
  }

  v94 = v11;
  v95 = a2;
  v39 = v97;
  v38 = v98;
  v40 = *(v98 + 32);
  v40(v97, v21, v5);
  sub_23BD9998C(v31, v18);
  if (v32(v18, 1, v5) == 1)
  {
    (*(v38 + 8))(v39, v5);
LABEL_15:
    v28 = v106;
    a2 = v95;
    goto LABEL_16;
  }

  v41 = v94;
  v40(v94, v18, v5);
  v42 = v100;
  sub_23BD9998C(v104 + *(v103 + 24), v100);
  if (v32(v42, 1, v5) == 1)
  {
    v43 = *(v98 + 8);
    v43(v41, v5);
    v43(v97, v5);
    v18 = v42;
    goto LABEL_15;
  }

  v40(v96, v42, v5);
  v71 = v97;
  v72 = sub_23BDC65A0();
  v73 = v94;
  v99 = sub_23BDC65A0();
  sub_23BDA9AD0();
  v74 = sub_23BDC5F30();
  v75 = v98;
  if ((v74 & 1) == 0 || (v76 = sub_23BDC5F30(), v77 = 0.5, (v76 & 1) == 0))
  {
    sub_23BDC5F50();
    v79 = v78;
    sub_23BDC5F50();
    v81 = v80;
    sub_23BDC5F50();
    v83 = (v82 - v79) / (v81 - v79);
    v84 = 0.0;
    if (v83 >= 0.0)
    {
      v84 = v83;
    }

    if (v83 >= 1.0)
    {
      v85 = 1.0;
    }

    else
    {
      v85 = v84;
    }

    v77 = v85;
  }

  v100 = v72;
  if (v77 <= 0.0)
  {
    v77 = 0.0;
  }

  v53 = fminf(v77, 1.0);
  v87 = sub_23BDC65B0();
  v47 = v88;
  v89 = *(v87 + 16);
  a2 = v95;
  if (v89)
  {
    v93 = v86;
    v108 = MEMORY[0x277D84F90];

    sub_23BDC6900();
    v90 = 32;
    do
    {
      [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      sub_23BDC68E0();
      sub_23BDC6910();
      sub_23BDC6920();
      sub_23BDC68F0();
      v90 += 8;
      --v89;
    }

    while (v89);

    v91 = *(v98 + 8);
    v91(v96, v5);
    v91(v94, v5);
    v91(v97, v5);
    v98 = v108;
    a2 = v95;
    v28 = v106;
  }

  else
  {

    v92 = *(v75 + 8);
    v92(v96, v5);
    v92(v73, v5);
    v92(v71, v5);
    v98 = MEMORY[0x277D84F90];
    v28 = v106;
  }

LABEL_26:
  v54 = *sub_23BDC65E0();
  v55 = v105;
  sub_23BD9998C(v28, v105);
  v56 = *(*v54 + 152);

  v97 = v56(v55, 0, 0);
  v58 = v57;
  sub_23BDBAB8C(v55);
  v59 = v101;
  sub_23BD9998C(v101, v55);
  v60 = v56(v55, 0, 0);
  v62 = v61;
  sub_23BDBAB8C(v55);
  v63 = v104;
  v64 = v56(v104 + *(v103 + 24), a2, 1);
  v66 = v65;

  sub_23BDBABF4(v63);
  sub_23BDBAB8C(v59);
  result = sub_23BDBAB8C(v106);
  v68 = v102;
  *v102 = v53;
  *(v68 + 1) = v64;
  *(v68 + 2) = v66;
  *(v68 + 3) = v97;
  *(v68 + 4) = v58;
  v69 = v99;
  *(v68 + 5) = v100;
  *(v68 + 6) = v60;
  *(v68 + 7) = v62;
  *(v68 + 8) = v69;
  v70 = v98;
  *(v68 + 9) = v47;
  *(v68 + 10) = v70;
  return result;
}

uint64_t sub_23BDBAB8C(uint64_t a1)
{
  v2 = sub_23BD9628C(&qword_27E1C5790, &unk_23BDC92E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BDBABF4(uint64_t a1)
{
  v2 = type metadata accessor for WeatherTemplateModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BDBAC50(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BD9628C(&qword_27E1C5790, &unk_23BDC92E0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BDBACC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BD9628C(&qword_27E1C5790, &unk_23BDC92E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

__n128 sub_23BDBAD30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_23BDBAD54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23BDBAD9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23BDBAE00()
{
  type metadata accessor for UVRectangularTemplateFormatter();
  v0 = swift_allocObject();
  result = sub_23BDBB94C(&qword_27E1C5D38, v1, type metadata accessor for UVRectangularTemplateFormatter, &unk_23BDC9770);
  *&xmmword_27E1C77D0 = v0;
  *(&xmmword_27E1C77D0 + 1) = result;
  return result;
}

void *sub_23BDBAEE0(void **a1)
{
  v2 = type metadata accessor for UVTemplateModel(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BD96820(0, &unk_27E1C5D10, 0x277D2C7B0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() fullColorImageProviderWithImageViewClass_];
  sub_23BD9628C(&unk_27E1C57B0, qword_23BDC9790);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23BDC8C40;
  *(inited + 32) = sub_23BDC66F0();
  *(inited + 40) = v8;
  v9 = *a1;
  *(inited + 48) = *a1;
  v10 = v9;
  v11 = sub_23BD984E0(inited);
  swift_setDeallocating();
  sub_23BDB12B8(inited + 32);
  sub_23BD97E68(v11);

  sub_23BD9628C(&unk_27E1C5880, &unk_23BDC97B0);
  v12 = sub_23BDC6670();

  v89 = v6;
  [v6 setMetadata_];

  v13 = type metadata accessor for UVRectangularTemplateModel(0);
  sub_23BD97CA8(a1 + *(v13 + 20), v4);
  v14 = &v4[v2[6]];
  v15 = *(v14 + 1);
  v90 = v4;
  if (v15 && (v16 = *&v4[v2[8]]) != 0)
  {
    v85 = v15;
    v84 = *v14;
    v17 = qword_27E1C55D0;
    v88 = v16;
    if (v17 != -1)
    {
      swift_once();
    }

    v18 = qword_27E1C5B70;
    v19 = sub_23BDC66C0();
    v20 = sub_23BDC66C0();
    v21 = [v18 localizedStringForKey:v19 value:0 table:v20];

    v22 = sub_23BDC66F0();
    v83 = v23;

    v24 = qword_27E1C5B70;
    v25 = sub_23BDC66C0();
    v87 = "uviFormatter";
    v26 = sub_23BDC66C0();
    v27 = [v24 localizedStringForKey:v25 value:0 table:v26];

    sub_23BDC66F0();
    sub_23BD9628C(&unk_27E1C5BA0, &unk_23BDC8CA0);
    v28 = swift_allocObject();
    v86 = xmmword_23BDC8C50;
    *(v28 + 16) = xmmword_23BDC8C50;
    v29 = MEMORY[0x277D837D0];
    *(v28 + 56) = MEMORY[0x277D837D0];
    v30 = sub_23BD97C54();
    *(v28 + 64) = v30;
    v31 = v83;
    *(v28 + 32) = v22;
    *(v28 + 40) = v31;
    v32 = &v90[v2[5]];
    if (v32[8])
    {
      v33 = 0;
    }

    else
    {
      v33 = *v32;
    }

    v93 = v33;
    sub_23BD9CD8C();
    v34 = sub_23BDC6870();
    *(v28 + 96) = v29;
    *(v28 + 104) = v30;
    *(v28 + 72) = v34;
    *(v28 + 80) = v35;
    sub_23BDC6700();

    v36 = a1 + *(v13 + 28);
    v37 = v36[*(sub_23BDC6590() + 28)];
    v38 = sub_23BDC66C0();

    if (v37 == 1)
    {
      v39 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.376470588 green:0.788235294 blue:0.97254902 alpha:1.0];
      v40 = NWCGlyphPrefixedTextProvider();

      v38 = v39;
    }

    else
    {
      v40 = [objc_opt_self() textProviderWithText_];
    }

    v61 = v88;

    [v40 setTintColor_];
    v93 = v84;
    v94 = v85;
    sub_23BD97C00();
    sub_23BDC6860();
    v62 = sub_23BDC66C0();

    v63 = [objc_opt_self() textProviderWithText_];

    v64 = objc_opt_self();
    v65 = v63;
    v66 = [v64 whiteColor];
    [v65 setTintColor_];

    v67 = qword_27E1C5B70;
    v68 = sub_23BDC66C0();
    v69 = sub_23BDC66C0();
    v70 = [v67 localizedStringForKey:v68 value:0 table:v69];

    if (!v70)
    {
      sub_23BDC66F0();
      v70 = sub_23BDC66C0();
    }

    v71 = sub_23BD96820(0, &qword_27E1C5D30, 0x277CBBB88);
    v72 = swift_initStackObject();
    *(v72 + 16) = v86;
    *(v72 + 56) = sub_23BD96820(0, &unk_27E1C58A0, 0x277CBBBA0);
    *(v72 + 64) = sub_23BD99A58(&unk_27E1C5BB0, &unk_27E1C58A0, 0x277CBBBA0);
    *(v72 + 32) = v40;
    *(v72 + 96) = v71;
    *(v72 + 104) = sub_23BD99A58(&unk_27E1C58B0, &qword_27E1C5D30, 0x277CBBB88);
    *(v72 + 72) = v65;
    v73 = v65;
    v74 = v40;
    v75 = sub_23BDC69C0();
    swift_setDeallocating();
    sub_23BD9628C(&qword_27E1C5BC0, &qword_23BDC94C0);
    swift_arrayDestroy();
    v76 = [swift_getObjCClassFromMetadata() textProviderWithFormat:v70 arguments:v75];

    v59 = v76;
  }

  else
  {
    if (qword_27E1C55D0 != -1)
    {
      swift_once();
    }

    v41 = qword_27E1C5B70;
    v42 = sub_23BDC66C0();
    v43 = sub_23BDC66C0();
    v44 = [v41 localizedStringForKey:v42 value:0 table:v43];

    v45 = sub_23BDC66F0();
    v47 = v46;

    v93 = v45;
    v94 = v47;
    sub_23BD97C00();
    sub_23BDC6860();

    v48 = qword_27E1C5B70;
    v49 = sub_23BDC66C0();
    v50 = sub_23BDC66C0();
    v51 = [v48 localizedStringForKey:v49 value:0 table:v50];

    v52 = sub_23BDC66F0();
    v54 = v53;

    v91 = v52;
    v92 = v54;
    sub_23BDC6860();

    v55 = sub_23BDC66C0();

    v56 = sub_23BDC66C0();

    v57 = [objc_opt_self() textProviderWithText:v55 shortText:v56];

    v58 = objc_opt_self();
    v59 = v57;
    v60 = [v58 grayColor];
    [v59 setTintColor_];
  }

  v77 = objc_allocWithZone(MEMORY[0x277CBB9B0]);
  v78 = v89;
  v79 = [v77 initWithTextProvider:v59 imageProvider:v89];

  v80 = sub_23BDB1D54();
  sub_23BD97D0C(v90);
  return v80;
}

uint64_t sub_23BDBB94C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_23BDBB994()
{
  type metadata accessor for WindRectangularTemplateFormatter();
  v0 = swift_allocObject();
  result = sub_23BDBC80C(&unk_27E1C5D80, v1, type metadata accessor for WindRectangularTemplateFormatter, &unk_23BDC97E4);
  *&xmmword_27E1C77E0 = v0;
  *(&xmmword_27E1C77E0 + 1) = result;
  return result;
}

void *sub_23BDBBA74(void **a1)
{
  v2 = sub_23BDC6080();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23BD9628C(&unk_27E1C5D50, &unk_23BDC8F70);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v106 - v7;
  v9 = type metadata accessor for WindRectangularTemplateModel(0);
  v10 = a1 + *(v9 + 20);
  v11 = type metadata accessor for WindTemplateModel(0);
  v12 = v10[*(v11 + 24)];
  v117 = a1;
  if (v12 == 16)
  {
    goto LABEL_4;
  }

  v116 = sub_23BDC6490();
  v14 = v13;
  sub_23BDBC79C(&v10[*(v11 + 28)], v8);
  v15 = sub_23BD9628C(&unk_27E1C5D70, &unk_23BDC9100);
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v8, 1, v15) == 1)
  {

    sub_23BD962D4(v8, &unk_27E1C5D50, &unk_23BDC8F70);
LABEL_4:
    if (qword_27E1C55D0 != -1)
    {
      swift_once();
    }

    v17 = qword_27E1C5B70;
    v18 = sub_23BDC66C0();
    v19 = sub_23BDC66C0();
    v20 = [v17 localizedStringForKey:v18 value:0 table:v19];

    v21 = sub_23BDC66F0();
    v23 = v22;

    v120 = v21;
    v121 = v23;
    sub_23BD97C00();
    sub_23BDC6860();

    v24 = qword_27E1C5B70;
    v25 = sub_23BDC66C0();
    v26 = sub_23BDC66C0();
    v27 = [v24 localizedStringForKey:v25 value:0 table:v26];

    v28 = sub_23BDC66F0();
    v30 = v29;

    *&v125 = v28;
    *(&v125 + 1) = v30;
    sub_23BDC6860();

    v31 = sub_23BDC66C0();

    v32 = sub_23BDC66C0();

    v33 = [objc_opt_self() textProviderWithText:v31 shortText:v32];

    v34 = objc_opt_self();
    v35 = v33;
    v36 = [v34 grayColor];
    [v35 setTintColor_];

    goto LABEL_15;
  }

  v112 = v14;
  sub_23BDC6070();
  sub_23BDC5F20();
  (*(v3 + 8))(v5, v2);
  (*(v16 + 8))(v8, v15);
  v110 = v120;
  v111 = v121;
  v125 = v122;
  sub_23BD96334(&v125);
  v124 = v123;
  sub_23BD96334(&v124);
  v113 = sub_23BDA61BC();
  v114 = v37;
  v38 = v117 + *(v9 + 28);
  v39 = v38[*(sub_23BDC6590() + 28)];
  v40 = sub_23BDC66C0();
  if (v39 == 1)
  {
    v41 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.376470588 green:0.788235294 blue:0.97254902 alpha:1.0];
    v42 = NWCGlyphPrefixedTextProvider();

    v40 = v41;
  }

  else
  {
    v42 = [objc_opt_self() textProviderWithText_];
  }

  v109 = objc_opt_self();
  v43 = [v109 systemCyanColor];
  v115 = v42;
  [v42 setTintColor_];

  if (qword_27E1C55D0 != -1)
  {
    swift_once();
  }

  v44 = qword_27E1C5B70;
  v45 = sub_23BDC66C0();
  v46 = sub_23BDC66C0();
  v47 = [v44 localizedStringForKey:v45 value:0 table:v46];

  sub_23BDC66F0();
  v108 = sub_23BD9628C(&unk_27E1C5BA0, &unk_23BDC8CA0);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_23BDC8C40;
  v49 = qword_27E1C5B70;
  v50 = sub_23BDC66C0();
  v51 = sub_23BDC66C0();
  v52 = [v49 localizedStringForKey:v50 value:0 table:v51];

  v53 = sub_23BDC66F0();
  v55 = v54;

  v118 = v53;
  v119 = v55;
  sub_23BD97C00();
  v56 = MEMORY[0x277D837D0];
  v57 = sub_23BDC6860();
  v59 = v58;
  *(v48 + 56) = v56;
  *(v48 + 64) = sub_23BD97C54();
  *(v48 + 32) = v57;
  *(v48 + 40) = v59;

  sub_23BDC6700();

  v60 = sub_23BDC66C0();

  v61 = sub_23BDC66C0();
  v62 = objc_opt_self();
  v63 = [v62 textProviderWithText:v60 shortText:v61];

  v64 = v63;
  v65 = v109;
  v66 = [v109 systemCyanColor];
  [v64 setTintColor_];
  v107 = v64;

  v67 = sub_23BDC66C0();

  v68 = [v62 textProviderWithText_];

  v69 = v68;
  v70 = [v65 systemCyanColor];
  [v69 setTintColor_];
  v116 = v69;

  v71 = sub_23BDC66C0();

  v72 = [v62 textProviderWithText_];

  v73 = v72;
  v74 = [v65 whiteColor];
  [v73 setTintColor_];

  v75 = sub_23BDC66C0();

  v76 = [v62 textProviderWithText_];

  v77 = v76;
  v78 = [v65 whiteColor];
  [v77 setTintColor_];

  v79 = sub_23BDC66C0();
  v80 = sub_23BDC66C0();
  v81 = NWCLocalizedString();

  if (!v81)
  {
    sub_23BDC66F0();
    v81 = sub_23BDC66C0();
  }

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23BDC88C0;
  *(inited + 56) = sub_23BD96820(0, &unk_27E1C58A0, 0x277CBBBA0);
  *(inited + 64) = sub_23BD99A58(&unk_27E1C5BB0, &unk_27E1C58A0, 0x277CBBBA0);
  v83 = v115;
  *(inited + 32) = v115;
  v84 = sub_23BD96820(0, &qword_27E1C5D30, 0x277CBBB88);
  *(inited + 96) = v84;
  v85 = sub_23BD99A58(&unk_27E1C58B0, &qword_27E1C5D30, 0x277CBBB88);
  v86 = v107;
  *(inited + 72) = v107;
  *(inited + 136) = v84;
  *(inited + 144) = v85;
  v87 = v116;
  *(inited + 104) = v85;
  *(inited + 112) = v87;
  *(inited + 176) = v84;
  *(inited + 184) = v85;
  *(inited + 152) = v73;
  *(inited + 216) = v84;
  *(inited + 224) = v85;
  *(inited + 192) = v77;
  v88 = v86;
  v89 = v87;
  v90 = v73;
  v91 = v77;
  v92 = v83;
  v93 = sub_23BDC69C0();
  swift_setDeallocating();
  sub_23BD9628C(&qword_27E1C5BC0, &qword_23BDC94C0);
  swift_arrayDestroy();
  v94 = [objc_opt_self() textProviderWithFormat:v81 arguments:v93];

  v35 = v94;
LABEL_15:
  sub_23BD96820(0, &unk_27E1C5D60, 0x277D2C7A8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v96 = [objc_opt_self() fullColorImageProviderWithImageViewClass_];
  v97 = *v117;
  sub_23BD9628C(&unk_27E1C57B0, qword_23BDC9790);
  v98 = swift_initStackObject();
  *(v98 + 16) = xmmword_23BDC8C40;
  *(v98 + 32) = sub_23BDC66F0();
  *(v98 + 40) = v99;
  *(v98 + 48) = v97;
  v100 = v97;
  v101 = sub_23BD984E0(v98);
  swift_setDeallocating();
  sub_23BD962D4(v98 + 32, &unk_27E1C5D20, qword_23BDC8D50);
  sub_23BD97E68(v101);

  sub_23BD9628C(&unk_27E1C5880, &unk_23BDC97B0);
  v102 = sub_23BDC6670();

  [v96 setMetadata_];

  v103 = [objc_allocWithZone(MEMORY[0x277CBB9B0]) initWithTextProvider:v35 imageProvider:v96];
  v104 = sub_23BDB1D54();

  return v104;
}

uint64_t sub_23BDBC79C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BD9628C(&unk_27E1C5D50, &unk_23BDC8F70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BDBC80C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

char *sub_23BDBC8F0(void *a1, uint64_t a2, void *a3)
{
  v7 = OBJC_IVAR____TtC20WeatherComplications19ConditionDataSource_rectangularFormatter;
  if (qword_27E1C55A8 != -1)
  {
    swift_once();
  }

  *&v3[v7] = xmmword_27E1C7760;
  v13.receiver = v3;
  v13.super_class = type metadata accessor for ConditionDataSource(0);
  swift_unknownObjectRetain();
  v8 = objc_msgSendSuper2(&v13, sel_initWithComplication_family_forDevice_, a1, a2, a3);
  v9 = qword_27E1C55C8;
  v10 = v8;
  if (v9 != -1)
  {
    swift_once();
  }

  v12 = xmmword_27E1C7780;
  swift_unknownObjectRetain();

  *&v10[OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_templateFormatter] = v12;
  swift_unknownObjectRelease();
  return v10;
}

double sub_23BDBCA8C()
{
  sub_23BD9628C(&qword_27E1C5DA8, &unk_23BDC9890);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_23BDC9800;
  *(v0 + 32) = xmmword_23BDC9810;
  *(v0 + 48) = xmmword_23BDC9820;
  *(v0 + 64) = xmmword_23BDC9830;
  *&result = 9;
  *(v0 + 80) = xmmword_23BDC9840;
  *(v0 + 96) = xmmword_23BDC9850;
  *(v0 + 112) = *MEMORY[0x277CBB668];
  return result;
}

id sub_23BDBCC78()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConditionDataSource(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ConditionDataSource(uint64_t a1)
{
  result = qword_27E1C5D98;
  if (!qword_27E1C5D98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23BDBCD58(uint64_t a1)
{
  v2 = sub_23BDC6650();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BDC6640();
  v6 = sub_23BDC6630();
  v7 = sub_23BDC6810();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_23BD93000, v6, v7, "Migrating to widget.", v8, 2u);
    MEMORY[0x23EEBD7D0](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v9 = objc_allocWithZone(MEMORY[0x277CBBBD0]);
  v10 = sub_23BDC66C0();
  v11 = sub_23BDC66C0();
  v12 = sub_23BDC66C0();
  v13 = [v9 initWithExtensionBundleIdentifier:v10 containerBundleIdentifier:v11 kind:v12 intent:0];

  (*(a1 + 16))(a1, v13);
}

char *sub_23BDBD018(void *a1, uint64_t a2, void *a3)
{
  v7 = OBJC_IVAR____TtC20WeatherComplications13AQIDataSource_nonNumericalFormatter;
  if (qword_27E1C5638 != -1)
  {
    swift_once();
  }

  *&v3[v7] = xmmword_27E1C7830;
  v13.receiver = v3;
  v13.super_class = type metadata accessor for AQIDataSource(0);
  swift_unknownObjectRetain();
  v8 = objc_msgSendSuper2(&v13, sel_initWithComplication_family_forDevice_, a1, a2, a3);
  v9 = qword_27E1C5618;
  v10 = v8;
  if (v9 != -1)
  {
    swift_once();
  }

  v12 = xmmword_27E1C77F0;
  swift_unknownObjectRetain();

  *&v10[OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_templateFormatter] = v12;
  swift_unknownObjectRelease();
  return v10;
}

uint64_t sub_23BDBD1B4()
{
  sub_23BD9628C(&qword_27E1C5968, &unk_23BDC8E20);
  sub_23BDC63A0();
  *(swift_allocObject() + 16) = xmmword_23BDC8C40;
  sub_23BDC6370();
  sub_23BD9B810();
  sub_23BD9628C(&qword_27E1C5978, &qword_23BDC9520);
  sub_23BD9B868();
  return sub_23BDC6880();
}

uint64_t sub_23BDBD34C(uint64_t a1)
{
  v25 = a1;
  v2 = sub_23BDC63E0();
  v26 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23BDC6010();
  v24 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23BD9628C(&qword_27E1C5960, &qword_23BDC8F50);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = sub_23BD9628C(&qword_27E1C5CA0, &unk_23BDC9650);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v23 - v12;
  v14 = sub_23BDC6350();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BDA38EC(v1 + OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_forecast, v10);
  v18 = sub_23BDC6240();
  if ((*(*(v18 - 8) + 48))(v10, 1, v18))
  {
    sub_23BD962D4(v10, &qword_27E1C5960, &qword_23BDC8F50);
    (*(v15 + 56))(v13, 1, 1, v14);
LABEL_4:
    sub_23BD962D4(v13, &qword_27E1C5CA0, &unk_23BDC9650);
    goto LABEL_5;
  }

  v23 = v2;
  v19 = v26;
  sub_23BDC6220();
  sub_23BD962D4(v10, &qword_27E1C5960, &qword_23BDC8F50);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    goto LABEL_4;
  }

  (*(v15 + 32))(v17, v13, v14);
  sub_23BDC65C0();
  v22 = sub_23BDC5FB0();
  (*(v24 + 8))(v7, v5);
  if (v22)
  {
    sub_23BDC6340();
    v20 = sub_23BDC63C0();
    (*(v19 + 8))(v4, v23);
    (*(v15 + 8))(v17, v14);
    return v20 & 1;
  }

  (*(v15 + 8))(v17, v14);
LABEL_5:
  v20 = 1;
  return v20 & 1;
}

id sub_23BDBD848()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AQIDataSource(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AQIDataSource(uint64_t a1)
{
  result = qword_27E1C5DB8;
  if (!qword_27E1C5DB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23BDBD928(uint64_t a1)
{
  v2 = sub_23BDC6650();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BDC6640();
  v6 = sub_23BDC6630();
  v7 = sub_23BDC6810();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_23BD93000, v6, v7, "Migrating to widget.", v8, 2u);
    MEMORY[0x23EEBD7D0](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v9 = objc_allocWithZone(MEMORY[0x277CBBBD0]);
  v10 = sub_23BDC66C0();
  v11 = sub_23BDC66C0();
  v12 = sub_23BDC66C0();
  v13 = [v9 initWithExtensionBundleIdentifier:v10 containerBundleIdentifier:v11 kind:v12 intent:0];

  (*(a1 + 16))(a1, v13);
}

unint64_t sub_23BDBDB48()
{
  v1 = v0;
  sub_23BDC68B0();

  v2 = type metadata accessor for AQINonNumericalTemplateModel(0);
  MEMORY[0x23EEBD040](*(v1 + *(v2 + 28)), *(v1 + *(v2 + 28) + 8));
  MEMORY[0x23EEBD040](0x49656C616373202CLL, 0xEB00000000203A44);
  MEMORY[0x23EEBD040](*(v1 + *(v2 + 40)), *(v1 + *(v2 + 40) + 8));
  return 0xD000000000000015;
}

uint64_t sub_23BDBDC0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v3 = sub_23BDC6590();
  MEMORY[0x28223BE20](v3 - 8);
  v70 = v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_23BDC6010();
  v64 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v6 = v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23BDC63E0();
  v73 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23BDC6430();
  v65 = *(v10 - 8);
  v66 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v68 = v58 - v14;
  v15 = sub_23BD9628C(&qword_27E1C5960, &qword_23BDC8F50);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v58 - v16;
  v18 = sub_23BD9628C(&qword_27E1C5CA0, &unk_23BDC9650);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v58 - v19;
  v21 = sub_23BDC6350();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v67 = v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for TemplateData(0);
  v63 = a1;
  sub_23BDA38EC(a1 + *(v62 + 20), v17);
  v24 = sub_23BDC6240();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v17, 1, v24) == 1)
  {
    sub_23BD962D4(v17, &qword_27E1C5960, &qword_23BDC8F50);
    (*(v22 + 56))(v20, 1, 1, v21);
LABEL_4:
    sub_23BD962D4(v20, &qword_27E1C5CA0, &unk_23BDC9650);
    v26 = v71;
    sub_23BD9D208();
    v27 = type metadata accessor for AQINonNumericalTemplateModel(0);
    result = sub_23BD9D20C();
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = MEMORY[0x277D84F90];
    v34 = 0xE000000000000000;
    v35 = 0xE000000000000000;
    v36 = 0xE000000000000000;
    goto LABEL_17;
  }

  sub_23BDC6220();
  (*(v25 + 8))(v17, v24);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    goto LABEL_4;
  }

  v60 = v21;
  v61 = v6;
  v59 = v22;
  (*(v22 + 32))(v67, v20, v21);
  sub_23BDC6320();
  sub_23BDC6340();
  v37 = sub_23BDC63B0();
  (*(v73 + 8))(v9, v7);
  v38 = *(v37 + 16);
  if (v38)
  {
    v74 = MEMORY[0x277D84F90];
    sub_23BDC6900();
    v39 = sub_23BD97BB4();
    v72 = *(v65 + 16);
    v73 = v39;
    v40 = *(v65 + 80);
    v58[1] = v37;
    v41 = v37 + ((v40 + 32) & ~v40);
    v42 = *(v65 + 72);
    v43 = (v65 + 8);
    v44 = v66;
    do
    {
      v72(v13, v41, v44);
      sub_23BDC6400();
      sub_23BDC6830();
      (*v43)(v13, v44);
      sub_23BDC68E0();
      sub_23BDC6910();
      sub_23BDC6920();
      sub_23BDC68F0();
      v41 += v42;
      --v38;
    }

    while (v38);

    v45 = v74;
  }

  else
  {

    v45 = MEMORY[0x277D84F90];
  }

  v73 = v45;
  v46 = v70;
  v47 = v63;
  v48 = v64;
  (*(v64 + 16))(v61, v63, v69);
  sub_23BD9CC98(v47 + *(v62 + 24), v46);
  v49 = v68;
  v50 = sub_23BDC6410();
  if (v51)
  {
    v29 = v50;
  }

  else
  {
    v29 = 0;
  }

  if (v51)
  {
    v34 = v51;
  }

  else
  {
    v34 = 0xE000000000000000;
  }

  v30 = sub_23BDC63F0();
  v35 = v52;
  v31 = sub_23BDC6420();
  v53 = v67;
  v32 = sub_23BDC6310();
  v36 = v54;
  (*(v65 + 8))(v49, v66);
  (*(v59 + 8))(v53, v60);
  v26 = v71;
  (*(v48 + 32))(v71, v61, v69);
  v27 = type metadata accessor for AQINonNumericalTemplateModel(0);
  result = sub_23BDA8FD4(v70, v26 + v27[5]);
  v33 = v73;
LABEL_17:
  v55 = (v26 + v27[6]);
  *v55 = v29;
  v55[1] = v34;
  v56 = (v26 + v27[7]);
  *v56 = v30;
  v56[1] = v35;
  *(v26 + v27[8]) = v31;
  *(v26 + v27[9]) = v33;
  v57 = (v26 + v27[10]);
  *v57 = v32;
  v57[1] = v36;
  *(v26 + v27[11]) = 0;
  return result;
}

uint64_t sub_23BDBE31C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_23BD9D208();
  result = sub_23BD9D20C();
  v5 = a1[7];
  v6 = (a2 + a1[6]);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = a1[9];
  *(a2 + a1[8]) = 0;
  *(a2 + v8) = MEMORY[0x277D84F90];
  v9 = a1[11];
  v10 = (a2 + a1[10]);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  *(a2 + v9) = 0;
  return result;
}

unint64_t sub_23BDBE390(uint64_t a1)
{
  result = sub_23BDBE3B8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23BDBE3B8()
{
  result = qword_27E1C5DC8;
  if (!qword_27E1C5DC8)
  {
    type metadata accessor for AQINonNumericalTemplateModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C5DC8);
  }

  return result;
}

uint64_t type metadata accessor for AQINonNumericalTemplateModel(uint64_t a1)
{
  result = qword_27E1C5DD0;
  if (!qword_27E1C5DD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BDBE470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BDC6010();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_23BDC6590();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_23BDBE594(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_23BDC6010();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_23BDC6590();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_23BDBE6A0(uint64_t a1)
{
  sub_23BDC6010();
  if (v1 <= 0x3F)
  {
    sub_23BDC6590();
    if (v2 <= 0x3F)
    {
      sub_23BDBE760(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23BDBE760(uint64_t a1)
{
  if (!qword_27E1C59E0)
  {
    sub_23BD97BB4();
    v1 = sub_23BDC67B0();
    if (!v2)
    {
      atomic_store(v1, &qword_27E1C59E0);
    }
  }
}

unint64_t sub_23BDBE7B8()
{
  v1 = 7104878;
  sub_23BDC68B0();

  v2 = type metadata accessor for AQINumericalTemplateModel(0);
  if (*(v0 + *(v2 + 24) + 8))
  {
    v3 = 0xE300000000000000;
    v4 = 7104878;
  }

  else
  {
    sub_23BD9CD8C();
    v4 = sub_23BDC6870();
    v3 = v5;
  }

  MEMORY[0x23EEBD040](v4, v3);

  MEMORY[0x23EEBD040](0x49656C616373202CLL, 0xEB00000000203A44);
  v6 = (v0 + *(v2 + 36));
  if (v6[1])
  {
    v1 = *v6;
    v7 = v6[1];
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  MEMORY[0x23EEBD040](v1, v7);

  return 0xD000000000000011;
}

id sub_23BDBE8F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23BDC6430();
  v59 = *(v4 - 8);
  v60 = v4;
  MEMORY[0x28223BE20](v4);
  v58 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23BD9628C(&qword_27E1C5960, &qword_23BDC8F50);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v55 - v7;
  v9 = sub_23BD9628C(&qword_27E1C5CA0, &unk_23BDC9650);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v55 - v10;
  v12 = sub_23BDC6350();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TemplateData(0);
  sub_23BDA38EC(a1 + *(v16 + 20), v8);
  v17 = sub_23BDC6240();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v8, 1, v17) == 1)
  {
    sub_23BD962D4(v8, &qword_27E1C5960, &qword_23BDC8F50);
    (*(v13 + 56))(v11, 1, 1, v12);
  }

  else
  {
    sub_23BDC6220();
    (*(v18 + 8))(v8, v17);
    if ((*(v13 + 48))(v11, 1, v12) != 1)
    {
      (*(v13 + 32))(v15, v11, v12);
      v32 = sub_23BDC6010();
      (*(*(v32 - 8) + 16))(a2, a1, v32);
      v33 = *(v16 + 24);
      v34 = type metadata accessor for AQINumericalTemplateModel(0);
      sub_23BD9CC98(a1 + v33, a2 + v34[5]);
      v57 = sub_23BDC6330();
      v35 = v58;
      sub_23BDC6320();
      v36 = sub_23BDC63F0();
      v55 = v37;
      v56 = v36;
      (*(v59 + 8))(v35, v60);
      v38 = sub_23BDC08E8(v15);
      v40 = v39;
      v42 = v41;
      v43 = v38;
      v45 = v44;
      v46 = sub_23BDC6310();
      v48 = v47;
      result = (*(v13 + 8))(v15, v12);
      v49 = a2 + v34[6];
      v50 = v56;
      *v49 = v57;
      *(v49 + 8) = 0;
      v51 = (a2 + v34[7]);
      v52 = v55;
      *v51 = v50;
      v51[1] = v52;
      v53 = a2 + v34[8];
      *v53 = v40;
      *(v53 + 8) = v42;
      *(v53 + 16) = v43;
      *(v53 + 24) = v45;
      v54 = (a2 + v34[9]);
      *v54 = v46;
      v54[1] = v48;
      return result;
    }
  }

  sub_23BD962D4(v11, &qword_27E1C5CA0, &unk_23BDC9650);
  v19 = sub_23BDC6010();
  (*(*(v19 - 8) + 16))(a2, a1, v19);
  v20 = *(v16 + 24);
  v21 = type metadata accessor for AQINumericalTemplateModel(0);
  sub_23BD9CC98(a1 + v20, a2 + v21[5]);
  if (qword_27E1C5620 != -1)
  {
    swift_once();
  }

  v22 = qword_27E1C7800;
  v23 = *algn_27E1C7808;
  v24 = dword_27E1C7810;
  v25 = qword_27E1C7818;
  v60 = qword_27E1C7818;
  v26 = a2 + v21[6];
  *v26 = 0;
  *(v26 + 8) = 1;
  v27 = (a2 + v21[7]);
  *v27 = 0;
  v27[1] = 0;
  v28 = a2 + v21[8];
  *v28 = v22;
  *(v28 + 8) = v23;
  *(v28 + 16) = v24;
  *(v28 + 24) = v25;
  v29 = (a2 + v21[9]);
  *v29 = 0;
  v29[1] = 0;

  v30 = v60;

  return v30;
}

double sub_23BDBEE4C@<D0>(uint64_t a1@<X8>)
{
  sub_23BD97BB4();
  v2 = MEMORY[0x277D84F90];
  v3 = 8;
  v4 = &qword_284E8CD98;
  do
  {

    sub_23BDC6830();
    v5 = sub_23BDC6540();
    v7 = v6;
    v8 = v5;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_23BDA1C2C(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_23BDA1C2C((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v11 = &v2[16 * v10];
    *(v11 + 4) = v7;
    *(v11 + 5) = v8;
    v4 += 3;
    --v3;
  }

  while (v3);
  sub_23BD9628C(&qword_27E1C5DE8, &unk_23BDC99B0);
  swift_arrayDestroy();
  v12.n128_u64[0] = 0x4045000000000000;
  v13 = sub_23BDC0718(v2, v12);
  v15 = v14;
  v17 = v16;
  v19 = v18;

  sub_23BD9D208();
  v20 = type metadata accessor for AQINumericalTemplateModel(0);
  sub_23BD9D20C();
  v21 = a1 + v20[6];
  *v21 = 42;
  *(v21 + 8) = 0;
  *(a1 + v20[7]) = xmmword_23BDC9940;
  v22 = a1 + v20[8];
  *v22 = v13;
  *(v22 + 8) = v15;
  *(v22 + 16) = v17;
  *(v22 + 24) = v19;
  result = 2533054.62;
  *(a1 + v20[9]) = xmmword_23BDC9950;
  return result;
}

unint64_t sub_23BDBF014(uint64_t a1)
{
  result = sub_23BDBF03C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23BDBF03C()
{
  result = qword_27E1C5DE0;
  if (!qword_27E1C5DE0)
  {
    type metadata accessor for AQINumericalTemplateModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C5DE0);
  }

  return result;
}

uint64_t type metadata accessor for AQINumericalTemplateModel(uint64_t a1)
{
  result = qword_27E1C5DF0;
  if (!qword_27E1C5DF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BDBF0F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BDC6010();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_23BDC6590();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_23BDBF214(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_23BDC6010();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_23BDC6590();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_23BDBF31C(uint64_t a1)
{
  sub_23BDC6010();
  if (v1 <= 0x3F)
  {
    sub_23BDC6590();
    if (v2 <= 0x3F)
    {
      sub_23BD9D15C(319, &qword_27E1C59C8, MEMORY[0x277D83B88]);
      if (v3 <= 0x3F)
      {
        sub_23BD9D15C(319, &qword_27E1C59D0, MEMORY[0x277D837D0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_23BDBF400()
{
  type metadata accessor for AQINumericalTemplateFormatter();
  v0 = swift_allocObject();
  result = sub_23BDC0568(&unk_27E1C5E08, v1, type metadata accessor for AQINumericalTemplateFormatter, &unk_23BDC9A00);
  *&xmmword_27E1C77F0 = v0;
  *(&xmmword_27E1C77F0 + 1) = result;
  return result;
}

id sub_23BDBF4E0(uint64_t a1)
{
  if (qword_27E1C55D0 != -1)
  {
    swift_once();
  }

  v2 = qword_27E1C5B70;
  v3 = sub_23BDC66C0();
  v4 = sub_23BDC66C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  if (!v5)
  {
    sub_23BDC66F0();
    v5 = sub_23BDC66C0();
  }

  v6 = objc_opt_self();
  v7 = [v6 textProviderWithText_];

  v8 = type metadata accessor for AQINumericalTemplateModel(0);
  if (*(a1 + *(v8 + 24) + 8) == 1)
  {
    v9 = objc_opt_self();
    v10 = v7;
    v11 = [v9 systemCyanColor];
    [v10 setTintColor_];

    sub_23BDC6600();
  }

  else
  {
    [v7 setTintColor_];
    sub_23BD9CD8C();
    sub_23BDC6870();
  }

  v12 = sub_23BDC66C0();

  v13 = [v6 textProviderWithText_];

  v14 = [objc_allocWithZone(MEMORY[0x277CBBA70]) initWithLine1TextProvider:v7 line2TextProvider:v13];
  return v14;
}

id sub_23BDBF734(uint64_t a1)
{
  v2 = type metadata accessor for AQINumericalTemplateModel(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BDBFAB0(a1, v4);
  v5 = sub_23BDBA204();
  v6 = [objc_opt_self() systemCyanColor];
  [v5 setTintColor_];

  sub_23BDBFB14(v4);
  if (qword_27E1C55D0 != -1)
  {
    swift_once();
  }

  v7 = qword_27E1C5B70;
  v8 = sub_23BDC66C0();
  v9 = sub_23BDC66C0();
  v10 = [v7 localizedStringForKey:v8 value:0 table:v9];

  if (!v10)
  {
    sub_23BDC66F0();
    v10 = sub_23BDC66C0();
  }

  sub_23BD9628C(&unk_27E1C5BA0, &unk_23BDC8CA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23BDC8C40;
  v12 = (a1 + *(v2 + 24));
  if (v12[1])
  {
    v13 = sub_23BDC6600();
  }

  else
  {
    v23 = *v12;
    sub_23BD9CD8C();
    v13 = sub_23BDC6870();
  }

  v15 = v13;
  v16 = v14;
  sub_23BD96820(0, &qword_27E1C5D30, 0x277CBBB88);
  *(inited + 56) = MEMORY[0x277D837D0];
  *(inited + 64) = sub_23BD97C54();
  *(inited + 32) = v15;
  *(inited + 40) = v16;
  v17 = sub_23BDC69C0();
  swift_setDeallocating();
  sub_23BD9628C(&qword_27E1C5BC0, &qword_23BDC94C0);
  swift_arrayDestroy();
  v18 = [swift_getObjCClassFromMetadata() textProviderWithFormat:v10 arguments:v17];

  v19 = sub_23BDC66C0();

  v20 = [objc_opt_self() textProviderWithText_];

  v21 = [objc_allocWithZone(MEMORY[0x277CBBA08]) initWithHeaderTextProvider:v5 body1TextProvider:v18 body2TextProvider:v20];
  return v21;
}

uint64_t sub_23BDBFAB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AQINumericalTemplateModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BDBFB14(uint64_t a1)
{
  v2 = type metadata accessor for AQINumericalTemplateModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_23BDBFB70(uint64_t a1)
{
  if (qword_27E1C55D0 != -1)
  {
    swift_once();
  }

  v2 = qword_27E1C5B70;
  v3 = sub_23BDC66C0();
  v4 = sub_23BDC66C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  if (!v5)
  {
    sub_23BDC66F0();
    v5 = sub_23BDC66C0();
  }

  sub_23BD9628C(&unk_27E1C5BA0, &unk_23BDC8CA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23BDC8C40;
  if (*(a1 + *(type metadata accessor for AQINumericalTemplateModel(0) + 24) + 8))
  {
    v7 = sub_23BDC6600();
  }

  else
  {
    sub_23BD9CD8C();
    v7 = sub_23BDC6870();
  }

  v9 = v7;
  v10 = v8;
  sub_23BD96820(0, &qword_27E1C5D30, 0x277CBBB88);
  *(inited + 56) = MEMORY[0x277D837D0];
  *(inited + 64) = sub_23BD97C54();
  *(inited + 32) = v9;
  *(inited + 40) = v10;
  v11 = sub_23BDC69C0();
  swift_setDeallocating();
  sub_23BD9628C(&qword_27E1C5BC0, &qword_23BDC94C0);
  swift_arrayDestroy();
  v12 = [swift_getObjCClassFromMetadata() textProviderWithFormat:v5 arguments:v11];

  v13 = [objc_allocWithZone(MEMORY[0x277CBBA90]) initWithTextProvider_];
  return v13;
}

id sub_23BDBFDC4(uint64_t a1)
{
  v2 = type metadata accessor for AQINumericalTemplateModel(0);
  if ((*(a1 + *(v2 + 24) + 8) & 1) != 0 || (v3 = (a1 + *(v2 + 28)), (v4 = v3[1]) == 0))
  {
    if (qword_27E1C55D0 != -1)
    {
      swift_once();
    }

    v17 = qword_27E1C5B70;
    v18 = sub_23BDC66C0();
    v19 = sub_23BDC66C0();
    v20 = [v17 localizedStringForKey:v18 value:0 table:v19];

    sub_23BDC66F0();
  }

  else
  {
    v5 = *v3;
    v6 = qword_27E1C55D0;

    if (v6 != -1)
    {
      swift_once();
    }

    v7 = qword_27E1C5B70;
    v8 = sub_23BDC66C0();
    v9 = sub_23BDC66C0();
    v10 = [v7 localizedStringForKey:v8 value:0 table:v9];

    sub_23BDC66F0();
    sub_23BD9628C(&unk_27E1C5BA0, &unk_23BDC8CA0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_23BDC8C50;
    sub_23BD9CD8C();
    v12 = sub_23BDC6870();
    v14 = v13;
    v15 = MEMORY[0x277D837D0];
    *(v11 + 56) = MEMORY[0x277D837D0];
    v16 = sub_23BD97C54();
    *(v11 + 32) = v12;
    *(v11 + 40) = v14;
    *(v11 + 96) = v15;
    *(v11 + 104) = v16;
    *(v11 + 64) = v16;
    *(v11 + 72) = v5;
    *(v11 + 80) = v4;
    sub_23BDC6700();
  }

  v21 = sub_23BDC66C0();

  v22 = [objc_opt_self() textProviderWithText_];

  v23 = [objc_allocWithZone(MEMORY[0x277CBBA80]) initWithTextProvider_];
  return v23;
}

id sub_23BDC00F4(uint64_t a1)
{
  v2 = type metadata accessor for AQINumericalTemplateModel(0);
  v3 = a1 + *(v2 + 32);
  v4 = *(v3 + 16);
  sub_23BD96820(0, &qword_27E1C5770, 0x277D75348);
  v5 = sub_23BDC6770();
  sub_23BD96820(0, &qword_27E1C5A68, 0x277CCABB0);
  v6 = sub_23BDC6770();
  v7 = objc_opt_self();
  LODWORD(v8) = v4;
  [v7 gaugeProviderWithStyle:0 gaugeColors:v5 gaugeColorLocations:v6 fillFraction:v8];

  if (qword_27E1C55D0 != -1)
  {
    swift_once();
  }

  v9 = qword_27E1C5B70;
  v10 = sub_23BDC66C0();
  v11 = sub_23BDC66C0();
  v12 = [v9 localizedStringForKey:v10 value:0 table:v11];

  if (!v12)
  {
    sub_23BDC66F0();
    v12 = sub_23BDC66C0();
  }

  v13 = objc_opt_self();
  v14 = [v13 textProviderWithText_];

  [v14 setTintColor_];
  if (*(a1 + *(v2 + 24) + 8))
  {
    sub_23BDC6600();
  }

  else
  {
    sub_23BD9CD8C();
    sub_23BDC6870();
  }

  v15 = sub_23BDC66C0();

  v16 = [v13 textProviderWithText_];

  return v16;
}

id sub_23BDC0384(uint64_t a1, Class *a2)
{
  if (qword_27E1C55D0 != -1)
  {
    swift_once();
  }

  v4 = qword_27E1C5B70;
  v5 = sub_23BDC66C0();
  v6 = sub_23BDC66C0();
  v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

  if (!v7)
  {
    sub_23BDC66F0();
    v7 = sub_23BDC66C0();
  }

  v8 = objc_opt_self();
  v9 = [v8 textProviderWithText_];

  if (*(a1 + *(type metadata accessor for AQINumericalTemplateModel(0) + 24) + 8))
  {
    sub_23BDC6600();
  }

  else
  {
    sub_23BD9CD8C();
    sub_23BDC6870();
  }

  v10 = sub_23BDC66C0();

  v11 = [v8 textProviderWithText_];

  v12 = [objc_allocWithZone(*a2) initWithLine1TextProvider:v9 line2TextProvider:v11];
  return v12;
}

uint64_t sub_23BDC0568(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_23BDC05B0()
{
  v0 = sub_23BDC05DC();
  qword_27E1C7800 = v1;
  *algn_27E1C7808 = v2;
  dword_27E1C7810 = LODWORD(v0);
  qword_27E1C7818 = v3;
}

float sub_23BDC05DC()
{
  sub_23BD9628C(&qword_27E1C5C80, qword_23BDC9A30);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_23BDC9A20;
  v1 = objc_opt_self();
  *(v0 + 32) = [v1 grayColor];
  *(v0 + 40) = [v1 grayColor];
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_23BDC9A20;
  *(v2 + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  *(v2 + 40) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v3 = *MEMORY[0x277CBB6C8];
  v4 = [v1 whiteColor];
  return v3;
}

uint64_t sub_23BDC0718(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f64[0];
  v12 = MEMORY[0x277D84F90];
  v13 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *(a1 + 16 * v3 + 16);
    v5 = (a1 + 40);
    v6 = *(a1 + 16);
    do
    {
      v7 = *(v5 - 1);
      v8 = *v5;
      MEMORY[0x23EEBD070]();
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_23BDC6790();
      }

      sub_23BDC67A0();
      v9 = v13;
      [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      MEMORY[0x23EEBD070]();
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_23BDC6790();
      }

      sub_23BDC67A0();

      v5 += 2;
      --v6;
    }

    while (v6);
    MEMORY[0x23EEBCE60](a1, v2);
  }

  else
  {
    MEMORY[0x23EEBCE60](a2);
    return MEMORY[0x277D84F90];
  }

  return v9;
}

float sub_23BDC08E8(uint64_t a1)
{
  v2 = sub_23BDC6480();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23BDC6450();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23BDC63E0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35[1] = a1;
  sub_23BDC6340();
  sub_23BDC63D0();
  (*(v11 + 8))(v13, v10);
  v14 = sub_23BDC6440();
  (*(v7 + 8))(v9, v6);
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = sub_23BD97BB4();
    v18 = *(v3 + 16);
    v17 = v3 + 16;
    v37 = v18;
    v38 = v16;
    v19 = *(v17 + 64);
    v35[0] = v14;
    v20 = v14 + ((v19 + 32) & ~v19);
    v36 = *(v17 + 56);
    v21 = MEMORY[0x277D84F90];
    v39 = v17;
    do
    {
      v37(v5, v20, v2);
      sub_23BDC6460();
      v22 = sub_23BDC6830();
      sub_23BDC6470();
      (*(v17 - 8))(v5, v2);
      v23 = sub_23BDC6540();
      v25 = v24;
      v26 = v23;
      v27 = v22;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_23BDA1C2C(0, *(v21 + 2) + 1, 1, v21);
      }

      v29 = *(v21 + 2);
      v28 = *(v21 + 3);
      if (v29 >= v28 >> 1)
      {
        v21 = sub_23BDA1C2C((v28 > 1), v29 + 1, 1, v21);
      }

      *(v21 + 2) = v29 + 1;
      v30 = &v21[16 * v29];
      *(v30 + 4) = v25;
      *(v30 + 5) = v26;
      v20 += v36;
      --v15;
    }

    while (v15);
  }

  else
  {

    v21 = MEMORY[0x277D84F90];
  }

  v31.n128_f64[0] = sub_23BDC6330();
  sub_23BDC0718(v21, v31);
  v33 = v32;

  return v33;
}

__n128 sub_23BDC0C88(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_23BDC0C94(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_23BDC0CDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23BDC0D2C()
{
  type metadata accessor for WindTemplateFormatter();
  v0 = swift_allocObject();
  result = sub_23BDC3598(&unk_27E1C5E50, v1, type metadata accessor for WindTemplateFormatter, &unk_23BDC9AA8);
  *&xmmword_27E1C7820 = v0;
  *(&xmmword_27E1C7820 + 1) = result;
  return result;
}

id sub_23BDC0E0C(uint64_t a1)
{
  v2 = sub_23BDC6080();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23BD9628C(&unk_27E1C5D50, &unk_23BDC8F70);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v26 - v7;
  v9 = type metadata accessor for WindTemplateModel(0);
  if (*(a1 + *(v9 + 24)) != 16)
  {
    sub_23BDC6490();
    sub_23BDBC79C(a1 + *(v9 + 28), v8);
    v10 = sub_23BD9628C(&unk_27E1C5D70, &unk_23BDC9100);
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v8, 1, v10) != 1)
    {
      sub_23BDC6070();
      sub_23BDC5F20();
      (*(v3 + 8))(v5, v2);
      (*(v11 + 8))(v8, v10);
      v30 = v27;
      sub_23BD96334(&v30);
      v29 = v28;
      sub_23BD96334(&v29);
      v18 = sub_23BDC66C0();

      v19 = objc_opt_self();
      v20 = [v19 textProviderWithText_];

      v21 = objc_opt_self();
      v15 = v20;
      v22 = [v21 systemCyanColor];
      [v15 setTintColor_];

      v23 = sub_23BDC66C0();

      v24 = [v19 textProviderWithText_];

      v17 = [objc_allocWithZone(MEMORY[0x277CBBA70]) initWithLine1TextProvider:v15 line2TextProvider:v24];
      goto LABEL_6;
    }

    sub_23BDC11E0(v8);
  }

  sub_23BDC6600();
  v12 = sub_23BDC66C0();

  v13 = [objc_opt_self() textProviderWithText_];

  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 systemCyanColor];
  [v15 setTintColor_];

  v17 = [objc_allocWithZone(MEMORY[0x277CBBA60]) initWithTextProvider_];
LABEL_6:

  return v17;
}

uint64_t sub_23BDC11E0(uint64_t a1)
{
  v2 = sub_23BD9628C(&unk_27E1C5D50, &unk_23BDC8F70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_23BDC1248(uint64_t a1)
{
  v2 = sub_23BDC6080();
  v42 = *(v2 - 8);
  v43 = v2;
  MEMORY[0x28223BE20](v2);
  v41 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23BD9628C(&unk_27E1C5D50, &unk_23BDC8F70);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v39 - v8;
  v10 = sub_23BDC6590();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for WindTemplateModel(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a1;
  sub_23BDC1818(a1, v15, type metadata accessor for WindTemplateModel);
  sub_23BDC1818(&v15[v13[5]], v12, MEMORY[0x277D2C7F0]);
  sub_23BDBC79C(&v15[v13[7]], v9);
  v16 = sub_23BD9628C(&unk_27E1C5D70, &unk_23BDC9100);
  v40 = *(v16 - 8);
  v44 = *(v40 + 48);
  v44(v9, 1, v16);
  sub_23BDC11E0(v9);
  v17 = sub_23BDBA204();
  sub_23BDC1880(v12, MEMORY[0x277D2C7F0]);
  v18 = [objc_opt_self() systemCyanColor];
  v46 = v17;
  [v17 setTintColor_];

  sub_23BDC1880(v15, type metadata accessor for WindTemplateModel);
  if (qword_27E1C55D0 != -1)
  {
    swift_once();
  }

  v19 = qword_27E1C5B70;
  v20 = sub_23BDC66C0();
  v21 = sub_23BDC66C0();
  v22 = [v19 localizedStringForKey:v20 value:0 table:v21];

  sub_23BDC66F0();
  sub_23BD9628C(&unk_27E1C5BA0, &unk_23BDC8CA0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_23BDC8C40;
  v24 = v45;
  if (*(v45 + v13[6]) == 16)
  {
    v25 = sub_23BDC6600();
  }

  else
  {
    v25 = sub_23BDC6490();
  }

  v27 = v25;
  v28 = v26;
  *(v23 + 56) = MEMORY[0x277D837D0];
  *(v23 + 64) = sub_23BD97C54();
  *(v23 + 32) = v27;
  *(v23 + 40) = v28;
  sub_23BDC6700();

  v29 = sub_23BDC66C0();

  v30 = objc_opt_self();
  v31 = [v30 textProviderWithText_];

  sub_23BDBC79C(v24 + v13[7], v7);
  if (v44(v7, 1, v16) == 1)
  {
    sub_23BDC11E0(v7);
    sub_23BDC6600();
  }

  else
  {
    v32 = v41;
    sub_23BDC6070();
    sub_23BDC5F10();
    (*(v42 + 8))(v32, v43);
    (*(v40 + 8))(v7, v16);
  }

  v33 = sub_23BDC66C0();

  v34 = [v30 textProviderWithText_];

  v35 = objc_allocWithZone(MEMORY[0x277CBBA08]);
  v36 = v46;
  v37 = [v35 initWithHeaderTextProvider:v46 body1TextProvider:v31 body2TextProvider:v34];

  return v37;
}

uint64_t sub_23BDC1818(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23BDC1880(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_23BDC18E0(uint64_t a1)
{
  v2 = sub_23BDC6080();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23BD9628C(&unk_27E1C5D50, &unk_23BDC8F70);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v26 - v7;
  v9 = type metadata accessor for WindTemplateModel(0);
  if (*(a1 + *(v9 + 24)) == 16)
  {
    goto LABEL_4;
  }

  v10 = sub_23BDC6490();
  v12 = v11;
  sub_23BDBC79C(a1 + *(v9 + 28), v8);
  v13 = sub_23BD9628C(&unk_27E1C5D70, &unk_23BDC9100);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {

    sub_23BDC11E0(v8);
LABEL_4:
    sub_23BDC6600();
    goto LABEL_8;
  }

  sub_23BDC6070();
  sub_23BDC5F20();
  (*(v3 + 8))(v5, v2);
  (*(v14 + 8))(v8, v13);
  v28 = v26[1];
  sub_23BD96334(&v28);
  v27 = v26[2];
  sub_23BD96334(&v27);
  if (qword_27E1C55D0 != -1)
  {
    swift_once();
  }

  v15 = qword_27E1C5B70;
  v16 = sub_23BDC66C0();
  v17 = sub_23BDC66C0();
  v18 = [v15 localizedStringForKey:v16 value:0 table:v17];

  sub_23BDC66F0();
  sub_23BD9628C(&unk_27E1C5BA0, &unk_23BDC8CA0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_23BDC8C50;
  v20 = MEMORY[0x277D837D0];
  *(v19 + 56) = MEMORY[0x277D837D0];
  v21 = sub_23BD97C54();
  *(v19 + 64) = v21;
  *(v19 + 32) = v10;
  *(v19 + 40) = v12;
  *(v19 + 96) = v20;
  *(v19 + 104) = v21;
  *(v19 + 72) = v26[0];
  sub_23BDC6700();

LABEL_8:
  v22 = sub_23BDC66C0();

  v23 = [objc_opt_self() textProviderWithText_];

  v24 = [objc_allocWithZone(MEMORY[0x277CBBA90]) initWithTextProvider_];
  return v24;
}

id sub_23BDC1CB4(uint64_t a1)
{
  v2 = sub_23BDC6080();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23BD9628C(&unk_27E1C5D50, &unk_23BDC8F70);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v36 - v7;
  v9 = type metadata accessor for WindTemplateModel(0);
  if (*(a1 + *(v9 + 24)) == 16)
  {
    goto LABEL_4;
  }

  v10 = sub_23BDC6490();
  v12 = v11;
  sub_23BDBC79C(a1 + *(v9 + 28), v8);
  v13 = sub_23BD9628C(&unk_27E1C5D70, &unk_23BDC9100);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {

    sub_23BDC11E0(v8);
LABEL_4:
    if (qword_27E1C55D0 != -1)
    {
      swift_once();
    }

    v15 = qword_27E1C5B70;
    v16 = sub_23BDC66C0();
    v17 = sub_23BDC66C0();
    v18 = [v15 localizedStringForKey:v16 value:0 table:v17];

    v19 = sub_23BDC66F0();
    v21 = v20;

    goto LABEL_10;
  }

  sub_23BDC6070();
  sub_23BDC5F20();
  (*(v3 + 8))(v5, v2);
  (*(v14 + 8))(v8, v13);
  v41 = v38;
  sub_23BD96334(&v41);
  v40 = v39;
  sub_23BD96334(&v40);
  if (qword_27E1C55D0 != -1)
  {
    swift_once();
  }

  v22 = qword_27E1C5B70;
  v23 = sub_23BDC66C0();
  v24 = sub_23BDC66C0();
  v25 = [v22 localizedStringForKey:v23 value:0 table:v24];

  sub_23BDC66F0();
  sub_23BD9628C(&unk_27E1C5BA0, &unk_23BDC8CA0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_23BDC9180;
  v27 = MEMORY[0x277D837D0];
  *(v26 + 56) = MEMORY[0x277D837D0];
  v28 = sub_23BD97C54();
  *(v26 + 64) = v28;
  *(v26 + 32) = v10;
  *(v26 + 40) = v12;
  *(v26 + 96) = v27;
  *(v26 + 104) = v28;
  *(v26 + 72) = v37;
  v29 = sub_23BDA61BC();
  *(v26 + 136) = v27;
  *(v26 + 144) = v28;
  *(v26 + 112) = v29;
  *(v26 + 120) = v30;
  v19 = sub_23BDC6700();
  v21 = v31;

LABEL_10:
  v36[0] = v19;
  v36[1] = v21;
  sub_23BD97C00();
  sub_23BDC6860();

  v32 = sub_23BDC66C0();

  v33 = [objc_opt_self() textProviderWithText_];

  v34 = [objc_allocWithZone(MEMORY[0x277CBBA80]) initWithTextProvider_];
  return v34;
}

id sub_23BDC218C(uint64_t a1)
{
  v2 = sub_23BDC6080();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23BD9628C(&unk_27E1C5D50, &unk_23BDC8F70);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - v7;
  v9 = type metadata accessor for WindTemplateModel(0);
  if (*(a1 + *(v9 + 24)) != 16)
  {
    sub_23BDC6490();
    sub_23BDBC79C(a1 + *(v9 + 28), v8);
    v10 = sub_23BD9628C(&unk_27E1C5D70, &unk_23BDC9100);
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v8, 1, v10) != 1)
    {
      sub_23BDC6070();
      sub_23BDC5F20();
      (*(v3 + 8))(v5, v2);
      (*(v11 + 8))(v8, v10);
      v27 = v24;
      sub_23BD96334(&v27);
      v26 = v25;
      sub_23BD96334(&v26);
      v15 = sub_23BDC66C0();

      v16 = objc_opt_self();
      v17 = [v16 textProviderWithText_];

      v18 = sub_23BDC66C0();

      v13 = [v16 textProviderWithText_];

      v14 = [objc_allocWithZone(MEMORY[0x277CBB7A8]) initWithLine1TextProvider:v17 line2TextProvider:v13];
      goto LABEL_6;
    }

    sub_23BDC11E0(v8);
  }

  sub_23BDC6600();
  v12 = sub_23BDC66C0();

  v13 = [objc_opt_self() textProviderWithText_];

  v14 = [objc_allocWithZone(MEMORY[0x277CBB798]) initWithTextProvider_];
LABEL_6:

  v19 = objc_opt_self();
  v20 = v14;
  v21 = [v19 systemCyanColor];
  [v20 setTintColor_];

  return v20;
}

id sub_23BDC2514(uint64_t a1)
{
  v2 = sub_23BDC6080();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23BD9628C(&unk_27E1C5D50, &unk_23BDC8F70);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v28 - v7;
  v9 = type metadata accessor for WindTemplateModel(0);
  if (*(a1 + *(v9 + 24)) != 16)
  {
    sub_23BDC6490();
    sub_23BDBC79C(a1 + *(v9 + 28), v8);
    v10 = sub_23BD9628C(&unk_27E1C5D70, &unk_23BDC9100);
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v8, 1, v10) != 1)
    {
      sub_23BDC6070();
      sub_23BDC5F20();
      (*(v3 + 8))(v5, v2);
      (*(v11 + 8))(v8, v10);
      v32 = v29;
      sub_23BD96334(&v32);
      v31 = v30;
      sub_23BD96334(&v31);
      v18 = sub_23BDC66C0();

      v19 = objc_opt_self();
      v20 = [v19 textProviderWithText_];

      v21 = objc_opt_self();
      v22 = v20;
      v23 = [v21 whiteColor];
      [v22 setTintColor_];

      v24 = sub_23BDC66C0();

      v25 = [v19 textProviderWithText_];

      v15 = v25;
      v26 = [v21 whiteColor];
      [v15 setTintColor_];

      v17 = [objc_allocWithZone(MEMORY[0x277CBB808]) initWithLine1TextProvider:v22 line2TextProvider:v15];
      goto LABEL_6;
    }

    sub_23BDC11E0(v8);
  }

  sub_23BDC6600();
  v12 = sub_23BDC66C0();

  v13 = [objc_opt_self() textProviderWithText_];

  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 whiteColor];
  [v15 setTintColor_];

  v17 = [objc_allocWithZone(MEMORY[0x277CBB7F8]) initWithTextProvider_];
LABEL_6:

  return v17;
}

id sub_23BDC2928(uint64_t a1)
{
  v2 = sub_23BDC6080();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23BD9628C(&unk_27E1C5D50, &unk_23BDC8F70);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v30 - v7;
  v9 = type metadata accessor for WindTemplateModel(0);
  sub_23BDBC79C(a1 + *(v9 + 28), v8);
  v10 = sub_23BD9628C(&unk_27E1C5D70, &unk_23BDC9100);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    sub_23BDC11E0(v8);
    if (qword_27E1C55D0 != -1)
    {
      swift_once();
    }

    v12 = qword_27E1C5B70;
    v13 = sub_23BDC66C0();
    v14 = sub_23BDC66C0();
    v15 = [v12 localizedStringForKey:v13 value:0 table:v14];

    sub_23BDC66F0();
    sub_23BD9628C(&unk_27E1C5BA0, &unk_23BDC8CA0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_23BDC8C40;
    v17 = sub_23BDA61BC();
    v19 = v18;
    *(v16 + 56) = MEMORY[0x277D837D0];
    *(v16 + 64) = sub_23BD97C54();
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    sub_23BDC6700();
  }

  else
  {
    sub_23BDC6070();
    sub_23BDC5F10();
    (*(v3 + 8))(v5, v2);
    (*(v11 + 8))(v8, v10);
  }

  v20 = sub_23BDC66C0();

  v21 = objc_opt_self();
  v22 = [v21 textProviderWithText_];

  v23 = objc_opt_self();
  v24 = v22;
  v25 = [v23 systemCyanColor];
  [v24 setTintColor_];

  if (*(a1 + *(v9 + 24)) == 16)
  {
    sub_23BDC6600();
  }

  else
  {
    sub_23BDC6490();
  }

  v26 = sub_23BDC66C0();

  v27 = [v21 textProviderWithText_];

  v28 = [objc_allocWithZone(MEMORY[0x277CBB900]) initWithInnerTextProvider:v24 outerTextProvider:v27];
  return v28;
}

uint64_t sub_23BDC2D68(uint64_t a1)
{
  v2 = sub_23BDC6080();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23BD9628C(&unk_27E1C5D50, &unk_23BDC8F70);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - v7;
  v28 = sub_23BDA61BC();
  v10 = v9;
  v11 = type metadata accessor for WindTemplateModel(0);
  if (*(a1 + *(v11 + 24)) == 16)
  {
    v12 = sub_23BDC6600();
  }

  else
  {
    v12 = sub_23BDC6490();
  }

  v14 = v12;
  v15 = v13;
  sub_23BDBC79C(a1 + *(v11 + 28), v8);
  v16 = sub_23BD9628C(&unk_27E1C5D70, &unk_23BDC9100);
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v8, 1, v16) == 1)
  {
    sub_23BDC11E0(v8);
    v18 = sub_23BDC6600();
    v20 = v19;
  }

  else
  {
    sub_23BDC6070();
    sub_23BDC5F20();
    (*(v3 + 8))(v5, v2);
    (*(v17 + 8))(v8, v16);
    v18 = v31;
    v20 = v32;
    v36 = v33;
    sub_23BD96334(&v36);
    v35 = v34;
    sub_23BD96334(&v35);
  }

  sub_23BD9628C(&qword_27E1C5E28, &qword_23BDC9AC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23BDC9180;
  *(inited + 32) = sub_23BDC66F0();
  *(inited + 40) = v22;
  *(inited + 48) = v14;
  *(inited + 56) = v15;
  *(inited + 64) = sub_23BDC66F0();
  *(inited + 72) = v23;
  *(inited + 80) = v18;
  *(inited + 88) = v20;
  *(inited + 96) = sub_23BDC66F0();
  *(inited + 104) = v24;
  *(inited + 112) = v28;
  *(inited + 120) = v10;
  v25 = sub_23BD983CC(inited);
  swift_setDeallocating();
  sub_23BD9628C(&qword_27E1C5E30, &qword_23BDC9AD0);
  swift_arrayDestroy();
  v30 = v25;
  sub_23BD9628C(&qword_27E1C5E38, &qword_23BDC9AD8);
  sub_23BD9628C(&qword_27E1C5E40, &unk_23BDC9AE0);
  if (swift_dynamicCast())
  {
    return v29;
  }

  else
  {
    return 0;
  }
}

void *sub_23BDC3108(uint64_t a1, unint64_t *a2, void *a3, Class *a4)
{
  sub_23BD96820(0, a2, a3);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() fullColorImageProviderWithImageViewClass_];
  if (sub_23BDC2D68(a1))
  {
    sub_23BD9628C(&unk_27E1C5880, &unk_23BDC97B0);
    v8 = sub_23BDC6670();
  }

  else
  {
    v8 = 0;
  }

  [v7 setMetadata_];

  v9 = [objc_allocWithZone(*a4) initWithImageProvider_];
  v10 = sub_23BDB1C20();

  return v10;
}

id sub_23BDC3210(uint64_t a1)
{
  v2 = sub_23BDC6080();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23BD9628C(&unk_27E1C5D50, &unk_23BDC8F70);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - v7;
  v9 = type metadata accessor for WindTemplateModel(0);
  if (*(a1 + *(v9 + 24)) != 16)
  {
    sub_23BDC6490();
    sub_23BDBC79C(a1 + *(v9 + 28), v8);
    v10 = sub_23BD9628C(&unk_27E1C5D70, &unk_23BDC9100);
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v8, 1, v10) != 1)
    {
      sub_23BDC6070();
      sub_23BDC5F20();
      (*(v3 + 8))(v5, v2);
      (*(v11 + 8))(v8, v10);
      v27 = v24;
      sub_23BD96334(&v27);
      v26 = v25;
      sub_23BD96334(&v26);
      v19 = sub_23BDC66C0();

      v20 = objc_opt_self();
      v16 = [v20 textProviderWithText_];

      v21 = sub_23BDC66C0();

      v17 = [v20 textProviderWithText_];

      v18 = [objc_allocWithZone(MEMORY[0x277CBB760]) initWithLine1TextProvider:v16 line2TextProvider:v17];
      goto LABEL_6;
    }

    sub_23BDC11E0(v8);
  }

  sub_23BDC6600();
  v12 = sub_23BDC66C0();

  v13 = [objc_opt_self() textProviderWithText_];

  v14 = [objc_allocWithZone(MEMORY[0x277CBB750]) initWithTextProvider_];
  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 systemCyanColor];
  [v16 setTintColor_];
  v18 = v16;
LABEL_6:

  return v18;
}

uint64_t sub_23BDC3598(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_23BDC35E0(unint64_t a1)
{
  if (a1 > 0xC)
  {
    return 0;
  }

  else
  {
    return *&aModulars[8 * a1];
  }
}

double sub_23BDC3614()
{
  sub_23BD9628C(&qword_27E1C5DA8, &unk_23BDC9890);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_23BDC9AF0;
  *(v0 + 32) = xmmword_23BDC9B00;
  *(v0 + 48) = xmmword_23BDC9B10;
  *(v0 + 64) = xmmword_23BDC9B20;
  *(v0 + 80) = xmmword_23BDC9830;
  *(v0 + 96) = xmmword_23BDC9840;
  *&result = 11;
  *(v0 + 112) = xmmword_23BDC9850;
  *(v0 + 128) = *MEMORY[0x277CBB668];
  return result;
}

double sub_23BDC36A0()
{
  sub_23BD9628C(&qword_27E1C5DA8, &unk_23BDC9890);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_23BDC9B30;
  *(v0 + 32) = xmmword_23BDC9B00;
  *(v0 + 48) = xmmword_23BDC9B10;
  *(v0 + 64) = xmmword_23BDC9B20;
  *&result = 7;
  *(v0 + 80) = xmmword_23BDC9830;
  *(v0 + 96) = xmmword_23BDC9840;
  v2 = *MEMORY[0x277CBB668];
  *(v0 + 112) = 12;
  *(v0 + 120) = v2;
  return result;
}

uint64_t sub_23BDC3724(uint64_t a1)
{
  off_27E1C5E60 = *sub_23BDC6620();
}

uint64_t sub_23BDC3758@<X0>(void *a1@<X8>)
{
  v67 = a1;
  v1 = sub_23BD9628C(&qword_27E1C5690, qword_23BDC8A10);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v66 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v68 = &v65 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v71 = &v65 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v70 = &v65 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v65 - v10;
  v12 = sub_23BDC6010();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v65 - v17;
  if (qword_27E1C5630 != -1)
  {
    swift_once();
  }

  v19 = *(*off_27E1C5E60 + 136);
  v20 = *off_27E1C5E60 + 136;
  v72 = v19(0, 0, 0);
  v69 = v21;
  v78 = MEMORY[0x277D84F90];
  sub_23BD9D208();
  v22 = sub_23BDC5F80();
  MEMORY[0x28223BE20](v22);
  *(&v65 - 2) = &v78;
  sub_23BDC5FD0();
  v23 = *(v13 + 8);
  v23(v16, v12);
  v23(v18, v12);
  v77 = MEMORY[0x277D84F90];
  v19(0x3FE3333333333333, 0, 1);
  sub_23BDC60B0();
  v24 = sub_23BDC60C0();
  v25 = *(v24 - 8);
  v73 = v25[7];
  v74 = (v25 + 7);
  v73(v11, 0, 1, v24);
  v26 = sub_23BDC66C0();

  v27 = sub_23BDC66C0();
  v75 = v25[6];
  v76 = (v25 + 6);
  v28 = 0;
  if (v75(v11, 1, v24) != 1)
  {
    v28 = sub_23BDC60A0();
    (v25[1])(v11, v24);
  }

  [objc_allocWithZone(MEMORY[0x277D2C7C0]) initWithTopString:v26 middleString:v27 bottomString:0 isDay:1 timeZone:v28];

  MEMORY[0x23EEBD070]();
  if (*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23BDC6790();
  }

  sub_23BDC67A0();
  v19(0x3FD3333333333333, 0, 1);
  v29 = v78;
  if (*(v78 + 16) < 2uLL)
  {
    __break(1u);
LABEL_29:
    sub_23BDC6790();
    goto LABEL_12;
  }

  v30 = v70;
  sub_23BDC60B0();
  v73(v30, 0, 1, v24);
  v31 = sub_23BDC66C0();

  v32 = sub_23BDC66C0();
  v33 = sub_23BDC66C0();

  if (v75(v30, 1, v24) == 1)
  {
    v34 = 0;
  }

  else
  {
    v34 = sub_23BDC60A0();
    (v25[1])(v30, v24);
  }

  v20 = v71;
  [objc_allocWithZone(MEMORY[0x277D2C7C0]) initWithTopString:v31 middleString:v32 bottomString:v33 isDay:1 timeZone:v34];

  MEMORY[0x23EEBD070]();
  if (*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_29;
  }

LABEL_12:
  sub_23BDC67A0();
  if (*(v29 + 16) < 3uLL)
  {
    __break(1u);
LABEL_31:
    sub_23BDC6790();
    goto LABEL_17;
  }

  sub_23BDC60B0();
  v73(v20, 0, 1, v24);
  v35 = sub_23BDC66C0();
  v36 = sub_23BDC66C0();
  v37 = sub_23BDC66C0();

  v38 = v75(v20, 1, v24);
  v65 = v25;
  if (v38 == 1)
  {
    v39 = 0;
  }

  else
  {
    v39 = sub_23BDC60A0();
    (v25[1])(v20, v24);
  }

  v25 = [objc_allocWithZone(MEMORY[0x277D2C7C0]) initWithTopString:v35 middleString:v36 bottomString:v37 isDay:1 timeZone:v39];

  MEMORY[0x23EEBD070]();
  if (*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_31;
  }

LABEL_17:
  sub_23BDC67A0();
  if (*(v29 + 16) < 4uLL)
  {
    __break(1u);
LABEL_33:
    sub_23BDC6790();
    goto LABEL_22;
  }

  v40 = v68;
  sub_23BDC60B0();
  v73(v40, 0, 1, v24);
  v41 = sub_23BDC66C0();
  v42 = sub_23BDC66C0();
  v43 = sub_23BDC66C0();

  if (v75(v40, 1, v24) == 1)
  {
    v44 = 0;
    v25 = v65;
  }

  else
  {
    v44 = sub_23BDC60A0();
    v25 = v65;
    (v65)[1](v40, v24);
  }

  [objc_allocWithZone(MEMORY[0x277D2C7C0]) initWithTopString:v41 middleString:v42 bottomString:v43 isDay:1 timeZone:v44];

  MEMORY[0x23EEBD070]();
  if (*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_33;
  }

LABEL_22:
  sub_23BDC67A0();
  if (*(v29 + 16) < 5uLL)
  {
    __break(1u);
LABEL_35:
    sub_23BDC6790();
    goto LABEL_27;
  }

  v45 = v66;
  sub_23BDC60B0();
  v73(v45, 0, 1, v24);
  v46 = sub_23BDC66C0();

  v47 = sub_23BDC66C0();
  v48 = sub_23BDC66C0();

  if (v75(v45, 1, v24) == 1)
  {
    v49 = 0;
  }

  else
  {
    v49 = sub_23BDC60A0();
    (v25[1])(v45, v24);
  }

  LOBYTE(v24) = 1;
  [objc_allocWithZone(MEMORY[0x277D2C7C0]) initWithTopString:v46 middleString:v47 bottomString:v48 isDay:1 timeZone:v49];

  MEMORY[0x23EEBD070]();
  if (*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_35;
  }

LABEL_27:
  sub_23BDC67A0();
  v50 = objc_allocWithZone(MEMORY[0x277D2C7B8]);
  sub_23BD96820(0, &qword_27E1C5688, 0x277D2C7C0);
  v51 = sub_23BDC6770();

  v52 = [v50 initWithEntries_];

  v53 = *(**sub_23BDC6620() + 136);

  v54 = v53(0x3FE3333333333333, 0, 1);
  v56 = v55;

  v57 = type metadata accessor for ChanceRainRectangularTemplateModel(0);
  v58 = v67;
  v59 = v67 + *(v57 + 20);
  sub_23BD9D208();
  v60 = type metadata accessor for ChanceRainTemplateModel(0);
  sub_23BD9D20C();
  v61 = &v59[v60[6]];
  *v61 = 0x3FE3333333333333;
  v61[8] = 0;
  v62 = &v59[v60[7]];
  *v62 = v54;
  v62[1] = v56;
  v59[v60[8]] = v24;
  v63 = &v59[v60[9]];
  *v63 = 0xD000000000000013;
  *(v63 + 1) = 0x800000023BDC7AF0;
  sub_23BDC6000();
  sub_23BD9D20C();

  *v58 = v52;
  return result;
}

char *sub_23BDC4350(uint64_t a1, char **a2)
{
  if (qword_27E1C55D8 != -1)
  {
    swift_once();
  }

  v3 = qword_27E1C5B78;
  v4 = sub_23BDC5FA0();
  v5 = [v3 stringFromDate_];

  v6 = sub_23BDC66F0();
  v8 = v7;

  v9 = *a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v9;
  if ((result & 1) == 0)
  {
    result = sub_23BDA1B20(0, *(v9 + 2) + 1, 1, v9);
    v9 = result;
    *a2 = result;
  }

  v12 = *(v9 + 2);
  v11 = *(v9 + 3);
  if (v12 >= v11 >> 1)
  {
    result = sub_23BDA1B20((v11 > 1), v12 + 1, 1, v9);
    v9 = result;
    *a2 = result;
  }

  *(v9 + 2) = v12 + 1;
  v13 = &v9[16 * v12];
  *(v13 + 4) = v6;
  *(v13 + 5) = v8;
  return result;
}

uint64_t sub_23BDC4474(uint64_t a1)
{
  result = sub_23BDC49DC(&qword_27E1C5E68, type metadata accessor for ChanceRainRectangularTemplateModel, &unk_23BDC9C2C);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for ChanceRainRectangularTemplateModel(uint64_t a1)
{
  result = qword_27E1C5E70;
  if (!qword_27E1C5E70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BDC4534(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for ChanceRainTemplateModel(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = sub_23BDC6010();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = sub_23BDC6590();
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[7]];

  return v15(v16, a2, v14);
}

char *sub_23BDC46B4(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for ChanceRainTemplateModel(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_23BDC6010();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = sub_23BDC6590();
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[7]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_23BDC4820(uint64_t a1)
{
  result = sub_23BD96820(319, &qword_27E1C56B8, 0x277D2C7B8);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ChanceRainTemplateModel(319);
    if (v3 <= 0x3F)
    {
      result = sub_23BDC6010();
      if (v4 <= 0x3F)
      {
        result = sub_23BDC6590();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_23BDC492C(uint64_t a1)
{
  result = sub_23BDC49DC(&qword_27E1C5B98, type metadata accessor for ChanceRainRectangularTemplateModel, &unk_23BDC9C10);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23BDC4984(uint64_t a1)
{
  result = sub_23BDC49DC(&qword_27E1C5E80, type metadata accessor for ChanceRainRectangularTemplateModel, &unk_23BDC9C84);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23BDC49DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23BDC4A24()
{
  type metadata accessor for AQINonNumericalTemplateFormatter();
  v0 = swift_allocObject();
  result = sub_23BDC5678(&qword_27E1C5E90, v1, type metadata accessor for AQINonNumericalTemplateFormatter, &unk_23BDC9CE4);
  *&xmmword_27E1C7830 = v0;
  *(&xmmword_27E1C7830 + 1) = result;
  return result;
}

id sub_23BDC4B04(uint64_t a1)
{
  v4 = type metadata accessor for AQINonNumericalTemplateModel(0);
  v5 = *(a1 + *(v4 + 32));
  v6 = __OFSUB__(v5, 1);
  v7 = v5 - 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v1 = v7 & ~(v7 >> 63);
    v2 = *(a1 + *(v4 + 36));
    if (!(v2 >> 62))
    {
      v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  v8 = sub_23BDC6930();
LABEL_4:
  if (v1 >= v8)
  {
LABEL_8:

    goto LABEL_9;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    MEMORY[0x23EEBD1D0](v1, v2);
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  if (v1 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  v9 = sub_23BDC66C0();
  v10 = [objc_opt_self() symbolImageProviderWithSystemName_];

  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 whiteColor];
  [v12 setTintColor_];

  v14 = [objc_allocWithZone(MEMORY[0x277CBBA50]) initWithImageProvider_];
  return v14;
}

id sub_23BDC4C90(uint64_t a1)
{
  v2 = type metadata accessor for AQINonNumericalTemplateModel(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BDC4EF0(a1, v4);
  v5 = sub_23BDBA204();
  v6 = [objc_opt_self() systemCyanColor];
  [v5 setTintColor_];

  sub_23BDC4F54(v4);
  if (qword_27E1C55D0 != -1)
  {
    swift_once();
  }

  v7 = qword_27E1C5B70;
  v8 = sub_23BDC66C0();
  v9 = sub_23BDC66C0();
  v10 = [v7 localizedStringForKey:v8 value:0 table:v9];

  if (!v10)
  {
    sub_23BDC66F0();
    v10 = sub_23BDC66C0();
  }

  v11 = objc_opt_self();
  v12 = [v11 textProviderWithText_];

  v13 = sub_23BDC66C0();
  v14 = [v11 textProviderWithText_];

  v15 = [objc_allocWithZone(MEMORY[0x277CBBA08]) initWithHeaderTextProvider:v5 body1TextProvider:v12 body2TextProvider:v14];
  return v15;
}

uint64_t sub_23BDC4EF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AQINonNumericalTemplateModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BDC4F54(uint64_t a1)
{
  v2 = type metadata accessor for AQINonNumericalTemplateModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_23BDC4FB0(uint64_t a1)
{
  if (qword_27E1C55D0 != -1)
  {
    swift_once();
  }

  v2 = qword_27E1C5B70;
  v3 = sub_23BDC66C0();
  v4 = sub_23BDC66C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  if (!v5)
  {
    sub_23BDC66F0();
    v5 = sub_23BDC66C0();
  }

  sub_23BD96820(0, &qword_27E1C5D30, 0x277CBBB88);
  sub_23BD9628C(&unk_27E1C5BA0, &unk_23BDC8CA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23BDC8C40;
  v7 = (a1 + *(type metadata accessor for AQINonNumericalTemplateModel(0) + 28));
  v9 = *v7;
  v8 = v7[1];
  *(inited + 56) = MEMORY[0x277D837D0];
  *(inited + 64) = sub_23BD97C54();
  *(inited + 32) = v9;
  *(inited + 40) = v8;

  v10 = sub_23BDC69C0();
  swift_setDeallocating();
  sub_23BD9628C(&qword_27E1C5BC0, &qword_23BDC94C0);
  swift_arrayDestroy();
  v11 = [swift_getObjCClassFromMetadata() textProviderWithFormat:v5 arguments:v10];

  v12 = [objc_allocWithZone(MEMORY[0x277CBBA80]) initWithTextProvider_];
  return v12;
}

id sub_23BDC51D4(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x277CBB698];
  v4 = type metadata accessor for AQINonNumericalTemplateModel(0);
  v5 = *(a2 + *(v4 + 36));
  v6 = v5 >> 62;
  if (v5 >> 62)
  {
    v7 = sub_23BDC6930();
  }

  else
  {
    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(a2 + *(v4 + 32));
  v10 = v9 / v8;
  if (v10 <= 0.0)
  {
    v10 = 0.0;
  }

  v11 = fminf(v10, 1.0);
  sub_23BD96820(0, &qword_27E1C5770, 0x277D75348);
  v12 = sub_23BDC6770();
  v13 = objc_opt_self();
  *&v14 = v11;
  [v13 gaugeProviderWithStyle:v3 gaugeColors:v12 gaugeColorLocations:0 fillFraction:v14];

  if (qword_27E1C55D0 != -1)
  {
    swift_once();
  }

  v15 = qword_27E1C5B70;
  v16 = sub_23BDC66C0();
  v17 = sub_23BDC66C0();
  v18 = [v15 localizedStringForKey:v16 value:0 table:v17];

  if (!v18)
  {
    sub_23BDC66F0();
    v18 = sub_23BDC66C0();
  }

  v19 = [objc_opt_self() textProviderWithText_];

  if (__OFSUB__(v9, 1))
  {
    __break(1u);
LABEL_34:
    v39 = v19;
    v23 = MEMORY[0x23EEBD1D0](v18, v5);
    goto LABEL_20;
  }

  v18 = (v9 - 1) & ~((v9 - 1) >> 63);
  if (v6)
  {
    result = sub_23BDC6930();
    if (v18 >= result)
    {
      goto LABEL_15;
    }
  }

  else
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18 >= result)
    {
LABEL_15:
      v21 = objc_opt_self();
      v22 = v19;
      v23 = [v21 whiteColor];
      goto LABEL_20;
    }
  }

  if ((v5 & 0xC000000000000001) != 0)
  {
    goto LABEL_34;
  }

  if (v18 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_37;
  }

  v24 = *(v5 + 8 * v18 + 32);
  v25 = v19;
  v23 = v24;
LABEL_20:
  v26 = v23;
  [v19 setTintColor_];

  v27 = sub_23BDC66C0();
  v28 = [objc_opt_self() symbolImageProviderWithSystemName_];

  if (v6)
  {
    result = sub_23BDC6930();
    if (v18 >= result)
    {
      goto LABEL_22;
    }

    goto LABEL_24;
  }

  result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v18 < result)
  {
LABEL_24:
    if ((v5 & 0xC000000000000001) != 0)
    {
      v29 = MEMORY[0x23EEBD1D0](v18, v5);
      goto LABEL_27;
    }

    if (v18 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v29 = *(v5 + 8 * v18 + 32);
      goto LABEL_27;
    }

LABEL_37:
    __break(1u);
    return result;
  }

LABEL_22:
  v29 = [objc_opt_self() whiteColor];
LABEL_27:
  v30 = v29;
  [v28 setTintColor_];

  v31 = [objc_opt_self() currentDevice];
  if (v31)
  {
    v32 = v31;
    v33 = [objc_allocWithZone(MEMORY[0x277CBBAF8]) initWithDevice:v31 identitySizeClass:2];
    [v32 screenScale];
    [v33 scaledValue_];
    v36 = v35;
    if (a1 == 12)
    {
      CLKComplicationGraphicExtraLargeCircularScalingFactor();
      v36 = v36 * v37;
    }

    v38 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    [v28 setOverridePointSize_];
  }

  return v19;
}

uint64_t sub_23BDC5678(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

id sub_23BDC5764(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for Container();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_23BDC57BC()
{
  sub_23BD9628C(&qword_27E1C5EA0, &qword_23BDC9D28);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_23BDC9D00;
  *(v0 + 32) = type metadata accessor for AQIDataSource(0);
  *(v0 + 40) = type metadata accessor for ChanceRainDataSource(0);
  *(v0 + 48) = type metadata accessor for UVDataSource(0);
  *(v0 + 56) = type metadata accessor for WindDataSource(0);
  *(v0 + 64) = type metadata accessor for WeatherDataSource(0);
  *(v0 + 72) = type metadata accessor for ConditionDataSource(0);
  return v0;
}

char *sub_23BDC58F0(void *a1, uint64_t a2, void *a3)
{
  v7 = OBJC_IVAR____TtC20WeatherComplications14WindDataSource_rectangularFormatter;
  if (qword_27E1C5610 != -1)
  {
    swift_once();
  }

  *&v3[v7] = xmmword_27E1C77E0;
  v13.receiver = v3;
  v13.super_class = type metadata accessor for WindDataSource(0);
  swift_unknownObjectRetain();
  v8 = objc_msgSendSuper2(&v13, sel_initWithComplication_family_forDevice_, a1, a2, a3);
  v9 = qword_27E1C5628;
  v10 = v8;
  if (v9 != -1)
  {
    swift_once();
  }

  v12 = xmmword_27E1C7820;
  swift_unknownObjectRetain();

  *&v10[OBJC_IVAR____TtC20WeatherComplications14BaseDataSource_templateFormatter] = v12;
  swift_unknownObjectRelease();
  return v10;
}

id sub_23BDC5BFC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WindDataSource(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for WindDataSource(uint64_t a1)
{
  result = qword_27E1C5EB0;
  if (!qword_27E1C5EB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23BDC5CDC(uint64_t a1)
{
  v2 = sub_23BDC6650();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BDC6640();
  v6 = sub_23BDC6630();
  v7 = sub_23BDC6810();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_23BD93000, v6, v7, "Migrating to widget.", v8, 2u);
    MEMORY[0x23EEBD7D0](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v9 = objc_allocWithZone(MEMORY[0x277CBBBD0]);
  v10 = sub_23BDC66C0();
  v11 = sub_23BDC66C0();
  v12 = sub_23BDC66C0();
  v13 = [v9 initWithExtensionBundleIdentifier:v10 containerBundleIdentifier:v11 kind:v12 intent:0];

  (*(a1 + 16))(a1, v13);
}

double sub_23BDC6F20(double result)
{
  if (!atomic_load(dword_27E1C5EC0))
  {
    return sub_23BDC6F44(result);
  }

  return result;
}

double sub_23BDC6F44(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/NanoTimeKit.framework/NanoTimeKit", 0);
  atomic_store(1u, dword_27E1C5EC0);
  return a1;
}