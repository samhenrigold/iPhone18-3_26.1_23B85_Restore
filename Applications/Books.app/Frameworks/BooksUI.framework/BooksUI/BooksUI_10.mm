uint64_t sub_10B474()
{
  if (*v0)
  {
    return 1635017060;
  }

  else
  {
    return 1684957547;
  }
}

void sub_10B4A4(uint64_t a1@<X0>, void *a2@<X1>, Swift::OpaquePointer a3@<X4>, char *a4@<X8>)
{
  v9._countAndFlagsBits = a1;
  v9._object = a2;
  v7 = sub_264D40(a3, v9);

  if (v7 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v7)
  {
    v8 = 0;
  }

  *a4 = v8;
}

uint64_t sub_10B504(uint64_t a1)
{
  v2 = sub_10C704();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10B540(uint64_t a1)
{
  v2 = sub_10C704();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_10B588()
{
  sub_265050();
  sub_264500();

  return sub_265080();
}

double sub_10B680(uint64_t a1)
{
  sub_264500();

  return result;
}

Swift::Int sub_10B764(uint64_t a1)
{
  sub_265050();
  sub_264500();

  return sub_265080();
}

unint64_t sub_10B858@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10D0F4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_10B888(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7107189;
  v5 = 0xEF646E694B656761;
  v6 = 0x6D496C6F626D7973;
  v7 = 0xED0000656372756FLL;
  v8 = 0x7365527465737361;
  if (v2 != 3)
  {
    v8 = 0x7463656C65537369;
    v7 = 0xEA00000000006465;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x656C746974627573;
    v3 = 0xE800000000000000;
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

uint64_t sub_10B93C()
{
  v1 = *v0;
  v2 = 7107189;
  v3 = 0x6D496C6F626D7973;
  v4 = 0x7365527465737361;
  if (v1 != 3)
  {
    v4 = 0x7463656C65537369;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656C746974627573;
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

unint64_t sub_10B9EC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10D0F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10BA14(uint64_t a1)
{
  v2 = sub_10C7AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10BA50(uint64_t a1)
{
  v2 = sub_10C7AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10BA8C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6E694C6572616873;
  v4 = 0xE90000000000006BLL;
  if (v2 != 1)
  {
    v3 = 0x6E6F74747562;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x656C67676F74;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0x6E694C6572616873;
  v8 = 0xE90000000000006BLL;
  if (*a2 != 1)
  {
    v7 = 0x6E6F74747562;
    v8 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x656C67676F74;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_264F10();
  }

  return v11 & 1;
}

Swift::Int sub_10BB8C()
{
  sub_265050();
  sub_264500();

  return sub_265080();
}

double sub_10BC2C(uint64_t a1)
{
  sub_264500();

  return result;
}

Swift::Int sub_10BCB8(uint64_t a1)
{
  sub_265050();
  sub_264500();

  return sub_265080();
}

unint64_t sub_10BD54@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10D140(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_10BD84(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE90000000000006BLL;
  v5 = 0x6E694C6572616873;
  if (v2 != 1)
  {
    v5 = 0x6E6F74747562;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656C67676F74;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t ToolbarActionMenuItemButtonType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = sub_2EF0(&qword_316208, &qword_268BD0);
  __chkstk_darwin(v3 - 8);
  v44 = v39 - v4;
  v43 = sub_260060();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v47 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2EF0(&qword_31E358, &qword_277F30);
  v46 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v39 - v7;
  v9 = sub_2EF0(&qword_31E360, &unk_277F38);
  v45 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v39 - v10;
  v12 = type metadata accessor for ToolbarActionMenuItemButtonType(0);
  __chkstk_darwin(v12);
  v14 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v49 = a1;
  sub_2E18(a1, v15);
  sub_10C704();
  v16 = v48;
  sub_265120();
  if (!v16)
  {
    v48 = v8;
    v39[1] = v12;
    v40 = v6;
    v17 = v46;
    v39[0] = v14;
    v18 = v45;
    v53 = 0;
    sub_10C758();
    sub_264DF0();
    v19 = v11;
    v20 = v50;
    LOBYTE(v50) = 1;
    sub_10C7AC();
    v21 = v48;
    sub_264D50();
    if (v20)
    {
      if (v20 != 1)
      {
        sub_260BD0();
        LOBYTE(v50) = 1;
        sub_10C868(&qword_315D90, &type metadata accessor for LocalizerRequest, &protocol conformance descriptor for LocalizerRequest);
        sub_264DB0();
        LOBYTE(v50) = 2;
        v30 = sub_264D70();
        v47 = v31;
        v43 = v30;
        sub_2EF0(&qword_317FB8, &unk_26AA50);
        v53 = 3;
        sub_43FB8();
        sub_264DB0();
        if (v50)
        {
          v32 = v50;
          sub_260810();

          (*(v17 + 8))(v48, v40);
          (*(v18 + 8))(v19, v9);
        }

        else
        {
          (*(v17 + 8))(v48, v40);
          (*(v18 + 8))(v19, v9);
          v52 = 0;
          v50 = 0u;
          v51 = 0u;
        }

        v33 = v42;
        v34 = sub_2EF0(&qword_31BB98, &qword_271980);
        v26 = v39[0];
        v35 = (v39[0] + *(v34 + 48));
        v36 = v39[0] + *(v34 + 64);
        sub_22148(v44, v39[0], &qword_316208, &qword_268BD0);
        v37 = v47;
        *v35 = v43;
        v35[1] = v37;
        *(v36 + 32) = v52;
        v38 = v51;
        *v36 = v50;
        *(v36 + 16) = v38;
        swift_storeEnumTagMultiPayload();
        v29 = v33;
        goto LABEL_9;
      }

      LOBYTE(v50) = 0;
      sub_10C868(&qword_31E380, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v23 = v17;
      v24 = v43;
      v25 = v40;
      sub_264DF0();
      (*(v23 + 8))(v21, v25);
      (*(v18 + 8))(v19, v9);
      v26 = v39[0];
      (*(v41 + 32))(v39[0], v47, v24);
    }

    else
    {
      LOBYTE(v50) = 4;
      v27 = v40;
      v28 = sub_264DD0();
      (*(v17 + 8))(v21, v27);
      (*(v18 + 8))(v19, v9);
      v26 = v39[0];
      *v39[0] = v28 & 1;
    }

    swift_storeEnumTagMultiPayload();
    v29 = v42;
LABEL_9:
    sub_10C800(v26, v29, type metadata accessor for ToolbarActionMenuItemButtonType);
  }

  return sub_3080(v49);
}

unint64_t sub_10C5A0()
{
  result = qword_31E338;
  if (!qword_31E338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E338);
  }

  return result;
}

uint64_t sub_10C5F4(uint64_t a1)
{
  v2 = type metadata accessor for FontSpec(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10C650()
{
  result = qword_31E348;
  if (!qword_31E348)
  {
    sub_2F9C(&qword_31BA80, &unk_277F20);
    sub_10C868(&qword_31E350, type metadata accessor for ToolbarActionMenu, &protocol conformance descriptor for ToolbarActionMenu);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E348);
  }

  return result;
}

unint64_t sub_10C704()
{
  result = qword_31E368;
  if (!qword_31E368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E368);
  }

  return result;
}

unint64_t sub_10C758()
{
  result = qword_31E370;
  if (!qword_31E370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E370);
  }

  return result;
}

unint64_t sub_10C7AC()
{
  result = qword_31E378;
  if (!qword_31E378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E378);
  }

  return result;
}

uint64_t sub_10C800(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10C868(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10C934()
{
  result = qword_31E388;
  if (!qword_31E388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E388);
  }

  return result;
}

unint64_t sub_10C98C()
{
  result = qword_31E390;
  if (!qword_31E390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E390);
  }

  return result;
}

unint64_t sub_10C9E4()
{
  result = qword_31E398;
  if (!qword_31E398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E398);
  }

  return result;
}

unint64_t sub_10CA3C()
{
  result = qword_31E3A0;
  if (!qword_31E3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E3A0);
  }

  return result;
}

unint64_t sub_10CA94()
{
  result = qword_31E3A8;
  if (!qword_31E3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E3A8);
  }

  return result;
}

unint64_t sub_10CAEC()
{
  result = qword_31E3B0;
  if (!qword_31E3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E3B0);
  }

  return result;
}

unint64_t sub_10CB44()
{
  result = qword_31E3B8;
  if (!qword_31E3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E3B8);
  }

  return result;
}

unint64_t sub_10CB9C()
{
  result = qword_31E3C0;
  if (!qword_31E3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E3C0);
  }

  return result;
}

unint64_t sub_10CBF4()
{
  result = qword_31E3C8;
  if (!qword_31E3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E3C8);
  }

  return result;
}

unint64_t sub_10CC4C()
{
  result = qword_31E3D0;
  if (!qword_31E3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E3D0);
  }

  return result;
}

unint64_t sub_10CCA4()
{
  result = qword_31E3D8;
  if (!qword_31E3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E3D8);
  }

  return result;
}

unint64_t sub_10CCFC()
{
  result = qword_31E3E0;
  if (!qword_31E3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E3E0);
  }

  return result;
}

unint64_t sub_10CD54()
{
  result = qword_31E3E8;
  if (!qword_31E3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E3E8);
  }

  return result;
}

unint64_t sub_10CDAC()
{
  result = qword_31E3F0;
  if (!qword_31E3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E3F0);
  }

  return result;
}

unint64_t sub_10CE04()
{
  result = qword_31E3F8;
  if (!qword_31E3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E3F8);
  }

  return result;
}

unint64_t sub_10CE5C()
{
  result = qword_31E400;
  if (!qword_31E400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E400);
  }

  return result;
}

unint64_t sub_10CEB4()
{
  result = qword_31E408;
  if (!qword_31E408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E408);
  }

  return result;
}

unint64_t sub_10CF0C()
{
  result = qword_31E410;
  if (!qword_31E410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E410);
  }

  return result;
}

unint64_t sub_10CF60()
{
  result = qword_31E418;
  if (!qword_31E418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E418);
  }

  return result;
}

unint64_t sub_10CFB4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_3006B0;
  v6._object = a2;
  v4 = sub_264D40(v3, v6);

  if (v4 >= 9)
  {
    return 9;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10D000()
{
  result = qword_31E420;
  if (!qword_31E420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E420);
  }

  return result;
}

unint64_t sub_10D054()
{
  result = qword_31E428;
  if (!qword_31E428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E428);
  }

  return result;
}

unint64_t sub_10D0A8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_3007A8;
  v6._object = a2;
  v4 = sub_264D40(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10D0F4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_300980;
  v6._object = a2;
  v4 = sub_264D40(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10D140(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_300A18;
  v6._object = a2;
  v4 = sub_264D40(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t static GridItemMetadata.recommendation(assetInfo:title:reasonDescription:titleLines:subtitleLines:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_30CC(a1, &v18);
  v17[0] = a2;
  v17[1] = a3;
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = a6;
  v17[5] = a7;
  v16[3] = &type metadata for GridItemMetadataRecommendation;
  v16[4] = sub_10D26C();
  v16[0] = swift_allocObject();
  sub_EE594(v17, v16[0] + 16);
  *a8 = 0u;
  *(a8 + 16) = 0u;
  *(a8 + 32) = 0;

  sub_200E0(v16, a8);
  *(a8 + 40) = 0;
  return sub_10D308(v17);
}

unint64_t sub_10D26C()
{
  result = qword_31E430[0];
  if (!qword_31E430[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_31E430);
  }

  return result;
}

uint64_t sub_10D2C0()
{

  sub_3080((v0 + 64));

  return swift_deallocObject();
}

uint64_t _CodeAnyIntentModel_KeyedBy.description.getter(void *a1)
{
  swift_getExtendedExistentialTypeMetadata();
  sub_2642E0();
  swift_getWitnessTable();
  sub_264EF0();
  return 0;
}

uint64_t _CodeAnyIntentModel_KeyedBy.init(from:)@<X0>(void *a1@<X0>, uint64_t a3@<X2>, uint64_t *a6@<X8>)
{
  sub_30CC(a1, v18);
  type metadata accessor for CodeAnyIntentModel(0, a3, v10, v11);
  swift_getWitnessTable();
  v12 = sub_2642F0();
  if (v6)
  {
    return sub_3080(a1);
  }

  __chkstk_darwin(v12);
  v17[1] = v14;
  KeyPath = swift_getKeyPath();
  v19 = a6;
  v17[2] = v17;
  __chkstk_darwin(KeyPath);
  v18[0] = a3;
  swift_getExtendedExistentialTypeMetadata();
  v16 = sub_2642D0();

  result = sub_3080(a1);
  *v19 = v16;
  return result;
}

uint64_t _CodeAnyIntentModel_KeyedBy<>.init(_partiallyFrom:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_30CC(a1, v10);
  type metadata accessor for CodeAnyIntentModel(0, a2, v6, v7);
  swift_getWitnessTable();
  sub_2642A0();
  swift_getKeyPath();
  v10[0] = a2;
  swift_getExtendedExistentialTypeMetadata();
  v8 = sub_2642D0();

  result = sub_3080(a1);
  *a3 = v8;
  return result;
}

uint64_t sub_10D774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t ListItemAccessoryRecommendationControls.init(assetInfo:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;

  return sub_F7CC(a1, a2 + 16);
}

uint64_t ListItemAccessoryRecommendationControls.content(contextActionMenuView:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = sub_2EF0(&qword_316890, &qword_2725A0);
  __chkstk_darwin(v8 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v26 - v12;
  __chkstk_darwin(v14);
  v16 = &v26 - v15;
  *a3 = sub_261D30();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v17 = sub_2EF0(&qword_31E4B8, &qword_278A10);
  sub_10DA8C(v4, a1, a2, a3 + *(v17 + 44));
  v18 = sub_261690();
  v19 = *(v18 - 8);
  v20 = *(v19 + 56);
  v20(v16, 1, 1, v18);
  (*(v19 + 104))(v13, enum case for DynamicTypeSize.accessibility3(_:), v18);
  v20(v13, 0, 1, v18);
  sub_10E0D8(v13, v10);
  v21 = a3 + *(sub_2EF0(&qword_31E4C0, &qword_278A18) + 36);
  v20(v21, 1, 1, v18);
  v22 = type metadata accessor for RestrictedDynamicTypeSizeViewModifier(0);
  v23 = *(v22 + 20);
  v20((v21 + v23), 1, 1, v18);
  v24 = *(v22 + 24);
  *(v21 + v24) = swift_getKeyPath();
  sub_2EF0(&qword_318148, &unk_26AEE0);
  swift_storeEnumTagMultiPayload();
  sub_C5FBC(v16, v21);
  return sub_C5FBC(v10, v21 + v23);
}

uint64_t sub_10DA8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v58 = a2;
  v59 = a3;
  v50 = a4;
  v49 = sub_262730();
  v5 = *(v49 - 8);
  __chkstk_darwin(v49);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ListItemAccessoryMoreButtonView(0);
  __chkstk_darwin(v8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2EF0(&qword_31E500, &qword_278B50);
  __chkstk_darwin(v11 - 8);
  v57 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v55 = &v47 - v14;
  ButtonView = type metadata accessor for ListItemAccessoryWantToReadButtonView(0);
  v16 = ButtonView - 8;
  __chkstk_darwin(ButtonView);
  v56 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v47 - v19;
  sub_30CC(a1 + 16, v65);
  KeyPath = swift_getKeyPath();
  v72 = 0;
  v61[0] = KeyPath;
  v62 = 0;
  v63 = swift_getKeyPath();
  v64 = 0;
  v65[40] = 1;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v53 = v68;
  v54 = v66;
  v51 = v71;
  v52 = v70;
  v75 = 1;
  v74 = v67;
  v73 = v69;
  sub_30CC(a1 + 16, &v20[*(v16 + 36)]);
  *v20 = swift_getKeyPath();
  v20[8] = 0;
  v22 = v20;
  v23 = *(v16 + 28);
  *(v22 + v23) = swift_getKeyPath();
  sub_2EF0(&qword_317E08, &qword_26A550);
  v48 = v22;
  swift_storeEnumTagMultiPayload();
  v60[0] = 0x403E000000000000;
  sub_78E78();
  sub_2612F0();
  sub_30CC(a1 + 16, &v10[v8[10]]);
  v60[0] = 0x4034000000000000;
  v24 = enum case for Font.TextStyle.subheadline(_:);
  v25 = *(v5 + 104);
  v26 = v49;
  v25(v7, enum case for Font.TextStyle.subheadline(_:), v49);
  sub_40130();
  sub_2612E0();
  v60[0] = 0x4000000000000000;
  v25(v7, v24, v26);
  sub_2612E0();
  v27 = v8[6];
  *&v10[v27] = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v28 = v8[7];
  *&v10[v28] = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v29 = &v10[v8[8]];
  v30 = swift_getKeyPath();
  v76 = 0;
  *v29 = v30;
  v29[66] = 0;
  v31 = &v10[v8[9]];
  type metadata accessor for ProfileRestrictions(0);
  sub_10E2B8(&qword_326DC0, type metadata accessor for ProfileRestrictions, &protocol conformance descriptor for ProfileRestrictions);
  *v31 = sub_261900();
  v31[1] = v32;
  v33 = &v10[v8[11]];
  v34 = v59;
  *v33 = v58;
  v33[1] = v34;
  v10[v8[12]] = 0;
  sub_10E2B8(&qword_317F38, type metadata accessor for ListItemAccessoryMoreButtonView, &protocol conformance descriptor for ListItemAccessoryMoreButtonView);

  v35 = v55;
  sub_262C60();
  sub_10E498(v10, type metadata accessor for ListItemAccessoryMoreButtonView);
  sub_10E300(v61, v60);
  LOBYTE(v29) = v75;
  LOBYTE(v34) = v74;
  LOBYTE(v16) = v73;
  v36 = v48;
  v37 = v56;
  sub_10E35C(v48, v56);
  v38 = v35;
  v39 = v35;
  v40 = v57;
  sub_10E3C0(v38, v57);
  v41 = v50;
  sub_10E300(v60, v50);
  *(v41 + 136) = 0;
  *(v41 + 144) = v29;
  v42 = v53;
  *(v41 + 152) = v54;
  *(v41 + 160) = v34;
  *(v41 + 168) = v42;
  *(v41 + 176) = v16;
  v43 = v51;
  *(v41 + 184) = v52;
  *(v41 + 192) = v43;
  v44 = sub_2EF0(qword_31E508, &unk_278C50);
  sub_10E35C(v37, v41 + v44[16]);
  v45 = v41 + v44[20];
  *v45 = 0;
  *(v45 + 8) = 1;
  sub_10E3C0(v40, v41 + v44[24]);
  sub_10E430(v39);
  sub_10E498(v36, type metadata accessor for ListItemAccessoryWantToReadButtonView);
  sub_10E4F8(v61);
  sub_10E430(v40);
  sub_10E498(v37, type metadata accessor for ListItemAccessoryWantToReadButtonView);
  return sub_10E4F8(v60);
}

uint64_t sub_10E0D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_316890, &qword_2725A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10E184()
{
  result = qword_31E4E8;
  if (!qword_31E4E8)
  {
    sub_2F9C(&qword_31E4C0, &qword_278A18);
    sub_10E240();
    sub_10E2B8(&qword_31C258, type metadata accessor for RestrictedDynamicTypeSizeViewModifier, &unk_272608);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E4E8);
  }

  return result;
}

unint64_t sub_10E240()
{
  result = qword_31E4F0;
  if (!qword_31E4F0)
  {
    sub_2F9C(&qword_31E4F8, &qword_278B48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E4F0);
  }

  return result;
}

uint64_t sub_10E2B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10E35C(uint64_t a1, uint64_t a2)
{
  ButtonView = type metadata accessor for ListItemAccessoryWantToReadButtonView(0);
  (*(*(ButtonView - 8) + 16))(a2, a1, ButtonView);
  return a2;
}

uint64_t sub_10E3C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_31E500, &qword_278B50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10E430(uint64_t a1)
{
  v2 = sub_2EF0(&qword_31E500, &qword_278B50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10E498(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_10E550(uint64_t a1)
{
  sub_22944();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10E5F4(uint64_t a1, unsigned int a2, uint64_t a3)
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

  v8 = ((((((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 32) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
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
      return (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 16) & ~v6);
    }

    v17 = *(a1 + 8);
    if (v17 >= 0xFFFFFFFF)
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

void *sub_10E754(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v9 = ((((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 32) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
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
    if (((((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 32) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
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
        v18 = *(v5 + 56);
        v19 = (((result + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 16) & ~v8;

        return v18(v19);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *result = a2 & 0x7FFFFFFF;
        result[1] = 0;
      }

      else
      {
        result[1] = a2 - 1;
      }

      return result;
    }
  }

  if (((((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 32) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 32) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
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

uint64_t sub_10E998(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  __chkstk_darwin(TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_2636C0();
}

double sub_10EB68(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(a1);
  (*(v2 + 16))(&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = swift_allocObject();
  v11 = *(a1 + 16);
  *(v6 + 16) = v11;
  (*(v2 + 32))(v6 + v5, &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_2F9C(&qword_31E590, &qword_28DB00);
  swift_getTupleTypeMetadata2();
  sub_2636B0();
  swift_getWitnessTable();
  sub_2632E0();
  sub_261730();
  sub_2F9C(&qword_3173A0, &qword_26D0C0);
  sub_261730();
  WitnessTable = swift_getWitnessTable();
  v17 = &protocol witness table for _PaddingLayout;
  v7 = swift_getWitnessTable();
  v8 = sub_7BE48();
  v14 = v7;
  v15 = v8;
  swift_getWitnessTable();
  v12 = sub_261550();
  v13 = v9;
  sub_261560();
  swift_getWitnessTable();
  sub_1609C();

  v12 = v18;
  v13 = v19;
  sub_1609C();

  return result;
}

uint64_t sub_10EE38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a1;
  v42 = a5;
  v41 = sub_261180();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v40 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2F9C(&qword_31E590, &qword_28DB00);
  swift_getTupleTypeMetadata2();
  sub_2636B0();
  swift_getWitnessTable();
  v9 = sub_2632E0();
  v34 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v31 - v10;
  v12 = sub_261730();
  v37 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v31 - v13;
  sub_2F9C(&qword_3173A0, &qword_26D0C0);
  v32 = v12;
  v35 = sub_261730();
  v38 = *(v35 - 8);
  __chkstk_darwin(v35);
  v31 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v36 = &v31 - v17;
  sub_261E60();
  type metadata accessor for ReadingInsightsView(0, a3, a4, v18);
  v43 = a3;
  v44 = a4;
  v45 = a2;
  v46 = v33;
  sub_2632D0();
  LOBYTE(v12) = sub_262510();
  sub_262540();
  sub_262540();
  if (sub_262540() != v12)
  {
    sub_262540();
  }

  WitnessTable = swift_getWitnessTable();
  sub_262E00();
  (*(v34 + 8))(v11, v9);
  swift_getKeyPath();
  v20 = v39;
  v21 = v40;
  v22 = v41;
  (*(v39 + 104))(v40, enum case for ColorScheme.dark(_:), v41);
  v49 = WitnessTable;
  v50 = &protocol witness table for _PaddingLayout;
  v23 = v32;
  v24 = swift_getWitnessTable();
  v25 = v31;
  sub_262A90();

  (*(v20 + 8))(v21, v22);
  (*(v37 + 8))(v14, v23);
  v26 = sub_7BE48();
  v47 = v24;
  v48 = v26;
  v27 = v35;
  swift_getWitnessTable();
  v28 = v36;
  sub_1609C();
  v29 = *(v38 + 8);
  v29(v25, v27);
  sub_1609C();
  return (v29)(v28, v27);
}

uint64_t sub_10F384@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v55 = a4;
  v56 = a2;
  v62 = a5;
  v63 = *(a3 - 8);
  __chkstk_darwin(a1);
  v61 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v60 = &v51 - v9;
  v10 = type metadata accessor for TextLockup(0);
  v11 = (v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = sub_2EF0(&qword_31E590, &qword_28DB00);
  __chkstk_darwin(v57);
  v59 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v51 - v16;
  __chkstk_darwin(v18);
  v58 = &v51 - v19;
  v20 = a1[1];
  v53 = *a1;
  v21 = a1[3];
  v54 = a1[2];
  v22 = v11[15];
  v23 = sub_2625C0();
  (*(*(v23 - 8) + 56))(v13 + v22, 1, 1, v23);

  v52 = sub_261E60();
  v51 = sub_263580();
  v25 = v24;
  v26 = v11[19];
  v27 = enum case for DynamicTypeSize.accessibility2(_:);
  v28 = sub_261690();
  (*(*(v28 - 8) + 104))(v13 + v26, v27, v28);
  *v13 = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v29 = v11[7];
  *(v13 + v29) = swift_getKeyPath();
  sub_2EF0(&qword_3179C0, &qword_269D60);
  swift_storeEnumTagMultiPayload();
  v30 = v13 + v11[8];
  *v30 = swift_getKeyPath();
  v30[8] = 0;
  v31 = v13 + v11[9];
  *v31 = swift_getKeyPath();
  v31[8] = 0;
  v32 = v13 + v11[10];
  *v32 = swift_getKeyPath();
  v32[8] = 0;
  *(v13 + v11[11]) = 5;
  v33 = (v13 + v11[12]);
  *v33 = 0;
  v33[1] = 0;
  v34 = (v13 + v11[13]);
  *v34 = v53;
  v34[1] = v20;
  v34[2] = 0;
  v35 = (v13 + v11[14]);
  *v35 = v54;
  v35[1] = v21;
  v36 = v55;
  *(v13 + v11[16]) = v52;
  v37 = (v13 + v11[17]);
  *v37 = v51;
  v37[1] = v25;
  *(v13 + v11[18]) = 0;
  sub_261420();
  type metadata accessor for ReadingInsightsView(0, a3, v36, v38);
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_261830();
  sub_10FB68(v13, v17);
  v39 = v57;
  v40 = &v17[*(v57 + 36)];
  v41 = v73;
  *(v40 + 4) = v72;
  *(v40 + 5) = v41;
  *(v40 + 6) = v74;
  v42 = v69;
  *v40 = v68;
  *(v40 + 1) = v42;
  v43 = v71;
  *(v40 + 2) = v70;
  *(v40 + 3) = v43;
  v44 = v58;
  sub_10FBCC(v17, v58);
  v45 = v60;
  sub_1609C();
  v46 = v59;
  sub_10FC3C(v44, v59);
  v67[0] = v46;
  v47 = v63;
  v48 = v61;
  (*(v63 + 16))(v61, v45, a3);
  v67[1] = v48;
  v66[0] = v39;
  v66[1] = a3;
  v64 = sub_10FCAC();
  v65 = v36;
  sub_10E998(v67, 2uLL, v66);
  v49 = *(v47 + 8);
  v49(v45, a3);
  sub_10FD90(v44);
  v49(v48, a3);
  return sub_10FD90(v46);
}

uint64_t sub_10F9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for ReadingInsightsView(0, v5, *(v4 + 24), a4) - 8);
  v7 = v4 + ((*(*v6 + 80) + 32) & ~*(*v6 + 80));

  (*(*(v5 - 8) + 8))(v7 + v6[12], v5);

  return swift_deallocObject();
}

uint64_t sub_10FA98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for ReadingInsightsView(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_10EE38(a1, v9, v6, v7, a3);
}

uint64_t sub_10FB68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextLockup(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10FBCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_31E590, &qword_28DB00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10FC3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_31E590, &qword_28DB00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10FCAC()
{
  result = qword_31E598;
  if (!qword_31E598)
  {
    sub_2F9C(&qword_31E590, &qword_28DB00);
    sub_10FD38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E598);
  }

  return result;
}

unint64_t sub_10FD38()
{
  result = qword_31BF50;
  if (!qword_31BF50)
  {
    type metadata accessor for TextLockup(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BF50);
  }

  return result;
}

uint64_t sub_10FD90(uint64_t a1)
{
  v2 = sub_2EF0(&qword_31E590, &qword_28DB00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10FDF8(uint64_t *a1)
{
  sub_2F9C(&qword_31E590, &qword_28DB00);
  swift_getTupleTypeMetadata2();
  sub_2636B0();
  swift_getWitnessTable();
  sub_2632E0();
  sub_261730();
  sub_2F9C(&qword_3173A0, &qword_26D0C0);
  sub_261730();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_7BE48();
  swift_getWitnessTable();
  sub_261560();
  return swift_getWitnessTable();
}

uint64_t _CodeAnyComponentModel_OrNil.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return sub_10FF90(a1, a2);
}

uint64_t sub_10FF90(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_31E5A0, &unk_278E00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_11000C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_31E5A0, &unk_278E00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _CodeAnyComponentModel_OrNil.description.getter()
{
  sub_11000C(v0, &v3);
  if (v4)
  {
    sub_F7CC(&v3, v5);
    *&v3 = 0;
    *(&v3 + 1) = 0xE000000000000000;
    sub_2EF0(&qword_317250, &unk_2697A0);
    sub_264CC0();
    v1 = v3;
    sub_3080(v5);
  }

  else
  {
    sub_8E80(&v3, &qword_31E5A0, &unk_278E00);
    return 7104878;
  }

  return v1;
}

uint64_t _CodeAnyComponentModel_OrNil.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  sub_30CC(a1, &v6);
  sub_752E8();
  sub_264A70();
  sub_3080(a1);
  if (v2)
  {
    return sub_11021C(a2);
  }

  if (v8)
  {
    sub_30CC(v7, v9);
    sub_756E8(v7);
  }

  else
  {
    sub_8E80(v7, &qword_31E5A8, &qword_278E10);
    memset(v9, 0, sizeof(v9));
    v10 = 0;
  }

  return sub_10FF90(v9, a2);
}

uint64_t _CodeAnyComponentModel_OrNil.init(_partiallyFrom:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  sub_30CC(a1, v7);
  sub_752E8();
  sub_264A50();
  sub_3080(a1);
  if (v6)
  {
    sub_30CC(v5, v7);
    sub_756E8(v5);
  }

  else
  {
    sub_8E80(v5, &qword_31E5A8, &qword_278E10);
    memset(v7, 0, sizeof(v7));
    v8 = 0;
  }

  return sub_10FF90(v7, a2);
}

uint64_t sub_110320(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_110348(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t *a3@<X8>)
{
  v26 = a3;
  v6 = sub_2EF0(&qword_319810, &unk_26D490);
  __chkstk_darwin(v6 - 8);
  v8 = &v24[-v7];
  v9 = sub_2EF0(&qword_317280, &qword_2697E0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v24[-v14];
  v25 = *a2;
  v17 = *(v3 + 32);
  v16 = *(v3 + 40);
  v27 = a1;
  sub_6DF9C(sub_6DF7C, v16, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_8E80(v8, &qword_319810, &unk_26D490);

    if (!*(v17 + 16))
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_6E174(v8, v15);
    sub_6E174(v15, v12);
    v17 = *(v12 + 2);
    v18 = *(v9 + 48);
    v19 = sub_261690();
    (*(*(v19 - 8) + 8))(&v12[v18], v19);
    if (!*(v17 + 16))
    {
LABEL_7:

      v22 = 0x3FF0000000000000;
      goto LABEL_8;
    }
  }

  v20 = sub_D30C(v25);
  if ((v21 & 1) == 0)
  {
    goto LABEL_7;
  }

  v22 = *(*(v17 + 56) + 8 * v20);

LABEL_8:
  v23 = v26;
  *v26 = v22;
  v23[1] = 0;
  *(v23 + 16) = 0;
}

BOOL sub_1105E0(uint64_t a1, uint64_t a2)
{
  sub_2EF0(&qword_317280, &qword_2697E0);
  sub_261690();
  sub_1158C8();
  return (sub_264360() & 1) == 0;
}

uint64_t sub_110664()
{
  v0 = sub_261690();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_3159C8 != -1)
  {
    swift_once();
  }

  v4 = unk_31E830;
  v5 = qword_31E838;
  v6 = qword_3159E8;
  v17 = qword_31E828;

  v16 = v4;

  if (v6 != -1)
  {
    swift_once();
  }

  v8 = qword_31E888;
  v7 = unk_31E890;
  v9 = qword_31E898;
  (*(v1 + 104))(v3, enum case for DynamicTypeSize.accessibility3(_:), v0);
  sub_2EF0(&qword_317278, &unk_278FE0);
  v10 = (sub_2EF0(&qword_317280, &qword_2697E0) - 8);
  v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_267D30;
  v13 = (v12 + v11);
  v14 = v10[14];
  *v13 = v8;
  v13[1] = v7;
  v13[2] = v9;
  (*(v1 + 16))(v12 + v11 + v14, v3, v0);
  v18 = v12;

  sub_113884(&v18);

  result = (*(v1 + 8))(v3, v0);
  qword_31E5B0 = 12641;
  *algn_31E5B8 = 0xE200000000000000;
  qword_31E5C0 = v17;
  unk_31E5C8 = v16;
  qword_31E5D0 = v5;
  unk_31E5D8 = v18;
  return result;
}

uint64_t sub_11093C()
{
  v0 = sub_261690();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_3159D0 != -1)
  {
    swift_once();
  }

  v4 = *algn_31E848;
  v5 = qword_31E850;
  v6 = qword_3159E8;
  v17 = qword_31E840;

  v16 = v4;

  if (v6 != -1)
  {
    swift_once();
  }

  v8 = qword_31E888;
  v7 = unk_31E890;
  v9 = qword_31E898;
  (*(v1 + 104))(v3, enum case for DynamicTypeSize.accessibility3(_:), v0);
  sub_2EF0(&qword_317278, &unk_278FE0);
  v10 = (sub_2EF0(&qword_317280, &qword_2697E0) - 8);
  v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_267D30;
  v13 = (v12 + v11);
  v14 = v10[14];
  *v13 = v8;
  v13[1] = v7;
  v13[2] = v9;
  (*(v1 + 16))(v12 + v11 + v14, v3, v0);
  v18 = v12;

  sub_113884(&v18);

  result = (*(v1 + 8))(v3, v0);
  qword_31E5E0 = 12897;
  *algn_31E5E8 = 0xE200000000000000;
  qword_31E5F0 = v17;
  unk_31E5F8 = v16;
  qword_31E600 = v5;
  unk_31E608 = v18;
  return result;
}

uint64_t sub_110C14()
{
  v0 = sub_261690();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_3159D8 != -1)
  {
    swift_once();
  }

  v4 = unk_31E860;
  v5 = qword_31E868;
  v6 = qword_3159E0;
  v17 = qword_31E858;

  v16 = v4;

  if (v6 != -1)
  {
    swift_once();
  }

  v8 = qword_31E870;
  v7 = *algn_31E878;
  v9 = qword_31E880;
  (*(v1 + 104))(v3, enum case for DynamicTypeSize.accessibility3(_:), v0);
  sub_2EF0(&qword_317278, &unk_278FE0);
  v10 = (sub_2EF0(&qword_317280, &qword_2697E0) - 8);
  v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_267D30;
  v13 = (v12 + v11);
  v14 = v10[14];
  *v13 = v8;
  v13[1] = v7;
  v13[2] = v9;
  (*(v1 + 16))(v12 + v11 + v14, v3, v0);
  v18 = v12;

  sub_113884(&v18);

  result = (*(v1 + 8))(v3, v0);
  qword_31E610 = 0x6C6C616D5361;
  *algn_31E618 = 0xE600000000000000;
  qword_31E620 = v17;
  unk_31E628 = v16;
  qword_31E630 = v5;
  unk_31E638 = v18;
  return result;
}

uint64_t sub_110EF4()
{
  v0 = sub_261690();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_3159E0 != -1)
  {
    swift_once();
  }

  v4 = *algn_31E878;
  v5 = qword_31E880;
  v6 = qword_3159D0;
  v17 = qword_31E870;

  v16 = v4;

  if (v6 != -1)
  {
    swift_once();
  }

  v8 = qword_31E840;
  v7 = *algn_31E848;
  v9 = qword_31E850;
  (*(v1 + 104))(v3, enum case for DynamicTypeSize.accessibility3(_:), v0);
  sub_2EF0(&qword_317278, &unk_278FE0);
  v10 = (sub_2EF0(&qword_317280, &qword_2697E0) - 8);
  v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_267D30;
  v13 = (v12 + v11);
  v14 = v10[14];
  *v13 = v8;
  v13[1] = v7;
  v13[2] = v9;
  (*(v1 + 16))(v12 + v11 + v14, v3, v0);
  v18 = v12;

  sub_113884(&v18);

  result = (*(v1 + 8))(v3, v0);
  qword_31E640 = 98;
  *algn_31E648 = 0xE100000000000000;
  qword_31E650 = v17;
  unk_31E658 = v16;
  qword_31E660 = v5;
  unk_31E668 = v18;
  return result;
}

uint64_t sub_1111CC()
{
  v0 = sub_261690();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_3159E8 != -1)
  {
    swift_once();
  }

  v4 = unk_31E890;
  v5 = qword_31E898;
  v6 = qword_3159F0;
  v17 = qword_31E888;

  v16 = v4;

  if (v6 != -1)
  {
    swift_once();
  }

  v8 = qword_31E8A0;
  v7 = *algn_31E8A8;
  v9 = qword_31E8B0;
  (*(v1 + 104))(v3, enum case for DynamicTypeSize.accessibility3(_:), v0);
  sub_2EF0(&qword_317278, &unk_278FE0);
  v10 = (sub_2EF0(&qword_317280, &qword_2697E0) - 8);
  v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_267D30;
  v13 = (v12 + v11);
  v14 = v10[14];
  *v13 = v8;
  v13[1] = v7;
  v13[2] = v9;
  (*(v1 + 16))(v12 + v11 + v14, v3, v0);
  v18 = v12;

  sub_113884(&v18);

  result = (*(v1 + 8))(v3, v0);
  qword_31E670 = 99;
  *algn_31E678 = 0xE100000000000000;
  qword_31E680 = v17;
  unk_31E688 = v16;
  qword_31E690 = v5;
  unk_31E698 = v18;
  return result;
}

uint64_t static ShelfGridType.c.getter@<X0>(void *a1@<X8>)
{
  if (qword_315978 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_31E678;
  v2 = qword_31E680;
  v3 = unk_31E688;
  v4 = qword_31E690;
  v5 = unk_31E698;
  *a1 = qword_31E670;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
}

void sub_111550()
{
  if (qword_3159F0 != -1)
  {
    swift_once();
  }

  v0 = qword_31E8A0;
  v1 = *algn_31E8A8;
  v2 = qword_31E8B0;
  v3 = _swiftEmptyArrayStorage;

  sub_113884(&v3);
  qword_31E6A0 = 100;
  *algn_31E6A8 = 0xE100000000000000;
  qword_31E6B0 = v0;
  unk_31E6B8 = v1;
  qword_31E6C0 = v2;
  unk_31E6C8 = v3;
}

uint64_t static ShelfGridType.d.getter@<X0>(void *a1@<X8>)
{
  if (qword_315980 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_31E6A8;
  v2 = qword_31E6B0;
  v3 = unk_31E6B8;
  v4 = qword_31E6C0;
  v5 = unk_31E6C8;
  *a1 = qword_31E6A0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
}

uint64_t sub_1116D0()
{
  v0 = sub_261690();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_3159F8 != -1)
  {
    swift_once();
  }

  v4 = unk_31E8C0;
  v5 = qword_31E8C8;
  v6 = qword_3159F0;
  v17 = qword_31E8B8;

  v16 = v4;

  if (v6 != -1)
  {
    swift_once();
  }

  v8 = qword_31E8A0;
  v7 = *algn_31E8A8;
  v9 = qword_31E8B0;
  (*(v1 + 104))(v3, enum case for DynamicTypeSize.accessibility3(_:), v0);
  sub_2EF0(&qword_317278, &unk_278FE0);
  v10 = (sub_2EF0(&qword_317280, &qword_2697E0) - 8);
  v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_267D30;
  v13 = (v12 + v11);
  v14 = v10[14];
  *v13 = v8;
  v13[1] = v7;
  v13[2] = v9;
  (*(v1 + 16))(v12 + v11 + v14, v3, v0);
  v18 = v12;

  sub_113884(&v18);

  result = (*(v1 + 8))(v3, v0);
  qword_31E6D0 = 101;
  *algn_31E6D8 = 0xE100000000000000;
  qword_31E6E0 = v17;
  unk_31E6E8 = v16;
  qword_31E6F0 = v5;
  unk_31E6F8 = v18;
  return result;
}

void sub_1119A8()
{
  if (qword_315A00 != -1)
  {
    swift_once();
  }

  v0 = qword_31E8D0;
  v1 = *algn_31E8D8;
  v2 = qword_31E8E0;
  v3 = _swiftEmptyArrayStorage;

  sub_113884(&v3);
  qword_31E700 = 102;
  *algn_31E708 = 0xE100000000000000;
  qword_31E710 = v0;
  unk_31E718 = v1;
  qword_31E720 = v2;
  unk_31E728 = v3;
}

uint64_t static ShelfGridType.f.getter@<X0>(void *a1@<X8>)
{
  if (qword_315990 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_31E708;
  v2 = qword_31E710;
  v3 = unk_31E718;
  v4 = qword_31E720;
  v5 = unk_31E728;
  *a1 = qword_31E700;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
}

void sub_111B28()
{
  if (qword_315A08 != -1)
  {
    swift_once();
  }

  v0 = qword_31E8E8;
  v1 = unk_31E8F0;
  v2 = qword_31E8F8;
  v3 = _swiftEmptyArrayStorage;

  sub_113884(&v3);
  qword_31E730 = 7233894;
  *algn_31E738 = 0xE300000000000000;
  qword_31E740 = v0;
  unk_31E748 = v1;
  qword_31E750 = v2;
  unk_31E758 = v3;
}

uint64_t static ShelfGridType.fan.getter@<X0>(void *a1@<X8>)
{
  if (qword_315998 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_31E738;
  v2 = qword_31E740;
  v3 = unk_31E748;
  v4 = qword_31E750;
  v5 = unk_31E758;
  *a1 = qword_31E730;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
}

uint64_t sub_111CAC()
{
  v0 = sub_261690();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_315A10 != -1)
  {
    swift_once();
  }

  v4 = *algn_31E908;
  v5 = qword_31E910;
  v6 = qword_3159E0;
  v17 = qword_31E900;

  v16 = v4;

  if (v6 != -1)
  {
    swift_once();
  }

  v8 = qword_31E870;
  v7 = *algn_31E878;
  v9 = qword_31E880;
  (*(v1 + 104))(v3, enum case for DynamicTypeSize.accessibility3(_:), v0);
  sub_2EF0(&qword_317278, &unk_278FE0);
  v10 = (sub_2EF0(&qword_317280, &qword_2697E0) - 8);
  v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_267D30;
  v13 = (v12 + v11);
  v14 = v10[14];
  *v13 = v8;
  v13[1] = v7;
  v13[2] = v9;
  (*(v1 + 16))(v12 + v11 + v14, v3, v0);
  v18 = v12;

  sub_113884(&v18);

  result = (*(v1 + 8))(v3, v0);
  qword_31E760 = 104;
  *algn_31E768 = 0xE100000000000000;
  qword_31E770 = v17;
  unk_31E778 = v16;
  qword_31E780 = v5;
  unk_31E788 = v18;
  return result;
}

void sub_111F84()
{
  if (qword_315A18 != -1)
  {
    swift_once();
  }

  v0 = qword_31E918;
  v1 = unk_31E920;
  v2 = qword_31E928;
  v3 = _swiftEmptyArrayStorage;

  sub_113884(&v3);
  strcpy(&qword_31E790, "stackedGrids");
  algn_31E798[5] = 0;
  *&algn_31E798[6] = -5120;
  qword_31E7A0 = v0;
  unk_31E7A8 = v1;
  qword_31E7B0 = v2;
  unk_31E7B8 = v3;
}

uint64_t static ShelfGridType.stackedGrids.getter@<X0>(void *a1@<X8>)
{
  if (qword_3159A8 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_31E798;
  v2 = qword_31E7A0;
  v3 = unk_31E7A8;
  v4 = qword_31E7B0;
  v5 = unk_31E7B8;
  *a1 = qword_31E790;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
}

void sub_112118()
{
  if (qword_315A20 != -1)
  {
    swift_once();
  }

  v0 = qword_31E930;
  v1 = *algn_31E938;
  v2 = qword_31E940;
  sub_2EF0(&qword_317278, &unk_278FE0);
  v3 = sub_2EF0(&qword_317280, &qword_2697E0);
  v4 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  v19 = *(*(v3 - 8) + 72);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_269100;
  v6 = (v5 + v4);
  v18 = *(v3 + 48);
  v7 = qword_3159D0;
  v22 = v0;

  v21 = v1;

  v20 = v2;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = *algn_31E848;
  v9 = qword_31E850;
  *v6 = qword_31E840;
  *(v6 + 1) = v8;
  *(v6 + 2) = v9;
  v10 = enum case for DynamicTypeSize.accessibility1(_:);
  v11 = sub_261690();
  v12 = *(*(v11 - 8) + 104);
  v12(&v6[v18], v10, v11);
  v13 = &v6[v19];
  v14 = *(v3 + 48);
  v15 = qword_3159E8;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = unk_31E890;
  v17 = qword_31E898;
  *v13 = qword_31E888;
  *(v13 + 1) = v16;
  *(v13 + 2) = v17;
  v12(&v13[v14], enum case for DynamicTypeSize.accessibility3(_:), v11);
  v23 = v5;

  sub_113884(&v23);

  qword_31E7C0 = 0x7472616843706F74;
  *algn_31E7C8 = 0xE900000000000073;
  qword_31E7D0 = v22;
  unk_31E7D8 = v21;
  qword_31E7E0 = v20;
  unk_31E7E8 = v23;
}

uint64_t static ShelfGridType.topCharts.getter@<X0>(void *a1@<X8>)
{
  if (qword_3159B0 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_31E7C8;
  v2 = qword_31E7D0;
  v3 = unk_31E7D8;
  v4 = qword_31E7E0;
  v5 = unk_31E7E8;
  *a1 = qword_31E7C0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
}

void sub_1124C8()
{
  if (qword_315A28 != -1)
  {
    swift_once();
  }

  v0 = qword_31E948;
  v1 = unk_31E950;
  v2 = qword_31E958;
  v3 = _swiftEmptyArrayStorage;

  sub_113884(&v3);
  qword_31E7F0 = 0x6C61636974726576;
  *algn_31E7F8 = 0xE800000000000000;
  qword_31E800 = v0;
  unk_31E808 = v1;
  qword_31E810 = v2;
  unk_31E818 = v3;
}

int *sub_1125A8()
{
  result = sub_1125C8();
  off_31E820[0] = result;
  return result;
}

void *sub_1125C8()
{
  if (qword_315958 != -1)
  {
    swift_once();
  }

  v30 = qword_31E5B0;
  v31 = *algn_31E5B8;
  v32 = qword_31E5C0;
  v33 = unk_31E5C8;
  v34 = qword_31E5D0;
  v35[0] = unk_31E5D8;
  v0 = qword_315960;

  if (v0 != -1)
  {
    swift_once();
  }

  v35[1] = qword_31E5E0;
  v35[2] = *algn_31E5E8;
  v35[3] = qword_31E5F0;
  v35[4] = unk_31E5F8;
  v35[5] = qword_31E600;
  v35[6] = unk_31E608;
  v1 = qword_315968;

  if (v1 != -1)
  {
    swift_once();
  }

  v35[7] = qword_31E610;
  v35[8] = *algn_31E618;
  v35[9] = qword_31E620;
  v35[10] = unk_31E628;
  v35[11] = qword_31E630;
  v35[12] = unk_31E638;
  v2 = qword_315970;

  if (v2 != -1)
  {
    swift_once();
  }

  v35[13] = qword_31E640;
  v35[14] = *algn_31E648;
  v35[15] = qword_31E650;
  v35[16] = unk_31E658;
  v35[17] = qword_31E660;
  v35[18] = unk_31E668;
  v3 = qword_315978;

  if (v3 != -1)
  {
    swift_once();
  }

  v35[19] = qword_31E670;
  v35[20] = *algn_31E678;
  v35[21] = qword_31E680;
  v35[22] = unk_31E688;
  v35[23] = qword_31E690;
  v35[24] = unk_31E698;
  v4 = qword_315980;

  if (v4 != -1)
  {
    swift_once();
  }

  v35[25] = qword_31E6A0;
  v35[26] = *algn_31E6A8;
  v35[27] = qword_31E6B0;
  v35[28] = unk_31E6B8;
  v35[29] = qword_31E6C0;
  v35[30] = unk_31E6C8;
  v5 = qword_315988;

  if (v5 != -1)
  {
    swift_once();
  }

  v35[31] = qword_31E6D0;
  v35[32] = *algn_31E6D8;
  v35[33] = qword_31E6E0;
  v35[34] = unk_31E6E8;
  v35[35] = qword_31E6F0;
  v35[36] = unk_31E6F8;
  v6 = qword_315990;

  if (v6 != -1)
  {
    swift_once();
  }

  v35[37] = qword_31E700;
  v35[38] = *algn_31E708;
  v35[39] = qword_31E710;
  v35[40] = unk_31E718;
  v35[41] = qword_31E720;
  v35[42] = unk_31E728;
  v7 = qword_315998;

  if (v7 != -1)
  {
    swift_once();
  }

  v35[43] = qword_31E730;
  v35[44] = *algn_31E738;
  v35[45] = qword_31E740;
  v35[46] = unk_31E748;
  v35[47] = qword_31E750;
  v35[48] = unk_31E758;
  v8 = qword_3159A0;

  if (v8 != -1)
  {
    swift_once();
  }

  v35[49] = qword_31E760;
  v35[50] = *algn_31E768;
  v35[51] = qword_31E770;
  v35[52] = unk_31E778;
  v35[53] = qword_31E780;
  v35[54] = unk_31E788;
  v9 = qword_3159A8;

  if (v9 != -1)
  {
    swift_once();
  }

  v35[55] = qword_31E790;
  v35[56] = *algn_31E798;
  v35[57] = qword_31E7A0;
  v35[58] = unk_31E7A8;
  v35[59] = qword_31E7B0;
  v35[60] = unk_31E7B8;
  v10 = qword_3159B0;

  if (v10 != -1)
  {
    swift_once();
  }

  v35[61] = qword_31E7C0;
  v35[62] = *algn_31E7C8;
  v35[63] = qword_31E7D0;
  v35[64] = unk_31E7D8;
  v35[65] = qword_31E7E0;
  v35[66] = unk_31E7E8;
  v11 = qword_3159B8;

  if (v11 != -1)
  {
    swift_once();
  }

  v35[67] = qword_31E7F0;
  v35[68] = *algn_31E7F8;
  v35[69] = qword_31E800;
  v35[70] = unk_31E808;
  v35[71] = qword_31E810;
  v35[72] = unk_31E818;
  v28 = _swiftEmptyArrayStorage;

  sub_2DA04(0, 13, 0);
  v12 = 0;
  v13 = _swiftEmptyArrayStorage;
  do
  {
    v15 = *&v29[v12 * 8 + 32];
    v14 = *(&v31 + v12 * 8);
    v16 = *(&v32 + v12 * 8);
    v17 = *(&v33 + v12 * 8);
    v18 = v35[v12 - 1];
    v19 = v35[v12];
    v28 = v13;
    v21 = v13[2];
    v20 = v13[3];
    v26 = v21 + 1;
    swift_bridgeObjectRetain_n();

    if (v21 >= v20 >> 1)
    {
      sub_2DA04((v20 > 1), v26, 1);
      v13 = v28;
    }

    v13[2] = v26;
    v22 = &v13[8 * v21];
    v22[4] = v15;
    v22[5] = v14;
    v22[6] = v15;
    v22[7] = v14;
    v22[8] = v16;
    v22[9] = v17;
    v12 += 6;
    v22[10] = v18;
    v22[11] = v19;
  }

  while (v12 != 78);
  swift_arrayDestroy();
  if (v13[2])
  {
    sub_2EF0(&qword_31E960, &qword_278FD8);
    v23 = sub_264D10();
  }

  else
  {
    v23 = &_swiftEmptyDictionarySingleton;
  }

  v27 = v23;

  sub_115434(v24, 1, &v27);

  return v27;
}

uint64_t ShelfGridType.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_30CC(a1, &v23);
  v5 = sub_2644F0();
  if (!v2)
  {
    v7 = v5;
    v8 = v6;
    if (qword_3159C0 != -1)
    {
      swift_once();
    }

    v9 = off_31E820[0];
    if (*(off_31E820[0] + &dword_10) && (v10 = sub_D410(v7, v8), (v11 & 1) != 0))
    {
      v12 = v10;

      v13 = (*&stru_20.segname[v9 + 16] + 48 * v12);
      v14 = v13[1];
      v16 = v13[2];
      v15 = v13[3];
      v17 = v13[4];
      v18 = v13[5];
      *a2 = *v13;
      a2[1] = v14;
      a2[2] = v16;
      a2[3] = v15;
      a2[4] = v17;
      a2[5] = v18;
    }

    else
    {
      v19 = sub_264C10();
      swift_allocError();
      v21 = v20;
      sub_2E18(a1, a1[3]);
      sub_2650E0();
      v23 = 0;
      v24 = 0xE000000000000000;
      sub_264BC0(29);

      v23 = 0xD00000000000001BLL;
      v24 = 0x8000000000292670;
      v25._countAndFlagsBits = v7;
      v25._object = v8;
      sub_264530(v25);

      sub_264BF0();
      (*(*(v19 - 8) + 104))(v21, enum case for DecodingError.dataCorrupted(_:), v19);
      swift_willThrow();
    }
  }

  return sub_3080(a1);
}

void sub_112FB8()
{
  v0 = sub_E4B8(&off_2FF980);
  v1 = sub_E598(_swiftEmptyArrayStorage);
  v2 = &off_2FF478;
  sub_113728(&v2);
  qword_31E828 = v0;
  unk_31E830 = v2;
  qword_31E838 = v1;
}

void sub_113048()
{
  v0 = sub_E4B8(&off_2FFA80);
  v1 = sub_E598(&off_2FFB00);
  v2 = &off_2FF478;
  sub_113728(&v2);
  qword_31E840 = v0;
  *algn_31E848 = v2;
  qword_31E850 = v1;
}

void sub_1130D8()
{
  v0 = sub_E4B8(&off_2FFB30);
  v1 = sub_E598(_swiftEmptyArrayStorage);
  v2 = &off_2FF478;
  sub_113728(&v2);
  qword_31E858 = v0;
  unk_31E860 = v2;
  qword_31E868 = v1;
}

void sub_113168()
{
  v0 = sub_E4B8(&off_2FFBB0);
  v1 = sub_E598(_swiftEmptyArrayStorage);
  v2 = &off_2FF478;
  sub_113728(&v2);
  qword_31E870 = v0;
  *algn_31E878 = v2;
  qword_31E880 = v1;
}

void sub_1131F8()
{
  v0 = sub_E4B8(&off_2FFA00);
  v1 = sub_E598(_swiftEmptyArrayStorage);
  v2 = &off_2FF478;
  sub_113728(&v2);
  qword_31E888 = v0;
  unk_31E890 = v2;
  qword_31E898 = v1;
}

void sub_113288()
{
  v0 = sub_E4B8(&off_2FFC30);
  v1 = sub_E598(_swiftEmptyArrayStorage);
  v2 = &off_2FF478;
  sub_113728(&v2);
  qword_31E8A0 = v0;
  *algn_31E8A8 = v2;
  qword_31E8B0 = v1;
}

void sub_113318()
{
  v0 = sub_E4B8(&off_2FFD40);
  v1 = sub_E598(&off_2FFDD0);
  v2 = &off_2FFCB0;
  sub_113728(&v2);
  qword_31E8B8 = v0;
  unk_31E8C0 = v2;
  qword_31E8C8 = v1;
}

void sub_1133A8()
{
  v0 = sub_E4B8(&off_2FFE10);
  v1 = sub_E598(&off_2FFE90);
  v2 = &off_2FF478;
  sub_113728(&v2);
  qword_31E8D0 = v0;
  *algn_31E8D8 = v2;
  qword_31E8E0 = v1;
}

void sub_113438()
{
  v0 = sub_E4B8(&off_2FFF50);
  v1 = sub_E598(_swiftEmptyArrayStorage);
  v2 = &off_2FFF10;
  sub_113728(&v2);
  qword_31E8E8 = v0;
  unk_31E8F0 = v2;
  qword_31E8F8 = v1;
}

void sub_1134C8()
{
  v0 = sub_E4B8(&off_2FFF90);
  v1 = sub_E598(_swiftEmptyArrayStorage);
  v2 = &off_2FF478;
  sub_113728(&v2);
  qword_31E900 = v0;
  *algn_31E908 = v2;
  qword_31E910 = v1;
}

void sub_113558()
{
  v0 = sub_E4B8(&off_300080);
  v1 = sub_E598(_swiftEmptyArrayStorage);
  v2 = &off_300010;
  sub_113728(&v2);
  qword_31E918 = v0;
  unk_31E920 = v2;
  qword_31E928 = v1;
}

void sub_1135E8()
{
  v0 = sub_E4B8(&off_3000F0);
  v1 = sub_E598(_swiftEmptyArrayStorage);
  v2 = &off_2FF478;
  sub_113728(&v2);
  qword_31E930 = v0;
  *algn_31E938 = v2;
  qword_31E940 = v1;
}

void sub_113678()
{
  v0 = sub_E4B8(_swiftEmptyArrayStorage);
  v1 = sub_E598(_swiftEmptyArrayStorage);
  v2 = &off_2FF478;
  sub_113728(&v2);
  qword_31E948 = v0;
  unk_31E950 = v2;
  qword_31E958 = v1;
}

void sub_113728(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1158A0(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  v4 = sub_264EA0(v3);
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 48;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[16 * i + 40];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *(v13 - 1))
          {
            break;
          }

          v14 = *v13;
          *v13 = *(v13 - 1);
          *(v13 - 1) = v11;
          *(v13 - 16) = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 16;
        --v9;
      }
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      sub_2EF0(&qword_31E970, &unk_278FF0);
      v7 = sub_2646C0();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = (v7 + 4);
    v16[1] = v6;
    sub_113CCC(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
}

void sub_113884(uint64_t *a1)
{
  v2 = *(sub_2EF0(&qword_317280, &qword_2697E0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1158B4(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_113938(v5);
  *a1 = v3;
}

void sub_113938(unint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_264EA0(v2);
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
        sub_2EF0(&qword_317280, &qword_2697E0);
        v6 = sub_2646C0();
        v6[2] = v5;
      }

      v7 = *(sub_2EF0(&qword_317280, &qword_2697E0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_114260(v8, v9, a1, v4);
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
    sub_113A7C(0, v2, 1, a1);
  }
}

void sub_113A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v34 = sub_2EF0(&qword_317280, &qword_2697E0);
  __chkstk_darwin(v34);
  v33 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v24 - v10;
  __chkstk_darwin(v12);
  v15 = &v24 - v14;
  v26 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v17 = *(v13 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v31 = -v17;
    v32 = v16;
    v19 = a1 - a3;
    v25 = v17;
    v20 = v16 + v17 * a3;
LABEL_5:
    v29 = v18;
    v30 = a3;
    v27 = v20;
    v28 = v19;
    while (1)
    {
      sub_8198(v20, v15, &qword_317280, &qword_2697E0);
      sub_8198(v18, v11, &qword_317280, &qword_2697E0);
      v21 = sub_261670();
      sub_8E80(v11, &qword_317280, &qword_2697E0);
      sub_8E80(v15, &qword_317280, &qword_2697E0);
      if ((v21 & 1) == 0)
      {
LABEL_4:
        a3 = v30 + 1;
        v18 = v29 + v25;
        v19 = v28 - 1;
        v20 = v27 + v25;
        if (v30 + 1 == v26)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v32)
      {
        break;
      }

      v22 = v33;
      sub_6E174(v20, v33);
      swift_arrayInitWithTakeFrontToBack();
      sub_6E174(v22, v18);
      v18 += v31;
      v20 += v31;
      if (__CFADD__(v19++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_113CCC(double **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_115330(v8);
    }

    v81 = v8 + 16;
    v82 = *(v8 + 2);
    if (v82 >= 2)
    {
      while (*a3)
      {
        v83 = &v8[16 * v82];
        v84 = *v83;
        v85 = &v81[2 * v82];
        v86 = v85[1];
        sub_114B88((*a3 + 16 * *v83), (*a3 + 16 * *v85), (*a3 + 16 * v86), v5);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v86 < v84)
        {
          goto LABEL_114;
        }

        if (v82 - 2 >= *v81)
        {
          goto LABEL_115;
        }

        *v83 = v84;
        *(v83 + 1) = v86;
        v87 = *v81 - v82;
        if (*v81 < v82)
        {
          goto LABEL_116;
        }

        v82 = *v81 - 1;
        memmove(v85, v85 + 2, 16 * v87);
        *v81 = v82;
        if (v82 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v88 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7 + 8);
      v11 = 16 * v9;
      v12 = *a3 + 16 * v9;
      v13 = *(v12 + 8);
      v14 = v9 + 2;
      v15 = (v12 + 40);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 2;
        v18 = v17 >= v16;
        ++v14;
        v16 = v17;
        if ((((v10 < v13) ^ v18) & 1) == 0)
        {
          v7 = v14 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = 0;
        v20 = 16 * v7;
        v21 = v9;
        do
        {
          if (v21 != v7 + v19 - 1)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v26 + v11);
            v23 = v26 + v20;
            v24 = *v22;
            v25 = *(v22 + 1);
            *v22 = *(v23 - 16);
            *(v23 - 16) = v24;
            *(v23 - 8) = v25;
          }

          ++v21;
          --v19;
          v20 -= 16;
          v11 += 16;
        }

        while (v21 < v7 + v19);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_E8D1C(0, *(v8 + 2) + 1, 1, v8);
    }

    v5 = *(v8 + 2);
    v35 = *(v8 + 3);
    v36 = v5 + 1;
    if (v5 >= v35 >> 1)
    {
      v8 = sub_E8D1C((v35 > 1), v5 + 1, 1, v8);
    }

    *(v8 + 2) = v36;
    v37 = v8 + 32;
    v38 = &v8[16 * v5 + 32];
    *v38 = v9;
    *(v38 + 1) = v7;
    v90 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v39 = *(v8 + 4);
          v40 = *(v8 + 5);
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_57:
          if (v42)
          {
            goto LABEL_104;
          }

          v55 = &v8[16 * v36];
          v57 = *v55;
          v56 = *(v55 + 1);
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_106;
          }

          v61 = &v37[16 * v5];
          v63 = *v61;
          v62 = *(v61 + 1);
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_111;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v5 = v36 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v36 < 2)
        {
          goto LABEL_112;
        }

        v65 = &v8[16 * v36];
        v67 = *v65;
        v66 = *(v65 + 1);
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_72:
        if (v60)
        {
          goto LABEL_108;
        }

        v68 = &v37[16 * v5];
        v70 = *v68;
        v69 = *(v68 + 1);
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_110;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v36)
        {
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v76 = &v37[16 * v5 - 16];
        v77 = *v76;
        v78 = &v37[16 * v5];
        v79 = *(v78 + 1);
        sub_114B88((*a3 + 16 * *v76), (*a3 + 16 * *v78), (*a3 + 16 * v79), v90);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v79 < v77)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 2))
        {
          goto LABEL_100;
        }

        *v76 = v77;
        *(v76 + 1) = v79;
        v80 = *(v8 + 2);
        if (v5 >= v80)
        {
          goto LABEL_101;
        }

        v36 = v80 - 1;
        memmove(&v37[16 * v5], v78 + 16, 16 * (v80 - 1 - v5));
        *(v8 + 2) = v80 - 1;
        if (v80 <= 2)
        {
          goto LABEL_3;
        }
      }

      v43 = &v37[16 * v36];
      v44 = *(v43 - 8);
      v45 = *(v43 - 7);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_102;
      }

      v48 = *(v43 - 6);
      v47 = *(v43 - 5);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_103;
      }

      v50 = &v8[16 * v36];
      v52 = *v50;
      v51 = *(v50 + 1);
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_105;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_107;
      }

      if (v54 >= v46)
      {
        v72 = &v37[16 * v5];
        v74 = *v72;
        v73 = *(v72 + 1);
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_113;
        }

        if (v41 < v75)
        {
          v5 = v36 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v88;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 16 * v7;
  v29 = v9 - v7;
LABEL_30:
  v30 = *(v27 + 16 * v7 + 8);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    if (v30 >= *(v32 - 1))
    {
LABEL_29:
      ++v7;
      v28 += 16;
      --v29;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v33 = *v32;
    *v32 = *(v32 - 1);
    *(v32 - 1) = v30;
    *(v32 - 16) = v33;
    v32 -= 2;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

void sub_114260(unint64_t *a1, uint64_t a2, unint64_t *a3, int64_t a4)
{
  v104 = a1;
  v6 = sub_2EF0(&qword_317280, &qword_2697E0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v108 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v116 = &v100 - v10;
  __chkstk_darwin(v11);
  v118 = &v100 - v12;
  __chkstk_darwin(v13);
  v117 = &v100 - v14;
  v15 = a3[1];
  if (v15 < 1)
  {
    v17 = _swiftEmptyArrayStorage;
LABEL_99:
    a4 = *v104;
    if (!*v104)
    {
      goto LABEL_139;
    }

    v6 = v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = v105;
    if (isUniquelyReferenced_nonNull_native)
    {
      v95 = v6;
LABEL_102:
      v120 = v95;
      v6 = *(v95 + 2);
      if (v6 >= 2)
      {
        v96 = v7;
        while (*a3)
        {
          v97 = *&v95[16 * v6];
          v98 = v95;
          v7 = *&v95[16 * v6 + 24];
          sub_114D8C(*a3 + *(v96 + 72) * v97, *a3 + *(v96 + 72) * *&v95[16 * v6 + 16], *a3 + *(v96 + 72) * v7, a4);
          if (v29)
          {
            goto LABEL_111;
          }

          if (v7 < v97)
          {
            goto LABEL_126;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v98 = sub_115330(v98);
          }

          if (v6 - 2 >= *(v98 + 2))
          {
            goto LABEL_127;
          }

          v99 = &v98[16 * v6];
          *v99 = v97;
          *(v99 + 1) = v7;
          v120 = v98;
          sub_1152A4(v6 - 1);
          v95 = v120;
          v6 = *(v120 + 2);
          if (v6 <= 1)
          {
            goto LABEL_111;
          }
        }

        goto LABEL_137;
      }

LABEL_111:

      return;
    }

LABEL_133:
    v95 = sub_115330(v6);
    goto LABEL_102;
  }

  v16 = 0;
  v17 = _swiftEmptyArrayStorage;
  v103 = a4;
  v119 = v6;
  v106 = a3;
  v101 = v7;
  while (1)
  {
    v18 = v16 + 1;
    v109 = v17;
    if (v16 + 1 >= v15)
    {
      v28 = v16 + 1;
      v29 = v105;
    }

    else
    {
      v19 = v16;
      v6 = *a3;
      v20 = *(v7 + 72);
      v21 = *a3 + v20 * v18;
      v22 = v117;
      sub_8198(v21, v117, &qword_317280, &qword_2697E0);
      v23 = v118;
      sub_8198(v6 + v20 * v19, v118, &qword_317280, &qword_2697E0);
      LODWORD(v114) = sub_261670();
      sub_8E80(v23, &qword_317280, &qword_2697E0);
      sub_8E80(v22, &qword_317280, &qword_2697E0);
      v102 = v19;
      v24 = v19 + 2;
      v115 = v20;
      v25 = v6 + v20 * (v19 + 2);
      while (v15 != v24)
      {
        v26 = v117;
        sub_8198(v25, v117, &qword_317280, &qword_2697E0);
        v27 = v118;
        sub_8198(v21, v118, &qword_317280, &qword_2697E0);
        v6 = sub_261670() & 1;
        sub_8E80(v27, &qword_317280, &qword_2697E0);
        sub_8E80(v26, &qword_317280, &qword_2697E0);
        ++v24;
        v25 += v115;
        v21 += v115;
        if ((v114 & 1) != v6)
        {
          v28 = v24 - 1;
          goto LABEL_12;
        }
      }

      v28 = v15;
LABEL_12:
      v16 = v102;
      a4 = v103;
      v29 = v105;
      a3 = v106;
      v7 = v101;
      if ((v114 & 1) == 0)
      {
        goto LABEL_25;
      }

      if (v28 < v102)
      {
        goto LABEL_130;
      }

      if (v102 < v28)
      {
        v30 = v115 * (v28 - 1);
        v31 = v28 * v115;
        v114 = v28;
        v32 = v28;
        v33 = v102;
        v34 = v102 * v115;
        v6 = v119;
        do
        {
          if (v33 != --v32)
          {
            v35 = *v106;
            if (!*v106)
            {
              goto LABEL_136;
            }

            sub_6E174(v35 + v34, v108);
            if (v34 < v30 || v35 + v34 >= v35 + v31)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v34 != v30)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_6E174(v108, v35 + v30);
            v6 = v119;
          }

          ++v33;
          v30 -= v115;
          v31 -= v115;
          v34 += v115;
        }

        while (v33 < v32);
        v29 = v105;
        a3 = v106;
        v7 = v101;
        v16 = v102;
        a4 = v103;
        v28 = v114;
      }

      else
      {
LABEL_25:
        v6 = v119;
      }
    }

    v36 = a3[1];
    if (v28 >= v36)
    {
      goto LABEL_35;
    }

    if (__OFSUB__(v28, v16))
    {
      goto LABEL_129;
    }

    if (v28 - v16 >= a4)
    {
LABEL_35:
      v37 = v28;
      if (v28 < v16)
      {
        goto LABEL_128;
      }

      goto LABEL_36;
    }

    if (__OFADD__(v16, a4))
    {
      goto LABEL_131;
    }

    if (v16 + a4 < v36)
    {
      v36 = v16 + a4;
    }

    if (v36 < v16)
    {
LABEL_132:
      __break(1u);
      goto LABEL_133;
    }

    if (v28 == v36)
    {
      goto LABEL_35;
    }

    v110 = v36;
    v105 = v29;
    v83 = *a3;
    v84 = *(v7 + 72);
    v85 = *a3 + v84 * (v28 - 1);
    v86 = -v84;
    v102 = v16;
    v87 = v16 - v28;
    v107 = v84;
    v115 = v83;
    a4 = v83 + v28 * v84;
LABEL_89:
    v113 = v85;
    v114 = v28;
    v111 = a4;
    v112 = v87;
    v88 = v85;
LABEL_90:
    v89 = v117;
    sub_8198(a4, v117, &qword_317280, &qword_2697E0);
    v90 = v118;
    sub_8198(v88, v118, &qword_317280, &qword_2697E0);
    v91 = sub_261670();
    sub_8E80(v90, &qword_317280, &qword_2697E0);
    sub_8E80(v89, &qword_317280, &qword_2697E0);
    if (v91)
    {
      break;
    }

    v6 = v119;
LABEL_88:
    v28 = v114 + 1;
    v85 = v113 + v107;
    v87 = v112 - 1;
    a4 = v111 + v107;
    if (v114 + 1 != v110)
    {
      goto LABEL_89;
    }

    v29 = v105;
    a3 = v106;
    v7 = v101;
    v16 = v102;
    v37 = v110;
    if (v110 < v102)
    {
      goto LABEL_128;
    }

LABEL_36:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v17 = v109;
    }

    else
    {
      v17 = sub_E8D1C(0, *(v109 + 2) + 1, 1, v109);
    }

    v39 = *(v17 + 2);
    v38 = *(v17 + 3);
    a4 = v39 + 1;
    if (v39 >= v38 >> 1)
    {
      v17 = sub_E8D1C((v38 > 1), v39 + 1, 1, v17);
    }

    *(v17 + 2) = a4;
    v40 = &v17[16 * v39];
    *(v40 + 4) = v16;
    *(v40 + 5) = v37;
    v110 = v37;
    if (!*v104)
    {
      goto LABEL_138;
    }

    if (v39)
    {
      v41 = *v104;
      v6 = v119;
      while (1)
      {
        v42 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v43 = *(v17 + 4);
          v44 = *(v17 + 5);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_56:
          if (v46)
          {
            goto LABEL_117;
          }

          v59 = &v17[16 * a4];
          v61 = *v59;
          v60 = *(v59 + 1);
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_120;
          }

          v65 = &v17[16 * v42 + 32];
          v67 = *v65;
          v66 = *(v65 + 1);
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_123;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_124;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = a4 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v69 = &v17[16 * a4];
        v71 = *v69;
        v70 = *(v69 + 1);
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_70:
        if (v64)
        {
          goto LABEL_119;
        }

        v72 = &v17[16 * v42];
        v74 = *(v72 + 4);
        v73 = *(v72 + 5);
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_122;
        }

        if (v75 < v63)
        {
          goto LABEL_4;
        }

LABEL_77:
        v6 = v42 - 1;
        if (v42 - 1 >= a4)
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

        if (!*a3)
        {
          goto LABEL_135;
        }

        v80 = v17;
        a4 = *&v17[16 * v6 + 32];
        v81 = *&v17[16 * v42 + 40];
        sub_114D8C(*a3 + *(v7 + 72) * a4, *a3 + *(v7 + 72) * *&v17[16 * v42 + 32], *a3 + *(v7 + 72) * v81, v41);
        if (v29)
        {
          goto LABEL_111;
        }

        if (v81 < a4)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v80 = sub_115330(v80);
        }

        if (v6 >= *(v80 + 2))
        {
          goto LABEL_114;
        }

        v82 = &v80[16 * v6];
        *(v82 + 4) = a4;
        *(v82 + 5) = v81;
        v120 = v80;
        sub_1152A4(v42);
        v17 = v120;
        a4 = *(v120 + 2);
        v6 = v119;
        if (a4 <= 1)
        {
          goto LABEL_4;
        }
      }

      v47 = &v17[16 * a4 + 32];
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_115;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_116;
      }

      v54 = &v17[16 * a4];
      v56 = *v54;
      v55 = *(v54 + 1);
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_118;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_121;
      }

      if (v58 >= v50)
      {
        v76 = &v17[16 * v42 + 32];
        v78 = *v76;
        v77 = *(v76 + 1);
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_125;
        }

        if (v45 < v79)
        {
          v42 = a4 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

    v6 = v119;
LABEL_4:
    v105 = v29;
    v15 = a3[1];
    v16 = v110;
    a4 = v103;
    if (v110 >= v15)
    {
      goto LABEL_99;
    }
  }

  if (v115)
  {
    v92 = v116;
    sub_6E174(a4, v116);
    v6 = v119;
    swift_arrayInitWithTakeFrontToBack();
    sub_6E174(v92, v88);
    v88 += v86;
    a4 += v86;
    if (__CFADD__(v87++, 1))
    {
      goto LABEL_88;
    }

    goto LABEL_90;
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
}

uint64_t sub_114B88(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[2 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[2 * v10];
    if (v8 < 16)
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

      if (v6[1] < v4[1])
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 2;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 2;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 2;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[2 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[2 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v5 -= 2;
    do
    {
      v17 = v5 + 2;
      if (*(v14 - 1) < *(v6 - 1))
      {
        v19 = v6 - 2;
        if (v17 != v6)
        {
          *v5 = *v19;
        }

        if (v14 <= v4 || (v6 -= 2, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v18 = v14 - 2;
      if (v17 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 2;
      v14 -= 2;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v20 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v20 & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v6, v4, 16 * (v20 >> 4));
  }

  return 1;
}

void sub_114D8C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v44 = a3;
  v43 = sub_2EF0(&qword_317280, &qword_2697E0);
  __chkstk_darwin(v43);
  v42 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v36 - v9;
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_62;
  }

  v13 = v44 - a2;
  if (v44 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_63;
  }

  v14 = (a2 - a1) / v12;
  v47 = a1;
  v46 = a4;
  if (v14 >= v13 / v12)
  {
    v16 = v13 / v12 * v12;
    if (a4 < a2 || a2 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v16 < 1)
    {
      v24 = a4 + v16;
    }

    else
    {
      v22 = -v12;
      v23 = a4 + v16;
      v24 = a4 + v16;
      v39 = a4;
      v40 = -v12;
      v38 = a1;
      do
      {
        v36 = v24;
        v25 = a2;
        v26 = a2 + v22;
        v41 = v25;
        while (1)
        {
          v28 = v44;
          if (v25 <= a1)
          {
            v47 = v25;
            v45 = v36;
            goto LABEL_60;
          }

          v37 = v24;
          v44 += v22;
          v29 = v23 + v22;
          sub_8198(v29, v10, &qword_317280, &qword_2697E0);
          v30 = v26;
          v31 = v26;
          v32 = v10;
          v33 = v42;
          sub_8198(v31, v42, &qword_317280, &qword_2697E0);
          v34 = sub_261670();
          v35 = v33;
          v10 = v32;
          sub_8E80(v35, &qword_317280, &qword_2697E0);
          sub_8E80(v32, &qword_317280, &qword_2697E0);
          if (v34)
          {
            break;
          }

          v24 = v29;
          if (v28 < v23 || v44 >= v23)
          {
            swift_arrayInitWithTakeFrontToBack();
            v26 = v30;
            a1 = v38;
          }

          else
          {
            v26 = v30;
            a1 = v38;
            if (v28 != v23)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v23 = v29;
          v27 = v29 > v39;
          v22 = v40;
          v25 = v41;
          if (!v27)
          {
            a2 = v41;
            goto LABEL_59;
          }
        }

        if (v28 < v41 || v44 >= v41)
        {
          a2 = v30;
          swift_arrayInitWithTakeFrontToBack();
          v24 = v37;
          a1 = v38;
          v22 = v40;
        }

        else
        {
          v24 = v37;
          a1 = v38;
          a2 = v30;
          v22 = v40;
          if (v28 != v41)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v23 > v39);
    }

LABEL_59:
    v47 = a2;
    v45 = v24;
  }

  else
  {
    v15 = v14 * v12;
    if (a4 < a1 || a1 + v15 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41 = a4 + v15;
    v45 = a4 + v15;
    if (v15 >= 1 && a2 < v44)
    {
      v40 = v12;
      do
      {
        sub_8198(a2, v10, &qword_317280, &qword_2697E0);
        v18 = v42;
        sub_8198(a4, v42, &qword_317280, &qword_2697E0);
        v19 = sub_261670();
        sub_8E80(v18, &qword_317280, &qword_2697E0);
        sub_8E80(v10, &qword_317280, &qword_2697E0);
        if (v19)
        {
          v20 = a2 + v12;
          if (a1 < a2 || a1 >= v20)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v20;
        }

        else
        {
          v21 = a4 + v12;
          if (a1 < a4 || a1 >= v21)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v46 = v21;
          a4 = v21;
        }

        v12 = v40;
        a1 += v40;
        v47 = a1;
      }

      while (a4 < v41 && a2 < v44);
    }
  }

LABEL_60:
  sub_115344(&v47, &v46, &v45);
}

uint64_t sub_1152A4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_115330(v3);
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

uint64_t sub_115344(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_2EF0(&qword_317280, &qword_2697E0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_115434(uint64_t a1, char a2, void *a3)
{
  v44 = *(a1 + 16);
  if (!v44)
  {
    goto LABEL_24;
  }

  v5 = *(a1 + 80);
  v57 = *(a1 + 64);
  v58 = v5;
  v6 = *(a1 + 48);
  v55 = *(a1 + 32);
  v56 = v6;
  v7 = *(&v58 + 1);
  v45 = v58;
  v47 = *(&v57 + 1);
  v8 = v6;
  v49 = v57;
  v51 = *(&v6 + 1);
  v9 = v55;
  sub_8198(&v55, v54, &qword_317270, &unk_2697D0);
  if (!*(&v9 + 1))
  {
    goto LABEL_24;
  }

  v55 = v9;
  v10 = *a3;
  v12 = sub_D410(v9, *(&v9 + 1));
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v16 = v11;
  if (v10[3] >= v15)
  {
    if (a2)
    {
      if ((v11 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_14F1A0();
      if ((v16 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

  sub_14DF7C(v15, a2 & 1);
  v17 = sub_D410(v9, *(&v9 + 1));
  if ((v16 & 1) == (v18 & 1))
  {
    v12 = v17;
    if ((v16 & 1) == 0)
    {
LABEL_13:
      v20 = *a3;
      *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
      *(v20[6] + 16 * v12) = v9;
      v21 = (v20[7] + 48 * v12);
      *v21 = v8;
      v21[1] = v51;
      v21[2] = v49;
      v21[3] = v47;
      v21[4] = v45;
      v21[5] = v7;
      v22 = v20[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v20[2] = v24;
      if (v44 != 1)
      {
        v25 = (a1 + 96);
        v26 = 1;
        while (v26 < *(a1 + 16))
        {
          v27 = v25[3];
          v57 = v25[2];
          v58 = v27;
          v28 = v25[1];
          v55 = *v25;
          v56 = v28;
          v29 = *(&v58 + 1);
          v46 = v58;
          v48 = *(&v57 + 1);
          v30 = v28;
          v50 = v57;
          v52 = *(&v28 + 1);
          v31 = v55;
          sub_8198(&v55, v54, &qword_317270, &unk_2697D0);
          if (!*(&v31 + 1))
          {
            goto LABEL_24;
          }

          v55 = v31;
          v32 = *a3;
          v33 = sub_D410(v31, *(&v31 + 1));
          v35 = v32[2];
          v36 = (v34 & 1) == 0;
          v23 = __OFADD__(v35, v36);
          v37 = v35 + v36;
          if (v23)
          {
            goto LABEL_26;
          }

          v38 = v34;
          if (v32[3] < v37)
          {
            sub_14DF7C(v37, 1);
            v33 = sub_D410(v31, *(&v31 + 1));
            if ((v38 & 1) != (v39 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v38)
          {
            goto LABEL_10;
          }

          v40 = *a3;
          *(*a3 + 8 * (v33 >> 6) + 64) |= 1 << v33;
          *(v40[6] + 16 * v33) = v31;
          v41 = (v40[7] + 48 * v33);
          *v41 = v30;
          v41[1] = v52;
          v41[2] = v50;
          v41[3] = v48;
          v41[4] = v46;
          v41[5] = v29;
          v42 = v40[2];
          v23 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v23)
          {
            goto LABEL_27;
          }

          ++v26;
          v40[2] = v43;
          v25 += 4;
          if (v44 == v26)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
        goto LABEL_26;
      }

LABEL_24:

      return;
    }

LABEL_10:
    v19 = swift_allocError();
    swift_willThrow();
    v59 = v19;
    swift_errorRetain();
    sub_2EF0(&qword_31E968, &qword_27B490);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_264FB0();
  __break(1u);
LABEL_29:
  v54[0] = 0;
  v54[1] = 0xE000000000000000;
  sub_264BC0(30);
  v60._object = 0x80000000002926D0;
  v60._countAndFlagsBits = 0xD00000000000001BLL;
  sub_264530(v60);
  sub_264CC0();
  v61._countAndFlagsBits = 39;
  v61._object = 0xE100000000000000;
  sub_264530(v61);
  sub_264CD0();
  __break(1u);
}

unint64_t sub_1158C8()
{
  result = qword_317538;
  if (!qword_317538)
  {
    sub_261690();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317538);
  }

  return result;
}

uint64_t QuickActionBuyButtonView.init(assetInfo:stretchWidth:isEnabled:localizerForAnalytics:)@<X0>(void *a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v37 = a4;
  v40 = a2;
  v41 = a3;
  v39 = a1;
  v42 = a5;
  v7 = sub_262730();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v35[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for ButtonViewModel(0);
  v12 = (v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v35[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = (type metadata accessor for QuickActionBuyButtonViewModel(0) - 8);
  __chkstk_darwin(v15);
  v17 = &v35[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_30CC(a1, v46);
  sub_8198(a4, v44, &qword_31D240, &qword_279000);
  v18 = &v17[v15[9]];
  *v18 = 0;
  v18[1] = 0;
  v19 = &v17[v15[10]];
  KeyPath = swift_getKeyPath();
  v47 = 0;
  *v19 = KeyPath;
  v19[66] = 0;
  v21 = v15[11];
  *&v17[v21] = swift_getKeyPath();
  sub_2EF0(&qword_317E08, &qword_26A550);
  swift_storeEnumTagMultiPayload();
  v22 = v15[12];
  v38 = v15;
  v23 = &v17[v22];
  type metadata accessor for ProfileRestrictions(0);
  sub_11B8B0(&qword_326DC0, type metadata accessor for ProfileRestrictions, &protocol conformance descriptor for ProfileRestrictions);
  *v23 = sub_261900();
  v23[1] = v24;
  sub_30CC(v46, &v17[v15[7]]);
  v36 = _UISolariumEnabled() ^ 1;
  sub_260BC0();
  type metadata accessor for ButtonViewModel.Content(0);
  swift_storeEnumTagMultiPayload();
  v25 = &v14[v12[15]];
  type metadata accessor for ButtonViewModel.ActionKind(0);
  *v25 = 0u;
  *(v25 + 1) = 0u;
  *(v25 + 4) = 0;
  swift_storeEnumTagMultiPayload();
  v43 = 0x403C000000000000;
  v26 = enum case for Font.TextStyle.subheadline(_:);
  v27 = *(v8 + 104);
  v27(v10, enum case for Font.TextStyle.subheadline(_:), v7);
  sub_40130();
  sub_2612E0();
  v43 = 0x4008000000000000;
  v27(v10, v26, v7);
  sub_2612E0();
  sub_8E80(v37, &qword_31D240, &qword_279000);
  sub_3080(v39);
  sub_3080(v46);
  v28 = v12[8];
  *&v14[v28] = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v29 = v12[16];
  v30 = sub_260BD0();
  (*(*(v30 - 8) + 56))(&v14[v29], 1, 1, v30);
  v14[v12[9]] = v40;
  v14[v12[10]] = v36;
  v14[v12[11]] = 0;
  v31 = &v14[v12[12]];
  *v31 = 2;
  v31[1] = 0;
  v31[2] = 0;
  v31[3] = 0;
  v14[v12[14]] = v41;
  sub_1161F4(v14, v17, type metadata accessor for ButtonViewModel);
  v32 = &v17[v38[8]];
  v33 = v44[1];
  *v32 = v44[0];
  *(v32 + 1) = v33;
  *(v32 + 4) = v45;
  return sub_1161F4(v17, v42, type metadata accessor for QuickActionBuyButtonViewModel);
}

__n128 QuickActionBuyButtonViewModel.init(assetInfo:stretchWidth:isEnabled:localizerForAnalytics:)@<Q0>(void *a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v44 = a4;
  v42 = a2;
  v43 = a3;
  v38 = a1;
  v7 = sub_262730();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ButtonViewModel(0);
  v12 = (v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for QuickActionBuyButtonViewModel(0);
  v16 = a5;
  v17 = (a5 + *(v15 + 28));
  *v17 = 0;
  v17[1] = 0;
  v18 = v15;
  v19 = a5 + *(v15 + 32);
  v20 = v16;
  KeyPath = swift_getKeyPath();
  v46 = 0;
  *v19 = KeyPath;
  *(v19 + 66) = 0;
  v22 = v18[9];
  *(v20 + v22) = swift_getKeyPath();
  sub_2EF0(&qword_317E08, &qword_26A550);
  swift_storeEnumTagMultiPayload();
  v23 = v18[10];
  v40 = v20;
  v41 = v18;
  v24 = (v20 + v23);
  type metadata accessor for ProfileRestrictions(0);
  sub_11B8B0(&qword_326DC0, type metadata accessor for ProfileRestrictions, &protocol conformance descriptor for ProfileRestrictions);
  *v24 = sub_261900();
  v24[1] = v25;
  sub_30CC(a1, v20 + v18[5]);
  v39 = _UISolariumEnabled() ^ 1;
  sub_260BC0();
  type metadata accessor for ButtonViewModel.Content(0);
  swift_storeEnumTagMultiPayload();
  v26 = &v14[v12[15]];
  type metadata accessor for ButtonViewModel.ActionKind(0);
  *v26 = 0u;
  *(v26 + 1) = 0u;
  *(v26 + 4) = 0;
  swift_storeEnumTagMultiPayload();
  v45 = 0x403C000000000000;
  v27 = enum case for Font.TextStyle.subheadline(_:);
  v28 = *(v8 + 104);
  v28(v10, enum case for Font.TextStyle.subheadline(_:), v7);
  sub_40130();
  sub_2612E0();
  v45 = 0x4008000000000000;
  v28(v10, v27, v7);
  sub_2612E0();
  sub_3080(v38);
  v29 = v12[8];
  *&v14[v29] = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v30 = v12[16];
  v31 = sub_260BD0();
  (*(*(v31 - 8) + 56))(&v14[v30], 1, 1, v31);
  v14[v12[9]] = v42;
  v14[v12[10]] = v39;
  v14[v12[11]] = 0;
  v32 = &v14[v12[12]];
  *v32 = 2;
  *(v32 + 1) = 0;
  *(v32 + 2) = 0;
  *(v32 + 3) = 0;
  v14[v12[14]] = v43;
  v33 = v40;
  sub_1161F4(v14, v40, type metadata accessor for ButtonViewModel);
  v34 = v33 + v41[6];
  v35 = v44;
  result = *v44;
  v37 = *(v44 + 16);
  *v34 = *v44;
  *(v34 + 16) = v37;
  *(v34 + 32) = *(v35 + 32);
  return result;
}

uint64_t sub_1161F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t QuickActionBuyButtonView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v72 = a1;
  v2 = sub_263F70();
  v73 = *(v2 - 8);
  v74 = v2;
  __chkstk_darwin(v2);
  v71 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_263DD0();
  __chkstk_darwin(v4 - 8);
  v65 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2601E0();
  v62 = *(v6 - 8);
  v63 = v6;
  __chkstk_darwin(v6);
  v61 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_263E10();
  __chkstk_darwin(v8 - 8);
  v64 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_261C90();
  v67 = *(v10 - 8);
  v68 = v10;
  __chkstk_darwin(v10);
  v66 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2EF0(&qword_315D48, &qword_266E40);
  __chkstk_darwin(v12 - 8);
  v70 = &v58 - v13;
  v14 = sub_262730();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_2EF0(&qword_31E978, &qword_279088);
  __chkstk_darwin(v75);
  v19 = &v58 - v18;
  v20 = type metadata accessor for ButtonView(0);
  sub_11BFAC(v1, &v19[*(v20 + 28)], type metadata accessor for ButtonViewModel);
  *&v87 = 0x4020000000000000;
  v21 = enum case for Font.TextStyle.subheadline(_:);
  v22 = *(v15 + 104);
  v22(v17, enum case for Font.TextStyle.subheadline(_:), v14);
  sub_40130();
  sub_2612E0();
  *&v87 = 0x3FF8000000000000;
  v22(v17, v21, v14);
  v23 = v69;
  sub_2612E0();
  v24 = *(v20 + 24);
  v25 = v75;
  *&v19[v24] = swift_getKeyPath();
  sub_2EF0(&qword_319B00, &unk_26EA40);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  v27 = &v19[*(v25 + 36)];
  *v27 = KeyPath;
  v27[8] = 1;
  v28 = type metadata accessor for QuickActionBuyButtonViewModel(0);
  v29 = v23 + v28[8];
  *&v100[15] = *(v29 + 63);
  v30 = *(v29 + 48);
  v99[2] = *(v29 + 32);
  *v100 = v30;
  v31 = *(v29 + 16);
  v99[0] = *v29;
  v99[1] = v31;
  if (v100[18])
  {
    v32 = *(v29 + 48);
    v84 = *(v29 + 32);
    v85 = v32;
    v86 = *(v29 + 64);
    v33 = *(v29 + 16);
    v82 = *v29;
    v83 = v33;
    v89 = v84;
    *v90 = v32;
    *&v90[15] = *(v29 + 63);
    v87 = v82;
    v88 = v33;
    sub_8198(&v87, &v77, &qword_317F48, &qword_26A9A0);
  }

  else
  {

    sub_264900();
    v34 = sub_2624B0();
    sub_260D10();

    v35 = v66;
    sub_261C80();
    swift_getAtKeyPath();
    sub_8E80(v99, &qword_317F40, &qword_26E9D0);
    (*(v67 + 8))(v35, v68);
  }

  v36 = v28[5];
  v81 = v86;
  v79 = v84;
  v80 = v85;
  v77 = v82;
  v78 = v83;
  v37 = v70;
  if (*(&v82 + 1))
  {
    if (v78 == 5)
    {
      v68 = v19;
      v38 = (v23 + v36);
      v39 = (v23 + v28[7]);
      v41 = *v39;
      v40 = v39[1];
      v60 = v41;
      v66 = v40;
      v42 = 0xE90000000000006BLL;
      v43 = 0x6F6F626F69647561;
      sub_2E18(v38, v38[3]);
      v44 = sub_2609B0();
      v58 = v45;
      v59 = v44;
      sub_2E18(v38, v38[3]);
      v69 = sub_2606E0();
      v67 = v46;
      sub_2E18(v38, v38[3]);
      sub_260860();
      v47 = sub_2609D0();
      v49 = v48;
      if (v47 == sub_2609D0() && v49 == v50)
      {
      }

      else
      {
        v52 = sub_264F10();

        if ((v52 & 1) == 0)
        {
          v43 = 0x6B6F6F6265;
          v42 = 0xE500000000000000;
        }
      }

      *&v87 = v59;
      *(&v87 + 1) = v58;
      v53 = v67;
      *&v88 = v69;
      *(&v88 + 1) = v67;
      *&v89 = 0x64695F737469;
      *(&v89 + 1) = 0xE600000000000000;
      *v90 = xmmword_273510;
      *&v90[16] = 0xE700000000000000;
      v91 = v43;
      v92 = v42;
      v93 = v60;
      v94 = v66;
      v97 = 0u;
      v95 = 0u;
      v96 = 0u;
      v98 = 0u;

      sub_8198(&v98, &v76, &qword_31C778, &qword_273528);
      if (!v53)
      {
        v54 = v61;
        sub_2601D0();
        sub_2601C0();
        (*(v62 + 8))(v54, v63);
      }

      v19 = v68;

      sub_263E00();
      sub_169820();
      sub_263DC0();
      sub_D0B04(_swiftEmptyArrayStorage);
      sub_D0B04(_swiftEmptyArrayStorage);
      sub_263E20();
      sub_8E80(&v77, &qword_317F48, &qword_26A9A0);
      sub_D0C34(&v87);
      v51 = 0;
    }

    else
    {
      sub_8E80(&v77, &qword_317F48, &qword_26A9A0);
      v51 = 1;
    }
  }

  else
  {
    v51 = 1;
  }

  v55 = sub_263E50();
  (*(*(v55 - 8) + 56))(v37, v51, 1, v55);
  v56 = v71;
  sub_263F60();
  sub_11B668();
  sub_262910();
  (*(v73 + 8))(v56, v74);
  sub_8E80(v37, &qword_315D48, &qword_266E40);
  return sub_8E80(v19, &qword_31E978, &qword_279088);
}

uint64_t sub_116BC4@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_317E08, &qword_26A550);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for QuickActionBuyButtonViewModel(0);
  sub_8198(v1 + *(v10 + 36), v9, &qword_317E08, &qword_26A550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_22148(v9, a1, &qword_31A0C8, &qword_26E2C0);
  }

  sub_264900();
  v12 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

Swift::Void __swiftcall QuickActionBuyButtonViewModel.update()()
{
  v1 = v0;
  v169 = type metadata accessor for ButtonViewModel.ActionKind(0);
  __chkstk_darwin(v169);
  v3 = &v139[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_260BD0();
  v5 = *(v4 - 8);
  v158 = v4;
  v159 = v5;
  __chkstk_darwin(v4);
  v149 = &v139[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v147 = &v139[-v8];
  v9 = sub_260060();
  v167 = *(v9 - 8);
  __chkstk_darwin(v9);
  v143 = &v139[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_2EF0(&qword_316208, &qword_268BD0);
  __chkstk_darwin(v11 - 8);
  v148 = &v139[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v150 = &v139[-v14];
  v154 = type metadata accessor for AssetAction.Kind(0);
  __chkstk_darwin(v154);
  v155 = &v139[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_2EF0(&qword_319AC8, &qword_287AB0);
  __chkstk_darwin(v16 - 8);
  v164 = &v139[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v163 = &v139[-v19];
  v168 = type metadata accessor for ButtonViewModel.Content(0);
  __chkstk_darwin(v168);
  v146 = &v139[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v144 = &v139[-v22];
  __chkstk_darwin(v23);
  v162 = &v139[-v24];
  v161 = sub_2607D0();
  v25 = *(v161 - 8);
  __chkstk_darwin(v161);
  v160 = &v139[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v27);
  v29 = &v139[-v28];
  v30 = sub_2EF0(&qword_322C70, &qword_272AD0);
  __chkstk_darwin(v30 - 8);
  v145 = &v139[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v32);
  v157 = &v139[-v33];
  __chkstk_darwin(v34);
  v171 = &v139[-v35];
  v36 = sub_261C90();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v139[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v40 = type metadata accessor for QuickActionBuyButtonViewModel(0);
  v41 = v1 + *(v40 + 32);
  *&v186[15] = *(v41 + 63);
  v42 = *(v41 + 48);
  v185[2] = *(v41 + 32);
  *v186 = v42;
  v43 = *(v41 + 16);
  v185[0] = *v41;
  v185[1] = v43;
  v170 = v40;
  v165 = v3;
  v166 = v9;
  if (v186[18])
  {
    v44 = v40;
    v45 = *(v41 + 48);
    *v184 = *(v41 + 32);
    *&v184[16] = v45;
    *&v184[32] = *(v41 + 64);
    v46 = *(v41 + 16);
    v182 = *v41;
    v183 = v46;
    v174[0] = *v184;
    v174[1] = v45;
    *(&v174[1] + 15) = *(v41 + 63);
    v172 = v182;
    v173 = v46;
    sub_8198(&v172, v179, &qword_317F48, &qword_26A9A0);
  }

  else
  {

    sub_264900();
    v47 = sub_2624B0();
    v44 = v170;
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_8E80(v185, &qword_317F40, &qword_26E9D0);
    (*(v37 + 8))(v39, v36);
  }

  v179[0] = v182;
  v179[1] = v183;
  v179[2] = *v184;
  v179[3] = *&v184[16];
  v180 = *&v184[32];
  v181 = v184[0];
  if (!*(&v182 + 1))
  {
    v52 = type metadata accessor for ButtonViewModel(0);
    sub_11B788(v1 + *(v52 + 44), type metadata accessor for ButtonViewModel.Content);
    swift_storeEnumTagMultiPayload();
    v53 = v1 + *(v52 + 52);
    sub_11B788(v53, type metadata accessor for ButtonViewModel.ActionKind);
    *v53 = 0u;
    *(v53 + 16) = 0u;
    *(v53 + 32) = 0;
    swift_storeEnumTagMultiPayload();
    return;
  }

  v172 = v182;
  v151 = v183;
  LOBYTE(v173) = v183;
  *(&v173 + 1) = *(&v183 + 1);
  DWORD1(v173) = DWORD1(v183);
  v141 = *(&v183 + 1);
  *(&v173 + 1) = *(&v183 + 1);
  LOBYTE(v174[0]) = v184[0];
  *(v174 + 1) = *&v184[1];
  *(&v174[1] + 1) = *&v184[17];
  BYTE1(v174[2]) = v184[33];
  v48 = (v1 + *(v44 + 20));
  sub_2E18(v48, v48[3]);
  if (sub_260870())
  {
    v49 = *(v1 + *(v44 + 40));
    if (!v49)
    {
      type metadata accessor for ProfileRestrictions(0);
      sub_11B8B0(&qword_326DC0, type metadata accessor for ProfileRestrictions, &protocol conformance descriptor for ProfileRestrictions);
      sub_2618F0();
      __break(1u);
      return;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v50 = v49;
    sub_260FF0();

    v51 = v175[0];
  }

  else
  {
    v51 = 1;
  }

  v153 = type metadata accessor for ButtonViewModel(0);
  v54 = v1;
  *(v1 + *(v153 + 48)) = v51;
  sub_2E18(v48, v48[3]);
  v142 = sub_2606E0();
  v152 = v55;
  sub_2E18(v48, v48[3]);
  sub_260860();
  v56 = sub_2609D0();
  v58 = v57;
  if (v56 == sub_2609D0() && v58 == v59)
  {
    v140 = 1;
  }

  else
  {
    v140 = sub_264F10();
  }

  v60 = v166;

  sub_2E18(v48, v48[3]);
  v61 = sub_260700();
  sub_2E18(v48, v48[3]);
  v62 = sub_260700();
  if (v62)
  {
    v63 = v62;
    v64 = [v62 bookSampleDownloadURL];

    if (v64)
    {
      v65 = v157;
      sub_260040();

      v66 = 0;
    }

    else
    {
      v66 = 1;
      v65 = v157;
    }

    (*(v167 + 56))(v65, v66, 1, v60);
    sub_22148(v65, v171, &qword_322C70, &qword_272AD0);
  }

  else
  {
    (*(v167 + 56))(v171, 1, 1, v60);
  }

  sub_2E18(v48, v48[3]);
  sub_260940();
  v68 = v160;
  v67 = v161;
  (*(v25 + 104))(v160, enum case for SeriesOrdering.orderedSeries(_:), v161);
  v69 = sub_2607C0();
  v70 = *(v25 + 8);
  v70(v68, v67);
  v70(v29, v67);
  v156 = v61;
  if (v151 != 3)
  {
    v80 = v162;
    v78 = v54;
    if ((v181 & 1) == 0)
    {
      *v162 = v141;
      swift_storeEnumTagMultiPayload();
      v88 = v155;
      *v155 = v61;
      swift_storeEnumTagMultiPayload();
      v89 = v150;
      (*(v159 + 56))(v150, 1, 1, v158);
      v90 = v61;
      v73 = v163;
      sub_118738(v88, v89, &v172, v54, v142, v152, v163);

      sub_8E80(v89, &qword_316208, &qword_268BD0);
      sub_11B788(v88, type metadata accessor for AssetAction.Kind);
      sub_8E80(v179, &qword_317F48, &qword_26A9A0);
      v91 = type metadata accessor for AssetAction(0);
      (*(*(v91 - 8) + 56))(v73, 0, 1, v91);
      v74 = 0;
      v75 = 0;
      v76 = v164;
      v77 = v153;
      v79 = v80;
      goto LABEL_62;
    }

    v81 = v162;
    if (v151 <= 1)
    {
      v82 = v140;
      v76 = v164;
      if ((v140 & (v141 > 2)) == 1)
      {
        sub_2EF0(&qword_319AF8, &qword_279110);
        v79 = v80;
        *v80 = 0xD000000000000015;
        v80[1] = 0x80000000002926F0;
        sub_2E18(v48, v48[3]);
        sub_2609A0();
        sub_260BC0();

        swift_storeEnumTagMultiPayload();
        v83 = v155;
        v84 = v156;
        *v155 = 0;
        *(v83 + 1) = 0;
        *(v83 + 16) = 1;
        *(v83 + 3) = v84;
        swift_storeEnumTagMultiPayload();
        v85 = v150;
        (*(v159 + 56))(v150, 1, 1, v158);
        v86 = v84;
        v73 = v163;
        sub_118738(v83, v85, &v172, v78, v142, v152, v163);

        sub_8E80(v85, &qword_316208, &qword_268BD0);
        sub_11B788(v83, type metadata accessor for AssetAction.Kind);
        sub_8E80(v179, &qword_317F48, &qword_26A9A0);
        v87 = type metadata accessor for AssetAction(0);
        (*(*(v87 - 8) + 56))(v73, 0, 1, v87);
      }

      else
      {
        sub_2EF0(&qword_31E988, &qword_279108);
        v175[2] = v174[0];
        v175[3] = v174[1];
        v176 = v174[2];
        v175[0] = v172;
        v175[1] = v173;
        v79 = v80;
        sub_119A1C(v82 & 1, v175);
        sub_2E18(v48, v48[3]);
        sub_2609A0();
        sub_260BC0();

        swift_storeEnumTagMultiPayload();
        v113 = v155;
        swift_storeEnumTagMultiPayload();
        v114 = v150;
        (*(v159 + 56))(v150, 1, 1, v158);
        v73 = v163;
        sub_118738(v113, v114, &v172, v78, v142, v152, v163);

        sub_8E80(v114, &qword_316208, &qword_268BD0);
        sub_11B788(v113, type metadata accessor for AssetAction.Kind);
        v115 = type metadata accessor for AssetAction(0);
        (*(*(v115 - 8) + 56))(v73, 0, 1, v115);
        sub_8E80(v179, &qword_317F48, &qword_26A9A0);
      }

      v74 = 0;
      v75 = 0;
      v77 = v153;
      goto LABEL_62;
    }

    sub_2E18(v48, v48[3]);
    v92 = sub_2609C0();
    v93 = v140;
    if (v92 == 2 || (v92 & 1) == 0)
    {
      v96 = v149;
      sub_11A54C(v140 & 1, v48, v149);
      if ((v69 & 1) == 0 || (sub_2E18(v48, v48[3]), v96 = v149, sub_260930(), (v97 & 0x100000000) != 0))
      {
        v161 = *(sub_2EF0(&qword_31E988, &qword_279108) + 48);
        v101 = *(v159 + 16);
        v100 = v146;
        v104 = v96;
        v103 = v158;
        v101(v146, v104, v158);
        sub_2E18(v48, v48[3]);
        sub_2609A0();
        sub_260BC0();
      }

      else
      {
        if (v93)
        {
          v98 = 0x6E6F687064616568;
        }

        else
        {
          v98 = 0x6761702E6B6F6F62;
        }

        v99 = *(sub_2EF0(&qword_319AF8, &qword_279110) + 48);
        v100 = v146;
        *v146 = v98;
        *(v100 + 8) = 0xEA00000000007365;
        v101 = *(v159 + 16);
        v102 = v96;
        v103 = v158;
        v101((v100 + v99), v102, v158);
      }

      swift_storeEnumTagMultiPayload();
      v79 = v81;
      sub_1161F4(v100, v81, type metadata accessor for ButtonViewModel.Content);
      v105 = v148;
      v101(v148, v149, v103);
      v106 = v105;
      (*(v159 + 56))(v105, 0, 1, v103);
      v73 = v163;
      v76 = v164;
      if (v140)
      {
        sub_2E18(v48, v48[3]);
        v107 = sub_260700();
        v108 = v170;
        if (v107)
        {
          v109 = v155;
          *v155 = v107;
          v110 = v107;
          swift_storeEnumTagMultiPayload();
          v111 = v110;
          sub_118738(v109, v106, &v172, v78, v142, v152, v73);

          sub_11B788(v109, type metadata accessor for AssetAction.Kind);
          v112 = 0;
        }

        else
        {

          v112 = 1;
        }

        v77 = v153;
      }

      else
      {
        v116 = v145;
        sub_8198(v171, v145, &qword_322C70, &qword_272AD0);
        v118 = v166;
        v117 = v167;
        v119 = (*(v167 + 48))(v116, 1, v166);
        v77 = v153;
        if (v119 == 1)
        {

          sub_8E80(v116, &qword_322C70, &qword_272AD0);
          v112 = 1;
        }

        else
        {
          v127 = v143;
          (*(v117 + 32))();
          v128 = *(v117 + 16);
          v129 = v155;
          v128(v155, v127, v118);
          swift_storeEnumTagMultiPayload();
          sub_118738(v129, v148, &v172, v78, v142, v152, v73);

          sub_11B788(v129, type metadata accessor for AssetAction.Kind);
          v130 = v127;
          v106 = v148;
          (*(v167 + 8))(v130, v118);
          v112 = 0;
        }

        v108 = v170;
      }

      sub_8E80(v106, &qword_316208, &qword_268BD0);
      v131 = type metadata accessor for AssetAction(0);
      (*(*(v131 - 8) + 56))(v73, v112, 1, v131);
      sub_8E80(v179, &qword_317F48, &qword_26A9A0);
      sub_8198(v78 + *(v108 + 24), &v177, &qword_31D240, &qword_279000);
      if (v178)
      {
        sub_F7CC(&v177, v175);
        v132 = v149;
LABEL_59:
        v74 = sub_260BB0();
        v75 = v134;
        sub_3080(v175);
        (*(v159 + 8))(v132, v158);
        goto LABEL_62;
      }

      (*(v159 + 8))(v149, v158);
    }

    else
    {
      sub_119D08(v140 & 1, v48, v147);
      v79 = v81;
      if ((v69 & 1) == 0 || (sub_2E18(v48, v48[3]), sub_260930(), (v94 & 0x100000000) != 0))
      {
        sub_2EF0(&qword_31E988, &qword_279108);
        v95 = v144;
        v167 = *(v159 + 16);
        (v167)(v144, v147, v158);
        sub_2E18(v48, v48[3]);
        sub_2609A0();
        sub_260BC0();
      }

      else
      {
        v95 = v144;
        v167 = *(v159 + 16);
        (v167)(v144, v147, v158);
      }

      v77 = v153;
      swift_storeEnumTagMultiPayload();
      sub_1161F4(v95, v81, type metadata accessor for ButtonViewModel.Content);
      v73 = v163;
      v76 = v164;
      v120 = v156;
      if (v156)
      {
        *v155 = v156;
        swift_storeEnumTagMultiPayload();
        v122 = v158;
        v121 = v159;
        v123 = v150;
        (v167)(v150, v147, v158);
        (*(v121 + 56))(v123, 0, 1, v122);
        v124 = v120;
        v125 = v155;
        sub_118738(v155, v123, &v172, v78, v142, v152, v73);

        sub_8E80(v123, &qword_316208, &qword_268BD0);
        sub_11B788(v125, type metadata accessor for AssetAction.Kind);
        v126 = 0;
      }

      else
      {

        v126 = 1;
      }

      v133 = type metadata accessor for AssetAction(0);
      (*(*(v133 - 8) + 56))(v73, v126, 1, v133);
      sub_8E80(v179, &qword_317F48, &qword_26A9A0);
      sub_8198(v78 + *(v170 + 24), &v177, &qword_31D240, &qword_279000);
      if (v178)
      {
        sub_F7CC(&v177, v175);
        v132 = v147;
        goto LABEL_59;
      }

      (*(v159 + 8))(v147, v158);
    }

    sub_8E80(&v177, &qword_31D240, &qword_279000);
    v74 = 0;
    v75 = 0;
    goto LABEL_62;
  }

  sub_8E80(v179, &qword_317F48, &qword_26A9A0);
  v71 = v162;
  swift_storeEnumTagMultiPayload();
  v72 = type metadata accessor for AssetAction(0);
  v73 = v163;
  (*(*(v72 - 8) + 56))(v163, 1, 1, v72);
  v74 = 0;
  v75 = 0;
  v76 = v164;
  v77 = v153;
  v78 = v54;
  v79 = v71;
LABEL_62:
  sub_11B7E8(v79, v78 + *(v77 + 44));
  sub_8198(v73, v76, &qword_319AC8, &qword_287AB0);
  v135 = type metadata accessor for AssetAction(0);
  if ((*(*(v135 - 8) + 48))(v76, 1, v135) == 1)
  {

    sub_8E80(v73, &qword_319AC8, &qword_287AB0);
    sub_11B788(v79, type metadata accessor for ButtonViewModel.Content);
    sub_8E80(v171, &qword_322C70, &qword_272AD0);
    sub_8E80(v76, &qword_319AC8, &qword_287AB0);
    v136 = v165;
    *v165 = 0u;
    *(v136 + 16) = 0u;
    *(v136 + 32) = 0;
  }

  else
  {
    v136 = v165;
    *(v165 + 3) = v135;
    *(v136 + 32) = sub_11B8B0(&qword_319B08, type metadata accessor for AssetAction, &protocol conformance descriptor for AssetAction);
    v137 = sub_10934(v136);
    sub_1161F4(v76, v137, type metadata accessor for AssetAction);

    sub_8E80(v73, &qword_319AC8, &qword_287AB0);
    sub_11B788(v79, type metadata accessor for ButtonViewModel.Content);
    sub_8E80(v171, &qword_322C70, &qword_272AD0);
  }

  swift_storeEnumTagMultiPayload();
  sub_11B84C(v136, v78 + *(v77 + 52));
  v138 = (v78 + *(v170 + 28));

  *v138 = v74;
  v138[1] = v75;
}

uint64_t sub_118738@<X0>(void (*a1)(uint64_t, void, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v152 = a6;
  v153 = a5;
  v150 = a4;
  v141 = a3;
  v130 = a2;
  v148 = a7;
  v147 = type metadata accessor for AssetAction(0);
  __chkstk_darwin(v147);
  v162 = (&v124 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v160 = sub_2601E0();
  v9 = *(v160 - 1);
  __chkstk_darwin(v160);
  v144 = &v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2EF0(&qword_316B98, &unk_275840);
  __chkstk_darwin(v11 - 8);
  v161 = &v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v146 = &v124 - v14;
  __chkstk_darwin(v15);
  v145 = &v124 - v16;
  v156 = type metadata accessor for QuickActionBuyButtonViewModel(0);
  __chkstk_darwin(v156);
  v142 = &v124 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2EF0(&qword_31A0C8, &qword_26E2C0);
  __chkstk_darwin(v18 - 8);
  v149 = &v124 - v19;
  v20 = sub_263DD0();
  __chkstk_darwin(v20 - 8);
  v133 = &v124 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_263A10();
  v132 = *(v140 - 1);
  __chkstk_darwin(v140);
  v131 = &v124 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2EF0(&qword_322C70, &qword_272AD0);
  __chkstk_darwin(v23 - 8);
  v129 = &v124 - v24;
  v25 = sub_2EF0(&qword_316208, &qword_268BD0);
  __chkstk_darwin(v25 - 8);
  *&v128 = &v124 - v26;
  v27 = type metadata accessor for AssetAction.Kind(0);
  __chkstk_darwin(v27);
  v159 = &v124 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v124 - v30;
  v143 = sub_263AF0();
  v157 = *(v143 - 8);
  __chkstk_darwin(v143);
  v164 = &v124 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v163 = &v124 - v34;
  v35 = sub_260560();
  v36 = *(v35 - 8);
  __chkstk_darwin(v35);
  v38 = &v124 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_260600();
  __chkstk_darwin(v39 - 8);
  v41 = &v124 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_260620();
  v155 = *(v158 - 8);
  __chkstk_darwin(v158);
  v43 = &v124 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssetAction.Kind.appAnalyticsClickTargetType.getter(v41);
  v44 = *(v36 + 104);
  v135 = enum case for LinkActionType.click(_:);
  v138 = v36 + 104;
  v139 = v35;
  v134 = v44;
  v44(v38);
  v154 = v43;
  v136 = v41;
  v137 = v38;
  sub_260610();
  v151 = a1;
  sub_11BFAC(a1, v31, type metadata accessor for AssetAction.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 4)
  {
    sub_11B788(v31, type metadata accessor for AssetAction.Kind);
    v46 = v156;
    v48 = v149;
    v47 = v150;
LABEL_5:
    v50 = v163;
    if (*(v141 + 16) == 5)
    {
      v51 = 1;
      goto LABEL_9;
    }

LABEL_14:
    sub_263AC0();
    v59 = v160;
    goto LABEL_37;
  }

  v46 = v156;
  v48 = v149;
  v47 = v150;
  if (EnumCaseMultiPayload == 6)
  {
    v49 = sub_260060();
    (*(*(v49 - 8) + 8))(v31, v49);
    goto LABEL_5;
  }

  sub_11B788(v31, type metadata accessor for AssetAction.Kind);
  v50 = v163;
  if (*(v141 + 16) != 5)
  {
    goto LABEL_14;
  }

  v51 = 0;
LABEL_9:
  sub_8198(v47 + *(v46 + 24), &v171, &qword_31D240, &qword_279000);
  if (!*(&v172 + 1))
  {
    sub_8E80(&v171, &qword_31D240, &qword_279000);
    goto LABEL_14;
  }

  v141 = v9;
  v52 = 0x6F6F626F69647561;
  sub_F7CC(&v171, v170);
  AssetAction.Kind.figaroActionType.getter(&v171);
  v127 = v171;
  LOBYTE(v168) = v171;
  v53 = *(v46 + 20);
  sub_30CC(v47 + v53, &v171);
  v126 = _s7BooksUI7MetricsO13actionDetails3for9assetInfoSDySSypGSgAC15ClickActionTypeO_14BookFoundation05AssetH0_ptFZ_0(&v168, &v171);
  sub_3080(&v171);
  v125 = v53;
  sub_30CC(v47 + v53, &v171);
  sub_2E18(&v171, *(&v172 + 1));
  sub_260860();
  v54 = sub_2609D0();
  v56 = v55;
  if (v54 == sub_2609D0() && v56 == v57)
  {

    v58 = 0xE90000000000006BLL;
  }

  else
  {
    v60 = sub_264F10();

    if (v60)
    {
      v58 = 0xE90000000000006BLL;
    }

    else
    {
      v52 = 0x6B6F6F6265;
      v58 = 0xE500000000000000;
    }
  }

  v61 = v129;
  sub_3080(&v171);
  v62 = v128;
  sub_8198(v130, v128, &qword_316208, &qword_268BD0);
  v63 = sub_260BD0();
  v64 = *(v63 - 8);
  if ((*(v64 + 48))(v62, 1, v63) == 1)
  {
    sub_8E80(v62, &qword_316208, &qword_268BD0);
    v65 = 0;
    v66 = 0;
  }

  else
  {
    v67 = v62;
    v65 = sub_260BB0();
    v66 = v68;
    (*(v64 + 8))(v67, v63);
  }

  LOBYTE(v168) = 0;
  if (v51)
  {
    v69 = 0x77656976657270;
  }

  else
  {
    v69 = 0x6E6F74747562;
  }

  v171 = 0u;
  v172 = 0u;
  v173 = 0u;
  if (v51)
  {
    v70 = 0xE700000000000000;
  }

  else
  {
    v70 = 0xE600000000000000;
  }

  v174 = v153;
  v175 = v152;
  v176 = xmmword_270040;
  v177 = v52;
  v178 = v58;
  v179 = 1;
  v180 = 0;
  v129 = v70;
  v130 = v69;
  v181 = v69;
  v182 = v70;
  v183 = v65;
  v184 = v66;
  v185 = 0uLL;
  v186 = 0uLL;
  v47 = v150;
  sub_30CC(v150 + v125, &v168);
  sub_2E18(&v168, v169);

  sub_2608C0();
  v71 = sub_260060();
  v72 = *(v71 - 8);
  if ((*(v72 + 48))(v61, 1, v71) == 1)
  {
    sub_3080(&v168);
    sub_8E80(v61, &qword_322C70, &qword_272AD0);
    v73 = 0;
    v74 = 0;
  }

  else
  {
    v73 = sub_260020();
    v74 = v75;
    (*(v72 + 8))(v61, v71);
    sub_3080(&v168);
  }

  v76 = v126;
  v77 = &_swiftEmptyDictionarySingleton;
  if (v126)
  {
    v169 = sub_2EF0(&qword_3160D0, &unk_270CF0);
    *&v168 = v76;
    sub_FBD8(&v168, v166);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v165 = &_swiftEmptyDictionarySingleton;
    sub_DC90(v166, 0x65446E6F69746361, 0xED0000736C696174, isUniquelyReferenced_nonNull_native);
    v77 = v165;
  }

  if (v74)
  {
    v169 = &type metadata for String;
    *&v168 = v73;
    *(&v168 + 1) = v74;
    sub_FBD8(&v168, v166);
    v79 = swift_isUniquelyReferenced_nonNull_native();
    v165 = v77;
    sub_DC90(v166, 0x72556E6F69746361, 0xE90000000000006CLL, v79);
    v77 = v165;
  }

  v167 = v127;
  v80 = Metrics.ClickActionType.rawValue.getter();
  v169 = &type metadata for String;
  *&v168 = v80;
  *(&v168 + 1) = v81;
  sub_FBD8(&v168, v166);
  v82 = swift_isUniquelyReferenced_nonNull_native();
  v165 = v77;
  sub_DC90(v166, 0x79546E6F69746361, 0xEA00000000006570, v82);
  v83 = v165;
  sub_2EF0(&qword_317218, &unk_269760);
  v84 = swift_allocObject();
  v128 = xmmword_267D30;
  *(v84 + 16) = xmmword_267D30;
  *(v84 + 32) = sub_1694E0();
  v169 = sub_2EF0(&qword_319B10, &qword_2777B0);
  *&v168 = v84;
  sub_FBD8(&v168, v166);
  v85 = swift_isUniquelyReferenced_nonNull_native();
  v165 = v83;
  sub_DC90(v166, 0x6E6F697461636F6CLL, 0xE800000000000000, v85);
  if (qword_3158E0 != -1)
  {
    swift_once();
  }

  v86 = sub_2639E0();
  sub_B080(v86, qword_353F10);
  v87 = v131;
  sub_2639C0();

  sub_2EF0(&qword_3160D8, &qword_267D60);
  v88 = v132;
  v89 = (*(v132 + 80) + 32) & ~*(v132 + 80);
  v90 = swift_allocObject();
  *(v90 + 16) = v128;
  v91 = v90 + v89;
  v92 = v140;
  (*(v88 + 16))(v91, v87, v140);
  sub_263DC0();
  v50 = v163;
  sub_263AD0();
  sub_98D34(&v171);
  (*(v88 + 8))(v87, v92);
  sub_3080(v170);
  v59 = v160;
  v9 = v141;
  v48 = v149;
LABEL_37:
  v93 = v157;
  v94 = v164;
  v95 = v142;
  sub_11BFAC(v47, v142, type metadata accessor for QuickActionBuyButtonViewModel);
  sub_116BC4(v48);
  sub_11B788(v95, type metadata accessor for QuickActionBuyButtonViewModel);
  if ((*(v9 + 48))(v48, 1, v59) == 1)
  {
    sub_8E80(v48, &qword_31A0C8, &qword_26E2C0);
    v141 = 0;
    v142 = 0;
  }

  else
  {
    v96 = sub_2601C0();
    v141 = v97;
    v142 = v96;
    (*(v9 + 8))(v48, v59);
  }

  v98 = v9;
  sub_30CC(v47 + *(v156 + 20), v170);
  sub_2E18(v170, v170[3]);
  LODWORD(v150) = sub_260870();
  v149 = *(v93 + 16);
  v99 = v143;
  (v149)(v94, v50, v143);
  v140 = type metadata accessor for AssetAction.Kind;
  sub_11BFAC(v151, v159, type metadata accessor for AssetAction.Kind);
  v100 = v155;
  v101 = v145;
  v102 = v158;
  (*(v155 + 16))(v145, v154, v158);
  v103 = *(v100 + 56);
  v156 = v100 + 56;
  v151 = v103;
  v103(v101, 0, 1, v102);
  v104 = v144;
  sub_2601D0();
  v105 = sub_2601C0();
  v107 = v106;
  (*(v98 + 8))(v104, v160);
  v108 = v162;
  *v162 = v105;
  v108[1] = v107;
  v109 = v152;
  v108[2] = v153;
  v108[3] = v109;
  v110 = v141;
  v108[4] = v142;
  v108[5] = v110;
  *(v108 + 48) = v150 & 1;
  v111 = v147;
  (v149)(v108 + *(v147 + 32), v164, v99);
  v112 = v159;
  sub_11BFAC(v159, v108 + *(v111 + 40), v140);
  v113 = v161;
  sub_8198(v101, v161, &qword_316B98, &unk_275840);
  v114 = *(v100 + 48);
  LODWORD(v113) = v114(v113, 1, v102);

  if (v113 == 1)
  {
    AssetAction.Kind.appAnalyticsClickTargetType.getter(v136);
    v134(v137, v135, v139);
    v160 = v114;
    v115 = v99;
    v116 = v146;
    sub_260610();
    sub_8E80(v101, &qword_316B98, &unk_275840);
    sub_11B788(v112, type metadata accessor for AssetAction.Kind);
    v117 = *(v157 + 8);
    v117(v164, v115);
    v117(v163, v115);
    v118 = v158;
    (*(v155 + 8))(v154, v158);
    v119 = v161;
    if ((v160)(v161, 1, v118) != 1)
    {
      sub_8E80(v119, &qword_316B98, &unk_275840);
    }
  }

  else
  {
    sub_8E80(v101, &qword_316B98, &unk_275840);
    sub_11B788(v112, type metadata accessor for AssetAction.Kind);
    v120 = *(v157 + 8);
    v120(v164, v99);
    v120(v163, v99);
    v121 = v155;
    v118 = v158;
    (*(v155 + 8))(v154, v158);
    v116 = v146;
    (*(v121 + 32))(v146, v161, v118);
  }

  v151(v116, 0, 1, v118);
  v122 = v162;
  sub_22148(v116, v162 + *(v111 + 36), &qword_316B98, &unk_275840);
  sub_1161F4(v122, v148, type metadata accessor for AssetAction);
  return sub_3080(v170);
}

uint64_t sub_119A1C(char a1, uint64_t a2)
{
  v2 = sub_264010();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_263FA0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_263F90();
  (*(v3 + 104))(v5, enum case for LocalizerLookupStrategy.default(_:), v2);
  sub_260B80();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

void sub_119D08(int a1@<W0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a1;
  v5 = sub_2607D0();
  v56 = *(v5 - 8);
  v57 = v5;
  __chkstk_darwin(v5);
  v55 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_264010();
  v60 = *(v63 - 8);
  __chkstk_darwin(v63);
  v61 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_263FA0();
  v59 = *(v64 - 8);
  __chkstk_darwin(v64);
  v62 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_260720();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v54 - v14;
  v16 = sub_2EF0(&qword_31C238, &qword_274960);
  __chkstk_darwin(v16 - 8);
  v18 = &v54 - v17;
  v19 = sub_260680();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_30CC(a2, v65);
  sub_2EF0(&qword_31AEE8, &qword_28CD40);
  v23 = swift_dynamicCast();
  v24 = *(v20 + 56);
  if (v23)
  {
    v54 = a3;
    v24(v18, 0, 1, v19);
    (*(v20 + 32))(v22, v18, v19);
    sub_260660();
    (*(v10 + 104))(v12, enum case for ContentKind.manga(_:), v9);
    v25 = sub_260710();
    v26 = *(v10 + 8);
    v26(v12, v9);
    v26(v15, v9);
    if (v25)
    {
      v27 = v62;
      sub_263F90();
      v29 = v60;
      v28 = v61;
      v30 = v63;
      (*(v60 + 104))(v61, enum case for LocalizerLookupStrategy.default(_:), v63);
      sub_260B80();
      (*(v29 + 8))(v28, v30);
      (*(v59 + 8))(v27, v64);
      (*(v20 + 8))(v22, v19);
      return;
    }

    (*(v20 + 8))(v22, v19);
  }

  else
  {
    v24(v18, 1, 1, v19);
    sub_8E80(v18, &qword_31C238, &qword_274960);
  }

  sub_2E18(a2, a2[3]);
  v31 = v55;
  sub_260940();
  v32 = (*(v56 + 88))(v31, v57);
  if (v32 != enum case for SeriesOrdering.notAvailable(_:) && v32 != enum case for SeriesOrdering.nonSeries(_:))
  {
    if (v32 == enum case for SeriesOrdering.orderedSeries(_:))
    {
      sub_2E18(a2, a2[3]);
      v33 = sub_260930();
      if ((v35 & 0x100000000) == 0)
      {
        v36 = HIDWORD(v33);
        v37 = HIWORD(v33);
        v38 = v34 >> 16;
        v39 = HIDWORD(v34);
        v40 = HIWORD(v34);
        v64 = v35 >> 16;
        v41 = v33;
        v42 = v34;
        v43 = v35;
        v44 = swift_allocObject();
        *(v44 + 16) = v41;
        *(v44 + 20) = v36;
        *(v44 + 22) = v37;
        *(v44 + 24) = v42;
        *(v44 + 26) = v38;
        *(v44 + 28) = v39;
        *(v44 + 30) = v40;
        *(v44 + 32) = v43;
        *(v44 + 34) = v64;
        *(v44 + 36) = v58 & 1;
        sub_260B70();

        return;
      }
    }

    else if (v32 != enum case for SeriesOrdering.unorderedSeries(_:))
    {
      sub_264CD0();
      __break(1u);
      return;
    }
  }

  v45 = (v60 + 104);
  v46 = (v60 + 8);
  v47 = (v59 + 8);
  if (v58)
  {
    v48 = v62;
    sub_263F90();
    v49 = v61;
    v50 = v63;
    (*v45)(v61, enum case for LocalizerLookupStrategy.default(_:), v63);
    sub_260B80();
    (*v46)(v49, v50);
    (*v47)(v48, v64);
  }

  else
  {
    v51 = v62;
    sub_263F90();
    v52 = v61;
    v53 = v63;
    (*v45)(v61, enum case for LocalizerLookupStrategy.default(_:), v63);
    sub_260B80();
    (*v46)(v52, v53);
    (*v47)(v51, v64);
  }
}

void sub_11A54C(int a1@<W0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a1;
  v5 = sub_2607D0();
  v56 = *(v5 - 8);
  v57 = v5;
  __chkstk_darwin(v5);
  v55 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_264010();
  v60 = *(v63 - 8);
  __chkstk_darwin(v63);
  v61 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_263FA0();
  v59 = *(v64 - 8);
  __chkstk_darwin(v64);
  v62 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_260720();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v54 - v14;
  v16 = sub_2EF0(&qword_31C238, &qword_274960);
  __chkstk_darwin(v16 - 8);
  v18 = &v54 - v17;
  v19 = sub_260680();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_30CC(a2, v65);
  sub_2EF0(&qword_31AEE8, &qword_28CD40);
  v23 = swift_dynamicCast();
  v24 = *(v20 + 56);
  if (v23)
  {
    v54 = a3;
    v24(v18, 0, 1, v19);
    (*(v20 + 32))(v22, v18, v19);
    sub_260660();
    (*(v10 + 104))(v12, enum case for ContentKind.manga(_:), v9);
    v25 = sub_260710();
    v26 = *(v10 + 8);
    v26(v12, v9);
    v26(v15, v9);
    if (v25)
    {
      v27 = v62;
      sub_263F90();
      v29 = v60;
      v28 = v61;
      v30 = v63;
      (*(v60 + 104))(v61, enum case for LocalizerLookupStrategy.default(_:), v63);
      sub_260B80();
      (*(v29 + 8))(v28, v30);
      (*(v59 + 8))(v27, v64);
      (*(v20 + 8))(v22, v19);
      return;
    }

    (*(v20 + 8))(v22, v19);
  }

  else
  {
    v24(v18, 1, 1, v19);
    sub_8E80(v18, &qword_31C238, &qword_274960);
  }

  sub_2E18(a2, a2[3]);
  v31 = v55;
  sub_260940();
  v32 = (*(v56 + 88))(v31, v57);
  if (v32 != enum case for SeriesOrdering.notAvailable(_:) && v32 != enum case for SeriesOrdering.nonSeries(_:))
  {
    if (v32 == enum case for SeriesOrdering.orderedSeries(_:))
    {
      sub_2E18(a2, a2[3]);
      v33 = sub_260930();
      if ((v35 & 0x100000000) == 0)
      {
        v36 = HIDWORD(v33);
        v37 = HIWORD(v33);
        v38 = v34 >> 16;
        v39 = HIDWORD(v34);
        v40 = HIWORD(v34);
        v64 = v35 >> 16;
        v41 = v33;
        v42 = v34;
        v43 = v35;
        v44 = swift_allocObject();
        *(v44 + 16) = v41;
        *(v44 + 20) = v36;
        *(v44 + 22) = v37;
        *(v44 + 24) = v42;
        *(v44 + 26) = v38;
        *(v44 + 28) = v39;
        *(v44 + 30) = v40;
        *(v44 + 32) = v43;
        *(v44 + 34) = v64;
        *(v44 + 36) = v58 & 1;
        sub_260B70();

        return;
      }
    }

    else if (v32 != enum case for SeriesOrdering.unorderedSeries(_:))
    {
      sub_264CD0();
      __break(1u);
      return;
    }
  }

  v45 = (v60 + 104);
  v46 = (v60 + 8);
  v47 = (v59 + 8);
  if (v58)
  {
    v48 = v62;
    sub_263F90();
    v49 = v61;
    v50 = v63;
    (*v45)(v61, enum case for LocalizerLookupStrategy.default(_:), v63);
    sub_260B80();
    (*v46)(v49, v50);
    (*v47)(v48, v64);
  }

  else
  {
    v51 = v62;
    sub_263F90();
    v52 = v61;
    v53 = v63;
    (*v45)(v61, enum case for LocalizerLookupStrategy.default(_:), v63);
    sub_260B80();
    (*v46)(v52, v53);
    (*v47)(v51, v64);
  }
}

uint64_t sub_11AD90(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v25[3] = a5;
  v6 = sub_263FA0();
  v27 = *(v6 - 8);
  v28 = v6;
  __chkstk_darwin(v6);
  v26 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_263D20();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v12 = a1[4];
  sub_2E18(a1, v13);
  sub_264A30(v14);
  v16 = v15;
  (*(v9 + 104))(v11, enum case for LocalizerContext.standalone(_:), v8);
  v17 = Localizer.decimal(forNumber:in:)(v16, v11, v13, v12);
  v19 = v18;

  (*(v9 + 8))(v11, v8);
  sub_2E18(a1, a1[3]);
  sub_2EF0(&qword_31ACF0, &unk_26FF60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267D30;
  *(inited + 32) = 0xD000000000000014;
  v21 = inited + 32;
  *(inited + 40) = 0x8000000000292A30;
  *(inited + 48) = v17;
  *(inited + 56) = v19;
  sub_F13C(inited);
  swift_setDeallocating();
  sub_8E80(v21, &qword_31ACF8, &qword_273580);
  v22 = v26;
  sub_263F90();
  v23 = sub_264250();

  (*(v27 + 8))(v22, v28);
  return v23;
}

uint64_t sub_11B108(void *a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v36 = a5;
  LODWORD(v35) = a4;
  v34 = sub_264010();
  v33 = *(v34 - 8);
  __chkstk_darwin(v34);
  v32 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_263FA0();
  v37 = *(v7 - 8);
  v38 = v7;
  __chkstk_darwin(v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_263D20();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v15 = a1[4];
  sub_2E18(a1, v14);
  sub_264A30(v16);
  v18 = v17;
  (*(v11 + 104))(v13, enum case for LocalizerContext.standalone(_:), v10);
  v19 = Localizer.decimal(forNumber:in:)(v18, v13, v14, v15);
  v21 = v20;

  (*(v11 + 8))(v13, v10);
  v22 = a1[3];
  v35 = a1[4];
  sub_2E18(a1, v22);
  sub_2EF0(&qword_31ACF0, &unk_26FF60);
  if (v36)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_267D30;
    *(inited + 32) = 0xD000000000000014;
    v24 = inited + 32;
    *(inited + 40) = 0x8000000000292A30;
    *(inited + 48) = v19;
    *(inited + 56) = v21;
    sub_F13C(inited);
    swift_setDeallocating();
    sub_8E80(v24, &qword_31ACF8, &qword_273580);
    sub_263F90();
    v25 = sub_264250();
  }

  else
  {
    v26 = swift_initStackObject();
    *(v26 + 16) = xmmword_267D30;
    *(v26 + 32) = 0xD000000000000014;
    v27 = v26 + 32;
    *(v26 + 40) = 0x8000000000292A30;
    *(v26 + 48) = v19;
    *(v26 + 56) = v21;
    sub_F13C(v26);
    swift_setDeallocating();
    sub_8E80(v27, &qword_31ACF8, &qword_273580);
    sub_263F90();
    v28 = v33;
    v29 = v32;
    v30 = v34;
    (*(v33 + 104))(v32, enum case for LocalizerLookupStrategy.default(_:), v34);
    v25 = sub_264200();

    (*(v28 + 8))(v29, v30);
  }

  (*(v37 + 8))(v9, v38);
  return v25;
}

void sub_11B56C(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_260FF0();

  *a1 = v2;
}

uint64_t sub_11B5EC(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_261000();
}

unint64_t sub_11B668()
{
  result = qword_31E980;
  if (!qword_31E980)
  {
    sub_2F9C(&qword_31E978, &qword_279088);
    sub_11B8B0(&qword_31A2D0, type metadata accessor for ButtonView, &protocol conformance descriptor for ButtonView);
    sub_11B724();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E980);
  }

  return result;
}

unint64_t sub_11B724()
{
  result = qword_318DA0;
  if (!qword_318DA0)
  {
    sub_2F9C(&qword_318DA8, &unk_26C340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318DA0);
  }

  return result;
}

uint64_t sub_11B788(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_11B7E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ButtonViewModel.Content(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_11B84C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ButtonViewModel.ActionKind(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_11B8B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_11B930(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QuickActionBuyButtonViewModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_11B9B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QuickActionBuyButtonViewModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_11BA40(uint64_t a1)
{
  result = type metadata accessor for QuickActionBuyButtonViewModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_11BAC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ButtonViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_2EF0(&qword_31A040, &unk_279210);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 36);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_11BC08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ButtonViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  else
  {
    v11 = sub_2EF0(&qword_31A040, &unk_279210);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 36);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_11BD3C(uint64_t a1)
{
  type metadata accessor for ButtonViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_44744();
    if (v2 <= 0x3F)
    {
      sub_11BEBC(319, &qword_31EA88, &unk_31EA90, &unk_279240, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_22944();
        if (v4 <= 0x3F)
        {
          sub_11BEBC(319, &qword_31A6A0, &qword_317F48, &qword_26A9A0, &type metadata accessor for Environment);
          if (v5 <= 0x3F)
          {
            sub_11BEBC(319, &qword_31A0C0, &qword_31A0C8, &qword_26E2C0, &type metadata accessor for Environment);
            if (v6 <= 0x3F)
            {
              sub_95884(319);
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
}

void sub_11BEBC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2F9C(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_11BF20()
{
  sub_2F9C(&qword_31E978, &qword_279088);
  sub_11B668();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_11BFAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t AudiobookCoverEffect.init(shadowScale:cornerRadius:)@<X0>(double *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v6 = *(type metadata accessor for AudiobookCoverEffect(0) + 24);
  *(a1 + v6) = swift_getKeyPath();
  sub_2EF0(&qword_316DC0, &qword_2691C0);
  result = swift_storeEnumTagMultiPayload();
  *a1 = a2;
  a1[1] = a3;
  return result;
}

uint64_t type metadata accessor for AudiobookCoverEffect(uint64_t a1)
{
  result = qword_31EB80;
  if (!qword_31EB80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_11C110@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_316DC0, &qword_2691C0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for AudiobookCoverEffect(0);
  sub_8198(v1 + *(v10 + 24), v9, &qword_316DC0, &qword_2691C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_261180();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_264900();
    v13 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t AudiobookCoverEffect.body(cover:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = sub_2EF0(&qword_31EAD8, &qword_279288);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - v8;
  v10 = type metadata accessor for AudiobookCoverEffect(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  sub_11C578(v3, &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v9, a1, v6);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = (v12 + *(v7 + 80) + v13) & ~*(v7 + 80);
  v15 = swift_allocObject();
  sub_11C5E0(&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v13);
  result = (*(v7 + 32))(v15 + v14, v9, v6);
  *a2 = sub_11C644;
  a2[1] = v15;
  return result;
}

uint64_t sub_11C4F8@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_261420();
  v8 = v7;
  v10 = v9;
  *a4 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  a4[1] = v11;
  v12 = sub_2EF0(&qword_31EBD0, &qword_279310);
  return sub_11C648(a2, a3, a4 + *(v12 + 44), v8, v10);
}

uint64_t sub_11C578(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudiobookCoverEffect(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_11C5E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudiobookCoverEffect(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_11C648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = sub_2EF0(&qword_31EBD8, &qword_279318);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v32 - v15;
  v17 = sub_2EF0(&qword_31EBE0, &qword_279320);
  __chkstk_darwin(v17 - 8);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = (&v32 - v21);
  *v22 = sub_263560();
  v22[1] = v23;
  v24 = sub_2EF0(&qword_31EBE8, &unk_279328);
  sub_11C91C(a1, a2, v22 + *(v24 + 44), a4, a5);
  sub_11D40C(a2, a1, v16, a5);
  v25 = *(a1 + 8);
  v26 = &v16[*(v11 + 44)];
  v27 = *(sub_2617E0() + 20);
  v28 = enum case for RoundedCornerStyle.continuous(_:);
  v29 = sub_261DD0();
  (*(*(v29 - 8) + 104))(&v26[v27], v28, v29);
  *v26 = v25;
  *(v26 + 1) = v25;
  *&v26[*(sub_2EF0(&qword_317DA8, &qword_26C1B0) + 36)] = 256;
  sub_8198(v22, v19, &qword_31EBE0, &qword_279320);
  sub_8198(v16, v13, &qword_31EBD8, &qword_279318);
  sub_8198(v19, a3, &qword_31EBE0, &qword_279320);
  v30 = sub_2EF0(&qword_31EBF0, &qword_279338);
  sub_8198(v13, a3 + *(v30 + 48), &qword_31EBD8, &qword_279318);
  sub_8E80(v16, &qword_31EBD8, &qword_279318);
  sub_8E80(v22, &qword_31EBE0, &qword_279320);
  sub_8E80(v13, &qword_31EBD8, &qword_279318);
  return sub_8E80(v19, &qword_31EBE0, &qword_279320);
}

uint64_t sub_11C91C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v91 = a2;
  v103 = a3;
  v94 = sub_2EF0(&qword_31EC08, &qword_279390) - 8;
  __chkstk_darwin(v94);
  v90 = v76 - v8;
  v102 = sub_2EF0(&qword_31EC10, &qword_279398) - 8;
  __chkstk_darwin(v102);
  v99 = v76 - v9;
  v100 = sub_2EF0(&qword_31EC18, &qword_2793A0) - 8;
  __chkstk_darwin(v100);
  v97 = v76 - v10;
  v98 = sub_2EF0(&qword_31EC20, &qword_2793A8) - 8;
  __chkstk_darwin(v98);
  v95 = v76 - v11;
  v93 = sub_2EF0(&qword_31EC28, &unk_2793B0) - 8;
  __chkstk_darwin(v93);
  v101 = v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v92 = v76 - v14;
  __chkstk_darwin(v15);
  v96 = v76 - v16;
  v87 = sub_261180();
  v17 = *(v87 - 8);
  __chkstk_darwin(v87);
  v19 = v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = v76 - v21;
  v23 = sub_2EF0(&qword_3192B0, &unk_28E820);
  v24 = v23 - 8;
  __chkstk_darwin(v23);
  v26 = v76 - v25;
  v82 = sub_2EF0(&qword_3192B8, &unk_2793C0) - 8;
  __chkstk_darwin(v82);
  v81 = v76 - v27;
  v28 = sub_2EF0(&qword_3192C0, &unk_28E830);
  v29 = v28 - 8;
  __chkstk_darwin(v28);
  v89 = v76 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = v76 - v32;
  __chkstk_darwin(v34);
  v80 = v76 - v35;
  v36 = a1;
  v37 = *(a1 + 8);
  v88 = sub_2617E0();
  v38 = *(v88 + 20);
  v39 = enum case for RoundedCornerStyle.continuous(_:);
  v85 = enum case for RoundedCornerStyle.continuous(_:);
  v84 = sub_261DD0();
  v40 = *(v84 - 8);
  v83 = *(v40 + 104);
  v86 = v40 + 104;
  v83(&v26[v38], v39, v84);
  *v26 = v37;
  *(v26 + 1) = v37;
  v41 = sub_262F80();
  v42 = sub_2EF0(&qword_3192C8, &unk_2793D0);
  *&v26[*(v42 + 52)] = v41;
  *&v26[*(v42 + 56)] = 256;
  v43 = *v36;
  v79 = v36;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v44 = &v26[*(sub_2EF0(&qword_3192D0, &qword_28E840) + 36)];
  v45 = v105;
  *v44 = v104;
  *(v44 + 1) = v45;
  *(v44 + 2) = v106;
  v46 = &v26[*(v24 + 44)];
  *v46 = 0.0;
  v46[1] = (1.0 - v43) * a5 * -0.25;
  v47 = v22;
  sub_11C110(v22);
  v78 = enum case for ColorScheme.dark(_:);
  v77 = *(v17 + 104);
  v48 = v87;
  v77(v19);
  v49 = v47;
  LOBYTE(v47) = sub_261170();
  v50 = *(v17 + 8);
  v76[1] = v17 + 8;
  v50(v19, v48);
  v50(v49, v48);
  if (v47)
  {
    v51 = 0.9;
  }

  else
  {
    v51 = 0.75;
  }

  v52 = v81;
  sub_22148(v26, v81, &qword_3192B0, &unk_28E820);
  *(v52 + *(v82 + 44)) = v51;
  sub_22148(v52, v33, &qword_3192B8, &unk_2793C0);
  v53 = &v33[*(v29 + 44)];
  *v53 = a4 * 0.1;
  v53[8] = 0;
  v54 = v80;
  sub_22148(v33, v80, &qword_3192C0, &unk_28E830);
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v55 = sub_2EF0(&qword_31EAD8, &qword_279288);
  v56 = v90;
  (*(*(v55 - 8) + 16))(v90, v91, v55);
  v57 = (v56 + *(sub_2EF0(&qword_31EBF8, &qword_279378) + 36));
  v58 = v108;
  *v57 = v107;
  v57[1] = v58;
  v57[2] = v109;
  v59 = (v56 + *(v94 + 44));
  v83(&v59[*(v88 + 20)], v85, v84);
  *v59 = v37;
  *(v59 + 1) = v37;
  *&v59[*(sub_2EF0(&qword_317DA8, &qword_26C1B0) + 36)] = 256;
  sub_11C110(v49);
  (v77)(v19, v78, v48);
  LOBYTE(v59) = sub_261170();
  v50(v19, v48);
  v50(v49, v48);
  if (v59)
  {
    v60 = 0.15;
  }

  else
  {
    v60 = 0.5;
  }

  v61 = v99;
  sub_22148(v56, v99, &qword_31EC08, &qword_279390);
  *(v61 + *(v102 + 44)) = v60;
  v62 = v61;
  v63 = v97;
  sub_22148(v62, v97, &qword_31EC10, &qword_279398);
  v64 = v63 + *(v100 + 44);
  *v64 = a4 * 0.1;
  *(v64 + 8) = 0;
  v65 = v95;
  sub_22148(v63, v95, &qword_31EC18, &qword_2793A0);
  *(v65 + *(v98 + 44)) = 0x3FF199999999999ALL;
  v66 = *(v93 + 44);
  v67 = enum case for BlendMode.color(_:);
  v68 = sub_263640();
  v69 = v92;
  (*(*(v68 - 8) + 104))(&v92[v66], v67, v68);
  sub_22148(v65, v69, &qword_31EC20, &qword_2793A8);
  v70 = v96;
  sub_22148(v69, v96, &qword_31EC28, &unk_2793B0);
  v71 = v89;
  sub_8198(v54, v89, &qword_3192C0, &unk_28E830);
  v72 = v101;
  sub_8198(v70, v101, &qword_31EC28, &unk_2793B0);
  v73 = v103;
  sub_8198(v71, v103, &qword_3192C0, &unk_28E830);
  v74 = sub_2EF0(&qword_31EC30, &unk_2793E0);
  sub_8198(v72, v73 + *(v74 + 48), &qword_31EC28, &unk_2793B0);
  sub_8E80(v70, &qword_31EC28, &unk_2793B0);
  sub_8E80(v54, &qword_3192C0, &unk_28E830);
  sub_8E80(v72, &qword_31EC28, &unk_2793B0);
  return sub_8E80(v71, &qword_3192C0, &unk_28E830);
}

uint64_t sub_11D40C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a5@<D1>)
{
  v102 = a2;
  v119 = a3;
  v115 = sub_261180();
  v116 = *(v115 - 8);
  __chkstk_darwin(v115);
  v113 = v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v109 = v94 - v9;
  v126 = sub_2EF0(&qword_319220, &unk_279340) - 8;
  __chkstk_darwin(v126);
  v100 = (v94 - v10);
  v112 = sub_2EF0(&qword_319228, &unk_28E790) - 8;
  __chkstk_darwin(v112);
  v111 = v94 - v11;
  v110 = sub_2EF0(&qword_319230, &unk_279350) - 8;
  __chkstk_darwin(v110);
  v108 = v94 - v12;
  v13 = sub_2EF0(&qword_319238, &unk_28E7A0) - 8;
  v98 = v13;
  __chkstk_darwin(v13);
  v15 = v94 - v14;
  v106 = sub_2EF0(&qword_319240, &unk_279360) - 8;
  __chkstk_darwin(v106);
  v105 = v94 - v16;
  v107 = sub_2EF0(&qword_319248, &unk_28E7B0) - 8;
  __chkstk_darwin(v107);
  v118 = v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v117 = v94 - v19;
  __chkstk_darwin(v20);
  v104 = v94 - v21;
  __chkstk_darwin(v22);
  v103 = v94 - v23;
  __chkstk_darwin(v24);
  v123 = v94 - v25;
  v26 = sub_2EF0(&qword_319250, &qword_279370);
  v27 = v26 - 8;
  __chkstk_darwin(v26);
  v114 = v94 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = v94 - v30;
  v32 = sub_2EF0(&qword_31EBF8, &qword_279378);
  v33 = v32 - 8;
  __chkstk_darwin(v32);
  v124 = v94 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v37 = v94 - v36;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v38 = sub_2EF0(&qword_31EAD8, &qword_279288);
  v39 = *(*(v38 - 8) + 16);
  v125 = v37;
  v39(v37, a1, v38);
  v40 = &v37[*(v33 + 44)];
  v41 = v134;
  *v40 = v133;
  *(v40 + 1) = v41;
  *(v40 + 2) = v135;
  sub_2EF0(&qword_319268, &qword_279380);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_269100;
  _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  sub_263000();

  *(v42 + 32) = sub_263450();
  *(v42 + 40) = v43;
  sub_262F80();
  sub_263000();

  *(v42 + 48) = sub_263450();
  *(v42 + 56) = v44;
  sub_263700();
  sub_263710();
  sub_263460();
  sub_261590();
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v97 = a5;
  sub_2613A0();
  v45 = *(v27 + 44);
  v46 = enum case for BlendMode.softLight(_:);
  v121 = sub_263640();
  v47 = *(v121 - 8);
  v120 = *(v47 + 104);
  v48 = v47 + 104;
  v120(&v31[v45], v46, v121);
  v94[1] = v48;
  v49 = v130;
  v122 = v31;
  *(v31 + 2) = v129;
  *(v31 + 3) = v49;
  *(v31 + 4) = v131;
  v50 = v132;
  v51 = v128;
  *v31 = v127;
  *(v31 + 1) = v51;
  *(v31 + 10) = v50;
  *(v31 + 11) = 0x3FD999999999999ALL;
  v52 = *(v102 + 8);
  v101 = sub_2617E0();
  v53 = *(v101 + 20);
  v54 = enum case for RoundedCornerStyle.continuous(_:);
  v96 = enum case for RoundedCornerStyle.continuous(_:);
  v55 = sub_261DD0();
  v56 = *(v55 - 8);
  v95 = *(v56 + 104);
  v99 = v56 + 104;
  v95(&v15[v53], v54, v55);
  *v15 = v52;
  *(v15 + 1) = v52;
  v57 = v15;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v58 = &v15[*(v13 + 44)];
  v59 = v137;
  *v58 = v136;
  *(v58 + 1) = v59;
  *(v58 + 2) = v138;
  v60 = sub_262F80();
  _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  sub_263000();

  v61 = v100;
  sub_261230();

  *v61 = v60;
  v62 = v109;
  sub_11C110(v109);
  v63 = v116;
  v64 = v113;
  v65 = v115;
  (*(v116 + 104))(v113, enum case for ColorScheme.dark(_:), v115);
  v66 = v64;
  LOBYTE(v64) = sub_261170();
  v67 = *(v63 + 8);
  v67(v66, v65);
  v67(v62, v65);
  if (v64)
  {
    v68 = 0.15;
  }

  else
  {
    v68 = 0.5;
  }

  v69 = v61;
  v70 = v111;
  sub_22148(v69, v111, &qword_319220, &unk_279340);
  v71 = v112;
  *(v70 + *(v112 + 44)) = v68;
  v72 = v110;
  v73 = v108;
  v120(&v108[*(v110 + 44)], enum case for BlendMode.screen(_:), v121);
  sub_22148(v70, v73, &qword_319228, &unk_28E790);
  v74 = v106;
  v75 = v105;
  sub_22148(v73, &v105[*(v106 + 44)], &qword_319230, &unk_279350);
  sub_22148(v57, v75, &qword_319238, &unk_28E7A0);
  v76 = v75;
  v77 = v103;
  sub_22148(v76, v103, &qword_319240, &unk_279360);
  v78 = v107;
  *(v77 + *(v107 + 44)) = 1;
  v79 = v123;
  sub_22148(v77, v123, &qword_319248, &unk_28E7B0);
  v80 = v104;
  v95(&v104[*(v101 + 20)], v96, v55);
  *v80 = v52;
  v80[1] = v52;
  v81 = v80;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v82 = (v80 + *(v98 + 44));
  v83 = v140;
  *v82 = v139;
  v82[1] = v83;
  v82[2] = v141;
  v84 = _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  sub_262F80();
  sub_263000();

  v85 = (v80 + *(v74 + 44));
  sub_261230();

  *v85 = v84;
  *(v85 + *(v71 + 44)) = 1048576000;
  v120(v85 + *(v72 + 44), enum case for BlendMode.darken(_:), v121);
  *(v80 + *(v78 + 44)) = 1;
  v86 = v124;
  sub_8198(v125, v124, &qword_31EBF8, &qword_279378);
  v87 = v114;
  sub_8198(v122, v114, &qword_319250, &qword_279370);
  v88 = v117;
  sub_8198(v79, v117, &qword_319248, &unk_28E7B0);
  v89 = v118;
  sub_8198(v81, v118, &qword_319248, &unk_28E7B0);
  v90 = v86;
  v91 = v119;
  sub_8198(v90, v119, &qword_31EBF8, &qword_279378);
  v92 = sub_2EF0(&qword_31EC00, &qword_279388);
  sub_8198(v87, v91 + v92[12], &qword_319250, &qword_279370);
  sub_8198(v88, v91 + v92[16], &qword_319248, &unk_28E7B0);
  sub_8198(v89, v91 + v92[20], &qword_319248, &unk_28E7B0);
  sub_8E80(v81, &qword_319248, &unk_28E7B0);
  sub_8E80(v123, &qword_319248, &unk_28E7B0);
  sub_8E80(v122, &qword_319250, &qword_279370);
  sub_8E80(v125, &qword_31EBF8, &qword_279378);
  sub_8E80(v89, &qword_319248, &unk_28E7B0);
  sub_8E80(v88, &qword_319248, &unk_28E7B0);
  sub_8E80(v87, &qword_319250, &qword_279370);
  return sub_8E80(v124, &qword_31EBF8, &qword_279378);
}

uint64_t sub_11E194@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = v3;
  v8 = sub_2EF0(&qword_31EAD8, &qword_279288);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - v10;
  v12 = *(a2 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v14);
  v15 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_11C578(v5, v15);
  (*(v9 + 16))(v11, a1, v8);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = (v13 + v16 + *(v9 + 80)) & ~*(v9 + 80);
  v18 = swift_allocObject();
  sub_11C5E0(v15, v18 + v16);
  result = (*(v9 + 32))(v18 + v17, v11, v8);
  *a3 = sub_11E84C;
  a3[1] = v18;
  return result;
}

uint64_t sub_11E370(uint64_t a1)
{
  result = sub_11E564(&qword_31EB20, type metadata accessor for AudiobookCoverEffect, &protocol conformance descriptor for AudiobookCoverEffect);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_11E3DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_2EF0(&qword_316F70, &unk_2693C0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_11E474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_2EF0(&qword_316F70, &unk_2693C0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

unint64_t sub_11E500()
{
  result = qword_31EBC0;
  if (!qword_31EBC0)
  {
    sub_2F9C(&qword_31EBC8, &qword_279308);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31EBC0);
  }

  return result;
}

uint64_t sub_11E564(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_11E5AC()
{
  v1 = (type metadata accessor for AudiobookCoverEffect(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = sub_2EF0(&qword_31EAD8, &qword_279288);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v1[8];
  sub_2EF0(&qword_316DC0, &qword_2691C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_261180();
    (*(*(v8 - 8) + 8))(v7 + v2, v8);
  }

  else
  {
  }

  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_11E758@<X0>(uint64_t *a2@<X8>)
{
  v4 = *(type metadata accessor for AudiobookCoverEffect(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = *(sub_2EF0(&qword_31EAD8, &qword_279288) - 8);
  v8 = v2 + ((v6 + *(v7 + 80)) & ~*(v7 + 80));

  return sub_11C4F8(v2 + v5, v8, a2);
}

uint64_t RefreshSeriesUberHeaderAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RefreshSeriesUberHeaderAction(0) + 20);
  v4 = sub_263AF0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for RefreshSeriesUberHeaderAction(uint64_t a1)
{
  result = qword_31EC90;
  if (!qword_31EC90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_11E924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_263AF0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_11E9AC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_263AF0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_11EA6C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_263AF0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_11EB10(uint64_t a1)
{
  result = sub_11EB94();
  if (v2 <= 0x3F)
  {
    result = sub_263AF0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_11EB94()
{
  result = qword_31C7E8;
  if (!qword_31C7E8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_31C7E8);
  }

  return result;
}

uint64_t FanView.init(model:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  type metadata accessor for ProfileRestrictions(0);
  sub_120590(&qword_326DC0, type metadata accessor for ProfileRestrictions, &protocol conformance descriptor for ProfileRestrictions);
  result = sub_261900();
  *(a2 + 16) = result;
  *(a2 + 24) = v5;
  *(a2 + 32) = v3;
  return result;
}

BOOL FanView.isCompact.getter()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) == 1)
  {
    v6 = *v0;
  }

  else
  {

    sub_264900();
    v7 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_4054(v5, 0);
    (*(v2 + 8))(v4, v1);
    v6 = v9[15];
  }

  return v6 == 0;
}

uint64_t FanView.body.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v26[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v38 = *(v1 + 4);
  v7 = v1[1];
  v36 = *v1;
  v37 = v7;
  v42 = v38;
  v32 = v38;
  v44 = *(v1 + 8);
  v8 = *v1;
  v43 = *v1;
  if (v44 == 1)
  {
    v9 = v8;
    v31 = v8;
    sub_11F1A4(&v42, &v39);
  }

  else
  {
    sub_11F1A4(&v42, &v39);
    sub_11F200(&v43, &v39);
    sub_264900();
    v10 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_8E80(&v43, &qword_31ECC8, &qword_279478);
    (*(v4 + 8))(v6, v3);
    v9 = v31;
  }

  sub_196094(v9 == 0, &v33);

  v40 = v34;
  v41 = v35;
  v11 = v34;
  v39 = v33;
  v12 = v35;
  v13 = *(v42 + 16);
  *a1 = v33;
  a1[1] = v11;
  a1[2] = v12;
  sub_2EF0(&qword_31ECD0, &unk_279480);
  v29 = 0;
  v30 = v13;
  swift_getKeyPath();
  v14 = swift_allocObject();
  v15 = v37;
  *(v14 + 16) = v36;
  *(v14 + 32) = v15;
  *(v14 + 48) = v38;
  v16 = v40;
  *(v14 + 56) = v39;
  *(v14 + 72) = v16;
  *(v14 + 88) = v41;
  sub_11F910(&v39, v28);
  sub_11F96C(&v36, v28);
  sub_2EF0(&qword_31BEA8, &qword_271FD0);
  sub_2EF0(&qword_31ECD8, &qword_2794A8);
  sub_C092C();
  sub_11F9A4();
  sub_2633B0();
  KeyPath = swift_getKeyPath();
  v28[0] = 0;
  v18 = swift_getKeyPath();
  LOBYTE(v29) = 0;
  v19 = swift_getKeyPath();
  v27 = 0;
  v20 = swift_getKeyPath();
  v26[0] = 0;
  v21 = v28[0];
  v22 = v29;
  v23 = v27;
  v24 = a1 + *(sub_2EF0(&qword_31ED08, &qword_279560) + 36);
  *v24 = KeyPath;
  v24[8] = v21;
  *(v24 + 2) = v18;
  v24[24] = v22;
  *(v24 + 4) = v19;
  v24[40] = v23;
  *(v24 + 6) = v20;
  v24[56] = 0;
  *(v24 + 57) = 1;
  result = sub_2EF0(&qword_31ED10, &qword_279568);
  *(a1 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_11F200(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_31ECC8, &qword_279478);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_11F270@<X0>(unint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a3;
  v7 = sub_261FA0();
  v44 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_2EF0(&qword_31BF28, &qword_272030);
  __chkstk_darwin(v43);
  v11 = &v41 - v10;
  v12 = sub_2EF0(&qword_31ECF0, &qword_2794B0);
  v46 = *(v12 - 8);
  v47 = v12;
  __chkstk_darwin(v12);
  v14 = &v41 - v13;
  v15 = sub_2EF0(&qword_31ECD8, &qword_2794A8);
  __chkstk_darwin(v15 - 8);
  v17 = &v41 - v16;
  v18 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v19 = a2[4];
  if (v18 >= *(v19 + 16))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v41 = v7;
  v45 = a4;
  sub_1205D8(v19 + 40 * v18 + 32, &v53);
  sub_F7CC(&v53, v61);
  sub_2E18(v61, v62);
  if ((sub_260870() & 1) == 0)
  {
    goto LABEL_6;
  }

  v20 = a2[2];
  if (v20)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v21 = v20;
    sub_260FF0();

    if ((v53 & 1) == 0)
    {
      (*(v46 + 56))(v17, 1, 1, v47);
      goto LABEL_8;
    }

LABEL_6:
    sub_2E18(v61, v62);
    sub_260950();
    v23 = v22;
    v24 = *(v42 + 8) / v22;
    sub_30CC(v61, &v53);
    CoverViewModel.CoverImageInfo.init(assetInfo:)(&v53, v51);
    *(&v52 + 1) = v24;
    sub_230A8(v51);
    v57 = v51[4];
    v58 = v51[5];
    v59 = v51[6];
    v60 = v52;
    v53 = v51[0];
    v54 = v51[1];
    v55 = v51[2];
    v56 = v51[3];
    *v11 = swift_getKeyPath();
    v11[40] = 0;
    *(v11 + 6) = swift_getKeyPath();
    v11[56] = 0;
    v25 = type metadata accessor for CoverView(0);
    v26 = v25[6];
    *&v11[v26] = swift_getKeyPath();
    sub_2EF0(&qword_316C00, &qword_26A520);
    swift_storeEnumTagMultiPayload();
    v27 = v25[7];
    *&v11[v27] = swift_getKeyPath();
    sub_2EF0(&qword_317E08, &qword_26A550);
    swift_storeEnumTagMultiPayload();
    v28 = &v11[v25[8]];
    type metadata accessor for ProfileRestrictions(0);
    sub_120590(&qword_326DC0, type metadata accessor for ProfileRestrictions, &protocol conformance descriptor for ProfileRestrictions);
    *v28 = sub_261900();
    v28[1] = v29;
    v30 = &v11[v25[9]];
    v48 = 1;
    sub_2631D0();
    v31 = v50;
    *v30 = v49;
    *(v30 + 1) = v31;
    v32 = &v11[v25[10]];
    v33 = v58;
    *(v32 + 4) = v57;
    *(v32 + 5) = v33;
    v34 = v60;
    *(v32 + 6) = v59;
    *(v32 + 7) = v34;
    v35 = v54;
    *v32 = v53;
    *(v32 + 1) = v35;
    v36 = v56;
    *(v32 + 2) = v55;
    *(v32 + 3) = v36;
    v11[v25[11]] = 0;
    v37 = &v11[*(v43 + 36)];
    *v37 = v23;
    *(v37 + 4) = 0;
    sub_2618C0();
    sub_C0C10();
    sub_120590(&qword_318438, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
    v38 = v41;
    sub_262AA0();
    (*(v44 + 8))(v9, v38);
    sub_8E80(v11, &qword_31BF28, &qword_272030);
    v39 = v47;
    *&v14[*(v47 + 36)] = -v18;
    sub_22148(v14, v17, &qword_31ECF0, &qword_2794B0);
    (*(v46 + 56))(v17, 0, 1, v39);
LABEL_8:
    sub_22148(v17, v45, &qword_31ECD8, &qword_2794A8);
    return sub_3080(v61);
  }

LABEL_11:
  type metadata accessor for ProfileRestrictions(0);
  sub_120590(&qword_326DC0, type metadata accessor for ProfileRestrictions, &protocol conformance descriptor for ProfileRestrictions);
  result = sub_2618F0();
  __break(1u);
  return result;
}

uint64_t sub_11F8B0()
{
  sub_4054(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

unint64_t sub_11F9A4()
{
  result = qword_31ECE0;
  if (!qword_31ECE0)
  {
    sub_2F9C(&qword_31ECD8, &qword_2794A8);
    sub_11FA28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31ECE0);
  }

  return result;
}

unint64_t sub_11FA28()
{
  result = qword_31ECE8;
  if (!qword_31ECE8)
  {
    sub_2F9C(&qword_31ECF0, &qword_2794B0);
    sub_2F9C(&qword_31BF28, &qword_272030);
    sub_261FA0();
    sub_C0C10();
    sub_120590(&qword_318438, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
    swift_getOpaqueTypeConformance2();
    sub_8E38(&qword_31ECF8, &qword_31ED00, &qword_2794B8, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31ECE8);
  }

  return result;
}

double sub_11FB88(uint64_t a1, char a2)
{
  result = *&a1;
  if (a2)
  {
    return 10.0;
  }

  return result;
}

void (*sub_11FBAC(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_261040();
  return sub_F4138;
}

unint64_t sub_11FC7C()
{
  result = qword_31ED18;
  if (!qword_31ED18)
  {
    sub_2F9C(&qword_31ED10, &qword_279568);
    sub_11FD34();
    sub_8E38(&qword_317418, &qword_317420, &qword_269900, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31ED18);
  }

  return result;
}

unint64_t sub_11FD34()
{
  result = qword_31ED20;
  if (!qword_31ED20)
  {
    sub_2F9C(&qword_31ED08, &qword_279560);
    sub_11FDC0();
    sub_EFAB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31ED20);
  }

  return result;
}

unint64_t sub_11FDC0()
{
  result = qword_31ED28;
  if (!qword_31ED28)
  {
    sub_2F9C(&qword_31ECD0, &unk_279480);
    sub_8E38(&qword_31ED30, &qword_31ED38, &qword_279648, &protocol conformance descriptor for _LayoutRoot<A>);
    sub_11FE78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31ED28);
  }

  return result;
}

unint64_t sub_11FE78()
{
  result = qword_31ED40;
  if (!qword_31ED40)
  {
    sub_2F9C(&qword_31ED48, &qword_279650);
    sub_11F9A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31ED40);
  }

  return result;
}

uint64_t sub_11FEFC(uint64_t a1, int a2)
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

uint64_t sub_11FF44(uint64_t result, int a2, int a3)
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

unint64_t sub_11FFA4()
{
  result = qword_31ED50;
  if (!qword_31ED50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31ED50);
  }

  return result;
}

void sub_11FFF8(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v11 = sub_261490();
  v40 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v5 + 8);
  v15 = *(v5 + 16);
  v16 = *(v5 + 24);
  v17 = *(v5 + 32);
  v47 = *(v5 + 40);
  v52.origin.x = a2;
  v52.origin.y = a3;
  v52.size.width = a4;
  v52.size.height = a5;
  if (v14 <= CGRectGetWidth(v52))
  {
    v53.origin.x = a2;
    v53.origin.y = a3;
    v53.size.width = a4;
    v53.size.height = a5;
    v20 = floor((CGRectGetWidth(v53) - v14) / v15);
    if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (v20 <= -9.22337204e18)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (v20 >= 9.22337204e18)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    sub_261570();
    sub_120590(&qword_31D960, &type metadata accessor for LayoutSubviews, &protocol conformance descriptor for LayoutSubviews);
    sub_264820();
    sub_264860();
    v22 = sub_264850();
    if (v22 >= v21)
    {
      v18 = v21;
    }

    else
    {
      v18 = v22;
    }

    if (v18 < 2)
    {
      v46 = 0.0;
      if (v18 == 1)
      {
        v19 = v14;
      }

      else
      {
        v19 = 0.0;
      }
    }

    else
    {
      v54.origin.x = a2;
      v54.origin.y = a3;
      v54.size.width = a4;
      v54.size.height = a5;
      Width = CGRectGetWidth(v54);
      v24 = (v18 - 1);
      v25 = (Width - v14) / v24;
      if (v16 < v25)
      {
        v25 = v16;
      }

      v46 = v25;
      v19 = v14 + v25 * v24;
    }
  }

  else
  {
    v18 = 0;
    v46 = 0.0;
    v19 = 0.0;
  }

  v55.origin.x = a2;
  v55.origin.y = a3;
  v55.size.width = a4;
  v55.size.height = a5;
  v26 = CGRectGetWidth(v55);
  v56.origin.x = a2;
  v56.origin.y = a3;
  v56.size.width = a4;
  v56.size.height = a5;
  MinX = CGRectGetMinX(v56);
  if (v18 < 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v48 = v11;
  v49 = a1;
  if (v18)
  {
    v45 = *(v17 + 16);
    if (!v45)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v28 = 0;
    v29 = MinX + (v26 - v19) * 0.5;
    v44 = v14;
    v42 = v40 + 8;
    v43 = v17 + 32;
    v41 = v18;
    v30 = (v40 + 8);
    while (v28 % v45 < *(v17 + 16))
    {
      sub_261580();
      v51 = 0;
      LOBYTE(v50) = 1;
      sub_261470();
      v31 = *v30;
      v32 = v17;
      v33 = v48;
      (*v30)(v13, v48);
      v57.origin.x = a2;
      v57.origin.y = a3;
      v57.size.width = a4;
      v57.size.height = a5;
      CGRectGetMinY(v57);
      v58.origin.x = a2;
      v58.origin.y = a3;
      v58.size.width = a4;
      v58.size.height = a5;
      CGRectGetHeight(v58);
      sub_261580();
      sub_2636D0();
      v51 = 0;
      LOBYTE(v50) = 1;
      v18 = v41;
      sub_261480();
      v34 = v33;
      v17 = v32;
      v31(v13, v34);
      v29 = v46 + v29;
      if (v18 == ++v28)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

LABEL_23:
  sub_261570();
  sub_120590(&qword_31D960, &type metadata accessor for LayoutSubviews, &protocol conformance descriptor for LayoutSubviews);
  sub_264820();
  sub_264860();
  v35 = sub_264850();
  if (v35 < v18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v36 = v35;
  v37 = v48;
  if (v18 != v35)
  {
    if (v18 >= v35)
    {
LABEL_37:
      __break(1u);
      return;
    }

    v38 = (v40 + 8);
    do
    {
      sub_261580();
      v59.origin.x = a2;
      v59.origin.y = a3;
      v59.size.width = a4;
      v59.size.height = a5;
      CGRectGetMaxX(v59);
      v60.origin.x = a2;
      v60.origin.y = a3;
      v60.size.width = a4;
      v60.size.height = a5;
      CGRectGetMaxY(v60);
      sub_2636F0();
      v51 = 0;
      LOBYTE(v50) = 0;
      sub_261480();
      (*v38)(v13, v37);
      ++v18;
    }

    while (v36 != v18);
  }
}

uint64_t sub_120590(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double View.figaroLocationPositionOverride(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(swift_allocObject() + 16) = a1;
  sub_262940();

  return result;
}

uint64_t sub_1206EC()
{
  v0 = sub_2EF0(&qword_31ED88, &qword_279840);
  sub_B600(v0, qword_31ED58);
  sub_B080(v0, qword_31ED58);
  sub_2EF0(&qword_31EDA0, &unk_28BAC0);
  return sub_263F20();
}

uint64_t static MetricsFieldsContext.Property<A>.locationStack.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_315A30 != -1)
  {
    swift_once();
  }

  v2 = sub_2EF0(&qword_31ED88, &qword_279840);
  v3 = sub_B080(v2, qword_31ED58);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_12082C()
{
  v0 = sub_2EF0(&qword_31ED90, &unk_28BAB0);
  sub_B600(v0, qword_31ED70);
  sub_B080(v0, qword_31ED70);
  return sub_263F20();
}

uint64_t static MetricsFieldsContext.Property<A>.locationPositionOverride.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_315A38 != -1)
  {
    swift_once();
  }

  v2 = sub_2EF0(&qword_31ED90, &unk_28BAB0);
  v3 = sub_B080(v2, qword_31ED70);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

double View.figaroLocation(_:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[9];
  v17[8] = a1[8];
  v17[9] = v4;
  v17[10] = a1[10];
  v5 = a1[5];
  v17[4] = a1[4];
  v17[5] = v5;
  v6 = a1[7];
  v17[6] = a1[6];
  v17[7] = v6;
  v7 = a1[1];
  v17[0] = *a1;
  v17[1] = v7;
  v8 = a1[3];
  v17[2] = a1[2];
  v17[3] = v8;
  v9 = swift_allocObject();
  v10 = a1[9];
  v9[9] = a1[8];
  v9[10] = v10;
  v9[11] = a1[10];
  v11 = a1[5];
  v9[5] = a1[4];
  v9[6] = v11;
  v12 = a1[7];
  v9[7] = a1[6];
  v9[8] = v12;
  v13 = a1[1];
  v9[1] = *a1;
  v9[2] = v13;
  v14 = a1[3];
  v9[3] = a1[2];
  v9[4] = v14;
  sub_120DB4(v17, &v16);
  sub_262940();

  return result;
}

double sub_120A50(uint64_t a1, __int128 *a2)
{
  v3 = a2[9];
  v37 = a2[8];
  v38 = v3;
  v39 = a2[10];
  v4 = a2[5];
  v33 = a2[4];
  v34 = v4;
  v5 = a2[7];
  v35 = a2[6];
  v36 = v5;
  v6 = a2[1];
  v29 = *a2;
  v30 = v6;
  v7 = a2[3];
  v31 = a2[2];
  v32 = v7;
  if (sub_120E68(&v29) != 1)
  {
    v48 = v37;
    v49 = v38;
    v50 = v39;
    v44 = v33;
    v45 = v34;
    v46 = v35;
    v47 = v36;
    v40 = v29;
    v41 = v30;
    v42 = v31;
    v43 = v32;
    v9 = a2[9];
    v28[8] = a2[8];
    v28[9] = v9;
    v28[10] = a2[10];
    v10 = a2[5];
    v28[4] = a2[4];
    v28[5] = v10;
    v11 = a2[7];
    v28[6] = a2[6];
    v28[7] = v11;
    v12 = a2[1];
    v28[0] = *a2;
    v28[1] = v12;
    v13 = a2[3];
    v28[2] = a2[2];
    v28[3] = v13;
    sub_97590(v28, &v27);
    if (qword_315A30 != -1)
    {
      swift_once();
    }

    v14 = sub_2EF0(&qword_31ED88, &qword_279840);
    sub_B080(v14, qword_31ED58);
    sub_2EF0(&qword_31EDA0, &unk_28BAC0);
    sub_263F50();
    if (v27)
    {
      v15 = v27;
    }

    else
    {
      v15 = _swiftEmptyArrayStorage;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_E92D0(0, *(v15 + 2) + 1, 1, v15);
    }

    v17 = *(v15 + 2);
    v16 = *(v15 + 3);
    if (v17 >= v16 >> 1)
    {
      v15 = sub_E92D0((v16 > 1), v17 + 1, 1, v15);
    }

    *(v15 + 2) = v17 + 1;
    v18 = &v15[176 * v17];
    v19 = v40;
    v20 = v42;
    *(v18 + 3) = v41;
    *(v18 + 4) = v20;
    *(v18 + 2) = v19;
    v21 = v43;
    v22 = v44;
    v23 = v46;
    *(v18 + 7) = v45;
    *(v18 + 8) = v23;
    *(v18 + 5) = v21;
    *(v18 + 6) = v22;
    v24 = v47;
    v25 = v48;
    v26 = v50;
    *(v18 + 11) = v49;
    *(v18 + 12) = v26;
    *(v18 + 9) = v24;
    *(v18 + 10) = v25;
    v27 = v15;
    sub_263F30();
  }

  return result;
}

uint64_t sub_120C84(uint64_t a1, uint64_t a2)
{
  if (qword_315A38 != -1)
  {
    swift_once();
  }

  v2 = sub_2EF0(&qword_31ED90, &unk_28BAB0);
  sub_B080(v2, qword_31ED70);
  return sub_263F30();
}

uint64_t sub_120D24()
{
  if (*(v0 + 136))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_120DB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_31ED98, &qword_279848);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_120E68(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_120E80@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_261C90();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_8198(v2, v11, &qword_31F098, &qword_279D20);
  if (v13 == 1)
  {
    v9 = v11[1];
    *a1 = v11[0];
    *(a1 + 16) = v9;
    *(a1 + 32) = v12;
  }

  else
  {
    sub_264900();
    v10 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_120FF4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_8198(v1 + 48, v10, &qword_31F090, &qword_279D18);
  if (v12 == 1)
  {
    v8 = v10[1];
    *a1 = v10[0];
    *(a1 + 16) = v8;
    *(a1 + 32) = v11;
  }

  else
  {
    sub_264900();
    v9 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t SeriesQuickActionButtonView.init(model:contextActionMenuView:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = swift_getKeyPath();
  *(a4 + 40) = 0;
  *(a4 + 48) = swift_getKeyPath();
  *(a4 + 88) = 256;
  type metadata accessor for ProfileRestrictions(0);
  sub_125CF8(&qword_326DC0, type metadata accessor for ProfileRestrictions, &protocol conformance descriptor for ProfileRestrictions);
  *(a4 + 96) = sub_261900();
  *(a4 + 104) = v8;
  v9 = type metadata accessor for SeriesQuickActionButtonView(0);
  result = sub_125C90(a1, a4 + *(v9 + 32), type metadata accessor for SeriesQuickActionButtonViewModel);
  v11 = (a4 + *(v9 + 36));
  *v11 = a2;
  v11[1] = a3;
  return result;
}

uint64_t SeriesQuickActionButtonView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v457 = a1;
  v1 = sub_2617C0();
  v395 = *(v1 - 8);
  v396 = v1;
  __chkstk_darwin(v1);
  v394 = &v345 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v428 = sub_2EF0(&qword_31EDA8, &qword_2798A0);
  v398 = *(v428 - 8);
  __chkstk_darwin(v428);
  v397 = &v345 - v3;
  v362 = sub_2EF0(&qword_31EDB0, &qword_2798A8);
  __chkstk_darwin(v362);
  v354 = &v345 - v4;
  v424 = sub_2EF0(&qword_31EDB8, &qword_2798B0);
  __chkstk_darwin(v424);
  v425 = &v345 - v5;
  v456 = sub_2EF0(&qword_31EDC0, &qword_2798B8);
  __chkstk_darwin(v456);
  v427 = &v345 - v6;
  v357 = sub_2EF0(&qword_31EDC8, &qword_2798C0);
  __chkstk_darwin(v357);
  v358 = &v345 - v7;
  v434 = type metadata accessor for QuickActionBuyButtonViewModel(0);
  __chkstk_darwin(v434);
  v435 = &v345 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v400 = type metadata accessor for QuickActionBuyButtonView(0);
  __chkstk_darwin(v400);
  v436 = &v345 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2EF0(&qword_31EDD0, &qword_2798C8);
  v401 = *(v10 - 8);
  v402 = v10;
  __chkstk_darwin(v10);
  v399 = &v345 - v11;
  v12 = sub_2EF0(&qword_31EDD8, &qword_2798D0);
  v404 = *(v12 - 8);
  v405 = v12;
  __chkstk_darwin(v12);
  v403 = &v345 - v13;
  v414 = sub_2EF0(&qword_31EDE0, &qword_2798D8);
  __chkstk_darwin(v414);
  v416 = &v345 - v14;
  v422 = sub_2EF0(&qword_31EDE8, &qword_2798E0);
  __chkstk_darwin(v422);
  v356 = &v345 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v359 = &v345 - v17;
  v374 = sub_2EF0(&qword_31EDF0, &unk_2798E8);
  __chkstk_darwin(v374);
  v355 = &v345 - v18;
  v19 = sub_2EF0(&qword_31A0C8, &qword_26E2C0);
  __chkstk_darwin(v19 - 8);
  v376 = &v345 - v20;
  v368 = sub_2EF0(&qword_31EDF8, &qword_2798F8);
  __chkstk_darwin(v368);
  v369 = &v345 - v21;
  v415 = sub_261FA0();
  v413 = *(v415 - 8);
  __chkstk_darwin(v415);
  v412 = &v345 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v411 = sub_261760();
  v410 = *(v411 - 8);
  __chkstk_darwin(v411);
  v409 = &v345 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_263AF0();
  __chkstk_darwin(v24 - 8);
  v349 = &v345 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v419 = sub_2601E0();
  v418 = *(v419 - 8);
  __chkstk_darwin(v419);
  v353 = &v345 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_260560();
  v351 = *(v27 - 8);
  v352 = v27;
  __chkstk_darwin(v27);
  v350 = &v345 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v348 = sub_260600();
  v346 = *(v348 - 8);
  __chkstk_darwin(v348);
  v347 = &v345 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v423 = type metadata accessor for CardInfo(0);
  v442 = *(v423 - 8);
  __chkstk_darwin(v423);
  v393 = &v345 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v438 = sub_2EF0(&qword_31EE00, &qword_279900);
  __chkstk_darwin(v438);
  v437 = &v345 - v31;
  v32 = sub_2EF0(&qword_31EE08, &qword_279908);
  v407 = *(v32 - 8);
  v408 = v32;
  __chkstk_darwin(v32);
  v406 = &v345 - v33;
  v420 = sub_2EF0(&qword_31EE10, &qword_279910);
  __chkstk_darwin(v420);
  v417 = &v345 - v34;
  v366 = sub_2EF0(&qword_31EE18, &qword_279918);
  __chkstk_darwin(v366);
  v360 = &v345 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v363 = &v345 - v37;
  v367 = sub_2EF0(&qword_31EE20, &qword_279920);
  v365 = *(v367 - 8);
  __chkstk_darwin(v367);
  v364 = &v345 - v38;
  v39 = sub_2EF0(&qword_31EE28, &qword_279928);
  v372 = *(v39 - 8);
  v373 = v39;
  __chkstk_darwin(v39);
  v371 = &v345 - v40;
  v432 = sub_2EF0(&qword_31EE30, &unk_279930);
  __chkstk_darwin(v432);
  v370 = &v345 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v375 = &v345 - v43;
  v388 = type metadata accessor for ListItemViewModel(0);
  v390 = *(v388 - 8);
  __chkstk_darwin(v388);
  v391 = v44;
  v392 = &v345 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v443 = &v345 - v46;
  v47 = sub_2607D0();
  v384 = *(v47 - 8);
  v385 = v47;
  __chkstk_darwin(v47);
  v383 = &v345 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for ShrinkableText(0);
  __chkstk_darwin(v49 - 8);
  v421 = &v345 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v441 = sub_2605E0();
  v440 = *(v441 - 8);
  __chkstk_darwin(v441);
  v439 = &v345 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_2EF0(&qword_31A480, &qword_273520);
  __chkstk_darwin(v52 - 8);
  v361 = &v345 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v389 = &v345 - v55;
  __chkstk_darwin(v56);
  v452 = &v345 - v57;
  v453 = sub_2EF0(&qword_31EE38, &qword_279940);
  __chkstk_darwin(v453);
  v455 = &v345 - v58;
  v429 = sub_2EF0(&qword_31EE40, &qword_279948);
  __chkstk_darwin(v429);
  v430 = &v345 - v59;
  v454 = sub_2EF0(&qword_31EE48, &qword_279950);
  __chkstk_darwin(v454);
  v431 = &v345 - v60;
  v61 = type metadata accessor for SeriesQuickActionButtonView(0);
  v62 = v61 - 8;
  v451 = *(v61 - 8);
  __chkstk_darwin(v61);
  v458 = v63;
  v459 = &v345 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v445 = sub_2604E0();
  v444 = *(v445 - 8);
  __chkstk_darwin(v445);
  v460 = &v345 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v449 = sub_262730();
  v448 = *(v449 - 8);
  __chkstk_darwin(v449);
  v450 = (&v345 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0));
  v66 = sub_264010();
  v380 = *(v66 - 8);
  v381 = v66;
  __chkstk_darwin(v66);
  v68 = &v345 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_263FA0();
  v378 = *(v69 - 8);
  v379 = v69;
  __chkstk_darwin(v69);
  v71 = &v345 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v446 = type metadata accessor for ButtonViewModel.Content(0);
  __chkstk_darwin(v446);
  v433 = (&v345 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0));
  v447 = type metadata accessor for ButtonViewModel(0);
  __chkstk_darwin(v447);
  v74 = &v345 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v75);
  v77 = &v345 - v76;
  __chkstk_darwin(v78);
  v80 = &v345 - v79;
  v461 = type metadata accessor for ButtonView(0);
  __chkstk_darwin(v461);
  v377 = &v345 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v82);
  v382 = &v345 - v83;
  v426 = sub_2EF0(&qword_31EE50, &qword_279958);
  v387 = *(v426 - 8);
  __chkstk_darwin(v426);
  v386 = &v345 - v84;
  v85 = type metadata accessor for SeriesQuickActionButtonViewModel.Style(0);
  __chkstk_darwin(v85);
  v87 = (&v345 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0));
  v88 = v462 + *(v62 + 40);
  sub_126808(v88, v87, type metadata accessor for SeriesQuickActionButtonViewModel.Style);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      LODWORD(v462) = *(v462 + 89);
      LODWORD(v460) = _UISolariumEnabled() ^ 1;
      v114 = v447;
      v490._countAndFlagsBits = 32;
      v490._object = 0xE100000000000000;
      sub_2645A0(v490, 20);
      sub_260BC0();

      swift_storeEnumTagMultiPayload();
      v115 = &v74[v114[13]];
      type metadata accessor for ButtonViewModel.ActionKind(0);
      *v115 = 0u;
      *(v115 + 1) = 0u;
      *(v115 + 4) = 0;
      swift_storeEnumTagMultiPayload();
      *&v463 = 0x403C000000000000;
      v116 = enum case for Font.TextStyle.subheadline(_:);
      v117 = *(v448 + 104);
      v118 = v450;
      LODWORD(v459) = enum case for Font.TextStyle.subheadline(_:);
      v119 = v449;
      v117(v450, enum case for Font.TextStyle.subheadline(_:), v449);
      sub_40130();
      sub_2612E0();
      *&v463 = 0x4008000000000000;
      v120 = v116;
      v121 = v119;
      v117(v118, v120, v119);
      v458 = v117;
      sub_2612E0();
      v122 = v114[6];
      *&v74[v122] = swift_getKeyPath();
      sub_2EF0(&qword_316C00, &qword_26A520);
      swift_storeEnumTagMultiPayload();
      v123 = v114[14];
      v124 = sub_260BD0();
      (*(*(v124 - 8) + 56))(&v74[v123], 1, 1, v124);
      v74[v114[7]] = v462;
      v74[v114[8]] = v460;
      v74[v114[9]] = 0;
      v125 = &v74[v114[10]];
      *v125 = 2;
      *(v125 + 1) = 0;
      *(v125 + 2) = 0;
      *(v125 + 3) = 0;
      v74[v114[12]] = 0;
      *&v463 = 0x4020000000000000;
      v126 = v459;
      v127 = v377;
      v117(v118, v459, v119);
      sub_2612E0();
      v128 = v461;
      *&v463 = 0x3FF8000000000000;
      v458(v118, v126, v121);
      sub_2612E0();
      v129 = *(v128 + 24);
      *(v127 + v129) = swift_getKeyPath();
      sub_2EF0(&qword_319B00, &unk_26EA40);
      swift_storeEnumTagMultiPayload();
      v130 = v128;
      sub_125C90(v74, v127 + *(v128 + 28), type metadata accessor for ButtonViewModel);
      v131 = v394;
      sub_2617A0();
      v132 = sub_125CF8(&qword_31A2D0, type metadata accessor for ButtonView, &protocol conformance descriptor for ButtonView);
      v133 = v397;
      sub_262E70();
      (*(v395 + 8))(v131, v396);
      sub_1288E0(v127, type metadata accessor for ButtonView);
      v134 = v398;
      v135 = v428;
      (*(v398 + 16))(v425, v133, v428);
      swift_storeEnumTagMultiPayload();
      sub_125D40();
      *&v463 = v130;
      *(&v463 + 1) = v132;
      swift_getOpaqueTypeConformance2();
      v136 = v427;
      sub_261F80();
      sub_8198(v136, v455, &qword_31EDC0, &qword_2798B8);
      swift_storeEnumTagMultiPayload();
      sub_1260B4();
      sub_126708();
      sub_261F80();
      sub_8E80(v136, &qword_31EDC0, &qword_2798B8);
      return (*(v134 + 8))(v133, v135);
    }

    sub_F7CC(v87, &v463);
    sub_30CC(&v463, v487);
    v96 = v462;
    v97 = *(v462 + 89);
    sub_2E18(&v463, *(&v464 + 1));
    v98 = sub_260870();
    v345 = v88;
    LODWORD(v452) = v97;
    if (v98)
    {
      v99 = *(v96 + 96);
      if (!v99)
      {
        goto LABEL_44;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v100 = v99;
      sub_260FF0();

      v101 = v483[0];
    }

    else
    {
      v101 = 1;
    }

    LODWORD(v443) = v101;
    sub_120E80(v483);
    sub_30CC(v487, v482);
    sub_8198(v483, v480, &qword_31D240, &qword_279000);
    v181 = v434;
    v182 = v435;
    v183 = (v435 + *(v434 + 28));
    *v183 = 0;
    v183[1] = 0;
    v184 = v181;
    v185 = v182 + v181[8];
    v186 = v182;
    KeyPath = swift_getKeyPath();
    v486 = 0;
    *v185 = KeyPath;
    *(v185 + 66) = 0;
    v188 = v184[9];
    *(v186 + v188) = swift_getKeyPath();
    sub_2EF0(&qword_317E08, &qword_26A550);
    swift_storeEnumTagMultiPayload();
    v189 = (v186 + v184[10]);
    type metadata accessor for ProfileRestrictions(0);
    sub_125CF8(&qword_326DC0, type metadata accessor for ProfileRestrictions, &protocol conformance descriptor for ProfileRestrictions);
    *v189 = sub_261900();
    v189[1] = v190;
    sub_30CC(v482, v186 + v184[5]);
    LODWORD(v442) = _UISolariumEnabled() ^ 1;
    v191 = v447;
    sub_260BC0();
    swift_storeEnumTagMultiPayload();
    v192 = &v77[v191[13]];
    type metadata accessor for ButtonViewModel.ActionKind(0);
    *v192 = 0u;
    *(v192 + 1) = 0u;
    *(v192 + 4) = 0;
    swift_storeEnumTagMultiPayload();
    v474 = 0x403C000000000000;
    v193 = enum case for Font.TextStyle.subheadline(_:);
    v194 = *(v448 + 104);
    v195 = v450;
    v196 = v449;
    v194(v450, enum case for Font.TextStyle.subheadline(_:), v449);
    sub_40130();
    sub_2612E0();
    v474 = 0x4008000000000000;
    v194(v195, v193, v196);
    sub_2612E0();
    sub_3080(v482);
    sub_8E80(v483, &qword_31D240, &qword_279000);
    sub_3080(v487);
    v197 = v191[6];
    *&v77[v197] = swift_getKeyPath();
    sub_2EF0(&qword_316C00, &qword_26A520);
    swift_storeEnumTagMultiPayload();
    v198 = v191[14];
    v199 = sub_260BD0();
    (*(*(v199 - 8) + 56))(&v77[v198], 1, 1, v199);
    v77[v191[7]] = v452;
    v77[v191[8]] = v442;
    v77[v191[9]] = 0;
    v200 = &v77[v191[10]];
    *v200 = 2;
    *(v200 + 1) = 0;
    *(v200 + 2) = 0;
    *(v200 + 3) = 0;
    v77[v191[12]] = v443;
    v201 = v435;
    sub_125C90(v77, v435, type metadata accessor for ButtonViewModel);
    v202 = v201 + *(v434 + 24);
    v203 = v480[1];
    *v202 = v480[0];
    *(v202 + 16) = v203;
    *(v202 + 32) = v481;
    sub_125C90(v201, v436, type metadata accessor for QuickActionBuyButtonViewModel);
    v204 = sub_2604A0();
    v205 = v460;
    sub_2604C0();
    v206 = v459;
    sub_126808(v462, v459, type metadata accessor for SeriesQuickActionButtonView);
    v207 = (*(v451 + 80) + 16) & ~*(v451 + 80);
    v208 = swift_allocObject();
    sub_125C90(v206, v208 + v207, type metadata accessor for SeriesQuickActionButtonView);
    v209 = sub_125CF8(&qword_31EE70, type metadata accessor for QuickActionBuyButtonView, &protocol conformance descriptor for QuickActionBuyButtonView);
    v210 = sub_125CF8(&qword_31EE78, &type metadata accessor for SeriesData, &protocol conformance descriptor for SeriesData);
    v344 = sub_125CF8(&qword_31EE80, &type metadata accessor for SeriesData, &protocol conformance descriptor for SeriesData);
    v212 = v399;
    v211 = v400;
    v213 = v436;
    sub_262960();

    (*(v444 + 8))(v205, v445);
    sub_1288E0(v213, type metadata accessor for QuickActionBuyButtonView);
    *(swift_allocObject() + 16) = 1;
    v474 = v211;
    v475 = v204;
    v476 = v209;
    v477 = v210;
    v478 = v344;
    swift_getOpaqueTypeConformance2();
    v214 = v402;
    v215 = v403;
    sub_262940();

    (*(v401 + 8))(v212, v214);
    v216 = *(type metadata accessor for SeriesQuickActionButtonViewModel(0) + 24);
    v217 = v416;
    v218 = &v416[*(v414 + 36)];
    v219 = type metadata accessor for RefreshOnAssetCompletionChangeViewModifier(0);
    sub_30CC(v345 + v216, &v218[v219[7]]);
    v220 = swift_getKeyPath();
    v479 = 0;
    *v218 = v220;
    v218[66] = 0;
    v221 = v219[5];
    *&v218[v221] = swift_getKeyPath();
    sub_2EF0(&qword_318150, &qword_279A70);
    swift_storeEnumTagMultiPayload();
    v222 = &v218[v219[6]];
    *v222 = swift_getKeyPath();
    v222[40] = 0;
    (*(v404 + 32))(v217, v215, v405);
    sub_2E18(&v463, *(&v464 + 1));
    v223 = sub_2606E0();
    v225 = v224;
    sub_120FF4(&v474);
    if (v477)
    {
      sub_2EF0(&qword_317240, &qword_269790);
      v226 = swift_allocObject();
      *(v226 + 16) = xmmword_267D30;
      *(v226 + 32) = v223;
      v227 = v226 + 32;
      *(v226 + 40) = v225;
      v228 = sub_127F84(v226);
      swift_setDeallocating();
      sub_12801C(v227);
      swift_deallocClassInstance();
      v229 = v356;
      if (qword_315930 != -1)
      {
        swift_once();
      }

      if (byte_31C408 == 1 && (v230 = [objc_opt_self() standardUserDefaults], v231 = sub_264420(), v232 = objc_msgSend(v230, "integerForKey:", v231), v230, v231, (v232 & 0x20) != 0))
      {

        sub_8198(v217, v358, &qword_31EDE0, &qword_2798D8);
        swift_storeEnumTagMultiPayload();
        sub_125DCC();
        sub_125E58();
        sub_261F80();
      }

      else
      {
        sub_30CC(&v474, v473);
        v233 = v354;
        sub_1A7A30(v228, v473, &v354[*(v362 + 36)]);
        sub_8198(v217, v233, &qword_31EDE0, &qword_2798D8);
        sub_8198(v233, v358, &qword_31EDB0, &qword_2798A8);
        swift_storeEnumTagMultiPayload();
        sub_125DCC();
        sub_125E58();
        sub_261F80();
        sub_8E80(v233, &qword_31EDB0, &qword_2798A8);
      }

      sub_8E80(v217, &qword_31EDE0, &qword_2798D8);
      v340 = v359;
      sub_22148(v229, v359, &qword_31EDE8, &qword_2798E0);
      sub_3080(&v474);
      sub_8198(v340, v425, &qword_31EDE8, &qword_2798E0);
      swift_storeEnumTagMultiPayload();
      sub_125D40();
      v341 = sub_125CF8(&qword_31A2D0, type metadata accessor for ButtonView, &protocol conformance descriptor for ButtonView);
      v474 = v461;
      v475 = v341;
      swift_getOpaqueTypeConformance2();
      v342 = v427;
      sub_261F80();
      sub_8198(v342, v455, &qword_31EDC0, &qword_2798B8);
      swift_storeEnumTagMultiPayload();
      sub_1260B4();
      sub_126708();
      sub_261F80();
      sub_8E80(v342, &qword_31EDC0, &qword_2798B8);
      sub_8E80(v340, &qword_31EDE8, &qword_2798E0);
      goto LABEL_40;
    }

LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (EnumCaseMultiPayload)
  {
    v102 = sub_2EF0(&qword_31EED0, &qword_279A38);
    v103 = *(v102 + 48);
    v104 = *(v102 + 64);
    sub_F7CC(v87, v487);
    sub_22148(v87 + v103, v452, &qword_31A480, &qword_273520);
    (*(v440 + 32))(v439, v87 + v104, v441);
    sub_2E18(v487, v488);
    v105 = sub_2608F0();
    v107 = v106;
    sub_2E18(v487, v488);
    v108 = v383;
    sub_260940();
    sub_2E18(v487, v488);
    sub_260860();
    v109 = sub_2609D0();
    v111 = v110;
    if (v109 == sub_2609D0() && v111 == v112)
    {
      v113 = v88;
    }

    else
    {
      v113 = v88;
      sub_264F10();
    }

    v138 = v421;
    static SeriesQuickActionButtonViewModel.preheader(for:seriesOrdering:isAudiobook:)(v105, v107, v108, v421);

    (*(v384 + 8))(v108, v385);
    sub_30CC(v487, &v463);
    *(&v465 + 1) = 1;
    LOBYTE(v466) = 4;
    *(&v466 + 1) = 0;
    LOWORD(v467) = 255;
    sub_2E18(v487, v488);
    v139 = sub_2606E0();
    v141 = v140;
    v142 = v443;
    sub_3E840(&v463, v443 + 8);
    static ListItemMetadata.seriesHeaderQuickActionButton(assetInfo:eyebrowText:)(v487, v138, v142 + 80);
    v484 = &type metadata for ListItemAccessoryBuyButton;
    v485 = sub_825A0();
    v143 = swift_allocObject();
    *v483 = v143;
    sub_30CC(v487, v143 + 32);
    *(v143 + 16) = swift_getKeyPath();
    *(v143 + 24) = 0;
    sub_82640(&v463);
    sub_30CC(v487, v142 + 408);
    v144 = v388;
    v145 = *(v388 + 40);
    sub_8198(v452, v142 + v145, &qword_31A480, &qword_273520);
    *(v142 + 360) = 0u;
    *(v142 + 376) = 0u;
    *(v142 + 392) = 0;
    *v142 = 1;
    sub_82704(v483, v142 + 360);
    *(v142 + 400) = 0;
    v146 = v142 + *(v144 + 44);
    *(v146 + 96) = 0u;
    *(v146 + 112) = 0u;
    *(v146 + 64) = 0u;
    *(v146 + 80) = 0u;
    *(v146 + 32) = 0u;
    *(v146 + 48) = 0u;
    *v146 = xmmword_26F1B0;
    *(v146 + 16) = 0u;
    *(v146 + 128) = v139;
    *(v146 + 136) = v141;
    *(v146 + 144) = 2;
    v147 = &v437[*(v438 + 48)];
    v449 = sub_2EF0(&qword_31EED8, &qword_279B28);
    v147[3] = v449;
    v147[4] = sub_8E38(&qword_31EEE0, &qword_31EED8, &qword_279B28, &unk_268B6C);
    v148 = sub_10934(v147);
    v149 = sub_2610B0();
    v150 = *(*(v149 - 8) + 56);
    v448 = v148;
    v150(v148, 1, 1, v149);
    v151 = (v113 + *(type metadata accessor for SeriesQuickActionButtonViewModel(0) + 24));
    v152 = v151[3];
    v450 = v151;
    sub_2E18(v151, v152);
    v153 = sub_2606F0();
    v155 = v154;
    v156 = v389;
    sub_8198(v142 + v145, v389, &qword_31A480, &qword_273520);
    v157 = *(v442 + 48);
    v442 += 48;
    v447 = v157;
    if ((v157)(v156, 1, v423) == 1)
    {
      sub_8E80(v156, &qword_31A480, &qword_273520);
      sub_263AC0();
      v484 = sub_263890();
      v485 = &protocol witness table for EmptyAction;
      sub_10934(v483);
      sub_263880();
    }

    else
    {
      v234 = v393;
      sub_125C90(v156, v393, type metadata accessor for CardInfo);
      sub_2E18(v487, v488);
      v235 = sub_2606E0();
      v446 = v236;
      v237 = type metadata accessor for FlowAction(0);
      v484 = v237;
      v485 = sub_125CF8(&qword_31C450, type metadata accessor for FlowAction, &protocol conformance descriptor for FlowAction);
      v238 = sub_10934(v483);
      sub_263AC0();
      v239 = v237[6];
      (*(v346 + 104))(v347, enum case for ClickData.TargetType.navigate(_:), v348);
      (*(v351 + 104))(v350, enum case for LinkActionType.click(_:), v352);
      sub_260610();
      v240 = sub_260620();
      (*(*(v240 - 8) + 56))(v238 + v239, 0, 1, v240);
      v241 = (v238 + v237[7]);
      v241[3] = type metadata accessor for FlowAction.NewSingleCardDestination(0);
      v241[4] = &protocol witness table for FlowAction.NewSingleCardDestination;
      v242 = sub_10934(v241);
      sub_126808(v234, v242, type metadata accessor for CardInfo);
      v463 = xmmword_273500;
      *&v464 = v153;
      *(&v464 + 1) = v155;
      v465 = 0u;
      v466 = 0u;
      v467 = 0u;
      v468 = 0u;
      v469 = 0u;
      v470 = 0u;
      *&v471 = v235;
      *(&v471 + 1) = v446;
      v472 = 3;
      KeyedEncodingContainer.encode<A>(_:forKey:)();

      v243 = v353;
      sub_2601D0();
      v244 = sub_2601C0();
      v246 = v245;
      v446 = v155;
      v247 = *(v418 + 8);
      v248 = v419;
      v247(v243, v419);
      *v238 = v244;
      v238[1] = v246;
      v249 = v237[11];
      *(v238 + v249) = 0;
      sub_2601D0();
      v250 = sub_2601C0();
      v252 = v251;
      v247(v243, v248);

      *v238 = v250;
      v238[1] = v252;
      v253 = v238 + v237[8];
      v254 = v464;
      *v253 = v463;
      *(v253 + 1) = v254;
      v255 = v465;
      v256 = v466;
      v257 = v468;
      *(v253 + 4) = v467;
      *(v253 + 5) = v257;
      *(v253 + 2) = v255;
      *(v253 + 3) = v256;
      v258 = v469;
      v259 = v470;
      v260 = v471;
      v253[144] = v472;
      *(v253 + 7) = v259;
      *(v253 + 8) = v260;
      *(v253 + 6) = v258;
      v261 = (v238 + v237[9]);
      *v261 = 0;
      v261[1] = 0;
      v262 = v238 + v237[10];
      strcpy(v262, "cardsPresent");
      v262[13] = 0;
      *(v262 + 7) = -5120;
      *(v238 + v249) = 0;
      sub_1288E0(v393, type metadata accessor for CardInfo);
    }

    v263 = v462;
    v264 = v438;
    v265 = v437;
    v266 = &v437[*(v438 + 52)];
    v267 = v484;
    v268 = v485;
    v269 = sub_2E18(v483, v484);
    v266[3] = v267;
    v266[4] = v268[1];
    v270 = sub_10934(v266);
    (*(v267[-1].Description + 2))(v270, v269, v267);
    v271 = v392;
    sub_126808(v443, v392, type metadata accessor for ListItemViewModel);
    v272 = v459;
    sub_126808(v263, v459, type metadata accessor for SeriesQuickActionButtonView);
    v273 = (*(v390 + 80) + 16) & ~*(v390 + 80);
    v274 = (v391 + *(v451 + 80) + v273) & ~*(v451 + 80);
    v451 = *(v451 + 80);
    v275 = swift_allocObject();
    sub_125C90(v271, v275 + v273, type metadata accessor for ListItemViewModel);
    sub_125C90(v272, v275 + v274, type metadata accessor for SeriesQuickActionButtonView);
    sub_2604C0();
    sub_260420();
    v276 = v264;
    v277 = v265 + v264[9];
    *v277 = swift_getKeyPath();
    *(v277 + 8) = 0;
    v278 = v264[10];
    *(v265 + v278) = swift_getKeyPath();
    sub_2EF0(&qword_316930, &qword_2689A0);
    swift_storeEnumTagMultiPayload();
    v279 = v265 + v264[11];
    *v279 = swift_getKeyPath();
    *(v279 + 40) = 0;
    v280 = (v448 + *(v449 + 36));
    *v280 = sub_128558;
    v280[1] = v275;
    sub_3080(v483);
    v281 = v409;
    sub_261750();
    v282 = sub_8E38(&qword_31EEC0, &qword_31EE00, &qword_279900, &protocol conformance descriptor for BooksActionButton<A>);
    v283 = sub_125CF8(&qword_319400, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    v284 = v406;
    v285 = v411;
    sub_262A50();
    (*(v410 + 8))(v281, v285);
    sub_8E80(v265, &qword_31EE00, &qword_279900);
    v286 = v412;
    sub_2618C0();
    *&v463 = v276;
    *(&v463 + 1) = v285;
    *&v464 = v282;
    *(&v464 + 1) = v283;
    swift_getOpaqueTypeConformance2();
    sub_125CF8(&qword_318438, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
    v287 = v417;
    v288 = v408;
    v289 = v415;
    sub_262AA0();
    (*(v413 + 8))(v286, v289);
    (*(v407 + 8))(v284, v288);
    v290 = &v287[*(v420 + 36)];
    v291 = type metadata accessor for RefreshOnAssetCompletionChangeViewModifier(0);
    sub_30CC(v450, &v290[v291[7]]);
    v292 = swift_getKeyPath();
    LOBYTE(v480[0]) = 0;
    *v290 = v292;
    v290[66] = 0;
    v293 = v291[5];
    *&v290[v293] = swift_getKeyPath();
    sub_2EF0(&qword_318150, &qword_279A70);
    swift_storeEnumTagMultiPayload();
    v294 = &v290[v291[6]];
    *v294 = swift_getKeyPath();
    v294[40] = 0;
    sub_2E18(v487, v488);
    v295 = sub_2606E0();
    v297 = v296;
    v298 = v462;
    sub_120FF4(&v463);
    if (*(&v464 + 1))
    {
      v299 = v287;
      sub_2EF0(&qword_317240, &qword_269790);
      v300 = swift_allocObject();
      *(v300 + 16) = xmmword_267D30;
      *(v300 + 32) = v295;
      v301 = v300 + 32;
      *(v300 + 40) = v297;
      v302 = sub_127F84(v300);
      swift_setDeallocating();
      sub_12801C(v301);
      swift_deallocClassInstance();
      if (qword_315930 != -1)
      {
        swift_once();
      }

      v303 = ~v451;
      if (byte_31C408 == 1 && (v304 = [objc_opt_self() standardUserDefaults], v305 = sub_264420(), v306 = objc_msgSend(v304, "integerForKey:", v305), v304, v305, (v306 & 0x20) != 0))
      {

        sub_8198(v299, v369, &qword_31EE10, &qword_279910);
        swift_storeEnumTagMultiPayload();
        sub_126474();
        sub_126500();
        v308 = v360;
        sub_261F80();
      }

      else
      {
        sub_30CC(&v463, v482);
        v307 = v355;
        sub_1A7A30(v302, v482, &v355[*(v374 + 36)]);
        sub_8198(v299, v307, &qword_31EE10, &qword_279910);
        sub_8198(v307, v369, &qword_31EDF0, &unk_2798E8);
        swift_storeEnumTagMultiPayload();
        sub_126474();
        sub_126500();
        v308 = v360;
        sub_261F80();
        sub_8E80(v307, &qword_31EDF0, &unk_2798E8);
      }

      sub_8E80(v299, &qword_31EE10, &qword_279910);
      v309 = v363;
      sub_22148(v308, v363, &qword_31EE18, &qword_279918);
      sub_3080(&v463);
      v310 = sub_2604A0();
      v311 = v460;
      sub_2604C0();
      v312 = v459;
      sub_126808(v298, v459, type metadata accessor for SeriesQuickActionButtonView);
      v313 = (v451 + 16) & v303;
      v314 = swift_allocObject();
      sub_125C90(v312, v314 + v313, type metadata accessor for SeriesQuickActionButtonView);
      v315 = sub_1263E8();
      v316 = sub_125CF8(&qword_31EE78, &type metadata accessor for SeriesData, &protocol conformance descriptor for SeriesData);
      v459 = sub_125CF8(&qword_31EE80, &type metadata accessor for SeriesData, &protocol conformance descriptor for SeriesData);
      v317 = v364;
      v318 = v366;
      sub_262960();

      (*(v444 + 8))(v311, v445);
      sub_8E80(v309, &qword_31EE18, &qword_279918);
      v319 = v441;
      *(&v464 + 1) = v441;
      *&v465 = sub_125CF8(&qword_31EEE8, &type metadata accessor for AltSeriesContentTypeExposureData, &protocol conformance descriptor for AltSeriesContentTypeExposureData);
      *(&v465 + 1) = sub_125CF8(&qword_31EEF0, &type metadata accessor for AltSeriesContentTypeExposureData, &protocol conformance descriptor for AltSeriesContentTypeExposureData);
      v320 = sub_10934(&v463);
      (*(v440 + 16))(v320, v439, v319);
      v482[0] = v318;
      v482[1] = v310;
      v460 = v310;
      v482[2] = v315;
      v482[3] = v316;
      v462 = v316;
      v321 = v459;
      v482[4] = v459;
      swift_getOpaqueTypeConformance2();
      v322 = v371;
      v323 = v367;
      sub_262950();
      (*(v365 + 8))(v317, v323);
      sub_8E80(&v463, &qword_31EEF8, &unk_279BC8);
      v324 = v361;
      sub_8198(v452, v361, &qword_31A480, &qword_273520);
      v325 = v423;
      if ((v447)(v324, 1, v423) == 1)
      {
        sub_8E80(v324, &qword_31A480, &qword_273520);
        v326 = 1;
        v327 = v376;
        v328 = v419;
        v329 = v418;
      }

      else
      {
        v329 = v418;
        v330 = v324 + *(v325 + 20);
        v327 = v376;
        v328 = v419;
        (*(v418 + 16))(v376, v330, v419);
        sub_1288E0(v324, type metadata accessor for CardInfo);
        v326 = 0;
      }

      (*(v329 + 56))(v327, v326, 1, v328);
      v331 = swift_getKeyPath();
      v332 = v370;
      v333 = &v370[*(v432 + 36)];
      v334 = sub_2EF0(&qword_31AD20, &unk_2799D0);
      sub_22148(v327, v333 + *(v334 + 28), &qword_31A0C8, &qword_26E2C0);
      *v333 = v331;
      (*(v372 + 32))(v332, v322, v373);
      v335 = v332;
      v336 = v375;
      sub_22148(v335, v375, &qword_31EE30, &unk_279930);
      sub_8198(v336, v430, &qword_31EE30, &unk_279930);
      swift_storeEnumTagMultiPayload();
      v337 = sub_125CF8(&qword_31A2D0, type metadata accessor for ButtonView, &protocol conformance descriptor for ButtonView);
      *&v463 = v461;
      *(&v463 + 1) = v460;
      *&v464 = v337;
      *(&v464 + 1) = v462;
      *&v465 = v321;
      swift_getOpaqueTypeConformance2();
      sub_126228();
      v338 = v431;
      sub_261F80();
      sub_8198(v338, v455, &qword_31EE48, &qword_279950);
      swift_storeEnumTagMultiPayload();
      sub_1260B4();
      sub_126708();
      sub_261F80();
      sub_8E80(v338, &qword_31EE48, &qword_279950);
      sub_8E80(v336, &qword_31EE30, &unk_279930);
      sub_1288E0(v421, type metadata accessor for ShrinkableText);
      (*(v440 + 8))(v439, v441);
      sub_8E80(v452, &qword_31A480, &qword_273520);
      sub_1288E0(v443, type metadata accessor for ListItemViewModel);
      v339 = v487;
      return sub_3080(v339);
    }

    __break(1u);
    goto LABEL_43;
  }

  sub_F7CC(v87, &v463);
  LODWORD(v452) = *(v462 + 89);
  LODWORD(v443) = _UISolariumEnabled();
  sub_2EF0(&qword_319AF8, &qword_279110);
  v90 = v433;
  *v433 = 0xD000000000000013;
  v90[1] = 0x800000000028FD20;
  sub_263F90();
  v92 = v380;
  v91 = v381;
  (*(v380 + 104))(v68, enum case for LocalizerLookupStrategy.default(_:), v381);
  sub_260B80();
  (*(v92 + 8))(v68, v91);
  (*(v378 + 8))(v71, v379);
  swift_storeEnumTagMultiPayload();
  sub_2E18(&v463, *(&v464 + 1));
  if ((sub_2606B0() & 1) == 0)
  {
    v95 = 1;
    goto LABEL_18;
  }

  v93 = *(v462 + 96);
  if (v93)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v94 = v93;
    sub_260FF0();

    v95 = LOBYTE(v487[0]);
LABEL_18:
    LODWORD(v446) = v95;
    LODWORD(v443) = v443 ^ 1;
    v158 = v447;
    sub_2E18(&v463, *(&v464 + 1));
    sub_2606C0();
    type metadata accessor for ButtonViewModel.ActionKind(0);
    swift_storeEnumTagMultiPayload();
    v487[0] = 0x403C000000000000;
    v159 = enum case for Font.TextStyle.subheadline(_:);
    v160 = *(v448 + 104);
    v161 = v450;
    LODWORD(v442) = enum case for Font.TextStyle.subheadline(_:);
    v162 = v449;
    v160(v450, enum case for Font.TextStyle.subheadline(_:), v449);
    v448 = sub_40130();
    sub_2612E0();
    v487[0] = 0x4008000000000000;
    v160(v161, v159, v162);
    sub_2612E0();
    v163 = v158[6];
    *&v80[v163] = swift_getKeyPath();
    sub_2EF0(&qword_316C00, &qword_26A520);
    swift_storeEnumTagMultiPayload();
    v164 = v158[14];
    v165 = sub_260BD0();
    (*(*(v165 - 8) + 56))(&v80[v164], 1, 1, v165);
    v80[v158[7]] = v452;
    v80[v158[8]] = v443;
    v80[v158[9]] = 0;
    v166 = &v80[v158[10]];
    *v166 = 2;
    *(v166 + 1) = 0;
    *(v166 + 2) = 0;
    *(v166 + 3) = 0;
    sub_125C90(v433, &v80[v158[11]], type metadata accessor for ButtonViewModel.Content);
    v80[v158[12]] = v446;
    v487[0] = 0x4020000000000000;
    v167 = v442;
    v160(v161, v442, v162);
    v452 = v80;
    v168 = v382;
    sub_2612E0();
    v169 = v461;
    v487[0] = 0x3FF8000000000000;
    v160(v161, v167, v162);
    sub_2612E0();
    v170 = *(v169 + 24);
    *(v168 + v170) = swift_getKeyPath();
    sub_2EF0(&qword_319B00, &unk_26EA40);
    swift_storeEnumTagMultiPayload();
    sub_125C90(v452, v168 + *(v169 + 28), type metadata accessor for ButtonViewModel);
    v452 = sub_2604A0();
    v171 = v460;
    sub_2604C0();
    v172 = v459;
    sub_126808(v462, v459, type metadata accessor for SeriesQuickActionButtonView);
    v173 = (*(v451 + 80) + 16) & ~*(v451 + 80);
    v174 = swift_allocObject();
    sub_125C90(v172, v174 + v173, type metadata accessor for SeriesQuickActionButtonView);
    v462 = sub_125CF8(&qword_31A2D0, type metadata accessor for ButtonView, &protocol conformance descriptor for ButtonView);
    v175 = sub_125CF8(&qword_31EE78, &type metadata accessor for SeriesData, &protocol conformance descriptor for SeriesData);
    v343 = sub_125CF8(&qword_31EE80, &type metadata accessor for SeriesData, &protocol conformance descriptor for SeriesData);
    v176 = v386;
    v177 = v452;
    sub_262960();

    (*(v444 + 8))(v171, v445);
    sub_1288E0(v168, type metadata accessor for ButtonView);
    v178 = v387;
    v179 = v426;
    (*(v387 + 16))(v430, v176, v426);
    swift_storeEnumTagMultiPayload();
    v487[0] = v461;
    v487[1] = v177;
    v487[2] = v462;
    v488 = v175;
    v489 = v343;
    swift_getOpaqueTypeConformance2();
    sub_126228();
    v180 = v431;
    sub_261F80();
    sub_8198(v180, v455, &qword_31EE48, &qword_279950);
    swift_storeEnumTagMultiPayload();
    sub_1260B4();
    sub_126708();
    sub_261F80();
    sub_8E80(v180, &qword_31EE48, &qword_279950);
    (*(v178 + 8))(v176, v179);
LABEL_40:
    v339 = &v463;
    return sub_3080(v339);
  }

LABEL_44:
  type metadata accessor for ProfileRestrictions(0);
  sub_125CF8(&qword_326DC0, type metadata accessor for ProfileRestrictions, &protocol conformance descriptor for ProfileRestrictions);
  result = sub_2618F0();
  __break(1u);
  return result;
}