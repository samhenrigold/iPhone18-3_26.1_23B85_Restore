void sub_C0710(uint64_t a1)
{
  sub_3E5DC4();
  if (v1 <= 0x3F)
  {
    sub_3E7D54();
    if (v2 <= 0x3F)
    {
      sub_B815C(319, &qword_4F0220, type metadata accessor for ReferenceLinkTimeframe);
      if (v3 <= 0x3F)
      {
        sub_B8108(319, &qword_4F0218, &qword_4F0100, &qword_3FB1C0);
        if (v4 <= 0x3F)
        {
          sub_B8108(319, &unk_4F0228, &qword_4F00C8, &unk_3FBB50);
          if (v5 <= 0x3F)
          {
            sub_B815C(319, &qword_4EB028, &type metadata accessor for ImpressionMetrics);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for URLReferenceLink.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for URLReferenceLink.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_C09D8()
{
  result = qword_4F06D0;
  if (!qword_4F06D0)
  {
    result = swift_getWitnessTable(byte_3FBE78, &type metadata for URLReferenceLink.CodingKeys, v0, v1);
    atomic_store(result, &qword_4F06D0);
  }

  return result;
}

unint64_t sub_C0A30()
{
  result = qword_4F06D8;
  if (!qword_4F06D8)
  {
    result = swift_getWitnessTable("A\v\v", &type metadata for URLReferenceLink.CodingKeys, v0, v1);
    atomic_store(result, &qword_4F06D8);
  }

  return result;
}

unint64_t sub_C0A88()
{
  result = qword_4F06E0;
  if (!qword_4F06E0)
  {
    result = swift_getWitnessTable(byte_3FBDD8, &type metadata for URLReferenceLink.CodingKeys, v0, v1);
    atomic_store(result, &qword_4F06E0);
  }

  return result;
}

unint64_t sub_C0ADC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_4B0890;
  v6._object = a2;
  v4 = sub_3EE624(v3, v6);

  if (v4 >= 9)
  {
    return 9;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_C0B28()
{
  result = qword_4F06E8;
  if (!qword_4F06E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for URLReferenceLink.Hydration, &type metadata for URLReferenceLink.Hydration, v0, v1);
    atomic_store(result, &qword_4F06E8);
  }

  return result;
}

uint64_t BubbleTip.init(id:request:impressionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  v6 = a5 + *(type metadata accessor for BubbleTip(0) + 24);

  return sub_14A10(a4, v6);
}

uint64_t type metadata accessor for BubbleTip(uint64_t a1)
{
  result = qword_4F0758;
  if (!qword_4F0758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t BubbleTip.init<A>(from:style:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t *a5@<X8>)
{
  v8 = *(a3 - 8);
  __chkstk_darwin(a1);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_3E7284();
  v13 = v12;
  sub_C0DF4();
  (*(v8 + 16))(v10, a1, a3);
  v14 = sub_3EDA84();
  type metadata accessor for BubbleTip(0);
  sub_3ECF04();
  result = (*(v8 + 8))(a1, a3);
  *a5 = v11;
  a5[1] = v13;
  a5[2] = v14;
  return result;
}

uint64_t BubbleTip.impressionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for BubbleTip(0) + 24);

  return sub_7EA24(v3, a1);
}

double Paragraph.clickAction.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

unint64_t sub_C0DF4()
{
  result = qword_4F06F0;
  if (!qword_4F06F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_4F06F0);
  }

  return result;
}

unint64_t sub_C0E44()
{
  result = qword_4F06F8;
  if (!qword_4F06F8)
  {
    v3 = type metadata accessor for BubbleTip(255);
    result = swift_getWitnessTable(protocol conformance descriptor for BubbleTip, v3, v0, v1);
    atomic_store(result, &qword_4F06F8);
  }

  return result;
}

unint64_t sub_C0E9C(uint64_t a1)
{
  result = sub_C0E44();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_C0ED8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_C0FA8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_C1058(uint64_t a1)
{
  sub_C0DF4();
  if (v1 <= 0x3F)
  {
    sub_4D334(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for CategoryListItem(uint64_t a1)
{
  result = qword_4F0818;
  if (!qword_4F0818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CategoryListItem.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for CategoryListItem(0) + 28));

  return v1;
}

uint64_t CategoryListItem.subtitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for CategoryListItem(0) + 32));

  return v1;
}

uint64_t CategoryListItem.init(id:artwork:color:title:subtitle:url:playAction:segue:impressionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *a9 = a1;
  v19 = type metadata accessor for CategoryListItem(0);
  sub_FACC(a2, a9 + v19[5], &qword_4F1D50, &unk_3F7520);
  *(a9 + v19[6]) = a3;
  v20 = (a9 + v19[7]);
  *v20 = a4;
  v20[1] = a5;
  v21 = (a9 + v19[8]);
  *v21 = a6;
  v21[1] = a7;
  sub_FACC(a8, a9 + v19[9], &unk_4E9EE0, &unk_3F5BC0);
  v22 = a9 + v19[10];
  v23 = *(a10 + 16);
  *v22 = *a10;
  *(v22 + 1) = v23;
  *(v22 + 4) = *(a10 + 32);
  v24 = a9 + v19[11];
  v25 = *(a11 + 16);
  *v24 = *a11;
  *(v24 + 1) = v25;
  *(v24 + 4) = *(a11 + 32);
  return sub_FACC(a12, a9 + v19[12], &unk_4E9170, &unk_3F4890);
}

uint64_t CategoryListItem.shelfUniqueId.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0, &unk_3F5BC0);
  __chkstk_darwin(v1 - 8);
  v3 = v15 - v2;
  v15[1] = *v0;
  sub_C2A70();
  v16 = sub_3EE7A4();
  v17 = v4;
  v18._countAndFlagsBits = 45;
  v18._object = 0xE100000000000000;
  sub_3ED3D4(v18);
  v5 = type metadata accessor for CategoryListItem(0);
  sub_3ED3D4(*(v0 + v5[7]));
  v19._countAndFlagsBits = 45;
  v19._object = 0xE100000000000000;
  sub_3ED3D4(v19);
  v6 = (v0 + v5[8]);
  if (v6[1])
  {
    v7 = *v6;
    v8 = v6[1];
  }

  else
  {
    v7 = 7104878;
    v8 = 0xE300000000000000;
  }

  v20._countAndFlagsBits = v7;
  v20._object = v8;
  sub_3ED3D4(v20);

  v21._countAndFlagsBits = 45;
  v21._object = 0xE100000000000000;
  sub_3ED3D4(v21);
  sub_FBD0(v0 + v5[9], v3, &unk_4E9EE0, &unk_3F5BC0);
  v9 = sub_3E5DC4();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v3, 1, v9) == 1)
  {
    v11 = 7104878;
    sub_FCF8(v3, &unk_4E9EE0, &unk_3F5BC0);
    v12 = 0xE300000000000000;
  }

  else
  {
    v11 = sub_3E5CD4();
    v12 = v13;
    (*(v10 + 8))(v3, v9);
  }

  v22._countAndFlagsBits = v11;
  v22._object = v12;
  sub_3ED3D4(v22);

  return v16;
}

uint64_t CategoryListItem.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0, &unk_3F5BC0);
  __chkstk_darwin(v4 - 8);
  v58 = &v51 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50, &unk_3F7520);
  __chkstk_darwin(v6 - 8);
  v57 = &v51 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
  __chkstk_darwin(v8 - 8);
  v56 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v59 = &v51 - v11;
  v12 = sub_3E6044();
  __chkstk_darwin(v12 - 8);
  v13 = sub_3ED1F4();
  __chkstk_darwin(v13 - 8);
  v14 = sub_3ED1D4();
  __chkstk_darwin(v14 - 8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9BA8, &unk_3F5D40);
  __chkstk_darwin(v15 - 8);
  v17 = &v51 - v16;
  v18 = type metadata accessor for Category(0);
  v19 = *(v18 - 1);
  __chkstk_darwin(v18);
  v21 = (&v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MTCategory.category.getter(v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {

    sub_FCF8(v17, &qword_4E9BA8, &unk_3F5D40);
LABEL_5:
    v23 = type metadata accessor for CategoryListItem(0);
    return (*(*(v23 - 8) + 56))(a2, 1, 1, v23);
  }

  sub_C2AC4(v17, v21);
  v22 = v21 + v18[7];
  if (v22[4])
  {

    sub_C31B0(v21, type metadata accessor for Category);
    goto LABEL_5;
  }

  v55 = *v22;
  v66 = 0;
  v64 = 0u;
  v65 = 0u;
  if (sub_3E7584() <= 0)
  {
    v54 = 0;
    v53 = 0;
  }

  else
  {
    sub_3ED1C4();
    v74._countAndFlagsBits = 0;
    v74._object = 0xE000000000000000;
    sub_3ED1B4(v74);
    *&v67 = sub_3E7584();
    sub_3ED194();
    v75._countAndFlagsBits = 0x65776F6C6C6F4620;
    v75._object = 0xEF73776F68532064;
    sub_3ED1B4(v75);
    sub_3ED1E4();
    sub_3E6034();
    v54 = sub_3ED2A4();
    v53 = v25;
    *(&v68 + 1) = type metadata accessor for LibraryCategoryPlayAction(0);
    v69 = sub_C3168(&qword_4F07A8, type metadata accessor for LibraryCategoryPlayAction, protocol conformance descriptor for LibraryCategoryPlayAction);
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v67);
    MTCategory.playAction.getter(boxed_opaque_existential_0Tm);
    sub_FCF8(&v64, &qword_4EDE00, &qword_3F9910);
    v64 = v67;
    v65 = v68;
    v66 = v69;
  }

  v27 = v59;
  v28 = sub_3EC634();
  v29 = *(v28 - 8);
  v30 = *(v29 + 56);
  v31 = v29 + 56;
  v30(v27, 1, 1, v28);
  v32 = sub_3E7424();
  *(&v68 + 1) = v32;
  v69 = sub_C3168(&qword_4F07A0, &type metadata accessor for Podcasts, &protocol conformance descriptor for Podcasts);
  v33 = __swift_allocate_boxed_opaque_existential_0Tm(&v67);
  (*(*(v32 - 8) + 104))(v33, enum case for Podcasts.libraryCategoriesPageImpressionMetrics(_:), v32);
  LOBYTE(v32) = sub_3E6C64();
  __swift_destroy_boxed_opaque_existential_1Tm(&v67);
  if (v32)
  {
    *&v67 = *v21;
    sub_17A28();
    sub_3EE1F4();
    sub_3E85D4();
    v52 = v30;
    v51 = v31;
    v34 = v56;
    sub_3EC5A4();

    v35 = v59;
    sub_FCF8(v59, &unk_4E9170, &unk_3F4890);
    v52(v34, 0, 1, v28);
    sub_FACC(v34, v35, &unk_4E9170, &unk_3F4890);
  }

  v36 = *v21;
  v37 = v57;
  sub_FBD0(v21 + v18[8], v57, &qword_4F1D50, &unk_3F7520);
  v38 = v21[2];
  v56 = v21[1];
  v39 = v21 + v18[6];
  v40 = v58;
  sub_FBD0(v39, v58, &unk_4E9EE0, &unk_3F5BC0);
  sub_FBD0(&v64, v62, &qword_4EDE00, &qword_3F9910);

  sub_3E67A4();
  v41 = sub_3E8574();
  MTCategory.segue(with:targetType:)(&v67, v41, v42, v60);

  v73 = v67;
  sub_FCF8(&v73, &unk_4F8A10, &unk_3F6750);
  v72 = v68;
  sub_FCF8(&v72, &qword_4E94E0, &unk_3F5640);
  v71 = *(&v68 + 1);
  sub_FCF8(&v71, &unk_4F8A20, &unk_3F6760);
  sub_16AC0(v69, v70);

  sub_FCF8(&v64, &qword_4EDE00, &qword_3F9910);
  *a2 = v36;
  v43 = type metadata accessor for CategoryListItem(0);
  sub_FACC(v37, a2 + v43[5], &qword_4F1D50, &unk_3F7520);
  *(a2 + v43[6]) = v55;
  v44 = (a2 + v43[7]);
  *v44 = v56;
  v44[1] = v38;
  v45 = (a2 + v43[8]);
  v46 = v53;
  *v45 = v54;
  v45[1] = v46;
  sub_FACC(v40, a2 + v43[9], &unk_4E9EE0, &unk_3F5BC0);
  v47 = a2 + v43[10];
  v48 = v62[1];
  *v47 = v62[0];
  *(v47 + 1) = v48;
  *(v47 + 4) = v63;
  v49 = a2 + v43[11];
  v50 = v60[1];
  *v49 = v60[0];
  *(v49 + 1) = v50;
  *(v49 + 4) = v61;
  sub_FACC(v59, a2 + v43[12], &unk_4E9170, &unk_3F4890);
  sub_C31B0(v21, type metadata accessor for Category);
  return (*(*(v43 - 1) + 56))(a2, 0, 1, v43);
}

uint64_t CategoryListItem.hash(into:)(uint64_t a1)
{
  sub_C2A1C();
  sub_3EE354();
  sub_3EE344();
  sub_5B3D8(v2);
  type metadata accessor for CategoryListItem(0);
  return sub_3ED394();
}

Swift::Int CategoryListItem.hashValue.getter()
{
  sub_3EE954();
  sub_C2A1C();
  sub_3EE354();
  sub_3EE344();
  sub_5B3D8(v1);
  type metadata accessor for CategoryListItem(0);
  sub_3ED394();
  return sub_3EE9A4();
}

Swift::Int sub_C21E8(uint64_t a1)
{
  sub_3EE954();
  sub_C2A1C();
  sub_3EE354();
  sub_3EE344();
  sub_5B3D8(v2);
  sub_3ED394();
  return sub_3EE9A4();
}

uint64_t sub_C227C(uint64_t a1, uint64_t a2)
{
  sub_C2A1C();
  sub_3EE354();
  sub_3EE344();
  sub_5B3D8(v3);
  return sub_3ED394();
}

Swift::Int sub_C2300(uint64_t a1, uint64_t a2)
{
  sub_3EE954();
  sub_C2A1C();
  sub_3EE354();
  sub_3EE344();
  sub_5B3D8(v3);
  sub_3ED394();
  return sub_3EE9A4();
}

uint64_t _s8ShelfKit16CategoryListItemV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_3E5DC4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0, &unk_3F5BC0);
  __chkstk_darwin(v8 - 8);
  v10 = &v51 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9870, &unk_3FC170);
  __chkstk_darwin(v11);
  v13 = &v51 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50, &unk_3F7520);
  __chkstk_darwin(v14 - 8);
  v16 = (&v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v19 = (&v51 - v18);
  if (*a1 != *a2)
  {
    goto LABEL_34;
  }

  v55 = v4;
  v56 = v11;
  v52 = v10;
  v53 = v13;
  v51 = v7;
  v54 = v5;
  v20 = type metadata accessor for CategoryListItem(0);
  sub_FBD0(a1 + v20[5], v19, &qword_4F1D50, &unk_3F7520);
  v21 = sub_3E7784();
  v22 = *(*(v21 - 8) + 48);
  if (v22(v19, 1, v21) == 1)
  {
    sub_FCF8(v19, &qword_4F1D50, &unk_3F7520);
    v23 = 0;
    v24 = 0;
  }

  else
  {
    v23 = *v19;
    v24 = v19[1];

    sub_C31B0(v19, &type metadata accessor for ArtworkModel);
  }

  sub_FBD0(a2 + v20[5], v16, &qword_4F1D50, &unk_3F7520);
  if (v22(v16, 1, v21) == 1)
  {
    sub_FCF8(v16, &qword_4F1D50, &unk_3F7520);
    if (!v24)
    {
      goto LABEL_17;
    }

LABEL_15:

    goto LABEL_34;
  }

  v26 = *v16;
  v25 = v16[1];

  sub_C31B0(v16, &type metadata accessor for ArtworkModel);
  if (v24)
  {
    if (!v25)
    {
      goto LABEL_15;
    }

    if (v23 == v26 && v24 == v25)
    {
    }

    else
    {
      v27 = sub_3EE804();

      if ((v27 & 1) == 0)
      {
        goto LABEL_34;
      }
    }
  }

  else if (v25)
  {
    goto LABEL_15;
  }

LABEL_17:
  if (!sub_259EE0(*(a1 + v20[6]), *(a2 + v20[6])))
  {
    goto LABEL_34;
  }

  v28 = v20[7];
  v29 = *(a1 + v28);
  v30 = *(a1 + v28 + 8);
  v31 = (a2 + v28);
  if ((v29 != *v31 || v30 != v31[1]) && (sub_3EE804() & 1) == 0)
  {
    goto LABEL_34;
  }

  v32 = v20[8];
  v33 = (a1 + v32);
  v34 = *(a1 + v32 + 8);
  v35 = (a2 + v32);
  v36 = v35[1];
  if (!v34)
  {
    v37 = v56;
    if (!v36)
    {
      goto LABEL_28;
    }

LABEL_34:
    v45 = 0;
    return v45 & 1;
  }

  v37 = v56;
  if (!v36 || (*v33 != *v35 || v34 != v36) && (sub_3EE804() & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_28:
  v38 = v20[9];
  v39 = *(v37 + 48);
  v40 = a1 + v38;
  v41 = v53;
  sub_FBD0(v40, v53, &unk_4E9EE0, &unk_3F5BC0);
  sub_FBD0(a2 + v38, v41 + v39, &unk_4E9EE0, &unk_3F5BC0);
  v43 = v54;
  v42 = v55;
  v44 = *(v54 + 48);
  if (v44(v41, 1, v55) != 1)
  {
    v46 = v52;
    sub_FBD0(v41, v52, &unk_4E9EE0, &unk_3F5BC0);
    if (v44(v41 + v39, 1, v42) != 1)
    {
      v48 = v41 + v39;
      v49 = v51;
      (*(v43 + 32))(v51, v48, v42);
      sub_C3168(&qword_4E9880, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v45 = sub_3ED174();
      v50 = *(v43 + 8);
      v50(v49, v42);
      v50(v46, v42);
      sub_FCF8(v41, &unk_4E9EE0, &unk_3F5BC0);
      return v45 & 1;
    }

    (*(v43 + 8))(v46, v42);
    goto LABEL_33;
  }

  if (v44(v41 + v39, 1, v42) != 1)
  {
LABEL_33:
    sub_FCF8(v41, &qword_4E9870, &unk_3FC170);
    goto LABEL_34;
  }

  sub_FCF8(v41, &unk_4E9EE0, &unk_3F5BC0);
  v45 = 1;
  return v45 & 1;
}

unint64_t sub_C2A1C()
{
  result = qword_503E00;
  if (!qword_503E00)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for AdamID, &type metadata for AdamID, v0, v1);
    atomic_store(result, &qword_503E00);
  }

  return result;
}

unint64_t sub_C2A70()
{
  result = qword_4F0798;
  if (!qword_4F0798)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for AdamID, &type metadata for AdamID, v0, v1);
    atomic_store(result, &qword_4F0798);
  }

  return result;
}

uint64_t sub_C2AC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Category(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_C2B70(uint64_t a1)
{
  result = sub_C3168(&qword_4F07B0, type metadata accessor for CategoryListItem, protocol conformance descriptor for CategoryListItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_C2C24(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50, &unk_3F7520);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_3:
    v10 = *(v8 + 48);

    return v10(a1 + v9, a2, v7);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[7] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0, &unk_3F5BC0);
    if (*(*(v13 - 8) + 84) == a2)
    {
      v7 = v13;
      v8 = *(v13 - 8);
      v9 = a3[9];
      goto LABEL_3;
    }

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[12];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_C2DD0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50, &unk_3F7520);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[5];
LABEL_3:
    v12 = *(v10 + 56);

    return v12(a1 + v11, a2, a2, v9);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7] + 8) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0, &unk_3F5BC0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[9];
    goto LABEL_3;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
  v15 = *(*(v14 - 8) + 56);
  v16 = a1 + a4[12];

  return v15(v16, a2, a2, v14);
}

void sub_C2F68(uint64_t a1)
{
  sub_C3114(319, &qword_4EB1A8, &type metadata accessor for ArtworkModel);
  if (v1 <= 0x3F)
  {
    sub_1972C();
    if (v2 <= 0x3F)
    {
      sub_C3114(319, &qword_4E9918, &type metadata accessor for URL);
      if (v3 <= 0x3F)
      {
        sub_C30B0(319);
        if (v4 <= 0x3F)
        {
          sub_C3114(319, &qword_4EB028, &type metadata accessor for ImpressionMetrics);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_C30B0(uint64_t a1)
{
  if (!qword_4F0828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_502170, &qword_3F6E20);
    v1 = sub_3EE0F4();
    if (!v2)
    {
      atomic_store(v1, &qword_4F0828);
    }
  }
}

void sub_C3114(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_3EE0F4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_C3168(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_C31B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t CategorySelection.seeAllAction.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 48));

  return sub_1D4F0(a1, v1 + 48);
}

uint64_t type metadata accessor for CategorySelection(uint64_t a1)
{
  result = qword_4F0930;
  if (!qword_4F0930)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CategorySelection.init(id:title:categories:totalCategoriesCount:seeAllAction:impressionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  sub_1D4F0(a7, (a9 + 6));
  v11 = a9 + *(type metadata accessor for CategorySelection(0) + 36);

  return sub_14A10(a8, v11);
}

uint64_t sub_C3404(uint64_t a1)
{
  sub_3ED394();
}

unint64_t sub_C34FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_C4938(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_C352C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xEA00000000007365;
  v6 = 0x69726F6765746163;
  v7 = 0xEC0000006E6F6974;
  v8 = 0x63416C6C41656573;
  if (v2 != 4)
  {
    v8 = 0xD000000000000011;
    v7 = 0x8000000000422950;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x656C746974;
  if (v2 != 1)
  {
    v10 = 0xD000000000000014;
    v9 = 0x8000000000422990;
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

uint64_t sub_C35EC()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x69726F6765746163;
  v4 = 0x63416C6C41656573;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656C746974;
  if (v1 != 1)
  {
    v5 = 0xD000000000000014;
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

unint64_t sub_C36A8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_C4938(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_C36DC(uint64_t a1)
{
  v2 = sub_C3A84();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_C3718(uint64_t a1)
{
  v2 = sub_C3A84();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CategorySelection.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F0880, &qword_3FC190);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_C3A84();
  sub_3EEA14();
  v14 = 0;
  sub_3EE734();
  if (!v2)
  {
    v13 = 1;
    sub_3EE6F4();
    v12 = 2;
    sub_3EE754();
    v11 = *(v3 + 32);
    v10[15] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F0890, &qword_3FC198);
    sub_C4024(&qword_4F0898, &qword_4F08A0, protocol conformance descriptor for Category, &protocol conformance descriptor for <A> [A]);
    sub_3EE764();
    v10[14] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F0878, &unk_3FC180);
    sub_C40C0(&qword_4F08A8, &protocol conformance descriptor for CodeByKind<A>);
    sub_3EE764();
    type metadata accessor for CategorySelection(0);
    v10[13] = 5;
    sub_3EC634();
    sub_C4228(&qword_4F0138, &type metadata accessor for ImpressionMetrics, &protocol conformance descriptor for ImpressionMetrics);
    sub_3EE724();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_C3A84()
{
  result = qword_4F0888;
  if (!qword_4F0888)
  {
    result = swift_getWitnessTable(byte_3FC3F0, &type metadata for CategorySelection.CodingKeys, v0, v1);
    atomic_store(result, &qword_4F0888);
  }

  return result;
}

uint64_t CategorySelection.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F08B0, &qword_3FC1A0);
  v7 = *(v21 - 8);
  __chkstk_darwin(v21);
  v9 = &v20 - v8;
  v10 = type metadata accessor for CategorySelection(0);
  __chkstk_darwin(v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v22 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_C3A84();
  sub_3EE9F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v22);
  }

  LOBYTE(v23) = 0;
  *v12 = sub_3EE694();
  *(v12 + 1) = v14;
  LOBYTE(v23) = 1;
  v15 = v7;
  *(v12 + 2) = sub_3EE644();
  *(v12 + 3) = v16;
  LOBYTE(v23) = 2;
  *(v12 + 5) = sub_3EE6B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F0890, &qword_3FC198);
  v26 = 3;
  sub_C4024(&qword_4F08B8, &qword_4F08C0, protocol conformance descriptor for Category, &protocol conformance descriptor for <A> [A]);
  sub_3EE6C4();
  *(v12 + 4) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F0878, &unk_3FC180);
  v26 = 4;
  sub_C40C0(&qword_4F08C8, &protocol conformance descriptor for CodeByKind<A>);
  sub_3EE6C4();
  v17 = v24;
  *(v12 + 3) = v23;
  *(v12 + 4) = v17;
  *(v12 + 10) = v25;
  sub_3EC634();
  LOBYTE(v23) = 5;
  sub_C4228(&qword_4F0198, &type metadata accessor for ImpressionMetrics, &protocol conformance descriptor for ImpressionMetrics);
  v18 = v21;
  sub_3EE684();
  (*(v15 + 8))(v9, v18);
  sub_14A10(v6, &v12[*(v10 + 36)]);
  sub_C4110(v12, v20);
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  return sub_C4174(v12);
}

uint64_t sub_C3FBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F0878, &unk_3FC180);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_C4024(unint64_t *a1, unint64_t *a2, const char *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F0890, &qword_3FC198);
    v10 = sub_C4228(a2, type metadata accessor for Category, a3);
    result = swift_getWitnessTable(a4, v9, &v10);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_C40C0(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F0878, &unk_3FC180);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_C4110(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CategorySelection(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_C4174(uint64_t a1)
{
  v2 = type metadata accessor for CategorySelection(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_C41D0(uint64_t a1)
{
  result = sub_C4228(&qword_4F08D0, type metadata accessor for CategorySelection, protocol conformance descriptor for CategorySelection);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_C4228(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_C4374(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_C4444(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_C44F4(uint64_t a1)
{
  sub_1972C();
  if (v1 <= 0x3F)
  {
    sub_C467C(319, &qword_4F0940, type metadata accessor for Category, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      sub_C4620(319);
      if (v3 <= 0x3F)
      {
        sub_C467C(319, &qword_4EB028, &type metadata accessor for ImpressionMetrics, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_C4620(uint64_t a1)
{
  if (!qword_4F0948)
  {
    sub_8181C();
    v1 = sub_3EBC74();
    if (!v2)
    {
      atomic_store(v1, &qword_4F0948);
    }
  }
}

void sub_C467C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for CategorySelection.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CategorySelection.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_C4834()
{
  result = qword_4F0988;
  if (!qword_4F0988)
  {
    result = swift_getWitnessTable(byte_3FC3C8, &type metadata for CategorySelection.CodingKeys, v0, v1);
    atomic_store(result, &qword_4F0988);
  }

  return result;
}

unint64_t sub_C488C()
{
  result = qword_4F0990;
  if (!qword_4F0990)
  {
    result = swift_getWitnessTable(byte_3FC300, &type metadata for CategorySelection.CodingKeys, v0, v1);
    atomic_store(result, &qword_4F0990);
  }

  return result;
}

unint64_t sub_C48E4()
{
  result = qword_4F0998;
  if (!qword_4F0998)
  {
    result = swift_getWitnessTable(aA_1, &type metadata for CategorySelection.CodingKeys, v0, v1);
    atomic_store(result, &qword_4F0998);
  }

  return result;
}

unint64_t sub_C4938(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_4B0988;
  v6._object = a2;
  v4 = sub_3EE624(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

BOOL sub_C4BF8(_BYTE *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

unsigned __int8 *sub_C4C28@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

unsigned __int8 *sub_C4C54@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

uint64_t sub_C4D44@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = sub_F9A8(a1);

  *a2 = v3;
  return result;
}

uint64_t type metadata accessor for Link(uint64_t a1)
{
  result = qword_4F0A30;
  if (!qword_4F0A30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Link.init(id:title:subtitle:artwork:presentation:segue:impressionMetrics:appEntityIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, __int16 a8@<W7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  v15 = type metadata accessor for Link(0);
  sub_FBD0(a7, a9 + v15[7], &qword_4F1D50, &unk_3F7520);
  if ((a8 & 0x100) != 0)
  {
    LOBYTE(a8) = 0;
  }

  sub_FCF8(a7, &qword_4F1D50, &unk_3F7520);
  *(a9 + v15[8]) = a8;
  v16 = a9 + v15[9];
  v17 = *(a10 + 16);
  *v16 = *a10;
  *(v16 + 1) = v17;
  *(v16 + 4) = *(a10 + 32);
  sub_FACC(a11, a9 + v15[10], &unk_4E9170, &unk_3F4890);
  return sub_FACC(a12, a9 + v15[11], &qword_4F09A0, &unk_4098C0);
}

uint64_t Link.init(from:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50, &unk_3F7520);
  __chkstk_darwin(v5 - 8);
  v7 = &v23 - v6;
  v8 = a1[8];
  if (v8)
  {
    v9 = a1[7];
    v27 = v2;
    v10 = *a1;
    v11 = a1[1];
    v12 = a1[10];
    v24 = a1[9];
    v25 = v9;
    v13 = type metadata accessor for LegacyActionLink(0);
    sub_FBD0(a1 + v13[8], v7, &qword_4F1D50, &unk_3F7520);
    v26 = *(a1 + v13[9]);
    v14 = type metadata accessor for Link(0);
    sub_1F958((a1 + 2), &a2[v14[9]]);
    sub_FBD0(a1 + v13[10], &a2[v14[10]], &unk_4E9170, &unk_3F4890);
    v15 = v14[11];
    v16 = sub_3E5764();
    (*(*(v16 - 8) + 56))(&a2[v15], 1, 1, v16);
    *a2 = v10;
    *(a2 + 1) = v11;
    v17 = v24;
    *(a2 + 2) = v25;
    *(a2 + 3) = v8;
    *(a2 + 4) = v17;
    *(a2 + 5) = v12;
    sub_FBD0(v7, &a2[v14[7]], &qword_4F1D50, &unk_3F7520);

    sub_C52B0(a1);
    result = sub_FCF8(v7, &qword_4F1D50, &unk_3F7520);
    a2[v14[8]] = v26;
  }

  else
  {
    v19 = sub_3ECEE4();
    sub_C6E50(&qword_4E9AB8, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
    swift_allocError();
    v21 = v20;
    v22 = type metadata accessor for Link(0);
    *v21 = 0x656C746974;
    v21[1] = 0xE500000000000000;
    v21[2] = v22;
    (*(*(v19 - 8) + 104))(v21, enum case for JSONError.missingProperty(_:), v19);
    swift_willThrow();
    return sub_C52B0(a1);
  }

  return result;
}

uint64_t sub_C52B0(uint64_t a1)
{
  v2 = type metadata accessor for LegacyActionLink(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_C538C@<X0>(uint64_t *a2@<X8>)
{
  result = sub_3EBDC4();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_C53C8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_C66B4(a2, a3);
  if (!v3)
  {
    *a1 = result;
  }

  return result;
}

uint64_t Link.init(deserializing:using:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v109 = a2;
  v110 = a1;
  v94 = a3;
  v4 = sub_3EBE74();
  __chkstk_darwin(v4 - 8);
  v101 = &v86[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_3ECE84();
  v102 = *(v6 - 8);
  v103 = v6;
  __chkstk_darwin(v6);
  v100 = &v86[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F09A0, &unk_4098C0);
  __chkstk_darwin(v8 - 8);
  v92 = &v86[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
  __chkstk_darwin(v10 - 8);
  v98 = &v86[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50, &unk_3F7520);
  __chkstk_darwin(v12 - 8);
  v97 = &v86[-v13];
  v104 = type metadata accessor for Link(0);
  __chkstk_darwin(v104);
  v91 = &v86[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v93 = &v86[-v16];
  v17 = sub_3EBF94();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v90 = &v86[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v22 = &v86[-v21];
  v23 = sub_3EBDF4();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v99 = &v86[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v26);
  v89 = &v86[-v27];
  __chkstk_darwin(v28);
  v88 = &v86[-v29];
  __chkstk_darwin(v30);
  v95 = &v86[-v31];
  __chkstk_darwin(v32);
  v34 = &v86[-v33];
  v35 = type metadata accessor for LegacyActionLink(0);
  __chkstk_darwin(v35 - 8);
  v37 = &v86[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v39 = __chkstk_darwin(v38);
  v41 = &v86[-v40];
  v42 = *(v24 + 16);
  v108 = v23;
  v42(v34, v110, v23, v39);
  v106 = v18;
  v107 = v17;
  v43 = *(v18 + 16);
  v43(v22, v109, v17);
  v44 = v105;
  LegacyActionLink.init(deserializing:using:)(v34, v22, v41);
  v96 = v43;
  if (!v44)
  {
    sub_C6B90(v41, v37, type metadata accessor for LegacyActionLink);
    v45 = v93;
    Link.init(from:)(v37, v93);
    (*(v106 + 8))(v109, v107);
    (*(v24 + 8))(v110, v108);
    sub_C52B0(v41);
    return sub_C6B2C(v45, v94);
  }

  v105 = 0;
  v46 = v24;
  v47 = v100;
  sub_3ECE14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB5C8, &unk_407330);
  sub_3EBE94();
  *(swift_allocObject() + 16) = xmmword_3F5630;
  sub_3EBE64();
  v118._countAndFlagsBits = 0xD00000000000002ALL;
  v118._object = 0x8000000000427170;
  sub_3EBE54(v118);
  swift_getErrorValue();
  v48 = v116;
  v49 = v117;
  *(&v112 + 1) = v117;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v111);
  (*(*(v49 - 8) + 16))(boxed_opaque_existential_0Tm, v48, v49);
  sub_3EBE34();
  sub_FCF8(&v111, &unk_501090, &unk_3F48A0);
  v119._countAndFlagsBits = 0;
  v119._object = 0xE000000000000000;
  sub_3EBE54(v119);
  sub_3EBE84();
  v51 = v103;
  sub_3ECB84();

  (*(v102 + 8))(v47, v51);
  v52 = 25705;
  v53 = 0xE200000000000000;
  v54 = v99;
  sub_3EBE04();
  v103 = sub_3EBDC4();
  v56 = v55;
  v59 = *(v46 + 8);
  v57 = (v46 + 8);
  v58 = v59;
  v60 = v108;
  v59(v54, v108);
  if (!v56)
  {
    goto LABEL_9;
  }

  v102 = v56;
  v52 = 0x656C746974;
  v61 = v95;
  sub_3EBE04();
  v62 = sub_3EBDC4();
  v64 = v63;
  v58(v61, v60);
  if (!v64)
  {

    v53 = 0xE500000000000000;
LABEL_9:
    v83 = sub_3ECEE4();
    sub_C6E50(&qword_4E9AB8, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
    swift_allocError();
    *v84 = v52;
    v84[1] = v53;
    v84[2] = v104;
    (*(*(v83 - 8) + 104))(v84, enum case for JSONError.missingProperty(_:), v83);
    swift_willThrow();
    (*(v106 + 8))(v109, v107);
    return (v58)(v110, v60);
  }

  v65 = v88;
  v100 = v62;
  sub_3EBE04();
  v99 = sub_3EBDC4();
  v95 = v66;
  v58(v65, v60);
  sub_3E7784();
  v93 = v64;
  v67 = v89;
  sub_3EBE04();
  v68 = v90;
  v101 = v57;
  v69 = v109;
  v70 = v107;
  v71 = v96;
  v96(v90, v109, v107);
  sub_C6E50(&qword_4EECC8, &type metadata accessor for ArtworkModel, &protocol conformance descriptor for ArtworkModel);
  sub_3EC574();
  sub_3EBE04();
  v71(v68, v69, v70);
  sub_4CDFC();
  sub_3EC574();
  LODWORD(v88) = v114;
  v87 = v115;
  sub_3EBE04();
  sub_3EC254();
  v58(v67, v108);
  sub_3EC634();
  sub_3EBE04();
  v96(v68, v69, v70);
  sub_3EC574();
  v72 = sub_3E5764();
  v73 = v92;
  (*(*(v72 - 8) + 56))(v92, 1, 1, v72);
  v74 = v91;
  v75 = v102;
  *v91 = v103;
  v74[1] = v75;
  v76 = v93;
  v74[2] = v100;
  v74[3] = v76;
  v77 = v95;
  v74[4] = v99;
  v74[5] = v77;
  v78 = v104;
  v79 = v97;
  sub_FBD0(v97, v74 + *(v104 + 28), &qword_4F1D50, &unk_3F7520);
  (*(v106 + 8))(v69, v70);
  v58(v110, v108);
  sub_FCF8(v79, &qword_4F1D50, &unk_3F7520);
  v80 = v88;
  if (v87)
  {
    v80 = 0;
  }

  *(v74 + v78[8]) = v80;
  v81 = v74 + v78[9];
  v82 = v112;
  *v81 = v111;
  *(v81 + 1) = v82;
  *(v81 + 4) = v113;
  sub_FACC(v98, v74 + v78[10], &unk_4E9170, &unk_3F4890);
  sub_FACC(v73, v74 + v78[11], &qword_4F09A0, &unk_4098C0);
  return sub_C6B2C(v74, v94);
}

uint64_t Link.clickSender.getter@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for Link(0);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(a1);
  return sub_C6B90(v1, boxed_opaque_existential_0Tm, type metadata accessor for Link);
}

uint64_t sub_C6190@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = a1;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(a2);
  return sub_C6B90(v2, boxed_opaque_existential_0Tm, type metadata accessor for Link);
}

uint64_t Link.appEntityAnnotation()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F09A0, &unk_4098C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v14[-1] - v4;
  v6 = type metadata accessor for Link(0);
  sub_FBD0(v1 + *(v6 + 44), v5, &qword_4F09A0, &unk_4098C0);
  v7 = sub_3E5764();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) != 1)
  {
    (*(v8 + 32))(a1, v5, v7);
    v11 = 0;
    return (*(v8 + 56))(a1, v11, 1, v7);
  }

  sub_FCF8(v5, &qword_4F09A0, &unk_4098C0);
  sub_FBD0(v1 + *(v6 + 36), v14, &qword_4EDE00, &qword_3F9910);
  if (!v14[3])
  {
    sub_FCF8(v14, &qword_4EDE00, &qword_3F9910);
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_502170, &qword_3F6E20);
  type metadata accessor for ChannelPowerSwooshAction(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v11 = 1;
    return (*(v8 + 56))(a1, v11, 1, v7);
  }

  v9 = *(v13 + OBJC_IVAR____TtC8ShelfKit24ChannelPowerSwooshAction_channelAdamId + 8);
  if (!v9)
  {

    goto LABEL_9;
  }

  v10 = *(v13 + OBJC_IVAR____TtC8ShelfKit24ChannelPowerSwooshAction_channelAdamId);
  sub_3E6E44();
  v14[0] = v10;
  v14[1] = v9;
  sub_C6E50(&qword_4E9B88, &type metadata accessor for ChannelEntity, &protocol conformance descriptor for ChannelEntity);

  sub_3E5754();

  v11 = 0;
  return (*(v8 + 56))(a1, v11, 1, v7);
}

uint64_t sub_C6468(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000000004271A0 == a2 || (sub_3EE804() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656B63656863 && a2 == 0xE700000000000000 || (sub_3EE804() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64656C6261736964 && a2 == 0xE800000000000000 || (sub_3EE804() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x80000000004271C0 == a2 || (sub_3EE804() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000021 && 0x80000000004271E0 == a2 || (sub_3EE804() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000000427210 == a2 || (sub_3EE804() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000000427230 == a2)
  {

    return 64;
  }

  else
  {
    v5 = sub_3EE804();

    if (v5)
    {
      return 64;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_C66B4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EDC98, &qword_41CF30);
  __chkstk_darwin(v5 - 8);
  v7 = &v33[-v6];
  v8 = sub_3ECED4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v33[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_3EBD54();
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    (*(v9 + 32))(v11, v7, v8);
    v17 = sub_3ECE94();
    v18 = *(v17 + 16);
    if (v18)
    {
      v35 = v2;
      v36 = a2;
      v37 = a1;
      v38 = _swiftEmptyArrayStorage;
      sub_41A74(0, v18, 0);
      v19 = v38;
      v20 = (v17 + 40);
      do
      {
        v21 = *(v20 - 1);
        v22 = *v20;

        v23 = sub_C6468(v21, v22);
        v38 = v19;
        v25 = v19[2];
        v24 = v19[3];
        if (v25 >= v24 >> 1)
        {
          v34 = v23;
          sub_41A74((v24 > 1), v25 + 1, 1);
          LOBYTE(v23) = v34;
          v19 = v38;
        }

        v19[2] = v25 + 1;
        *(v19 + v25 + 32) = v23;
        v20 += 2;
        --v18;
      }

      while (v18);

      a2 = v36;
      a1 = v37;
      v26 = v19[2];
      if (v26)
      {
        goto LABEL_9;
      }
    }

    else
    {

      v19 = _swiftEmptyArrayStorage;
      v26 = _swiftEmptyArrayStorage[2];
      if (v26)
      {
LABEL_9:
        LODWORD(v16) = 0;
        v27 = (v19 + 4);
        do
        {
          v29 = *v27++;
          v28 = v29;
          if ((v29 & ~v16) == 0)
          {
            v28 = 0;
          }

          v16 = v28 | v16;
          --v26;
        }

        while (v26);
        goto LABEL_16;
      }
    }

    v16 = 0;
LABEL_16:

    v30 = sub_3EBF94();
    (*(*(v30 - 8) + 8))(a2, v30);
    v31 = sub_3EBDF4();
    (*(*(v31 - 8) + 8))(a1, v31);
    (*(v9 + 8))(v11, v8);
    return v16;
  }

  sub_FCF8(v7, &qword_4EDC98, &qword_41CF30);
  v12 = sub_3ECEE4();
  sub_C6E50(&qword_4E9AB8, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
  swift_allocError();
  *v13 = &type metadata for Link.Presentation;
  v13[1] = _swiftEmptyArrayStorage;
  (*(*(v12 - 8) + 104))(v13, enum case for JSONError.malformedDocument(_:), v12);
  swift_willThrow();
  v14 = sub_3EBF94();
  (*(*(v14 - 8) + 8))(a2, v14);
  v15 = sub_3EBDF4();
  (*(*(v15 - 8) + 8))(a1, v15);
  return 0;
}

uint64_t sub_C6B2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Link(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_C6B90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_C6BFC()
{
  result = qword_4F09A8;
  if (!qword_4F09A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Link.Presentation, &type metadata for Link.Presentation, v0, v1);
    atomic_store(result, &qword_4F09A8);
  }

  return result;
}

unint64_t sub_C6C54()
{
  result = qword_4F09B0;
  if (!qword_4F09B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Link.Presentation, &type metadata for Link.Presentation, v0, v1);
    atomic_store(result, &qword_4F09B0);
  }

  return result;
}

unint64_t sub_C6CAC()
{
  result = qword_4F09B8;
  if (!qword_4F09B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Link.Presentation, &type metadata for Link.Presentation, v0, v1);
    atomic_store(result, &qword_4F09B8);
  }

  return result;
}

unint64_t sub_C6D04()
{
  result = qword_4F09C0;
  if (!qword_4F09C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Link.Presentation, &type metadata for Link.Presentation, v0, v1);
    atomic_store(result, &qword_4F09C0);
  }

  return result;
}

uint64_t sub_C6DA0(uint64_t a1)
{
  result = sub_C6E50(&qword_4F09C8, type metadata accessor for Link, protocol conformance descriptor for Link);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_C6DF8(uint64_t a1)
{
  result = sub_C6E50(&qword_4F09D0, type metadata accessor for Link, protocol conformance descriptor for Link);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_C6E50(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_C6EAC(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50, &unk_3F7520);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F09A0, &unk_4098C0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[11];

  return v15(v16, a2, v14);
}

uint64_t sub_C7050(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50, &unk_3F7520);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F09A0, &unk_4098C0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[11];

  return v15(v16, a2, a2, v14);
}

void sub_C71E0(uint64_t a1)
{
  sub_1972C();
  if (v1 <= 0x3F)
  {
    sub_C7318(319, &qword_4EB1A8, &type metadata accessor for ArtworkModel);
    if (v2 <= 0x3F)
    {
      sub_C30B0(319);
      if (v3 <= 0x3F)
      {
        sub_C7318(319, &qword_4EB028, &type metadata accessor for ImpressionMetrics);
        if (v4 <= 0x3F)
        {
          sub_C7318(319, &unk_4F0A40, &type metadata accessor for EntityIdentifier);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_C7318(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_3EE0F4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t RecentlySearchedHeader.impressionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RecentlySearchedHeader(0) + 20);

  return sub_7EA24(v3, a1);
}

uint64_t type metadata accessor for RecentlySearchedHeader(uint64_t a1)
{
  result = qword_4F0AE8;
  if (!qword_4F0AE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RecentlySearchedHeader.init(impressionMetrics:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0xD000000000000018;
  a2[1] = 0x8000000000427250;
  v3 = a2 + *(type metadata accessor for RecentlySearchedHeader(0) + 20);

  return sub_14A10(a1, v3);
}

unint64_t sub_C747C(uint64_t a1)
{
  result = sub_C74A4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_C74A4()
{
  result = qword_4F0A88;
  if (!qword_4F0A88)
  {
    v3 = type metadata accessor for RecentlySearchedHeader(255);
    result = swift_getWitnessTable(protocol conformance descriptor for RecentlySearchedHeader, v3, v0, v1);
    atomic_store(result, &qword_4F0A88);
  }

  return result;
}

uint64_t sub_C7520(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_C75F0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_C76A0(uint64_t a1)
{
  sub_4D334(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t RoomUber.artwork.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RoomUber(0) + 20);

  return sub_A18FC(v3, a1, v4);
}

uint64_t type metadata accessor for RoomUber(uint64_t a1)
{
  result = qword_4F0B80;
  if (!qword_4F0B80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RoomUber.init(artwork:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_3E5FB4();
  v4 = a2 + *(type metadata accessor for RoomUber(0) + 20);

  return sub_83F9C(a1, v4, v5);
}

uint64_t static RoomUber.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_3E5FA4() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for RoomUber(0);

  return sub_3E7724();
}

uint64_t sub_C7858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_3E5FA4() & 1) == 0)
  {
    return 0;
  }

  return sub_3E7724();
}

uint64_t RoomUber.id.getter()
{
  v1 = sub_3E5FC4();
  v2 = __chkstk_darwin(v1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v0, v1, v2);
  sub_C7B48(&qword_4EBA78, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  return sub_3EE354();
}

uint64_t AMSDialogRequest.impressionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_3EC634();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t RoomUber.backgroundArtwork.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for RoomUber(0);
  sub_A18FC(v1 + *(v3 + 20), a1, v4);
  v5 = sub_3E7784();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1, 0, 1, v5);
}

uint64_t RoomUber.preferredBackgroundColor.getter()
{
  if (*(v0 + *(type metadata accessor for RoomUber(0) + 20) + 64) == 255)
  {
    return 0;
  }

  else
  {
    return sub_3E9454();
  }
}

uint64_t sub_C7B48(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_C7B90(uint64_t a1)
{
  result = sub_C7B48(&qword_4F0B20, type metadata accessor for RoomUber, protocol conformance descriptor for RoomUber);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_C7BE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  sub_A18FC(v3 + *(a1 + 20), a2, a3);
  v5 = sub_3E7784();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, 0, 1, v5);
}

uint64_t sub_C7C64(uint64_t a1)
{
  if (*(v1 + *(a1 + 20) + 64) == 255)
  {
    return 0;
  }

  else
  {
    return sub_3E9454();
  }
}

uint64_t sub_C7CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3E5FC4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_3E7784();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_C7DB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3E5FC4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_3E7784();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_C7EB4(uint64_t a1)
{
  result = sub_3E5FC4();
  if (v2 <= 0x3F)
  {
    result = sub_3E7784();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for SearchHint(uint64_t a1)
{
  result = qword_4F0C18;
  if (!qword_4F0C18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SearchHint.init(id:term:query:segue:impressionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  v10 = *(a7 + 16);
  *(a9 + 48) = *a7;
  *(a9 + 64) = v10;
  *(a9 + 80) = *(a7 + 32);
  v11 = a9 + *(type metadata accessor for SearchHint(0) + 32);

  return sub_14A10(a8, v11);
}

uint64_t SearchHint.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v53 = a3;
  v56 = a2;
  v4 = sub_3EBF94();
  v54 = *(v4 - 8);
  v55 = v4;
  __chkstk_darwin(v4);
  v52 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3EBDF4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v43 - v11;
  __chkstk_darwin(v13);
  v15 = &v43 - v14;
  __chkstk_darwin(v16);
  v18 = &v43 - v17;
  v19 = 0xE200000000000000;
  sub_3EBE04();
  v51 = sub_3EBDC4();
  v21 = v20;
  v22 = v18;
  v23 = *(v7 + 8);
  v23(v22, v6);
  if (v21)
  {
    v50 = v21;
    sub_3EBE04();
    v24 = sub_3EBDC4();
    v26 = v25;
    v23(v15, v6);
    v27 = a1;
    if (v26)
    {
      v49 = v24;
      sub_3EBE04();
      v28 = sub_3EBDC4();
      v47 = v29;
      v48 = v28;
      v23(v12, v6);
      sub_3EBE04();
      v44 = a1;
      v30 = v53;
      v31 = v56;
      sub_3EC254();
      v23(v9, v6);
      sub_3EC634();
      sub_3EBE04();
      v45 = v26;
      v46 = v23;
      v33 = v54;
      v32 = v55;
      (*(v54 + 16))(v52, v31, v55);
      type metadata accessor for SearchHint(0);
      sub_3EC574();
      (*(v33 + 8))(v31, v32);
      result = v46(v44, v6);
      v35 = v50;
      *v30 = v51;
      v30[1] = v35;
      v36 = v45;
      v30[2] = v49;
      v30[3] = v36;
      v37 = v47;
      v30[4] = v48;
      v30[5] = v37;
      return result;
    }

    v38 = 1836213620;

    v19 = 0xE400000000000000;
  }

  else
  {
    v38 = 25705;
    v27 = a1;
  }

  v39 = sub_3ECEE4();
  sub_C8638(&qword_4E9AB8, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
  swift_allocError();
  v41 = v40;
  v42 = type metadata accessor for SearchHint(0);
  *v41 = v38;
  v41[1] = v19;
  v41[2] = v42;
  (*(*(v39 - 8) + 104))(v41, enum case for JSONError.missingProperty(_:), v39);
  swift_willThrow();
  (*(v54 + 8))(v56, v55);
  return (v23)(v27, v6);
}

uint64_t SearchHint.clickSender.getter@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for SearchHint(0);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(a1);

  return sub_C858C(v1, boxed_opaque_existential_0Tm);
}

uint64_t sub_C858C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchHint(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_C8638(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_C8680(uint64_t a1)
{
  result = sub_C8638(&qword_4F0BB8, type metadata accessor for SearchHint, protocol conformance descriptor for SearchHint);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_C86D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = a1;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(a2);

  return sub_C858C(v2, boxed_opaque_existential_0Tm);
}

uint64_t sub_C8724(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_C87F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_C88A4(uint64_t a1)
{
  sub_1972C();
  if (v1 <= 0x3F)
  {
    sub_C30B0(319);
    if (v2 <= 0x3F)
    {
      sub_4D334(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

ShelfKit::SearchLandingBrick::ArtworkKind_optional __swiftcall SearchLandingBrick.ArtworkKind.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v6._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._rawValue = &off_4B0A38;
  v6._object = object;
  v3 = sub_3EE624(v2, v6);

  if (v3 == 1)
  {
    v4.value = ShelfKit_SearchLandingBrick_ArtworkKind_editorial;
  }

  else
  {
    v4.value = ShelfKit_SearchLandingBrick_ArtworkKind_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t SearchLandingBrick.ArtworkKind.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6169726F74696465;
  }

  else
  {
    return 0x756F72676B636162;
  }
}

uint64_t sub_C89E8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6169726F74696465;
  }

  else
  {
    v3 = 0x756F72676B636162;
  }

  if (v2)
  {
    v4 = 0xEA0000000000646ELL;
  }

  else
  {
    v4 = 0xE90000000000006CLL;
  }

  if (*a2)
  {
    v5 = 0x6169726F74696465;
  }

  else
  {
    v5 = 0x756F72676B636162;
  }

  if (*a2)
  {
    v6 = 0xE90000000000006CLL;
  }

  else
  {
    v6 = 0xEA0000000000646ELL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_3EE804();
  }

  return v8 & 1;
}

Swift::Int sub_C8A98()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_C8B24(uint64_t a1)
{
  sub_3ED394();
}

Swift::Int sub_C8B9C(uint64_t a1)
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_C8C24@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_4B0A38;
  v8._object = v3;
  v5 = sub_3EE624(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_C8C84(uint64_t *a1@<X8>)
{
  v2 = 0x756F72676B636162;
  if (*v1)
  {
    v2 = 0x6169726F74696465;
  }

  v3 = 0xEA0000000000646ELL;
  if (*v1)
  {
    v3 = 0xE90000000000006CLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t type metadata accessor for SearchLandingBrick(uint64_t a1)
{
  result = qword_4F0D00;
  if (!qword_4F0D00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SearchLandingBrick.init(id:title:artwork:artworkKind:segue:impressionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v17 = type metadata accessor for SearchLandingBrick(0);
  v18 = a9 + v17[8];
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  *v18 = 0u;
  *(v18 + 1) = 0u;
  *(v18 + 4) = 0;
  sub_51F9C(v21, v18, &qword_4EDE00, &qword_3F9910);
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  sub_FACC(a5, a9 + v17[6], &qword_4F1D50, &unk_3F7520);
  *(a9 + v17[7]) = a6 & 1;
  sub_FCF8(v18, &qword_4F0100, &qword_3FB1C0);
  *v18 = 0u;
  *(v18 + 1) = 0u;
  *(v18 + 4) = 0;
  sub_51F9C(a7, v18, &qword_4EDE00, &qword_3F9910);
  return sub_FACC(a8, a9 + v17[9], &unk_4E9170, &unk_3F4890);
}

uint64_t SearchLandingBrick.artworkCropCode(layoutIsRightToLeft:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (*(v2 + *(type metadata accessor for SearchLandingBrick(0) + 28)))
  {
    v5 = enum case for CropCode.searchEditorial(_:);
    v6 = sub_3E94E4();
    v7 = *(*(v6 - 8) + 104);
    v8 = v6;
    v9 = a2;
    v10 = v5;
  }

  else
  {
    v8 = sub_3E94E4();
    v7 = *(*(v8 - 8) + 104);
    if (a1)
    {
      v11 = &enum case for CropCode.searchBackgroundRTL(_:);
    }

    else
    {
      v11 = &enum case for CropCode.searchBackgroundLTR(_:);
    }

    v10 = *v11;
    v9 = a2;
  }

  return v7(v9, v10, v8);
}

double sub_C912C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_FBD0(v2 + *(a1 + 32), v6, &qword_4F0100, &qword_3FB1C0);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  return result;
}

double sub_C918C@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SearchLandingBrick(0);
  sub_FBD0(v1 + *(v3 + 32), v6, &qword_4F0100, &qword_3FB1C0);
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  return result;
}

uint64_t SearchLandingBrick.clickSender.getter@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for SearchLandingBrick(0);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(a1);

  return sub_C923C(v1, boxed_opaque_existential_0Tm);
}

uint64_t sub_C923C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchLandingBrick(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_C92A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = a1;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(a2);

  return sub_C923C(v2, boxed_opaque_existential_0Tm);
}

uint64_t sub_C92EC(uint64_t a1)
{
  sub_3ED394();
}

unint64_t sub_C93DC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_CA79C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_C940C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE700000000000000;
  v6 = 0x6B726F77747261;
  v7 = 0xE500000000000000;
  v8 = 0x6575676573;
  if (v2 != 4)
  {
    v8 = 0xD000000000000011;
    v7 = 0x8000000000422950;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x656C746974;
  if (v2 != 1)
  {
    v10 = 0x4B6B726F77747261;
    v9 = 0xEB00000000646E69;
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

uint64_t sub_C94C4()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6B726F77747261;
  v4 = 0x6575676573;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656C746974;
  if (v1 != 1)
  {
    v5 = 0x4B6B726F77747261;
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

unint64_t sub_C9578@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_CA79C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_C95A0(uint64_t a1)
{
  v2 = sub_C9920();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_C95DC(uint64_t a1)
{
  v2 = sub_C9920();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SearchLandingBrick.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F0C60, &qword_3FC9D0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_C9920();
  sub_3EEA14();
  v10[15] = 0;
  sub_3EE734();
  if (!v2)
  {
    v10[14] = 1;
    sub_3EE734();
    v10[13] = *(v3 + *(type metadata accessor for SearchLandingBrick(0) + 28));
    v10[12] = 2;
    sub_C9974();
    sub_3EE764();
    v10[11] = 3;
    sub_3E7784();
    sub_CA0D4(&qword_4F00E0, &type metadata accessor for ArtworkModel, &protocol conformance descriptor for ArtworkModel);
    sub_3EE724();
    v10[10] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F0100, &qword_3FB1C0);
    sub_B7578(&qword_4F0C78, &protocol conformance descriptor for _CodeByKind_OrNil<A>);
    sub_3EE764();
    v10[9] = 5;
    sub_3EC634();
    sub_CA0D4(&qword_4F0138, &type metadata accessor for ImpressionMetrics, &protocol conformance descriptor for ImpressionMetrics);
    sub_3EE724();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_C9920()
{
  result = qword_4F0C68;
  if (!qword_4F0C68)
  {
    result = swift_getWitnessTable(byte_3FCD6C, &type metadata for SearchLandingBrick.CodingKeys, v0, v1);
    atomic_store(result, &qword_4F0C68);
  }

  return result;
}

unint64_t sub_C9974()
{
  result = qword_4F0C70;
  if (!qword_4F0C70)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchLandingBrick.ArtworkKind, &type metadata for SearchLandingBrick.ArtworkKind, v0, v1);
    atomic_store(result, &qword_4F0C70);
  }

  return result;
}

uint64_t SearchLandingBrick.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
  __chkstk_darwin(v3 - 8);
  v5 = v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50, &unk_3F7520);
  __chkstk_darwin(v6 - 8);
  v8 = v23 - v7;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F0C80, &qword_3FC9D8);
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v10 = v23 - v9;
  v11 = type metadata accessor for SearchLandingBrick(0);
  __chkstk_darwin(v11);
  v13 = (v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = v13 + *(v14 + 32);
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  *v15 = 0u;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0;
  v29 = v15;
  sub_51F9C(v30, v15, &qword_4EDE00, &qword_3F9910);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_C9920();
  v26 = v10;
  v16 = v28;
  sub_3EE9F4();
  if (v16)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_FCF8(v29, &qword_4F0100, &qword_3FB1C0);
  }

  else
  {
    v17 = v8;
    v18 = v25;
    LOBYTE(v30[0]) = 0;
    *v13 = sub_3EE694();
    v13[1] = v19;
    v28 = v19;
    LOBYTE(v30[0]) = 1;
    v13[2] = sub_3EE694();
    v13[3] = v20;
    v32 = 2;
    sub_C9F74();
    v23[1] = 0;
    sub_3EE6C4();
    v21 = v29;
    *(v13 + *(v11 + 28)) = v30[0];
    sub_3E7784();
    LOBYTE(v30[0]) = 3;
    sub_CA0D4(&qword_4F0148, &type metadata accessor for ArtworkModel, &protocol conformance descriptor for ArtworkModel);
    v23[0] = v11;
    sub_3EE684();
    sub_FACC(v17, v13 + *(v23[0] + 24), &qword_4F1D50, &unk_3F7520);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F0100, &qword_3FB1C0);
    v32 = 4;
    sub_B7578(&qword_4F0C90, &protocol conformance descriptor for _CodeByKind_OrNil<A>);
    sub_3EE6C4();
    sub_51F9C(v30, v21, &qword_4F0100, &qword_3FB1C0);
    sub_3EC634();
    LOBYTE(v30[0]) = 5;
    sub_CA0D4(&qword_4F0198, &type metadata accessor for ImpressionMetrics, &protocol conformance descriptor for ImpressionMetrics);
    sub_3EE684();
    (*(v18 + 8))(v26, v27);
    sub_FACC(v5, v13 + *(v23[0] + 36), &unk_4E9170, &unk_3F4890);
    sub_C923C(v13, v24);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_C9FC8(v13);
  }
}

unint64_t sub_C9F74()
{
  result = qword_4F0C88;
  if (!qword_4F0C88)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchLandingBrick.ArtworkKind, &type metadata for SearchLandingBrick.ArtworkKind, v0, v1);
    atomic_store(result, &qword_4F0C88);
  }

  return result;
}

uint64_t sub_C9FC8(uint64_t a1)
{
  v2 = type metadata accessor for SearchLandingBrick(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_CA028()
{
  result = qword_4F0C98;
  if (!qword_4F0C98)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchLandingBrick.ArtworkKind, &type metadata for SearchLandingBrick.ArtworkKind, v0, v1);
    atomic_store(result, &qword_4F0C98);
  }

  return result;
}

uint64_t sub_CA07C(uint64_t a1)
{
  result = sub_CA0D4(&qword_4F0CA0, type metadata accessor for SearchLandingBrick, protocol conformance descriptor for SearchLandingBrick);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_CA0D4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_CA194@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_3DFDB4(a2, a3);
  if (!v3)
  {
    *a1 = result & 1;
  }

  return result;
}

double sub_CA1DC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SearchLandingBrick(0);
  sub_FBD0(a1 + *(v4 + 32), v7, &qword_4F0100, &qword_3FB1C0);
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v8;
  return result;
}

uint64_t sub_CA244(uint64_t a1, uint64_t a2)
{
  v3 = a2 + *(type metadata accessor for SearchLandingBrick(0) + 32);

  return sub_BB5F0(a1, v3);
}

uint64_t sub_CA2A0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50, &unk_3F7520);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_CA3F0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50, &unk_3F7520);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_CA52C(uint64_t a1)
{
  sub_95A68(319, &qword_4EB1A8, &type metadata accessor for ArtworkModel);
  if (v1 <= 0x3F)
  {
    sub_CA618(319);
    if (v2 <= 0x3F)
    {
      sub_95A68(319, &qword_4EB028, &type metadata accessor for ImpressionMetrics);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_CA618(uint64_t a1)
{
  if (!qword_4F0D10)
  {
    sub_8181C();
    v1 = sub_3EC664();
    if (!v2)
    {
      atomic_store(v1, &qword_4F0D10);
    }
  }
}

unint64_t sub_CA698()
{
  result = qword_4F0D50;
  if (!qword_4F0D50)
  {
    result = swift_getWitnessTable(byte_3FCD44, &type metadata for SearchLandingBrick.CodingKeys, v0, v1);
    atomic_store(result, &qword_4F0D50);
  }

  return result;
}

unint64_t sub_CA6F0()
{
  result = qword_4F0D58;
  if (!qword_4F0D58)
  {
    result = swift_getWitnessTable(aU_2, &type metadata for SearchLandingBrick.CodingKeys, v0, v1);
    atomic_store(result, &qword_4F0D58);
  }

  return result;
}

unint64_t sub_CA748()
{
  result = qword_4F0D60;
  if (!qword_4F0D60)
  {
    result = swift_getWitnessTable(byte_3FCCA4, &type metadata for SearchLandingBrick.CodingKeys, v0, v1);
    atomic_store(result, &qword_4F0D60);
  }

  return result;
}

unint64_t sub_CA79C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_4B0A88;
  v6._object = a2;
  v4 = sub_3EE624(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_CA7E8()
{
  result = qword_4F0D68;
  if (!qword_4F0D68)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchLandingBrick.ArtworkKind, &type metadata for SearchLandingBrick.ArtworkKind, v0, v1);
    atomic_store(result, &qword_4F0D68);
  }

  return result;
}

uint64_t type metadata accessor for ShowHero(uint64_t a1)
{
  result = qword_4F0DD8;
  if (!qword_4F0DD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ShowHero.genreName.getter()
{
  v1 = *(v0 + *(type metadata accessor for ShowHero(0) + 48));

  return v1;
}

void *sub_CAA04()
{
  type metadata accessor for ShowHero(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED88, &unk_3FA9E0);
  return sub_3ECAF4();
}

uint64_t sub_CAA5C(uint64_t a1)
{
  sub_FBD0(a1, v3, &qword_4EDE00, &qword_3F9910);
  sub_FBD0(v3, &v2, &qword_4EDE00, &qword_3F9910);
  type metadata accessor for ShowHero(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED88, &unk_3FA9E0);
  sub_3ECB04();
  return sub_FCF8(v3, &qword_4EDE00, &qword_3F9910);
}

uint64_t ShowHero.playEpisodeAction.getter()
{
  type metadata accessor for ShowHero(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80, &unk_3FA8C0);
  sub_3ECAF4();
  return v1;
}

void *sub_CAB54@<X0>(void *a1@<X8>)
{
  type metadata accessor for ShowHero(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80, &unk_3FA8C0);
  result = sub_3ECAF4();
  *a1 = v3;
  return result;
}

uint64_t sub_CABBC(uint64_t *a1)
{
  type metadata accessor for ShowHero(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80, &unk_3FA8C0);
  return sub_3ECB04();
}

uint64_t ShowHero.playTrailerAction.getter()
{
  type metadata accessor for ShowHero(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80, &unk_3FA8C0);
  sub_3ECAF4();
  return v1;
}

void *sub_CAC80@<X0>(void *a1@<X8>)
{
  type metadata accessor for ShowHero(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80, &unk_3FA8C0);
  result = sub_3ECAF4();
  *a1 = v3;
  return result;
}

uint64_t sub_CACE8(uint64_t *a1)
{
  type metadata accessor for ShowHero(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80, &unk_3FA8C0);
  return sub_3ECB04();
}

uint64_t ShowHero.contextAction.getter()
{
  type metadata accessor for ShowHero(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80, &unk_3FA8C0);
  sub_3ECAF4();
  return v1;
}

void *sub_CADAC@<X0>(void *a1@<X8>)
{
  type metadata accessor for ShowHero(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80, &unk_3FA8C0);
  result = sub_3ECAF4();
  *a1 = v3;
  return result;
}

uint64_t sub_CAE14(uint64_t *a1)
{
  type metadata accessor for ShowHero(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80, &unk_3FA8C0);
  return sub_3ECB04();
}

void *ShowHero.impressionMetrics.getter()
{
  type metadata accessor for ShowHero(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED90, qword_3FA8D0);
  return sub_3ECAF4();
}

void *sub_CAED8()
{
  type metadata accessor for ShowHero(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED90, qword_3FA8D0);
  return sub_3ECAF4();
}

uint64_t sub_CAF30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  sub_FBD0(a1, &v9 - v6, &unk_4E9170, &unk_3F4890);
  sub_FBD0(v7, v4, &unk_4E9170, &unk_3F4890);
  type metadata accessor for ShowHero(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED90, qword_3FA8D0);
  sub_3ECB04();
  return sub_FCF8(v7, &unk_4E9170, &unk_3F4890);
}

uint64_t ShowHero.init(id:adamID:title:description:artwork:uberArtwork:rating:ratingCount:genreName:contentRating:clickAction:playEpisodeAction:playTrailerAction:contextAction:impressionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, int a10, char a11, uint64_t a12, unsigned __int8 a13, uint64_t a14, uint64_t a15, unsigned __int8 a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v60 = a8;
  v61 = a7;
  v46 = a6;
  v45 = a5;
  v43 = a4;
  v42 = a3;
  v41 = a2;
  v40 = a1;
  v57 = a20;
  v58 = a21;
  v55 = a18;
  v56 = a19;
  v59 = a17;
  LODWORD(v54) = a16;
  v52 = a14;
  v53 = a15;
  v51 = a13;
  v50 = a12;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
  __chkstk_darwin(v22 - 8);
  v24 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v39 - v26;
  v28 = type metadata accessor for ShowHero(0);
  v44 = v28[14];
  v64 = 0;
  memset(v63, 0, sizeof(v63));
  sub_FBD0(v63, v62, &qword_4EDE00, &qword_3F9910);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_502170, &qword_3F6E20);
  sub_3ECAE4();
  sub_FCF8(v63, &qword_4EDE00, &qword_3F9910);
  v47 = v28[15];
  *&v63[0] = 0;
  type metadata accessor for Action(0);
  sub_3ECAE4();
  *&v63[0] = 0;
  sub_3ECAE4();
  v49 = v28[17];
  *&v63[0] = 0;
  sub_3ECAE4();
  v48 = v28[18];
  v29 = sub_3EC634();
  (*(*(v29 - 8) + 56))(v27, 1, 1, v29);
  sub_FBD0(v27, v24, &unk_4E9170, &unk_3F4890);
  sub_3ECAE4();
  sub_FCF8(v27, &unk_4E9170, &unk_3F4890);
  v30 = v41;
  *a9 = v40;
  a9[1] = v30;
  v31 = v43;
  a9[2] = v42;
  a9[3] = v31;
  v32 = v46;
  a9[4] = v45;
  a9[5] = v32;
  sub_FBD0(v61, a9 + v28[8], &qword_4F1D50, &unk_3F7520);
  sub_FBD0(v60, a9 + v28[9], &qword_4F1D50, &unk_3F7520);
  v33 = a9 + v28[10];
  *v33 = a10;
  v33[4] = a11 & 1;
  v34 = a9 + v28[11];
  *v34 = v50;
  v34[8] = v51 & 1;
  v35 = (a9 + v28[12]);
  v36 = v53;
  *v35 = v52;
  v35[1] = v36;
  *(a9 + v28[13]) = v54;
  sub_FBD0(v59, v63, &qword_4EDE00, &qword_3F9910);
  sub_FBD0(v63, v62, &qword_4EDE00, &qword_3F9910);
  v54 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED88, &unk_3FA9E0);
  sub_3ECB04();
  sub_FCF8(v63, &qword_4EDE00, &qword_3F9910);
  *&v63[0] = v55;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80, &unk_3FA8C0);
  sub_3ECB04();
  *&v63[0] = v56;

  sub_3ECB04();
  *&v63[0] = v57;

  sub_3ECB04();
  v37 = v58;
  sub_FBD0(v58, v27, &unk_4E9170, &unk_3F4890);
  sub_FBD0(v27, v24, &unk_4E9170, &unk_3F4890);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED90, qword_3FA8D0);
  sub_3ECB04();

  sub_FCF8(v37, &unk_4E9170, &unk_3F4890);
  sub_FCF8(v59, &qword_4EDE00, &qword_3F9910);
  sub_FCF8(v60, &qword_4F1D50, &unk_3F7520);
  sub_FCF8(v61, &qword_4F1D50, &unk_3F7520);
  return sub_FCF8(v27, &unk_4E9170, &unk_3F4890);
}

void *_s8ShelfKit8ShowHeroV11clickAction9JetEngine0F5Model_pSgvg_0()
{
  type metadata accessor for ShowHero(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED88, &unk_3FA9E0);
  return sub_3ECAF4();
}

uint64_t ShowHero.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v187 = a2;
  v189 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED90, qword_3FA8D0);
  __chkstk_darwin(v4 - 8);
  v167 = v148 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80, &unk_3FA8C0);
  __chkstk_darwin(v6 - 8);
  v173 = v148 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED88, &unk_3FA9E0);
  __chkstk_darwin(v8 - 8);
  v162 = v148 - v9;
  v10 = sub_3EBF94();
  v185 = *(v10 - 8);
  v186 = v10;
  __chkstk_darwin(v10);
  v166 = v148 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = v11;
  __chkstk_darwin(v12);
  v175 = v148 - v13;
  v193 = sub_3EBDF4();
  v188 = *(v193 - 8);
  __chkstk_darwin(v193);
  v165 = v148 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v164 = v148 - v16;
  __chkstk_darwin(v17);
  v178 = v148 - v18;
  __chkstk_darwin(v19);
  v168 = v148 - v20;
  __chkstk_darwin(v21);
  v170 = v148 - v22;
  __chkstk_darwin(v23);
  v177 = v148 - v24;
  v160 = v25;
  __chkstk_darwin(v26);
  v28 = v148 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
  __chkstk_darwin(v29 - 8);
  v31 = v148 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = v148 - v33;
  v35 = type metadata accessor for ShowHero(0);
  v36 = a3 + v35[14];
  v192 = 0;
  memset(v191, 0, sizeof(v191));
  sub_FBD0(v191, v190, &qword_4EDE00, &qword_3F9910);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_502170, &qword_3F6E20);
  v183 = v36;
  v161 = v37;
  sub_3ECAE4();
  sub_FCF8(v191, &qword_4EDE00, &qword_3F9910);
  v38 = a3 + v35[15];
  *&v191[0] = 0;
  v39 = type metadata accessor for Action(0);
  v182 = v38;
  sub_3ECAE4();
  v40 = a3 + v35[16];
  *&v191[0] = 0;
  v181 = v40;
  sub_3ECAE4();
  v41 = a3 + v35[17];
  *&v191[0] = 0;
  v179 = v41;
  v172 = v39;
  sub_3ECAE4();
  v42 = v35[18];
  v43 = sub_3EC634();
  (*(*(v43 - 8) + 56))(v34, 1, 1, v43);
  sub_FBD0(v34, v31, &unk_4E9170, &unk_3F4890);
  v184 = a3;
  v180 = v42;
  v163 = v43;
  sub_3ECAE4();
  v44 = v34;
  v45 = v189;
  sub_FCF8(v44, &unk_4E9170, &unk_3F4890);
  sub_3EBE04();
  v46 = sub_3EBDC4();
  v48 = v47;
  v50 = v188 + 8;
  v49 = *(v188 + 8);
  v51 = v28;
  v52 = v193;
  v49(v51, v193);
  if (!v48)
  {
    v59 = sub_3ECEE4();
    sub_CD050(&qword_4E9AB8, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
    swift_allocError();
    v61 = v60;
    *v60 = 25705;
    v60[1] = 0xE200000000000000;
    v60[2] = v35;
LABEL_7:
    (*(*(v59 - 8) + 104))(v61, enum case for JSONError.missingProperty(_:), v59);
    swift_willThrow();
    (*(v185 + 8))(v187, v186);
    v49(v45, v52);
LABEL_8:
    v63 = v184;
    v64 = v179;
    goto LABEL_9;
  }

  v159 = v46;
  v174 = v35;
  v53 = v177;
  sub_3EBE04();
  sub_3EBDC4();
  if (!v54)
  {
    v49(v53, v52);

    v59 = sub_3ECEE4();
    sub_CD050(&qword_4E9AB8, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
    swift_allocError();
    v61 = v62;
    *v62 = 0x64496D616461;
    v62[1] = 0xE600000000000000;
    v62[2] = v174;
    goto LABEL_7;
  }

  v55 = v171;
  v56 = sub_3E9494();
  if (v55)
  {

    v57 = sub_3E9484();

    v58 = v49;
    v49(v53, v52);
    v157 = 0;
  }

  else
  {
    v57 = v56;
    v157 = 0;
    v58 = v49;
    v49(v53, v52);
  }

  v66 = v170;
  sub_3EBE04();
  v67 = v45;
  v68 = sub_3EBDC4();
  v70 = v69;
  v58(v66, v193);
  if (!v70)
  {

    v144 = sub_3ECEE4();
    sub_CD050(&qword_4E9AB8, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
    swift_allocError();
    *v145 = 0x656C746974;
    v145[1] = 0xE500000000000000;
    v145[2] = v174;
    (*(*(v144 - 8) + 104))(v145, enum case for JSONError.missingProperty(_:), v144);
    swift_willThrow();
    (*(v185 + 8))(v187, v186);
    v58(v67, v193);
    goto LABEL_8;
  }

  v71 = v168;
  sub_3EBE04();
  sub_3EBDC4();
  v72 = v58;
  v74 = v73;
  v169 = v72;
  v72(v71, v193);
  if (!v74)
  {

    v146 = sub_3ECEE4();
    sub_CD050(&qword_4E9AB8, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
    swift_allocError();
    *v147 = 0x7470697263736564;
    v147[1] = 0xEB000000006E6F69;
    v147[2] = v174;
    (*(*(v146 - 8) + 104))(v147, enum case for JSONError.missingProperty(_:), v146);
    swift_willThrow();
    (*(v185 + 8))(v187, v186);
    v169(v189, v193);
    goto LABEL_8;
  }

  v75 = v184;
  *v184 = v159;
  v75[1] = v48;
  v153 = v48;
  v75[2] = v57;
  v75[3] = v68;
  v152 = v70;
  v75[4] = v70;
  v76 = sub_3E9A64();
  sub_3E9A34();
  sub_3E9A24();
  v77 = objc_allocWithZone(v76);
  v151 = sub_3E9A84();
  v75[5] = v151;
  sub_3E7784();
  v78 = v178;
  sub_3EBE04();
  v79 = v185 + 16;
  v177 = *(v185 + 16);
  v80 = v175;
  (v177)(v175, v187, v186);
  v171 = v79;
  v81 = v174[8];
  sub_CD050(&qword_4EECC8, &type metadata accessor for ArtworkModel, &protocol conformance descriptor for ArtworkModel);
  v150 = v81;
  sub_3EC574();
  sub_3EBE04();
  (v177)(v80, v187, v186);
  v82 = v174;
  v149 = v174[9];
  sub_3EC574();
  sub_3EBE04();
  v83 = sub_3EBD64();
  v84 = v193;
  v85 = v169;
  v169(v78, v193);
  v86 = v85;
  v87 = v75 + v82[10];
  *v87 = v83;
  v87[4] = BYTE4(v83) & 1;
  sub_3EBE04();
  v88 = sub_3EBD44();
  LOBYTE(v85) = v89;
  v86(v78, v84);
  v90 = v174;
  v91 = v75 + v174[11];
  *v91 = v88;
  v91[8] = v85 & 1;
  sub_3EBE04();
  v92 = sub_3EBDC4();
  v94 = v93;
  v86(v78, v84);
  v95 = (v75 + v90[12]);
  *v95 = v92;
  v95[1] = v94;
  v148[1] = v94;
  sub_3EBE04();
  v96 = v175;
  v97 = v187;
  v98 = v177;
  (v177)(v175, v187, v186);
  sub_CCCD8();
  sub_3EC574();
  *(v75 + v90[13]) = v191[0];
  sub_3EBE04();
  v99 = v188;
  v100 = *(v188 + 16);
  v155 = v188 + 16;
  v156 = v100;
  v101 = v164;
  v100(v164, v78, v193);
  v102 = v186;
  v98(v96, v97, v186);
  v103 = *(v99 + 80);
  v104 = (v103 + 16) & ~v103;
  v105 = v185;
  v106 = *(v185 + 80);
  v174 = v104;
  v107 = (v160 + v106 + v104) & ~v106;
  v159 = v103 | v106;
  v154 = v107;
  v108 = swift_allocObject();
  v109 = *(v99 + 32);
  v188 = v99 + 32;
  v160 = v109;
  v110 = v108 + v104;
  v111 = v101;
  v112 = v101;
  v113 = v193;
  v109(v110, v111, v193);
  v158 = v50;
  v114 = *(v105 + 32);
  v168 = (v105 + 32);
  v170 = v114;
  v115 = v175;
  v116 = v102;
  (v114)(v108 + v107, v175, v102);
  v117 = v162;
  sub_3ECB34();
  v118 = v178;
  v169(v178, v113);
  sub_51F9C(v117, v183, &qword_4EED88, &unk_3FA9E0);
  sub_3EBE04();
  v119 = v156;
  v156(v112, v118, v113);
  v120 = v115;
  v121 = v187;
  (v177)(v115, v187, v116);
  v122 = v154;
  v123 = swift_allocObject();
  v160(v174 + v123, v112, v113);
  (v170)(v123 + v122, v120, v116);
  v124 = v173;
  sub_3ECB34();
  v125 = v178;
  v169(v178, v113);
  sub_51F9C(v124, v182, &qword_4EED80, &unk_3FA8C0);
  sub_3EBE04();
  v126 = v112;
  v119(v112, v125, v113);
  v127 = v175;
  v128 = v186;
  (v177)(v175, v121, v186);
  v129 = v154;
  v130 = swift_allocObject();
  v131 = v126;
  v160(v174 + v130, v126, v113);
  v132 = v127;
  (v170)(v130 + v129, v127, v128);
  v133 = v173;
  sub_3ECB34();
  v134 = v178;
  v169(v178, v113);
  sub_51F9C(v133, v181, &qword_4EED80, &unk_3FA8C0);
  sub_3EBE04();
  v156(v131, v134, v113);
  v135 = v187;
  (v177)(v132, v187, v128);
  v136 = swift_allocObject();
  v137 = v128;
  v160(v174 + v136, v131, v113);
  (v170)(v136 + v129, v132, v128);
  v138 = v173;
  sub_3ECB34();
  v139 = v113;
  v169(v178, v113);
  v140 = v135;
  v64 = v179;
  sub_51F9C(v138, v179, &qword_4EED80, &unk_3FA8C0);
  v141 = v189;
  sub_3EBE04();
  (v177)(v166, v140, v137);
  v142 = v167;
  v143 = v157;
  sub_3ECB14();
  if (!v143)
  {
    (*(v185 + 8))(v140, v137);
    v169(v141, v139);
    return sub_51F9C(v142, v184 + v180, &qword_4EED90, qword_3FA8D0);
  }

  (*(v185 + 8))(v140, v137);
  v169(v141, v139);

  v63 = v184;
  sub_FCF8(v184 + v150, &qword_4F1D50, &unk_3F7520);
  sub_FCF8(v63 + v149, &qword_4F1D50, &unk_3F7520);

LABEL_9:
  sub_FCF8(v183, &qword_4EED88, &unk_3FA9E0);
  sub_FCF8(v182, &qword_4EED80, &unk_3FA8C0);
  sub_FCF8(v181, &qword_4EED80, &unk_3FA8C0);
  sub_FCF8(v64, &qword_4EED80, &unk_3FA8C0);
  return sub_FCF8(v63 + v180, &qword_4EED90, qword_3FA8D0);
}

unint64_t sub_CCCD8()
{
  result = qword_4F0D70;
  if (!qword_4F0D70)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for ContentRating, &type metadata for ContentRating, v0, v1);
    atomic_store(result, &qword_4F0D70);
  }

  return result;
}

uint64_t ShowHero.clickSender.getter@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for ShowHero(0);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(a1);

  return sub_CCFA4(v1, boxed_opaque_existential_0Tm);
}

uint64_t sub_CCDDC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = a1;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(a2);

  return sub_CCFA4(v2, boxed_opaque_existential_0Tm);
}

uint64_t ShowHero.appEntityAnnotation()@<X0>(uint64_t a1@<X8>)
{
  sub_3E6D44();
  sub_17A28();
  sub_3EE1F4();
  sub_CD050(&qword_4E9B80, &type metadata accessor for ShowEntity, &protocol conformance descriptor for ShowEntity);
  sub_3E5754();
  v2 = sub_3E5764();
  return (*(*(v2 - 8) + 56))(a1, 0, 1, v2);
}

uint64_t ShowHero.isExplicit.getter()
{
  if (*(v0 + *(type metadata accessor for ShowHero(0) + 52)) == 2)
  {
    v1 = 0;
  }

  else
  {
    v2 = sub_3E79D4();
    v4 = v3;
    v1 = 1;
    if (v2 != sub_3E79D4() || v4 != v5)
    {
      v1 = sub_3EE804();
    }
  }

  return v1 & 1;
}

uint64_t sub_CCFA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShowHero(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_CD050(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_CD098(uint64_t a1)
{
  result = sub_CD050(&qword_4F0D78, type metadata accessor for ShowHero, protocol conformance descriptor for ShowHero);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_CD12C(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50, &unk_3F7520);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED88, &unk_3FA9E0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[14];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80, &unk_3FA8C0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[15];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED90, qword_3FA8D0);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[18];

  return v16(v17, a2, v15);
}

uint64_t sub_CD324(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50, &unk_3F7520);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED88, &unk_3FA9E0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[14];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80, &unk_3FA8C0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[15];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED90, qword_3FA8D0);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[18];

  return v16(v17, a2, a2, v15);
}

void sub_CD508(uint64_t a1)
{
  sub_3E9A64();
  if (v1 <= 0x3F)
  {
    sub_CD790(319, &qword_4EB1A8, &type metadata accessor for ArtworkModel, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_5FBE4(319, &qword_4F0DE8, &type metadata for Float);
      if (v3 <= 0x3F)
      {
        sub_5FBE4(319, &qword_4F0DF0, &type metadata for UInt);
        if (v4 <= 0x3F)
        {
          sub_5FBE4(319, &qword_4E9978, &type metadata for String);
          if (v5 <= 0x3F)
          {
            sub_5FBE4(319, &qword_4F0350, &type metadata for ContentRating);
            if (v6 <= 0x3F)
            {
              sub_CD72C(319);
              if (v7 <= 0x3F)
              {
                sub_CD790(319, &qword_4F0E00, type metadata accessor for Action, &type metadata accessor for Lazy);
                if (v8 <= 0x3F)
                {
                  sub_CD790(319, &unk_4F0E08, &type metadata accessor for ImpressionMetrics, &type metadata accessor for Lazy);
                  if (v9 <= 0x3F)
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
}

void sub_CD72C(uint64_t a1)
{
  if (!qword_4F0DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_502170, &qword_3F6E20);
    v1 = sub_3ECB24();
    if (!v2)
    {
      atomic_store(v1, &qword_4F0DF8);
    }
  }
}

void sub_CD790(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for ShowLockup(uint64_t a1)
{
  result = qword_4F0ED0;
  if (!qword_4F0ED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ShowLockup.ordinal.getter()
{
  v1 = *(v0 + *(type metadata accessor for ShowLockup(0) + 28));

  return v1;
}

uint64_t ShowLockup.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for ShowLockup(0) + 32));

  return v1;
}

uint64_t ShowLockup.creators.getter()
{
  v1 = *(v0 + *(type metadata accessor for ShowLockup(0) + 36));

  return v1;
}

uint64_t ShowLockup.titleOverride.getter()
{
  v1 = *(v0 + *(type metadata accessor for ShowLockup(0) + 40));

  return v1;
}

uint64_t ShowLockup.subtitleOverride.getter()
{
  v1 = *(v0 + *(type metadata accessor for ShowLockup(0) + 44));

  return v1;
}

void *ShowLockup.segue.getter()
{
  type metadata accessor for ShowLockup(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED88, &unk_3FA9E0);
  return sub_3ECAF4();
}

void *sub_CDA58()
{
  type metadata accessor for ShowLockup(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED88, &unk_3FA9E0);
  return sub_3ECAF4();
}

uint64_t sub_CDAB0(uint64_t a1)
{
  sub_FBD0(a1, v3, &qword_4EDE00, &qword_3F9910);
  sub_FBD0(v3, &v2, &qword_4EDE00, &qword_3F9910);
  type metadata accessor for ShowLockup(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED88, &unk_3FA9E0);
  sub_3ECB04();
  return sub_FCF8(v3, &qword_4EDE00, &qword_3F9910);
}

uint64_t ShowLockup.contextAction.getter()
{
  type metadata accessor for ShowLockup(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80, &unk_3FA8C0);
  sub_3ECAF4();
  return v1;
}

void *sub_CDBA8@<X0>(void *a1@<X8>)
{
  type metadata accessor for ShowLockup(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80, &unk_3FA8C0);
  result = sub_3ECAF4();
  *a1 = v3;
  return result;
}

uint64_t sub_CDC10(uint64_t *a1)
{
  type metadata accessor for ShowLockup(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80, &unk_3FA8C0);
  return sub_3ECB04();
}

void *ShowLockup.impressionMetrics.getter()
{
  type metadata accessor for ShowLockup(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED90, qword_3FA8D0);
  return sub_3ECAF4();
}

void *sub_CDCD4()
{
  type metadata accessor for ShowLockup(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED90, qword_3FA8D0);
  return sub_3ECAF4();
}

uint64_t sub_CDD2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  sub_FBD0(a1, &v9 - v6, &unk_4E9170, &unk_3F4890);
  sub_FBD0(v7, v4, &unk_4E9170, &unk_3F4890);
  type metadata accessor for ShowLockup(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED90, qword_3FA8D0);
  sub_3ECB04();
  return sub_FCF8(v7, &unk_4E9170, &unk_3F4890);
}

uint64_t ShowLockup.init(id:contentReference:artwork:ordinal:name:creators:titleOverride:subtitleOverride:contentRating:segue:contextAction:impressionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned __int8 a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v65 = a8;
  v75 = a7;
  v73 = a6;
  v71 = a4;
  v72 = a5;
  v55 = a3;
  v54 = a2;
  v53 = a1;
  v69 = a21;
  v70 = a22;
  v74 = a20;
  v68 = a19;
  v66 = a17;
  v67 = a18;
  v64 = a16;
  v63 = a15;
  v62 = a14;
  v61 = a13;
  v60 = a12;
  v59 = a11;
  v57 = a10;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
  __chkstk_darwin(v23 - 8);
  v25 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v49 - v27;
  v29 = type metadata accessor for ShowLockup(0);
  v52 = v29[13];
  v78 = 0;
  memset(v77, 0, sizeof(v77));
  sub_FBD0(v77, v76, &qword_4EDE00, &qword_3F9910);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_502170, &qword_3F6E20);
  sub_3ECAE4();
  sub_FCF8(v77, &qword_4EDE00, &qword_3F9910);
  v56 = v29[14];
  *&v77[0] = 0;
  type metadata accessor for Action(0);
  sub_3ECAE4();
  v58 = v29[15];
  v30 = sub_3EC634();
  v49 = *(v30 - 8);
  v51 = *(v49 + 56);
  v51(v28, 1, 1, v30);
  v50 = v25;
  sub_FBD0(v28, v25, &unk_4E9170, &unk_3F4890);
  sub_3ECAE4();
  sub_FCF8(v28, &unk_4E9170, &unk_3F4890);
  v31 = v54;
  *a9 = v53;
  *(a9 + 8) = v31;
  *(a9 + 16) = v55;
  v32 = v71;
  v33 = v72;
  *(a9 + 24) = v71;
  *(a9 + 32) = v33;
  v34 = v73;
  *(a9 + 40) = v73;
  sub_CFA78(v75, a9 + v29[6], &type metadata accessor for ArtworkModel);
  v35 = (a9 + v29[7]);
  v36 = v57;
  *v35 = v65;
  v35[1] = v36;
  v37 = (a9 + v29[8]);
  v38 = v60;
  *v37 = v59;
  v37[1] = v38;
  v39 = (a9 + v29[9]);
  v40 = v62;
  *v39 = v61;
  v39[1] = v40;
  v41 = (a9 + v29[10]);
  v42 = v64;
  *v41 = v63;
  v41[1] = v42;
  v43 = (a9 + v29[11]);
  v44 = v67;
  *v43 = v66;
  v43[1] = v44;
  *(a9 + v29[12]) = v68;
  sub_FBD0(v74, v77, &qword_4EDE00, &qword_3F9910);
  sub_FBD0(v77, v76, &qword_4EDE00, &qword_3F9910);
  sub_3DE90(v32, v33, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED88, &unk_3FA9E0);
  sub_3ECB04();
  sub_FCF8(v77, &qword_4EDE00, &qword_3F9910);
  *&v77[0] = v69;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80, &unk_3FA8C0);
  sub_3ECB04();
  v45 = v49;
  v46 = v70;
  (*(v49 + 16))(v28, v70, v30);
  v51(v28, 0, 1, v30);
  sub_FBD0(v28, v50, &unk_4E9170, &unk_3F4890);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED90, qword_3FA8D0);
  sub_3ECB04();

  sub_3DEF8(v71, v72, v73);
  (*(v45 + 8))(v46, v30);
  sub_FCF8(v74, &qword_4EDE00, &qword_3F9910);
  sub_86F48(v75, v47);
  return sub_FCF8(v28, &unk_4E9170, &unk_3F4890);
}

uint64_t ShowLockup.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v167 = a2;
  v174 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED90, qword_3FA8D0);
  __chkstk_darwin(v4 - 8);
  v146 = &v136 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80, &unk_3FA8C0);
  __chkstk_darwin(v6 - 8);
  v145 = &v136 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED88, &unk_3FA9E0);
  __chkstk_darwin(v8 - 8);
  v143 = &v136 - v9;
  v10 = sub_3EBF94();
  v168 = *(v10 - 8);
  v169 = v10;
  __chkstk_darwin(v10);
  v144 = &v136 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v149 = &v136 - v13;
  v147 = v14;
  __chkstk_darwin(v15);
  v161 = &v136 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50, &unk_3F7520);
  __chkstk_darwin(v17 - 8);
  v159 = &v136 - v18;
  v158 = sub_3E7784();
  v157 = *(v158 - 8);
  __chkstk_darwin(v158);
  v155 = &v136 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_3EBDF4();
  v166 = *(v170 - 8);
  __chkstk_darwin(v170);
  v142 = &v136 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v151 = &v136 - v22;
  __chkstk_darwin(v23);
  v148 = (&v136 - v24);
  __chkstk_darwin(v25);
  v153 = &v136 - v26;
  __chkstk_darwin(v27);
  v160 = &v136 - v28;
  v138 = v29;
  __chkstk_darwin(v30);
  v32 = &v136 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
  __chkstk_darwin(v33 - 8);
  v35 = &v136 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v136 - v37;
  v39 = type metadata accessor for ShowLockup(0);
  v40 = a3 + v39[13];
  v173 = 0;
  memset(v172, 0, sizeof(v172));
  sub_FBD0(v172, v171, &qword_4EDE00, &qword_3F9910);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_502170, &qword_3F6E20);
  v164 = v40;
  v139 = v41;
  sub_3ECAE4();
  sub_FCF8(v172, &qword_4EDE00, &qword_3F9910);
  v42 = a3 + v39[14];
  *&v172[0] = 0;
  v43 = type metadata accessor for Action(0);
  v162 = v42;
  v140 = v43;
  sub_3ECAE4();
  v44 = v39[15];
  v45 = sub_3EC634();
  (*(*(v45 - 8) + 56))(v38, 1, 1, v45);
  sub_FBD0(v38, v35, &unk_4E9170, &unk_3F4890);
  v165 = a3;
  v163 = v44;
  v141 = v45;
  sub_3ECAE4();
  sub_FCF8(v38, &unk_4E9170, &unk_3F4890);
  sub_3EBE04();
  v46 = sub_3EBDC4();
  v48 = v47;
  v49 = *(v166 + 8);
  v50 = v32;
  v51 = v170;
  v49(v50, v170);
  if (!v48)
  {
    v59 = sub_3ECEE4();
    sub_CFB28(&qword_4E9AB8, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
    swift_allocError();
    *v60 = 25705;
    v60[1] = 0xE200000000000000;
    v60[2] = v39;
    (*(*(v59 - 8) + 104))(v60, enum case for JSONError.missingProperty(_:), v59);
    swift_willThrow();
    (*(v168 + 8))(v167, v169);
    v49(v174, v51);
    goto LABEL_9;
  }

  v152 = v48;
  v156 = v49;
  v154 = v39;
  sub_3EBE04();
  v52 = v167;
  v53 = *(v168 + 16);
  v53(v161, v167, v169);
  sub_CFB28(&qword_4EECC8, &type metadata accessor for ArtworkModel, &protocol conformance descriptor for ArtworkModel);
  v54 = v159;
  v55 = v158;
  sub_3EC574();
  if ((*(v157 + 48))(v54, 1, v55) == 1)
  {

    sub_FCF8(v54, &qword_4F1D50, &unk_3F7520);
    v57 = sub_3ECEE4();
    sub_CFB28(&qword_4E9AB8, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
    swift_allocError();
    *v58 = 0x6B726F77747261;
    v58[1] = 0xE700000000000000;
    v58[2] = v154;
    (*(*(v57 - 8) + 104))(v58, enum case for JSONError.missingProperty(_:), v57);
    swift_willThrow();
    (*(v168 + 8))(v52, v169);
    v156(v174, v170);
LABEL_9:
    v69 = v165;
    goto LABEL_10;
  }

  v61 = v155;
  sub_83F9C(v54, v155, v56);
  v62 = v153;
  sub_3EBE04();
  v63 = sub_3EBDC4();
  v65 = v64;
  v66 = v62;
  v67 = v170;
  v68 = v156;
  v156(v66, v170);
  if (!v65)
  {

    v80 = sub_3ECEE4();
    sub_CFB28(&qword_4E9AB8, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
    swift_allocError();
    *v81 = 1701667182;
    v82 = v154;
    v81[1] = 0xE400000000000000;
    v81[2] = v82;
    (*(*(v80 - 8) + 104))(v81, enum case for JSONError.missingProperty(_:), v80);
    swift_willThrow();
    (*(v168 + 8))(v167, v169);
    v83 = v68(v174, v67);
    sub_86F48(v61, v83);
    goto LABEL_9;
  }

  v158 = v63;
  v159 = v65;
  v69 = v165;
  v70 = v152;
  *v165 = v46;
  *(v69 + 8) = v70;
  v71 = v148;
  sub_3EBE04();
  v72 = v149;
  v73 = v169;
  v53(v149, v167, v169);
  v74 = v150;
  v75 = sub_3DDFDC(v71, v72);
  if (v74)
  {

    (*(v168 + 8))(v167, v73);
    v79 = v156(v174, v170);
    sub_86F48(v155, v79);

LABEL_10:
    v84 = v162;
    goto LABEL_11;
  }

  *(v69 + 16) = v75;
  *(v69 + 24) = v76;
  *(v69 + 32) = v77;
  *(v69 + 40) = v78;
  sub_CFA78(v155, v69 + v154[6], &type metadata accessor for ArtworkModel);
  v86 = v160;
  v137 = v53;
  sub_3EBE04();
  v87 = sub_3EBDC4();
  v89 = v88;
  v90 = v156;
  v156(v86, v170);
  v91 = v154;
  v92 = (v69 + v154[7]);
  *v92 = v87;
  v92[1] = v89;
  v93 = (v69 + v91[8]);
  v94 = v159;
  *v93 = v158;
  v93[1] = v94;
  sub_3EBE04();
  v159 = sub_3EBDC4();
  v96 = v95;
  v97 = v170;
  v98 = v90;
  v90(v86, v170);
  v99 = v154;
  v100 = (v69 + v154[9]);
  *v100 = v159;
  v100[1] = v96;
  sub_3EBE04();
  v159 = sub_3EBDC4();
  v102 = v101;
  v98(v86, v97);
  v103 = (v69 + v99[10]);
  *v103 = v159;
  v103[1] = v102;
  sub_3EBE04();
  v104 = sub_3EBDC4();
  v106 = v105;
  v98(v86, v170);
  v107 = (v69 + v154[11]);
  *v107 = v104;
  v107[1] = v106;
  sub_3EBE04();
  v159 = 0;
  v108 = v167;
  v109 = v137;
  v137(v161, v167, v169);
  sub_CCCD8();
  sub_3EC574();
  *(v69 + v154[12]) = v172[0];
  sub_3EBE04();
  v110 = v166;
  v157 = *(v166 + 16);
  v158 = v166 + 16;
  v111 = v170;
  (v157)(v151, v86, v170);
  v109(v161, v108, v169);
  v112 = *(v110 + 80);
  v113 = (v112 + 16) & ~v112;
  v114 = v168;
  v115 = *(v168 + 80);
  v149 = v113;
  v153 = (v112 | v115);
  v116 = (v138 + v115 + v113) & ~v115;
  v117 = swift_allocObject();
  v118 = *(v110 + 32);
  v166 = v110 + 32;
  v150 = v118;
  v119 = v111;
  v118(v117 + v113, v151, v111);
  v148 = *(v114 + 32);
  v120 = v116;
  v148(v117 + v116, v161, v169);
  v121 = v143;
  sub_3ECB34();
  v156(v86, v119);
  sub_51F9C(v121, v164, &qword_4EED88, &unk_3FA9E0);
  sub_3EBE04();
  v122 = v151;
  (v157)(v151, v86, v119);
  v123 = v161;
  v137(v161, v167, v169);
  v124 = swift_allocObject();
  v150(&v149[v124], v122, v119);
  v125 = v124 + v120;
  v126 = v167;
  v148(v125, v123, v169);
  v127 = v145;
  v128 = v169;
  sub_3ECB34();
  v129 = v86;
  v130 = v156;
  v156(v129, v119);
  v84 = v162;
  sub_51F9C(v127, v162, &qword_4EED80, &unk_3FA8C0);
  sub_3EBE04();
  v137(v144, v126, v128);
  v131 = v146;
  v132 = v159;
  sub_3ECB14();
  if (!v132)
  {
    (*(v168 + 8))(v126, v128);
    v135 = v130(v174, v170);
    sub_86F48(v155, v135);
    return sub_51F9C(v131, v165 + v163, &qword_4EED90, qword_3FA8D0);
  }

  (*(v168 + 8))(v126, v128);
  v133 = v130(v174, v170);
  sub_86F48(v155, v133);

  v69 = v165;
  sub_3DEF8(*(v165 + 24), *(v165 + 32), *(v165 + 40));
  sub_86F48(v69 + v154[6], v134);

LABEL_11:
  sub_FCF8(v164, &qword_4EED88, &unk_3FA9E0);
  sub_FCF8(v84, &qword_4EED80, &unk_3FA8C0);
  return sub_FCF8(v69 + v163, &qword_4EED90, qword_3FA8D0);
}

uint64_t ShowLockup.clickSender.getter@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for ShowLockup(0);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(a1);
  return sub_CFA78(v1, boxed_opaque_existential_0Tm, type metadata accessor for ShowLockup);
}

uint64_t sub_CF7A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = a1;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(a2);
  return sub_CFA78(v2, boxed_opaque_existential_0Tm, type metadata accessor for ShowLockup);
}

uint64_t ShowLockup.appEntityAnnotation()@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3E5DC4();
  v4 = *(v3 - 8);
  v6 = __chkstk_darwin(v3);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 24);
  if (*(v1 + 40))
  {
    if (*(v1 + 40) == 1)
    {
      v10 = v5;
      v11 = [*(v1 + 24) URIRepresentation];
      sub_3E5D44();

      v9 = sub_3E5CD4();
      v13 = v12;
      (*(v4 + 8))(v8, v10);
    }

    else
    {
      v13 = *(v1 + 32);
    }
  }

  else
  {
    v17[0] = *(v1 + 24);
    sub_17A28();
    v9 = sub_3EE1F4();
    v13 = v14;
  }

  sub_3E6D44();
  v17[0] = v9;
  v17[1] = v13;
  sub_CFB28(&qword_4E9B80, &type metadata accessor for ShowEntity, &protocol conformance descriptor for ShowEntity);
  sub_3E5754();
  v15 = sub_3E5764();
  return (*(*(v15 - 8) + 56))(a1, 0, 1, v15);
}

uint64_t ShowLockup.isExplicit.getter()
{
  if (*(v0 + *(type metadata accessor for ShowLockup(0) + 48)) == 2)
  {
    v1 = 0;
  }

  else
  {
    v2 = sub_3E79D4();
    v4 = v3;
    v1 = 1;
    if (v2 != sub_3E79D4() || v4 != v5)
    {
      v1 = sub_3EE804();
    }
  }

  return v1 & 1;
}

uint64_t sub_CFA78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_CFB28(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_CFB70(uint64_t a1)
{
  result = sub_CFB28(&qword_4F0E70, type metadata accessor for ShowLockup, protocol conformance descriptor for ShowLockup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_CFBF4(uint64_t a1, uint64_t a2, int *a3, double a4)
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 8);
    if (v5 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  v9 = sub_3E7784();
  if (*(*(v9 - 8) + 84) == a2)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = a3[6];
LABEL_11:
    v15 = *(v11 + 48);

    return v15(a1 + v12, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED88, &unk_3FA9E0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v10 = v13;
    v11 = *(v13 - 8);
    v12 = a3[13];
    goto LABEL_11;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80, &unk_3FA8C0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v10 = v14;
    v11 = *(v14 - 8);
    v12 = a3[14];
    goto LABEL_11;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED90, qword_3FA8D0);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[15];

  return v17(v18, a2, v16);
}

uint64_t sub_CFDE0(uint64_t result, uint64_t a2, int a3, int *a4, double a5)
{
  v6 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v9 = sub_3E7784();
  if (*(*(v9 - 8) + 84) == a3)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = a4[6];
LABEL_9:
    v15 = *(v11 + 56);

    return v15(v6 + v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED88, &unk_3FA9E0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v11 = *(v13 - 8);
    v12 = a4[13];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80, &unk_3FA8C0);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v10 = v14;
    v11 = *(v14 - 8);
    v12 = a4[14];
    goto LABEL_9;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED90, qword_3FA8D0);
  v17 = *(*(v16 - 8) + 56);
  v18 = v6 + a4[15];

  return v17(v18, a2, a2, v16);
}

void sub_CFFB8(uint64_t a1, double a2)
{
  sub_3E7784();
  if (v2 <= 0x3F)
  {
    sub_5FBE4(319, &qword_4E9978, &type metadata for String);
    if (v3 <= 0x3F)
    {
      sub_5FBE4(319, &qword_4F0350, &type metadata for ContentRating);
      if (v4 <= 0x3F)
      {
        sub_CD72C(319);
        if (v5 <= 0x3F)
        {
          sub_D011C(319, &qword_4F0E00, type metadata accessor for Action);
          if (v6 <= 0x3F)
          {
            sub_D011C(319, &unk_4F0E08, &type metadata accessor for ImpressionMetrics);
            if (v7 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_D011C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_3ECB24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_D0174(uint64_t a1, uint64_t a2)
{
  v16 = a2;
  v3 = sub_3E5934();
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = (v4 + 8);
    v9 = (a1 + 56);
    do
    {
      v10 = *v9;
      v15._countAndFlagsBits = *(v9 - 1);
      v15._object = v10;

      sub_3E58E4();
      sub_68DC4();
      v11 = sub_3EE184();
      v13 = v12;
      (*v8)(v6, v3);
      v15._countAndFlagsBits = v11;
      v15._object = v13;

      v17._countAndFlagsBits = 32;
      v17._object = 0xE100000000000000;
      sub_3ED3D4(v17);

      sub_3ED3D4(v15);

      v9 += 4;
      --v7;
    }

    while (v7);
  }
}

uint64_t type metadata accessor for TranscriptSnippet(uint64_t a1)
{
  result = qword_4F0FA0;
  if (!qword_4F0FA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TranscriptSnippet.init(id:text:clickAction:impressionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = a4;
  v10 = a3;
  *a7 = a1;
  *(a7 + 8) = a2;
  v12 = sub_D0E9C(a3, a4);
  if (*(v12 + 2))
  {
    v13 = v12;

    v10 = sub_D1264(v13);
    v9 = v14;
  }

  *(a7 + 16) = v10;
  *(a7 + 24) = v9;
  v15 = *(a5 + 16);
  *(a7 + 32) = *a5;
  *(a7 + 48) = v15;
  *(a7 + 64) = *(a5 + 32);
  v16 = a7 + *(type metadata accessor for TranscriptSnippet(0) + 28);

  return sub_14A10(a6, v16);
}

uint64_t TranscriptSnippet.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v71 = a3;
  v73 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
  __chkstk_darwin(v4 - 8);
  v70 = &v62 - v5;
  v6 = sub_3EBDF4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v62 - v11;
  __chkstk_darwin(v13);
  v15 = &v62 - v14;
  __chkstk_darwin(v16);
  v18 = &v62 - v17;
  sub_3EBE04();
  v69 = sub_3EBDC4();
  v20 = v19;
  v23 = *(v7 + 8);
  v22 = v7 + 8;
  v21 = v23;
  v23(v18, v6);
  if (!v20)
  {
    v40 = sub_3ECEE4();
    sub_D1810(&qword_4E9AB8, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
    swift_allocError();
    v42 = v41;
    v43 = type metadata accessor for TranscriptSnippet(0);
    *v42 = 25705;
    v42[1] = 0xE200000000000000;
    v42[2] = v43;
    (*(*(v40 - 8) + 104))(v42, enum case for JSONError.missingProperty(_:), v40);
    swift_willThrow();
    v29 = v21;
    v31 = v6;
LABEL_11:
    v48 = sub_3EBF94();
    (*(*(v48 - 8) + 8))(v73, v48);
    return v29(a1, v31);
  }

  v24 = v20;
  sub_3EBE04();
  v25 = sub_3EBDC4();
  v26 = v6;
  v28 = v27;
  v72 = v26;
  v21(v15, v26);
  v29 = v21;
  v68 = v28;
  if (!v28)
  {

    v44 = sub_3ECEE4();
    sub_D1810(&qword_4E9AB8, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
    swift_allocError();
    v46 = v45;
    v47 = type metadata accessor for TranscriptSnippet(0);
    *v46 = 1954047348;
    v46[1] = 0xE400000000000000;
    v46[2] = v47;
    (*(*(v44 - 8) + 104))(v46, enum case for JSONError.missingProperty(_:), v44);
    swift_willThrow();
    v31 = v72;
    goto LABEL_11;
  }

  v65 = v25;
  sub_3EBE04();
  Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 = _s8ShelfKit6ActionC17tryToMakeInstance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0();
  v31 = v72;
  v29(v12, v72);
  v67 = a1;
  sub_3EBE04();
  v32 = sub_3EBD24();
  v33 = v29;
  v34 = v32;
  v35 = v32;
  v66 = v33;
  v33(v9, v31);
  if (v35 == 2)
  {

    v36 = sub_3ECEE4();
    sub_D1810(&qword_4E9AB8, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
    swift_allocError();
    v38 = v37;
    v39 = type metadata accessor for TranscriptSnippet(0);
    *v38 = 0xD000000000000017;
    v38[1] = 0x80000000004272F0;
    v38[2] = v39;
    (*(*(v36 - 8) + 104))(v38, enum case for JSONError.missingProperty(_:), v36);
LABEL_10:
    swift_willThrow();

    v29 = v66;
    a1 = v67;
    goto LABEL_11;
  }

  sub_3E8E04();
  if (sub_3E8DE4() & 1) == 0 && (v34)
  {

    sub_D16A8();
    swift_allocError();
    goto LABEL_10;
  }

  v64 = v22;
  if (Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0)
  {
    v63 = type metadata accessor for Action(0);
    v50 = sub_D1810(&qword_4EDDF8, type metadata accessor for Action, "iJ\v");
  }

  else
  {
    v63 = 0;
    v50 = 0;
  }

  v52 = v70;
  v51 = v71;
  v53 = v65;
  v54 = sub_3EC634();
  (*(*(v54 - 8) + 56))(v52, 1, 1, v54);
  *v51 = v69;
  v51[1] = v24;

  v55 = v68;
  v56 = sub_D0E9C(v53, v68);
  v57 = v66;
  if (*(v56 + 2))
  {

    v53 = sub_D1264(v56);
    v55 = v58;
  }

  v59 = sub_3EBF94();
  (*(*(v59 - 8) + 8))(v73, v59);
  v57(v67, v31);
  v51[2] = v53;
  v51[3] = v55;
  v51[4] = Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0;
  v51[5] = 0;
  v60 = v63;
  v51[6] = 0;
  v51[7] = v60;
  v51[8] = v50;
  v61 = type metadata accessor for TranscriptSnippet(0);
  return sub_14A10(v52, v51 + *(v61 + 28));
}

uint64_t TranscriptSnippet.clickSender.getter@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for TranscriptSnippet(0);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(a1);

  return sub_D16FC(v1, boxed_opaque_existential_0Tm);
}

uint64_t sub_D0C24@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = a1;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(a2);

  return sub_D16FC(v2, boxed_opaque_existential_0Tm);
}

uint64_t sub_D0C5C(uint64_t a1)
{
  v2 = v1[1];
  if ((v2 & 0x2000000000000000) == 0)
  {
    if ((*v1 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if ((v2 & 0xF00000000000000) == 0)
  {
    __break(1u);
    return String.remove(at:)(a1);
  }

LABEL_5:
  a1 = sub_3ED3B4();

  return String.remove(at:)(a1);
}

uint64_t sub_D0CC4()
{
  if (*v0)
  {
    return 0x746E65746E6F63;
  }

  else
  {
    return 0x5F72656B61657073;
  }
}

uint64_t sub_D0D04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x5F72656B61657073 && a2 == 0xEA00000000006469;
  if (v6 || (sub_3EE804() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_3EE804();

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

uint64_t sub_D0DF4(uint64_t a1)
{
  v2 = sub_D1F28();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_D0E30(uint64_t a1)
{
  v2 = sub_D1F28();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_D0E6C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_D1D44(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

void *sub_D0E9C(uint64_t a1, uint64_t a2)
{
  v2 = sub_3E9A04();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  __chkstk_darwin(v4);
  v6 = v18 - v5;
  v7 = sub_3ED284();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3ED274();
  v11 = sub_3ED254();
  v13 = v12;
  (*(v8 + 8))(v10, v7);
  if (v13 >> 60 == 15)
  {
    sub_3E98F4();
    v14 = sub_3E99F4();
    v15 = sub_3ED9D4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_0, v14, v15, "Unable to convert raw snippet to json data", v16, 2u);
    }

    (*(v3 + 8))(v6, v2);
    return _swiftEmptyArrayStorage;
  }

  else
  {
    sub_3E5884();
    swift_allocObject();
    sub_3E5874();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F0FE0, &qword_3FD238);
    sub_D1B6C();
    sub_3E5844();

    sub_681FC(v11, v13);
    return v18[3];
  }
}

uint64_t sub_D1264(char *a1)
{
  v2 = 0;
  v38 = 0;
  v39 = 0xE000000000000000;
  v3 = sub_D1AD8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F0FE0, &qword_3FD238);
  result = sub_3ED894();
  if (result)
  {
    v5 = _swiftEmptyArrayStorage;
    while (1)
    {
      v6 = *(a1 + 2);
      if (!v6)
      {
        break;
      }

      v7 = *(a1 + 5);
      v8 = *(a1 + 7);
      v36 = *(a1 + 4);
      v37 = *(a1 + 6);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v6 - 1) > *(a1 + 3) >> 1)
      {
        a1 = sub_DFBF4(isUniquelyReferenced_nonNull_native, v6, 1, a1);
      }

      sub_D1B3C((a1 + 32));
      v10 = *(a1 + 2);
      memmove(a1 + 32, a1 + 64, 32 * v10 - 32);
      *(a1 + 2) = v10 - 1;
      if (v7)
      {
        v11 = *(v5 + 2);
        if (v11)
        {
          v12 = &v5[32 * v11];
          v13 = v12[1];
          v33 = v3;
          if (v13 && ((result = *v12, *v12 == v36) ? (v14 = v13 == v7) : (v14 = 0), v14 || (result = sub_3EE804(), (result & 1) != 0)))
          {
            v34 = v2;
          }

          else
          {
            v15 = v38 & 0xFFFFFFFFFFFFLL;
            if ((v39 & 0x2000000000000000) != 0)
            {
              v15 = HIBYTE(v39) & 0xF;
            }

            if (v15)
            {
              v40._countAndFlagsBits = 2570;
              v40._object = 0xE200000000000000;
              sub_3ED3D4(v40);
            }

            sub_D0174(v5, &v38);
            v34 = v2;

            sub_D0C5C(v16);

            v5 = _swiftEmptyArrayStorage;
          }

          v17 = 0;
          v18 = v5 + 56;
          v35 = -*(v5 + 2);
          v19 = -1;
          while (v35 + v19 != -1)
          {
            if (++v19 >= *(v5 + 2))
            {
              goto LABEL_57;
            }

            v20 = v18 + 32;
            v21 = v5;

            v22 = sub_3ED3A4();

            v18 = v20;
            v23 = __OFADD__(v17, v22);
            v17 += v22;
            v5 = v21;
            if (v23)
            {
              goto LABEL_58;
            }
          }

          result = sub_3ED3A4();
          if (__OFADD__(v17, result))
          {
            goto LABEL_59;
          }

          if (v17 + result < 251)
          {
            v3 = v33;
            v2 = v34;
          }

          else
          {
            v24 = v38 & 0xFFFFFFFFFFFFLL;
            if ((v39 & 0x2000000000000000) != 0)
            {
              v24 = HIBYTE(v39) & 0xF;
            }

            v3 = v33;
            v2 = v34;
            if (v24)
            {
              v41._countAndFlagsBits = 2570;
              v41._object = 0xE200000000000000;
              sub_3ED3D4(v41);
            }

            sub_D0174(v5, &v38);

            sub_D0C5C(v25);

            v5 = _swiftEmptyArrayStorage;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_DFBF4(0, *(v5 + 2) + 1, 1, v5);
        }

        v27 = *(v5 + 2);
        v26 = *(v5 + 3);
        if (v27 >= v26 >> 1)
        {
          v5 = sub_DFBF4((v26 > 1), v27 + 1, 1, v5);
        }

        *(v5 + 2) = v27 + 1;
        v28 = &v5[32 * v27];
        *(v28 + 4) = v36;
        *(v28 + 5) = v7;
        *(v28 + 6) = v37;
        *(v28 + 7) = v8;
        if (v27 >= 2)
        {
          v29 = v38 & 0xFFFFFFFFFFFFLL;
          if ((v39 & 0x2000000000000000) != 0)
          {
            v29 = HIBYTE(v39) & 0xF;
          }

          if (v29)
          {
            v42._countAndFlagsBits = 2570;
            v42._object = 0xE200000000000000;
            sub_3ED3D4(v42);
          }

          sub_D0174(v5, &v38);

          sub_D0C5C(v30);

          v5 = _swiftEmptyArrayStorage;
        }
      }

      else
      {
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F0FE0, &qword_3FD238);
      result = sub_3ED894();
      if ((result & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
LABEL_49:

    if (*(v5 + 2))
    {
      v31 = v38 & 0xFFFFFFFFFFFFLL;
      if ((v39 & 0x2000000000000000) != 0)
      {
        v31 = HIBYTE(v39) & 0xF;
      }

      if (v31)
      {
        v43._countAndFlagsBits = 2570;
        v43._object = 0xE200000000000000;
        sub_3ED3D4(v43);
      }

      sub_D0174(v5, &v38);

      sub_D0C5C(v32);
    }

    return v38;
  }

  return result;
}

unint64_t sub_D16A8()
{
  result = qword_4F0F30;
  if (!qword_4F0F30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TranscriptSnippet.DeserializeError, &type metadata for TranscriptSnippet.DeserializeError, v0, v1);
    atomic_store(result, &qword_4F0F30);
  }

  return result;
}

uint64_t sub_D16FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptSnippet(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_D1764()
{
  result = qword_4F0F38;
  if (!qword_4F0F38)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TranscriptSnippet.DeserializeError, &type metadata for TranscriptSnippet.DeserializeError, v0, v1);
    atomic_store(result, &qword_4F0F38);
  }

  return result;
}

uint64_t sub_D17B8(uint64_t a1)
{
  result = sub_D1810(&qword_4F0F40, type metadata accessor for TranscriptSnippet, protocol conformance descriptor for TranscriptSnippet);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_D1810(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_D18B4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_D1984(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_D1A34(uint64_t a1)
{
  sub_C30B0(319);
  if (v1 <= 0x3F)
  {
    sub_4D334(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_D1AD8()
{
  result = qword_4F0FE8;
  if (!qword_4F0FE8)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F0FE0, &qword_3FD238);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_4F0FE8);
  }

  return result;
}

unint64_t sub_D1B6C()
{
  result = qword_4F0FF0;
  if (!qword_4F0FF0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F0FE0, &qword_3FD238);
    v4[0] = sub_D1BF0();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_4F0FF0);
  }

  return result;
}

unint64_t sub_D1BF0()
{
  result = qword_4F0FF8;
  if (!qword_4F0FF8)
  {
    result = swift_getWitnessTable(byte_3FD284, &type metadata for TranscriptSentence, v0, v1);
    atomic_store(result, &qword_4F0FF8);
  }

  return result;
}

uint64_t sub_D1C44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_502160, &qword_3FD240);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_D1CAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_D1CF4(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_D1D44(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1000, &qword_3FD2B0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_D1F28();
  sub_3EE9F4();
  if (!v1)
  {
    v11 = 0;
    v7 = sub_3EE644();
    v10 = 1;
    sub_3EE694();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v7;
}

unint64_t sub_D1F28()
{
  result = qword_4F1008;
  if (!qword_4F1008)
  {
    result = swift_getWitnessTable(byte_3FD37C, &type metadata for TranscriptSentence.CodingKeys, v0, v1);
    atomic_store(result, &qword_4F1008);
  }

  return result;
}

unint64_t sub_D1F90()
{
  result = qword_4F1010;
  if (!qword_4F1010)
  {
    result = swift_getWitnessTable(asc_3FD354, &type metadata for TranscriptSentence.CodingKeys, v0, v1);
    atomic_store(result, &qword_4F1010);
  }

  return result;
}

unint64_t sub_D1FE8()
{
  result = qword_4F1018;
  if (!qword_4F1018)
  {
    result = swift_getWitnessTable(asc_3FD2C4, &type metadata for TranscriptSentence.CodingKeys, v0, v1);
    atomic_store(result, &qword_4F1018);
  }

  return result;
}

unint64_t sub_D2040()
{
  result = qword_4F1020;
  if (!qword_4F1020)
  {
    result = swift_getWitnessTable(asc_3FD2EC, &type metadata for TranscriptSentence.CodingKeys, v0, v1);
    atomic_store(result, &qword_4F1020);
  }

  return result;
}

ShelfKit::ComponentKinds_optional __swiftcall ComponentKinds.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_4B0B38;
  v8._object = object;
  v5 = sub_3EE624(v4, v8);

  v7 = 13;
  if (v5 < 0xD)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

unint64_t ComponentKinds.rawValue.getter()
{
  result = 0x6F4C79636167654CLL;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
    case 5:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0xD000000000000019;
      break;
    case 6:
      result = 1802398028;
      break;
    case 7:
      result = 0x6948686372616553;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0x6F726548776F6853;
      break;
    case 0xA:
      result = 0x6B636F4C776F6853;
      break;
    case 0xB:
      result = 0x6F666E49776F6853;
      break;
    case 0xC:
      result = 0xD000000000000011;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_D22AC()
{
  v0 = ComponentKinds.rawValue.getter();
  v2 = v1;
  if (v0 == ComponentKinds.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_3EE804();
  }

  return v5 & 1;
}

Swift::Int sub_D2348()
{
  sub_3EE954();
  ComponentKinds.rawValue.getter();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_D23B0(uint64_t a1)
{
  ComponentKinds.rawValue.getter();
  sub_3ED394();
}

Swift::Int sub_D2414(uint64_t a1)
{
  sub_3EE954();
  ComponentKinds.rawValue.getter();
  sub_3ED394();

  return sub_3EE9A4();
}

unint64_t sub_D2484@<X0>(unint64_t *a1@<X8>)
{
  result = ComponentKinds.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_D24AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F0058, &qword_3FB150);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_3FD3D0;
  strcpy((inited + 32), "LegacyLockup");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  v1 = type metadata accessor for LegacyLockup(0);
  v2 = sub_D2B68(&qword_4F1040, type metadata accessor for LegacyLockup, protocol conformance descriptor for LegacyLockup);
  *(inited + 48) = v1;
  *(inited + 56) = v2;
  *(inited + 64) = 0xD000000000000013;
  *(inited + 72) = 0x8000000000422A00;
  v3 = type metadata accessor for LegacyChannelLockup(0);
  v4 = sub_D2B68(&qword_4F1048, type metadata accessor for LegacyChannelLockup, protocol conformance descriptor for LegacyLockup);
  *(inited + 80) = v3;
  *(inited + 88) = v4;
  *(inited + 96) = 0xD000000000000014;
  *(inited + 104) = 0x8000000000422A20;
  v5 = type metadata accessor for LegacyCategoryLockup(0);
  v6 = sub_D2B68(&qword_4F1050, type metadata accessor for LegacyCategoryLockup, protocol conformance descriptor for LegacyLockup);
  *(inited + 112) = v5;
  *(inited + 120) = v6;
  *(inited + 128) = 0xD000000000000013;
  *(inited + 136) = 0x8000000000422A60;
  v7 = type metadata accessor for LegacyEpisodeLockup(0);
  v8 = sub_D2B68(&qword_4F1058, type metadata accessor for LegacyEpisodeLockup, protocol conformance descriptor for LegacyLockup);
  *(inited + 144) = v7;
  *(inited + 152) = v8;
  *(inited + 160) = 0xD000000000000019;
  *(inited + 168) = 0x8000000000422A40;
  v9 = type metadata accessor for LegacyEditorialItemLockup(0);
  v10 = sub_D2B68(&qword_4F1060, type metadata accessor for LegacyEditorialItemLockup, protocol conformance descriptor for LegacyLockup);
  *(inited + 176) = v9;
  *(inited + 184) = v10;
  *(inited + 192) = 1802398028;
  *(inited + 200) = 0xE400000000000000;
  v11 = type metadata accessor for Link(0);
  v12 = sub_D2B68(&qword_4F1068, type metadata accessor for Link, protocol conformance descriptor for Link);
  *(inited + 208) = v11;
  *(inited + 216) = v12;
  *(inited + 224) = 0x6948686372616553;
  *(inited + 232) = 0xEA0000000000746ELL;
  v13 = type metadata accessor for SearchHint(0);
  v14 = sub_D2B68(&qword_4F1070, type metadata accessor for SearchHint, protocol conformance descriptor for SearchHint);
  *(inited + 240) = v13;
  *(inited + 248) = v14;
  *(inited + 256) = 0x6F726548776F6853;
  *(inited + 264) = 0xE800000000000000;
  v15 = type metadata accessor for ShowHero(0);
  v16 = sub_D2B68(&qword_4F1078, type metadata accessor for ShowHero, protocol conformance descriptor for ShowHero);
  *(inited + 272) = v15;
  *(inited + 280) = v16;
  *(inited + 288) = 0xD000000000000012;
  *(inited + 296) = 0x8000000000422A90;
  v17 = type metadata accessor for SearchLandingBrick(0);
  v18 = sub_D2B68(&qword_4F1080, type metadata accessor for SearchLandingBrick, protocol conformance descriptor for SearchLandingBrick);
  *(inited + 304) = v17;
  *(inited + 312) = v18;
  *(inited + 320) = 0x6B636F4C776F6853;
  *(inited + 328) = 0xEA00000000007075;
  v19 = type metadata accessor for ShowLockup(0);
  v20 = sub_D2B68(&qword_4F1088, type metadata accessor for ShowLockup, protocol conformance descriptor for ShowLockup);
  *(inited + 336) = v19;
  *(inited + 344) = v20;
  *(inited + 352) = 0x6F666E49776F6853;
  *(inited + 360) = 0xEF6E6F6974616D72;
  v21 = type metadata accessor for ShowInformation(0);
  v22 = sub_D2B68(&qword_4F1090, type metadata accessor for ShowInformation, protocol conformance descriptor for ShowInformation);
  *(inited + 368) = v21;
  *(inited + 376) = v22;
  *(inited + 384) = 0xD000000000000011;
  *(inited + 392) = 0x8000000000422AD0;
  v23 = type metadata accessor for TranscriptSnippet(0);
  v24 = sub_D2B68(&qword_4F1098, type metadata accessor for TranscriptSnippet, protocol conformance descriptor for TranscriptSnippet);
  *(inited + 400) = v23;
  *(inited + 408) = v24;
  *(inited + 416) = 0xD000000000000011;
  *(inited + 424) = 0x80000000004229E0;
  v25 = type metadata accessor for CategorySelection(0);
  v26 = sub_D2B68(&unk_4F10A0, type metadata accessor for CategorySelection, protocol conformance descriptor for CategorySelection);
  *(inited + 432) = v25;
  *(inited + 440) = v26;
  v27 = sub_61D6C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F0078, &qword_3FB158);
  result = swift_arrayDestroy();
  qword_4F1028 = v27;
  return result;
}

uint64_t static ComponentKinds.table.getter()
{
  if (qword_4E8960 != -1)
  {
    swift_once();
  }
}

unint64_t sub_D2A38()
{
  result = qword_4F1030;
  if (!qword_4F1030)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ComponentKinds, &type metadata for ComponentKinds, v0, v1);
    atomic_store(result, &qword_4F1030);
  }

  return result;
}

unint64_t sub_D2A90()
{
  result = qword_4F1038;
  if (!qword_4F1038)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ComponentKinds, &type metadata for ComponentKinds, v0, v1);
    atomic_store(result, &qword_4F1038);
  }

  return result;
}

unint64_t sub_D2AE4()
{
  if (qword_4E8960 != -1)
  {
    swift_once();
  }

  v1 = qword_4F1028;

  return sub_B4190(v1);
}

uint64_t sub_D2B68(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t CacheDeleteObserver.__allocating_init(asPartOf:)(uint64_t a1)
{
  v2 = swift_allocObject();
  CacheDeleteObserver.init(asPartOf:)(a1);
  return v2;
}

uint64_t sub_D2BF0()
{
  sub_36174(0, &qword_4F10B0, OS_dispatch_queue_ptr);
  v0 = sub_3EDB34();
  v1 = sub_3EDB14();

  return v1;
}

void *CacheDeleteObserver.init(asPartOf:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_3EDA34();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[11] = 0;
  v2[12] = _swiftEmptyArrayStorage;
  sub_36174(0, &qword_4F10B8, NSUserDefaults_ptr);
  (*(v5 + 104))(v7, enum case for NSUserDefaults.Name.shared(_:), v4);
  sub_D2E58();
  sub_3EC3C4();
  (*(v5 + 8))(v7, v4);
  v2[2] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A20, &qword_3FE8E0);
  sub_3EC394();
  v8 = [v12 privateQueueContext];
  swift_unknownObjectRelease();
  v2[3] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEBC0, &unk_3FD560);
  sub_3EC394();
  sub_1FE90(&v12, (v2 + 4));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10C8, &qword_3FD570);
  sub_3EC394();
  v9 = v12;
  v2[9] = a1;
  v2[10] = v9;
  return v2;
}

unint64_t sub_D2E58()
{
  result = qword_4F10C0;
  if (!qword_4F10C0)
  {
    v3 = sub_36174(255, &qword_4F10B8, NSUserDefaults_ptr);
    result = swift_getWitnessTable(&protocol conformance descriptor for NSUserDefaults, v3, v0, v1);
    atomic_store(result, &qword_4F10C0);
  }

  return result;
}

void *CacheDeleteObserver.__allocating_init(userDefaults:managedObjectContext:intentDispatcher:analyticsChannel:objectGraph:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[11] = 0;
  v10[12] = _swiftEmptyArrayStorage;
  v10[2] = a1;
  v10[3] = a2;
  sub_1FE90(a3, (v10 + 4));
  v10[9] = a5;
  v10[10] = a4;
  return v10;
}

void *CacheDeleteObserver.init(userDefaults:managedObjectContext:intentDispatcher:analyticsChannel:objectGraph:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v5[11] = 0;
  v5[12] = _swiftEmptyArrayStorage;
  v5[2] = a1;
  v5[3] = a2;
  sub_1FE90(a3, (v5 + 4));
  v5[9] = a5;
  v5[10] = a4;
  return v5;
}

uint64_t sub_D2F88()
{
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10D0, &qword_3FD580);
  *(v1 + 24) = swift_task_alloc();
  type metadata accessor for CacheDeleteObserver();
  sub_D31C4(&qword_4F10D8, v2, type metadata accessor for CacheDeleteObserver, protocol conformance descriptor for CacheDeleteObserver);
  v4 = sub_3ED684();

  return _swift_task_switch(sub_D3074, v4, v3);
}

uint64_t sub_D3074()
{
  v1 = v0[2];
  v2 = v0[3];
  sub_3ED6D4();
  v3 = sub_3ED6F4();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v4;
  *(v1 + 88) = sub_D37B8(0, 0, v2, &unk_3FD590, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_D31C4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = a3(a2);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_D320C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_D3244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_3E9A04();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_D3304, 0, 0);
}

uint64_t sub_D3304()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_D33F4;

    return sub_D3AA8();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_D33F4()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_D3538, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_D3538()
{

  sub_3E99B4();
  swift_errorRetain();
  v1 = sub_3E99F4();
  v2 = sub_3ED9D4();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&dword_0, v1, v2, "Encountered a critical error observing central cache delete: %@", v3, 0xCu);
    sub_FCF8(v4, &unk_502160, &qword_3FD240);
  }

  else
  {
  }

  (*(v0[7] + 8))(v0[8], v0[6]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_D36C4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_D3704(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2400C;

  return sub_D3244(a1, v4, v5, v6);
}

uint64_t sub_D37B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10D0, &qword_3FD580);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_915C4(a3, v25 - v10);
  v12 = sub_3ED6F4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_FCF8(v11, &qword_4F10D0, &qword_3FD580);
  }

  else
  {
    sub_3ED6E4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_3ED684();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_3ED2D4() + 32;
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

      sub_FCF8(a3, &qword_4F10D0, &qword_3FD580);

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

  sub_FCF8(a3, &qword_4F10D0, &qword_3FD580);
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

uint64_t sub_D3AA8()
{
  v1[5] = v0;
  v2 = sub_3E9A04();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_3E5F84();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v4 = sub_3E9864();
  v1[13] = v4;
  v1[14] = *(v4 - 8);
  v1[15] = swift_task_alloc();
  v5 = sub_3E97B4();
  v1[16] = v5;
  v1[17] = *(v5 - 8);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v6 = sub_3E9854();
  v1[21] = v6;
  v1[22] = *(v6 - 8);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v7 = sub_3E8FD4();
  v1[25] = v7;
  v1[26] = *(v7 - 8);
  v1[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1280, &qword_3FD688);
  v1[28] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1288, &unk_3FD690);
  v1[29] = v8;
  v1[30] = *(v8 - 8);
  v1[31] = swift_task_alloc();
  v9 = sub_3E5DC4();
  v1[32] = v9;
  v1[33] = *(v9 - 8);
  v1[34] = swift_task_alloc();
  type metadata accessor for CacheDeleteObserver();
  v1[35] = sub_D31C4(&qword_4F10D8, v10, type metadata accessor for CacheDeleteObserver, protocol conformance descriptor for CacheDeleteObserver);
  v12 = sub_3ED684();
  v1[36] = v12;
  v1[37] = v11;

  return _swift_task_switch(sub_D3EB4, v12, v11);
}

uint64_t sub_D3EB4()
{
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 256);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1290, &unk_3F6CE0);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_3F5630;
  v6 = [objc_opt_self() managedAssetsDirectoryURL];
  sub_3E5D44();

  (*(v2 + 32))(v5 + v4, v1, v3);
  v7 = objc_allocWithZone(sub_3E9004());
  *(v0 + 304) = sub_3E8FF4();
  sub_3E8FE4();
  *(v0 + 368) = enum case for OSSignpostError.doubleEnd(_:);
  v8 = *(v0 + 280);
  v9 = *(v0 + 40);
  v10 = swift_task_alloc();
  *(v0 + 312) = v10;
  *v10 = v0;
  v10[1] = sub_D4044;
  v11 = *(v0 + 224);
  v12 = *(v0 + 232);

  return AsyncStream.Iterator.next(isolation:)(v11, v9, v8, v12);
}

uint64_t sub_D4044()
{
  v1 = *v0;

  v2 = *(v1 + 296);
  v3 = *(v1 + 288);

  return _swift_task_switch(sub_D4164, v3, v2);
}

uint64_t sub_D4164()
{
  v63 = v0;
  v1 = v0[28];
  if ((*(v0[26] + 48))(v1, 1, v0[25]) == 1)
  {
    v2 = v0[38];
    (*(v0[30] + 8))(v0[31], v0[29]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[27];
    sub_D7524(v1, v5);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1298, &qword_3FD6A0);
    if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
    {
      sub_3E9804();
      sub_3E97A4();
      v7 = sub_3E9834();
      v8 = sub_3EDC84();
      if (sub_3EE014())
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        v10 = sub_3E9794();
        _os_signpost_emit_with_name_impl(&dword_0, v7, v8, v10, "RespondToCacheDeleteNotification", "", v9, 2u);
      }

      v11 = v0[24];
      v12 = v0[21];
      v13 = v0[22];
      v14 = v0[19];
      v15 = v0[20];
      v16 = v0[16];
      v17 = v0[17];

      (*(v17 + 16))(v14, v15, v16);
      sub_3E98A4();
      swift_allocObject();
      v0[40] = sub_3E9894();
      v18 = *(v17 + 8);
      v0[41] = v18;
      v0[42] = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v18(v15, v16);
      v19 = *(v13 + 8);
      v0[43] = v19;
      v0[44] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v19(v11, v12);
      v20 = swift_task_alloc();
      v0[45] = v20;
      *v20 = v0;
      v20[1] = sub_D4864;

      return sub_D4BE4();
    }

    else
    {
      v21 = v0[27];
      v23 = v0[11];
      v22 = v0[12];
      v25 = v0[9];
      v24 = v0[10];
      v26 = v21[1];
      v61 = *v21;
      (*(v24 + 32))(v22, v21 + *(v6 + 48), v25);
      sub_3E99B4();
      (*(v24 + 16))(v23, v22, v25);

      v27 = sub_3E99F4();
      v28 = sub_3ED9F4();

      v29 = os_log_type_enabled(v27, v28);
      v31 = v0[10];
      v30 = v0[11];
      v33 = v0[8];
      v32 = v0[9];
      v35 = v0[6];
      v34 = v0[7];
      if (v29)
      {
        v60 = v26;
        v36 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        *v36 = 136315394;
        sub_D31C4(&qword_4F12A0, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v58 = v35;
        v59 = v33;
        v37 = sub_3EE7A4();
        v39 = v38;
        v57 = v28;
        v40 = *(v31 + 8);
        v40(v30, v32);
        v41 = sub_2EDD0(v37, v39, &v62);

        *(v36 + 4) = v41;
        *(v36 + 12) = 2080;
        *(v36 + 14) = sub_2EDD0(v61, v60, &v62);
        _os_log_impl(&dword_0, v27, v57, "Discovered cache deleted file (deleted at %s): %s", v36, 0x16u);
        swift_arrayDestroy();

        v26 = v60;

        (*(v34 + 8))(v59, v58);
      }

      else
      {

        v40 = *(v31 + 8);
        v40(v30, v32);
        (*(v34 + 8))(v33, v35);
      }

      v42 = v0[5];
      swift_beginAccess();
      v43 = *(v42 + 96);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v42 + 96) = v43;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v56 = v0[5];
        v43 = sub_DFAE8(0, *(v43 + 2) + 1, 1, v43);
        *(v56 + 96) = v43;
      }

      v46 = *(v43 + 2);
      v45 = *(v43 + 3);
      if (v46 >= v45 >> 1)
      {
        v43 = sub_DFAE8((v45 > 1), v46 + 1, 1, v43);
      }

      v47 = v0[12];
      v48 = v0[9];
      v49 = v0[5];
      *(v43 + 2) = v46 + 1;
      v50 = &v43[16 * v46];
      *(v50 + 4) = v61;
      *(v50 + 5) = v26;
      *(v49 + 96) = v43;
      swift_endAccess();
      v40(v47, v48);
      v51 = v0[35];
      v52 = v0[5];
      v53 = swift_task_alloc();
      v0[39] = v53;
      *v53 = v0;
      v53[1] = sub_D4044;
      v54 = v0[28];
      v55 = v0[29];

      return AsyncStream.Iterator.next(isolation:)(v54, v52, v51, v55);
    }
  }
}

uint64_t sub_D4864()
{
  v1 = *v0;

  v2 = *(v1 + 296);
  v3 = *(v1 + 288);

  return _swift_task_switch(sub_D4984, v3, v2);
}

uint64_t sub_D4984()
{
  sub_3E9804();
  v1 = sub_3E9834();
  sub_3E9884();
  v2 = sub_3EDC74();
  if (sub_3EE014())
  {
    v3 = *(v0 + 368);
    v5 = *(v0 + 112);
    v4 = *(v0 + 120);
    v6 = *(v0 + 104);

    sub_3E98B4();

    if ((*(v5 + 88))(v4, v6) == v3)
    {
      v7 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
      v7 = "";
    }

    v27 = *(v0 + 344);
    v14 = *(v0 + 328);
    v26 = *(v0 + 184);
    v15 = *(v0 + 168);
    v16 = *(v0 + 144);
    v17 = *(v0 + 128);
    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = sub_3E9794();
    _os_signpost_emit_with_name_impl(&dword_0, v1, v2, v19, "RespondToCacheDeleteNotification", v7, v18, 2u);

    v14(v16, v17);
    v27(v26, v15);
  }

  else
  {
    v8 = *(v0 + 344);
    v9 = *(v0 + 328);
    v10 = *(v0 + 184);
    v11 = *(v0 + 168);
    v12 = *(v0 + 144);
    v13 = *(v0 + 128);

    v9(v12, v13);
    v8(v10, v11);
  }

  v20 = *(v0 + 280);
  v21 = *(v0 + 40);
  v22 = swift_task_alloc();
  *(v0 + 312) = v22;
  *v22 = v0;
  v22[1] = sub_D4044;
  v23 = *(v0 + 224);
  v24 = *(v0 + 232);

  return AsyncStream.Iterator.next(isolation:)(v23, v21, v20, v24);
}

uint64_t sub_D4BE4()
{
  v1[7] = v0;
  v2 = sub_3E9A04();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  type metadata accessor for CacheDeleteObserver();
  sub_D31C4(&qword_4F10D8, v3, type metadata accessor for CacheDeleteObserver, protocol conformance descriptor for CacheDeleteObserver);
  v5 = sub_3ED684();
  v1[11] = v5;
  v1[12] = v4;

  return _swift_task_switch(sub_D4CF4, v5, v4);
}

uint64_t sub_D4CF4()
{
  v1 = v0[7];
  swift_beginAccess();
  v0[5] = *(v1 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_5010E0, &unk_403600);
  sub_D74C0();
  if (sub_3ED894())
  {
    v2 = v0[7];
    v3 = *(v1 + 96);
    v0[13] = v3;
    *(v1 + 96) = _swiftEmptyArrayStorage;
    v4 = *(v2 + 80);
    sub_3E7B94();
    v5 = sub_3E7B84();
    [v4 sendEvent:v5];

    v6 = swift_task_alloc();
    v0[14] = v6;
    *v6 = v0;
    v6[1] = sub_D4E68;

    return sub_D51B4(v3);
  }

  else
  {

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_D4E68()
{
  v2 = *v1;
  v2[15] = v0;

  if (v0)
  {
    v3 = v2[11];
    v4 = v2[12];

    return _swift_task_switch(sub_D4FC8, v3, v4);
  }

  else
  {

    v5 = v2[1];

    return v5();
  }
}

uint64_t sub_D4FC8(uint64_t a1)
{
  v19 = v1;
  sub_3E99B4();
  swift_errorRetain();
  v2 = sub_3E99F4();
  v3 = sub_3ED9D4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[15];
    v5 = v1[9];
    v17 = v1[10];
    v6 = v1[8];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    v1[6] = v4;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9DE8, &unk_3F5ED0);
    v9 = sub_3ED2B4();
    v11 = sub_2EDD0(v9, v10, &v18);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_0, v2, v3, "Failed to respond to cache delete notifications: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);

    (*(v5 + 8))(v17, v6);
  }

  else
  {
    v13 = v1[9];
    v12 = v1[10];
    v14 = v1[8];

    (*(v13 + 8))(v12, v14);
  }

  v15 = v1[1];

  return v15();
}

uint64_t sub_D51B4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_3EDD94();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_3E71A4();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = sub_3E9A04();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v6 = sub_3E5FC4();
  v2[14] = v6;
  v2[15] = *(v6 - 8);
  v2[16] = swift_task_alloc();
  type metadata accessor for CacheDeleteObserver();
  sub_D31C4(&qword_4F10D8, v7, type metadata accessor for CacheDeleteObserver, protocol conformance descriptor for CacheDeleteObserver);
  v9 = sub_3ED684();
  v2[17] = v9;
  v2[18] = v8;

  return _swift_task_switch(sub_D53E4, v9, v8);
}

uint64_t sub_D53E4(uint64_t a1)
{
  v21 = v1;
  v3 = v1[15];
  v2 = v1[16];
  v4 = v1[14];
  sub_3E5FB4();
  v5 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v7 = v6;
  v1[19] = v5;
  v1[20] = v6;
  (*(v3 + 8))(v2, v4);
  sub_3E99B4();

  v8 = sub_3E99F4();
  v9 = sub_3ED9F4();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v1[13];
  v12 = v1[10];
  v13 = v1[11];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20 = v15;
    *v14 = 136446210;
    *(v14 + 4) = sub_2EDD0(v5, v7, &v20);
    _os_log_impl(&dword_0, v8, v9, "[%{public}s] Beginning to updated database for deletions", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
  }

  v16 = *(v13 + 8);
  v16(v11, v12);
  v1[21] = v16;
  v17 = swift_task_alloc();
  v1[22] = v17;
  *v17 = v1;
  v17[1] = sub_D55C4;
  v18 = v1[2];

  return sub_D62F8(v18);
}

uint64_t sub_D55C4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 184) = a1;
  *(v4 + 192) = v1;

  v5 = *(v3 + 144);
  v6 = *(v3 + 136);
  if (v1)
  {
    v7 = sub_D5FEC;
  }

  else
  {
    v7 = sub_D5708;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_D5708()
{
  v1 = v0[3];

  sub_3E7194();
  v2 = v1[7];
  v3 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v2);
  v4 = v1[9];
  v5 = swift_task_alloc();
  v0[25] = v5;
  v6 = sub_D31C4(&unk_4F1260, 255, &type metadata accessor for RemoveEpisodesDownloadIntent, &protocol conformance descriptor for RemoveEpisodesDownloadIntent);
  *v5 = v0;
  v5[1] = sub_D582C;
  v7 = v0[9];
  v8 = v0[7];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v6, v7, v4, v8, v6, v2, v3);
}

uint64_t sub_D582C()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {

    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_D5954;
  }

  else
  {
    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_D5A0C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_D5954()
{
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_D5A0C()
{
  v1 = v0[23];
  v2 = v0[6];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];
  (*(v0[8] + 8))(v0[9], v0[7]);
  v6 = *(v5 + 24);
  v7 = swift_allocObject();
  v0[27] = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v1;
  (*(v4 + 104))(v2, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v3);
  v6;
  v8 = swift_task_alloc();
  v0[28] = v8;
  *v8 = v0;
  v8[1] = sub_D5B50;
  v9 = v0[6];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v8, v9, sub_D74A4, v7, &type metadata for () + 8);
}

uint64_t sub_D5B50()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  *(*v1 + 232) = v0;

  (*(v4 + 8))(v3, v5);

  if (v0)
  {

    v6 = *(v2 + 136);
    v7 = *(v2 + 144);
    v8 = sub_D5F4C;
  }

  else
  {
    v6 = *(v2 + 136);
    v7 = *(v2 + 144);
    v8 = sub_D5CF8;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_D5CF8(uint64_t a1)
{
  v21 = v1;
  sub_3E99B4();

  v2 = sub_3E99F4();
  v3 = sub_3ED9F4();

  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[20];
  v5 = v1[21];
  if (v4)
  {
    v7 = v1[19];
    v18 = v1[10];
    v19 = v1[12];
    v8 = v1[21];
    v9 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v9 = 136446466;
    v10 = sub_2EDD0(v7, v6, &v20);

    *(v9 + 4) = v10;
    *(v9 + 12) = 2080;
    v11 = sub_3ED594();
    v13 = sub_2EDD0(v11, v12, &v20);

    *(v9 + 14) = v13;
    _os_log_impl(&dword_0, v2, v3, "[%{public}s] Successfully deleted episodes for batch: %s", v9, 0x16u);
    swift_arrayDestroy();

    v8(v19, v18);
  }

  else
  {
    v14 = v1[12];
    v15 = v1[10];

    v5(v14, v15);
  }

  sub_D6E58();

  v16 = v1[1];

  return v16();
}

uint64_t sub_D5F4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_D5FEC()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_D6094(void *a1, uint64_t a2)
{
  v4 = sub_3E5F84();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_3EDD74();
  if (!v2)
  {
    v9 = result;
    v18 = 0;
    v19 = a1;
    sub_3E5F64();
    v20 = v5;
    v21 = v4;
    if (v9 >> 62)
    {
      v10 = sub_3EE5A4();
      if (v10)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v10 = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
      if (v10)
      {
LABEL_4:
        if (v10 < 1)
        {
          __break(1u);
        }

        v11 = 0;
        do
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v12 = sub_3EE3F4();
          }

          else
          {
            v12 = *(v9 + 8 * v11 + 32);
          }

          v13 = v12;
          ++v11;
          [v12 setDownloadBehavior:5];
          isa = sub_3E5EB4().super.isa;
          [v13 setLastCacheDeletePurge:isa];
        }

        while (v10 != v11);
      }
    }

    v22 = 0;
    if ([v19 save:&v22])
    {
      v15 = *(v20 + 8);
      v16 = v22;
      return v15(v7, v21);
    }

    else
    {
      v17 = v22;
      sub_3E5B84();

      swift_willThrow();
      return (*(v20 + 8))(v7, v21);
    }
  }

  return result;
}

uint64_t sub_D62F8(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_3EDD94();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_3E5DC4();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  type metadata accessor for CacheDeleteObserver();
  sub_D31C4(&qword_4F10D8, v5, type metadata accessor for CacheDeleteObserver, protocol conformance descriptor for CacheDeleteObserver);
  v7 = sub_3ED684();
  v2[12] = v7;
  v2[13] = v6;

  return _swift_task_switch(sub_D6470, v7, v6);
}

uint64_t sub_D6470()
{
  v1 = v0;
  v2 = v0[3];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v1[9];
    sub_41BC8(0, v3, 0);
    v5 = v2 + 40;
    do
    {

      sub_3E5CF4();

      v7 = _swiftEmptyArrayStorage[2];
      v6 = _swiftEmptyArrayStorage[3];
      if (v7 >= v6 >> 1)
      {
        sub_41BC8((v6 > 1), v7 + 1, 1);
      }

      v8 = v1[11];
      v9 = v1[8];
      _swiftEmptyArrayStorage[2] = v7 + 1;
      (*(v4 + 32))(_swiftEmptyArrayStorage + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v7, v8, v9);
      v5 += 16;
      --v3;
    }

    while (v3);
  }

  v10 = _swiftEmptyArrayStorage[2];
  v42 = v1;
  if (v10)
  {
    v11 = v1[9];
    sub_41BA8(0, v10, 0);
    v41 = *(v11 + 16);
    v12 = _swiftEmptyArrayStorage + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v40 = *(v11 + 72);
    v13 = (v11 + 8);
    do
    {
      v14 = v42[10];
      v15 = v42[8];
      v41(v14, v12, v15);
      v16 = sub_3E5D04();
      v18 = v17;
      (*v13)(v14, v15);
      v20 = _swiftEmptyArrayStorage[2];
      v19 = _swiftEmptyArrayStorage[3];
      if (v20 >= v19 >> 1)
      {
        sub_41BA8((v19 > 1), v20 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v20 + 1;
      v21 = &_swiftEmptyArrayStorage[2 * v20];
      v21[4] = v16;
      v21[5] = v18;
      v12 += v40;
      --v10;
    }

    while (v10);

    v1 = v42;
    v22 = _swiftEmptyArrayStorage[2];
    if (v22)
    {
      goto LABEL_12;
    }

LABEL_16:

    goto LABEL_17;
  }

  v22 = _swiftEmptyArrayStorage[2];
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_12:
  sub_3EE4C4();
  sub_36174(0, &qword_4F1D70, NSPredicate_ptr);
  v23 = &_swiftEmptyArrayStorage[5];
  do
  {
    v24 = *(v23 - 1);
    v25 = *v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1240, &qword_3F7660);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_3F5310;
    v27 = sub_3ED244();
    v29 = v28;
    *(v26 + 56) = &type metadata for String;
    v30 = sub_4F39C();
    *(v26 + 32) = v27;
    *(v26 + 40) = v29;
    *(v26 + 96) = &type metadata for String;
    *(v26 + 104) = v30;
    *(v26 + 64) = v30;
    *(v26 + 72) = v24;
    *(v26 + 80) = v25;
    swift_bridgeObjectRetain_n();
    sub_3ED944();

    sub_3EE494();
    sub_3EE4D4();
    sub_3EE4E4();
    sub_3EE4A4();
    v23 += 2;
    --v22;
  }

  while (v22);

  v1 = v42;
LABEL_17:
  v32 = v1[6];
  v31 = v1[7];
  v33 = v1[5];
  v34 = *(v1[4] + 24);
  v35 = swift_allocObject();
  v1[14] = v35;
  *(v35 + 16) = _swiftEmptyArrayStorage;
  *(v35 + 24) = v34;
  (*(v32 + 104))(v31, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v33);
  v34;
  v36 = swift_task_alloc();
  v1[15] = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1250, &qword_3FD680);
  *v36 = v1;
  v36[1] = sub_D6918;
  v38 = v1[7];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v1 + 2, v38, sub_D7448, v35, v37);
}

uint64_t sub_D6918()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  *(*v1 + 128) = v0;

  (*(v4 + 8))(v3, v5);

  v6 = *(v2 + 104);
  v7 = *(v2 + 96);
  if (v0)
  {
    v8 = sub_D6B5C;
  }

  else
  {
    v8 = sub_D6AD4;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_D6AD4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_D6B5C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_D6BD4(unint64_t a2@<X8>)
{
  v4 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:kMTEpisodeEntityName];
  [v4 setResultType:1];
  sub_36174(0, &qword_4F1D70, NSPredicate_ptr);
  isa = sub_3ED574().super.isa;
  v6 = [objc_opt_self() orPredicateWithSubpredicates:isa];

  [v4 setPredicate:v6];
  sub_36174(0, &unk_4F1BE0, NSManagedObjectID_ptr);
  v7 = sub_3EDDA4();
  if (v2)
  {

    return;
  }

  v8 = v7;
  if (v7 >> 62)
  {
    goto LABEL_18;
  }

  v9 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
  if (v9)
  {
LABEL_5:
    v15 = v4;
    v16 = a2;
    sub_41B88(0, v9 & ~(v9 >> 63), 0);
    if ((v9 & 0x8000000000000000) == 0)
    {
      v10 = 0;
      v4 = &dword_0 + 1;
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v11 = sub_3EE3F4();
        }

        else
        {
          if ((v10 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_17:
            __break(1u);
LABEL_18:
            v9 = sub_3EE5A4();
            if (!v9)
            {
              goto LABEL_19;
            }

            goto LABEL_5;
          }

          if (v10 >= *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_17;
          }

          v11 = *(v8 + 8 * v10 + 32);
        }

        a2 = _swiftEmptyArrayStorage[2];
        v12 = _swiftEmptyArrayStorage[3];
        if (a2 >= v12 >> 1)
        {
          v14 = v11;
          sub_41B88((v12 > 1), a2 + 1, 1);
          v11 = v14;
        }

        ++v10;
        _swiftEmptyArrayStorage[2] = a2 + 1;
        v13 = &_swiftEmptyArrayStorage[3 * a2];
        v13[4] = v11;
        v13[5] = 0;
        *(v13 + 48) = 1;
        if (v9 == v10)
        {

          a2 = v16;
          goto LABEL_20;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

LABEL_20:
    *a2 = _swiftEmptyArrayStorage;
  }
}

uint64_t sub_D6E58()
{
  v0 = sub_3E9A04();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3E99B4();
  v4 = sub_3E99F4();
  v5 = sub_3ED9F4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_0, v4, v5, "Finished processing new cache deleted items. Requesting tip providers update in response", v6, 2u);
  }

  (*(v1 + 8))(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1230, &unk_3FD670);
  sub_3EC394();
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  sub_3E6DC4();
  return __swift_destroy_boxed_opaque_existential_1Tm(v9);
}

uint64_t CacheDeleteObserver.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  swift_unknownObjectRelease();

  return v0;
}

uint64_t CacheDeleteObserver.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t dispatch thunk of CacheDeleteObserver.subscribeToObservation()()
{
  v4 = (*(*v0 + 208) + **(*v0 + 208));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2368C;

  return v4();
}

uint64_t sub_D7218(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_D7310;

  return v6(a1);
}

uint64_t sub_D7310()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_D7408()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_D7464()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_D74C0()
{
  result = qword_4F1270;
  if (!qword_4F1270)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_5010E0, &unk_403600);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_4F1270);
  }

  return result;
}

uint64_t sub_D7524(uint64_t a1, uint64_t a2)
{
  v4 = sub_3E8FD4();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_D7588()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_D75C0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2400C;

  return sub_D7218(a1, v4);
}

uint64_t sub_D7678(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2368C;

  return sub_D7218(a1, v4);
}

void *EpisodeDeletionActionProvider.__allocating_init(asPartOf:episodeDownloadStateController:libraryActionController:)(uint64_t a1, uint64_t a2, void *a3)
{
  swift_allocObject();
  v6 = sub_DA704(a1, a2, a3);

  return v6;
}

void *EpisodeDeletionActionProvider.init(asPartOf:episodeDownloadStateController:libraryActionController:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = sub_DA704(a1, a2, a3);

  return v3;
}

uint64_t sub_D77E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F87C0, &unk_3FA8B0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_3F5630;
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;
  if (a4)
  {
    v11 = swift_allocObject();
    *(v11 + 1) = xmmword_3F5630;
    v11[4] = a3;
    v11[5] = a4;
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v12 = sub_D79FC(v10, v11, a5, 0);

  return v12;
}

uint64_t sub_D78F0(uint64_t result, uint64_t a2)
{
  v11 = *(result + 16);
  if (v11)
  {
    v2 = 0;
    v3 = (result + 40);
    v4 = (a2 + 40);
    do
    {
      v5 = *(a2 + 16);
      if (v2 == v5)
      {
        break;
      }

      if (v2 >= v5)
      {
        __break(1u);
        return result;
      }

      v6 = *v3;
      v15 = *(v3 - 1);
      ++v2;
      v7 = *(v4 - 1);
      v8 = *v4;
      v10 = v12[7];
      v9 = v12[8];
      __swift_project_boxed_opaque_existential_1(v12 + 4, v10);
      v14 = *(v9 + 248);

      v14(v15, v6, v7, v8, v10, v9);

      v3 += 2;
      v4 += 2;
    }

    while (v11 != v2);
  }

  return result;
}

uint64_t sub_D79FC(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v5 = v4;
  v169 = a4;
  v183 = a2;
  v8 = sub_3E9A04();
  v166 = *(v8 - 8);
  v167 = v8;
  __chkstk_darwin(v8);
  v165 = &v164 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10D0, &qword_3FD580);
  __chkstk_darwin(v10 - 8);
  v168 = &v164 - v11;
  v12 = sub_3E5FC4();
  v173 = *(v12 - 8);
  v174 = v12;
  __chkstk_darwin(v12);
  v172 = &v164 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
  __chkstk_darwin(v14 - 8);
  v178 = &v164 - v15;
  v16 = sub_3EC1F4();
  v170 = *(v16 - 8);
  v171 = v16;
  __chkstk_darwin(v16);
  v177 = &v164 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v176 = &v164 - v19;
  v191 = sub_3EBBC4();
  v20 = *(v191 - 8);
  __chkstk_darwin(v191);
  v189 = &v164 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = sub_3EBC14();
  v22 = *(v190 - 8);
  __chkstk_darwin(v190);
  v188 = &v164 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_3E8AE4();
  __chkstk_darwin(v24);
  v26 = &v164 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v30 = &v164 - v29;
  v31 = *a3;
  v196 = a3[1];
  v197 = v31;
  v32 = a3[2];
  v194 = a3[3];
  v195 = v32;
  v33 = a3[4];
  v186 = a3[5];
  v187 = v33;
  v34 = a3[6];
  v184 = a3[7];
  v185 = v34;
  v35 = a3[8];
  v36 = a3[9];
  v202 = a3[10];
  v203 = v35;
  v37 = a3[12];
  v192 = a3[11];
  v193 = v36;
  v201 = v37;
  v38 = &_swiftEmptySetSingleton;
  v230 = &_swiftEmptySetSingleton;
  v231 = &_swiftEmptySetSingleton;
  v229 = &_swiftEmptySetSingleton;
  v39 = *(a1 + 16);
  v200 = v5;
  v181 = a1;
  v182 = v39;
  if (v39)
  {
    v198 = v22;
    v199 = v20;
    v40 = v5[3];
    v206 = (v28 + 16);
    v207 = v40;
    v205 = (v28 + 88);
    LODWORD(v204) = enum case for EpisodeDownloadState.downloading(_:);
    v41 = (v28 + 8);
    v42 = (a1 + 40);
    v43 = v39;
    do
    {
      v45 = *(v42 - 1);
      v44 = *v42;

      sub_3E8D54();
      sub_3E8984();

      if ((sub_3E8AB4() & 1) != 0 || ((*v206)(v26, v30, v24), v46 = (*v205)(v26, v24), v46 == v204))
      {

        sub_30E74(&aBlock, v45, v44);
      }

      else
      {
        (*v41)(v26, v24);
      }

      if (sub_3E8AC4())
      {
        sub_30E74(&aBlock, v45, v44);

        (*v41)(v30, v24);
      }

      else
      {
        (*v41)(v30, v24);
      }

      v42 += 2;
      --v43;
    }

    while (v43);
    v38 = v230;
    v20 = v199;
    v5 = v200;
    v22 = v198;
  }

  v47 = v5[2];
  v48 = swift_allocObject();
  *(v48 + 16) = v38;
  *(v48 + 24) = v5;
  *&v222 = sub_DA8B4;
  *(&v222 + 1) = v48;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v221 = sub_1279E4;
  *(&v221 + 1) = &block_descriptor_4;
  v49 = _Block_copy(&aBlock);

  v50 = v188;
  sub_3EBBE4();
  *&v215 = _swiftEmptyArrayStorage;
  v51 = sub_DB014(&qword_506A20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0, &unk_40B9F0);
  v53 = sub_DA8D4();
  v54 = v189;
  v179 = v53;
  v180 = v52;
  v55 = v191;
  v204 = v51;
  sub_3EE244();
  v205 = v47;
  sub_3EDBE4();
  _Block_release(v49);
  v56 = *(v20 + 8);
  v199 = v20 + 8;
  v56(v54, v55);
  v57 = *(v22 + 8);
  v198 = v22 + 8;
  v57(v50, v190);

  v58 = swift_allocObject();
  v59 = v58;
  *(v58 + 16) = 0;
  *(v58 + 24) = 0;
  *&aBlock = v197;
  *(&aBlock + 1) = v196;
  *&v221 = v195;
  *(&v221 + 1) = v194;
  *&v222 = v187;
  *(&v222 + 1) = v186;
  *&v223 = v185;
  *(&v223 + 1) = v184;
  v224 = v203;
  v225 = v193;
  v226 = v202;
  v227 = v192;
  v60 = v203 >> 62;
  v228 = v201;
  if (v203 >> 62)
  {
    if (v60 == 1)
    {
      v224 = v203 & 0x3FFFFFFFFFFFFFFFLL;
      v226 = v202;
      v228 = v201;
      v61 = v194;
      *(v58 + 16) = v195;
      *(v58 + 24) = v61;
      v215 = 0u;
      v216 = 0u;
      v217 = 0u;
      v218 = 0u;
      v219 = -1;
      v62 = v196;

      v206 = v197;
      v207 = v62;
    }

    else
    {
      v206 = 0;
      v207 = 0;
      v217 = 0u;
      v218 = 0u;
      v215 = 0u;
      v216 = 0u;
      v219 = -1;
    }
  }

  else
  {
    v63 = v202;
    v64 = v193;
    v224 = v203 & 0x3FFFFFFFFFFFFFFFLL;
    v225 = v193;
    v226 = v202;
    v227 = v192;
    v65 = v201;
    v228 = v201;
    v210 = v222;
    v211 = v223;
    v208 = aBlock;
    v209 = v221;
    v212 = v203;
    *(v58 + 16) = v192;
    *(v58 + 24) = v65;
    sub_DAD10(&aBlock, &v215);
    v217 = v210;
    v218 = v211;
    v219 = v212;
    v215 = v208;
    v216 = v209;

    v206 = v64;
    v207 = v63;
  }

  v214 = _swiftEmptyArrayStorage;
  v66 = objc_opt_self();
  v67 = [v66 mainBundle];
  v162._countAndFlagsBits = 0xE000000000000000;
  v232._object = 0x8000000000427400;
  v232._countAndFlagsBits = 0xD000000000000018;
  v235.value._countAndFlagsBits = 0;
  v235.value._object = 0;
  v68.super.isa = v67;
  v238._countAndFlagsBits = 0;
  v238._object = 0xE000000000000000;
  sub_3E5A74(v232, v235, v68, v238, 0, v162);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1240, &qword_3F7660);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_3F5630;
  *(v69 + 56) = &type metadata for Int;
  *(v69 + 64) = &protocol witness table for Int;
  *(v69 + 32) = v182;
  v70 = sub_3ED214();

  if (v60 != 2 || v203 != 0x8000000000000000 || v196 | v197 | v195 | v194 | v187 | v186 | v185 | v184 | v193 | v202 | v192 | v201)
  {

    v90 = v206;
    v89 = v207;
    v91 = v183;
    if (v219 == 10)
    {
      v92 = v217 | *(&v217 + 1) | v218;
      if (!(v216 | *(&v215 + 1) | v215 | *(&v216 + 1) | v92 | *(&v218 + 1)))
      {
        v175 = v57;

        v110 = v181;
        if (v90)
        {
          (v90)(v181);
        }

        v111 = swift_allocObject();
        v112 = v200;
        v111[2] = v110;
        v111[3] = v112;
        v111[4] = v59;
        *&v210 = sub_DAC80;
        *(&v210 + 1) = v111;
        *&v208 = _NSConcreteStackBlock;
        *(&v208 + 1) = 1107296256;
        v109 = &block_descriptor_31;
        goto LABEL_68;
      }

      if (v215 == 6 && !(v216 | *(&v215 + 1) | *(&v216 + 1) | v92 | *(&v218 + 1)))
      {

        v93 = v181;
        if (v90)
        {
          (v90)(v181);
        }

        v94 = v168;
        sub_3ED6C4();
        v95 = sub_3ED6F4();
        (*(*(v95 - 8) + 56))(v94, 0, 1, v95);
        v96 = *(v59 + 16);
        v97 = *(v59 + 24);
        v98 = swift_allocObject();
        v98[2] = 0;
        v98[3] = 0;
        v98[4] = v93;
        v98[5] = v200;
        v98[6] = v96;
        v98[7] = v97;

        sub_7A6C8(v96, v97);
        sub_8FEE4(0, 0, v94, &unk_3FD6C8, v98);
        v99 = v90;
        v100 = v89;
LABEL_63:
        sub_16AC0(v99, v100);

        sub_DA978(&v215);
        goto LABEL_70;
      }
    }

    v101 = *(v183 + 16);
    v175 = v57;
    if (v101)
    {

      v102 = v181;
      if (v90)
      {
        (v90)(v181);
      }

      v103 = swift_allocObject();
      v103[2] = v102;
      v103[3] = v91;
      v103[4] = v200;
      v103[5] = v59;
      *&v210 = sub_DAB30;
      *(&v210 + 1) = v103;
      *&v208 = _NSConcreteStackBlock;
      *(&v208 + 1) = 1107296256;
      *&v209 = sub_1279E4;
      *(&v209 + 1) = &block_descriptor_21;
      v104 = _Block_copy(&v208);

      goto LABEL_69;
    }

    if (v229[2])
    {
      v105 = v229;

      v106 = v181;
      if (v90)
      {
        (v90)(v181);
      }

      v107 = swift_allocObject();
      v108 = v200;
      v107[2] = v105;
      v107[3] = v108;
      v107[4] = v59;
      v107[5] = v106;
      *&v210 = sub_DAA50;
      *(&v210 + 1) = v107;
      *&v208 = _NSConcreteStackBlock;
      *(&v208 + 1) = 1107296256;
      v109 = &block_descriptor_15;
    }

    else
    {

      v150 = v231;
      if (!v231[2])
      {

        v158 = v165;
        sub_3E9994();
        v159 = sub_3E99F4();
        v160 = sub_3ED9D4();
        if (os_log_type_enabled(v159, v160))
        {
          v161 = swift_slowAlloc();
          *v161 = 0;
          _os_log_impl(&dword_0, v159, v160, "Impossible to delete episode or provide delete action", v161, 2u);

          sub_16AC0(v90, v89);
          sub_DA978(&v215);
        }

        else
        {
          sub_16AC0(v90, v89);
          sub_DA978(&v215);
        }

        (*(v166 + 8))(v158, v167);
        goto LABEL_70;
      }

      v151 = v181;
      if (v90)
      {
        (v90)(v181);
      }

      v152 = swift_allocObject();
      v153 = v200;
      v152[2] = v150;
      v152[3] = v153;
      v152[4] = v59;
      v152[5] = v151;
      *&v210 = sub_DA9E0;
      *(&v210 + 1) = v152;
      *&v208 = _NSConcreteStackBlock;
      *(&v208 + 1) = 1107296256;
      v109 = &block_descriptor_9;
    }

LABEL_68:
    *&v209 = sub_1279E4;
    *(&v209 + 1) = v109;
    v104 = _Block_copy(&v208);

LABEL_69:

    v154 = v89;
    v155 = v188;
    sub_3EBBE4();
    v213 = _swiftEmptyArrayStorage;
    v156 = v189;
    v157 = v191;
    sub_3EE244();
    sub_3EDBE4();
    _Block_release(v104);
    sub_16AC0(v90, v154);
    sub_DA978(&v215);
    v56(v156, v157);
    v175(v155, v190);

LABEL_70:

    return 0;
  }

  v71 = v231;
  v72 = v231[2];
  v205 = v59;
  v73 = v183;
  if (!v72)
  {

    if (!*(v73 + 16))
    {
LABEL_53:
      sub_16AC0(v206, v207);
      sub_DA978(&v215);

      return v70;
    }

LABEL_52:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1C80, &qword_3F7EA0);
    v203 = swift_allocObject();
    *(v203 + 16) = xmmword_3F7950;
    v113 = v73;
    v114 = [v66 mainBundle];
    v163._countAndFlagsBits = 0xE000000000000000;
    v233._countAndFlagsBits = 0xD00000000000001CLL;
    v233._object = 0x8000000000427450;
    v236.value._countAndFlagsBits = 0;
    v236.value._object = 0;
    v115.super.isa = v114;
    v239._countAndFlagsBits = 0;
    v239._object = 0xE000000000000000;
    v116 = sub_3E5A74(v233, v236, v115, v239, 0, v163);
    v201 = v117;
    v202 = v116;

    v118 = swift_allocObject();
    *(v118 + 2) = v181;
    *(v118 + 3) = v113;
    *(v118 + 4) = v200;

    v119 = v176;
    _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
    type metadata accessor for ClosureAction(0);
    v120 = swift_allocObject();
    v121 = (v120 + OBJC_IVAR____TtC8ShelfKit13ClosureAction_closure);
    *v121 = sub_DAD04;
    v121[1] = v118;
    v204 = v70;
    v122 = v170;
    v123 = v171;
    (*(v170 + 16))(v177, v119, v171);
    v124 = sub_3EC634();
    (*(*(v124 - 8) + 56))(v178, 1, 1, v124);

    v125 = v172;
    sub_3E5FB4();
    v126 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
    v128 = v127;

    (*(v173 + 8))(v125, v174);
    (*(v122 + 8))(v119, v123);
    *(v120 + 16) = v126;
    *(v120 + 24) = v128;
    v129 = v201;
    *(v120 + 32) = v202;
    *(v120 + 40) = v129;
    *(v120 + 48) = 1;
    (*(v122 + 32))(v120 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v177, v123);
    v70 = v204;
    sub_14A10(v178, v120 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
    v130 = v203;
    *(v203 + 32) = v120;
    sub_40F6C(v130);
    goto LABEL_53;
  }

  if ((v169 & 1) == 0)
  {
    if (v72 == 1)
    {
      v131 = 0xD000000000000021;
    }

    else
    {
      v131 = 0xD00000000000001FLL;
    }

    v204 = v70;
    if (v72 == 1)
    {
      v132 = "REMOVE_COUNT_ITEM_FORMAT";
    }

    else
    {
      v132 = "EPISODES_REMOVE_FROM_STATION";
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1C80, &qword_3F7EA0);
    v203 = swift_allocObject();
    *(v203 + 16) = xmmword_3F7950;
    v133 = [v66 mainBundle];
    v163._countAndFlagsBits = 0xE000000000000000;
    v234._object = (v132 | 0x8000000000000000);
    v234._countAndFlagsBits = v131;
    v237.value._countAndFlagsBits = 0;
    v237.value._object = 0;
    v134.super.isa = v133;
    v240._countAndFlagsBits = 0;
    v240._object = 0xE000000000000000;
    v135 = sub_3E5A74(v234, v237, v134, v240, 0, v163);
    v201 = v136;
    v202 = v135;

    v137 = swift_allocObject();
    *(v137 + 16) = v71;
    *(v137 + 24) = v200;

    v138 = v176;
    _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
    type metadata accessor for ClosureAction(0);
    v139 = swift_allocObject();
    v140 = (v139 + OBJC_IVAR____TtC8ShelfKit13ClosureAction_closure);
    *v140 = sub_DAC8C;
    v140[1] = v137;
    v142 = v170;
    v141 = v171;
    (*(v170 + 16))(v177, v138, v171);
    v143 = sub_3EC634();
    (*(*(v143 - 8) + 56))(v178, 1, 1, v143);

    v144 = v172;
    sub_3E5FB4();
    v145 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
    v147 = v146;

    (*(v173 + 8))(v144, v174);
    (*(v142 + 8))(v176, v141);
    *(v139 + 16) = v145;
    *(v139 + 24) = v147;
    v148 = v201;
    *(v139 + 32) = v202;
    *(v139 + 40) = v148;
    *(v139 + 48) = 1;
    (*(v142 + 32))(v139 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v177, v141);
    sub_14A10(v178, v139 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
    v149 = v203;
    *(v203 + 32) = v139;
    v70 = v204;
    v214 = v149;
    v73 = v183;
    if (!*(v183 + 16))
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  v75 = 0;
  v202 = v71;
  v76 = v71 + 7;
  v77 = 1 << *(v71 + 32);
  v78 = -1;
  if (v77 < 64)
  {
    v78 = ~(-1 << v77);
  }

  v79 = v78 & v71[7];
  for (i = (v77 + 63) >> 6; v79; result = )
  {
    v81 = v75;
    v82 = v202;
LABEL_31:
    v83 = __clz(__rbit64(v79));
    v79 &= v79 - 1;
    v84 = (*(v82 + 48) + ((v81 << 10) | (16 * v83)));
    v85 = *v84;
    v86 = v84[1];
    v87 = v200[7];
    v88 = v200[8];
    __swift_project_boxed_opaque_existential_1(v200 + 4, v87);
    v203 = *(v88 + 352);
    v204 = v88 + 352;

    (v203)(v85, v86, 0, v87, v88);
  }

  v82 = v202;
  while (1)
  {
    v81 = v75 + 1;
    if (__OFADD__(v75, 1))
    {
      break;
    }

    if (v81 >= i)
    {
      v99 = v206;
      v100 = v207;
      goto LABEL_63;
    }

    v79 = v76[v81];
    ++v75;
    if (v79)
    {
      v75 = v81;
      goto LABEL_31;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_D9024(uint64_t a1, void *a2)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    while (1)
    {
      v9 = v8;
LABEL_9:
      v10 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
      v12 = *v11;
      v13 = v11[1];
      v14 = a2[7];
      v15 = a2[8];
      __swift_project_boxed_opaque_existential_1(a2 + 4, v14);
      v16 = *(v15 + 328);

      v16(v12, v13, v14, v15);

      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return result;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }
}

uint64_t sub_D9170(uint64_t a1, void *a2)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    while (1)
    {
      v9 = v8;
LABEL_9:
      v10 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
      v12 = *v11;
      v13 = v11[1];
      v14 = a2[7];
      v15 = a2[8];
      __swift_project_boxed_opaque_existential_1(a2 + 4, v14);
      v16 = *(v15 + 352);

      v16(v12, v13, 0, v14, v15);

      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return result;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }
}

uint64_t sub_D92C0(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (result + 40);
    v6 = (a2 + 40);
    v12 = *(result + 16);
    v13 = a2;
    do
    {
      if (v4 < *(a2 + 16))
      {
        v7 = *v5;
        v16 = *(v5 - 1);
        v8 = a3[7];
        v9 = a3[8];
        __swift_project_boxed_opaque_existential_1(a3 + 4, v8);
        v10 = *(v6 - 1);
        v11 = *v6;
        v15 = *(v9 + 248);

        v15(v16, v7, v10, v11, v8, v9);

        v3 = v12;
        a2 = v13;
      }

      ++v4;
      v5 += 2;
      v6 += 2;
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t sub_D93C0(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = a3;
  v5 = sub_3EBBC4();
  v29 = *(v5 - 8);
  v30 = v5;
  __chkstk_darwin(v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3EBC14();
  v26 = *(v7 - 8);
  v27 = v7;
  __chkstk_darwin(v7);
  v25 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a1;
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = (v31 + 40);
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;
      v14 = a2[7];
      v13 = a2[8];
      __swift_project_boxed_opaque_existential_1(a2 + 4, v14);
      v15 = *(v13 + 352);

      v15(v11, v12, 0, v14, v13);

      v10 += 2;
      --v9;
    }

    while (v9);
  }

  sub_801B4();
  v16 = sub_3EDBC4();
  v17 = swift_allocObject();
  v18 = v31;
  *(v17 + 16) = v24;
  *(v17 + 24) = v18;
  aBlock[4] = sub_DAFF8;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1279E4;
  aBlock[3] = &block_descriptor_46;
  v19 = _Block_copy(aBlock);

  v20 = v25;
  sub_3EBBE4();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_DB014(&qword_506A20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0, &unk_40B9F0);
  sub_DA8D4();
  v21 = v28;
  v22 = v30;
  sub_3EE244();
  sub_3EDBE4();
  _Block_release(v19);

  (*(v29 + 8))(v21, v22);
  return (*(v26 + 8))(v20, v27);
}

uint64_t sub_D9710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v8 = sub_3EBBC4();
  v7[13] = v8;
  v7[14] = *(v8 - 8);
  v7[15] = swift_task_alloc();
  v9 = sub_3EBC14();
  v7[16] = v9;
  v7[17] = *(v9 - 8);
  v7[18] = swift_task_alloc();
  v10 = sub_3E70E4();
  v7[19] = v10;
  v7[20] = *(v10 - 8);
  v7[21] = swift_task_alloc();

  return _swift_task_switch(sub_D988C, 0, 0);
}

uint64_t sub_D988C()
{
  v1 = v0;
  v2 = v0[9];
  v3 = *(v2 + 16);
  if (v3)
  {
    v20 = v0;
    sub_41B88(0, v3, 0);
    v4 = _swiftEmptyArrayStorage[2];
    v5 = 24 * v4 + 48;
    v6 = (v2 + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;
      v9 = _swiftEmptyArrayStorage[3];

      if (v4 >= v9 >> 1)
      {
        sub_41B88((v9 > 1), v4 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v4 + 1;
      v10 = _swiftEmptyArrayStorage + v5;
      *(v10 - 2) = v8;
      *(v10 - 1) = v7;
      *v10 = 2;
      v5 += 24;
      v6 += 2;
      ++v4;
      --v3;
    }

    while (v3);
    v1 = v20;
  }

  v11 = v1[10];
  sub_3E70C4();
  v12 = v11[13];
  v13 = v11[14];
  __swift_project_boxed_opaque_existential_1(v11 + 10, v12);
  v14 = v11[9];
  v15 = swift_task_alloc();
  v1[22] = v15;
  v16 = sub_DB014(&qword_4F1DD0, &type metadata accessor for UnbookmarkEpisodeIntent, &protocol conformance descriptor for UnbookmarkEpisodeIntent);
  *v15 = v1;
  v15[1] = sub_D9A6C;
  v17 = v1[21];
  v18 = v1[19];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v16, v17, v14, v18, v16, v12, v13);
}

uint64_t sub_D9A6C()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_D9DE8;
  }

  else
  {
    v2 = sub_D9B80;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_D9B80()
{
  v1 = v0[18];
  v16 = v0[19];
  v17 = v0[21];
  v13 = v0[17];
  v14 = v0[16];
  v15 = v0[20];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[12];
  v5 = v0[13];
  v6 = v0[11];
  v7 = v0[9];
  sub_801B4();
  v12 = sub_3EDBC4();
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = v4;
  v8[4] = v7;
  v0[6] = sub_DB0A4;
  v0[7] = v8;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_1279E4;
  v0[5] = &block_descriptor_53;
  v9 = _Block_copy(v0 + 2);
  sub_7A6C8(v6, v4);

  sub_3EBBE4();
  v0[8] = _swiftEmptyArrayStorage;
  sub_DB014(&qword_506A20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0, &unk_40B9F0);
  sub_DA8D4();
  sub_3EE244();
  sub_3EDBE4();
  _Block_release(v9);

  (*(v3 + 8))(v2, v5);
  (*(v13 + 8))(v1, v14);
  (*(v15 + 8))(v17, v16);

  v10 = v0[1];

  return v10();
}

uint64_t sub_D9DE8()
{
  (*(v0[20] + 8))(v0[21], v0[19]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_D9E84(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v27 = a4;
  v37 = a3;
  v6 = sub_3EBBC4();
  v32 = *(v6 - 8);
  v33 = v6;
  __chkstk_darwin(v6);
  v31 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3EBC14();
  v29 = *(v8 - 8);
  v30 = v8;
  __chkstk_darwin(v8);
  v28 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a1;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = (v34 + 40);
    v13 = (a2 + 40);
    v35 = *(a1 + 16);
    v36 = a2;
    do
    {
      if (v11 < *(a2 + 16))
      {
        v14 = *v12;
        v39 = *(v12 - 1);
        v16 = v37[7];
        v15 = v37[8];
        __swift_project_boxed_opaque_existential_1(v37 + 4, v16);
        v17 = *(v13 - 1);
        v18 = *v13;
        v38 = *(v15 + 248);

        v38(v39, v14, v17, v18, v16, v15);
        a2 = v36;

        v10 = v35;
      }

      ++v11;
      v12 += 2;
      v13 += 2;
    }

    while (v10 != v11);
  }

  sub_801B4();
  v19 = sub_3EDBC4();
  v20 = swift_allocObject();
  v21 = v34;
  *(v20 + 16) = v27;
  *(v20 + 24) = v21;
  aBlock[4] = sub_DB164;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1279E4;
  aBlock[3] = &block_descriptor_60;
  v22 = _Block_copy(aBlock);

  v23 = v28;
  sub_3EBBE4();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_DB014(&qword_506A20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0, &unk_40B9F0);
  sub_DA8D4();
  v24 = v31;
  v25 = v33;
  sub_3EE244();
  sub_3EDBE4();
  _Block_release(v22);

  (*(v32 + 8))(v24, v25);
  return (*(v29 + 8))(v23, v30);
}

uint64_t sub_DA22C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v33 = a6;
  v34 = a7;
  v32[1] = a5;
  v35 = a3;
  v36 = a4;
  v43 = a2;
  v8 = sub_3EBBC4();
  v41 = *(v8 - 8);
  v42 = v8;
  __chkstk_darwin(v8);
  v40 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_3EBC14();
  v38 = *(v10 - 8);
  v39 = v10;
  __chkstk_darwin(v10);
  v37 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 56);
  v15 = (v12 + 63) >> 6;
  v44 = a1;

  for (i = 0; v14; result = )
  {
    v18 = i;
LABEL_9:
    v19 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v20 = (*(v44 + 48) + ((v18 << 10) | (16 * v19)));
    v21 = v20[1];
    v45 = *v20;
    v22 = v43[7];
    v23 = v43[8];
    __swift_project_boxed_opaque_existential_1(v43 + 4, v22);
    v24 = *(v23 + 352);

    v24(v45, v21, 0, v22, v23);
  }

  while (1)
  {
    v18 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v18 >= v15)
    {

      sub_801B4();
      v25 = sub_3EDBC4();
      v26 = swift_allocObject();
      v27 = v36;
      *(v26 + 16) = v35;
      *(v26 + 24) = v27;
      aBlock[4] = v33;
      aBlock[5] = v26;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1279E4;
      aBlock[3] = v34;
      v28 = _Block_copy(aBlock);

      v29 = v37;
      sub_3EBBE4();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_DB014(&qword_506A20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0, &unk_40B9F0);
      sub_DA8D4();
      v30 = v40;
      v31 = v42;
      sub_3EE244();
      sub_3EDBE4();
      _Block_release(v28);

      (*(v41 + 8))(v30, v31);
      return (*(v38 + 8))(v29, v39);
    }

    v14 = *(a1 + 56 + 8 * v18);
    ++i;
    if (v14)
    {
      i = v18;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_DA5F8(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = *(a1 + 24);

    v5(a2);
    return sub_16AC0(v5, v6);
  }

  return result;
}

uint64_t EpisodeDeletionActionProvider.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
  return v0;
}

uint64_t EpisodeDeletionActionProvider.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));

  return swift_deallocClassInstance();
}

void *sub_DA704(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = sub_3EBBD4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_801B4();
  (*(v9 + 104))(v11, enum case for DispatchQoS.QoSClass.userInitiated(_:), v8);
  v12 = sub_3EDC04();
  (*(v9 + 8))(v11, v8);
  v4[9] = a1;
  v4[2] = v12;
  v4[3] = a2;
  sub_1F958(a3, (v4 + 4));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEBC0, &unk_3FD560);

  sub_3EC394();
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  sub_1FE90(&v15, (v4 + 10));
  return v4;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_DA8D4()
{
  result = qword_506A30;
  if (!qword_506A30)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_503DE0, &unk_40B9F0);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_506A30);
  }

  return result;
}

uint64_t sub_DA938()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_DA978(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EC910, qword_3F8E80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_5Tm(void (*a1)(void), void (*a2)(void))
{

  a1(*(v2 + 24));

  a2(*(v2 + 40));

  return _swift_deallocObject(v2, 48, 7);
}

uint64_t sub_DAB3C()
{
  swift_unknownObjectRelease();

  if (*(v0 + 48))
  {
  }

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_DAB94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2368C;

  return sub_D9710(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t objectdestroy_27Tm(void (*a1)(void))
{

  a1(*(v1 + 24));

  return _swift_deallocObject(v1, 40, 7);
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation17EpisodeUserFilterO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation15EpisodeListTypeO(uint64_t a1)
{
  if ((*(a1 + 64) & 0xFu) <= 9)
  {
    return *(a1 + 64) & 0xF;
  }

  else
  {
    return (*a1 + 10);
  }
}

unint64_t get_enum_tag_for_layout_string_8ShelfKit29EpisodeDeletionActionProviderC7ContextO(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 + 2);
  }
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_DAEA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64) >> 4;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_DAEF8(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 104) = 1;
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
      result = 0.0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 64) = 16 * -a2;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      return result;
    }

    *(a1 + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}