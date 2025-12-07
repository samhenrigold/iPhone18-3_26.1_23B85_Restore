uint64_t sub_BE540(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = sub_D5340();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v7 = sub_6610(v3, qword_137988);
  (*(v4 + 16))(v6, v7, v3);
  v8 = sub_D5320();
  v9 = sub_D68A0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "[Add Alias] create successful", v10, 2u);
  }

  v11 = (*(v4 + 8))(v6, v3);
  return a2(v11);
}

uint64_t sub_BE6E8()
{
  v1 = OBJC_IVAR____TtCV18icloudMailSettings14MSAddAliasView9ViewModel__fullName;
  v2 = sub_66D4(&qword_121948, &unk_DC5C0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCV18icloudMailSettings14MSAddAliasView9ViewModel__emailId, v2);
  v3(v0 + OBJC_IVAR____TtCV18icloudMailSettings14MSAddAliasView9ViewModel__label, v2);
  v4 = OBJC_IVAR____TtCV18icloudMailSettings14MSAddAliasView9ViewModel__isAdding;
  v5 = sub_66D4(&qword_121068, &qword_DBEE0);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v7 = OBJC_IVAR____TtCV18icloudMailSettings14MSAddAliasView9ViewModel__error;
  v8 = sub_66D4(&qword_121070, &qword_DAFE0);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v6(v0 + OBJC_IVAR____TtCV18icloudMailSettings14MSAddAliasView9ViewModel__isFetchingRules, v5);

  v9 = OBJC_IVAR____TtCV18icloudMailSettings14MSAddAliasView9ViewModel__validationMessage;
  v10 = sub_66D4(&qword_124830, &qword_E1560);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);

  sub_67D4((v0 + OBJC_IVAR____TtCV18icloudMailSettings14MSAddAliasView9ViewModel_repository));
  return v0;
}

uint64_t sub_BE8E8()
{
  sub_BE6E8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t _s11descr112E21O9ViewModelCMa(uint64_t a1)
{
  result = qword_129828;
  if (!qword_129828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_BE994(uint64_t a1)
{
  sub_116AC(319, &qword_121638, &type metadata for String);
  if (v1 <= 0x3F)
  {
    sub_116AC(319, &qword_120ED8, &type metadata for Bool);
    if (v2 <= 0x3F)
    {
      sub_6158(319, &qword_120EE0, &qword_120EE8, &qword_D8DD0);
      if (v3 <= 0x3F)
      {
        sub_6158(319, &unk_127D10, &qword_124838, &qword_E1490);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_BEC04()
{

  return _swift_deallocObject(v0, 73, 7);
}

uint64_t sub_BEC54()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_BEC8C()
{

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_BECF0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_BED48(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_6110(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_BEDA4(uint64_t a1)
{
  sub_6C10(319);
  if (v4 <= 0x3F)
  {
    type metadata accessor for MSRuleBaseView.RuleFormElement(255, *(a1 + 16), v2, v3);
    sub_D67E0();
    if (v5 <= 0x3F)
    {
      swift_getWitnessTable();
      sub_D5760();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_BEE98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_66D4(&qword_121090, &unk_D8CC0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_BEF74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_66D4(&qword_121090, &unk_D8CC0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_BF070(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_BF100(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_BF1B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_D5BE0();
  __chkstk_darwin(v7);
  (*(*(a2 - 8) + 16))(&v10 - v8, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_D5BF0();
}

uint64_t sub_BF2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_D5BE0();
  __chkstk_darwin(v7);
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_D5BF0();
}

uint64_t sub_BF3A0(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
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

  return sub_D6440();
}

uint64_t sub_BF570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1);
  v9(v8);
  return sub_D63A0();
}

uint64_t sub_BF640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v68 = a1;
  v71 = *(a1 - 8);
  v72 = *(v71 + 64);
  __chkstk_darwin(a1);
  v69 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_D5840();
  sub_6110(&qword_129A10, &qword_E5D38);
  v67 = *(a1 + 16);
  v6 = type metadata accessor for MSRuleBaseView.RuleFormElement(255, v67, v4, v5);
  v7 = sub_D67E0();
  v8 = sub_6110(&qword_129A18, &qword_E5D40);
  WitnessTable = swift_getWitnessTable();
  *&v84 = v7;
  *(&v84 + 1) = &type metadata for String;
  *&v85 = v8;
  *(&v85 + 1) = WitnessTable;
  *&v86[0] = &protocol witness table for String;
  sub_D6350();
  v83 = sub_CB274();
  swift_getWitnessTable();
  sub_D62A0();
  sub_6110(&qword_129B50, &qword_E5DE8);
  sub_D5C00();
  v10 = sub_6110(&qword_129A30, &qword_E5D48);
  v11 = swift_getWitnessTable();
  *&v84 = v7;
  *(&v84 + 1) = v6;
  *&v85 = v10;
  *(&v85 + 1) = WitnessTable;
  *&v86[0] = v11;
  sub_D6350();
  v82 = sub_CB32C();
  swift_getWitnessTable();
  sub_D62A0();
  sub_D6930();
  sub_D5C00();
  sub_D5C00();
  v12 = sub_D5C00();
  *&v84 = v7;
  *(&v84 + 1) = v6;
  *&v85 = v12;
  *(&v85 + 1) = WitnessTable;
  *&v86[0] = v11;
  sub_D6350();
  sub_6110(&qword_128BF8, &qword_E5DF0);
  sub_D63B0();
  swift_getTupleTypeMetadata2();
  v13 = sub_D6430();
  v14 = swift_getWitnessTable();
  *&v84 = &type metadata for Never;
  *(&v84 + 1) = v13;
  *&v85 = &protocol witness table for Never;
  *(&v85 + 1) = v14;
  v15 = sub_D5E70();
  v16 = swift_getWitnessTable();
  v17 = sub_DFAC();
  *&v84 = v15;
  *(&v84 + 1) = &type metadata for String;
  *&v85 = v16;
  *(&v85 + 1) = v17;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v84 = v15;
  *(&v84 + 1) = &type metadata for String;
  *&v85 = v16;
  *(&v85 + 1) = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v84 = OpaqueTypeMetadata2;
  *(&v84 + 1) = OpaqueTypeConformance2;
  v20 = swift_getOpaqueTypeMetadata2();
  v21 = sub_6110(&qword_129B58, &qword_E5DF8);
  *&v84 = OpaqueTypeMetadata2;
  *(&v84 + 1) = OpaqueTypeConformance2;
  v22 = swift_getOpaqueTypeConformance2();
  v23 = sub_109A8(&qword_129B60, &qword_129B58, &qword_E5DF8, &protocol conformance descriptor for TupleToolbarContent<A>);
  *&v84 = v20;
  *(&v84 + 1) = v21;
  *&v85 = v22;
  *(&v85 + 1) = v23;
  v55 = swift_getOpaqueTypeMetadata2();
  *&v84 = v20;
  *(&v84 + 1) = v21;
  *&v85 = v22;
  *(&v85 + 1) = v23;
  swift_getOpaqueTypeConformance2();
  v24 = sub_D58F0();
  v59 = *(v24 - 8);
  __chkstk_darwin(v24);
  v26 = &v52 - v25;
  v27 = sub_D58D0();
  v57 = v27;
  v66 = *(v27 - 8);
  __chkstk_darwin(v27);
  v54 = &v52 - v28;
  v29 = sub_6110(&qword_121178, &qword_DB0C0);
  v65 = v29;
  v52 = swift_getWitnessTable();
  v80 = v52;
  v81 = &protocol witness table for _AppearanceActionModifier;
  v30 = swift_getWitnessTable();
  v56 = v30;
  v31 = sub_E000();
  v64 = v31;
  v63 = sub_109A8(&qword_1211D0, &qword_121178, &qword_DB0C0, &protocol conformance descriptor for Button<A>);
  *&v84 = v27;
  *(&v84 + 1) = &type metadata for MSError;
  *&v85 = v29;
  *(&v85 + 1) = v30;
  *&v86[0] = v31;
  *(&v86[0] + 1) = v63;
  v60 = &opaque type descriptor for <<opaque return type of View.alert<A, B>(isPresented:error:actions:)>>;
  v32 = swift_getOpaqueTypeMetadata2();
  v33 = *(v32 - 8);
  v61 = v32;
  v62 = v33;
  v34 = __chkstk_darwin(v32);
  v53 = &v52 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v58 = &v52 - v36;
  v37 = v67;
  v38 = v70;
  v75 = v67;
  v76 = v70;
  sub_D58E0();
  v39 = v71;
  v40 = v68;
  v41 = v69;
  (*(v71 + 16))(v69, v38, v68);
  v42 = (*(v39 + 80) + 24) & ~*(v39 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = v37;
  (*(v39 + 32))(v43 + v42, v41, v40);
  v44 = v54;
  sub_D6140();

  (*(v59 + 8))(v26, v24);
  swift_getWitnessTable();
  sub_D5750();
  v74 = v37;
  swift_getKeyPath();
  sub_D5880();

  v84 = v77;
  v85 = v78;
  v86[0] = v79[0];
  *(v86 + 9) = *(v79 + 9);
  v45 = v53;
  v47 = v56;
  v46 = v57;
  sub_5A4AC();
  v87 = v84;
  sub_E158(&v87);

  v88 = v85;
  v89[0] = v86[0];
  *(v89 + 9) = *(v86 + 9);
  sub_FC3C(&v88, &qword_120EE8, &qword_D8DD0);
  (*(v66 + 8))(v44, v46);
  *&v77 = v46;
  *(&v77 + 1) = &type metadata for MSError;
  *&v78 = v65;
  *(&v78 + 1) = v47;
  *&v79[0] = v64;
  *(&v79[0] + 1) = v63;
  swift_getOpaqueTypeConformance2();
  v48 = v58;
  v49 = v61;
  sub_5ADA8();
  v50 = *(v62 + 8);
  v50(v45, v49);
  sub_5ADA8();
  return (v50)(v48, v49);
}

uint64_t sub_C003C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v83 = a3;
  v84 = a1;
  v4 = sub_D5B20();
  v81 = *(v4 - 8);
  v82 = v4;
  __chkstk_darwin(v4);
  v80 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6110(&qword_129A10, &qword_E5D38);
  v8 = type metadata accessor for MSRuleBaseView.RuleFormElement(255, a2, v6, v7);
  v9 = sub_D67E0();
  v10 = sub_6110(&qword_129A18, &qword_E5D40);
  WitnessTable = swift_getWitnessTable();
  v89._countAndFlagsBits = v9;
  v89._object = &type metadata for String;
  v90 = v10;
  v91 = WitnessTable;
  v92 = &protocol witness table for String;
  sub_D6350();
  v88 = sub_CB274();
  swift_getWitnessTable();
  sub_D62A0();
  sub_6110(&qword_129B50, &qword_E5DE8);
  sub_D5C00();
  v12 = sub_6110(&qword_129A30, &qword_E5D48);
  v13 = swift_getWitnessTable();
  v89._countAndFlagsBits = v9;
  v89._object = v8;
  v90 = v12;
  v91 = WitnessTable;
  v92 = v13;
  sub_D6350();
  v87 = sub_CB32C();
  swift_getWitnessTable();
  sub_D62A0();
  sub_D6930();
  sub_D5C00();
  sub_D5C00();
  v14 = sub_D5C00();
  v89._countAndFlagsBits = v9;
  v89._object = v8;
  v90 = v14;
  v91 = WitnessTable;
  v92 = v13;
  sub_D6350();
  sub_6110(&qword_128BF8, &qword_E5DF0);
  sub_D63B0();
  swift_getTupleTypeMetadata2();
  v15 = sub_D6430();
  v16 = swift_getWitnessTable();
  v89._countAndFlagsBits = &type metadata for Never;
  v89._object = v15;
  v90 = &protocol witness table for Never;
  v91 = v16;
  v17 = sub_D5E70();
  v79 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v63 - v18;
  v63 = &v63 - v18;
  v20 = swift_getWitnessTable();
  v21 = sub_DFAC();
  v89._countAndFlagsBits = v17;
  v89._object = &type metadata for String;
  v90 = v20;
  v75 = v20;
  v91 = v21;
  v22 = v21;
  v74 = v21;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v78 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v76 = &v63 - v24;
  v89._countAndFlagsBits = v17;
  v89._object = &type metadata for String;
  v90 = v20;
  v91 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v89._countAndFlagsBits = OpaqueTypeMetadata2;
  v89._object = OpaqueTypeConformance2;
  v66 = OpaqueTypeMetadata2;
  v26 = OpaqueTypeConformance2;
  v67 = OpaqueTypeConformance2;
  v27 = swift_getOpaqueTypeMetadata2();
  v77 = *(v27 - 8);
  __chkstk_darwin(v27);
  v68 = &v63 - v28;
  v29 = sub_6110(&qword_129B58, &qword_E5DF8);
  v71 = v29;
  v89._countAndFlagsBits = OpaqueTypeMetadata2;
  v89._object = v26;
  v30 = swift_getOpaqueTypeConformance2();
  v70 = v30;
  v69 = sub_109A8(&qword_129B60, &qword_129B58, &qword_E5DF8, &protocol conformance descriptor for TupleToolbarContent<A>);
  v89._countAndFlagsBits = v27;
  v89._object = v29;
  v90 = v30;
  v91 = v69;
  v72 = &opaque type descriptor for <<opaque return type of View.toolbar<A>(content:)>>;
  v31 = swift_getOpaqueTypeMetadata2();
  v73 = *(v31 - 8);
  v32 = __chkstk_darwin(v31);
  v34 = &v63 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v65 = &v63 - v35;
  v64 = a2;
  v38 = type metadata accessor for MSRuleBaseView(0, a2, v36, v37);
  sub_C0A2C(v38, v19);
  swift_getWitnessTable();
  v39 = *sub_D5740();
  v40 = (*(v39 + 976))();
  v42 = v41;

  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v44 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v89._countAndFlagsBits = 2777980912;
  v89._object = 0xA400000000000000;
  v93._countAndFlagsBits = v40;
  v93._object = v42;
  sub_D66D0(v93);
  v94._countAndFlagsBits = 2777980912;
  v94._object = 0xA400000000000000;
  sub_D66D0(v94);
  v62._countAndFlagsBits = 0xE000000000000000;
  v95._countAndFlagsBits = v40;
  v95._object = v42;
  v96.value._countAndFlagsBits = 0;
  v96.value._object = 0;
  v45.super.isa = v44;
  v46 = sub_D4E80(v95, v96, v45, v89, 0, v62);
  v48 = v47;

  v89._countAndFlagsBits = v46;
  v89._object = v48;
  v49 = v76;
  v50 = v63;
  sub_D6040();

  (*(v79 + 8))(v50, v17);
  v52 = v80;
  v51 = v81;
  v53 = v82;
  (*(v81 + 104))(v80, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v82);
  v54 = v68;
  v55 = v66;
  sub_D60D0();
  (*(v51 + 8))(v52, v53);
  (*(v78 + 8))(v49, v55);
  v85 = v64;
  v86 = v84;
  v56 = v71;
  v57 = v70;
  v58 = v69;
  sub_D6120();
  (*(v77 + 8))(v54, v27);
  v89._countAndFlagsBits = v27;
  v89._object = v56;
  v90 = v57;
  v91 = v58;
  swift_getOpaqueTypeConformance2();
  v59 = v65;
  sub_5ADA8();
  v60 = *(v73 + 8);
  v60(v34, v31);
  sub_5ADA8();
  return (v60)(v59, v31);
}

uint64_t sub_C0A2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  sub_6110(&qword_129A10, &qword_E5D38);
  v3 = *(a1 + 16);
  type metadata accessor for MSRuleBaseView.RuleFormElement(255, v3, v4, v5);
  sub_D67E0();
  sub_6110(&qword_129A18, &qword_E5D40);
  swift_getWitnessTable();
  sub_D6350();
  v16[8] = sub_CB274();
  swift_getWitnessTable();
  sub_D62A0();
  sub_6110(&qword_129B50, &qword_E5DE8);
  sub_D5C00();
  sub_6110(&qword_129A30, &qword_E5D48);
  WitnessTable = swift_getWitnessTable();
  sub_D6350();
  v16[7] = sub_CB32C();
  swift_getWitnessTable();
  sub_D62A0();
  sub_D6930();
  sub_D5C00();
  sub_D5C00();
  sub_D5C00();
  v16[13] = WitnessTable;
  sub_D6350();
  sub_6110(&qword_128BF8, &qword_E5DF0);
  sub_D63B0();
  swift_getTupleTypeMetadata2();
  v16[9] = &type metadata for Never;
  v16[10] = sub_D6430();
  v16[11] = &protocol witness table for Never;
  v16[12] = swift_getWitnessTable();
  v7 = sub_D5E70();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v16 - v12;
  v16[4] = v3;
  v16[5] = v16[0];
  sub_D5E60();
  swift_getWitnessTable();
  sub_5ADA8();
  v14 = *(v8 + 8);
  v14(v11, v7);
  sub_5ADA8();
  return (v14)(v13, v7);
}

uint64_t sub_C0E24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a3;
  v21 = sub_66D4(&qword_129B68, &unk_E5E40);
  __chkstk_darwin(v21);
  v6 = &v19 - v5;
  v20 = sub_66D4(&qword_1247D0, &qword_DC3C8);
  v7 = *(v20 - 8);
  __chkstk_darwin(v20);
  v9 = &v19 - v8;
  v10 = sub_D5C80();
  __chkstk_darwin(v10 - 8);
  v11 = sub_66D4(&qword_129B70, &unk_E5E50);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - v13;
  sub_D5C60();
  v25 = a2;
  v26 = a1;
  sub_66D4(&qword_121208, &unk_D8E10);
  sub_E7EC();
  sub_D5920();
  sub_D5C70();
  v23 = a2;
  v24 = a1;
  sub_66D4(&qword_121220, &unk_E0EB0);
  sub_E8DC();
  sub_D5920();
  v15 = *(v21 + 48);
  (*(v12 + 16))(v6, v14, v11);
  v16 = &v6[v15];
  v17 = v20;
  (*(v7 + 16))(v16, v9, v20);
  sub_D5BC0();
  (*(v7 + 8))(v9, v17);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_C1144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a3;
  v31 = sub_66D4(&qword_121178, &qword_DB0C0);
  v27 = *(v31 - 8);
  __chkstk_darwin(v31);
  v26 = &v26 - v5;
  v28 = sub_66D4(&qword_121298, &qword_E5E90);
  __chkstk_darwin(v28);
  v7 = &v26 - v6;
  v10 = type metadata accessor for MSRuleBaseView(0, a2, v8, v9);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - v12;
  v29 = sub_D51A0();
  v14 = *(v29 - 8);
  __chkstk_darwin(v29);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + *(v10 + 28));
  v18 = *(v11 + 16);
  v11 += 16;
  v18(v13, a1, v10);
  v19 = (*(v11 + 64) + 24) & ~*(v11 + 64);
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  (*(v11 + 16))(v20 + v19, v13, v10);
  if (v17 == 1)
  {
    sub_D5190();
    v21 = v29;
    (*(v14 + 16))(v7, v16, v29);
    swift_storeEnumTagMultiPayload();
    sub_CC6E0(&qword_121218, &type metadata accessor for CloseButton, &protocol conformance descriptor for CloseButton);
    sub_109A8(&qword_1211D0, &qword_121178, &qword_DB0C0, &protocol conformance descriptor for Button<A>);
    sub_D5BF0();
    return (*(v14 + 8))(v16, v21);
  }

  else
  {
    v23 = v26;
    sub_D6260();
    v24 = v27;
    v25 = v31;
    (*(v27 + 16))(v7, v23, v31);
    swift_storeEnumTagMultiPayload();
    sub_CC6E0(&qword_121218, &type metadata accessor for CloseButton, &protocol conformance descriptor for CloseButton);
    sub_109A8(&qword_1211D0, &qword_121178, &qword_DB0C0, &protocol conformance descriptor for Button<A>);
    sub_D5BF0();
    return (*(v24 + 8))(v23, v25);
  }
}

uint64_t sub_C1618(uint64_t a1)
{
  v15 = sub_D5B10();
  v2 = *(v15 - 8);
  __chkstk_darwin(v15);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_66D4(&qword_1211E8, &qword_D8DA0);
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  v8 = sub_D57E0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_FBD4(a1, v7, &qword_1211E8, &qword_D8DA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_D68C0();
    v12 = sub_D5DB0();
    sub_D5310();

    sub_D5B00();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v15);
  }

  sub_D57D0();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_C1894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v65 = a3;
  v63 = sub_66D4(&qword_121280, &unk_D8E40);
  __chkstk_darwin(v63);
  v50 = v46 - v5;
  v60 = sub_66D4(&qword_121288, &unk_E0ED0);
  __chkstk_darwin(v60);
  v61 = v46 - v6;
  v9 = type metadata accessor for MSRuleBaseView(0, a2, v7, v8);
  v53 = *(v9 - 8);
  v56 = *(v53 + 64);
  __chkstk_darwin(v9);
  v57 = v46 - v10;
  v59 = sub_66D4(&qword_121258, &unk_D8E30);
  __chkstk_darwin(v59);
  v49 = v46 - v11;
  v64 = sub_66D4(&qword_121248, &unk_E0EC0);
  __chkstk_darwin(v64);
  v62 = v46 - v12;
  v13 = sub_66D4(&qword_121290, &qword_D8E50);
  __chkstk_darwin(v13);
  v15 = v46 - v14;
  v16 = sub_66D4(&qword_121238, &unk_D8E20);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v46 - v18;
  v51 = v9;
  v20 = a1;
  v21 = (a1 + *(v9 + 48));
  v23 = *v21;
  v22 = v21[1];
  LODWORD(a1) = *(v21 + 16);
  swift_getWitnessTable();
  v52 = v23;
  v54 = v22;
  v55 = a1;
  v58 = a2;
  v24 = *sub_D5740();
  LOBYTE(a1) = (*(v24 + 784))();

  if (a1)
  {
    sub_D5780();
    (*(v17 + 16))(v15, v19, v16);
    swift_storeEnumTagMultiPayload();
    sub_109A8(&qword_121230, &qword_121238, &unk_D8E20, &protocol conformance descriptor for ProgressView<A, B>);
    sub_E994();
    sub_D5BF0();
    return (*(v17 + 8))(v19, v16);
  }

  else
  {
    v46[1] = v13;
    v47 = v15;
    v48 = v16;
    v26 = v51;
    v27 = *(v20 + *(v51 + 28));
    v28 = v53 + 16;
    v29 = v57;
    (*(v53 + 16))(v57, v20, v51);
    v30 = (*(v28 + 64) + 24) & ~*(v28 + 64);
    v31 = swift_allocObject();
    *(v31 + 16) = v58;
    (*(v28 + 16))(v31 + v30, v29, v26);
    if (v27 == 1)
    {
      v32 = v49;
      sub_D5150();
      v33 = *sub_D5740();
      v34 = (*(v33 + 832))();

      KeyPath = swift_getKeyPath();
      v36 = swift_allocObject();
      *(v36 + 16) = v34 & 1;
      v37 = (v32 + *(v59 + 36));
      *v37 = KeyPath;
      v37[1] = sub_10ACC;
      v37[2] = v36;
      v38 = &qword_121258;
      v39 = &unk_D8E30;
      sub_FBD4(v32, v61, &qword_121258, &unk_D8E30);
    }

    else
    {
      v32 = v50;
      sub_D6260();
      v41 = *sub_D5740();
      v42 = (*(v41 + 832))();

      v43 = swift_getKeyPath();
      v44 = swift_allocObject();
      *(v44 + 16) = v42 & 1;
      v45 = (v32 + *(v63 + 36));
      *v45 = v43;
      v45[1] = sub_F0D0;
      v45[2] = v44;
      v38 = &qword_121280;
      v39 = &unk_D8E40;
      sub_FBD4(v32, v61, &qword_121280, &unk_D8E40);
    }

    swift_storeEnumTagMultiPayload();
    sub_EA20();
    sub_EB50();
    v40 = v62;
    sub_D5BF0();
    sub_FC3C(v32, v38, v39);
    sub_FBD4(v40, v47, &qword_121248, &unk_E0EC0);
    swift_storeEnumTagMultiPayload();
    sub_109A8(&qword_121230, &qword_121238, &unk_D8E20, &protocol conformance descriptor for ProgressView<A, B>);
    sub_E994();
    sub_D5BF0();
    return sub_FC3C(v40, &qword_121248, &unk_E0EC0);
  }
}

uint64_t sub_C2108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a3;
  v17 = a4;
  v15 = a1;
  v5 = type metadata accessor for MSRuleBaseView(0, a2, a3, a4);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  swift_getWitnessTable();
  v9 = *sub_D5740();
  (*(v9 + 792))(1);

  v10 = sub_D5740();
  (*(v6 + 16))(v8, v15, v5);
  v11 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  (*(v6 + 32))(v12 + v11, v8, v5);
  (*(*v10 + 1224))(v17, v12);
}

uint64_t sub_C2330(uint64_t a1, uint64_t a2)
{
  v3 = sub_D57E0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_EC34(v6);
  sub_D57D0();
  (*(v4 + 8))(v6, v3);
  type metadata accessor for MSRuleBaseView(0, a2, v7, v8);
  swift_getWitnessTable();
  v9 = *(sub_D5740() + OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel_onDone);

  v9(v10);

  v11 = *sub_D5740();
  (*(v11 + 792))(0);
}

uint64_t sub_C2504(uint64_t a1, uint64_t a2)
{
  v3 = sub_D5340();
  v27 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v26 - v7;
  type metadata accessor for MSRuleBaseView(0, a2, v9, v10);
  swift_getWitnessTable();
  sub_D5740();
  _s12AddViewModelCMa(0, a2, v11, v12);
  v13 = swift_dynamicCastClass();

  if (v13)
  {
    if (qword_120E38 != -1)
    {
      swift_once();
    }

    v14 = sub_6610(v3, qword_137988);
    v15 = v27;
    (*(v27 + 16))(v8, v14, v3);
    v16 = sub_D5320();
    v17 = sub_D68A0();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_13;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "[Add Rule] page viewed", v18, 2u);
  }

  else
  {
    sub_D5740();
    _s13EditViewModelCMa(0, a2, v19, v20);
    v21 = swift_dynamicCastClass();

    if (!v21)
    {
      return result;
    }

    if (qword_120E38 != -1)
    {
      swift_once();
    }

    v23 = sub_6610(v3, qword_137988);
    v15 = v27;
    (*(v27 + 16))(v6, v23, v3);
    v16 = sub_D5320();
    v24 = sub_D68A0();
    if (!os_log_type_enabled(v16, v24))
    {
      v8 = v6;
      goto LABEL_13;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_0, v16, v24, "[Edit Rule] page viewed", v25, 2u);
    v8 = v6;
  }

LABEL_13:

  return (*(v15 + 8))(v8, v3);
}

uint64_t sub_C2864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a2;
  v56 = a1;
  v62 = a5;
  v6 = type metadata accessor for MSRuleBaseView.RuleFormElement(255, a2, a3, a4);
  v7 = sub_D67E0();
  sub_6110(&qword_129A18, &qword_E5D40);
  WitnessTable = swift_getWitnessTable();
  sub_D6350();
  v66[17] = sub_CB274();
  swift_getWitnessTable();
  v9 = sub_D62A0();
  sub_6110(&qword_129B50, &qword_E5DE8);
  v10 = sub_D5C00();
  sub_6110(&qword_129A30, &qword_E5D48);
  v11 = swift_getWitnessTable();
  sub_D6350();
  v66[16] = sub_CB32C();
  swift_getWitnessTable();
  v48[1] = sub_D62A0();
  v58 = v9;
  v50 = sub_D6930();
  v59 = v10;
  v51 = sub_D5C00();
  v52 = sub_D5C00();
  v67 = v7;
  v68 = v6;
  v53 = sub_D5C00();
  v69 = v53;
  v70 = WitnessTable;
  v71 = v11;
  v12 = sub_D6350();
  sub_6110(&qword_128BF8, &qword_E5DF0);
  v55 = v12;
  v54 = sub_D63B0();
  v60 = *(v54 - 8);
  v13 = __chkstk_darwin(v54);
  v15 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v61 = v48 - v16;
  v17 = sub_66D4(&qword_129B78, &unk_E5E98);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v48 - v19;
  v49 = sub_66D4(&qword_129A10, &qword_E5D38);
  v21 = __chkstk_darwin(v49);
  v57 = v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = v48 - v23;
  v27 = type metadata accessor for MSRuleBaseView(0, v5, v25, v26);
  v67 = *(v56 + *(v27 + 32));
  v63 = v5;

  swift_getWitnessTable();
  LOBYTE(v5) = sub_D6730();

  if (v5)
  {
    sub_C30C4(v27);
    (*(v18 + 32))(v24, v20, v17);
    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

  (*(v18 + 56))(v24, v28, 1, v17);
  sub_C3138(v27, v29, v30, v15);
  v31 = swift_getWitnessTable();
  v32 = v24;
  v48[0] = v24;
  v33 = v31;
  v34 = sub_CC038();
  v66[13] = v33;
  v66[14] = v34;
  v35 = swift_getWitnessTable();
  v66[12] = swift_getWitnessTable();
  v36 = swift_getWitnessTable();
  v66[10] = v33;
  v66[11] = v36;
  v37 = swift_getWitnessTable();
  v66[8] = v35;
  v66[9] = v37;
  v66[6] = swift_getWitnessTable();
  v66[7] = &protocol witness table for EmptyView;
  v66[5] = swift_getWitnessTable();
  v38 = swift_getWitnessTable();
  v39 = sub_CCA70(&qword_128C00, &qword_128BF8, &qword_E5DF0, &protocol conformance descriptor for <A> A?);
  v66[2] = &protocol witness table for EmptyView;
  v66[3] = v38;
  v66[4] = v39;
  v40 = v54;
  v41 = swift_getWitnessTable();
  v42 = v61;
  sub_5ADA8();
  v43 = v60;
  v44 = *(v60 + 8);
  v44(v15, v40);
  v45 = v32;
  v46 = v57;
  sub_FBD4(v45, v57, &qword_129A10, &qword_E5D38);
  v67 = v46;
  (*(v43 + 16))(v15, v42, v40);
  v68 = v15;
  v66[0] = v49;
  v66[1] = v40;
  v64 = sub_CC180(&qword_129B88, &qword_129A10, &qword_E5D38, sub_CC1FC);
  v65 = v41;
  sub_BF3A0(&v67, 2uLL, v66);
  v44(v42, v40);
  sub_FC3C(v48[0], &qword_129A10, &qword_E5D38);
  v44(v15, v40);
  return sub_FC3C(v46, &qword_129A10, &qword_E5D38);
}

uint64_t sub_C3044(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MSRuleBaseView.RuleFormElement(0, a2, a3, a4);
  swift_getWitnessTable();
  return sub_D6C30() & 1;
}

uint64_t sub_C30C4(uint64_t a1)
{
  sub_66D4(&qword_129B50, &qword_E5DE8);
  sub_CC038();
  return sub_D6390();
}

uint64_t sub_C3138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v31 = a4;
  v4 = *(a1 + 16);
  v5 = type metadata accessor for MSRuleBaseView.RuleFormElement(255, v4, a2, a3);
  v6 = sub_D67E0();
  sub_6110(&qword_129A18, &qword_E5D40);
  WitnessTable = swift_getWitnessTable();
  sub_D6350();
  v52 = sub_CB274();
  v30 = &protocol conformance descriptor for <> ForEach<A, B, C>;
  swift_getWitnessTable();
  sub_D62A0();
  sub_6110(&qword_129B50, &qword_E5DE8);
  sub_D5C00();
  sub_6110(&qword_129A30, &qword_E5D48);
  v8 = swift_getWitnessTable();
  sub_D6350();
  v51 = sub_CB32C();
  swift_getWitnessTable();
  sub_D62A0();
  v26[0] = sub_D6930();
  v26[1] = sub_D5C00();
  v26[2] = sub_D5C00();
  v27 = sub_D5C00();
  v53 = v6;
  v54 = v5;
  v55 = v27;
  v56 = WitnessTable;
  v57 = v8;
  v9 = sub_D6350();
  v28 = sub_6110(&qword_128BF8, &qword_E5DF0);
  v10 = sub_D63B0();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v26 - v15;
  v36 = v4;
  v37 = v29;
  v33 = v4;
  v34 = v29;
  v17 = swift_getWitnessTable();
  v18 = sub_CC038();
  v49 = v17;
  v50 = v18;
  v19 = swift_getWitnessTable();
  v48 = swift_getWitnessTable();
  v20 = swift_getWitnessTable();
  v46 = v17;
  v47 = v20;
  v21 = swift_getWitnessTable();
  v44 = v19;
  v45 = v21;
  v42 = swift_getWitnessTable();
  v43 = &protocol witness table for EmptyView;
  v41 = swift_getWitnessTable();
  v22 = swift_getWitnessTable();
  v23 = sub_CCA70(&qword_128C00, &qword_128BF8, &qword_E5DF0, &protocol conformance descriptor for <A> A?);
  sub_BF570(sub_CC36C, v35, sub_CC374, v32, v9, v28, v22, v23);
  v38 = &protocol witness table for EmptyView;
  v39 = v22;
  v40 = v23;
  swift_getWitnessTable();
  sub_5ADA8();
  v24 = *(v11 + 8);
  v24(v14, v10);
  sub_5ADA8();
  return (v24)(v16, v10);
}

double sub_C3658@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a3;
  v44 = sub_66D4(&qword_121440, &qword_D9140);
  __chkstk_darwin(v44);
  v6 = v40 - v5;
  v7 = sub_66D4(&qword_121448, &qword_D9148);
  v8 = *(v7 - 8);
  v45 = v7;
  v46 = v8;
  __chkstk_darwin(v7);
  v10 = v40 - v9;
  v11 = sub_66D4(&qword_121450, &qword_D9150);
  v12 = *(v11 - 8);
  v47 = v11;
  v48._countAndFlagsBits = v12;
  __chkstk_darwin(v11);
  v43 = v40 - v13;
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v54._countAndFlagsBits = 2777980912;
  v54._object = 0xA400000000000000;
  v57._countAndFlagsBits = 0x4D414E2E454C5552;
  v57._object = 0xE900000000000045;
  sub_D66D0(v57);
  v58._countAndFlagsBits = 2777980912;
  v58._object = 0xA400000000000000;
  sub_D66D0(v58);
  v39._countAndFlagsBits = 0xE000000000000000;
  v59._countAndFlagsBits = 0x4D414E2E454C5552;
  v59._object = 0xE900000000000045;
  v60.value._countAndFlagsBits = 0;
  v60.value._object = 0;
  v16.super.isa = v15;
  v17 = sub_D4E80(v59, v60, v16, v54, 0, v39);
  v19 = v18;

  v22 = (a1 + *(type metadata accessor for MSRuleBaseView(0, a2, v20, v21) + 48));
  v23 = *v22;
  v41 = v22[1];
  v42 = v23;
  v40[1] = *(v22 + 16);
  swift_getWitnessTable();
  sub_D5750();
  v51 = a2;
  swift_getKeyPath();
  sub_D5880();

  v52 = v17;
  v53 = v19;
  sub_DFAC();
  sub_D6410();
  KeyPath = swift_getKeyPath();
  v25 = sub_D65F0();
  v26 = v44;
  v27 = &v6[*(v44 + 36)];
  *v27 = KeyPath;
  v27[1] = v25;
  v27[2] = v28;
  v29 = sub_FDA8();
  sub_D6050();
  sub_FC3C(v6, &qword_121440, &qword_D9140);
  v54._countAndFlagsBits = v26;
  v54._object = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = v43;
  v32 = v45;
  sub_D6080();
  (*(v46 + 8))(v10, v32);
  v54._countAndFlagsBits = v32;
  v54._object = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v33 = v49;
  v34 = v47;
  sub_D6000();
  (*(v48._countAndFlagsBits + 8))(v31, v34);
  sub_D5750();
  v50 = a2;
  swift_getKeyPath();
  sub_D5880();

  v48 = v54;
  v35 = v55;
  v36 = v56;
  sub_D5740();

  v37 = (v33 + *(sub_66D4(&qword_129B50, &qword_E5DE8) + 36));
  result = *&v48._countAndFlagsBits;
  *v37 = v48;
  v37[1]._countAndFlagsBits = v35;
  v37[1]._object = v36;
  v37[2]._countAndFlagsBits = 30;
  return result;
}

uint64_t sub_C3BA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v49 = a5;
  v40 = type metadata accessor for MSRuleBaseView(0, a2, a3, a4);
  v46 = *(v40 - 8);
  v48 = *(v46 + 64);
  __chkstk_darwin(v40);
  v45 = v38 - v7;
  v10 = type metadata accessor for MSRuleBaseView.RuleFormElement(255, a2, v8, v9);
  v11 = sub_D67E0();
  v12 = sub_6110(&qword_129A18, &qword_E5D40);
  WitnessTable = swift_getWitnessTable();
  v63 = v11;
  v64 = &type metadata for String;
  v65 = v12;
  v66 = WitnessTable;
  v14 = WitnessTable;
  v67 = &protocol witness table for String;
  sub_D6350();
  v62 = sub_CB274();
  v47 = &protocol conformance descriptor for <> ForEach<A, B, C>;
  swift_getWitnessTable();
  v15 = sub_D62A0();
  sub_6110(&qword_129B50, &qword_E5DE8);
  v38[0] = v15;
  v38[1] = sub_D5C00();
  v16 = sub_6110(&qword_129A30, &qword_E5D48);
  v17 = swift_getWitnessTable();
  v63 = v11;
  v64 = v10;
  v43 = v11;
  v65 = v16;
  v66 = v14;
  v42 = v14;
  v67 = v17;
  v18 = v17;
  v41 = v17;
  sub_D6350();
  v61 = sub_CB32C();
  swift_getWitnessTable();
  v38[3] = sub_D62A0();
  v38[4] = sub_D6930();
  v38[5] = sub_D5C00();
  v38[6] = sub_D5C00();
  v39 = sub_D5C00();
  v63 = v11;
  v64 = v10;
  v65 = v39;
  v66 = v14;
  v67 = v18;
  v19 = sub_D6350();
  v44 = *(v19 - 8);
  v20 = __chkstk_darwin(v19);
  v22 = v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = v38 - v23;
  v25 = v40;
  v63 = *(a1 + *(v40 + 32));
  v50 = a2;
  v38[2] = swift_getKeyPath();
  v26 = v46;
  v27 = v45;
  (*(v46 + 16))(v45, a1, v25);
  v28 = (*(v26 + 80) + 24) & ~*(v26 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = a2;
  (*(v26 + 32))(v29 + v28, v27, v25);

  v30 = swift_getWitnessTable();
  v31 = sub_CC038();
  v59 = v30;
  v60 = v31;
  v32 = swift_getWitnessTable();
  v58 = swift_getWitnessTable();
  v33 = swift_getWitnessTable();
  v56 = v30;
  v57 = v33;
  v34 = swift_getWitnessTable();
  v54 = v32;
  v55 = v34;
  v52 = swift_getWitnessTable();
  v53 = &protocol witness table for EmptyView;
  v37 = swift_getWitnessTable();
  sub_D6330();
  v51 = v37;
  swift_getWitnessTable();
  sub_5ADA8();
  v35 = *(v44 + 8);
  v35(v22, v19);
  sub_5ADA8();
  return (v35)(v24, v19);
}

uint64_t sub_C4194@<X0>(void (*a1)(char *, uint64_t)@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v127 = a2;
  v130 = a1;
  v133 = a5;
  v6 = type metadata accessor for MSRuleBaseView.RuleFormElement(255, a3, a3, a4);
  v7 = sub_D67E0();
  v8 = sub_6110(&qword_129A30, &qword_E5D48);
  WitnessTable = swift_getWitnessTable();
  v186 = v7;
  v187 = v6;
  v188 = v8;
  v189 = WitnessTable;
  v190 = swift_getWitnessTable();
  sub_D6350();
  v185 = sub_CB32C();
  swift_getWitnessTable();
  v139 = sub_D62A0();
  v10 = sub_D6930();
  v126 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v123 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v122 = &v120 - v13;
  v14 = sub_6110(&qword_129A18, &qword_E5D40);
  v186 = v7;
  v187 = &type metadata for String;
  v188 = v14;
  v189 = WitnessTable;
  v190 = &protocol witness table for String;
  sub_D6350();
  v184 = sub_CB274();
  swift_getWitnessTable();
  v15 = sub_D62A0();
  v137 = v10;
  v16 = sub_D5C00();
  v125 = *(v16 - 8);
  __chkstk_darwin(v16);
  v124 = &v120 - v17;
  v18 = sub_66D4(&qword_129B50, &qword_E5DE8);
  __chkstk_darwin(v18);
  v20 = &v120 - v19;
  v21 = sub_D5C00();
  v121 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v120 - v22;
  v138 = v24;
  v136 = v16;
  v25 = sub_D5C00();
  v129 = *(v25 - 8);
  v26 = __chkstk_darwin(v25);
  v128 = &v120 - v27;
  v28 = *(v15 - 8);
  v29 = __chkstk_darwin(v26);
  v31 = &v120 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v33 = &v120 - v32;
  v135 = v34;
  v35 = sub_D5C00();
  v131 = *(v35 - 8);
  v132 = v35;
  __chkstk_darwin(v35);
  v39 = &v120 - v38;
  v40 = *v130;
  v134 = v39;
  if (v40 > 2)
  {
    if (v40 == 3)
    {
      v96 = type metadata accessor for MSRuleBaseView(0, a3, v36, v37);
      sub_C5098(*&v127[*(v96 + 40)], v96, v97, v98);
      v99 = swift_getWitnessTable();
      v120 = v33;
      sub_5ADA8();
      v100 = *(v28 + 8);
      v130 = (v28 + 8);
      v127 = v100;
      (v100)(v31, v15);
      sub_5ADA8();
      v160 = swift_getWitnessTable();
      v101 = v137;
      v102 = swift_getWitnessTable();
      v103 = v124;
      sub_BF1B0(v31, v15, v101, v99, v102);
      v104 = sub_CC038();
      v158 = v99;
      v159 = v104;
      v105 = v138;
      v106 = swift_getWitnessTable();
      v156 = v99;
      v157 = v102;
      v107 = v136;
      v108 = swift_getWitnessTable();
      v109 = v128;
      sub_BF2A8(v103, v105, v107, v106, v108);
      (*(v125 + 8))(v103, v107);
      v154 = v106;
      v155 = v108;
      v110 = v135;
      v111 = swift_getWitnessTable();
      v53 = v134;
      sub_BF1B0(v109, v110, &type metadata for EmptyView, v111, &protocol witness table for EmptyView);
      (*(v129 + 8))(v109, v110);
      v112 = v127;
      (v127)(v31, v15);
      (v112)(v120, v15);
      goto LABEL_11;
    }

    if (v40 == 4)
    {
      v54 = type metadata accessor for MSRuleBaseView(0, a3, v36, v37);
      v55 = v123;
      sub_C5A80(v54, v56, v57, v123);
      v167 = swift_getWitnessTable();
      v58 = v137;
      v59 = swift_getWitnessTable();
      sub_5ADA8();
      v60 = *(v126 + 1);
      v126 += 8;
      v130 = v60;
      v60(v55, v58);
      sub_5ADA8();
      v61 = swift_getWitnessTable();
      v62 = v124;
      sub_BF2A8(v55, v15, v58, v61, v59);
      v63 = sub_CC038();
      v165 = v61;
      v166 = v63;
      v64 = v138;
      v65 = swift_getWitnessTable();
      v163 = v61;
      v164 = v59;
      v66 = v136;
      v67 = swift_getWitnessTable();
      v68 = v128;
      sub_BF2A8(v62, v64, v66, v65, v67);
      (*(v125 + 8))(v62, v66);
      v161 = v65;
      v162 = v67;
      v69 = v135;
      v70 = swift_getWitnessTable();
      v53 = v134;
      sub_BF1B0(v68, v69, &type metadata for EmptyView, v70, &protocol witness table for EmptyView);
      (*(v129 + 8))(v68, v69);
      v71 = v130;
      v130(v123, v58);
      v71(v122, v58);
      goto LABEL_11;
    }

LABEL_8:
    v72 = swift_getWitnessTable();
    v73 = sub_CC038();
    v182 = v72;
    v183 = v73;
    v74 = swift_getWitnessTable();
    v181 = swift_getWitnessTable();
    v75 = swift_getWitnessTable();
    v179 = v72;
    v180 = v75;
    v76 = swift_getWitnessTable();
    v177 = v74;
    v178 = v76;
    v77 = v135;
    v78 = swift_getWitnessTable();
    v53 = v134;
    sub_BF2A8(v78, v77, &type metadata for EmptyView, v78, &protocol witness table for EmptyView);
    goto LABEL_11;
  }

  if (v40 == 1)
  {
    v79 = type metadata accessor for MSRuleBaseView(0, a3, v36, v37);
    sub_C5098(*&v127[*(v79 + 36)], v79, v80, v81);
    v82 = swift_getWitnessTable();
    v120 = v33;
    sub_5ADA8();
    v83 = *(v28 + 8);
    v130 = (v28 + 8);
    v126 = v83;
    (v83)(v31, v15);
    sub_5ADA8();
    v84 = sub_CC038();
    sub_BF1B0(v31, v15, v18, v82, v84);
    v145 = v82;
    v146 = v84;
    v85 = v138;
    v86 = swift_getWitnessTable();
    v144 = swift_getWitnessTable();
    v87 = swift_getWitnessTable();
    v142 = v82;
    v143 = v87;
    v88 = v136;
    v89 = swift_getWitnessTable();
    v127 = v15;
    v90 = v128;
    sub_BF1B0(v23, v85, v88, v86, v89);
    (*(v121 + 8))(v23, v85);
    v140 = v86;
    v141 = v89;
    v91 = v135;
    v92 = swift_getWitnessTable();
    v53 = v134;
    sub_BF1B0(v90, v91, &type metadata for EmptyView, v92, &protocol witness table for EmptyView);
    v93 = v90;
    v94 = v127;
    (*(v129 + 8))(v93, v91);
    v95 = v126;
    (v126)(v31, v94);
    v95(v120, v94);
    goto LABEL_11;
  }

  if (v40 != 2)
  {
    goto LABEL_8;
  }

  v41 = type metadata accessor for MSRuleBaseView(0, a3, v36, v37);
  sub_C52E0(v41, v20);
  v42 = swift_getWitnessTable();
  v43 = sub_CC038();
  sub_BF2A8(v20, v15, v18, v42, v43);
  v152 = v42;
  v153 = v43;
  v44 = v23;
  v45 = v138;
  v46 = swift_getWitnessTable();
  v151 = swift_getWitnessTable();
  v47 = swift_getWitnessTable();
  v149 = v42;
  v150 = v47;
  v48 = v136;
  v49 = swift_getWitnessTable();
  v50 = v128;
  sub_BF1B0(v44, v45, v48, v46, v49);
  (*(v121 + 8))(v44, v45);
  v147 = v46;
  v148 = v49;
  v51 = v135;
  v52 = swift_getWitnessTable();
  v53 = v134;
  sub_BF1B0(v50, v51, &type metadata for EmptyView, v52, &protocol witness table for EmptyView);
  (*(v129 + 8))(v50, v51);
  sub_FC3C(v20, &qword_129B50, &qword_E5DE8);
LABEL_11:
  v113 = swift_getWitnessTable();
  v114 = sub_CC038();
  v175 = v113;
  v176 = v114;
  v115 = swift_getWitnessTable();
  v174 = swift_getWitnessTable();
  v116 = swift_getWitnessTable();
  v172 = v113;
  v173 = v116;
  v117 = swift_getWitnessTable();
  v170 = v115;
  v171 = v117;
  v168 = swift_getWitnessTable();
  v169 = &protocol witness table for EmptyView;
  v118 = v132;
  swift_getWitnessTable();
  sub_5ADA8();
  return (*(v131 + 8))(v53, v118);
}

uint64_t sub_C5098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 16);
  type metadata accessor for MSRuleBaseView.RuleFormElement(255, v6, a3, a4);
  v21 = sub_D67E0();
  v22 = &type metadata for String;
  v23 = sub_6110(&qword_129A18, &qword_E5D40);
  WitnessTable = swift_getWitnessTable();
  v25 = &protocol witness table for String;
  sub_D6350();
  v20 = sub_CB274();
  swift_getWitnessTable();
  v7 = sub_D62A0();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v16[-v12];
  v17 = v6;
  v18 = a1;
  v19 = v4;
  sub_D5B40();
  sub_D6290();
  swift_getWitnessTable();
  sub_5ADA8();
  v14 = *(v8 + 8);
  v14(v11, v7);
  sub_5ADA8();
  return (v14)(v13, v7);
}

double sub_C52E0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v55 = sub_66D4(&qword_121420, &qword_DA840);
  v52 = *(v55 - 8);
  __chkstk_darwin(v55);
  v49 = &v48 - v4;
  v56 = sub_66D4(&qword_121440, &qword_D9140);
  __chkstk_darwin(v56);
  v6 = &v48 - v5;
  v58._countAndFlagsBits = sub_66D4(&qword_121448, &qword_D9148);
  v54 = *(v58._countAndFlagsBits - 8);
  __chkstk_darwin(v58._countAndFlagsBits);
  v51 = &v48 - v7;
  v57 = sub_66D4(&qword_121450, &qword_D9150);
  v53 = *(v57 - 8);
  __chkstk_darwin(v57);
  v50 = &v48 - v8;
  v9 = sub_66D4(&qword_129B98, &qword_E5F30);
  v60 = *(v9 - 8);
  v61 = v9;
  __chkstk_darwin(v9);
  v59 = &v48 - v10;
  v11 = v2 + *(a1 + 48);
  v12 = *(v11 + 8);
  v13 = *(v11 + 16);
  swift_getWitnessTable();
  v14 = v12;
  v63 = v13;
  v15 = *sub_D5740();
  v16 = (*(v15 + 400))();

  v17 = v16;
  if (v16 >= 4u)
  {
    if (v16 == 4)
    {
      v19 = 0xD00000000000001ELL;
    }

    else
    {
      v19 = 0xD00000000000001DLL;
    }

    if (v17 == 4)
    {
      v18 = "RULES.FORM.PLACEHOLDER.LISTID";
    }

    else
    {
      v18 = "ge";
    }
  }

  else
  {
    v18 = "RULES.FORM.PLACEHOLDER.SUBJECT";
    v19 = 0xD000000000000029;
  }

  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v66._countAndFlagsBits = 2777980912;
  v66._object = 0xA400000000000000;
  v69._object = (v18 | 0x8000000000000000);
  v69._countAndFlagsBits = v19;
  sub_D66D0(v69);
  v70._countAndFlagsBits = 2777980912;
  v70._object = 0xA400000000000000;
  sub_D66D0(v70);
  v47._countAndFlagsBits = 0xE000000000000000;
  v71._object = (v18 | 0x8000000000000000);
  v71._countAndFlagsBits = v19;
  v72.value._countAndFlagsBits = 0;
  v72.value._object = 0;
  v22.super.isa = v21;
  v23 = sub_D4E80(v71, v72, v22, v66, 0, v47);
  v25 = v24;

  v48 = v14;
  v26 = sub_D5750();
  __chkstk_darwin(v26);
  swift_getKeyPath();
  sub_D5880();

  v64 = v23;
  v65 = v25;
  sub_DFAC();
  v27 = v49;
  sub_D6410();
  KeyPath = swift_getKeyPath();
  v29 = sub_D65F0();
  v31 = v30;
  (*(v52 + 32))(v6, v27, v55);
  v32 = v56;
  v33 = &v6[*(v56 + 36)];
  *v33 = KeyPath;
  v33[1] = v29;
  v33[2] = v31;
  v34 = sub_FDA8();
  v35 = v51;
  sub_D6050();
  sub_FC3C(v6, &qword_121440, &qword_D9140);
  v66._countAndFlagsBits = v32;
  v66._object = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = v50;
  countAndFlagsBits = v58._countAndFlagsBits;
  sub_D6080();
  (*(v54 + 8))(v35, countAndFlagsBits);
  v66._countAndFlagsBits = countAndFlagsBits;
  v66._object = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v39 = v59;
  v40 = v57;
  sub_D6000();
  (*(v53 + 8))(v37, v40);
  v41 = sub_D5750();
  __chkstk_darwin(v41);
  swift_getKeyPath();
  sub_D5880();

  v58 = v66;
  v42 = v67;
  v43 = v68;
  sub_D5740();

  v44 = v62;
  (*(v60 + 32))(v62, v39, v61);
  v45 = (v44 + *(sub_66D4(&qword_129B50, &qword_E5DE8) + 36));
  result = *&v58._countAndFlagsBits;
  *v45 = v58;
  v45[1]._countAndFlagsBits = v42;
  v45[1]._object = v43;
  v45[2]._countAndFlagsBits = 90;
  return result;
}

uint64_t sub_C5A80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v34 = a4;
  v5 = *(a1 + 16);
  v6 = type metadata accessor for MSRuleBaseView.RuleFormElement(255, v5, a2, a3);
  v37 = sub_D67E0();
  v38 = v6;
  v39 = sub_6110(&qword_129A30, &qword_E5D48);
  WitnessTable = swift_getWitnessTable();
  v41 = swift_getWitnessTable();
  v7 = sub_D6350();
  v36 = sub_CB32C();
  v31 = v7;
  v29[1] = swift_getWitnessTable();
  v8 = sub_D62A0();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v30 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = v29 - v12;
  v14 = sub_D6930();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v32 = v4;
  v33 = v29 - v19;
  swift_getWitnessTable();
  v20 = *sub_D5740();
  v21 = (*(v20 + 352))();

  if ((v21 & 0xF9) != 0)
  {
    (*(v9 + 56))(v18, 1, 1, v8);
    swift_getWitnessTable();
  }

  else
  {
    __chkstk_darwin(v22);
    v23 = v32;
    v29[-2] = v5;
    v29[-1] = v23;
    sub_D5B40();
    v24 = v30;
    sub_D6290();
    swift_getWitnessTable();
    sub_5ADA8();
    v25 = *(v9 + 8);
    v25(v24, v8);
    sub_5ADA8();
    v25(v13, v8);
    (*(v9 + 32))(v18, v24, v8);
    (*(v9 + 56))(v18, 0, 1, v8);
  }

  v26 = v33;
  (*(v15 + 16))(v33, v18, v14);
  v27 = *(v15 + 8);
  v27(v18, v14);
  v35 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_5ADA8();
  return (v27)(v26, v14);
}

uint64_t sub_C5F70@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  type metadata accessor for MSRuleBaseView(0, a2, a3, a4);
  swift_getWitnessTable();
  v6 = *sub_D5740();
  (*(v6 + 1120))();
  v8 = v7;

  if (v8)
  {
    sub_DFAC();
    v10 = sub_D5F50();
    v12 = v11;
    v14 = v13;
    sub_D6170();
    v15 = sub_D5F10();
    v8 = v16;
    v18 = v17;
    v20 = v19;
    sub_F16C(v10, v12, v14 & 1);

    v21 = v18 & 1;
  }

  else
  {
    v15 = 0;
    v21 = 0;
    v20 = 0;
  }

  *a5 = v15;
  a5[1] = v8;
  a5[2] = v21;
  a5[3] = v20;
  return result;
}

uint64_t sub_C610C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a2;
  v34 = a5;
  v28 = a3;
  v7 = type metadata accessor for MSRuleBaseView(0, a3, a3, a4);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - v9;
  v33 = type metadata accessor for MSRuleBaseView.RuleFormElement(255, a3, v11, v12);
  v13 = sub_D67E0();
  v31 = v13;
  v14 = sub_6110(&qword_129A18, &qword_E5D40);
  v30 = v14;
  WitnessTable = swift_getWitnessTable();
  v36 = v13;
  v37 = &type metadata for String;
  v38 = v14;
  v39 = WitnessTable;
  v40 = &protocol witness table for String;
  v15 = sub_D6350();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v27 - v20;
  v36 = a1;
  (*(v8 + 16))(v10, v32, v7);
  v22 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v28;
  *(v23 + 24) = a1;
  (*(v8 + 32))(v23 + v22, v10, v7);
  v24 = sub_CB274();
  swift_bridgeObjectRetain_n();
  swift_getWitnessTable();
  sub_D6340();
  v35 = v24;
  swift_getWitnessTable();
  sub_5ADA8();
  v25 = *(v16 + 8);
  v25(v19, v15);
  sub_5ADA8();
  return (v25)(v21, v15);
}

uint64_t sub_C6450@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27 = a3;
  v30 = a5;
  v29 = sub_66D4(&qword_129B48, &qword_E5DE0);
  __chkstk_darwin(v29);
  v9 = &v27 - v8;
  v10 = sub_66D4(&qword_129BA0, &qword_E5F70);
  __chkstk_darwin(v10);
  v12 = &v27 - v11;
  v28 = sub_66D4(&qword_129A30, &qword_E5D48);
  v13 = __chkstk_darwin(v28);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v27 - v16;
  v18 = *a1;
  v34 = a2;
  type metadata accessor for MSRuleBaseView.RuleFormElement(255, a4, v19, v20);
  sub_D67E0();
  swift_getWitnessTable();
  sub_D6580();
  v32 = v18;
  if (v33 == 13 || (v31 = v33, swift_getWitnessTable(), (sub_D6C30() & 1) == 0))
  {
    v24 = type metadata accessor for MSRuleBaseView(0, a4, v21, v22);
    sub_C6844(v18, v24, v17);
    sub_FBD4(v17, v15, &qword_129A30, &qword_E5D48);
    sub_FBD4(v15, v9, &qword_129A30, &qword_E5D48);
    v25 = &v9[*(sub_66D4(&qword_129BA8, &qword_E5F78) + 48)];
    *v25 = 0;
    v25[8] = 1;
    sub_FC3C(v15, &qword_129A30, &qword_E5D48);
    sub_FBD4(v9, v12, &qword_129B48, &qword_E5DE0);
    swift_storeEnumTagMultiPayload();
    sub_CB32C();
    sub_109A8(&qword_129B40, &qword_129B48, &qword_E5DE0, &protocol conformance descriptor for TupleView<A>);
    sub_D5BF0();
    sub_FC3C(v9, &qword_129B48, &qword_E5DE0);
  }

  else
  {
    v23 = type metadata accessor for MSRuleBaseView(0, a4, v21, v22);
    sub_C6844(v18, v23, v17);
    sub_FBD4(v17, v12, &qword_129A30, &qword_E5D48);
    swift_storeEnumTagMultiPayload();
    sub_CB32C();
    sub_109A8(&qword_129B40, &qword_129B48, &qword_E5DE0, &protocol conformance descriptor for TupleView<A>);
    sub_D5BF0();
  }

  return sub_FC3C(v17, &qword_129A30, &qword_E5D48);
}

uint64_t sub_C6844@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  LODWORD(v284) = a1;
  v289 = a3;
  v264 = sub_66D4(&qword_129BB0, &unk_E5F80);
  __chkstk_darwin(v264);
  v265 = &v225 - v4;
  v282 = sub_66D4(&qword_129B18, &qword_E5DC8);
  __chkstk_darwin(v282);
  v266 = &v225 - v5;
  v228 = type metadata accessor for MSFolderListSelectionView(0);
  __chkstk_darwin(v228);
  v227 = (&v225 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v255 = sub_66D4(&qword_129B38, &qword_E5DD8);
  v254 = *(v255 - 8);
  __chkstk_darwin(v255);
  v226 = &v225 - v7;
  v263 = sub_66D4(&qword_129B28, &qword_E5DD0);
  __chkstk_darwin(v263);
  v256 = &v225 - v8;
  v239 = sub_66D4(&qword_121420, &qword_DA840);
  v235 = *(v239 - 8);
  __chkstk_darwin(v239);
  v230 = &v225 - v9;
  v236 = sub_66D4(&qword_128820, &qword_E2E60);
  v234 = *(v236 - 8);
  __chkstk_darwin(v236);
  v229 = &v225 - v10;
  v238 = sub_66D4(&qword_129AF8, &qword_E5DC0);
  __chkstk_darwin(v238);
  v231 = &v225 - v11;
  v242 = sub_66D4(&qword_129AF0, &qword_E5DB8);
  v237 = *(v242 - 8);
  __chkstk_darwin(v242);
  v232 = &v225 - v12;
  v241 = sub_66D4(&qword_129AE8, &qword_E5DB0);
  v240 = *(v241 - 8);
  __chkstk_darwin(v241);
  v233 = &v225 - v13;
  v247 = sub_66D4(&qword_129BB8, &qword_E5F90);
  v246 = *(v247 - 8);
  __chkstk_darwin(v247);
  v245 = &v225 - v14;
  v258 = sub_66D4(&qword_129AE0, &qword_E5DA8);
  v257 = *(v258 - 8);
  v15 = __chkstk_darwin(v258);
  v244 = &v225 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v243 = &v225 - v17;
  v273 = sub_66D4(&qword_129AD0, &qword_E5DA0);
  __chkstk_darwin(v273);
  v259 = &v225 - v18;
  v278 = sub_66D4(&qword_129BC0, &qword_E5F98);
  __chkstk_darwin(v278);
  v280 = &v225 - v19;
  v269 = sub_66D4(&qword_129BC8, &qword_E5FA0);
  __chkstk_darwin(v269);
  v271 = &v225 - v20;
  v279 = sub_66D4(&qword_129AA8, &qword_E5D88);
  __chkstk_darwin(v279);
  v272 = &v225 - v21;
  v288 = sub_66D4(&qword_129A98, &qword_E5D80);
  __chkstk_darwin(v288);
  v281 = &v225 - v22;
  v267 = sub_66D4(&qword_129AB8, &qword_E5D98);
  v250 = *(v267 - 8);
  __chkstk_darwin(v267);
  v248 = &v225 - v23;
  v268 = sub_66D4(&qword_129AB0, &qword_E5D90);
  v251 = *(v268 - 8);
  __chkstk_darwin(v268);
  v249 = &v225 - v24;
  v270 = sub_66D4(&qword_129BD0, &qword_E5FA8);
  v253 = *(v270 - 8);
  __chkstk_darwin(v270);
  v252 = &v225 - v25;
  v285 = sub_66D4(&qword_129BD8, &qword_E5FB0);
  __chkstk_darwin(v285);
  v287 = &v225 - v26;
  v274 = sub_66D4(&qword_129BE0, &qword_E5FB8);
  __chkstk_darwin(v274);
  v276 = (&v225 - v27);
  v28 = sub_66D4(&qword_129BE8, &qword_E5FC0);
  __chkstk_darwin(v28);
  v30 = &v225 - v29;
  v275 = sub_66D4(&qword_129A50, &qword_E5D58);
  __chkstk_darwin(v275);
  v32 = &v225 - v31;
  v286 = sub_66D4(&qword_129A40, &qword_E5D50);
  v33 = __chkstk_darwin(v286);
  v277 = &v225 - v34;
  v35 = a2;
  v262 = *(a2 - 8);
  __chkstk_darwin(v33);
  v260 = v36;
  v261 = &v225 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_66D4(&qword_129A60, &qword_E5D68);
  v38 = *(v37 - 8);
  __chkstk_darwin(v37);
  v40 = &v225 - v39;
  v41 = sub_66D4(&qword_129A58, &qword_E5D60);
  v42 = *(v41 - 8);
  __chkstk_darwin(v41);
  v44 = &v225 - v43;
  v45 = sub_66D4(&qword_129BF0, &qword_E5FC8);
  v46 = __chkstk_darwin(v45);
  v49 = &v225 - v48;
  v50 = v284;
  if (v284 <= 7u)
  {
    v270 = v38;
    v271 = v42;
    v272 = v28;
    v273 = v30;
    v284 = v32;
    switch(v50)
    {
      case 5:
        v281 = v46;
        v280 = v49;
        v282 = v47;
        v279 = sub_D5B50();
        v278 = v103;
        LODWORD(v268) = v104;
        v269 = v105;
        v106 = v283._countAndFlagsBits + *(v35 + 48);
        v107 = *(v106 + 8);
        v267 = *v106;
        v266 = v107;
        LODWORD(v265) = *(v106 + 16);
        v108 = *(v35 + 16);
        swift_getWitnessTable();
        v264 = v108;
        v109 = sub_D5750();
        __chkstk_darwin(v109);
        swift_getKeyPath();
        sub_D5880();

        v290 = v293;
        LOBYTE(v291._countAndFlagsBits) = v294._countAndFlagsBits;
        sub_66D4(&qword_129C28, &qword_E6088);
        sub_CCA1C();
        sub_CCA70(&qword_129C38, &qword_129C28, &qword_E6088, &protocol conformance descriptor for <> ForEach<A, B, C>);
        sub_D62B0();
        v110 = v264;
        v111 = *sub_D5740();
        v112 = (*(v111 + 400))();

        LOBYTE(v293._countAndFlagsBits) = v112;
        v113 = v262;
        v114 = v261;
        (*(v262 + 16))(v261, v283._countAndFlagsBits, v35);
        v115 = (*(v113 + 80) + 24) & ~*(v113 + 80);
        v116 = swift_allocObject();
        *(v116 + 16) = v110;
        (*(v113 + 32))(v116 + v115, v114, v35);
        v117 = sub_109A8(&qword_129A68, &qword_129A60, &qword_E5D68, &protocol conformance descriptor for Picker<A, B, C>);
        v118 = sub_82780();
        sub_D6150();

        (*(v270 + 8))(v40, v37);
        v293._countAndFlagsBits = v37;
        v293._object = &type metadata for RuleCondition;
        v294._countAndFlagsBits = v117;
        v294._object = v118;
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        v120 = v280;
        sub_D6000();
        (*(v271 + 8))(v44, v41);
        v121 = v281;
        (*(v282 + 16))(v273, v120, v281);
        swift_storeEnumTagMultiPayload();
        v293._countAndFlagsBits = v41;
        v293._object = OpaqueTypeConformance2;
        swift_getOpaqueTypeConformance2();
        v122 = v284;
        sub_D5BF0();
        sub_FBD4(v122, v276, &qword_129A50, &qword_E5D58);
        swift_storeEnumTagMultiPayload();
        sub_66D4(&qword_129A78, &qword_E5D70);
        sub_CB444();
        sub_CB598();
        v123 = v277;
        sub_D5BF0();
        sub_FC3C(v122, &qword_129A50, &qword_E5D58);
        sub_FBD4(v123, v287, &qword_129A40, &qword_E5D50);
        swift_storeEnumTagMultiPayload();
        sub_CB3B8();
        sub_CB6A0();
        sub_D5BF0();
        sub_FC3C(v123, &qword_129A40, &qword_E5D50);
        return (*(v282 + 8))(v120, v121);
      case 6:
        v148 = v37;
        type metadata accessor for MAPreferencesViewProvider();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v150 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
        v293._countAndFlagsBits = 2777980912;
        v293._object = 0xA400000000000000;
        v303._countAndFlagsBits = 0xD00000000000001ALL;
        v303._object = 0x80000000000EA120;
        sub_D66D0(v303);
        v304._countAndFlagsBits = 2777980912;
        v304._object = 0xA400000000000000;
        sub_D66D0(v304);
        v224._countAndFlagsBits = 0xE000000000000000;
        v305._countAndFlagsBits = 0xD00000000000001ALL;
        v305._object = 0x80000000000EA120;
        v314.value._countAndFlagsBits = 0;
        v314.value._object = 0;
        v151.super.isa = v150;
        v152 = sub_D4E80(v305, v314, v151, v293, 0, v224);
        v154 = v153;

        v293._countAndFlagsBits = v152;
        v293._object = v154;
        sub_DFAC();
        v155 = sub_D5F50();
        v157 = v156;
        v158 = v273;
        *v273 = v155;
        v158[1] = v156;
        LOBYTE(v154) = v159 & 1;
        *(v158 + 16) = v159 & 1;
        v158[3] = v160;
        v283._countAndFlagsBits = v160;
        swift_storeEnumTagMultiPayload();
        sub_166E0(v155, v157, v154);
        v161 = sub_109A8(&qword_129A68, &qword_129A60, &qword_E5D68, &protocol conformance descriptor for Picker<A, B, C>);
        v162 = sub_82780();

        v293._countAndFlagsBits = v148;
        v293._object = &type metadata for RuleCondition;
        v294._countAndFlagsBits = v161;
        v294._object = v162;
        v163 = swift_getOpaqueTypeConformance2();
        v293._countAndFlagsBits = v41;
        v293._object = v163;
        swift_getOpaqueTypeConformance2();
        v164 = v284;
        sub_D5BF0();
        sub_FBD4(v164, v276, &qword_129A50, &qword_E5D58);
        swift_storeEnumTagMultiPayload();
        sub_66D4(&qword_129A78, &qword_E5D70);
        sub_CB444();
        sub_CB598();
        v165 = v277;
        sub_D5BF0();
        sub_FC3C(v164, &qword_129A50, &qword_E5D58);
        sub_FBD4(v165, v287, &qword_129A40, &qword_E5D50);
        swift_storeEnumTagMultiPayload();
        sub_CB3B8();
        sub_CB6A0();
        sub_D5BF0();
        sub_F16C(v155, v157, v154);

        v94 = v165;
        v95 = &qword_129A40;
        v96 = &qword_E5D50;
        break;
      case 7:
        type metadata accessor for MAPreferencesViewProvider();
        v78 = swift_getObjCClassFromMetadata();
        v79 = [objc_opt_self() bundleForClass:v78];
        v293._countAndFlagsBits = 2777980912;
        v293._object = 0xA400000000000000;
        v297._object = 0x80000000000EA100;
        v297._countAndFlagsBits = 0xD000000000000017;
        sub_D66D0(v297);
        v298._countAndFlagsBits = 2777980912;
        v298._object = 0xA400000000000000;
        sub_D66D0(v298);
        v224._countAndFlagsBits = 0xE000000000000000;
        v299._object = 0x80000000000EA100;
        v299._countAndFlagsBits = 0xD000000000000017;
        v312.value._countAndFlagsBits = 0;
        v312.value._object = 0;
        v80.super.isa = v79;
        v81 = sub_D4E80(v299, v312, v80, v293, 0, v224);
        v83 = v82;

        v293._countAndFlagsBits = v81;
        v293._object = v83;
        sub_DFAC();
        v84 = sub_D5F50();
        v86 = v85;
        v290._countAndFlagsBits = v84;
        v290._object = v85;
        LOBYTE(v83) = v87 & 1;
        v291._countAndFlagsBits = v87 & 1;
        v291._object = v88;
        v292 = 0;
        sub_166E0(v84, v85, v87 & 1);

        sub_66D4(&qword_129A88, &qword_E5D78);
        sub_CB624();
        sub_D5BF0();
        v89 = v295;
        v90 = v296;
        v91 = v294;
        v92 = v276;
        *v276 = v293;
        v92[1] = v91;
        LOBYTE(v92[2]._countAndFlagsBits) = v89;
        BYTE1(v92[2]._countAndFlagsBits) = v90;
        swift_storeEnumTagMultiPayload();
        sub_66D4(&qword_129A78, &qword_E5D70);
        sub_CB444();
        sub_CB598();
        v93 = v277;
        sub_D5BF0();
        sub_FBD4(v93, v287, &qword_129A40, &qword_E5D50);
        swift_storeEnumTagMultiPayload();
        sub_CB3B8();
        sub_CB6A0();
        sub_D5BF0();
        sub_F16C(v84, v86, v83);

        v94 = v93;
        v95 = &qword_129A40;
        v96 = &qword_E5D50;
        break;
      default:
LABEL_15:
        swift_storeEnumTagMultiPayload();
        sub_CBBFC();
        v124 = v266;
        sub_D5BF0();
        sub_FBD4(v124, v280, &qword_129B18, &qword_E5DC8);
        swift_storeEnumTagMultiPayload();
        sub_CB72C();
        sub_CBB70();
        v125 = v281;
        sub_D5BF0();
        sub_FC3C(v124, &qword_129B18, &qword_E5DC8);
        v126 = &qword_129A98;
        v127 = &qword_E5D80;
        sub_FBD4(v125, v287, &qword_129A98, &qword_E5D80);
        swift_storeEnumTagMultiPayload();
        sub_CB3B8();
        sub_CB6A0();
        sub_D5BF0();
        v94 = v125;
LABEL_36:
        v95 = v126;
        v96 = v127;
        return sub_FC3C(v94, v95, v96);
    }

    return sub_FC3C(v94, v95, v96);
  }

  if (v284 <= 9u)
  {
    if (v284 == 8)
    {
      swift_getWitnessTable();
      v128 = *sub_D5740();
      v129 = (*(v128 + 352))();

      v130 = v129 & 0xFB;
      type metadata accessor for MAPreferencesViewProvider();
      v131 = swift_getObjCClassFromMetadata();
      v132 = [objc_opt_self() bundleForClass:v131];
      v293._countAndFlagsBits = 2777980912;
      v293._object = 0xA400000000000000;
      if (v130)
      {
        v300._countAndFlagsBits = 0xD000000000000024;
        v300._object = 0x80000000000EA0A0;
        sub_D66D0(v300);
        v301._countAndFlagsBits = 2777980912;
        v301._object = 0xA400000000000000;
        sub_D66D0(v301);
        v224._countAndFlagsBits = 0xE000000000000000;
        v302._countAndFlagsBits = 0xD000000000000024;
        v302._object = 0x80000000000EA0A0;
        v313.value._countAndFlagsBits = 0;
        v313.value._object = 0;
        v133.super.isa = v132;
        v134 = sub_D4E80(v302, v313, v133, v293, 0, v224);
        v136 = v135;

        v293._countAndFlagsBits = v134;
        v293._object = v136;
        sub_DFAC();
        v290._countAndFlagsBits = sub_D5F50();
        v290._object = v138;
        v291._countAndFlagsBits = v137 & 1;
        v291._object = v139;
        LOBYTE(v292) = 1;
      }

      else
      {
        v306._countAndFlagsBits = 0xD000000000000025;
        v306._object = 0x80000000000EA0D0;
        sub_D66D0(v306);
        v307._countAndFlagsBits = 2777980912;
        v307._object = 0xA400000000000000;
        sub_D66D0(v307);
        v224._countAndFlagsBits = 0xE000000000000000;
        v308._countAndFlagsBits = 0xD000000000000025;
        v308._object = 0x80000000000EA0D0;
        v315.value._countAndFlagsBits = 0;
        v315.value._object = 0;
        v166.super.isa = v132;
        v167 = sub_D4E80(v308, v315, v166, v293, 0, v224);
        v169 = v168;

        v293._countAndFlagsBits = v167;
        v293._object = v169;
        sub_DFAC();
        v290._countAndFlagsBits = sub_D5F50();
        v290._object = v170;
        v291._countAndFlagsBits = v171 & 1;
        v291._object = v172;
        LOBYTE(v292) = 0;
      }

      sub_D5BF0();
      v290 = v293;
      v291 = v294;
      LOBYTE(v292) = v295;
      HIBYTE(v292) = 1;
      v173 = v293;
      v174 = v294;
      sub_71878(v293._countAndFlagsBits, v293._object, v294._countAndFlagsBits, v294._object);
      sub_71878(v173._countAndFlagsBits, v173._object, v174._countAndFlagsBits, v174._object);
      sub_66D4(&qword_129A88, &qword_E5D78);
      sub_CB624();
      sub_D5BF0();
      v175 = v295;
      v176 = v296;
      v177 = v294;
      v178 = v276;
      *v276 = v293;
      v178[1] = v177;
      LOBYTE(v178[2]._countAndFlagsBits) = v175;
      BYTE1(v178[2]._countAndFlagsBits) = v176;
      swift_storeEnumTagMultiPayload();
      sub_66D4(&qword_129A78, &qword_E5D70);
      sub_CB444();
      sub_CB598();
      v179 = v277;
      sub_D5BF0();
      sub_FBD4(v179, v287, &qword_129A40, &qword_E5D50);
      swift_storeEnumTagMultiPayload();
      sub_CB3B8();
      sub_CB6A0();
      sub_D5BF0();
      sub_718B4(v173._countAndFlagsBits, v173._object, v174._countAndFlagsBits, v174._object);
      sub_718B4(v173._countAndFlagsBits, v173._object, v174._countAndFlagsBits, v174._object);
      v94 = v179;
      v95 = &qword_129A40;
      v96 = &qword_E5D50;
      return sub_FC3C(v94, v95, v96);
    }

    if (v284 == 9)
    {
      v284 = sub_D5B50();
      v277 = v51;
      LODWORD(v275) = v52;
      v276 = v53;
      v54 = v35;
      v55 = *(v35 + 48);
      countAndFlagsBits = v283._countAndFlagsBits;
      LODWORD(v274) = *(v283._countAndFlagsBits + v55 + 16);
      v57 = *(v54 + 16);
      swift_getWitnessTable();
      v58 = sub_D5750();
      __chkstk_darwin(v58);
      swift_getKeyPath();
      sub_D5880();

      v290 = v293;
      LOBYTE(v291._countAndFlagsBits) = v294._countAndFlagsBits;
      sub_66D4(&qword_129C10, &qword_E6048);
      sub_CC918();
      sub_CCA70(&qword_129C20, &qword_129C10, &qword_E6048, &protocol conformance descriptor for <> ForEach<A, B, C>);
      v59 = v248;
      sub_D62B0();
      v60 = *sub_D5740();
      v61 = (*(v60 + 400))();

      LOBYTE(v293._countAndFlagsBits) = v61;
      v62 = v262;
      v63 = v261;
      (*(v262 + 16))(v261, countAndFlagsBits, v54);
      v64 = (*(v62 + 80) + 24) & ~*(v62 + 80);
      v65 = swift_allocObject();
      *(v65 + 16) = v57;
      (*(v62 + 32))(v65 + v64, v63, v54);
      v66 = sub_109A8(&qword_129AC0, &qword_129AB8, &qword_E5D98, &protocol conformance descriptor for Picker<A, B, C>);
      v67 = sub_82780();
      v68 = v249;
      v69 = v267;
      sub_D6150();

      (*(v250 + 8))(v59, v69);
      v293._countAndFlagsBits = v69;
      v293._object = &type metadata for RuleCondition;
      v294._countAndFlagsBits = v66;
      v294._object = v67;
      v70 = swift_getOpaqueTypeConformance2();
      v71 = v252;
      v72 = v268;
      sub_D6000();
      (*(v251 + 8))(v68, v72);
      v73 = v253;
      v74 = v270;
      (*(v253 + 16))(v271, v71, v270);
      swift_storeEnumTagMultiPayload();
      v293._countAndFlagsBits = v72;
      v293._object = v70;
      swift_getOpaqueTypeConformance2();
      sub_CC180(&qword_129AC8, &qword_129AD0, &qword_E5DA0, sub_CB8AC);
      v75 = v272;
      sub_D5BF0();
      sub_FBD4(v75, v280, &qword_129AA8, &qword_E5D88);
      swift_storeEnumTagMultiPayload();
      sub_CB72C();
      sub_CBB70();
      v76 = v281;
      sub_D5BF0();
      sub_FC3C(v75, &qword_129AA8, &qword_E5D88);
      sub_FBD4(v76, v287, &qword_129A98, &qword_E5D80);
      swift_storeEnumTagMultiPayload();
      sub_CB3B8();
      sub_CB6A0();
      sub_D5BF0();
      sub_FC3C(v76, &qword_129A98, &qword_E5D80);
      return (*(v73 + 8))(v71, v74);
    }

    goto LABEL_15;
  }

  if (v284 == 10)
  {
    v140 = *(v283._countAndFlagsBits + *(v35 + 48));
    swift_getWitnessTable();
    v141 = *sub_D5740();
    v142 = (*(v141 + 352))();

    if ((v142 & 0xFB) == 0)
    {
      v180 = v259;
      (*(v257 + 56))(v259, 1, 1, v258);
LABEL_35:
      v126 = &qword_129AD0;
      v127 = &qword_E5DA0;
      sub_FBD4(v180, v271, &qword_129AD0, &qword_E5DA0);
      swift_storeEnumTagMultiPayload();
      v219 = sub_109A8(&qword_129AC0, &qword_129AB8, &qword_E5D98, &protocol conformance descriptor for Picker<A, B, C>);
      v220 = sub_82780();
      v293._countAndFlagsBits = v267;
      v293._object = &type metadata for RuleCondition;
      v294._countAndFlagsBits = v219;
      v294._object = v220;
      v221 = swift_getOpaqueTypeConformance2();
      v293._countAndFlagsBits = v268;
      v293._object = v221;
      swift_getOpaqueTypeConformance2();
      sub_CC180(&qword_129AC8, &qword_129AD0, &qword_E5DA0, sub_CB8AC);
      v222 = v272;
      sub_D5BF0();
      sub_FBD4(v222, v280, &qword_129AA8, &qword_E5D88);
      swift_storeEnumTagMultiPayload();
      sub_CB72C();
      sub_CBB70();
      v223 = v281;
      sub_D5BF0();
      sub_FC3C(v222, &qword_129AA8, &qword_E5D88);
      sub_FBD4(v223, v287, &qword_129A98, &qword_E5D80);
      swift_storeEnumTagMultiPayload();
      sub_CB3B8();
      sub_CB6A0();
      sub_D5BF0();
      sub_FC3C(v223, &qword_129A98, &qword_E5D80);
      v94 = v180;
      goto LABEL_36;
    }

    v143 = *sub_D5740();
    v144 = (*(v143 + 352))();

    v145 = 0;
    v146 = v144;
    v147 = 0xE000000000000000;
    if (v146 > 3)
    {
      if (v146 == 6)
      {
LABEL_32:
        v188 = "RULES.FORM.PLACEHOLDER.EMAILADDRESS";
        goto LABEL_33;
      }

      if (v146 != 4)
      {
LABEL_34:
        type metadata accessor for MAPreferencesViewProvider();
        v189 = swift_getObjCClassFromMetadata();
        v190 = [objc_opt_self() bundleForClass:v189];
        v293._countAndFlagsBits = 2777980912;
        v293._object = 0xA400000000000000;
        v309._countAndFlagsBits = v145;
        v309._object = v147;
        sub_D66D0(v309);
        v310._countAndFlagsBits = 2777980912;
        v310._object = 0xA400000000000000;
        sub_D66D0(v310);
        v224._countAndFlagsBits = 0xE000000000000000;
        v311._countAndFlagsBits = v145;
        v311._object = v147;
        v316.value._countAndFlagsBits = 0;
        v316.value._object = 0;
        v191.super.isa = v190;
        v192 = sub_D4E80(v311, v316, v191, v293, 0, v224);
        v194 = v193;

        v195 = sub_D5750();
        v284 = v140;
        __chkstk_darwin(v195);
        swift_getKeyPath();
        sub_D5880();

        v290._countAndFlagsBits = v192;
        v290._object = v194;
        sub_DFAC();
        v196 = v230;
        sub_D6410();
        sub_109A8(&qword_121460, &qword_121420, &qword_DA840, &protocol conformance descriptor for TextField<A>);
        v197 = v229;
        v198 = v239;
        sub_D5FF0();
        (*(v235 + 8))(v196, v198);
        KeyPath = swift_getKeyPath();
        v200 = sub_D65F0();
        v202 = v201;
        v203 = v231;
        (*(v234 + 32))(v231, v197, v236);
        v204 = v238;
        v205 = (v203 + *(v238 + 36));
        *v205 = KeyPath;
        v205[1] = v200;
        v205[2] = v202;
        v206 = sub_CB9F4();
        v207 = v232;
        sub_D6050();
        sub_FC3C(v203, &qword_129AF8, &qword_E5DC0);
        v293._countAndFlagsBits = v204;
        v293._object = v206;
        v208 = swift_getOpaqueTypeConformance2();
        v209 = v233;
        v210 = v242;
        sub_D6080();
        (*(v237 + 8))(v207, v210);
        v293._countAndFlagsBits = v210;
        v293._object = v208;
        swift_getOpaqueTypeConformance2();
        v211 = v245;
        v212 = v241;
        sub_D6000();
        (*(v240 + 8))(v209, v212);
        v213 = sub_D5750();
        __chkstk_darwin(v213);
        swift_getKeyPath();
        sub_D5880();

        v283 = v293;
        v214 = v294;
        sub_D5740();

        v215 = v244;
        (*(v246 + 32))(v244, v211, v247);
        v216 = v258;
        v217 = v215 + *(v258 + 36);
        *v217 = v283;
        *(v217 + 16) = v214;
        *(v217 + 32) = 90;
        v218 = v243;
        sub_CC7F8(v215, v243);
        v180 = v259;
        sub_CC7F8(v218, v259);
        (*(v257 + 56))(v180, 0, 1, v216);
        goto LABEL_35;
      }
    }

    else if (v146)
    {
      if (v146 != 2)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    v188 = "RULES.FORM.PLACEHOLDER.CHOOSEFOLDER";
LABEL_33:
    v147 = ((v188 - 32) | 0x8000000000000000);
    v145 = 0xD000000000000023;
    goto LABEL_34;
  }

  if (v284 != 11)
  {
    goto LABEL_15;
  }

  v97 = v283._countAndFlagsBits;
  v98 = *(v35 + 16);
  swift_getWitnessTable();
  v99 = *sub_D5740();
  v100 = (*(v99 + 352))();

  if ((v100 & 0xFB) != 0)
  {
    v102 = v256;
    (*(v254 + 56))(v256, 1, 1, v255);
  }

  else
  {
    __chkstk_darwin(v101);
    sub_CA2D4(v97, v98, v181, v182, v227);
    sub_66D4(&qword_129BF8, &qword_E5FD0);
    sub_109A8(&qword_129C00, &qword_129BF8, &qword_E5FD0, &protocol conformance descriptor for HStack<A>);
    sub_CC6E0(&qword_129C08, type metadata accessor for MSFolderListSelectionView, &unk_E12B8);
    v183 = v226;
    sub_D5810();
    v184 = v254;
    v102 = v256;
    v185 = v255;
    (*(v254 + 32))(v256, v183, v255);
    (*(v184 + 56))(v102, 0, 1, v185);
  }

  sub_FBD4(v102, v265, &qword_129B28, &qword_E5DD0);
  swift_storeEnumTagMultiPayload();
  sub_CBBFC();
  v186 = v266;
  sub_D5BF0();
  sub_FBD4(v186, v280, &qword_129B18, &qword_E5DC8);
  swift_storeEnumTagMultiPayload();
  sub_CB72C();
  sub_CBB70();
  v187 = v281;
  sub_D5BF0();
  sub_FC3C(v186, &qword_129B18, &qword_E5DC8);
  sub_FBD4(v187, v287, &qword_129A98, &qword_E5D80);
  swift_storeEnumTagMultiPayload();
  sub_CB3B8();
  sub_CB6A0();
  sub_D5BF0();
  sub_FC3C(v187, &qword_129A98, &qword_E5D80);
  return sub_FC3C(v102, &qword_129B28, &qword_E5DD0);
}

uint64_t sub_C9840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v37 = a5;
  v30 = a2;
  v7 = type metadata accessor for MSRuleBaseView(0, a2, a3, a4);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v31 = v29 - v9;
  v12 = type metadata accessor for MSRuleBaseView.RuleFormElement(255, a2, v10, v11);
  v13 = sub_D67E0();
  v35 = v13;
  v14 = sub_6110(&qword_129A30, &qword_E5D48);
  v34 = v14;
  WitnessTable = swift_getWitnessTable();
  v33 = WitnessTable;
  v32 = swift_getWitnessTable();
  v40 = v13;
  v41 = v12;
  v42 = v14;
  v43 = WitnessTable;
  v44 = v32;
  v16 = sub_D6350();
  v36 = *(v16 - 8);
  v17 = __chkstk_darwin(v16);
  v19 = v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = v29 - v20;
  v40 = *(a1 + *(v7 + 44));
  v22 = v30;
  v38 = v30;
  v29[1] = swift_getKeyPath();
  v23 = v31;
  (*(v8 + 16))(v31, a1, v7);
  v24 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v22;
  (*(v8 + 32))(v25 + v24, v23, v7);
  v26 = sub_CB32C();

  sub_D6330();
  v39 = v26;
  swift_getWitnessTable();
  sub_5ADA8();
  v27 = *(v36 + 8);
  v27(v19, v16);
  sub_5ADA8();
  return (v27)(v21, v16);
}

uint64_t sub_C9B94()
{
  swift_getKeyPath();
  sub_66D4(&qword_1276C8, qword_E0968);
  sub_109A8(&qword_129C40, &qword_1276C8, qword_E0968, &protocol conformance descriptor for [A]);
  sub_CCA1C();
  return sub_D6330();
}

uint64_t sub_C9C80@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = 0xD00000000000001ELL;
  v4 = *a1;
  v5 = "S.CONDITION.SUBJECT";
  v6 = 0xD000000000000022;
  v7 = "S.CONDITION.LISTID";
  v8 = 0xD000000000000023;
  if (v4 != 4)
  {
    v8 = 0xD000000000000022;
    v7 = "RULES.FORM.LABEL.CONDITION";
  }

  if (v4 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = "RULES.RULEOPTIONS.CONDITION.CC";
  if (v4 != 1)
  {
    v9 = "S.CONDITION.TOORCC";
  }

  if (*a1)
  {
    v10 = v9;
  }

  else
  {
    v3 = 0xD000000000000020;
    v10 = "RULES.RULEOPTIONS.CONDITION.TO";
  }

  if (*a1 <= 2u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v6;
  }

  if (*a1 <= 2u)
  {
    v12 = v10;
  }

  else
  {
    v12 = v5;
  }

  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v21._object = (v12 | 0x8000000000000000);
  v21._countAndFlagsBits = v11;
  sub_D66D0(v21);
  v22._countAndFlagsBits = 2777980912;
  v22._object = 0xA400000000000000;
  sub_D66D0(v22);
  v25._countAndFlagsBits = 2777980912;
  v20._countAndFlagsBits = 0xE000000000000000;
  v23._object = (v12 | 0x8000000000000000);
  v23._countAndFlagsBits = v11;
  v24.value._countAndFlagsBits = 0;
  v24.value._object = 0;
  v15.super.isa = v14;
  v25._object = 0xA400000000000000;
  sub_D4E80(v23, v24, v15, v25, 0, v20);

  sub_DFAC();
  result = sub_D5F50();
  *a2 = result;
  *(a2 + 8) = v17;
  *(a2 + 16) = v18 & 1;
  *(a2 + 24) = v19;
  return result;
}

uint64_t sub_C9E30()
{
  swift_getKeyPath();
  sub_66D4(&qword_1276B0, qword_E0888);
  sub_109A8(&qword_129C48, &qword_1276B0, qword_E0888, &protocol conformance descriptor for [A]);
  sub_CC918();
  return sub_D6330();
}

uint64_t sub_C9F1C@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = "S.ACTION.MOVETOTRASH";
  v5 = "S.ACTION.FORWARDTOANDMARKREAD";
  v6 = 0xD00000000000002FLL;
  if (v3 != 5)
  {
    v6 = 0xD00000000000002DLL;
    v5 = "S.CONDITION.FROM";
  }

  v7 = "OLDERANDMARKREAD";
  v8 = 0xD000000000000030;
  if (v3 == 3)
  {
    v8 = 0xD000000000000021;
  }

  else
  {
    v7 = "S.ACTION.MOVETOTRASHANDMARKREAD";
  }

  if (*a1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = "S.ACTION.FORWARDTO";
  if (v3 == 1)
  {
    v10 = 0xD000000000000024;
  }

  else
  {
    v10 = 0xD000000000000022;
  }

  if (v3 != 1)
  {
    v9 = "S.ACTION.MARKREAD";
  }

  if (*a1)
  {
    v4 = v9;
  }

  else
  {
    v10 = 0xD000000000000025;
  }

  if (*a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if (*a1 <= 2u)
  {
    v12 = v4;
  }

  else
  {
    v12 = v5;
  }

  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v21._object = (v12 | 0x8000000000000000);
  v21._countAndFlagsBits = v11;
  sub_D66D0(v21);
  v22._countAndFlagsBits = 2777980912;
  v22._object = 0xA400000000000000;
  sub_D66D0(v22);
  v25._countAndFlagsBits = 2777980912;
  v20._countAndFlagsBits = 0xE000000000000000;
  v23._object = (v12 | 0x8000000000000000);
  v23._countAndFlagsBits = v11;
  v24.value._countAndFlagsBits = 0;
  v24.value._object = 0;
  v15.super.isa = v14;
  v25._object = 0xA400000000000000;
  sub_D4E80(v23, v24, v15, v25, 0, v20);

  sub_DFAC();
  result = sub_D5F50();
  *a2 = result;
  *(a2 + 8) = v17;
  *(a2 + 16) = v18 & 1;
  *(a2 + 24) = v19;
  return result;
}

uint64_t sub_CA0F0(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a2;
  type metadata accessor for MSRuleBaseView(0, a4, a3, a4);
  swift_getWitnessTable();
  v5 = sub_D5740();
  v6 = "RULES.FORM.PLACEHOLDER.LISTID";
  if (v4 == 4)
  {
    v7 = 0xD00000000000001ELL;
  }

  else
  {
    v7 = 0xD00000000000001DLL;
  }

  if (v4 != 4)
  {
    v6 = "ge";
  }

  if (v4 >= 4)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0xD000000000000029;
  }

  if (v4 >= 4)
  {
    v9 = v6;
  }

  else
  {
    v9 = "RULES.FORM.PLACEHOLDER.SUBJECT";
  }

  v10 = v5;
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v20._object = (v9 | 0x8000000000000000);
  v20._countAndFlagsBits = v8;
  sub_D66D0(v20);
  v21._countAndFlagsBits = 2777980912;
  v21._object = 0xA400000000000000;
  sub_D66D0(v21);
  v24._countAndFlagsBits = 2777980912;
  v18._countAndFlagsBits = 0xE000000000000000;
  v22._object = (v9 | 0x8000000000000000);
  v22._countAndFlagsBits = v8;
  v23.value._countAndFlagsBits = 0;
  v23.value._object = 0;
  v13.super.isa = v12;
  v24._object = 0xA400000000000000;
  v14 = sub_D4E80(v22, v23, v13, v24, 0, v18);
  v16 = v15;

  (*(*v10 + 600))(v14, v16);
}

uint64_t sub_CA2D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v39 = a1;
  v41 = a5;
  v6 = type metadata accessor for MSRuleBaseView(0, a2, a3, a4);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v38 - v8;
  swift_getWitnessTable();
  v10 = *sub_D5740();
  (*(v10 + 1048))(v50);

  v40 = *(sub_D5740() + OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel_folderList);

  v11 = *sub_D5740();
  v45 = (*(v11 + 544))();
  v44 = v12;

  v13 = *sub_D5740();
  v43 = (*(v13 + 1000))();
  v42 = v14;

  v15 = *sub_D5740();
  v16 = (*(v15 + 1024))();
  v18 = v17;

  (*(v7 + 16))(v9, v39, v6);
  v19 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  v21 = v41;
  (*(v7 + 32))(v20 + v19, v9, v6);
  *v21 = swift_getKeyPath();
  sub_66D4(&qword_1211E8, &qword_D8DA0);
  swift_storeEnumTagMultiPayload();
  sub_2A5C4(v50, v49);
  v22 = sub_38BFC(v49, v49[3]);
  __chkstk_darwin(v22);
  v24 = (&v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24);
  v26 = *v24;
  v27 = type metadata accessor for MSRepositoryDefault();
  v48[3] = v27;
  v48[4] = &off_1188F0;
  v48[0] = v26;
  v28 = v40;
  type metadata accessor for MSFolderListSelectionView.ViewModel();
  v29 = swift_allocObject();
  v30 = sub_38BFC(v48, v27);
  __chkstk_darwin(v30);
  v32 = (&v38 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v33 + 16))(v32);
  v34 = *v32;
  v47[3] = v27;
  v47[4] = &off_1188F0;
  v47[0] = v34;
  *(v29 + 112) = &_swiftEmptySetSingleton;
  *(v29 + 152) = 0;
  *(v29 + 16) = v28;
  sub_2A5C4(v47, v29 + 72);
  v35 = v44;
  *(v29 + 24) = v45;
  *(v29 + 32) = v35;
  *(v29 + 40) = sub_CCB74;
  *(v29 + 48) = v20;
  v36 = v42;
  *(v29 + 120) = v43;
  *(v29 + 128) = v36;
  *(v29 + 136) = v16;
  *(v29 + 144) = v18;

  sub_D54F0();
  if (v46)
  {

    sub_67D4(v50);
    sub_67D4(v47);
    *(v29 + 56) = xmmword_DBAE0;
  }

  else
  {
    *(v29 + 56) = 0;
    *(v29 + 64) = 0;
    sub_8CDF0();

    sub_67D4(v50);
    sub_67D4(v47);
  }

  sub_67D4(v48);
  sub_67D4(v49);
  result = type metadata accessor for MSFolderListSelectionView(0);
  *(v21 + *(result + 20)) = v29;
  return result;
}

uint64_t sub_CA8E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MSRuleBaseView(0, a4, a3, a4);
  swift_getWitnessTable();
  v6 = *(*sub_D5740() + 552);

  v6(a1, a2);
}

uint64_t sub_CA9D4@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_D5B40();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v5 = sub_66D4(&qword_129C50, &qword_E60D0);
  return sub_CAA3C(a2, (a3 + *(v5 + 44)));
}

uint64_t sub_CAA3C@<X0>(uint64_t a2@<X1>, void *a3@<X8>)
{
  v42 = a3;
  v4 = sub_66D4(&qword_129C58, &qword_E60D8);
  v5 = v4 - 8;
  v6 = __chkstk_darwin(v4);
  v41 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v39 - v8;
  type metadata accessor for MSRuleBaseView(0, a2, v10, v11);
  swift_getWitnessTable();
  v12 = *sub_D5740();
  v13 = (*(v12 + 1232))();
  v15 = v14;

  *&v44 = v13;
  *(&v44 + 1) = v15;
  sub_DFAC();
  v16 = sub_D5F50();
  v18 = v17;
  v20 = v19;
  v40 = v21;
  KeyPath = swift_getKeyPath();
  v23 = swift_getKeyPath();
  v24 = v20 & 1;
  LOBYTE(v44) = v20 & 1;
  v43 = 0;
  v25 = &v9[*(sub_66D4(&qword_1266A0, &qword_E32E0) + 36)];
  v26 = *(sub_66D4(&qword_1214A8, &qword_D9280) + 28);
  v27 = enum case for Text.TruncationMode.tail(_:);
  v28 = sub_D5EF0();
  (*(*(v28 - 8) + 104))(v25 + v26, v27, v28);
  *v25 = swift_getKeyPath();
  *v9 = v16;
  *(v9 + 1) = v18;
  v9[16] = v24;
  *(v9 + 17) = *v47;
  *(v9 + 5) = *&v47[3];
  *(v9 + 3) = v40;
  *(v9 + 4) = KeyPath;
  *(v9 + 5) = 0x3FE999999999999ALL;
  *(v9 + 6) = v23;
  *(v9 + 7) = 1;
  v9[64] = 0;
  v29 = sub_D61B0();
  v30 = swift_getKeyPath();
  v31 = &v9[*(sub_66D4(&qword_126698, &qword_DEFA0) + 36)];
  *v31 = v30;
  v31[1] = v29;
  sub_D63F0();
  sub_D57C0();
  v32 = &v9[*(v5 + 44)];
  v33 = v45;
  *v32 = v44;
  *(v32 + 1) = v33;
  *(v32 + 2) = v46;
  v34 = v41;
  sub_FBD4(v9, v41, &qword_129C58, &qword_E60D8);
  v35 = v42;
  *v42 = 0;
  *(v35 + 8) = 1;
  v36 = v35;
  v37 = sub_66D4(&qword_129C60, &qword_E61A8);
  sub_FBD4(v34, v36 + *(v37 + 48), &qword_129C58, &qword_E60D8);
  sub_FC3C(v9, &qword_129C58, &qword_E60D8);
  return sub_FC3C(v34, &qword_129C58, &qword_E60D8);
}

unint64_t sub_CADBC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1142A8;
  v6._object = a2;
  v4 = sub_D6AF0(v3, v6);

  if (v4 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_CAE0C(char a1)
{
  result = 0x656D614E656C7552;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
    case 5:
    case 6:
      result = 0x6F697469646E6F43;
      break;
    case 3:
    case 4:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0x614C6E6F69746341;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0x654D6E6F69746341;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0xD000000000000016;
      break;
    case 12:
      result = 0x6E776F6E4B6E55;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_CAFB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_D6C30();
}

uint64_t sub_CB02C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hashValue.getter(a1, a2, WitnessTable, &protocol witness table for String);
}

uint64_t sub_CB098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hash(into:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_CB108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>._rawHashValue(seed:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

unint64_t sub_CB178@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_CADBC(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_CB1B0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_CAE0C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_CB1E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_CAE08();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_CB274()
{
  result = qword_129A20;
  if (!qword_129A20)
  {
    sub_6110(&qword_129A18, &qword_E5D40);
    sub_CB32C();
    sub_109A8(&qword_129B40, &qword_129B48, &qword_E5DE0, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129A20);
  }

  return result;
}

unint64_t sub_CB32C()
{
  result = qword_129A28;
  if (!qword_129A28)
  {
    sub_6110(&qword_129A30, &qword_E5D48);
    sub_CB3B8();
    sub_CB6A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129A28);
  }

  return result;
}

unint64_t sub_CB3B8()
{
  result = qword_129A38;
  if (!qword_129A38)
  {
    sub_6110(&qword_129A40, &qword_E5D50);
    sub_CB444();
    sub_CB598();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129A38);
  }

  return result;
}

unint64_t sub_CB444()
{
  result = qword_129A48;
  if (!qword_129A48)
  {
    sub_6110(&qword_129A50, &qword_E5D58);
    sub_6110(&qword_129A58, &qword_E5D60);
    sub_6110(&qword_129A60, &qword_E5D68);
    sub_109A8(&qword_129A68, &qword_129A60, &qword_E5D68, &protocol conformance descriptor for Picker<A, B, C>);
    sub_82780();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129A48);
  }

  return result;
}

unint64_t sub_CB598()
{
  result = qword_129A70;
  if (!qword_129A70)
  {
    sub_6110(&qword_129A78, &qword_E5D70);
    sub_CB624();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129A70);
  }

  return result;
}

unint64_t sub_CB624()
{
  result = qword_129A80;
  if (!qword_129A80)
  {
    sub_6110(&qword_129A88, &qword_E5D78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129A80);
  }

  return result;
}

unint64_t sub_CB6A0()
{
  result = qword_129A90;
  if (!qword_129A90)
  {
    sub_6110(&qword_129A98, &qword_E5D80);
    sub_CB72C();
    sub_CBB70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129A90);
  }

  return result;
}

unint64_t sub_CB72C()
{
  result = qword_129AA0;
  if (!qword_129AA0)
  {
    sub_6110(&qword_129AA8, &qword_E5D88);
    sub_6110(&qword_129AB0, &qword_E5D90);
    sub_6110(&qword_129AB8, &qword_E5D98);
    sub_109A8(&qword_129AC0, &qword_129AB8, &qword_E5D98, &protocol conformance descriptor for Picker<A, B, C>);
    sub_82780();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_CC180(&qword_129AC8, &qword_129AD0, &qword_E5DA0, sub_CB8AC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129AA0);
  }

  return result;
}

unint64_t sub_CB8AC()
{
  result = qword_129AD8;
  if (!qword_129AD8)
  {
    sub_6110(&qword_129AE0, &qword_E5DA8);
    sub_6110(&qword_129AE8, &qword_E5DB0);
    sub_6110(&qword_129AF0, &qword_E5DB8);
    sub_6110(&qword_129AF8, &qword_E5DC0);
    sub_CB9F4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_CBB1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129AD8);
  }

  return result;
}

unint64_t sub_CB9F4()
{
  result = qword_129B00;
  if (!qword_129B00)
  {
    sub_6110(&qword_129AF8, &qword_E5DC0);
    sub_6110(&qword_121420, &qword_DA840);
    sub_109A8(&qword_121460, &qword_121420, &qword_DA840, &protocol conformance descriptor for TextField<A>);
    swift_getOpaqueTypeConformance2();
    sub_109A8(&qword_121468, &qword_121470, &qword_D91B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129B00);
  }

  return result;
}

unint64_t sub_CBB1C()
{
  result = qword_129B08;
  if (!qword_129B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129B08);
  }

  return result;
}

unint64_t sub_CBB70()
{
  result = qword_129B10;
  if (!qword_129B10)
  {
    sub_6110(&qword_129B18, &qword_E5DC8);
    sub_CBBFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129B10);
  }

  return result;
}

unint64_t sub_CBBFC()
{
  result = qword_129B20;
  if (!qword_129B20)
  {
    sub_6110(&qword_129B28, &qword_E5DD0);
    sub_109A8(&qword_129B30, &qword_129B38, &qword_E5DD8, &protocol conformance descriptor for NavigationLink<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129B20);
  }

  return result;
}

uint64_t sub_CBCB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(type metadata accessor for MSRuleBaseView(0, v5, a3, a4) - 8);
  v7 = v4 + ((*(v6 + 80) + 24) & ~*(v6 + 80));

  return sub_C2504(v7, v5);
}

double sub_CBD2C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  (*(**a1 + 1072))(&v5);
  v3 = v6[0];
  *a2 = v5;
  a2[1] = v3;
  result = *(v6 + 9);
  *(a2 + 25) = *(v6 + 9);
  return result;
}

uint64_t sub_CBD98(__int128 *a1, uint64_t a2)
{
  v2 = a1[1];
  v6 = *a1;
  v7[0] = v2;
  *(v7 + 9) = *(a1 + 25);
  v3 = *(**a2 + 1080);
  sub_FBD4(&v6, &v5, &qword_120EE8, &qword_D8DD0);
  return v3(&v6);
}

uint64_t sub_CBE80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(type metadata accessor for MSRuleBaseView(0, v7, a3, a4) - 8);
  return sub_C2108(v4 + ((*(v8 + 80) + 24) & ~*(v8 + 80)), v7, a1, a2);
}

uint64_t sub_CBF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(type metadata accessor for MSRuleBaseView(0, v5, a3, a4) - 8);
  return sub_C2330(v4 + ((*(v6 + 80) + 24) & ~*(v6 + 80)), v5);
}

unint64_t sub_CC038()
{
  result = qword_129B80;
  if (!qword_129B80)
  {
    sub_6110(&qword_129B50, &qword_E5DE8);
    sub_6110(&qword_121450, &qword_D9150);
    sub_6110(&qword_121448, &qword_D9148);
    sub_6110(&qword_121440, &qword_D9140);
    sub_FDA8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_CBB1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129B80);
  }

  return result;
}

uint64_t sub_CC180(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_6110(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_CC1FC()
{
  result = qword_129B90;
  if (!qword_129B90)
  {
    sub_6110(&qword_129B78, &unk_E5E98);
    sub_CC038();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129B90);
  }

  return result;
}

uint64_t sub_CC294@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 304))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_CC2E8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 312);

  return v4(v2, v3);
}

uint64_t sub_CC37C@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *(v4 + 16);
  v9 = *(type metadata accessor for MSRuleBaseView(0, v7, a2, a3) - 8);
  v10 = (v4 + ((*(v9 + 80) + 24) & ~*(v9 + 80)));

  return sub_C4194(a1, v10, v7, v8, a4);
}

uint64_t sub_CC408@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 448))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_CC45C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 456);

  return v4(v2, v3);
}

uint64_t sub_CC4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for MSRuleBaseView(0, *(v4 + 16), a3, a4);
  v6 = *(*(v5 - 8) + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(*(v5 - 8) + 64);

  sub_66D4(&qword_1211E8, &qword_D8DA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_D57E0();
    (*(*(v9 - 8) + 8))(v4 + v7, v9);
  }

  else
  {
  }

  sub_E0C4(*(v4 + v7 + *(v5 + 48)), *(v4 + v7 + *(v5 + 48) + 8));

  return _swift_deallocObject(v4, v7 + v8, v6 | 7);
}

uint64_t sub_CC648@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *(v4 + 16);
  v8 = *(type metadata accessor for MSRuleBaseView(0, v7, a2, a3) - 8);
  v9 = *(v4 + 24);
  v10 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_C6450(a1, v9, v10, v7, a4);
}

uint64_t sub_CC6E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_CC728@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 496))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_CC77C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 504);

  return v4(v2, v3);
}

uint64_t sub_CC7F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_66D4(&qword_129AE0, &qword_E5DA8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_CC868@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 352))();
  *a2 = result;
  return result;
}

unint64_t sub_CC918()
{
  result = qword_129C18;
  if (!qword_129C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129C18);
  }

  return result;
}

uint64_t sub_CC96C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 400))();
  *a2 = result;
  return result;
}

unint64_t sub_CCA1C()
{
  result = qword_129C30;
  if (!qword_129C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129C30);
  }

  return result;
}

uint64_t sub_CCA70(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_6110(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_CCAD4(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(type metadata accessor for MSRuleBaseView(0, v7, a3, a4) - 8);
  return sub_CA0F0(a1, a2, v4 + ((*(v8 + 80) + 24) & ~*(v8 + 80)), v7);
}

uint64_t sub_CCB74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(type metadata accessor for MSRuleBaseView(0, v7, a3, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 24) & ~*(v8 + 80));

  return sub_CA8E8(a1, a2, v9, v7);
}

uint64_t sub_CCC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for MSRuleBaseView(0, *(v4 + 16), a3, a4);
  v6 = *(*(v5 - 8) + 80);
  v7 = (v6 + 24) & ~v6;
  v8 = *(*(v5 - 8) + 64);
  sub_66D4(&qword_1211E8, &qword_D8DA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_D57E0();
    (*(*(v9 - 8) + 8))(v4 + v7, v9);
  }

  else
  {
  }

  sub_E0C4(*(v4 + v7 + *(v5 + 48)), *(v4 + v7 + *(v5 + 48) + 8));

  return _swift_deallocObject(v4, v7 + v8, v6 | 7);
}

uint64_t sub_CCDE4(uint64_t *a1)
{
  v1 = *a1;
  sub_D5840();
  sub_6110(&qword_129A10, &qword_E5D38);
  type metadata accessor for MSRuleBaseView.RuleFormElement(255, v1, v2, v3);
  sub_D67E0();
  sub_6110(&qword_129A18, &qword_E5D40);
  swift_getWitnessTable();
  sub_D6350();
  sub_CB274();
  swift_getWitnessTable();
  sub_D62A0();
  sub_6110(&qword_129B50, &qword_E5DE8);
  sub_D5C00();
  sub_6110(&qword_129A30, &qword_E5D48);
  swift_getWitnessTable();
  sub_D6350();
  sub_CB32C();
  swift_getWitnessTable();
  sub_D62A0();
  sub_D6930();
  sub_D5C00();
  sub_D5C00();
  sub_D5C00();
  sub_D6350();
  sub_6110(&qword_128BF8, &qword_E5DF0);
  sub_D63B0();
  swift_getTupleTypeMetadata2();
  sub_D6430();
  swift_getWitnessTable();
  sub_D5E70();
  swift_getWitnessTable();
  sub_DFAC();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_6110(&qword_129B58, &qword_E5DF8);
  swift_getOpaqueTypeConformance2();
  sub_109A8(&qword_129B60, &qword_129B58, &qword_E5DF8, &protocol conformance descriptor for TupleToolbarContent<A>);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_D58F0();
  sub_D58D0();
  sub_6110(&qword_121178, &qword_DB0C0);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_E000();
  sub_109A8(&qword_1211D0, &qword_121178, &qword_DB0C0, &protocol conformance descriptor for Button<A>);
  return swift_getOpaqueTypeConformance2();
}

id sub_CD354()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MSRuleUpdateAPI(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MSRuleUpdateAPI(uint64_t a1)
{
  result = qword_129C90;
  if (!qword_129C90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_CD3E0()
{
  v0 = ACAccountDataclassMail;
  v1 = ACAccountDataclassMail;
  return v0;
}

id sub_CD428()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MSUpdateCustomDomainAPIRequest(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MSUpdateCustomDomainAPIRequest(uint64_t a1)
{
  result = qword_129E80;
  if (!qword_129E80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_CD4C8()
{
  v1 = v0;
  v2 = sub_D5340();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v6 = sub_6610(v2, qword_137988);
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_D5320();
  v8 = sub_D68A0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "[Addresses] Edit primary address tapped", v9, 2u);
  }

  (*(v3 + 8))(v5, v2);

  sub_D54F0();

  v32[0] = v27;
  v32[1] = v28;
  v32[2] = v29;
  v32[3] = v30;
  v33 = v31;
  if (*(&v27 + 1))
  {
    v34[0] = *&v32[0];
    v34[1] = *(&v27 + 1);
    v35 = v28;
    v36 = v29;
    v37 = v30;
    v38 = v31;
    v11 = *(v1 + OBJC_IVAR____TtCV18icloudMailSettings15MSAddressesView9ViewModel_defaultEmail);
    v12 = *(v1 + OBJC_IVAR____TtCV18icloudMailSettings15MSAddressesView9ViewModel_defaultEmail + 8);
    sub_2A5C4(v1 + OBJC_IVAR____TtCV18icloudMailSettings15MSAddressesView9ViewModel_repository, &v27);
    v13 = sub_38BFC(&v27, *(&v28 + 1));
    __chkstk_darwin(v13);
    v15 = (v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15);
    v17 = *v15;
    v18 = type metadata accessor for MSRepositoryDefault();
    v26[3] = v18;
    v26[4] = &off_1188F0;
    v26[0] = v17;
    type metadata accessor for MSPrimaryAddressViewModel(0);
    v19 = swift_allocObject();
    v20 = sub_38BFC(v26, v18);
    __chkstk_darwin(v20);
    v22 = (v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v23 + 16))(v22);
    v24 = *v22;

    v25 = sub_CF298(v34, v11, v12, v24, v19);
    sub_D1144(v32);
    sub_67D4(v26);
    sub_67D4(&v27);
    swift_getKeyPath();
    swift_getKeyPath();
    *&v27 = v25;

    return sub_D5580();
  }

  return result;
}

uint64_t sub_CD910(uint64_t a1)
{
  v2 = v1;
  v4 = sub_D5340();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v8 = sub_6610(v4, qword_137988);
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_D5320();
  v10 = sub_D68A0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_0, v9, v10, "[Addresses] Edit custom email domain tapped", v11, 2u);
  }

  (*(v5 + 8))(v7, v4);
  v12 = *(v2 + OBJC_IVAR____TtCV18icloudMailSettings15MSAddressesView9ViewModel_defaultEmail);
  v13 = *(v2 + OBJC_IVAR____TtCV18icloudMailSettings15MSAddressesView9ViewModel_defaultEmail + 8);
  sub_2A5C4(v2 + OBJC_IVAR____TtCV18icloudMailSettings15MSAddressesView9ViewModel_repository, v31);
  v14 = sub_38BFC(v31, v31[3]);
  __chkstk_darwin(v14);
  v16 = (&v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = *v16;
  v19 = type metadata accessor for MSRepositoryDefault();
  v30[3] = v19;
  v30[4] = &off_1188F0;
  v30[0] = v18;
  type metadata accessor for MSCustomEmailDetailViewModel(0);
  v20 = swift_allocObject();
  v21 = sub_38BFC(v30, v19);
  __chkstk_darwin(v21);
  v23 = (&v28 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23);
  v25 = *v23;
  sub_13E98(a1, &v29);

  v26 = sub_CFCE8(a1, v12, v13, v25, v20);
  sub_1409C(a1);
  sub_67D4(v30);
  sub_67D4(v31);
  swift_getKeyPath();
  swift_getKeyPath();
  v29 = v26;

  return sub_D5580();
}

uint64_t sub_CDCF0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_D5340();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v8 = sub_6610(v4, qword_137988);
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_D5320();
  v10 = sub_D68A0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_0, v9, v10, "[Addresses] Edit alias tapped", v11, 2u);
  }

  (*(v5 + 8))(v7, v4);
  v12 = *(v2 + OBJC_IVAR____TtCV18icloudMailSettings15MSAddressesView9ViewModel_defaultEmail);
  v13 = *(v2 + OBJC_IVAR____TtCV18icloudMailSettings15MSAddressesView9ViewModel_defaultEmail + 8);
  sub_2A5C4(v2 + OBJC_IVAR____TtCV18icloudMailSettings15MSAddressesView9ViewModel_repository, v30);
  v14 = sub_38BFC(v30, v30[3]);
  __chkstk_darwin(v14);
  v16 = (v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = *v16;
  v19 = type metadata accessor for MSRepositoryDefault();
  v29[3] = v19;
  v29[4] = &off_1188F0;
  v29[0] = v18;
  type metadata accessor for MSAliasDetailViewModel(0);
  v20 = swift_allocObject();
  v21 = sub_38BFC(v29, v19);
  __chkstk_darwin(v21);
  v23 = (v28 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23);
  v25 = *v23;
  sub_5842C(a1, v28);

  v26 = sub_D06B4(a1, v12, v13, v25, v20);
  sub_584E0(a1);
  sub_67D4(v29);
  sub_67D4(v30);
  swift_getKeyPath();
  swift_getKeyPath();
  v28[0] = v26;

  return sub_D5580();
}

uint64_t sub_CE0BC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  return v1;
}

uint64_t sub_CE1BC()
{
  v1 = v0;
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = objc_opt_self();
  v4 = [v3 bundleForClass:ObjCClassFromMetadata];
  v42._countAndFlagsBits = 0x5F53455341494C41;
  v42._object = 0xEE005245544F4F46;
  sub_D66D0(v42);
  v43._countAndFlagsBits = 2777980912;
  v43._object = 0xA400000000000000;
  sub_D66D0(v43);
  v66._countAndFlagsBits = 2777980912;
  v36._countAndFlagsBits = 0xE000000000000000;
  v44._countAndFlagsBits = 0x5F53455341494C41;
  v44._object = 0xEE005245544F4F46;
  v61.value._countAndFlagsBits = 0;
  v61.value._object = 0;
  v5.super.isa = v4;
  v66._object = 0xA400000000000000;
  v6 = sub_D4E80(v44, v61, v5, v66, 0, v36);

  v41 = v6;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v7 = *(v40 + 16);

  v8 = *(v1 + OBJC_IVAR____TtCV18icloudMailSettings15MSAddressesView9ViewModel_maxAliasCountAllowed);
  v37._object = v3;
  if (v8 >= v7)
  {
    v15 = [v3 bundleForClass:ObjCClassFromMetadata];
    v63.value._countAndFlagsBits = 0xD000000000000011;
    v37._countAndFlagsBits = 0x80000000000EA560;
    v50._object = 0x80000000000EA520;
    v63.value._object = 0x80000000000EA540;
    v50._countAndFlagsBits = 0xD000000000000015;
    v16.super.isa = v15;
    v68._countAndFlagsBits = 0;
    v68._object = 0xE000000000000000;
    sub_D4E80(v50, v63, v16, v68, 0xD00000000000007CLL, v37);

    sub_66D4(&qword_121390, &qword_D9050);
    v17 = swift_allocObject();
    v14 = &unk_DA000;
    *(v17 + 16) = xmmword_DA270;
    *(v17 + 56) = &type metadata for Int;
    *(v17 + 64) = &protocol witness table for Int;
    *(v17 + 32) = v8;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_D5570();

    v18 = *(v40 + 16);

    *(v17 + 96) = &type metadata for Int;
    *(v17 + 104) = &protocol witness table for Int;
    *(v17 + 72) = v18;
    v19 = sub_D65D0();
    v21 = v20;

    v51._countAndFlagsBits = v19;
    v51._object = v21;
    sub_D66D0(v51);

    v52._countAndFlagsBits = 32;
    v52._object = 0xE100000000000000;
    sub_D66D0(v52);
  }

  else
  {
    v9 = [v3 bundleForClass:ObjCClassFromMetadata];
    v45._countAndFlagsBits = 0xD000000000000018;
    v45._object = 0x80000000000EA600;
    sub_D66D0(v45);
    v46._countAndFlagsBits = 2777980912;
    v46._object = 0xA400000000000000;
    sub_D66D0(v46);
    v67._countAndFlagsBits = 2777980912;
    v37._countAndFlagsBits = 0xE000000000000000;
    v47._countAndFlagsBits = 0xD000000000000018;
    v47._object = 0x80000000000EA600;
    v62.value._countAndFlagsBits = 0;
    v62.value._object = 0;
    v10.super.isa = v9;
    v67._object = 0xA400000000000000;
    v11 = sub_D4E80(v47, v62, v10, v67, 0, v37);
    v13 = v12;

    v48._countAndFlagsBits = v11;
    v48._object = v13;
    sub_D66D0(v48);

    v49._countAndFlagsBits = 32;
    v49._object = 0xE100000000000000;
    sub_D66D0(v49);
    v14 = &unk_DA000;
  }

  sub_66D4(&qword_121390, &qword_D9050);
  v22 = swift_allocObject();
  *(v22 + 16) = v14[39];
  object = v38._object;
  v24 = [v38._object bundleForClass:ObjCClassFromMetadata];
  v53._countAndFlagsBits = 0x4F4D5F4E5241454CLL;
  v53._object = 0xEA00000000004552;
  sub_D66D0(v53);
  v54._countAndFlagsBits = 2777980912;
  v54._object = 0xA400000000000000;
  sub_D66D0(v54);
  v69._countAndFlagsBits = 2777980912;
  v38._countAndFlagsBits = 0xE000000000000000;
  v55._countAndFlagsBits = 0x4F4D5F4E5241454CLL;
  v55._object = 0xEA00000000004552;
  v64.value._countAndFlagsBits = 0;
  v64.value._object = 0;
  v25.super.isa = v24;
  v69._object = 0xA400000000000000;
  v26 = sub_D4E80(v55, v64, v25, v69, 0, v38);
  v28 = v27;

  *(v22 + 56) = &type metadata for String;
  v29 = sub_F7DC();
  *(v22 + 64) = v29;
  *(v22 + 32) = v26;
  *(v22 + 40) = v28;
  v30 = [object bundleForClass:ObjCClassFromMetadata];
  v56._object = 0x80000000000EA5E0;
  v56._countAndFlagsBits = 0xD000000000000015;
  sub_D66D0(v56);
  v57._countAndFlagsBits = 2777980912;
  v57._object = 0xA400000000000000;
  sub_D66D0(v57);
  v70._countAndFlagsBits = 2777980912;
  v39._countAndFlagsBits = 0xE000000000000000;
  v58._object = 0x80000000000EA5E0;
  v58._countAndFlagsBits = 0xD000000000000015;
  v65.value._countAndFlagsBits = 0;
  v65.value._object = 0;
  v31.super.isa = v30;
  v70._object = 0xA400000000000000;
  v32 = sub_D4E80(v58, v65, v31, v70, 0, v39);
  v34 = v33;

  *(v22 + 96) = &type metadata for String;
  *(v22 + 104) = v29;
  *(v22 + 72) = v32;
  *(v22 + 80) = v34;
  v59._countAndFlagsBits = sub_D6610();
  sub_D66D0(v59);

  v60._countAndFlagsBits = 32;
  v60._object = 0xE100000000000000;
  sub_D66D0(v60);

  return v41;
}

uint64_t sub_CE7A4()
{
  v1 = sub_66D4(&qword_12A1B8, &qword_E62E0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v6 - v3;
  v6[1] = *(v0 + OBJC_IVAR____TtCV18icloudMailSettings15MSAddressesView9ViewModel_account);

  sub_66D4(&qword_124C70, &qword_DFBA0);
  sub_109A8(&qword_12A1C0, &qword_124C70, &qword_DFBA0, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  sub_D55B0();

  swift_allocObject();
  swift_weakInit();
  sub_109A8(&qword_12A1C8, &qword_12A1B8, &qword_E62E0, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  sub_D5610();

  (*(v2 + 8))(v4, v1);
  swift_beginAccess();
  sub_D54B0();
  swift_endAccess();
}

uint64_t sub_CE9DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  v9 = *(a1 + 32);
  v10 = v2;
  v11 = *(a1 + 64);
  v3 = v11;
  v4 = *(a1 + 16);
  v8[0] = *a1;
  v5 = v8[0];
  v8[1] = v4;
  *(a2 + 32) = v9;
  *(a2 + 48) = v2;
  *(a2 + 64) = v3;
  *a2 = v5;
  *(a2 + 16) = v4;
  return sub_FBD4(v8, v7, &qword_128A50, &qword_E2FA8);
}

uint64_t sub_CEA38(__int128 *a1, uint64_t a2)
{
  v2 = a1[3];
  v13 = a1[2];
  v14 = v2;
  v15 = *(a1 + 8);
  v3 = a1[1];
  v11 = *a1;
  v12 = v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v16 = *(&v14 + 1);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_FBD4(&v16, v10, &qword_128A58, qword_E2FB0);

    sub_D5580();
    sub_B5458();
    swift_getKeyPath();
    swift_getKeyPath();

    sub_D5580();
    sub_B5690();
    swift_getKeyPath();
    swift_getKeyPath();

    sub_D5580();
    v6 = v16;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_D5580();
    *(v5 + OBJC_IVAR____TtCV18icloudMailSettings15MSAddressesView9ViewModel_isAddAliasDisabled) = *(v6 + 16) >= *(v5 + OBJC_IVAR____TtCV18icloudMailSettings15MSAddressesView9ViewModel_maxAliasCountAllowed);
    v7 = sub_CE1BC();
    v8 = (v5 + OBJC_IVAR____TtCV18icloudMailSettings15MSAddressesView9ViewModel_footer);
    *v8 = v7;
    v8[1] = v9;
  }

  return result;
}

uint64_t sub_CEC6C()
{
  v1 = OBJC_IVAR____TtCV18icloudMailSettings15MSAddressesView9ViewModel__selectedAddressToEdit;
  v2 = sub_66D4(&qword_128A40, &qword_E2F98);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV18icloudMailSettings15MSAddressesView9ViewModel__aliases;
  v4 = sub_66D4(&qword_12A1D0, &qword_E6408);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCV18icloudMailSettings15MSAddressesView9ViewModel__primaryEmail;
  v6 = sub_66D4(&qword_121948, &unk_DC5C0);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtCV18icloudMailSettings15MSAddressesView9ViewModel__primaryEmailForDisplay, v6);
  v8 = OBJC_IVAR____TtCV18icloudMailSettings15MSAddressesView9ViewModel__customEmails;
  v9 = sub_66D4(&qword_12A1D8, &qword_E6410);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);

  sub_67D4((v0 + OBJC_IVAR____TtCV18icloudMailSettings15MSAddressesView9ViewModel_repository));

  return v0;
}

uint64_t sub_CEE44()
{
  sub_CEC6C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t _s9ViewModelCMa_4(uint64_t a1)
{
  result = qword_12A0C0;
  if (!qword_12A0C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_CEEF0(uint64_t a1)
{
  sub_6158(319, &qword_12A0D0, &qword_128A48, &qword_E2FA0);
  if (v1 <= 0x3F)
  {
    sub_6158(319, &qword_12A0D8, &qword_128A58, qword_E2FB0);
    if (v2 <= 0x3F)
    {
      sub_CF0C0();
      if (v3 <= 0x3F)
      {
        sub_6158(319, &unk_12A0E0, &qword_128A60, &qword_E4D20);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_CF0C0()
{
  if (!qword_121638)
  {
    v0 = sub_D5590();
    if (!v1)
    {
      atomic_store(v0, &qword_121638);
    }
  }
}

uint64_t sub_CF110()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_CF298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *(&v84 + 1) = a2;
  v77 = sub_66D4(&qword_122F80, &qword_DFB50);
  v74 = *(v77 - 8);
  v9 = __chkstk_darwin(v77);
  v75 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v76 = &v71 - v12;
  __chkstk_darwin(v11);
  v73 = &v71 - v13;
  v82 = sub_66D4(&qword_121070, &qword_DAFE0);
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v80 = &v71 - v14;
  v83 = sub_66D4(&qword_121068, &qword_DBEE0);
  v79 = *(v83 - 8);
  __chkstk_darwin(v83);
  v78 = &v71 - v15;
  v90 = type metadata accessor for MSRepositoryDefault();
  v91 = &off_1188F0;
  v89[0] = a4;
  v16 = a5 + OBJC_IVAR____TtC18icloudMailSettings25MSPrimaryAddressViewModel_account;
  *(v16 + 8) = *(a1 + 64);
  v17 = *(a1 + 48);
  *(v16 + 2) = *(a1 + 32);
  *(v16 + 3) = v17;
  v18 = *(a1 + 16);
  *v16 = *a1;
  *(v16 + 1) = v18;
  sub_2A5C4(v89, a5 + OBJC_IVAR____TtC18icloudMailSettings25MSPrimaryAddressViewModel_repository);
  v19 = *(a1 + 48);
  v20 = *(v19 + 16);
  if (v20)
  {
    *&v84 = a3;
    v72 = a5;
    sub_63AE8(a1, &v88);
    v86 = _swiftEmptyArrayStorage;
    sub_11BD0(0, v20, 0);
    v21 = v86;
    v22 = (v19 + 48);
    v23 = *(a1 + 32);
    v24 = *(a1 + 40);
    v71 = a1;
    do
    {
      v26 = *(v22 - 2);
      v25 = *(v22 - 1);
      LODWORD(v85) = *v22;
      v27 = v23;
      v88._countAndFlagsBits = v23;
      v88._object = v24;
      swift_bridgeObjectRetain_n();

      v92._countAndFlagsBits = 64;
      v92._object = 0xE100000000000000;
      sub_D66D0(v92);

      v93._countAndFlagsBits = v26;
      v93._object = v25;
      sub_D66D0(v93);

      if (__PAIR128__(v88._countAndFlagsBits, v88._object) == v84)
      {
        v28 = 1;
      }

      else
      {
        v28 = sub_D6C20();
      }

      v86 = v21;
      v30 = v21[2];
      v29 = v21[3];
      v31 = v21;
      if (v30 >= v29 >> 1)
      {
        sub_11BD0((v29 > 1), v30 + 1, 1);
        v31 = v86;
      }

      v31[2] = v30 + 1;
      v32 = &v31[5 * v30];
      v23 = v27;
      v32[4] = v27;
      v32[5] = v24;
      v32[6] = v26;
      v32[7] = v25;
      *(v32 + 64) = v85;
      *(v32 + 65) = v28 & 1;
      v22 += 24;
      --v20;
      v21 = v31;
    }

    while (v20);

    a5 = v72;
    a1 = v71;
  }

  else
  {
    sub_63AE8(a1, &v88);

    v21 = _swiftEmptyArrayStorage;
  }

  v34 = *(a1 + 16);
  v33 = *(a1 + 24);
  v35 = *(*sub_6648(v89, v90) + 24);

  result = [v35 aa_fullName];
  if (result)
  {
    v37 = result;
    v38 = sub_D65F0();
    *(&v84 + 1) = v39;
    v85 = v38;

    v40 = OBJC_IVAR____TtCV18icloudMailSettings19MSAddressDetailView9ViewModel__isDoneDisabled;
    LOBYTE(v88._countAndFlagsBits) = 0;
    v41 = v78;
    sub_D5530();
    v42 = *(v79 + 32);
    v43 = v83;
    v42(a5 + v40, v41, v83);
    v44 = OBJC_IVAR____TtCV18icloudMailSettings19MSAddressDetailView9ViewModel__isDeleteDisabled;
    LOBYTE(v88._countAndFlagsBits) = 0;
    sub_D5530();
    v42(a5 + v44, v41, v43);
    v45 = OBJC_IVAR____TtCV18icloudMailSettings19MSAddressDetailView9ViewModel__isUpdating;
    LOBYTE(v88._countAndFlagsBits) = 0;
    sub_D5530();
    v42(a5 + v45, v41, v43);
    v46 = OBJC_IVAR____TtCV18icloudMailSettings19MSAddressDetailView9ViewModel__isDeleting;
    LOBYTE(v88._countAndFlagsBits) = 0;
    sub_D5530();
    v42(a5 + v46, v41, v43);
    v47 = OBJC_IVAR____TtCV18icloudMailSettings19MSAddressDetailView9ViewModel__error;
    memset(&v88, 0, 41);
    sub_66D4(&qword_120EE8, &qword_D8DD0);
    v48 = v80;
    sub_D5530();
    (*(v81 + 32))(a5 + v47, v48, v82);
    *(a5 + OBJC_IVAR____TtCV18icloudMailSettings19MSAddressDetailView9ViewModel_cancellables) = &_swiftEmptySetSingleton;
    a5[2] = 0;
    a5[3] = 0;
    swift_beginAccess();
    LOBYTE(v86) = 1;
    sub_D5530();
    swift_endAccess();
    swift_beginAccess();
    v86 = v21;

    sub_66D4(&qword_1213B8, &qword_D9088);
    sub_D5530();
    swift_endAccess();
    if (v33)
    {
      v49 = v34;
    }

    else
    {
      v49 = 0;
    }

    if (!v33)
    {
      v33 = 0xE000000000000000;
    }

    swift_beginAccess();
    v86 = v49;
    v87 = v33;
    sub_D5530();
    swift_endAccess();
    swift_beginAccess();
    v86 = 0;
    v87 = 0xE000000000000000;
    sub_D5530();
    result = swift_endAccess();
    v50 = *(&v84 + 1);
    a5[4] = v85;
    a5[5] = v50;
    v51 = v21[2];
    if (v51 >= 2)
    {
      countAndFlagsBits = v21[4];
      object = v21[5];

LABEL_21:
      sub_66D4(&qword_121390, &qword_D9050);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_D8CB0;
      *(v58 + 56) = &type metadata for String;
      *(v58 + 64) = sub_F7DC();
      *(v58 + 32) = countAndFlagsBits;
      *(v58 + 40) = object;
      type metadata accessor for MAPreferencesViewProvider();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v60 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      v88._countAndFlagsBits = 2777980912;
      v88._object = 0xA400000000000000;
      v96._object = 0x80000000000EA620;
      v96._countAndFlagsBits = 0xD00000000000001FLL;
      sub_D66D0(v96);
      v97._countAndFlagsBits = 2777980912;
      v97._object = 0xA400000000000000;
      sub_D66D0(v97);
      v70._countAndFlagsBits = 0xE000000000000000;
      v98._object = 0x80000000000EA620;
      v98._countAndFlagsBits = 0xD00000000000001FLL;
      v99.value._countAndFlagsBits = 0;
      v99.value._object = 0;
      v61.super.isa = v60;
      sub_D4E80(v98, v99, v61, v88, 0, v70);

      v62 = sub_D6610();
      v64 = v63;

      a5[6] = v62;
      a5[7] = v64;
      swift_beginAccess();
      v65 = v73;
      sub_D5540();
      swift_endAccess();
      swift_beginAccess();
      v66 = v76;
      sub_D5540();
      swift_endAccess();
      sub_109A8(&qword_122FA0, &qword_122F80, &qword_DFB50, &protocol conformance descriptor for Published<A>.Publisher);
      v67 = v77;
      sub_D5620();
      v68 = v74;
      v69 = *(v74 + 8);
      v69(v65, v67);
      (*(v68 + 16))(v75, v66, v67);
      swift_beginAccess();
      sub_D5550();
      swift_endAccess();
      v69(v66, v67);
      sub_67D4(v89);
      return a5;
    }

    if (v51 == 1)
    {
      v55 = v21[4];
      v54 = v21[5];
      v56 = v21[6];
      v57 = v21[7];

      v88._countAndFlagsBits = v55;
      v88._object = v54;

      v94._countAndFlagsBits = 64;
      v94._object = 0xE100000000000000;
      sub_D66D0(v94);

      v95._countAndFlagsBits = v56;
      v95._object = v57;
      sub_D66D0(v95);

      object = v88._object;
      countAndFlagsBits = v88._countAndFlagsBits;
      goto LABEL_21;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_CFCE8(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, char *a5)
{
  v77 = a3;
  v78 = a2;
  v70 = sub_66D4(&qword_122F80, &qword_DFB50);
  v67 = *(v70 - 8);
  v8 = __chkstk_darwin(v70);
  v68 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v69 = &v65 - v11;
  __chkstk_darwin(v10);
  v66 = &v65 - v12;
  v75 = sub_66D4(&qword_121070, &qword_DAFE0);
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = &v65 - v13;
  v79 = sub_66D4(&qword_121068, &qword_DBEE0);
  v72 = *(v79 - 8);
  __chkstk_darwin(v79);
  v15 = &v65 - v14;
  v83 = type metadata accessor for MSRepositoryDefault();
  v84 = &off_1188F0;
  v82[0] = a4;
  v16 = &a5[OBJC_IVAR____TtC18icloudMailSettings28MSCustomEmailDetailViewModel_customDomain];
  *(v16 + 8) = *(a1 + 64);
  v17 = *(a1 + 48);
  *(v16 + 2) = *(a1 + 32);
  *(v16 + 3) = v17;
  v18 = *(a1 + 16);
  *v16 = *a1;
  *(v16 + 1) = v18;
  sub_2A5C4(v82, &a5[OBJC_IVAR____TtC18icloudMailSettings28MSCustomEmailDetailViewModel_repository]);
  v19 = *(a1 + 16);
  v20 = *(a1 + 24);
  sub_66D4(&qword_121950, &qword_D9728);
  v21 = swift_allocObject();
  v65 = xmmword_D8CB0;
  *(v21 + 16) = xmmword_D8CB0;
  v22 = *(a1 + 8);
  v76 = *a1;
  v81._countAndFlagsBits = v76;
  v81._object = v22;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  sub_13E98(a1, &v80);
  v85._countAndFlagsBits = 64;
  v85._object = 0xE100000000000000;
  sub_D66D0(v85);
  v80 = v81;

  v23 = v19;
  v86._countAndFlagsBits = v19;
  v24 = v77;
  v86._object = v20;
  sub_D66D0(v86);

  if (__PAIR128__(v80._countAndFlagsBits, v80._object) == __PAIR128__(v78, v24))
  {
    v25 = 1;
  }

  else
  {
    v25 = sub_D6C20();
  }

  v26 = *(a1 + 32);
  *(v21 + 32) = v76;
  *(v21 + 40) = v22;
  *(v21 + 48) = v23;
  *(v21 + 56) = v20;
  *(v21 + 64) = v26;
  *(v21 + 65) = v25 & 1;
  v27 = *(a1 + 40);
  v77 = v20;
  v78 = v27;
  v28 = *(a1 + 48);
  v29 = *(*sub_6648(v82, v83) + 24);

  result = [v29 aa_fullName];
  if (result)
  {
    v31 = result;
    v76 = sub_D65F0();
    v71 = v32;

    v33 = OBJC_IVAR____TtCV18icloudMailSettings19MSAddressDetailView9ViewModel__isDoneDisabled;
    LOBYTE(v80._countAndFlagsBits) = 0;
    sub_D5530();
    v34 = *(v72 + 32);
    v35 = v79;
    v34(&a5[v33], v15, v79);
    v36 = OBJC_IVAR____TtCV18icloudMailSettings19MSAddressDetailView9ViewModel__isDeleteDisabled;
    LOBYTE(v80._countAndFlagsBits) = 0;
    sub_D5530();
    v34(&a5[v36], v15, v35);
    v37 = OBJC_IVAR____TtCV18icloudMailSettings19MSAddressDetailView9ViewModel__isUpdating;
    LOBYTE(v80._countAndFlagsBits) = 0;
    sub_D5530();
    v34(&a5[v37], v15, v35);
    v38 = OBJC_IVAR____TtCV18icloudMailSettings19MSAddressDetailView9ViewModel__isDeleting;
    LOBYTE(v80._countAndFlagsBits) = 0;
    sub_D5530();
    v34(&a5[v38], v15, v35);
    v39 = OBJC_IVAR____TtCV18icloudMailSettings19MSAddressDetailView9ViewModel__error;
    memset(&v80, 0, 41);
    sub_66D4(&qword_120EE8, &qword_D8DD0);
    v40 = v73;
    sub_D5530();
    (*(v74 + 32))(&a5[v39], v40, v75);
    *&a5[OBJC_IVAR____TtCV18icloudMailSettings19MSAddressDetailView9ViewModel_cancellables] = &_swiftEmptySetSingleton;
    v41 = v77;
    *(a5 + 2) = v23;
    *(a5 + 3) = v41;
    swift_beginAccess();
    LOBYTE(v81._countAndFlagsBits) = 1;
    sub_D5530();
    swift_endAccess();
    swift_beginAccess();
    v81._countAndFlagsBits = v21;

    sub_66D4(&qword_1213B8, &qword_D9088);
    sub_D5530();
    swift_endAccess();
    if (v28)
    {
      v42 = v78;
    }

    else
    {
      v42 = 0;
    }

    if (v28)
    {
      v43 = v28;
    }

    else
    {
      v43 = 0xE000000000000000;
    }

    swift_beginAccess();
    v81._countAndFlagsBits = v42;
    v81._object = v43;
    sub_D5530();
    swift_endAccess();
    swift_beginAccess();
    v81._countAndFlagsBits = 0;
    v81._object = 0xE000000000000000;
    sub_D5530();
    result = swift_endAccess();
    v44 = v71;
    *(a5 + 4) = v76;
    *(a5 + 5) = v44;
    v45 = *(v21 + 16);
    if (v45 >= 2)
    {
      countAndFlagsBits = *(v21 + 32);
      object = *(v21 + 40);

LABEL_15:
      sub_66D4(&qword_121390, &qword_D9050);
      v52 = swift_allocObject();
      *(v52 + 16) = v65;
      *(v52 + 56) = &type metadata for String;
      *(v52 + 64) = sub_F7DC();
      *(v52 + 32) = countAndFlagsBits;
      *(v52 + 40) = object;
      type metadata accessor for MAPreferencesViewProvider();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v54 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      v80._countAndFlagsBits = 2777980912;
      v80._object = 0xA400000000000000;
      v89._object = 0x80000000000EA620;
      v89._countAndFlagsBits = 0xD00000000000001FLL;
      sub_D66D0(v89);
      v90._countAndFlagsBits = 2777980912;
      v90._object = 0xA400000000000000;
      sub_D66D0(v90);
      v64._countAndFlagsBits = 0xE000000000000000;
      v91._object = 0x80000000000EA620;
      v91._countAndFlagsBits = 0xD00000000000001FLL;
      v92.value._countAndFlagsBits = 0;
      v92.value._object = 0;
      v55.super.isa = v54;
      sub_D4E80(v91, v92, v55, v80, 0, v64);

      v56 = sub_D6610();
      v58 = v57;

      *(a5 + 6) = v56;
      *(a5 + 7) = v58;
      swift_beginAccess();
      v59 = v66;
      sub_D5540();
      swift_endAccess();
      swift_beginAccess();
      v60 = v69;
      sub_D5540();
      swift_endAccess();
      sub_109A8(&qword_122FA0, &qword_122F80, &qword_DFB50, &protocol conformance descriptor for Published<A>.Publisher);
      v61 = v70;
      sub_D5620();
      v62 = v67;
      v63 = *(v67 + 8);
      v63(v59, v61);
      (*(v62 + 16))(v68, v60, v61);
      swift_beginAccess();
      sub_D5550();
      swift_endAccess();
      v63(v60, v61);
      sub_67D4(v82);
      return a5;
    }

    if (v45 == 1)
    {
      v48 = *(v21 + 32);
      v49 = *(v21 + 40);
      v50 = *(v21 + 48);
      v51 = *(v21 + 56);

      v80._countAndFlagsBits = v48;
      v80._object = v49;

      v87._countAndFlagsBits = 64;
      v87._object = 0xE100000000000000;
      sub_D66D0(v87);

      v88._countAndFlagsBits = v50;
      v88._object = v51;
      sub_D66D0(v88);

      object = v80._object;
      countAndFlagsBits = v80._countAndFlagsBits;
      goto LABEL_15;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_D06B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(&v90 + 1) = a2;
  v80 = sub_66D4(&qword_122F80, &qword_DFB50);
  v77 = *(v80 - 8);
  v9 = __chkstk_darwin(v80);
  v78 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v79 = &v75 - v12;
  __chkstk_darwin(v11);
  v76 = &v75 - v13;
  v87 = sub_66D4(&qword_121070, &qword_DAFE0);
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v85 = &v75 - v14;
  v88 = sub_66D4(&qword_121068, &qword_DBEE0);
  v84 = *(v88 - 8);
  __chkstk_darwin(v88);
  v83 = &v75 - v15;
  v96 = type metadata accessor for MSRepositoryDefault();
  v97 = &off_1188F0;
  v95[0] = a4;
  v16 = (a5 + OBJC_IVAR____TtC18icloudMailSettings22MSAliasDetailViewModel_alias);
  *(v16 + 41) = *(a1 + 41);
  v17 = *(a1 + 32);
  v16[1] = *(a1 + 16);
  v16[2] = v17;
  *v16 = *a1;
  v89 = a5;
  sub_2A5C4(v95, a5 + OBJC_IVAR____TtC18icloudMailSettings22MSAliasDetailViewModel_repository);
  v18 = *(a1 + 16);
  v19 = *(v18 + 16);
  if (v19)
  {
    *&v90 = a3;
    sub_5842C(a1, &v94);
    v92 = _swiftEmptyArrayStorage;
    sub_11BD0(0, v19, 0);
    v20 = v92;
    v21 = (v18 + 48);
    v22 = *a1;
    v23 = *(a1 + 8);
    v82 = a1;
    do
    {
      v25 = *(v21 - 2);
      v24 = *(v21 - 1);
      LODWORD(v91) = *v21;
      v26 = v22;
      v94._countAndFlagsBits = v22;
      v94._object = v23;
      swift_bridgeObjectRetain_n();

      v98._countAndFlagsBits = 64;
      v98._object = 0xE100000000000000;
      sub_D66D0(v98);

      v99._countAndFlagsBits = v25;
      v99._object = v24;
      sub_D66D0(v99);

      if (__PAIR128__(v94._countAndFlagsBits, v94._object) == v90)
      {
        v27 = 1;
      }

      else
      {
        v27 = sub_D6C20();
      }

      v28 = v20;
      v92 = v20;
      v30 = v20[2];
      v29 = v20[3];
      if (v30 >= v29 >> 1)
      {
        sub_11BD0((v29 > 1), v30 + 1, 1);
        v28 = v92;
      }

      v28[2] = v30 + 1;
      v20 = v28;
      v31 = &v28[5 * v30];
      v22 = v26;
      v31[4] = v26;
      v31[5] = v23;
      v31[6] = v25;
      v31[7] = v24;
      *(v31 + 64) = v91;
      *(v31 + 65) = v27 & 1;
      v21 += 24;
      --v19;
    }

    while (v19);

    a1 = v82;
  }

  else
  {
    sub_5842C(a1, &v94);

    v20 = _swiftEmptyArrayStorage;
  }

  v32 = *(a1 + 32);
  v33 = *(a1 + 40);
  v34 = *(a1 + 48);
  *(&v90 + 1) = *(a1 + 24);
  v91 = v33;
  v35 = *(*sub_6648(v95, v96) + 24);

  result = [v35 aa_fullName];
  if (result)
  {
    v37 = result;
    v81 = *(a1 + 56);
    *&v90 = sub_D65F0();
    v82 = v38;

    v39 = OBJC_IVAR____TtCV18icloudMailSettings19MSAddressDetailView9ViewModel__isDoneDisabled;
    LOBYTE(v94._countAndFlagsBits) = 0;
    v40 = v83;
    sub_D5530();
    v41 = *(v84 + 32);
    v43 = v88;
    v42 = v89;
    v41(v89 + v39, v40, v88);
    v44 = OBJC_IVAR____TtCV18icloudMailSettings19MSAddressDetailView9ViewModel__isDeleteDisabled;
    LOBYTE(v94._countAndFlagsBits) = 0;
    sub_D5530();
    v41(v42 + v44, v40, v43);
    v45 = OBJC_IVAR____TtCV18icloudMailSettings19MSAddressDetailView9ViewModel__isUpdating;
    LOBYTE(v94._countAndFlagsBits) = 0;
    sub_D5530();
    v41(v42 + v45, v40, v43);
    v46 = OBJC_IVAR____TtCV18icloudMailSettings19MSAddressDetailView9ViewModel__isDeleting;
    LOBYTE(v94._countAndFlagsBits) = 0;
    sub_D5530();
    v41(v42 + v46, v40, v43);
    v47 = OBJC_IVAR____TtCV18icloudMailSettings19MSAddressDetailView9ViewModel__error;
    memset(&v94, 0, 41);
    sub_66D4(&qword_120EE8, &qword_D8DD0);
    v48 = v85;
    sub_D5530();
    (*(v86 + 32))(v42 + v47, v48, v87);
    *(v42 + OBJC_IVAR____TtCV18icloudMailSettings19MSAddressDetailView9ViewModel_cancellables) = &_swiftEmptySetSingleton;
    *(v42 + 16) = xmmword_DBAE0;
    swift_beginAccess();
    LOBYTE(v92) = v81;
    sub_D5530();
    swift_endAccess();
    swift_beginAccess();
    v49 = v20;
    v92 = v20;

    sub_66D4(&qword_1213B8, &qword_D9088);
    sub_D5530();
    swift_endAccess();
    if (v32)
    {
      v50 = *(&v90 + 1);
    }

    else
    {
      v50 = 0;
    }

    if (v32)
    {
      v51 = v32;
    }

    else
    {
      v51 = 0xE000000000000000;
    }

    swift_beginAccess();
    v92 = v50;
    v93 = v51;
    sub_D5530();
    swift_endAccess();
    if (v34)
    {
      v52 = v91;
    }

    else
    {
      v52 = 0;
    }

    if (!v34)
    {
      v34 = 0xE000000000000000;
    }

    swift_beginAccess();
    v92 = v52;
    v93 = v34;
    sub_D5530();
    result = swift_endAccess();
    v53 = v82;
    *(v42 + 32) = v90;
    *(v42 + 40) = v53;
    v54 = v49[2];
    if (v54 >= 2)
    {
      countAndFlagsBits = v49[4];
      object = v49[5];

LABEL_27:
      sub_66D4(&qword_121390, &qword_D9050);
      v61 = swift_allocObject();
      *(v61 + 16) = xmmword_D8CB0;
      *(v61 + 56) = &type metadata for String;
      *(v61 + 64) = sub_F7DC();
      *(v61 + 32) = countAndFlagsBits;
      *(v61 + 40) = object;
      type metadata accessor for MAPreferencesViewProvider();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v63 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      v94._countAndFlagsBits = 2777980912;
      v94._object = 0xA400000000000000;
      v102._object = 0x80000000000EA620;
      v102._countAndFlagsBits = 0xD00000000000001FLL;
      sub_D66D0(v102);
      v103._countAndFlagsBits = 2777980912;
      v103._object = 0xA400000000000000;
      sub_D66D0(v103);
      v74._countAndFlagsBits = 0xE000000000000000;
      v104._object = 0x80000000000EA620;
      v104._countAndFlagsBits = 0xD00000000000001FLL;
      v105.value._countAndFlagsBits = 0;
      v105.value._object = 0;
      v64.super.isa = v63;
      sub_D4E80(v104, v105, v64, v94, 0, v74);

      v65 = sub_D6610();
      v67 = v66;

      v68 = v89;
      *(v89 + 48) = v65;
      *(v68 + 56) = v67;
      swift_beginAccess();
      v69 = v76;
      sub_D5540();
      swift_endAccess();
      swift_beginAccess();
      v70 = v79;
      sub_D5540();
      swift_endAccess();
      sub_109A8(&qword_122FA0, &qword_122F80, &qword_DFB50, &protocol conformance descriptor for Published<A>.Publisher);
      v71 = v80;
      sub_D5620();
      v72 = v77;
      v73 = *(v77 + 8);
      v73(v69, v71);
      (*(v72 + 16))(v78, v70, v71);
      swift_beginAccess();
      sub_D5550();
      swift_endAccess();
      v73(v70, v71);
      sub_67D4(v95);
      return v68;
    }

    if (v54 == 1)
    {
      v58 = v49[4];
      v57 = v49[5];
      v59 = v49[6];
      v60 = v49[7];

      v94._countAndFlagsBits = v58;
      v94._object = v57;

      v100._countAndFlagsBits = 64;
      v100._object = 0xE100000000000000;
      sub_D66D0(v100);

      v101._countAndFlagsBits = v59;
      v101._object = v60;
      sub_D66D0(v101);

      object = v94._object;
      countAndFlagsBits = v94._countAndFlagsBits;
      goto LABEL_27;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_D1144(uint64_t a1)
{
  v2 = sub_66D4(&qword_128A50, &qword_E2FA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_D11AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_2A5C4(a4, v19);
  v11 = sub_38BFC(v19, v19[3]);
  __chkstk_darwin(v11);
  v13 = (&v19[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = *v13;

  v16 = sub_D3BDC(a1, a2, a3, v15, a5, a6);
  sub_67D4(v19);
  return v16;
}

uint64_t sub_D12E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v49 = a4;
  v7 = sub_D5B20();
  v47 = *(v7 - 8);
  v48 = v7;
  __chkstk_darwin(v7);
  v46 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_66D4(&qword_12A398, &qword_E6678);
  v9 = *(v42 - 8);
  __chkstk_darwin(v42);
  v11 = &v40 - v10;
  v41 = sub_66D4(&qword_12A3A0, &qword_E6680);
  __chkstk_darwin(v41);
  v13 = &v40 - v12;
  v14 = sub_66D4(&qword_12A3A8, &qword_E6688);
  v15 = *(v14 - 8);
  v44 = v14;
  v45 = v15;
  __chkstk_darwin(v14);
  v43 = &v40 - v16;
  v50 = a1;
  v51 = a2;
  v52 = a3 & 1;
  sub_66D4(&qword_12A3B0, &unk_E6690);
  v17 = sub_6110(&qword_128D30, &qword_E38E0);
  v18 = sub_6110(&qword_121178, &qword_DB0C0);
  v19 = sub_A6648();
  v20 = sub_E000();
  v21 = sub_109A8(&qword_1211D0, &qword_121178, &qword_DB0C0, &protocol conformance descriptor for Button<A>);
  v53._countAndFlagsBits = v17;
  v53._object = &type metadata for MSError;
  v54 = v18;
  v55 = v19;
  v56 = v20;
  v57 = v21;
  swift_getOpaqueTypeConformance2();
  sub_D5E60();
  sub_109A8(&qword_12A3B8, &qword_12A398, &qword_E6678, &protocol conformance descriptor for List<A, B>);
  v22 = v42;
  sub_D5F90();
  (*(v9 + 8))(v11, v22);
  v23 = v41;
  v24 = &v13[*(v41 + 36)];
  *v24 = sub_D2834;
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v24[2] = 0;
  v24[3] = 0;
  v24[1] = 0;
  v26 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v53._countAndFlagsBits = 2777980912;
  v53._object = 0xA400000000000000;
  v58._countAndFlagsBits = 0x5F544C5541464544;
  v58._object = 0xED00004C49414D45;
  sub_D66D0(v58);
  v59._countAndFlagsBits = 2777980912;
  v59._object = 0xA400000000000000;
  sub_D66D0(v59);
  v39._countAndFlagsBits = 0xE000000000000000;
  v60._countAndFlagsBits = 0x5F544C5541464544;
  v60._object = 0xED00004C49414D45;
  v61.value._countAndFlagsBits = 0;
  v61.value._object = 0;
  v27.super.isa = v26;
  v28 = sub_D4E80(v60, v61, v27, v53, 0, v39);
  v30 = v29;

  v53._countAndFlagsBits = v28;
  v53._object = v30;
  v31 = sub_D3FB4();
  v32 = sub_DFAC();
  v33 = v43;
  sub_D6040();

  sub_FC3C(v13, &qword_12A3A0, &qword_E6680);
  v34 = v46;
  v35 = v47;
  v36 = v48;
  (*(v47 + 104))(v46, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v48);
  v53._countAndFlagsBits = v23;
  v53._object = &type metadata for String;
  v54 = v31;
  v55 = v32;
  swift_getOpaqueTypeConformance2();
  v37 = v44;
  sub_D60D0();
  (*(v35 + 8))(v34, v36);
  return (*(v45 + 8))(v33, v37);
}

uint64_t sub_D1858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v22[1] = a4;
  v7 = sub_66D4(&qword_128D30, &qword_E38E0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v22 - v9;
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v27._countAndFlagsBits = 2777980912;
  v27._object = 0xA400000000000000;
  v33._object = 0x80000000000EA6C0;
  v33._countAndFlagsBits = 0xD00000000000001BLL;
  sub_D66D0(v33);
  v34._countAndFlagsBits = 2777980912;
  v34._object = 0xA400000000000000;
  sub_D66D0(v34);
  v21._countAndFlagsBits = 0xE000000000000000;
  v35._object = 0x80000000000EA6C0;
  v35._countAndFlagsBits = 0xD00000000000001BLL;
  v36.value._countAndFlagsBits = 0;
  v36.value._object = 0;
  v13.super.isa = v12;
  v14 = sub_D4E80(v35, v36, v13, v27, 0, v21);
  v16 = v15;

  v27._countAndFlagsBits = v14;
  v27._object = v16;
  sub_DFAC();
  v27._countAndFlagsBits = sub_D5F50();
  v27._object = v17;
  LOBYTE(v28) = v18 & 1;
  *(&v28 + 1) = v19;
  v22[4] = a1;
  v22[5] = a2;
  v23 = a3 & 1;
  sub_66D4(&qword_128D48, &qword_E38E8);
  sub_A66E0();
  sub_D63A0();
  type metadata accessor for DefaultEmailSelectionView.ViewModel(0);
  sub_D40BC();
  sub_D5750();
  swift_getKeyPath();
  sub_D5880();

  v27 = v24;
  v28 = v25;
  v29[0] = v26[0];
  *(v29 + 9) = *(v26 + 9);
  sub_A16FC(&v27._countAndFlagsBits, 19279, 0xE200000000000000);
  countAndFlagsBits = v27._countAndFlagsBits;
  sub_E158(&countAndFlagsBits);

  v31 = v28;
  v32[0] = v29[0];
  *(v32 + 9) = *(v29 + 9);
  sub_FC3C(&v31, &qword_120EE8, &qword_D8DD0);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_D1B90(uint64_t a1, uint64_t a2, char a3)
{
  type metadata accessor for DefaultEmailSelectionView.ViewModel(0);
  sub_D40BC();
  sub_D5740();

  swift_getKeyPath();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3 & 1;
  sub_D415C(a1, a2);
  sub_66D4(&qword_121498, &qword_D99D0);
  sub_66D4(&qword_128D58, &qword_E38F0);
  sub_109A8(&qword_12A3D0, &qword_121498, &qword_D99D0, &protocol conformance descriptor for [A]);
  sub_A6764();
  return sub_D6330();
}

uint64_t sub_D1D0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = *a1;
  v9 = a1[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  *(v11 + 32) = a4 & 1;
  *(v11 + 40) = v10;
  *(v11 + 48) = v9;
  sub_D415C(a2, a3);

  sub_66D4(&qword_12A3D8, &qword_E66C0);
  sub_109A8(&qword_12A3E0, &qword_12A3D8, &qword_E66C0, &protocol conformance descriptor for HStack<A>);
  sub_D6260();
  v12 = sub_D61A0();
  KeyPath = swift_getKeyPath();
  result = sub_66D4(&qword_128D58, &qword_E38F0);
  v15 = (a5 + *(result + 36));
  *v15 = KeyPath;
  v15[1] = v12;
  return result;
}

uint64_t sub_D1E64(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for DefaultEmailSelectionView.ViewModel(0);
  sub_D40BC();
  sub_D5740();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_D5580();
  sub_D5740();
  sub_D2ACC();
}

uint64_t sub_D1F54@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a6@<X8>)
{
  *a6 = sub_D5B40();
  *(a6 + 8) = 0;
  *(a6 + 16) = 1;
  v9 = sub_66D4(&qword_12A3E8, &unk_E66F8);
  return sub_D1FDC(a1, a2, (a6 + *(v9 + 44)));
}

uint64_t sub_D1FDC@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a6@<X8>)
{
  v55 = a6;
  v54 = sub_66D4(&qword_121238, &unk_D8E20);
  v48 = *(v54 - 8);
  __chkstk_darwin(v54);
  v47 = &v47 - v8;
  v51 = sub_66D4(&qword_12A3F0, &qword_E6708);
  __chkstk_darwin(v51);
  v52 = &v47 - v9;
  v53 = sub_66D4(&qword_127BF8, &qword_E6710);
  v50 = *(v53 - 8);
  __chkstk_darwin(v53);
  v49 = &v47 - v10;
  v11 = sub_66D4(&qword_12A3F8, &qword_E6718);
  v12 = __chkstk_darwin(v11 - 8);
  v61 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v60 = &v47 - v14;
  v62 = a1;
  v63 = a2;
  sub_DFAC();

  v15 = sub_D5F50();
  v57 = v16;
  v58 = v15;
  v56 = v17;
  v59 = v18;
  type metadata accessor for DefaultEmailSelectionView.ViewModel(0);
  sub_D40BC();
  v19 = sub_D5740();
  v21 = *(v19 + 24);
  v20 = *(v19 + 32);

  if (__PAIR128__(v20, v21) == __PAIR128__(a2, a1))
  {

LABEL_4:
    v23 = sub_D61C0();
    v24 = sub_D6180();
    KeyPath = swift_getKeyPath();
    v62 = v23;
    v63 = KeyPath;
    v64 = v24;
    sub_D5E20();
    v26 = sub_66D4(&qword_127C30, qword_E1410);
    v27 = sub_8F614();
    v28 = v49;
    sub_D5FC0();

    v29 = v50;
    v30 = v53;
    (*(v50 + 16))(v52, v28, v53);
    swift_storeEnumTagMultiPayload();
    v62 = v26;
    v63 = v27;
    swift_getOpaqueTypeConformance2();
    sub_109A8(&qword_121230, &qword_121238, &unk_D8E20, &protocol conformance descriptor for ProgressView<A, B>);
    v31 = v60;
    sub_D5BF0();
    (*(v29 + 8))(v28, v30);
    goto LABEL_5;
  }

  v22 = sub_D6C20();

  if (v22)
  {
    goto LABEL_4;
  }

  sub_D5740();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  if (!v63)
  {
    v32 = 1;
    v31 = v60;
    goto LABEL_6;
  }

  v31 = v60;
  if (v62 == a1 && v63 == a2)
  {
  }

  else
  {
    v41 = sub_D6C20();

    if ((v41 & 1) == 0)
    {
      v32 = 1;
      goto LABEL_6;
    }
  }

  v42 = v47;
  sub_D5780();
  v43 = v48;
  v44 = v54;
  (*(v48 + 16))(v52, v42, v54);
  swift_storeEnumTagMultiPayload();
  v45 = sub_6110(&qword_127C30, qword_E1410);
  v46 = sub_8F614();
  v62 = v45;
  v63 = v46;
  swift_getOpaqueTypeConformance2();
  sub_109A8(&qword_121230, &qword_121238, &unk_D8E20, &protocol conformance descriptor for ProgressView<A, B>);
  sub_D5BF0();
  (*(v43 + 8))(v42, v44);
LABEL_5:
  v32 = 0;
LABEL_6:
  v33 = sub_66D4(&qword_12A400, &qword_E6720);
  (*(*(v33 - 8) + 56))(v31, v32, 1, v33);
  v34 = v61;
  sub_D41D0(v31, v61);
  v36 = v57;
  v35 = v58;
  v37 = v55;
  *v55 = v58;
  v37[1] = v36;
  v38 = v56 & 1;
  *(v37 + 16) = v56 & 1;
  v37[3] = v59;
  v37[4] = 0;
  *(v37 + 40) = 1;
  v39 = sub_66D4(&qword_12A408, qword_E6728);
  sub_D41D0(v34, v37 + *(v39 + 64));
  sub_166E0(v35, v36, v38);

  sub_FC3C(v31, &qword_12A3F8, &qword_E6718);
  sub_FC3C(v34, &qword_12A3F8, &qword_E6718);
  sub_F16C(v35, v36, v38);
}

double sub_D270C@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  return result;
}

uint64_t sub_D279C(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_D5580();
}

uint64_t sub_D2834()
{
  v0 = sub_D5340();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v4 = sub_6610(v0, qword_137988);
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_D5320();
  v6 = sub_D68A0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "[Default Email Selection] page viewed", v7, 2u);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_D29C0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  return v1;
}

double sub_D2A40@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  return result;
}

uint64_t sub_D2ACC()
{
  v1 = v0;
  v2 = sub_D5340();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v35 - v7;
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v9 = sub_6610(v2, qword_137988);
  v10 = *(v3 + 16);
  v10(v8, v9, v2);
  v11 = sub_D5320();
  v12 = sub_D68A0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v36 = v3;
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "[Default Email Selection] update started", v13, 2u);
    v3 = v36;
  }

  v14 = *(v3 + 8);
  v14(v8, v2);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v15 = v39;
  if (v39)
  {
    v16 = v38;
    v17 = sub_6648((v1 + OBJC_IVAR____TtCV18icloudMailSettings25DefaultEmailSelectionView9ViewModel_repository), *(v1 + OBJC_IVAR____TtCV18icloudMailSettings25DefaultEmailSelectionView9ViewModel_repository + 24));
    v19 = *(*v17 + 16);
    v18 = *(*v17 + 24);
    v40 = &type metadata for SharedPreference;
    v41 = sub_467DC();
    v20 = swift_allocObject();
    v38 = v20;
    *(v20 + 16) = v16;
    *(v20 + 24) = v15;
    v21 = type metadata accessor for MSSharedPreferencesAPIRequest(0);
    *(v20 + 32) = 0u;
    *(v20 + 48) = 0u;
    v22 = objc_allocWithZone(v21);
    sub_13E28(&v38, v37);
    swift_bridgeObjectRetain_n();
    v23 = v19;
    v24 = v18;
    v25 = sub_45BC4(v19, v24, v37);

    sub_FC3C(&v38, &qword_121F30, &unk_DC820);
    v26 = sub_1EB80();

    v38 = v26;
    v27 = swift_allocObject();
    swift_weakInit();
    v28 = swift_allocObject();
    *(v28 + 16) = v16;
    *(v28 + 24) = v15;
    *(v28 + 32) = 0u;
    *(v28 + 48) = 0u;
    *(v28 + 64) = v27;
    v29 = swift_allocObject();
    swift_weakInit();
    v30 = swift_allocObject();
    v30[2] = v29;
    v30[3] = v16;
    v30[4] = v15;
    sub_66D4(&qword_121F38, &qword_D9CA0);
    sub_109A8(&qword_121F40, &qword_121F38, &qword_D9CA0, &protocol conformance descriptor for AnyPublisher<A, B>);
    sub_D55D0();

    swift_beginAccess();
    sub_D54B0();
    swift_endAccess();
  }

  else
  {
    v10(v6, v9, v2);
    v32 = sub_D5320();
    v33 = sub_D68A0();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_0, v32, v33, "[Default Email Selection] no change, skipping", v34, 2u);
    }

    return (v14)(v6, v2);
  }
}

uint64_t sub_D2FEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = a3;
  v4 = sub_D5340();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v49 - v9;
  v12 = *a1;
  v11 = *(a1 + 8);
  v13 = *(a1 + 16);
  v51 = *(a1 + 24);
  v52 = v12;
  v53 = *(a1 + 32);
  v54 = v11;
  LODWORD(v14) = *(a1 + 40);
  if (v11)
  {
    if (sub_3ED44())
    {
      v15 = sub_D6550();
      v17 = v16;

      if (qword_120E38 != -1)
      {
        swift_once();
      }

      v18 = sub_6610(v4, qword_137988);
      (*(v5 + 16))(v10, v18, v4);

      v19 = sub_D5320();
      v20 = v5;
      v21 = sub_D68B0();

      if (os_log_type_enabled(v19, v21))
      {
        v22 = swift_slowAlloc();
        LODWORD(v49) = v14;
        v14 = v22;
        v23 = swift_slowAlloc();
        v50 = v13;
        v24 = v23;
        v58 = v23;
        *v14 = 136642819;
        v25 = sub_558F0(v15, v17, &v58);
        v26 = v20;
        v27 = v19;
        v28 = v25;

        *(v14 + 4) = v28;
        _os_log_impl(&dword_0, v27, v21, "[Default Email Selection] params: %{sensitive}s", v14, 0xCu);
        sub_67D4(v24);
        v13 = v50;

        LOBYTE(v14) = v49;

        (*(v26 + 8))(v10, v4);
        v5 = v26;
      }

      else
      {

        (*(v20 + 8))(v10, v4);
        v5 = v20;
      }
    }

    if (qword_120E38 != -1)
    {
      swift_once();
    }

    v29 = sub_6610(v4, qword_137988);
    (*(v5 + 16))(v8, v29, v4);
    v30 = v54;

    v31 = v30;
    v32 = sub_D5320();
    v33 = sub_D68B0();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v50 = v13;
      v35 = v34;
      v36 = v5;
      v37 = swift_slowAlloc();
      v64[0] = v37;
      *v35 = 136315138;
      v58 = v52;
      v59 = v31;
      v60 = v50;
      LOBYTE(v61) = v51 & 1;
      v62 = v53;
      v63 = v14 & 1;
      sub_6780();
      v38 = sub_D6C60();
      v40 = sub_558F0(v38, v39, v64);
      v49 = v4;
      v41 = v40;

      *(v35 + 4) = v41;
      _os_log_impl(&dword_0, v32, v33, "[Default Email Selection] update failed: %s", v35, 0xCu);
      sub_67D4(v37);

      v13 = v50;

      (*(v36 + 8))(v8, v49);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v42 = v54;
    if (v54)
    {
      v43 = v52;
    }

    else
    {
      v43 = 0;
    }

    if (v54)
    {
      v44 = v13;
    }

    else
    {
      v44 = 0;
    }

    if (v54)
    {
      v45 = v51 & 1;
    }

    else
    {
      v45 = 0;
    }

    if (v54)
    {
      v46 = v53;
    }

    else
    {
      v46 = 0;
    }

    if (v54)
    {
      v47 = v14 & 1;
    }

    else
    {
      v47 = 0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v58 = v43;
    v59 = v42;
    v60 = v44;
    v61 = v45;
    v62 = v46;
    v63 = v47;

    sub_D5580();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v56 = 0;
    v57 = 0;
    return sub_D5580();
  }

  return result;
}

uint64_t sub_D3588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_D5340();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v10 = sub_6610(v6, qword_137988);
  (*(v7 + 16))(v9, v10, v6);
  v11 = sub_D5320();
  v12 = sub_D68A0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "[Default Email Selection] update successful", v13, 2u);
  }

  (*(v7 + 8))(v9, v6);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 24) = a3;
    *(Strong + 32) = a4;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = *(result + OBJC_IVAR____TtCV18icloudMailSettings25DefaultEmailSelectionView9ViewModel_completionHandler);

    v16(a3, a4);
  }

  return result;
}

uint64_t sub_D37D4()
{

  v1 = OBJC_IVAR____TtCV18icloudMailSettings25DefaultEmailSelectionView9ViewModel__newDefaultSelection;
  v2 = sub_66D4(&qword_124830, &qword_E1560);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV18icloudMailSettings25DefaultEmailSelectionView9ViewModel__updateError;
  v4 = sub_66D4(&qword_121070, &qword_DAFE0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_67D4((v0 + OBJC_IVAR____TtCV18icloudMailSettings25DefaultEmailSelectionView9ViewModel_repository));

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v5, v6);
}

uint64_t type metadata accessor for DefaultEmailSelectionView.ViewModel(uint64_t a1)
{
  result = qword_12A230;
  if (!qword_12A230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_D3960(uint64_t a1)
{
  sub_6158(319, &unk_127D10, &qword_124838, &qword_E1490);
  if (v1 <= 0x3F)
  {
    sub_6158(319, &qword_120EE0, &qword_120EE8, &qword_D8DD0);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_D3A98@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for DefaultEmailSelectionView.ViewModel(0);
  result = sub_D54D0();
  *a2 = result;
  return result;
}

double sub_D3AD8@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_D3B58(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_D5580();
}

void *sub_D3BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for MSRepositoryDefault();
  v23[3] = v12;
  v23[4] = &off_1188F0;
  v23[0] = a4;
  type metadata accessor for DefaultEmailSelectionView.ViewModel(0);
  v13 = swift_allocObject();
  v14 = sub_38BFC(v23, v12);
  __chkstk_darwin(v14);
  v16 = (v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = *v16;
  v19 = (v13 + OBJC_IVAR____TtCV18icloudMailSettings25DefaultEmailSelectionView9ViewModel_repository);
  v19[3] = v12;
  v19[4] = &off_1188F0;
  *v19 = v18;
  v22[0] = 0uLL;
  sub_66D4(&qword_124838, &qword_E1490);
  sub_D5530();
  memset(v22, 0, 41);
  sub_66D4(&qword_120EE8, &qword_D8DD0);
  sub_D5530();
  *(v13 + OBJC_IVAR____TtCV18icloudMailSettings25DefaultEmailSelectionView9ViewModel_cancellables) = &_swiftEmptySetSingleton;
  v13[3] = a1;
  v13[4] = a2;
  v13[2] = a3;
  v20 = (v13 + OBJC_IVAR____TtCV18icloudMailSettings25DefaultEmailSelectionView9ViewModel_completionHandler);
  *v20 = a5;
  v20[1] = a6;
  sub_67D4(v23);
  return v13;
}

uint64_t sub_D3DC0()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_D3E08()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_D3E40()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_D3E9C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_D3EF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_D3F38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_D3FB4()
{
  result = qword_12A3C0;
  if (!qword_12A3C0)
  {
    sub_6110(&qword_12A3A0, &qword_E6680);
    sub_6110(&qword_12A398, &qword_E6678);
    sub_109A8(&qword_12A3B8, &qword_12A398, &qword_E6678, &protocol conformance descriptor for List<A, B>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12A3C0);
  }

  return result;
}

unint64_t sub_D40BC()
{
  result = qword_12A3C8;
  if (!qword_12A3C8)
  {
    type metadata accessor for DefaultEmailSelectionView.ViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12A3C8);
  }

  return result;
}

uint64_t sub_D4114()
{
  sub_E0C4(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_D4164()
{
  sub_E0C4(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_D41D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_66D4(&qword_12A3F8, &qword_E6718);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_D4240()
{
  sub_6110(&qword_12A3A8, &qword_E6688);
  sub_6110(&qword_12A3A0, &qword_E6680);
  sub_D3FB4();
  sub_DFAC();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

void sub_D4330(void *a1)
{
  v1 = [a1 aa_altDSID];
  sub_3614();
  sub_3620(&dword_0, v2, v3, "[MailSettingsSpecifierProvider] adding mail specifier for secondary cloudaccount %@", v4, v5, v6, v7);
}

void sub_D43B4(void *a1)
{
  v1 = [a1 aa_altDSID];
  sub_3614();
  sub_3620(&dword_0, v2, v3, "[MailSettingsSpecifierProvider] adding mail specifier for primary cloudaccount %@", v4, v5, v6, v7);
}

void sub_D4438()
{
  sub_3608();
  sub_35FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_D4474()
{
  sub_3608();
  sub_35FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_D44B0()
{
  sub_3608();
  sub_35FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_D44EC()
{
  sub_3608();
  sub_35FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_D4528()
{
  sub_3614();
  sub_35FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_D4598()
{
  sub_3614();
  sub_35FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_D4608()
{
  sub_3608();
  sub_35FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_D4644()
{
  sub_3608();
  sub_35FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_D4680()
{
  sub_3614();
  sub_35FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_D47B8(void *a1, NSObject *a2)
{
  v4 = [a1 accountManager];
  v5 = [a1 appleAccount];
  v6 = [v5 identifier];
  v7 = 138412546;
  v8 = v4;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "iCloud Mail Unified Settings loaded with missing parameters, accountManager: %@, account: %@", &v7, 0x16u);
}

void sub_D488C()
{
  sub_3614();
  sub_35FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_D48FC()
{
  sub_3614();
  sub_35FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_D496C()
{
  sub_3608();
  sub_35FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_D49A8()
{
  sub_3608();
  sub_35FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_D49E4()
{
  sub_3614();
  sub_35FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_D4A54(id *a1, NSObject *a2)
{
  v3 = [*a1 navigationController];
  v4 = [v3 viewControllers];
  sub_3614();
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "Pop to iCloud Mail Settings: %@", v5, 0xCu);
}

void sub_D4B04()
{
  sub_3608();
  sub_35FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_D4B40()
{
  sub_3608();
  sub_35FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_D4CB0()
{
  sub_3614();
  sub_35FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}