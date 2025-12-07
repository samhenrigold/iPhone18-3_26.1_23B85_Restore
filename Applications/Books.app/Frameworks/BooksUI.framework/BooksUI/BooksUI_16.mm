unint64_t sub_1AA9A4()
{
  result = qword_323300[0];
  if (!qword_323300[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_323300);
  }

  return result;
}

uint64_t sub_1AAA08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  sub_2EF0(&qword_318170, &unk_26AF40);
  swift_storeEnumTagMultiPayload();
  v9 = type metadata accessor for ListItemMetadataFormatAndDescriptorView(0, a2, a3, v8);
  v10 = *(*(a2 - 8) + 32);
  v11 = a4 + *(v9 + 36);

  return v10(v11, a1, a2);
}

uint64_t sub_1AAB28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = *(a1 - 8);
  v37 = *(v3 + 64);
  __chkstk_darwin(a1);
  v36 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v5 + 24);
  v34 = *(v5 + 16);
  v35 = v6;
  swift_getAssociatedTypeWitness();
  sub_2F9C(&qword_317588, &qword_26B7B0);
  sub_261730();
  sub_2F9C(&qword_3189E8, &unk_26F980);
  sub_261730();
  type metadata accessor for DefaultBlendModeModifier(255);
  v7 = sub_261730();
  v33 = sub_260A70();
  v32 = sub_260A50();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = sub_1AB600(&qword_317580, &qword_317588, &qword_26B7B0);
  v50 = AssociatedConformanceWitness;
  v51 = v9;
  WitnessTable = swift_getWitnessTable();
  v11 = sub_1AB600(&qword_3189E0, &qword_3189E8, &unk_26F980);
  v48 = WitnessTable;
  v49 = v11;
  v12 = swift_getWitnessTable();
  v13 = sub_13FB8C(&qword_3193A8, type metadata accessor for DefaultBlendModeModifier, &unk_28233C);
  v46 = v12;
  v47 = v13;
  v31 = v7;
  v14 = swift_getWitnessTable();
  v15 = sub_13FB8C(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking, &protocol conformance descriptor for _JetLocalizeDefaultWorking);
  v16 = sub_13FB8C(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed, &protocol conformance descriptor for _JetLocalizeDefaultFailed);
  v40 = v7;
  v41 = v33;
  v42 = v32;
  v43 = v14;
  v44 = v15;
  v45 = v16;
  v17 = sub_260A90();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v21);
  v24 = &v31 - v23;
  v25 = v36;
  (*(v3 + 16))(v36, v38, a1, v22);
  v26 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v27 = swift_allocObject();
  v28 = v35;
  *(v27 + 16) = v34;
  *(v27 + 24) = v28;
  (*(v3 + 32))(v27 + v26, v25, a1);
  sub_180C1C(sub_1AB7B8, v27, v31, v14);
  swift_getWitnessTable();
  sub_1609C();
  v29 = *(v18 + 8);
  v29(v20, v17);
  sub_1609C();
  return (v29)(v24, v17);
}

uint64_t sub_1AAFAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v45 = a1;
  v52 = a4;
  v46 = sub_2626C0();
  v6 = *(v46 - 8);
  __chkstk_darwin(v46);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FontConstants.ListItem(0);
  __chkstk_darwin(v9 - 8);
  v11 = (&v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v48 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v38 = &v38 - v12;
  sub_2F9C(&qword_317588, &qword_26B7B0);
  v43 = sub_261730();
  v49 = *(v43 - 8);
  __chkstk_darwin(v43);
  v39 = &v38 - v13;
  sub_2F9C(&qword_3189E8, &unk_26F980);
  v44 = sub_261730();
  v50 = *(v44 - 8);
  __chkstk_darwin(v44);
  v40 = &v38 - v14;
  type metadata accessor for DefaultBlendModeModifier(255);
  v15 = sub_261730();
  v51 = *(v15 - 8);
  __chkstk_darwin(v15);
  v42 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v47 = &v38 - v18;
  type metadata accessor for ListItemMetadataFormatAndDescriptorView(0, a2, a3, v19);
  (*(a3 + 32))(v45, a2);
  v20 = v11;
  sub_404E0(v11);
  sub_262700();
  v21 = v46;
  (*(v6 + 104))(v8, enum case for Font.Leading.tight(_:), v46);
  sub_2626E0();

  (*(v6 + 8))(v8, v21);
  sub_65488(v20);
  v22 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v24 = v38;
  v25 = v39;
  sub_262D80();

  (*(v48 + 8))(v24, v22);
  v26 = sub_1AB600(&qword_317580, &qword_317588, &qword_26B7B0);
  v57 = AssociatedConformanceWitness;
  v58 = v26;
  v27 = v43;
  WitnessTable = swift_getWitnessTable();
  v29 = v40;
  sub_262EB0();
  (*(v49 + 8))(v25, v27);
  v30 = sub_1AB600(&qword_3189E0, &qword_3189E8, &unk_26F980);
  v55 = WitnessTable;
  v56 = v30;
  v31 = v44;
  v32 = swift_getWitnessTable();
  v33 = v42;
  View.defaultBlendMode()(v31, v32);
  (*(v50 + 8))(v29, v31);
  v34 = sub_13FB8C(&qword_3193A8, type metadata accessor for DefaultBlendModeModifier, &unk_28233C);
  v53 = v32;
  v54 = v34;
  swift_getWitnessTable();
  v35 = v47;
  sub_1609C();
  v36 = *(v51 + 8);
  v36(v33, v15);
  sub_1609C();
  return (v36)(v35, v15);
}

uint64_t sub_1AB600(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2F9C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AB654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for ListItemMetadataFormatAndDescriptorView(0, v5, *(v4 + 24), a4);
  v7 = v4 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80));
  sub_2EF0(&qword_318170, &unk_26AF40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *(type metadata accessor for FontConstants.Environment(0) + 24);
    v9 = sub_261690();
    (*(*(v9 - 8) + 8))(v7 + v8, v9);
  }

  else
  {
  }

  (*(*(v5 - 8) + 8))(v7 + *(v6 + 36), v5);

  return swift_deallocObject();
}

uint64_t sub_1AB7B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  type metadata accessor for ListItemMetadataFormatAndDescriptorView(0, v6, v7, a2);

  return sub_1AAFAC(a1, v6, v7, a3);
}

uint64_t sub_1AB854(void *a1)
{
  swift_getAssociatedTypeWitness();
  sub_2F9C(&qword_317588, &qword_26B7B0);
  sub_261730();
  sub_2F9C(&qword_3189E8, &unk_26F980);
  sub_261730();
  type metadata accessor for DefaultBlendModeModifier(255);
  sub_261730();
  sub_260A70();
  sub_260A50();
  swift_getAssociatedConformanceWitness();
  sub_1AB600(&qword_317580, &qword_317588, &qword_26B7B0);
  swift_getWitnessTable();
  sub_1AB600(&qword_3189E0, &qword_3189E8, &unk_26F980);
  swift_getWitnessTable();
  sub_13FB8C(&qword_3193A8, type metadata accessor for DefaultBlendModeModifier, &unk_28233C);
  swift_getWitnessTable();
  sub_13FB8C(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking, &protocol conformance descriptor for _JetLocalizeDefaultWorking);
  sub_13FB8C(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed, &protocol conformance descriptor for _JetLocalizeDefaultFailed);
  sub_260A90();
  return swift_getWitnessTable();
}

void *sub_1ABAD4(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  __chkstk_darwin(a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v13 = &v27 - v12;
  __chkstk_darwin(v14);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  __chkstk_darwin(v16);
  v18 = &v27 - v17;
  v19 = sub_264830();
  if (!v19)
  {
    return sub_2646B0();
  }

  v41 = v19;
  v45 = sub_264C60();
  v32 = sub_264C70();
  sub_264C40(v41);
  result = sub_264820();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_2648A0();
      v23 = v13;
      v24 = v13;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_264C50();
      result = sub_264870();
      ++v21;
      v13 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t MResourceDecoder.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v53 = a2;
  v45 = a3;
  v52 = sub_2641D0();
  v49 = *(v52 - 8);
  __chkstk_darwin(v52);
  v48 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v51 = &v44 - v6;
  v7 = sub_2EF0(&qword_3229A8, &qword_281B60);
  __chkstk_darwin(v7 - 8);
  v9 = &v44 - v8;
  v10 = sub_263840();
  v46 = *(v10 - 8);
  __chkstk_darwin(v10);
  v47 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2EF0(&qword_322B38, &qword_281FA0);
  __chkstk_darwin(v12 - 8);
  v14 = &v44 - v13;
  v15 = sub_260820();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[3];
  v54 = a1;
  sub_2E18(a1, v19);
  sub_265100();
  if (qword_315AB0 != -1)
  {
    swift_once();
  }

  v20 = sub_2EF0(&qword_322B40, &unk_282F70);
  sub_B080(v20, qword_323388);
  sub_2642C0();

  if ((*(v16 + 48))(v14, 1, v15) != 1)
  {
    (*(v16 + 32))(v18, v14, v15);
    v24 = v54;
    sub_2E18(v54, v54[3]);
    v25 = v50;
    sub_2650F0();
    v23 = v25;
    if (v25)
    {
      (*(v16 + 8))(v18, v15);
      goto LABEL_7;
    }

    v50 = v9;
    sub_2E18(v55, v55[3]);
    sub_19B934(&qword_3229C8, &type metadata accessor for JSONObject, &protocol conformance descriptor for JSONObject);
    sub_264F30();
    v35 = v50;
    sub_263800();
    v36 = sub_263C10();
    v37 = *(v36 - 8);
    if ((*(v37 + 48))(v35, 1, v36) == 1)
    {
      sub_8E80(v35, &qword_3229A8, &qword_281B60);
      v24 = v54;
      v38 = v10;
    }

    else
    {
      v39 = sub_263C00();
      v40 = v35;
      v41 = v39;
      (*(v37 + 8))(v40, v36);
      v24 = v54;
      v38 = v10;
      if (v41)
      {
LABEL_15:
        v42 = v47;
        sub_260A00();
        v43 = sub_2609F0();

        (*(v46 + 8))(v42, v38);
        (*(v16 + 8))(v18, v15);
        sub_3080(v55);
        *v45 = v43;
        return sub_3080(v24);
      }
    }

    sub_EEE8(_swiftEmptyArrayStorage);

    goto LABEL_15;
  }

  sub_8E80(v14, &qword_322B38, &qword_281FA0);
  type metadata accessor for MResourceDecoder.MResourceDecoderError(0, v53, v21, v22);
  swift_getWitnessTable();
  v23 = swift_allocError();
  swift_willThrow();
  v24 = v54;
LABEL_7:
  v55[6] = v23;
  swift_errorRetain();
  sub_2EF0(&qword_31E968, &qword_27B490);
  v26 = v51;
  v27 = v52;
  if (swift_dynamicCast())
  {

    v28 = v48;
    v29 = v49;
    (*(v49 + 32))(v48, v26, v27);
    v30 = sub_264C10();
    swift_allocError();
    v51 = v31;
    sub_2E18(v54, v24[3]);
    v50 = sub_2650E0();
    v55[0] = 0;
    v55[1] = 0xE000000000000000;
    sub_264BC0(23);
    v56._object = 0x80000000002941B0;
    v56._countAndFlagsBits = 0xD000000000000011;
    sub_264530(v56);
    v57._countAndFlagsBits = sub_265260();
    sub_264530(v57);

    v58._countAndFlagsBits = 8250;
    v58._object = 0xE200000000000000;
    sub_264530(v58);
    sub_264CC0();
    sub_19B934(&qword_322B58, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
    swift_allocError();
    (*(v29 + 16))(v32, v28, v27);
    v33 = v51;
    v24 = v54;
    sub_264BF0();
    (*(*(v30 - 8) + 104))(v33, enum case for DecodingError.dataCorrupted(_:), v30);
    swift_willThrow();
    (*(v29 + 8))(v28, v27);
  }

  return sub_3080(v24);
}

id MResourceDecoder.wrappedValue.getter()
{
  v0 = ShelfGridItemColumnSpan.Context.offset.getter();

  return v0;
}

uint64_t sub_1AC7F0()
{
  v0 = sub_2EF0(&qword_322B40, &unk_282F70);
  sub_B600(v0, qword_323388);
  sub_B080(v0, qword_323388);
  sub_260820();
  return sub_263960();
}

uint64_t static JSONContext.Property<A>.catalogServiceConfig.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_315AB0 != -1)
  {
    swift_once();
  }

  v2 = sub_2EF0(&qword_322B40, &unk_282F70);
  v3 = sub_B080(v2, qword_323388);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *_MResourceDecoder_Many.init(from:)(void *a1, uint64_t a2)
{
  sub_30CC(a1, v14);
  v7 = type metadata accessor for MResourceDecoder(0, a2, v5, v6);
  swift_getWitnessTable();
  v8 = sub_264700();
  if (v2)
  {
    sub_3080(a1);
  }

  else
  {
    v14[0] = v8;
    __chkstk_darwin(v8);
    KeyPath = swift_getKeyPath();
    v10 = sub_2646F0();
    WitnessTable = swift_getWitnessTable();
    v7 = sub_1ABAD4(sub_1ACFB8, KeyPath, v10, a2, &type metadata for Never, WitnessTable, &protocol witness table for Never, v12);

    sub_3080(a1);
  }

  return v7;
}

id sub_1ACADC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>, uint64_t a4@<X3>)
{
  type metadata accessor for MResourceDecoder(0, *(a1 + a2 - 8), a2, a4);
  v5 = ShelfGridItemColumnSpan.Context.offset.getter();
  *a3 = v5;

  return v5;
}

void *_MResourceDecoder_Many.init(_partiallyFrom:)(void *a1, uint64_t a2)
{
  sub_30CC(a1, v12);
  type metadata accessor for MResourceDecoder(0, a2, v4, v5);
  swift_getWitnessTable();
  v12[0] = sub_2646E0();
  KeyPath = swift_getKeyPath();
  v7 = sub_2646F0();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_1ABAD4(sub_10D740, KeyPath, v7, a2, &type metadata for Never, WitnessTable, &protocol witness table for Never, v9);

  sub_3080(a1);

  return v10;
}

void *sub_1ACC80@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = _MResourceDecoder_Many.init(from:)(a1, *(a2 + 16));
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void *sub_1ACCB0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = _MResourceDecoder_Many.init(_partiallyFrom:)(a1, *(a2 + 16));
  *a3 = result;
  return result;
}

uint64_t _MResourceDecoder_OrNil.init(from:)(void *a1, uint64_t a2)
{
  sub_30CC(a1, v8);
  type metadata accessor for MResourceDecoder(0, a2, v5, v6);
  swift_getWitnessTable();
  sub_264A70();
  result = sub_3080(a1);
  if (!v2)
  {
    return v9;
  }

  return result;
}

uint64_t sub_1ACDA4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = _MResourceDecoder_OrNil.init(from:)(a1, *(a2 + 16));
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1ACE28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1ACE64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1ACEB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1ACEF4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1ACF50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t CircularIconView.init(kind:)@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  *a2 = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for CircularIconView(0);
  v5 = v4[5];
  *(a2 + v5) = swift_getKeyPath();
  sub_2EF0(&qword_318F68, &qword_26C578);
  swift_storeEnumTagMultiPayload();
  v6 = a2 + v4[6];
  *v6 = swift_getKeyPath();
  v6[8] = 0;
  v7 = v4[7];
  *(a2 + v7) = swift_getKeyPath();
  sub_2EF0(&qword_316DC0, &qword_2691C0);
  swift_storeEnumTagMultiPayload();
  v8 = v4[8];
  *(a2 + v8) = swift_getKeyPath();
  sub_2EF0(&qword_3179C0, &qword_269D60);
  swift_storeEnumTagMultiPayload();
  v9 = a2 + v4[9];
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  v10 = a2 + v4[11];
  result = swift_getKeyPath();
  *v10 = result;
  v10[8] = 0;
  *(a2 + v4[10]) = v3;
  return result;
}

uint64_t type metadata accessor for CircularIconView(uint64_t a1)
{
  result = qword_323628;
  if (!qword_323628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AD194@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_261C90();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_316C00, &qword_26A520);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_8198(v2, &v13 - v9, &qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1AFDC8(v10, a1, type metadata accessor for ColorConstants);
  }

  sub_264900();
  v12 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1AD378@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_318F68, &qword_26C578);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for CircularIconView(0);
  sub_8198(v1 + *(v10 + 20), v9, &qword_318F68, &qword_26C578);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1AFDC8(v9, a1, type metadata accessor for FontConstants.Navigation);
  }

  sub_264900();
  v12 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1AD564()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for CircularIconView(0) + 24);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_264900();
    v7 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_3074(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_1AD6BC@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_316DC0, &qword_2691C0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for CircularIconView(0);
  sub_8198(v1 + *(v10 + 28), v9, &qword_316DC0, &qword_2691C0);
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

uint64_t sub_1AD8C4@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_3179C0, &qword_269D60);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for CircularIconView(0);
  sub_8198(v1 + *(v10 + 32), v9, &qword_3179C0, &qword_269D60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_263640();
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

uint64_t sub_1ADACC()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for CircularIconView(0) + 44);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_264900();
    v7 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_3074(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

double CircularIconView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v2 = sub_261690();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2EF0(&qword_3235A0, &qword_2833D0);
  __chkstk_darwin(v20);
  v7 = (&v19 - v6);
  v21 = sub_2EF0(&qword_3235A8, &qword_2833D8);
  v8 = *(v21 - 8);
  __chkstk_darwin(v21);
  v10 = &v19 - v9;
  *v7 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v7[1] = v11;
  v12 = sub_2EF0(&qword_3235B0, &qword_2833E0);
  sub_1ADF14(v1, v7 + *(v12 + 44));
  v13 = sub_1AD564();
  v14 = &enum case for DynamicTypeSize.large(_:);
  if ((v13 & 1) == 0)
  {
    v14 = &enum case for DynamicTypeSize.medium(_:);
  }

  (*(v3 + 104))(v5, *v14, v2);
  sub_8E38(&qword_3235B8, &qword_3235A0, &qword_2833D0, &protocol conformance descriptor for ZStack<A>);
  sub_262B60();
  (*(v3 + 8))(v5, v2);
  sub_8E80(v7, &qword_3235A0, &qword_2833D0);
  sub_1AEB28();
  sub_1AEB28();
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v15 = v22;
  (*(v8 + 32))(v22, v10, v21);
  v16 = (v15 + *(sub_2EF0(&qword_3235C0, &qword_2833E8) + 36));
  v17 = v24;
  *v16 = v23;
  v16[1] = v17;
  result = *&v25;
  v16[2] = v25;
  return result;
}

uint64_t sub_1ADF14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a2;
  v101 = sub_2EF0(&qword_3190B8, &qword_26C8B0);
  __chkstk_darwin(v101);
  v104 = &v87[-v3];
  v102 = sub_2EF0(&qword_319088, &qword_26C7F0);
  __chkstk_darwin(v102);
  v106 = &v87[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v103 = &v87[-v6];
  __chkstk_darwin(v7);
  v105 = &v87[-v8];
  v9 = sub_261180();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v96 = &v87[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v95 = &v87[-v13];
  v14 = type metadata accessor for ColorConstants.Environment(0);
  __chkstk_darwin(v14 - 8);
  v16 = &v87[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = type metadata accessor for ColorConstants(0);
  __chkstk_darwin(v17 - 8);
  v19 = &v87[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_263640();
  v21 = *(v20 - 8);
  v90 = v21;
  __chkstk_darwin(v20);
  v97 = &v87[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v23);
  v25 = &v87[-v24];
  v94 = sub_2EF0(&qword_323698, &qword_2834E0);
  __chkstk_darwin(v94);
  v110 = &v87[-v26];
  v93 = sub_2EF0(&qword_3236A0, &qword_2834E8);
  __chkstk_darwin(v93);
  v100 = &v87[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v28);
  v92 = &v87[-v29];
  __chkstk_darwin(v30);
  v32 = &v87[-v31];
  v91 = sub_1AE904();
  v33 = sub_1ADACC();
  v108 = a1;
  v109 = v10;
  v98 = v32;
  v99 = v20;
  if (v33)
  {
    v34 = v9;
    v89 = *(v21 + 104);
    v89(v25, enum case for BlendMode.normal(_:), v20);
  }

  else
  {
    sub_1AD194(v19);
    sub_4BD3C(v19, v16);
    v35 = v95;
    (*(v10 + 104))(v95, enum case for ColorScheme.dark(_:), v9);
    sub_60AB0();
    v36 = sub_264390();
    v37 = v21;
    v38 = *(v10 + 8);
    v38(v35, v9);
    sub_1AFD68(v19, type metadata accessor for ColorConstants);
    v34 = v9;
    v38(v16, v9);
    v21 = v37;
    v39 = *(v37 + 104);
    v89 = v39;
    if (v36)
    {
      v40 = &enum case for BlendMode.plusLighter(_:);
    }

    else
    {
      v40 = &enum case for BlendMode.plusDarker(_:);
    }

    v20 = v99;
    v39(v25, *v40, v99);
    v32 = v98;
  }

  v42 = *(v21 + 32);
  v41 = v21 + 32;
  v43 = v110;
  v44 = &v110[*(v94 + 36)];
  v94 = v42;
  v42(v44, v25, v20);
  *v43 = v91;
  *(v43 + 4) = 256;
  v45 = v108;
  if (sub_1ADACC())
  {
    v91 = v41;
    sub_1AD194(v19);
    sub_4BD3C(v19, v16);
    v46 = v109;
    v47 = v16;
    v48 = *(v109 + 104);
    v49 = v95;
    v88 = enum case for ColorScheme.dark(_:);
    v50 = v34;
    v48(v95);
    sub_60AB0();
    v51 = sub_264390();
    v52 = *(v46 + 8);
    v52(v49, v34);
    sub_1AFD68(v19, type metadata accessor for ColorConstants);
    v52(v47, v34);
    if (v51)
    {
      v53 = enum case for ColorScheme.light(_:);
      v54 = v96;
      v55 = v96;
    }

    else
    {
      v54 = v96;
      v55 = v96;
      v53 = v88;
    }

    (v48)(v55, v53, v34);
    v32 = v98;
    v20 = v99;
    v45 = v108;
    v56 = v109;
  }

  else
  {
    v54 = v96;
    sub_1AD6BC(v96);
    v56 = v109;
    v50 = v34;
  }

  KeyPath = swift_getKeyPath();
  v58 = v92;
  v59 = &v92[*(v93 + 36)];
  v60 = sub_2EF0(&qword_3173A0, &qword_26D0C0);
  (*(v56 + 32))(v59 + *(v60 + 28), v54, v50);
  *v59 = KeyPath;
  sub_22148(v110, v58, &qword_323698, &qword_2834E0);
  sub_22148(v58, v32, &qword_3236A0, &qword_2834E8);
  v61 = *(type metadata accessor for CircularIconView(0) + 40);
  LOBYTE(KeyPath) = *(v45 + v61);
  v62 = *(type metadata accessor for SymbolImage(0) + 20);
  v63 = swift_getKeyPath();
  v64 = v104;
  *&v104[v62] = v63;
  sub_2EF0(&qword_3190A0, &unk_283550);
  swift_storeEnumTagMultiPayload();
  *v64 = KeyPath;
  v65 = sub_1AEC90();
  *&v64[*(sub_2EF0(&qword_3190A8, &qword_26C870) + 36)] = v65;
  v66 = sub_1AEF20();
  v67 = swift_getKeyPath();
  v68 = &v64[*(sub_2EF0(&qword_3190B0, &qword_283590) + 36)];
  *v68 = v67;
  v68[1] = v66;
  sub_1AF17C();
  v70 = v69;
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v77 = sub_262500();
  v78 = &v64[*(v101 + 36)];
  *v78 = v77;
  *(v78 + 1) = v70;
  *(v78 + 2) = v72;
  *(v78 + 3) = v74;
  *(v78 + 4) = v76;
  v78[40] = 0;
  v79 = v97;
  if (*(v45 + v61) == 6)
  {
    sub_1AD8C4(v97);
  }

  else
  {
    v89(v97, enum case for BlendMode.normal(_:), v20);
  }

  v80 = v103;
  (v94)(&v103[*(v102 + 36)], v79, v20);
  sub_22148(v64, v80, &qword_3190B8, &qword_26C8B0);
  v81 = v105;
  sub_22148(v80, v105, &qword_319088, &qword_26C7F0);
  v82 = v100;
  sub_8198(v32, v100, &qword_3236A0, &qword_2834E8);
  v83 = v106;
  sub_8198(v81, v106, &qword_319088, &qword_26C7F0);
  v84 = v107;
  sub_8198(v82, v107, &qword_3236A0, &qword_2834E8);
  v85 = sub_2EF0(&qword_3236A8, &qword_283598);
  sub_8198(v83, v84 + *(v85 + 48), &qword_319088, &qword_26C7F0);
  sub_8E80(v81, &qword_319088, &qword_26C7F0);
  sub_8E80(v32, &qword_3236A0, &qword_2834E8);
  sub_8E80(v83, &qword_319088, &qword_26C7F0);
  return sub_8E80(v82, &qword_3236A0, &qword_2834E8);
}

uint64_t sub_1AE904()
{
  v1 = sub_2634E0();
  __chkstk_darwin(v1);
  if (*(v0 + *(type metadata accessor for CircularIconView(0) + 40)) > 6u)
  {

    goto LABEL_7;
  }

  v2 = sub_264F10();

  if (v2)
  {
LABEL_7:
    sub_262FA0();
    return sub_2613B0();
  }

  if (sub_1ADACC())
  {
    sub_2634D0();
  }

  else
  {
    v3 = [objc_opt_self() tertiarySystemFillColor];
    sub_263070();
  }

  return sub_2613B0();
}

double sub_1AEB28()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for CircularIconView(0) + 36);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_264900();
    v7 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_3074(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return dbl_2835F0[v6];
}

uint64_t sub_1AEC90()
{
  v1 = sub_261180();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ColorConstants.Environment(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ColorConstants(0);
  __chkstk_darwin(v8 - 8);
  v10 = (&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v13 = (&v23 - v12);
  v14 = *(v0 + *(type metadata accessor for CircularIconView(0) + 40));
  v15 = sub_1ADACC();
  v16 = v15;
  if (v14 == 6)
  {
    sub_1AD194(v13);
    v17 = _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
    if (v16)
    {
      v18 = sub_263000();

      v17 = v18;
    }
  }

  else if (v15)
  {
    sub_1AD194(v13);
    v17 = _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  }

  else
  {
    sub_1AD194(v10);
    sub_4BD3C(v10, v7);
    (*(v2 + 104))(v4, enum case for ColorScheme.dark(_:), v1);
    sub_60AB0();
    v19 = sub_264390();
    v20 = *(v2 + 8);
    v20(v4, v1);
    v20(v7, v1);
    if (v19)
    {
      v21 = _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
    }

    else
    {
      v21 = sub_262F80();
    }

    v17 = v21;
    v13 = v10;
  }

  sub_1AFD68(v13, type metadata accessor for ColorConstants);
  return v17;
}

uint64_t sub_1AEF20()
{
  v1 = sub_2EF0(&qword_318458, &unk_26B270);
  __chkstk_darwin(v1 - 8);
  v3 = &v15 - v2;
  v4 = sub_262730();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FontConstants.Navigation(0);
  __chkstk_darwin(v8 - 8);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(v0 + *(type metadata accessor for CircularIconView(0) + 40)) == 6)
  {

    return static Font.headline.getter(v11);
  }

  else
  {
    sub_1AD378(v10);
    (*(v5 + 104))(v7, enum case for Font.TextStyle.callout(_:), v4);
    v12 = sub_2625C0();
    (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
    sub_262650();
    v13 = sub_262680();
    sub_8E80(v3, &qword_318458, &unk_26B270);
    (*(v5 + 8))(v7, v4);
    sub_1AFD68(v10, type metadata accessor for FontConstants.Navigation);
    return v13;
  }
}

void sub_1AF17C()
{
  v1 = *(v0 + *(type metadata accessor for CircularIconView(0) + 40));
  if (v1 <= 3 || v1 > 5 || v1 == 4)
  {
    v2 = sub_264F10();

    if ((v2 & 1) == 0)
    {
      return;
    }
  }

  else
  {
  }

  v3 = sub_264420();

  v4 = [objc_opt_self() systemImageNamed:v3];

  if (v4)
  {
    [v4 alignmentRectInsets];
  }
}

uint64_t sub_1AF450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1AF5A0();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

void *sub_1AF4B4()
{
  sub_ED51C();

  return sub_261CB0();
}

double View.circularIcon(size:)(char *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_262A90();

  return result;
}

unint64_t sub_1AF5A0()
{
  result = qword_3235C8;
  if (!qword_3235C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3235C8);
  }

  return result;
}

uint64_t sub_1AF624(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2EF0(&qword_316F68, &unk_269C50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = sub_2EF0(&qword_318FA0, &unk_286050);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 254)
  {
    v15 = *(a1 + a3[6] + 8);
    if (v15 > 1)
    {
      return (v15 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v16 = sub_2EF0(&qword_316F70, &unk_2693C0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[7];
    goto LABEL_5;
  }

  v17 = sub_2EF0(&qword_317878, &unk_27E490);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[8];

  return v18(v19, a2, v17);
}

uint64_t sub_1AF820(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_2EF0(&qword_316F68, &unk_269C50);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = sub_2EF0(&qword_318FA0, &unk_286050);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 254)
  {
    *(a1 + a4[6] + 8) = -a2;
    return result;
  }

  v16 = sub_2EF0(&qword_316F70, &unk_2693C0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_5;
  }

  v17 = sub_2EF0(&qword_317878, &unk_27E490);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[8];

  return v18(v19, a2, a2, v17);
}

void sub_1AFA0C(uint64_t a1)
{
  sub_6083C(319, &qword_316FE8, type metadata accessor for ColorConstants);
  if (v1 <= 0x3F)
  {
    sub_6083C(319, &qword_319010, type metadata accessor for FontConstants.Navigation);
    if (v2 <= 0x3F)
    {
      sub_60890(319, &qword_3167D0, &type metadata for Bool);
      if (v3 <= 0x3F)
      {
        sub_6083C(319, &qword_316FF0, &type metadata accessor for ColorScheme);
        if (v4 <= 0x3F)
        {
          sub_6083C(319, &qword_3178F8, &type metadata accessor for BlendMode);
          if (v5 <= 0x3F)
          {
            sub_60890(319, &unk_323638, &type metadata for CircularIconView.Size);
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

unint64_t sub_1AFBA8()
{
  result = qword_323680;
  if (!qword_323680)
  {
    sub_2F9C(&qword_3235C0, &qword_2833E8);
    sub_2F9C(&qword_3235A0, &qword_2833D0);
    sub_8E38(&qword_3235B8, &qword_3235A0, &qword_2833D0, &protocol conformance descriptor for ZStack<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323680);
  }

  return result;
}

uint64_t sub_1AFCA4(uint64_t *a1)
{
  sub_2F9C(&qword_323688, &qword_2834D8);
  sub_261730();
  sub_8E38(&qword_323690, &qword_323688, &qword_2834D8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  return swift_getWitnessTable();
}

uint64_t sub_1AFD68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AFDC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t static ListItemMetadata.topChartsListPage(assetInfo:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2E18(a1, a1[3]);
  v4 = sub_2609A0();
  v6 = v5;
  sub_2E18(a1, a1[3]);
  v7 = sub_2609B0();
  v9 = v8;
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  v23[3] = &type metadata for ListItemMetadataTitleWithSubtitle;
  v23[4] = sub_2E5C();
  v10 = swift_allocObject();
  v23[0] = v10;
  *(v10 + 16) = v4;
  *(v10 + 24) = v6;
  *(v10 + 32) = v7;
  *(v10 + 40) = v9;
  *(v10 + 48) = 0;
  v22[3] = sub_2EF0(&qword_315B48, &qword_2664C0);
  v22[4] = sub_2F38();
  v11 = swift_allocObject();
  v22[0] = v11;
  sub_30CC(a1, v11 + 120);
  KeyPath = swift_getKeyPath();
  v26 = 0;
  v13 = swift_getKeyPath();
  v14 = swift_getKeyPath();
  *(v11 + 16) = KeyPath;
  *(v11 + 82) = 0;
  *(v11 + 88) = v13;
  *(v11 + 96) = 0;
  *(v11 + 104) = v14;
  *(v11 + 112) = 0;
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 256) = 0u;
  *(a2 + 272) = 0;
  *(a2 + 240) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 80) = 0u;
  sub_34A0(v24, a2, &qword_315B58, &unk_266540);
  sub_34A0(v23, a2 + 40, &qword_315B60, &unk_276FA0);
  sub_34A0(v22, a2 + 80, &qword_315B68, &unk_266550);
  sub_34A0(v20, a2 + 160, &qword_315B70, &unk_276FB0);
  sub_34A0(v18, a2 + 200, &qword_315B78, &unk_266560);
  return sub_34A0(v16, a2 + 240, &qword_315B80, &qword_276FC0);
}

uint64_t sub_1B00B8()
{

  return swift_deallocObject();
}

uint64_t sub_1B00F8()
{
  sub_3060(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 82));
  sub_3074(*(v0 + 88), *(v0 + 96));
  sub_3074(*(v0 + 104), *(v0 + 112));
  sub_3080((v0 + 120));

  return swift_deallocObject();
}

uint64_t SeriesHeaderCoverStackCoverLayout.model.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[9];
  v14 = v1[8];
  v2 = v14;
  v15 = v3;
  v5 = v1[11];
  v16 = v1[10];
  v4 = v16;
  v17 = v5;
  v6 = v1[5];
  v11[0] = v1[4];
  v11[1] = v6;
  v8 = v1[7];
  v12 = v1[6];
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  a1[7] = v5;
  return sub_5757C(v11, &v10);
}

double sub_1B0254()
{
  v1 = *v0;
  if (v1 > 2)
  {
    v2 = 0.45;
    v3 = 0.7;
  }

  else
  {
    if (!*v0)
    {
      return 0.0;
    }

    v2 = 0.25;
    if (v1 == 1)
    {
      v3 = 0.86;
    }

    else
    {
      v7 = *(v0 + 4) - 3;
      v3 = 0.0;
      if (v7 <= 2)
      {
        v3 = dbl_283890[v7];
      }
    }
  }

  v4 = *(v0 + 3) * *(v0 + 7) * v2 + (*(v0 + 2) * *(v0 + 3) - *(v0 + 1) * (*(v0 + 3) * v3)) * 0.5;
  v5 = -1.0;
  if (*v0 > 2u)
  {
    if (v1 != 3)
    {
      v5 = 1.0;
    }

    return v4 * v5;
  }

  else
  {
    if (v1 != 1)
    {
      v5 = 1.0;
    }

    return v4 * v5;
  }
}

void SeriesHeaderCoverStackCoverLayout.scale(forOverscrollOffset:)(double a1)
{
  if (*(v1 + 40) < 0.0)
  {
    __break(1u);
  }

  else
  {
    sub_E1D74();
    sub_264350();
  }
}

void SeriesHeaderCoverStackCoverLayout.offset(forOverscrollOffset:)(double a1)
{
  v2 = *v1;
  if (v1[5] < 0.0)
  {
    __break(1u);
  }

  else
  {
    sub_E1D74();
    sub_264350();
    if (v2)
    {
      sub_1B0254();
    }

    else
    {
      sub_1B0254();
    }
  }
}

unint64_t sub_1B05F0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B07E8(*a1);
  *a2 = result;
  return result;
}

uint64_t _s7BooksUI022SeriesHeaderCoverStackE6LayoutV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5.f64[0] = *(a1 + 3);
  v6 = *(a1 + 4);
  v7 = *(a1 + 5);
  v8 = *(a1 + 6);
  v9 = *(a1 + 7);
  v10 = *(a1 + 9);
  v53[4] = *(a1 + 8);
  v53[5] = v10;
  v11 = *(a1 + 11);
  v53[6] = *(a1 + 10);
  v53[7] = v11;
  v12 = *(a1 + 5);
  v53[0] = *(a1 + 4);
  v53[1] = v12;
  v15 = *(a1 + 7);
  v53[2] = *(a1 + 6);
  v53[3] = v15;
  v13 = *a2;
  v14 = *(a2 + 8);
  v15.f64[0] = *(a2 + 3);
  v16 = *(a2 + 4);
  v17 = *(a2 + 5);
  v18 = *(a2 + 6);
  v19 = *(a2 + 7);
  v20 = *(a2 + 9);
  v54[4] = *(a2 + 8);
  v54[5] = v20;
  v21 = *(a2 + 11);
  v54[6] = *(a2 + 10);
  v54[7] = v21;
  v22 = *(a2 + 5);
  v54[0] = *(a2 + 4);
  v54[1] = v22;
  v23 = v8 == v18;
  v24 = *(a2 + 7);
  v25 = v23;
  v54[2] = *(a2 + 6);
  v54[3] = v24;
  if (v3 == v13)
  {
    v5.f64[1] = v7;
    v15.f64[1] = v17;
    if ((~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(v4, v14), vceqq_f64(v5, v15)), xmmword_2836A0)) & 0xF) == 0 && v25 && v9 == v19 && v6 == v16)
    {
      v26 = *(a1 + 9);
      v47 = *(a1 + 8);
      v48 = v26;
      v27 = *(a1 + 11);
      v49 = *(a1 + 10);
      v50 = v27;
      v28 = *(a1 + 5);
      v43 = *(a1 + 4);
      v44 = v28;
      v29 = *(a1 + 7);
      v45 = *(a1 + 6);
      v46 = v29;
      v30 = *(a2 + 9);
      v39 = *(a2 + 8);
      v40 = v30;
      v31 = *(a2 + 11);
      v41 = *(a2 + 10);
      v42 = v31;
      v32 = *(a2 + 5);
      v35 = *(a2 + 4);
      v36 = v32;
      v33 = *(a2 + 7);
      v37 = *(a2 + 6);
      v38 = v33;
      sub_5757C(v53, v52);
      sub_5757C(v54, v52);
      v2 = _s7BooksUI14CoverViewModelV0C5StyleO2eeoiySbAE_AEtFZ_0(&v43, &v35);
      v51[4] = v39;
      v51[5] = v40;
      v51[6] = v41;
      v51[7] = v42;
      v51[0] = v35;
      v51[1] = v36;
      v51[2] = v37;
      v51[3] = v38;
      sub_EA998(v51);
      v52[4] = v47;
      v52[5] = v48;
      v52[6] = v49;
      v52[7] = v50;
      v52[0] = v43;
      v52[1] = v44;
      v52[2] = v45;
      v52[3] = v46;
      sub_EA998(v52);
    }
  }

  return v2 & 1;
}

unint64_t sub_1B07E8(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

double _s7BooksUI022SeriesHeaderCoverStackE6LayoutV6height3for12CoreGraphics7CGFloatVSo6CGSizeV_tF_0()
{
  v1 = *v0;
  result = v0[3];
  if (v1 <= 1)
  {
    if (*v0)
    {
      return result * 0.86;
    }
  }

  else if (v1 == 2)
  {
    v4 = *(v0 + 4) - 3;
    v5 = 0.0;
    if (v4 < 3)
    {
      v5 = dbl_283890[v4];
    }

    return result * v5;
  }

  else
  {
    v3 = result * 0.7;
    result = result * 0.7;
    if (v1 == 3)
    {
      return v3;
    }
  }

  return result;
}

unint64_t sub_1B0874(uint64_t a1)
{
  result = sub_1B089C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B089C()
{
  result = qword_3236B0;
  if (!qword_3236B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3236B0);
  }

  return result;
}

__n128 sub_1B08F0(uint64_t a1, __int128 *a2)
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
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_1B0924(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 88) >> 3) & 0xFFFFFF80 | (*(a1 + 88) >> 1);
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

double sub_1B0978(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 184) = 0;
    result = 0.0;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 192) = 1;
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
      *(a1 + 64) = 0;
      *(a1 + 72) = 0;
      *(a1 + 80) = 0;
      *(a1 + 88) = (8 * -a2) & 0x7FFFFFC00 | (2 * (-a2 & 0x7FLL));
      result = 0.0;
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0u;
      *(a1 + 128) = 0u;
      *(a1 + 144) = 0u;
      *(a1 + 160) = 0u;
      *(a1 + 176) = 0u;
      return result;
    }

    *(a1 + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B0A2C()
{
  result = qword_3236B8;
  if (!qword_3236B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3236B8);
  }

  return result;
}

uint64_t View.cheapShadow<A>(shape:color:radius:x:y:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2612B0();
  swift_getWitnessTable();
  return sub_2629F0();
}

uint64_t sub_1B0B58(double a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = sub_2612B0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v18 - v14;
  sub_263160();
  swift_getWitnessTable();
  sub_1609C();
  v16 = *(v10 + 8);
  v16(v12, v9);
  sub_1609C();
  return (v16)(v15, v9);
}

uint64_t sub_1B0D18(uint64_t *a1)
{
  sub_2612B0();
  swift_getWitnessTable();
  sub_261F60();
  sub_261730();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t ReadingSummaryFrameViewModel.init(longestStreak:totalCompletedGoalDays:exposureData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v19 = a3;
  v7 = sub_2602E0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ReadingSummaryFrameViewModel(0);
  v12 = v11[7];
  v13 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  sub_2602A0();
  isa = sub_2602B0().super.isa;
  (*(v8 + 8))(v10, v7);
  [v13 setCalendar:isa];

  [v13 setAllowedUnits:16];
  [v13 setMaximumUnitCount:1];
  [v13 setUnitsStyle:3];
  *(a4 + v12) = v13;
  sub_22148(a1, a4, &qword_3236C0, &qword_2838B0);
  *(a4 + v11[5]) = a2;
  v15 = v11[6];
  v16 = sub_260550();
  return (*(*(v16 - 8) + 32))(a4 + v15, v19, v16);
}

uint64_t sub_1B0FD8()
{
  v0 = sub_260290();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v18[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v18[-v5];
  v7 = sub_264410();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v18[-v12];
  sub_2643A0();
  sub_260260();
  (*(v8 + 16))(v10, v13, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v1 + 16))(v3, v6, v0);
  v16 = sub_264490();
  (*(v1 + 8))(v6, v0);
  (*(v8 + 8))(v13, v7);
  return v16;
}

uint64_t sub_1B125C()
{
  v0 = sub_260290();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v18[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v18[-v5];
  v7 = sub_264410();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v18[-v12];
  sub_2643A0();
  sub_260260();
  (*(v8 + 16))(v10, v13, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v1 + 16))(v3, v6, v0);
  v16 = sub_264490();
  (*(v1 + 8))(v6, v0);
  (*(v8 + 8))(v13, v7);
  return v16;
}

uint64_t sub_1B14D8()
{
  v1 = v0;
  v2 = sub_2EF0(&qword_323A10, &unk_283BA0);
  __chkstk_darwin(v2 - 8);
  v45 = &v40 - v3;
  v4 = sub_2EF0(&qword_317AC8, &qword_269E38);
  __chkstk_darwin(v4 - 8);
  v42 = &v40 - v5;
  v6 = sub_25FEE0();
  v43 = *(v6 - 8);
  v44 = v6;
  __chkstk_darwin(v6);
  v41 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2602E0();
  v9 = *(v8 - 8);
  v46 = v8;
  v47 = v9;
  __chkstk_darwin(v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2602D0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2EF0(&qword_3236C0, &qword_2838B0);
  __chkstk_darwin(v16 - 8);
  v18 = &v40 - v17;
  v19 = sub_25FEB0();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v1;
  v23 = v1;
  v25 = v24;
  sub_8198(v23, v18, &qword_3236C0, &qword_2838B0);
  if ((*(v20 + 48))(v18, 1, v25) == 1)
  {
    sub_8E80(v18, &qword_3236C0, &qword_2838B0);
  }

  else
  {
    (*(v20 + 32))(v22, v18, v25);
    (*(v13 + 104))(v15, enum case for Calendar.Component.day(_:), v12);
    sub_2602A0();
    sub_25FE80();
    v27 = v26;
    v28 = v46;
    (*(v47 + 8))(v11, v46);
    (*(v13 + 8))(v15, v12);
    if ((v27 & 1) == 0)
    {
      v29 = *(v40 + *(type metadata accessor for ReadingSummaryFrameViewModel(0) + 28));
      v30 = v42;
      sub_2602A0();
      (*(v47 + 56))(v30, 0, 1, v28);
      v31 = sub_260300();
      (*(*(v31 - 8) + 56))(v45, 1, 1, v31);
      v32 = v41;
      sub_25FED0();
      isa = sub_25FEC0().super.isa;
      (*(v43 + 8))(v32, v44);
      v34 = [v29 stringFromDateComponents:isa];

      if (v34)
      {
        v35 = sub_264460();
        v37 = v36;

        v52 = v35;
        v53 = v37;
        v50 = 32;
        v51 = 0xE100000000000000;
        v48 = 10;
        v49 = 0xE100000000000000;
        sub_10A84();
        v38 = sub_264AA0();
        (*(v20 + 8))(v22, v25);

        return v38;
      }
    }

    (*(v20 + 8))(v22, v25);
  }

  return 0;
}

uint64_t sub_1B1B10()
{
  v55 = sub_264410();
  v58 = *(v55 - 8);
  __chkstk_darwin(v55);
  v56 = &v44 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v57 = &v44 - v3;
  v52 = sub_2601B0();
  v4 = *(v52 - 8);
  __chkstk_darwin(v52);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_260290();
  v53 = *(v59 - 8);
  __chkstk_darwin(v59);
  v54 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v44 - v9;
  v11 = sub_2EF0(&qword_3236C0, &qword_2838B0);
  __chkstk_darwin(v11 - 8);
  v13 = &v44 - v12;
  v14 = sub_25FEB0();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_8198(v0, v13, &qword_3236C0, &qword_2838B0);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_8E80(v13, &qword_3236C0, &qword_2838B0);
    return 0;
  }

  else
  {
    v50 = v14;
    v51 = v15;
    (*(v15 + 32))(v17, v13, v14);
    v19 = [objc_allocWithZone(NSDateFormatter) init];
    sub_260260();
    isa = sub_260240().super.isa;
    v21 = v53;
    v22 = *(v53 + 8);
    v48 = v53 + 8;
    v49 = v22;
    v22(v10, v59);
    [v19 setLocale:isa];

    v23 = sub_264420();
    [v19 setLocalizedDateFormatFromTemplate:v23];

    sub_25FEA0();
    v24 = sub_260160().super.isa;
    v25 = *(v4 + 8);
    v26 = v52;
    v25(v6, v52);
    v46 = v19;
    v47 = v17;
    v27 = [v19 stringFromDate:v24];

    v28 = sub_264460();
    v44 = v29;
    v45 = v28;

    sub_25FE90();
    v30 = sub_260160().super.isa;
    v25(v6, v26);
    v31 = [v19 stringFromDate:v30];

    v52 = sub_264460();
    v33 = v32;

    v34 = v57;
    sub_2643A0();
    sub_260260();
    v35 = v58;
    v36 = v55;
    (*(v58 + 16))(v56, v34, v55);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v38 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v39 = v59;
    (*(v21 + 16))(v54, v10, v59);
    v40 = sub_264490();
    v42 = v41;
    v49(v10, v39);
    (*(v35 + 8))(v34, v36);
    v60 = v45;
    v61 = v44;
    v62._countAndFlagsBits = 32;
    v62._object = 0xE100000000000000;
    sub_264530(v62);
    v63._countAndFlagsBits = v40;
    v63._object = v42;
    sub_264530(v63);

    v64._countAndFlagsBits = 32;
    v64._object = 0xE100000000000000;
    sub_264530(v64);
    v65._countAndFlagsBits = v52;
    v65._object = v33;
    sub_264530(v65);

    v18 = v60;
    (*(v51 + 8))(v47, v50);
  }

  return v18;
}

uint64_t sub_1B2140@<X0>(uint64_t *a1@<X8>)
{
  v45 = a1;
  v1 = sub_2EF0(&qword_323A10, &unk_283BA0);
  __chkstk_darwin(v1 - 8);
  v42 = &v39 - v2;
  v3 = sub_2EF0(&qword_317AC8, &qword_269E38);
  __chkstk_darwin(v3 - 8);
  v39 = &v39 - v4;
  v5 = sub_25FEE0();
  v43 = *(v5 - 8);
  v44 = v5;
  __chkstk_darwin(v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_260290();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v39 - v13;
  v15 = sub_264410();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v39 - v20;
  sub_2643A0();
  sub_260260();
  (*(v16 + 16))(v18, v21, v15);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v23 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v9 + 16))(v11, v14, v8);
  v40 = sub_264490();
  v25 = v24;
  (*(v9 + 8))(v14, v8);
  (*(v16 + 8))(v21, v15);
  v26 = *(v41 + *(type metadata accessor for ReadingSummaryFrameViewModel(0) + 28));
  v27 = v39;
  sub_2602A0();
  v28 = sub_2602E0();
  (*(*(v28 - 8) + 56))(v27, 0, 1, v28);
  v29 = sub_260300();
  (*(*(v29 - 8) + 56))(v42, 1, 1, v29);
  sub_25FED0();
  isa = sub_25FEC0().super.isa;
  (*(v43 + 8))(v7, v44);
  v31 = [v26 stringFromDateComponents:isa];

  if (v31)
  {
    v32 = sub_264460();
    v34 = v33;

    v50 = v32;
    v51 = v34;
    v48 = 32;
    v49 = 0xE100000000000000;
    v46 = 10;
    v47 = 0xE100000000000000;
    sub_10A84();
    v31 = sub_264AA0();
    v36 = v35;
  }

  else
  {
    v36 = 0;
  }

  v37 = v45;
  *v45 = v40;
  v37[1] = v25;
  v37[2] = v31;
  v37[3] = v36;
  type metadata accessor for PlatterItem.Configuration(0);
  v37[4] = 0;
  v37[5] = 0;
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1B2708@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_260290();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v27 - v7;
  v9 = sub_264410();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v27 - v14;
  sub_2643A0();
  sub_260260();
  (*(v10 + 16))(v12, v15, v9);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v3 + 16))(v5, v8, v2);
  v18 = sub_264490();
  v20 = v19;
  (*(v3 + 8))(v8, v2);
  (*(v10 + 8))(v15, v9);
  v21 = sub_1B14D8();
  v23 = v22;
  v24 = sub_1B1B10();
  *a1 = v18;
  a1[1] = v20;
  a1[2] = v21;
  a1[3] = v23;
  a1[4] = v24;
  a1[5] = v25;
  type metadata accessor for PlatterItem.Configuration(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1B29C4@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v37 = sub_2EF0(&qword_323980, &qword_283AA8);
  __chkstk_darwin(v37);
  v36 = (&v34 - v1);
  v2 = sub_2630C0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_2EF0(&qword_323988, &qword_283AB0);
  __chkstk_darwin(v39);
  v7 = &v34 - v6;
  v8 = sub_260D00();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v34 - v13;
  v15 = type metadata accessor for PlatterItem.Configuration(0);
  __chkstk_darwin(v15);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4E50(v35, v17, type metadata accessor for PlatterItem.Configuration);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    v19 = *(v17 + 1);
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    *(v20 + 24) = v19;
    v21 = *(v17 + 2);
    *(v20 + 32) = *(v17 + 1);
    *(v20 + 48) = v21;
    v22 = v36;
    *v36 = sub_1B5A44;
    v22[1] = v20;
    swift_storeEnumTagMultiPayload();
    sub_2EF0(&qword_323990, &qword_283AB8);
    sub_1B5A54();
    sub_8E38(&qword_3239C8, &qword_323990, &qword_283AB8, &protocol conformance descriptor for GeometryReader<A>);
    return sub_261F80();
  }

  else
  {
    v24 = v9;
    v25 = *(v9 + 32);
    v34 = v8;
    v25(v14, v17, v8);
    (*(v9 + 16))(v11, v14, v8);
    sub_263120();
    (*(v3 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v2);
    v26 = sub_263100();

    (*(v3 + 8))(v5, v2);
    LODWORD(v35) = sub_262120();
    v27 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
    v29 = v28;
    KeyPath = swift_getKeyPath();
    v31 = &v7[*(v39 + 36)];
    v32 = type metadata accessor for PlatterModifier(0);
    *(v31 + *(v32 + 20)) = KeyPath;
    sub_2EF0(&qword_3179C0, &qword_269D60);
    swift_storeEnumTagMultiPayload();
    *v31 = swift_getKeyPath();
    sub_2EF0(&qword_316C00, &qword_26A520);
    swift_storeEnumTagMultiPayload();
    v33 = (v31 + *(v32 + 24));
    *v33 = v27;
    v33[1] = v29;
    *v7 = v26;
    *(v7 + 1) = 0;
    *(v7 + 8) = 1;
    *(v7 + 5) = v35;
    sub_8198(v7, v36, &qword_323988, &qword_283AB0);
    swift_storeEnumTagMultiPayload();
    sub_2EF0(&qword_323990, &qword_283AB8);
    sub_1B5A54();
    sub_8E38(&qword_3239C8, &qword_323990, &qword_283AB8, &protocol conformance descriptor for GeometryReader<A>);
    sub_261F80();
    sub_8E80(v7, &qword_323988, &qword_283AB0);
    return (*(v24 + 8))(v14, v34);
  }
}

uint64_t sub_1B2F44@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v49 = a4;
  v50 = a5;
  v47 = a1;
  v48 = a3;
  v51 = a7;
  v9 = type metadata accessor for TextLockup(0);
  v10 = (v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261420();
  if (v13 <= 200.0)
  {
    v14 = 2;
  }

  else
  {
    v14 = 3;
  }

  HIDWORD(v46) = v14;
  v15 = v10[15];
  v16 = enum case for Font.Design.default(_:);
  v17 = sub_2625C0();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v12 + v15, v16, v17);
  (*(v18 + 56))(v12 + v15, 0, 1, v17);
  v19 = sub_261E60();
  v20 = sub_263580();
  v22 = v21;
  v23 = v10[19];
  v24 = enum case for DynamicTypeSize.accessibility2(_:);
  v25 = sub_261690();
  (*(*(v25 - 8) + 104))(v12 + v23, v24, v25);
  *v12 = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v26 = v10[7];
  *(v12 + v26) = swift_getKeyPath();
  sub_2EF0(&qword_3179C0, &qword_269D60);
  swift_storeEnumTagMultiPayload();
  v27 = v12 + v10[8];
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  v28 = v12 + v10[9];
  *v28 = swift_getKeyPath();
  v28[8] = 0;
  v29 = v12 + v10[10];
  *v29 = swift_getKeyPath();
  v29[8] = 0;
  *(v12 + v10[11]) = BYTE4(v46);
  v30 = (v12 + v10[12]);
  v31 = v48;
  *v30 = v47;
  v30[1] = a2;
  v32 = (v12 + v10[13]);
  v33 = v49;
  *v32 = v31;
  v32[1] = v33;
  v32[2] = 0;
  v34 = (v12 + v10[14]);
  *v34 = v50;
  v34[1] = a6;
  *(v12 + v10[16]) = v19;
  v35 = (v12 + v10[17]);
  *v35 = v20;
  v35[1] = v22;
  *(v12 + v10[18]) = 0;

  v36 = sub_263520();
  v38 = v37;
  KeyPath = swift_getKeyPath();
  v40 = sub_2EF0(&qword_3239D0, &qword_283B60);
  v41 = v51;
  v42 = (v51 + *(v40 + 36));
  v43 = type metadata accessor for PlatterModifier(0);
  *(v42 + *(v43 + 20)) = KeyPath;
  swift_storeEnumTagMultiPayload();
  *v42 = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v44 = (v42 + *(v43 + 24));
  *v44 = v36;
  v44[1] = v38;
  return sub_1B5BF8(v12, v41, type metadata accessor for TextLockup);
}

uint64_t sub_1B32D4@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_3179C0, &qword_269D60);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for PlatterModifier(0);
  sub_8198(v1 + *(v10 + 20), v9, &qword_3179C0, &qword_269D60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_263640();
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

uint64_t sub_1B34E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a1;
  v54 = a2;
  v2 = type metadata accessor for ColorConstants(0);
  __chkstk_darwin(v2 - 8);
  v53 = (&v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_2EF0(&qword_323AC0, &qword_283C18);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v52 - v6;
  v8 = sub_2EF0(&qword_323AC8, &qword_283C20);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v52 - v10;
  v12 = sub_2EF0(&qword_323AD0, &qword_283C28);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v52 - v14;
  v16 = sub_2EF0(&qword_323AD8, &qword_283C30);
  v17 = v16 - 8;
  __chkstk_darwin(v16);
  v19 = &v52 - v18;
  v20 = sub_262500();
  sub_2610C0();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = sub_2EF0(&qword_323AE0, &qword_283C38);
  (*(*(v29 - 8) + 16))(v7, v52, v29);
  v30 = &v7[*(v5 + 44)];
  *v30 = v20;
  *(v30 + 1) = v22;
  *(v30 + 2) = v24;
  *(v30 + 3) = v26;
  *(v30 + 4) = v28;
  v30[40] = 0;
  type metadata accessor for PlatterModifier(0);
  sub_261830();
  sub_22148(v7, v11, &qword_323AC0, &qword_283C18);
  v31 = &v11[*(v9 + 44)];
  v32 = v60;
  *(v31 + 4) = v59;
  *(v31 + 5) = v32;
  *(v31 + 6) = v61;
  v33 = v56;
  *v31 = v55;
  *(v31 + 1) = v33;
  v34 = v58;
  *(v31 + 2) = v57;
  *(v31 + 3) = v34;
  v35 = v53;
  sub_404B8(v53);
  v36 = [objc_opt_self() quaternaryLabelColor];
  sub_263070();
  sub_263000();

  sub_1B60CC(v35, type metadata accessor for ColorConstants);
  v37 = sub_263000();

  v38 = sub_262500();
  sub_22148(v11, v15, &qword_323AC8, &qword_283C20);
  v39 = &v15[*(v13 + 44)];
  *v39 = v37;
  v39[8] = v38;
  sub_1B32D4(&v19[*(v17 + 44)]);
  sub_22148(v15, v19, &qword_323AD0, &qword_283C28);
  v40 = sub_2EF0(&qword_323AE8, &qword_283C40);
  v41 = v54;
  v42 = (v54 + *(v40 + 36));
  v43 = *(sub_2617E0() + 20);
  v44 = enum case for RoundedCornerStyle.continuous(_:);
  v45 = sub_261DD0();
  (*(*(v45 - 8) + 104))(&v42[v43], v44, v45);
  __asm { FMOV            V0.2D, #12.0 }

  *v42 = _Q0;
  *&v42[*(sub_2EF0(&qword_317DA8, &qword_26C1B0) + 36)] = 256;
  return sub_22148(v19, v41, &qword_323AD8, &qword_283C30);
}

uint64_t sub_1B3988()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 16);
  if (*(v0 + 24) != 1)
  {

    sub_264900();
    v6 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_4054(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

BOOL sub_1B3AD4()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 16);
  if (*(v0 + 24) != 1)
  {

    sub_264900();
    v6 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_4054(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return (v5 & 1) == 0;
}

uint64_t ReadingSummaryFrame.sharableView.getter()
{
  v1 = type metadata accessor for ReadingSummaryFrame(0);
  __chkstk_darwin(v1);
  sub_1B4E50(v0, &v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReadingSummaryFrame);
  sub_1B4EB8(&qword_3236C8, type metadata accessor for ReadingSummaryFrame, &protocol conformance descriptor for ReadingSummaryFrame);
  return sub_263310();
}

uint64_t ReadingSummaryFrame.exposureData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ReadingSummaryFrame(0) + 28);
  v4 = *(type metadata accessor for ReadingSummaryFrameViewModel(0) + 24);
  v5 = sub_260550();
  a1[3] = v5;
  a1[4] = sub_1B4EB8(&qword_317678, &type metadata accessor for YIRSourceData, &protocol conformance descriptor for YIRSourceData);
  a1[5] = sub_1B4EB8(&qword_317680, &type metadata accessor for YIRSourceData, &protocol conformance descriptor for YIRSourceData);
  v6 = sub_10934(a1);
  v7 = *(*(v5 - 8) + 16);

  return v7(v6, v3 + v4, v5);
}

uint64_t ReadingSummaryFrame.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 16) = swift_getKeyPath();
  *(a2 + 24) = 0;
  v4 = type metadata accessor for ReadingSummaryFrame(0);
  v5 = (a2 + *(v4 + 24));
  v6 = *(sub_2EF0(&qword_316DA8, &qword_269130) + 48);
  *v5 = sub_262F40();
  v7 = enum case for ColorScheme.light(_:);
  v8 = sub_261180();
  v9 = *(v8 - 8);
  (*(v9 + 104))(v5 + v6, v7, v8);
  (*(v9 + 56))(v5 + v6, 0, 1, v8);
  type metadata accessor for PageBackground(0);
  swift_storeEnumTagMultiPayload();
  return sub_1B5BF8(a1, a2 + *(v4 + 28), type metadata accessor for ReadingSummaryFrameViewModel);
}

uint64_t ReadingSummaryFrame.body.getter@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_261E50();
  *(a2 + 8) = 0x4040000000000000;
  *(a2 + 16) = 0;
  v4 = sub_2EF0(&qword_3236D0, &qword_283910);
  sub_1B4088(v2, a2 + *(v4 + 44));
  KeyPath = swift_getKeyPath();
  v6 = (a2 + *(sub_2EF0(&qword_3236D8, &unk_283948) + 36));
  v7 = *(sub_2EF0(&qword_3173A0, &qword_26D0C0) + 28);
  v8 = enum case for ColorScheme.dark(_:);
  v9 = sub_261180();
  result = (*(*(v9 - 8) + 104))(v6 + v7, v8, v9);
  *v6 = KeyPath;
  return result;
}

uint64_t sub_1B4088@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2EF0(&qword_3239D8, &qword_283B68);
  __chkstk_darwin(v4 - 8);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v44 - v8;
  v10 = type metadata accessor for TextLockup(0);
  v11 = (v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = (&v44 - v15);
  type metadata accessor for ReadingSummaryFrame(0);
  v17 = sub_1B0FD8();
  v48 = v18;
  v49 = v17;
  v19 = sub_1B125C();
  v46 = v20;
  v47 = v19;
  v21 = v11[15];
  v22 = sub_2625C0();
  (*(*(v22 - 8) + 56))(v16 + v21, 1, 1, v22);
  v45 = sub_261E60();
  v44 = sub_263580();
  v24 = v23;
  v25 = v11[19];
  v26 = enum case for DynamicTypeSize.accessibility2(_:);
  v27 = sub_261690();
  (*(*(v27 - 8) + 104))(v16 + v25, v26, v27);
  *v16 = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v28 = v11[7];
  *(v16 + v28) = swift_getKeyPath();
  sub_2EF0(&qword_3179C0, &qword_269D60);
  swift_storeEnumTagMultiPayload();
  v29 = v16 + v11[8];
  *v29 = swift_getKeyPath();
  v29[8] = 0;
  v30 = v16 + v11[9];
  *v30 = swift_getKeyPath();
  v30[8] = 0;
  v31 = v16 + v11[10];
  *v31 = swift_getKeyPath();
  v31[8] = 0;
  *(v16 + v11[11]) = 5;
  v32 = (v16 + v11[12]);
  *v32 = 0;
  v32[1] = 0;
  v33 = (v16 + v11[13]);
  v34 = v48;
  *v33 = v49;
  v33[1] = v34;
  v33[2] = 0;
  v35 = (v16 + v11[14]);
  v36 = v46;
  *v35 = v47;
  v35[1] = v36;
  v37 = v44;
  *(v16 + v11[16]) = v45;
  v38 = (v16 + v11[17]);
  *v38 = v37;
  v38[1] = v24;
  *(v16 + v11[18]) = 0;
  *v9 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  *(v9 + 1) = v39;
  *(v9 + 2) = 0x4030000000000000;
  v9[24] = 0;
  *(v9 + 4) = 0x4030000000000000;
  v9[40] = 0;
  v40 = sub_2EF0(&qword_3239E0, &qword_283B70);
  sub_1B44C4(a1, &v9[*(v40 + 44)]);
  sub_1B4E50(v16, v13, type metadata accessor for TextLockup);
  sub_8198(v9, v6, &qword_3239D8, &qword_283B68);
  *a2 = 0;
  *(a2 + 8) = 1;
  v41 = sub_2EF0(&qword_3239E8, &qword_283B78);
  sub_1B4E50(v13, a2 + v41[12], type metadata accessor for TextLockup);
  sub_8198(v6, a2 + v41[16], &qword_3239D8, &qword_283B68);
  v42 = a2 + v41[20];
  *v42 = 0;
  *(v42 + 8) = 1;
  sub_8E80(v9, &qword_3239D8, &qword_283B68);
  sub_1B60CC(v16, type metadata accessor for TextLockup);
  sub_8E80(v6, &qword_3239D8, &qword_283B68);
  return sub_1B60CC(v13, type metadata accessor for TextLockup);
}

uint64_t sub_1B44C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2EF0(&qword_3239F0, &qword_283B80);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - v6;
  v8 = sub_261C90();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  if (*(a1 + 8) == 1)
  {
    if (v12)
    {
      goto LABEL_6;
    }
  }

  else
  {

    sub_264900();
    v13 = sub_2624B0();
    v19 = v5;
    v14 = v13;
    sub_260D10();

    v5 = v19;
    sub_261C80();
    swift_getAtKeyPath();
    sub_4054(v12, 0);
    (*(v9 + 8))(v11, v8);
    if (v20)
    {
      goto LABEL_6;
    }
  }

  if ((sub_1B3988() & 1) == 0)
  {
    v17 = 1;
    return (*(v5 + 56))(a2, v17, 1, v4);
  }

LABEL_6:
  *v7 = 0;
  v7[8] = 1;
  v15 = sub_2EF0(&qword_3239F8, &qword_283B88);
  sub_1B474C(&v7[*(v15 + 36)]);
  v16 = &v7[*(v4 + 36)];
  *v16 = 0x3FF0000000000000;
  *(v16 + 4) = 0;
  sub_22148(v7, a2, &qword_3239F0, &qword_283B80);
  v17 = 0;
  return (*(v5 + 56))(a2, v17, 1, v4);
}

uint64_t sub_1B474C@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v1 = type metadata accessor for PlatterItem(0);
  __chkstk_darwin(v1 - 8);
  v31 = (&v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v3);
  v5 = (&v30 - v4);
  v30 = sub_2EF0(&qword_323A00, &qword_283B90);
  __chkstk_darwin(v30);
  v34 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v33 = &v30 - v8;
  __chkstk_darwin(v9);
  v11 = &v30 - v10;
  __chkstk_darwin(v12);
  v32 = &v30 - v13;
  __chkstk_darwin(v14);
  v16 = &v30 - v15;
  __chkstk_darwin(v17);
  v19 = &v30 - v18;
  type metadata accessor for ReadingSummaryFrame(0);
  sub_1B2140(v5);
  sub_1B3AD4();
  sub_263720();
  sub_2613C0();
  sub_2613D0();
  sub_2613E0();

  if (sub_1B3AD4())
  {
    sub_263630();
    sub_2635B0();
  }

  v20 = sub_261400();

  sub_1B5BF8(v5, v16, type metadata accessor for PlatterItem);
  v21 = v30;
  *&v16[*(v30 + 36)] = v20;
  sub_22148(v16, v19, &qword_323A00, &qword_283B90);
  v22 = v31;
  sub_1B2708(v31);
  sub_1B3AD4();
  sub_263720();
  sub_2613C0();
  sub_2613D0();
  sub_2613E0();

  if (sub_1B3AD4())
  {
    sub_263630();
    sub_2635B0();
  }

  v23 = sub_261400();

  sub_1B5BF8(v22, v11, type metadata accessor for PlatterItem);
  *&v11[*(v21 + 36)] = v23;
  v24 = v32;
  sub_22148(v11, v32, &qword_323A00, &qword_283B90);
  v25 = v33;
  sub_8198(v19, v33, &qword_323A00, &qword_283B90);
  v26 = v34;
  sub_8198(v24, v34, &qword_323A00, &qword_283B90);
  v27 = v35;
  sub_8198(v25, v35, &qword_323A00, &qword_283B90);
  v28 = sub_2EF0(&qword_323A08, &qword_283B98);
  sub_8198(v26, v27 + *(v28 + 48), &qword_323A00, &qword_283B90);
  sub_8E80(v24, &qword_323A00, &qword_283B90);
  sub_8E80(v19, &qword_323A00, &qword_283B90);
  sub_8E80(v26, &qword_323A00, &qword_283B90);
  return sub_8E80(v25, &qword_323A00, &qword_283B90);
}

uint64_t sub_1B4BEC(uint64_t a1)
{
  __chkstk_darwin(v1);
  sub_1B4E50(v3, &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReadingSummaryFrame);
  sub_1B4EB8(&qword_3236C8, type metadata accessor for ReadingSummaryFrame, &protocol conformance descriptor for ReadingSummaryFrame);
  return sub_263310();
}

uint64_t sub_1B4CEC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2 + *(a1 + 28);
  v5 = *(type metadata accessor for ReadingSummaryFrameViewModel(0) + 24);
  v6 = sub_260550();
  a2[3] = v6;
  a2[4] = sub_1B4EB8(&qword_317678, &type metadata accessor for YIRSourceData, &protocol conformance descriptor for YIRSourceData);
  a2[5] = sub_1B4EB8(&qword_317680, &type metadata accessor for YIRSourceData, &protocol conformance descriptor for YIRSourceData);
  v7 = sub_10934(a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(v7, v4 + v5, v6);
}

uint64_t sub_1B4DE8@<X0>(_BYTE *a1@<X8>)
{
  if (sub_261BE0() & 1) != 0 || (sub_261BF0())
  {
    result = 1;
  }

  else
  {
    result = sub_261BC0();
  }

  *a1 = result & 1;
  return result;
}

uint64_t sub_1B4E50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4EB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B4F18(uint64_t a1)
{
  result = sub_1B4EB8(&qword_3236E0, type metadata accessor for ReadingSummaryFrame, &protocol conformance descriptor for ReadingSummaryFrame);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4F70(uint64_t a1)
{
  result = sub_1B4EB8(&qword_3236C8, type metadata accessor for ReadingSummaryFrame, &protocol conformance descriptor for ReadingSummaryFrame);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2EF0(&qword_3236C0, &qword_2838B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_260550();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1B5124(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2EF0(&qword_3236C0, &qword_2838B0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_260550();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

void sub_1B5238(uint64_t a1)
{
  sub_1B5F90(319, &qword_323750, &type metadata accessor for DateInterval, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_260550();
    if (v2 <= 0x3F)
    {
      sub_1B530C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1B530C()
{
  result = qword_323758;
  if (!qword_323758)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_323758);
  }

  return result;
}

uint64_t sub_1B536C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for PageBackground(0);
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
      v13 = type metadata accessor for ReadingSummaryFrameViewModel(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1B549C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v8 = type metadata accessor for PageBackground(0);
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
      v13 = type metadata accessor for ReadingSummaryFrameViewModel(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1B55BC(uint64_t a1)
{
  sub_3E7AC();
  if (v1 <= 0x3F)
  {
    type metadata accessor for PageBackground(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ReadingSummaryFrameViewModel(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1B565C()
{
  result = qword_323828;
  if (!qword_323828)
  {
    sub_2F9C(&qword_3236D8, &unk_283948);
    sub_8E38(&qword_323830, &qword_323838, &qword_283A28, &protocol conformance descriptor for VStack<A>);
    sub_8E38(&qword_317398, &qword_3173A0, &qword_26D0C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323828);
  }

  return result;
}

uint64_t sub_1B5754(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for PlatterItem.Configuration(0);
  v6 = *(*(v5 - 8) + 48);

  return v6(a1, a2, v5);
}

uint64_t sub_1B57F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlatterItem.Configuration(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B5884(uint64_t a1)
{
  result = type metadata accessor for PlatterItem.Configuration(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B58F0(uint64_t a1)
{
  sub_260D00();
  if (v1 <= 0x3F)
  {
    sub_1B5964(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1B5964(uint64_t a1)
{
  if (!qword_323950)
  {
    sub_2F9C(&qword_316DD0, &qword_2692C0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_323950);
    }
  }
}

uint64_t sub_1B59FC()
{

  return swift_deallocObject();
}

unint64_t sub_1B5A54()
{
  result = qword_323998;
  if (!qword_323998)
  {
    sub_2F9C(&qword_323988, &qword_283AB0);
    sub_1B5B10();
    sub_1B4EB8(&qword_3239C0, type metadata accessor for PlatterModifier, &unk_283BC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323998);
  }

  return result;
}

unint64_t sub_1B5B10()
{
  result = qword_3239A0;
  if (!qword_3239A0)
  {
    sub_2F9C(&qword_3239A8, &unk_283AC0);
    sub_2F960();
    sub_8E38(&qword_3239B0, &qword_3239B8, &qword_283AD0, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3239A0);
  }

  return result;
}

uint64_t sub_1B5BF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B5C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2EF0(&qword_316F68, &unk_269C50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_2EF0(&qword_317878, &unk_27E490);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1B5D90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2EF0(&qword_316F68, &unk_269C50);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_2EF0(&qword_317878, &unk_27E490);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_1B5EA4(uint64_t a1)
{
  sub_1B5F90(319, &qword_316FE8, type metadata accessor for ColorConstants, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_1B5F90(319, &qword_3178F8, &type metadata accessor for BlendMode, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B5F90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1B5FF8()
{
  result = qword_323AB0;
  if (!qword_323AB0)
  {
    sub_2F9C(&qword_323AB8, &qword_283BC0);
    sub_1B5A54();
    sub_8E38(&qword_3239C8, &qword_323990, &qword_283AB8, &protocol conformance descriptor for GeometryReader<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323AB0);
  }

  return result;
}

uint64_t sub_1B60CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B6130()
{
  result = qword_323AF0;
  if (!qword_323AF0)
  {
    sub_2F9C(&qword_323AE8, &qword_283C40);
    sub_1B61E8();
    sub_8E38(&qword_317DA0, &qword_317DA8, &qword_26C1B0, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323AF0);
  }

  return result;
}

unint64_t sub_1B61E8()
{
  result = qword_323AF8;
  if (!qword_323AF8)
  {
    sub_2F9C(&qword_323AD8, &qword_283C30);
    sub_1B6274();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323AF8);
  }

  return result;
}

unint64_t sub_1B6274()
{
  result = qword_323B00;
  if (!qword_323B00)
  {
    sub_2F9C(&qword_323AD0, &qword_283C28);
    sub_1B632C();
    sub_8E38(&qword_318EB8, &qword_318EC0, &unk_26C3B0, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323B00);
  }

  return result;
}

unint64_t sub_1B632C()
{
  result = qword_323B08;
  if (!qword_323B08)
  {
    sub_2F9C(&qword_323AC8, &qword_283C20);
    sub_1B63B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323B08);
  }

  return result;
}

unint64_t sub_1B63B8()
{
  result = qword_323B10;
  if (!qword_323B10)
  {
    sub_2F9C(&qword_323AC0, &qword_283C18);
    sub_8E38(&qword_323B18, &qword_323AE0, &qword_283C38, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323B10);
  }

  return result;
}

uint64_t Metrics.Impression.init(artistName:id:idType:impressionIndex:impressionType:isSG:kind:name:narratorName:parentId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X5>, unsigned __int8 *a7@<X6>, char a8@<W7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v17 = 0xEA00000000006C61;
  v18 = *a5;
  v19 = *a7;
  if (v19 <= 3)
  {
    if (v19 > 1)
    {
      if (v19 == 2)
      {
        v20 = 0xE400000000000000;
        v21 = 1802398060;
      }

      else
      {
        v20 = 0xE600000000000000;
        v21 = 0x70756B636F6CLL;
      }
    }

    else if (v19)
    {
      v20 = 0xE600000000000000;
      v21 = 0x7265746C6966;
    }

    else
    {
      v20 = 0xE600000000000000;
      v21 = 0x6E6F74747562;
    }
  }

  else if (v19 <= 5)
  {
    if (v19 == 4)
    {
      v20 = 0xE400000000000000;
      v21 = 1701273968;
    }

    else
    {
      v20 = 0xE700000000000000;
      v21 = 0x77656976657270;
    }
  }

  else if (v19 == 6)
  {
    v20 = 0xE700000000000000;
    v21 = 0x6E6F6974636573;
  }

  else if (v19 == 7)
  {
    v20 = 0xE600000000000000;
    v21 = 0x68736F6F7773;
  }

  else
  {
    v20 = 0xEA00000000007075;
    v21 = 0x6B636F6C5F707075;
  }

  if (!v18)
  {
    v17 = 0xE600000000000000;
  }

  *a9 = a1;
  a9[1] = a2;
  result = 0x64695F737469;
  if (v18)
  {
    result = 0x69746E6575716573;
  }

  a9[2] = a3;
  a9[3] = a4;
  v23 = 0x696F56736B6F6F42;
  if ((a8 & 1) == 0)
  {
    v23 = 0;
  }

  v24 = 0xEB00000000736563;
  if ((a8 & 1) == 0)
  {
    v24 = 0;
  }

  a9[4] = result;
  a9[5] = v17;
  a9[6] = a6;
  a9[7] = v21;
  a9[8] = v20;
  a9[9] = a10;
  a9[10] = a11;
  a9[11] = a12;
  a9[12] = a13;
  a9[13] = a14;
  a9[14] = a15;
  a9[15] = v23;
  a9[16] = v24;
  a9[17] = a16;
  a9[18] = a17;
  return result;
}

uint64_t static Metrics.createImpressionMetrics(impression:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v14[1] = a2;
  v3 = sub_263DD0();
  __chkstk_darwin(v3 - 8);
  v4 = sub_2601E0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_263E10();
  __chkstk_darwin(v8 - 8);
  v9 = a1[7];
  v21 = a1[6];
  v22 = v9;
  v23 = a1[8];
  v24 = *(a1 + 18);
  v10 = a1[3];
  v17 = a1[2];
  v18 = v10;
  v11 = a1[5];
  v19 = a1[4];
  v20 = v11;
  v12 = a1[1];
  v15 = *a1;
  v16 = v12;
  if (*(&v12 + 1))
  {
  }

  else
  {

    sub_2601D0();
    sub_2601C0();
    (*(v5 + 8))(v7, v4);
  }

  sub_263E00();
  sub_169820();
  sub_263DC0();
  sub_D0B04(_swiftEmptyArrayStorage);
  sub_D0B04(_swiftEmptyArrayStorage);
  return sub_263E20();
}

uint64_t Metrics.Impression.impressionType.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

void Metrics.Impression.impressionType.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
}

uint64_t Metrics.Impression.kind.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

void Metrics.Impression.kind.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
}

uint64_t Metrics.Impression.name.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

void Metrics.Impression.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
}

uint64_t Metrics.Impression.narratorName.getter()
{
  v1 = *(v0 + 104);

  return v1;
}

void Metrics.Impression.narratorName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
}

uint64_t Metrics.Impression.narratorType.getter()
{
  v1 = *(v0 + 120);

  return v1;
}

void Metrics.Impression.narratorType.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
}

uint64_t Metrics.Impression.parentId.getter()
{
  v1 = *(v0 + 136);

  return v1;
}

void Metrics.Impression.parentId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 136) = a1;
  *(v2 + 144) = a2;
}

uint64_t Metrics.ImpressionType.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x6E6F74747562;
    v7 = 1802398060;
    if (v1 != 2)
    {
      v7 = 0x70756B636F6CLL;
    }

    if (*v0)
    {
      v6 = 0x7265746C6966;
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
    v2 = 0x6E6F6974636573;
    v3 = 0x68736F6F7773;
    if (v1 != 7)
    {
      v3 = 0x6B636F6C5F707075;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 1701273968;
    if (v1 != 4)
    {
      v4 = 0x77656976657270;
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

uint64_t sub_1B6C70(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v4 = 0x726F74617272616ELL;
    v5 = 0x726F74617272616ELL;
    if (a1 != 8)
    {
      v5 = 0x6449746E65726170;
    }

    if (a1 != 7)
    {
      v4 = v5;
    }

    v6 = 1684957547;
    if (a1 != 5)
    {
      v6 = 1701667182;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0x614E747369747261;
    v2 = 0x657079546469;
    if (a1 != 2)
    {
      v2 = 0x6973736572706D69;
    }

    if (a1)
    {
      v1 = 25705;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1B6DC0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B7674(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B6DE8(uint64_t a1)
{
  v2 = sub_1B736C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1B6E24(uint64_t a1)
{
  v2 = sub_1B736C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Metrics.Impression.encode(to:)(void *a1)
{
  v3 = sub_2EF0(&qword_323B20, &qword_283C48);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v19 - v5;
  v7 = v1[2];
  v19[14] = v1[3];
  v19[15] = v7;
  v8 = v1[4];
  v19[12] = v1[5];
  v19[13] = v8;
  v9 = v1[6];
  v19[10] = v1[7];
  v19[11] = v9;
  v10 = v1[8];
  v11 = v1[9];
  v12 = v1[11];
  v19[8] = v1[10];
  v19[9] = v10;
  v19[5] = v12;
  v13 = v1[13];
  v19[6] = v1[12];
  v19[7] = v11;
  v14 = v1[14];
  v15 = v1[15];
  v19[3] = v13;
  v19[4] = v14;
  v16 = v1[16];
  v19[1] = v15;
  v19[2] = v16;
  sub_2E18(a1, a1[3]);
  sub_1B736C();
  sub_265140();
  v28 = 0;
  v17 = v19[16];
  sub_264E40();
  if (v17)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v27 = 1;
  sub_264E40();
  v26 = 2;
  sub_264E70();
  v25 = 3;
  sub_264E80();
  v24 = 4;
  sub_264E70();
  v23 = 5;
  sub_264E40();
  v22 = 6;
  sub_264E40();
  v21 = 7;
  sub_264E40();
  v20 = 8;
  sub_264E40();
  return (*(v4 + 8))(v6, v3);
}

void Metrics.ImpressionType.init(rawValue:)(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_301390;
  v8._object = a2;
  v6 = sub_264D40(v5, v8);

  v7 = 9;
  if (v6 < 9)
  {
    v7 = v6;
  }

  *a3 = v7;
}

Swift::Int sub_1B7194()
{
  v1 = *v0;
  sub_265050();
  sub_1E27DC(v3, v1);
  return sub_265080();
}

Swift::Int sub_1B71E4(uint64_t a1)
{
  v2 = *v1;
  sub_265050();
  sub_1E27DC(v4, v2);
  return sub_265080();
}

uint64_t sub_1B7234@<X0>(uint64_t *a1@<X8>)
{
  result = Metrics.ImpressionType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t ImpressionMetrics.withImpressionIndex(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_263E50();
  (*(*(v5 - 8) + 16))(a2, v2, v5);
  v6 = sub_263E30();
  sub_263DF0();
  v6(v10, 0);
  v10[3] = &type metadata for Int;
  v10[0] = a1;
  v7 = sub_263E40();
  sub_D0B0(v10, 0x6973736572706D69, 0xEF7865646E496E6FLL);
  return v7(&v9, 0);
}

unint64_t sub_1B736C()
{
  result = qword_323B28;
  if (!qword_323B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323B28);
  }

  return result;
}

unint64_t sub_1B73C0(uint64_t a1)
{
  result = sub_16A034();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B73EC()
{
  result = qword_323B30;
  if (!qword_323B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323B30);
  }

  return result;
}

uint64_t sub_1B7440@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 136);
  v3 = *(a1 + 144);
  *a2 = v2;
  a2[1] = v3;
}

void sub_1B744C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 136) = v4;
  *(a2 + 144) = v3;
}

uint64_t sub_1B7490(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B74D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B7570()
{
  result = qword_323B38;
  if (!qword_323B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323B38);
  }

  return result;
}

unint64_t sub_1B75C8()
{
  result = qword_323B40;
  if (!qword_323B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323B40);
  }

  return result;
}

unint64_t sub_1B7620()
{
  result = qword_323B48;
  if (!qword_323B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323B48);
  }

  return result;
}

uint64_t sub_1B7674(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E747369747261 && a2 == 0xEA0000000000656DLL;
  if (v4 || (sub_264F10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_264F10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657079546469 && a2 == 0xE600000000000000 || (sub_264F10() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6973736572706D69 && a2 == 0xEF7865646E496E6FLL || (sub_264F10() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6973736572706D69 && a2 == 0xEE00657079546E6FLL || (sub_264F10() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_264F10() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_264F10() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x726F74617272616ELL && a2 == 0xEC000000656D614ELL || (sub_264F10() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x726F74617272616ELL && a2 == 0xEC00000065707954 || (sub_264F10() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6449746E65726170 && a2 == 0xE800000000000000)
  {

    return 9;
  }

  else
  {
    v6 = sub_264F10();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_1B79AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a1;
  v5 = *(a3 - 8);
  __chkstk_darwin(a1);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[0] = *(*(v8 + 16) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  sub_264F90();
  sub_264F00();
  v10 = sub_264390();
  (*(v5 + 8))(v7, a3);
  if (v10)
  {
    return sub_264310();
  }

  sub_264300();
  sub_264310();
  return sub_264800();
}

uint64_t sub_1B7C64(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2EF0(&qword_316F68, &unk_269C50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = sub_2EF0(&qword_317878, &unk_27E490);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 2147483646)
  {
    v15 = *(a1 + a3[10] + 8);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    v16 = v15 - 1;
    if (v16 < 0)
    {
      v16 = -1;
    }

    return (v16 + 1);
  }

  else
  {
    v17 = sub_2EF0(&qword_318458, &unk_26B270);
    if (*(*(v17 - 8) + 84) == a2)
    {
      v8 = v17;
      v12 = *(v17 - 8);
      v13 = a3[13];
      goto LABEL_5;
    }

    v18 = sub_261690();
    v19 = *(*(v18 - 8) + 48);
    v20 = a1 + a3[17];

    return v19(v20, a2, v18);
  }
}

uint64_t sub_1B7E68(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_2EF0(&qword_316F68, &unk_269C50);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = sub_2EF0(&qword_317878, &unk_27E490);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[10] + 8) = a2;
    return result;
  }

  v16 = sub_2EF0(&qword_318458, &unk_26B270);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[13];
    goto LABEL_5;
  }

  v17 = sub_261690();
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[17];

  return v18(v19, a2, a2, v17);
}

uint64_t type metadata accessor for TextLockup(uint64_t a1)
{
  result = qword_323BA8;
  if (!qword_323BA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B8098(uint64_t a1)
{
  sub_1B830C(319, &qword_316FE8, type metadata accessor for ColorConstants, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_1B830C(319, &qword_3178F8, &type metadata accessor for BlendMode, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_1B82BC(319, &qword_3167D0, &type metadata for Bool, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_1B82BC(319, &qword_316CB8, &type metadata for String, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_1B82BC(319, &qword_323BB8, &type metadata for TextLockup.TitleViewModel, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            sub_1B830C(319, &unk_323BC0, &type metadata accessor for Font.Design, &type metadata accessor for Optional);
            if (v6 <= 0x3F)
            {
              sub_261690();
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

void sub_1B82BC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1B830C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1B837C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 24))
  {
    return (*a1 + 127);
  }

  v3 = (((*(a1 + 16) >> 57) >> 6) | (2 * ((*(a1 + 16) >> 57) & 0x38 | *(a1 + 16) & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B83D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t sub_1B8474()
{
  result = qword_323C20;
  if (!qword_323C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323C20);
  }

  return result;
}

uint64_t sub_1B8538@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_3179C0, &qword_269D60);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for TextLockup(0);
  sub_8198(v1 + *(v10 + 20), v9, &qword_3179C0, &qword_269D60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_263640();
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

uint64_t sub_1B8740()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for TextLockup(0);
  v6 = v0 + v5[7];
  v7 = *v6;
  if (*(v6 + 8) == 1)
  {
    if ((v7 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {

    sub_264900();
    v8 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_4054(v7, 0);
    (*(v2 + 8))(v4, v1);
    if (v14[15] != 1)
    {
LABEL_6:
      v9 = 0;
      return v9 & 1;
    }
  }

  if (*(v0 + v5[9]) < 4u)
  {
    goto LABEL_6;
  }

  v10 = v0 + v5[8];
  v11 = *v10;
  if (*(v10 + 8) != 1)
  {

    sub_264900();
    v12 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_4054(v11, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v11) = v14[14];
  }

  v9 = v11 ^ 1;
  return v9 & 1;
}

uint64_t sub_1B8974@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v97 = a1;
  v92 = sub_262370();
  v96 = *(v92 - 8);
  __chkstk_darwin(v92);
  v95 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_2EF0(&qword_3174E0, &qword_26B310);
  __chkstk_darwin(v93);
  v91 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v90 = &v84 - v6;
  v7 = sub_261690();
  v107 = *(v7 - 8);
  __chkstk_darwin(v7);
  v106 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_2EF0(&qword_3174E8, &qword_269970);
  __chkstk_darwin(v94);
  v86 = &v84 - v9;
  v10 = sub_261C90();
  v105 = *(v10 - 8);
  __chkstk_darwin(v10);
  v104 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2EF0(&qword_323C28, &qword_2840C0);
  __chkstk_darwin(v12 - 8);
  v14 = &v84 - v13;
  v15 = sub_2EF0(&qword_323C30, &qword_2840C8);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = &v84 - v17;
  v98 = sub_2EF0(&qword_323C38, &qword_2840D0);
  __chkstk_darwin(v98);
  v20 = &v84 - v19;
  v99 = sub_2EF0(&qword_323C40, &qword_2840D8);
  __chkstk_darwin(v99);
  v108 = &v84 - v21;
  v101 = sub_2EF0(&qword_323C48, &qword_2840E0);
  __chkstk_darwin(v101);
  v103 = &v84 - v22;
  v100 = sub_2EF0(&qword_323C50, &qword_2840E8);
  __chkstk_darwin(v100);
  v102 = &v84 - v23;
  v24 = sub_2EF0(&qword_323C58, &qword_2840F0);
  __chkstk_darwin(v24);
  v26 = &v84 - v25;
  v89 = sub_2EF0(&qword_323C60, &qword_2840F8);
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v87 = &v84 - v27;
  v28 = type metadata accessor for TextLockup(0);
  v29 = 0x4024000000000000;
  if (*(v2 + v28[9]) < 4u)
  {
    v29 = 0x4010000000000000;
  }

  *v14 = *(v2 + v28[14]);
  *(v14 + 1) = v29;
  v14[16] = 0;
  v30 = sub_2EF0(&qword_323C68, &qword_284100);
  sub_1B971C(v2, &v14[*(v30 + 44)]);
  sub_261830();
  sub_22148(v14, v18, &qword_323C28, &qword_2840C0);
  v31 = &v18[*(v16 + 44)];
  v32 = v118;
  *(v31 + 4) = v117;
  *(v31 + 5) = v32;
  *(v31 + 6) = v119;
  v33 = v114;
  *v31 = v113;
  *(v31 + 1) = v33;
  v34 = v116;
  *(v31 + 2) = v115;
  *(v31 + 3) = v34;
  if ((sub_1B8740() & 1) == 0)
  {
    goto LABEL_8;
  }

  v35 = v2 + v28[6];
  v36 = *v35;
  if (*(v35 + 8) != 1)
  {

    sub_264900();
    v38 = sub_2624B0();
    v85 = v10;
    v39 = v26;
    v40 = v24;
    v41 = v7;
    v42 = v38;
    sub_260D10();

    v7 = v41;
    v24 = v40;
    v26 = v39;
    v10 = v85;
    v43 = v104;
    sub_261C80();
    swift_getAtKeyPath();
    sub_4054(v36, 0);
    (*(v105 + 8))(v43, v10);
    if (v109 != 1)
    {
      goto LABEL_6;
    }

LABEL_8:
    v37 = 0;
    goto LABEL_9;
  }

  if (v36)
  {
    goto LABEL_8;
  }

LABEL_6:
  v37 = 0x4054000000000000;
LABEL_9:
  sub_22148(v18, v20, &qword_323C30, &qword_2840C8);
  v44 = &v20[*(v98 + 36)];
  *v44 = 0;
  *(v44 + 1) = v37;
  if ((sub_1B8740() & 1) == 0)
  {
    goto LABEL_14;
  }

  v45 = v2 + v28[6];
  v46 = *v45;
  if (*(v45 + 8) != 1)
  {

    sub_264900();
    v48 = sub_2624B0();
    sub_260D10();

    v49 = v104;
    sub_261C80();
    swift_getAtKeyPath();
    sub_4054(v46, 0);
    (*(v105 + 8))(v49, v10);
    v47 = 0.0;
    if (v109 != 1)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v47 = 0.0;
  if (v46)
  {
LABEL_14:
    v47 = 1.0;
  }

LABEL_15:
  v50 = v20;
  v51 = v108;
  sub_22148(v50, v108, &qword_323C38, &qword_2840D0);
  *(v51 + *(v99 + 36)) = v47;
  if (sub_1B8740())
  {
    sub_263610();
    v52 = sub_2635B0();
  }

  else
  {
    v52 = 0;
  }

  v53 = v2 + v28[6];
  v54 = *v53;
  if (*(v53 + 8) != 1)
  {

    sub_264900();
    v55 = sub_2624B0();
    sub_260D10();

    v56 = v104;
    sub_261C80();
    swift_getAtKeyPath();
    sub_4054(v54, 0);
    (*(v105 + 8))(v56, v10);
    LOBYTE(v54) = v109;
  }

  v57 = v106;
  v58 = v103;
  sub_22148(v108, v103, &qword_323C40, &qword_2840D8);
  v59 = v58 + *(v101 + 36);
  *v59 = v52;
  *(v59 + 8) = v54 & 1;
  KeyPath = swift_getKeyPath();
  v61 = v102;
  sub_22148(v58, v102, &qword_323C48, &qword_2840E0);
  v62 = (v61 + *(v100 + 36));
  *v62 = KeyPath;
  v62[1] = 0x3FE0000000000000;
  v63 = swift_getKeyPath();
  sub_22148(v61, v26, &qword_323C50, &qword_2840E8);
  v64 = &v26[*(v24 + 36)];
  *v64 = v63;
  *(v64 + 1) = 6;
  v64[16] = 0;
  (*(v107 + 104))(v57, enum case for DynamicTypeSize.small(_:), v7);
  v65 = v28[17];
  sub_1BD440(&qword_317538, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = sub_264380();
  if (result)
  {
    v67 = v86;
    v108 = v26;
    v68 = v107;
    v106 = v24;
    v69 = *(v107 + 32);
    v70 = v90;
    v69(v90, v57, v7);
    v71 = v93;
    (*(v68 + 16))(v70 + *(v93 + 48), v2 + v65, v7);
    v72 = v7;
    v73 = v91;
    sub_8198(v70, v91, &qword_3174E0, &qword_26B310);
    v74 = *(v71 + 48);
    v69(v67, v73, v72);
    v75 = *(v68 + 8);
    v75(v73 + v74, v72);
    sub_22148(v70, v73, &qword_3174E0, &qword_26B310);
    v76 = v94;
    v69((v67 + *(v94 + 36)), (v73 + *(v71 + 48)), v72);
    v75(v73, v72);
    v77 = sub_1BC644();
    v78 = sub_8E38(&qword_3175C8, &qword_3174E8, &qword_269970, &protocol conformance descriptor for ClosedRange<A>);
    v79 = v87;
    v80 = v106;
    v81 = v108;
    sub_262B70();
    sub_8E80(v67, &qword_3174E8, &qword_269970);
    sub_8E80(v81, &qword_323C58, &qword_2840F0);
    v82 = v95;
    sub_262350();
    v109 = v80;
    v110 = v76;
    v111 = v77;
    v112 = v78;
    swift_getOpaqueTypeConformance2();
    v83 = v89;
    sub_262C70();
    (*(v96 + 8))(v82, v92);
    return (*(v88 + 8))(v79, v83);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B971C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v267 = a2;
  v231 = sub_2EF0(&qword_323CA8, &qword_284168);
  v226 = *(v231 - 8);
  __chkstk_darwin(v231);
  v223 = &v221 - v3;
  v230 = sub_2EF0(&qword_323CB0, &qword_284170);
  v228 = *(v230 - 8);
  __chkstk_darwin(v230);
  v224 = &v221 - v4;
  v234 = sub_2EF0(&qword_323CB8, &qword_284178);
  v232 = *(v234 - 8);
  __chkstk_darwin(v234);
  v227 = &v221 - v5;
  v225 = sub_2EF0(&qword_323CC0, &qword_284180);
  __chkstk_darwin(v225);
  v233 = &v221 - v6;
  v247 = sub_2EF0(&qword_323CC8, &qword_284188);
  __chkstk_darwin(v247);
  v229 = &v221 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v235 = &v221 - v9;
  v245 = sub_2EF0(&qword_323CD0, &qword_284190);
  __chkstk_darwin(v245);
  v246 = &v221 - v10;
  v11 = sub_2EF0(&qword_318458, &unk_26B270);
  __chkstk_darwin(v11 - 8);
  v240 = &v221 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v222 = &v221 - v14;
  __chkstk_darwin(v15);
  v241 = &v221 - v16;
  __chkstk_darwin(v17);
  v236 = &v221 - v18;
  v19 = sub_2EF0(&qword_323CD8, &qword_284198);
  v242 = *(v19 - 8);
  v243 = v19;
  __chkstk_darwin(v19);
  v237 = &v221 - v20;
  v244 = sub_2EF0(&qword_323CE0, &qword_2841A0);
  __chkstk_darwin(v244);
  v22 = &v221 - v21;
  v23 = sub_2EF0(&qword_323CE8, &qword_2841A8);
  v261 = *(v23 - 8);
  v262 = v23;
  __chkstk_darwin(v23);
  v25 = &v221 - v24;
  v26 = sub_2EF0(&qword_323CF0, &unk_2841B0);
  __chkstk_darwin(v26 - 8);
  v266 = &v221 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v221 - v29;
  v31 = type metadata accessor for ColorConstants(0);
  __chkstk_darwin(v31 - 8);
  v248 = (&v221 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = sub_2626C0();
  v259 = *(v33 - 8);
  __chkstk_darwin(v33);
  v260 = &v221 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v269 = sub_2EF0(&qword_31FB60, &qword_27B308);
  __chkstk_darwin(v269);
  v255 = &v221 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v250 = &v221 - v37;
  v270 = sub_2EF0(&qword_323CF8, &qword_2841C0);
  __chkstk_darwin(v270);
  v256 = &v221 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v251 = &v221 - v40;
  v271 = sub_2EF0(&qword_323D00, &qword_2841C8);
  __chkstk_darwin(v271);
  v257 = &v221 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v252 = &v221 - v43;
  v44 = sub_2EF0(&qword_323D08, &qword_2841D0);
  v45 = *(v44 - 8);
  __chkstk_darwin(v44);
  v254 = &v221 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v249 = &v221 - v48;
  v49 = sub_2EF0(&qword_323D10, &qword_2841D8);
  __chkstk_darwin(v49 - 8);
  v264 = &v221 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v265 = &v221 - v52;
  __chkstk_darwin(v53);
  v263 = &v221 - v54;
  __chkstk_darwin(v55);
  v57 = &v221 - v56;
  v58 = type metadata accessor for TextLockup(0);
  v59 = (a1 + v58[10]);
  v60 = v59[1];
  v276 = v30;
  v277 = a1;
  v272 = v57;
  v273 = v58;
  v274 = v45;
  v275 = v44;
  v253 = v33;
  v268 = v25;
  if (v60)
  {
    v61 = a1;
    v62 = *v59;
    v63 = *(v61 + v58[9]);
    v64 = v60;

    v258 = v22;
    if (v63 >= 3)
    {
      sub_262590();
    }

    else
    {
      sub_262700();
      v66 = v259;
      v65 = v260;
      (*(v259 + 104))(v260, enum case for Font.Leading.tight(_:), v33);
      sub_2626E0();

      (*(v66 + 8))(v65, v33);
    }

    v238 = v64;
    v239 = v62;
    v67 = sub_262840();
    v69 = v68;
    v71 = v70;

    sub_262630();
    v72 = sub_2627D0();
    v74 = v73;
    v76 = v75;
    sub_39DBC(v67, v69, v71 & 1);

    v77 = v248;
    sub_404B8(v248);
    _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
    v78 = sub_263000();

    sub_60B08(v77);
    *&v287 = v78;
    v79 = sub_2627F0();
    v81 = v80;
    LOBYTE(v67) = v82;
    v84 = v83;
    sub_39DBC(v72, v74, v76 & 1);

    v85 = v250;
    sub_1B8538((v250 + *(v269 + 36)));
    *v85 = v79;
    *(v85 + 8) = v81;
    *(v85 + 16) = v67 & 1;
    *(v85 + 24) = v84;
    a1 = v277;
    v58 = v273;
    sub_261830();
    v86 = v251;
    sub_22148(v85, v251, &qword_31FB60, &qword_27B308);
    v87 = (v86 + *(v270 + 36));
    v88 = v299[5];
    v87[4] = v299[4];
    v87[5] = v88;
    v87[6] = v299[6];
    v89 = v299[1];
    *v87 = v299[0];
    v87[1] = v89;
    v90 = v299[3];
    v87[2] = v299[2];
    v87[3] = v90;
    LOBYTE(v85) = *(a1 + v58[16]);
    KeyPath = swift_getKeyPath();
    v92 = v252;
    sub_22148(v86, v252, &qword_323CF8, &qword_2841C0);
    v93 = v92 + *(v271 + 36);
    *v93 = KeyPath;
    *(v93 + 8) = v85;
    *&v287 = v239;
    *(&v287 + 1) = v238;
    sub_1BCA70();
    sub_10A84();
    v94 = v249;
    sub_262C00();
    sub_8E80(v92, &qword_323D00, &qword_2841C8);
    v95 = v272;
    sub_22148(v94, v272, &qword_323D08, &qword_2841D0);
    v45 = v274;
    v44 = v275;
    (*(v274 + 56))(v95, 0, 1, v275);
    v30 = v276;
    v25 = v268;
    v22 = v258;
  }

  else
  {
    (*(v45 + 56))(v57, 1, 1, v44);
  }

  v96 = (a1 + v58[11]);
  v97 = v96[2];
  if ((~v97 & 0xF000000000000007) != 0)
  {
    v99 = v30;
    v100 = *v96;
    v101 = v96[1];
    v250 = v96[2];
    v251 = v100;
    v252 = v101;
    if (v97 < 0)
    {
      v117 = v97 & 0x7FFFFFFFFFFFFFFFLL;
      v118 = v100;
      sub_1BCBD4(v100, v101, v97);

      v119 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();

      v120 = sub_1BB39C();
      v121 = swift_getKeyPath();
      *&v287 = v118;
      *(&v287 + 1) = v101;
      v258 = v119;
      *&v288 = v119;
      *(&v288 + 1) = v117;
      *&v289 = v121;
      v249 = v120;
      *(&v289 + 1) = v120;
      v122 = v240;
      sub_8198(a1 + v58[13], v240, &qword_318458, &unk_26B270);
      v123 = sub_2625C0();
      v124 = *(v123 - 8);
      v125 = *(v124 + 48);
      if (v125(v122, 1, v123) == 1)
      {
        if (_s7BooksUI16FallBackFontSpecV03usecdE0SbyFZ_0())
        {
          v126 = 1;
          v127 = v222;
        }

        else
        {
          v127 = v222;
          (*(v124 + 104))(v222, enum case for Font.Design.serif (_:), v123);
          v126 = 0;
        }

        (*(v124 + 56))(v127, v126, 1, v123);
        v154 = v240;
        if (v125(v240, 1, v123) != 1)
        {
          sub_8E80(v154, &qword_318458, &unk_26B270);
        }
      }

      else
      {
        v127 = v222;
        (*(v124 + 32))(v222, v122, v123);
        (*(v124 + 56))(v127, 0, 1, v123);
      }

      v155 = sub_2EF0(&qword_323D30, &unk_284250);
      v156 = sub_1BCC40();
      v157 = v223;
      sub_262A10();
      sub_8E80(v127, &qword_318458, &unk_26B270);

      sub_2625E0();
      *&v287 = v155;
      *(&v287 + 1) = v156;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v159 = v224;
      v160 = v231;
      sub_262A20();
      (*(v226 + 8))(v157, v160);
      v58 = v273;
      a1 = v277;
      *&v287 = v160;
      *(&v287 + 1) = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      v161 = v227;
      v162 = v230;
      sub_262DF0();
      (*(v228 + 8))(v159, v162);
      sub_261830();
      v163 = v233;
      (*(v232 + 32))(v233, v161, v234);
      v164 = &v163[*(v225 + 36)];
      v165 = v283;
      *(v164 + 4) = v282;
      *(v164 + 5) = v165;
      *(v164 + 6) = v284;
      v166 = v279;
      *v164 = v278;
      *(v164 + 1) = v166;
      v167 = v281;
      *(v164 + 2) = v280;
      *(v164 + 3) = v167;
      LOBYTE(v162) = *(a1 + v58[16]);
      v168 = swift_getKeyPath();
      v169 = v163;
      v170 = v229;
      sub_22148(v169, v229, &qword_323CC0, &qword_284180);
      v171 = v170 + *(v247 + 36);
      *v171 = v168;
      *(v171 + 8) = v162;
      v172 = v235;
      sub_22148(v170, v235, &qword_323CC8, &qword_284188);
      sub_8198(v172, v246, &qword_323CC8, &qword_284188);
      swift_storeEnumTagMultiPayload();
      sub_1BCD4C();
      sub_1BCFD4();
      v25 = v268;
      sub_261F80();
      sub_1BD1D4(v251, v252, v250);
      sub_8E80(v172, &qword_323CC8, &qword_284188);
      v44 = v275;
      v30 = v276;
      v45 = v274;
    }

    else
    {
      if (v101)
      {
        v258 = v22;
        v102 = v100;
        v103 = v97;
        sub_1BCBD4(v100, v101, v97);
        sub_1BCBE8(v102, v101, v103);
        sub_1BB39C();
        v104 = sub_262840();
        v106 = v105;
        v108 = v107;
        v249 = v109;

        sub_1BD1D4(v102, v101, v103);
        v110 = v241;
        sub_8198(a1 + v58[13], v241, &qword_318458, &unk_26B270);
        v111 = sub_2625C0();
        v112 = *(v111 - 8);
        v113 = *(v112 + 48);
        if (v113(v110, 1, v111) == 1)
        {
          v114 = _s7BooksUI16FallBackFontSpecV03usecdE0SbyFZ_0();
          v115 = v236;
          if (v114)
          {
            v116 = 1;
          }

          else
          {
            (*(v112 + 104))(v236, enum case for Font.Design.serif (_:), v111);
            v116 = 0;
          }

          (*(v112 + 56))(v115, v116, 1, v111);
          v128 = v241;
          if (v113(v241, 1, v111) != 1)
          {
            sub_8E80(v128, &qword_318458, &unk_26B270);
          }
        }

        else
        {
          v115 = v236;
          (*(v112 + 32))(v236, v110, v111);
          (*(v112 + 56))(v115, 0, 1, v111);
        }

        v129 = sub_2627C0();
        v131 = v130;
        v133 = v132;
        sub_39DBC(v104, v106, v108 & 1);

        sub_8E80(v115, &qword_318458, &unk_26B270);
        sub_2625E0();
        v134 = sub_2627D0();
        v136 = v135;
        v138 = v137;
        sub_39DBC(v129, v131, v133 & 1);

        v139 = v273;
        v140 = sub_262860();
        v142 = v141;
        LOBYTE(v131) = v143;
        sub_39DBC(v134, v136, v138 & 1);

        LODWORD(v287) = sub_262120();
        v144 = sub_2627F0();
        v146 = v145;
        v148 = v147;
        v150 = v149;
        sub_39DBC(v140, v142, v131 & 1);
        v58 = v139;

        v151 = v277;
        sub_261830();
        v148 &= 1u;
        v296 = v148;
        LOBYTE(v140) = *(v151 + v139[16]);
        v152 = swift_getKeyPath();
        *&v278 = v144;
        *(&v278 + 1) = v146;
        LOBYTE(v279) = v148;
        *(&v279 + 1) = v150;
        v285 = v286[7];
        v286[0] = v286[8];
        v280 = v286[2];
        v281 = v286[3];
        v283 = v286[5];
        v284 = v286[6];
        v282 = v286[4];
        *&v286[1] = v152;
        BYTE8(v286[1]) = v140;
        v297 = v251;
        v298 = v252;
        sub_2EF0(&qword_323D60, &qword_284260);
        sub_1BCE8C();
        sub_10A84();
        v153 = v237;
        a1 = v151;
        sub_262C00();
        v293 = v284;
        v294 = v285;
        v295[0] = v286[0];
        *(v295 + 9) = *(v286 + 9);
        v289 = v280;
        v290 = v281;
        v291 = v282;
        v292 = v283;
        v287 = v278;
        v288 = v279;
        sub_8E80(&v287, &qword_323D60, &qword_284260);
        v22 = v258;
        sub_22148(v153, v258, &qword_323CD8, &qword_284198);
        (*(v242 + 56))(v22, 0, 1, v243);
        v44 = v275;
        v99 = v276;
        v45 = v274;
        v25 = v268;
      }

      else
      {
        (*(v242 + 56))(v22, 1, 1, v243);
      }

      sub_8198(v22, v246, &qword_323CE0, &qword_2841A0);
      swift_storeEnumTagMultiPayload();
      sub_1BCD4C();
      sub_1BCFD4();
      sub_261F80();
      sub_1BD1D4(v251, v252, v250);
      sub_8E80(v22, &qword_323CE0, &qword_2841A0);
      v30 = v99;
    }

    sub_22148(v25, v30, &qword_323CE8, &qword_2841A8);
    v98 = 0;
  }

  else
  {
    v98 = 1;
  }

  v173 = 1;
  (*(v261 + 56))(v30, v98, 1, v262);
  v174 = (a1 + v58[12]);
  v175 = v174[1];
  if (v175)
  {
    v176 = *v174;
    v177 = *(a1 + v58[9]);

    v178 = (v259 + 104);
    v179 = (v259 + 8);
    if (v177 > 2)
    {
      sub_262590();
    }

    else
    {
      sub_262580();
    }

    v182 = v260;
    v183 = v253;
    (*v178)(v260, enum case for Font.Leading.tight(_:), v253);
    sub_2626E0();

    (*v179)(v182, v183);
    v184 = sub_262840();
    v186 = v185;
    LOBYTE(v182) = v187;
    v268 = v176;

    sub_262640();
    v188 = sub_2627D0();
    v262 = v175;
    v190 = v189;
    v192 = v191;
    sub_39DBC(v184, v186, v182 & 1);

    LODWORD(v287) = sub_262140();
    v193 = sub_2627F0();
    v195 = v194;
    v197 = v196;
    v199 = v198;
    sub_39DBC(v188, v190, v192 & 1);

    v200 = v255;
    v201 = v277;
    sub_1B8538(&v255[*(v269 + 36)]);
    *v200 = v193;
    *(v200 + 1) = v195;
    v200[16] = v197 & 1;
    *(v200 + 3) = v199;
    v202 = v273;
    sub_261830();
    v203 = v200;
    v204 = v256;
    sub_22148(v203, v256, &qword_31FB60, &qword_27B308);
    v205 = (v204 + *(v270 + 36));
    v206 = v292;
    v205[4] = v291;
    v205[5] = v206;
    v205[6] = v293;
    v207 = v288;
    *v205 = v287;
    v205[1] = v207;
    v208 = v290;
    v205[2] = v289;
    v205[3] = v208;
    LOBYTE(v202) = *(v201 + v202[16]);
    v209 = swift_getKeyPath();
    v210 = v257;
    sub_22148(v204, v257, &qword_323CF8, &qword_2841C0);
    v211 = v210 + *(v271 + 36);
    *v211 = v209;
    *(v211 + 8) = v202;
    v297 = v268;
    v298 = v262;
    sub_1BCA70();
    sub_10A84();
    v212 = v254;
    sub_262C00();
    sub_8E80(v210, &qword_323D00, &qword_2841C8);
    v181 = v263;
    sub_22148(v212, v263, &qword_323D08, &qword_2841D0);
    v173 = 0;
    v44 = v275;
    v180 = v276;
    v45 = v274;
  }

  else
  {
    v180 = v30;
    v181 = v263;
  }

  (*(v45 + 56))(v181, v173, 1, v44);
  v213 = v272;
  v214 = v265;
  sub_8198(v272, v265, &qword_323D10, &qword_2841D8);
  v215 = v266;
  sub_8198(v180, v266, &qword_323CF0, &unk_2841B0);
  v216 = v264;
  sub_8198(v181, v264, &qword_323D10, &qword_2841D8);
  v217 = v181;
  v218 = v267;
  sub_8198(v214, v267, &qword_323D10, &qword_2841D8);
  v219 = sub_2EF0(&qword_323D18, &qword_2841E0);
  sub_8198(v215, v218 + *(v219 + 48), &qword_323CF0, &unk_2841B0);
  sub_8198(v216, v218 + *(v219 + 64), &qword_323D10, &qword_2841D8);
  sub_8E80(v217, &qword_323D10, &qword_2841D8);
  sub_8E80(v276, &qword_323CF0, &unk_2841B0);
  sub_8E80(v213, &qword_323D10, &qword_2841D8);
  sub_8E80(v216, &qword_323D10, &qword_2841D8);
  sub_8E80(v215, &qword_323CF0, &unk_2841B0);
  return sub_8E80(v214, &qword_323D10, &qword_2841D8);
}

uint64_t sub_1BB39C()
{
  v1 = sub_2EF0(&qword_318458, &unk_26B270);
  __chkstk_darwin(v1 - 8);
  v3 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v41 - v5;
  __chkstk_darwin(v7);
  v9 = &v41 - v8;
  __chkstk_darwin(v10);
  v12 = &v41 - v11;
  __chkstk_darwin(v13);
  v15 = &v41 - v14;
  __chkstk_darwin(v16);
  v18 = &v41 - v17;
  v42 = sub_2626C0();
  v19 = *(v42 - 8);
  __chkstk_darwin(v42);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for TextLockup(0);
  v23 = *(v0 + *(v22 + 36));
  if (v23 > 2)
  {
    v24 = v22;
    if (*(v0 + *(v22 + 36)) > 4u)
    {
      if (v23 == 5)
      {
        sub_2625E0();
        sub_8198(v0 + *(v24 + 52), v9, &qword_318458, &unk_26B270);
        v26 = sub_2625C0();
        v27 = *(v26 - 8);
        v28 = *(v27 + 48);
        if (v28(v9, 1, v26) == 1)
        {
          if (_s7BooksUI16FallBackFontSpecV03usecdE0SbyFZ_0())
          {
            v29 = 1;
          }

          else
          {
            (*(v27 + 104))(v12, enum case for Font.Design.serif (_:), v26);
            v29 = 0;
          }

          (*(v27 + 56))(v12, v29, 1, v26);
          if (v28(v9, 1, v26) != 1)
          {
            sub_8E80(v9, &qword_318458, &unk_26B270);
          }
        }

        else
        {
          (*(v27 + 32))(v12, v9, v26);
          (*(v27 + 56))(v12, 0, 1, v26);
        }

        sub_262670();
        v38 = v12;
      }

      else
      {
        sub_2625E0();
        sub_8198(v0 + *(v24 + 52), v3, &qword_318458, &unk_26B270);
        v34 = sub_2625C0();
        v35 = *(v34 - 8);
        v36 = *(v35 + 48);
        if (v36(v3, 1, v34) == 1)
        {
          if (_s7BooksUI16FallBackFontSpecV03usecdE0SbyFZ_0())
          {
            v37 = 1;
          }

          else
          {
            (*(v35 + 104))(v6, enum case for Font.Design.serif (_:), v34);
            v37 = 0;
          }

          (*(v35 + 56))(v6, v37, 1, v34);
          if (v36(v3, 1, v34) != 1)
          {
            sub_8E80(v3, &qword_318458, &unk_26B270);
          }
        }

        else
        {
          (*(v35 + 32))(v6, v3, v34);
          (*(v35 + 56))(v6, 0, 1, v34);
        }

        sub_262670();
        v38 = v6;
      }
    }

    else
    {
      if (v23 == 3)
      {
        sub_262570();
LABEL_38:
        v25 = v42;
        (*(v19 + 104))(v21, enum case for Font.Leading.tight(_:), v42);
        goto LABEL_39;
      }

      sub_2625E0();
      sub_8198(v0 + *(v24 + 52), v15, &qword_318458, &unk_26B270);
      v30 = sub_2625C0();
      v31 = *(v30 - 8);
      v32 = *(v31 + 48);
      if (v32(v15, 1, v30) == 1)
      {
        if (_s7BooksUI16FallBackFontSpecV03usecdE0SbyFZ_0())
        {
          v33 = 1;
        }

        else
        {
          (*(v31 + 104))(v18, enum case for Font.Design.serif (_:), v30);
          v33 = 0;
        }

        (*(v31 + 56))(v18, v33, 1, v30);
        if (v32(v15, 1, v30) != 1)
        {
          sub_8E80(v15, &qword_318458, &unk_26B270);
        }
      }

      else
      {
        (*(v31 + 32))(v18, v15, v30);
        (*(v31 + 56))(v18, 0, 1, v30);
      }

      sub_262670();
      v38 = v18;
    }

    sub_8E80(v38, &qword_318458, &unk_26B270);
    goto LABEL_38;
  }

  if (!*(v0 + *(v22 + 36)))
  {
    sub_2626A0();
    goto LABEL_38;
  }

  v25 = v42;
  if (v23 == 1)
  {
    sub_262690();
  }

  else
  {
    sub_2625B0();
  }

  (*(v19 + 104))(v21, enum case for Font.Leading.tight(_:), v25);
LABEL_39:
  v39 = sub_2626E0();

  (*(v19 + 8))(v21, v25);
  return v39;
}

uint64_t sub_1BBADC@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v32 = a5;
  v8 = sub_25FF00();
  __chkstk_darwin(v8);
  v9 = sub_25FF40();
  v30 = *(v9 - 8);
  v10 = v30;
  v31 = v9;
  __chkstk_darwin(v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v30 - v14;
  sub_1BBD54(a2, a4, a3, &v30 - v14);
  (*(v10 + 16))(v12, v15, v9);
  v16 = sub_2628D0();
  v18 = v17;
  v20 = v19;
  sub_25FEF0();
  sub_1BD440(&qword_323D80, &type metadata accessor for AttributedString.CharacterView, &protocol conformance descriptor for AttributedString.CharacterView);
  v33 = sub_2645B0();
  v34 = v21;
  sub_10A84();
  v22 = sub_262810();
  v24 = v23;
  LOBYTE(v9) = v25;
  v27 = v26;
  sub_39DBC(v16, v18, v20 & 1);

  result = (*(v30 + 8))(v15, v31);
  v29 = v32;
  *v32 = v22;
  v29[1] = v24;
  *(v29 + 16) = v9 & 1;
  v29[3] = v27;
  return result;
}

unint64_t sub_1BBD54@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v65 = a4;
  v53 = a3;
  v60 = sub_25FF40();
  v54 = *(v60 - 8);
  __chkstk_darwin(v60);
  v52 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_316220, &unk_273570);
  __chkstk_darwin(v8 - 8);
  v58 = &v48 - v9;
  v10 = sub_2EF0(&qword_323D88, &qword_284310);
  __chkstk_darwin(v10 - 8);
  v59 = &v48 - v11;
  v12 = sub_2EF0(&qword_323D90, &qword_284318);
  v13 = *(v12 - 8);
  v56 = v12;
  v57 = v13;
  __chkstk_darwin(v12);
  v55 = &v48 - v14;
  v15 = sub_2EF0(&qword_323D98, &qword_284320);
  __chkstk_darwin(v15 - 8);
  v61 = &v48 - v16;
  v17 = sub_2EF0(&qword_323DA0, &qword_284328);
  v18 = *(v17 - 8);
  v62 = v17;
  v63 = v18;
  __chkstk_darwin(v17);
  v20 = &v48 - v19;
  v21 = sub_2EF0(&qword_323DA8, &qword_284330);
  __chkstk_darwin(v21 - 8);
  v23 = &v48 - v22;
  v24 = sub_2EF0(&qword_323DB0, &unk_284338);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v48 - v26;
  v28 = sub_25FF90();
  __chkstk_darwin(v28 - 8);

  sub_25FF80();
  v64 = a2;
  sub_25FF50();
  v66 = v65;
  v29 = sub_1BD3EC();

  sub_25FF70();
  sub_260A30();
  v50 = v29;
  v51 = v20;
  v30 = v62;
  v65 = a5;
  (*(v25 + 56))(v23, 0, 1, v24);
  (*(v25 + 32))(v27, v23, v24);
  v31 = v61;
  sub_260A10();
  v48 = v27;
  v49 = v24;
  v32 = v63;
  v33 = v30;
  if ((*(v63 + 48))(v31, 1, v30) == 1)
  {
    (*(v25 + 8))(v48, v49);
    v34 = &qword_323D98;
    v35 = &qword_284320;
    v36 = v31;
    return sub_8E80(v36, v34, v35);
  }

  v38 = v51;
  (*(v32 + 32))(v51, v31, v30);
  v66 = 0x3F2B2E282A5C2A5CLL;
  v67 = 0xEF292A5C2A5C2829;
  v39 = sub_260290();
  v40 = v58;
  (*(*(v39 - 8) + 56))(v58, 1, 1, v39);
  v41 = sub_1BD440(&qword_323DC0, &type metadata accessor for AttributedString, &protocol conformance descriptor for AttributedString);
  sub_10A84();
  v42 = v59;
  v61 = v41;
  sub_25FFF0();
  sub_8E80(v40, &qword_316220, &unk_273570);
  v43 = v25;
  if ((*(v57 + 48))(v42, 1, v56) == 1)
  {
    (*(v32 + 8))(v38, v33);
    (*(v25 + 8))(v48, v49);
    v34 = &qword_323D88;
    v35 = &qword_284310;
    v36 = v42;
    return sub_8E80(v36, v34, v35);
  }

  v44 = v55;
  sub_22148(v42, v55, &qword_323D90, &qword_284318);
  sub_260A20();
  v45 = sub_264520();
  result = sub_264520();
  if (result >> 14 < v45 >> 14)
  {
    __break(1u);
  }

  else
  {
    sub_2645D0();
    sub_2644D0();

    sub_25FF80();
    v46 = v52;
    sub_25FF50();
    v66 = v53;

    sub_25FF70();
    sub_8E38(&qword_323DC8, &qword_323D90, &qword_284318, &protocol conformance descriptor for Range<A>);
    v47 = v60;
    sub_25FF20();
    (*(v54 + 8))(v46, v47);
    sub_8E80(v44, &qword_323D90, &qword_284318);
    (*(v63 + 8))(v38, v62);
    return (*(v43 + 8))(v48, v49);
  }

  return result;
}

unint64_t sub_1BC644()
{
  result = qword_323C70;
  if (!qword_323C70)
  {
    sub_2F9C(&qword_323C58, &qword_2840F0);
    sub_1BC6FC();
    sub_8E38(&qword_3189E0, &qword_3189E8, &unk_26F980, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323C70);
  }

  return result;
}

unint64_t sub_1BC6FC()
{
  result = qword_323C78;
  if (!qword_323C78)
  {
    sub_2F9C(&qword_323C50, &qword_2840E8);
    sub_1BC7B4();
    sub_8E38(&qword_318ED0, &qword_318ED8, &unk_276230, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323C78);
  }

  return result;
}

unint64_t sub_1BC7B4()
{
  result = qword_323C80;
  if (!qword_323C80)
  {
    sub_2F9C(&qword_323C48, &qword_2840E0);
    sub_1BC86C();
    sub_8E38(&qword_317B88, &qword_317B90, &unk_26A0C0, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323C80);
  }

  return result;
}

unint64_t sub_1BC86C()
{
  result = qword_323C88;
  if (!qword_323C88)
  {
    sub_2F9C(&qword_323C40, &qword_2840D8);
    sub_1BC8F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323C88);
  }

  return result;
}

unint64_t sub_1BC8F8()
{
  result = qword_323C90;
  if (!qword_323C90)
  {
    sub_2F9C(&qword_323C38, &qword_2840D0);
    sub_1BC9B0();
    sub_8E38(&qword_3175A8, &qword_3175B0, &qword_269A38, &protocol conformance descriptor for _IgnoredByLayoutEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323C90);
  }

  return result;
}

unint64_t sub_1BC9B0()
{
  result = qword_323C98;
  if (!qword_323C98)
  {
    sub_2F9C(&qword_323C30, &qword_2840C8);
    sub_8E38(&qword_323CA0, &qword_323C28, &qword_2840C0, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323C98);
  }

  return result;
}

unint64_t sub_1BCA70()
{
  result = qword_323D20;
  if (!qword_323D20)
  {
    sub_2F9C(&qword_323D00, &qword_2841C8);
    sub_1BCB28();
    sub_8E38(&qword_318DA0, &qword_318DA8, &unk_26C340, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323D20);
  }

  return result;
}

unint64_t sub_1BCB28()
{
  result = qword_323D28;
  if (!qword_323D28)
  {
    sub_2F9C(&qword_323CF8, &qword_2841C0);
    sub_1BCF64(&qword_31FB90, &qword_31FB60, &qword_27B308);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323D28);
  }

  return result;
}

uint64_t sub_1BCBD4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((~a3 & 0xF000000000000007) != 0)
  {
    return sub_1BCBE8(result, a2, a3);
  }

  return result;
}

uint64_t sub_1BCBE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
  }

  else
  {
  }
}

unint64_t sub_1BCC40()
{
  result = qword_323D38;
  if (!qword_323D38)
  {
    sub_2F9C(&qword_323D30, &unk_284250);
    sub_1BCCF8();
    sub_8E38(&qword_317580, &qword_317588, &qword_26B7B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323D38);
  }

  return result;
}

unint64_t sub_1BCCF8()
{
  result = qword_323D40;
  if (!qword_323D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323D40);
  }

  return result;
}

unint64_t sub_1BCD4C()
{
  result = qword_323D48;
  if (!qword_323D48)
  {
    sub_2F9C(&qword_323CE0, &qword_2841A0);
    sub_1BCDD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323D48);
  }

  return result;
}

unint64_t sub_1BCDD0()
{
  result = qword_323D50;
  if (!qword_323D50)
  {
    sub_2F9C(&qword_323CD8, &qword_284198);
    sub_1BCE8C();
    sub_1BD440(&qword_3173C8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323D50);
  }

  return result;
}

unint64_t sub_1BCE8C()
{
  result = qword_323D58;
  if (!qword_323D58)
  {
    sub_2F9C(&qword_323D60, &qword_284260);
    sub_1BCF64(&qword_323D68, &qword_3186C8, &qword_26B838);
    sub_8E38(&qword_318DA0, &qword_318DA8, &unk_26C340, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323D58);
  }

  return result;
}

uint64_t sub_1BCF64(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2F9C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BCFD4()
{
  result = qword_323D70;
  if (!qword_323D70)
  {
    sub_2F9C(&qword_323CC8, &qword_284188);
    sub_1BD08C();
    sub_8E38(&qword_318DA0, &qword_318DA8, &unk_26C340, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323D70);
  }

  return result;
}

unint64_t sub_1BD08C()
{
  result = qword_323D78;
  if (!qword_323D78)
  {
    sub_2F9C(&qword_323CC0, &qword_284180);
    sub_2F9C(&qword_323CB0, &qword_284170);
    sub_2F9C(&qword_323CA8, &qword_284168);
    sub_2F9C(&qword_323D30, &unk_284250);
    sub_1BCC40();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323D78);
  }

  return result;
}

double sub_1BD1D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((~a3 & 0xF000000000000007) != 0)
  {
    return sub_1BD1E8(a1, a2, a3);
  }

  return result;
}

double sub_1BD1E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
  }

  else
  {
  }

  return result;
}

uint64_t sub_1BD238(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1BD280(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1BD2D0()
{
  sub_2F9C(&qword_323C60, &qword_2840F8);
  sub_2F9C(&qword_323C58, &qword_2840F0);
  sub_2F9C(&qword_3174E8, &qword_269970);
  sub_1BC644();
  sub_8E38(&qword_3175C8, &qword_3174E8, &qword_269970, &protocol conformance descriptor for ClosedRange<A>);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1BD3EC()
{
  result = qword_323DB8;
  if (!qword_323DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323DB8);
  }

  return result;
}

uint64_t sub_1BD440(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD498(void (*a1)(uint64_t *__return_ptr, void *))
{
  sub_8198(v1, &v6, &qword_316BC0, &qword_2707C0);
  if (!v7)
  {
    return 0;
  }

  sub_F7CC(&v6, v5);
  a1(&v8, v5);
  if (v2)
  {
    result = sub_3080(v5);
    __break(1u);
  }

  else
  {
    sub_3080(v5);
    return v8;
  }

  return result;
}

__n128 GridItemMetadataView.init(model:contextActionMenuView:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = swift_getKeyPath();
  *(a4 + 8) = 0;
  v8 = type metadata accessor for GridItemMetadataView(0);
  v9 = v8[5];
  *(a4 + v9) = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v10 = a4 + v8[6];
  v11 = *(a1 + 16);
  *v10 = *a1;
  *(v10 + 16) = v11;
  result = *(a1 + 25);
  *(v10 + 25) = result;
  v13 = (a4 + v8[7]);
  *v13 = a2;
  v13[1] = a3;
  return result;
}

uint64_t sub_1BD5FC()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *v0;
  if ((*(v0 + 8) & 1) == 0)
  {
    v6 = *v0;

    sub_264900();
    v7 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_4054(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v8[1];
  }

  return result;
}

uint64_t sub_1BD73C@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_316C10, &unk_26AF10);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for GridItemMetadataView(0);
  sub_8198(v1 + *(v10 + 20), v9, &qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_E59A0(v9, a1, type metadata accessor for SizeConstants);
  }

  sub_264900();
  v12 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t GridItemMetadataView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v58 = type metadata accessor for SizeConstants.Environment(0);
  __chkstk_darwin(v58);
  v60 = &v54[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v61 = sub_262730();
  v3 = *(v61 - 8);
  __chkstk_darwin(v61);
  v56 = &v54[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v59 = &v54[-v6];
  v57 = sub_2EF0(&qword_31B578, &qword_270C30);
  __chkstk_darwin(v57);
  v8 = &v54[-v7];
  v9 = type metadata accessor for SizeConstants.Spacing(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v54[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v54[-v13];
  __chkstk_darwin(v15);
  v17 = &v54[-v16];
  v18 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v18 - 8);
  v20 = &v54[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v23 = &v54[-v22];
  v24 = sub_2EF0(&qword_323DD0, &qword_2843D0);
  __chkstk_darwin(v24 - 8);
  v26 = &v54[-v25];
  v30 = sub_261E60();
  sub_1BD73C(v23);
  sub_E59A0(v23, v17, type metadata accessor for SizeConstants.Environment);
  sub_E5250(v17);
  *v26 = v30;
  *(v26 + 1) = 0x4000000000000000;
  v26[16] = 0;
  v27 = *(sub_2EF0(&qword_323DD8, &qword_2843D8) + 44);
  v62 = v26;
  v28 = &v26[v27];
  *v28 = sub_261D30();
  *(v28 + 1) = 0;
  v28[16] = 0;
  v29 = sub_2EF0(&qword_323DE0, &unk_2843E0);
  sub_1BDF30(v1, &v28[*(v29 + 44)]);
  LODWORD(v30) = sub_262510();
  v31 = v1 + *(type metadata accessor for GridItemMetadataView(0) + 24);
  sub_232D0(v31, &v66);
  v64[0] = v66;
  v64[1] = v67;
  v65 = v68;
  v32 = *(&v67 + 1);
  sub_8E80(v64, &qword_316BC0, &qword_2707C0);
  if (v32 || *(v31 + 40) == 1)
  {
    sub_1BD73C(v20);
    sub_E59A0(v20, v14, type metadata accessor for SizeConstants.Environment);
    v33 = *(v3 + 104);
    v55 = v30;
    v30 = v59;
    v34 = v61;
    v33(v59, enum case for Font.TextStyle.body(_:), v61);
    sub_1BE868(v14, v11, type metadata accessor for SizeConstants.Spacing);
    v35 = v56;
    (*(v3 + 16))(v56, v30, v34);
    sub_1BE868(v11, v8, type metadata accessor for SizeConstants.Spacing);
    v36 = v60;
    sub_1BE868(v11, v60, type metadata accessor for SizeConstants.Environment);
    v37 = *(v58 + 24);
    v38 = sub_1CF30(v35, &v36[v37]);
    v39 = *(v3 + 8);
    v39(v35, v34);
    sub_E5250(v11);
    v40 = sub_261690();
    (*(*(v40 - 8) + 8))(&v36[v37], v40);
    v41 = 1.0;
    if ((*&v38 & 0xFFFFFFFFFFFFFLL) == 0)
    {
      v41 = v38;
    }

    if ((~*&v38 & 0x7FF0000000000000) != 0)
    {
      v41 = v38;
    }

    *&v8[*(v57 + 36)] = v41;
    v42 = v30;
    LOBYTE(v30) = v55;
    v39(v42, v34);
    sub_E5250(v14);
    sub_21FA68(12.0);
    sub_8E80(v8, &qword_31B578, &qword_270C30);
  }

  sub_2610C0();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v51 = v63;
  sub_22148(v62, v63, &qword_323DD0, &qword_2843D0);
  result = sub_2EF0(&qword_323DE8, &qword_2843F0);
  v53 = v51 + *(result + 36);
  *v53 = v30;
  *(v53 + 8) = v44;
  *(v53 + 16) = v46;
  *(v53 + 24) = v48;
  *(v53 + 32) = v50;
  *(v53 + 40) = 0;
  return result;
}

uint64_t sub_1BDF30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = type metadata accessor for SizeConstants.Spacing(0);
  __chkstk_darwin(v3 - 8);
  v55 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v5 - 8);
  v54 = (&v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_2EF0(&qword_318458, &unk_26B270);
  __chkstk_darwin(v7 - 8);
  v9 = &v52 - v8;
  v10 = sub_262730();
  v52 = *(v10 - 8);
  v53 = v10;
  __chkstk_darwin(v10);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_263D20();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_260BD0();
  __chkstk_darwin(v17 - 8);
  v18 = sub_2EF0(&qword_323E98, &qword_284470);
  v57 = *(v18 - 8);
  v58 = v18;
  __chkstk_darwin(v18);
  v20 = &v52 - v19;
  v21 = sub_2EF0(&qword_323EA0, &qword_284478);
  __chkstk_darwin(v21 - 8);
  v23 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v52 - v25;
  v56 = a1 + *(type metadata accessor for GridItemMetadataView(0) + 24);
  if (*(v56 + 40) == 1)
  {
    v59 = a1;
    sub_1BD5FC();
    isa = sub_2647E0().super.super.isa;
    (*(v14 + 104))(v16, enum case for LocalizerContext.standalone(_:), v13);
    sub_260BA0();

    (*(v14 + 8))(v16, v13);
    sub_260B10();
    v29 = v52;
    v28 = v53;
    (*(v52 + 104))(v12, enum case for Font.TextStyle.title(_:), v53);
    v30 = enum case for Font.Design.serif (_:);
    v31 = sub_2625C0();
    v32 = *(v31 - 8);
    (*(v32 + 104))(v9, v30, v31);
    (*(v32 + 56))(v9, 0, 1, v31);
    sub_262650();
    v33 = sub_262680();
    sub_8E80(v9, &qword_318458, &unk_26B270);
    (*(v29 + 8))(v12, v28);
    KeyPath = swift_getKeyPath();
    v35 = &v20[*(sub_2EF0(&qword_318470, &qword_26FBB0) + 36)];
    *v35 = KeyPath;
    v35[1] = v33;
    v36 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
    v37 = swift_getKeyPath();
    v38 = &v20[*(sub_2EF0(&qword_318460, &qword_26FBA0) + 36)];
    *v38 = v37;
    v38[1] = v36;
    LOBYTE(v36) = sub_2624F0();
    v39 = v54;
    sub_1BD73C(v54);
    a1 = v59;
    v40 = v39;
    v41 = v55;
    sub_E59A0(v40, v55, type metadata accessor for SizeConstants.Environment);
    sub_E5250(v41);
    sub_2610C0();
    v42 = v58;
    v43 = &v20[*(v58 + 36)];
    *v43 = v36;
    *(v43 + 1) = v44;
    *(v43 + 2) = v45;
    *(v43 + 3) = v46;
    *(v43 + 4) = v47;
    v43[40] = 0;
    sub_22148(v20, v26, &qword_323E98, &qword_284470);
    (*(v57 + 56))(v26, 0, 1, v42);
  }

  else
  {
    (*(v57 + 56))(v26, 1, 1, v58);
  }

  v48 = sub_232D0(v56, v61);
  __chkstk_darwin(v48);
  *(&v52 - 2) = a1;
  v49 = sub_1BD498(sub_1BEC90);
  sub_8E80(v61, &qword_316BC0, &qword_2707C0);
  sub_8198(v26, v23, &qword_323EA0, &qword_284478);
  v50 = v60;
  sub_8198(v23, v60, &qword_323EA0, &qword_284478);
  *(v50 + *(sub_2EF0(&qword_323EA8, &qword_284480) + 48)) = v49;

  sub_8E80(v26, &qword_323EA0, &qword_284478);

  return sub_8E80(v23, &qword_323EA0, &qword_284478);
}

uint64_t sub_1BE658@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v15 = a3;
  v4 = a1[3];
  v5 = a1[4];
  sub_2E18(a1, v4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = type metadata accessor for GridItemMetadataView(0);
  v11 = (*(v5 + 64))(*(a2 + *(v10 + 28)), *(a2 + *(v10 + 28) + 8), v4, v5);
  v12 = __chkstk_darwin(v11);
  (*(v7 + 16))(&v14 - v9, &v14 - v9, AssociatedTypeWitness, v12);
  swift_getAssociatedConformanceWitness();
  *v15 = sub_263310();
  return (*(v7 + 8))(&v14 - v9, AssociatedTypeWitness);
}

uint64_t type metadata accessor for GridItemMetadataView(uint64_t a1)
{
  result = qword_323E48;
  if (!qword_323E48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BE868(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BE900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2EF0(&qword_317BF8, &unk_26F930);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1BE9E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2EF0(&qword_317BF8, &unk_26F930);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

void sub_1BEAA8(uint64_t a1)
{
  sub_1BEB4C();
  if (v1 <= 0x3F)
  {
    sub_3E754(319);
    if (v2 <= 0x3F)
    {
      sub_16D28();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BEB4C()
{
  if (!qword_322DC0)
  {
    v0 = sub_2611E0();
    if (!v1)
    {
      atomic_store(v0, &qword_322DC0);
    }
  }
}

unint64_t sub_1BEBA0()
{
  result = qword_323E88;
  if (!qword_323E88)
  {
    sub_2F9C(&qword_323DE8, &qword_2843F0);
    sub_1BEC2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323E88);
  }

  return result;
}

unint64_t sub_1BEC2C()
{
  result = qword_323E90;
  if (!qword_323E90)
  {
    sub_2F9C(&qword_323DD0, &qword_2843D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323E90);
  }

  return result;
}

uint64_t View.frame(fitting:withAspectRatio:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();

  return sub_262DA0();
}

uint64_t BuyButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v24 = sub_2EF0(&qword_31A2C0, &qword_2844F0) - 8;
  __chkstk_darwin(v24);
  v23 = v22 - v3;
  v4 = sub_262730();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ButtonView(0);
  sub_1C1894(v1, a1 + *(v8 + 28), type metadata accessor for ButtonViewModel);
  *&v27 = 0x4020000000000000;
  v9 = enum case for Font.TextStyle.subheadline(_:);
  v10 = *(v5 + 104);
  v10(v7, enum case for Font.TextStyle.subheadline(_:), v4);
  sub_40130();
  sub_2612E0();
  *&v27 = 0x3FF8000000000000;
  v10(v7, v9, v4);
  sub_2612E0();
  v11 = *(v8 + 24);
  *(a1 + v11) = swift_getKeyPath();
  sub_2EF0(&qword_319B00, &unk_26EA40);
  swift_storeEnumTagMultiPayload();
  v12 = v23;
  sub_8198(v22[1], v23, &qword_31A2C0, &qword_2844F0);
  v13 = a1 + *(sub_2EF0(&qword_323EB0, &qword_284538) + 36);
  v14 = type metadata accessor for BuyButtonCaptionViewModifier(0);
  v15 = v14[6];
  *(v13 + v15) = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v16 = v13 + v14[7];
  type metadata accessor for CGSize(0);
  v25 = 0;
  v26 = 0;
  sub_2631D0();
  v17 = v28;
  *v16 = v27;
  *(v16 + 16) = v17;
  v18 = v13 + v14[8];
  v25 = 0;
  v26 = 0;
  sub_2631D0();
  v19 = v28;
  *v18 = v27;
  *(v18 + 16) = v19;
  sub_1BF854(v13);
  LOBYTE(v18) = *(v12 + *(v24 + 48));
  sub_8E80(v12, &qword_31A2C0, &qword_2844F0);
  *(v13 + v14[5]) = v18;
  v20 = sub_2EF0(&qword_323EB8, &qword_284570);
  return sub_1BF164(a1 + *(v20 + 36));
}

uint64_t sub_1BF164@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_264010();
  v56 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_263FA0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v57 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_261C90();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + *(type metadata accessor for ButtonViewModel(0) + 48)) == 1)
  {
    v53 = v7;
    v51 = sub_2EF0(&qword_31A2C0, &qword_2844F0);
    v13 = *(v51 + 48);
    v14 = *(type metadata accessor for BuyButtonExternals(0) + 28);
    v54 = v6;
    v55 = v1;
    v15 = (v1 + v14 + v13);
    *&v69[15] = *(v15 + 63);
    v16 = *&v69[15];
    v17 = v15[3];
    v68[2] = v15[2];
    *v69 = v17;
    v18 = v15[1];
    v68[0] = *v15;
    v68[1] = v18;
    v52 = v5;
    if ((v16 & 0x1000000) != 0)
    {
      v19 = v15[3];
      v65 = v15[2];
      v66 = v19;
      v67 = *(v15 + 32);
      v20 = v15[1];
      v63 = *v15;
      v64 = v20;
      sub_8198(v68, &v58, &qword_317F40, &qword_26E9D0);
    }

    else
    {

      sub_264900();
      v24 = v3;
      v25 = a1;
      v26 = sub_2624B0();
      sub_260D10();

      a1 = v25;
      v3 = v24;
      sub_261C80();
      swift_getAtKeyPath();
      sub_8E80(v68, &qword_317F40, &qword_26E9D0);
      (*(v10 + 8))(v12, v9);
    }

    v58 = v63;
    v59 = v64;
    v60 = v65;
    v61 = v66;
    v62 = v67;
    v27 = v55;
    if (*(&v63 + 1) && (v28 = v59, sub_8E80(&v58, &qword_317F48, &qword_26A9A0), v28 == 5))
    {
      v29 = (v27 + *(v51 + 44));
      sub_2E18(v29, v29[3]);
      v30 = sub_2609C0();
      if ((v30 == 2 || (v30 & 1) == 0) && (sub_2E18(v29, v29[3]), (v32 = sub_260700()) != 0) && (v33 = v32, v34 = [v32 priceFormatted], v33, v34))
      {
        v35 = sub_264460();
        v36 = a1;
        v38 = v37;

        sub_2EF0(&qword_31ACF0, &unk_26FF60);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_267D30;
        v40 = v56;
        *(inited + 32) = 0x6563697270;
        v41 = inited + 32;
        *(inited + 40) = 0xE500000000000000;
        *(inited + 48) = v35;
        *(inited + 56) = v38;
        sub_F13C(inited);
        swift_setDeallocating();
        sub_8E80(v41, &qword_31ACF8, &qword_273580);
        v42 = v57;
        sub_263F90();
        v43 = v52;
        (*(v40 + 104))(v52, enum case for LocalizerLookupStrategy.default(_:), v3);
        sub_260B80();

        (*(v40 + 8))(v43, v3);
        (*(v53 + 8))(v42, v54);
        v44 = sub_260BD0();
        v45 = *(*(v44 - 8) + 56);
        v46 = v36;
      }

      else
      {
        v47 = v57;
        sub_263F90();
        v48 = v56;
        v49 = v52;
        (*(v56 + 104))(v52, enum case for LocalizerLookupStrategy.default(_:), v3);
        sub_260B80();
        (*(v48 + 8))(v49, v3);
        (*(v53 + 8))(v47, v54);
        v44 = sub_260BD0();
        v45 = *(*(v44 - 8) + 56);
        v46 = a1;
      }

      return v45(v46, 0, 1, v44);
    }

    else
    {
      v31 = sub_260BD0();
      return (*(*(v31 - 8) + 56))(a1, 1, 1, v31);
    }
  }

  else
  {
    v21 = sub_260BD0();
    v22 = *(*(v21 - 8) + 56);

    return v22(a1, 1, 1, v21);
  }
}

uint64_t sub_1BF854@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2EF0(&qword_31A158, &qword_26E3F8);
  __chkstk_darwin(v3 - 8);
  v43 = &v40 - v4;
  v5 = sub_2601B0();
  v44 = *(v5 - 8);
  v6 = *(v44 + 64);
  __chkstk_darwin(v5);
  v41 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v42 = &v40 - v8;
  v9 = sub_264010();
  v47 = *(v9 - 8);
  v48 = v9;
  __chkstk_darwin(v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_263FA0();
  v45 = *(v12 - 8);
  v46 = v12;
  __chkstk_darwin(v12);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (v1 + *(sub_2EF0(&qword_31A2C0, &qword_2844F0) + 44));
  sub_2E18(v15, v15[3]);
  if (sub_260870())
  {
    v16 = sub_1C11A4(&unk_323F30, type metadata accessor for BuyButtonExternals, &protocol conformance descriptor for BuyButtonExternals);
    v40 = v14;
    v17 = v11;
    v18 = v5;
    v19 = a1;
    v20 = *(v16 + 24);
    v21 = type metadata accessor for BuyButtonExternals(0);
    v22 = v20(v21, v16);
    a1 = v19;
    v5 = v18;
    v23 = v40;
    v24 = v22;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_260FF0();

    if ((v49 & 1) == 0)
    {
      sub_263F90();
      v32 = v47;
      v31 = v48;
      (*(v47 + 104))(v17, enum case for LocalizerLookupStrategy.default(_:), v48);
      sub_260B80();
      (*(v32 + 8))(v17, v31);
      (*(v45 + 8))(v23, v46);
LABEL_10:
      v30 = 0;
      goto LABEL_11;
    }
  }

  sub_2E18(v15, v15[3]);
  v25 = sub_260700();
  if (!v25)
  {
    goto LABEL_7;
  }

  v26 = v25;
  v27 = [v25 isPreorder];

  if (!v27)
  {
    goto LABEL_7;
  }

  sub_2E18(v15, v15[3]);
  v28 = v43;
  sub_2608D0();
  v29 = v44;
  if ((*(v44 + 48))(v28, 1, v5) != 1)
  {
    v33 = *(v29 + 32);
    v34 = v42;
    v33(v42, v28, v5);
    v35 = v41;
    (*(v29 + 16))(v41, v34, v5);
    v36 = (*(v29 + 80) + 16) & ~*(v29 + 80);
    v37 = swift_allocObject();
    v33((v37 + v36), v35, v5);
    sub_260B70();

    (*(v29 + 8))(v34, v5);
    goto LABEL_10;
  }

  sub_8E80(v28, &qword_31A158, &qword_26E3F8);
LABEL_7:
  v30 = 1;
LABEL_11:
  v38 = sub_260BD0();
  return (*(*(v38 - 8) + 56))(a1, v30, 1, v38);
}

uint64_t sub_1BFE00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a1;
  v47 = a2;
  v45 = sub_2EF0(&qword_324030, &qword_2846C8);
  __chkstk_darwin(v45);
  v46 = &v38 - v3;
  v4 = type metadata accessor for SizeConstants.Spacing(0);
  __chkstk_darwin(v4 - 8);
  v42 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v6 - 8);
  v41 = (&v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for BuyButtonCaptionViewModifier(0);
  v39 = *(v8 - 8);
  v40 = v8;
  v9 = *(v39 + 64);
  __chkstk_darwin(v8);
  v44 = sub_2EF0(&qword_324038, &qword_2846D0);
  __chkstk_darwin(v44);
  v11 = &v38 - v10;
  v12 = sub_2EF0(&qword_316208, &qword_268BD0);
  __chkstk_darwin(v12 - 8);
  v14 = &v38 - v13;
  v15 = sub_260BD0();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v2;
  v21 = v20;
  sub_8198(v2, v14, &qword_316208, &qword_268BD0);
  if ((*(v16 + 48))(v14, 1, v21) == 1)
  {
    sub_8E80(v14, &qword_316208, &qword_268BD0);
    v22 = sub_2EF0(&qword_324040, &qword_2846D8);
    (*(*(v22 - 8) + 16))(v46, v43, v22);
    swift_storeEnumTagMultiPayload();
    sub_1C16F8();
    sub_8E38(&qword_324060, &qword_324040, &qword_2846D8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    return sub_261F80();
  }

  else
  {
    v24 = *(v16 + 32);
    v38 = v18;
    v24(v18, v14, v21);
    sub_1C1894(v2, &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BuyButtonCaptionViewModifier);
    v25 = (*(v39 + 80) + 16) & ~*(v39 + 80);
    v26 = swift_allocObject();
    sub_1C1918(&v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25, type metadata accessor for BuyButtonCaptionViewModifier);
    v27 = sub_2EF0(&qword_324040, &qword_2846D8);
    (*(*(v27 - 8) + 16))(v11, v43, v27);
    v28 = &v11[*(sub_2EF0(&qword_324058, &unk_2846E0) + 36)];
    *v28 = sub_1C1DAC;
    v28[1] = 0;
    v28[2] = sub_1C1900;
    v28[3] = v26;
    v29 = sub_1C04EC();
    v43 = v30;
    v31 = &v11[*(v44 + 36)];
    v32 = v41;
    sub_40CA0(v41);
    v33 = v42;
    sub_1C1918(v32, v42, type metadata accessor for SizeConstants.Environment);
    sub_E5250(v33);
    *v31 = sub_261E50();
    *(v31 + 1) = 0x4000000000000000;
    v31[16] = 0;
    v34 = sub_2EF0(&qword_324078, &unk_2846F8);
    v35 = v38;
    sub_1C05CC(v19, v38, &v31[*(v34 + 44)]);
    v36 = &v31[*(sub_2EF0(&qword_324070, &qword_2846F0) + 36)];
    v37 = v43;
    *v36 = v29;
    v36[1] = v37;
    sub_8198(v11, v46, &qword_324038, &qword_2846D0);
    swift_storeEnumTagMultiPayload();
    sub_1C16F8();
    sub_8E38(&qword_324060, &qword_324040, &qword_2846D8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_261F80();
    sub_8E80(v11, &qword_324038, &qword_2846D0);
    return (*(v16 + 8))(v35, v21);
  }
}

uint64_t sub_1C0470(uint64_t *a1, uint64_t a2)
{
  type metadata accessor for BuyButtonCaptionViewModifier(0);
  sub_2EF0(&qword_316460, &unk_2681F0);
  return sub_2631F0();
}

uint64_t sub_1C04EC()
{
  type metadata accessor for BuyButtonCaptionViewModifier(0);
  sub_2EF0(&qword_316460, &unk_2681F0);
  sub_2631E0();
  sub_2631E0();
  return sub_263550();
}

uint64_t sub_1C05CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a2;
  v48 = a1;
  v5 = type metadata accessor for BuyButtonCaptionViewModifier(0);
  v6 = v5 - 8;
  v55 = *(v5 - 8);
  v54 = *(v55 + 64);
  __chkstk_darwin(v5);
  v53 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2626C0();
  v49 = *(v8 - 8);
  v50 = v8;
  __chkstk_darwin(v8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2EF0(&qword_318458, &unk_26B270);
  __chkstk_darwin(v11 - 8);
  v13 = &v43 - v12;
  v43 = sub_260BD0();
  v14 = *(v43 - 8);
  __chkstk_darwin(v43);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_2EF0(&qword_324080, &unk_284708) - 8;
  __chkstk_darwin(v51);
  v52 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v43 - v19;
  v21 = (a1 + *(v6 + 36));
  v23 = v21[1];
  v24 = v21[2];
  v57 = *v21;
  v22 = v57;
  v58 = v23;
  v59 = v24;
  sub_2EF0(&qword_316460, &unk_2681F0);
  sub_2631E0();
  v57 = v22;
  v58 = v23;
  v59 = v24;
  sub_2631E0();
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v46 = v57;
  v25 = v59;
  v45 = v61;
  v44 = v62;
  LOBYTE(v56) = 1;
  v64 = v58;
  v63 = v60;
  (*(v14 + 16))(v16, v47, v43);
  sub_260B10();
  sub_262630();
  v26 = sub_2625C0();
  (*(*(v26 - 8) + 56))(v13, 1, 1, v26);
  sub_262670();
  sub_8E80(v13, &qword_318458, &unk_26B270);
  v28 = v49;
  v27 = v50;
  (*(v49 + 104))(v10, enum case for Font.Leading.tight(_:), v50);
  v29 = sub_2626E0();

  (*(v28 + 8))(v10, v27);
  KeyPath = swift_getKeyPath();
  v31 = &v20[*(sub_2EF0(&qword_318470, &qword_26FBB0) + 36)];
  *v31 = KeyPath;
  v31[1] = v29;
  v32 = _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
  v33 = swift_getKeyPath();
  v34 = &v20[*(sub_2EF0(&qword_318460, &qword_26FBA0) + 36)];
  *v34 = v33;
  v34[1] = v32;
  *&v20[*(sub_2EF0(&qword_324088, &qword_284788) + 36)] = 1;
  v35 = v53;
  sub_1C1894(v48, v53, type metadata accessor for BuyButtonCaptionViewModifier);
  v36 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v37 = swift_allocObject();
  sub_1C1918(v35, v37 + v36, type metadata accessor for BuyButtonCaptionViewModifier);
  v38 = v52;
  v39 = &v20[*(v51 + 44)];
  *v39 = sub_1C1DAC;
  v39[1] = 0;
  v39[2] = sub_1C1B50;
  v39[3] = v37;
  LOBYTE(v37) = v56;
  LOBYTE(v36) = v64;
  LOBYTE(v35) = v63;
  sub_8198(v20, v38, &qword_324080, &unk_284708);
  *a3 = 0;
  *(a3 + 8) = v37;
  *(a3 + 16) = v46;
  *(a3 + 24) = v36;
  *(a3 + 32) = v25;
  *(a3 + 40) = v35;
  v40 = v44;
  *(a3 + 48) = v45;
  *(a3 + 56) = v40;
  v41 = sub_2EF0(&qword_324090, &unk_284790);
  sub_8198(v38, a3 + *(v41 + 48), &qword_324080, &unk_284708);
  sub_8E80(v20, &qword_324080, &unk_284708);
  return sub_8E80(v38, &qword_324080, &unk_284708);
}

uint64_t sub_1C0BEC(uint64_t *a1, uint64_t a2)
{
  type metadata accessor for BuyButtonCaptionViewModifier(0);
  sub_2EF0(&qword_316460, &unk_2681F0);
  return sub_2631F0();
}

uint64_t sub_1C0C6C()
{
  v0 = sub_2EF0(&qword_316208, &qword_268BD0);
  sub_B600(v0, qword_354028);
  v1 = sub_B080(v0, qword_354028);
  v2 = sub_260BD0();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t sub_1C0D0C@<X0>(uint64_t a1@<X8>)
{
  if (qword_315AB8 != -1)
  {
    swift_once();
  }

  v2 = sub_2EF0(&qword_316208, &qword_268BD0);
  v3 = sub_B080(v2, qword_354028);
  return sub_8198(v3, a1, &qword_316208, &qword_268BD0);
}

uint64_t sub_1C0E4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_31A2C0, &qword_2844F0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1C0ED8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_31A2C0, &qword_2844F0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1C0F74(uint64_t a1)
{
  sub_1C15DC(319, &qword_323F28, type metadata accessor for BuyButtonViewModelBase);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1C1000()
{
  result = qword_323F60;
  if (!qword_323F60)
  {
    sub_2F9C(&qword_323EB8, &qword_284570);
    sub_1C10B8();
    sub_8E38(&qword_323F78, &qword_323F80, &unk_2845E0, &protocol conformance descriptor for _PreferenceWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323F60);
  }

  return result;
}

unint64_t sub_1C10B8()
{
  result = qword_323F68;
  if (!qword_323F68)
  {
    sub_2F9C(&qword_323EB0, &qword_284538);
    sub_1C11A4(&qword_31A2D0, type metadata accessor for ButtonView, &protocol conformance descriptor for ButtonView);
    sub_1C11A4(&qword_323F70, type metadata accessor for BuyButtonCaptionViewModifier, &unk_284678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323F68);
  }

  return result;
}

uint64_t sub_1C11A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C1210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2EF0(&qword_316208, &qword_268BD0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_2EF0(&qword_317BF8, &unk_26F930);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 16);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_1C1358(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2EF0(&qword_316208, &qword_268BD0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_2EF0(&qword_317BF8, &unk_26F930);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 16) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

void sub_1C147C(uint64_t a1)
{
  sub_1C1678(319, &qword_31A8C8, &type metadata accessor for LocalizerRequest, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_1C15DC(319, &unk_323FF0, type metadata accessor for BuyButtonViewModelBase.LongCaptionAlignment);
    if (v2 <= 0x3F)
    {
      sub_1C1678(319, &qword_317C68, type metadata accessor for SizeConstants, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_1C1678(319, &qword_316310, type metadata accessor for CGSize, &type metadata accessor for State);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C15DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for BuyButtonExternals(255);
    v7 = sub_1C11A4(&unk_323F30, type metadata accessor for BuyButtonExternals, &protocol conformance descriptor for BuyButtonExternals);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1C1678(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1C16F8()
{
  result = qword_324048;
  if (!qword_324048)
  {
    sub_2F9C(&qword_324038, &qword_2846D0);
    sub_1C17B0();
    sub_8E38(&qword_324068, &qword_324070, &qword_2846F0, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324048);
  }

  return result;
}

unint64_t sub_1C17B0()
{
  result = qword_324050;
  if (!qword_324050)
  {
    sub_2F9C(&qword_324058, &unk_2846E0);
    sub_8E38(&qword_324060, &qword_324040, &qword_2846D8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_8E38(&qword_316250, &qword_316240, &unk_2680A0, &protocol conformance descriptor for _GeometryActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324050);
  }

  return result;
}

uint64_t sub_1C1894(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C1918(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C1990()
{
  v1 = type metadata accessor for BuyButtonCaptionViewModifier(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = sub_260BD0();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  v5 = v0 + v2 + *(v1 + 24);
  sub_2EF0(&qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
    v7 = sub_261690();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1C1B68(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for BuyButtonCaptionViewModifier(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1C1BEC()
{
  v1 = sub_2601B0();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1C1C74(void *a1)
{
  v3 = *(sub_2601B0() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1E8A24(a1, v4);
}

unint64_t sub_1C1CF0()
{
  result = qword_324098;
  if (!qword_324098)
  {
    sub_2F9C(&qword_3240A0, &qword_2847E8);
    sub_1C16F8();
    sub_8E38(&qword_324060, &qword_324040, &qword_2846D8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324098);
  }

  return result;
}

__n128 SeeAllView.init(model:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for SeeAllView(0);
  v5 = *(v4 + 20);
  *(a2 + v5) = swift_getKeyPath();
  sub_2EF0(&qword_316C18, &unk_26F830);
  swift_storeEnumTagMultiPayload();
  v6 = a2 + *(v4 + 24);
  result = *a1;
  v8 = *(a1 + 16);
  *v6 = *a1;
  *(v6 + 1) = v8;
  *(v6 + 4) = *(a1 + 32);
  return result;
}

uint64_t type metadata accessor for SeeAllView(uint64_t a1)
{
  result = qword_324128;
  if (!qword_324128)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C1EBC@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_316C18, &unk_26F830);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SeeAllView(0);
  sub_1C3AA4(v1 + *(v10 + 20), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2616C0();
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

uint64_t SeeAllView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v1 = sub_261FA0();
  v2 = *(v1 - 8);
  v50 = v1;
  v51 = v2;
  __chkstk_darwin(v1);
  v49 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_261760();
  v5 = *(v4 - 8);
  v47 = v4;
  v48 = v5;
  __chkstk_darwin(v4);
  v44 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2604E0();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for SeeAllView(0);
  v9 = v8 - 8;
  v41 = *(v8 - 8);
  v10 = *(v41 + 64);
  __chkstk_darwin(v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2EF0(&qword_3240A8, &qword_284848);
  __chkstk_darwin(v12);
  v14 = &v40 - v13;
  v15 = sub_2EF0(&qword_3240B0, &qword_284850);
  v16 = *(v15 - 8);
  v45 = v15;
  v46 = v16;
  __chkstk_darwin(v15);
  v42 = &v40 - v17;
  v18 = &v14[v12[12]];
  v19 = sub_2EF0(&qword_3240B8, &qword_284858);
  v18[3] = v19;
  v18[4] = sub_8E38(&qword_3240C0, &qword_3240B8, &qword_284858, &unk_268B6C);
  v20 = sub_10934(v18);
  v21 = sub_2610B0();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  v22 = v12[13];
  v23 = *(v9 + 32);
  v24 = v43;
  sub_1C30B0(v43 + v23, &v53);
  sub_F7CC(&v53, &v14[v22]);
  sub_1C310C(v24, v11);
  v25 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v26 = swift_allocObject();
  sub_1C3174(v11, v26 + v25);
  sub_2604C0();
  sub_260420();
  v27 = &v14[v12[9]];
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  v28 = v12[10];
  *&v14[v28] = swift_getKeyPath();
  sub_2EF0(&qword_316930, &qword_2689A0);
  swift_storeEnumTagMultiPayload();
  v29 = &v14[v12[11]];
  *v29 = swift_getKeyPath();
  v29[40] = 0;
  v30 = (v20 + *(v19 + 36));
  *v30 = sub_1C31D8;
  v30[1] = v26;
  v31 = v44;
  sub_261750();
  v32 = sub_8E38(&qword_3240C8, &qword_3240A8, &qword_284848, &protocol conformance descriptor for BooksActionButton<A>);
  v33 = sub_1C3A4C(&qword_319400, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v34 = v42;
  v35 = v47;
  sub_262A50();
  (*(v48 + 8))(v31, v35);
  sub_8E80(v14, &qword_3240A8, &qword_284848);
  v36 = v49;
  sub_2618C0();
  *&v53 = v12;
  *(&v53 + 1) = v35;
  v54 = v32;
  v55 = v33;
  swift_getOpaqueTypeConformance2();
  sub_1C3A4C(&qword_318438, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
  v37 = v45;
  v38 = v50;
  sub_262AA0();
  (*(v51 + 8))(v36, v38);
  return (*(v46 + 8))(v34, v37);
}

uint64_t sub_1C26C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2EF0(&qword_318458, &unk_26B270);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_262730();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = sub_261D30();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v11 = sub_2EF0(&qword_324168, &qword_284958);
  sub_1C28D8(a1, (a2 + *(v11 + 44)));
  (*(v8 + 104))(v10, enum case for Font.TextStyle.body(_:), v7);
  v12 = sub_2625C0();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  sub_262630();
  v13 = sub_262680();
  sub_8E80(v6, &qword_318458, &unk_26B270);
  (*(v8 + 8))(v10, v7);
  KeyPath = swift_getKeyPath();
  result = sub_2EF0(&qword_324170, &qword_284990);
  v16 = (a2 + *(result + 36));
  *v16 = KeyPath;
  v16[1] = v13;
  return result;
}

uint64_t sub_1C28D8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v21 = a2;
  v3 = type metadata accessor for SeeAllView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = sub_2EF0(&qword_324178, &qword_284998);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v20 - v11;
  sub_1C310C(a1, &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = swift_allocObject();
  sub_1C3174(&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  sub_2EF0(&qword_324180, &qword_2849A0);
  sub_260A70();
  sub_260A50();
  sub_1C3994();
  sub_1C3A4C(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking, &protocol conformance descriptor for _JetLocalizeDefaultWorking);
  sub_1C3A4C(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed, &protocol conformance descriptor for _JetLocalizeDefaultFailed);
  sub_260A80();
  v15 = *(v7 + 16);
  v15(v9, v12, v6);
  v16 = v21;
  v15(v21, v9, v6);
  v17 = &v16[*(sub_2EF0(&qword_324190, &qword_2849A8) + 48)];
  *v17 = 0;
  v17[8] = 1;
  v18 = *(v7 + 8);
  v18(v12, v6);
  return (v18)(v9, v6);
}

uint64_t sub_1C2C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a2;
  v51 = a3;
  v4 = sub_2616C0();
  v49 = *(v4 - 8);
  v50 = v4;
  __chkstk_darwin(v4);
  v6 = (&v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_264010();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_263FA0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_260BD0();
  __chkstk_darwin(v15 - 8);
  sub_263F90();
  (*(v8 + 104))(v10, enum case for LocalizerLookupStrategy.default(_:), v7);
  sub_260B80();
  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);
  sub_30CC(a1, v52);
  v16 = sub_2627B0();
  v45 = v17;
  v46 = v16;
  LOBYTE(v10) = v18;
  v47 = v19;
  v52[0] = sub_262120();
  v20 = sub_2627F0();
  v22 = v21;
  LOBYTE(v8) = v23;
  v25 = v24;
  v26 = v6;
  sub_1C1EBC(v6);
  v27 = Text.withTrailingForwardChevron(_:layoutDirection:)(1, v6, v20, v22, v8 & 1, v25);
  v29 = v28;
  LOBYTE(v7) = v30;
  sub_39DBC(v20, v22, v8 & 1);

  (*(v49 + 8))(v26, v50);
  v32 = v45;
  v31 = v46;
  v49 = sub_262800();
  v50 = v33;
  v35 = v34;
  LOBYTE(v20) = v36;
  sub_39DBC(v31, v32, v10 & 1);

  sub_39DBC(v27, v29, v7 & 1);

  KeyPath = swift_getKeyPath();
  v38 = sub_2EF0(&qword_324180, &qword_2849A0);
  v39 = v51;
  v40 = (v51 + *(v38 + 36));
  v41 = *(sub_2EF0(&qword_317530, &qword_26FCC0) + 28);
  v42 = enum case for Image.Scale.small(_:);
  v43 = sub_2630F0();
  (*(*(v43 - 8) + 104))(&v40[v41], v42, v43);
  result = swift_getKeyPath();
  *v40 = result;
  *v39 = v49;
  *(v39 + 8) = v35;
  *(v39 + 16) = v20 & 1;
  *(v39 + 24) = v50;
  *(v39 + 32) = KeyPath;
  *(v39 + 40) = 0;
  return result;
}

uint64_t sub_1C310C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SeeAllView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C3174(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SeeAllView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C31D8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SeeAllView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1C26C0(v4, a1);
}

uint64_t sub_1C3290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2EF0(&qword_316F68, &unk_269C50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_2EF0(&qword_319458, &unk_26CF30);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1C33CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2EF0(&qword_316F68, &unk_269C50);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_2EF0(&qword_319458, &unk_26CF30);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 24) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_1C34F0(uint64_t a1)
{
  sub_1C35B4(319, &qword_316FE8, type metadata accessor for ColorConstants);
  if (v1 <= 0x3F)
  {
    sub_1C35B4(319, &qword_3194C8, &type metadata accessor for LayoutDirection);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C35B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2611E0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C3608()
{
  sub_2F9C(&qword_3240B0, &qword_284850);
  sub_261FA0();
  sub_2F9C(&qword_3240A8, &qword_284848);
  sub_261760();
  sub_8E38(&qword_3240C8, &qword_3240A8, &qword_284848, &protocol conformance descriptor for BooksActionButton<A>);
  sub_1C3A4C(&qword_319400, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  swift_getOpaqueTypeConformance2();
  sub_1C3A4C(&qword_318438, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C377C()
{
  v1 = type metadata accessor for SeeAllView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_261180();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = *(v1 + 20);
  sub_2EF0(&qword_316C18, &unk_26F830);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_2616C0();
    (*(*(v6 - 8) + 8))(v3 + v5, v6);
  }

  else
  {
  }

  sub_3080((v3 + *(v1 + 24)));

  return swift_deallocObject();
}

uint64_t sub_1C3914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SeeAllView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1C2C10(a1, v6, a2);
}

unint64_t sub_1C3994()
{
  result = qword_324188;
  if (!qword_324188)
  {
    sub_2F9C(&qword_324180, &qword_2849A0);
    sub_5CED4();
    sub_8E38(&qword_317590, &qword_317530, &qword_26FCC0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324188);
  }

  return result;
}

uint64_t sub_1C3A4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C3AA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_316C18, &unk_26F830);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 ShelfHeaderView.init(title:actionModel:useSmallHeader:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for ShelfHeaderView(0);
  v9 = v8[5];
  *&a4[v9] = swift_getKeyPath();
  sub_2EF0(&qword_316C08, &unk_26AEF0);
  swift_storeEnumTagMultiPayload();
  v10 = v8[6];
  *&a4[v10] = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v11 = &a4[v8[7]];
  *v11 = swift_getKeyPath();
  v11[8] = 0;
  v12 = v8[8];
  *&a4[v12] = swift_getKeyPath();
  sub_2EF0(&qword_316C18, &unk_26F830);
  swift_storeEnumTagMultiPayload();
  v13 = v8[10];
  v14 = sub_260BD0();
  v15 = *(v14 - 8);
  (*(v15 + 32))(&a4[v13], a1, v14);
  v16 = *(v15 + 56);
  v16(&a4[v8[11]], 1, 1, v14);
  v16(&a4[v8[9]], 1, 1, v14);
  a4[v8[12]] = 0;
  sub_222DC(v25);
  v17 = &a4[v8[13]];
  v18 = v25[3];
  *(v17 + 2) = v25[2];
  *(v17 + 3) = v18;
  v17[128] = v26;
  v19 = v25[7];
  *(v17 + 6) = v25[6];
  *(v17 + 7) = v19;
  v20 = v25[5];
  *(v17 + 4) = v25[4];
  *(v17 + 5) = v20;
  v21 = v25[1];
  *v17 = v25[0];
  *(v17 + 1) = v21;
  v22 = &a4[v8[14]];
  result = *a2;
  v24 = *(a2 + 16);
  *v22 = *a2;
  *(v22 + 1) = v24;
  *(v22 + 4) = *(a2 + 32);
  a4[v8[15]] = a3;
  return result;
}

__n128 ShelfHeaderView.init(title:subtitle:preheader:showTitleBelowSubtitle:coverViewModel:actionModel:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  *a7 = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v14 = type metadata accessor for ShelfHeaderView(0);
  v15 = v14[5];
  *&a7[v15] = swift_getKeyPath();
  sub_2EF0(&qword_316C08, &unk_26AEF0);
  swift_storeEnumTagMultiPayload();
  v16 = v14[6];
  *&a7[v16] = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v17 = &a7[v14[7]];
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  v18 = v14[8];
  *&a7[v18] = swift_getKeyPath();
  sub_2EF0(&qword_316C18, &unk_26F830);
  swift_storeEnumTagMultiPayload();
  v19 = v14[10];
  v20 = sub_260BD0();
  (*(*(v20 - 8) + 32))(&a7[v19], a1, v20);
  sub_22148(a2, &a7[v14[11]], &qword_316208, &qword_268BD0);
  sub_22148(a3, &a7[v14[9]], &qword_316208, &qword_268BD0);
  a7[v14[12]] = a4;
  v21 = &a7[v14[13]];
  v22 = *(a5 + 48);
  *(v21 + 2) = *(a5 + 32);
  *(v21 + 3) = v22;
  v23 = *(a5 + 16);
  *v21 = *a5;
  *(v21 + 1) = v23;
  v21[128] = *(a5 + 128);
  v24 = *(a5 + 112);
  *(v21 + 6) = *(a5 + 96);
  *(v21 + 7) = v24;
  v25 = *(a5 + 80);
  *(v21 + 4) = *(a5 + 64);
  *(v21 + 5) = v25;
  v26 = &a7[v14[14]];
  result = *a6;
  v28 = *(a6 + 16);
  *v26 = *a6;
  *(v26 + 1) = v28;
  *(v26 + 4) = *(a6 + 32);
  a7[v14[15]] = 0;
  return result;
}

uint64_t type metadata accessor for ShelfHeaderView(uint64_t a1)
{
  result = qword_3242E0;
  if (!qword_3242E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4000@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_316C08, &unk_26AEF0);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for ShelfHeaderView(0);
  sub_8198(v1 + *(v10 + 20), v9, &qword_316C08, &unk_26AEF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1CA824(v9, a1, type metadata accessor for FontConstants);
  }

  sub_264900();
  v12 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1C41EC@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_316C18, &unk_26F830);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ShelfHeaderView(0);
  sub_8198(v1 + *(v10 + 32), v9, &qword_316C18, &unk_26F830);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2616C0();
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

uint64_t sub_1C43F4()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for ShelfHeaderView(0) + 28);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_264900();
    v7 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_4054(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  if (v6)
  {
    return 4;
  }

  else
  {
    return 2;
  }
}

uint64_t ShelfHeaderView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v41 = a1;
  v40 = sub_2EF0(&qword_324198, &qword_284B00);
  __chkstk_darwin(v40);
  v4 = &v35 - v3;
  v43 = sub_2EF0(&qword_3241A0, &qword_284B08);
  __chkstk_darwin(v43);
  v45 = &v35 - v5;
  v44 = sub_261760();
  v39 = *(v44 - 8);
  __chkstk_darwin(v44);
  v38 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2604E0();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for ShelfHeaderView(0);
  v9 = v8 - 8;
  v36 = *(v8 - 8);
  v10 = *(v36 + 64);
  __chkstk_darwin(v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2EF0(&qword_3241A8, &qword_284B10);
  __chkstk_darwin(v12);
  v14 = &v35 - v13;
  v42 = sub_2EF0(&qword_3241B0, &qword_284B18);
  v37 = *(v42 - 8);
  __chkstk_darwin(v42);
  v16 = &v35 - v15;
  sub_8198(v2 + *(v9 + 64), &v46, &qword_315D38, &unk_266E30);
  if (v48)
  {
    sub_F7CC(&v46, v49);
    v17 = &v14[v12[12]];
    v35 = sub_2EF0(&qword_324278, &qword_284B78);
    v17[3] = v35;
    v17[4] = sub_8E38(&qword_324280, &qword_324278, &qword_284B78, &unk_268B6C);
    v18 = sub_10934(v17);
    v19 = sub_2610B0();
    (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
    sub_30CC(v49, &v14[v12[13]]);
    sub_1C9CFC(v2, &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v20 = (*(v36 + 80) + 16) & ~*(v36 + 80);
    v21 = swift_allocObject();
    sub_1CA824(v11, v21 + v20, type metadata accessor for ShelfHeaderView);
    sub_2604C0();
    sub_260420();
    v22 = &v14[v12[9]];
    *v22 = swift_getKeyPath();
    v22[8] = 0;
    v23 = v12[10];
    *&v14[v23] = swift_getKeyPath();
    sub_2EF0(&qword_316930, &qword_2689A0);
    swift_storeEnumTagMultiPayload();
    v24 = &v14[v12[11]];
    *v24 = swift_getKeyPath();
    v24[40] = 0;
    v25 = (v18 + *(v35 + 36));
    *v25 = sub_1C9D64;
    v25[1] = v21;
    v26 = v38;
    sub_261750();
    v27 = sub_8E38(&qword_3241B8, &qword_3241A8, &qword_284B10, &protocol conformance descriptor for BooksActionButton<A>);
    v28 = sub_1CAAD0(&qword_319400, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    v29 = v44;
    sub_262A50();
    (*(v39 + 8))(v26, v29);
    sub_8E80(v14, &qword_3241A8, &qword_284B10);
    v30 = v37;
    v31 = v42;
    (*(v37 + 16))(v45, v16, v42);
    swift_storeEnumTagMultiPayload();
    *&v46 = v12;
    *(&v46 + 1) = v29;
    v47 = v27;
    v48 = v28;
    swift_getOpaqueTypeConformance2();
    sub_1C97F8();
    sub_261F80();
    (*(v30 + 8))(v16, v31);
    return sub_3080(v49);
  }

  else
  {
    sub_8E80(&v46, &qword_315D38, &unk_266E30);
    sub_1C4CD0(v4);
    sub_8198(v4, v45, &qword_324198, &qword_284B00);
    swift_storeEnumTagMultiPayload();
    v33 = sub_8E38(&qword_3241B8, &qword_3241A8, &qword_284B10, &protocol conformance descriptor for BooksActionButton<A>);
    v34 = sub_1CAAD0(&qword_319400, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    v49[0] = v12;
    v49[1] = v44;
    v49[2] = v33;
    v49[3] = v34;
    swift_getOpaqueTypeConformance2();
    sub_1C97F8();
    sub_261F80();
    return sub_8E80(v4, &qword_324198, &qword_284B00);
  }
}

uint64_t sub_1C4CD0@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v36 = sub_2EF0(&qword_324240, &qword_284B58);
  __chkstk_darwin(v36);
  v32 = v31 - v2;
  v33 = sub_2EF0(&qword_324360, &qword_284C88);
  __chkstk_darwin(v33);
  v4 = v31 - v3;
  v34 = sub_2EF0(&qword_3241F0, &qword_284B30);
  __chkstk_darwin(v34);
  v6 = v31 - v5;
  v7 = sub_2EF0(&qword_3241E0, &qword_284B28);
  __chkstk_darwin(v7);
  v35 = v31 - v8;
  v9 = sub_2EF0(&qword_324368, &qword_284C90);
  __chkstk_darwin(v9);
  v11 = v31 - v10;
  v12 = sub_2EF0(&qword_3241D0, &qword_284B20);
  __chkstk_darwin(v12);
  v14 = v31 - v13;
  v15 = type metadata accessor for ShelfHeaderView(0);
  v16 = v1 + *(v15 + 52);
  v17 = *(v16 + 112);
  v46 = *(v16 + 96);
  v47 = v17;
  v48 = *(v16 + 128);
  v18 = *(v16 + 80);
  v44 = *(v16 + 64);
  v45 = v18;
  v19 = *(v16 + 48);
  v42 = *(v16 + 32);
  v43 = v19;
  v20 = *(v16 + 16);
  v40 = *v16;
  v41 = v20;
  if (sub_7DC5C(&v40) == 1)
  {
    v31[0] = v9;
    v31[1] = v12;
    if (*(v1 + *(v15 + 60)) == 1)
    {
      sub_1C6724(v6);
      v21 = &qword_3241F0;
      v22 = &qword_284B30;
      sub_8198(v6, v4, &qword_3241F0, &qword_284B30);
      swift_storeEnumTagMultiPayload();
      sub_1C9B90(&qword_3241E8, &qword_3241F0, &qword_284B30, sub_1C9994);
      sub_1C9B90(&qword_324238, &qword_324240, &qword_284B58, sub_1C9C14);
      v23 = v35;
      sub_261F80();
      v24 = v6;
    }

    else
    {
      v29 = v32;
      sub_1C6FDC(v32);
      v21 = &qword_324240;
      v22 = &qword_284B58;
      sub_8198(v29, v4, &qword_324240, &qword_284B58);
      swift_storeEnumTagMultiPayload();
      sub_1C9B90(&qword_3241E8, &qword_3241F0, &qword_284B30, sub_1C9994);
      sub_1C9B90(&qword_324238, &qword_324240, &qword_284B58, sub_1C9C14);
      v23 = v35;
      sub_261F80();
      v24 = v29;
    }

    sub_8E80(v24, v21, v22);
    v26 = &qword_3241E0;
    v27 = &qword_284B28;
    sub_8198(v23, v11, &qword_3241E0, &qword_284B28);
    swift_storeEnumTagMultiPayload();
    sub_8E38(&qword_3241C8, &qword_3241D0, &qword_284B20, &protocol conformance descriptor for HStack<A>);
    sub_1C98B0();
    sub_261F80();
    v28 = v23;
  }

  else
  {
    *v14 = sub_261D30();
    *(v14 + 1) = 0x4028000000000000;
    v14[16] = 0;
    v25 = *(sub_2EF0(&qword_324370, &qword_284C98) + 44);
    v38[0] = v40;
    v38[1] = v41;
    v38[2] = v42;
    v38[3] = v43;
    v38[4] = v44;
    v38[5] = v45;
    v38[6] = v46;
    v38[7] = v47;
    v39 = v48;
    sub_1C5288(v38, v1, &v14[v25]);
    v26 = &qword_3241D0;
    v27 = &qword_284B20;
    sub_8198(v14, v11, &qword_3241D0, &qword_284B20);
    swift_storeEnumTagMultiPayload();
    sub_8E38(&qword_3241C8, &qword_3241D0, &qword_284B20, &protocol conformance descriptor for HStack<A>);
    sub_1C98B0();
    sub_261F80();
    v28 = v14;
  }

  return sub_8E80(v28, v26, v27);
}

uint64_t sub_1C5288@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a2;
  v66 = a3;
  v3 = *(a1 + 128);
  v4 = a1[1];
  v71 = *a1;
  v72 = v4;
  v5 = a1[3];
  v73 = a1[2];
  v74 = v5;
  v6 = a1[5];
  v75 = a1[4];
  v76 = v6;
  v7 = a1[7];
  v77 = a1[6];
  v78 = v7;
  v79 = v3;
  v8 = type metadata accessor for ShelfHeaderView(0);
  v61 = *(v8 - 8);
  v9 = *(v61 + 64);
  __chkstk_darwin(v8 - 8);
  v62 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2EF0(&qword_324378, &qword_284CA0);
  __chkstk_darwin(v10 - 8);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v59 - v14;
  v16 = type metadata accessor for CoverView(0);
  v17 = (v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_2EF0(&qword_3188E0, &qword_274300);
  __chkstk_darwin(v60);
  v64 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v59 - v22;
  __chkstk_darwin(v24);
  v26 = &v59 - v25;
  *v19 = swift_getKeyPath();
  v19[40] = 0;
  *(v19 + 6) = swift_getKeyPath();
  v19[56] = 0;
  v27 = v17[8];
  *&v19[v27] = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v28 = v17[9];
  *&v19[v28] = swift_getKeyPath();
  sub_2EF0(&qword_317E08, &qword_26A550);
  swift_storeEnumTagMultiPayload();
  v29 = &v19[v17[10]];
  sub_5757C(&v71, v67);
  type metadata accessor for ProfileRestrictions(0);
  sub_1CAAD0(&qword_326DC0, type metadata accessor for ProfileRestrictions, &protocol conformance descriptor for ProfileRestrictions);
  *v29 = sub_261900();
  v29[1] = v30;
  v31 = &v19[v17[11]];
  LOBYTE(v68) = 1;
  sub_2631D0();
  v32 = *(&v67[0] + 1);
  *v31 = v67[0];
  *(v31 + 1) = v32;
  v33 = &v19[v17[12]];
  v34 = v76;
  v35 = v75;
  v36 = v76;
  *(v33 + 4) = v75;
  *(v33 + 5) = v34;
  v37 = v78;
  v38 = v77;
  v39 = v78;
  *(v33 + 6) = v77;
  *(v33 + 7) = v37;
  v40 = v72;
  v41 = v71;
  v42 = v72;
  *v33 = v71;
  *(v33 + 1) = v40;
  v43 = v74;
  v44 = v73;
  v45 = v74;
  *(v33 + 2) = v73;
  *(v33 + 3) = v43;
  v46 = v17[13];
  v67[4] = v35;
  v67[5] = v36;
  v67[6] = v38;
  v67[7] = v39;
  v67[2] = v44;
  v67[3] = v45;
  v19[v46] = 0;
  v67[0] = v41;
  v67[1] = v42;
  sub_2F8B8(v67);
  sub_2F950(v67);
  v65 = v12;
  v47 = v63;
  v48 = v62;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  sub_1CA824(v19, v23, type metadata accessor for CoverView);
  v49 = &v23[*(v60 + 36)];
  v50 = v69;
  *v49 = v68;
  *(v49 + 1) = v50;
  *(v49 + 2) = v70;
  v51 = v26;
  sub_22148(v23, v26, &qword_3188E0, &qword_274300);
  *v15 = sub_261E60();
  *(v15 + 1) = 0;
  v15[16] = 0;
  sub_2EF0(&qword_324380, &qword_284D28);
  sub_1C9CFC(v47, v48);
  v52 = (*(v61 + 80) + 16) & ~*(v61 + 80);
  v53 = swift_allocObject();
  sub_1CA824(v48, v53 + v52, type metadata accessor for ShelfHeaderView);
  sub_2EF0(&qword_324388, &qword_284D30);
  sub_260A70();
  sub_260A50();
  sub_8E38(&qword_324390, &qword_324388, &qword_284D30, &protocol conformance descriptor for TupleView<A>);
  sub_1CAAD0(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking, &protocol conformance descriptor for _JetLocalizeDefaultWorking);
  sub_1CAAD0(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed, &protocol conformance descriptor for _JetLocalizeDefaultFailed);
  sub_260A80();
  v54 = v64;
  sub_8198(v26, v64, &qword_3188E0, &qword_274300);
  v55 = v65;
  sub_8198(v15, v65, &qword_324378, &qword_284CA0);
  v56 = v66;
  sub_8198(v54, v66, &qword_3188E0, &qword_274300);
  v57 = sub_2EF0(&qword_324398, &qword_284D38);
  sub_8198(v55, v56 + *(v57 + 48), &qword_324378, &qword_284CA0);
  sub_8E80(v15, &qword_324378, &qword_284CA0);
  sub_8E80(v51, &qword_3188E0, &qword_274300);
  sub_8E80(v55, &qword_324378, &qword_284CA0);
  return sub_8E80(v54, &qword_3188E0, &qword_274300);
}

uint64_t sub_1C5A3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v128 = a1;
  v123 = a3;
  v127 = sub_25FF40();
  v130 = *(v127 - 8);
  __chkstk_darwin(v127);
  v129 = &v110 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2EF0(&qword_318458, &unk_26B270);
  __chkstk_darwin(v5 - 8);
  v121 = &v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v112 = &v110 - v8;
  v125 = sub_262730();
  v124 = *(v125 - 8);
  __chkstk_darwin(v125);
  v120 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v110 - v11;
  v13 = type metadata accessor for FontConstants.SectionHeader(0);
  __chkstk_darwin(v13 - 8);
  v119 = &v110 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v111 = &v110 - v16;
  v17 = type metadata accessor for FontConstants(0);
  __chkstk_darwin(v17 - 8);
  v118 = (&v110 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v21 = (&v110 - v20);
  v116 = sub_2EF0(&qword_3193A0, &unk_26CD40);
  v117 = *(v116 - 8);
  __chkstk_darwin(v116);
  v113 = &v110 - v22;
  v23 = sub_2EF0(&qword_316208, &qword_268BD0);
  __chkstk_darwin(v23 - 8);
  v25 = &v110 - v24;
  v26 = sub_260BD0();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v131 = &v110 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v110 - v30;
  __chkstk_darwin(v32);
  v34 = &v110 - v33;
  v35 = sub_2EF0(&qword_3243A0, &qword_284D40);
  __chkstk_darwin(v35 - 8);
  v122 = &v110 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v114 = &v110 - v38;
  v115 = type metadata accessor for ShelfHeaderView(0);
  v39 = *(v115 + 44);
  v126 = a2;
  sub_8198(a2 + v39, v25, &qword_316208, &qword_268BD0);
  v40 = (*(v27 + 48))(v25, 1, v26);
  v132 = v27;
  v133 = v26;
  if (v40 == 1)
  {
    sub_8E80(v25, &qword_316208, &qword_268BD0);
    v41 = 1;
    v42 = v114;
    v43 = v116;
  }

  else
  {
    v44 = *(v27 + 32);
    v110 = v34;
    v44(v34, v25, v26);
    (*(v27 + 16))(v31, v34, v26);
    sub_1C4000(v21);
    v45 = v21;
    v46 = v111;
    sub_1CA824(v45, v111, type metadata accessor for FontConstants.Environment);
    v47 = v124;
    v48 = v125;
    (*(v124 + 104))(v12, enum case for Font.TextStyle.subheadline(_:), v125);
    v49 = sub_2625C0();
    v50 = v112;
    (*(*(v49 - 8) + 56))(v112, 1, 1, v49);
    v51 = sub_262680();
    sub_8E80(v50, &qword_318458, &unk_26B270);
    v52.n128_f64[0] = (*(v47 + 8))(v12, v48);
    sub_1CA7C4(v46, v52);
    sub_30CC(v128, &v134);
    v53 = sub_260BB0();
    v55 = v54;
    objc_allocWithZone(type metadata accessor for BooksHTMLConverter(0));

    v56 = sub_19C6C8(v53, v55, v51);
    [*&v56[OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_parser] parse];
    v57 = v129;
    v58 = OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_currentString;
    swift_beginAccess();
    (*(v130 + 16))(v57, &v56[v58], v127);

    v59 = sub_2628D0();
    v61 = v60;
    LOBYTE(v50) = v62;

    sub_3080(&v134);
    v63 = *(v132 + 8);
    v63(v31, v133);
    _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
    v64 = sub_2627E0();
    v66 = v65;
    LODWORD(v111) = v67;
    v112 = v68;
    v26 = v133;

    sub_39DBC(v59, v61, v50 & 1);

    v63(v110, v26);
    v27 = v132;
    v69 = v116;
    v70 = *(v116 + 36);
    KeyPath = swift_getKeyPath();
    v72 = v113;
    *&v113[v70] = KeyPath;
    sub_2EF0(&qword_3179C0, &qword_269D60);
    swift_storeEnumTagMultiPayload();
    *v72 = v64;
    *(v72 + 8) = v66;
    *(v72 + 16) = v111 & 1;
    *(v72 + 24) = v112;
    v42 = v114;
    sub_22148(v72, v114, &qword_3193A0, &unk_26CD40);
    v41 = 0;
    v43 = v69;
  }

  (*(v117 + 56))(v42, v41, 1, v43);
  (*(v27 + 16))(v131, v126 + *(v115 + 40), v26);
  v73 = v118;
  sub_1C4000(v118);
  v74 = v119;
  sub_1CA824(v73, v119, type metadata accessor for FontConstants.Environment);
  v75 = v124;
  v76 = v120;
  v77 = v125;
  (*(v124 + 104))(v120, enum case for Font.TextStyle.title2(_:), v125);
  v78 = _s7BooksUI16FallBackFontSpecV03usecdE0SbyFZ_0();
  v79 = v121;
  if (v78)
  {
    v80 = sub_2625C0();
    (*(*(v80 - 8) + 56))(v79, 1, 1, v80);
  }

  else
  {
    v81 = enum case for Font.Design.serif (_:);
    v82 = sub_2625C0();
    v83 = *(v82 - 8);
    (*(v83 + 104))(v79, v81, v82);
    (*(v83 + 56))(v79, 0, 1, v82);
  }

  v84 = v128;
  sub_262680();
  sub_8E80(v79, &qword_318458, &unk_26B270);
  (*(v75 + 8))(v76, v77);
  v85 = sub_2625A0();

  sub_1CA7C4(v74, v86);
  sub_30CC(v84, &v134);
  v87 = v131;
  v88 = sub_260BB0();
  v90 = v89;
  v91 = objc_allocWithZone(type metadata accessor for BooksHTMLConverter(0));

  v92 = sub_19C6C8(v88, v90, v85);
  [*&v92[OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_parser] parse];
  v93 = OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_currentString;
  swift_beginAccess();
  (*(v130 + 16))(v129, &v92[v93], v127);

  v94 = sub_2628D0();
  v96 = v95;
  v98 = v97;

  sub_3080(&v134);
  (*(v132 + 8))(v87, v133);
  _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
  v99 = sub_2627E0();
  v101 = v100;
  v103 = v102;
  v105 = v104;

  sub_39DBC(v94, v96, v98 & 1);

  v106 = v122;
  sub_8198(v42, v122, &qword_3243A0, &qword_284D40);
  v107 = v123;
  sub_8198(v106, v123, &qword_3243A0, &qword_284D40);
  v108 = v107 + *(sub_2EF0(&qword_3243A8, &qword_284D48) + 48);
  *v108 = v99;
  *(v108 + 8) = v101;
  *(v108 + 16) = v103 & 1;
  *(v108 + 24) = v105;
  sub_43B58(v99, v101, v103 & 1);

  sub_8E80(v42, &qword_3243A0, &qword_284D40);
  sub_39DBC(v99, v101, v103 & 1);

  return sub_8E80(v106, &qword_3243A0, &qword_284D40);
}

uint64_t sub_1C6724@<X0>(uint64_t a1@<X8>)
{
  v79 = a1;
  v2 = sub_2EF0(&qword_318458, &unk_26B270);
  __chkstk_darwin(v2 - 8);
  v78 = &v65 - v3;
  v69 = sub_262730();
  v67 = *(v69 - 8);
  __chkstk_darwin(v69);
  v68 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FontConstants.SectionHeader(0);
  __chkstk_darwin(v5 - 8);
  v66 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FontConstants(0);
  __chkstk_darwin(v7 - 8);
  v9 = (&v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for ShelfHeaderView(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v75 = sub_2EF0(&qword_324230, &qword_284B50);
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v14 = &v65 - v13;
  v70 = sub_2EF0(&qword_324220, &qword_284B48);
  __chkstk_darwin(v70);
  v16 = &v65 - v15;
  v73 = sub_2EF0(&qword_324210, &qword_284B40);
  __chkstk_darwin(v73);
  v71 = &v65 - v17;
  v76 = sub_2EF0(&qword_324200, &qword_284B38);
  __chkstk_darwin(v76);
  v77 = &v65 - v18;
  sub_1C9CFC(v1, &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v20 = swift_allocObject();
  sub_1CA824(&v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for ShelfHeaderView);
  sub_2EF0(&qword_3243B0, &qword_284D78);
  sub_260A70();
  sub_260A50();
  sub_1CA8A4();
  sub_1CAAD0(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking, &protocol conformance descriptor for _JetLocalizeDefaultWorking);
  sub_1CAAD0(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed, &protocol conformance descriptor for _JetLocalizeDefaultFailed);
  v21 = v67;
  v72 = v14;
  v22 = v69;
  v23 = v66;
  sub_260A80();
  sub_1C4000(v9);
  v24 = v9;
  v25 = v68;
  sub_1CA824(v24, v23, type metadata accessor for FontConstants.Environment);
  (*(v21 + 104))(v25, enum case for Font.TextStyle.body(_:), v22);
  if (_s7BooksUI16FallBackFontSpecV03usecdE0SbyFZ_0())
  {
    v26 = sub_2625C0();
    v27 = v78;
    (*(*(v26 - 8) + 56))(v78, 1, 1, v26);
  }

  else
  {
    v28 = enum case for Font.Design.serif (_:);
    v29 = sub_2625C0();
    v30 = *(v29 - 8);
    v27 = v78;
    (*(v30 + 104))(v78, v28, v29);
    (*(v30 + 56))(v27, 0, 1, v29);
  }

  sub_262680();
  sub_8E80(v27, &qword_318458, &unk_26B270);
  (*(v21 + 8))(v25, v22);
  v31 = sub_2625A0();

  sub_1CA7C4(v23, v32);
  KeyPath = swift_getKeyPath();
  (*(v74 + 32))(v16, v72, v75);
  v34 = &v16[*(v70 + 36)];
  *v34 = KeyPath;
  v34[1] = v31;
  sub_263580();
  sub_261830();
  v35 = v71;
  sub_22148(v16, v71, &qword_324220, &qword_284B48);
  v36 = (v35 + *(v73 + 36));
  v37 = v85;
  v36[4] = v84;
  v36[5] = v37;
  v36[6] = v86;
  v38 = v81;
  *v36 = v80;
  v36[1] = v38;
  v39 = v83;
  v36[2] = v82;
  v36[3] = v39;
  v40 = sub_262510();
  sub_2610C0();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v49 = v35;
  v50 = v77;
  sub_22148(v49, v77, &qword_324210, &qword_284B40);
  v51 = v50 + *(v76 + 36);
  *v51 = v40;
  *(v51 + 8) = v42;
  *(v51 + 16) = v44;
  *(v51 + 24) = v46;
  *(v51 + 32) = v48;
  *(v51 + 40) = 0;
  v52 = sub_262520();
  sub_2610C0();
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v61 = v50;
  v62 = v79;
  sub_22148(v61, v79, &qword_324200, &qword_284B38);
  result = sub_2EF0(&qword_3241F0, &qword_284B30);
  v64 = v62 + *(result + 36);
  *v64 = v52;
  *(v64 + 8) = v54;
  *(v64 + 16) = v56;
  *(v64 + 24) = v58;
  *(v64 + 32) = v60;
  *(v64 + 40) = 0;
  return result;
}

uint64_t sub_1C6FDC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v64 = a1;
  v3 = sub_2EF0(&qword_316208, &qword_268BD0);
  __chkstk_darwin(v3 - 8);
  v63 = v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v58[0] = v58 - v6;
  v60 = type metadata accessor for ShelfHeaderView(0);
  v7 = *(v60 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v60);
  v9 = sub_2EF0(&qword_324270, &qword_284B70);
  __chkstk_darwin(v9 - 8);
  v11 = v58 - v10;
  v12 = sub_2EF0(&qword_324260, &qword_284B68);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v59 = v58 - v14;
  v61 = sub_2EF0(&qword_324250, &qword_284B60);
  __chkstk_darwin(v61);
  v62 = v58 - v15;
  *v11 = sub_261E60();
  *(v11 + 1) = 0x4000000000000000;
  v11[16] = 0;
  v58[1] = *(sub_2EF0(&qword_3243E0, &qword_284E20) + 44);
  sub_1C9CFC(v2, v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = swift_allocObject();
  sub_1CA824(v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for ShelfHeaderView);
  sub_2EF0(&qword_3243E8, &qword_284E28);
  sub_260A70();
  sub_260A50();
  sub_8E38(&qword_3243F0, &qword_3243E8, &qword_284E28, &protocol conformance descriptor for TupleView<A>);
  sub_1CAAD0(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking, &protocol conformance descriptor for _JetLocalizeDefaultWorking);
  sub_1CAAD0(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed, &protocol conformance descriptor for _JetLocalizeDefaultFailed);
  v18 = v2;
  v20 = v59;
  v19 = v60;
  sub_260A80();
  sub_263580();
  sub_261830();
  sub_22148(v11, v20, &qword_324270, &qword_284B70);
  v21 = (v20 + *(v13 + 44));
  v22 = v72;
  v21[4] = v71;
  v21[5] = v22;
  v21[6] = v73;
  v23 = v68;
  *v21 = v67;
  v21[1] = v23;
  v24 = v70;
  v21[2] = v69;
  v21[3] = v24;
  v25 = sub_262510();
  v26 = v2 + v19[13];
  v27 = *(v26 + 112);
  v65[6] = *(v26 + 96);
  v65[7] = v27;
  v66 = *(v26 + 128);
  v28 = *(v26 + 80);
  v65[4] = *(v26 + 64);
  v65[5] = v28;
  v29 = *(v26 + 48);
  v65[2] = *(v26 + 32);
  v65[3] = v29;
  v30 = *(v26 + 16);
  v65[0] = *v26;
  v65[1] = v30;
  if (sub_7DC5C(v65) == 1)
  {
    v31 = v2 + v19[9];
    v32 = v58[0];
    sub_8198(v31, v58[0], &qword_316208, &qword_268BD0);
    v33 = sub_260BD0();
    (*(*(v33 - 8) + 48))(v32, 1, v33);
    sub_8E80(v32, &qword_316208, &qword_268BD0);
  }

  sub_2610C0();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = v62;
  sub_22148(v20, v62, &qword_324260, &qword_284B68);
  v43 = v42 + *(v61 + 36);
  *v43 = v25;
  *(v43 + 8) = v35;
  *(v43 + 16) = v37;
  *(v43 + 24) = v39;
  *(v43 + 32) = v41;
  *(v43 + 40) = 0;
  v44 = sub_262520();
  v45 = v63;
  sub_8198(v18 + v19[11], v63, &qword_316208, &qword_268BD0);
  v46 = sub_260BD0();
  (*(*(v46 - 8) + 48))(v45, 1, v46);
  sub_8E80(v45, &qword_316208, &qword_268BD0);
  sub_2610C0();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v55 = v64;
  sub_22148(v42, v64, &qword_324250, &qword_284B60);
  result = sub_2EF0(&qword_324240, &qword_284B58);
  v57 = v55 + *(result + 36);
  *v57 = v44;
  *(v57 + 8) = v48;
  *(v57 + 16) = v50;
  *(v57 + 24) = v52;
  *(v57 + 32) = v54;
  *(v57 + 40) = 0;
  return result;
}

double sub_1C76A8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v236 = a1;
  v246 = a3;
  v243 = sub_2EF0(&qword_3193A0, &unk_26CD40);
  v242 = *(v243 - 8);
  __chkstk_darwin(v243);
  v210 = &v203 - v4;
  v5 = sub_2EF0(&qword_3243A0, &qword_284D40);
  __chkstk_darwin(v5 - 8);
  v252 = &v203 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v255 = &v203 - v8;
  v9 = type metadata accessor for ShelfHeaderView(0);
  v239 = *(v9 - 8);
  __chkstk_darwin(v9);
  v240 = v10;
  v241 = &v203 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = sub_2EF0(&qword_324230, &qword_284B50);
  v244 = *(v245 - 8);
  __chkstk_darwin(v245);
  v215 = &v203 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v227 = &v203 - v13;
  v14 = sub_2EF0(&qword_324220, &qword_284B48);
  v15 = *(v14 - 8);
  v258 = v14;
  v259 = v15;
  __chkstk_darwin(v14);
  v214 = &v203 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v213 = &v203 - v18;
  __chkstk_darwin(v19);
  v208 = &v203 - v20;
  __chkstk_darwin(v21);
  v207 = &v203 - v22;
  v23 = sub_2EF0(&qword_3243F8, &qword_284E30);
  __chkstk_darwin(v23 - 8);
  v253 = &v203 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v254 = &v203 - v26;
  __chkstk_darwin(v27);
  v257 = &v203 - v28;
  __chkstk_darwin(v29);
  v260 = &v203 - v30;
  v230 = sub_25FF40();
  v249 = *(v230 - 8);
  __chkstk_darwin(v230);
  v229 = &v203 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_2EF0(&qword_318458, &unk_26B270);
  __chkstk_darwin(v32 - 8);
  v212 = &v203 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v205 = &v203 - v35;
  __chkstk_darwin(v36);
  v248 = &v203 - v37;
  v38 = sub_262730();
  v256 = *(v38 - 8);
  __chkstk_darwin(v38);
  v211 = &v203 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v220 = &v203 - v41;
  __chkstk_darwin(v42);
  v224 = &v203 - v43;
  v44 = type metadata accessor for FontConstants.SectionHeader(0);
  __chkstk_darwin(v44 - 8);
  v238 = &v203 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v219 = &v203 - v47;
  __chkstk_darwin(v48);
  v223 = &v203 - v49;
  v50 = type metadata accessor for FontConstants(0);
  __chkstk_darwin(v50 - 8);
  v209 = (&v203 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v52);
  v204 = (&v203 - v53);
  __chkstk_darwin(v54);
  v56 = (&v203 - v55);
  v57 = sub_2EF0(&qword_316208, &qword_268BD0);
  __chkstk_darwin(v57 - 8);
  v221 = &v203 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v59);
  v61 = &v203 - v60;
  v62 = sub_260BD0();
  __chkstk_darwin(v62);
  v225 = &v203 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v64);
  v66 = &v203 - v65;
  __chkstk_darwin(v67);
  v69 = &v203 - v68;
  v228 = v9;
  v70 = *(v9 + 36);
  v72 = v71;
  sub_8198(a2 + v70, v61, &qword_316208, &qword_268BD0);
  v73 = *(v72 + 48);
  v218 = v72 + 48;
  v217 = v73;
  v74 = v73(v61, 1, v62);
  v251 = a2;
  v75 = v38;
  v250 = v38;
  v76 = v256;
  v247 = v62;
  v226 = v72;
  v222 = v66;
  v206 = v56;
  if (v74 == 1)
  {
    sub_8E80(v61, &qword_316208, &qword_268BD0);
    v235 = 0;
    v234 = 0;
    v231 = 0;
    v233 = 0;
    v232 = 0;
    v237 = 0;
  }

  else
  {
    v77 = *(v72 + 32);
    v235 = v69;
    v77(v69, v61, v62);
    (*(v72 + 16))(v66, v69, v62);
    sub_1C4000(v56);
    v78 = v223;
    sub_1CA824(v56, v223, type metadata accessor for FontConstants.Environment);
    v79 = v224;
    v80 = v75;
    (*(v76 + 104))(v224, enum case for Font.TextStyle.caption(_:), v75);
    v81 = enum case for Font.Design.rounded(_:);
    v82 = sub_2625C0();
    v83 = *(v82 - 8);
    v84 = v248;
    (*(v83 + 104))(v248, v81, v82);
    v85 = *(v83 + 56);
    v237 = 1;
    v85(v84, 0, 1, v82);
    sub_262680();
    sub_8E80(v84, &qword_318458, &unk_26B270);
    (*(v76 + 8))(v79, v80);
    v86 = sub_2625A0();

    sub_1CA7C4(v78, v87);
    sub_30CC(v236, &v261);
    v88 = sub_260BB0();
    v90 = v89;
    v91 = objc_allocWithZone(type metadata accessor for BooksHTMLConverter(0));

    v92 = sub_19C6C8(v88, v90, v86);
    [*&v92[OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_parser] parse];
    v93 = OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_currentString;
    swift_beginAccess();
    v249[2](v229, &v92[v93], v230);

    v94 = sub_2628D0();
    v96 = v95;
    LOBYTE(v90) = v97;

    sub_3080(&v261);
    v234 = *(v226 + 8);
    v98 = v247;
    v234(v66, v247);
    _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
    v99 = sub_2627E0();
    v101 = v100;
    LODWORD(v233) = v102;
    v104 = v103;

    sub_39DBC(v94, v96, v90 & 1);
    a2 = v251;

    v234(v235, v98);
    KeyPath = swift_getKeyPath();
    v235 = v99;
    v234 = v101;
    v231 = v233 & 1;
    sub_43B58(v99, v101, v231);
    v233 = v104;

    v232 = KeyPath;
  }

  v106 = v228;
  v216 = *(a2 + *(v228 + 48));
  if (v216)
  {
    v107 = 1;
    v108 = v250;
    v109 = v256;
    v110 = v249;
    v111 = v248;
    v112 = v222;
    v113 = v260;
  }

  else
  {
    v114 = a2;
    v115 = v241;
    sub_1C9CFC(v114, v241);
    v116 = (*(v239 + 80) + 16) & ~*(v239 + 80);
    v117 = swift_allocObject();
    sub_1CA824(v115, v117 + v116, type metadata accessor for ShelfHeaderView);
    sub_2EF0(&qword_3243B0, &qword_284D78);
    sub_260A70();
    sub_260A50();
    sub_1CA8A4();
    sub_1CAAD0(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking, &protocol conformance descriptor for _JetLocalizeDefaultWorking);
    sub_1CAAD0(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed, &protocol conformance descriptor for _JetLocalizeDefaultFailed);
    sub_260A80();
    v118 = v204;
    sub_1C4000(v204);
    sub_1CA824(v118, v219, type metadata accessor for FontConstants.Environment);
    v109 = v256;
    v108 = v250;
    (*(v256 + 104))(v220, enum case for Font.TextStyle.title2(_:), v250);
    if (_s7BooksUI16FallBackFontSpecV03usecdE0SbyFZ_0())
    {
      v119 = sub_2625C0();
      v120 = v205;
      (*(*(v119 - 8) + 56))(v205, 1, 1, v119);
    }

    else
    {
      v121 = enum case for Font.Design.serif (_:);
      v122 = sub_2625C0();
      v123 = *(v122 - 8);
      v120 = v205;
      (*(v123 + 104))(v205, v121, v122);
      (*(v123 + 56))(v120, 0, 1, v122);
    }

    v110 = v249;
    v111 = v248;
    v112 = v222;
    v124 = v220;
    sub_262680();
    sub_8E80(v120, &qword_318458, &unk_26B270);
    (*(v109 + 8))(v124, v108);
    v125 = sub_2625A0();

    sub_1CA7C4(v219, v126);
    v127 = swift_getKeyPath();
    v128 = v208;
    (*(v244 + 32))(v208, v227, v245);
    v129 = &v128[*(v258 + 36)];
    *v129 = v127;
    v129[1] = v125;
    v130 = v128;
    v131 = v207;
    sub_22148(v130, v207, &qword_324220, &qword_284B48);
    v132 = v131;
    v113 = v260;
    sub_22148(v132, v260, &qword_324220, &qword_284B48);
    v107 = 0;
    a2 = v251;
  }

  v133 = *(v259 + 56);
  v259 += 56;
  v249 = v133;
  (v133)(v113, v107, 1, v258);
  v134 = a2 + *(v106 + 44);
  v135 = v221;
  sub_8198(v134, v221, &qword_316208, &qword_268BD0);
  v136 = v247;
  if (v217(v135, 1, v247) == 1)
  {
    sub_8E80(v135, &qword_316208, &qword_268BD0);
    v137 = 1;
    v138 = v255;
    v139 = v243;
  }

  else
  {
    v140 = v226;
    v141 = v109;
    v142 = v225;
    (*(v226 + 32))();
    (*(v140 + 16))(v112, v142, v136);
    v143 = v206;
    sub_1C4000(v206);
    v144 = v112;
    v145 = v223;
    sub_1CA824(v143, v223, type metadata accessor for FontConstants.Environment);
    v146 = v224;
    (*(v141 + 104))(v224, enum case for Font.TextStyle.subheadline(_:), v108);
    v147 = sub_2625C0();
    (*(*(v147 - 8) + 56))(v111, 1, 1, v147);
    v148 = sub_262680();
    sub_8E80(v111, &qword_318458, &unk_26B270);
    v149.n128_f64[0] = (*(v141 + 8))(v146, v108);
    sub_1CA7C4(v145, v149);
    sub_30CC(v236, &v261);
    v150 = v144;
    v151 = sub_260BB0();
    v153 = v152;
    objc_allocWithZone(type metadata accessor for BooksHTMLConverter(0));

    v154 = sub_19C6C8(v151, v153, v148);
    [*&v154[OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_parser] parse];
    v155 = OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_currentString;
    swift_beginAccess();
    v110[2](v229, &v154[v155], v230);

    v156 = sub_2628D0();
    v158 = v157;
    v160 = v159;

    sub_3080(&v261);
    v161 = *(v140 + 8);
    v161(v150, v136);
    _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
    v162 = sub_2627E0();
    v164 = v163;
    LODWORD(v236) = v165;
    v248 = v166;

    sub_39DBC(v156, v158, v160 & 1);

    v161(v225, v136);
    v139 = v243;
    v167 = *(v243 + 36);
    v168 = swift_getKeyPath();
    v169 = v210;
    *&v210[v167] = v168;
    sub_2EF0(&qword_3179C0, &qword_269D60);
    swift_storeEnumTagMultiPayload();
    *v169 = v162;
    *(v169 + 8) = v164;
    *(v169 + 16) = v236 & 1;
    *(v169 + 24) = v248;
    v138 = v255;
    sub_22148(v169, v255, &qword_3193A0, &unk_26CD40);
    v137 = 0;
  }

  v170 = 1;
  (*(v242 + 56))(v138, v137, 1, v139);
  if (v216)
  {
    v171 = v241;
    sub_1C9CFC(v251, v241);
    v172 = (*(v239 + 80) + 16) & ~*(v239 + 80);
    v173 = swift_allocObject();
    sub_1CA824(v171, v173 + v172, type metadata accessor for ShelfHeaderView);
    sub_2EF0(&qword_3243B0, &qword_284D78);
    sub_260A70();
    sub_260A50();
    sub_1CA8A4();
    sub_1CAAD0(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking, &protocol conformance descriptor for _JetLocalizeDefaultWorking);
    sub_1CAAD0(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed, &protocol conformance descriptor for _JetLocalizeDefaultFailed);
    v174 = v215;
    sub_260A80();
    v175 = v209;
    sub_1C4000(v209);
    sub_1CA824(v175, v238, type metadata accessor for FontConstants.Environment);
    v176 = v256;
    v177 = v211;
    (*(v256 + 104))(v211, enum case for Font.TextStyle.title2(_:), v250);
    if (_s7BooksUI16FallBackFontSpecV03usecdE0SbyFZ_0())
    {
      v178 = sub_2625C0();
      v179 = v212;
      (*(*(v178 - 8) + 56))(v212, 1, 1, v178);
    }

    else
    {
      v180 = enum case for Font.Design.serif (_:);
      v181 = sub_2625C0();
      v182 = *(v181 - 8);
      v179 = v212;
      (*(v182 + 104))(v212, v180, v181);
      (*(v182 + 56))(v179, 0, 1, v181);
    }

    sub_262680();
    sub_8E80(v179, &qword_318458, &unk_26B270);
    (*(v176 + 8))(v177, v250);
    v183 = sub_2625A0();

    sub_1CA7C4(v238, v184);
    v185 = swift_getKeyPath();
    v186 = v214;
    (*(v244 + 32))(v214, v174, v245);
    v187 = &v186[*(v258 + 36)];
    *v187 = v185;
    v187[1] = v183;
    v188 = v186;
    v189 = v213;
    sub_22148(v188, v213, &qword_324220, &qword_284B48);
    sub_22148(v189, v257, &qword_324220, &qword_284B48);
    v170 = 0;
  }

  v190 = v257;
  (v249)(v257, v170, 1, v258);
  v191 = v254;
  sub_8198(v260, v254, &qword_3243F8, &qword_284E30);
  v192 = v252;
  sub_8198(v138, v252, &qword_3243A0, &qword_284D40);
  sub_8198(v190, v253, &qword_3243F8, &qword_284E30);
  v193 = v246;
  v194 = v235;
  v195 = v234;
  *v246 = v235;
  v193[1] = v195;
  v196 = v231;
  v197 = v233;
  v193[2] = v231;
  v193[3] = v197;
  v198 = v232;
  v199 = v237;
  v193[4] = v232;
  v193[5] = v199;
  *(v193 + 48) = 0;
  v200 = sub_2EF0(&qword_324400, &qword_284E38);
  sub_8198(v191, v193 + v200[12], &qword_3243F8, &qword_284E30);
  sub_8198(v192, v193 + v200[16], &qword_3243A0, &qword_284D40);
  v201 = v253;
  sub_8198(v253, v193 + v200[20], &qword_3243F8, &qword_284E30);
  sub_15C948(v194, v195, v196, v197, v198);
  sub_15C998(v194, v195, v196, v197, v198);
  sub_8E80(v257, &qword_3243F8, &qword_284E30);
  sub_8E80(v255, &qword_3243A0, &qword_284D40);
  sub_8E80(v260, &qword_3243F8, &qword_284E30);
  sub_8E80(v201, &qword_3243F8, &qword_284E30);
  sub_8E80(v252, &qword_3243A0, &qword_284D40);
  sub_8E80(v254, &qword_3243F8, &qword_284E30);
  return sub_15C998(v194, v195, v196, v197, v198);
}

uint64_t sub_1C9288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v57 = a3;
  v58 = a2;
  v48 = a1;
  v56 = sub_2616C0();
  v54 = *(v56 - 8);
  __chkstk_darwin(v56);
  v50 = (&v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_260BD0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_2EF0(&qword_3193A0, &unk_26CD40);
  __chkstk_darwin(v51);
  v11 = &v48 - v10;
  v12 = sub_2EF0(&qword_3243D8, &qword_284D88);
  __chkstk_darwin(v12 - 8);
  v52 = &v48 - v13;
  v55 = sub_2EF0(&qword_3243C8, &qword_284D80) - 8;
  __chkstk_darwin(v55);
  v53 = &v48 - v14;
  v15 = type metadata accessor for ShelfHeaderView(0);
  v49 = *(v15 + 40);
  (*(v7 + 16))(v9, v3 + v49, v6);
  sub_30CC(a1, v59);
  v16 = sub_2627B0();
  v18 = v17;
  v20 = v19;
  LODWORD(v59[0]) = sub_262120();
  v21 = sub_2627F0();
  v23 = v22;
  LOBYTE(v3) = v24;
  v26 = v25;
  sub_39DBC(v16, v18, v20 & 1);

  sub_8198(v58 + *(v15 + 56), v59, &qword_315D38, &unk_266E30);
  LOBYTE(v18) = v59[3] != 0;
  sub_8E80(v59, &qword_315D38, &unk_266E30);
  v27 = v50;
  sub_1C41EC(v50);
  v28 = Text.withTrailingForwardChevron(_:layoutDirection:)(v18, v27, v21, v23, v3 & 1, v26);
  v30 = v29;
  LOBYTE(v18) = v31;
  v33 = v32;
  sub_39DBC(v21, v23, v3 & 1);

  (*(v54 + 8))(v27, v56);
  v34 = *(v51 + 36);
  *&v11[v34] = swift_getKeyPath();
  sub_2EF0(&qword_3179C0, &qword_269D60);
  swift_storeEnumTagMultiPayload();
  *v11 = v28;
  *(v11 + 1) = v30;
  v11[16] = v18 & 1;
  *(v11 + 3) = v33;
  v59[0] = sub_260BB0();
  v59[1] = v35;
  sub_65384();
  sub_10A84();
  v36 = v52;
  sub_262C00();

  sub_8E80(v11, &qword_3193A0, &unk_26CD40);
  v37 = sub_1C43F4();
  KeyPath = swift_getKeyPath();
  v39 = v53;
  sub_22148(v36, v53, &qword_3243D8, &qword_284D88);
  v40 = v39 + *(v55 + 44);
  *v40 = KeyPath;
  *(v40 + 8) = v37;
  *(v40 + 16) = 0;
  v41 = sub_2EF0(&qword_3243B0, &qword_284D78);
  v42 = v57;
  v43 = (v57 + *(v41 + 36));
  v44 = *(sub_2EF0(&qword_317530, &qword_26FCC0) + 28);
  v45 = enum case for Image.Scale.small(_:);
  v46 = sub_2630F0();
  (*(*(v46 - 8) + 104))(v43 + v44, v45, v46);
  *v43 = swift_getKeyPath();
  return sub_22148(v39, v42, &qword_3243C8, &qword_284D80);
}

unint64_t sub_1C97F8()
{
  result = qword_3241C0;
  if (!qword_3241C0)
  {
    sub_2F9C(&qword_324198, &qword_284B00);
    sub_8E38(&qword_3241C8, &qword_3241D0, &qword_284B20, &protocol conformance descriptor for HStack<A>);
    sub_1C98B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3241C0);
  }

  return result;
}

unint64_t sub_1C98B0()
{
  result = qword_3241D8;
  if (!qword_3241D8)
  {
    sub_2F9C(&qword_3241E0, &qword_284B28);
    sub_1C9B90(&qword_3241E8, &qword_3241F0, &qword_284B30, sub_1C9994);
    sub_1C9B90(&qword_324238, &qword_324240, &qword_284B58, sub_1C9C14);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3241D8);
  }

  return result;
}

unint64_t sub_1C9994()
{
  result = qword_3241F8;
  if (!qword_3241F8)
  {
    sub_2F9C(&qword_324200, &qword_284B38);
    sub_1C9A20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3241F8);
  }

  return result;
}

unint64_t sub_1C9A20()
{
  result = qword_324208;
  if (!qword_324208)
  {
    sub_2F9C(&qword_324210, &qword_284B40);
    sub_1C9AAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324208);
  }

  return result;
}

unint64_t sub_1C9AAC()
{
  result = qword_324218;
  if (!qword_324218)
  {
    sub_2F9C(&qword_324220, &qword_284B48);
    sub_8E38(&qword_324228, &qword_324230, &qword_284B50, &protocol conformance descriptor for JetLocalize<A, B, C>);
    sub_8E38(&qword_317580, &qword_317588, &qword_26B7B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324218);
  }

  return result;
}

uint64_t sub_1C9B90(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_2F9C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C9C44()
{
  result = qword_324258;
  if (!qword_324258)
  {
    sub_2F9C(&qword_324260, &qword_284B68);
    sub_8E38(&qword_324268, &qword_324270, &qword_284B70, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_324258);
  }

  return result;
}

uint64_t sub_1C9CFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfHeaderView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C9E10(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2EF0(&qword_316F68, &unk_269C50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  v11 = sub_2EF0(&qword_31A748, &unk_26F940);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_13:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_14;
  }

  v14 = sub_2EF0(&qword_317BF8, &unk_26F930);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_13;
  }

  v15 = sub_2EF0(&qword_319458, &unk_26CF30);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[8];
    goto LABEL_13;
  }

  v16 = sub_2EF0(&qword_316208, &qword_268BD0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[9];
    goto LABEL_13;
  }

  v17 = sub_260BD0();
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[10];
    goto LABEL_13;
  }

  v19 = *(a1 + a3[13] + 24);
  v20 = (v19 >> 3) & 0xFFFFFF80 | (v19 >> 1);
  v21 = -2 - v20;
  if ((-2 - v20) < 0)
  {
    v21 = -1;
  }

  if (v20 > 0x80000000)
  {
    return (v21 + 1);
  }

  else
  {
    return 0;
  }
}

double sub_1CA0A4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_2EF0(&qword_316F68, &unk_269C50);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_2EF0(&qword_31A748, &unk_26F940);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = sub_2EF0(&qword_317BF8, &unk_26F930);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        v17 = sub_2EF0(&qword_319458, &unk_26CF30);
        if (*(*(v17 - 8) + 84) == a3)
        {
          v10 = v17;
          v14 = *(v17 - 8);
          v15 = a4[8];
        }

        else
        {
          v18 = sub_2EF0(&qword_316208, &qword_268BD0);
          if (*(*(v18 - 8) + 84) == a3)
          {
            v10 = v18;
            v14 = *(v18 - 8);
            v15 = a4[9];
          }

          else
          {
            v19 = sub_260BD0();
            if (*(*(v19 - 8) + 84) != a3)
            {
              v21 = a1 + a4[13];
              *v21 = 0;
              *(v21 + 8) = 0;
              *(v21 + 16) = 0;
              *(v21 + 24) = (8 * ~a2) & 0x7FFFFFC00 | (2 * (~a2 & 0x7FLL));
              result = 0.0;
              *(v21 + 32) = 0u;
              *(v21 + 48) = 0u;
              *(v21 + 64) = 0u;
              *(v21 + 80) = 0u;
              *(v21 + 96) = 0u;
              *(v21 + 112) = 0u;
              return result;
            }

            v10 = v19;
            v14 = *(v19 - 8);
            v15 = a4[10];
          }
        }
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  v11(v12, a2, a2, v10);
  return result;
}

void sub_1CA32C(uint64_t a1)
{
  sub_1CA58C(319, &qword_316FE8, type metadata accessor for ColorConstants, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_1CA58C(319, &qword_31A7B8, type metadata accessor for FontConstants, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_1CA58C(319, &qword_317C68, type metadata accessor for SizeConstants, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_3E7AC();
        if (v4 <= 0x3F)
        {
          sub_1CA58C(319, &qword_3194C8, &type metadata accessor for LayoutDirection, &type metadata accessor for Environment);
          if (v5 <= 0x3F)
          {
            sub_1CA58C(319, &qword_31A8C8, &type metadata accessor for LocalizerRequest, &type metadata accessor for Optional);
            if (v6 <= 0x3F)
            {
              sub_260BD0();
              if (v7 <= 0x3F)
              {
                sub_1CA5F0(319, &qword_3242F0, &unk_3242F8, &qword_284C78);
                if (v8 <= 0x3F)
                {
                  sub_1CA5F0(319, &qword_316A28, &qword_316A30, &qword_2697B0);
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

void sub_1CA58C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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