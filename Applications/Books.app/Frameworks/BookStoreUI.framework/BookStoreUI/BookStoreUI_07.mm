uint64_t sub_FD16C()
{
  v2 = *(type metadata accessor for PageRootView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_88BE0;

  return sub_FA910(v4, v5, v0 + v3);
}

uint64_t View.onHotReload(willReload:didReload:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_77DF4(a1, a2);
  sub_77DF4(a3, a4);
  sub_FE110(a1, a2, a3, a4, v13);
  v15 = *(&v14 + 1);
  v10 = v13[1];
  v11 = v13[0];
  sub_2C40E8();
  sub_77E80(v11, *(&v11 + 1));
  sub_77E80(v10, *(&v10 + 1));

  return sub_FE1E0(&v15);
}

uint64_t sub_FD370()
{
  swift_getKeyPath();
  sub_FE4A4();
  sub_2BE6F8();

  return *(v0 + 16);
}

void sub_FD3E0(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_FE4A4();
  sub_2BE6F8();

  *a2 = *(v3 + 16);
}

double sub_FD458(uint64_t a1)
{
  if (*(v1 + 16) != a1)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_FE4A4();
    sub_2BE6E8();
  }

  return result;
}

uint64_t sub_FD52C()
{
  swift_getKeyPath();
  sub_FE4A4();
  sub_2BE6F8();

  return *(v0 + 24);
}

void sub_FD59C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_FE4A4();
  sub_2BE6F8();

  *a2 = *(v3 + 24);
}

double sub_FD614(uint64_t a1)
{
  if (*(v1 + 24) != a1)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_FE4A4();
    sub_2BE6E8();
  }

  return result;
}

uint64_t sub_FD6E8()
{
  v1 = v0;
  sub_2C01F8();
  v2 = sub_2C01D8();
  sub_2C01C8();

  v3 = OBJC_IVAR____TtC11BookStoreUIP33_B56EEE055FCC7B8C902F085A95BD0E2817HotReloadObserver___observationRegistrar;
  v4 = sub_2BE738();
  (*(*(v4 - 8) + 8))(v1 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_FD7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  sub_2C5C18();
  v6[6] = sub_2C5C08();
  v8 = sub_2C5BB8();

  return _swift_task_switch(sub_FD844, v8, v7);
}

void sub_FD844()
{
  v1 = v0[3];

  swift_getKeyPath();
  v0[2] = v1;
  sub_FE4A4();
  sub_2BE6F8();

  v0[2] = v1;
  swift_getKeyPath();
  sub_2BE718();

  v2 = *(v1 + 16);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v5 = v0[4];
    v6 = v0[3];
    *(v1 + 16) = v4;
    v0[2] = v6;
    swift_getKeyPath();
    sub_2BE708();

    v5(v7);
    v8 = v0[1];

    v8();
  }
}

uint64_t sub_FD9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  sub_2C5C18();
  v6[6] = sub_2C5C08();
  v8 = sub_2C5BB8();

  return _swift_task_switch(sub_FDA64, v8, v7);
}

void sub_FDA64()
{
  v1 = v0[3];

  swift_getKeyPath();
  v0[2] = v1;
  sub_FE4A4();
  sub_2BE6F8();

  v0[2] = v1;
  swift_getKeyPath();
  sub_2BE718();

  v2 = *(v1 + 24);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v5 = v0[4];
    v6 = v0[3];
    *(v1 + 24) = v4;
    v0[2] = v6;
    swift_getKeyPath();
    sub_2BE708();

    v5(v7);
    v8 = v0[1];

    v8();
  }
}

double sub_FDBE8(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = sub_6620C(&unk_3BDBB0, &qword_2E47D0);
  __chkstk_darwin(v12 - 8);
  v14 = &v21 - v13;
  v15 = _Block_copy(a4);
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  v17 = sub_2C5C58();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  sub_2C5C18();
  swift_retain_n();

  v18 = sub_2C5C08();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = &protocol witness table for MainActor;
  v19[4] = a1;
  v19[5] = a7;
  v19[6] = v16;
  sub_249B98(0, 0, v14, a8, v19);

  return result;
}

uint64_t sub_FDD60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v30 = a1;
  v32 = a2;
  v31 = sub_6620C(&qword_3C0E00, &qword_2EAB28);
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v28 = &v24 - v4;
  v6 = *(v2 + 40);
  v34 = *(v2 + 32);
  v5 = v34;
  v35 = v6;
  v29 = sub_6620C(&qword_3C0E08, &qword_2EAB30);
  sub_2C4378();
  v7 = v39;
  swift_getKeyPath();
  v34 = v7;
  sub_FE4A4();
  sub_2BE6F8();

  v8 = *(v7 + 16);

  v34 = v8;
  v10 = *v3;
  v9 = *(v3 + 8);
  v12 = *(v3 + 24);
  v27 = *(v3 + 16);
  v11 = v27;
  v25 = v10;
  v26 = v12;
  v39 = v6;
  v13 = swift_allocObject();
  v14 = *(v3 + 16);
  v13[1] = *v3;
  v13[2] = v14;
  v13[3] = *(v3 + 32);
  sub_77DF4(v10, v9);
  sub_77DF4(v11, v12);

  sub_FE530(&v39, &v38);
  v15 = sub_6620C(&qword_3C0E18, &qword_2EAB60);
  v16 = sub_FE5A0();
  sub_2C40F8();

  v34 = v5;
  v35 = v6;
  sub_2C4378();
  v17 = v38;
  swift_getKeyPath();
  v34 = v17;
  sub_2BE6F8();

  v18 = *(v17 + 24);

  v38 = v18;
  v19 = swift_allocObject();
  v20 = *(v3 + 16);
  v19[1] = *v3;
  v19[2] = v20;
  v19[3] = *(v3 + 32);
  sub_77DF4(v25, v9);
  sub_77DF4(v27, v26);

  sub_FE530(&v39, &v34);
  v34 = v15;
  v35 = &type metadata for Int;
  v36 = v16;
  v37 = &protocol witness table for Int;
  swift_getOpaqueTypeConformance2();
  v21 = v31;
  v22 = v28;
  sub_2C40F8();

  return (*(v33 + 8))(v22, v21);
}

void *sub_FE110@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  type metadata accessor for HotReloadObserver(0);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  sub_2BE728();
  sub_2C01F8();
  v11 = sub_2C01D8();

  sub_2C01E8();

  result = sub_2C4368();
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  a5[4] = v13;
  a5[5] = v14;
  return result;
}

uint64_t sub_FE1E0(uint64_t a1)
{
  v2 = sub_6620C(&qword_3C0C90, &qword_2EA9F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for HotReloadObserver(uint64_t a1)
{
  result = qword_3C0CC8;
  if (!qword_3C0CC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_FE29C(uint64_t a1)
{
  result = sub_2BE738();
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

uint64_t sub_FE33C(void *a1)
{
  v1 = sub_2C2A08();
  sub_FAB68(v1, v2, v3);
  return swift_getWitnessTable();
}

uint64_t sub_FE3A0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_FE3B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_FE400(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

unint64_t sub_FE4A4()
{
  result = qword_3C0E10;
  if (!qword_3C0E10)
  {
    type metadata accessor for HotReloadObserver(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C0E10);
  }

  return result;
}

uint64_t sub_FE500()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_FE530(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3C0C90, &qword_2EA9F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_FE5A0()
{
  result = qword_3C0E20;
  if (!qword_3C0E20)
  {
    sub_718D4(&qword_3C0E18, &qword_2EAB60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C0E20);
  }

  return result;
}

uint64_t sub_FE630()
{
  if (*(v0 + 16))
  {
  }

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_FE690()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_FE6D8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_FE724(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_7100C;

  return sub_FD9C8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_FE7EC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_FE834(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_88BE0;

  return sub_FD7A8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_FE8FC()
{
  sub_718D4(&qword_3C0E00, &qword_2EAB28);
  sub_718D4(&qword_3C0E18, &qword_2EAB60);
  sub_FE5A0();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

Class sub_FEA10(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  a3(a1, a2);
  type metadata accessor for Key(0);
  sub_FED08();
  v3.super.isa = sub_2C57C8().super.isa;

  return v3.super.isa;
}

void *_sSo24BSUINoticeViewControllerC11BookStoreUIE06noticeB19TitleFontAttributesSDySo21NSAttributedStringKeyaypGvgZ_0()
{
  v0 = sub_1D3154();
  LOBYTE(v3) = 1;
  *&v4 = 0;
  BYTE8(v4) = 1;
  *&v5 = 0;
  *(&v5 + 1) = [objc_opt_self() bc_booksKeyColor];
  LOWORD(v6) = 257;
  LOBYTE(v7) = 1;
  *(&v7 + 1) = v0;
  v1 = TextAttributesBuilder.build()();
  v8[2] = v4;
  v8[3] = v5;
  v8[4] = v6;
  v8[5] = v7;
  v8[0] = 0uLL;
  v8[1] = v3;
  sub_FED60(v8);
  return v1;
}

void *_sSo24BSUINoticeViewControllerC11BookStoreUIE06noticeB21MessageFontAttributesSDySo21NSAttributedStringKeyaypGvgZ_0()
{
  v0 = sub_1D3204(UIFontWeightMedium);
  LOBYTE(v3) = 1;
  *&v4 = 0;
  BYTE8(v4) = 1;
  *&v5 = 0;
  *(&v5 + 1) = [objc_opt_self() bc_booksKeyColor];
  LOWORD(v6) = 257;
  *(&v6 + 1) = 0x4010000000000000;
  LOBYTE(v7) = 0;
  *(&v7 + 1) = v0;
  v1 = TextAttributesBuilder.build()();
  v8[2] = v4;
  v8[3] = v5;
  v8[4] = v6;
  v8[5] = v7;
  v8[0] = 0uLL;
  v8[1] = v3;
  sub_FED60(v8);
  return v1;
}

void *_sSo24BSUINoticeViewControllerC11BookStoreUIE06noticeB26ConfirmLabelFontAttributesSDySo21NSAttributedStringKeyaypGvgZ_0()
{
  v0 = sub_1D3204(UIFontWeightSemibold);
  LOBYTE(v3) = 1;
  *&v4 = 0;
  BYTE8(v4) = 1;
  *&v5 = 0;
  *(&v5 + 1) = [objc_opt_self() bc_booksKeyColor];
  LOWORD(v6) = 257;
  LOBYTE(v7) = 1;
  *(&v7 + 1) = v0;
  v1 = TextAttributesBuilder.build()();
  v8[2] = v4;
  v8[3] = v5;
  v8[4] = v6;
  v8[5] = v7;
  v8[0] = 0uLL;
  v8[1] = v3;
  sub_FED60(v8);
  return v1;
}

unint64_t sub_FED08()
{
  result = qword_3BC040;
  if (!qword_3BC040)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BC040);
  }

  return result;
}

void *_sSo24BSUINavigationControllerC11BookStoreUIE27navigationBarFontAttributesSDySo21NSAttributedStringKeyaypGvgZ_0()
{
  v0 = UIFontDescriptorSystemDesignSerif;
  *&v3 = UIFontDescriptorSystemDesignSerif;
  *(&v3 + 1) = UIFontWeightBold;
  v4[0] = 0;
  *&v4[8] = xmmword_2EABC0;
  v4[24] = 0;
  *&v5 = 0;
  *(&v5 + 1) = [objc_opt_self() bc_booksKeyColor];
  LOWORD(v6) = 256;
  LOBYTE(v7) = 1;
  v1 = TextAttributesBuilder.build()();
  v8[2] = *&v4[16];
  v8[3] = v5;
  v8[4] = v6;
  v8[5] = v7;
  v8[0] = v3;
  v8[1] = *v4;
  sub_FED60(v8);
  return v1;
}

void *_sSo24BSUINavigationControllerC11BookStoreUIE32largeNavigationBarFontAttributes4withSDySo21NSAttributedStringKeyaypGSo17UITraitCollectionC_tFZ_0(void *a1)
{
  v1 = _s11BookStoreUI21ToolKitTextAttributesV13toolbarHeader4withSDySo21NSAttributedStringKeyaypGSo17UITraitCollectionC_tFZ_0(a1);
  LOBYTE(v4) = 1;
  *&v5 = 0;
  BYTE8(v5) = 1;
  *&v6 = 0;
  *(&v6 + 1) = [objc_opt_self() bc_booksKeyColor];
  LOWORD(v7) = 256;
  LOBYTE(v8) = 1;
  *(&v8 + 1) = v1;
  v2 = TextAttributesBuilder.build()();
  v9[2] = v5;
  v9[3] = v6;
  v9[4] = v7;
  v9[5] = v8;
  v9[0] = 0uLL;
  v9[1] = v4;
  sub_FED60(v9);
  return v2;
}

uint64_t sub_FF060(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_6620C(&qword_3BC7C0, &unk_2E3890);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_6620C(&qword_3BE400, &unk_2E5E00);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_6620C(&qword_3BD588, &unk_2E4390);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = sub_6620C(&qword_3C0E28, &qword_2EABD8);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_FF22C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_6620C(&qword_3BC7C0, &unk_2E3890);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_6620C(&qword_3BE400, &unk_2E5E00);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = sub_6620C(&qword_3BD588, &unk_2E4390);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = sub_6620C(&qword_3C0E28, &qword_2EABD8);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

void sub_FF410(uint64_t a1)
{
  sub_FF518(319, &qword_3BC850, &type metadata accessor for ColorConstants);
  if (v1 <= 0x3F)
  {
    sub_FF518(319, &qword_3BE478, &type metadata accessor for FontConstants);
    if (v2 <= 0x3F)
    {
      sub_FF518(319, &qword_3BD600, &type metadata accessor for SizeConstants);
      if (v3 <= 0x3F)
      {
        sub_FF56C(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_FF518(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2C2558();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_FF56C(uint64_t a1)
{
  if (!qword_3C0E98)
  {
    sub_718D4(&unk_3C0EA0, &qword_2EAC00);
    v1 = sub_2C2558();
    if (!v2)
    {
      atomic_store(v1, &qword_3C0E98);
    }
  }
}

__n128 sub_FF650@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_6620C(&qword_3C0EE8, &qword_2EACC0);
  __chkstk_darwin(v5 - 8);
  v7 = v13 - v6;
  *v7 = sub_2C3328();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v8 = sub_6620C(&qword_3C0EF0, &qword_2EACC8);
  sub_FF798(a1, v2, &v7[*(v8 + 44)]);
  sub_2C46A8();
  sub_2C2AD8();
  sub_101A64(v7, a2);
  v9 = a2 + *(sub_6620C(&qword_3C0EF8, &qword_2EACD0) + 36);
  v10 = v13[5];
  *(v9 + 64) = v13[4];
  *(v9 + 80) = v10;
  *(v9 + 96) = v13[6];
  v11 = v13[1];
  *v9 = v13[0];
  *(v9 + 16) = v11;
  result = v13[3];
  *(v9 + 32) = v13[2];
  *(v9 + 48) = result;
  return result;
}

uint64_t sub_FF798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v102 = a3;
  v99 = type metadata accessor for ShortDividerStyle(0);
  __chkstk_darwin(v99);
  v98 = (&v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_2C4548();
  v96 = *(v6 - 8);
  v97 = v6;
  __chkstk_darwin(v6);
  v94 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_6620C(&qword_3C0F00, &unk_2EACD8);
  __chkstk_darwin(v95);
  v101 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v100 = &v82 - v10;
  v11 = sub_2C0D48();
  v90 = *(v11 - 8);
  v91 = v11;
  __chkstk_darwin(v11);
  v89 = (&v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_6620C(&qword_3BCB28, &qword_2E3B60);
  __chkstk_darwin(v13 - 8);
  v87 = &v82 - v14;
  v88 = sub_2C3918();
  v86 = *(v88 - 8);
  __chkstk_darwin(v88);
  v83 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_2C0978();
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v17 = (&v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for DescriptionHeaderComponent(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v21 = sub_6620C(&qword_3C0F08, &qword_2EACE8);
  v22 = v21 - 8;
  __chkstk_darwin(v21);
  v93 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v82 - v25;
  *v26 = sub_2C3328();
  *(v26 + 1) = 0;
  v26[16] = 0;
  v27 = sub_6620C(&qword_3C0F10, &unk_2EACF0);
  sub_100154(a1, a2, &v26[*(v27 + 44)]);
  v28 = a2;
  sub_102F4C(a2, &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DescriptionHeaderComponent);
  v29 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v30 = swift_allocObject();
  sub_101DBC(&v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v29);
  v31 = *(v22 + 44);
  v92 = v26;
  v32 = &v26[v31];
  *v32 = sub_10152C;
  v32[1] = 0;
  v32[2] = sub_101E20;
  v32[3] = v30;
  v33 = type metadata accessor for DescriptionHeaderComponentModel(0);
  v36 = (a1 + *(v33 + 32));
  v37 = v36[1];
  if (v37)
  {
    v103 = *v36;
    v104 = v37;
    sub_7212C(v33, v34, v35);

    v38 = sub_2C3A48();
    v40 = v39;
    v42 = v41;
    v82 = v28;
    sub_29AD08(v17);
    v43 = v86;
    v44 = v83;
    v45 = v88;
    (*(v86 + 104))(v83, enum case for Font.TextStyle.footnote(_:), v88);
    v46 = sub_2C3848();
    v47 = v87;
    (*(*(v46 - 8) + 56))(v87, 1, 1, v46);
    sub_2C3868();
    sub_2C38A8();
    sub_69198(v47, &qword_3BCB28, &qword_2E3B60);
    (*(v43 + 8))(v44, v45);
    (*(v84 + 8))(v17, v85);
    v48 = sub_2C39E8();
    v50 = v49;
    LOBYTE(v47) = v51;
    sub_72180(v38, v40, v42 & 1);

    v52 = v89;
    sub_29A87C(v89);
    v53 = sub_2C0D08();
    (*(v90 + 8))(v52, v91);
    v103 = v53;
    v54 = sub_2C39A8();
    v56 = v55;
    LOBYTE(v38) = v57;
    v59 = v58;
    sub_72180(v48, v50, v47 & 1);

    v60 = v38 & 1;
    v61 = v54;
    v62 = v56;
    sub_BE2CC(v54, v56, v38 & 1);
    v91 = v59;
  }

  else
  {
    v61 = 0;
    v62 = 0;
    v60 = 0;
    v91 = 0;
  }

  v63 = v94;
  sub_2C4538();
  KeyPath = swift_getKeyPath();
  v65 = v98;
  *v98 = KeyPath;
  sub_6620C(&unk_3C8530, &qword_2E3850);
  swift_storeEnumTagMultiPayload();
  sub_101970(&qword_3C0F20, &type metadata accessor for Divider, &protocol conformance descriptor for Divider);
  sub_101970(&qword_3C0F28, type metadata accessor for ShortDividerStyle, &unk_2EAF28);
  v66 = v100;
  v67 = v97;
  sub_2C3EB8();
  sub_102FB4(v65, type metadata accessor for ShortDividerStyle);
  (*(v96 + 8))(v63, v67);
  v68 = sub_2C37B8();
  sub_2C24D8();
  v69 = v66 + *(v95 + 36);
  *v69 = v68;
  *(v69 + 8) = v70;
  *(v69 + 16) = v71;
  *(v69 + 24) = v72;
  *(v69 + 32) = v73;
  *(v69 + 40) = 0;
  v74 = v92;
  v75 = v93;
  sub_6932C(v92, v93, &qword_3C0F08, &qword_2EACE8);
  v76 = v101;
  sub_101E94(v66, v101);
  v77 = v102;
  sub_6932C(v75, v102, &qword_3C0F08, &qword_2EACE8);
  v78 = sub_6620C(&qword_3C0F30, &qword_2EAD48);
  v79 = (v77 + *(v78 + 48));
  *v79 = v61;
  v79[1] = v62;
  v80 = v91;
  v79[2] = v60;
  v79[3] = v80;
  sub_101E94(v76, v77 + *(v78 + 64));
  sub_BE288(v61, v62, v60, v80);
  sub_BE2DC(v61, v62, v60, v80);
  sub_101F04(v66);
  sub_69198(v74, &qword_3C0F08, &qword_2EACE8);
  sub_101F04(v76);
  sub_BE2DC(v61, v62, v60, v80);
  return sub_69198(v75, &qword_3C0F08, &qword_2EACE8);
}

uint64_t sub_100154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v153 = a2;
  v146 = a3;
  v145 = sub_2C3308();
  v143 = *(v145 - 8);
  __chkstk_darwin(v145);
  v142 = &v123 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_2C3918();
  v138 = *(v139 - 8);
  __chkstk_darwin(v139);
  v137 = &v123 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_6620C(&qword_3BEC80, &qword_2E74A0);
  __chkstk_darwin(v6 - 8);
  v144 = &v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v141 = &v123 - v9;
  v10 = sub_2C0D48();
  v151 = *(v10 - 8);
  __chkstk_darwin(v10);
  v150 = (&v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_6620C(&qword_3BCB28, &qword_2E3B60);
  __chkstk_darwin(v12 - 8);
  v148 = &v123 - v13;
  v14 = sub_2C0978();
  v149 = *(v14 - 8);
  __chkstk_darwin(v14);
  v147 = (&v123 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v129 = sub_6620C(&qword_3C0F38, &qword_2EAD60);
  __chkstk_darwin(v129);
  v17 = (&v123 - v16);
  v132 = sub_6620C(&qword_3C0F40, &qword_2EAD68);
  __chkstk_darwin(v132);
  v19 = &v123 - v18;
  v134 = sub_6620C(&qword_3C0F48, &qword_2EAD70);
  __chkstk_darwin(v134);
  v21 = &v123 - v20;
  v130 = sub_6620C(&qword_3C0F50, &qword_2EAD78);
  __chkstk_darwin(v130);
  v23 = &v123 - v22;
  v24 = sub_6620C(&qword_3C0F58, &qword_2EAD80);
  __chkstk_darwin(v24);
  v26 = &v123 - v25;
  v131 = sub_6620C(&qword_3C0F60, &qword_2EAD88);
  __chkstk_darwin(v131);
  v28 = &v123 - v27;
  v29 = sub_6620C(&qword_3C0F68, &qword_2EAD90);
  __chkstk_darwin(v29 - 8);
  v136 = &v123 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v152 = &v123 - v32;
  v133 = type metadata accessor for DescriptionHeaderComponentModel(0);
  v33 = *(a1 + *(v133 + 36));
  v140 = v10;
  v135 = v14;
  if (v33)
  {
    if (v33 != 1)
    {
      sub_2C46A8();
      sub_2C2708();
      v83 = v160;
      v84 = v161;
      v85 = v162;
      v86 = v163;
      LOBYTE(v154) = 1;
      v159 = v161;
      v158 = v163;
      *v21 = 0;
      v21[8] = 1;
      *(v21 + 2) = v83;
      v21[24] = v84;
      *(v21 + 4) = v85;
      v21[40] = v86;
      *(v21 + 3) = v164;
      swift_storeEnumTagMultiPayload();
      sub_6620C(&qword_3C0F70, &qword_2EAD98);
      sub_1029EC();
      sub_102EAC();
      v80 = sub_2C33C8();
      goto LABEL_7;
    }

    v126 = sub_2C42B8();
    type metadata accessor for DescriptionHeaderComponent(0);
    v127 = v19;
    v128 = v24;
    v34 = v147;
    sub_29AD08(v147);
    v35 = sub_2C3848();
    v36 = v148;
    (*(*(v35 - 8) + 56))(v148, 1, 1, v35);
    v125 = sub_2C3898();
    sub_69198(v36, &qword_3BCB28, &qword_2E3B60);
    (*(v149 + 8))(v34, v14);
    KeyPath = swift_getKeyPath();
    v37 = v150;
    sub_29A87C(v150);
    v38 = sub_2C0CF8();
    (*(v151 + 8))(v37, v10);
    v39 = swift_getKeyPath();
    v40 = a1;
    v41 = (v17 + *(sub_6620C(&qword_3C0FE8, &qword_2EADC0) + 36));
    v42 = *(sub_6620C(&qword_3BD7E8, &qword_2E4500) + 28);
    v43 = enum case for Image.Scale.large(_:);
    v44 = sub_2C42D8();
    (*(*(v44 - 8) + 104))(v41 + v42, v43, v44);
    *v41 = swift_getKeyPath();
    v45 = KeyPath;
    *v17 = v126;
    v17[1] = v45;
    v17[2] = v125;
    v17[3] = v39;
    v17[4] = v38;
    LOBYTE(v39) = sub_2C3768();
    sub_2C24D8();
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v54 = v17 + *(sub_6620C(&qword_3C0FD8, &qword_2EADB8) + 36);
    *v54 = v39;
    *(v54 + 1) = v47;
    *(v54 + 2) = v49;
    *(v54 + 3) = v51;
    *(v54 + 4) = v53;
    v54[40] = 0;
    LOBYTE(v39) = sub_2C3778();
    sub_2C24D8();
    v55 = v17 + *(v129 + 36);
    *v55 = v39;
    *(v55 + 1) = v56;
    *(v55 + 2) = v57;
    *(v55 + 3) = v58;
    *(v55 + 4) = v59;
    v55[40] = 0;
    sub_102C58();
    v60 = v127;
    sub_2C3F88();
    sub_69198(v17, &qword_3C0F38, &qword_2EAD60);
    v61 = &qword_2EAD68;
    sub_6932C(v60, v23, &qword_3C0F40, &qword_2EAD68);
    swift_storeEnumTagMultiPayload();
    sub_102CB8(&qword_3C0F80, &qword_3C0F60, &qword_2EAD88, sub_102AD0);
    sub_1036E4(&qword_3C0FC0, &qword_3C0F40, &qword_2EAD68, sub_102C58);
    sub_2C33C8();
    sub_6932C(v26, v21, &qword_3C0F58, &qword_2EAD80);
    swift_storeEnumTagMultiPayload();
    sub_6620C(&qword_3C0F70, &qword_2EAD98);
    sub_1029EC();
    sub_102EAC();
    a1 = v40;
    sub_2C33C8();
    sub_69198(v26, &qword_3C0F58, &qword_2EAD80);
    v62 = v60;
    v63 = &qword_3C0F40;
  }

  else
  {
    sub_101244(a1);
    v64 = sub_2C3768();
    sub_2C24D8();
    v66 = v65;
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v73 = &v28[*(sub_6620C(&qword_3C0F90, &qword_2EADA0) + 36)];
    *v73 = v64;
    *(v73 + 1) = v66;
    *(v73 + 2) = v68;
    *(v73 + 3) = v70;
    *(v73 + 4) = v72;
    v73[40] = 0;
    v74 = sub_2C3778();
    sub_2C24D8();
    v75 = &v28[*(v131 + 36)];
    *v75 = v74;
    *(v75 + 1) = v76;
    *(v75 + 2) = v77;
    *(v75 + 3) = v78;
    *(v75 + 4) = v79;
    v75[40] = 0;
    v61 = &qword_2EAD88;
    sub_6932C(v28, v23, &qword_3C0F60, &qword_2EAD88);
    swift_storeEnumTagMultiPayload();
    sub_102CB8(&qword_3C0F80, &qword_3C0F60, &qword_2EAD88, sub_102AD0);
    sub_1036E4(&qword_3C0FC0, &qword_3C0F40, &qword_2EAD68, sub_102C58);
    sub_2C33C8();
    sub_6932C(v26, v21, &qword_3C0F58, &qword_2EAD80);
    swift_storeEnumTagMultiPayload();
    sub_6620C(&qword_3C0F70, &qword_2EAD98);
    sub_1029EC();
    sub_102EAC();
    sub_2C33C8();
    sub_69198(v26, &qword_3C0F58, &qword_2EAD80);
    v62 = v28;
    v63 = &qword_3C0F60;
  }

  v80 = sub_69198(v62, v63, v61);
LABEL_7:
  v87 = (a1 + *(v133 + 28));
  v88 = v87[1];
  v154 = *v87;
  v155 = v88;
  sub_7212C(v80, v81, v82);

  v134 = sub_2C3A48();
  v90 = v89;
  v92 = v91;
  v133 = v93;
  type metadata accessor for DescriptionHeaderComponent(0);
  v94 = v147;
  sub_29AD08(v147);
  v95 = v138;
  v96 = v137;
  v97 = v139;
  (*(v138 + 104))(v137, enum case for Font.TextStyle.title2(_:), v139);
  v98 = enum case for Font.Design.serif (_:);
  v99 = sub_2C3848();
  v100 = *(v99 - 8);
  v101 = v148;
  (*(v100 + 104))(v148, v98, v99);
  (*(v100 + 56))(v101, 0, 1, v99);
  sub_2C38A8();
  sub_69198(v101, &qword_3BCB28, &qword_2E3B60);
  (*(v95 + 8))(v96, v97);
  sub_2C3808();

  (*(v149 + 8))(v94, v135);
  v102 = v134;
  v103 = sub_2C39E8();
  v105 = v104;
  LOBYTE(v95) = v106;
  sub_72180(v102, v90, v92 & 1);

  v107 = v150;
  sub_29A87C(v150);
  v108 = sub_2C0CB8();
  (*(v151 + 8))(v107, v140);
  v154 = v108;
  v109 = sub_2C39A8();
  v111 = v110;
  LOBYTE(v102) = v112;
  v114 = v113;
  sub_72180(v103, v105, v95 & 1);

  v154 = v109;
  v155 = v111;
  v156 = v102 & 1;
  v157 = v114;
  v115 = v142;
  sub_2C32B8();
  v116 = v141;
  sub_2C3FE8();
  (*(v143 + 8))(v115, v145);
  sub_72180(v109, v111, v102 & 1);

  v117 = v152;
  v118 = v136;
  sub_6932C(v152, v136, &qword_3C0F68, &qword_2EAD90);
  v119 = v144;
  sub_6932C(v116, v144, &qword_3BEC80, &qword_2E74A0);
  v120 = v146;
  sub_6932C(v118, v146, &qword_3C0F68, &qword_2EAD90);
  v121 = sub_6620C(&qword_3C1008, &qword_2EADD0);
  sub_6932C(v119, v120 + *(v121 + 48), &qword_3BEC80, &qword_2E74A0);
  sub_69198(v116, &qword_3BEC80, &qword_2E74A0);
  sub_69198(v117, &qword_3C0F68, &qword_2EAD90);
  sub_69198(v119, &qword_3BEC80, &qword_2E74A0);
  return sub_69198(v118, &qword_3C0F68, &qword_2EAD90);
}

uint64_t sub_101244(uint64_t a1)
{
  v2 = sub_6620C(&qword_3C1010, &qword_2EAE68);
  __chkstk_darwin(v2);
  v4 = v17 - v3;
  v5 = type metadata accessor for AppleBooksReviewIcon(0);
  __chkstk_darwin(v5);
  v7 = (v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_2C0D48();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = a1 + *(type metadata accessor for DescriptionHeaderComponentModel(0) + 40);
  v13 = *(v12 + 8);
  if (!v13 || (v14 = *(v12 + 16), v17[1] = *v12, v17[2] = v13, v17[3] = v14, v18 = *(v12 + 24), sub_29A87C(v11), v15 = sub_147DBC(), (*(v9 + 8))(v11, v8), !v15))
  {
    sub_29A87C(v11);
    v15 = sub_2C0D08();
    (*(v9 + 8))(v11, v8);
  }

  *v7 = swift_getKeyPath();
  sub_6620C(&qword_3C0C88, &unk_2EAD00);
  swift_storeEnumTagMultiPayload();
  *(v7 + *(v5 + 20)) = v15;
  sub_102F4C(v7, v4, type metadata accessor for AppleBooksReviewIcon);
  swift_storeEnumTagMultiPayload();
  sub_101970(&qword_3C0FB8, type metadata accessor for AppleBooksReviewIcon, &unk_2EAED8);
  sub_2C33C8();
  return sub_102FB4(v7, type metadata accessor for AppleBooksReviewIcon);
}

uint64_t sub_10152C@<X0>(double *a1@<X8>)
{
  v2 = sub_2C3418();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2C3578();
  sub_2C2748();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v7;
  *(a1 + 1) = v9;
  *(a1 + 2) = v11;
  *(a1 + 3) = v13;
  return result;
}

uint64_t sub_101638(CGFloat *a1)
{
  v2 = sub_6620C(&unk_3C0EA0, &qword_2EAC00);
  __chkstk_darwin(v2);
  v4 = (&v17 - v3);
  v5 = sub_6620C(&qword_3C0C68, &unk_2EAD50);
  __chkstk_darwin(v5 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  v11 = *a1;
  v12 = a1[1];
  v13 = a1[2];
  v14 = a1[3];
  v18.origin.x = *a1;
  v18.origin.y = v12;
  v18.size.width = v13;
  v18.size.height = v14;
  CGRectGetMinY(v18);
  v19.origin.x = v11;
  v19.origin.y = v12;
  v19.size.width = v13;
  v19.size.height = v14;
  CGRectGetMaxY(v19);
  sub_2C1E98();
  v15 = sub_2C1EC8();
  (*(*(v15 - 8) + 56))(v10, 0, 1, v15);
  type metadata accessor for DescriptionHeaderComponent(0);
  sub_29B100(v4);
  sub_6932C(v10, v7, &qword_3C0C68, &unk_2EAD50);
  sub_2C44D8();
  sub_69198(v4, &unk_3C0EA0, &qword_2EAC00);
  return sub_69198(v10, &qword_3C0C68, &unk_2EAD50);
}

uint64_t sub_101850(uint64_t a1)
{
  __chkstk_darwin(v1);
  sub_102F4C(v3, &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DescriptionHeaderComponent);
  sub_101970(&qword_3C0ED8, type metadata accessor for DescriptionHeaderComponent, &unk_2EAC58);
  return sub_2BFD18();
}

uint64_t sub_101970(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_101A64(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3C0EE8, &qword_2EACC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_101AF4()
{
  v1 = type metadata accessor for DescriptionHeaderComponent(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_6620C(&unk_3C8530, &qword_2E3850);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_2C0D48();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v1[5];
  sub_6620C(&qword_3C0C88, &unk_2EAD00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_2C0978();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  v9 = v1[6];
  sub_6620C(&qword_3BD530, &qword_2E4150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_2C0C98();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  v11 = v5 + v1[7];
  sub_6620C(&qword_3C0F18, &qword_2EAD10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v13 = *(sub_6620C(&unk_3C0EA0, &qword_2EAC00) + 32);
    v14 = sub_2C1EC8();
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(v11 + v13, 1, v14))
    {
      (*(v15 + 8))(v11 + v13, v14);
    }
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_101DBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DescriptionHeaderComponent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_101E20(CGFloat *a1)
{
  type metadata accessor for DescriptionHeaderComponent(0);

  return sub_101638(a1);
}

uint64_t sub_101E94(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3C0F00, &unk_2EACD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_101F04(uint64_t a1)
{
  v2 = sub_6620C(&qword_3C0F00, &unk_2EACD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_101F6C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_2C3178();
  v12 = 1;
  sub_102138(&v20);
  v14 = v21;
  v15 = v22;
  v16 = v23;
  v17 = v24;
  v13 = v20;
  v18[1] = v21;
  v18[2] = v22;
  v18[3] = v23;
  v19 = v24;
  v18[0] = v20;
  sub_6932C(&v13, &v8, &qword_3C1148, &qword_2EAF60);
  sub_69198(v18, &qword_3C1148, &qword_2EAF60);
  *&v11[23] = v14;
  *&v11[39] = v15;
  *&v11[55] = v16;
  *&v11[71] = v17;
  *&v11[7] = v13;
  v4 = v12;
  v5 = *(v2 + *(type metadata accessor for AppleBooksReviewIcon(0) + 20));
  KeyPath = swift_getKeyPath();
  *&v9[17] = *&v11[16];
  *&v9[33] = *&v11[32];
  *&v9[49] = *&v11[48];
  *&v9[64] = *&v11[63];
  v8 = v3;
  v9[0] = v4;
  *&v9[1] = *v11;
  *&v10 = KeyPath;
  *(&v10 + 1) = v5;

  sub_6620C(&qword_3C1150, &qword_2EAF68);
  sub_1034F0();
  sub_2C3F88();
  v24 = *&v9[48];
  v25 = *&v9[64];
  v26 = v10;
  v20 = v8;
  v21 = *v9;
  v22 = *&v9[16];
  v23 = *&v9[32];
  return sub_69198(&v20, &qword_3C1150, &qword_2EAF68);
}

double sub_102138@<D0>(uint64_t *a1@<X8>)
{
  v2 = sub_6620C(&qword_3BCB28, &qword_2E3B60);
  __chkstk_darwin(v2 - 8);
  v4 = &v24 - v3;
  v5 = sub_2C3918();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2C0978();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = sub_2C42B8();
  sub_29AD08(v12);
  sub_2C37C8();
  v28 = sub_2C3808();

  v13 = *(v10 + 8);
  v13(v12, v9);
  KeyPath = swift_getKeyPath();
  v26 = sub_2C42B8();
  sub_29AD08(v12);
  (*(v6 + 104))(v8, enum case for Font.TextStyle.largeTitle(_:), v5);
  v14 = sub_2C3848();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  v25 = sub_2C38A8();
  sub_69198(v4, &qword_3BCB28, &qword_2E3B60);
  (*(v6 + 8))(v8, v5);
  v13(v12, v9);
  v15 = swift_getKeyPath();
  v16 = sub_2C42B8();
  sub_29AD08(v12);
  sub_2C37C8();
  v17 = sub_2C3808();

  v13(v12, v9);
  v18 = swift_getKeyPath();
  v19 = v28;
  v20 = v26;
  v21 = KeyPath;
  *a1 = v29;
  a1[1] = v21;
  a1[2] = v19;
  a1[3] = v20;
  v22 = v25;
  a1[4] = v15;
  a1[5] = v22;
  a1[6] = v16;
  a1[7] = v18;
  a1[8] = v17;

  return result;
}

double sub_10250C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_2C0D48();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 6];
  sub_29A87C(v5);
  v6 = sub_2C0CF8();
  (*(v3 + 8))(v5, v2);
  sub_2C46A8();
  sub_2C2708();
  *&v10[6] = v11;
  *&v10[22] = v12;
  *&v10[38] = v13;
  v7 = *&v10[16];
  *(a1 + 10) = *v10;
  *a1 = v6;
  *(a1 + 8) = 256;
  *(a1 + 26) = v7;
  result = *&v10[32];
  *(a1 + 42) = *&v10[32];
  *(a1 + 56) = *&v10[46];
  return result;
}

double sub_102648@<D0>(uint64_t a1@<X8>, double a4@<D2>, double a5@<D3>)
{
  v8 = sub_2C2AA8();
  __chkstk_darwin(v8 - 8);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v11 + 28);
  v13 = enum case for RoundedCornerStyle.continuous(_:);
  v14 = sub_2C31A8();
  (*(*(v14 - 8) + 104))(v10 + v12, v13, v14);
  *v10 = a4;
  v10[1] = a5;
  sub_2C2A98();
  sub_102FB4(v10, &type metadata accessor for RoundedRectangle);
  result = *&v18;
  v16 = v19;
  *a1 = v18;
  *(a1 + 16) = v16;
  *(a1 + 32) = v20;
  return result;
}

uint64_t sub_102774@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ShapeRole.separator(_:);
  v3 = sub_2C4748();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t (*sub_102804(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2C2468();
  return sub_10288C;
}

void sub_10288C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1028D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1038E4(a1, a2, a3);

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10293C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1038E4(a1, a2, a3);

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1029A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1038E4(a1, a2, a3);

  return Shape.body.getter(a1, v4);
}

unint64_t sub_1029EC()
{
  result = qword_3C0F78;
  if (!qword_3C0F78)
  {
    sub_718D4(&qword_3C0F58, &qword_2EAD80);
    sub_102CB8(&qword_3C0F80, &qword_3C0F60, &qword_2EAD88, sub_102AD0);
    sub_1036E4(&qword_3C0FC0, &qword_3C0F40, &qword_2EAD68, sub_102C58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C0F78);
  }

  return result;
}

unint64_t sub_102B00()
{
  result = qword_3C0F98;
  if (!qword_3C0F98)
  {
    sub_718D4(&qword_3C0FA0, &qword_2EADA8);
    sub_102B84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C0F98);
  }

  return result;
}

unint64_t sub_102B84()
{
  result = qword_3C0FA8;
  if (!qword_3C0FA8)
  {
    sub_718D4(&qword_3C0FB0, &qword_2EADB0);
    sub_101970(&qword_3C0FB8, type metadata accessor for AppleBooksReviewIcon, &unk_2EAED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C0FA8);
  }

  return result;
}

uint64_t sub_102CB8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_718D4(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_102D3C()
{
  result = qword_3C0FE0;
  if (!qword_3C0FE0)
  {
    sub_718D4(&qword_3C0FE8, &qword_2EADC0);
    sub_102DF4();
    sub_72B74(&qword_3BD800, &qword_3BD7E8, &qword_2E4500, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C0FE0);
  }

  return result;
}

unint64_t sub_102DF4()
{
  result = qword_3C0FF0;
  if (!qword_3C0FF0)
  {
    sub_718D4(&qword_3C0FF8, &qword_2EADC8);
    sub_88554();
    sub_72B74(&qword_3BCB00, &qword_3BCB08, &qword_2E6700, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C0FF0);
  }

  return result;
}

unint64_t sub_102EAC()
{
  result = qword_3C1000;
  if (!qword_3C1000)
  {
    sub_718D4(&qword_3C0F70, &qword_2EAD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C1000);
  }

  return result;
}

uint64_t sub_102F4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_102FB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_103028(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3BC7C0, &unk_2E3890);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1030B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3BC7C0, &unk_2E3890);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_103130(uint64_t a1)
{
  sub_FF518(319, &qword_3BC850, &type metadata accessor for ColorConstants);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1031CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_6620C(&qword_3BE400, &unk_2E5E00);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1032A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_6620C(&qword_3BE400, &unk_2E5E00);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_10336C(uint64_t a1)
{
  sub_FF518(319, &qword_3BE478, &type metadata accessor for FontConstants);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_103400()
{
  result = qword_3C1138;
  if (!qword_3C1138)
  {
    sub_718D4(&qword_3C0EF8, &qword_2EACD0);
    sub_72B74(&qword_3C1140, &qword_3C0EE8, &qword_2EACC0, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C1138);
  }

  return result;
}

unint64_t sub_1034F0()
{
  result = qword_3C1158;
  if (!qword_3C1158)
  {
    sub_718D4(&qword_3C1150, &qword_2EAF68);
    sub_72B74(&qword_3C1160, &qword_3C1168, &unk_2EAF70, &protocol conformance descriptor for HStack<A>);
    sub_72B74(&qword_3BCB00, &qword_3BCB08, &qword_2E6700, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C1158);
  }

  return result;
}

unint64_t sub_1035E8()
{
  result = qword_3C1170;
  if (!qword_3C1170)
  {
    sub_718D4(&qword_3C1178, &qword_2EAF98);
    sub_72B74(&qword_3C1180, &qword_3C1188, &qword_2EAFA0, &protocol conformance descriptor for _ShapeView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C1170);
  }

  return result;
}

uint64_t sub_1036E4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_718D4(a2, a3);
    a4();
    sub_101970(&qword_3BCA50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1037E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C11B0;
  if (!qword_3C11B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C11B0);
  }

  return result;
}

unint64_t sub_103838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C11B8;
  if (!qword_3C11B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C11B8);
  }

  return result;
}

unint64_t sub_103890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C11C0;
  if (!qword_3C11C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C11C0);
  }

  return result;
}

unint64_t sub_1038E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C11C8;
  if (!qword_3C11C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C11C8);
  }

  return result;
}

uint64_t AssetActionModifyRequest.storeID.getter()
{
  v1 = *(v0 + OBJC_IVAR___BSUIAssetActionModifyRequest_storeID);

  return v1;
}

uint64_t AssetActionModifyRequest.collectionID.getter()
{
  v1 = *(v0 + OBJC_IVAR___BSUIAssetActionModifyRequest_collectionID);

  return v1;
}

uint64_t AssetActionModifyResponse.collectionTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR___BSUIAssetActionModifyResponse_collectionTitle);

  return v1;
}

id sub_103BE8(uint64_t a1, uint64_t a2, void *a3)
{

  v3 = sub_2C5888();

  return v3;
}

uint64_t AssetActionModifyResponse.assetID.getter()
{
  v1 = *(v0 + OBJC_IVAR___BSUIAssetActionModifyResponse_assetID);

  return v1;
}

id sub_103CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v17 = objc_allocWithZone(v8);
  v18 = &v17[*a6];
  *v18 = a1;
  *(v18 + 1) = a2;
  v19 = &v17[*a7];
  *v19 = a3;
  *(v19 + 1) = a4;
  *&v17[*a8] = a5;
  v21.receiver = v17;
  v21.super_class = v8;
  return objc_msgSendSuper2(&v21, "init");
}

id sub_103D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  ObjectType = swift_getObjectType();
  v18 = &v8[*a6];
  *v18 = a1;
  *(v18 + 1) = a2;
  v19 = &v8[*a7];
  *v19 = a3;
  *(v19 + 1) = a4;
  *&v8[*a8] = a5;
  v21.receiver = v8;
  v21.super_class = ObjectType;
  return objc_msgSendSuper2(&v21, "init");
}

uint64_t NavigationProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  return v0;
}

id sub_10407C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = [Strong traitCollection];

  v3 = [v2 isInCard];
  return v3;
}

BOOL sub_104104()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = [Strong presentingViewController];

  if (v1)
  {
  }

  return v1 != 0;
}

void sub_1041B8(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_104204(uint64_t *a1))(id **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_104294;
}

void sub_104294(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

id sub_10431C(SEL *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = [Strong *a1];

  return v3;
}

void sub_104380(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = [Strong navigationController];

  [v5 pushViewController:a1 animated:a2 & 1];
}

void sub_104418(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = [Strong navigationController];
}

void sub_1044BC(char a1, SEL *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = [Strong navigationController];
}

void sub_10454C(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [Strong presentViewController:a1 animated:a2 & 1 completion:0];
  }
}

void sub_1045C0(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = a1 & 1;
    v4 = Strong;
    [Strong dismissViewControllerAnimated:v3 completion:0];
  }
}

void sub_104624(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_6620C(&qword_3BC1F8, &qword_2E2ED0);
    isa = sub_2C5B18().super.isa;
    v9 = sub_2C57C8().super.isa;
    [v7 presentFeedsInCards:isa focusedIndex:a2 animated:a3 & 1 options:v9 completion:0];
  }
}

void sub_104708(char a1, uint64_t a2)
{
  v4 = sub_104EB0();
  [v4 popCardsAnimated:a1 & 1 reason:a2];
}

void sub_10476C(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v3 = Strong, v4 = [Strong presentingViewController], v3, v4) && (v5 = objc_msgSend(v4, "presentedViewController"), v4, v5) && (sub_104FA4(), v6 = sub_2C5E58(), v5, v6) || (v7 = swift_unknownObjectWeakLoadStrong()) != 0 && (v8 = v7, sub_104FA4(), v6 = sub_2C5E58(), v8, v6))
  {
    aBlock[4] = ContextActionItemCoverProvider.init();
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_750DC;
    aBlock[3] = &unk_38E0C0;
    v9 = _Block_copy(aBlock);
    [v6 popAllCardsAnimated:a1 & 1 completion:v9];
    _Block_release(v9);
  }
}

void sub_1048E8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v1 = Strong, v2 = [Strong presentingViewController], v1, v2) && (v3 = objc_msgSend(v2, "presentedViewController"), v2, v3) && (sub_104FA4(), v4 = sub_2C5E58(), v3, v4) || (v5 = swift_unknownObjectWeakLoadStrong()) != 0 && (v6 = v5, sub_104FA4(), v4 = sub_2C5E58(), v6, v4))
  {
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      v8 = v7;
      v9 = [v7 presentingViewController];

      if (v9)
      {
        if ([v9 bc_canCloseAsset])
        {
          v16 = sub_104B30;
          v17 = 0;
          aBlock = _NSConcreteStackBlock;
          v13 = 1107296256;
          v14 = sub_750DC;
          v15 = &unk_38E110;
          v10 = _Block_copy(&aBlock);
          [v9 bc_closeToAssetWithCardStackViewController:v4 completion:v10];

          _Block_release(v10);
          return;
        }
      }
    }

    v16 = ContextActionItemCoverProvider.init();
    v17 = 0;
    aBlock = _NSConcreteStackBlock;
    v13 = 1107296256;
    v14 = sub_750DC;
    v15 = &unk_38E0E8;
    v11 = _Block_copy(&aBlock);
    [v4 popAllCardsAnimated:1 completion:v11];

    _Block_release(v11);
  }
}

void sub_104B3C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v1 = Strong, v2 = [Strong presentingViewController], v1, v2) && (v3 = objc_msgSend(v2, "presentedViewController"), v2, v3) && (sub_104FA4(), v4 = sub_2C5E58(), v3, v4) || (v5 = swift_unknownObjectWeakLoadStrong()) != 0 && (v6 = v5, sub_104FA4(), v4 = sub_2C5E58(), v6, v4))
  {
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      v8 = v7;
      v9 = [v7 presentingViewController];

      if (v9)
      {
        if ([v9 bc_canCloseAsset])
        {
          aBlock[4] = sub_104DB4;
          aBlock[5] = 0;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_750DC;
          aBlock[3] = &unk_38E138;
          v10 = _Block_copy(aBlock);
          [v9 bc_closeAssetWithCardStackViewController:v4 completion:v10];
          _Block_release(v10);
          v11 = v4;
LABEL_17:

          return;
        }
      }
    }

    if (qword_3BB7E8 != -1)
    {
      swift_once();
    }

    v12 = sub_2C00B8();
    sub_57AD8(v12, qword_3C3068);
    v11 = sub_2C0098();
    v13 = sub_2C5DD8();
    if (os_log_type_enabled(v11, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_0, v11, v13, "We should not even have the menu item if card stack is not presented from an asset", v14, 2u);
    }

    v9 = v4;
    goto LABEL_17;
  }
}

void sub_104DC0(const char *a1)
{
  if (qword_3BB7E8 != -1)
  {
    swift_once();
  }

  v2 = sub_2C00B8();
  sub_57AD8(v2, qword_3C3068);
  oslog = sub_2C0098();
  v3 = sub_2C5DE8();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, oslog, v3, a1, v4, 2u);
  }
}

void *sub_104EB0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v1 = Strong, v2 = [Strong presentingViewController], v1, !v2) || (v3 = objc_msgSend(v2, "presentedViewController"), v2, !v3) || (sub_104FA4(), v4 = sub_2C5E58(), v3, (result = v4) == 0))
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v6 = result;
      sub_104FA4();
      v7 = sub_2C5E58();

      return v7;
    }
  }

  return result;
}

unint64_t sub_104FA4()
{
  result = qword_3C1250;
  if (!qword_3C1250)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_3C1250);
  }

  return result;
}

uint64_t sub_104FF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t NavigationProvider.__deallocating_deinit()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

id sub_105060()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = [Strong traitCollection];

  v3 = [v2 isInCard];
  return v3;
}

BOOL sub_1050EC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = [Strong presentingViewController];

  if (v1)
  {
  }

  return v1 != 0;
}

id sub_105160()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = [Strong transitionCoordinator];

  return v1;
}

void sub_10520C(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = [Strong navigationController];

  [v5 pushViewController:a1 animated:a2 & 1];
}

void sub_1052A8(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = [Strong navigationController];
}

void sub_105350(char a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = [Strong navigationController];
}

void sub_1053E4(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [Strong presentViewController:a1 animated:a2 & 1 completion:0];
  }
}

void sub_10545C(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = a1 & 1;
    v4 = Strong;
    [Strong dismissViewControllerAnimated:v3 completion:0];
  }
}

void sub_1054C4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_6620C(&qword_3BC1F8, &qword_2E2ED0);
    isa = sub_2C5B18().super.isa;
    v9 = sub_2C57C8().super.isa;
    [v7 presentFeedsInCards:isa focusedIndex:a2 animated:a3 & 1 options:v9 completion:0];
  }
}

void sub_1055AC(char a1, uint64_t a2)
{
  v4 = sub_104EB0();
  [v4 popCardsAnimated:a1 & 1 reason:a2];
}

void sub_105614(char a1)
{
  v2 = sub_104EB0();
  if (v2)
  {
    v3 = v2;
    v5[4] = ContextActionItemCoverProvider.init();
    v5[5] = 0;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_750DC;
    v5[3] = &unk_38E1F0;
    v4 = _Block_copy(v5);
    [v3 popAllCardsAnimated:a1 & 1 completion:v4];
    _Block_release(v4);
  }
}

uint64_t sub_105724@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_105C1C(void *a1)
{
  v1 = sub_2C2A08();
  sub_B3728(v1, v2, v3);
  return swift_getWitnessTable();
}

void sub_105CAC()
{
  v1 = sub_105D38(*v0, v0[1]);
  sub_6620C(&qword_3C1390, &unk_2EB220);
  sub_106018();
  sub_2C3DD8();
}

id sub_105D38(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v22 = type metadata accessor for HostProxy.Event(0);
  __chkstk_darwin(v22);
  v3 = (&v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_2BEF28();
  v4 = *(v21 - 8);
  __chkstk_darwin(v21);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_6620C(&qword_3BCE28, &qword_2E9620);
  __chkstk_darwin(v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v20 - v11;
  sub_2BF028();
  sub_2C4DB8();
  v13 = v23;
  v14 = sub_2BF008();
  sub_2C4DB8();
  sub_77D40(v12, v9);
  LinkData.init(actionOrigin:)(v9, v6);
  sub_10607C(&qword_3C13A0, &protocol conformance descriptor for LinkData, v15);
  sub_10607C(&qword_3C13A8, &protocol conformance descriptor for LinkData, v16);
  v17 = v21;
  sub_2BEFE8();
  type metadata accessor for HostProxy(0);
  sub_2C4DB8();
  *v3 = v14;
  swift_storeEnumTagMultiPayload();
  v18 = v14;
  sub_2C23D8();

  sub_C2C98(v3);
  (*(v4 + 8))(v6, v17);
  sub_E05A4(v12);

  return v18;
}

unint64_t sub_106018()
{
  result = qword_3C1398;
  if (!qword_3C1398)
  {
    sub_718D4(&qword_3C1390, &unk_2EB220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C1398);
  }

  return result;
}

uint64_t sub_10607C(unint64_t *a1, uint64_t a2, __n128 a3)
{
  result = *a1;
  if (!result)
  {
    sub_2BEF28();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1060C0()
{
  sub_718D4(&qword_3C1390, &unk_2EB220);
  sub_106018();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_106124@<X0>(void (*a2)(char *, uint64_t)@<X1>, uint64_t (*a3)(uint64_t a1)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned __int8 *a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>, void *a10, uint64_t a11)
{
  v297 = a8;
  v293 = a7;
  v263 = a5;
  v262 = a4;
  v300 = a3;
  v299 = a2;
  v249 = a9;
  v240 = sub_2BE5C8();
  v239 = *(v240 - 8);
  __chkstk_darwin(v240);
  v238 = &v230 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v247 = type metadata accessor for Page(0);
  __chkstk_darwin(v247);
  v248 = &v230 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v246 = sub_2C1A68();
  v245 = *(v246 - 8);
  __chkstk_darwin(v246);
  v253 = &v230 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v266 = sub_2C1A28();
  v252 = *(v266 - 8);
  __chkstk_darwin(v266);
  v251 = &v230 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v244 = sub_6620C(&qword_3C1590, &qword_2EB568);
  v243 = *(v244 - 8);
  __chkstk_darwin(v244);
  v242 = &v230 - v16;
  v17 = sub_6620C(&qword_3C1598, &unk_2EB570);
  __chkstk_darwin(v17 - 8);
  v277 = &v230 - v18;
  v286 = sub_2C4BB8();
  v279 = *(v286 - 8);
  __chkstk_darwin(v286);
  v284 = &v230 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v285 = sub_2BEF78();
  v278 = *(v285 - 8);
  __chkstk_darwin(v285);
  v289 = &v230 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_6620C(&qword_3BEF80, &qword_2E8D50);
  __chkstk_darwin(v21 - 8);
  v281 = &v230 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v282 = &v230 - v24;
  __chkstk_darwin(v25);
  v274 = &v230 - v26;
  v276 = sub_2BFDD8();
  v275 = *(v276 - 8);
  __chkstk_darwin(v276);
  v273 = &v230 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v269 = sub_6620C(&qword_3C15A0, &qword_2EB580);
  v265 = *(v269 - 8);
  __chkstk_darwin(v269);
  v283 = &v230 - v28;
  v287 = type metadata accessor for SeriesRoomPageIntent(0);
  v29 = *(v287 - 8);
  __chkstk_darwin(v287);
  v271 = v30;
  v272 = (&v230 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v268 = sub_6620C(&qword_3C15A8, &qword_2EB588);
  v264 = *(v268 - 8);
  __chkstk_darwin(v268);
  v280 = &v230 - v31;
  v290 = sub_2BE828();
  v258 = *(v290 - 1);
  __chkstk_darwin(v290);
  v241 = (&v230 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v33);
  v267 = (&v230 - v34);
  v35 = sub_2C4BF8();
  __chkstk_darwin(v35 - 8);
  v250 = &v230 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v270 = &v230 - v38;
  v294 = sub_2BE8F8();
  v288 = *(v294 - 8);
  __chkstk_darwin(v294);
  v261 = &v230 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v291 = &v230 - v41;
  v42 = sub_6620C(&unk_3CA260, &qword_2E3930);
  __chkstk_darwin(v42 - 8);
  v257 = &v230 - v43;
  *&v256 = sub_2BF4E8();
  v254 = *(v256 - 8);
  __chkstk_darwin(v256);
  v255 = (&v230 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = sub_6620C(&qword_3C15B0, &unk_2ECA80);
  __chkstk_darwin(v45 - 8);
  v47 = &v230 - v46;
  v48 = sub_6620C(&qword_3C15B8, &unk_2EB590);
  __chkstk_darwin(v48 - 8);
  v50 = &v230 - v49;
  v51 = sub_6620C(&qword_3BE238, &unk_2E8260);
  __chkstk_darwin(v51 - 8);
  v259 = &v230 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53);
  v55 = &v230 - v54;
  v295 = sub_2BF738();
  v296 = *(v295 - 8);
  __chkstk_darwin(v295);
  v260 = &v230 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v59 = &v230 - v58;
  v60 = type metadata accessor for Shelf(0);
  v61 = *(v60 - 8);
  __chkstk_darwin(v60 - 8);
  v292 = &v230 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v63);
  v65 = &v230 - v64;
  v66 = *a6;
  sub_2BF788();
  if (!*(&v303 + 1))
  {
    v71 = sub_69198(&v302, &qword_3BDAD0, &qword_2E4DA0);
    sub_112480(v71, v72, v73);
    swift_allocError();
    return swift_willThrow();
  }

  v300 = v29;
  sub_68D1C(&v302, &v305);
  if (v66 == 3)
  {
    v67 = 0;
  }

  else
  {
    v67 = v66;
  }

  v68 = v306;
  v69 = v307;
  sub_72084(&v305, v306);
  v70 = v298;
  SeriesInfo.getPromotionState()(v68, v69, &v302);
  if (v70)
  {
    return sub_68CD0(&v305);
  }

  LODWORD(v299) = v67;
  static Shelf.seriesHeader(from:seriesPromotionState:with:)(&v305, &v302, v297, v65);
  v298 = 0;
  v236 = a11;
  sub_9150C(&v302);
  v75 = sub_5C10C(0, 1, 1, _swiftEmptyArrayStorage);
  v76 = v75;
  v78 = v75[2];
  v77 = v75[3];
  if (v78 >= v77 >> 1)
  {
    v76 = sub_5C10C((v77 > 1), v78 + 1, 1, v75);
  }

  v76[2] = v78 + 1;
  v79 = (*(v61 + 80) + 32) & ~*(v61 + 80);
  v237 = v76;
  v234 = v79;
  v80 = *(v61 + 72);
  sub_112864(v65, v76 + v79 + v80 * v78, type metadata accessor for Shelf);
  LOBYTE(v302) = v299;
  sub_6932C(v293, v55, &qword_3BE238, &unk_2E8260);
  v81 = v296;
  v82 = v296 + 48;
  v83 = *(v296 + 48);
  v84 = v295;
  v85 = v83(v55, 1, v295);
  v235 = v83;
  if (v85 == 1)
  {
    sub_72084(&v305, v306);
    v84 = v295;
    sub_2BF2E8();
    v86 = v83(v55, 1, v84);
    v87 = v298;
    if (v86 != 1)
    {
      sub_69198(v55, &qword_3BE238, &unk_2E8260);
    }
  }

  else
  {
    (*(v81 + 32))(v59, v55, v84);
    v87 = v298;
  }

  LOBYTE(v308) = 0;
  sub_10F2E8(v236, v47, type metadata accessor for SeriesRoomPageIntent);
  (*(v300 + 7))(v47, 0, 1, v287);
  sub_108BC4(&v305, v47, v50);
  sub_69198(v47, &qword_3C15B0, &unk_2ECA80);
  v88 = type metadata accessor for SeriesRoomListHeaderComponentModel(0);
  (*(*(v88 - 8) + 56))(v50, 0, 1, v88);
  sub_1514BC(&v305, &v302, v59, &v308, v50, 0, v292);
  if (v87)
  {
    sub_69198(v50, &qword_3C15B8, &unk_2EB590);
    (*(v296 + 8))(v59, v84);

    return sub_68CD0(&v305);
  }

  sub_69198(v50, &qword_3C15B8, &unk_2EB590);
  v89 = *(v296 + 8);
  v232 = v296 + 8;
  v231 = v89;
  v89(v59, v84);
  v90 = v237;
  v92 = v237[2];
  v91 = v237[3];
  if (v92 >= v91 >> 1)
  {
    v90 = sub_5C10C((v91 > 1), v92 + 1, 1, v237);
  }

  v93 = v255;
  v255 = a10;
  v90[2] = v92 + 1;
  v237 = v90;
  sub_112864(v292, v90 + v234 + v92 * v80, type metadata accessor for Shelf);
  v308 = _swiftEmptyDictionarySingleton;
  v94 = v306;
  v95 = v307;
  sub_72084(&v305, v306);
  v96 = sub_2B7E40(v94, v95);
  v97 = (v254 + 8);
  v298 = 0;
  v233 = v82;
  if (v96)
  {
    sub_2BF5B8();
    sub_2BF5A8();
  }

  else
  {
    sub_2BF428();
    sub_2BF418();
  }

  v98 = sub_2BF4D8();
  v100 = v99;
  (*v97)(v93, v256);
  v101 = type metadata accessor for JSAction(0);
  *(&v303 + 1) = v101;
  AssociatedConformanceWitness = sub_10F240(&qword_3BD470, type metadata accessor for JSAction, &protocol conformance descriptor for JSAction);
  v102 = sub_720C8(&v302);
  sub_2C4BE8();
  sub_6620C(&qword_3BC8E0, &qword_2E3938);
  inited = swift_initStackObject();
  v256 = xmmword_2E15C0;
  *(inited + 16) = xmmword_2E15C0;
  *(inited + 32) = 25705;
  *(inited + 40) = 0xE200000000000000;
  sub_72084(&v305, v306);
  *(inited + 48) = sub_2BF3B8();
  *(inited + 56) = v104;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 1701869940;
  *(inited + 120) = &type metadata for String;
  *(inited + 88) = 0xE400000000000000;
  *(inited + 96) = v98;
  *(inited + 104) = v100;
  v105 = sub_6759C(inited);
  swift_setDeallocating();
  sub_6620C(&qword_3BC318, &qword_2E2FF0);
  swift_arrayDestroy();
  v106 = sub_2BF088();
  v107 = *(*(v106 - 8) + 56);
  v108 = v257;
  v107(v257, 1, 1, v106);
  v109 = v101[7];
  v107(v102 + v109, 1, 1, v106);
  v110 = v102 + v101[5];
  strcpy(v110, "RecentlyViewed");
  v110[15] = -18;
  *(v102 + v101[6]) = v105;
  sub_71FB4(v108, v102 + v109);
  sub_1B6158(&v302, 0);
  v111 = v306;
  v112 = v307;
  sub_72084(&v305, v306);
  v113 = v291;
  sub_2B7838(v111, v112, v291);
  sub_2C4BE8();
  v234 = sub_6620C(&qword_3BC240, &unk_2E9B40);
  v114 = swift_allocObject();
  *(v114 + 16) = v256;
  v115 = v306;
  v116 = v307;
  sub_72084(&v305, v306);
  v117 = v267;
  sub_2B7838(v115, v116, v267);
  v258 = *(v258 + 104);
  (v258)(v117, enum case for AppAnalyticsAction.Type.reportSeriesDetailsView(_:), v290);
  v118 = sub_2BE858();
  *(v114 + 56) = v118;
  v119 = sub_10F240(&qword_3CA250, &type metadata accessor for AppAnalyticsAction, &protocol conformance descriptor for AppAnalyticsAction);
  *(v114 + 64) = v119;
  sub_720C8((v114 + 32));
  sub_2BE838();
  v254 = *(sub_6620C(&qword_3C15C8, &qword_2EB5A0) + 48);
  v120 = v294;
  v117[3] = v294;
  v287 = sub_10F240(&qword_3C15D0, &type metadata accessor for SeriesData, &protocol conformance descriptor for SeriesData);
  v117[4] = v287;
  v292 = sub_10F240(&qword_3C15D8, &type metadata accessor for SeriesData, &protocol conformance descriptor for SeriesData);
  v117[5] = v292;
  v121 = sub_720C8(v117);
  v122 = v288 + 16;
  v257 = *(v288 + 16);
  (v257)(v121, v113, v120);
  v123 = enum case for ScenePhase.active(_:);
  v124 = sub_2C2508();
  v125 = v119;
  v126 = v258;
  (*(*(v124 - 8) + 104))(v117 + v254, v123, v124);
  v126(v117, enum case for AppAnalyticsAction.Type.popData(_:), v290);
  *(v114 + 96) = v118;
  *(v114 + 104) = v119;
  sub_720C8((v114 + 72));
  sub_2BE838();
  v127 = sub_2C4D28();
  *(&v303 + 1) = v127;
  AssociatedConformanceWitness = &protocol witness table for CompoundAction;
  sub_720C8(&v302);
  sub_2C4D18();
  sub_1B6158(&v302, 3);
  if (v299)
  {
    v128 = v294;
    v129 = v287;
    v117[3] = v294;
    v117[4] = v129;
    v117[5] = v292;
    v130 = sub_720C8(v117);
    (v257)(v130, v291, v128);
    v126(v117, enum case for AppAnalyticsAction.Type.pushData(_:), v290);
    *(&v303 + 1) = v118;
    AssociatedConformanceWitness = v125;
    sub_720C8(&v302);
    sub_2BE838();
  }

  else
  {
    v230 = v127;
    v254 = v122;
    v270 = v125;
    v131 = v287;
    sub_2C4BE8();
    v132 = swift_allocObject();
    *(v132 + 16) = v256;
    sub_72084(&v305, v306);
    v133 = sub_2BF3B8();
    v135 = v134;
    sub_72084(&v305, v306);
    sub_2BF2C8();
    v137 = v136;
    sub_72084(&v305, v306);
    if (v137)
    {
      v138 = sub_2BF2F8();
    }

    else
    {
      v138 = sub_2BF2C8();
    }

    v140 = v241;
    *v241 = v133;
    v140[1] = v135;
    v140[2] = v138;
    *(v140 + 24) = v139 & 1;
    v141 = v290;
    v142 = v258;
    (v258)(v140, enum case for AppAnalyticsAction.Type.reportAllInSeriesView(_:), v290);
    v143 = v270;
    *(v132 + 56) = v118;
    *(v132 + 64) = v143;
    sub_720C8((v132 + 32));
    sub_2BE838();
    v144 = v294;
    v145 = v267;
    v267[3] = v294;
    v145[4] = v131;
    v145[5] = v292;
    v146 = sub_720C8(v145);
    (v257)(v146, v291, v144);
    v142(v145, enum case for AppAnalyticsAction.Type.pushData(_:), v141);
    *(v132 + 96) = v118;
    *(v132 + 104) = v143;
    sub_720C8((v132 + 72));
    sub_2BE838();
    *(&v303 + 1) = v230;
    AssociatedConformanceWitness = &protocol witness table for CompoundAction;
    sub_720C8(&v302);
    sub_2C4D18();
  }

  sub_1B6158(&v302, 2);
  type metadata accessor for HostProxy(0);
  sub_2C4DB8();
  v147 = v302;
  v148 = v255;
  v149 = v255[3];
  v150 = v255[4];
  sub_72084(v255, v149);
  sub_72084(&v305, v306);
  v151 = sub_2BF3B8();
  v153 = v152;
  v154 = *(v150 + 40);

  v297 = v147;
  v155 = v154(v151, v153, v147, v149, v150);

  v301 = v155;
  sub_691F8(&v305, &v302);
  v290 = type metadata accessor for SeriesRoomPageIntent;
  v156 = v272;
  sub_10F2E8(v236, v272, type metadata accessor for SeriesRoomPageIntent);
  v157 = *(v300 + 80);
  v258 = (v157 + 56) & ~v157;
  v158 = swift_allocObject();
  sub_68D1C(&v302, v158 + 16);
  v300 = type metadata accessor for SeriesRoomPageIntent;
  sub_112864(v156, v158 + ((v157 + 56) & ~v157), type metadata accessor for SeriesRoomPageIntent);
  sub_6620C(&qword_3C15E0, &unk_2EB5A8);
  v270 = sub_6620C(&qword_3BD478, &unk_2E4090);
  v267 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_72B74(&qword_3C15E8, &qword_3C15E0, &unk_2EB5A8, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_2C2418();

  v159 = v148[3];
  v160 = v148[4];
  sub_72084(v148, v159);
  sub_72084(&v305, v306);
  v161 = sub_2BF3B8();
  v163 = v162;
  v164 = *(v160 + 48);
  v165 = v297;

  v166 = v164(v161, v163, v165, v159, v160);

  v301 = v166;
  sub_691F8(&v305, &v302);
  v167 = v272;
  sub_10F2E8(v236, v272, v290);
  v168 = v258;
  v169 = swift_allocObject();
  sub_68D1C(&v302, v169 + 16);
  sub_112864(v167, v169 + v168, v300);
  sub_6620C(&qword_3C15F0, &qword_2EB5B8);
  sub_72B74(&qword_3C15F8, &qword_3C15F0, &qword_2EB5B8, v267);
  sub_2C2418();

  sub_72084(&v305, v306);
  sub_2BF3C8();
  v170 = v273;
  sub_2BFDC8();

  v171 = v274;
  sub_1969C0(&v305, v274);
  v172 = *(v278 + 16);
  v271 = v278 + 16;
  v270 = v172;
  (v172)(v289, v262, v285);
  v173 = *(v279 + 16);
  v290 = (v279 + 16);
  v272 = v173;
  (v173)(v284, v263, v286);
  sub_6620C(&qword_3BC1A0, &unk_2EB5C0);
  v174 = swift_allocObject();
  *(v174 + 16) = xmmword_2E3F30;
  v175 = v306;
  v176 = v307;
  sub_72084(&v305, v306);
  v177 = v287;
  *(v174 + 56) = v294;
  *(v174 + 64) = v177;
  *(v174 + 72) = v292;
  v292 = v174;
  v178 = sub_720C8((v174 + 32));
  sub_2B7838(v175, v176, v178);
  v179 = v275;
  v180 = *(v275 + 16);
  v181 = v282;
  v182 = v276;
  v180(v282, v170, v276);
  (*(v179 + 56))(v181, 0, 1, v182);
  sub_6932C(v171, v281, &qword_3BEF80, &qword_2E8D50);
  v300 = v308;
  v183 = *(sub_6620C(&qword_3C1600, &qword_2F2290) + 48);
  v184 = v277;
  v180(v277, v170, v182);
  sub_6932C(v171, v184 + v183, &qword_3BEF80, &qword_2E8D50);
  v185 = enum case for ToolbarPrincipalType.series(_:);
  v186 = sub_2C15F8();
  v187 = *(v186 - 8);
  (*(v187 + 104))(v184, v185, v186);
  (*(v187 + 56))(v184, 0, 1, v186);
  LOBYTE(v302) = 0;
  v188 = v306;
  v189 = v307;
  sub_72084(&v305, v306);
  v190 = v261;
  sub_2B7838(v188, v189, v261);
  LOBYTE(v301) = v299;
  v191 = v259;
  sub_6932C(v293, v259, &qword_3BE238, &unk_2E8260);
  v192 = v295;
  v193 = v235;
  if (v235(v191, 1, v295) == 1)
  {
    sub_72084(&v305, v306);
    v194 = v260;
    sub_2BF2E8();
    v195 = v193(v191, 1, v192);
    v196 = v291;
    v197 = v298;
    if (v195 != 1)
    {
      sub_69198(v191, &qword_3BE238, &unk_2E8260);
    }
  }

  else
  {
    v194 = v260;
    (*(v296 + 32))(v260, v191, v192);
    v196 = v291;
    v197 = v298;
  }

  v198 = sub_20CB14(&v305, &v302, v190, &v301, v194);
  v199 = v294;
  if (v197)
  {

    v231(v194, v192);
    v200 = *(v288 + 8);
    v200(v190, v199);
    sub_69198(v277, &qword_3C1598, &unk_2EB570);
    sub_69198(v281, &qword_3BEF80, &qword_2E8D50);
    sub_69198(v282, &qword_3BEF80, &qword_2E8D50);
    (*(v279 + 8))(v284, v286);
    (*(v278 + 8))(v289, v285);
    sub_69198(v274, &qword_3BEF80, &qword_2E8D50);
    (*(v275 + 8))(v273, v276);
    (*(v265 + 8))(v283, v269);
    (*(v264 + 8))(v280, v268);
    v200(v196, v199);
    return sub_68CD0(&v305);
  }

  v296 = v198;
  v298 = 0;
  v231(v194, v192);
  v201 = *(v288 + 8);
  v288 += 8;
  v299 = v201;
  v201(v190, v199);
  sub_72B74(&qword_3C1608, &qword_3C15A8, &qword_2EB588, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_72B74(&qword_3C1610, &qword_3C15A0, &qword_2EB580, &protocol conformance descriptor for Publishers.Map<A, B>);
  v202 = v242;
  sub_2C2428();
  sub_72B74(&qword_3C1618, &qword_3C1590, &qword_2EB568, &protocol conformance descriptor for Publishers.Merge<A, B>);
  v203 = v244;
  v295 = sub_2C2408();
  (*(v243 + 8))(v202, v203);
  sub_72084(&v305, v306);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v205 = sub_2C60B8();
  v206 = *(v205 - 8);
  __chkstk_darwin(v205);
  v208 = &v230 - v207;
  sub_2BF388();
  v209 = *(AssociatedTypeWitness - 8);
  v210 = (*(v209 + 48))(v208, 1, AssociatedTypeWitness);
  if (v210 == 1)
  {
    (*(v206 + 8))(v208, v205);
    AssociatedConformanceWitness = 0;
    v302 = 0u;
    v303 = 0u;
  }

  else
  {
    *(&v303 + 1) = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v211 = sub_720C8(&v302);
    (*(v209 + 32))(v211, v208, AssociatedTypeWitness);
  }

  sub_69198(&v302, &qword_3BDAC8, &qword_2E9FF0);
  (*(v252 + 104))(v251, enum case for NavigationBarTitleStyle.automatic(_:), v266);
  sub_2C1A58();
  v212 = v247;
  v213 = v248;
  v214 = &v248[*(v247 + 96)];
  *v214 = 0;
  *(v214 + 1) = 0;
  v215 = v213 + v212[25];
  *(v215 + 4) = 0;
  *v215 = 0u;
  *(v215 + 1) = 0u;
  *&v302 = sub_2BEF68();
  *(&v302 + 1) = v216;
  v309._countAndFlagsBits = 45;
  v309._object = 0xE100000000000000;
  sub_2C5978(v309);
  v217._countAndFlagsBits = sub_2BEF58();
  if (v217._object)
  {
    object = v217._object;
  }

  else
  {
    v219 = v238;
    sub_2BE5B8();
    v220 = sub_2BE598();
    object = v221;
    (*(v239 + 8))(v219, v240);
    v217._countAndFlagsBits = v220;
  }

  LODWORD(v293) = v210 != 1;
  v217._object = object;
  sub_2C5978(v217);

  v222 = *(&v302 + 1);
  *v213 = v302;
  v213[1] = v222;
  (v270)(v213 + v212[17], v289, v285);
  *(v213 + v212[18]) = v292;
  *(v213 + v212[14]) = 0;
  *(v213 + v212[15]) = v237;
  (v272)(v213 + v212[19], v284, v286);
  v223 = (v213 + v212[16]);
  *v223 = 0;
  v223[1] = 0;
  sub_6932C(v282, v213 + v212[5], &qword_3BEF80, &qword_2E8D50);
  sub_6932C(v281, v213 + v212[6], &qword_3BEF80, &qword_2E8D50);
  v224 = v252;
  v225 = v251;
  (*(v252 + 16))(v213 + v212[7], v251, v266);
  v226 = v245;
  v227 = v253;
  v228 = v246;
  (*(v245 + 16))(v213 + v212[8], v253, v246);
  *(v213 + v212[9]) = 1;
  *(v213 + v212[21]) = v300;
  v229 = v277;
  sub_6932C(v277, v213 + v212[10], &qword_3C1598, &unk_2EB570);
  *(v213 + v212[11]) = _swiftEmptyArrayStorage;
  *(v213 + v212[12]) = v296;
  *(v213 + v212[13]) = 0;
  *(v213 + v212[22]) = v295;
  *(v213 + v212[23]) = 0;
  *(v213 + v212[20]) = v293;
  sub_17E898();

  (*(v226 + 8))(v227, v228);
  (*(v224 + 8))(v225, v266);
  sub_69198(v229, &qword_3C1598, &unk_2EB570);
  sub_69198(v281, &qword_3BEF80, &qword_2E8D50);
  sub_69198(v282, &qword_3BEF80, &qword_2E8D50);
  (*(v279 + 8))(v284, v286);
  (*(v278 + 8))(v289, v285);
  sub_69198(v274, &qword_3BEF80, &qword_2E8D50);
  (*(v275 + 8))(v273, v276);
  (*(v265 + 8))(v283, v269);
  (*(v264 + 8))(v280, v268);
  v299(v291, v294);
  sub_112864(v213, v249, type metadata accessor for Page);
  return sub_68CD0(&v305);
}

uint64_t sub_108BC4@<X0>(void *a1@<X0>, void (*a2)(void, void, void)@<X1>, uint64_t a3@<X8>)
{
  v223 = a2;
  v227 = a3;
  v4 = sub_6620C(&qword_3C1628, &qword_2EB5D0);
  __chkstk_darwin(v4 - 8);
  v224 = &v183 - v5;
  v6 = sub_2BF628();
  v231 = *(v6 - 8);
  v232 = v6;
  __chkstk_darwin(v6);
  v229 = &v183 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = sub_2BF408();
  v216 = *(v230 - 8);
  __chkstk_darwin(v230);
  v205 = &v183 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v228 = &v183 - v10;
  __chkstk_darwin(v11);
  v192 = &v183 - v12;
  v13 = sub_6620C(&qword_3C1630, &qword_2EB5D8);
  __chkstk_darwin(v13 - 8);
  v186 = &v183 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v191 = &v183 - v16;
  v17 = sub_6620C(&qword_3C15B0, &unk_2ECA80);
  __chkstk_darwin(v17 - 8);
  v222 = &v183 - v18;
  v19 = type metadata accessor for SeriesRoomPageIntent(0);
  v221 = *(v19 - 1);
  __chkstk_darwin(v19);
  v207 = (&v183 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v21);
  v187 = &v183 - v22;
  __chkstk_darwin(v23);
  v210 = &v183 - v24;
  v25 = sub_6620C(&qword_3BF478, &unk_2EB5E0);
  __chkstk_darwin(v25 - 8);
  v204 = &v183 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v215 = &v183 - v28;
  __chkstk_darwin(v29);
  v201 = &v183 - v30;
  __chkstk_darwin(v31);
  v236 = &v183 - v32;
  v238 = sub_2BF368();
  v235 = *(v238 - 8);
  __chkstk_darwin(v238);
  v206 = &v183 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v188 = &v183 - v35;
  __chkstk_darwin(v36);
  v203 = &v183 - v37;
  __chkstk_darwin(v38);
  v202 = &v183 - v39;
  __chkstk_darwin(v40);
  v42 = &v183 - v41;
  v43 = type metadata accessor for SeriesRoomListHeaderSegmentedItem(0);
  v220 = *(v43 - 8);
  __chkstk_darwin(v43);
  v226 = &v183 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v190 = &v183 - v46;
  __chkstk_darwin(v47);
  v189 = &v183 - v48;
  __chkstk_darwin(v49);
  v184 = &v183 - v50;
  __chkstk_darwin(v51);
  v185 = (&v183 - v52);
  __chkstk_darwin(v53);
  v219 = &v183 - v54;
  __chkstk_darwin(v55);
  v57 = &v183 - v56;
  sub_72084(a1, a1[3]);
  v237 = v43;
  v234 = v57;
  sub_2BF288();
  sub_72084(a1, a1[3]);
  v58 = sub_2BF3B8();
  v218 = v59;
  v60 = a1[3];
  v225 = a1;
  sub_72084(a1, v60);
  v61 = v42;
  sub_2BF278();
  v62 = v235;
  v63 = *(v235 + 56);
  v64 = v238;
  v214 = v235 + 56;
  v213 = v63;
  v63(v236, 1, 1, v238);
  v65 = &v57[*(v43 + 32)];
  v65[3] = v19;
  v200 = sub_10F240(&qword_3BD300, type metadata accessor for SeriesRoomPageIntent, &protocol conformance descriptor for SeriesRoomPageIntent);
  v65[4] = v200;
  v66 = sub_720C8(v65);
  v67 = v19[9];
  v68 = enum case for Metrics.NavigationType.forward(_:);
  v69 = sub_2C21F8();
  v70 = *(v69 - 8);
  v71 = *(v70 + 104);
  v196 = v68;
  v195 = v69;
  v194 = v71;
  v193 = v70 + 104;
  (v71)(v66 + v67, v68);
  v217 = v19[8];
  v72 = sub_2BF8D8();
  v73 = sub_2C1AE8();
  v74 = v218;
  *v66 = v58;
  v66[1] = v74;
  v75 = v62;
  v76 = *(v62 + 16);
  v77 = v66 + v19[5];
  v218 = v62 + 16;
  v208 = v76;
  v76(v77, v61, v64);
  v78 = (v66 + v19[6]);
  *v78 = 0;
  v78[1] = 0;
  v233 = v19;
  v79 = v236;
  sub_6932C(v236, v66 + v19[7], &qword_3BF478, &unk_2EB5E0);
  v197 = v72;
  v80 = v219;
  v81 = sub_2C1AE8();
  sub_69198(v79, &qword_3BF478, &unk_2EB5E0);
  v82 = *(v75 + 8);
  v209 = v61;
  v212 = v75 + 8;
  v211 = v82;
  v82(v61, v64);

  *(v66 + v217) = v81;
  v83 = v237;
  v84 = v234;
  *v234 = 0;
  *(v84 + 8) = 0;
  v85 = v83[5];
  v86 = sub_2BFDD8();
  v87 = *(v86 - 8);
  v199 = *(v87 + 56);
  v198 = v87 + 56;
  v199(v84 + v85, 1, 1, v86);
  *(v84 + v83[6]) = 0;
  sub_10F2E8(v84, v80, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
  v88 = sub_5C158(0, 1, 1, _swiftEmptyArrayStorage);
  v90 = v88[2];
  v89 = v88[3];
  if (v90 >= v89 >> 1)
  {
    v88 = sub_5C158((v89 > 1), v90 + 1, 1, v88);
  }

  v88[2] = v90 + 1;
  v91 = (*(v220 + 80) + 32) & ~*(v220 + 80);
  v220 = *(v220 + 72);
  sub_112864(v80, v88 + v91 + v220 * v90, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
  v92 = v222;
  sub_6932C(v223, v222, &qword_3C15B0, &unk_2ECA80);
  v93 = v233;
  v94 = (*(v221 + 48))(v92, 1, v233);
  v95 = v238;
  v96 = v224;
  v97 = v225;
  if (v94 == 1)
  {
    sub_69198(v92, &qword_3C15B0, &unk_2ECA80);
  }

  else
  {
    v98 = v92;
    v99 = v210;
    sub_112864(v98, v210, type metadata accessor for SeriesRoomPageIntent);
    v100 = (v99 + v93[6]);
    if (v100[1])
    {
      v223 = v100[1];
      v217 = v91;
      v222 = *v100;
      v101 = v95;
      v102 = v201;
      sub_6932C(v99 + v93[7], v201, &qword_3BF478, &unk_2EB5E0);
      v103 = v235;
      if ((*(v235 + 48))(v102, 1, v101) != 1)
      {
        v232 = v88;
        v116 = v202;
        (*(v103 + 32))(v202, v102, v101);
        v117 = v203;
        v118 = v208;
        v208(v203, v116, v101);
        v119 = v188;
        v118(v188, v117, v101);
        v120 = (*(v103 + 88))(v119, v101);
        v121 = v101;
        v183 = v86;
        if (v120 == enum case for SeriesType.audiobook(_:))
        {
          v122 = v216;
          v123 = v191;
          v124 = v230;
          (*(v216 + 104))(v191, enum case for ContentKind.audiobook(_:), v230);
          (*(v122 + 56))(v123, 0, 1, v124);

          v125 = v186;
          v88 = v232;
          v91 = v217;
        }

        else
        {
          v122 = v216;
          v125 = v186;
          v88 = v232;
          v91 = v217;
          v124 = v230;
          v123 = v191;
          if (v120 == enum case for SeriesType.book(_:))
          {
            (*(v216 + 104))(v191, enum case for ContentKind.regularBook(_:), v230);
            (*(v122 + 56))(v123, 0, 1, v124);
          }

          else
          {
            (*(v216 + 56))(v191, 1, 1, v230);

            v211(v188, v121);
          }
        }

        sub_6932C(v123, v125, &qword_3C1630, &qword_2EB5D8);
        if ((*(v122 + 48))(v125, 1, v124) == 1)
        {

          sub_69198(v123, &qword_3C1630, &qword_2EB5D8);
          v155 = v211;
          v211(v203, v121);
          v155(v202, v121);
          sub_10F288(v210, type metadata accessor for SeriesRoomPageIntent);
          sub_69198(v125, &qword_3C1630, &qword_2EB5D8);
          goto LABEL_32;
        }

        (*(v122 + 32))(v192, v125, v124);
        v156 = v208;
        v208(v209, v203, v121);
        sub_72084(v97, v97[3]);
        v157 = sub_2BF3B8();
        v231 = v158;
        v232 = v157;
        sub_72084(v97, v97[3]);
        v159 = v236;
        v160 = v237;
        v161 = v233;
        v162 = v238;
        sub_2BF278();
        v213(v159, 0, 1, v162);
        v163 = v187;
        v194(&v187[v161[9]], v196, v195);
        v235 = v161[8];
        v229 = sub_2C1AE8();
        v164 = v223;
        *v163 = v222;
        *(v163 + 1) = v164;
        v165 = v209;
        v156(&v163[v161[5]], v209, v162);
        v166 = &v163[v161[6]];
        v167 = v231;
        *v166 = v232;
        *(v166 + 1) = v167;
        sub_6932C(v159, &v163[v161[7]], &qword_3BF478, &unk_2EB5E0);
        v168 = sub_2C1AE8();
        sub_69198(v159, &qword_3BF478, &unk_2EB5E0);
        v211(v165, v162);

        *&v163[v235] = v168;
        v169 = v230;
        v170 = v185;
        (*(v216 + 16))(v185 + v160[7], v192, v230);
        v171 = (v170 + v160[8]);
        v172 = v200;
        v171[3] = v161;
        v171[4] = v172;
        v173 = sub_720C8(v171);
        sub_10F2E8(v163, v173, type metadata accessor for SeriesRoomPageIntent);
        *v170 = 0;
        v170[1] = 0;
        v199(v170 + v160[5], 1, 1, v183);
        *(v170 + v160[6]) = 0;
        v174 = v184;
        sub_10F2E8(v170, v184, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
        v176 = v88[2];
        v175 = v88[3];
        if (v176 >= v175 >> 1)
        {
          v88 = sub_5C158((v175 > 1), v176 + 1, 1, v88);
        }

        v91 = v217;
        v177 = v191;
        v178 = v220;
        sub_10F288(v185, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
        (*(v216 + 8))(v192, v169);
        sub_69198(v177, &qword_3C1630, &qword_2EB5D8);
        v179 = v238;
        v180 = v211;
        v211(v203, v238);
        v180(v202, v179);
        sub_10F288(v210, type metadata accessor for SeriesRoomPageIntent);
        v88[2] = v176 + 1;
        sub_112864(v174, v88 + v91 + v176 * v178, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
        v154 = v187;
        goto LABEL_31;
      }

      sub_10F288(v99, type metadata accessor for SeriesRoomPageIntent);
      sub_69198(v102, &qword_3BF478, &unk_2EB5E0);
      v95 = v101;
      v91 = v217;
    }

    else
    {
      sub_10F288(v99, type metadata accessor for SeriesRoomPageIntent);
    }
  }

  sub_72084(v97, v97[3]);
  sub_2BF2B8();
  v105 = v231;
  v104 = v232;
  if ((*(v231 + 48))(v96, 1, v232) != 1)
  {
    v183 = v86;
    v217 = v91;
    (*(v105 + 32))(v229, v96, v104);
    v106 = v215;
    v107 = v213;
    v213(v215, 1, 1, v95);
    v108 = v228;
    sub_2BF608();
    v109 = v216;
    v110 = v205;
    v111 = v108;
    v112 = v230;
    v223 = *(v216 + 16);
    v224 = (v216 + 16);
    v223(v205, v111, v230);
    v113 = (*(v109 + 88))(v110, v112);
    if (v113 == enum case for ContentKind.audiobook(_:))
    {
      sub_69198(v106, &qword_3BF478, &unk_2EB5E0);
      v114 = v235;
      (*(v235 + 104))(v106, enum case for SeriesType.audiobook(_:), v95);
      v107(v106, 0, 1, v95);
      v115 = v204;
    }

    else
    {
      v115 = v204;
      if (v113 == enum case for ContentKind.regularBook(_:))
      {
        v106 = v215;
        sub_69198(v215, &qword_3BF478, &unk_2EB5E0);
        v114 = v235;
        (*(v235 + 104))(v106, enum case for SeriesType.book(_:), v95);
        v107 = v213;
        v213(v106, 0, 1, v95);
      }

      else
      {
        (*(v109 + 8))(v110, v230);
        v106 = v215;
        v107 = v213;
        v114 = v235;
      }
    }

    sub_6932C(v106, v115, &qword_3BF478, &unk_2EB5E0);
    if ((*(v114 + 48))(v115, 1, v95) == 1)
    {
      (*(v109 + 8))(v228, v230);
      sub_69198(v106, &qword_3BF478, &unk_2EB5E0);
      (*(v231 + 8))(v229, v232);
      sub_69198(v115, &qword_3BF478, &unk_2EB5E0);
      v91 = v217;
      goto LABEL_32;
    }

    v126 = *(v114 + 32);
    v127 = v107;
    v128 = v206;
    v126(v206, v115, v95);
    v235 = sub_2BF618();
    v222 = v129;
    v130 = v208;
    v208(v209, v128, v95);
    sub_72084(v97, v97[3]);
    v221 = sub_2BF3B8();
    v132 = v131;
    sub_72084(v97, v97[3]);
    v133 = v236;
    v134 = v233;
    v135 = v238;
    sub_2BF278();
    v127(v133, 0, 1, v135);
    v136 = v207;
    v194(v207 + v134[9], v196, v195);
    v225 = v134[8];
    v137 = sub_2C1AE8();
    v138 = v222;
    *v136 = v235;
    v136[1] = v138;
    v139 = v209;
    v130(v136 + v134[5], v209, v135);
    v140 = (v136 + v134[6]);
    *v140 = v221;
    v140[1] = v132;
    sub_6932C(v133, v136 + v134[7], &qword_3BF478, &unk_2EB5E0);
    v141 = sub_2C1AE8();
    sub_69198(v133, &qword_3BF478, &unk_2EB5E0);
    v142 = v139;
    v143 = v135;
    v211(v142, v135);

    *(v225 + v136) = v141;
    v144 = v237;
    v145 = v230;
    v146 = v189;
    v223(&v189[v237[7]], v228, v230);
    v147 = (v146 + v144[8]);
    v148 = v200;
    v147[3] = v134;
    v147[4] = v148;
    v149 = sub_720C8(v147);
    sub_10F2E8(v136, v149, type metadata accessor for SeriesRoomPageIntent);
    *v146 = 0;
    v146[1] = 0;
    v199(v146 + v144[5], 1, 1, v183);
    *(v146 + v144[6]) = 0;
    v150 = v190;
    sub_10F2E8(v146, v190, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
    v152 = v88[2];
    v151 = v88[3];
    if (v152 >= v151 >> 1)
    {
      v88 = sub_5C158((v151 > 1), v152 + 1, 1, v88);
    }

    v91 = v217;
    v153 = v220;
    sub_10F288(v146, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
    v211(v206, v143);
    (*(v216 + 8))(v228, v145);
    sub_69198(v215, &qword_3BF478, &unk_2EB5E0);
    (*(v231 + 8))(v229, v232);
    v88[2] = v152 + 1;
    sub_112864(v150, v88 + v91 + v152 * v153, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
    v154 = v207;
LABEL_31:
    sub_10F288(v154, type metadata accessor for SeriesRoomPageIntent);
    v84 = v234;
    goto LABEL_32;
  }

  sub_69198(v96, &qword_3C1628, &qword_2EB5D0);
LABEL_32:
  v181 = v88[2];
  v239[0] = v88 + v91;
  v239[1] = v181;
  sub_10F9B4(v239);
  sub_10F2E8(v84, v226, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
  sub_10F240(&unk_3C03F0, type metadata accessor for SeriesRoomListHeaderSegmentedItem, &protocol conformance descriptor for SeriesRoomListHeaderSegmentedItem);
  sub_2C1C38();
  return sub_10F288(v84, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
}

uint64_t sub_10A6B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_6620C(&unk_3CA260, &qword_2E3930);
  __chkstk_darwin(v5 - 8);
  v7 = v15 - v6;
  v8 = sub_2C4BF8();
  __chkstk_darwin(v8 - 8);
  sub_691F8(a2, v16);
  v17[3] = type metadata accessor for SeriesRoomPageIntent(0);
  v17[4] = sub_10F240(&qword_3BD300, type metadata accessor for SeriesRoomPageIntent, &protocol conformance descriptor for SeriesRoomPageIntent);
  v9 = sub_720C8(v17);
  sub_10F2E8(a3, v9, type metadata accessor for SeriesRoomPageIntent);
  v16[40] = 0;
  v10 = sub_2C4BE8();
  v15[3] = &type metadata for SeriesListShelfUpdateIntent;
  v15[4] = sub_112718(v10, v11, v12);
  v15[0] = swift_allocObject();
  sub_1127B4(v16, v15[0] + 16);
  v13 = sub_2BF088();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  type metadata accessor for Page(0);
  type metadata accessor for Shelf(0);
  sub_10F240(&qword_3BD4F0, type metadata accessor for Page, &protocol conformance descriptor for Page);
  sub_10F240(&qword_3BD4F8, type metadata accessor for Shelf, &protocol conformance descriptor for Shelf);
  sub_2C10E8();
  return sub_112810(v16);
}

uint64_t SeriesRoomPageIntentImplementation.performSync(_:objectGraph:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a3;
  v40 = type metadata accessor for Page(0);
  v38 = *(v40 - 8);
  __chkstk_darwin(v40);
  v48 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_6620C(&qword_3BFEC0, &unk_2EB230);
  __chkstk_darwin(v6 - 8);
  v8 = &v38 - v7;
  v9 = sub_2C4BB8();
  v46 = *(v9 - 8);
  v47 = v9;
  __chkstk_darwin(v9);
  v43 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2BEF78();
  v44 = *(v11 - 8);
  v45 = v11;
  __chkstk_darwin(v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_6620C(&qword_3BE238, &unk_2E8260);
  __chkstk_darwin(v14 - 8);
  v16 = &v38 - v15;
  sub_6620C(&qword_3BDAC0, &unk_2E4D90);
  sub_2C4DB8();
  v18 = v51;
  v17 = v52;
  sub_72084((v50 + 1), v51);
  v42 = a1;
  v19 = *a1;
  v20 = a1[1];
  v54 = 4;
  (*(v17 + 16))(v53, v19, v20, &v54, v18, v17);
  sub_68CD0((v50 + 1));
  if (v53[3] || (v21 = [objc_opt_self() isOffline], (v21 & 1) == 0))
  {
    sub_6620C(&qword_3BE240, &qword_2E5AC0);
    v41 = a2;
    sub_2C4DB8();
    v26 = v51;
    v27 = v52;
    sub_72084((v50 + 1), v51);
    (*(v27 + 24))(v50, v19, v20, v26, v27);
    v28 = v51;
    v29 = v52;
    sub_72084((v50 + 1), v51);
    (*(v29 + 32))(v19, v20, v28, v29);

    sub_2BEF48();
    v30 = type metadata accessor for SeriesRoomPageIntent(0);
    v31 = sub_2C54D8();
    (*(*(v31 - 8) + 56))(v8, 1, 1, v31);
    v32 = v13;
    v33 = v42;
    v34 = v43;
    sub_2C2108();
    sub_69198(v8, &qword_3BFEC0, &unk_2EB230);
    v36 = v48;
    v35 = v49;
    sub_106124(*(v33 + *(v30 + 32)), 0, v32, v34, v50, v16, v41, v48, (v50 + 1), v33);
    if (v35)
    {
      (*(v46 + 8))(v34, v47);
      (*(v44 + 8))(v32, v45);
      sub_69198(v16, &qword_3BE238, &unk_2E8260);
      sub_69198(v53, &qword_3BDAC8, &qword_2E9FF0);
      v54 = v35;
      swift_errorRetain();
      sub_6620C(&unk_3BF5A0, &qword_2EC790);
      if (swift_dynamicCast())
      {

        (*(v38 + 56))(v39, 1, 1, v40);
      }
    }

    else
    {
      (*(v46 + 8))(v34, v47);
      (*(v44 + 8))(v32, v45);
      sub_69198(v16, &qword_3BE238, &unk_2E8260);
      sub_69198(v53, &qword_3BDAC8, &qword_2E9FF0);
      v37 = v39;
      sub_112864(v36, v39, type metadata accessor for Page);
      (*(v38 + 56))(v37, 0, 1, v40);
    }

    return sub_68CD0((v50 + 1));
  }

  else
  {
    sub_10AFE0(v21, v22, v23);
    swift_allocError();
    *v24 = 3;
    swift_willThrow();
    return sub_69198(v53, &qword_3BDAC8, &qword_2E9FF0);
  }
}

unint64_t sub_10AFE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C13B0;
  if (!qword_3C13B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C13B0);
  }

  return result;
}

unint64_t sub_10B050@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v46 = a1;
  v47 = a2;
  v4 = sub_6620C(&qword_3BE238, &unk_2E8260);
  __chkstk_darwin(v4 - 8);
  v45 = &v39 - v5;
  v6 = sub_2BF4E8();
  v41 = *(v6 - 8);
  v42 = v6;
  __chkstk_darwin(v6);
  v40 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2BF368();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6620C(&unk_3C43A0, &unk_2EB530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2E9090;
  *(inited + 32) = 0x4449736569726573;
  v44 = inited + 32;
  *(inited + 40) = 0xE800000000000000;
  v13 = *v2;
  v14 = v2[1];
  *(inited + 48) = v13;
  *(inited + 56) = v14;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x7954736569726573;
  *(inited + 88) = 0xEA00000000006570;
  v39 = type metadata accessor for SeriesRoomPageIntentImplementation.JSSeriesRoomPageIntent(0);
  (*(v9 + 104))(v11, enum case for SeriesType.audiobook(_:), v8);
  sub_10F240(&qword_3C1560, &type metadata accessor for SeriesType, &protocol conformance descriptor for SeriesType);

  v43 = v3;
  sub_2C5A88();
  sub_2C5A88();
  if (v50 == v48 && v51 == v49)
  {
    (*(v9 + 8))(v11, v8);

LABEL_5:
    sub_2BF5B8();
    v16 = v40;
    sub_2BF5A8();
    goto LABEL_7;
  }

  v15 = sub_2C65B8();
  (*(v9 + 8))(v11, v8);

  if (v15)
  {
    goto LABEL_5;
  }

  sub_2BF428();
  v16 = v40;
  sub_2BF418();
LABEL_7:
  v17 = v45;
  v18 = sub_2BF4D8();
  v20 = v19;
  (*(v41 + 8))(v16, v42);
  *(inited + 96) = v18;
  *(inited + 104) = v20;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0x7344496D616461;
  *(inited + 136) = 0xE700000000000000;
  v21 = v39;
  v22 = v43;
  v23 = *(v43 + *(v39 + 24));
  v24 = sub_6620C(&qword_3BCA70, &unk_2E7120);
  v25 = _swiftEmptyArrayStorage;
  if (v23)
  {
    v25 = v23;
  }

  *(inited + 144) = v25;
  *(inited + 168) = v24;
  *(inited + 176) = 0x6564724F74726F73;
  *(inited + 184) = 0xE900000000000072;
  sub_6932C(v22 + *(v21 + 28), v17, &qword_3BE238, &unk_2E8260);
  v26 = sub_2BF738();
  v27 = *(v26 - 8);
  v28 = (*(v27 + 48))(v17, 1, v26);

  if (v28 == 1)
  {
    sub_69198(v17, &qword_3BE238, &unk_2E8260);
    v29 = (inited + 192);
    *(inited + 216) = &type metadata for String;
LABEL_13:
    *v29 = 0;
    v32 = 0xE000000000000000;
    goto LABEL_14;
  }

  v30 = sub_2BF728();
  v32 = v31;
  (*(v27 + 8))(v17, v26);
  v29 = (inited + 192);
  *(inited + 216) = &type metadata for String;
  if (!v32)
  {
    goto LABEL_13;
  }

  *v29 = v30;
LABEL_14:
  *(inited + 200) = v32;
  v33 = sub_67AC8(inited);
  swift_setDeallocating();
  sub_6620C(&qword_3BC220, &qword_2F0750);
  swift_arrayDestroy();
  v50 = v33;
  sub_6620C(&qword_3BD860, &qword_2EB540);
  v34 = sub_2C6658();
  v35 = [objc_opt_self() valueWithObject:v34 inContext:v46];
  swift_unknownObjectRelease();
  v36 = sub_6620C(&qword_3C13F8, &qword_2EB270);
  v37 = v47;
  v47[3] = v36;
  result = sub_111BE4();
  v37[4] = result;
  *v37 = v35;
  return result;
}

void sub_10B658(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = type metadata accessor for Page(0);
  __chkstk_darwin(v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_6620C(&qword_3C1568, &qword_2EB548);
  v21 = *(v7 - 8);
  v22 = v7;
  __chkstk_darwin(v7);
  v9 = &v20 - v8;
  v10 = type metadata accessor for SeriesRoomPageIntentImplementation.SeriesRoomPage(0);
  __chkstk_darwin(v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2BF8D8();
  v13 = sub_2C1AE8();
  v23 = a1;
  v24 = v13;
  v14 = sub_72084(a1, a1[3]);
  sub_11242C(v14, v15, v16);
  sub_2C67A8();
  if (v2)
  {
    v18 = v24;
    sub_68CD0(v23);
  }

  else
  {
    v17 = v21;
    LOBYTE(v26) = 0;
    sub_10F240(&qword_3C1578, type metadata accessor for Page, &protocol conformance descriptor for Page);
    sub_2C64A8();
    sub_112864(v6, v12, type metadata accessor for Page);
    sub_6620C(&qword_3BF498, &qword_2EB550);
    v25 = 1;
    sub_72B74(&qword_3BF4A0, &qword_3BF498, &qword_2EB550, &protocol conformance descriptor for _MResourceDecoder_OrNil<A>);
    sub_2C64A8();

    *&v12[*(v10 + 20)] = v26;
    sub_6620C(&qword_3C1580, &unk_2EB558);
    v25 = 2;
    sub_72B74(&qword_3C1588, &qword_3C1580, &unk_2EB558, &protocol conformance descriptor for _MResourceDecoder_Many<A>);
    v19 = v22;
    sub_2C64A8();
    (*(v17 + 8))(v9, v19);
    *&v12[*(v10 + 24)] = v26;
    sub_10F2E8(v12, v20, type metadata accessor for SeriesRoomPageIntentImplementation.SeriesRoomPage);
    sub_68CD0(v23);
    sub_10F288(v12, type metadata accessor for SeriesRoomPageIntentImplementation.SeriesRoomPage);
  }
}

unint64_t sub_10BA94()
{
  v1 = 0xD000000000000013;
  if (*v0 != 1)
  {
    v1 = 0x737465737361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701273968;
  }
}

uint64_t sub_10BAE8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1129E4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10BB10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_11242C(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_10BB4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_11242C(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t SeriesRoomPageIntentImplementation.perform(_:objectGraph:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[74] = a3;
  v3[73] = a2;
  v3[72] = a1;
  v4 = type metadata accessor for Page(0);
  v3[75] = v4;
  v3[76] = *(v4 - 8);
  v3[77] = swift_task_alloc();
  v3[78] = swift_task_alloc();
  v3[79] = swift_task_alloc();
  v5 = sub_2C4BB8();
  v3[80] = v5;
  v3[81] = *(v5 - 8);
  v3[82] = swift_task_alloc();
  v3[83] = swift_task_alloc();
  v6 = sub_2BEF78();
  v3[84] = v6;
  v3[85] = *(v6 - 8);
  v3[86] = swift_task_alloc();
  v3[87] = swift_task_alloc();
  sub_6620C(&qword_3BFEC0, &unk_2EB230);
  v3[88] = swift_task_alloc();
  v3[89] = swift_task_alloc();
  v3[90] = type metadata accessor for SeriesRoomPageIntentImplementation.SeriesRoomPage(0);
  v3[91] = swift_task_alloc();
  v3[92] = sub_6620C(&qword_3C13B8, &qword_2EB248);
  v3[93] = swift_task_alloc();
  v3[94] = swift_task_alloc();
  v7 = sub_2BF368();
  v3[95] = v7;
  v3[96] = *(v7 - 8);
  v3[97] = swift_task_alloc();
  v3[98] = type metadata accessor for SeriesRoomPageIntentImplementation.JSSeriesRoomPageIntent(0);
  v3[99] = swift_task_alloc();
  v8 = sub_2BF738();
  v3[100] = v8;
  v3[101] = *(v8 - 8);
  v3[102] = swift_task_alloc();
  sub_6620C(&qword_3BE238, &unk_2E8260);
  v3[103] = swift_task_alloc();
  v3[104] = swift_task_alloc();
  v3[105] = swift_task_alloc();
  v9 = sub_2C4C48();
  v3[106] = v9;
  v3[107] = *(v9 - 8);
  v3[108] = swift_task_alloc();
  v10 = sub_6620C(&qword_3C13C0, &qword_2EB250);
  v3[109] = v10;
  v3[110] = *(v10 - 8);
  v3[111] = swift_task_alloc();
  v11 = sub_2C4E88();
  v3[112] = v11;
  v3[113] = *(v11 - 8);
  v3[114] = swift_task_alloc();
  v3[115] = swift_task_alloc();
  sub_6620C(&qword_3C13C8, &qword_2EB258);
  v3[116] = swift_task_alloc();
  v3[117] = swift_task_alloc();
  v3[118] = swift_task_alloc();
  sub_6620C(&qword_3C13D0, &qword_2EB260);
  v3[119] = swift_task_alloc();
  v12 = sub_2C54A8();
  v3[120] = v12;
  v3[121] = *(v12 - 8);
  v3[122] = swift_task_alloc();
  v3[123] = swift_task_alloc();
  v13 = sub_6620C(&qword_3BE240, &qword_2E5AC0);
  v14 = swift_task_alloc();
  v3[124] = v14;
  *v14 = v3;
  v14[1] = sub_10C1BC;

  return BaseObjectGraph.inject<A>(_:)(v3 + 8, v13, v13);
}

uint64_t sub_10C1BC()
{
  *(*v1 + 1000) = v0;

  if (v0)
  {
    v2 = sub_10E490;
  }

  else
  {
    v2 = sub_10C2D0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10C2D0()
{
  v1 = v0[73];
  sub_6620C(&qword_3BDAC0, &unk_2E4D90);
  sub_2C4E28();
  sub_2C5668();
  v2 = v0[21];
  v3 = v0[22];
  sub_72084(v0 + 18, v2);
  v4 = *v1;
  v0[126] = *v1;
  v5 = v1[1];
  v0[127] = v5;
  v0[70] = 4;
  v8 = (*(v3 + 8) + **(v3 + 8));
  v6 = swift_task_alloc();
  v0[128] = v6;
  *v6 = v0;
  v6[1] = sub_10C468;

  return v8(v0 + 13, v4, v5, v0 + 70, v2, v3);
}

uint64_t sub_10C468()
{

  return _swift_task_switch(sub_10C564, 0, 0);
}

uint64_t sub_10C564()
{
  v1 = *(v0 + 968);
  v2 = *(v0 + 960);
  v3 = *(v0 + 952);
  sub_68CD0((v0 + 144));
  sub_2C4E18();
  v4 = *(v1 + 48);
  v5 = v4(v3, 1, v2);
  v6 = *(v0 + 984);
  v7 = *(v0 + 968);
  v8 = *(v0 + 960);
  v9 = *(v0 + 952);
  if (v5 == 1)
  {
    (*(v7 + 104))(v6, enum case for PageIntentInstrumentation.notInstrumented(_:), *(v0 + 960));
    if (v4(v9, 1, v8) != 1)
    {
      sub_69198(*(v0 + 952), &qword_3C13D0, &qword_2EB260);
    }
  }

  else
  {
    (*(v7 + 32))(v6, *(v0 + 952), *(v0 + 960));
  }

  v10 = *(v0 + 976);
  v11 = *(v0 + 968);
  v12 = *(v0 + 960);
  (*(v11 + 16))(v10, *(v0 + 984), v12);
  v13 = (*(v11 + 88))(v10, v12);
  if (v13 == enum case for PageIntentInstrumentation.primaryData(_:))
  {
    v14 = *(v0 + 976);
    v15 = *(v0 + 944);
    v16 = *(v0 + 904);
    v17 = *(v0 + 896);
    (*(*(v0 + 968) + 96))(v14, *(v0 + 960));
    (*(v16 + 32))(v15, v14, v17);
    (*(v16 + 56))(v15, 0, 1, v17);
  }

  else if (v13 == enum case for PageIntentInstrumentation.secondaryData(_:))
  {
    v18 = *(v0 + 976);
    v19 = *(v0 + 968);
    v20 = *(v0 + 960);
    (*(*(v0 + 904) + 56))(*(v0 + 944), 1, 1, *(v0 + 896));
    (*(v19 + 8))(v18, v20);
  }

  else
  {
    v21 = enum case for PageIntentInstrumentation.notInstrumented(_:);
    v22 = v13;
    (*(*(v0 + 904) + 56))(*(v0 + 944), 1, 1, *(v0 + 896));
    if (v22 != v21)
    {
      (*(*(v0 + 968) + 8))(*(v0 + 976), *(v0 + 960));
    }
  }

  v23 = *(v0 + 936);
  v24 = *(v0 + 904);
  v25 = *(v0 + 896);
  sub_6932C(*(v0 + 944), v23, &qword_3C13C8, &qword_2EB258);
  v26 = *(v24 + 48);
  *(v0 + 1032) = v26;
  *(v0 + 1040) = (v24 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v26(v23, 1, v25) == 1)
  {
    sub_69198(*(v0 + 936), &qword_3C13C8, &qword_2EB258);
  }

  else
  {
    (*(*(v0 + 904) + 32))(*(v0 + 920), *(v0 + 936), *(v0 + 896));
    if (qword_3BB948 != -1)
    {
      swift_once();
    }

    v27 = *(v0 + 920);
    v28 = *(v0 + 904);
    v29 = *(v0 + 888);
    v30 = *(v0 + 880);
    v31 = *(v0 + 872);
    v32 = *(v0 + 864);
    v33 = *(v0 + 856);
    v47 = *(v0 + 848);
    v48 = *(v0 + 896);
    v34 = *(v0 + 584);
    v35 = sub_57AD8(v31, qword_3E8978);
    (*(v30 + 16))(v29, v35, v31);
    if (*(v34 + *(type metadata accessor for SeriesRoomPageIntent(0) + 32)) | *(v0 + 128))
    {
      v36 = 1;
    }

    else
    {
      v36 = 2;
    }

    *(v0 + 58) = v36;
    sub_2C4E78();
    v37 = sub_2C4C38();
    sub_111B90(v37, v38, v39);
    sub_2C4EC8();

    (*(v33 + 8))(v32, v47);
    (*(v30 + 8))(v29, v31);
    (*(v28 + 8))(v27, v48);
  }

  v40 = *(v0 + 88);
  v41 = *(v0 + 96);
  sub_72084((v0 + 64), v40);
  v49 = (*(v41 + 64) + **(v41 + 64));
  v42 = swift_task_alloc();
  *(v0 + 1048) = v42;
  *v42 = v0;
  v42[1] = sub_10CAE4;
  v43 = *(v0 + 1016);
  v44 = *(v0 + 1008);
  v45 = *(v0 + 840);

  return v49(v45, v44, v43, v40, v41);
}

uint64_t sub_10CAE4()
{

  return _swift_task_switch(sub_10CBE0, 0, 0);
}

uint64_t sub_10CBE0()
{
  v1 = *(v0 + 11);
  v2 = *(v0 + 12);
  sub_72084(v0 + 8, v1);
  v7 = (*(v2 + 56) + **(v2 + 56));
  v3 = swift_task_alloc();
  *(v0 + 132) = v3;
  *v3 = v0;
  v3[1] = sub_10CD14;
  v4 = *(v0 + 127);
  v5 = *(v0 + 126);

  return v7(v0 + 57, v5, v4, v1, v2);
}

uint64_t sub_10CD14()
{

  return _swift_task_switch(sub_10CE10, 0, 0);
}

uint64_t sub_10CE10()
{
  *(v0 + 59) = *(v0 + 57);
  sub_6932C(v0 + 104, v0 + 224, &qword_3BDAC8, &qword_2E9FF0);
  if (!*(v0 + 248))
  {
    sub_69198(v0 + 224, &qword_3BDAC8, &qword_2E9FF0);
LABEL_7:
    v6 = _swiftEmptyArrayStorage;
    goto LABEL_8;
  }

  sub_68D1C((v0 + 224), v0 + 184);
  sub_2BF7A8();
  if (!*(v0 + 448))
  {
    sub_69198(v0 + 424, &qword_3BDAD0, &qword_2E4DA0);
    sub_68CD0((v0 + 184));
    goto LABEL_7;
  }

  v1 = *(v0 + 1000);
  sub_68D1C((v0 + 424), v0 + 384);
  sub_72084((v0 + 384), *(v0 + 408));
  sub_2BF328();
  if (v1)
  {
    v2 = *(v0 + 984);
    v3 = *(v0 + 968);
    v4 = *(v0 + 960);
    v5 = *(v0 + 944);
    sub_69198(*(v0 + 840), &qword_3BE238, &unk_2E8260);
    sub_69198(v5, &qword_3C13C8, &qword_2EB258);
    (*(v3 + 8))(v2, v4);
    sub_68CD0((v0 + 384));
    sub_68CD0((v0 + 184));
    sub_69198(v0 + 104, &qword_3BDAC8, &qword_2E9FF0);
    sub_68CD0((v0 + 64));

    v58 = *(v0 + 8);

    return v58();
  }

  v31 = *(v0 + 840);
  v32 = *(v0 + 832);
  v33 = *(v0 + 808);
  v34 = *(v0 + 800);
  swift_getAssociatedTypeWitness();
  sub_6620C(&qword_3BC2C8, &qword_2E2FA0);
  v35 = sub_2C6358();

  sub_1F9C0C(v35);

  sub_6932C(v31, v32, &qword_3BE238, &unk_2E8260);
  v36 = *(v33 + 48);
  v37 = v36(v32, 1, v34);
  v38 = *(v0 + 816);
  v39 = *(v0 + 808);
  v40 = *(v0 + 800);
  if (v37 == 1)
  {
    v69 = *(v0 + 832);
    sub_72084((v0 + 184), *(v0 + 208));
    v41 = sub_2BF6C8();
    v42 = &enum case for SeriesListSortOrder.ascending(_:);
    if ((v41 & 1) == 0)
    {
      v42 = &enum case for SeriesListSortOrder.popular(_:);
    }

    (*(v39 + 104))(v38, *v42, v40);
    if (v36(v69, 1, v40) != 1)
    {
      sub_69198(*(v0 + 832), &qword_3BE238, &unk_2E8260);
    }
  }

  else
  {
    (*(v39 + 32))(*(v0 + 816), *(v0 + 832), *(v0 + 800));
  }

  v43 = *(v0 + 816);
  v44 = *(v0 + 808);
  v45 = *(v0 + 800);
  v46 = sub_2BF708();

  (*(v44 + 8))(v43, v45);
  v47 = *(v46 + 16);
  if (v47 >= 0xA)
  {
    v48 = 10;
  }

  else
  {
    v48 = *(v46 + 16);
  }

  if (v47)
  {
    v49 = v46 + 32;
    sub_649D4(0, v48, 0);
    v6 = _swiftEmptyArrayStorage;
    do
    {
      sub_691F8(v49, v0 + 464);
      sub_72084((v0 + 464), *(v0 + 488));
      v50 = sub_2BF3B8();
      v52 = v51;
      sub_68CD0((v0 + 464));
      v54 = _swiftEmptyArrayStorage[2];
      v53 = _swiftEmptyArrayStorage[3];
      if (v54 >= v53 >> 1)
      {
        sub_649D4((v53 > 1), v54 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v54 + 1;
      v55 = &_swiftEmptyArrayStorage[2 * v54];
      v55[4] = v50;
      v55[5] = v52;
      v49 += 40;
      --v48;
    }

    while (v48);
  }

  else
  {

    v6 = _swiftEmptyArrayStorage;
  }

  v56 = *(v0 + 408);
  v57 = *(v0 + 416);
  sub_72084((v0 + 384), v56);
  SeriesInfo.getPromotionState()(v56, v57, (v0 + 16));
  if (*(v0 + 56) == 4)
  {
    sub_68D1C((v0 + 16), v0 + 504);
    sub_72084((v0 + 504), *(v0 + 528));
    *(v0 + 544) = sub_2BF3B8();
    *(v0 + 552) = v59;
    v60 = swift_task_alloc();
    *(v60 + 16) = v0 + 544;
    v61 = sub_10F908(sub_111B38, v60, _swiftEmptyArrayStorage);

    if ((v61 & 1) == 0)
    {
      sub_72084((v0 + 504), *(v0 + 528));
      v62 = sub_2BF3B8();
      v64 = v63;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_5BB78(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
      }

      v66 = *(v6 + 2);
      v65 = *(v6 + 3);
      if (v66 >= v65 >> 1)
      {
        v6 = sub_5BB78((v65 > 1), v66 + 1, 1, v6);
      }

      *(v6 + 2) = v66 + 1;
      v67 = &v6[16 * v66];
      *(v67 + 4) = v62;
      *(v67 + 5) = v64;
    }

    sub_68CD0((v0 + 504));
  }

  else
  {
    sub_9150C(v0 + 16);
  }

  sub_68CD0((v0 + 384));
  sub_68CD0((v0 + 184));
LABEL_8:
  v7 = *(v0 + 776);
  v8 = *(v0 + 768);
  v9 = *(v0 + 760);
  v10 = *(v0 + 584);
  v11 = type metadata accessor for SeriesRoomPageIntent(0);
  *(v0 + 1064) = v11;
  (*(v8 + 16))(v7, v10 + *(v11 + 20), v9);
  if (!*(v6 + 2))
  {

    v6 = 0;
    if (*(v0 + 128))
    {
      goto LABEL_10;
    }

LABEL_12:
    sub_6932C(*(v0 + 840), *(v0 + 824), &qword_3BE238, &unk_2E8260);
    goto LABEL_13;
  }

  if (!*(v0 + 128))
  {
    goto LABEL_12;
  }

LABEL_10:
  v12 = *(v0 + 824);
  v13 = *(v0 + 808);
  v14 = *(v0 + 800);
  (*(v13 + 104))(v12, enum case for SeriesListSortOrder.releaseDate(_:), v14);
  (*(v13 + 56))(v12, 0, 1, v14);
LABEL_13:
  v15 = *(v0 + 1016);
  v16 = *(v0 + 824);
  v17 = *(v0 + 792);
  v18 = *(v0 + 784);
  v19 = *(v0 + 776);
  v20 = *(v0 + 768);
  v21 = *(v0 + 760);
  *v17 = *(v0 + 1008);
  *(v17 + 1) = v15;
  (*(v20 + 32))(&v17[v18[5]], v19, v21);
  *&v17[v18[6]] = v6;
  sub_69130(v16, &v17[v18[7]], &qword_3BE238, &unk_2E8260);
  v22 = [objc_opt_self() sharedInstance];
  *(v0 + 1072) = v22;
  *(v0 + 568) = v22;
  v23 = swift_task_alloc();
  *(v0 + 1080) = v23;
  v24 = sub_10F1F4();
  v25 = sub_10F240(&qword_3C13D8, sub_10F1F4, &protocol conformance descriptor for JSABridge);
  v26 = sub_10F240(&qword_3C13E0, type metadata accessor for SeriesRoomPageIntentImplementation.JSSeriesRoomPageIntent, &unk_2EB4E0);
  *v23 = v0;
  v23[1] = sub_10D86C;
  v27 = *(v0 + 792);
  v28 = *(v0 + 784);
  v29 = *(v0 + 744);
  v30 = *(v0 + 592);

  return CustomIntentDispatcher.dispatch<A>(_:objectGraph:)(v29, v27, v30, v24, v28, v25, v26);
}

uint64_t sub_10D86C()
{
  v2 = *v1;
  *(*v1 + 1088) = v0;

  if (v0)
  {
    v3 = sub_10E688;
  }

  else
  {
    v3 = sub_10D990;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10D990()
{
  v70 = v0;
  v68 = (v0 + 64);
  v1 = *(v0 + 752);
  v2 = *(v0 + 736);
  v3 = *(v0 + 728);
  sub_69130(*(v0 + 744), v1, &qword_3C13B8, &qword_2EB248);
  sub_10F2E8(v1, v3, type metadata accessor for SeriesRoomPageIntentImplementation.SeriesRoomPage);
  v4 = *(v1 + *(v2 + 36));
  v5 = *(v4 + 16);
  v6 = sub_2C54D8();
  v7 = *(v6 - 8);
  if (v5)
  {
    (*(*(v6 - 8) + 16))(*(v0 + 712), v4 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = *(v0 + 1032);
  v10 = *(v0 + 944);
  v11 = *(v0 + 928);
  v12 = *(v0 + 896);
  (*(v7 + 56))(*(v0 + 712), v8, 1, v6);
  sub_6932C(v10, v11, &qword_3C13C8, &qword_2EB258);
  if (v9(v11, 1, v12) == 1)
  {
    sub_69198(*(v0 + 928), &qword_3C13C8, &qword_2EB258);
  }

  else
  {
    (*(*(v0 + 904) + 32))(*(v0 + 912), *(v0 + 928), *(v0 + 896));
    sub_2C4C38();
    if (qword_3BB938 != -1)
    {
      swift_once();
    }

    v13 = sub_6620C(&qword_3C13E8, &qword_2EB268);
    sub_57AD8(v13, qword_3E8948);
    sub_2C4E78();
    sub_2C4EA8();

    if (qword_3BB940 != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 912);
    v15 = *(v0 + 904);
    v16 = *(v0 + 896);
    v17 = *(v0 + 864);
    v18 = *(v0 + 856);
    v19 = *(v0 + 848);
    sub_57AD8(v13, qword_3E8960);
    sub_2C4E78();
    sub_2C4EA8();

    (*(v18 + 8))(v17, v19);
    (*(v15 + 8))(v14, v16);
  }

  v65 = *(v0 + 1088);
  v53 = *(v0 + 59);
  v62 = *(v0 + 840);
  v20 = *(v0 + 728);
  v21 = *(v0 + 720);
  v22 = *(v0 + 696);
  v23 = *(v0 + 664);
  v56 = *(v0 + 632);
  v59 = *(v0 + 592);
  v24 = *(v0 + 584);

  sub_2BEF48();
  sub_2C2108();
  v25 = *(v20 + *(v21 + 20));
  v26 = *(v20 + *(v21 + 24));
  v69[0] = v53;
  sub_106124(v25, v26, v22, v23, v69, v62, v59, v56, v68, v24);
  if (v65)
  {
    v27 = *(v0 + 968);
    v54 = *(v0 + 960);
    v57 = *(v0 + 984);
    v28 = *(v0 + 944);
    v29 = *(v0 + 840);
    v30 = *(v0 + 792);
    v60 = *(v0 + 728);
    v63 = *(v0 + 752);
    v31 = *(v0 + 712);
    v32 = *(v0 + 696);
    v33 = *(v0 + 680);
    v34 = *(v0 + 672);
    (*(*(v0 + 648) + 8))(*(v0 + 664), *(v0 + 640));
    (*(v33 + 8))(v32, v34);
    sub_10EEA0(v28);
    sub_69198(v31, &qword_3BFEC0, &unk_2EB230);
    sub_10F288(v30, type metadata accessor for SeriesRoomPageIntentImplementation.JSSeriesRoomPageIntent);
    sub_69198(v29, &qword_3BE238, &unk_2E8260);
    sub_69198(v28, &qword_3C13C8, &qword_2EB258);
    (*(v27 + 8))(v57, v54);
    sub_10F288(v60, type metadata accessor for SeriesRoomPageIntentImplementation.SeriesRoomPage);
    sub_69198(v63, &qword_3C13B8, &qword_2EB248);
    sub_69198(v0 + 104, &qword_3BDAC8, &qword_2E9FF0);
    sub_68CD0(v68);

    v35 = *(v0 + 8);
  }

  else
  {
    v66 = *(v0 + 696);
    v36 = *(v0 + 680);
    v37 = *(v0 + 672);
    v38 = *(v0 + 664);
    v39 = *(v0 + 648);
    v40 = *(v0 + 640);
    v41 = *(v0 + 632);
    v42 = *(v0 + 624);
    if (*(*(*(v0 + 728) + *(*(v0 + 600) + 60)) + 16))
    {
      sub_10F2E8(*(v0 + 632), *(v0 + 624), type metadata accessor for Page);

      sub_10F67C(v43, sub_5C10C, type metadata accessor for Shelf);
      sub_17E898();
      sub_10F288(v41, type metadata accessor for Page);
      (*(v39 + 8))(v38, v40);
      (*(v36 + 8))(v66, v37);
    }

    else
    {
      (*(v39 + 8))(*(v0 + 664), *(v0 + 640));
      (*(v36 + 8))(v66, v37);
      sub_112864(v41, v42, type metadata accessor for Page);
    }

    v61 = *(v0 + 984);
    v44 = *(v0 + 968);
    v45 = *(v0 + 944);
    v55 = *(v0 + 840);
    v58 = *(v0 + 960);
    v46 = *(v0 + 792);
    v64 = *(v0 + 728);
    v67 = *(v0 + 752);
    v47 = *(v0 + 712);
    v48 = *(v0 + 632);
    v49 = *(v0 + 608);
    v50 = *(v0 + 600);
    v51 = *(v0 + 576);
    sub_112864(*(v0 + 624), v48, type metadata accessor for Page);
    sub_112864(v48, v51, type metadata accessor for Page);
    (*(v49 + 56))(v51, 0, 1, v50);
    sub_10EEA0(v45);
    sub_69198(v47, &qword_3BFEC0, &unk_2EB230);
    sub_10F288(v46, type metadata accessor for SeriesRoomPageIntentImplementation.JSSeriesRoomPageIntent);
    sub_69198(v55, &qword_3BE238, &unk_2E8260);
    sub_69198(v45, &qword_3C13C8, &qword_2EB258);
    (*(v44 + 8))(v61, v58);
    sub_10F288(v64, type metadata accessor for SeriesRoomPageIntentImplementation.SeriesRoomPage);
    sub_69198(v67, &qword_3C13B8, &qword_2EB248);
    sub_69198(v0 + 104, &qword_3BDAC8, &qword_2E9FF0);
    sub_68CD0(v68);

    v35 = *(v0 + 8);
  }

  return v35();
}

uint64_t sub_10E490()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10E688(uint64_t a1)
{
  v38 = v1;
  if (*(*(v1 + 584) + *(*(v1 + 1064) + 24) + 8))
  {
    sub_6932C(v1 + 104, v1 + 304, &qword_3BDAC8, &qword_2E9FF0);
    if (*(v1 + 328))
    {
      v2 = *(v1 + 1064);
      v34 = *(v1 + 59);
      v35 = *(v1 + 840);
      v3 = *(v1 + 704);
      v4 = *(v1 + 688);
      v5 = *(v1 + 656);
      v30 = *(v1 + 616);
      v32 = *(v1 + 592);
      v6 = *(v1 + 584);
      sub_68D1C((v1 + 304), v1 + 264);

      sub_2BEF48();
      v7 = sub_2C54D8();
      (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
      sub_2C2108();
      sub_69198(v3, &qword_3BFEC0, &unk_2EB230);
      sub_691F8(v1 + 264, v1 + 344);
      v8 = *(v6 + *(v2 + 32));
      v37[0] = v34;
      sub_106124(v8, 0, v4, v5, v37, v35, v32, v30, (v1 + 64), v6);
      v9 = *(v1 + 968);
      v31 = *(v1 + 960);
      v33 = *(v1 + 984);
      v28 = *(v1 + 840);
      v29 = *(v1 + 944);
      v10 = *(v1 + 792);
      v11 = *(v1 + 688);
      v12 = *(v1 + 680);
      v13 = *(v1 + 672);
      v14 = *(v1 + 656);
      v15 = *(v1 + 648);
      v16 = *(v1 + 640);
      v27 = *(v1 + 616);
      v24 = *(v1 + 608);
      v36 = *(v1 + 600);
      v26 = *(v1 + 576);

      sub_69198(v1 + 344, &qword_3BDAC8, &qword_2E9FF0);
      (*(v15 + 8))(v14, v16);
      (*(v12 + 8))(v11, v13);
      sub_68CD0((v1 + 264));
      sub_10F288(v10, type metadata accessor for SeriesRoomPageIntentImplementation.JSSeriesRoomPageIntent);
      sub_69198(v28, &qword_3BE238, &unk_2E8260);
      sub_69198(v29, &qword_3C13C8, &qword_2EB258);
      (*(v9 + 8))(v33, v31);
      sub_112864(v27, v26, type metadata accessor for Page);
      (*(v24 + 56))(v26, 0, 1, v36);
      sub_69198(v1 + 104, &qword_3BDAC8, &qword_2E9FF0);
      sub_68CD0((v1 + 64));

      v25 = *(v1 + 8);
      goto LABEL_6;
    }

    sub_69198(v1 + 304, &qword_3BDAC8, &qword_2E9FF0);
  }

  v17 = *(v1 + 984);
  v18 = *(v1 + 968);
  v19 = *(v1 + 960);
  v20 = *(v1 + 944);
  v21 = *(v1 + 840);
  v22 = *(v1 + 792);
  swift_willThrow();
  sub_10F288(v22, type metadata accessor for SeriesRoomPageIntentImplementation.JSSeriesRoomPageIntent);
  sub_69198(v21, &qword_3BE238, &unk_2E8260);
  sub_69198(v20, &qword_3C13C8, &qword_2EB258);
  (*(v18 + 8))(v17, v19);
  sub_69198(v1 + 104, &qword_3BDAC8, &qword_2E9FF0);
  sub_68CD0((v1 + 64));

  v25 = *(v1 + 8);
LABEL_6:

  return v25();
}

uint64_t sub_10EEA0(uint64_t a1)
{
  v2 = sub_2C4C48();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_6620C(&qword_3C13C8, &qword_2EB258);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_2C4E88();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6932C(a1, v8, &qword_3C13C8, &qword_2EB258);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_69198(v8, &qword_3C13C8, &qword_2EB258);
  }

  (*(v10 + 32))(v12, v8, v9);
  sub_2C4C38();
  if (qword_3BB938 != -1)
  {
    swift_once();
  }

  v14 = sub_6620C(&qword_3C13E8, &qword_2EB268);
  sub_57AD8(v14, qword_3E8948);
  sub_2C4E78();
  sub_2C4E98();

  if (qword_3BB940 != -1)
  {
    swift_once();
  }

  sub_57AD8(v14, qword_3E8960);
  sub_2C4E78();
  sub_2C4E98();

  (*(v3 + 8))(v5, v2);
  return (*(v10 + 8))(v12, v9);
}

unint64_t sub_10F1F4()
{
  result = qword_3BD330;
  if (!qword_3BD330)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_3BD330);
  }

  return result;
}

uint64_t sub_10F240(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10F288(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10F2E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10F354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_7100C;

  return SeriesRoomPageIntentImplementation.perform(_:objectGraph:)(a1, a2, a3);
}

unint64_t BATracker.jsRepresentation(in:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = [objc_opt_self() valueWithObject:v2 inContext:a1];
  a2[3] = sub_6620C(&qword_3C13F8, &qword_2EB270);
  result = sub_111BE4();
  a2[4] = result;
  *a2 = v4;
  return result;
}

unint64_t sub_10F488@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = [objc_opt_self() valueWithObject:*v2 inContext:a1];
  a2[3] = sub_6620C(&qword_3C13F8, &qword_2EB270);
  result = sub_111BE4();
  a2[4] = result;
  *a2 = v4;
  return result;
}

void sub_10F510(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_5BA74(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[16 * v8 + 32], (a1 + 32), 16 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_10F67C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(a1 + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(a1 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
}

void sub_10F7E8(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  v5 = *(a1 + 16);
  v6 = *v4;
  v7 = *(*v4 + 16);
  if (__OFADD__(v7, v5))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (swift_isUniquelyReferenced_nonNull_native() && v7 + v5 <= *(v6 + 24) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v6 = a2();
  if (!*(a1 + 16))
  {
LABEL_10:

    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_6620C(a3, a4);
  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_11:
    *v4 = v6;
    return;
  }

  v12 = *(v6 + 16);
  v13 = __OFADD__(v12, v5);
  v14 = v12 + v5;
  if (!v13)
  {
    *(v6 + 16) = v14;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_10F908(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

void sub_10F9B4(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_2C6548(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for SeriesRoomListHeaderSegmentedItem(0);
        v6 = sub_2C5B68();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for SeriesRoomListHeaderSegmentedItem(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10FFC0(v8, v9, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_10FAE0(0, v2, 1, a1);
  }
}

void sub_10FAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_2BF408();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v53 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v52 = &v37 - v12;
  v57 = type metadata accessor for SeriesRoomListHeaderSegmentedItem(0);
  __chkstk_darwin(v57);
  v50 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v58 = &v37 - v15;
  __chkstk_darwin(v16);
  v19 = &v37 - v18;
  v40 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v21 = *(v17 + 72);
    v55 = (v9 + 88);
    v56 = (v9 + 16);
    v54 = enum case for ContentKind.pdf(_:);
    v51 = enum case for ContentKind.audiobook(_:);
    v47 = enum case for ContentKind.regularBook(_:);
    v46 = enum case for ContentKind.manga(_:);
    v45 = enum case for ContentKind.unknownBook(_:);
    v38 = v21;
    v39 = (v9 + 8);
    v22 = v20 + v21 * (a3 - 1);
    v48 = -v21;
    v49 = v20;
    v23 = a1 - a3;
    v24 = v20 + v21 * a3;
LABEL_5:
    v43 = v22;
    v44 = a3;
    v41 = v24;
    v42 = v23;
    while (1)
    {
      sub_10F2E8(v24, v19, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
      sub_10F2E8(v22, v58, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
      v25 = *v56;
      v26 = v19;
      v27 = &v19[*(v57 + 28)];
      v28 = v52;
      (*v56)(v52, v27, v8);
      v29 = *v55;
      v30 = (*v55)(v28, v8);
      if (v30 == v54)
      {
        goto LABEL_7;
      }

      if (v30 == v51)
      {
        v31 = 1;
        goto LABEL_14;
      }

      if (v30 == v47)
      {
        goto LABEL_11;
      }

      if (v30 != v46)
      {
        break;
      }

      v31 = 2;
LABEL_14:
      v32 = v53;
      v25(v53, (v58 + *(v57 + 28)), v8);
      v33 = v29(v32, v8);
      if (v33 == v54)
      {
        v34 = 0x7FFFFFFFFFFFFFFFLL;
        v19 = v26;
        goto LABEL_26;
      }

      v19 = v26;
      if (v33 == v51)
      {
        v34 = 1;
        goto LABEL_26;
      }

      if (v33 == v47)
      {
LABEL_19:
        v34 = 0;
        goto LABEL_26;
      }

      if (v33 == v46)
      {
        v34 = 2;
      }

      else
      {
        if (v33 == v45)
        {
          goto LABEL_19;
        }

        (*v39)(v53, v8);
        v34 = 0x7FFFFFFFFFFFFFFFLL;
      }

LABEL_26:
      sub_10F288(v58, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
      sub_10F288(v19, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
      if (v31 >= v34)
      {
        goto LABEL_4;
      }

      if (!v49)
      {
        __break(1u);
        return;
      }

      v35 = v50;
      sub_112864(v24, v50, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
      swift_arrayInitWithTakeFrontToBack();
      sub_112864(v35, v22, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
      v22 += v48;
      v24 += v48;
      if (__CFADD__(v23++, 1))
      {
LABEL_4:
        a3 = v44 + 1;
        v22 = v43 + v38;
        v23 = v42 - 1;
        v24 = v41 + v38;
        if (v44 + 1 == v40)
        {
          return;
        }

        goto LABEL_5;
      }
    }

    if (v30 != v45)
    {
      (*v39)(v52, v8);
LABEL_7:
      v31 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_14;
    }

LABEL_11:
    v31 = 0;
    goto LABEL_14;
  }
}

void sub_10FFC0(unint64_t *a1, uint64_t a2, char *a3, int64_t a4)
{
  v5 = v4;
  v140 = a1;
  v8 = sub_2BF408();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v162 = &v135 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v161 = &v135 - v12;
  __chkstk_darwin(v13);
  v135 = &v135 - v14;
  __chkstk_darwin(v15);
  v149 = &v135 - v16;
  v168 = type metadata accessor for SeriesRoomListHeaderSegmentedItem(0);
  v17 = *(v168 - 8);
  __chkstk_darwin(v168);
  v143 = &v135 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v160 = &v135 - v20;
  __chkstk_darwin(v21);
  v169 = &v135 - v22;
  __chkstk_darwin(v23);
  v164 = &v135 - v24;
  __chkstk_darwin(v25);
  v157 = &v135 - v26;
  __chkstk_darwin(v27);
  v154 = &v135 - v28;
  __chkstk_darwin(v29);
  v137 = &v135 - v30;
  __chkstk_darwin(v31);
  v136 = &v135 - v32;
  v33 = *(a3 + 1);
  if (v33 < 1)
  {
    v36 = a3;
    v35 = _swiftEmptyArrayStorage;
LABEL_139:
    v9 = *v140;
    if (!*v140)
    {
      goto LABEL_180;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_174;
    }

    goto LABEL_141;
  }

  v34 = 0;
  v166 = (v9 + 88);
  v167 = (v9 + 16);
  v165 = enum case for ContentKind.pdf(_:);
  v163 = enum case for ContentKind.audiobook(_:);
  v158 = enum case for ContentKind.regularBook(_:);
  v156 = enum case for ContentKind.manga(_:);
  v153 = enum case for ContentKind.unknownBook(_:);
  v144 = (v9 + 8);
  v35 = _swiftEmptyArrayStorage;
  v36 = a3;
  v141 = a3;
  v152 = v17;
  v139 = a4;
LABEL_4:
  v151 = v35;
  if (v34 + 1 >= v33)
  {
    v47 = v34 + 1;
    goto LABEL_47;
  }

  v155 = v33;
  v37 = v17;
  v38 = *v36;
  v39 = *(v37 + 72);
  v9 = *v36 + v39 * (v34 + 1);
  v40 = v136;
  sub_10F2E8(v9, v136, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
  v150 = v38;
  v41 = v38 + v39 * v34;
  v42 = v34;
  v43 = v137;
  sub_10F2E8(v41, v137, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
  LODWORD(v159) = sub_13A064(v40, v43);
  if (v5)
  {
    sub_10F288(v43, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
    sub_10F288(v40, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
    goto LABEL_152;
  }

  sub_10F288(v43, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
  sub_10F288(v40, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
  v138 = v42;
  v44 = v42 + 2;
  v45 = v150 + v39 * (v42 + 2);
  v150 = 0;
  v36 = v135;
  v46 = v39;
  v17 = v39;
  while (1)
  {
    v47 = v155;
    if (v155 == v44)
    {
      break;
    }

    v50 = v154;
    sub_10F2E8(v45, v154, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
    sub_10F2E8(v9, v157, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
    v51 = *v167;
    v52 = v50 + *(v168 + 28);
    v53 = v149;
    (*v167)(v149, v52, v8);
    v54 = *v166;
    v55 = (*v166)(v53, v8);
    if (v55 == v165)
    {
      goto LABEL_13;
    }

    if (v55 == v163)
    {
      v56 = 1;
      goto LABEL_20;
    }

    if (v55 == v158)
    {
      goto LABEL_17;
    }

    if (v55 != v156)
    {
      if (v55 != v153)
      {
        (*v144)(v149, v8);
LABEL_13:
        v56 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_20;
      }

LABEL_17:
      v56 = 0;
      goto LABEL_20;
    }

    v56 = 2;
LABEL_20:
    v51(v36, v157 + *(v168 + 28), v8);
    v57 = v54(v36, v8);
    if (v57 != v165)
    {
      if (v57 == v163)
      {
        v48 = 1;
        goto LABEL_10;
      }

      if (v57 == v158)
      {
        goto LABEL_24;
      }

      if (v57 == v156)
      {
        v48 = 2;
        goto LABEL_10;
      }

      if (v57 == v153)
      {
LABEL_24:
        v48 = 0;
        goto LABEL_10;
      }

      (*v144)(v36, v8);
    }

    v48 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_10:
    sub_10F288(v157, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
    sub_10F288(v154, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
    v49 = v56 >= v48;
    ++v44;
    v46 = v17;
    v45 += v17;
    v9 += v17;
    v5 = v150;
    v35 = v151;
    if (((v159 ^ v49) & 1) == 0)
    {
      v47 = v44 - 1;
      break;
    }
  }

  a4 = v139;
  v34 = v138;
  if ((v159 & 1) == 0)
  {
    goto LABEL_45;
  }

  if (v47 < v138)
  {
    goto LABEL_173;
  }

  if (v138 >= v47)
  {
LABEL_45:
    v36 = v141;
    v17 = v152;
    goto LABEL_47;
  }

  v58 = v46 * (v47 - 1);
  v59 = v47 * v46;
  v155 = v47;
  v60 = v47;
  v61 = v138;
  v62 = v138 * v46;
  do
  {
    if (v61 != --v60)
    {
      v63 = *v141;
      if (!*v141)
      {
        goto LABEL_177;
      }

      v9 = v63 + v62;
      sub_112864(v63 + v62, v143, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
      if (v62 < v58 || v9 >= v63 + v59)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v62 != v58)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      sub_112864(v143, v63 + v58, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
      v46 = v17;
    }

    ++v61;
    v58 -= v46;
    v59 -= v46;
    v62 += v46;
  }

  while (v61 < v60);
  v5 = v150;
  v35 = v151;
  v36 = v141;
  v17 = v152;
  a4 = v139;
  v34 = v138;
  v47 = v155;
LABEL_47:
  v64 = *(v36 + 1);
  if (v47 >= v64)
  {
    goto LABEL_56;
  }

  if (__OFSUB__(v47, v34))
  {
    goto LABEL_170;
  }

  if (v47 - v34 >= a4)
  {
LABEL_56:
    v9 = v47;
    if (v47 < v34)
    {
      goto LABEL_169;
    }

    goto LABEL_57;
  }

  if (__OFADD__(v34, a4))
  {
    goto LABEL_171;
  }

  if (v34 + a4 >= v64)
  {
    v9 = *(v36 + 1);
  }

  else
  {
    v9 = v34 + a4;
  }

  if (v9 < v34)
  {
LABEL_172:
    __break(1u);
LABEL_173:
    __break(1u);
LABEL_174:
    v35 = sub_111978(v35);
LABEL_141:
    v170 = v35;
    v130 = *(v35 + 16);
    if (v130 >= 2)
    {
      while (*v36)
      {
        v131 = *(v35 + 16 * v130);
        v132 = v35;
        v133 = *(v35 + 16 * (v130 - 1) + 32);
        v35 = *(v35 + 16 * (v130 - 1) + 40);
        sub_110ED0((*v36 + *(v17 + 72) * v131), (*v36 + *(v17 + 72) * v133), *v36 + *(v17 + 72) * v35, v9);
        if (v5)
        {
          goto LABEL_152;
        }

        if (v35 < v131)
        {
          goto LABEL_167;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v132 = sub_111978(v132);
        }

        if (v130 - 2 >= *(v132 + 2))
        {
          goto LABEL_168;
        }

        v134 = &v132[16 * v130];
        *v134 = v131;
        *(v134 + 1) = v35;
        v170 = v132;
        sub_1118EC(v130 - 1);
        v35 = v170;
        v130 = *(v170 + 16);
        if (v130 <= 1)
        {
          goto LABEL_152;
        }
      }

      goto LABEL_178;
    }

LABEL_152:

    return;
  }

  if (v47 == v9)
  {
    goto LABEL_56;
  }

  v150 = v5;
  v111 = *v36;
  v112 = *(v17 + 72);
  v113 = *v36 + v112 * (v47 - 1);
  v114 = -v112;
  v138 = v34;
  v115 = v34 - v47;
  v159 = v111;
  v142 = v112;
  v116 = v111 + v47 * v112;
  v117 = v168;
  v145 = v9;
  while (2)
  {
    v155 = v47;
    v146 = v116;
    v118 = v116;
    v147 = v115;
    v148 = v113;
LABEL_111:
    v119 = v164;
    sub_10F2E8(v118, v164, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
    sub_10F2E8(v113, v169, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
    v120 = *v167;
    v121 = v119 + *(v117 + 28);
    v122 = v161;
    (*v167)(v161, v121, v8);
    v123 = *v166;
    v124 = (*v166)(v122, v8);
    if (v124 == v165)
    {
LABEL_112:
      v125 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_119;
    }

    if (v124 == v163)
    {
      v125 = 1;
      goto LABEL_119;
    }

    if (v124 == v158)
    {
LABEL_116:
      v125 = 0;
    }

    else
    {
      if (v124 != v156)
      {
        if (v124 != v153)
        {
          (*v144)(v161, v8);
          goto LABEL_112;
        }

        goto LABEL_116;
      }

      v125 = 2;
    }

LABEL_119:
    v126 = v162;
    v120(v162, v169 + *(v168 + 28), v8);
    v127 = v123(v126, v8);
    if (v127 == v165)
    {
LABEL_120:
      v17 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_127;
    }

    if (v127 == v163)
    {
      v17 = 1;
      goto LABEL_127;
    }

    if (v127 == v158)
    {
LABEL_124:
      v17 = 0;
    }

    else
    {
      if (v127 != v156)
      {
        if (v127 != v153)
        {
          (*v144)(v162, v8);
          goto LABEL_120;
        }

        goto LABEL_124;
      }

      v17 = 2;
    }

LABEL_127:
    sub_10F288(v169, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
    sub_10F288(v164, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
    if (v125 >= v17)
    {
      v117 = v168;
LABEL_109:
      v47 = v155 + 1;
      v113 = v148 + v142;
      v115 = v147 - 1;
      v116 = v146 + v142;
      v9 = v145;
      if (v155 + 1 != v145)
      {
        continue;
      }

      v5 = v150;
      v35 = v151;
      v36 = v141;
      v34 = v138;
      if (v145 < v138)
      {
        goto LABEL_169;
      }

LABEL_57:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v145 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v35 = sub_5BFE4(0, *(v35 + 16) + 1, 1, v35);
      }

      v9 = *(v35 + 16);
      v66 = *(v35 + 24);
      v67 = v9 + 1;
      if (v9 >= v66 >> 1)
      {
        v35 = sub_5BFE4((v66 > 1), v9 + 1, 1, v35);
      }

      *(v35 + 16) = v67;
      v68 = v35 + 16 * v9;
      v69 = v145;
      *(v68 + 32) = v34;
      *(v68 + 40) = v69;
      if (!*v140)
      {
        goto LABEL_179;
      }

      if (!v9)
      {
LABEL_3:
        v33 = *(v36 + 1);
        v34 = v145;
        a4 = v139;
        v17 = v152;
        if (v145 >= v33)
        {
          goto LABEL_139;
        }

        goto LABEL_4;
      }

      v17 = *v140;
      while (1)
      {
        v9 = v67 - 1;
        if (v67 >= 4)
        {
          break;
        }

        if (v67 == 3)
        {
          v70 = *(v35 + 32);
          v71 = *(v35 + 40);
          v80 = __OFSUB__(v71, v70);
          v72 = v71 - v70;
          v73 = v80;
LABEL_77:
          if (v73)
          {
            goto LABEL_158;
          }

          v86 = (v35 + 16 * v67);
          v88 = *v86;
          v87 = v86[1];
          v89 = __OFSUB__(v87, v88);
          v90 = v87 - v88;
          v91 = v89;
          if (v89)
          {
            goto LABEL_161;
          }

          v92 = (v35 + 32 + 16 * v9);
          v94 = *v92;
          v93 = v92[1];
          v80 = __OFSUB__(v93, v94);
          v95 = v93 - v94;
          if (v80)
          {
            goto LABEL_164;
          }

          if (__OFADD__(v90, v95))
          {
            goto LABEL_165;
          }

          if (v90 + v95 >= v72)
          {
            if (v72 < v95)
            {
              v9 = v67 - 2;
            }

            goto LABEL_98;
          }

          goto LABEL_91;
        }

        v96 = (v35 + 16 * v67);
        v98 = *v96;
        v97 = v96[1];
        v80 = __OFSUB__(v97, v98);
        v90 = v97 - v98;
        v91 = v80;
LABEL_91:
        if (v91)
        {
          goto LABEL_160;
        }

        v99 = v35 + 16 * v9;
        v101 = *(v99 + 32);
        v100 = *(v99 + 40);
        v80 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v80)
        {
          goto LABEL_163;
        }

        if (v102 < v90)
        {
          goto LABEL_3;
        }

LABEL_98:
        v107 = v9 - 1;
        if (v9 - 1 >= v67)
        {
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
          goto LABEL_172;
        }

        if (!*v36)
        {
          goto LABEL_176;
        }

        v108 = *(v35 + 32 + 16 * v107);
        v109 = *(v35 + 32 + 16 * v9 + 8);
        sub_110ED0((*v36 + *(v152 + 72) * v108), (*v36 + *(v152 + 72) * *(v35 + 32 + 16 * v9)), *v36 + *(v152 + 72) * v109, v17);
        if (v5)
        {
          goto LABEL_152;
        }

        if (v109 < v108)
        {
          goto LABEL_154;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_111978(v35);
        }

        if (v107 >= *(v35 + 16))
        {
          goto LABEL_155;
        }

        v110 = v35 + 16 * v107;
        *(v110 + 32) = v108;
        *(v110 + 40) = v109;
        v170 = v35;
        sub_1118EC(v9);
        v35 = v170;
        v67 = *(v170 + 16);
        if (v67 <= 1)
        {
          goto LABEL_3;
        }
      }

      v74 = v35 + 32 + 16 * v67;
      v75 = *(v74 - 64);
      v76 = *(v74 - 56);
      v80 = __OFSUB__(v76, v75);
      v77 = v76 - v75;
      if (v80)
      {
        goto LABEL_156;
      }

      v79 = *(v74 - 48);
      v78 = *(v74 - 40);
      v80 = __OFSUB__(v78, v79);
      v72 = v78 - v79;
      v73 = v80;
      if (v80)
      {
        goto LABEL_157;
      }

      v81 = (v35 + 16 * v67);
      v83 = *v81;
      v82 = v81[1];
      v80 = __OFSUB__(v82, v83);
      v84 = v82 - v83;
      if (v80)
      {
        goto LABEL_159;
      }

      v80 = __OFADD__(v72, v84);
      v85 = v72 + v84;
      if (v80)
      {
        goto LABEL_162;
      }

      if (v85 >= v77)
      {
        v103 = (v35 + 32 + 16 * v9);
        v105 = *v103;
        v104 = v103[1];
        v80 = __OFSUB__(v104, v105);
        v106 = v104 - v105;
        if (v80)
        {
          goto LABEL_166;
        }

        if (v72 < v106)
        {
          v9 = v67 - 2;
        }

        goto LABEL_98;
      }

      goto LABEL_77;
    }

    break;
  }

  v117 = v168;
  if (v159)
  {
    v128 = v160;
    sub_112864(v118, v160, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
    swift_arrayInitWithTakeFrontToBack();
    sub_112864(v128, v113, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
    v113 += v114;
    v118 += v114;
    if (__CFADD__(v115++, 1))
    {
      goto LABEL_109;
    }

    goto LABEL_111;
  }

  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
}

void sub_110ED0(char *a1, char *a2, unint64_t a3, char *a4)
{
  v86 = sub_2BF408();
  v8 = *(v86 - 8);
  __chkstk_darwin(v86);
  v79 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v77 = &v68 - v11;
  __chkstk_darwin(v12);
  v81 = &v68 - v13;
  __chkstk_darwin(v14);
  v80 = &v68 - v15;
  v87 = type metadata accessor for SeriesRoomListHeaderSegmentedItem(0);
  __chkstk_darwin(v87);
  v83 = (&v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v82 = &v68 - v18;
  __chkstk_darwin(v19);
  v85 = &v68 - v20;
  __chkstk_darwin(v21);
  v84 = (&v68 - v22);
  v24 = *(v23 + 72);
  if (!v24)
  {
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v24 == -1)
  {
    goto LABEL_103;
  }

  v25 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v24 == -1)
  {
    goto LABEL_104;
  }

  v26 = (a2 - a1) / v24;
  v90 = a1;
  v89 = a4;
  if (v26 < v25 / v24)
  {
    v27 = v26 * v24;
    if (a4 < a1 || &a1[v27] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v79 = &a4[v27];
    v88 = &a4[v27];
    if (v27 < 1 || a2 >= a3)
    {
      goto LABEL_101;
    }

    v83 = (v8 + 16);
    v30 = (v8 + 88);
    LODWORD(v82) = enum case for ContentKind.pdf(_:);
    LODWORD(v76) = enum case for ContentKind.audiobook(_:);
    v74 = enum case for ContentKind.regularBook(_:);
    LODWORD(v73) = enum case for ContentKind.manga(_:);
    v72 = enum case for ContentKind.unknownBook(_:);
    v71 = (v8 + 8);
    v77 = v24;
    v78 = a3;
    while (1)
    {
      v31 = a2;
      v32 = v84;
      sub_10F2E8(a2, v84, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
      sub_10F2E8(a4, v85, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
      v33 = *v83;
      v34 = v32 + *(v87 + 28);
      v35 = v80;
      v36 = v86;
      (*v83)(v80, v34, v86);
      v37 = *v30;
      v38 = (*v30)(v35, v36);
      v39 = a4;
      if (v38 == v82)
      {
        goto LABEL_22;
      }

      if (v38 == v76)
      {
        v40 = 1;
        goto LABEL_29;
      }

      if (v38 == v74)
      {
        goto LABEL_26;
      }

      if (v38 != v73)
      {
        break;
      }

      v40 = 2;
LABEL_29:
      v41 = v86;
      v42 = v81;
      v33(v81, &v85[*(v87 + 28)], v86);
      v43 = v37(v42, v41);
      if (v43 == v82)
      {
        v44 = 0x7FFFFFFFFFFFFFFFLL;
        v45 = v77;
      }

      else
      {
        v45 = v77;
        if (v43 == v76)
        {
          v44 = 1;
        }

        else
        {
          if (v43 != v74)
          {
            if (v43 == v73)
            {
              v44 = 2;
              goto LABEL_41;
            }

            if (v43 != v72)
            {
              (*v71)(v81, v86);
              v44 = 0x7FFFFFFFFFFFFFFFLL;
              goto LABEL_41;
            }
          }

          v44 = 0;
        }
      }

LABEL_41:
      sub_10F288(v85, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
      sub_10F288(v84, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
      if (v40 >= v44)
      {
        a4 = &v45[v39];
        a2 = v31;
        if (a1 < v39 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
          v46 = v78;
        }

        else
        {
          v46 = v78;
          if (a1 != v39)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v89 = &v45[v39];
      }

      else
      {
        a2 = &v45[v31];
        if (a1 < v31 || a1 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
          a4 = v39;
          v46 = v78;
        }

        else
        {
          v46 = v78;
          if (a1 != v31)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a4 = v39;
        }
      }

      a1 = &v45[a1];
      v90 = a1;
      if (a4 >= v79 || a2 >= v46)
      {
        goto LABEL_101;
      }
    }

    if (v38 != v72)
    {
      (*v71)(v80, v86);
LABEL_22:
      v40 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_29;
    }

LABEL_26:
    v40 = 0;
    goto LABEL_29;
  }

  v28 = v25 / v24 * v24;
  if (a4 < a2 || &a2[v28] <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a4 != a2)
  {
    swift_arrayInitWithTakeBackToFront();
  }

  v47 = &a4[v28];
  if (v28 < 1)
  {
    goto LABEL_100;
  }

  v48 = -v24;
  v84 = (v8 + 88);
  v85 = (v8 + 16);
  LODWORD(v81) = enum case for ContentKind.pdf(_:);
  v74 = enum case for ContentKind.audiobook(_:);
  v72 = enum case for ContentKind.regularBook(_:);
  LODWORD(v71) = enum case for ContentKind.manga(_:);
  v70 = enum case for ContentKind.unknownBook(_:);
  v68 = (v8 + 8);
  v49 = v47;
  v75 = a4;
  v76 = v48;
  while (2)
  {
    while (2)
    {
      v69 = v47;
      v50 = a2;
      a2 += v48;
      v78 = v50;
      while (1)
      {
        if (v50 <= a1)
        {
          v90 = v50;
          v88 = v69;
          goto LABEL_101;
        }

        v51 = a3;
        v73 = v47;
        v52 = v49 + v48;
        v53 = v82;
        sub_10F2E8(v49 + v48, v82, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
        v54 = a2;
        sub_10F2E8(a2, v83, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
        v55 = v86;
        v56 = *v85;
        v57 = v53 + *(v87 + 28);
        v58 = v77;
        (*v85)(v77, v57, v86);
        v59 = *v84;
        v60 = (*v84)(v58, v55);
        if (v60 == v81)
        {
          goto LABEL_65;
        }

        if (v60 == v74)
        {
          v61 = 1;
          goto LABEL_68;
        }

        if (v60 != v72)
        {
          if (v60 == v71)
          {
            v61 = 2;
            goto LABEL_68;
          }

          if (v60 != v70)
          {
            (*v68)(v77, v86);
LABEL_65:
            v61 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_68:
            v80 = v61;
            goto LABEL_69;
          }
        }

        v80 = 0;
LABEL_69:
        v62 = v86;
        v63 = v79;
        v56(v79, v83 + *(v87 + 28), v86);
        v64 = v59(v63, v62);
        if (v64 == v81)
        {
          v65 = 0x7FFFFFFFFFFFFFFFLL;
          a2 = v54;
          v48 = v76;
          goto LABEL_85;
        }

        a2 = v54;
        v48 = v76;
        if (v64 == v74)
        {
          v65 = 1;
          goto LABEL_85;
        }

        if (v64 == v72)
        {
LABEL_76:
          v65 = 0;
          goto LABEL_85;
        }

        if (v64 == v71)
        {
          v65 = 2;
        }

        else
        {
          if (v64 == v70)
          {
            goto LABEL_76;
          }

          (*v68)(v79, v86);
          v65 = 0x7FFFFFFFFFFFFFFFLL;
        }

LABEL_85:
        a3 = v51 + v48;
        sub_10F288(v83, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
        sub_10F288(v82, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
        if (v80 < v65)
        {
          break;
        }

        v47 = v52;
        v66 = v75;
        if (v51 < v49 || a3 >= v49)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v51 != v49)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v49 = v52;
        v50 = v78;
        if (v52 <= v66)
        {
          a2 = v78;
          goto LABEL_100;
        }
      }

      v67 = v75;
      if (v51 >= v78 && a3 < v78)
      {
        v47 = v73;
        if (v51 != v78)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        if (v49 <= v67)
        {
          goto LABEL_100;
        }

        continue;
      }

      break;
    }

    swift_arrayInitWithTakeFrontToBack();
    v47 = v73;
    if (v49 > v67)
    {
      continue;
    }

    break;
  }

LABEL_100:
  v90 = a2;
  v88 = v47;
LABEL_101:
  sub_1119BC(&v90, &v89, &v88, type metadata accessor for SeriesRoomListHeaderSegmentedItem);
}

uint64_t sub_1118EC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_111978(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1119BC(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_111AE0(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2C65B8() & 1;
  }
}

uint64_t sub_111B38(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2C65B8() & 1;
  }
}

unint64_t sub_111B90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C13F0;
  if (!qword_3C13F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C13F0);
  }

  return result;
}

unint64_t sub_111BE4()
{
  result = qword_3C1400;
  if (!qword_3C1400)
  {
    sub_718D4(&qword_3C13F8, &qword_2EB270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C1400);
  }

  return result;
}

uint64_t sub_111D14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2BF368();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_6620C(&qword_3BE238, &unk_2E8260);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_111E58(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_2BF368();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_6620C(&qword_3BE238, &unk_2E8260);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_111F88(uint64_t a1)
{
  sub_2BF368();
  if (v1 <= 0x3F)
  {
    sub_112064(319);
    if (v2 <= 0x3F)
    {
      sub_112360(319, &qword_3C1480, &type metadata accessor for SeriesListSortOrder, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_112064(uint64_t a1)
{
  if (!qword_3C1478)
  {
    sub_718D4(&qword_3BCA70, &unk_2E7120);
    v1 = sub_2C60B8();
    if (!v2)
    {
      atomic_store(v1, &qword_3C1478);
    }
  }
}

uint64_t sub_1120DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Page(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1121AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Page(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_112264(uint64_t a1)
{
  type metadata accessor for Page(319);
  if (v1 <= 0x3F)
  {
    sub_112360(319, &unk_3BF538, &type metadata accessor for MSeries, &type metadata accessor for _MResourceDecoder_OrNil);
    if (v2 <= 0x3F)
    {
      sub_112360(319, &unk_3C1520, &type metadata accessor for MAsset, &type metadata accessor for _MResourceDecoder_Many);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_112360(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1123D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C1558;
  if (!qword_3C1558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C1558);
  }

  return result;
}

unint64_t sub_11242C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C1570;
  if (!qword_3C1570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C1570);
  }

  return result;
}

unint64_t sub_112480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C15C0;
  if (!qword_3C15C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C15C0);
  }

  return result;
}

uint64_t sub_1124D8(uint64_t a1)
{
  v3 = *(type metadata accessor for SeriesRoomPageIntent(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 56) & ~*(v3 + 80));

  return sub_10A6B0(a1, v1 + 16, v4);
}

uint64_t sub_11255C()
{
  v1 = type metadata accessor for SeriesRoomPageIntent(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 56) & ~v2;
  v13 = *(*(v1 - 1) + 64);
  sub_68CD0((v0 + 16));
  v4 = v0 + v3;

  v5 = v1[5];
  v6 = sub_2BF368();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v3 + v5, v6);

  v9 = v1[7];
  if (!(*(v7 + 48))(v0 + v3 + v9, 1, v6))
  {
    v8(v4 + v9, v6);
  }

  v10 = v1[9];
  v11 = sub_2C21F8();
  (*(*(v11 - 8) + 8))(v4 + v10, v11);

  return _swift_deallocObject(v0, v3 + v13, v2 | 7);
}

unint64_t sub_112718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C1620;
  if (!qword_3C1620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C1620);
  }

  return result;
}

uint64_t sub_11276C()
{
  sub_68CD0(v0 + 2);
  if (v0[11])
  {
    sub_68CD0(v0 + 8);
  }

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_112864(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1128E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C1638;
  if (!qword_3C1638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C1638);
  }

  return result;
}

unint64_t sub_112938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C1640;
  if (!qword_3C1640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C1640);
  }

  return result;
}

unint64_t sub_112990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C1648;
  if (!qword_3C1648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C1648);
  }

  return result;
}

uint64_t sub_1129E4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701273968 && a2 == 0xE400000000000000;
  if (v3 || (sub_2C65B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000000303A70 == a2 || (sub_2C65B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x737465737361 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_2C65B8();

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

uint64_t sub_112B04@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_2C30F8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_6620C(&qword_3BD530, &qword_2E4150);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_113C10(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2C0C98();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_2C5DD8();
    v13 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_112CEC()
{
  v1 = sub_2C30F8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for SeriesRoomListHeaderComponent(0) + 20);
  v6 = *v5;
  v7 = *(v5 + 8);
  if (*(v5 + 16) == 1)
  {
  }

  else
  {

    sub_2C5DD8();
    v8 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();
    v9 = sub_113C80(v6, v7, 0);
    (*(v2 + 8))(v4, v1, v9);
    return v11;
  }

  return v6;
}

uint64_t SeriesRoomListHeaderComponent.content(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a1;
  v56 = a2;
  v2 = sub_6620C(&qword_3C1650, &unk_2EB710);
  __chkstk_darwin(v2 - 8);
  v55 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v54 = &v49 - v5;
  v6 = sub_2C0C68();
  v52 = *(v6 - 8);
  v53 = v6;
  __chkstk_darwin(v6);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2C0C98();
  v10 = *(v9 - 8);
  v57 = v9;
  v58 = v10;
  __chkstk_darwin(v9);
  v12 = (&v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_2C1778();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_6620C(&qword_3C0370, &qword_2E9D20);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v49 - v19;
  v51 = sub_6620C(&qword_3C1658, &qword_2EB720);
  v21 = __chkstk_darwin(v51);
  v23 = &v49 - v22;
  (*(v18 + 16))(v20, v50, v17, v21);
  sub_112CEC();
  (*(v14 + 104))(v16, enum case for SegmentedControlStyle.label(_:), v13);
  type metadata accessor for SeriesRoomListHeaderSegmentedItem(0);
  sub_113768(&unk_3C03F0, type metadata accessor for SeriesRoomListHeaderSegmentedItem, &protocol conformance descriptor for SeriesRoomListHeaderSegmentedItem);
  sub_2C1138();
  LOBYTE(v20) = sub_2C3768();
  sub_112B04(v12);
  sub_2C0C78();
  v24 = *(v58 + 8);
  v58 += 8;
  v24(v12, v57);
  sub_2C0C28();
  v25 = v53;
  v26 = *(v52 + 8);
  v26(v8, v53);
  sub_2C24D8();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = &v23[*(sub_6620C(&qword_3C1660, &qword_2EB728) + 36)];
  *v35 = v20;
  *(v35 + 1) = v28;
  *(v35 + 2) = v30;
  *(v35 + 3) = v32;
  *(v35 + 4) = v34;
  v35[40] = 0;
  LOBYTE(v20) = sub_2C3778();
  sub_112B04(v12);
  sub_2C0C78();
  v24(v12, v57);
  sub_2C0BF8();
  v26(v8, v25);
  sub_2C24D8();
  v36 = &v23[*(v51 + 36)];
  *v36 = v20;
  *(v36 + 1) = v37;
  *(v36 + 2) = v38;
  *(v36 + 3) = v39;
  *(v36 + 4) = v40;
  v36[40] = 0;
  v41 = enum case for DynamicTypeSize.large(_:);
  v42 = sub_2C29C8();
  v43 = *(v42 - 8);
  v44 = *(v43 + 104);
  v45 = v54;
  v44(v54, v41, v42);
  v46 = *(v43 + 56);
  v46(v45, 0, 1, v42);
  v47 = v55;
  v44(v55, enum case for DynamicTypeSize.xxxLarge(_:), v42);
  v46(v47, 0, 1, v42);
  sub_1134BC(&qword_3C1668, &qword_3C1658, &qword_2EB720, sub_11348C);
  sub_2C3CF8();
  sub_69198(v47, &qword_3C1650, &unk_2EB710);
  sub_69198(v45, &qword_3C1650, &unk_2EB710);
  return sub_69198(v23, &qword_3C1658, &qword_2EB720);
}

uint64_t sub_1134BC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_718D4(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_113540()
{
  result = qword_3C1678;
  if (!qword_3C1678)
  {
    sub_718D4(&qword_3C1680, &qword_2EB730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C1678);
  }

  return result;
}

uint64_t type metadata accessor for SeriesRoomListHeaderComponent(uint64_t a1)
{
  result = qword_3C16F0;
  if (!qword_3C16F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_113768(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1137B0(uint64_t a1)
{
  __chkstk_darwin(v1);
  sub_113BAC(v3, &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_113768(&unk_3C8590, type metadata accessor for SeriesRoomListHeaderComponent, &protocol conformance descriptor for SeriesRoomListHeaderComponent);
  return sub_2BFD18();
}

uint64_t sub_113888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_6620C(&qword_3BD588, &unk_2E4390);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 16);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_113964(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_6620C(&qword_3BD588, &unk_2E4390);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = -a2;
  }

  return result;
}

void sub_113A2C(uint64_t a1)
{
  sub_85768(319);
  if (v1 <= 0x3F)
  {
    sub_113AB0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_113AB0(uint64_t a1)
{
  if (!qword_3C1700)
  {
    sub_718D4(&qword_3BDB00, &qword_2E6E10);
    v1 = sub_2C2558();
    if (!v2)
    {
      atomic_store(v1, &qword_3C1700);
    }
  }
}

uint64_t sub_113B14()
{
  sub_718D4(&qword_3C1658, &qword_2EB720);
  sub_1134BC(&qword_3C1668, &qword_3C1658, &qword_2EB720, sub_11348C);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_113BAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SeriesRoomListHeaderComponent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_113C10(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3BD530, &qword_2E4150);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_113C80(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

uint64_t sub_113C90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_2BE9B8();
  __chkstk_darwin(v6 - 8);
  v7 = sub_2C14C8();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v31 - v12;
  *a3 = swift_getKeyPath();
  sub_6620C(&qword_3BD530, &qword_2E4150);
  swift_storeEnumTagMultiPayload();
  v14 = type metadata accessor for ShelfView(0);
  v15 = v14[5];
  *(a3 + v15) = swift_getKeyPath();
  sub_6620C(&unk_3C8530, &qword_2E3850);
  swift_storeEnumTagMultiPayload();
  v16 = v14[6];
  *(a3 + v16) = swift_getKeyPath();
  sub_6620C(&qword_3BECA0, &qword_2E74E8);
  swift_storeEnumTagMultiPayload();
  v17 = a3 + v14[7];
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  (*(v8 + 104))(v13, enum case for ShelfGridBreakpoint.xs(_:), v7);
  (*(v8 + 16))(v10, v13, v7);
  sub_2C4368();
  (*(v8 + 8))(v13, v7);
  v18 = a3 + v14[9];
  *v18 = swift_getKeyPath();
  v18[8] = 0;
  v19 = a3 + v14[10];
  *v19 = swift_getKeyPath();
  v19[8] = 0;
  v20 = a3 + v14[11];
  *v20 = swift_getKeyPath();
  v20[8] = 0;
  v21 = v14[12];
  *(a3 + v21) = swift_getKeyPath();
  sub_6620C(&qword_3C1910, &qword_2EBB30);
  swift_storeEnumTagMultiPayload();
  v22 = a3 + v14[13];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  v23 = a3 + v14[14];
  *v23 = swift_getKeyPath();
  v23[8] = 0;
  v24 = a3 + v14[15];
  *v24 = swift_getKeyPath();
  v24[40] = 0;
  v25 = a3 + v14[16];
  *v25 = swift_getKeyPath();
  v25[8] = 0;
  v26 = v14[17];
  *(a3 + v26) = swift_getKeyPath();
  sub_6620C(&qword_3BDD08, &qword_2E5190);
  swift_storeEnumTagMultiPayload();
  v27 = a3 + v14[18];
  *v27 = swift_getKeyPath();
  v27[40] = 0;
  v28 = a3 + v14[19];
  *v28 = swift_getKeyPath();
  *(v28 + 1) = 0;
  v28[16] = 0;
  sub_2BE998();
  sub_2BE818();
  v29 = a3 + v14[21];
  *v29 = swift_getKeyPath();
  *(v29 + 4) = 0;
  *(v29 + 2) = 0;
  sub_125868(a1, a3 + v14[22], type metadata accessor for Shelf);
  return sub_69130(a2, a3 + v14[23], &qword_3BDE70, &qword_2E52F0);
}

uint64_t sub_114154@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_2C30F8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_6620C(&qword_3BD530, &qword_2E4150);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_6932C(v2, &v14 - v9, &qword_3BD530, &qword_2E4150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2C0C98();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_2C5DD8();
    v13 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_114354@<X0>(void *a1@<X8>)
{
  v3 = sub_2C30F8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_6620C(&unk_3C8530, &qword_2E3850);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ShelfView(0);
  sub_6932C(v1 + *(v10 + 20), v9, &unk_3C8530, &qword_2E3850);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2C0D48();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2C5DD8();
    v13 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_11455C@<X0>(void *a1@<X8>)
{
  v3 = sub_2C30F8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_6620C(&qword_3BECA0, &qword_2E74E8);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ShelfView(0);
  sub_6932C(v1 + *(v10 + 24), v9, &qword_3BECA0, &qword_2E74E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2C29C8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2C5DD8();
    v13 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_114764()
{
  v1 = sub_2C30F8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for ShelfView(0) + 28));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    sub_2C5DD8();
    v8 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_1148B4()
{
  v16 = sub_2C30F8();
  v1 = *(v16 - 8);
  __chkstk_darwin(v16);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_6620C(&qword_3BECA0, &qword_2E74E8);
  __chkstk_darwin(v4);
  v6 = &v15 - v5;
  v7 = sub_2C29C8();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ShelfView(0);
  sub_6932C(v0 + *(v11 + 24), v6, &qword_3BECA0, &qword_2E74E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  else
  {
    sub_2C5DD8();
    v12 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();

    (*(v1 + 8))(v3, v16);
  }

  v13 = sub_2C29B8();
  (*(v8 + 8))(v10, v7);
  return v13 & 1;
}

uint64_t sub_114B40()
{
  v1 = sub_2C30F8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for ShelfView(0) + 36);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_2C5DD8();
    v7 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();
    sub_71AF4(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_114C98()
{
  v1 = sub_2C30F8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for ShelfView(0) + 40);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_2C5DD8();
    v7 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();
    sub_71AF4(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_114DF0()
{
  v1 = sub_2C30F8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for ShelfView(0) + 44);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_2C5DD8();
    v7 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();
    sub_71AF4(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_114F48@<X0>(void *a1@<X8>)
{
  v3 = sub_2C30F8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_6620C(&qword_3C1910, &qword_2EBB30);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for ShelfView(0);
  sub_6932C(v1 + *(v10 + 48), v9, &qword_3C1910, &qword_2EBB30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_69130(v9, a1, &qword_3C1880, &qword_2F61C0);
  }

  sub_2C5DD8();
  v12 = sub_2C3718();
  sub_2C0058();

  sub_2C30E8();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

double sub_115130()
{
  v1 = sub_2C30F8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for ShelfView(0) + 52));
  v6 = *v5;
  if (v5[8] == 1)
  {
    return *v5;
  }

  sub_2C5DD8();
  v8 = sub_2C3718();
  sub_2C0058();

  sub_2C30E8();
  swift_getAtKeyPath();
  sub_71AF4(v6, 0);
  (*(v2 + 8))(v4, v1);
  return *&v9[1];
}

uint64_t sub_11528C()
{
  v1 = sub_2C30F8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for ShelfView(0) + 56);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_2C5DD8();
    v7 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();
    sub_71AF4(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_1153E4@<X0>(void *a1@<X8>)
{
  v3 = sub_2C30F8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ShelfView(0);
  sub_6932C(v1 + *(v7 + 60), v10, &qword_3BDFE0, &qword_2E55E0);
  if (v11 == 1)
  {
    return sub_68D1C(v10, a1);
  }

  sub_2C5DD8();
  v9 = sub_2C3718();
  sub_2C0058();

  sub_2C30E8();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

void *sub_11555C()
{
  v1 = sub_2C30F8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for ShelfView(0) + 64);
  v6 = *v5;
  if (*(v5 + 8) == 1)
  {
    v7 = v6;
  }

  else
  {

    sub_2C5DD8();
    v8 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();
    sub_9E94C(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_1156BC@<X0>(void *a1@<X8>)
{
  v3 = sub_2C30F8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_6620C(&qword_3BDD08, &qword_2E5190);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ShelfView(0);
  sub_6932C(v1 + *(v10 + 68), v9, &qword_3BDD08, &qword_2E5190);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2BF0B8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2C5DD8();
    v13 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1158C4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2C30F8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ShelfView(0);
  result = sub_6932C(v1 + *(v7 + 72), v11, &qword_3C1C88, &qword_2EC1A0);
  if (v13 == 1)
  {
    v9 = v11[1];
    *a1 = v11[0];
    *(a1 + 16) = v9;
    *(a1 + 32) = v12;
  }

  else
  {
    sub_2C5DD8();
    v10 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_115A40()
{
  v1 = sub_2C30F8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for ShelfView(0) + 76);
  v6 = *v5;
  v7 = *(v5 + 8);
  if (*(v5 + 16) == 1)
  {
  }

  else
  {

    sub_2C5DD8();
    v8 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();
    v9 = sub_113C80(v6, v7, 0);
    (*(v2 + 8))(v4, v1, v9);
    return v11;
  }

  return v6;
}

uint64_t ShelfView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v125 = a1;
  v3 = sub_6620C(&qword_3BDE70, &qword_2E52F0);
  __chkstk_darwin(v3 - 8);
  v121 = &v86 - v4;
  v5 = sub_2BE9B8();
  v123 = *(v5 - 8);
  v124 = v5;
  __chkstk_darwin(v5);
  v122 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_6620C(&qword_3C1730, &unk_2EE740);
  __chkstk_darwin(v7 - 8);
  v95 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v107 = &v86 - v10;
  v105 = sub_2C0D48();
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v99 = (&v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v103 = sub_2C2548();
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v101 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_6620C(&qword_3C1738, &qword_2EB810);
  __chkstk_darwin(v106);
  v93 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v94 = &v86 - v15;
  v100 = sub_6620C(&qword_3C1740, &qword_2EB818);
  v98 = *(v100 - 8);
  __chkstk_darwin(v100);
  v96 = &v86 - v16;
  v127 = sub_6620C(&qword_3C1748, &qword_2EB820);
  __chkstk_darwin(v127);
  v97 = &v86 - v17;
  v18 = sub_6620C(&qword_3C1750, &qword_2EB828);
  v119 = *(v18 - 8);
  v120 = v18;
  __chkstk_darwin(v18);
  v126 = &v86 - v19;
  v118 = sub_6620C(&qword_3C1758, &qword_2EB830);
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v116 = &v86 - v20;
  v115 = sub_6620C(&qword_3C1760, &qword_2EB838);
  __chkstk_darwin(v115);
  v114 = &v86 - v21;
  v112 = sub_6620C(&qword_3C1768, &qword_2EB840);
  __chkstk_darwin(v112);
  v110 = &v86 - v22;
  v113 = sub_2BFE68();
  v111 = *(v113 - 8);
  __chkstk_darwin(v113);
  v24 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Shelf(0);
  v26 = v25 - 8;
  __chkstk_darwin(v25);
  v28 = &v86 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_116C34(v28);
  sub_117140(v24);
  sub_117518();
  sub_1177C4();
  v108 = v28;
  v128 = v28;
  v129 = v1;
  v109 = v24;
  v130 = v24;
  v92 = sub_6620C(&qword_3C1770, &qword_2EB848);
  v29 = sub_718D4(&qword_3C8300, &qword_2E5510);
  v30 = sub_72B74(&unk_3C8340, &qword_3C8300, &qword_2E5510, &protocol conformance descriptor for ComponentView<A>);
  v131 = v29;
  v132 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v90 = sub_718D4(&qword_3C1778, &qword_2EB850);
  v89 = sub_718D4(&qword_3C1780, &qword_2EB858);
  v88 = sub_2C4E28();
  v87 = sub_718D4(&qword_3C1788, &qword_2EB860);
  v86 = sub_718D4(&qword_3C1790, &qword_2EB868);
  v31 = sub_2C1FA8();
  v32 = sub_718D4(&qword_3C1798, &qword_2EB870);
  v33 = sub_2BED28();
  v34 = sub_718D4(&qword_3C17A0, &qword_2EB878);
  v35 = sub_718D4(&qword_3C17A8, &qword_2EB880);
  v36 = sub_718D4(&qword_3C17B0, &qword_2EB888);
  v37 = sub_72B74(&qword_3C17B8, &qword_3C17B0, &qword_2EB888, &protocol conformance descriptor for IDView<A, B>);
  v131 = v36;
  v132 = v37;
  v38 = swift_getOpaqueTypeConformance2();
  v41 = sub_118844(v38, v39, v40);
  v42 = sub_118898();
  v131 = v34;
  v132 = &type metadata for IsInPPTPredicate;
  v133 = v35;
  v134 = v38;
  v43 = v95;
  v135 = v41;
  v136 = v42;
  v44 = swift_getOpaqueTypeConformance2();
  v45 = sub_12598C(&qword_3C17D8, &type metadata accessor for SectionExposureEvent, &protocol conformance descriptor for SectionExposureEvent);
  v131 = v32;
  v132 = v33;
  v133 = v44;
  v134 = v45;
  v46 = swift_getOpaqueTypeConformance2();
  v47 = sub_12598C(&qword_3BF420, &type metadata accessor for GenericGeometryReferenceBuilder, &protocol conformance descriptor for GenericGeometryReferenceBuilder);
  v131 = v86;
  v132 = v31;
  v133 = v46;
  v134 = v47;
  v48 = swift_getOpaqueTypeConformance2();
  v131 = v87;
  v132 = v48;
  v49 = swift_getOpaqueTypeConformance2();
  v131 = v89;
  v132 = v88;
  v133 = v49;
  v50 = swift_getOpaqueTypeConformance2();
  v131 = v90;
  v132 = v50;
  swift_getOpaqueTypeConformance2();
  v51 = v96;
  sub_2C4598();
  v94 = type metadata accessor for ShelfView(0);
  v52 = (v2 + *(v94 + 22));
  v53 = v99;
  v106 = v2;
  sub_114354(v99);
  LOBYTE(v38) = sub_2C1B78();
  (*(v104 + 8))(v53, v105);
  v54 = v102;
  v55 = &enum case for ColorScheme.dark(_:);
  if ((v38 & 1) == 0)
  {
    v55 = &enum case for ColorScheme.light(_:);
  }

  v56 = v101;
  v57 = v103;
  (*(v102 + 104))(v101, *v55, v103);
  KeyPath = swift_getKeyPath();
  v59 = v97;
  v60 = &v97[*(v127 + 36)];
  v61 = sub_6620C(&qword_3BE860, &qword_2E6F30);
  (*(v54 + 32))(v60 + *(v61 + 28), v56, v57);
  *v60 = KeyPath;
  (*(v98 + 32))(v59, v51, v100);
  sub_6932C(v52 + *(v26 + 44), v43, &qword_3C1730, &unk_2EE740);
  v62 = sub_2C22F8();
  v63 = *(v62 - 8);
  v64 = *(v63 + 48);
  if (v64(v43, 1, v62) == 1)
  {
    v65 = v107;
    sub_2C22B8();
    if (v64(v43, 1, v62) != 1)
    {
      sub_69198(v43, &qword_3C1730, &unk_2EE740);
    }
  }

  else
  {
    v65 = v107;
    (*(v63 + 32))(v107, v43, v62);
  }

  (*(v63 + 56))(v65, 0, 1, v62);
  v66 = sub_122658();
  sub_2C3C08();
  sub_69198(v65, &qword_3C1730, &unk_2EE740);
  sub_69198(v59, &qword_3C1748, &qword_2EB820);
  v67 = *(v94 + 23);
  v69 = *v52;
  v68 = v52[1];
  swift_bridgeObjectRetain_n();
  v70 = v122;
  sub_2BE9A8();
  sub_6620C(&qword_3BC020, &qword_2E2DC0);
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_2E3F30;
  v72 = v121;
  sub_6932C(v106 + v67, v121, &qword_3BDE70, &qword_2E52F0);
  v73 = sub_2BEA28();
  v74 = *(v73 - 8);
  if ((*(v74 + 48))(v72, 1, v73) == 1)
  {
    sub_69198(v72, &qword_3BDE70, &qword_2E52F0);
    *(v71 + 32) = 0u;
    *(v71 + 48) = 0u;
    *(v71 + 64) = 0u;
  }

  else
  {
    *(v71 + 56) = v73;
    *(v71 + 64) = sub_12598C(&unk_3C0030, &type metadata accessor for SectionData, &protocol conformance descriptor for SectionData);
    *(v71 + 72) = sub_12598C(&unk_3C43F0, &type metadata accessor for SectionData, &protocol conformance descriptor for SectionData);
    v75 = sub_720C8((v71 + 32));
    (*(v74 + 32))(v75, v72, v73);
  }

  v131 = v127;
  v132 = v66;
  swift_getOpaqueTypeConformance2();
  v76 = v116;
  v77 = v120;
  v78 = v126;
  sub_2C3D88();

  (*(v123 + 8))(v70, v124);
  (*(v119 + 8))(v78, v77);
  v79 = swift_getKeyPath();
  v80 = v114;
  (*(v117 + 32))(v114, v76, v118);
  v81 = (v80 + *(v115 + 36));
  *v81 = v79;
  v81[1] = v69;
  v81[2] = v68;
  v82 = v110;
  sub_69130(v80, v110, &qword_3C1760, &qword_2EB838);
  v83 = (v82 + *(v112 + 52));
  *v83 = v69;
  v83[1] = v68;
  sub_69130(v82, v125, &qword_3C1768, &qword_2EB840);
  v84 = *(v111 + 8);

  v84(v109, v113);
  return sub_1259D4(v108, type metadata accessor for Shelf);
}

uint64_t sub_116C34@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Shelf(0);
  __chkstk_darwin(v3);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2BF0B8();
  v40 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = (&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = v1 + *(type metadata accessor for ShelfView(0) + 88);
  v10 = sub_11555C();
  v42 = v8;
  sub_1156BC(v8);
  sub_1158C4(v59);
  v11 = sub_1218A8();
  v38 = v5;
  sub_124CA8(v9, v5, type metadata accessor for Shelf);
  v39 = v3;
  v12 = *(v9 + *(v3 + 68));
  v13 = *(v12 + 16);
  if (v13)
  {
    v41 = v11;
    v36 = v6;
    v37 = a1;
    v58 = _swiftEmptyArrayStorage;
    result = sub_64698(0, v13, 0);
    v15 = 0;
    v16 = v12 + 32;
    v17 = v58;
    v18 = *(v12 + 16);
    v44 = v12;
    v45 = v18;
    v43 = v13;
    while (v45 != v15)
    {
      if (v15 >= *(v12 + 16))
      {
        goto LABEL_15;
      }

      sub_691F8(v16, v54);
      v52 = v15;
      sub_68D1C(v54, v53);
      sub_691F8(v53, &v55);
      sub_6620C(&qword_3BC278, &qword_2E2F50);
      sub_6620C(&qword_3BC1D8, &qword_2E2EB0);
      if (swift_dynamicCast())
      {
        sub_68D1C(&v46, v49);
        v57 = 0;
        v55 = 0u;
        v56 = 0u;
        v19 = v50;
        v20 = v51;
        sub_8C564(v49, v50);
        sub_25707C(v15, v10, &v55, v42, v59, v41, v19, v20, &v46);
        sub_69198(&v55, &qword_3BE008, &unk_2E5630);
        v21 = *(&v47 + 1);
        v22 = v48;
        v23 = sub_72084(&v46, *(&v47 + 1));
        *(&v56 + 1) = v21;
        v57 = *(v22 + 8);
        v24 = sub_720C8(&v55);
        (*(*(v21 - 8) + 16))(v24, v23, v21);
        sub_68CD0(&v46);
        sub_68CD0(v49);
      }

      else
      {
        v48 = 0;
        v46 = 0u;
        v47 = 0u;
        sub_69198(&v46, &qword_3C1C78, &qword_2EC190);
        sub_691F8(v53, &v55);
      }

      sub_69198(&v52, &qword_3C1C80, &qword_2EC198);
      v58 = v17;
      v26 = v17[2];
      v25 = v17[3];
      if (v26 >= v25 >> 1)
      {
        sub_64698((v25 > 1), v26 + 1, 1);
      }

      ++v15;
      v27 = *(&v56 + 1);
      v28 = v57;
      v29 = sub_8C564(&v55, *(&v56 + 1));
      v30 = __chkstk_darwin(v29);
      v32 = &v36 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v33 + 16))(v32, v30);
      sub_24EE68(v26, v32, &v58, v27, v28);
      result = sub_68CD0(&v55);
      v17 = v58;
      v16 += 40;
      v12 = v44;
      if (v43 == v15)
      {

        v6 = v36;
        a1 = v37;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {

    v17 = _swiftEmptyArrayStorage;
LABEL_13:
    v34 = v38;
    v35 = *(v39 + 68);

    *(v34 + v35) = v17;
    sub_125868(v34, a1, type metadata accessor for Shelf);
    sub_69198(v59, &unk_3BDDB8, &qword_2E5208);
    return (*(v40 + 8))(v42, v6);
  }

  return result;
}

uint64_t sub_117140@<X0>(char *a1@<X8>)
{
  v27 = a1;
  v2 = sub_2C0BB8();
  v25 = *(v2 - 8);
  v26 = v2;
  __chkstk_darwin(v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2C0C98();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_6620C(&qword_3C1C70, &unk_2EE730);
  __chkstk_darwin(v9 - 8);
  v11 = &v22 - v10;
  v12 = sub_2BFE68();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v1 + *(type metadata accessor for ShelfView(0) + 88);
  v17 = type metadata accessor for Shelf(0);
  sub_6932C(v16 + *(v17 + 48), v11, &qword_3C1C70, &unk_2EE730);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_69198(v11, &qword_3C1C70, &unk_2EE730);
    sub_114154(v8);
    sub_2C0BE8();
    (*(v6 + 8))(v8, v5);
    sub_2C0BA8();
    (*(v25 + 8))(v4, v26);
    return sub_2BFE38();
  }

  else
  {
    v23 = v5;
    v24 = v1;
    v19 = *(v13 + 32);
    v19(v15, v11, v12);
    sub_2BFE58();
    if (v20 & 1) != 0 || (sub_2BFE28(), (v21))
    {
      sub_114154(v8);
      sub_2C0BE8();
      (*(v6 + 8))(v8, v23);
      sub_2C0BA8();
      (*(v25 + 8))(v4, v26);
      sub_2BFE58();
      sub_2BFE28();
      sub_2BFE48();
      return (*(v13 + 8))(v15, v12);
    }

    else
    {
      return (v19)(v27, v15, v12);
    }
  }
}

uint64_t sub_117518()
{
  v0 = sub_2C0E48();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_6620C(&qword_3C8300, &qword_2E5510);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13[-1] - v6;
  type metadata accessor for ShelfView(0);
  type metadata accessor for Shelf(0);
  sub_2C1CD8();
  v8 = sub_691F8(v15, v14);
  sub_9F8B8(v8, v9, v10);
  sub_2BFCA8();
  sub_691F8(v15, v14);
  sub_6620C(&qword_3BC278, &qword_2E2F50);
  sub_6620C(&qword_3C1C68, &qword_2EC188);
  if (swift_dynamicCast())
  {
    sub_68CD0(v13);
  }

  (*(v1 + 104))(v3, enum case for PageMarginType.padding(_:), v0);
  sub_72B74(&unk_3C8340, &qword_3C8300, &qword_2E5510, &protocol conformance descriptor for ComponentView<A>);
  sub_2C3C28();
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  return sub_68CD0(v15);
}

uint64_t sub_1177C4()
{
  v0 = sub_2C0E48();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_6620C(&qword_3C8300, &qword_2E5510);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13[-1] - v6;
  type metadata accessor for ShelfView(0);
  type metadata accessor for Shelf(0);
  sub_2C1C88();
  v8 = sub_691F8(v15, v14);
  sub_9F8B8(v8, v9, v10);
  sub_2BFCA8();
  sub_691F8(v15, v14);
  sub_6620C(&qword_3BC278, &qword_2E2F50);
  sub_6620C(&qword_3C1C68, &qword_2EC188);
  if (swift_dynamicCast())
  {
    sub_68CD0(v13);
  }

  (*(v1 + 104))(v3, enum case for PageMarginType.padding(_:), v0);
  sub_72B74(&unk_3C8340, &qword_3C8300, &qword_2E5510, &protocol conformance descriptor for ComponentView<A>);
  sub_2C3C28();
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  return sub_68CD0(v15);
}

uint64_t sub_117A70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v98 = a4;
  v99 = sub_2C5118();
  v97 = *(v99 - 8);
  __chkstk_darwin(v99);
  v96 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_2C0A78();
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v91 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_6620C(&qword_3C1920, &qword_2EBCB0);
  __chkstk_darwin(v9 - 8);
  v90 = &v72 - v10;
  v85 = sub_2C1FA8();
  v83 = *(v85 - 8);
  __chkstk_darwin(v85);
  v82 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_6620C(&qword_3C17B0, &qword_2EB888);
  __chkstk_darwin(v73);
  v13 = &v72 - v12;
  v14 = sub_6620C(&qword_3C17A0, &qword_2EB878);
  v75 = *(v14 - 8);
  __chkstk_darwin(v14);
  v72 = &v72 - v15;
  v77 = sub_6620C(&qword_3C1798, &qword_2EB870);
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v100 = &v72 - v16;
  v80 = sub_6620C(&qword_3C1790, &qword_2EB868);
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v78 = &v72 - v17;
  v105 = sub_6620C(&qword_3C1788, &qword_2EB860);
  v81 = *(v105 - 8);
  __chkstk_darwin(v105);
  v101 = &v72 - v18;
  v87 = sub_6620C(&qword_3C1780, &qword_2EB858);
  v84 = *(v87 - 8);
  __chkstk_darwin(v87);
  v104 = &v72 - v19;
  v89 = sub_6620C(&qword_3C1778, &qword_2EB850);
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v86 = &v72 - v20;
  v92 = a3;
  sub_118A10(a1, a2, a3, v13);
  v74 = type metadata accessor for ShelfView(0);
  v21 = (a2 + *(v74 + 88));
  v22 = *v21;
  v23 = v21[1];
  v24 = (a2 + *(v74 + 84));
  v25 = *v24;
  v26 = *(v24 + 8);
  v27 = *(v24 + 9);
  v28 = v24[2];
  *&v111 = v25;
  BYTE8(v111) = v26;
  BYTE9(v111) = v27;
  *&v112 = v28;

  v29 = PageNamespace.wrappedValue.getter();
  LODWORD(a1) = sub_2C3648();
  sub_2C47C8();
  v31 = v30;
  v33 = v32;
  v34 = &v13[*(sub_6620C(&qword_3C1928, &qword_2EBCB8) + 36)];
  v103 = v22;
  *v34 = v22;
  *(v34 + 1) = v23;
  *(v34 + 2) = v29;
  *(v34 + 6) = a1;
  *(v34 + 4) = v31;
  *(v34 + 5) = v33;
  v34[48] = 1;
  v35 = type metadata accessor for Shelf(0);
  v36 = *(v35 + 40);
  v37 = v73;
  v38 = *(v73 + 52);
  v102 = v23;

  sub_68D34(v21 + v36, &v13[v38]);
  v39 = sub_72B74(&qword_3C17B8, &qword_3C17B0, &qword_2EB888, &protocol conformance descriptor for IDView<A, B>);
  v40 = v72;
  sub_2C3C98();
  sub_69198(v13, &qword_3C17B0, &qword_2EB888);
  v95 = a2;
  v106 = a2;
  v41 = sub_6620C(&qword_3C17A8, &qword_2EB880);
  *&v111 = v37;
  *(&v111 + 1) = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v45 = sub_118844(OpaqueTypeConformance2, v43, v44);
  v46 = sub_118898();
  sub_2C4128();
  (v75[1])(v40, v14);
  v73 = v35;
  v47 = *(v35 + 28);
  v75 = v21;
  if (*(v21 + v47) == 1)
  {
    sub_2BED28();
  }

  v48 = sub_2BED28();
  *&v111 = v14;
  *(&v111 + 1) = &type metadata for IsInPPTPredicate;
  *&v112 = v41;
  *(&v112 + 1) = OpaqueTypeConformance2;
  v113 = v45;
  v114 = v46;
  v49 = swift_getOpaqueTypeConformance2();
  v50 = sub_12598C(&qword_3C17D8, &type metadata accessor for SectionExposureEvent, &protocol conformance descriptor for SectionExposureEvent);
  v51 = v78;
  v52 = v77;
  v53 = v100;
  sub_2C3D98();
  (*(v76 + 8))(v53, v52);
  v107 = v103;
  v108 = v102;

  sub_2C61A8();
  v54 = v82;
  sub_2C1BF8();
  v107 = v52;
  v108 = v48;
  v109 = v49;
  v110 = v50;
  v100 = swift_getOpaqueTypeConformance2();
  v55 = sub_12598C(&qword_3BF420, &type metadata accessor for GenericGeometryReferenceBuilder, &protocol conformance descriptor for GenericGeometryReferenceBuilder);
  v56 = v80;
  v57 = v85;
  sub_2C3BD8();
  (*(v83 + 8))(v54, v57);
  sub_69198(&v111, &qword_3BE008, &unk_2E5630);
  (*(v79 + 8))(v51, v56);
  sub_6620C(&qword_3C17F8, &qword_2EB940);
  v58 = v90;
  sub_2C4398();
  v59 = v91;
  sub_2C0AA8();
  sub_11BF30();
  sub_2BFE28();
  *&v111 = v56;
  *(&v111 + 1) = v57;
  *&v112 = v100;
  *(&v112 + 1) = v55;
  v60 = swift_getOpaqueTypeConformance2();
  v61 = v105;
  v62 = v101;
  sub_2C3C68();
  (*(v93 + 8))(v59, v94);
  sub_69198(v58, &qword_3C1920, &qword_2EBCB0);
  (*(v81 + 8))(v62, v61);
  v63 = sub_114764();
  __chkstk_darwin(v63);
  sub_2C4DB8();
  if (v111 == 1)
  {
  }

  else
  {
    sub_2C4E58();
    sub_2C4DC8();
  }

  v64 = sub_2C4E28();
  *&v111 = v105;
  *(&v111 + 1) = v60;
  v65 = swift_getOpaqueTypeConformance2();
  v66 = v86;
  v67 = v87;
  v68 = v104;
  sub_2C3AD8();

  (*(v84 + 8))(v68, v67);

  v111 = 0u;
  v112 = 0u;
  v110 = &type metadata for String;
  v107 = v103;
  v108 = v102;
  v69 = v96;
  sub_2C50D8();
  sub_69198(&v111, qword_3C0250, &unk_2E4630);
  sub_69198(&v107, qword_3C0250, &unk_2E4630);
  *&v111 = v67;
  *(&v111 + 1) = v64;
  *&v112 = v65;
  swift_getOpaqueTypeConformance2();
  v70 = v89;
  sub_2C3B08();
  (*(v97 + 8))(v69, v99);
  return (*(v88 + 8))(v66, v70);
}

unint64_t sub_118844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C17C0;
  if (!qword_3C17C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C17C0);
  }

  return result;
}

unint64_t sub_118898()
{
  result = qword_3C17C8;
  if (!qword_3C17C8)
  {
    sub_718D4(&qword_3C17A8, &qword_2EB880);
    sub_718D4(&qword_3C17B0, &qword_2EB888);
    sub_72B74(&qword_3C17B8, &qword_3C17B0, &qword_2EB888, &protocol conformance descriptor for IDView<A, B>);
    swift_getOpaqueTypeConformance2();
    sub_12598C(&qword_3C17D0, type metadata accessor for OnStoreProductPagePPTModifier, &unk_2FCBA4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C17C8);
  }

  return result;
}

uint64_t type metadata accessor for ShelfView(uint64_t a1)
{
  result = qword_3C1860;
  if (!qword_3C1860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_118A10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v308 = a3;
  v316 = a2;
  *&v327 = a1;
  v321 = a4;
  v289 = sub_2C36B8();
  v288 = *(v289 - 8);
  __chkstk_darwin(v289);
  v285 = &v220 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v283 = &v220 - v6;
  v286 = sub_6620C(&qword_3C1948, &qword_2EBD38);
  v284 = *(v286 - 8);
  __chkstk_darwin(v286);
  v282 = &v220 - v7;
  v312 = sub_6620C(&qword_3C1950, &qword_2EBD40);
  __chkstk_darwin(v312);
  v292 = &v220 - v8;
  v310 = sub_6620C(&qword_3C1958, &qword_2EBD48);
  __chkstk_darwin(v310);
  v311 = &v220 - v9;
  v320 = sub_6620C(&qword_3C1960, &qword_2EBD50);
  __chkstk_darwin(v320);
  v313 = &v220 - v10;
  v251 = sub_6620C(&qword_3C1968, &qword_2EBD58);
  v250 = *(v251 - 8);
  __chkstk_darwin(v251);
  v252 = &v220 - v11;
  v294 = sub_6620C(&qword_3C1970, &qword_2EBD60);
  v254 = *(v294 - 8);
  __chkstk_darwin(v294);
  v253 = &v220 - v12;
  v295 = sub_6620C(&qword_3C1978, &qword_2EBD68);
  v256 = *(v295 - 8);
  __chkstk_darwin(v295);
  v255 = &v220 - v13;
  v244 = sub_2C14C8();
  v243 = *(v244 - 8);
  __chkstk_darwin(v244);
  v242 = &v220 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v290 = sub_6620C(&qword_3C1980, &qword_2EBD70);
  __chkstk_darwin(v290);
  v293 = &v220 - v15;
  v315 = type metadata accessor for ShelfView(0);
  v305 = *(v315 - 8);
  __chkstk_darwin(v315);
  v280 = &v220 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v307 = v16;
  __chkstk_darwin(v17);
  v306 = &v220 - v18;
  v19 = sub_2C0A78();
  __chkstk_darwin(v19 - 8);
  v247 = &v220 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v304 = sub_2BFE68();
  v303 = *(v304 - 8);
  __chkstk_darwin(v304);
  v324 = &v220 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Shelf(0);
  __chkstk_darwin(v22);
  *&v323 = &v220 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v281 = sub_6620C(&qword_3C1988, &qword_2EBD78);
  v246 = *(v281 - 8);
  __chkstk_darwin(v281);
  v245 = &v220 - v24;
  v287 = sub_6620C(&qword_3C1990, &qword_2EBD80);
  v249 = *(v287 - 8);
  __chkstk_darwin(v287);
  v248 = &v220 - v25;
  v309 = sub_6620C(&qword_3C1998, &qword_2EBD88);
  __chkstk_darwin(v309);
  v291 = &v220 - v26;
  v240 = sub_2C28A8();
  v234 = *(v240 - 8);
  __chkstk_darwin(v240);
  v239 = &v220 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = sub_6620C(&qword_3C19A0, &qword_2EBD90);
  v230 = *(v232 - 8);
  __chkstk_darwin(v232);
  v229 = &v220 - v28;
  v236 = sub_6620C(&qword_3C19A8, &qword_2EBD98);
  v233 = *(v236 - 8);
  __chkstk_darwin(v236);
  v231 = &v220 - v29;
  v238 = sub_6620C(&qword_3C19B0, &qword_2EBDA0);
  v237 = *(v238 - 8);
  __chkstk_darwin(v238);
  v235 = &v220 - v30;
  v279 = sub_6620C(&qword_3C19B8, &qword_2EBDA8);
  __chkstk_darwin(v279);
  v241 = &v220 - v31;
  v274 = sub_2C1318();
  v273 = *(v274 - 8);
  __chkstk_darwin(v274);
  v272 = &v220 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v271 = &v220 - v34;
  v317 = sub_6620C(&qword_3C19C0, &qword_2EBDB0);
  __chkstk_darwin(v317);
  v319 = &v220 - v35;
  v276 = sub_6620C(&qword_3C19C8, &qword_2EBDB8);
  __chkstk_darwin(v276);
  v277 = &v220 - v36;
  v318 = sub_6620C(&qword_3C19D0, &qword_2EBDC0);
  __chkstk_darwin(v318);
  v278 = &v220 - v37;
  v299 = sub_2C1958();
  v298 = *(v299 - 8);
  __chkstk_darwin(v299);
  v297 = &v220 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v326 = sub_2BFD68();
  v270 = *(v326 - 8);
  __chkstk_darwin(v326);
  v314 = &v220 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v269 = sub_2BFE18();
  v268 = *(v269 - 8);
  __chkstk_darwin(v269);
  *&v322 = &v220 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v267 = &v220 - v42;
  __chkstk_darwin(v43);
  v266 = &v220 - v44;
  v45 = sub_6620C(&qword_3BF898, &unk_2EA240);
  __chkstk_darwin(v45 - 8);
  v259 = &v220 - v46;
  v47 = sub_6620C(&qword_3BDF58, &unk_2E5B70);
  __chkstk_darwin(v47 - 8);
  v261 = &v220 - v48;
  v302 = sub_2C5258();
  v301 = *(v302 - 8);
  __chkstk_darwin(v302);
  v300 = &v220 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v296 = sub_6620C(&qword_3C8300, &qword_2E5510);
  v258 = *(v296 - 8);
  __chkstk_darwin(v296);
  v257 = &v220 - v50;
  v263 = sub_6620C(&qword_3C19D8, &qword_2EBDC8);
  v262 = *(v263 - 8);
  __chkstk_darwin(v263);
  v260 = &v220 - v51;
  v265 = sub_6620C(&qword_3C19E0, &qword_2EBDD0);
  v264 = *(v265 - 8);
  __chkstk_darwin(v265);
  v53 = &v220 - v52;
  v54 = sub_6620C(&qword_3C19E8, &qword_2EBDD8);
  __chkstk_darwin(v54);
  v56 = &v220 - v55;
  v57 = sub_6620C(&qword_3C19F0, &qword_2EBDE0);
  __chkstk_darwin(v57);
  v59 = &v220 - v58;
  v275 = sub_6620C(&qword_3C19F8, &qword_2EBDE8);
  __chkstk_darwin(v275);
  v61 = &v220 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v62);
  v64 = &v220 - v63;
  v65 = sub_6620C(&qword_3C1A00, &unk_2EF540);
  __chkstk_darwin(v65 - 8);
  v67 = &v220 - v66;
  v68 = type metadata accessor for ContentUnavailableComponentModel(0);
  v69 = *(v68 - 8);
  __chkstk_darwin(v68);
  __chkstk_darwin(v70);
  v74 = *(*(v327 + *(v72 + 68)) + 16);
  v325 = v72;
  if (v74)
  {
    goto LABEL_4;
  }

  v220 = v73;
  v221 = v54;
  v226 = v53;
  v222 = v57;
  v227 = v56;
  v223 = v59;
  v224 = v61;
  v228 = &v220 - v71;
  v225 = v64;
  sub_6932C(v327 + *(v72 + 64), v67, &qword_3C1A00, &unk_2EF540);
  if ((*(v69 + 48))(v67, 1, v68) == 1)
  {
    sub_69198(v67, &qword_3C1A00, &unk_2EF540);
LABEL_4:
    v75 = v316;
    v326 = v316 + *(v315 + 88);
    v76 = sub_2C0A98();
    v77 = swift_conformsToProtocol2();
    if (v77 && v76 && ((*(v77 + 8))(v76, v77) & 1) != 0 && (v78 = v271, sub_2C1338(), v79 = v272, sub_2C1308(), sub_12598C(&qword_3C1B80, &type metadata accessor for ListItemViewModel.PerfHacks, &protocol conformance descriptor for ListItemViewModel.PerfHacks), v80 = v274, v81 = sub_2C6138(), v82 = *(v273 + 8), v82(v79, v80), v83 = (v82)(v78, v80), (v81 & 1) == 0))
    {
      __chkstk_darwin(v83);
      sub_6620C(&qword_3C1B88, &qword_2EBED0);
      sub_124970();
      v207 = v229;
      sub_2C3948();
      v208 = sub_72B74(&qword_3C1B28, &qword_3C19A0, &qword_2EBD90, &protocol conformance descriptor for List<A, B>);
      v209 = v231;
      v210 = v232;
      sub_2C3FB8();
      (*(v230 + 8))(v207, v210);
      v211 = v239;
      sub_2C2898();
      *&v328 = v210;
      *(&v328 + 1) = v208;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v213 = v235;
      v214 = v236;
      v215 = v240;
      sub_2C4158();
      (*(v234 + 8))(v211, v215);
      (*(v233 + 8))(v209, v214);
      v216 = v300;
      sub_2C5248();
      *&v328 = v214;
      *(&v328 + 1) = v215;
      *&v329 = OpaqueTypeConformance2;
      *(&v329 + 1) = &protocol witness table for PlainListStyle;
      swift_getOpaqueTypeConformance2();
      v100 = v241;
      v217 = v238;
      sub_2C3A98();
      (*(v301 + 8))(v216, v302);
      (*(v237 + 8))(v213, v217);
      KeyPath = swift_getKeyPath();
      v219 = v100 + *(v279 + 36);
      *v219 = KeyPath;
      *(v219 + 8) = 1;
      v125 = &qword_3C19B8;
      v126 = &qword_2EBDA8;
      sub_6932C(v100, v277, &qword_3C19B8, &qword_2EBDA8);
      swift_storeEnumTagMultiPayload();
      sub_12439C();
      sub_1245E8();
      v127 = v278;
      sub_2C33C8();
      v197 = &qword_3C19D0;
      v198 = &qword_2EBDC0;
      sub_6932C(v127, v319, &qword_3C19D0, &qword_2EBDC0);
    }

    else
    {
      if (sub_2C0AE8())
      {
        if (sub_2C2348())
        {
          sub_124CA8(v327, v323, type metadata accessor for Shelf);
          sub_11BBB4(v322);
          (*(v303 + 16))(v324, v308, v304);
          sub_2C0AA8();
          v84 = v306;
          sub_124CA8(v75, v306, type metadata accessor for ShelfView);
          v85 = (*(v305 + 80) + 16) & ~*(v305 + 80);
          v86 = swift_allocObject();
          sub_125868(v84, v86 + v85, type metadata accessor for ShelfView);
          sub_6620C(&qword_3C1B70, &qword_2EBEC0);
          sub_12598C(&qword_3BD4F8, type metadata accessor for Shelf, &protocol conformance descriptor for Shelf);
          v87 = sub_718D4(&qword_3C1B78, &qword_2EBEC8);
          v88 = sub_718D4(&qword_3BDF60, &qword_2E5518);
          v89 = sub_72B74(&unk_3C8340, &qword_3C8300, &qword_2E5510, &protocol conformance descriptor for ComponentView<A>);
          *&v328 = v296;
          *(&v328 + 1) = v89;
          v90 = swift_getOpaqueTypeConformance2();
          *&v328 = v88;
          *(&v328 + 1) = v90;
          v91 = swift_getOpaqueTypeConformance2();
          *&v328 = v87;
          *(&v328 + 1) = v91;
          swift_getOpaqueTypeConformance2();
          v92 = v245;
          sub_2C0848();
          v93 = v300;
          sub_2C5248();
          v94 = sub_72B74(&qword_3C1AD8, &qword_3C1988, &qword_2EBD78, &protocol conformance descriptor for ShelfCollage<A, B>);
          v95 = v248;
          v96 = v281;
          sub_2C3A98();
          (*(v301 + 8))(v93, v302);
          (*(v246 + 8))(v92, v96);
          v97 = v249;
          v98 = v287;
          (*(v249 + 16))(v293, v95, v287);
          swift_storeEnumTagMultiPayload();
          *&v328 = v96;
          *(&v328 + 1) = v94;
          swift_getOpaqueTypeConformance2();
          v99 = sub_72B74(&qword_3C1AE0, &qword_3C1970, &qword_2EBD60, &protocol conformance descriptor for ShelfCollage2<A, B>);
          *&v328 = v294;
          *(&v328 + 1) = v99;
          swift_getOpaqueTypeConformance2();
          v100 = v291;
          sub_2C33C8();
          (*(v97 + 8))(v95, v98);
        }

        else
        {
          sub_6620C(&qword_3C17F8, &qword_2EB940);
          v174 = v242;
          sub_2C4378();
          (*(v243 + 8))(v174, v244);
          sub_124CA8(v327, v323, type metadata accessor for Shelf);
          (*(v303 + 16))(v324, v308, v304);
          v175 = v306;
          sub_124CA8(v75, v306, type metadata accessor for ShelfView);
          v176 = (*(v305 + 80) + 16) & ~*(v305 + 80);
          v177 = swift_allocObject();
          sub_125868(v175, v177 + v176, type metadata accessor for ShelfView);
          (*(v250 + 104))(v252, enum case for ShelfCollage2.Layout.collageSwoosh<A, B>(_:), v251);
          *&v327 = sub_6620C(&qword_3C1B48, &qword_2EBE98);
          sub_12598C(&qword_3BD4F8, type metadata accessor for Shelf, &protocol conformance descriptor for Shelf);
          v178 = sub_718D4(&qword_3C1B50, &qword_2EBEA0);
          v179 = sub_718D4(&qword_3C1B58, &qword_2EBEA8);
          v180 = sub_718D4(&qword_3C1B60, &qword_2EBEB0);
          v181 = sub_718D4(&qword_3C1B68, &qword_2EBEB8);
          v182 = sub_718D4(&qword_3BDF60, &qword_2E5518);
          v183 = sub_72B74(&unk_3C8340, &qword_3C8300, &qword_2E5510, &protocol conformance descriptor for ComponentView<A>);
          *&v328 = v296;
          *(&v328 + 1) = v183;
          v184 = swift_getOpaqueTypeConformance2();
          *&v328 = v182;
          *(&v328 + 1) = v184;
          v185 = swift_getOpaqueTypeConformance2();
          *&v328 = v181;
          *(&v328 + 1) = v185;
          v186 = swift_getOpaqueTypeConformance2();
          *&v328 = v180;
          *(&v328 + 1) = v186;
          v187 = swift_getOpaqueTypeConformance2();
          *&v328 = v179;
          *(&v328 + 1) = v187;
          v188 = swift_getOpaqueTypeConformance2();
          *&v328 = v178;
          *(&v328 + 1) = v188;
          swift_getOpaqueTypeConformance2();
          v189 = v253;
          sub_2C09D8();
          v190 = v300;
          sub_2C5248();
          v191 = sub_72B74(&qword_3C1AE0, &qword_3C1970, &qword_2EBD60, &protocol conformance descriptor for ShelfCollage2<A, B>);
          v192 = v255;
          v193 = v294;
          sub_2C3A98();
          (*(v301 + 8))(v190, v302);
          (*(v254 + 8))(v189, v193);
          v194 = v256;
          v195 = v295;
          (*(v256 + 16))(v293, v192, v295);
          swift_storeEnumTagMultiPayload();
          v196 = sub_72B74(&qword_3C1AD8, &qword_3C1988, &qword_2EBD78, &protocol conformance descriptor for ShelfCollage<A, B>);
          *&v328 = v281;
          *(&v328 + 1) = v196;
          swift_getOpaqueTypeConformance2();
          *&v328 = v193;
          *(&v328 + 1) = v191;
          swift_getOpaqueTypeConformance2();
          v100 = v291;
          sub_2C33C8();
          (*(v194 + 8))(v192, v195);
        }

        v125 = &qword_3C1998;
        v126 = &qword_2EBD88;
        sub_6932C(v100, v311, &qword_3C1998, &qword_2EBD88);
        swift_storeEnumTagMultiPayload();
        sub_123ED4();
        sub_124034();
        v127 = v313;
      }

      else
      {
        sub_124CA8(v327, v323, type metadata accessor for Shelf);
        v101 = v297;
        sub_11F890(v297);
        sub_2C0AD8();
        (*(v298 + 8))(v101, v299);
        sub_11BBB4(v322);
        (*(v303 + 16))(v324, v308, v304);
        v102 = v306;
        sub_124CA8(v75, v306, type metadata accessor for ShelfView);
        v103 = (*(v305 + 80) + 16) & ~*(v305 + 80);
        *&v327 = swift_allocObject();
        sub_125868(v102, v327 + v103, type metadata accessor for ShelfView);
        v104 = v280;
        sub_124CA8(v75, v280, type metadata accessor for ShelfView);
        v105 = swift_allocObject();
        sub_125868(v104, v105 + v103, type metadata accessor for ShelfView);
        v316 = sub_6620C(&qword_3C1A08, &qword_2EBDF0);
        v315 = sub_6620C(&qword_3C1A10, &qword_2EBDF8);
        sub_12598C(&qword_3BD4F8, type metadata accessor for Shelf, &protocol conformance descriptor for Shelf);
        v106 = sub_718D4(&qword_3C1A18, &qword_2EBE00);
        v107 = sub_718D4(&qword_3C1A20, &qword_2EBE08);
        v108 = sub_718D4(&qword_3C1A28, &qword_2EBE10);
        v109 = sub_718D4(&qword_3C1A30, &qword_2EBE18);
        v110 = sub_718D4(&qword_3C1A38, &qword_2EBE20);
        v111 = sub_123910(&qword_3C1A40, &qword_3C1A38, &qword_2EBE20, sub_1239C0);
        *&v328 = v110;
        *(&v328 + 1) = v111;
        v112 = swift_getOpaqueTypeConformance2();
        *&v328 = v109;
        *(&v328 + 1) = v112;
        v113 = swift_getOpaqueTypeConformance2();
        *&v328 = v108;
        *(&v328 + 1) = v113;
        v114 = swift_getOpaqueTypeConformance2();
        *&v328 = v107;
        *(&v328 + 1) = v114;
        v115 = swift_getOpaqueTypeConformance2();
        *&v328 = v106;
        *(&v328 + 1) = v115;
        swift_getOpaqueTypeConformance2();
        sub_123AD4();
        v116 = v282;
        sub_2BFF78();
        v117 = v283;
        sub_2C36A8();
        *(&v329 + 1) = sub_2C36D8();
        *&v330 = &protocol witness table for ViewAlignedScrollTargetBehavior;
        sub_720C8(&v328);
        v118 = v288;
        v119 = v289;
        (*(v288 + 16))(v285, v117, v289);
        sub_2C36C8();
        (*(v118 + 8))(v117, v119);
        v100 = v292;
        v120 = v286;
        sub_2BFF68();
        (*(v284 + 8))(v116, v120);
        sub_68CD0(&v328);
        v121 = swift_getKeyPath();
        v122 = sub_2C4A08();
        v123 = v100 + *(v312 + 36);
        *v123 = v121;
        *(v123 + 8) = v122;
        *(v123 + 16) = v124 & 1;
        v125 = &qword_3C1950;
        v126 = &qword_2EBD40;
        sub_6932C(v100, v311, &qword_3C1950, &qword_2EBD40);
        swift_storeEnumTagMultiPayload();
        sub_123ED4();
        sub_124034();
        v127 = v313;
      }

      sub_2C33C8();
      v197 = &qword_3C1960;
      v198 = &qword_2EBD50;
      sub_6932C(v127, v319, &qword_3C1960, &qword_2EBD50);
    }

    swift_storeEnumTagMultiPayload();
    sub_124310();
    sub_1247B0();
    sub_2C33C8();
    sub_69198(v127, v197, v198);
    return sub_69198(v100, v125, v126);
  }

  v128 = v228;
  sub_125868(v67, v228, type metadata accessor for ContentUnavailableComponentModel);
  *(&v329 + 1) = v68;
  *&v330 = sub_12598C(&qword_3BD3A8, type metadata accessor for ContentUnavailableComponentModel, &protocol conformance descriptor for ContentUnavailableComponentModel);
  v129 = sub_720C8(&v328);
  v130 = sub_124CA8(v128, v129, type metadata accessor for ContentUnavailableComponentModel);
  sub_9F8B8(v130, v131, v132);
  v133 = v257;
  sub_2BFCA8();
  v134 = v220;
  sub_124CA8(v128, v220, type metadata accessor for ContentUnavailableComponentModel);
  v135 = v300;
  sub_2C5238();
  v136 = v259;
  sub_6932C(v134 + *(v68 + 44), v259, &qword_3BF898, &unk_2EA240);
  v137 = v136;
  v138 = v261;
  sub_69130(v137, v261, &qword_3BDF58, &unk_2E5B70);
  v139 = sub_72B74(&unk_3C8340, &qword_3C8300, &qword_2E5510, &protocol conformance descriptor for ComponentView<A>);
  v140 = v260;
  v141 = v296;
  sub_2C3A98();
  sub_69198(v138, &qword_3BDF58, &unk_2E5B70);
  *&v327 = *(v301 + 8);
  v142 = v302;
  (v327)(v135, v302);
  sub_1259D4(v134, type metadata accessor for ContentUnavailableComponentModel);
  (*(v258 + 8))(v133, v141);
  v143 = (v316 + *(v315 + 88));
  sub_2C5248();
  *&v328 = v141;
  *(&v328 + 1) = v139;
  swift_getOpaqueTypeConformance2();
  v324 = v143;
  v144 = v263;
  sub_2C3A98();
  (v327)(v135, v142);
  (*(v262 + 8))(v140, v144);
  v145 = sub_2C3788();
  v146 = v266;
  sub_11BBB4(v266);
  sub_2BFDF8();
  v148 = v147;
  v149 = *(v268 + 8);
  v150 = v146;
  v151 = v269;
  v149(v150, v269);
  v152 = 0uLL;
  v327 = 0u;
  v153 = 0uLL;
  if ((v148 & 1) == 0)
  {
    sub_2C24D8();
    *(&v153 + 1) = v154;
    *(&v152 + 1) = v155;
  }

  v322 = v153;
  v323 = v152;
  v156 = v227;
  (*(v264 + 32))(v227, v226, v265);
  v157 = v156 + *(v221 + 36);
  *v157 = v145;
  *(v157 + 24) = v322;
  *(v157 + 8) = v323;
  *(v157 + 40) = v148 & 1;
  v158 = sub_2C37A8();
  v159 = v267;
  sub_11BBB4(v267);
  sub_2BFE08();
  v161 = v160;
  v149(v159, v151);
  v162 = 0uLL;
  v163 = v326;
  v164 = v270;
  v165 = v223;
  if ((v161 & 1) == 0)
  {
    sub_2C24D8();
    *(&v162 + 1) = v166;
    *(&v168 + 1) = v167;
    v327 = v168;
  }

  v323 = v162;
  sub_69130(v227, v165, &qword_3C19E8, &qword_2EBDD8);
  v169 = v165 + *(v222 + 36);
  *v169 = v158;
  *(v169 + 24) = v323;
  *(v169 + 8) = v327;
  *(v169 + 40) = v161 & 1;
  v170 = v297;
  sub_11F890(v297);
  v171 = v314;
  sub_2C0AD8();
  (*(v298 + 8))(v170, v299);
  v172 = sub_11528C();
  LOBYTE(v170) = sub_2BFD48(v172 & 1);
  (*(v164 + 8))(v171, v163);
  if ((v170 & 1) == 0 || (v173 = sub_2C0A98(), !swift_conformsToProtocol2()) || !v173)
  {
    sub_11BF30();
  }

  v200 = v225;
  v201 = v224;
  sub_2C46A8();
  sub_2C2AD8();
  sub_69130(v165, v201, &qword_3C19F0, &qword_2EBDE0);
  v202 = (v201 + *(v275 + 36));
  v203 = v333;
  v202[4] = v332;
  v202[5] = v203;
  v202[6] = v334;
  v204 = v329;
  *v202 = v328;
  v202[1] = v204;
  v205 = v331;
  v202[2] = v330;
  v202[3] = v205;
  sub_69130(v201, v200, &qword_3C19F8, &qword_2EBDE8);
  sub_6932C(v200, v277, &qword_3C19F8, &qword_2EBDE8);
  swift_storeEnumTagMultiPayload();
  sub_12439C();
  sub_1245E8();
  v206 = v278;
  sub_2C33C8();
  sub_6932C(v206, v319, &qword_3C19D0, &qword_2EBDC0);
  swift_storeEnumTagMultiPayload();
  sub_124310();
  sub_1247B0();
  sub_2C33C8();
  sub_69198(v206, &qword_3C19D0, &qword_2EBDC0);
  sub_69198(v200, &qword_3C19F8, &qword_2EBDE8);
  return sub_1259D4(v228, type metadata accessor for ContentUnavailableComponentModel);
}

void sub_11BAD4(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  type metadata accessor for HostProxy(0);
  sub_12598C(&qword_3BCB70, type metadata accessor for HostProxy, &protocol conformance descriptor for HostProxy);
  v2 = sub_2C2568();
  v4 = v3;

  v6 = sub_25AF0C(v5, 0, v2, v4 & 1, _swiftEmptyDictionarySingleton);

  *a1 = v6;
}

uint64_t sub_11BBB4@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = sub_6620C(&qword_3C1880, &qword_2F61C0);
  __chkstk_darwin(v1 - 8);
  v23 = (&v21 - v2);
  v3 = sub_2C1A68();
  v24 = *(v3 - 8);
  v25 = v3;
  __chkstk_darwin(v3);
  v22 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2C1958();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2BFD68();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ShelfView(0);
  type metadata accessor for Shelf(0);
  sub_11F890(v8);
  sub_2C0AD8();
  (*(v6 + 8))(v8, v5);
  v13 = sub_11528C();
  v14 = sub_2BFD48(v13 & 1);
  (*(v10 + 8))(v12, v9);
  if (v14)
  {
    v15 = sub_2C0A98();
    if (swift_conformsToProtocol2())
    {
      if (v15)
      {
        return sub_2BFDE8();
      }
    }
  }

  v16 = v23;
  sub_114F48(v23);
  v18 = v24;
  v17 = v25;
  if ((*(v24 + 48))(v16, 1, v25) == 1)
  {
    sub_69198(v16, &qword_3C1880, &qword_2F61C0);
    return sub_2BFDE8();
  }

  v20 = v22;
  (*(v18 + 32))(v22, v16, v17);
  sub_114C98();
  sub_114B40();
  sub_2C1A38();
  sub_2BFDE8();
  return (*(v18 + 8))(v20, v17);
}

uint64_t sub_11BF30()
{
  v1 = sub_2C30F8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_6620C(&qword_3C1910, &qword_2EBB30);
  __chkstk_darwin(v5);
  v7 = &v18 - v6;
  v8 = sub_6620C(&qword_3C1880, &qword_2F61C0);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for ShelfView(0);
  sub_6932C(v0 + *(v11 + 48), v7, &qword_3C1910, &qword_2EBB30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_69130(v7, v10, &qword_3C1880, &qword_2F61C0);
  }

  else
  {
    sub_2C5DD8();
    v12 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
  }

  v13 = sub_2C1A68();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v10, 1, v13) == 1)
  {
    sub_69198(v10, &qword_3C1880, &qword_2F61C0);
    return 0;
  }

  else
  {
    sub_114DF0();
    sub_2C1A48();
    v17 = v16;
    (*(v14 + 8))(v10, v13);
    return v17;
  }
}

uint64_t sub_11C238(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = sub_6620C(&qword_3C1BF0, &qword_2EBF68);
  __chkstk_darwin(v7);
  v12[1] = *(a1 + *(type metadata accessor for Shelf(0) + 68));

  sub_6620C(&qword_3C1938, &qword_2EBD28);
  sub_72B74(&qword_3C1BF8, &qword_3C1938, &qword_2EBD28, &protocol conformance descriptor for [A]);
  sub_2BFF38();
  swift_getKeyPath();
  sub_124CA8(a2, v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShelfView);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_125868(v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for ShelfView);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_125768;
  *(v10 + 24) = v9;
  sub_6620C(&qword_3C1BA0, &qword_2EBED8);
  sub_72B74(&qword_3C1C00, &qword_3C1BF0, &qword_2EBF68, &protocol conformance descriptor for IndexedRandomAccessCollection<A>);
  sub_1249F4();
  return sub_2C4558();
}

double sub_11C4F4@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v87 = a3;
  v85 = a4;
  v6 = sub_2C5118();
  v83 = *(v6 - 8);
  v84 = v6;
  __chkstk_darwin(v6);
  v82 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_6620C(&qword_3BDF58, &unk_2E5B70);
  __chkstk_darwin(v8 - 8);
  v80 = &v61 - v9;
  v81 = sub_2C5258();
  v79 = *(v81 - 8);
  __chkstk_darwin(v81);
  v78 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_2BE9B8();
  v65 = *(v67 - 8);
  __chkstk_darwin(v67);
  v64 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_6620C(&qword_3C1A60, &qword_2EBE30);
  __chkstk_darwin(v12);
  v14 = &v61 - v13;
  v15 = sub_6620C(&qword_3C1BC8, &qword_2EBEF8);
  v61 = *(v15 - 8);
  __chkstk_darwin(v15);
  v62 = &v61 - v16;
  v68 = sub_6620C(&qword_3C1BC0, &qword_2EBEF0);
  v63 = *(v68 - 8);
  __chkstk_darwin(v68);
  v18 = &v61 - v17;
  v70 = sub_6620C(&qword_3C1BB8, &qword_2EBEE8);
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v66 = &v61 - v19;
  v73 = sub_6620C(&qword_3C1C08, &qword_2EBFA0);
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v71 = &v61 - v20;
  v86 = sub_6620C(&qword_3C1BA8, &qword_2EBEE0);
  __chkstk_darwin(v86);
  v77 = &v61 - v21;
  v76 = sub_6620C(&qword_3C1C10, &qword_2EBFA8);
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v74 = &v61 - v22;
  v23 = sub_691F8(a2, &v92);
  sub_9F8B8(v23, v24, v25);
  sub_2BFCA8();
  KeyPath = swift_getKeyPath();
  v27 = v14;
  v28 = &v14[*(v12 + 36)];
  *v28 = KeyPath;
  v28[1] = a1;
  sub_691F8(a2, v88);
  sub_6620C(&qword_3BC278, &qword_2E2F50);
  sub_6620C(&qword_3C1C18, &qword_2EBFE0);
  if (swift_dynamicCast())
  {
    v29 = *(&v90 + 1);
    v30 = v91;
    v31 = sub_72084(&v89, *(&v90 + 1));
    *(&v93 + 1) = v29;
    v94 = *(v30 + 8);
    v32 = sub_720C8(&v92);
    (*(*(v29 - 8) + 16))(v32, v31, v29);
    sub_68CD0(&v89);
  }

  else
  {
    v91 = 0;
    v89 = 0u;
    v90 = 0u;
    sub_69198(&v89, &qword_3C1C20, &qword_2EBFE8);
    v92 = 0u;
    v93 = 0u;
    v94 = 0;
  }

  sub_1153E4(&v89);
  v33 = sub_1239F0();
  v34 = v62;
  sub_2C3CE8();
  sub_68CD0(&v89);
  sub_69198(v27, &qword_3C1A60, &qword_2EBE30);
  sub_69198(&v92, &qword_3BDFA0, &qword_2E5560);
  *&v92 = v12;
  *(&v92 + 1) = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_2C3D08();
  (*(v61 + 8))(v34, v15);
  *&v92 = v15;
  *(&v92 + 1) = OpaqueTypeConformance2;
  v36 = swift_getOpaqueTypeConformance2();
  v37 = v66;
  v38 = v68;
  sub_2C3D78();
  (*(v63 + 8))(v18, v38);
  sub_72084(a2, a2[3]);
  sub_2C4CF8();
  sub_72084(a2, a2[3]);
  v39 = v64;
  sub_2C4CE8();
  *&v92 = v38;
  *(&v92 + 1) = v36;
  swift_getOpaqueTypeConformance2();
  v40 = v71;
  v41 = v70;
  sub_2C3D88();

  (*(v65 + 8))(v39, v67);
  (*(v69 + 8))(v37, v41);
  v42 = sub_2C46A8();
  v44 = v43;
  v45 = v77;
  v46 = &v77[*(v86 + 36)];
  v47 = v78;
  sub_2C5238();
  sub_72084(a2, a2[3]);
  v48 = v80;
  sub_2C57B8();
  sub_2C3A98();
  sub_69198(v48, &qword_3BDF58, &unk_2E5B70);
  (*(v79 + 8))(v47, v81);
  v49 = &v46[*(sub_6620C(&qword_3C1BD8, &qword_2EBF00) + 36)];
  *v49 = v42;
  v49[1] = v44;
  (*(v72 + 32))(v45, v40, v73);
  sub_72084(a2, a2[3]);
  swift_getDynamicType();
  sub_2C67E8();
  sub_72084(a2, a2[3]);
  sub_2C4CB8();
  v50 = sub_2C6178();
  v52 = v51;
  sub_68D90(&v92);
  *(&v93 + 1) = &type metadata for String;
  *&v92 = v50;
  *(&v92 + 1) = v52;
  v53 = (v87 + *(type metadata accessor for ShelfView(0) + 88));
  v55 = *v53;
  v54 = v53[1];
  *(&v90 + 1) = &type metadata for String;
  *&v89 = v55;
  *(&v89 + 1) = v54;

  v56 = v82;
  sub_2C5108();

  sub_69198(&v89, qword_3C0250, &unk_2E4630);
  sub_69198(&v92, qword_3C0250, &unk_2E4630);
  sub_124AE8();
  v57 = v74;
  sub_2C3B08();
  (*(v83 + 8))(v56, v84);
  sub_69198(v45, &qword_3C1BA8, &qword_2EBEE0);
  v58 = v85;
  (*(v75 + 32))(v85, v57, v76);
  v59 = v58 + *(sub_6620C(&qword_3C1BA0, &qword_2EBED8) + 36);
  *(v59 + 32) = 0;
  result = 0.0;
  *v59 = 0u;
  *(v59 + 16) = 0u;
  return result;
}

void sub_11D0C8(uint64_t *a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  type metadata accessor for HostProxy(0);
  sub_12598C(&qword_3BCB70, type metadata accessor for HostProxy, &protocol conformance descriptor for HostProxy);
  v3 = sub_2C2568();
  v5 = v4;
  v6 = swift_getKeyPath();
  v7 = swift_getKeyPath();
  v8 = swift_getKeyPath();

  v9 = sub_25AF0C(KeyPath, 0, v3, v5 & 1, _swiftEmptyDictionarySingleton);

  v10 = sub_25B3B8(v9);

  v11 = sub_25AC84(v6, 0, v7, 0, v10);

  v12 = sub_25B190(v8, 0, v11);

  *a1 = v12;
}

uint64_t sub_11D290@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_6620C(&qword_3BDF58, &unk_2E5B70);
  __chkstk_darwin(v3 - 8);
  v5 = &v22 - v4;
  v6 = sub_6620C(&qword_3C8300, &qword_2E5510);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - v8;
  v10 = sub_6620C(&qword_3BDF60, &qword_2E5518);
  v24 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v22 - v11;
  v25 = sub_6620C(&qword_3C1B78, &qword_2EBEC8);
  v23 = *(v25 - 8);
  __chkstk_darwin(v25);
  v14 = &v22 - v13;
  v15 = sub_691F8(a1, &v30);
  sub_9F8B8(v15, v16, v17);
  sub_2BFCA8();
  sub_691F8(a1, &v30);
  sub_6620C(&qword_3BC278, &qword_2E2F50);
  sub_6620C(&qword_3BDF98, &qword_2E5558);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v29 = 0;
    memset(v28, 0, sizeof(v28));
  }

  sub_1153E4(v27);
  v18 = sub_72B74(&unk_3C8340, &qword_3C8300, &qword_2E5510, &protocol conformance descriptor for ComponentView<A>);
  sub_2C3CE8();
  sub_68CD0(v27);
  (*(v7 + 8))(v9, v6);
  sub_69198(v28, &qword_3BDFA0, &qword_2E5560);
  sub_72084(a1, a1[3]);
  sub_2C57B8();
  v30 = v6;
  v31 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_2C3C18();
  sub_69198(v5, &qword_3BDF58, &unk_2E5B70);
  (*(v24 + 8))(v12, v10);
  v30 = v10;
  v31 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v20 = v25;
  sub_2C3C78();
  return (*(v23 + 8))(v14, v20);
}

uint64_t sub_11D6D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a2;
  v70 = a3;
  v4 = sub_2BE9B8();
  v68 = *(v4 - 8);
  v69 = v4;
  __chkstk_darwin(v4);
  v67 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_6620C(&qword_3BDF58, &unk_2E5B70);
  __chkstk_darwin(v6 - 8);
  v65 = &v48 - v7;
  v66 = sub_2C5258();
  v62 = *(v66 - 8);
  __chkstk_darwin(v66);
  v59 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2C1168();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v48 - v14;
  v16 = sub_6620C(&qword_3C8300, &qword_2E5510);
  v48 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v48 - v17;
  v53 = sub_6620C(&qword_3BDF60, &qword_2E5518);
  v49 = *(v53 - 8);
  __chkstk_darwin(v53);
  v20 = &v48 - v19;
  v54 = sub_6620C(&qword_3C1B68, &qword_2EBEB8);
  v51 = *(v54 - 8);
  __chkstk_darwin(v54);
  v22 = &v48 - v21;
  v58 = sub_6620C(&qword_3C1B60, &qword_2EBEB0);
  v52 = *(v58 - 8);
  __chkstk_darwin(v58);
  v50 = &v48 - v23;
  v64 = sub_6620C(&qword_3C1B58, &qword_2EBEA8);
  v60 = *(v64 - 8);
  __chkstk_darwin(v64);
  v56 = &v48 - v24;
  v63 = sub_6620C(&qword_3C1B50, &qword_2EBEA0);
  v61 = *(v63 - 8);
  v25 = __chkstk_darwin(v63);
  v57 = &v48 - v26;
  v27 = *(v10 + 16);
  v28 = v27(v15, a1, v9, v25);
  sub_9F8B8(v28, v29, v30);
  sub_2BFC98();
  (v27)(v12, a1, v9);
  sub_6620C(&qword_3BDF98, &qword_2E5558);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v76 = 0;
    v74 = 0u;
    v75 = 0u;
  }

  sub_1153E4(v73);
  v31 = sub_72B74(&unk_3C8340, &qword_3C8300, &qword_2E5510, &protocol conformance descriptor for ComponentView<A>);
  sub_2C3CE8();
  sub_68CD0(v73);
  (*(v48 + 8))(v18, v16);
  sub_69198(&v74, &qword_3BDFA0, &qword_2E5560);
  sub_2C1148();
  sub_2C1158();
  v32 = v59;
  sub_2C5238();
  sub_72084(&v74, *(&v75 + 1));
  v33 = v65;
  sub_2C57B8();
  v73[0] = v16;
  v73[1] = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = v53;
  sub_2C3A98();
  sub_69198(v33, &qword_3BDF58, &unk_2E5B70);
  (*(v62 + 8))(v32, v66);
  (*(v49 + 8))(v20, v35);
  sub_68CD0(&v74);
  sub_2C1158();
  *&v74 = v35;
  *(&v74 + 1) = OpaqueTypeConformance2;
  v36 = swift_getOpaqueTypeConformance2();
  v37 = v50;
  v38 = v54;
  sub_2C3D08();
  (*(v51 + 8))(v22, v38);
  sub_2C1158();
  *&v74 = v38;
  *(&v74 + 1) = v36;
  v39 = swift_getOpaqueTypeConformance2();
  v40 = v56;
  v41 = v58;
  sub_2C3D78();
  (*(v52 + 8))(v37, v41);
  sub_2C1148();
  sub_72084(&v74, *(&v75 + 1));
  sub_2C4CF8();
  sub_2C1148();
  sub_72084(v73, v73[3]);
  v42 = v67;
  sub_2C4CE8();
  v71 = v41;
  v72 = v39;
  v43 = swift_getOpaqueTypeConformance2();
  v44 = v57;
  v45 = v64;
  sub_2C3D88();

  (*(v68 + 8))(v42, v69);
  (*(v60 + 8))(v40, v45);
  sub_68CD0(v73);
  sub_68CD0(&v74);
  *&v74 = v45;
  *(&v74 + 1) = v43;
  swift_getOpaqueTypeConformance2();
  v46 = v63;
  sub_2C3C78();
  return (*(v61 + 8))(v44, v46);
}