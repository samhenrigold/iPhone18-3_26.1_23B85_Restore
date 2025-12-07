double FormatSponsoredBannerNode.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 88) = a1;

  return result;
}

double FormatSponsoredBannerNode.style.getter()
{
  swift_beginAccess();

  return result;
}

double FormatSponsoredBannerNode.style.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 96) = a1;

  return result;
}

uint64_t FormatSponsoredBannerNode.flex.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[13];
  v3 = v1[14];
  v4 = v1[15];
  v5 = v1[16];
  v6 = v1[17];
  v7 = v1[18];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1D5EB1D80(v2, v3, v4, v5, v6, v7);
}

uint64_t FormatSponsoredBannerNode.__allocating_init(identifier:size:resize:adjustments:visibility:isUserInteractionEnabled:accessibilityRole:selectors:style:flex:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t *a6, char a7, uint64_t *a8, uint64_t a9, uint64_t a10, __int128 *a11)
{
  v17 = swift_allocObject();
  v18 = *a3;
  v19 = *a4;
  v20 = *a6;
  v21 = *a8;
  v22 = *(a8 + 8);
  v26 = *(a11 + 5);
  v27 = *(a11 + 4);
  *(v17 + 96) = 0;
  swift_beginAccess();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = v18;
  *(v17 + 40) = v19;
  swift_beginAccess();
  *(v17 + 48) = a5;
  swift_beginAccess();
  *(v17 + 56) = v20;
  swift_beginAccess();
  *(v17 + 64) = a7;
  *(v17 + 72) = v21;
  *(v17 + 80) = v22;
  swift_beginAccess();
  *(v17 + 88) = a9;
  swift_beginAccess();
  *(v17 + 96) = a10;
  v23 = *a11;
  *(v17 + 120) = a11[1];
  *(v17 + 104) = v23;
  *(v17 + 136) = v27;
  *(v17 + 144) = v26;
  return v17;
}

uint64_t FormatSponsoredBannerNode.init(identifier:size:resize:adjustments:visibility:isUserInteractionEnabled:accessibilityRole:selectors:style:flex:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t *a6, char a7, uint64_t *a8, uint64_t a9, uint64_t a10, __int128 *a11)
{
  v15 = *a3;
  v16 = *a4;
  v17 = *a6;
  v18 = *a8;
  v21 = *(a8 + 8);
  v23 = *(a11 + 5);
  v24 = *(a11 + 4);
  *(v11 + 96) = 0;
  swift_beginAccess();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = v15;
  *(v11 + 40) = v16;
  swift_beginAccess();
  *(v11 + 48) = a5;
  swift_beginAccess();
  *(v11 + 56) = v17;
  swift_beginAccess();
  *(v11 + 64) = a7;
  *(v11 + 72) = v18;
  *(v11 + 80) = v21;
  swift_beginAccess();
  *(v11 + 88) = a9;
  swift_beginAccess();
  *(v11 + 96) = a10;
  v19 = *a11;
  *(v11 + 120) = a11[1];
  *(v11 + 104) = v19;
  *(v11 + 136) = v24;
  *(v11 + 144) = v23;
  return v11;
}

uint64_t FormatSponsoredBannerNode.deinit()
{

  sub_1D5C92A8C(*(v0 + 32));

  sub_1D5EB15C4(*(v0 + 56));

  sub_1D5EB2398(*(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144));
  return v0;
}

uint64_t FormatSponsoredBannerNode.__deallocating_deinit()
{
  FormatSponsoredBannerNode.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D6AD0A34(uint64_t a1)
{
  result = sub_1D6AD0BC8(&qword_1EC891458, &protocol conformance descriptor for FormatSponsoredBannerNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6AD0A9C(void *a1)
{
  a1[1] = sub_1D6AD0BC8(&qword_1EDF24368, &protocol conformance descriptor for FormatSponsoredBannerNode);
  a1[2] = sub_1D6AD0BC8(&qword_1EDF0BF38, &protocol conformance descriptor for FormatSponsoredBannerNode);
  result = sub_1D6AD0BC8(&qword_1EC891460, &protocol conformance descriptor for FormatSponsoredBannerNode);
  a1[3] = result;
  return result;
}

uint64_t sub_1D6AD0B28@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D66BB9AC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D6AD0B84(uint64_t a1)
{
  result = sub_1D6AD0BC8(&qword_1EC891468, &protocol conformance descriptor for FormatSponsoredBannerNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6AD0BC8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatSponsoredBannerNode();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D6AD0C08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t *a8@<X8>, double a9@<D0>, double a10@<D1>, double a11@<D2>, double a12@<D3>)
{
  swift_beginAccess();
  v20 = *(a5 + 24);
  v31 = *(a5 + 16);
  v21 = *(a5 + 40);
  if (v21 && (v22 = *(v21 + 16), swift_beginAccess(), *(*(v22 + 16) + 16)))
  {
  }

  else
  {
    v22 = 0;
  }

  v23 = swift_allocObject();
  swift_beginAccess();
  v24 = *(a5 + 56);

  sub_1D5EB1500(v24);
  sub_1D615B4A8(a6, &v36);
  sub_1D5EB15C4(v24);
  v25 = v36;
  swift_beginAccess();
  v26 = *(a5 + 64);
  v27 = *(a5 + 72);
  v28 = *(a5 + 80);
  type metadata accessor for FormatSponsoredBannerLayoutAttributes();
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  *(v29 + 24) = a2;
  *(v29 + 32) = a3;
  *(v29 + 40) = a4;
  *(v29 + 48) = v31;
  *(v29 + 56) = v20;
  *(v29 + 64) = a9;
  *(v29 + 72) = a10;
  *(v29 + 80) = a11;
  *(v29 + 88) = a12;
  *(v29 + 96) = v22;
  *(v29 + 104) = 999;
  *(v29 + 112) = v25;
  *(v29 + 120) = v26;
  *(v29 + 128) = v27;
  *(v29 + 136) = v28;
  *(v29 + 144) = MEMORY[0x1E69E7CD0];
  *(v29 + 152) = a7;
  *(v23 + 16) = v29;
  *a8 = v23 | 0xA000000000000000;
}

id sub_1D6AD0E24@<X0>(id a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (*v3)
  {
    v7 = *(a2 + 96);
    v33 = *(a2 + 80);
    v34 = v7;
    v35 = *(a2 + 112);
    v36 = *(a2 + 128);
    v8 = *(a2 + 64);
    v31 = *(a2 + 48);
    v32 = v8;
    v9 = swift_allocObject();
    v10 = *(a2 + 96);
    *&v30[39] = *(a2 + 80);
    *&v30[55] = v10;
    *&v30[71] = *(a2 + 112);
    v11 = *(a2 + 64);
    *&v30[7] = *(a2 + 48);
    *(v9 + 16) = a1;
    v29[0] = 1;
    v30[87] = *(a2 + 128);
    *&v30[23] = v11;
    v12 = swift_allocObject();
    *(v12 + 16) = 0u;
    *(v12 + 32) = 0u;
    v13 = *&v30[48];
    *(v12 + 81) = *&v30[32];
    *(v12 + 97) = v13;
    *(v12 + 113) = *&v30[64];
    v14 = *&v30[16];
    *(v12 + 49) = *v30;
    *(v12 + 48) = 1;
    *(v12 + 129) = *&v30[80];
    *(v12 + 65) = v14;
    *(v12 + 144) = sub_1D6AD1AC0;
    *(v12 + 152) = v9;
    sub_1D673F334(&v31, v29);
  }

  else
  {
    [a1 thumbnailFocalFrame];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v23 = *(a2 + 96);
    v33 = *(a2 + 80);
    v34 = v23;
    v35 = *(a2 + 112);
    v24 = *(a2 + 64);
    v31 = *(a2 + 48);
    v36 = *(a2 + 128);
    v32 = v24;
    v25 = swift_allocObject();
    *&v28[39] = *(a2 + 80);
    *&v28[55] = *(a2 + 96);
    *&v28[71] = *(a2 + 112);
    v26 = *(a2 + 64);
    *&v28[7] = *(a2 + 48);
    *(v25 + 16) = a1;
    *(v25 + 24) = a2;
    v29[0] = 0;
    v28[87] = *(a2 + 128);
    *&v28[23] = v26;
    v12 = swift_allocObject();
    *(v12 + 16) = v16;
    *(v12 + 24) = v18;
    *(v12 + 32) = v20;
    *(v12 + 40) = v22;
    *(v12 + 48) = 0;
    *(v12 + 81) = *&v28[32];
    *(v12 + 97) = *&v28[48];
    *(v12 + 113) = *&v28[64];
    *(v12 + 129) = *&v28[80];
    *(v12 + 49) = *v28;
    *(v12 + 65) = *&v28[16];
    *(v12 + 144) = sub_1D6AD1AC8;
    *(v12 + 152) = v25;
    sub_1D673F334(&v31, v29);
  }

  *a3 = v12 | 0x2000000000000000;
  return a1;
}

id sub_1D6AD1094@<X0>(double *a1@<X3>, uint64_t a2@<X8>)
{
  result = FCRecipe.thumbnailForMinimumSize(size:scale:)(a1[2], a1[3], a1[4]);
  if (result)
  {
    v4 = result;
    result = [result thumbnailAssetHandle];
    if (result)
    {
      v5 = result;
      v6 = sub_1D5C169F4();
      v16 = v6;
      v7 = sub_1D5EECFF8();
      v17 = v7;
      *&v15 = v5;
      sub_1D6050728();
      if (v8)
      {
        v9 = v8;
        v10 = [v8 thumbnailAssetHandle];

        if (v10)
        {
          v11 = v6;
        }

        else
        {
          v11 = 0;
        }

        if (v10)
        {
          v12 = v7;
        }

        else
        {
          v12 = 0;
        }

        if (v10)
        {
          v13 = v10;
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {

        v11 = 0;
        v12 = 0;
        v13 = 0;
      }

      *(a2 + 24) = &type metadata for FormatAssetHandle;
      *(a2 + 32) = sub_1D6723F3C();
      v14 = swift_allocObject();
      *a2 = v14;
      result = sub_1D5B63F14(&v15, (v14 + 2));
      v14[7] = v13;
      v14[8] = 0;
      v14[9] = 0;
      v14[10] = v11;
      v14[11] = v12;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

double sub_1D6AD11D0@<D0>(id a1@<X2>, void *a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X8>)
{
  v7 = [objc_msgSend(a1 sourceChannel)];
  swift_unknownObjectRelease();
  if (!v7)
  {
    goto LABEL_16;
  }

  if (a3 != 2)
  {
    v9 = [a2 userInterfaceStyle];
    if (v9 >= 2)
    {
      if (v9 == 2)
      {
        v8 = [v7 bannerImageForMask];
        if (!v8)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v8 = [v7 bannerImageForWhiteBackground];
        if (!v8)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      v8 = [v7 bannerImageForWhiteBackground];
      if (!v8)
      {
        goto LABEL_15;
      }
    }

LABEL_13:
    v10 = v8;
    v11 = [v8 assetHandle];

    if (v11)
    {
      *(a4 + 24) = sub_1D5C169F4();
      *(a4 + 32) = sub_1D5EECFF8();
      swift_unknownObjectRelease();
      *a4 = v11;
      return result;
    }

    goto LABEL_15;
  }

  v8 = [v7 bannerImageForMask];
  if (v8)
  {
    goto LABEL_13;
  }

LABEL_15:
  swift_unknownObjectRelease();
LABEL_16:
  *(a4 + 32) = 0;
  result = 0.0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  return result;
}

uint64_t sub_1D6AD1380(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x656873696C627570;
  }

  else
  {
    v3 = 0x69616E626D756874;
  }

  if (v2)
  {
    v4 = 0xE90000000000006CLL;
  }

  else
  {
    v4 = 0xED00006F676F4C72;
  }

  if (*a2)
  {
    v5 = 0x656873696C627570;
  }

  else
  {
    v5 = 0x69616E626D756874;
  }

  if (*a2)
  {
    v6 = 0xED00006F676F4C72;
  }

  else
  {
    v6 = 0xE90000000000006CLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D6AD1438()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6AD14CC(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6AD154C(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6AD15DC(char *a2@<X8>)
{
  v3 = sub_1D72641CC();

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

void sub_1D6AD163C(uint64_t *a1@<X8>)
{
  v2 = 0x69616E626D756874;
  if (*v1)
  {
    v2 = 0x656873696C627570;
  }

  v3 = 0xE90000000000006CLL;
  if (*v1)
  {
    v3 = 0xED00006F676F4C72;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t FormatRecipeBinding.Image.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D6AD17E8()
{
  result = qword_1EC891470;
  if (!qword_1EC891470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891470);
  }

  return result;
}

unint64_t sub_1D6AD183C(uint64_t a1)
{
  result = sub_1D6AD1864();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6AD1864()
{
  result = qword_1EC891478;
  if (!qword_1EC891478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891478);
  }

  return result;
}

unint64_t sub_1D6AD18F8(void *a1)
{
  a1[1] = sub_1D668F628();
  a1[2] = sub_1D66FCAA4();
  result = sub_1D6AD17E8();
  a1[3] = result;
  return result;
}

uint64_t sub_1D6AD19B0(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D5B58388(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D6AD1A18()
{
  result = qword_1EC8914A0;
  if (!qword_1EC8914A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8914A0);
  }

  return result;
}

unint64_t sub_1D6AD1A6C()
{
  result = qword_1EDF0F940;
  if (!qword_1EDF0F940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0F940);
  }

  return result;
}

void FormatSplitBackgroundInsets.left.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
}

void FormatSplitBackgroundInsets.right.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 8) = v2;
}

void static FormatSplitBackgroundInsets.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  sub_1D633A310(*a1, *a2);
  if (v4)
  {

    sub_1D633A310(v2, v3);
  }
}

unint64_t sub_1D6AD1BDC(uint64_t a1)
{
  result = sub_1D6AD1C04();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6AD1C04()
{
  result = qword_1EC8914A8;
  if (!qword_1EC8914A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8914A8);
  }

  return result;
}

unint64_t sub_1D6AD1C58(void *a1)
{
  a1[1] = sub_1D5F40064();
  a1[2] = sub_1D5F400B8();
  result = sub_1D6AD1C90();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6AD1C90()
{
  result = qword_1EC8914B0;
  if (!qword_1EC8914B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8914B0);
  }

  return result;
}

Swift::Void __swiftcall NSUserDefaults.set(location:forKey:)(CLLocation_optional location, Swift::String forKey)
{
  if (location.value.super.isa)
  {
    isa = location.value.super.isa;
    sub_1D6AD1EE4(0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7270C10;
    *(inited + 32) = 0x656475746974616CLL;
    *(inited + 40) = 0xEB0000000079654BLL;
    v5 = isa;
    [(objc_class *)v5 coordinate];
    *(inited + 48) = v6;
    strcpy((inited + 56), "longitudeKey");
    *(inited + 69) = 0;
    *(inited + 70) = -5120;
    [(objc_class *)v5 coordinate];
    *(inited + 72) = v7;
    sub_1D5C41CF0(inited);
    swift_setDeallocating();
    sub_1D5C41C90();
    swift_arrayDestroy();
    v8 = sub_1D7261D2C();

    v9 = sub_1D726203C();
    [v2 setObject:v8 forKey:v9];
  }

  else
  {
    v10 = sub_1D726203C();
    [v2 setURL:0 forKey:v10];
  }
}

void sub_1D6AD1EE4(uint64_t a1)
{
  if (!qword_1EDF01DF0)
  {
    sub_1D5C41C90();
    v1 = sub_1D72644CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF01DF0);
    }
  }
}

id sub_1D6AD1F3C()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC8NewsFeed22ShortcutCommandHandler_shortcutList] removeObserver_];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1D6AD20BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char *a5)
{
  v6 = *a4;
  v7 = a4[1];
  v8 = *a5;
  v9 = (*v5 + OBJC_IVAR____TtC8NewsFeed22ShortcutCommandHandler_shortcutManager);
  v10 = v9[3];
  v11 = v9[4];
  __swift_project_boxed_opaque_existential_1(v9, v10);
  if (v8)
  {
    return (*(v11 + 16))(v6, v7, v10, v11);
  }

  else
  {
    return (*(v11 + 24))(v6, v7, v10, v11);
  }
}

uint64_t sub_1D6AD2164@<X0>(uint64_t *a1@<X3>, BOOL *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = (*v2 + OBJC_IVAR____TtC8NewsFeed22ShortcutCommandHandler_shortcutManager);
  v7 = v6[3];
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v7);
  result = (*(v8 + 32))(v4, v5, v7, v8);
  *a2 = (result & 1) == 0;
  return result;
}

uint64_t sub_1D6AD22FC()
{
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1D726207C();
  v5 = v4;

  if (v3 == 0x6C7070612E6D6F63 && v5 == 0xEE007377656E2E65)
  {
  }

  else
  {
    v7 = sub_1D72646CC();

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  v8 = (v0 + OBJC_IVAR____TtC8NewsFeed22ShortcutCommandHandler_featureAvailability);
  v9 = *(v0 + OBJC_IVAR____TtC8NewsFeed22ShortcutCommandHandler_featureAvailability + 24);
  v10 = *(v0 + OBJC_IVAR____TtC8NewsFeed22ShortcutCommandHandler_featureAvailability + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC8NewsFeed22ShortcutCommandHandler_featureAvailability), v9);
  if ((*(v10 + 192))(v9, v10))
  {
    v11 = v8[3];
    v12 = v8[4];
    __swift_project_boxed_opaque_existential_1(v8, v11);
    if ((*(v12 + 192))(v11, v12))
    {
      v13 = [*(v0 + OBJC_IVAR____TtC8NewsFeed22ShortcutCommandHandler_bundleSubscriptionManager) cachedSubscription];
      v14 = [v13 isSubscribed];

      return v14;
    }

    return 0;
  }

  return 1;
}

BOOL _s8NewsFeed15FormatRGBAColorV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = *(a2 + 32);
  if (*(a1 + 32))
  {
    return (*(a2 + 32) & 1) != 0;
  }

  else
  {
    if (*(a1 + 24) != *(a2 + 24))
    {
      v5 = 1;
    }

    return (v5 & 1) == 0;
  }
}

unint64_t sub_1D6AD2538(uint64_t a1)
{
  result = sub_1D6AD2560();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6AD2560()
{
  result = qword_1EC891550;
  if (!qword_1EC891550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891550);
  }

  return result;
}

unint64_t sub_1D6AD25B4(void *a1)
{
  a1[1] = sub_1D667E174();
  a1[2] = sub_1D670036C();
  result = sub_1D6AD25EC();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6AD25EC()
{
  result = qword_1EC891558;
  if (!qword_1EC891558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891558);
  }

  return result;
}

uint64_t sub_1D6AD2640(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D6AD2660(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
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

  *(result + 33) = v3;
  return result;
}

uint64_t FormatAnimation.deinit()
{

  sub_1D5B74328(*(v0 + 56), *(v0 + 64));
  sub_1D5B74328(*(v0 + 72), *(v0 + 80));
  return v0;
}

uint64_t FormatAnimation.__deallocating_deinit()
{

  sub_1D5B74328(*(v0 + 56), *(v0 + 64));
  sub_1D5B74328(*(v0 + 72), *(v0 + 80));

  return swift_deallocClassInstance();
}

unint64_t sub_1D6AD2774(void *a1)
{
  a1[1] = sub_1D668E490();
  a1[2] = sub_1D668E814();
  result = sub_1D6AD27AC();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6AD27AC()
{
  result = qword_1EC891560;
  if (!qword_1EC891560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891560);
  }

  return result;
}

unint64_t sub_1D6AD2800(uint64_t a1)
{
  result = sub_1D6AD2828();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6AD2828()
{
  result = qword_1EC891568;
  if (!qword_1EC891568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891568);
  }

  return result;
}

uint64_t sub_1D6AD2880@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D669055C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D6AD28C8(char a1)
{
  switch(a1)
  {
    case 1:
      result = MEMORY[0x1EEE4D168]();
      break;
    case 2:
      result = MEMORY[0x1EEE4D150]();
      break;
    case 3:
      result = MEMORY[0x1EEE4D1B0]();
      break;
    case 4:
      result = MEMORY[0x1EEE4D198]();
      break;
    case 5:
      result = MEMORY[0x1EEE4D160]();
      break;
    case 6:
      result = MEMORY[0x1EEE4D1B8]();
      break;
    case 7:
      result = MEMORY[0x1EEE4D1C0]();
      break;
    case 8:
      result = MEMORY[0x1EEE4D0D8]();
      break;
    case 9:
      result = MEMORY[0x1EEE4D190]();
      break;
    case 10:
      result = MEMORY[0x1EEE4D0E0]();
      break;
    case 11:
      result = MEMORY[0x1EEE4D1D8]();
      break;
    case 12:
      result = MEMORY[0x1EEE4D1D0]();
      break;
    case 13:
      result = MEMORY[0x1EEE4D180]();
      break;
    default:
      result = sub_1D725FF7C();
      break;
  }

  return result;
}

uint64_t CategoryViewLayoutOptions.layoutOptions.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D7259F5C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CategoryViewLayoutOptions.itemWidth.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for CategoryViewLayoutOptions(0);
  v4 = (v1 + *(result + 20));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t type metadata accessor for CategoryViewLayoutOptions(uint64_t a1)
{
  result = qword_1EDF0C8E0;
  if (!qword_1EDF0C8E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CategoryViewLayoutOptions.init(alwaysInsetIcon:origin:itemWidth:layoutOptions:contentViewEdgeInsets:)@<X0>(char a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>, double a9@<D4>, double a10@<D5>)
{
  v19 = *a2;
  v20 = *(a2 + 8);
  v21 = type metadata accessor for CategoryViewLayoutOptions(0);
  v22 = v21;
  *(a4 + v21[8]) = 0x4030000000000000;
  *(a4 + v21[10]) = 0x4018000000000000;
  *(a4 + v21[11]) = 0x402E000000000000;
  *(a4 + v21[12]) = 0x4024000000000000;
  *(a4 + v21[13]) = 0x4024000000000000;
  v23 = 0.0;
  if (a1)
  {
    v23 = 3.0;
  }

  *(a4 + v21[9]) = v23;
  v24 = (a4 + v21[6]);
  *v24 = a5;
  v24[1] = a6;
  if (v20 == 255)
  {
    v25 = 0;
  }

  else
  {
    v25 = v19;
  }

  if (v20 == 255)
  {
    v26 = 2;
  }

  else
  {
    v26 = v20;
  }

  v27 = a4 + v21[5];
  *v27 = v25;
  *(v27 + 8) = v26;
  v28 = sub_1D7259F5C();
  result = (*(*(v28 - 8) + 32))(a4, a3, v28);
  v30 = (a4 + v22[7]);
  *v30 = a7;
  v30[1] = a8;
  v30[2] = a9;
  v30[3] = a10;
  return result;
}

double CategoryViewLayoutOptions.init(from:alwaysInsetIcon:itemWidth:contentViewEdgeInsets:)@<D0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  v44 = a7;
  v45 = a8;
  v42 = a5;
  v43 = a6;
  v41 = a2;
  v11 = sub_1D725A19C();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v13 = sub_1D7259F5C();
  v39 = *(v13 - 8);
  v40 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a3;
  v18 = *(a3 + 8);
  sub_1D725E22C();
  v38[8] = v20;
  v38[9] = v19;
  sub_1D725E17C();
  v38[6] = v22;
  v38[7] = v21;
  sub_1D725E1BC();
  v38[4] = v24;
  v38[5] = v23;
  sub_1D725E14C();
  v38[3] = v25;
  v38[2] = v26;
  sub_1D725E1CC();
  v38[1] = v27;
  v38[0] = v28;
  sub_1D725E1AC();
  sub_1D725E16C();
  sub_1D725E19C();
  sub_1D725E1DC();
  sub_1D725E18C();
  if (qword_1EDF386E8 != -1)
  {
    swift_once();
  }

  if (v18 == 255)
  {
    LOBYTE(v18) = 2;
    v17 = 0;
  }

  sub_1D725972C();

  sub_1D7259E5C();
  v29 = sub_1D725E23C();
  (*(*(v29 - 8) + 8))(a1, v29);
  v30 = type metadata accessor for CategoryViewLayoutOptions(0);
  v31 = v30;
  *(a4 + v30[8]) = 0x4030000000000000;
  *(a4 + v30[10]) = 0x4018000000000000;
  *(a4 + v30[11]) = 0x402E000000000000;
  *(a4 + v30[12]) = 0x4024000000000000;
  *(a4 + v30[13]) = 0x4024000000000000;
  v32 = 0.0;
  if (v41)
  {
    v32 = 3.0;
  }

  *(a4 + v30[9]) = v32;
  v33 = (a4 + v30[6]);
  *v33 = 0;
  v33[1] = 0;
  v34 = a4 + v30[5];
  *v34 = v17;
  *(v34 + 8) = v18;
  (*(v39 + 32))(a4, v16, v40);
  v35 = (a4 + v31[7]);
  v36 = v43;
  *v35 = v42;
  v35[1] = v36;
  result = v45;
  v35[2] = v44;
  v35[3] = result;
  return result;
}

NewsFeed::CategoryViewLayoutOptions::Embedded __swiftcall CategoryViewLayoutOptions.Embedded.init(categoryOptions:)(NewsFeed::CategoryViewLayoutOptions::Embedded categoryOptions)
{
  v2 = *(*&categoryOptions.categoryOptions.alwaysInsetIcon + 1);
  *v1 = **&categoryOptions.categoryOptions.alwaysInsetIcon;
  v1[1] = v2;
  return categoryOptions;
}

void sub_1D6AD3038(uint64_t a1)
{
  sub_1D7259F5C();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGPoint(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UIEdgeInsets(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D6AD3108(uint64_t a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v5 = Strong;

  if ((*a1 & 1) == 0)
  {
    swift_beginAccess();
    v8 = *(v2 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 32) = v8;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

  v6 = *(v2 + 24);
  if (v6)
  {
    if (*(v6 + 16) == 1)
    {
      v7 = swift_unknownObjectWeakLoadStrong();
      if (v7)
      {

        return;
      }
    }
  }

  swift_beginAccess();
  v12 = *(v2 + 32);
  v11 = *(v12 + 16);

  if (v11)
  {
    v20 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    do
    {
      v10 = *(v12 + 16);
      v21 = v12 + 32 + 72 * v20;
      v22 = v20;
      while (1)
      {
        if (v22 >= v10)
        {
          __break(1u);
          goto LABEL_36;
        }

        v39 = *v21;
        v23 = *(v21 + 16);
        v24 = *(v21 + 32);
        v25 = *(v21 + 48);
        v43 = *(v21 + 64);
        v41 = v24;
        v42 = v25;
        v40 = v23;
        v20 = v22 + 1;
        if ((v39 & 1) == 0)
        {
          break;
        }

        v21 += 72;
        ++v22;
        if (v11 == v20)
        {
          goto LABEL_33;
        }
      }

      sub_1D6AD423C(&v39, v38);
      v26 = swift_isUniquelyReferenced_nonNull_native();
      v44 = v8;
      if ((v26 & 1) == 0)
      {
        sub_1D6998074(0, *(v8 + 2) + 1, 1);
        v8 = v44;
      }

      v28 = *(v8 + 2);
      v27 = *(v8 + 3);
      v29 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        sub_1D6998074((v27 > 1), v28 + 1, 1);
        v29 = v28 + 1;
        v8 = v44;
      }

      *(v8 + 2) = v29;
      v30 = &v8[72 * v28];
      *(v30 + 2) = v39;
      v31 = v40;
      v32 = v41;
      v33 = v42;
      *(v30 + 12) = v43;
      *(v30 + 4) = v32;
      *(v30 + 5) = v33;
      *(v30 + 3) = v31;
    }

    while (v11 - 1 != v22);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

LABEL_33:

  *(v2 + 32) = v8;

  swift_beginAccess();
  v8 = *(v2 + 32);
  v37 = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 32) = v8;
  if ((v37 & 1) == 0)
  {
LABEL_34:
    v8 = sub_1D6990590(0, *(v8 + 2) + 1, 1, v8);
    *(v2 + 32) = v8;
  }

LABEL_10:
  v11 = *(v8 + 2);
  v10 = *(v8 + 3);
  v12 = v11 + 1;
  if (v11 >= v10 >> 1)
  {
LABEL_36:
    v8 = sub_1D6990590((v10 > 1), v12, 1, v8);
  }

  *(v8 + 2) = v12;
  v13 = &v8[72 * v11];
  *(v13 + 2) = *a1;
  v14 = *(a1 + 16);
  v15 = *(a1 + 32);
  v16 = *(a1 + 48);
  *(v13 + 12) = *(a1 + 64);
  *(v13 + 4) = v15;
  *(v13 + 5) = v16;
  *(v13 + 3) = v14;
  *(v2 + 32) = v8;
  swift_endAccess();
  v17 = *(v2 + 24);
  if (!v17)
  {
    goto LABEL_29;
  }

  v18 = swift_unknownObjectWeakLoadStrong();
  if (v18)
  {
    v19 = v18;
    sub_1D6AD423C(a1, &v39);

    return;
  }

  v34 = *(v17 + 56);
  if (v34)
  {
    v35 = *(v17 + 64);
    sub_1D6AD423C(a1, &v39);
    v36 = sub_1D5DEA510(v34, v35);
    v34(v36);
    sub_1D5B74328(v34, v35);
  }

  else
  {
LABEL_29:
    sub_1D6AD423C(a1, &v39);
  }

  *(v2 + 24) = 0;

  sub_1D6AD3758();
}

void sub_1D6AD348C(char a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  v4 = *(v3 + 16);

  if (v4)
  {
    v5 = 0;
    v6 = v3 + 32;
    v7 = MEMORY[0x1E69E7CC0];
    do
    {
      v8 = *(v3 + 16);
      v9 = (v6 + 72 * v5);
      v10 = v5;
      while (1)
      {
        if (v10 >= v8)
        {
          __break(1u);
          return;
        }

        aBlock = *v9;
        v11 = v9[1];
        v12 = v9[2];
        v13 = v9[3];
        v33 = *(v9 + 8);
        v31 = v12;
        v32 = v13;
        v30 = v11;
        v5 = v10 + 1;
        if (aBlock != (a1 & 1))
        {
          break;
        }

        v9 = (v9 + 72);
        ++v10;
        if (v4 == v5)
        {
          goto LABEL_15;
        }
      }

      v27 = v6;
      sub_1D6AD423C(&aBlock, v28);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D6998074(0, *(v7 + 16) + 1, 1);
        v7 = v34;
      }

      v16 = *(v7 + 16);
      v15 = *(v7 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1D6998074((v15 > 1), v16 + 1, 1);
        v7 = v34;
      }

      *(v7 + 16) = v16 + 1;
      v17 = v7 + 72 * v16;
      *(v17 + 32) = aBlock;
      v18 = v30;
      v19 = v31;
      v20 = v32;
      *(v17 + 96) = v33;
      *(v17 + 64) = v19;
      *(v17 + 80) = v20;
      *(v17 + 48) = v18;
      v6 = v27;
    }

    while (v4 - 1 != v10);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

LABEL_15:

  *(v1 + 32) = v7;

  v21 = *(v1 + 24);
  if (v21)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v23 = Strong;
      if (*(v21 + 16) == (a1 & 1))
      {
        v24 = swift_allocObject();
        swift_weakInit();
        v25 = swift_allocObject();
        *(v25 + 16) = v21;
        *(v25 + 24) = v24;
        *&v31 = sub_1D6AD42A8;
        *(&v31 + 1) = v25;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        *&v30 = sub_1D5B6B06C;
        *(&v30 + 1) = &block_descriptor_39;
        v26 = _Block_copy(&aBlock);
        swift_retain_n();

        [v23 dismissViewControllerAnimated:1 completion:v26];
        _Block_release(v26);
      }
    }
  }
}

void sub_1D6AD3758()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_1D7262FCC();

    swift_beginAccess();
    v5 = *(v1 + 32);
    if (*(v5 + 16))
    {
      swift_beginAccess();
      v6 = *(v5 + 64);
      v40 = *(v5 + 48);
      v41 = v6;
      v42 = *(v5 + 80);
      v43 = *(v5 + 96);
      v39 = *(v5 + 32);
      sub_1D6AD423C(&v39, &aBlock);
      sub_1D6C04000(0, 1);
      swift_endAccess();
      v7 = v41;
      v8 = sub_1D726203C();
      if (v7)
      {
        v7 = sub_1D726203C();
      }

      v9 = [objc_opt_self() alertControllerWithTitle:v8 message:v7 preferredStyle:1];

      v10 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v11 = swift_allocObject();
      swift_weakInit();
      v12 = swift_allocObject();
      *(v12 + 16) = v10;
      v13 = v41;
      *(v12 + 40) = v40;
      *(v12 + 56) = v13;
      *(v12 + 72) = v42;
      v14 = v43;
      *(v12 + 24) = v39;
      *(v12 + 88) = v14;
      *(v12 + 96) = v11;
      sub_1D6AD423C(&v39, &aBlock);
      v15 = v9;

      v16 = sub_1D726203C();
      v37 = sub_1D6AD4274;
      v38 = v12;
      aBlock = MEMORY[0x1E69E9820];
      v34 = 1107296256;
      v35 = sub_1D5C38428;
      v36 = &block_descriptor_73;
      v17 = _Block_copy(&aBlock);

      v18 = objc_opt_self();
      v19 = [v18 actionWithTitle:v16 style:0 handler:v17];
      _Block_release(v17);

      [v15 addAction_];
      v20 = *(&v42 + 1);
      if (*(&v42 + 1))
      {
        v21 = v43;
        v22 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v23 = swift_allocObject();
        swift_weakInit();
        v32 = v4;
        v24 = swift_allocObject();
        v24[2] = v22;
        v24[3] = v20;
        v24[4] = v21;
        v24[5] = v23;
        sub_1D5DEA510(v20, v21);
        sub_1D5DEA510(v20, v21);

        v25 = sub_1D726203C();
        v37 = sub_1D6AD4284;
        v38 = v24;
        aBlock = MEMORY[0x1E69E9820];
        v34 = 1107296256;
        v35 = sub_1D5C38428;
        v36 = &block_descriptor_20_0;
        v26 = _Block_copy(&aBlock);

        v27 = [v18 actionWithTitle:v25 style:2 handler:v26];
        v28 = v26;
        v4 = v32;
        _Block_release(v28);

        [v15 addAction_];
        sub_1D5B74328(v20, v21);
      }

      type metadata accessor for DebugFormatAlertManager.AlertPresentation();
      v29 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v30 = v40;
      v31 = v42;
      *(v29 + 48) = v41;
      *(v29 + 64) = v31;
      *(v29 + 80) = v43;
      *(v29 + 16) = v39;
      *(v29 + 32) = v30;
      swift_unknownObjectWeakAssign();
      sub_1D6AD423C(&v39, &aBlock);

      *(v1 + 24) = v29;

      [v4 presentViewController:v15 animated:1 completion:0];

      sub_1D5F181F4(&v39);
    }
  }
}

double sub_1D6AD3C48(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    v2();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 24) = 0;
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1D6AD3758();
  }

  return result;
}

void sub_1D6AD3CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = swift_allocObject();
    v9 = *(a3 + 48);
    *(v8 + 48) = *(a3 + 32);
    *(v8 + 64) = v9;
    v10 = *(a3 + 64);
    v11 = *(a3 + 16);
    *(v8 + 16) = *a3;
    *(v8 + 32) = v11;
    *(v8 + 80) = v10;
    *(v8 + 88) = a4;
    aBlock[4] = sub_1D6AD429C;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D5B6B06C;
    aBlock[3] = &block_descriptor_32_1;
    v12 = _Block_copy(aBlock);
    sub_1D6AD423C(a3, &v13);

    [v7 dismissViewControllerAnimated:1 completion:v12];
    _Block_release(v12);
  }
}

double sub_1D6AD3E20(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v2();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 24) = 0;
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1D6AD3758();
  }

  return result;
}

void sub_1D6AD3EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = swift_allocObject();
    v10[2] = a3;
    v10[3] = a4;
    v10[4] = a5;
    aBlock[4] = sub_1D6AD4290;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D5B6B06C;
    aBlock[3] = &block_descriptor_26_0;
    v11 = _Block_copy(aBlock);

    [v9 dismissViewControllerAnimated:1 completion:v11];
    _Block_release(v11);
  }
}

double sub_1D6AD3FE8(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  a1();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 24) = 0;
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1D6AD3758();
  }

  return result;
}

uint64_t sub_1D6AD4080()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[10];

  sub_1D5B74328(v1, v2);
  sub_1D5B74328(v3, v4);
  MEMORY[0x1DA6FD660](v0 + 11);

  return swift_deallocClassInstance();
}

uint64_t sub_1D6AD4104()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1D6AD4194(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1D6AD41DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D6AD42C4()
{
  result = qword_1EC891570;
  if (!qword_1EC891570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891570);
  }

  return result;
}

uint64_t LayeredMediaTraits.hashValue.getter()
{
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](0);
  return sub_1D7264A5C();
}

unint64_t sub_1D6AD43B0()
{
  result = qword_1EC891578;
  if (!qword_1EC891578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891578);
  }

  return result;
}

uint64_t sub_1D6AD4414()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  return v1;
}

double sub_1D6AD4488()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  return result;
}

uint64_t sub_1D6AD4500()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  return v1;
}

uint64_t sub_1D6AD4574()
{

  v1 = OBJC_IVAR____TtC8NewsFeed24DebugFormatFileTreeModel__items;
  v2 = MEMORY[0x1E695C070];
  sub_1D6AD497C(0, &qword_1EC8915A8, sub_1D6AD4914, MEMORY[0x1E695C070]);
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = OBJC_IVAR____TtC8NewsFeed24DebugFormatFileTreeModel__selection;
  sub_1D6AD497C(0, &qword_1EC8915B0, sub_1D679CB9C, v2);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC8NewsFeed24DebugFormatFileTreeModel__metrics;
  sub_1D6AD497C(0, &qword_1EC8915B8, sub_1D6AD4948, v2);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DebugFormatFileTreeModel(uint64_t a1)
{
  result = qword_1EC891598;
  if (!qword_1EC891598)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6AD4768(uint64_t a1, __n128 a2)
{
  sub_1D6AD497C(319, &qword_1EC8915A8, sub_1D6AD4914, MEMORY[0x1E695C070]);
  if (v2 <= 0x3F)
  {
    sub_1D6AD497C(319, &qword_1EC8915B0, sub_1D679CB9C, MEMORY[0x1E695C070]);
    if (v3 <= 0x3F)
    {
      sub_1D6AD497C(319, &qword_1EC8915B8, sub_1D6AD4948, MEMORY[0x1E695C070]);
      if (v4 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1D6AD497C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6AD49E0(uint64_t a1, uint64_t a2, int a3)
{
  v34 = a3;
  v32 = a1;
  v33 = a2;
  v4 = MEMORY[0x1E695C070];
  sub_1D6AD497C(0, &qword_1EC8915B8, sub_1D6AD4948, MEMORY[0x1E695C070]);
  v30 = *(v5 - 8);
  v31 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v29 - v7;
  sub_1D6AD497C(0, &qword_1EC8915B0, sub_1D679CB9C, v4);
  v29[0] = v9;
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v29 - v12;
  sub_1D6AD497C(0, &qword_1EC8915A8, sub_1D6AD4914, v4);
  v15 = v14;
  v16 = *(v14 - 8);
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = v29 - v19;
  v21 = OBJC_IVAR____TtC8NewsFeed24DebugFormatFileTreeModel__items;
  *&v44[0] = MEMORY[0x1E69E7CC0];
  sub_1D6AD4914(0, v18);
  v29[1] = v22;
  sub_1D726009C();
  (*(v16 + 32))(v3 + v21, v20, v15);
  v23 = OBJC_IVAR____TtC8NewsFeed24DebugFormatFileTreeModel__selection;
  sub_1D607F0A4(v44);
  v40 = v44[4];
  v41 = v44[5];
  v42 = v44[6];
  v43 = v44[7];
  v36 = v44[0];
  v37 = v44[1];
  v38 = v44[2];
  v39 = v44[3];
  sub_1D679CB9C();
  sub_1D726009C();
  v24.n128_f64[0] = (*(v10 + 32))(v3 + v23, v13, v29[0]);
  v25 = OBJC_IVAR____TtC8NewsFeed24DebugFormatFileTreeModel__metrics;
  *&v36 = 0;
  sub_1D6AD4948(0, v24);
  sub_1D726009C();
  (*(v30 + 32))(v3 + v25, v8, v31);
  *(v3 + 16) = v32;

  sub_1D6E4286C(v33);
  v27 = v26;

  swift_beginAccess();
  (*(v16 + 8))(v3 + v21, v15);
  v35 = v27;
  sub_1D726009C();
  swift_endAccess();
  *(v3 + 24) = v34;
  return v3;
}

uint64_t type metadata accessor for FormatButtonNodeDataAction(uint64_t a1)
{
  result = qword_1EDF23680;
  if (!qword_1EDF23680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6AD4DE0(uint64_t a1)
{
  type metadata accessor for FormatAction(319);
  if (v1 <= 0x3F)
  {
    sub_1D5BAAD68(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

id FCFeedDescriptor.feedTag.getter()
{
  v1 = [objc_msgSend(v0 backingTag)];
  swift_unknownObjectRelease();
  if (v1 != 3 || (result = [v0 backingChannel]) == 0)
  {
    v3 = [v0 backingTag];

    return v3;
  }

  return result;
}

void FCFeedDescriptor.feedURL.getter()
{
  v1 = [v0 feedConfiguration];
  v2 = [v0 alternativeFeedDescriptor];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 feedConfiguration];

    if (v1 != 12)
    {
      goto LABEL_3;
    }

LABEL_10:
    v5 = [objc_opt_self() nss_NewsURLForFood];
    goto LABEL_21;
  }

  v4 = 0;
  if (v1 == 12)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v1 == 9)
  {
    v5 = [objc_opt_self() nss_NewsURLForPuzzleHub];
    goto LABEL_21;
  }

  if (v1 == 3)
  {
    if (!v3)
    {
LABEL_16:
      v5 = [objc_opt_self() nss_NewsURLForMySports];
      goto LABEL_21;
    }

    if (v4 != 6)
    {
      if (v4 == 5)
      {
        v5 = [objc_opt_self() nss_NewsURLForMySportsScores];
        goto LABEL_21;
      }

      goto LABEL_16;
    }

    v5 = [objc_opt_self() nss_NewsURLForMySportsHighlights];
  }

  else
  {
    v6 = [FCFeedDescriptor.feedTag.getter() identifier];
    swift_unknownObjectRelease();
    if (v3)
    {
      if (!v6)
      {
        sub_1D726207C();
        v6 = sub_1D726203C();
      }

      v7 = [objc_opt_self() nss:v6 NewsURLForTagID:v4 feedConfiguration:?];
    }

    else
    {
      if (!v6)
      {
        sub_1D726207C();
        v6 = sub_1D726203C();
      }

      v7 = [objc_opt_self() nss:v6 NewsURLForTagID:objc_msgSend(v0 feedConfiguration:sel_feedConfiguration)];
    }

    v8 = v7;

    v5 = v8;
  }

LABEL_21:
  v9 = v5;
  sub_1D72584EC();
}

uint64_t FCFeedDescriptor.localizedFeedType.getter()
{
  v1 = [v0 feedConfiguration];
  v2 = [v0 alternativeFeedDescriptor];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 feedConfiguration];

    if (v4 > 5)
    {
      if (v4 == 6 || v4 == 7)
      {
        goto LABEL_13;
      }
    }

    else if (v4 == 4 || v4 == 5)
    {
LABEL_13:
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v7 = [objc_opt_self() bundleForClass_];
      v5 = sub_1D725811C();

      return v5;
    }
  }

  if ((v1 - 9) >= 2)
  {
    if (v1 != 8 && v1 != 3)
    {
      FCFeedDescriptor.feedTag.getter();
      swift_getObjectType();
      v5 = FCTagProviding.localizedTagType.getter();
      swift_unknownObjectRelease();
      return v5;
    }

    goto LABEL_13;
  }

  return 0;
}

uint64_t FCFeedDescriptor.feedKind.getter@<X0>(char *a1@<X8>)
{
  result = [v1 feedConfiguration];
  if (result > 7)
  {
    if (result > 10)
    {
      if (result == 11)
      {
        v4 = 14;
        goto LABEL_34;
      }

      if (result == 12)
      {
        v4 = 6;
        goto LABEL_34;
      }

      if (result != 13)
      {
        goto LABEL_26;
      }

      v4 = 16;
    }

    else if (result == 8)
    {
      v4 = 29;
    }

    else if (result == 9)
    {
      v4 = 12;
    }

    else
    {
      v4 = 13;
    }

    goto LABEL_34;
  }

  if (result > 2)
  {
    if ((result - 4) >= 4)
    {
      if (result != 3)
      {
LABEL_26:
        v4 = 26;
        goto LABEL_34;
      }

      v4 = 11;
      goto LABEL_34;
    }

LABEL_12:
    v4 = 25;
    goto LABEL_34;
  }

  if (result)
  {
    if (result != 1)
    {
      if (result != 2)
      {
        goto LABEL_26;
      }

LABEL_33:
      v4 = 2;
      goto LABEL_34;
    }

    result = [v1 backingChannel];
    if (!result)
    {
      goto LABEL_33;
    }

    v7 = [result isLocal];
    result = swift_unknownObjectRelease();
    if ((v7 & 1) == 0)
    {
      goto LABEL_33;
    }

LABEL_23:
    v4 = 8;
    goto LABEL_34;
  }

  result = [v1 backingChannel];
  if (!result)
  {
    goto LABEL_12;
  }

  v5 = [result isLocal];
  v6 = [objc_msgSend(v1 backingTag)];
  swift_unknownObjectRelease();
  result = swift_unknownObjectRelease();
  if (!v5)
  {
    if (v6)
    {
      result = swift_unknownObjectRelease();
      v4 = 3;
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  if (!v6)
  {
    goto LABEL_23;
  }

  result = swift_unknownObjectRelease();
  v4 = 9;
LABEL_34:
  *a1 = v4;
  return result;
}

uint64_t FCFeedDescriptorConfiguration.description.getter(uint64_t a1)
{
  if (a1 > 5)
  {
    if (a1 > 8)
    {
      switch(a1)
      {
        case 9:
          return 0x7548656C7A7A7570;
        case 10:
          return 0x7954656C7A7A7570;
        case 11:
          return 0xD000000000000011;
      }

      return 0x6E776F6E6B6E75;
    }

    if (a1 == 6)
    {
      return 0xD000000000000010;
    }

    else if (a1 == 7)
    {
      return 0x72427374726F7073;
    }

    else
    {
      return 0x76457374726F7073;
    }
  }

  else
  {
    if (a1 <= 2)
    {
      switch(a1)
      {
        case 0:
          return 0x746C7561666564;
        case 1:
          return 1701670760;
        case 2:
          return 0x617461436B636162;
      }

      return 0x6E776F6E6B6E75;
    }

    if (a1 == 3)
    {
      return 0x7374726F7053796DLL;
    }

    else if (a1 == 4)
    {
      return 0x74537374726F7073;
    }

    else
    {
      return 0x63537374726F7073;
    }
  }
}

uint64_t FCFeedDescriptor.feedExternalTitle.getter()
{
  v1 = [FCFeedDescriptor.feedTag.getter() isFoodHub];
  swift_unknownObjectRelease();
  if (v1)
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = [objc_opt_self() bundleForClass_];
    sub_1D725811C();

    sub_1D5C384A0(0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1D7273AE0;
    v5 = [FCFeedDescriptor.feedTag.getter() displayName];
    swift_unknownObjectRelease();
    v6 = sub_1D726207C();
    v8 = v7;

    *(v4 + 56) = MEMORY[0x1E69E6158];
    *(v4 + 64) = sub_1D5B7E2C0();
    *(v4 + 32) = v6;
    *(v4 + 40) = v8;
    v9 = sub_1D726204C();

    return v9;
  }

  v11 = [v0 alternativeFeedDescriptor];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 feedConfiguration];

    if (v13 > 5)
    {
      if (v13 == 6 || v13 == 7)
      {
        goto LABEL_13;
      }
    }

    else if (v13 == 4 || v13 == 5)
    {
LABEL_13:
      type metadata accessor for Localized();
      v14 = swift_getObjCClassFromMetadata();
      v15 = [objc_opt_self() bundleForClass_];
      sub_1D725811C();

      sub_1D5C384A0(0);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1D7273AE0;
      v17 = FCFeedDescriptor.feedTitle.getter();
      v19 = v18;
      *(v16 + 56) = MEMORY[0x1E69E6158];
      *(v16 + 64) = sub_1D5B7E2C0();
      *(v16 + 32) = v17;
      *(v16 + 40) = v19;
      v20 = sub_1D72620BC();

      return v20;
    }
  }

  return FCFeedDescriptor.feedTitle.getter();
}

uint64_t FCFeedDescriptor.feedTitle.getter()
{
  v1 = [FCFeedDescriptor.feedTag.getter() asPuzzleType];
  swift_unknownObjectRelease();
  v2 = [v0 feedConfiguration];
  if (v1)
  {
    if (v2 == 11)
    {
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v4 = [objc_opt_self() bundleForClass_];
      sub_1D725811C();

      sub_1D5C384A0(0);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1D7273AE0;
      v6 = [v1 name];
      v7 = sub_1D726207C();
      v9 = v8;

      *(v5 + 56) = MEMORY[0x1E69E6158];
      *(v5 + 64) = sub_1D5B7E2C0();
      *(v5 + 32) = v7;
      *(v5 + 40) = v9;
      v10 = sub_1D726204C();
      swift_unknownObjectRelease();
    }

    else
    {
      v20 = [v1 nameForSharing];
      v10 = sub_1D726207C();
      swift_unknownObjectRelease();
    }

    return v10;
  }

  else if (v2 == 9)
  {
    type metadata accessor for Localized();
    v12 = swift_getObjCClassFromMetadata();
    v13 = [objc_opt_self() bundleForClass_];
    sub_1D725811C();

    sub_1D5C384A0(0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1D7273AE0;
    v15 = [FCFeedDescriptor.feedTag.getter() displayName];
    swift_unknownObjectRelease();
    v16 = sub_1D726207C();
    v18 = v17;

    *(v14 + 56) = MEMORY[0x1E69E6158];
    *(v14 + 64) = sub_1D5B7E2C0();
    *(v14 + 32) = v16;
    *(v14 + 40) = v18;
    v19 = sub_1D726204C();

    return v19;
  }

  else
  {
    v21 = [FCFeedDescriptor.feedTag.getter() displayName];
    swift_unknownObjectRelease();
    v22 = sub_1D726207C();

    return v22;
  }
}

id FCFeedDescriptor.navigationChromeBackgroundColor.getter()
{
  v1 = v0;
  v2 = [v0 backingChannel];
  if (v2 && (v3 = [v2 theme], swift_unknownObjectRelease(), v3) || (v3 = objc_msgSend(objc_msgSend(v0, sel_backingTag), sel_theme), swift_unknownObjectRelease(), v3))
  {
    v4 = [swift_unknownObjectRetain() navigationChromeBackgroundColor];
    swift_unknownObjectRelease();
    if (v4)
    {
      v5 = [v4 ne_color];

      v6 = [v3 darkStyleNavigationChromeBackgroundColor];
      if (v6)
      {
        v7 = v6;
        v8 = [v6 ne_color];
      }

      else
      {
        v8 = v5;
      }

      v14 = [objc_opt_self() ts:v5 dynamicColor:v8 withDarkStyleVariant:?];

      swift_unknownObjectRelease();
      return v14;
    }

    swift_getObjectType();
    swift_unknownObjectRetain();
    v9 = FCFeedTheming.hasNavigationChromeBackgroundImage.getter();
    swift_unknownObjectRelease();
    if (v9)
    {
      v10 = [objc_opt_self() systemBackgroundColor];
      swift_unknownObjectRelease();
      return v10;
    }
  }

  v11 = [objc_msgSend(v1 backingTag)];
  swift_unknownObjectRelease();
  if (v11)
  {
    swift_getObjectType();
    v12 = FCSportsProviding.navigationBarBackgroundColor.getter();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return v12;
  }

  if (v3)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v10 = FCFeedTheming.navigationBarBackgroundColor.getter();
    swift_unknownObjectRelease_n();
    return v10;
  }

  v15 = [objc_opt_self() systemBackgroundColor];

  return v15;
}

id FCFeedDescriptor.initialRefreshState.getter()
{
  result = [v0 alternativeFeedDescriptor];
  if (result)
  {
    v2 = result;
    v3 = [result feedConfiguration];

    if (v3 > 0xB)
    {
      return 0;
    }

    else
    {
      return byte_1D731E07E[v3];
    }
  }

  return result;
}

uint64_t FCFeedDescriptor.hideMoreActionsButton.getter()
{
  v1 = [v0 feedConfiguration];
  if (v1 == 13 || v1 == 11)
  {
    return 1;
  }

  if (v1 == 3)
  {
    v4 = [v0 alternativeFeedDescriptor];
    if (v4)
    {

      return 0;
    }

    return 1;
  }

  return 0;
}

double FormatSlotNode.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v100 = a2;
  v3 = v2;
  v5 = type metadata accessor for GroupLayoutContext(0);
  v90 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v91 = v7;
  v93 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for FormatOption(0);
  v8 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114, v9);
  v11 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v12 = v2[7];
  v13 = *(v12 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  v101 = v2;
  v102 = a1;
  if (v13)
  {
    *&v105 = MEMORY[0x1E69E7CC0];

    sub_1D5D24610(0, v13, 0);
    v14 = v105;
    v15 = *(v8 + 80);
    v98 = v12;
    v16 = v12 + ((v15 + 32) & ~v15);
    v103 = *(v8 + 72);
    do
    {
      sub_1D5D254C4(v16, v11, type metadata accessor for FormatOption);
      v17 = swift_allocBox();
      sub_1D5D5E3A4(v11, v18, type metadata accessor for FormatOption);
      *&v105 = v14;
      v20 = *(v14 + 16);
      v19 = *(v14 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1D5D24610((v19 > 1), v20 + 1, 1);
        v14 = v105;
      }

      *(v14 + 16) = v20 + 1;
      *(v14 + 8 * v20 + 32) = v17 | 0x6000000000000000;
      v16 += v103;
      --v13;
    }

    while (v13);

    v3 = v101;
  }

  swift_beginAccess();
  v21 = v3[2];
  v22 = v3[3];

  v23 = sub_1D6196638(v21, v22);

  *&v105 = v14;
  sub_1D6985C44(v23);
  v24 = v105;
  swift_beginAccess();
  v25 = v3[6];
  v26 = v3[2];
  v27 = v3[3];

  v28 = sub_1D61966A4(v26, v27);

  v29 = sub_1D5D6021C(v28, v25);
  v30 = v3[3];
  v92 = v3[2];
  v113 = 0;
  memset(v112, 0, sizeof(v112));
  v111 = 0;
  v31 = v100;
  v32 = *(v100 + 24);
  v33 = *(v29 + 16);
  v34 = *(v100 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_selectors);

  v97 = v32;

  if (v33 && (sub_1D6D0A744(v34, v29), (v35 & 1) == 0))
  {
    v36 = 1;
    swift_beginAccess();
    v111 = 1;

    v34 = sub_1D5D6021C(v37, v34);
  }

  else
  {

    v36 = 0;
  }

  v114 = v34;
  v98 = v29;
  if (*(v24 + 16))
  {
    v38 = v36;
    v39 = *(v31 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options);
    v40 = sub_1D6F619D8(v24);

    if (v40)
    {
      v94 = v40;
      swift_beginAccess();
      v111 = 1;
      v36 = 1;
    }

    else
    {

      v94 = v39;
      v36 = v38;
    }
  }

  else
  {

    v94 = *(v31 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options);
  }

  swift_beginAccess();
  v111 = 1;

  v96 = sub_1D6BEC5F4(MEMORY[0x1E69E7CC0], v31, &v111);
  v42 = *(v31 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary);
  v41 = *(v31 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 8);
  v103 = v30;
  v43 = v42;
  v45 = *(v31 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 16);
  v44 = *(v31 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 24);
  v46 = *(v31 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 32);
  v47 = *(v31 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 40);
  v48 = *(v31 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 48);
  v95 = v41;
  sub_1D62E312C(v42, v41, v45, v44, v46, v47, v48);
  v50 = sub_1D6BEC878(v112, v31, &v111, v49);
  v52 = *(v31 + 96);
  v107 = *(v31 + 80);
  v108 = v52;
  v109 = *(v31 + 112);
  v110 = *(v31 + 128);
  v53 = *(v31 + 64);
  v105 = *(v31 + 48);
  v106 = v53;
  if (v111 == 1)
  {
    v82 = v51;
    v83 = v50;
    v84 = v48;
    v85 = v47;
    v86 = v46;
    v87 = v44;
    v88 = v45;
    v89 = v43;
    if (v36)
    {
      sub_1D67C846C(0, &qword_1EDF3BDD0, type metadata accessor for FormatContextLayoutOptions, MEMORY[0x1E69D63A0]);
      v81 = v54;
      v55 = v93;
      sub_1D5D254C4(v31 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_layoutContext, v93, type metadata accessor for GroupLayoutContext);
      v56 = (*(v90 + 80) + 16) & ~*(v90 + 80);
      v57 = (v91 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
      v58 = swift_allocObject();
      v59 = v58 + v56;
      v31 = v100;
      v60 = v55;
      sub_1D5D5E3A4(v55, v59, type metadata accessor for GroupLayoutContext);
      v61 = v94;
      *(v58 + v57) = v94;
      *(v58 + ((v57 + 15) & 0xFFFFFFFFFFFFFFF8)) = v114;
      sub_1D5CF6A5C(&v105, v104);

      v91 = sub_1D725A80C();
    }

    else
    {
      v62 = *(v31 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_lazyContextLayoutOptions);
      sub_1D5CF6A5C(&v105, v104);
      v91 = v62;

      v60 = v93;
      v61 = v94;
    }

    v63 = *(v31 + 16);
    sub_1D5D254C4(v31 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_layoutContext, v60, type metadata accessor for GroupLayoutContext);
    v64 = *(v31 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_debugData);
    sub_1D5B68374(v31 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_logger, v104);
    type metadata accessor for FormatNodeBinderContext(0);
    v31 = swift_allocObject();
    v65 = v97;
    *(v31 + 16) = v63;
    *(v31 + 24) = v65;
    v66 = v108;
    *(v31 + 80) = v107;
    *(v31 + 96) = v66;
    *(v31 + 112) = v109;
    *(v31 + 128) = v110;
    v67 = v106;
    *(v31 + 48) = v105;
    *(v31 + 64) = v67;
    *(v31 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options) = v61;
    *(v31 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_selectors) = v114;
    sub_1D5D254C4(v60, v31 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_layoutContext, type metadata accessor for GroupLayoutContext);
    v68 = v103;
    *(v31 + 32) = v92;
    *(v31 + 40) = v68;
    *(v31 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_blocks) = v96;
    *(v31 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_debugData) = v64;
    sub_1D5B68374(v104, v31 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_logger);
    v69 = v31 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary;
    v70 = v95;
    *v69 = v89;
    *(v69 + 8) = v70;
    v71 = v87;
    *(v69 + 16) = v88;
    *(v69 + 24) = v71;
    v72 = v85;
    *(v69 + 32) = v86;
    *(v69 + 40) = v72;
    *(v69 + 48) = v84;
    v73 = (v31 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack);
    v74 = v82;
    *v73 = v83;
    v73[1] = v74;

    __swift_destroy_boxed_opaque_existential_1(v104);
    sub_1D5EF8F94(v60);
    sub_1D62E3214(v112);
    *(v31 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_lazyContextLayoutOptions) = v91;
  }

  else
  {

    sub_1D62E31A0(v43, v95, v45, v44, v46, v47, v48);

    sub_1D62E3214(v112);
  }

  v75 = v99;
  v76 = v101;
  v77 = v101[7];

  v78 = v102;
  sub_1D6213004(v102, v31, v77);

  if (v75)
  {
  }

  else
  {
    swift_beginAccess();
    v79 = v76[5];

    sub_1D6215F90(v78, v31, v79);
  }

  return result;
}

void sub_1D6AD6E28()
{
  v2 = v0;
  swift_beginAccess();
  v3 = *(v0 + 16);
  v4 = *(v2 + 24);
  swift_beginAccess();
  v5 = *(v2 + 32);
  sub_1D5EB99F0();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E7CC0];
  v6[2] = MEMORY[0x1E69E7CC0];
  v6[3] = v7;
  v6[4] = v3;
  v6[5] = v4;
  v6[7] = 0;
  v6[8] = 0;
  v6[6] = v5;
  *(v6 + 70) = 0;
  v12 = v6;
  swift_beginAccess();
  swift_bridgeObjectRetain_n();

  sub_1D6C4D418(v8);

  if (v1)
  {
  }

  else
  {
    v9 = *(v2 + 56);

    sub_1D626DA28(&v12, v9);

    swift_beginAccess();
    v10 = *(v2 + 40);

    sub_1D626DB9C(&v12, v10);

    v11 = swift_allocObject();
    *(v11 + 16) = v12;

    sub_1D6C4D24C(v11);
  }
}

uint64_t FormatSlotNode.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

double FormatSlotNode.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  return result;
}

double FormatSlotNode.children.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;

  return result;
}

double FormatSlotNode.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;

  return result;
}

double FormatSlotNode.options.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 56) = a1;

  return result;
}

uint64_t FormatSlotNode.deinit()
{

  return v0;
}

uint64_t FormatSlotNode.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D6AD749C(uint64_t a1)
{
  result = sub_1D6AD75B0(&qword_1EC8915C8, &protocol conformance descriptor for FormatSlotNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6AD74E0(void *a1)
{
  a1[1] = sub_1D6AD75B0(&qword_1EDF323F0, &protocol conformance descriptor for FormatSlotNode);
  a1[2] = sub_1D6AD75B0(&qword_1EDF11B48, &protocol conformance descriptor for FormatSlotNode);
  result = sub_1D6AD75B0(&qword_1EC8915D0, &protocol conformance descriptor for FormatSlotNode);
  a1[3] = result;
  return result;
}

uint64_t sub_1D6AD756C(uint64_t a1)
{
  result = sub_1D6AD75B0(&qword_1EC8915D8, &protocol conformance descriptor for FormatSlotNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6AD75B0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatSlotNode();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D6AD7608(uint64_t a1)
{
  v3 = *a1;
  v4 = *v1;
  if (v4 <= 2)
  {
    if (!*v1)
    {
      v5 = [v3 identifier];
LABEL_26:
      v14 = v5;
      goto LABEL_27;
    }

    v6 = *(a1 + 80);
    if (v4 == 1)
    {
      if (v6 >= 2)
      {
        v15 = *(a1 + 72);

        return v15;
      }

      v7 = v3;
      v8 = [v3 title];
      v9 = sub_1D726207C();
      v11 = v10;

      v12 = HIBYTE(v11) & 0xF;
      if ((v11 & 0x2000000000000000) == 0)
      {
        v12 = v9 & 0xFFFFFFFFFFFFLL;
      }

      if (!v12)
      {
        v17 = [objc_msgSend(v7 sourceChannel)];
        swift_unknownObjectRelease();
        goto LABEL_23;
      }

      v13 = [v7 title];
    }

    else
    {
      if (v6 != 1 && *(a1 + 96) != 0)
      {
        v15 = *(a1 + 88);

        return v15;
      }

      v13 = [v3 coverDate];
    }

    v17 = v13;
LABEL_23:
    v15 = sub_1D726207C();

LABEL_29:

    return v15;
  }

  if (*v1 <= 4u)
  {
    if (v4 != 3)
    {
      v17 = [objc_msgSend(v3 sourceChannel)];
      swift_unknownObjectRelease();
LABEL_28:
      v15 = sub_1D726207C();
      goto LABEL_29;
    }

    v5 = [v3 issueDescription];
    goto LABEL_26;
  }

  if (v4 == 5)
  {
    v14 = [v3 accessibilityLanguage];
    if (v14)
    {
LABEL_27:
      v17 = v14;
      goto LABEL_28;
    }

    return 0;
  }

  else
  {
    IssueAutomation.init(issue:)(v3, &v20);
    v19[0] = 0x6575737369;
    v19[1] = 0xE500000000000000;
    sub_1D72578EC();
    swift_allocObject();
    sub_1D72578DC();
    sub_1D6AD8180(0);
    sub_1D6AD8230();
    v15 = sub_1D725D06C();

    sub_1D6AD8288(v19);
  }

  return v15;
}

double sub_1D6AD7930(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

void sub_1D6AD7A5C(uint64_t *a1@<X8>)
{
  v2 = 0xEA00000000006E6FLL;
  v3 = *v1;
  v4 = 0xEA00000000007265;
  v5 = 0x696669746E656469;
  v6 = 0x65676175676E616CLL;
  if (v3 == 5)
  {
    v2 = 0xE800000000000000;
  }

  else
  {
    v6 = 0x6974616D6F747561;
  }

  v7 = 0x80000001D73BA360;
  v8 = 0xD000000000000010;
  if (v3 != 3)
  {
    v8 = 0x656873696C627570;
    v7 = 0xED0000656D614E72;
  }

  if (*v1 > 4u)
  {
    v7 = v2;
  }

  else
  {
    v6 = v8;
  }

  v9 = 0xE500000000000000;
  v10 = 0x656C746974;
  if (v3 != 1)
  {
    v10 = 0x7461447265766F63;
    v9 = 0xE900000000000065;
  }

  if (*v1)
  {
    v5 = v10;
    v4 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v5;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 <= 2u)
  {
    v12 = v4;
  }

  else
  {
    v12 = v7;
  }

  *a1 = v11;
  a1[1] = v12;
}

uint64_t FormatIssueBinding.Text.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D6AD7C34()
{
  result = qword_1EC8915E0;
  if (!qword_1EC8915E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8915E0);
  }

  return result;
}

unint64_t sub_1D6AD7C88(uint64_t a1)
{
  result = sub_1D6AD7CB0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6AD7CB0()
{
  result = qword_1EC8915E8;
  if (!qword_1EC8915E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8915E8);
  }

  return result;
}

unint64_t sub_1D6AD7D44(void *a1)
{
  a1[1] = sub_1D5CD3DF8();
  a1[2] = sub_1D6704E50();
  result = sub_1D6AD7C34();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6AD7DE8()
{
  result = qword_1EC891610;
  if (!qword_1EC891610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891610);
  }

  return result;
}

uint64_t sub_1D6AD7E3C@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = *a1;
  if (v4 <= 2)
  {
    if (!*a1)
    {
      v20 = [*a2 identifier];
      v6 = sub_1D726207C();
      v8 = v21;

      v11 = 0x696669746E656449;
      v9 = 0xEA00000000007265;
      v10 = a3;
LABEL_12:
      v12 = v6;
      v14 = v8;
      goto LABEL_24;
    }

    if (v4 == 1)
    {
      v12 = sub_1D6CAFA6C();
      v14 = v13;
      v11 = 0x656C746954;
      v10 = a3;
      v9 = 0xE500000000000000;
    }

    else
    {
      v22 = *(a2 + 96);
      if (*(a2 + 80) == 1 || v22 == 0)
      {
        v24 = [*a2 coverDate];
        v31 = sub_1D726207C();
        v22 = v25;
      }

      else
      {
        v31 = *(a2 + 88);
      }

      v11 = 0x6144207265766F43;
      v10 = a3;
      v9 = 0xEA00000000006574;
      v12 = v31;
      v14 = v22;
    }
  }

  else
  {
    if (*a1 <= 4u)
    {
      if (v4 != 3)
      {
        v26 = [objc_msgSend(*a2 sourceChannel)];
        swift_unknownObjectRelease();
        v27 = sub_1D726207C();
        v29 = v28;

        v11 = 0x656873696C627550;
        v9 = 0xEE00656D614E2072;
        v10 = a3;
        v12 = v27;
        v14 = v29;
        goto LABEL_24;
      }

      v5 = [*a2 issueDescription];
      v6 = sub_1D726207C();
      v8 = v7;

      v9 = 0x80000001D73E52C0;
      v10 = a3;
      v11 = 0xD000000000000011;
      goto LABEL_12;
    }

    if (v4 == 5)
    {
      v15 = [*a2 accessibilityLanguage];
      if (v15)
      {
        v16 = v15;
        v17 = sub_1D726207C();
        v19 = v18;
      }

      else
      {
        v17 = 0;
        v19 = 0xE000000000000000;
      }

      v11 = 0x65676175676E614CLL;
      v10 = a3;
      v9 = 0xE800000000000000;
      v12 = v17;
      v14 = v19;
    }

    else
    {
      v12 = sub_1D6AD7608(a2);
      v14 = v30;
      v11 = 0x6974616D6F747541;
      v9 = 0xEA00000000006E6FLL;
      v10 = a3;
    }
  }

LABEL_24:
  sub_1D711F844(v11, v9, v12, v14, v10);
  v32 = type metadata accessor for FormatInspectionItem(0);
  return (*(*(v32 - 8) + 56))(a3, 0, 1, v32);
}

void sub_1D6AD8180(uint64_t a1)
{
  if (!qword_1EDF11C70)
  {
    v2 = sub_1D6AD81DC();
    v4 = type metadata accessor for CellAutomation(a1, &type metadata for IssueAutomation, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_1EDF11C70);
    }
  }
}

unint64_t sub_1D6AD81DC()
{
  result = qword_1EDF11698[0];
  if (!qword_1EDF11698[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF11698);
  }

  return result;
}

unint64_t sub_1D6AD8230()
{
  result = qword_1EDF11C78;
  if (!qword_1EDF11C78)
  {
    sub_1D6AD8180(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11C78);
  }

  return result;
}

uint64_t sub_1D6AD8288(uint64_t a1)
{
  sub_1D6AD8180(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1D6AD82E4@<D0>(_OWORD *a1@<X1>, uint64_t a2@<X8>)
{
  sub_1D5EA74B8(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[6];
  v10 = a1[7];
  v11 = a1[4];
  v24[5] = a1[5];
  v24[6] = v9;
  v25[0] = v10;
  *(v25 + 9) = *(a1 + 121);
  v12 = a1[3];
  v24[2] = a1[2];
  v24[3] = v12;
  v24[4] = v11;
  v13 = a1[1];
  v24[0] = *a1;
  v24[1] = v13;
  *&v22[0] = MEMORY[0x1E69E7CC0];
  sub_1D69972A4(0, 7, 0);
  v14 = 0;
  v15 = *&v22[0];
  do
  {
    v21 = byte_1F50F72D8[v14 + 32];
    sub_1D6AD7E3C(&v21, v24, v8);
    *&v22[0] = v15;
    v17 = *(v15 + 16);
    v16 = *(v15 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_1D69972A4((v16 > 1), v17 + 1, 1);
      v15 = *&v22[0];
    }

    ++v14;
    *(v15 + 16) = v17 + 1;
    sub_1D5E4F52C(v8, v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v17);
  }

  while (v14 != 7);
  sub_1D6795150(0x726F6C6F43, 0xE500000000000000, 0, 0, v15, v22);

  result = *v22;
  v19 = v22[1];
  *a2 = v22[0];
  *(a2 + 16) = v19;
  *(a2 + 32) = v23;
  return result;
}

uint64_t PaywallAutomation.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PaywallAutomation.type.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PaywallAutomation.host.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t PaywallAutomation.init(paywall:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[13];
  v26 = a1[12];
  v27 = v3;
  v28 = a1[14];
  v29 = *(a1 + 30);
  v4 = a1[9];
  v22 = a1[8];
  v23 = v4;
  v5 = a1[11];
  v24 = a1[10];
  v25 = v5;
  v6 = a1[5];
  v18 = a1[4];
  v19 = v6;
  v7 = a1[7];
  v20 = a1[6];
  v21 = v7;
  v8 = a1[1];
  v14 = *a1;
  v15 = v8;
  v9 = a1[3];
  v16 = a1[2];
  v17 = v9;
  v10 = *(&v14 + 1);
  *a2 = v14;
  *(a2 + 8) = v10;
  v11 = *(&v15 + 1);
  *(a2 + 16) = v15;
  *(a2 + 24) = v11;
  v12 = v16;

  result = sub_1D5F2DFAC(&v14);
  *(a2 + 32) = v12;
  return result;
}

uint64_t sub_1D6AD8640()
{
  v1 = 1701869940;
  if (*v0 != 1)
  {
    v1 = 1953722216;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1D6AD8690@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6AD8E40(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6AD86B8(uint64_t a1)
{
  v2 = sub_1D6AD88E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6AD86F4(uint64_t a1)
{
  v2 = sub_1D6AD88E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PaywallAutomation.encode(to:)(void *a1)
{
  sub_1D6AD8BBC(0, &qword_1EC891618, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v13 - v7;
  v9 = v1[2];
  v13[3] = v1[3];
  v13[4] = v9;
  v10 = v1[4];
  v13[1] = v1[5];
  v13[2] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6AD88E0();
  sub_1D7264B5C();
  v16 = 0;
  v11 = v13[5];
  sub_1D72643FC();
  if (!v11)
  {
    v15 = 1;
    sub_1D72643FC();
    v14 = 2;
    sub_1D72643FC();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D6AD88E0()
{
  result = qword_1EC891620;
  if (!qword_1EC891620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891620);
  }

  return result;
}

void PaywallAutomation.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D6AD8BBC(0, &qword_1EC891628, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v20 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6AD88E0();
  sub_1D7264B0C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v26 = 0;
    v11 = sub_1D72642BC();
    v13 = v12;
    v23 = v11;
    v25 = 1;
    v21 = sub_1D72642BC();
    v22 = v14;
    v24 = 2;
    v15 = sub_1D72642BC();
    v17 = v16;
    v18 = v15;
    (*(v7 + 8))(v10, v6);
    v19 = v22;
    *a2 = v23;
    a2[1] = v13;
    a2[2] = v21;
    a2[3] = v19;
    a2[4] = v18;
    a2[5] = v17;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

void sub_1D6AD8BBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6AD88E0();
    v7 = a3(a1, &type metadata for PaywallAutomation.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6AD8C24()
{
  result = qword_1EC891630;
  if (!qword_1EC891630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891630);
  }

  return result;
}

unint64_t sub_1D6AD8C7C()
{
  result = qword_1EC891638;
  if (!qword_1EC891638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891638);
  }

  return result;
}

unint64_t sub_1D6AD8D3C()
{
  result = qword_1EC891640;
  if (!qword_1EC891640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891640);
  }

  return result;
}

unint64_t sub_1D6AD8D94()
{
  result = qword_1EC891648;
  if (!qword_1EC891648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891648);
  }

  return result;
}

unint64_t sub_1D6AD8DEC()
{
  result = qword_1EC891650;
  if (!qword_1EC891650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891650);
  }

  return result;
}

uint64_t sub_1D6AD8E40(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1953722216 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D72646CC();

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

uint64_t FormatBlurVibrancyEffect.description.getter()
{
  v1 = *(v0 + 1);
  sub_1D7263D4C();

  v3 = FormatBlurEffectStyle.description.getter(v2);
  MEMORY[0x1DA6F9910](v3);

  MEMORY[0x1DA6F9910](0x6E6172626956202CLL, 0xEC000000203A7963);
  v4 = 0xE500000000000000;
  v5 = 0x6C6562616CLL;
  v6 = 0xEC0000006C6C6946;
  v7 = 0x7972616974726574;
  if (v1 != 6)
  {
    v7 = 0x6F74617261706573;
    v6 = 0xE900000000000072;
  }

  v8 = 0xE400000000000000;
  v9 = 1819044198;
  if (v1 != 4)
  {
    v9 = 0x7261646E6F636573;
    v8 = 0xED00006C6C694679;
  }

  if (v1 <= 5)
  {
    v7 = v9;
    v6 = v8;
  }

  v10 = 0xED00006C6562614CLL;
  v11 = 0x7972616974726574;
  if (v1 != 2)
  {
    v11 = 0x616E726574617571;
    v10 = 0xEF6C6562614C7972;
  }

  if (v1)
  {
    v5 = 0x7261646E6F636573;
    v4 = 0xEE006C6562614C79;
  }

  if (v1 > 1)
  {
    v5 = v11;
    v4 = v10;
  }

  if (v1 <= 3)
  {
    v12 = v5;
  }

  else
  {
    v12 = v7;
  }

  if (v1 <= 3)
  {
    v13 = v4;
  }

  else
  {
    v13 = v6;
  }

  MEMORY[0x1DA6F9910](v12, v13);

  return 0x203A72756C42;
}

uint64_t _s8NewsFeed24FormatBlurVibrancyEffectV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = *(a1 + 1);
  v4 = *(a2 + 1);
  v5 = FormatBlurEffectStyle.rawValue.getter(a3);
  v7 = v6;
  if (v5 == FormatBlurEffectStyle.rawValue.getter(v8) && v7 == v9)
  {
  }

  else
  {
    v11 = sub_1D72646CC();

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  return sub_1D6DD86C8(v3, v4);
}

unint64_t sub_1D6AD9268(uint64_t a1)
{
  result = sub_1D6AD9290();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6AD9290()
{
  result = qword_1EC891658;
  if (!qword_1EC891658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891658);
  }

  return result;
}

unint64_t sub_1D6AD92E4(void *a1)
{
  a1[1] = sub_1D66D312C();
  a1[2] = sub_1D66F5778();
  result = sub_1D6AD931C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6AD931C()
{
  result = qword_1EC891660;
  if (!qword_1EC891660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891660);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FormatBlurVibrancyEffect(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 65287 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65287 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65287;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65287;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65287;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FormatBlurVibrancyEffect(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65287 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65287 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 16) + 1;
    *result = a2 - 249;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed28DebugFormatLayoutTreeRowViewV7PopoverOSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D6AD9500@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v53 = a1;
  v56 = sub_1D726147C();
  v47 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56, v3);
  v46 = (&v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5DEEEB4(0);
  v6 = *(v5 - 8);
  v49 = v5;
  v50 = v6;
  MEMORY[0x1EEE9AC00](v5, v7);
  v54 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6ADCBB0(0);
  v10 = *(v9 - 8);
  v51 = v9;
  v52 = v10;
  MEMORY[0x1EEE9AC00](v9, v11);
  v55 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D72611CC();
  LOBYTE(v58) = 1;
  sub_1D6AD9B8C(v2, v64);
  memcpy(v62, v64, sizeof(v62));
  memcpy(v63, v64, sizeof(v63));
  v14 = MEMORY[0x1E6981F40];
  v48 = MEMORY[0x1E6981F40];
  sub_1D6ADD6F0(v62, v60, &qword_1EC87E030, sub_1D5DEF01C, MEMORY[0x1E6981F40]);
  sub_1D6ADD7A4(v63, &qword_1EC87E030, sub_1D5DEF01C, v14);
  memcpy(&v61[7], v62, 0x108uLL);
  v60[0] = v13;
  v60[1] = 0;
  LOBYTE(v60[2]) = v58;
  memcpy(&v60[2] + 1, v61, 0x10FuLL);
  v15 = swift_allocObject();
  v16 = *(v2 + 48);
  *(v15 + 48) = *(v2 + 32);
  *(v15 + 64) = v16;
  *(v15 + 80) = *(v2 + 64);
  v17 = *(v2 + 16);
  *(v15 + 16) = *v2;
  *(v15 + 32) = v17;
  sub_1D6ADCE10(v2, v64);
  sub_1D6ADCA8C(0, &qword_1EC87E028, &qword_1EC87E030, sub_1D5DEF01C, &qword_1EC87E0B0);
  v45 = v18;
  v19 = sub_1D6ADCB2C();
  sub_1D726177C();

  memcpy(v64, v60, 0x120uLL);
  sub_1D6ADD958(v64, &qword_1EC87E028, &qword_1EC87E030, sub_1D5DEF01C, &qword_1EC87E0B0);
  v58 = *(v2 + 32);
  v59 = *(v2 + 48);
  sub_1D6ADCE48(0, &qword_1EC891678, &qword_1EC891668, &type metadata for DebugFormatLayoutTreeRowView.Popover, MEMORY[0x1E6981790]);
  sub_1D726191C();
  v20 = v60[0];
  v21 = v60[1];
  v41 = v60[1];
  v42 = v60[0];
  v22 = v60[2];
  v44 = v60[2];
  v23 = v60[3];
  v43 = LOBYTE(v60[3]);
  v24 = swift_allocObject();
  v25 = *(v2 + 48);
  *(v24 + 48) = *(v2 + 32);
  *(v24 + 64) = v25;
  *(v24 + 80) = *(v2 + 64);
  v26 = *(v2 + 16);
  *(v24 + 16) = *v2;
  *(v24 + 32) = v26;
  sub_1D6ADCE10(v2, v60);
  v27 = sub_1D726193C();
  v28 = v46;
  v29 = v47;
  *v46 = v27;
  (*(v29 + 104))(v28, *MEMORY[0x1E697C8C0], v56);
  v60[0] = v20;
  v60[1] = v21;
  v60[2] = v22;
  LOBYTE(v60[3]) = v23;
  MEMORY[0x1DA6F8CC0](1);
  sub_1D6ADCD04(0, &qword_1EC87E0C0, sub_1D5DEF594, &type metadata for DebugFormatInspectorView, MEMORY[0x1E697F960]);
  v40 = v30;
  *&v58 = v45;
  *(&v58 + 1) = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = sub_1D5DEFA54();
  v38 = sub_1D5DEFAA8();
  v32 = v49;
  v33 = v54;
  sub_1D726176C();

  (*(v29 + 8))(v28, v56);
  (*(v50 + 8))(v33, v32);

  sub_1D6ADCEB8(v44, v43);
  v57 = v2;
  sub_1D6ADCA28(0, &qword_1EC891680, sub_1D6ADCED8, v48);
  v60[0] = v32;
  v60[1] = &type metadata for DebugFormatLayoutTreeRowView.Popover;
  v60[2] = v40;
  v60[3] = OpaqueTypeConformance2;
  v60[4] = v37;
  v60[5] = v38;
  swift_getOpaqueTypeConformance2();
  sub_1D6ADD184(&qword_1EC8916C0, &qword_1EC891680, sub_1D6ADCED8);
  v34 = v51;
  v35 = v55;
  sub_1D726178C();
  (*(v52 + 8))(v35, v34);
  sub_1D6ADD1E8(0);
  sub_1D6ADD4E4();
  return sub_1D726159C();
}

double sub_1D6AD9B8C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D6ADCA28(0, &qword_1EC881178, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v51 - v6;
  v8 = *(a1 + 24);
  v62 = sub_1D6ABC5CC();
  v9 = sub_1D726188C();
  if ((*(v8 + OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_isEnabled) & 1) == 0)
  {
    sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888);
    sub_1D72635DC();
    v10 = sub_1D726189C();

    v9 = v10;
  }

  KeyPath = swift_getKeyPath();
  v11 = *(a1 + 64);
  v58 = v9;
  if (v11)
  {
    v12 = sub_1D726184C();
    v59 = swift_getKeyPath();

    v60 = v12;
  }

  else
  {
    v59 = 0;
    v60 = 0;
  }

  v57 = sub_1D726125C();
  LOBYTE(v64) = 1;
  sub_1D6ADA228(a1, &v77);
  v86 = v78[5];
  v87 = v78[6];
  v88 = v78[7];
  v82 = v78[1];
  v83 = v78[2];
  v84 = v78[3];
  v85 = v78[4];
  v80 = v77;
  v81 = v78[0];
  v90[6] = v78[5];
  v90[7] = v78[6];
  v90[8] = v78[7];
  v90[2] = v78[1];
  v90[3] = v78[2];
  v90[4] = v78[3];
  v90[5] = v78[4];
  v89 = *&v78[8];
  v91 = *&v78[8];
  v90[0] = v77;
  v90[1] = v78[0];
  v13 = MEMORY[0x1E6981F40];
  sub_1D6ADD6F0(&v80, &v66, &qword_1EC87E070, sub_1D5DEF310, MEMORY[0x1E6981F40]);
  sub_1D6ADD7A4(v90, &qword_1EC87E070, sub_1D5DEF310, v13);
  *(&v79[6] + 7) = v86;
  *(&v79[7] + 7) = v87;
  *(&v79[8] + 7) = v88;
  *(&v79[2] + 7) = v82;
  *(&v79[3] + 7) = v83;
  *(&v79[4] + 7) = v84;
  *(&v79[5] + 7) = v85;
  *(v79 + 7) = v80;
  *(&v79[9] + 7) = v89;
  *(&v79[1] + 7) = v81;
  v56 = v64;
  v14 = sub_1D6ADB0D8();
  if (v15)
  {
    v16 = 0;
    v55 = 0;
    v17 = 0;
    v18 = 0;
  }

  else
  {
    *&v66 = v14;
    sub_1D5E4049C();
    *&v77 = sub_1D7263ADC();
    *(&v77 + 1) = v19;
    sub_1D5BF4D9C();
    v20 = v7;
    v21 = sub_1D726171C();
    v23 = v22;
    v52 = v24;
    v25 = sub_1D726163C();
    (*(*(v25 - 8) + 56))(v20, 1, 1, v25);
    sub_1D726167C();
    sub_1D6ADD7A4(v20, &qword_1EC881178, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
    v26 = sub_1D72616DC();
    v54 = v27;
    v55 = v26;
    v51 = v28;
    v53 = v29;

    sub_1D5F26348(v21, v23, v52 & 1);

    sub_1D726188C();
    v31 = v54;
    v30 = v55;
    v32 = sub_1D72616BC();
    v34 = v33;
    v52 = v35;
    v37 = v36;

    sub_1D5F26348(v30, v31, v51 & 1);

    v16 = v32;
    v55 = v34;
    v17 = v52 & 1;
    sub_1D5F26358(v32, v34, v52 & 1);
    v18 = v37;
  }

  v64 = v57;
  LOBYTE(v65[0]) = v56;
  *(&v65[7] + 1) = v79[7];
  *(&v65[6] + 1) = v79[6];
  *(&v65[8] + 1) = v79[8];
  *(v65 + 1) = v79[0];
  v65[9] = *(&v79[8] + 15);
  *(&v65[2] + 1) = v79[2];
  *(&v65[3] + 1) = v79[3];
  *(&v65[4] + 1) = v79[4];
  *(&v65[5] + 1) = v79[5];
  *(&v65[1] + 1) = v79[1];
  v73 = v65[6];
  v74 = v65[7];
  v75 = v65[8];
  v76 = *(&v79[8] + 15);
  v69 = v65[2];
  v70 = v65[3];
  v71 = v65[4];
  v72 = v65[5];
  v66 = v57;
  v67 = v65[0];
  v68 = v65[1];
  v63 = 1;

  v38 = v59;
  v39 = v60;
  sub_1D6ADD760(v59);
  sub_1D6ADD800(&v64, &v77, sub_1D5DEF25C);
  v40 = v55;
  sub_1D6A4AD98(v16, v55, v17, v18);
  sub_1D5EB52CC(v38, v39);
  sub_1D68C4240(v16, v40, v17, v18);
  v41 = v72;
  *(a2 + 152) = v73;
  v42 = v75;
  *(a2 + 168) = v74;
  *(a2 + 184) = v42;
  *(a2 + 200) = v76;
  v43 = v68;
  *(a2 + 88) = v69;
  v44 = v71;
  *(a2 + 104) = v70;
  *(a2 + 120) = v44;
  *(a2 + 136) = v41;
  v45 = v67;
  *(a2 + 40) = v66;
  *(a2 + 56) = v45;
  v46 = v63;
  v47 = KeyPath;
  *a2 = v62;
  *(a2 + 8) = v47;
  v48 = v59;
  *(a2 + 16) = v58;
  *(a2 + 24) = v48;
  v49 = v60;
  *(a2 + 32) = v60;
  *(a2 + 72) = v43;
  *(a2 + 216) = 0;
  *(a2 + 224) = v46;
  *(a2 + 232) = v16;
  *(a2 + 240) = v40;
  *(a2 + 248) = v17;
  *(a2 + 256) = v18;
  sub_1D68C4240(v16, v40, v17, v18);
  *(&v78[6] + 1) = v79[6];
  *(&v78[7] + 1) = v79[7];
  *(&v78[8] + 1) = v79[8];
  v78[9] = *(&v79[8] + 15);
  *(&v78[2] + 1) = v79[2];
  *(&v78[3] + 1) = v79[3];
  *(&v78[4] + 1) = v79[4];
  *(&v78[5] + 1) = v79[5];
  *(v78 + 1) = v79[0];
  v77 = v57;
  LOBYTE(v78[0]) = v56;
  *(&v78[1] + 1) = v79[1];
  sub_1D6ADD868(&v77, sub_1D5DEF25C);
  sub_1D5EB52CC(v48, v49);

  return result;
}

uint64_t sub_1D6ADA228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v3 = MEMORY[0x1E69E6720];
  sub_1D6ADCA28(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v84 - v6;
  sub_1D6ADCA28(0, &qword_1EC881178, MEMORY[0x1E6980E30], v3);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v84 - v10;
  v12 = sub_1D72611CC();
  LOBYTE(v101) = 1;
  sub_1D6ADAA80(a1, v109);
  *(&v107[1] + 7) = v109[1];
  *(v107 + 7) = v109[0];
  *(&v107[2] + 7) = v109[2];
  *(&v107[3] + 7) = v110;
  *&v112[17] = v107[1];
  *&v112[33] = v107[2];
  *&v112[49] = v107[3];
  v111 = v12;
  v112[0] = v101;
  *&v112[64] = *(&v110 + 1);
  *&v112[1] = v107[0];
  v13 = *(a1 + 24);
  v14 = OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_model;
  v15 = sub_1D6ABD1C8();
  v92 = v13;
  if (v16)
  {
    v84 = v14;
    v90 = v7;
    *&v107[0] = v15;
    *(&v107[0] + 1) = v16;
    sub_1D5BF4D9C();
    v18 = sub_1D726171C();
    v20 = v19;
    v22 = v21;
    v23 = sub_1D726163C();
    (*(*(v23 - 8) + 56))(v11, 1, 1, v23);
    sub_1D726167C();
    v91 = v11;
    sub_1D6ADD7A4(v11, &qword_1EC881178, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
    v24 = sub_1D72616DC();
    v26 = v25;
    v28 = v27;

    sub_1D5F26348(v18, v20, v22 & 1);

    v29 = sub_1D72616AC();
    v31 = v30;
    v33 = v32;
    v88 = v34;
    sub_1D5F26348(v24, v26, v28 & 1);

    sub_1D726188C();
    if ((*(v92 + OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_isEnabled) & 1) == 0)
    {
      sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888);
      sub_1D72635DC();
      sub_1D726189C();
    }

    v35 = sub_1D72616BC();
    v37 = v36;
    v39 = v38;
    v41 = v40;

    sub_1D5F26348(v29, v31, v33 & 1);

    v87 = v37;
    v88 = v35;
    v85 = v39 & 1;
    sub_1D5F26358(v35, v37, v39 & 1);
    v86 = v41;

    v11 = v91;
    v7 = v90;
  }

  else
  {
    v87 = 0;
    v88 = 0;
    v85 = 0;
    v86 = 0;
  }

  sub_1D6AC236C(v17);
  sub_1D725892C();

  v42 = sub_1D725895C();
  v43 = (*(*(v42 - 8) + 48))(v7, 1, v42);
  sub_1D6ADD7A4(v7, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  v45 = 0;
  v90 = 0;
  v91 = 0;
  v46 = 0;
  if (v43 == 1)
  {
    *&v107[0] = sub_1D6AC236C(v44);
    *(&v107[0] + 1) = v47;
    sub_1D5BF4D9C();
    v48 = sub_1D726171C();
    v50 = v49;
    v52 = v51;
    v53 = sub_1D726163C();
    (*(*(v53 - 8) + 56))(v11, 1, 1, v53);
    sub_1D726167C();
    sub_1D6ADD7A4(v11, &qword_1EC881178, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
    v54 = sub_1D72616DC();
    v56 = v55;
    v58 = v57;

    sub_1D5F26348(v48, v50, v52 & 1);

    v59 = sub_1D72616AC();
    v61 = v60;
    v63 = v62;
    sub_1D5F26348(v54, v56, v58 & 1);

    sub_1D726184C();
    if ((*(v92 + OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_isEnabled) & 1) == 0)
    {
      sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888);
      sub_1D72635DC();
      sub_1D726189C();
    }

    v64 = sub_1D72616BC();
    v66 = v65;
    v68 = v67;
    v70 = v69;

    sub_1D5F26348(v59, v61, v63 & 1);

    v45 = v64;
    v91 = v66;
    sub_1D5F26358(v64, v66, v68 & 1);
    v90 = v70;
    v46 = v68 & 1;
  }

  v95 = *&v112[16];
  v96 = *&v112[32];
  v97 = *&v112[48];
  v99[3] = *&v112[32];
  v99[4] = *&v112[48];
  v99[0] = v111;
  v93 = v111;
  v94 = *v112;
  v99[1] = *v112;
  v99[2] = *&v112[16];
  v98 = *&v112[64];
  v100 = *&v112[64];
  v101 = v111;
  v102 = *v112;
  v106 = *&v112[64];
  v104 = *&v112[32];
  v105 = *&v112[48];
  v103 = *&v112[16];
  sub_1D6ADD8C8(&v111, v107);
  sub_1D6ADD8C8(v99, v107);
  v72 = v87;
  v71 = v88;
  v73 = v85;
  v74 = v86;
  sub_1D6A4AD98(v88, v87, v85, v86);
  v75 = v91;
  v76 = v46;
  v77 = v46;
  v78 = v90;
  sub_1D6A4AD98(v45, v91, v76, v90);
  sub_1D68C4240(v71, v72, v73, v74);
  sub_1D68C4240(v45, v75, v77, v78);
  v92 = sub_1D5DEF45C;
  sub_1D6ADD958(&v111, &qword_1EC87E080, &qword_1EC87E088, sub_1D5DEF45C, &qword_1EC87E0A0);
  v79 = v104;
  v80 = v89;
  *(v89 + 32) = v103;
  *(v80 + 48) = v79;
  *(v80 + 64) = v105;
  v81 = v106;
  v82 = v102;
  *v80 = v101;
  *(v80 + 16) = v82;
  *(v80 + 80) = v81;
  *(v80 + 88) = v71;
  *(v80 + 96) = v72;
  *(v80 + 104) = v73;
  *(v80 + 112) = v74;
  *(v80 + 120) = v45;
  *(v80 + 128) = v75;
  *(v80 + 136) = v77;
  *(v80 + 144) = v78;
  sub_1D68C4240(v45, v75, v77, v78);
  sub_1D68C4240(v71, v72, v73, v74);
  v107[2] = v95;
  v107[3] = v96;
  v107[4] = v97;
  v108 = v98;
  v107[0] = v93;
  v107[1] = v94;
  return sub_1D6ADD958(v107, &qword_1EC87E080, &qword_1EC87E088, v92, &qword_1EC87E0A0);
}

double sub_1D6ADAA80@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v77 = a2;
  v3 = type metadata accessor for DebugFormatLayoutModel(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v72 = v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v74 = v68 - v8;
  v9 = MEMORY[0x1E6980E30];
  v10 = MEMORY[0x1E69E6720];
  sub_1D6ADCA28(0, &qword_1EC881178, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = v68 - v13;
  v15 = *(a1 + 24);
  v73 = OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_model;
  v78 = sub_1D6ABC250();
  v79 = v16;
  sub_1D5BF4D9C();
  v17 = sub_1D726171C();
  v19 = v18;
  v21 = v20;
  v22 = sub_1D726163C();
  v23 = *(v22 - 8);
  v69 = *(v23 + 56);
  v70 = v22;
  v68[1] = v23 + 56;
  v69(v14, 1, 1);
  sub_1D726167C();
  v71 = v14;
  sub_1D6ADD7A4(v14, &qword_1EC881178, v9, v10);
  v24 = sub_1D72616DC();
  v26 = v25;
  v28 = v27;

  sub_1D5F26348(v17, v19, v21 & 1);

  sub_1D726187C();
  if ((*(v15 + OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_isEnabled) & 1) == 0)
  {
    sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888);
    sub_1D72635DC();
    sub_1D726189C();
  }

  v76 = sub_1D72616BC();
  v30 = v29;
  v75 = v31;
  v33 = v32;

  sub_1D5F26348(v24, v26, v28 & 1);

  v35 = v73;
  v34 = v74;
  sub_1D6ADD800(v15 + v73, v74, type metadata accessor for DebugFormatLayoutModel);
  if (*(v34 + 40) == 3 && ((*v34 >> 59) & 0x1E | (*v34 >> 2) & 1) == 4)
  {
    v36 = *(*((*v34 & 0xFFFFFFFFFFFFFFBLL) + 0x10) + 208);
    sub_1D6ADD868(v34, type metadata accessor for DebugFormatLayoutModel);
    if (v36)
    {
      goto LABEL_10;
    }
  }

  else
  {
    sub_1D6ADD868(v34, type metadata accessor for DebugFormatLayoutModel);
  }

  v37 = v72;
  sub_1D6ADD800(v15 + v35, v72, type metadata accessor for DebugFormatLayoutModel);
  if (*(v37 + 40) != 3)
  {
    sub_1D6ADD868(v37, type metadata accessor for DebugFormatLayoutModel);
    goto LABEL_12;
  }

  v78 = *v37;
  v39 = sub_1D6EE6930(v38);
  sub_1D6ADD868(v37, type metadata accessor for DebugFormatLayoutModel);
  if (v39)
  {
LABEL_12:
    v57 = 0;
    v59 = 0;
    v63 = 0;
    v62 = 0;
    goto LABEL_13;
  }

LABEL_10:
  sub_1D726121C();
  v40 = sub_1D726170C();
  v42 = v41;
  v44 = v43;
  sub_1D726164C();
  v45 = v71;
  (v69)(v71, 1, 1, v70);
  sub_1D726167C();
  sub_1D6ADD7A4(v45, &qword_1EC881178, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
  v46 = sub_1D72616DC();
  v73 = v30;
  v74 = v33;
  v47 = v46;
  v49 = v48;
  v51 = v50;

  sub_1D5F26348(v40, v42, v44 & 1);

  v52 = sub_1D72616AC();
  v54 = v53;
  v56 = v55;
  sub_1D5F26348(v47, v49, v51 & 1);
  v30 = v73;

  sub_1D726186C();
  v57 = sub_1D72616BC();
  v59 = v58;
  LOBYTE(v49) = v60;
  v62 = v61;
  v33 = v74;

  sub_1D5F26348(v52, v54, v56 & 1);

  v63 = v49 & 1;
  sub_1D5F26358(v57, v59, v49 & 1);

LABEL_13:
  v64 = v75 & 1;
  v65 = v76;
  sub_1D5F26358(v76, v30, v75 & 1);

  sub_1D6A4AD98(v57, v59, v63, v62);
  sub_1D68C4240(v57, v59, v63, v62);
  LOBYTE(v78) = v64;
  v66 = v77;
  *v77 = v65;
  v66[1] = v30;
  *(v66 + 16) = v64;
  v66[3] = v33;
  v66[4] = v57;
  v66[5] = v59;
  v66[6] = v63;
  v66[7] = v62;
  sub_1D68C4240(v57, v59, v63, v62);
  sub_1D5F26348(v65, v30, v64);

  return result;
}

uint64_t sub_1D6ADB0D8()
{
  v1 = type metadata accessor for DebugFormatLayoutModel(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 56);
  if (v5)
  {
    sub_1D6ADD800(*(v0 + 24) + OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_model, v4, type metadata accessor for DebugFormatLayoutModel);
    if (v4[40] - 1 < 2)
    {
      v6 = v5;
      sub_1D6ADD868(v4, type metadata accessor for DebugFormatLayoutModel);
      v9 = 0;
      sub_1D6ADC4C8(v6, &v9);

      return v9;
    }

    sub_1D6ADD868(v4, type metadata accessor for DebugFormatLayoutModel);
  }

  return 0;
}

uint64_t sub_1D6ADB1F8(uint64_t a1)
{
  v2 = *(a1 + 24);

  v4 = sub_1D6ADB2D0(v3);
  v5 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();

  result = sub_1D72600DC();
  v7 = v5 + OBJC_IVAR____TtC8NewsFeed21DebugFormatLayoutTree_onDidTapTreeItem;
  v8 = *(v5 + OBJC_IVAR____TtC8NewsFeed21DebugFormatLayoutTree_onDidTapTreeItem);
  if (v8)
  {
    v9 = *(v7 + 8);

    v8(v2, v4 & 1);
    return sub_1D5B74328(v8, v9);
  }

  return result;
}

uint64_t sub_1D6ADB2D0(char *a1)
{
  v44 = a1;
  v1 = sub_1D725895C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v42 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D686EBA0(0);
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5, v7);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6ADCA28(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v43 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v41 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v41 - v18;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  if (v46)
  {
    v20 = *(v2 + 16);
    v20(v19, v46 + OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_id, v1);

    v21 = *(v2 + 56);
    v21(v19, 0, 1, v1);
  }

  else
  {
    v21 = *(v2 + 56);
    v21(v19, 1, 1, v1);
    v20 = *(v2 + 16);
  }

  v20(v15, &v44[OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_id], v1);
  v21(v15, 0, 1, v1);
  v22 = *(v6 + 48);
  v23 = MEMORY[0x1E69695A8];
  v24 = MEMORY[0x1E69E6720];
  v25 = v45;
  sub_1D6ADD6F0(v19, v45, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  sub_1D6ADD6F0(v15, v25 + v22, &qword_1EDF3C398, v23, v24);
  v26 = *(v2 + 48);
  if (v26(v25, 1, v1) != 1)
  {
    v44 = v19;
    v32 = v25;
    v30 = v25;
    v33 = v43;
    sub_1D6ADD6F0(v32, v43, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
    if (v26(v30 + v22, 1, v1) != 1)
    {
      v36 = v42;
      (*(v2 + 32))(v42, v30 + v22, v1);
      sub_1D6ADD6A8(&qword_1EDF18A58, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v31 = sub_1D7261FBC();
      v37 = *(v2 + 8);
      v37(v36, v1);
      v38 = MEMORY[0x1E69695A8];
      v39 = MEMORY[0x1E69E6720];
      sub_1D6ADD7A4(v15, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
      sub_1D6ADD7A4(v44, &qword_1EDF3C398, v38, v39);
      v37(v33, v1);
      sub_1D6ADD7A4(v30, &qword_1EDF3C398, v38, v39);
      return v31 & 1;
    }

    v34 = MEMORY[0x1E69695A8];
    v35 = MEMORY[0x1E69E6720];
    sub_1D6ADD7A4(v15, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
    sub_1D6ADD7A4(v44, &qword_1EDF3C398, v34, v35);
    (*(v2 + 8))(v33, v1);
    goto LABEL_9;
  }

  v27 = MEMORY[0x1E69695A8];
  v28 = MEMORY[0x1E69E6720];
  sub_1D6ADD7A4(v15, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  v29 = v19;
  v30 = v45;
  sub_1D6ADD7A4(v29, &qword_1EDF3C398, v27, v28);
  if (v26(v30 + v22, 1, v1) != 1)
  {
LABEL_9:
    sub_1D6ADD868(v30, sub_1D686EBA0);
    v31 = 0;
    return v31 & 1;
  }

  sub_1D6ADD7A4(v30, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  v31 = 1;
  return v31 & 1;
}

void *sub_1D6ADB908(void **a1, uint64_t a2)
{
  sub_1D6ADCD04(0, &qword_1EC8916E8, sub_1D5DEF594, &type metadata for DebugFormatInspectorView, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v26 - v7;
  sub_1D5DEF594(0);
  v10 = v9;
  MEMORY[0x1EEE9AC00](v9, v11);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  if (a1[1])
  {
    *v8 = *(*(a2 + 8) + OBJC_IVAR____TtC8NewsFeed21DebugFormatLayoutTree_editor);
    strcpy(v8 + 8, "Accessibility");
    *(v8 + 11) = -4864;
    *(v8 + 3) = v16;
    swift_storeEnumTagMultiPayload();
    sub_1D6ADD694(v16, 1);
    sub_1D5DEFB60();
    sub_1D5DEFC10();

    return sub_1D726135C();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v12, v13);
    *&v26[-1] = a2;
    *(&v26[-1] + 1) = v16;
    sub_1D5DEF74C(0);
    sub_1D5DEF82C(255);
    v19 = v18;
    sub_1D6ADCD70(255);
    v21 = v20;
    v22 = sub_1D5DEF92C();
    *&v26[0] = v21;
    *(&v26[0] + 1) = v22;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    *&v26[0] = v19;
    *(&v26[0] + 1) = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_1D726102C();
    sub_1D7261A5C();
    sub_1D7260EEC();
    v24 = &v15[*(v10 + 36)];
    v25 = v26[1];
    *v24 = v26[0];
    *(v24 + 1) = v25;
    *(v24 + 2) = v26[2];
    sub_1D5DB3480(v15, v8);
    swift_storeEnumTagMultiPayload();
    sub_1D5DEFB60();
    sub_1D5DEFC10();
    sub_1D726135C();
    return sub_1D5DB34E4(v15);
  }
}

uint64_t sub_1D6ADBC1C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a3;
  v28 = sub_1D72611BC();
  v26 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v5);
  v25 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5DEF82C(0);
  v27 = v7;
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(a1 + 8) + OBJC_IVAR____TtC8NewsFeed21DebugFormatLayoutTree_editor);
  v12 = objc_opt_self();

  v13 = a2;
  v14 = [v12 secondarySystemBackgroundColor];
  v15 = sub_1D726189C();
  v16 = sub_1D72615EC();
  v31 = v11;
  v32 = v13;
  v33 = v15;
  v34 = v16;
  sub_1D726121C();
  sub_1D6ADCD70(0);
  v18 = v17;
  v19 = sub_1D5DEF92C();
  sub_1D72617BC();

  v20 = v25;
  v21 = v26;
  v22 = v28;
  (*(v26 + 104))(v25, *MEMORY[0x1E697C438], v28);
  v31 = v18;
  v32 = v19;
  swift_getOpaqueTypeConformance2();
  v23 = v27;
  sub_1D726181C();
  (*(v21 + 8))(v20, v22);
  return (*(v29 + 8))(v10, v23);
}

uint64_t sub_1D6ADBF00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  sub_1D6ADD0B8(0);
  v54 = *(v3 - 8);
  v55 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v53 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E69E6720];
  sub_1D6ADCA28(0, &qword_1EC8916A8, sub_1D6ADD0B8, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v52 - v13;
  sub_1D6ADCFA4(0);
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6ADCA28(0, &qword_1EC891690, sub_1D6ADCFA4, v6);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v52 - v27;
  v29 = *(a1 + 56);
  v59 = v29;
  if (v29)
  {
    v30 = swift_allocObject();
    v31 = *(a1 + 48);
    *(v30 + 48) = *(a1 + 32);
    *(v30 + 64) = v31;
    v32 = *(a1 + 64);
    v33 = *(a1 + 16);
    *(v30 + 16) = *a1;
    *(v30 + 32) = v33;
    *(v30 + 80) = v32;
    *(v30 + 88) = v29;
    sub_1D6ADD800(&v59, v57, sub_1D6ADD5C4);
    sub_1D6ADD800(&v59, v57, sub_1D6ADD5C4);
    sub_1D6ADCE10(a1, v57);
    sub_1D726194C();
    v34 = sub_1D726188C();
    sub_1D6ADD868(&v59, sub_1D6ADD5C4);
    KeyPath = swift_getKeyPath();
    v36 = &v20[*(v16 + 36)];
    *v36 = KeyPath;
    v36[1] = v34;
    sub_1D6ADD62C(v20, v28, sub_1D6ADCFA4);
    (*(v17 + 56))(v28, 0, 1, v16);
  }

  else
  {
    (*(v17 + 56))(&v52 - v27, 1, 1, v16);
  }

  v37 = *(a1 + 64);
  v58 = v37;
  if (v37)
  {
    v38 = swift_allocObject();
    v39 = *(a1 + 48);
    *(v38 + 48) = *(a1 + 32);
    *(v38 + 64) = v39;
    v40 = *(a1 + 64);
    v41 = *(a1 + 16);
    *(v38 + 16) = *a1;
    *(v38 + 32) = v41;
    *(v38 + 80) = v40;
    *(v38 + 88) = v37;
    sub_1D6ADCE10(a1, v57);
    sub_1D6ADD544(&v58, v57);
    sub_1D61ABE60();
    v42 = v53;
    sub_1D726194C();
    v43 = sub_1D726184C();
    v44 = swift_getKeyPath();
    v45 = v55;
    v46 = (v42 + *(v55 + 36));
    *v46 = v44;
    v46[1] = v43;
    sub_1D6ADD62C(v42, v14, sub_1D6ADD0B8);
    v47 = 0;
  }

  else
  {
    v47 = 1;
    v45 = v55;
  }

  (*(v54 + 56))(v14, v47, 1, v45);
  v48 = MEMORY[0x1E69E6720];
  sub_1D6ADD6F0(v28, v24, &qword_1EC891690, sub_1D6ADCFA4, MEMORY[0x1E69E6720]);
  sub_1D6ADD6F0(v14, v10, &qword_1EC8916A8, sub_1D6ADD0B8, v48);
  v49 = v56;
  sub_1D6ADD6F0(v24, v56, &qword_1EC891690, sub_1D6ADCFA4, v48);
  sub_1D6ADCED8(0);
  sub_1D6ADD6F0(v10, v49 + *(v50 + 48), &qword_1EC8916A8, sub_1D6ADD0B8, v48);
  sub_1D6ADD7A4(v14, &qword_1EC8916A8, sub_1D6ADD0B8, v48);
  sub_1D6ADD7A4(v28, &qword_1EC891690, sub_1D6ADCFA4, v48);
  sub_1D6ADD7A4(v10, &qword_1EC8916A8, sub_1D6ADD0B8, v48);
  return sub_1D6ADD7A4(v24, &qword_1EC891690, sub_1D6ADCFA4, v48);
}

void sub_1D6ADC4C8(void *a1, void *a2)
{
  if (__OFADD__(*a2, 1))
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    ++*a2;
    v4 = [a1 subviews];
    sub_1D5B5A498(0, &qword_1EDF1A710, 0x1E69DD250);
    v3 = sub_1D726267C();

    if (!(v3 >> 62))
    {
      v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v5)
      {
        goto LABEL_12;
      }

      goto LABEL_4;
    }
  }

  v5 = sub_1D7263BFC();
  if (!v5)
  {
    goto LABEL_12;
  }

LABEL_4:
  if (v5 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v5; ++i)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1DA6FB460](i, v3);
    }

    else
    {
      v7 = *(v3 + 8 * i + 32);
    }

    v8 = v7;
    sub_1D6ADC4C8(v7, v2);
  }

LABEL_12:
}

uint64_t sub_1D6ADC5E4(uint64_t a1, void *a2)
{
  sub_1D6ADCE48(0, &qword_1EC891678, &qword_1EC891668, &type metadata for DebugFormatLayoutTreeRowView.Popover, MEMORY[0x1E6981790]);
  v3 = a2;
  return sub_1D726190C();
}

uint64_t sub_1D6ADC678@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D72618CC();
  *a1 = result;
  return result;
}

uint64_t sub_1D6ADC6B8(uint64_t a1, uint64_t a2)
{
  sub_1D6ADCE48(0, &qword_1EC891678, &qword_1EC891668, &type metadata for DebugFormatLayoutTreeRowView.Popover, MEMORY[0x1E6981790]);

  return sub_1D726190C();
}

void sub_1D6ADC7A4(uint64_t a2@<X8>)
{
  sub_1D5B49CBC(0, &qword_1EC891668, &type metadata for DebugFormatLayoutTreeRowView.Popover);
  sub_1D72618EC();
  type metadata accessor for DebugFormatLayoutTree(0);
  sub_1D6ADD6A8(&qword_1EC881188, type metadata accessor for DebugFormatLayoutTree, &unk_1D72F7CA0);

  v3 = sub_1D7260F8C();
  v5 = v4;
  sub_1D6ADD6A8(&qword_1EC881190, type metadata accessor for DebugFormatLayoutTreeItem, &unk_1D735EAC0);

  v6 = sub_1D7260F8C();
  v8 = v7;

  sub_1D725B31C();

  v11 = v16;
  if (v16)
  {
    v12 = sub_1D6ABC93C(v9, v10);
    v14 = sub_1D6CDA3B4(v12, v13);

    if (v14)
    {
      v15 = v14;
      v11 = sub_1D713197C(v14);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v8;
  *(a2 + 32) = v16;
  *(a2 + 40) = v17;
  *(a2 + 48) = v18;
  *(a2 + 56) = v14;
  *(a2 + 64) = v11;
}

void sub_1D6ADCA28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D6ADCA8C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), unint64_t *a5)
{
  if (!*a2)
  {
    sub_1D6ADCA28(255, a3, a4, MEMORY[0x1E6981F40]);
    sub_1D6ADD184(a5, a3, a4);
    v9 = sub_1D726197C();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1D6ADCB2C()
{
  result = qword_1EC87E0B8;
  if (!qword_1EC87E0B8)
  {
    sub_1D6ADCA8C(255, &qword_1EC87E028, &qword_1EC87E030, sub_1D5DEF01C, &qword_1EC87E0B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87E0B8);
  }

  return result;
}

void sub_1D6ADCBB0(uint64_t a1)
{
  if (!qword_1EC891670)
  {
    sub_1D5DEEEB4(255);
    sub_1D6ADCD04(255, &qword_1EC87E0C0, sub_1D5DEF594, &type metadata for DebugFormatInspectorView, MEMORY[0x1E697F960]);
    sub_1D6ADCA8C(255, &qword_1EC87E028, &qword_1EC87E030, sub_1D5DEF01C, &qword_1EC87E0B0);
    sub_1D6ADCB2C();
    swift_getOpaqueTypeConformance2();
    sub_1D5DEFA54();
    sub_1D5DEFAA8();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC891670);
    }
  }
}

void sub_1D6ADCD04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1D6ADCD70(uint64_t a1)
{
  if (!qword_1EC87E0E8)
  {
    sub_1D6ADD064(255, &qword_1EC87E0F0, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980460]);
    v1 = sub_1D726101C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC87E0E8);
    }
  }
}

void sub_1D6ADCDFC(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

void sub_1D6ADCE48(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1D5B49CBC(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D6ADCEB8(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_1D6ADCDFC(a1, a2 & 1);
  }
}

void sub_1D6ADCED8(uint64_t a1)
{
  if (!qword_1EC891688)
  {
    v1 = MEMORY[0x1E69E6720];
    sub_1D6ADCA28(255, &qword_1EC891690, sub_1D6ADCFA4, MEMORY[0x1E69E6720]);
    sub_1D6ADCA28(255, &qword_1EC8916A8, sub_1D6ADD0B8, v1);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC891688);
    }
  }
}

void sub_1D6ADCFA4(uint64_t a1)
{
  if (!qword_1EC891698)
  {
    sub_1D6ADD064(255, &qword_1EC8916A0, MEMORY[0x1E6981748], MEMORY[0x1E6981710], MEMORY[0x1E697D670]);
    sub_1D6ADCE48(255, &qword_1EC87E048, &qword_1EC87E050, MEMORY[0x1E69815C0], MEMORY[0x1E6980A08]);
    v1 = sub_1D726101C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC891698);
    }
  }
}

void sub_1D6ADD064(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void sub_1D6ADD0B8(uint64_t a1)
{
  if (!qword_1EC8916B0)
  {
    sub_1D6ADD47C(255, &qword_1EC8916B8, sub_1D61ABE60, &type metadata for DebugFormatLayoutAXBadge, MEMORY[0x1E697D670]);
    sub_1D6ADCE48(255, &qword_1EC87E048, &qword_1EC87E050, MEMORY[0x1E69815C0], MEMORY[0x1E6980A08]);
    v1 = sub_1D726101C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC8916B0);
    }
  }
}

uint64_t sub_1D6ADD184(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D6ADCA28(255, a2, a3, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D6ADD1E8(uint64_t a1)
{
  if (!qword_1EC8916C8)
  {
    sub_1D6ADD288(255);
    sub_1D6ADD47C(255, &qword_1EC8916D8, sub_1D6ADD4E4, MEMORY[0x1E6981EF8], MEMORY[0x1E6980CF0]);
    v1 = sub_1D726101C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC8916C8);
    }
  }
}

void sub_1D6ADD288(uint64_t a1)
{
  if (!qword_1EC8916D0)
  {
    sub_1D6ADCBB0(255);
    sub_1D6ADCA28(255, &qword_1EC891680, sub_1D6ADCED8, MEMORY[0x1E6981F40]);
    sub_1D5DEEEB4(255);
    sub_1D6ADCD04(255, &qword_1EC87E0C0, sub_1D5DEF594, &type metadata for DebugFormatInspectorView, MEMORY[0x1E697F960]);
    sub_1D6ADCA8C(255, &qword_1EC87E028, &qword_1EC87E030, sub_1D5DEF01C, &qword_1EC87E0B0);
    sub_1D6ADCB2C();
    swift_getOpaqueTypeConformance2();
    sub_1D5DEFA54();
    sub_1D5DEFAA8();
    swift_getOpaqueTypeConformance2();
    sub_1D6ADD184(&qword_1EC8916C0, &qword_1EC891680, sub_1D6ADCED8);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC8916D0);
    }
  }
}

void sub_1D6ADD47C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1D6ADD4E4()
{
  result = qword_1EC8916E0;
  if (!qword_1EC8916E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8916E0);
  }

  return result;
}

uint64_t sub_1D6ADD544(uint64_t a1, uint64_t a2)
{
  sub_1D5B49CBC(0, &qword_1EC884DE0, &type metadata for FormatInspection);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D6ADD5C4(uint64_t a1)
{
  if (!qword_1EC884E68)
  {
    sub_1D5B5A498(255, &qword_1EDF1A710, 0x1E69DD250);
    v1 = sub_1D726393C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC884E68);
    }
  }
}

uint64_t sub_1D6ADD62C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_1D6ADD694(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
    return a1;
  }
}

uint64_t sub_1D6ADD6A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D6ADD6F0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_1D6ADCA28(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

double sub_1D6ADD760(uint64_t a1)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_1D6ADD7A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_1D6ADCA28(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1D6ADD800(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6ADD868(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6ADD8C8(uint64_t a1, uint64_t a2)
{
  sub_1D6ADCA8C(0, &qword_1EC87E080, &qword_1EC87E088, sub_1D5DEF45C, &qword_1EC87E0A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6ADD958(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), unint64_t *a5)
{
  sub_1D6ADCA8C(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

unint64_t sub_1D6ADD9B4()
{
  result = qword_1EC8916F0;
  if (!qword_1EC8916F0)
  {
    sub_1D6ADD1E8(255);
    sub_1D6ADCBB0(255);
    sub_1D6ADCA28(255, &qword_1EC891680, sub_1D6ADCED8, MEMORY[0x1E6981F40]);
    sub_1D5DEEEB4(255);
    sub_1D6ADCD04(255, &qword_1EC87E0C0, sub_1D5DEF594, &type metadata for DebugFormatInspectorView, MEMORY[0x1E697F960]);
    sub_1D6ADCA8C(255, &qword_1EC87E028, &qword_1EC87E030, sub_1D5DEF01C, &qword_1EC87E0B0);
    sub_1D6ADCB2C();
    swift_getOpaqueTypeConformance2();
    sub_1D5DEFA54();
    sub_1D5DEFAA8();
    swift_getOpaqueTypeConformance2();
    sub_1D6ADD184(&qword_1EC8916C0, &qword_1EC891680, sub_1D6ADCED8);
    swift_getOpaqueTypeConformance2();
    sub_1D6ADDBD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8916F0);
  }

  return result;
}

unint64_t sub_1D6ADDBD4()
{
  result = qword_1EC8916F8;
  if (!qword_1EC8916F8)
  {
    sub_1D6ADD47C(255, &qword_1EC8916D8, sub_1D6ADD4E4, MEMORY[0x1E6981EF8], MEMORY[0x1E6980CF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8916F8);
  }

  return result;
}

uint64_t FormatSponsoredBannerLayoutAttributes.__allocating_init(identifier:layoutIdentifier:nodeIdentifier:frame:resizing:zIndex:visibility:isUserInteractionEnabled:accessibilityRole:style:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, double a9, double a10, double a11, double a12, uint64_t *a13, char a14, uint64_t *a15, uint64_t a16)
{
  result = swift_allocObject();
  v26 = *a7;
  v27 = *a13;
  v28 = *a15;
  v29 = *(a15 + 8);
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 48) = a5;
  *(result + 56) = a6;
  *(result + 64) = a9;
  *(result + 72) = a10;
  *(result + 80) = a11;
  *(result + 88) = a12;
  *(result + 96) = v26;
  *(result + 104) = a8;
  *(result + 112) = v27;
  *(result + 120) = a14;
  *(result + 128) = v28;
  *(result + 136) = v29;
  *(result + 144) = MEMORY[0x1E69E7CD0];
  *(result + 152) = a16;
  return result;
}

uint64_t FormatSponsoredBannerLayoutAttributes.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatSponsoredBannerLayoutAttributes.layoutIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FormatSponsoredBannerLayoutAttributes.nodeIdentifier.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

double FormatSponsoredBannerLayoutAttributes.resizing.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 96);

  return result;
}

double FormatSponsoredBannerLayoutAttributes.visibility.getter@<D0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 112);
  *a1 = v2;
  return sub_1D5EB1500(v2);
}

void FormatSponsoredBannerLayoutAttributes.accessibilityRole.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 136);
  *a1 = *(v1 + 128);
  *(a1 + 8) = v2;
}

uint64_t FormatSponsoredBannerLayoutAttributes.init(identifier:layoutIdentifier:nodeIdentifier:frame:resizing:zIndex:visibility:isUserInteractionEnabled:accessibilityRole:style:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, double a9, double a10, double a11, double a12, uint64_t *a13, char a14, uint64_t *a15, uint64_t a16)
{
  v17 = *a7;
  v18 = *a13;
  v19 = *a15;
  v20 = *(a15 + 8);
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  *(v16 + 32) = a3;
  *(v16 + 40) = a4;
  *(v16 + 48) = a5;
  *(v16 + 56) = a6;
  *(v16 + 64) = a9;
  *(v16 + 72) = a10;
  *(v16 + 80) = a11;
  *(v16 + 88) = a12;
  *(v16 + 96) = v17;
  *(v16 + 104) = a8;
  *(v16 + 112) = v18;
  *(v16 + 120) = a14;
  *(v16 + 128) = v19;
  *(v16 + 136) = v20;
  *(v16 + 144) = MEMORY[0x1E69E7CD0];
  *(v16 + 152) = a16;
  return v16;
}

uint64_t sub_1D6ADDEB8(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 0x696669746E656469;
    v6 = 0x6E65644965646F6ELL;
    v7 = 0x656D617266;
    if (a1 != 3)
    {
      v7 = 0x676E697A69736572;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (a1)
    {
      v5 = 0xD000000000000010;
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
    v1 = 0xD000000000000011;
    v2 = 0xD000000000000013;
    if (a1 != 9)
    {
      v2 = 0x656C797473;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000018;
    if (a1 == 6)
    {
      v3 = 0x696C696269736976;
    }

    if (a1 == 5)
    {
      v3 = 0x7865646E497ALL;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D6ADE02C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6ADF21C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6ADE054(uint64_t a1)
{
  v2 = sub_1D6ADE610();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6ADE090(uint64_t a1)
{
  v2 = sub_1D6ADE610();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatSponsoredBannerLayoutAttributes.deinit()
{

  sub_1D5EB15C4(*(v0 + 112));

  return v0;
}

uint64_t FormatSponsoredBannerLayoutAttributes.__deallocating_deinit()
{
  FormatSponsoredBannerLayoutAttributes.deinit();

  return swift_deallocClassInstance();
}

uint64_t FormatSponsoredBannerLayoutAttributes.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D6ADED20(0, &qword_1EC891700, sub_1D6ADE610, &type metadata for FormatSponsoredBannerLayoutAttributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6ADE610();
  sub_1D7264B5C();
  LOBYTE(v14[0]) = 0;
  sub_1D72643FC();
  if (!v2)
  {
    LOBYTE(v14[0]) = 1;
    sub_1D72643FC();
    LOBYTE(v14[0]) = 2;
    sub_1D72643FC();
    swift_beginAccess();
    v12 = *(v3 + 80);
    v14[0] = *(v3 + 64);
    v14[1] = v12;
    v15 = 3;
    type metadata accessor for CGRect(0);
    sub_1D6ADF598(&qword_1EC8801E8, 255, type metadata accessor for CGRect, MEMORY[0x1E695EF68]);
    sub_1D726443C();
    *&v14[0] = *(v3 + 96);
    v15 = 4;
    sub_1D5F8F3E0();

    sub_1D72643BC();

    LOBYTE(v14[0]) = 5;
    sub_1D726442C();
    *&v14[0] = *(v3 + 112);
    v15 = 6;
    sub_1D5EB1500(*&v14[0]);
    sub_1D5DF6A60();
    sub_1D726443C();
    sub_1D5EB15C4(*&v14[0]);
    LOBYTE(v14[0]) = 7;
    sub_1D726440C();
    v13 = *(v3 + 136);
    *&v14[0] = *(v3 + 128);
    BYTE8(v14[0]) = v13;
    v15 = 8;
    sub_1D5F8F434();
    sub_1D72643BC();
    *&v14[0] = *(v3 + 144);
    v15 = 9;
    sub_1D6ADED20(0, &qword_1EC881AE8, sub_1D5E2A540, &type metadata for FormatAuxiliaryViewRequirement, MEMORY[0x1E69E64E8]);
    sub_1D6ADED88(&qword_1EC881AF0, sub_1D5F8F488, MEMORY[0x1E69E64F0]);
    sub_1D726443C();
    *&v14[0] = *(v3 + 152);
    v15 = 10;
    type metadata accessor for FormatSponsoredBannerNodeStyle();
    sub_1D6ADF598(&unk_1EDF09B38, 255, type metadata accessor for FormatSponsoredBannerNodeStyle, &protocol conformance descriptor for FormatSponsoredBannerNodeStyle);
    sub_1D72643BC();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1D6ADE610()
{
  result = qword_1EC891708;
  if (!qword_1EC891708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891708);
  }

  return result;
}

uint64_t FormatSponsoredBannerLayoutAttributes.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  FormatSponsoredBannerLayoutAttributes.init(from:)(a1);
  return v2;
}

void *FormatSponsoredBannerLayoutAttributes.init(from:)(void *a1)
{
  sub_1D6ADED20(0, &qword_1EC891710, sub_1D6ADE610, &type metadata for FormatSponsoredBannerLayoutAttributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v16 = *(v4 - 8);
  v17 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v15 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6ADE610();
  v18 = v7;
  sub_1D7264B0C();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v8 = v16;
    LOBYTE(v19) = 0;
    *(v1 + 16) = sub_1D72642BC();
    *(v1 + 24) = v9;
    LOBYTE(v19) = 1;
    *(v1 + 32) = sub_1D72642BC();
    *(v1 + 40) = v11;
    LOBYTE(v19) = 2;
    *(v1 + 48) = sub_1D72642BC();
    *(v1 + 56) = v12;
    type metadata accessor for CGRect(0);
    v21 = 3;
    sub_1D6ADF598(&qword_1EDF1A740, 255, type metadata accessor for CGRect, MEMORY[0x1E695EF80]);
    sub_1D726431C();
    v13 = v20;
    *(v1 + 64) = v19;
    *(v1 + 80) = v13;
    v21 = 4;
    sub_1D5F8FC50();
    sub_1D726427C();
    *(v1 + 96) = v19;
    LOBYTE(v19) = 5;
    *(v1 + 104) = sub_1D72642FC();
    v21 = 6;
    sub_1D5DF6A0C();
    sub_1D726431C();
    *(v1 + 112) = v19;
    LOBYTE(v19) = 7;
    *(v1 + 120) = sub_1D72642CC() & 1;
    v21 = 8;
    sub_1D5C6F27C();
    sub_1D726427C();
    v14 = BYTE8(v19);
    *(v1 + 128) = v19;
    *(v1 + 136) = v14;
    sub_1D6ADED20(0, &qword_1EC881AE8, sub_1D5E2A540, &type metadata for FormatAuxiliaryViewRequirement, MEMORY[0x1E69E64E8]);
    v21 = 9;
    sub_1D6ADED88(&qword_1EC881B10, sub_1D5F8FD48, MEMORY[0x1E69E6510]);
    sub_1D726431C();
    *(v1 + 144) = v19;
    type metadata accessor for FormatSponsoredBannerNodeStyle();
    v21 = 10;
    sub_1D6ADF598(&qword_1EDF206C0, 255, type metadata accessor for FormatSponsoredBannerNodeStyle, &protocol conformance descriptor for FormatSponsoredBannerNodeStyle);
    sub_1D726427C();
    (*(v8 + 8))(v18, v17);
    *(v1 + 152) = v19;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

void sub_1D6ADED20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1D6ADED88(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D6ADED20(255, &qword_1EC881AE8, sub_1D5E2A540, &type metadata for FormatAuxiliaryViewRequirement, MEMORY[0x1E69E64E8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1D6ADEF70@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = FormatSponsoredBannerLayoutAttributes.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1D6ADEFEC(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  sub_1D6ADF598(&qword_1EC891750, a2, type metadata accessor for FormatSponsoredBannerLayoutAttributes, &protocol conformance descriptor for FormatSponsoredBannerLayoutAttributes);

  return sub_1D725A24C();
}

unint64_t sub_1D6ADF118()
{
  result = qword_1EC891738;
  if (!qword_1EC891738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891738);
  }

  return result;
}

unint64_t sub_1D6ADF170()
{
  result = qword_1EC891740;
  if (!qword_1EC891740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891740);
  }

  return result;
}

unint64_t sub_1D6ADF1C8()
{
  result = qword_1EC891748;
  if (!qword_1EC891748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891748);
  }

  return result;
}

uint64_t sub_1D6ADF21C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D73C05F0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E65644965646F6ELL && a2 == 0xEE00726569666974 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D617266 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x676E697A69736572 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7865646E497ALL && a2 == 0xE600000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x696C696269736976 && a2 == 0xEA00000000007974 || (sub_1D72646CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D73C48A0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D73C0340 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D73C48E0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000)
  {

    return 10;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_1D6ADF598(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1D6ADF5F0(void *a1)
{
  v3 = v1;
  sub_1D6AE3A08(0, &qword_1EC891808, sub_1D6AE39B4, &type metadata for A12_V13.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6AE39B4();
  sub_1D7264B5C();
  v11 = *(v3 + 16);
  v13[0] = *v3;
  v13[1] = v11;
  v14 = 0;
  type metadata accessor for CGRect(0);
  sub_1D6AE3A70(&qword_1EC8801E8, type metadata accessor for CGRect, MEMORY[0x1E695EF68]);
  sub_1D726443C();
  if (!v2)
  {
    *&v13[0] = *(v3 + 32);
    v14 = 1;
    sub_1D5B49714(0, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
    sub_1D5BD47D0(&qword_1EC8806A0, sub_1D5C0B904, MEMORY[0x1E69E6300]);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D6ADF838(uint64_t a1)
{
  v2 = sub_1D6AE39B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6ADF874(uint64_t a1)
{
  v2 = sub_1D6AE39B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D6ADF8B0@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1D6AE3714(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_1D6ADF910(uint64_t a1, double a2, double a3, double a4, double a5)
{
  sub_1D6AE33A8();

  return sub_1D725A24C();
}

uint64_t sub_1D6ADF98C@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5BEDFF4(0);
  swift_allocObject();
  v2 = sub_1D725996C();
  sub_1D6AE3A08(0, &qword_1EDF3BFE8, sub_1D5BE14C0, &type metadata for HeadlineViewLayout.Attributes, MEMORY[0x1E69D7198]);
  swift_allocObject();
  result = sub_1D7259F9C();
  *a1 = v2;
  a1[1] = result;
  return result;
}

void sub_1D6ADFA48(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v89 = a2;
  v87 = a3;
  v6 = type metadata accessor for FeedHeadline(0);
  v90 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v74 - v12;
  v14 = sub_1D725895C();
  v81 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for GroupLayoutContext(0);
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86, v18);
  v88 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v74 - v22;
  v91 = type metadata accessor for GroupLayoutBindingContext(0);
  v83 = *(v91 - 1);
  MEMORY[0x1EEE9AC00](v91, v24);
  v26 = &v74 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = *v3;
  v82 = *(v3 + 1);
  v27 = v3[16];
  *&v98 = 4;
  if (GroupLayoutBindingContext.count(for:)(&v98))
  {
    sub_1D5C17350();
    swift_allocError();
    *v28 = 0u;
    *(v28 + 16) = 0u;
    *(v28 + 32) = 0;
    *(v28 + 40) = 13;
    swift_willThrow();
  }

  else
  {
    v102 = v13;
    v92 = v9;
    v79 = a1;
    sub_1D5BE3ED8(a1, v26, type metadata accessor for GroupLayoutBindingContext);
    v78 = type metadata accessor for GroupLayoutContext;
    v77 = v23;
    sub_1D5BE3ED8(v89, v23, type metadata accessor for GroupLayoutContext);
    sub_1D725894C();
    v76 = sub_1D725893C();
    v75 = v29;
    (*(v81 + 8))(v17, v14);
    v100 = &type metadata for A12_V13;
    v81 = sub_1D5ECEBBC();
    v101 = v81;
    v30 = v84;
    LOBYTE(v98) = v84;
    v31 = v82;
    *(&v98 + 1) = v82;
    v99 = v27;
    type metadata accessor for GroupLayoutKey(0);
    v32 = swift_allocObject();
    sub_1D5BEE8A0(v31, v27);
    v93[0] = sub_1D7264C5C();
    v93[1] = v33;
    v96 = 95;
    v97 = 0xE100000000000000;
    v94 = 45;
    v95 = 0xE100000000000000;
    sub_1D5BF4D9C();
    v34 = sub_1D7263A6C();
    v36 = v35;

    *(v32 + 16) = v34;
    *(v32 + 24) = v36;
    v37 = (v32 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier);
    v38 = v75;
    *v37 = v76;
    v37[1] = v38;
    sub_1D5B68374(&v98, v32 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory);
    v39 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings;
    sub_1D5BDA904(v26, v32 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, type metadata accessor for GroupLayoutBindingContext);
    (*(v83 + 56))(v32 + v39, 0, 1, v91);
    v40 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext;
    sub_1D5BDA904(v77, v32 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, type metadata accessor for GroupLayoutContext);
    v41 = *(v85 + 56);
    v85 = v32;
    v41(v32 + v40, 0, 1, v86);
    __swift_destroy_boxed_opaque_existential_1(&v98);
    v100 = &type metadata for A12_V13;
    v101 = v81;
    LOBYTE(v98) = v30;
    *(&v98 + 1) = v31;
    v99 = v27;
    v42 = v88;
    sub_1D5BE3ED8(v89, v88, v78);
    sub_1D5BD3920(0, qword_1EDF39B38, type metadata accessor for FeedHeadline, type metadata accessor for FeedItemSorter);
    inited = swift_initStackObject();
    v44 = MEMORY[0x1E69E7CC0];
    v89 = inited;
    *(inited + 16) = MEMORY[0x1E69E7CC0];
    v45 = (inited + 16);
    swift_beginAccess();
    sub_1D5BEE8A0(v31, v27);
    v46 = sub_1D5C0F8FC(0, 1, 1, v44);
    v48 = v46[2];
    v47 = v46[3];
    v49 = v48 + 1;
    if (v48 >= v47 >> 1)
    {
      goto LABEL_34;
    }

    while (1)
    {
      v50 = v87;
      v51 = v102;
      v46[2] = v49;
      v52 = &v46[2 * v48];
      v52[4] = sub_1D63106DC;
      v52[5] = 0;
      *v45 = v46;
      swift_endAccess();
      if (!*(*&v79[v91[14]] + 16))
      {
        break;
      }

      sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, 0, 0);
      if ((v53 & 1) == 0)
      {
        break;
      }

      v49 = sub_1D5C14D80(v54);

      if (!v49)
      {
        break;
      }

      v42 = *(v49 + 16);
      if (v42)
      {
        v55 = 0;
        v48 = MEMORY[0x1E69E7CC0];
        v45 = v90;
        v46 = v92;
        while (1)
        {
          v47 = *(v49 + 16);
          if (v55 >= v47)
          {
            break;
          }

          v56 = (v45[80] + 32) & ~v45[80];
          v57 = *(v45 + 9);
          sub_1D5BE3ED8(v49 + v56 + v57 * v55, v51, type metadata accessor for FeedHeadline);
          sub_1D5BDA904(v51, v46, type metadata accessor for FeedHeadline);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v93[0] = v48;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D5C0F91C(0, *(v48 + 16) + 1, 1);
            v45 = v90;
            v48 = v93[0];
          }

          v60 = *(v48 + 16);
          v59 = *(v48 + 24);
          if (v60 >= v59 >> 1)
          {
            sub_1D5C0F91C((v59 > 1), v60 + 1, 1);
            v45 = v90;
            v48 = v93[0];
          }

          ++v55;
          *(v48 + 16) = v60 + 1;
          v46 = v92;
          sub_1D5BDA904(v92, v48 + v56 + v60 * v57, type metadata accessor for FeedHeadline);
          v51 = v102;
          if (v42 == v55)
          {
            goto LABEL_22;
          }
        }
      }

      else
      {
        v48 = MEMORY[0x1E69E7CC0];
LABEL_22:
        if ((*v79 & 1) == 0)
        {

          sub_1D62F071C(v48);
          v66 = v65;

          v48 = v66;
        }

        v45 = v79;
        v67 = *&v79[v91[18]];
        v68 = *&v79[v91[19]];
        if (__OFSUB__(v67, v68))
        {
          goto LABEL_36;
        }

        v69 = sub_1D5C0FAD4(v48, v67 - v68);
        v46 = sub_1D5C11E10(&unk_1F5113C48, v69, v49);

        if (v46)
        {

LABEL_28:
          strcpy(v93, "FeedHeadline");
          BYTE5(v93[1]) = 0;
          HIWORD(v93[1]) = -5120;
          v93[2] = 0;
          v93[3] = 0;

          v71 = sub_1D5C107C4(v70);

          sub_1D5BDACA8(v93, v71);
          swift_setDeallocating();

          v42 = v88;
          v50 = v87;
          goto LABEL_29;
        }

        v46 = sub_1D5C11E10(&unk_1F5113C48, v48, v49);

        if (v46)
        {
          goto LABEL_28;
        }

        v93[0] = &unk_1F5113C48;
        v4 = v80;
        sub_1D5E239F4(v93);
        if (v4)
        {
          goto LABEL_37;
        }

        v62 = v93[0];
        v47 = *(v93[0] + 2);
        v42 = v88;
        if (v47)
        {
          goto LABEL_19;
        }

        __break(1u);
      }

      __break(1u);
LABEL_34:
      v46 = sub_1D5C0F8FC((v47 > 1), v49, 1, v46);
    }

    v61 = v80;
    if (!qword_1F5113C68)
    {

      v46 = MEMORY[0x1E69E7CC0];
LABEL_29:
      v72 = type metadata accessor for A12_V13.Bound(0);
      v50[3] = v72;
      v50[4] = sub_1D6AE3A70(&qword_1EC891768, type metadata accessor for A12_V13.Bound, &unk_1D731EEA8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v50);
      *boxed_opaque_existential_1 = v85;
      sub_1D5B63F14(&v98, (boxed_opaque_existential_1 + 1));
      sub_1D5BDA904(v42, boxed_opaque_existential_1 + *(v72 + 24), type metadata accessor for GroupLayoutContext);
      *(boxed_opaque_existential_1 + *(v72 + 28)) = v46;
      return;
    }

    v93[0] = &unk_1F5113C48;
    v4 = v80;
    sub_1D5E239F4(v93);
    if (!v61)
    {

      v62 = v93[0];
      if (*(v93[0] + 2))
      {
LABEL_19:
        v63 = *(v62 + 4);

        sub_1D5ED8048();
        swift_allocError();
        strcpy(v64, "FeedHeadline");
        v64[13] = 0;
        *(v64 + 7) = -5120;
        *(v64 + 2) = 0;
        *(v64 + 3) = 0;
        *(v64 + 4) = 0;
        *(v64 + 5) = v63;
        *(v64 + 6) = 0;
        *(v64 + 7) = 0;
        v64[64] = 0;
        swift_willThrow();
        swift_setDeallocating();

        sub_1D5BE798C(v42, type metadata accessor for GroupLayoutContext);
        __swift_destroy_boxed_opaque_existential_1(&v98);
        return;
      }

      __break(1u);
LABEL_36:
      __break(1u);
    }

LABEL_37:

    __break(1u);
  }
}

void sub_1D6AE05E8(_BYTE *a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v35 = sub_1D725A36C();
  v3 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5ED811C(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  v8 = type metadata accessor for A12_V13.Bound(0);
  v9 = v1 + *(v8 + 24);
  v10 = type metadata accessor for GroupLayoutContext(0);
  v11 = *(v9 + *(v10 + 40));
  v12 = *(v11 + 16);
  v13 = *(v9 + *(v10 + 32));
  sub_1D5B68374(v12 + 16, v43);
  sub_1D5B68374(v12 + 56, v42);
  v14 = v13 * *(v12 + 96);
  type metadata accessor for FeedLayoutStylerFactory();
  v15 = swift_initStackObject();
  sub_1D5B63F14(v43, v15 + 16);
  sub_1D5B63F14(v42, v15 + 56);
  *(v15 + 96) = v14;
  LOBYTE(v41[0]) = 0;
  FeedLayoutStylerFactory.styler(withHeading:)(v41, (inited + 32));
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((v15 + 16));
  __swift_destroy_boxed_opaque_existential_1((v15 + 56));
  v16 = *(v11 + 16);
  sub_1D5B68374(v16 + 16, v42);
  sub_1D5B68374(v16 + 56, v41);
  v17 = v13 * *(v16 + 96);
  v18 = swift_initStackObject();
  sub_1D5B63F14(v42, v18 + 16);
  sub_1D5B63F14(v41, v18 + 56);
  *(v18 + 96) = v17;
  v40[0] = 2;
  FeedLayoutStylerFactory.styler(withHeading:)(v40, v43);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((v18 + 16));
  __swift_destroy_boxed_opaque_existential_1((v18 + 56));
  v19 = sub_1D6F50B74(v43, *(*(v2 + *(v8 + 28)) + 16) - 1);
  *&v43[0] = inited;
  sub_1D698609C(v19);
  v20 = *&v43[0];
  v39[2] = v2;

  v22 = sub_1D6310828(v21, v20, sub_1D6AE3344, v39);

  v23 = *MEMORY[0x1E69D7130];
  v24 = sub_1D7259D1C();
  (*(*(v24 - 8) + 104))(v6, v23, v24);
  (*(v3 + 104))(v6, *MEMORY[0x1E69D7370], v35);
  v37 = v22;
  v38 = v2;
  sub_1D6AE3450(0, &qword_1EC891788, MEMORY[0x1E69D73B8]);
  swift_allocObject();
  v35 = sub_1D725A4CC();
  sub_1D725A4DC();
  v25 = v44;
  sub_1D5BD3920(0, &qword_1EDF1B250, type metadata accessor for HeadlineViewLayout.Context, MEMORY[0x1E69E62F8]);
  sub_1D5B49714(0, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
  sub_1D5BD48FC();
  v26 = sub_1D5ED1E1C(&qword_1EDF1B260, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
  v33 = v43[1];
  v34 = v43[0];
  *&v43[0] = v22;
  *&v42[0] = v25;
  MEMORY[0x1EEE9AC00](v26, v27);

  v28 = sub_1D725C00C();

  v29 = v36;
  *v36 = 0;
  v30 = v34;
  *(v29 + 24) = v33;
  *(v29 + 8) = v30;
  *&v43[0] = v28;
  sub_1D5B49714(0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes);
  sub_1D5ED1E1C(&qword_1EDF1B4C0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes);
  sub_1D5BDEFF8();
  v31 = sub_1D72623BC();

  v32 = MEMORY[0x1E69E7CC0];
  *(v29 + 5) = v31;
  *(v29 + 6) = v32;
}

uint64_t sub_1D6AE0B30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BE3ED8(a1, v9, type metadata accessor for FeedHeadline);
  sub_1D5B68374(a2, v13);

  return HeadlineViewLayout.Context.init(key:model:styler:)(v10, v9, v13, a3);
}

uint64_t sub_1D6AE0C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D6AE3A08(0, &qword_1EC8917A0, sub_1D6AE3354, &type metadata for A12_V13.Layout, MEMORY[0x1E69D74B0]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v15[-v10];
  v18 = a1;
  v12 = swift_allocObject();
  *(v12 + 16) = 12;
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x1E69D7490], v7);
  v16 = a2;
  v17 = a3;
  v13 = MEMORY[0x1E69D7150];
  sub_1D6AE3450(0, &qword_1EC8917A8, MEMORY[0x1E69D7150]);
  sub_1D6AE340C(&qword_1EC8917B0, &qword_1EC8917A8, v13, MEMORY[0x1E69D7158]);
  sub_1D7259A2C();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1D6AE0DF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a2;
  v18 = a3;
  sub_1D6AE3A08(0, &qword_1EC8917A0, sub_1D6AE3354, &type metadata for A12_V13.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v17 - v8);
  v21 = a1;
  v10 = sub_1D725994C();
  v11 = swift_allocBox();
  (*(*(v10 - 8) + 104))(v12, *MEMORY[0x1E69D6F50], v10);
  *v9 = v11;
  v13 = *(v6 + 104);
  v13(v9, *MEMORY[0x1E69D73C0], v5);
  v14 = MEMORY[0x1E69D6F38];
  sub_1D6AE3450(0, &qword_1EC8917B8, MEMORY[0x1E69D6F38]);
  sub_1D6AE340C(&qword_1EC8917C0, &qword_1EC8917B8, v14, MEMORY[0x1E69D6F40]);
  sub_1D7259A9C();
  v15 = *(v6 + 8);
  v15(v9, v5);
  v21 = a1;
  v13(v9, *MEMORY[0x1E69D7460], v5);
  v19 = v17;
  v20 = v18;
  sub_1D72599EC();
  return (v15)(v9, v5);
}

uint64_t sub_1D6AE1078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a1;
  v31 = a3;
  v27 = a2;
  sub_1D6AE3A08(0, &qword_1EC8917A0, sub_1D6AE3354, &type metadata for A12_V13.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v26 - v8);
  v35 = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = 6;
  *v9 = v10;
  v29 = *MEMORY[0x1E69D7490];
  v28 = *(v6 + 104);
  v28(v9);
  sub_1D6AE34DC(0);
  sub_1D6AE3A08(0, &qword_1EC8917D0, sub_1D6AE3354, &type metadata for A12_V13.Layout, MEMORY[0x1E69D70D8]);
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D7273AE0;
  v16 = v15 + v14;
  sub_1D5ED83AC(0);
  v18 = (v16 + *(v17 + 48));
  v19 = *MEMORY[0x1E69D7238];
  v20 = sub_1D725A0DC();
  (*(*(v20 - 8) + 104))(v16, v19, v20);
  *v18 = 0x6C6F437468676972;
  v18[1] = 0xEB000000006E6D75;
  (*(v13 + 104))(v16, *MEMORY[0x1E69D7020], v12);
  v21 = v27;
  v34 = v27;
  v22 = MEMORY[0x1E69D6F38];
  sub_1D6AE3450(0, &qword_1EC8917B8, MEMORY[0x1E69D6F38]);
  sub_1D6AE340C(&qword_1EC8917C0, &qword_1EC8917B8, v22, MEMORY[0x1E69D6F40]);
  sub_1D7259A2C();

  v23 = *(v6 + 8);
  v23(v9, v5);
  v35 = v30;
  v24 = swift_allocObject();
  *(v24 + 16) = 6;
  *v9 = v24;
  (v28)(v9, v29, v5);
  v32 = v21;
  v33 = v31;
  sub_1D7259A2C();
  return (v23)(v9, v5);
}

uint64_t sub_1D6AE1494(uint64_t a1, uint64_t a2)
{
  KeyPath = a1;
  v3 = sub_1D725A36C();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v43 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D725A19C();
  v44 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for HeadlineViewLayout.Context(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6AE3A08(0, &qword_1EC8917A0, sub_1D6AE3354, &type metadata for A12_V13.Layout, MEMORY[0x1E69D74B0]);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v39 - v23;
  v46 = KeyPath;
  KeyPath = swift_getKeyPath();
  (*(v21 + 104))(v24, *MEMORY[0x1E69D7460], v20);
  if (!*(a2 + 16))
  {
    __break(1u);
    goto LABEL_5;
  }

  v39 = v6;
  v40 = v20;
  sub_1D5BE3ED8(a2 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v18, type metadata accessor for HeadlineViewLayout.Context);
  v25 = v10[5];
  v26 = *MEMORY[0x1E69D7348];
  v27 = sub_1D725A34C();
  v28 = *(v27 - 8);
  (*(v28 + 104))(&v13[v25], v26, v27);
  (*(v28 + 56))(&v13[v25], 0, 1, v27);
  v29 = MEMORY[0x1E69DDC70];
  *v13 = 3;
  *&v13[v10[6]] = 0;
  v30 = *v29;
  *&v13[v10[7]] = v30;
  v31 = qword_1EDF386E8;
  v32 = v30;
  if (v31 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1D725972C();

  v35 = MEMORY[0x1EEE9AC00](v33, v34);
  *(&v39 - 4) = v18;
  *(&v39 - 3) = v13;
  v38 = v9;
  (*(v41 + 104))(v43, *MEMORY[0x1E69D7378], v42, v35);
  sub_1D5BED904(0);
  swift_allocObject();
  sub_1D725A4CC();
  (*(v44 + 8))(v9, v39);
  sub_1D5BE798C(v13, type metadata accessor for HeadlineViewLayout.Options);
  sub_1D5BE798C(v18, type metadata accessor for HeadlineViewLayout.Context);
  v36 = MEMORY[0x1E69D6F38];
  sub_1D6AE3450(0, &qword_1EC8917B8, MEMORY[0x1E69D6F38]);
  sub_1D6AE340C(&qword_1EC8917C0, &qword_1EC8917B8, v36, MEMORY[0x1E69D6F40]);
  v38 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v21 + 8))(v24, v40);
}

uint64_t sub_1D6AE1A68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v85 = a3;
  v81 = a2;
  v72 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v72, v5);
  v73 = &v63[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for HeadlineViewLayout.Context(0);
  v69 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v70 = &v63[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D6AE3A08(0, &qword_1EC8917A0, sub_1D6AE3354, &type metadata for A12_V13.Layout, MEMORY[0x1E69D74B0]);
  v11 = v10;
  v12 = *(v10 - 8);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v63[-v15];
  v88 = a1;
  v17 = *MEMORY[0x1E69D74A8];
  v75 = *(v12 + 104);
  v86 = v12 + 104;
  (v75)(&v63[-v15], v17, v11, v14);
  sub_1D6AE34DC(0);
  v79 = v18;
  sub_1D6AE3A08(0, &qword_1EC8917D0, sub_1D6AE3354, &type metadata for A12_V13.Layout, MEMORY[0x1E69D70D8]);
  v20 = v19;
  v83 = v19;
  v21 = *(v19 - 8);
  v80 = *(v21 + 72);
  v78 = *(v21 + 80);
  v22 = v21;
  v23 = (v78 + 32) & ~v78;
  v76 = v23;
  v24 = swift_allocObject();
  v77 = xmmword_1D7273AE0;
  *(v24 + 16) = xmmword_1D7273AE0;
  v25 = *MEMORY[0x1E69D7098];
  v26 = *(v22 + 104);
  v82 = v22 + 104;
  v84 = v26;
  v26(v24 + v23, v25, v20);
  v87 = a2;
  v27 = MEMORY[0x1E69D6F38];
  sub_1D6AE3450(0, &qword_1EC8917B8, MEMORY[0x1E69D6F38]);
  v29 = v28;
  v62 = sub_1D6AE340C(&qword_1EC8917C0, &qword_1EC8917B8, v27, MEMORY[0x1E69D6F40]);
  sub_1D72599EC();

  v30 = *(v12 + 8);
  v30(v16, v11);
  v88 = a1;
  v31 = sub_1D725994C();
  v32 = swift_allocBox();
  (*(*(v31 - 8) + 104))(v33, *MEMORY[0x1E69D6F50], v31);
  *v16 = v32;
  v34 = v75;
  v75(v16, *MEMORY[0x1E69D73C0], v11);
  v68 = v29;
  v67 = v62;
  sub_1D7259A9C();
  v74 = v12 + 8;
  v66 = v30;
  v30(v16, v11);
  v88 = a1;
  KeyPath = swift_getKeyPath();
  sub_1D60DF7C0(0);
  v36 = v35;
  v37 = swift_allocBox();
  v39 = v38;
  v40 = *(v36 + 48);
  *v38 = 2;
  v41 = *MEMORY[0x1E69D7348];
  v42 = sub_1D725A34C();
  v43 = *(v42 - 8);
  v44 = *(v43 + 104);
  v64 = v41;
  v45 = v41;
  v46 = v44;
  v44(v39 + v40, v45, v42);
  *v16 = v37;
  v47 = *MEMORY[0x1E69D73E0];
  v71 = v11;
  v34(v16, v47, v11);
  v48 = v76;
  v49 = swift_allocObject();
  *(v49 + 16) = v77;
  v50 = v85 + *(type metadata accessor for A12_V13.Bound(0) + 24);
  *(v49 + v48) = *(v50 + *(type metadata accessor for GroupLayoutContext(0) + 32)) * 135.0;
  result = v84(v49 + v48, *MEMORY[0x1E69D70D0], v83);
  if (*(v81 + 16) < 4uLL)
  {
    __break(1u);
  }

  else
  {
    v52 = v70;
    sub_1D5BE3ED8(v81 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + 3 * *(v69 + 72), v70, type metadata accessor for HeadlineViewLayout.Context);
    v53 = v72;
    v54 = *(v72 + 20);
    v55 = v73;
    v46(&v73[v54], v64, v42);
    (*(v43 + 56))(&v55[v54], 0, 1, v42);
    v56 = *MEMORY[0x1E69DDC70];
    *v55 = 2;
    *&v55[*(v53 + 24)] = 0;
    *&v55[*(v53 + 28)] = v56;
    v57 = *MEMORY[0x1E69DDCE0];
    v58 = *(MEMORY[0x1E69DDCE0] + 8);
    v59 = *(MEMORY[0x1E69DDCE0] + 16);
    v60 = *(MEMORY[0x1E69DDCE0] + 24);
    v61 = v56;
    _s8NewsFeed18HeadlineViewLayoutV16imageOnRightSide7context7options6insets11TeaTemplate0E0CyA2C10AttributesVGAC7ContextV_AC7OptionsVSo12UIEdgeInsetsVtFZ_0(v52, v55, v57, v58, v59, v60);
    sub_1D5BE798C(v55, type metadata accessor for HeadlineViewLayout.Options);
    sub_1D5BE798C(v52, type metadata accessor for HeadlineViewLayout.Context);
    sub_1D5BE8850();
    sub_1D7259A4C();

    return v66(v16, v71);
  }

  return result;
}

uint64_t sub_1D6AE2238(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v18 = a1;
  sub_1D6AE3A08(0, &qword_1EC8917A0, sub_1D6AE3354, &type metadata for A12_V13.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v17 - v8);
  v21 = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = 3;
  *v9 = v10;
  v11 = *MEMORY[0x1E69D7490];
  v12 = *(v6 + 104);
  v12(v9, v11, v5);
  v20 = a2;
  v13 = MEMORY[0x1E69D6F38];
  sub_1D6AE3450(0, &qword_1EC8917B8, MEMORY[0x1E69D6F38]);
  sub_1D6AE340C(&qword_1EC8917C0, &qword_1EC8917B8, v13, MEMORY[0x1E69D6F40]);
  sub_1D7259A2C();
  v14 = *(v6 + 8);
  v14(v9, v5);
  v21 = v18;
  v15 = swift_allocObject();
  *(v15 + 16) = 3;
  *v9 = v15;
  v12(v9, v11, v5);
  v19 = v17;
  sub_1D7259A2C();
  return (v14)(v9, v5);
}

uint64_t sub_1D6AE24DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725A36C();
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v45 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D725A19C();
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for HeadlineViewLayout.Context(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6AE3A08(0, &qword_1EC8917A0, sub_1D6AE3354, &type metadata for A12_V13.Layout, MEMORY[0x1E69D74B0]);
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v41 - v24;
  v48 = a1;
  KeyPath = swift_getKeyPath();
  (*(v22 + 104))(v25, *MEMORY[0x1E69D7460], v21);
  if (*(a2 + 16) < 2uLL)
  {
    __break(1u);
    goto LABEL_5;
  }

  v41 = KeyPath;
  v42 = v21;
  sub_1D5BE3ED8(a2 + *(v16 + 72) + ((*(v16 + 80) + 32) & ~*(v16 + 80)), v19, type metadata accessor for HeadlineViewLayout.Context);
  v27 = v11[5];
  v28 = *MEMORY[0x1E69D7348];
  v29 = sub_1D725A34C();
  v30 = *(v29 - 8);
  (*(v30 + 104))(&v14[v27], v28, v29);
  (*(v30 + 56))(&v14[v27], 0, 1, v29);
  v31 = MEMORY[0x1E69DDC70];
  *v14 = 2;
  *&v14[v11[6]] = 5;
  v32 = *v31;
  *&v14[v11[7]] = v32;
  v33 = qword_1EDF386E8;
  v34 = v32;
  if (v33 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1D725972C();

  v37 = MEMORY[0x1EEE9AC00](v35, v36);
  *(&v41 - 4) = v19;
  *(&v41 - 3) = v14;
  v40 = v10;
  (*(v43 + 104))(v45, *MEMORY[0x1E69D7378], v44, v37);
  sub_1D5BED904(0);
  swift_allocObject();
  sub_1D725A4CC();
  (*(v46 + 8))(v10, v47);
  sub_1D5BE798C(v14, type metadata accessor for HeadlineViewLayout.Options);
  sub_1D5BE798C(v19, type metadata accessor for HeadlineViewLayout.Context);
  v38 = MEMORY[0x1E69D6F38];
  sub_1D6AE3450(0, &qword_1EC8917B8, MEMORY[0x1E69D6F38]);
  sub_1D6AE340C(&qword_1EC8917C0, &qword_1EC8917B8, v38, MEMORY[0x1E69D6F40]);
  v40 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v22 + 8))(v25, v42);
}

uint64_t sub_1D6AE2AB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725A36C();
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v45 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D725A19C();
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for HeadlineViewLayout.Context(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6AE3A08(0, &qword_1EC8917A0, sub_1D6AE3354, &type metadata for A12_V13.Layout, MEMORY[0x1E69D74B0]);
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v41 - v24;
  v48 = a1;
  KeyPath = swift_getKeyPath();
  (*(v22 + 104))(v25, *MEMORY[0x1E69D7460], v21);
  if (*(a2 + 16) < 3uLL)
  {
    __break(1u);
    goto LABEL_5;
  }

  v41 = KeyPath;
  v42 = v21;
  sub_1D5BE3ED8(a2 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + 2 * *(v16 + 72), v19, type metadata accessor for HeadlineViewLayout.Context);
  v27 = v11[5];
  v28 = *MEMORY[0x1E69D7348];
  v29 = sub_1D725A34C();
  v30 = *(v29 - 8);
  (*(v30 + 104))(&v14[v27], v28, v29);
  (*(v30 + 56))(&v14[v27], 0, 1, v29);
  v31 = MEMORY[0x1E69DDC70];
  *v14 = 2;
  *&v14[v11[6]] = 5;
  v32 = *v31;
  *&v14[v11[7]] = v32;
  v33 = qword_1EDF386E8;
  v34 = v32;
  if (v33 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1D725972C();

  v37 = MEMORY[0x1EEE9AC00](v35, v36);
  *(&v41 - 4) = v19;
  *(&v41 - 3) = v14;
  v40 = v10;
  (*(v43 + 104))(v45, *MEMORY[0x1E69D7378], v44, v37);
  sub_1D5BED904(0);
  swift_allocObject();
  sub_1D725A4CC();
  (*(v46 + 8))(v10, v47);
  sub_1D5BE798C(v14, type metadata accessor for HeadlineViewLayout.Options);
  sub_1D5BE798C(v19, type metadata accessor for HeadlineViewLayout.Context);
  v38 = MEMORY[0x1E69D6F38];
  sub_1D6AE3450(0, &qword_1EC8917B8, MEMORY[0x1E69D6F38]);
  sub_1D6AE340C(&qword_1EC8917C0, &qword_1EC8917B8, v38, MEMORY[0x1E69D6F40]);
  v40 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v22 + 8))(v25, v42);
}

uint64_t sub_1D6AE308C@<X0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  memcpy(v21, __src, sizeof(v21));
  sub_1D5BE5E28(0);
  v10 = v9;
  v11 = swift_allocBox();
  v13 = v12;
  v14 = *(v10 + 48);
  v15 = *(v10 + 64);
  sub_1D5BE3ED8(a3, v12, type metadata accessor for HeadlineViewLayout.Context);
  memcpy((v13 + v14), v21, 0x130uLL);
  v16 = a4 + *(type metadata accessor for A12_V13.Bound(0) + 24);
  result = type metadata accessor for GroupLayoutContext(0);
  v18 = *(v16 + *(result + 28));
  v19 = __OFADD__(v18, a2);
  v20 = v18 + a2;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v13 + v15) = v20;
    *a5 = v11 | 0x4000000000000000;
  }

  return result;
}

unint64_t sub_1D6AE31A0(uint64_t a1)
{
  *(a1 + 8) = sub_1D6AE31D0();
  result = sub_1D6AE3224();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6AE31D0()
{
  result = qword_1EC891758;
  if (!qword_1EC891758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891758);
  }

  return result;
}

unint64_t sub_1D6AE3224()
{
  result = qword_1EC891760;
  if (!qword_1EC891760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891760);
  }

  return result;
}

uint64_t type metadata accessor for A12_V13.Bound(uint64_t a1)
{
  result = qword_1EC891770;
  if (!qword_1EC891770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6AE32EC(uint64_t a1)
{
  result = sub_1D6AE3A70(&qword_1EC891780, type metadata accessor for A12_V13.Bound, &unk_1D731EE80);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6AE3354()
{
  result = qword_1EC891790;
  if (!qword_1EC891790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891790);
  }

  return result;
}

unint64_t sub_1D6AE33A8()
{
  result = qword_1EC891798;
  if (!qword_1EC891798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891798);
  }

  return result;
}

uint64_t sub_1D6AE340C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D6AE3450(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D6AE3450(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for A12_V13.Layout;
    v8[1] = &type metadata for A12_V13.Layout.Attributes;
    v8[2] = sub_1D6AE3354();
    v8[3] = sub_1D6AE33A8();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D6AE34DC(uint64_t a1)
{
  if (!qword_1EC8917C8)
  {
    sub_1D6AE3A08(255, &qword_1EC8917D0, sub_1D6AE3354, &type metadata for A12_V13.Layout, MEMORY[0x1E69D70D8]);
    v1 = sub_1D72644CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC8917C8);
    }
  }
}

unint64_t sub_1D6AE35B8()
{
  result = qword_1EC8917D8;
  if (!qword_1EC8917D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8917D8);
  }

  return result;
}

unint64_t sub_1D6AE3610()
{
  result = qword_1EC8917E0;
  if (!qword_1EC8917E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8917E0);
  }

  return result;
}

unint64_t sub_1D6AE3668()
{
  result = qword_1EC8917E8;
  if (!qword_1EC8917E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8917E8);
  }

  return result;
}

unint64_t sub_1D6AE36C0()
{
  result = qword_1EC8917F0;
  if (!qword_1EC8917F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8917F0);
  }

  return result;
}

uint64_t sub_1D6AE3714@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1D6AE3A08(0, &qword_1EC8917F8, sub_1D6AE39B4, &type metadata for A12_V13.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6AE39B4();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v11 = v17;
  type metadata accessor for CGRect(0);
  v20 = 0;
  sub_1D6AE3A70(&qword_1EDF1A740, type metadata accessor for CGRect, MEMORY[0x1E695EF80]);
  sub_1D726431C();
  v15 = v19;
  v16 = v18;
  sub_1D5B49714(0, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
  v20 = 1;
  sub_1D5BD47D0(&qword_1EDF1B258, sub_1D5BEE208, MEMORY[0x1E69E6330]);
  sub_1D726431C();
  (*(v10 + 8))(v9, v5);
  v12 = v18;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v14 = v15;
  *v11 = v16;
  *(v11 + 16) = v14;
  *(v11 + 32) = v12;
  return result;
}

unint64_t sub_1D6AE39B4()
{
  result = qword_1EC891800;
  if (!qword_1EC891800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891800);
  }

  return result;
}

void sub_1D6AE3A08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1D6AE3A70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D6AE3ACC()
{
  result = qword_1EC891810;
  if (!qword_1EC891810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891810);
  }

  return result;
}

unint64_t sub_1D6AE3B24()
{
  result = qword_1EC891818;
  if (!qword_1EC891818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891818);
  }

  return result;
}

unint64_t sub_1D6AE3B7C()
{
  result = qword_1EC891820;
  if (!qword_1EC891820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891820);
  }

  return result;
}

uint64_t sub_1D6AE3C1C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v84 = a2;
  v4 = sub_1D726147C();
  v82 = *(v4 - 8);
  v83 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v71 = (&v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v91 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v68 = v9;
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  v11 = *(a1 + 24);
  v13 = sub_1D5DEFC10();
  v96 = v12;
  v97 = &type metadata for DebugFormatInspectorView;
  v98 = v11;
  v99 = v13;
  v87 = v11;
  v14 = v13;
  v70 = v13;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v73 = OpaqueTypeMetadata2;
  v78 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2, v16);
  v89 = &v61 - v17;
  v96 = v12;
  v97 = &type metadata for DebugFormatInspectorView;
  v98 = v11;
  v99 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v96 = OpaqueTypeMetadata2;
  v97 = OpaqueTypeConformance2;
  v77 = MEMORY[0x1E6981218];
  v75 = swift_getOpaqueTypeMetadata2();
  v81 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75, v75);
  v90 = &v61 - v18;
  v19 = sub_1D726101C();
  v79 = *(v19 - 8);
  v80 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v72 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v76 = &v61 - v24;
  v25 = *(a1 + 48);
  v69 = *(a1 + 44);
  v26 = v2;
  v62 = v2;
  v27 = (v2 + v25);
  v28 = *v27;
  v29 = *(v27 + 1);
  v94 = v28;
  v95 = v29;
  sub_1D5C4259C(0, &qword_1EC884DD8, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1D726191C();
  v30 = v97;
  v64 = v96;
  v66 = v98;
  v31 = v91;
  v32 = *(v91 + 16);
  v86 = v91 + 16;
  v88 = v32;
  v63 = v10;
  v65 = a1;
  v32(v10, v26, a1);
  v33 = v31;
  v85 = *(v31 + 80);
  v34 = (v85 + 32) & ~v85;
  v35 = swift_allocObject();
  v36 = v12;
  v37 = v87;
  *(v35 + 16) = v12;
  *(v35 + 24) = v37;
  v67 = *(v33 + 32);
  v91 = v33 + 32;
  v67(v35 + v34, v10, a1);
  v38 = v71;
  v39 = v70;
  sub_1D5DEED70(v71);
  v40 = v62;
  v61 = v36;
  sub_1D5DEEDEC(v64, v30, v66, v38, 1, sub_1D6AE4C00, v35, v36, &type metadata for DebugFormatInspectorView, v37, v39);

  (*(v82 + 8))(v38, v83);
  v41 = v63;
  v42 = v65;
  v88(v63, v40, v65);
  v43 = swift_allocObject();
  *(v43 + 16) = v36;
  *(v43 + 24) = v37;
  v44 = v42;
  v45 = v67;
  v67(v43 + v34, v41, v42);
  v46 = v89;
  v47 = v73;
  v48 = OpaqueTypeConformance2;
  sub_1D726177C();

  (*(v78 + 8))(v46, v47);
  v88(v41, v40, v44);
  v49 = swift_allocObject();
  v50 = v87;
  *(v49 + 16) = v61;
  *(v49 + 24) = v50;
  v45(v49 + v34, v41, v44);
  v96 = v47;
  v97 = v48;
  v51 = swift_getOpaqueTypeConformance2();
  v52 = v72;
  v53 = v75;
  v54 = v90;
  sub_1D726174C();

  (*(v81 + 8))(v54, v53);
  v92 = v51;
  v93 = MEMORY[0x1E69805D0];
  v55 = v80;
  swift_getWitnessTable();
  v56 = v79;
  v57 = *(v79 + 16);
  v58 = v76;
  v57(v76, v52, v55);
  v59 = *(v56 + 8);
  v59(v52, v55);
  v57(v84, v58, v55);
  return (v59)(v58, v55);
}

uint64_t sub_1D6AE4400@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
}

uint64_t sub_1D6AE4450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DebugFormatInspectorPopoverView(0, a2, a3, a4);
  sub_1D5C4259C(0, &qword_1EC884DD8, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  return sub_1D726190C();
}

id sub_1D6AE44E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for DebugFormatInspectorPaneViewController();
  sub_1D5C4259C(0, &qword_1EC88ECE0, &type metadata for FormatInspection, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 32) = a5;

  sub_1D6A6ED08(a2, inited, 0, 0);
  v9 = v8;
  v10 = [v9 navigationItem];
  v11 = sub_1D726203C();
  [v10 setTitle_];

  *&v9[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_preferredSize] = xmmword_1D731F170;
  v12 = [objc_allocWithZone(type metadata accessor for DebugFormatNavigationController()) initWithRootViewController_];

  return v12;
}

uint64_t sub_1D6AE4650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D6AE4740();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1D6AE46B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D6AE4740();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1D6AE4718(uint64_t a1)
{
  sub_1D6AE4740();
  sub_1D726154C();
  __break(1u);
}

unint64_t sub_1D6AE4740()
{
  result = qword_1EC891828[0];
  if (!qword_1EC891828[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC891828);
  }

  return result;
}

void sub_1D6AE4794(uint64_t a1)
{
  type metadata accessor for DebugFormatEditor(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_1D5C4259C(319, &qword_1EC884DD8, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D6AE4870(unint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 32) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
    }

    v17 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void *sub_1D6AE49C8(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 32) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 32) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v19 = *(v5 + 56);
        v20 = (((((result + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8;

        return v19(v20);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v18 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v18 = a2 - 1;
        }

        *result = v18;
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 32) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 32) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

uint64_t sub_1D6AE4C00@<X0>(uint64_t a1@<X3>, void *a2@<X8>)
{
  v4 = *(type metadata accessor for DebugFormatInspectorPopoverView(0, *(v2 + 16), *(v2 + 24), a1) - 8);
  v5 = (v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80)));

  return sub_1D6AE4400(v5, a2);
}

uint64_t sub_1D6AE4C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for DebugFormatInspectorPopoverView(0, v6, v7, a4) - 8);
  return sub_1D6AE4450(v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v6, v7, a1);
}

double FormatResizeAuto.mask.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;

  return result;
}

uint64_t sub_1D6AE4DF0()
{
  swift_beginAccess();
  result = 0;
  v2 = 0;
  v3 = *(v0 + 16);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  for (i = v5 & *(v3 + 56); i; result |= v9)
  {
    v7 = v2;
LABEL_9:
    v8 = __clz(__rbit64(i));
    i &= i - 1;
    v9 = qword_1D731F410[*(*(v3 + 48) + (v8 | (v7 << 6)))];
    if ((v9 & result) != 0)
    {
      v9 = 0;
    }
  }

  while (1)
  {
    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v7 >= ((v4 + 63) >> 6))
    {
      return result;
    }

    i = *(v3 + 56 + 8 * v7);
    ++v2;
    if (i)
    {
      v2 = v7;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t FormatResizeAuto.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D6AE4F20(uint64_t a1)
{
  result = sub_1D6AE5014(&qword_1EC8918B0, &protocol conformance descriptor for FormatResizeAuto);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6AE4F88(void *a1)
{
  a1[1] = sub_1D6AE5014(&qword_1EDF2FFE0, &protocol conformance descriptor for FormatResizeAuto);
  a1[2] = sub_1D6AE5014(&qword_1EDF11180, &protocol conformance descriptor for FormatResizeAuto);
  result = sub_1D6AE5014(&qword_1EC8918B8, &protocol conformance descriptor for FormatResizeAuto);
  a1[3] = result;
  return result;
}

uint64_t sub_1D6AE5014(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatResizeAuto();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D6AE5054@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D66B5498(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D6AE50A4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v2 + 16);
  swift_beginAccess();
  v5 = *(v3 + 16);

  v6 = sub_1D5E1F5F0(v4, v5);

  return v6 & 1;
}

double FormatTextNodeLink.content.getter@<D0>(void *a1@<X8>)
{
  *a1 = *v1;

  return result;
}

double FormatTextNodeLink.url.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 8);

  return result;
}

BOOL _s8NewsFeed18FormatTextNodeLinkV2eeoiySbAC_ACtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2[1];
  v7 = *a2;
  v8 = v2;

  LOBYTE(v2) = static FormatTextContent.== infix(_:_:)(&v8, &v7);

  if (v2)
  {
    v7 = v4;
    v8 = v3;

    v5 = static FormatURL.== infix(_:_:)(&v8, &v7);
  }

  else
  {
    return 0;
  }

  return v5;
}

unint64_t sub_1D6AE5268(uint64_t a1)
{
  result = sub_1D6AE5290();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6AE5290()
{
  result = qword_1EC8918C0;
  if (!qword_1EC8918C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8918C0);
  }

  return result;
}

unint64_t sub_1D6AE52E4(void *a1)
{
  a1[1] = sub_1D66C577C();
  a1[2] = sub_1D66F6594();
  result = sub_1D6AE531C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6AE531C()
{
  result = qword_1EC8918C8;
  if (!qword_1EC8918C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8918C8);
  }

  return result;
}

uint64_t sub_1D6AE5370(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 16))
  {
    return (*a1 + 125);
  }

  v3 = (((*(a1 + 8) >> 57) >> 5) | (4 * ((*(a1 + 8) >> 57) & 0x18 | *(a1 + 8) & 7))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D6AE53CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    *(result + 8) = 0;
    if (a3 >= 0x7D)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t type metadata accessor for FormatServiceError(uint64_t a1)
{
  result = qword_1EDF102A0;
  if (!qword_1EDF102A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6AE5478(uint64_t a1)
{
  sub_1D6AE562C(319, &qword_1EDF04488, type metadata accessor for FCFetchOperationStatus);
  if (v1 <= 0x3F)
  {
    sub_1D5EA0810(319);
    if (v2 <= 0x3F)
    {
      sub_1D6AE573C(319, &unk_1EDF05500, MEMORY[0x1E69E6158], "expected actual ");
      if (v3 <= 0x3F)
      {
        sub_1D6AE562C(319, &qword_1EDF18AC8, MEMORY[0x1E6968FB0]);
        if (v4 <= 0x3F)
        {
          sub_1D6AE5678();
          if (v5 <= 0x3F)
          {
            sub_1D6AE573C(319, &qword_1EDF047A0, MEMORY[0x1E69E6530], "minRequired count ");
            if (v6 <= 0x3F)
            {
              sub_1D6AE578C();
              if (v7 <= 0x3F)
              {
                sub_1D6AE57F0();
                if (v8 <= 0x3F)
                {
                  sub_1D6AE5820(319, &qword_1EDF194B0, sub_1D5BA6EF4, MEMORY[0x1E69E6720]);
                  if (v9 <= 0x3F)
                  {
                    sub_1D6AE5884(319);
                    if (v10 <= 0x3F)
                    {
                      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1D6AE562C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D6AE5678()
{
  if (!qword_1EDF04A40)
  {
    sub_1D6AE5820(0, &qword_1EDF04A38, sub_1D6AE56F0, MEMORY[0x1E69E62F8]);
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF04A40);
    }
  }
}

unint64_t sub_1D6AE56F0()
{
  result = qword_1EDF1AAF0;
  if (!qword_1EDF1AAF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDF1AAF0);
  }

  return result;
}

void sub_1D6AE573C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1D6AE578C()
{
  if (!qword_1EDF047A8)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EDF047A8);
    }
  }
}

uint64_t sub_1D6AE57F0()
{
  result = qword_1EDF1B6B0;
  if (!qword_1EDF1B6B0)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EDF1B6B0);
  }

  return result;
}

void sub_1D6AE5820(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D6AE5884(uint64_t a1)
{
  if (!qword_1EDF04838)
  {
    sub_1D6AE58EC(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF04838);
    }
  }
}

void sub_1D6AE58EC(uint64_t a1)
{
  if (!qword_1EDF1AD58)
  {
    sub_1D5B4B090();
    v1 = sub_1D7262BAC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF1AD58);
    }
  }
}

uint64_t FormatVideoPlayerData.feedItemIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FormatVideoPlayerData.namespaceIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatVideoPlayerData.itemIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FormatVideoPlayerData.videoURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FormatVideoPlayerData(0) + 36);
  v4 = sub_1D72585BC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for FormatVideoPlayerData(uint64_t a1)
{
  result = qword_1EDF290D8;
  if (!qword_1EDF290D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double FormatVideoPlayerData.posterImage.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for FormatVideoPlayerData(0) + 40));

  return result;
}

double FormatVideoPlayerData.overlayData.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FormatVideoPlayerData(0) + 48);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *(v3 + 32);
  v9 = *(v3 + 40);
  v8 = *(v3 + 48);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v9;
  *(a1 + 48) = v8;

  return result;
}

uint64_t FormatVideoPlayerData.adRequestIdentifier.getter()
{
  if (v0[5])
  {
    v1 = v0[4];
  }

  else
  {
    v1 = v0[2];
  }

  return v1;
}

uint64_t FormatVideoPlayerData.cacheKey.getter()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    type metadata accessor for FormatVideoPlayerData(0);
    v1 = sub_1D72583DC();
  }

  return v1;
}

void sub_1D6AE5C98(uint64_t a1)
{
  sub_1D5B58D88();
  if (v1 <= 0x3F)
  {
    sub_1D6AE6560(319, &qword_1EDF3C710, sub_1D5B5D6A0, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1D72585BC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void *sub_1D6AE5DA0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D72585BC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6AC2BB8(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v65 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v62 = &v60 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v61 = &v60 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v60 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v60 - v23;
  v25 = MEMORY[0x1E69E6F90];
  sub_1D6AE6560(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  sub_1D6AE6560(0, &qword_1EC880490, sub_1D5EA74B8, v25);
  sub_1D5EA74B8(0);
  v64 = v26;
  v27 = (*(*(v26 - 8) + 80) + 32) & ~*(*(v26 - 8) + 80);
  v67 = *(*(v26 - 8) + 72);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1D7279960;
  v63 = v28;
  v29 = (v28 + v27);
  v68 = a2;
  sub_1D6AE65C4(a2, v24);
  v30 = type metadata accessor for FormatVideoPlayerData(0);
  v31 = *(*(v30 - 1) + 48);
  if (v31(v24, 1, v30) == 1)
  {
    sub_1D6AE6628(v24, sub_1D6AC2BB8);
    v32 = 0;
    v33 = 0;
  }

  else
  {
    (*(v4 + 16))(v7, &v24[v30[9]], v3);
    sub_1D6AE6628(v24, type metadata accessor for FormatVideoPlayerData);
    v32 = sub_1D72583DC();
    v33 = v34;
    (*(v4 + 8))(v7, v3);
  }

  sub_1D711F844(0x5255206F65646956, 0xE90000000000004CLL, v32, v33, v29);
  v35 = type metadata accessor for FormatInspectionItem(0);
  v36 = *(*(v35 - 8) + 56);
  v36(v29, 0, 1, v35);
  sub_1D6AE65C4(v68, v20);
  v37 = v31(v20, 1, v30);
  v38 = v61;
  if (v37 == 1)
  {
    sub_1D6AE6628(v20, sub_1D6AC2BB8);
    v39 = 2;
  }

  else
  {
    v39 = v20[v30[11]];
    sub_1D6AE6628(v20, type metadata accessor for FormatVideoPlayerData);
  }

  v40 = v67;
  sub_1D711E9F0(1702259020, 0xE400000000000000, v39, &v29[v67]);
  v36(&v29[v40], 0, 1, v35);
  sub_1D6AE65C4(v68, v38);
  v41 = v31(v38, 1, v30);
  v42 = v62;
  if (v41 == 1)
  {
    sub_1D6AE6628(v38, sub_1D6AC2BB8);
    v43 = 2;
  }

  else
  {
    v43 = *(v38 + v30[12] + 32);
    sub_1D6AE6628(v38, type metadata accessor for FormatVideoPlayerData);
  }

  v44 = &v29[2 * v67];
  sub_1D711E9F0(0x72754420776F6853, 0xED00006E6F697461, v43, v44);
  v36(v44, 0, 1, v35);
  sub_1D6AE65C4(v68, v42);
  v45 = v31(v42, 1, v30);
  v46 = sub_1D6AC2BB8;
  if (v45 == 1)
  {
    v47 = 0;
    v48 = 0;
  }

  else
  {
    v49 = v42 + v30[12];
    v47 = *(v49 + 40);
    v48 = *(v49 + 48);

    v46 = type metadata accessor for FormatVideoPlayerData;
  }

  sub_1D6AE6628(v42, v46);
  v50 = 3 * v67;
  v51 = sub_1D711F844(0x6E6F697461727544, 0xE800000000000000, v47, v48, &v29[3 * v67]);
  (v36)(&v29[v50], 0, 1, v35, v51);
  v52 = v65;
  sub_1D6AE65C4(v68, v65);
  if (v31(v52, 1, v30) == 1)
  {
    sub_1D6AE6628(v52, sub_1D6AC2BB8);
    v53 = 2;
  }

  else
  {
    v53 = *(v52 + v30[13]);
    sub_1D6AE6628(v52, type metadata accessor for FormatVideoPlayerData);
  }

  v54 = &v29[4 * v67];
  sub_1D711E9F0(0xD000000000000011, 0x80000001D73E5400, v53, v54);
  v36(v54, 0, 1, v35);
  sub_1D6795150(0x6C50206F65646956, 0xEC00000072657961, 0, 0, v63, v69);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v55 = inited;
  *(inited + 56) = &type metadata for FormatInspectionGroup;
  *(v55 + 64) = &off_1F518B2C0;
  v56 = swift_allocObject();
  *(v55 + 32) = v56;
  *(v56 + 48) = v70;
  v57 = v69[1];
  *(v56 + 16) = v69[0];
  *(v56 + 32) = v57;
  v58 = sub_1D7073500(v55);
  swift_setDeallocating();
  sub_1D6AE6628(v55 + 32, sub_1D5E4F358);
  return v58;
}

void sub_1D6AE6560(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6AE65C4(uint64_t a1, uint64_t a2)
{
  sub_1D6AC2BB8(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6AE6628(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t FormatContentSubgroupNeighbors.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *v3;
  if (*(v5 + 16) && (result = sub_1D5B69D90(result, a2), (v6 & 1) != 0))
  {
    *a3 = *(*(v5 + 56) + 16 * result);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
    *a3 = MEMORY[0x1E69E7CD0];
    *(a3 + 8) = v7;
  }

  return result;
}

void sub_1D6AE673C(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x726F62686769656ELL && a2 == 0xE900000000000073)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1D6AE67CC(uint64_t a1)
{
  v2 = sub_1D6AE6BFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6AE6808(uint64_t a1)
{
  v2 = sub_1D6AE6BFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatContentSubgroupNeighbors.encode(to:)(void *a1)
{
  sub_1D6AE6D04(0, &qword_1EC8918D0, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v11 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6AE6BFC();

  sub_1D7264B5C();
  v11[1] = v9;
  sub_1D6AE6C50();
  sub_1D6AE6D68(&qword_1EC8918E8, sub_1D6AE6CB0, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
  sub_1D726443C();

  return (*(v5 + 8))(v8, v4);
}

uint64_t FormatContentSubgroupNeighbors.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1D6AE6D04(0, &qword_1EC8918F8, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6AE6BFC();
  sub_1D7264B0C();
  if (!v2)
  {
    sub_1D6AE6C50();
    sub_1D6AE6D68(&qword_1EC891900, sub_1D6AE6DE0, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
    sub_1D726431C();
    (*(v7 + 8))(v10, v6);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D6AE6BFC()
{
  result = qword_1EC8918D8;
  if (!qword_1EC8918D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8918D8);
  }

  return result;
}

void sub_1D6AE6C50()
{
  if (!qword_1EC8918E0)
  {
    v0 = sub_1D7261E1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8918E0);
    }
  }
}

unint64_t sub_1D6AE6CB0()
{
  result = qword_1EC8918F0;
  if (!qword_1EC8918F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8918F0);
  }

  return result;
}

void sub_1D6AE6D04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6AE6BFC();
    v7 = a3(a1, &type metadata for FormatContentSubgroupNeighbors.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D6AE6D68(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D6AE6C50();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D6AE6DE0()
{
  result = qword_1EC891908;
  if (!qword_1EC891908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891908);
  }

  return result;
}

unint64_t sub_1D6AE6E58()
{
  result = qword_1EC891910;
  if (!qword_1EC891910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891910);
  }

  return result;
}

unint64_t sub_1D6AE6EB0()
{
  result = qword_1EC891918;
  if (!qword_1EC891918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891918);
  }

  return result;
}

unint64_t sub_1D6AE6F08()
{
  result = qword_1EC891920;
  if (!qword_1EC891920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891920);
  }

  return result;
}

NewsFeed::SportsDataVisualizationType_optional __swiftcall SportsDataVisualizationType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SportsDataVisualizationType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x7365726F6373;
  v3 = 0x65527972756A6E69;
  if (v1 != 5)
  {
    v3 = 0x6579616C5079656BLL;
  }

  v4 = 0x65726F6353786F62;
  if (v1 != 3)
  {
    v4 = 0x726F6353656E696CLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x676E69646E617473;
  if (v1 != 1)
  {
    v5 = 0x7374656B63617262;
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

unint64_t sub_1D6AE70BC()
{
  result = qword_1EDF0ADB0[0];
  if (!qword_1EDF0ADB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF0ADB0);
  }

  return result;
}

double sub_1D6AE711C(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

void sub_1D6AE7258(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x7365726F6373;
  v5 = 0xEC00000074726F70;
  v6 = 0x65527972756A6E69;
  if (v2 != 5)
  {
    v6 = 0x6579616C5079656BLL;
    v5 = 0xE900000000000072;
  }

  v7 = 0x65726F6353786F62;
  v8 = 0xE900000000000073;
  if (v2 != 3)
  {
    v7 = 0x726F6353656E696CLL;
    v8 = 0xEA00000000007365;
  }

  if (*v1 <= 4u)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0x676E69646E617473;
  v10 = 0xE900000000000073;
  if (v2 != 1)
  {
    v9 = 0x7374656B63617262;
    v10 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v10;
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

unint64_t sub_1D6AE7410()
{
  result = qword_1EDF0ADA8;
  if (!qword_1EDF0ADA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0ADA8);
  }

  return result;
}

uint64_t sub_1D6AE7470()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D694F89C(v3, v1);
  return sub_1D7264A5C();
}

uint64_t sub_1D6AE74C0(uint64_t a1)
{
  v2 = *v1;
  sub_1D7264A0C();
  sub_1D694F89C(v4, v2);
  return sub_1D7264A5C();
}

uint64_t sub_1D6AE7504@<X0>(uint64_t *a1@<X8>)
{
  result = FormatContentMode.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D6AE7548()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x7265746E6563;
    v7 = 0x6D6F74746F62;
    if (v1 != 2)
    {
      v7 = 1952867692;
    }

    if (*v0)
    {
      v6 = 7368564;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x7468676952706F74;
    v3 = 0x654C6D6F74746F62;
    if (v1 != 7)
    {
      v3 = 0x69526D6F74746F62;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0x7468676972;
    if (v1 != 4)
    {
      v4 = 0x7466654C706F74;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_1D6AE7658()
{
  result = qword_1EC891928;
  if (!qword_1EC891928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891928);
  }

  return result;
}

unint64_t sub_1D6AE76AC(uint64_t a1)
{
  *(a1 + 8) = sub_1D6AE76DC();
  result = sub_1D5CAA924();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6AE76DC()
{
  result = qword_1EC891930;
  if (!qword_1EC891930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891930);
  }

  return result;
}

unint64_t sub_1D6AE7730(uint64_t a1)
{
  result = sub_1D6AE7758();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6AE7758()
{
  result = qword_1EC891938;
  if (!qword_1EC891938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891938);
  }

  return result;
}

unint64_t sub_1D6AE77AC(void *a1)
{
  a1[1] = sub_1D5C745E4();
  a1[2] = sub_1D669808C();
  result = sub_1D6AE7658();
  a1[3] = result;
  return result;
}

double sub_1D6AE7884(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (qword_1EDF32A58 != -1)
  {
    v9 = a3;
    swift_once();
    a3 = v9;
  }

  v5 = qword_1EDFFCEB0;
  v6 = a3();
  sub_1D5C384A0(0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D7273AE0;
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = sub_1D5B7E2C0();
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;

  sub_1D725C30C("%{public}@", 10, 2, &dword_1D5B42000, v5, v6, v7);

  return result;
}

double sub_1D6AE79E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (qword_1EDF32A58 != -1)
  {
    v11 = a5;
    swift_once();
    a5 = v11;
  }

  v7 = qword_1EDFFCEB0;
  v8 = a5();
  sub_1D5C384A0(0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D7273AE0;
  *(v9 + 56) = MEMORY[0x1E69E6158];
  *(v9 + 64) = sub_1D5B7E2C0();
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;

  sub_1D725C30C("%{public}@", 10, 2, &dword_1D5B42000, v7, v8, v9);

  return result;
}

uint64_t PuzzleComponentsStyler.__allocating_init(hintFormatter:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1D5B63F14(a1, v2 + 16);
  return v2;
}

void PuzzleComponentsStyler.styledHintButtonConfig(with:colorTheme:)(uint64_t *a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D674637C(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v73 = v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D725815C();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v60 = v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D72580BC();
  v71 = *(v12 - 8);
  v72 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v63 = v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v65 = v55 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v64 = v55 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v70 = v55 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v74 = v55 - v26;
  v27 = sub_1D726389C();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = v55 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1[1];
  v67 = *a1;
  v33 = *(a1 + 16);
  v34 = a1[4];
  v66 = *(a1 + 40);
  v35 = *a2;
  v61 = a2[1];
  v62 = v35;
  sub_1D726385C();
  v36 = objc_opt_self();
  v37 = [v36 labelColor];
  sub_1D726380C();
  sub_1D72637BC();
  v68 = v32;
  if (v32)
  {
    v57 = v28;
    v58 = v27;
    v59 = a3;
    v38 = swift_allocObject();
    *(v38 + 16) = 0;
    if (v33 == 2 || !v34)
    {
      v39 = v69[5];
      v40 = v69[6];
      __swift_project_boxed_opaque_existential_1(v69 + 2, v39);
      LOBYTE(v75[0]) = v66;
      v41 = v70;
      (*(v40 + 8))(v67, v68, v75, v39, v40);
      v75[0] = sub_1D6AE8520(v38);
      sub_1D62DEA50();
      sub_1D72580DC();
      v43 = v71;
      v42 = v72;
      v44 = v73;
      (*(v71 + 16))(v73, v41, v72);
      (*(v43 + 56))(v44, 0, 1, v42);
      sub_1D72637DC();
      (*(v43 + 8))(v41, v42);
      (*(v57 + 32))(v59, v31, v58);
    }

    else
    {

      sub_1D725814C();
      sub_1D72580CC();
      sub_1D5B5A498(0, &qword_1EDF1A720, 0x1E69DB878);
      v55[2] = *MEMORY[0x1E69DDD80];
      v75[0] = sub_1D72633DC();
      v55[1] = sub_1D62DE440();
      sub_1D72580DC();
      v75[0] = [v36 labelColor];
      sub_1D62DE4FC();
      sub_1D72580DC();
      v56 = v38;
      if (v33)
      {
        sub_1D72646CC();
      }

      sub_1D725814C();
      v45 = v70;
      sub_1D72580CC();
      v75[0] = sub_1D72633DC();
      sub_1D72580DC();
      v75[0] = sub_1D6AE83E4(v62, v61);
      sub_1D72580DC();
      v47 = v69[5];
      v46 = v69[6];
      __swift_project_boxed_opaque_existential_1(v69 + 2, v47);
      LOBYTE(v75[0]) = v66;
      v48 = v64;
      (*(v46 + 8))(v67, v68, v75, v47, v46);
      v75[0] = [v36 labelColor];
      sub_1D72580DC();
      v49 = v63;
      sub_1D7257F8C();
      v50 = v65;
      sub_1D7257F8C();
      v52 = v71;
      v51 = v72;
      v53 = *(v71 + 8);
      v53(v49, v72);
      v75[0] = sub_1D6AE8520(v56);
      sub_1D62DEA50();
      sub_1D72580DC();
      v54 = v73;
      (*(v52 + 16))(v73, v50, v51);
      (*(v52 + 56))(v54, 0, 1, v51);
      sub_1D72637DC();
      v53(v50, v51);
      v53(v48, v51);
      v53(v45, v51);
      v53(v74, v51);
      (*(v57 + 32))(v59, v31, v58);
    }
  }

  else
  {
    (*(v28 + 32))(a3, v31, v27);
  }
}

id sub_1D6AE83E4(void *a1, void *a2)
{
  if (a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
    v5 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v12[4] = sub_1D6AE8BD8;
    v12[5] = v4;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 1107296256;
    v12[2] = sub_1D6E0CD34;
    v12[3] = &block_descriptor_8_2;
    v6 = _Block_copy(v12);
    v7 = a1;
    v8 = a2;
    v9 = [v5 initWithDynamicProvider_];
    _Block_release(v6);

    return v9;
  }

  else
  {
    v11 = [objc_opt_self() systemPinkColor];

    return v11;
  }
}

id sub_1D6AE8520(uint64_t a1)
{
  v2 = (a1 + 16);
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = *(a1 + 16);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
    [v4 setAlignment_];
    swift_beginAccess();
    v5 = *v2;
    *v2 = v4;
    v3 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v3;
}

id sub_1D6AE85C8(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  v3 = &selRef_whiteColor;
  if (v1 != 2)
  {
    v3 = &selRef_blackColor;
  }

  v4 = [v2 *v3];

  return v4;
}

uint64_t PuzzleComponentsStyler.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

id _s8NewsFeed22PuzzleComponentsStylerC21styledMenuImageConfigSo26UIImageSymbolConfigurationCyF_0()
{
  v0 = [objc_opt_self() secondarySystemFillColor];
  v1 = objc_opt_self();
  v2 = [v1 configurationWithPointSize:5 weight:3 scale:23.0];
  sub_1D5B66FE4(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D72816D0;
  v4 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v13[4] = sub_1D6AE85C8;
  v13[5] = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1D6E0CD34;
  v13[3] = &block_descriptor_74;
  v5 = _Block_copy(v13);
  v6 = v2;
  v7 = [v4 initWithDynamicProvider_];
  _Block_release(v5);

  *(v3 + 32) = v7;
  *(v3 + 40) = v0;
  sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888);
  v8 = v0;
  v9 = sub_1D726265C();

  v10 = [v1 configurationWithPaletteColors_];

  v11 = [v6 configurationByApplyingConfiguration_];
  return v11;
}

uint64_t _s8NewsFeed22PuzzleComponentsStylerC34styledHintButtonAccessibilityLabel4withSSSgAA0c9AccessoryG6ConfigV_tF_0(uint64_t *a1)
{
  v1 = *(a1 + 16);
  if (v1 == 2)
  {
    return 0;
  }

  v3 = a1[4];
  if (!v3)
  {
    return 0;
  }

  v4 = a1[1];
  if (!v4)
  {
    return 0;
  }

  v5 = *a1;
  v6 = a1[3];
  if (v1)
  {
    sub_1D72646CC();
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  v9 = sub_1D725811C();
  v11 = v10;

  v12 = MEMORY[0x1E69E6158];
  sub_1D5B66FE4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D7279970;
  *(v13 + 32) = v6;
  *(v13 + 40) = v3;
  *(v13 + 48) = v9;
  *(v13 + 56) = v11;
  *(v13 + 64) = v5;
  *(v13 + 72) = v4;
  sub_1D5B66FE4(0, &qword_1EDF43BA0, v12, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();
  v14 = sub_1D7261F3C();

  return v14;
}

id sub_1D6AE8BD8(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  if ([a1 userInterfaceStyle] == 2)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  return v4;
}

uint64_t SportsDataVisualizationEventRequest.init(sportsEventId:traits:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = 1;
  *(a4 + 24) = v4;
  return result;
}

uint64_t SportsDataVisualizationEventRequest.eventId.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*(v0 + 16))
  {
  }

  else
  {
    v3 = [swift_unknownObjectRetain() identifier];
    v4 = sub_1D726207C();

    sub_1D5F82F20(v1, v2, 0);
    return v4;
  }

  return v1;
}

uint64_t SportsDataVisualizationEventRequest.content.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_1D60EFCC8(v2, v3, v4);
}

uint64_t SportsDataVisualizationEventRequest.init(sportsEvent:traits:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = result;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = v3;
  return result;
}

uint64_t SportsDataVisualizationEventRequest.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  if (v5)
  {
  }

  else
  {
    v7 = [swift_unknownObjectRetain() identifier];
    sub_1D726207C();

    sub_1D5F82F20(v3, v4, 0);
  }

  sub_1D72621EC();

  return sub_1D5E2D298(a1, v6);
}

uint64_t SportsDataVisualizationEventRequest.hashValue.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_1D7264A0C();
  if (v3)
  {
  }

  else
  {
    v5 = [swift_unknownObjectRetain() identifier];
    sub_1D726207C();

    sub_1D5F82F20(v2, v1, 0);
  }

  sub_1D72621EC();

  sub_1D5E2D298(v7, v4);
  return sub_1D7264A5C();
}