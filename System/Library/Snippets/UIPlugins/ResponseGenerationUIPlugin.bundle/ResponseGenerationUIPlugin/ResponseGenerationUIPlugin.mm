uint64_t sub_1E48(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a5 != 4)
  {
    sub_23E1C();
  }

  sub_20A0(&qword_35428, &qword_26200);
  sub_20A0(&qword_35430, &qword_25330);
  sub_20E8(&qword_35438, &unk_26210);
  sub_2130();
  swift_getOpaqueTypeConformance2();
  sub_21B4();
  return sub_23F5C();
}

uint64_t sub_20A0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_20E8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_2130()
{
  result = qword_35440;
  if (!qword_35440)
  {
    sub_20E8(&qword_35438, &unk_26210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_35440);
  }

  return result;
}

unint64_t sub_21B4()
{
  result = qword_35448;
  if (!qword_35448)
  {
    sub_20E8(&qword_35430, &qword_25330);
    sub_2240();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_35448);
  }

  return result;
}

unint64_t sub_2240()
{
  result = qword_35450;
  if (!qword_35450)
  {
    sub_20E8(&qword_35458, &qword_26220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_35450);
  }

  return result;
}

__n128 sub_22A4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_22B4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22D4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

void sub_2338(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_238C(uint64_t a1)
{
  result = sub_237EC();
  if (v2 <= 0x3F)
  {
    result = sub_2490();
    if (v3 <= 0x3F)
    {
      result = sub_2510(319, qword_35810, SAIntentGroupRunSiriKitExecutor_ptr);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_2490()
{
  result = qword_35800;
  if (!qword_35800)
  {
    sub_2510(255, &qword_35808, AceObject_ptr);
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_35800);
  }

  return result;
}

uint64_t sub_2510(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_2560(uint64_t a1)
{
  sub_2426C();
  if (v2 <= 0x3F)
  {
    sub_288C(319);
    if (v3 <= 0x3F)
    {
      sub_2920(319);
      if (v5 <= 0x3F)
      {
        type metadata accessor for ActionableRow.ActionType(319, *(a1 + 16), *(a1 + 24), v4);
        if (v6 <= 0x3F)
        {
          sub_29B4();
          if (v7 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_2644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2426C();
  v8 = *(v6 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = v6;
    v10 = *(v8 + 48);
    v11 = a1;
LABEL_5:

    return v10(v11, a2, v9);
  }

  v12 = type metadata accessor for ActionableRow.ActionType(0, *(a3 + 16), *(a3 + 24), v7);
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = *(v13 + 48);
    v11 = a1 + *(a3 + 44);
    goto LABEL_5;
  }

  v15 = *(a1 + *(a3 + 48));
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_2768(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2426C();
  v10 = *(v8 - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = v8;
    v12 = *(v10 + 56);
    v13 = a1;
  }

  else
  {
    result = type metadata accessor for ActionableRow.ActionType(0, *(a4 + 16), *(a4 + 24), v9);
    v15 = *(result - 8);
    if (*(v15 + 84) != a3)
    {
      *(a1 + *(a4 + 48)) = (a2 - 1);
      return result;
    }

    v11 = result;
    v12 = *(v15 + 56);
    v13 = a1 + *(a4 + 44);
  }

  return v12(v13, a2, a2, v11);
}

void sub_288C(uint64_t a1)
{
  if (!qword_35898)
  {
    type metadata accessor for CommandThrottle(255);
    sub_3D64(&qword_358A0, type metadata accessor for CommandThrottle, &unk_265FC);
    v1 = sub_23BEC();
    if (!v2)
    {
      atomic_store(v1, &qword_35898);
    }
  }
}

void sub_2920(uint64_t a1)
{
  if (!qword_358A8)
  {
    sub_242FC();
    sub_3D64(&qword_358B0, &type metadata accessor for Context, &protocol conformance descriptor for Context);
    v1 = sub_23BEC();
    if (!v2)
    {
      atomic_store(v1, &qword_358A8);
    }
  }
}

unint64_t sub_29B4()
{
  result = qword_358B8;
  if (!qword_358B8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_358B8);
  }

  return result;
}

uint64_t sub_2A4C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v61 = a2;
  v3 = sub_23BAC();
  v62 = v3;
  v60 = *(v3 - 8);
  __chkstk_darwin(v3);
  v58 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v7);
  v56 = *(a1 + 16);
  sub_23B8C();
  sub_20E8(&qword_358C0, &qword_25438);
  v8 = sub_23B8C();
  v51 = *(a1 + 24);
  v74 = v51;
  v75 = &protocol witness table for _AllowsHitTestingModifier;
  v59 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  WitnessTable = swift_getWitnessTable();
  v10 = sub_3F18(&qword_358C8, &qword_358C0, &qword_25438, &protocol conformance descriptor for _BackgroundModifier<A>);
  v72 = WitnessTable;
  v73 = v10;
  v48 = v8;
  v47 = swift_getWitnessTable();
  v11 = sub_2406C();
  v52 = *(v11 - 8);
  __chkstk_darwin(v11);
  v45 = &v41 - v12;
  v13 = swift_getWitnessTable();
  v44 = v13;
  v43 = sub_3D64(&qword_358D0, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v68 = v11;
  v69 = v3;
  v70 = v13;
  v71 = v43;
  v54 = &opaque type descriptor for <<opaque return type of View.buttonStyle<A>(_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v55 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v42 = &v41 - v14;
  v15 = sub_23B8C();
  v53 = *(v15 - 8);
  __chkstk_darwin(v15);
  v46 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v49 = &v41 - v19;
  v20 = v5;
  v21 = *(v5 + 16);
  v22 = v57;
  v41 = a1;
  v21(&v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v57, a1, v18);
  v23 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v24 = swift_allocObject();
  v25 = v56;
  v26 = v51;
  *(v24 + 16) = v56;
  *(v24 + 24) = v26;
  (*(v20 + 32))(v24 + v23, &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v63 = v25;
  v64 = v26;
  v65 = v22;
  v27 = v45;
  sub_2405C();
  v28 = v58;
  sub_23B9C();
  v29 = v42;
  v30 = v62;
  v31 = v44;
  v32 = v43;
  sub_23F4C();
  (*(v60 + 8))(v28, v30);
  (*(v52 + 8))(v27, v11);
  sub_3DD4(v41);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23ADC();

  v68 = v11;
  v69 = v62;
  v70 = v31;
  v71 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v46;
  v35 = OpaqueTypeMetadata2;
  sub_23F8C();
  (*(v55 + 8))(v29, v35);
  v66 = OpaqueTypeConformance2;
  v67 = &protocol witness table for _AllowsHitTestingModifier;
  swift_getWitnessTable();
  v36 = v53;
  v37 = *(v53 + 16);
  v38 = v49;
  v37(v49, v34, v15);
  v39 = *(v36 + 8);
  v39(v34, v15);
  v37(v61, v38, v15);
  return (v39)(v38, v15);
}

uint64_t sub_3190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for ActionableRow(0, a2, a3, a4);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - v9;
  sub_3DD4(v11);
  (*(v8 + 16))(v10, a1, v7);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v8 + 32))(v13 + v12, v10, v7);

  sub_207B4(sub_40FC);
}

uint64_t sub_32F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v56 = a1;
  v5 = sub_242CC();
  v58 = *(v5 - 8);
  v59 = v5;
  __chkstk_darwin(v5);
  v57 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_237EC();
  v48 = *(v7 - 8);
  v49 = v7;
  __chkstk_darwin(v7);
  v47 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ActionableRow.ActionType(0, a2, a3, v9);
  v53 = *(v10 - 8);
  v54 = v10;
  __chkstk_darwin(v10);
  v55 = (&v45 - v11);
  v12 = sub_20A0(&qword_35C20, &unk_25498);
  __chkstk_darwin(v12 - 8);
  v14 = &v45 - v13;
  v50 = sub_241FC();
  v15 = *(v50 - 8);
  __chkstk_darwin(v50);
  v52 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2375C();
  __chkstk_darwin(v17 - 8);
  v51 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_23A9C();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_236EC();
  v23 = sub_23A8C();
  v24 = sub_2446C();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v46 = a2;
    v27 = a3;
    v28 = v26;
    v60 = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_20FB4(2036625250, 0xE400000000000000, &v60);
    _os_log_impl(&dword_0, v23, v24, "%s Actionable row tapped", v25, 0xCu);
    sub_4230(v28);
    a3 = v27;
    a2 = v46;
  }

  (*(v20 + 8))(v22, v19);
  v30 = type metadata accessor for ActionableRow(0, a2, a3, v29);
  v31 = v56;
  v32 = sub_41AC(v30);
  sub_17434(&_swiftEmptyArrayStorage);
  sub_2374C();

  (*(v15 + 104))(v52, enum case for InteractionType.componentTapped(_:), v50);
  sub_241BC();
  v33 = sub_241DC();
  (*(*(v33 - 8) + 56))(v14, 0, 1, v33);
  v34 = objc_allocWithZone(sub_2428C());
  v35 = sub_2427C();
  sub_242EC();

  v36 = v55;
  (*(v53 + 16))(v55, v31 + *(v30 + 44), v54);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v38 = *v36;
    v39 = v57;
    if (EnumCaseMultiPayload == 1)
    {
      sub_2424C();
      sub_242AC();
    }

    else
    {
      sub_2424C();
      sub_242BC();
    }

    return (*(v58 + 8))(v39, v59);
  }

  else
  {
    v41 = v47;
    v40 = v48;
    v42 = v49;
    (*(v48 + 32))(v47, v36, v49);
    v43 = v57;
    sub_2424C();
    sub_2429C();
    (*(v58 + 8))(v43, v59);
    return (*(v40 + 8))(v41, v42);
  }
}

uint64_t sub_3964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v30 = a4;
  v7 = *(a2 - 8);
  __chkstk_darwin(a1);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23B8C();
  v29 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v27 - v11;
  sub_20E8(&qword_358C0, &qword_25438);
  v13 = sub_23B8C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v28 = &v27 - v18;
  v20 = type metadata accessor for ActionableRow(0, a2, a3, v19);
  (*(a1 + *(v20 + 48)))();
  sub_23F8C();
  (*(v7 + 8))(v9, a2);
  sub_240AC();
  sub_20A0(&qword_358D8, &qword_25488);
  v33 = a3;
  v34 = &protocol witness table for _AllowsHitTestingModifier;
  WitnessTable = swift_getWitnessTable();
  sub_3E60();
  sub_23F3C();
  (*(v29 + 8))(v12, v10);
  v22 = sub_3F18(&qword_358C8, &qword_358C0, &qword_25438, &protocol conformance descriptor for _BackgroundModifier<A>);
  v31 = WitnessTable;
  v32 = v22;
  swift_getWitnessTable();
  v23 = *(v14 + 16);
  v24 = v28;
  v23(v28, v16, v13);
  v25 = *(v14 + 8);
  v25(v16, v13);
  v23(v30, v24, v13);
  return (v25)(v24, v13);
}

uint64_t sub_3D10@<X0>(uint64_t a1@<X8>)
{
  result = sub_23FAC();
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_3D64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_3DD4(uint64_t a1)
{
  result = *(v1 + *(a1 + 36));
  if (!result)
  {
    type metadata accessor for CommandThrottle(0);
    sub_3D64(&qword_358A0, type metadata accessor for CommandThrottle, &unk_265FC);
    result = sub_23BCC();
    __break(1u);
  }

  return result;
}

unint64_t sub_3E60()
{
  result = qword_358E0;
  if (!qword_358E0)
  {
    sub_20E8(&qword_358D8, &qword_25488);
    sub_3F18(&qword_358E8, &qword_358F0, &qword_25490, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_358E0);
  }

  return result;
}

uint64_t sub_3F18(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_20E8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_3F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = type metadata accessor for ActionableRow(0, v5, v6, a4);
  v8 = *(*(v7 - 8) + 80);
  v9 = (v8 + 32) & ~v8;
  v10 = *(*(v7 - 8) + 64);
  v11 = v4 + v9;
  v12 = sub_2426C();
  (*(*(v12 - 8) + 8))(v4 + v9, v12);

  v13 = *(v7 + 44);
  type metadata accessor for ActionableRow.ActionType(0, v5, v6, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    v16 = sub_237EC();
    (*(*(v16 - 8) + 8))(v11 + v13, v16);
  }

  return _swift_deallocObject(v4, v9 + v10, v8 | 7);
}

uint64_t sub_4114(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for ActionableRow(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a1(v8, v5, v6);
}

uint64_t sub_41AC(uint64_t a1)
{
  result = *(v1 + *(a1 + 40));
  if (!result)
  {
    sub_242FC();
    sub_3D64(&qword_358B0, &type metadata accessor for Context, &protocol conformance descriptor for Context);
    result = sub_23BCC();
    __break(1u);
  }

  return result;
}

uint64_t sub_4230(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_42AC(uint64_t a1)
{
  sub_23B8C();
  sub_20E8(&qword_358C0, &qword_25438);
  sub_23B8C();
  swift_getWitnessTable();
  sub_3F18(&qword_358C8, &qword_358C0, &qword_25438, &protocol conformance descriptor for _BackgroundModifier<A>);
  swift_getWitnessTable();
  sub_2406C();
  sub_23BAC();
  swift_getWitnessTable();
  sub_3D64(&qword_358D0, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  swift_getOpaqueTypeMetadata2();
  sub_23B8C();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

void sub_4490()
{
  v0 = sub_2391C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = &_swiftEmptyArrayStorage;
  v4 = sub_2388C();
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    while (v6 < *(v4 + 16))
    {
      (*(v1 + 16))(v3, v4 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v6, v0);
      v7 = sub_46D4();
      (*(v1 + 8))(v3, v0);
      if (v7 >> 62)
      {
        if (!sub_245FC())
        {
LABEL_17:

          return;
        }
      }

      else if (!*(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_17;
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        v8 = sub_2459C();
      }

      else
      {
        if (!*(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_19;
        }

        v8 = *(v7 + 32);
      }

      v9 = v8;

      v10 = v9;
      sub_243BC();
      if (*(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v12 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v11 = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8));
        sub_243EC();
      }

      ++v6;
      sub_243FC();

      if (v5 == v6)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_16:
  }
}

void *sub_46D4()
{
  v0 = sub_20A0(&qword_358F8, &qword_254A8);
  __chkstk_darwin(v0 - 8);
  v2 = v30 - v1;
  v3 = sub_237DC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v9 = v30 - v8;
  v10 = sub_238BC();
  if (!v11)
  {
    return &_swiftEmptyArrayStorage;
  }

  v12 = v11;
  if (v10 == sub_237CC() && v12 == v13)
  {
  }

  else
  {
    v14 = sub_246AC();

    if ((v14 & 1) == 0)
    {
      return &_swiftEmptyArrayStorage;
    }
  }

  v15 = sub_238CC();
  if (v16 >> 60 == 15)
  {
    return &_swiftEmptyArrayStorage;
  }

  v17 = v15;
  v18 = v16;
  sub_2367C();
  swift_allocObject();
  sub_2366C();
  sub_4B78();
  sub_2365C();

  (*(v4 + 56))(v2, 0, 1, v3);
  (*(v4 + 32))(v9, v2, v3);
  (*(v4 + 16))(v6, v9, v3);
  if ((*(v4 + 88))(v6, v3) != enum case for RGPluginModel.card(_:))
  {
    v28 = *(v4 + 8);
    v28(v6, v3);
    sub_4C38(v17, v18);
    v28(v9, v3);
    return &_swiftEmptyArrayStorage;
  }

  (*(v4 + 96))(v6, v3);
  v20 = *v6;
  v19 = v6[1];
  v21 = objc_allocWithZone(_SFPBCard);
  sub_4CA0(v20, v19);
  isa = sub_236AC().super.isa;
  sub_4C4C(v20, v19);
  v23 = [v21 initWithData:isa];

  if (!v23)
  {
    sub_4C38(v17, v18);
LABEL_15:
    sub_4C4C(v20, v19);
    (*(v4 + 8))(v9, v3);
    return &_swiftEmptyArrayStorage;
  }

  v24 = [objc_allocWithZone(SFCard) initWithProtobuf:v23];
  if (!v24)
  {
    sub_4C38(v17, v18);

    goto LABEL_15;
  }

  v25 = v24;
  v26 = [v24 cardSections];
  if (v26)
  {
    v27 = v26;
    sub_4CF4();
    v30[0] = sub_243DC();

    sub_4C4C(v20, v19);
    sub_4C38(v17, v18);
  }

  else
  {

    sub_4C38(v17, v18);
    sub_4C4C(v20, v19);
    v30[0] = &_swiftEmptyArrayStorage;
  }

  (*(v4 + 8))(v9, v3);
  return v30[0];
}

unint64_t sub_4B78()
{
  result = qword_35900;
  if (!qword_35900)
  {
    sub_237DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_35900);
  }

  return result;
}

uint64_t sub_4BD0(uint64_t a1)
{
  v2 = sub_20A0(&qword_358F8, &qword_254A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_4C38(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_4C4C(result, a2);
  }

  return result;
}

uint64_t sub_4C4C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_4CA0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_4CF4()
{
  result = qword_35C00;
  if (!qword_35C00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_35C00);
  }

  return result;
}

uint64_t sub_4D40()
{
  v0 = sub_6958(&off_31830);
  result = sub_69F0(&unk_31850);
  qword_35908 = v0;
  return result;
}

uint64_t sub_4D80@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_20A0(&qword_359B8, &qword_25540);
  __chkstk_darwin(v2 - 8);
  v4 = &v30 - v3;
  v5 = sub_2369C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v30 - v10;
  sub_2390C();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    v12 = sub_6A44(v4, &qword_359B8, &qword_25540);
    v15 = 0;
    v16 = 0xE000000000000000;
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    (*(v6 + 16))(v8, v11, v5);
    v15 = sub_2435C();
    v16 = v17;
    v12 = (*(v6 + 8))(v11, v5);
  }

  v18 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v18 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    v31 = v15;
    v32 = v16;
    sub_6AA4(v12, v13, v14);
    v19 = sub_23E9C();
    v21 = v20;
    v23 = v22;
    v25 = v24;
    KeyPath = swift_getKeyPath();
    v31 = v19;
    v32 = v21;
    v27 = v23 & 1;
    v33 = v23 & 1;
    v34 = v25;
    v35 = KeyPath;
    v36 = 1;
    v37 = 0;
    sub_20A0(&qword_359C8, &unk_26410);
    sub_6B00();
    v28 = sub_23EAC();
    sub_6BB8(v19, v21, v27);

    *(a1 + 24) = &type metadata for AnyView;
    *(a1 + 32) = &protocol witness table for AnyView;
    *a1 = v28;
  }

  else
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_504C@<X0>(void *a1@<X8>)
{
  v46 = a1;
  v47 = sub_20A0(&qword_35910, &qword_26430);
  __chkstk_darwin(v47);
  v2 = v39 - v1;
  v3 = sub_20A0(&qword_35918, &qword_254B0);
  __chkstk_darwin(v3 - 8);
  v41 = v39 - v4;
  v5 = sub_20A0(&qword_35920, &qword_254B8);
  __chkstk_darwin(v5 - 8);
  v40 = v39 - v6;
  v45 = sub_2413C();
  v44 = *(v45 - 8);
  __chkstk_darwin(v45);
  v43 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20A0(&qword_35928, &qword_254C0);
  __chkstk_darwin(v8);
  v10 = v39 - v9;
  v11 = sub_2378C();
  __chkstk_darwin(v11 - 8);
  v12 = sub_2419C();
  v42 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20A0(&qword_35930, &qword_254C8);
  __chkstk_darwin(v15 - 8);
  v17 = (v39 - v16);
  sub_238DC();
  v18 = sub_2410C();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    goto LABEL_2;
  }

  v39[1] = v8;
  v21 = (*(v19 + 88))(v17, v18);
  if (v21 == enum case for DisplayRepresentation.Image.data(_:))
  {
    (*(v19 + 96))(v17, v18);
    v22 = *v17;
    v23 = v17[1];
    sub_2377C();
    sub_241AC();
    sub_5CF0();
    v24 = sub_23EAC();
    (*(v42 + 8))(v14, v12);
    *&v50 = v24;
    BYTE8(v50) = 0;
    swift_retain_n();
    sub_23D1C();
    v25 = BYTE8(v55[0]);
    *v10 = *&v55[0];
    v10[8] = v25;
    swift_storeEnumTagMultiPayload();

    sub_20A0(&qword_35938, &qword_254D0);
    sub_5BF0();
    sub_5C6C();
    sub_23D1C();
    sub_4C4C(v22, v23);
  }

  else
  {
    if (v21 != enum case for DisplayRepresentation.Image.symbol(_:))
    {
      (*(v19 + 8))(v17, v18);
LABEL_2:
      sub_5974(v2);
      sub_5B80(v2, v10);
      swift_storeEnumTagMultiPayload();
      sub_20A0(&qword_35938, &qword_254D0);
      sub_5BF0();
      sub_5C6C();
      sub_23D1C();
      return sub_6A44(v2, &qword_35910, &qword_26430);
    }

    (*(v19 + 96))(v17, v18);
    (*(v44 + 32))(v43, v17, v45);
    sub_2411C();
    sub_23FDC();
    v26 = v40;
    sub_23CCC();
    v27 = sub_23CDC();
    (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
    v28 = sub_23FEC();

    sub_6A44(v26, &qword_35920, &qword_254B8);
    v29 = v41;
    sub_2412C();
    v30 = sub_20A0(&qword_35958, &qword_254D8);
    v31 = *(v30 - 8);
    if ((*(v31 + 48))(v29, 1, v30) == 1)
    {
      sub_6A44(v29, &qword_35918, &qword_254B0);
      v32 = sub_23FBC();
    }

    else
    {
      v33 = sub_240CC();
      (*(v31 + 8))(v29, v30);
      v34 = [v33 CGColor];
      v32 = sub_23F9C();
    }

    v35 = sub_23E2C();
    KeyPath = swift_getKeyPath();
    sub_240AC();
    sub_23B6C();
    *&v50 = v28;
    *(&v50 + 1) = v32;
    *&v51 = KeyPath;
    *(&v51 + 1) = v35;
    sub_20A0(&qword_35960, &qword_25510);
    sub_675C();
    v37 = sub_23EAC();
    v55[2] = v52;
    v55[3] = v53;
    v55[4] = v54;
    v55[0] = v50;
    v55[1] = v51;
    sub_6A44(v55, &qword_35960, &qword_25510);
    v48 = v37;
    v49 = 1;

    sub_23D1C();
    v38 = BYTE8(v50);
    *v10 = v50;
    v10[8] = v38;
    swift_storeEnumTagMultiPayload();
    sub_20A0(&qword_35938, &qword_254D0);
    sub_5BF0();
    sub_5C6C();
    sub_23D1C();

    return (*(v44 + 8))(v43, v45);
  }
}

uint64_t sub_5974@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2378C();
  __chkstk_darwin(v2 - 8);
  v3 = sub_2419C();
  v13 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_238BC();
  if (v7)
  {
    v8 = v7;
    if (qword_35420 != -1)
    {
      v11 = v6;
      swift_once();
      v6 = v11;
    }

    if ((sub_5D48(v6, v8, qword_35908) & 1) == 0)
    {
      sub_2376C();

      sub_241AC();
      (*(v13 + 32))(a1, v5, v3);
      return (*(v13 + 56))(a1, 0, 1, v3);
    }
  }

  v9 = *(v13 + 56);

  return v9(a1, 1, 1, v3);
}

uint64_t sub_5B80(uint64_t a1, uint64_t a2)
{
  v4 = sub_20A0(&qword_35910, &qword_26430);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_5BF0()
{
  result = qword_35940;
  if (!qword_35940)
  {
    sub_20E8(&qword_35938, &qword_254D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_35940);
  }

  return result;
}

unint64_t sub_5C6C()
{
  result = qword_35948;
  if (!qword_35948)
  {
    sub_20E8(&qword_35910, &qword_26430);
    sub_5CF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_35948);
  }

  return result;
}

unint64_t sub_5CF0()
{
  result = qword_35950;
  if (!qword_35950)
  {
    sub_2419C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_35950);
  }

  return result;
}

uint64_t sub_5D48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_246EC();
  sub_2438C();
  v6 = sub_2470C();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_246AC() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_5E40(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_246EC();
  sub_2438C();
  v8 = sub_2470C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_246AC() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_61F0(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_5F90(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_20A0(&qword_359B0, &qword_25538);
  result = sub_2454C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_246EC();
      sub_2438C();
      result = sub_2470C();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_61F0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_5F90(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_6370();
      goto LABEL_16;
    }

    sub_64CC(v8 + 1);
  }

  v10 = *v4;
  sub_246EC();
  sub_2438C();
  result = sub_2470C();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_246AC();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_246CC();
  __break(1u);
  return result;
}

void *sub_6370()
{
  v1 = v0;
  sub_20A0(&qword_359B0, &qword_25538);
  v2 = *v0;
  v3 = sub_2453C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_64CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_20A0(&qword_359B0, &qword_25538);
  result = sub_2454C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_246EC();

      sub_2438C();
      result = sub_2470C();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_6704@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23C1C();
  *a1 = result;
  return result;
}

unint64_t sub_675C()
{
  result = qword_35968;
  if (!qword_35968)
  {
    sub_20E8(&qword_35960, &qword_25510);
    sub_67E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_35968);
  }

  return result;
}

unint64_t sub_67E8()
{
  result = qword_35970;
  if (!qword_35970)
  {
    sub_20E8(&qword_35978, &qword_25518);
    sub_68A0();
    sub_3F18(&qword_359A0, &qword_359A8, &qword_25530, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_35970);
  }

  return result;
}

unint64_t sub_68A0()
{
  result = qword_35980;
  if (!qword_35980)
  {
    sub_20E8(&qword_35988, &qword_25520);
    sub_3F18(&qword_35990, &qword_35998, &qword_25528, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_35980);
  }

  return result;
}

uint64_t sub_6958(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_2444C();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_5E40(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_6A44(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_20A0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_6AA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_359C0;
  if (!qword_359C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_359C0);
  }

  return result;
}

unint64_t sub_6B00()
{
  result = qword_359D0;
  if (!qword_359D0)
  {
    sub_20E8(&qword_359C8, &unk_26410);
    sub_3F18(&qword_359D8, &unk_359E0, &qword_25578, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_359D0);
  }

  return result;
}

uint64_t sub_6BB8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void *sub_6BC8(uint64_t a1)
{
  v2 = sub_244FC();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_B860(&v4, v2, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_6C48@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for RGSFCardView(0);
  v7 = *(v6 - 1);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2425C();
  *&v9[v6[6]] = 0;
  v10 = v6[7];
  *&v9[v10] = sub_1744C(&_swiftEmptyArrayStorage);
  *&v9[v6[8]] = 3;
  v11 = &v9[v6[10]];
  *v11 = sub_7844;
  *(v11 + 1) = 0;
  v11[16] = 0;
  v12 = &v9[v6[11]];
  v23 = 0x4059000000000000;
  sub_2400C();
  v13 = v25;
  *v12 = v24;
  *(v12 + 1) = v13;
  v14 = objc_allocWithZone(_SFPBCard);
  sub_4CA0(a1, a2);
  isa = sub_236AC().super.isa;
  sub_4C4C(a1, a2);
  v16 = [v14 initWithData:isa];

  if (v16)
  {
    v17 = [objc_allocWithZone(SFCard) initWithProtobuf:v16];
    if (v17)
    {
      *&v9[v6[5]] = v17;
      v18 = &v9[v6[9]];
      LOBYTE(v23) = 0;
      sub_2400C();

      sub_4C4C(a1, a2);
      v19 = v25;
      *v18 = v24;
      *(v18 + 1) = v19;
      sub_B8F0(v9, a3);
      (*(v7 + 56))(a3, 0, 1, v6);
      return sub_B954(v9);
    }

    sub_4C4C(a1, a2);
  }

  else
  {
    sub_4C4C(a1, a2);
  }

  v21 = sub_2426C();
  (*(*(v21 - 8) + 8))(v9, v21);

  return (*(v7 + 56))(a3, 1, 1, v6);
}

uint64_t sub_6F18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v76 = sub_236DC();
  v82 = *(v76 - 8);
  __chkstk_darwin(v76);
  v4 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v75 = (&v72 - v6);
  __chkstk_darwin(v7);
  v80 = (&v72 - v8);
  v9 = sub_2370C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for RGSFCardView(0);
  v77 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2425C();
  v79 = *(v13 + 24);
  *(v79 + v15) = 0;
  v16 = *(v13 + 28);
  *(v15 + v16) = sub_1744C(&_swiftEmptyArrayStorage);
  *(v15 + *(v13 + 32)) = 3;
  v17 = (v15 + *(v13 + 40));
  *v17 = sub_7844;
  *(v17 + 1) = 0;
  v17[16] = 0;
  v18 = (v15 + *(v13 + 44));
  v85 = 0x4059000000000000;
  sub_2400C();
  v19 = v84;
  *v18 = v83;
  *(v18 + 1) = v19;
  v20 = v10;
  v21 = *(v10 + 2);
  v81 = a1;
  v21(v12, a1, v9);
  v22 = (*(v10 + 11))(v12, v9);
  if (v22 != enum case for Layout.expandable(_:))
  {
    v72 = v15;
    v73 = v4;
    v33 = v79;
    v32 = v80;
    v75 = v13;
    if (v22 != enum case for Layout.truncated(_:))
    {
      v51 = v82;
      if (v22 != enum case for Layout.card(_:))
      {
        v56 = *(v20 + 1);
        v56(v81, v9);
        v56(v12, v9);
        v57 = sub_2426C();
        (*(*(v57 - 8) + 8))(v72, v57);

        return (*(v77 + 56))(v78, 1, 1, v75);
      }

      (*(v20 + 12))(v12, v9);
      v52 = v20;
      v53 = v76;
      (*(v51 + 32))(v32, v12, v76);
      v54 = sub_236CC();
      v52[1](v81, v9);
      (*(v51 + 8))(v32, v53);
      v55 = 0;
      v13 = v75;
      v15 = v72;
      *&v72[v75[5]] = v54;
      goto LABEL_39;
    }

    v80 = v10;
    v34 = *(v10 + 12);
    v74 = v9;
    v34(v12, v9);
    v35 = *&v12[*(sub_20A0(&qword_35BF0, &qword_256A8) + 48)];
    v36 = v82;
    v37 = v76;
    (*(v82 + 32))(v73, v12, v76);
    v38 = sub_236CC();
    v13 = v75;
    v15 = v72;
    *&v72[v75[5]] = v38;
    v39 = sub_236CC();
    v40 = [v39 copy];

    sub_244EC();
    swift_unknownObjectRelease();
    sub_2510(0, &qword_35BF8, SFCard_ptr);
    if (swift_dynamicCast())
    {
      v41 = v85;
      *&v33[v15] = v85;
      v42 = [v41 cardSections];
      v43 = v81;
      v44 = v73;
      if (v42)
      {
        sub_2510(0, &qword_35C00, SFCardSection_ptr);
        v13 = sub_243DC();

        if (v35 < 0)
        {
          __break(1u);
        }

        else
        {
          v45 = v13 & 0xFFFFFFFFFFFFFF8;
          v40 = (v13 >> 62);
          if (!(v13 >> 62))
          {
            v46 = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8));
            if (v46 >= v35)
            {
              v47 = v35;
            }

            else
            {
              v47 = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8));
            }

            if (v35)
            {
              v48 = v47;
            }

            else
            {
              v48 = 0;
            }

            if (v46 >= v48)
            {
              goto LABEL_15;
            }

            goto LABEL_55;
          }
        }

        if (v13 < 0)
        {
          v37 = v13;
        }

        else
        {
          v37 = v45;
        }

        v69 = sub_245FC();
        result = sub_245FC();
        if (result < 0)
        {
          __break(1u);
          return result;
        }

        if (v69 >= v35)
        {
          v70 = v35;
        }

        else
        {
          v70 = v69;
        }

        if (v69 < 0)
        {
          v70 = v35;
        }

        if (v35)
        {
          v48 = v70;
        }

        else
        {
          v48 = 0;
        }

        v71 = sub_245FC();
        v15 = v72;
        v44 = v73;
        if (v71 >= v48)
        {
LABEL_15:
          if ((v13 & 0xC000000000000001) != 0)
          {

            if (v48)
            {
              v49 = 0;
              do
              {
                v50 = v49 + 1;
                sub_2458C(v49);
                v49 = v50;
              }

              while (v48 != v50);
            }
          }

          else
          {
          }

          v79 = v41;

          if (v40)
          {
            v41 = sub_2460C();
            v59 = v60;
            v40 = v61;
            v48 = v62;

            v13 = v75;
            v37 = v76;
            if (v48)
            {
              goto LABEL_30;
            }
          }

          else
          {
            v41 = (v13 & 0xFFFFFFFFFFFFFF8);
            v59 = (v13 & 0xFFFFFFFFFFFFFF8) + 32;
            v48 = (2 * v48) | 1;
            v13 = v75;
            v37 = v76;
            if (v48)
            {
LABEL_30:
              v72 = v59;
              v35 = v40;
              sub_246BC();
              swift_unknownObjectRetain_n();
              v63 = swift_dynamicCastClass();
              if (!v63)
              {
                swift_unknownObjectRelease();
                v63 = &_swiftEmptyArrayStorage;
              }

              v64 = v63[2];

              if (!__OFSUB__(v48 >> 1, v40))
              {
                if (v64 == (v48 >> 1) - v40)
                {
                  v65 = swift_dynamicCastClass();
                  swift_unknownObjectRelease_n();
                  v44 = v73;
                  if (v65)
                  {
LABEL_36:
                    isa = sub_243CC().super.isa;

                    [v79 setCardSections:isa];

                    v43 = v81;
                    v36 = v82;
                    goto LABEL_37;
                  }

LABEL_35:
                  swift_unknownObjectRelease();
                  goto LABEL_36;
                }

                goto LABEL_57;
              }

LABEL_56:
              __break(1u);
LABEL_57:
              swift_unknownObjectRelease_n();
              v40 = v35;
              v59 = v72;
              v44 = v73;
            }
          }

          sub_B76C(v41, v59, v40, v48);
          goto LABEL_35;
        }

LABEL_55:
        __break(1u);
        goto LABEL_56;
      }
    }

    else
    {
      *&v33[v15] = 0;
      v43 = v81;
      v44 = v73;
    }

LABEL_37:
    v80[1](v43, v74);
    (*(v36 + 8))(v44, v37);
    goto LABEL_38;
  }

  (*(v10 + 12))(v12, v9);
  v23 = *(sub_20A0(&qword_35C08, &qword_256B0) + 48);
  v24 = v82;
  v74 = v9;
  v25 = *(v82 + 32);
  v26 = v80;
  v27 = v76;
  v25(v80, v12, v76);
  v28 = &v12[v23];
  v29 = v75;
  v25(v75, v28, v27);
  *(v15 + *(v13 + 20)) = sub_236CC();
  v30 = sub_236CC();
  (*(v10 + 1))(v81, v74);
  v31 = *(v24 + 8);
  v31(v29, v27);
  v31(v26, v27);
  *(v79 + v15) = v30;
LABEL_38:
  v55 = 1;
LABEL_39:
  v67 = (v15 + *(v13 + 36));
  *v67 = v55;
  *(v67 + 1) = 0;
  v68 = v78;
  sub_B8F0(v15, v78);
  (*(v77 + 56))(v68, 0, 1, v13);
  return sub_B954(v15);
}

uint64_t sub_7844()
{
  v0 = sub_20A0(&qword_35BE8, &qword_25658);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - v2;
  type metadata accessor for ObservableSize(0);
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtC26ResponseGenerationUIPlugin14ObservableSize__size;
  v8 = 0;
  v9 = 0;
  v10 = 1;
  sub_20A0(&unk_35A38, &qword_255F0);
  sub_23ACC();
  (*(v1 + 32))(v4 + v5, v3, v0);
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = 0;
  v9 = 0;
  v10 = 1;

  sub_23AEC();
  return v4;
}

double sub_79AC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = type metadata accessor for CardVC(0);
  v4 = (v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for RGSFCardView(0);
  v8 = *(a1 + v7[5]);
  v9 = (a1 + v7[10]);
  v10 = *v9;
  v35 = v9[1];
  v36 = v10;
  v34 = *(v9 + 16);
  v33 = type metadata accessor for ObservableSize(0);
  v32 = sub_C844(&qword_35D10, type metadata accessor for ObservableSize, &unk_25620);
  v31 = v8;
  v30 = sub_23B1C();
  sub_2424C();
  v11 = *(a1 + v7[7]);
  v12 = (a1 + v7[9]);
  v13 = *v12;
  v14 = *(v12 + 1);
  LOBYTE(v38) = v13;
  v39 = v14;

  sub_20A0(&unk_35D60, &qword_25798);
  sub_2403C();
  v15 = v40;
  v29 = v41;
  v16 = *(a1 + v7[6]);
  sub_242FC();
  sub_C844(&qword_358B0, &type metadata accessor for Context, &protocol conformance descriptor for Context);
  v17 = v16;
  *v6 = sub_23BDC();
  v6[1] = v18;
  v19 = v30;
  v6[2] = v31;
  v6[3] = v19;
  *(v6 + v4[10]) = v11;
  swift_unknownObjectWeakInit();
  v20 = v6 + v4[12];
  *v20 = v15;
  v20[16] = v29;
  *(v6 + v4[13]) = v16;
  sub_23B1C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23ADC();

  if (v41 == 1)
  {
    v21 = (a1 + v7[11]);
    v22 = *v21;
    v23 = v21[1];
    *&v40 = v22;
    *(&v40 + 1) = v23;
    sub_20A0(&qword_35D78, &qword_257A8);
    sub_2401C();
  }

  sub_240AC();
  sub_23B6C();
  v24 = v37;
  sub_C900(v6, v37);
  v25 = (v24 + *(sub_20A0(&qword_35D70, &qword_257A0) + 36));
  v26 = v41;
  *v25 = v40;
  v25[1] = v26;
  result = *&v42;
  v25[2] = v42;
  return result;
}

uint64_t sub_7CEC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23ADC();

  return v1;
}

uint64_t sub_7D6C()
{
  v1 = OBJC_IVAR____TtC26ResponseGenerationUIPlugin14ObservableSize__size;
  v2 = sub_20A0(&qword_35BE8, &qword_25658);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

void sub_7E3C(uint64_t a1)
{
  sub_7ECC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_7ECC(uint64_t a1)
{
  if (!qword_35A30)
  {
    sub_20E8(&unk_35A38, &qword_255F0);
    v1 = sub_23AFC();
    if (!v2)
    {
      atomic_store(v1, &qword_35A30);
    }
  }
}

uint64_t sub_7F30@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ObservableSize(0);
  result = sub_23ABC();
  *a2 = result;
  return result;
}

id sub_7FDC(id a1)
{
  v2 = v1;
  v4 = sub_20A0(&qword_35C18, &unk_256C0);
  __chkstk_darwin(v4 - 8);
  v82 = &v81 - v5;
  v6 = sub_20A0(&qword_35C20, &unk_25498);
  __chkstk_darwin(v6 - 8);
  v8 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v87 = &v81 - v10;
  v11 = sub_241FC();
  v90 = *(v11 - 8);
  v91 = v11;
  __chkstk_darwin(v11);
  v89 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v86 = &v81 - v14;
  v15 = sub_2375C();
  v83 = *(v15 - 8);
  v84 = v15;
  __chkstk_darwin(v15);
  v88 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v85 = (&v81 - v18);
  v19 = sub_23A9C();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v81 - v24;
  sub_236EC();
  v26 = sub_23A8C();
  v27 = sub_2446C();
  v28 = os_log_type_enabled(v26, v27);
  v93 = a1;
  if (v28)
  {
    v29 = v2;
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v94 = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_20FB4(0xD000000000000025, 0x8000000000026DA0, &v94);
    _os_log_impl(&dword_0, v26, v27, "%s Card row enagaged", v30, 0xCu);
    sub_4230(v31);
    a1 = v93;

    v2 = v29;
  }

  v32 = *(v20 + 8);
  result = v32(v25, v19);
  if (!a1)
  {
    __break(1u);
    goto LABEL_30;
  }

  v34 = [a1 cardSectionId];
  if (v34)
  {
    v35 = v34;
    v36 = sub_2434C();
    v38 = v37;

    v39 = *&v2[OBJC_IVAR____TtC26ResponseGenerationUIPlugin11Coordinator_commandMap];

    v92 = v38;
    if (*(v39 + 16))
    {
      goto LABEL_6;
    }

LABEL_13:

LABEL_14:
    v55 = v93;
    result = [v93 cardSection];
    if (result)
    {
      v50 = [result command];
      swift_unknownObjectRelease();
      if (v50)
      {
        objc_opt_self();
        v56 = swift_dynamicCastObjCClass();
        if (v56 && (v57 = v56, (v58 = [v56 searchString]) != 0))
        {
          v59 = v58;
          v60 = sub_2434C();
          v62 = v61;

          v63 = [v57 applicationBundleIdentifier];
          if (v63)
          {
            v64 = v63;

            v65 = sub_2434C();
            v67 = v66;

            v68 = sub_2442C();
            v69 = v82;
            (*(*(v68 - 8) + 56))(v82, 1, 1, v68);
            v70 = swift_allocObject();
            v70[2] = 0;
            v70[3] = 0;
            v70[4] = v65;
            v70[5] = v67;
            v70[6] = v60;
            v70[7] = v62;
            v71 = v93;
            v70[8] = v2;
            v70[9] = v71;
            v72 = v2;
            v73 = v71;
            sub_A2DC(0, 0, v69, &unk_256D8, v70);

LABEL_26:
            v78 = 0;
LABEL_27:

            return v78;
          }

          v55 = v93;
        }

        else
        {
        }
      }

      sub_17434(&_swiftEmptyArrayStorage);
      sub_2374C();

      (*(v90 + 104))(v89, enum case for InteractionType.componentTapped(_:), v91);
      sub_241BC();
      v74 = sub_241DC();
      (*(*(v74 - 8) + 56))(v8, 0, 1, v74);
      result = [v55 cardSection];
      if (result)
      {
        v75 = result;

        v76 = [v75 cardSectionDetail];
        swift_unknownObjectRelease();
        if (v76)
        {
          sub_2434C();
        }

        v77 = objc_allocWithZone(sub_2428C());
        v78 = 1;
        v50 = sub_2427C();
        sub_242EC();
        goto LABEL_27;
      }

      goto LABEL_31;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v36 = 0;
  v92 = 0;
  v39 = *&v2[OBJC_IVAR____TtC26ResponseGenerationUIPlugin11Coordinator_commandMap];
  v38 = 0xE000000000000000;
  if (!*(v39 + 16))
  {
    goto LABEL_13;
  }

LABEL_6:
  v40 = sub_16A5C(v36, v38);
  v42 = v41;

  if ((v42 & 1) == 0)
  {
    goto LABEL_14;
  }

  v43 = *(*(v39 + 56) + 8 * v40);
  sub_236EC();
  v44 = sub_23A8C();
  v45 = sub_2446C();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v94 = v47;
    *v46 = 136315138;
    *(v46 + 4) = sub_20FB4(0xD000000000000025, 0x8000000000026DA0, &v94);
    _os_log_impl(&dword_0, v44, v45, "%s Performing direct invocation", v46, 0xCu);
    sub_4230(v47);
  }

  v32(v22, v19);
  v48 = v84;
  v49 = v85;
  *v85 = v43;
  *(v49 + 8) = 0;
  (*(v83 + 104))(v49, enum case for Command.directInvocation(_:), v48);
  (*(v90 + 104))(v86, enum case for InteractionType.componentTapped(_:), v91);
  v50 = v43;
  v51 = v87;
  sub_241BC();
  v52 = sub_241DC();
  (*(*(v52 - 8) + 56))(v51, 0, 1, v52);
  result = [v93 cardSection];
  if (result)
  {
    v53 = result;

    v54 = [v53 cardSectionDetail];
    swift_unknownObjectRelease();
    if (v54)
    {
      sub_2434C();
    }

    v79 = objc_allocWithZone(sub_2428C());
    v80 = sub_2427C();
    sub_242EC();

    sub_242BC();
    goto LABEL_26;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_8A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[19] = a8;
  v8[20] = v18;
  v8[17] = a6;
  v8[18] = a7;
  v8[15] = a4;
  v8[16] = a5;
  sub_20A0(&qword_35C28, &qword_256F8);
  v8[21] = swift_task_alloc();
  v9 = sub_20A0(&qword_35C30, &qword_25700);
  v8[22] = v9;
  v8[23] = *(v9 - 8);
  v8[24] = swift_task_alloc();
  sub_20A0(&qword_35C20, &unk_25498);
  v8[25] = swift_task_alloc();
  v10 = sub_241FC();
  v8[26] = v10;
  v8[27] = *(v10 - 8);
  v8[28] = swift_task_alloc();
  v11 = sub_2375C();
  v8[29] = v11;
  v8[30] = *(v11 - 8);
  v8[31] = swift_task_alloc();
  v8[32] = swift_task_alloc();
  sub_20A0(&qword_35C38, &qword_25708);
  v8[33] = swift_task_alloc();
  sub_239AC();
  v8[34] = swift_task_alloc();
  v12 = sub_239EC();
  v8[35] = v12;
  v8[36] = *(v12 - 8);
  v8[37] = swift_task_alloc();
  v13 = sub_23A1C();
  v8[38] = v13;
  v8[39] = *(v13 - 8);
  v8[40] = swift_task_alloc();
  sub_20A0(&qword_35C40, &qword_25710);
  v8[41] = swift_task_alloc();
  v14 = sub_23A4C();
  v8[42] = v14;
  v8[43] = *(v14 - 8);
  v8[44] = swift_task_alloc();
  v15 = sub_23A9C();
  v8[45] = v15;
  v8[46] = *(v15 - 8);
  v8[47] = swift_task_alloc();
  v8[48] = swift_task_alloc();
  v8[49] = swift_task_alloc();
  v8[50] = swift_task_alloc();

  return (_swift_task_switch)(sub_8E90, 0, 0);
}

uint64_t sub_8E90(uint64_t a1)
{
  v98 = v1;
  sub_236EC();

  v2 = sub_23A8C();
  v3 = sub_2449C();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 400);
  v7 = *(v1 + 360);
  v6 = *(v1 + 368);
  if (v4)
  {
    v8 = *(v1 + 136);
    v89 = *(v1 + 144);
    v10 = *(v1 + 120);
    v9 = *(v1 + 128);
    v93 = *(v1 + 400);
    v11 = swift_slowAlloc();
    v97[0] = swift_slowAlloc();
    *v11 = 136315395;
    *(v11 + 4) = sub_20FB4(v10, v9, v97);
    *(v11 + 12) = 2085;
    *(v11 + 14) = sub_20FB4(v8, v89, v97);
    _os_log_impl(&dword_0, v2, v3, "Executing ShowInAppStringSearchResultsIntent implementation on %s with query: %{sensitive}s", v11, 0x16u);
    swift_arrayDestroy();

    v12 = *(v6 + 8);
    v12(v93, v7);
  }

  else
  {

    v12 = *(v6 + 8);
    v12(v5, v7);
  }

  v13 = [objc_allocWithZone(LNMetadataProvider) initWithOptions:1];
  *(v1 + 408) = v13;
  sub_20A0(&qword_35C10, &qword_256B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_255A0;
  *(inited + 32) = [objc_opt_self() showInAppStringSearchResultsProtocol];
  sub_C03C(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_2510(0, &qword_35C48, LNSystemProtocol_ptr);
  sub_C32C();
  isa = sub_2443C().super.isa;

  v16 = sub_2433C();
  *(v1 + 112) = 0;
  v17 = [v13 actionsConformingToSystemProtocols:isa logicalType:1 bundleIdentifier:v16 error:v1 + 112];

  v18 = *(v1 + 112);
  if (v17)
  {
    sub_20A0(&qword_35C60, &qword_25720);
    v19 = sub_2431C();
    v20 = v18;

    if (*(v19 + 16))
    {
      sub_16A5C(*(v1 + 120), *(v1 + 128));
      if (v21)
      {

        v23 = sub_6BC8(v22);
        v25 = v24;
        v27 = v26;

        if (v25)
        {
          v28 = *(v1 + 344);
          v29 = *(v1 + 352);
          v30 = *(v1 + 312);
          v31 = *(v1 + 320);
          v77 = *(v1 + 304);
          v78 = *(v1 + 336);
          v79 = *(v1 + 264);
          v82 = *(v1 + 256);
          v83 = *(v1 + 240);
          v84 = *(v1 + 232);
          v85 = *(v1 + 248);
          v88 = *(v1 + 224);
          v86 = *(v1 + 216);
          v87 = *(v1 + 208);
          v90 = *(v1 + 200);
          v94 = *(v1 + 160);
          v80 = *(v1 + 136);
          v81 = *(v1 + 144);

          sub_C394(v23, v25, v27);
          v32 = [objc_opt_self() defaultEnvironment];
          *(v1 + 80) = sub_2510(0, &qword_35C68, LNEnvironment_ptr);
          *(v1 + 88) = &protocol witness table for LNEnvironment;
          *(v1 + 56) = v32;
          sub_23A0C();
          (*(v30 + 104))(v31, enum case for IntentsServices.PayloadPrivacy.default(_:), v77);
          sub_23A3C();
          v33 = sub_23A2C();
          v35 = v34;
          *(v1 + 416) = v33;
          (*(v28 + 8))(v29, v78);
          sub_4230((v1 + 56));
          v36 = sub_239BC();
          (*(*(v36 - 8) + 56))(v79, 1, 1, v36);

          sub_2399C();
          sub_20A0(&qword_35C70, &qword_25728);
          sub_23A6C();
          *(swift_allocObject() + 16) = xmmword_255B0;
          *(v1 + 96) = v80;
          *(v1 + 104) = v81;

          sub_23A5C();
          sub_239DC();
          sub_17434(&_swiftEmptyArrayStorage);
          sub_2374C();

          (*(v83 + 16))(v85, v82, v84);
          (*(v86 + 104))(v88, enum case for InteractionType.componentTapped(_:), v87);
          sub_241BC();
          v37 = sub_241DC();
          v38 = (*(*(v37 - 8) + 56))(v90, 0, 1, v37);
          if (v94)
          {
            v38 = [*(v1 + 160) cardSection];
            if (v38)
            {
              v45 = v38;

              v46 = [v45 cardSectionDetail];
              swift_unknownObjectRelease();
              if (v46)
              {
                sub_2434C();
              }

              v71 = *(v1 + 168);
              v72 = objc_allocWithZone(sub_2428C());
              v73 = sub_2427C();
              sub_242EC();

              ObjectType = swift_getObjectType();
              v75 = sub_239FC();
              (*(*(v75 - 8) + 56))(v71, 1, 1, v75);
              v76 = swift_task_alloc();
              *(v1 + 424) = v76;
              *v76 = v1;
              v76[1] = sub_9B40;
              v39 = *(v1 + 296);
              v38 = *(v1 + 192);
              v40 = *(v1 + 168);
              v41 = 0;
              v42 = 0;
              v43 = ObjectType;
              v44 = v35;

              return AppIntentDispatching.perform(_:options:delegate:)(v38, v39, v40, v41, v42, v43, v44);
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
          return AppIntentDispatching.perform(_:options:delegate:)(v38, v39, v40, v41, v42, v43, v44);
        }
      }
    }

    sub_236EC();

    v47 = sub_23A8C();
    v48 = sub_2447C();

    v49 = os_log_type_enabled(v47, v48);
    v50 = *(v1 + 384);
    v51 = *(v1 + 360);
    if (v49)
    {
      v95 = *(v1 + 384);
      v53 = *(v1 + 120);
      v52 = *(v1 + 128);
      v91 = v12;
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v97[0] = v55;
      *v54 = 136315138;
      *(v54 + 4) = sub_20FB4(v53, v52, v97);
      _os_log_impl(&dword_0, v47, v48, "Unable to find any actions conforming to ShowInAppStringSearchResultsIntent in %s", v54, 0xCu);
      sub_4230(v55);

      v91(v95, v51);
    }

    else
    {

      v12(v50, v51);
    }
  }

  else
  {
    v56 = v18;
    sub_2368C();

    swift_willThrow();
    sub_236EC();

    swift_errorRetain();
    v57 = sub_23A8C();
    v58 = sub_2447C();

    v59 = os_log_type_enabled(v57, v58);
    v61 = *(v1 + 368);
    v60 = *(v1 + 376);
    v62 = *(v1 + 360);
    if (v59)
    {
      v96 = *(v1 + 376);
      v63 = *(v1 + 120);
      v64 = *(v1 + 128);
      v92 = *(v1 + 360);
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v97[0] = v67;
      *v65 = 136315394;
      *(v65 + 4) = sub_20FB4(v63, v64, v97);
      *(v65 + 12) = 2112;
      swift_errorRetain();
      v68 = _swift_stdlib_bridgeErrorToNSError();
      *(v65 + 14) = v68;
      *v66 = v68;
      _os_log_impl(&dword_0, v57, v58, "Failed to execute ShowInAppStringSearchResultsIntent implementation on %s: %@", v65, 0x16u);
      sub_6A44(v66, &qword_35C58, &qword_25718);

      sub_4230(v67);

      (*(v61 + 8))(v96, v92);
    }

    else
    {

      (*(v61 + 8))(v60, v62);
    }
  }

  v69 = *(v1 + 8);

  return v69();
}

uint64_t sub_9B40()
{
  v2 = *v1;
  (*v1)[54] = v0;

  if (v0)
  {
    sub_6A44(v2[21], &qword_35C28, &qword_256F8);
    v3 = sub_9FAC;
  }

  else
  {
    v5 = v2[23];
    v4 = v2[24];
    v6 = v2[22];
    sub_6A44(v2[21], &qword_35C28, &qword_256F8);
    (*(v5 + 8))(v4, v6);
    v3 = sub_9CDC;
  }

  return (_swift_task_switch)(v3, 0, 0);
}

uint64_t sub_9CDC(uint64_t a1)
{
  v23 = v1;
  sub_236EC();

  v2 = sub_23A8C();
  v3 = sub_2449C();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[49];
  v6 = v1[45];
  v7 = v1[46];
  if (v4)
  {
    v9 = v1[15];
    v8 = v1[16];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_20FB4(v9, v8, &v22);
    _os_log_impl(&dword_0, v2, v3, "Finished executing ShowInAppStringSearchResultsIntent conformance on %s", v10, 0xCu);
    sub_4230(v11);
  }

  (*(v7 + 8))(v5, v6);
  v12 = v1[51];
  v13 = v1[36];
  v20 = v1[35];
  v21 = v1[37];
  v14 = v1[32];
  v16 = v1[29];
  v15 = v1[30];
  v17 = [objc_allocWithZone(SAUICloseAssistant) init];
  sub_242AC();

  swift_unknownObjectRelease();
  (*(v15 + 8))(v14, v16);
  (*(v13 + 8))(v21, v20);

  v18 = v1[1];

  return v18();
}

uint64_t sub_9FAC()
{
  v24 = v0;
  v2 = *(v0 + 288);
  v1 = *(v0 + 296);
  v3 = *(v0 + 280);
  v4 = *(v0 + 256);
  v5 = *(v0 + 232);
  v6 = *(v0 + 240);

  swift_unknownObjectRelease();
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  sub_236EC();

  swift_errorRetain();
  v7 = sub_23A8C();
  v8 = sub_2447C();

  v9 = os_log_type_enabled(v7, v8);
  v11 = *(v0 + 368);
  v10 = *(v0 + 376);
  v12 = *(v0 + 360);
  if (v9)
  {
    v22 = *(v0 + 376);
    v13 = *(v0 + 120);
    v14 = *(v0 + 128);
    v21 = *(v0 + 360);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v23 = v17;
    *v15 = 136315394;
    *(v15 + 4) = sub_20FB4(v13, v14, &v23);
    *(v15 + 12) = 2112;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v18;
    *v16 = v18;
    _os_log_impl(&dword_0, v7, v8, "Failed to execute ShowInAppStringSearchResultsIntent implementation on %s: %@", v15, 0x16u);
    sub_6A44(v16, &qword_35C58, &qword_25718);

    sub_4230(v17);

    (*(v11 + 8))(v22, v21);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_A2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_20A0(&qword_35C18, &unk_256C0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_BBEC(a3, v25 - v10);
  v12 = sub_2442C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_6A44(v11, &qword_35C18, &unk_256C0);
  }

  else
  {
    sub_2441C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2440C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2437C() + 32;
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

      sub_6A44(a3, &qword_35C18, &unk_256C0);

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

  sub_6A44(a3, &qword_35C18, &unk_256C0);
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

id sub_A650()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_A75C(uint64_t a1)
{
  result = sub_242CC();
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

id sub_A82C()
{
  v1 = sub_242CC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 24);
  v6 = type metadata accessor for CardVC(0);
  v7 = *(v2 + 16);
  v7(v4, v0 + *(v6 + 28), v1);
  v8 = *(v0 + *(v6 + 32));
  v9 = *v0;
  if (*v0)
  {
    v10 = type metadata accessor for Coordinator(0);
    v11 = objc_allocWithZone(v10);
    swift_unknownObjectWeakInit();
    *&v11[OBJC_IVAR____TtC26ResponseGenerationUIPlugin11Coordinator_observableSize] = v5;
    v7(&v11[OBJC_IVAR____TtC26ResponseGenerationUIPlugin11Coordinator_interactionDelegate], v4, v1);
    *&v11[OBJC_IVAR____TtC26ResponseGenerationUIPlugin11Coordinator_commandMap] = v8;
    *&v11[OBJC_IVAR____TtC26ResponseGenerationUIPlugin11Coordinator_context] = v9;
    v15.receiver = v11;
    v15.super_class = v10;

    v12 = v9;

    v13 = objc_msgSendSuper2(&v15, "init");
    (*(v2 + 8))(v4, v1);
    return v13;
  }

  else
  {
    sub_242FC();
    sub_C844(&qword_358B0, &type metadata accessor for Context, &protocol conformance descriptor for Context);

    result = sub_23BCC();
    __break(1u);
  }

  return result;
}

id sub_AA4C()
{
  sub_20A0(&qword_35E60, &unk_25890);
  sub_23DDC();
  v1 = v11;
  v2 = type metadata accessor for CardVC(0);
  v12 = *(v0 + *(v2 + 40));
  sub_20A0(&qword_35E58, &qword_25888);
  sub_2407C();
  if (v10)
  {
    v3 = *(v0 + *(v2 + 44));
  }

  else
  {
    v3 = *(v0 + 16);
  }

  v4 = v3;
  v5 = [objc_opt_self() cardViewControllerForCard:v4 feedbackDelegate:v1];
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = v5;
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {

LABEL_8:
    v8 = [objc_allocWithZone(UIViewController) init];

    return v8;
  }

  v8 = v7;
  [v7 setThreeDTouchEnabled:0];
  [v8 setDelegate:v1];
  [v8 setScrollEnabled:0];
  sub_23DDC();

  swift_unknownObjectWeakAssign();
  return v8;
}

void sub_AC00(void *a1, char a2)
{
  v5 = sub_23A9C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (!v9)
  {
    return;
  }

  v10 = v9;
  if (a2)
  {
    v11 = *(v2 + *(type metadata accessor for CardVC(0) + 44));
    if (!v11)
    {
      v24 = a1;
      v27 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    v11 = *(v2 + 16);
  }

  v27 = v11;
  v12 = v11;
  v13 = a1;
  v14 = [v12 cardSections];

  if (v14)
  {
    v26 = v6;
    sub_2510(0, &qword_35C00, SFCardSection_ptr);
    v15 = sub_243DC();

    v16 = [v10 card];
    if (!v16)
    {
      __break(1u);
      return;
    }

    v17 = v16;
    v18 = [v16 cardSections];

    if (v18)
    {
      v19 = sub_243DC();

      v20 = sub_AEEC(v15, v19);

      if (v20)
      {
        sub_236EC();
        v21 = sub_23A8C();
        v22 = sub_2449C();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&dword_0, v21, v22, "Card sections are identical, skipping update", v23, 2u);
        }

        (*(v26 + 8))(v8, v5);
        return;
      }
    }

    else
    {
    }
  }

LABEL_15:
  [v10 setCard:v27];

  v25 = v27;
}

uint64_t sub_AEEC(unint64_t a1, unint64_t a2)
{
  if (a1 >> 62)
  {
    goto LABEL_51;
  }

  v28 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
LABEL_3:
  v23 = a1;
  v25 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
    a1 = sub_245FC();
    v27 = a1;
  }

  else
  {
    v27 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
  }

  v3 = 0;
  v4 = 0;
  v26 = a2 & 0xC000000000000001;
  v5 = &SAAceCommand__prots;
  v24 = a2;
  while (1)
  {
    if (v4 == v28)
    {
      if (v27 == v3)
      {
        return 1;
      }

      v6 = 0;
      v4 = v28;
      goto LABEL_17;
    }

    if ((v23 & 0xC000000000000001) != 0)
    {
      a1 = sub_2459C();
    }

    else
    {
      if ((v4 & 0x8000000000000000) != 0)
      {
        goto LABEL_48;
      }

      if (v4 >= *(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_50;
      }

      a1 = *(v23 + 32 + 8 * v4);
    }

    v6 = a1;
    if (__OFADD__(v4++, 1))
    {
      goto LABEL_49;
    }

    if (v27 == v3)
    {
      break;
    }

LABEL_17:
    if (v26)
    {
      a1 = sub_2459C();
    }

    else
    {
      if (v3 >= *(v25 + 16))
      {
        goto LABEL_47;
      }

      a1 = *(a2 + 8 * v3 + 32);
    }

    v8 = a1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      v22 = a1;
      v28 = sub_245FC();
      a1 = v22;
      goto LABEL_3;
    }

    if (!v6)
    {
      if (!a1)
      {
        return 1;
      }

      return 0;
    }

    if (!a1)
    {
      goto LABEL_42;
    }

    v9 = [v6 v5[486].count];
    if (v9)
    {
      v10 = v9;
      v11 = sub_2434C();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0;
    }

    v14 = v5;
    v15 = [v8 v5[486].count];
    if (!v15)
    {
      if (!v13)
      {
        goto LABEL_33;
      }

LABEL_40:

      return 0;
    }

    v16 = v15;
    v17 = sub_2434C();
    v19 = v18;

    if (v13)
    {
      if (!v19)
      {
        goto LABEL_40;
      }

      if (v11 == v17 && v13 == v19)
      {

LABEL_33:

        goto LABEL_7;
      }

      v20 = sub_246AC();

      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {

      if (v19)
      {

        return 0;
      }
    }

LABEL_7:
    ++v3;
    a2 = v24;
    v5 = v14;
  }

  if (a1)
  {
LABEL_42:

    return 0;
  }

  return 1;
}

void sub_B1E0(void *a1, uint64_t a2, uint64_t a3)
{
  sub_20A0(&qword_35E58, &qword_25888);
  sub_2407C();
  sub_AC00(a1, v4);
}

id sub_B264@<X0>(uint64_t *a1@<X8>)
{
  result = sub_A82C();
  *a1 = result;
  return result;
}

uint64_t sub_B2C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_C844(&qword_35E68, type metadata accessor for CardVC, &unk_25810);

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_B35C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_C844(&qword_35E68, type metadata accessor for CardVC, &unk_25810);

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_B3F0(uint64_t a1)
{
  sub_C844(&qword_35E68, type metadata accessor for CardVC, &unk_25810);
  sub_23DBC();
  __break(1u);
}

double sub_B448@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23ADC();

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_B4D4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23AEC();
}

uint64_t sub_B57C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_B674;

  return v6(a1);
}

uint64_t sub_B674()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_B76C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_2510(0, &qword_35C00, SFCardSection_ptr);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_20A0(&qword_35C10, &qword_256B8);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void *sub_B860(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    v6 = *(*(a5 + 56) + 8 * a2);
    *result = v6;

    v7 = v6;
    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_B8F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RGSFCardView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_B954(uint64_t a1)
{
  v2 = type metadata accessor for RGSFCardView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_B9B4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_BA0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_BAF8;

  return sub_8A24(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_BAF8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_BBEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20A0(&qword_35C18, &unk_256C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_BC5C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_BC94(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_CE08;

  return sub_B57C(a1, v4);
}

uint64_t sub_BD4C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_BAF8;

  return sub_B57C(a1, v4);
}

void sub_BE04(void *a1)
{
  v2 = sub_23A9C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (a1)
  {
    if (Strong)
    {
      v14[0] = Strong;

      if (v14[0] == a1)
      {
        [a1 preferredContentSize];
        v8 = v7;
        v10 = v9;
        sub_236EC();
        v11 = sub_23A8C();
        v12 = sub_2445C();
        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          *v13 = 134218240;
          *(v13 + 4) = v8;
          *(v13 + 12) = 2048;
          *(v13 + 14) = v10;
          _os_log_impl(&dword_0, v11, v12, "preferredContentSizeDidChange called, cardViewController.preferredContentSize: %fx%f", v13, 0x16u);
        }

        (*(v3 + 8))(v5, v2);
        swift_getKeyPath();
        swift_getKeyPath();
        v14[1] = v8;
        v14[2] = v10;
        v15 = 0;

        sub_23AEC();
      }
    }
  }

  else if (Strong)
  {
  }

  else
  {
    __break(1u);
  }
}

void sub_C03C(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_245FC())
    {
LABEL_3:
      sub_20A0(&qword_35C78, &qword_25730);
      v3 = sub_2455C();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_245FC();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
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
  v6 = (v3 + 7);
  v38 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = sub_2459C();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_244BC(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_2510(0, &qword_35C48, LNSystemProtocol_ptr);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = sub_244CC();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        v3[2] = v21;
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
    v36 = a1 + 32;
    v37 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    while (v22 != v37)
    {
      v23 = v3[5];
      v24 = *(v36 + 8 * v22);
      v25 = sub_244BC(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_2510(0, &qword_35C48, LNSystemProtocol_ptr);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = sub_244CC();

          if (v33)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v5 = v38;
      }

      *&v6[8 * v28] = v30 | v29;
      *(v3[6] + 8 * v27) = v24;
      v34 = v3[2];
      v9 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      v3[2] = v35;
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

unint64_t sub_C32C()
{
  result = qword_35C50;
  if (!qword_35C50)
  {
    sub_2510(255, &qword_35C48, LNSystemProtocol_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_35C50);
  }

  return result;
}

void sub_C394(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }
}

uint64_t sub_C3EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2426C();
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

uint64_t sub_C4BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2426C();
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

void sub_C574(uint64_t a1)
{
  sub_2426C();
  if (v1 <= 0x3F)
  {
    sub_2510(319, &qword_35BF8, SFCard_ptr);
    if (v2 <= 0x3F)
    {
      sub_C6D0(319);
      if (v3 <= 0x3F)
      {
        sub_C738(319);
        if (v4 <= 0x3F)
        {
          sub_CC18(319, &qword_35D00, &type metadata for UpdatePresentation.PresentationStyle, &type metadata accessor for State);
          if (v5 <= 0x3F)
          {
            sub_C7B0(319);
            if (v6 <= 0x3F)
            {
              sub_CC18(319, &unk_35D18, &type metadata for CGFloat, &type metadata accessor for State);
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

void sub_C6D0(uint64_t a1)
{
  if (!qword_35CE8)
  {
    sub_2510(255, &qword_35BF8, SFCard_ptr);
    v1 = sub_244DC();
    if (!v2)
    {
      atomic_store(v1, &qword_35CE8);
    }
  }
}

void sub_C738(uint64_t a1)
{
  if (!qword_35CF0)
  {
    sub_2510(255, qword_35810, SAIntentGroupRunSiriKitExecutor_ptr);
    v1 = sub_2432C();
    if (!v2)
    {
      atomic_store(v1, &qword_35CF0);
    }
  }
}

void sub_C7B0(uint64_t a1)
{
  if (!qword_35D08)
  {
    type metadata accessor for ObservableSize(255);
    sub_C844(&qword_35D10, type metadata accessor for ObservableSize, &unk_25620);
    v1 = sub_23B2C();
    if (!v2)
    {
      atomic_store(v1, &qword_35D08);
    }
  }
}

uint64_t sub_C844(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_C8C8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_C900(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CardVC(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_C978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_242CC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_CA38(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_242CC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_CADC(uint64_t a1)
{
  sub_2920(319);
  if (v1 <= 0x3F)
  {
    sub_2510(319, &qword_35BF8, SFCard_ptr);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ObservableSize(319);
      if (v3 <= 0x3F)
      {
        sub_242CC();
        if (v4 <= 0x3F)
        {
          sub_C738(319);
          if (v5 <= 0x3F)
          {
            sub_CC18(319, &unk_35DF0, &type metadata for UpdatePresentation.PresentationStyle, &type metadata accessor for Binding);
            if (v6 <= 0x3F)
            {
              sub_C6D0(319);
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

void sub_CC18(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_CC6C()
{
  result = qword_35E38;
  if (!qword_35E38)
  {
    sub_20E8(&qword_35E40, "B(");
    sub_CCF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_35E38);
  }

  return result;
}

unint64_t sub_CCF0()
{
  result = qword_35E48;
  if (!qword_35E48)
  {
    sub_20E8(&qword_35D70, &qword_257A0);
    sub_C844(&qword_35E50, type metadata accessor for CardVC, &unk_257C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_35E48);
  }

  return result;
}

uint64_t sub_CE0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_20A0(&qword_35ED0, &qword_258A0);
  __chkstk_darwin(v4 - 8);
  v22 = &v20 - v5;
  v6 = sub_20A0(&qword_35ED8, qword_258A8);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_23D0C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2384C();
  v14 = *(v13 - 8);
  (*(v14 + 16))(a2, a1, v13);
  sub_2383C();
  sub_23CEC();
  v21 = a2;
  (*(v10 + 56))(v8, 0, 1, v9);
  (*(v10 + 32))(v12, v8, v9);
  v15 = v22;
  sub_23CFC();
  v16 = v21;
  (*(v14 + 8))(a1, v13);
  (*(v10 + 8))(v12, v9);
  v17 = sub_23B7C();
  (*(*(v17 - 8) + 56))(v15, 0, 1, v17);
  v18 = type metadata accessor for RGArchivedView(0);
  return sub_D1D0(v15, v16 + *(v18 + 20));
}

uint64_t type metadata accessor for RGArchivedView(uint64_t a1)
{
  result = qword_35F38;
  if (!qword_35F38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_D1D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20A0(&qword_35ED0, &qword_258A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_D254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2384C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_20A0(&qword_35ED0, &qword_258A0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_D364(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2384C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_20A0(&qword_35ED0, &qword_258A0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_D46C(uint64_t a1)
{
  sub_2384C();
  if (v1 <= 0x3F)
  {
    sub_D4F0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_D4F0(uint64_t a1)
{
  if (!qword_35F48)
  {
    sub_23B7C();
    v1 = sub_244DC();
    if (!v2)
    {
      atomic_store(v1, &qword_35F48);
    }
  }
}

uint64_t sub_D564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_20A0(&qword_35ED0, &qword_258A0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  sub_D6F8(v2 + *(a1 + 20), &v13 - v6);
  v8 = sub_23B7C();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_6A44(v7, &qword_35ED0, &qword_258A0);
    v10 = 1;
  }

  else
  {
    sub_D768();
    sub_23EDC();
    (*(v9 + 8))(v7, v8);
    v10 = 0;
  }

  v11 = sub_20A0(&qword_35F78, &qword_25930);
  return (*(*(v11 - 8) + 56))(a2, v10, 1, v11);
}

uint64_t sub_D6F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20A0(&qword_35ED0, &qword_258A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_D768()
{
  result = qword_35F80;
  if (!qword_35F80)
  {
    sub_23B7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_35F80);
  }

  return result;
}

unint64_t sub_D7C4()
{
  result = qword_35F88;
  if (!qword_35F88)
  {
    sub_20E8(&qword_35F90, &qword_25938);
    sub_23B7C();
    sub_D768();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_35F88);
  }

  return result;
}

uint64_t sub_D88C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_20A0(&qword_35F98, qword_25940);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_D95C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_20A0(&qword_35F98, qword_25940);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_DA2C(uint64_t a1)
{
  sub_29B4();
  if (v1 <= 0x3F)
  {
    sub_DAB0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_DAB0(uint64_t a1)
{
  if (!qword_36008)
  {
    sub_2414C();
    v1 = sub_244DC();
    if (!v2)
    {
      atomic_store(v1, &qword_36008);
    }
  }
}

uint64_t sub_DB1C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for RGBinaryButton(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_DBE8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = type metadata accessor for RGBinaryButton(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_DCAC(uint64_t a1)
{
  sub_2920(319);
  if (v1 <= 0x3F)
  {
    sub_288C(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for RGBinaryButton(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_DD64@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v2 = sub_20A0(&qword_35F98, qword_25940);
  __chkstk_darwin(v2 - 8);
  v40 = &v40 - v3;
  v4 = sub_2414C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v43 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RGBinaryButtonView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v47 = sub_20A0(&qword_360D8, &qword_259E8);
  v41 = *(v47 - 8);
  __chkstk_darwin(v47);
  v11 = &v40 - v10;
  v44 = sub_20A0(&qword_360E0, &qword_259F0);
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v13 = &v40 - v12;
  v14 = sub_2421C();
  v50 = *(v14 - 8);
  v51 = v14;
  __chkstk_darwin(v14);
  v49 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_EF04(v1, &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v46 = v9;
  v17 = swift_allocObject();
  v45 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_EF6C(v45, v17 + v16);
  v48 = v7;
  v18 = *(v7 + 24);
  v19 = v1;
  v20 = v40;
  v52 = v19;
  v21 = v19 + v18;
  v54 = *(v19 + v18 + 16);
  sub_2405C();
  v22 = type metadata accessor for RGBinaryButton(0);
  sub_EFF4(v21 + *(v22 + 24), v20);
  v23 = *(v5 + 48);
  if (v23(v20, 1, v4) == 1)
  {
    v24 = v43;
    (*(v5 + 104))(v43, enum case for ButtonItemButtonStyle.Role.preferred(_:), v4);
    v25 = v23(v20, 1, v4);
    v26 = v24;
    if (v25 != 1)
    {
      sub_F064(v20);
    }
  }

  else
  {
    v26 = v43;
    (*(v5 + 32))(v43, v20, v4);
  }

  v27 = sub_F364(&qword_360E8, &protocol conformance descriptor for Button<A>);
  v28 = v47;
  sub_23EBC();
  (*(v5 + 8))(v26, v4);
  (*(v41 + 8))(v11, v28);
  v56 = v28;
  v57 = v27;
  swift_getOpaqueTypeConformance2();
  v29 = v44;
  v30 = sub_23EAC();
  (*(v42 + 8))(v13, v29);
  v58 = &type metadata for AnyView;
  v59 = &protocol witness table for AnyView;
  v56 = v30;
  v31 = v52;
  v32 = v45;
  sub_EF04(v52, v45);
  v33 = swift_allocObject();
  v34 = sub_EF6C(v32, v33 + v16);
  *&v35 = __chkstk_darwin(v34);
  *(&v40 - 1) = v35;
  v55[3] = v28;
  v55[4] = sub_F364(&qword_360F0, &protocol conformance descriptor for Button<A>);
  sub_F3B4(v55);
  sub_2405C();
  v36 = v49;
  sub_2420C();
  if (*(v31 + 16))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23ADC();

    v37 = v56;
    v38 = v53;
    (*(v50 + 32))(v53, v36, v51);
    result = sub_20A0(&qword_360F8, qword_25A40);
    *(v38 + *(result + 36)) = (v37 & 1) == 0;
  }

  else
  {
    type metadata accessor for CommandThrottle(0);
    sub_F574(&qword_358A0, type metadata accessor for CommandThrottle, &unk_265FC);
    result = sub_23BCC();
    __break(1u);
  }

  return result;
}

uint64_t sub_E500()
{
  v1 = v0;
  v2 = sub_20A0(&qword_35C20, &unk_25498);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - v3;
  v24 = sub_241FC();
  v5 = *(v24 - 8);
  __chkstk_darwin(v24);
  v25 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2375C();
  __chkstk_darwin(v7 - 8);
  v8 = sub_23A9C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_236EC();
  v12 = sub_23A8C();
  v13 = sub_2446C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v23 = v1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v26 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_20FB4(0x417972616D697270, 0xEF29286E6F697463, &v26);
    _os_log_impl(&dword_0, v12, v13, "%s Primary button tapped", v15, 0xCu);
    sub_4230(v16);

    v1 = v23;
  }

  (*(v9 + 8))(v11, v8);
  if (*v1)
  {
    v17 = *v1;
    sub_17434(&_swiftEmptyArrayStorage);
    sub_2374C();

    (*(v5 + 104))(v25, enum case for InteractionType.buttonTapped(_:), v24);
    sub_241CC();
    v18 = sub_241DC();
    (*(*(v18 - 8) + 56))(v4, 0, 1, v18);
    v19 = objc_allocWithZone(sub_2428C());
    v20 = sub_2427C();
    sub_242EC();

    v21 = type metadata accessor for RGBinaryButtonView(0);
    return (*(v1 + *(v21 + 24)))();
  }

  else
  {
    sub_242FC();
    sub_F574(&qword_358B0, &type metadata accessor for Context, &protocol conformance descriptor for Context);
    result = sub_23BCC();
    __break(1u);
  }

  return result;
}

uint64_t sub_E948(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *(type metadata accessor for RGBinaryButtonView(0) - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1);
  if (*(a1 + 16))
  {
    sub_EF04(v7, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v9 = swift_allocObject();
    sub_EF6C(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);

    sub_207B4(a3);
  }

  else
  {
    type metadata accessor for CommandThrottle(0);
    sub_F574(&qword_358A0, type metadata accessor for CommandThrottle, &unk_265FC);
    result = sub_23BCC();
    __break(1u);
  }

  return result;
}

uint64_t sub_EABC()
{
  v1 = v0;
  v2 = sub_20A0(&qword_35C20, &unk_25498);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - v3;
  v24 = sub_241FC();
  v5 = *(v24 - 8);
  __chkstk_darwin(v24);
  v25 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2375C();
  __chkstk_darwin(v7 - 8);
  v8 = sub_23A9C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_236EC();
  v12 = sub_23A8C();
  v13 = sub_2446C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v23 = v1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v26 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_20FB4(0xD000000000000011, 0x8000000000026DF0, &v26);
    _os_log_impl(&dword_0, v12, v13, "%s Secondary button tapped", v15, 0xCu);
    sub_4230(v16);

    v1 = v23;
  }

  (*(v9 + 8))(v11, v8);
  if (*v1)
  {
    v17 = *v1;
    sub_17434(&_swiftEmptyArrayStorage);
    sub_2374C();

    (*(v5 + 104))(v25, enum case for InteractionType.buttonTapped(_:), v24);
    sub_241CC();
    v18 = sub_241DC();
    (*(*(v18 - 8) + 56))(v4, 0, 1, v18);
    v19 = objc_allocWithZone(sub_2428C());
    v20 = sub_2427C();
    sub_242EC();

    v21 = type metadata accessor for RGBinaryButtonView(0);
    return (*(v1 + *(v21 + 28)))();
  }

  else
  {
    sub_242FC();
    sub_F574(&qword_358B0, &type metadata accessor for Context, &protocol conformance descriptor for Context);
    result = sub_23BCC();
    __break(1u);
  }

  return result;
}

uint64_t sub_EF04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RGBinaryButtonView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_EF6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RGBinaryButtonView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_EFF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20A0(&qword_35F98, qword_25940);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_F064(uint64_t a1)
{
  v2 = sub_20A0(&qword_35F98, qword_25940);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_F0CC()
{
  v1 = type metadata accessor for RGBinaryButtonView(0);
  v2 = *(*(v1 - 8) + 80);
  v13 = *(*(v1 - 8) + 64);
  v14 = (v2 + 16) & ~v2;
  v15 = v0;
  v3 = v0 + v14;

  v4 = v0 + v14 + *(v1 + 24);

  v5 = type metadata accessor for RGBinaryButton(0);
  v6 = *(v5 + 24);
  v7 = sub_2414C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v4 + v6, 1, v7))
  {
    (*(v8 + 8))(v4 + v6, v7);
  }

  v10 = v3 + *(v1 + 28);

  v11 = *(v5 + 24);
  if (!v9(v10 + v11, 1, v7))
  {
    (*(v8 + 8))(v10 + v11, v7);
  }

  return _swift_deallocObject(v15, v14 + v13, v2 | 7);
}

uint64_t sub_F328@<X0>(uint64_t a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_F364(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_20E8(&qword_360D8, &qword_259E8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *sub_F3B4(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_F4B8()
{
  result = qword_36100;
  if (!qword_36100)
  {
    sub_20E8(&qword_360F8, qword_25A40);
    sub_F574(&qword_36108, &type metadata accessor for BinaryButtonView, &protocol conformance descriptor for BinaryButtonView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_36100);
  }

  return result;
}

uint64_t sub_F574(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_F5E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2396C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_F660(uint64_t a1, uint64_t a2)
{
  v4 = sub_2396C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for RGToolDisambiguationView(uint64_t a1)
{
  result = qword_36168;
  if (!qword_36168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_F71C(uint64_t a1)
{
  result = sub_2396C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_F7A4@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v1 = sub_242DC();
  v50 = *(v1 - 8);
  v51 = v1;
  __chkstk_darwin(v1);
  v49 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20A0(&qword_361A8, &unk_25C00);
  v46 = *(v3 - 8);
  v47 = v3;
  __chkstk_darwin(v3);
  v5 = &v43 - v4;
  v44 = sub_20A0(&qword_361B0, &qword_25AF0);
  v6 = *(v44 - 8);
  __chkstk_darwin(v44);
  v48 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v45 = &v43 - v9;
  v10 = sub_2391C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20A0(&qword_361B8, &qword_25AF8);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v43 - v19;
  sub_2408C();
  sub_240AC();
  sub_23B6C();
  v21 = &v20[*(v15 + 44)];
  v22 = v54;
  *v21 = v53;
  *(v21 + 1) = v22;
  *(v21 + 2) = v55;
  v23 = sub_2395C();
  v24 = v23;
  v25 = *(v23 + 16);
  if (!v25)
  {
    *(swift_allocObject() + 16) = v23;
    sub_20A0(&qword_361C0, &qword_25B00);
    sub_100B4();
    v28 = v5;
    sub_241EC();
LABEL_10:
    v30 = &enum case for ComponentStackBottomSpacing.default(_:);
    goto LABEL_11;
  }

  (*(v11 + 16))(v13, v23 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * (v25 - 1), v10);
  v26 = sub_238CC();
  if (v27 >> 60 == 15)
  {
    v26 = sub_238FC();
    v28 = v5;
    if (v27 >> 60 == 15)
    {
      v29 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v28 = v5;
  }

  sub_4C38(v26, v27);
  v29 = 1;
LABEL_8:
  (*(v11 + 8))(v13, v10);
  *(swift_allocObject() + 16) = v24;
  sub_20A0(&qword_361C0, &qword_25B00);
  sub_100B4();
  sub_241EC();
  if ((v29 & 1) == 0)
  {
    goto LABEL_10;
  }

  v30 = &enum case for ComponentStackBottomSpacing.none(_:);
LABEL_11:
  v32 = v49;
  v31 = v50;
  v33 = v51;
  (*(v50 + 104))(v49, *v30, v51);
  sub_3F18(&qword_361D8, &qword_361A8, &unk_25C00, &protocol conformance descriptor for ComponentStack<A>);
  v34 = v45;
  v35 = v47;
  sub_23EFC();
  (*(v31 + 8))(v32, v33);
  (*(v46 + 8))(v28, v35);
  sub_10168(v20, v17);
  v36 = *(v6 + 16);
  v37 = v48;
  v38 = v44;
  v36(v48, v34, v44);
  v39 = v52;
  sub_10168(v17, v52);
  v40 = sub_20A0(&qword_361E0, &qword_25B08);
  v36((v39 + *(v40 + 48)), v37, v38);
  v41 = *(v6 + 8);
  v41(v34, v38);
  sub_101D8(v20);
  v41(v37, v38);
  return sub_101D8(v17);
}

uint64_t sub_FD9C(uint64_t a1)
{
  sub_181AC(a1);
  swift_getKeyPath();
  sub_20A0(&qword_361E8, &unk_25B30);
  type metadata accessor for RGDisplayRepresentationView(0);
  sub_3F18(&qword_361F0, &qword_361E8, &unk_25B30, &protocol conformance descriptor for [A]);
  sub_10248(&qword_361D0, type metadata accessor for RGDisplayRepresentationView, &unk_262BC);
  return sub_2409C();
}

uint64_t sub_FEB8@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(sub_20A0(&qword_361F8, &qword_25FD0) + 48);
  v6 = type metadata accessor for RGDisplayRepresentationView(0);
  v7 = v6[6];
  v8 = sub_2391C();
  (*(*(v8 - 8) + 16))(a2 + v7, &a1[v5], v8);
  result = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    v10 = sub_10BB8(result);
    *a2 = swift_getKeyPath();
    *(a2 + 8) = 0;
    sub_242FC();
    sub_10248(&qword_358B0, &type metadata accessor for Context, &protocol conformance descriptor for Context);
    *(a2 + 16) = sub_23BDC();
    *(a2 + 24) = v11;
    *(a2 + v6[8]) = v10;
    v12 = v6[7];
    v13 = sub_238AC();
    v14 = *(*(v13 - 8) + 56);

    return v14(a2 + v12, 1, 1, v13);
  }

  return result;
}

uint64_t sub_10024@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_23CAC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v2 = sub_20A0(&qword_361A0, &unk_25AE0);
  return sub_F7A4(a1 + *(v2 + 44));
}

uint64_t sub_10074()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100B4()
{
  result = qword_361C8;
  if (!qword_361C8)
  {
    sub_20E8(&qword_361C0, &qword_25B00);
    sub_10248(&qword_361D0, type metadata accessor for RGDisplayRepresentationView, &unk_262BC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_361C8);
  }

  return result;
}

uint64_t sub_10168(uint64_t a1, uint64_t a2)
{
  v4 = sub_20A0(&qword_361B8, &qword_25AF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_101D8(uint64_t a1)
{
  v2 = sub_20A0(&qword_361B8, &qword_25AF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10248(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_102E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2382C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10368(uint64_t a1, uint64_t a2)
{
  v4 = sub_2382C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for RGSuccessView(uint64_t a1)
{
  result = qword_36268;
  if (!qword_36268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10424(uint64_t a1)
{
  result = sub_2382C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_104AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(sub_20A0(&qword_361F8, &qword_25FD0) + 48);
  v5 = type metadata accessor for RGDisplayRepresentationView(0);
  v6 = v5[6];
  v7 = sub_2391C();
  (*(*(v7 - 8) + 16))(a2 + v6, a1 + v4, v7);
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  sub_242FC();
  sub_10248(&qword_358B0, &type metadata accessor for Context, &protocol conformance descriptor for Context);
  *(a2 + 16) = sub_23BDC();
  *(a2 + 24) = v8;
  v9 = v5[7];
  v10 = sub_238AC();
  result = (*(*(v10 - 8) + 56))(a2 + v9, 1, 1, v10);
  *(a2 + v5[8]) = 0;
  return result;
}

uint64_t sub_105F4@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v24 = sub_242DC();
  v1 = *(v24 - 8);
  __chkstk_darwin(v24);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_20A0(&qword_361A8, &unk_25C00);
  v4 = *(v22 - 8);
  __chkstk_darwin(v22);
  v6 = &v21 - v5;
  v7 = sub_2391C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2381C();
  v12 = v11;
  v13 = *(v11 + 16);
  if (!v13)
  {
    *(swift_allocObject() + 16) = v11;
    sub_20A0(&qword_361C0, &qword_25B00);
    sub_100B4();
    sub_241EC();
LABEL_9:
    v17 = &enum case for ComponentStackBottomSpacing.default(_:);
    goto LABEL_10;
  }

  (*(v8 + 16))(v10, v11 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * (v13 - 1), v7);
  v14 = sub_238CC();
  if (v15 >> 60 == 15 && (v14 = sub_238FC(), v15 >> 60 == 15))
  {
    v16 = 0;
  }

  else
  {
    sub_4C38(v14, v15);
    v16 = 1;
  }

  (*(v8 + 8))(v10, v7);
  *(swift_allocObject() + 16) = v12;
  sub_20A0(&qword_361C0, &qword_25B00);
  sub_100B4();
  sub_241EC();
  if ((v16 & 1) == 0)
  {
    goto LABEL_9;
  }

  v17 = &enum case for ComponentStackBottomSpacing.none(_:);
LABEL_10:
  v18 = v24;
  (*(v1 + 104))(v3, *v17, v24);
  sub_3F18(&qword_361D8, &qword_361A8, &unk_25C00, &protocol conformance descriptor for ComponentStack<A>);
  v19 = v22;
  sub_23EFC();
  (*(v1 + 8))(v3, v18);
  return (*(v4 + 8))(v6, v19);
}

uint64_t sub_109B8(uint64_t a1)
{
  sub_181AC(a1);
  swift_getKeyPath();
  sub_20A0(&qword_361E8, &unk_25B30);
  type metadata accessor for RGDisplayRepresentationView(0);
  sub_3F18(&qword_361F0, &qword_361E8, &unk_25B30, &protocol conformance descriptor for [A]);
  sub_10248(&qword_361D0, type metadata accessor for RGDisplayRepresentationView, &unk_262BC);
  return sub_2409C();
}

uint64_t sub_10AD8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10B20()
{
  sub_20E8(&qword_361A8, &unk_25C00);
  sub_3F18(&qword_361D8, &qword_361A8, &unk_25C00, &protocol conformance descriptor for ComponentStack<A>);
  return swift_getOpaqueTypeConformance2();
}

id sub_10BB8(uint64_t a1)
{
  sub_237AC();
  v2 = objc_allocWithZone(SKIDirectInvocationPayload);
  v3 = sub_2433C();

  v4 = [v2 initWithIdentifier:v3];

  sub_20A0(&qword_362A0, qword_25C60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_255B0;
  sub_2379C();
  sub_2452C();
  *(inited + 96) = &type metadata for Int;
  *(inited + 72) = a1;
  sub_17434(inited);
  swift_setDeallocating();
  sub_10DA8(inited + 32);
  isa = sub_2430C().super.isa;

  [v4 setUserData:isa];

  v7 = objc_opt_self();
  v8 = [objc_allocWithZone(SKIDirectInvocationContext) init];
  [v8 setInputOrigin:SAInputOriginDialogButtonTapValue];
  [v8 setInteractionType:SAIntentGroupAceInteractionTypeDisplayDrivenValue];
  [v8 setEyesFree:0];
  v9 = [v7 runSiriKitExecutorCommandWithContext:v8 payload:v4];

  return v9;
}

uint64_t sub_10DA8(uint64_t a1)
{
  v2 = sub_20A0(&qword_362A8, qword_25F10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2426C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_2394C();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10F28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2426C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_2394C();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for RGActionConfirmationView(uint64_t a1)
{
  result = qword_36308;
  if (!qword_36308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_11070(uint64_t a1)
{
  result = sub_2426C();
  if (v2 <= 0x3F)
  {
    result = sub_2394C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_11110@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = type metadata accessor for RGActionConfirmationView(0);
  v56 = *(v3 - 8);
  __chkstk_darwin(v3);
  v57 = v4;
  v59 = &v49[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_20A0(&qword_36348, &qword_25D08);
  v62 = *(v5 - 8);
  v63 = v5;
  __chkstk_darwin(v5);
  v61 = &v49[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v60 = &v49[-v8];
  v9 = sub_242DC();
  v54 = *(v9 - 8);
  v55 = v9;
  __chkstk_darwin(v9);
  v52 = &v49[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v53 = sub_20A0(&qword_36350, &qword_25D10);
  v51 = *(v53 - 8);
  __chkstk_darwin(v53);
  v65 = &v49[-v11];
  v12 = sub_20A0(&qword_36358, &qword_25D18);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v49[-v14];
  v16 = sub_2391C();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v49[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_20A0(&qword_36360, &qword_25D20);
  __chkstk_darwin(v20 - 8);
  v22 = &v49[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v23);
  v25 = &v49[-v24];
  v58 = a1;
  v26 = sub_2393C();
  if (v26)
  {
    v27 = v26;
    v28 = *(v26 + 16);
    if (v28)
    {
      (*(v17 + 16))(v19, v26 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * (v28 - 1), v16);
      v29 = sub_238CC();
      if (v30 >> 60 == 15 && (v29 = sub_238FC(), v30 >> 60 == 15))
      {
        v50 = 0;
      }

      else
      {
        sub_4C38(v29, v30);
        v50 = 1;
      }

      (*(v17 + 8))(v19, v16);
      *(swift_allocObject() + 16) = v27;
      sub_20A0(&qword_36378, &qword_25D30);
      sub_12820();
      sub_241EC();
      if (v50)
      {
        v31 = &enum case for ComponentStackBottomSpacing.none(_:);
LABEL_12:
        v33 = v54;
        v32 = v55;
        v34 = v52;
        (*(v54 + 104))(v52, *v31, v55);
        sub_3F18(&qword_363A8, &qword_36350, &qword_25D10, &protocol conformance descriptor for ComponentStack<A>);
        v35 = v53;
        v36 = v65;
        sub_23EFC();
        (*(v33 + 8))(v34, v32);
        (*(v51 + 8))(v36, v35);
        (*(v13 + 32))(v25, v15, v12);
        (*(v13 + 56))(v25, 0, 1, v12);
        goto LABEL_13;
      }
    }

    else
    {
      *(swift_allocObject() + 16) = v26;
      sub_20A0(&qword_36378, &qword_25D30);
      sub_12820();
      sub_241EC();
    }

    v31 = &enum case for ComponentStackBottomSpacing.default(_:);
    goto LABEL_12;
  }

  (*(v13 + 56))(v25, 1, 1, v12);
LABEL_13:
  v37 = v59;
  sub_12B24(v58, v59, type metadata accessor for RGActionConfirmationView);
  v38 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v39 = swift_allocObject();
  sub_12E84(v37, v39 + v38, type metadata accessor for RGActionConfirmationView);
  type metadata accessor for RGBinaryButtonView(0);
  sub_12E3C(&qword_36368, type metadata accessor for RGBinaryButtonView, &unk_25994);
  v40 = v60;
  sub_241EC();
  sub_12708(v25, v22);
  v42 = v61;
  v41 = v62;
  v43 = *(v62 + 16);
  v44 = v63;
  v43(v61, v40, v63);
  v45 = v64;
  sub_12708(v22, v64);
  v46 = sub_20A0(&qword_36370, &qword_25D28);
  v43((v45 + *(v46 + 48)), v42, v44);
  v47 = *(v41 + 8);
  v47(v40, v44);
  sub_12778(v25);
  v47(v42, v44);
  return sub_12778(v22);
}

uint64_t sub_118F0(uint64_t a1)
{
  sub_181AC(a1);
  swift_getKeyPath();
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_12A18;
  *(v3 + 24) = v2;

  sub_20A0(&qword_361E8, &unk_25B30);
  sub_20A0(&qword_363B0, &unk_25D70);
  sub_3F18(&qword_361F0, &qword_361E8, &unk_25B30, &protocol conformance descriptor for [A]);
  type metadata accessor for RGDisplayRepresentationView(255);
  sub_20E8(&qword_36388, &qword_25D38);
  sub_12E3C(&qword_361D0, type metadata accessor for RGDisplayRepresentationView, &unk_262BC);
  sub_12930();
  swift_getOpaqueTypeConformance2();
  return sub_2409C();
}

uint64_t sub_11AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for RGDisplayRepresentationView(0);
  __chkstk_darwin(v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 24);
  v9 = sub_2391C();
  (*(*(v9 - 8) + 16))(&v6[v8], a2, v9);
  *v6 = swift_getKeyPath();
  v6[8] = 0;
  sub_242FC();
  sub_12E3C(&qword_358B0, &type metadata accessor for Context, &protocol conformance descriptor for Context);
  *(v6 + 2) = sub_23BDC();
  *(v6 + 3) = v10;
  v11 = *(v4 + 28);
  v12 = sub_238AC();
  (*(*(v12 - 8) + 56))(&v6[v11], 1, 1, v12);
  *&v6[*(v4 + 32)] = 0;
  sub_20A0(&qword_36388, &qword_25D38);
  sub_12E3C(&qword_361D0, type metadata accessor for RGDisplayRepresentationView, &unk_262BC);
  sub_12930();
  sub_23F0C();
  return sub_12AC8(v6);
}

uint64_t sub_11CF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23C9C();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, enum case for RoundedCornerStyle.continuous(_:), v4, v6);
  v9 = (a2 + *(sub_20A0(&qword_36388, &qword_25D38) + 36));
  v10 = sub_23D3C();
  (*(v5 + 16))(&v9[*(v10 + 20)], v8, v4);
  sub_23D2C();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  (*(v5 + 8))(v8, v4);
  *v9 = v12;
  *(v9 + 1) = v14;
  *(v9 + 2) = v16;
  *(v9 + 3) = v18;
  *&v9[*(sub_20A0(&qword_363A0, &qword_25D40) + 36)] = 256;
  return sub_12B24(a1, a2, type metadata accessor for RGDisplayRepresentationView);
}

uint64_t sub_11EAC(char *a1, uint64_t (*a2)(uint64_t, char *))
{
  v4 = *a1;
  v5 = sub_20A0(&qword_361F8, &qword_25FD0);
  return a2(v4, &a1[*(v5 + 48)]);
}

uint64_t sub_11F18@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v46 = a2;
  v3 = sub_20A0(&qword_35F98, qword_25940);
  __chkstk_darwin(v3 - 8);
  v43 = &v41 - v4;
  v5 = type metadata accessor for RGActionConfirmationView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v45 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v44 = &v41 - v9;
  __chkstk_darwin(v10);
  v12 = &v41 - v11;
  __chkstk_darwin(v13);
  v15 = &v41 - v14;
  v47 = type metadata accessor for RGBinaryButton(0) - 8;
  __chkstk_darwin(v47);
  v48 = (&v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_12B24(a1, v15, type metadata accessor for RGActionConfirmationView);
  v17 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v18 = swift_allocObject();
  sub_12E84(v15, v18 + v17, type metadata accessor for RGActionConfirmationView);
  v41 = a1;
  sub_12B24(a1, v12, type metadata accessor for RGActionConfirmationView);
  v19 = swift_allocObject();
  sub_12E84(v12, v19 + v17, type metadata accessor for RGActionConfirmationView);
  LOBYTE(v12) = sub_2392C();
  v20 = sub_2414C();
  v21 = *(v20 - 8);
  v22 = &enum case for ButtonItemButtonStyle.Role.preferredAndDestructive(_:);
  if ((v12 & 1) == 0)
  {
    v22 = &enum case for ButtonItemButtonStyle.Role.preferred(_:);
  }

  v23 = v43;
  (*(*(v20 - 8) + 104))(v43, *v22, v20);
  v42 = *(v21 + 56);
  v42(v23, 0, 1, v20);
  v24 = v47;
  v25 = v48;
  *v48 = sub_12B8C;
  v25[1] = v18;
  v25[2] = sub_12BA4;
  v25[3] = v19;
  sub_12BBC(v23, v25 + *(v24 + 32));
  v26 = v41;
  v27 = v44;
  sub_12B24(v41, v44, type metadata accessor for RGActionConfirmationView);
  v28 = swift_allocObject();
  sub_12E84(v27, v28 + v17, type metadata accessor for RGActionConfirmationView);
  v29 = v26;
  v30 = v45;
  sub_12B24(v29, v45, type metadata accessor for RGActionConfirmationView);
  v31 = swift_allocObject();
  sub_12E84(v30, v31 + v17, type metadata accessor for RGActionConfirmationView);
  v32 = type metadata accessor for RGBinaryButtonView(0);
  v33 = v46;
  v34 = (v46 + *(v32 + 28));
  v42(v34 + *(v47 + 32), 1, 1, v20);
  *v34 = sub_12C2C;
  v34[1] = v28;
  v34[2] = sub_12DC0;
  v34[3] = v31;
  sub_242FC();
  sub_12E3C(&qword_358B0, &type metadata accessor for Context, &protocol conformance descriptor for Context);
  v35 = sub_23BDC();
  v37 = v36;
  type metadata accessor for CommandThrottle(0);
  sub_12E3C(&qword_358A0, type metadata accessor for CommandThrottle, &unk_265FC);
  v38 = sub_23BDC();
  *v33 = v35;
  v33[1] = v37;
  v33[2] = v38;
  v33[3] = v39;
  return sub_12E84(v48, v33 + *(v32 + 24), type metadata accessor for RGBinaryButton);
}

uint64_t sub_12414(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = sub_242CC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2424C();
  v8 = a2(v7);
  v9 = objc_opt_self();
  v10 = [objc_allocWithZone(SKIDirectInvocationContext) init];
  [v10 setInputOrigin:SAInputOriginDialogButtonTapValue];
  [v10 setInteractionType:SAIntentGroupAceInteractionTypeDisplayDrivenValue];
  [v10 setEyesFree:0];
  v11 = [v9 runSiriKitExecutorCommandWithContext:v10 payload:v8];

  sub_242BC();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_125A0(uint64_t a1, void (*a2)(void))
{
  v3 = sub_2369C();
  __chkstk_darwin(v3 - 8);
  type metadata accessor for RGActionConfirmationView(0);
  a2();
  return sub_23E8C();
}

uint64_t sub_12640@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_23CAC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = sub_20A0(&qword_36340, &qword_25D00);
  return sub_11110(v1, a1 + *(v3 + 44));
}

uint64_t sub_12698@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for RGActionConfirmationView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_11F18(v4, a1);
}

uint64_t sub_12708(uint64_t a1, uint64_t a2)
{
  v4 = sub_20A0(&qword_36360, &qword_25D20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_12778(uint64_t a1)
{
  v2 = sub_20A0(&qword_36360, &qword_25D20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_127E0()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_12820()
{
  result = qword_36380;
  if (!qword_36380)
  {
    sub_20E8(&qword_36378, &qword_25D30);
    type metadata accessor for RGDisplayRepresentationView(255);
    sub_20E8(&qword_36388, &qword_25D38);
    sub_12E3C(&qword_361D0, type metadata accessor for RGDisplayRepresentationView, &unk_262BC);
    sub_12930();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_36380);
  }

  return result;
}

unint64_t sub_12930()
{
  result = qword_36390;
  if (!qword_36390)
  {
    sub_20E8(&qword_36388, &qword_25D38);
    sub_12E3C(&qword_361D0, type metadata accessor for RGDisplayRepresentationView, &unk_262BC);
    sub_3F18(&qword_36398, &qword_363A0, &qword_25D40, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_36390);
  }

  return result;
}

uint64_t sub_12A20()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_12A58(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = sub_20A0(&qword_361F8, &qword_25FD0);
  return v3(v4, &a1[*(v5 + 48)]);
}

uint64_t sub_12AC8(uint64_t a1)
{
  v2 = type metadata accessor for RGDisplayRepresentationView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_12B24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_12BBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20A0(&qword_35F98, qword_25940);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_12CA8()
{
  v1 = (type metadata accessor for RGActionConfirmationView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_2426C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[7];
  v7 = sub_2394C();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_12E3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_12E84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_12F44@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v263 = a2;
  v187 = type metadata accessor for RGSuccessView(0);
  __chkstk_darwin(v187);
  v172 = &v169 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = sub_2382C();
  v171 = *(v173 - 8);
  __chkstk_darwin(v173);
  v170 = &v169 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = sub_20A0(&qword_36578, &qword_25E88);
  __chkstk_darwin(v184);
  v185 = (&v169 - v5);
  v230 = sub_20A0(&qword_36550, &qword_25E78);
  __chkstk_darwin(v230);
  v186 = &v169 - v6;
  v180 = sub_20A0(&qword_36580, &qword_25E90);
  v179 = *(v180 - 8);
  __chkstk_darwin(v180);
  v176 = &v169 - v7;
  v178 = sub_240FC();
  v177 = *(v178 - 8);
  __chkstk_darwin(v178);
  v175 = &v169 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = sub_2380C();
  v181 = *(v194 - 8);
  __chkstk_darwin(v194);
  v174 = &v169 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v193 = &v169 - v11;
  v220 = type metadata accessor for RGToolDisambiguationView(0);
  __chkstk_darwin(v220);
  v210 = &v169 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = sub_2396C();
  v209 = *(v211 - 8);
  __chkstk_darwin(v211);
  v208 = &v169 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v226 = sub_20A0(&qword_36588, &qword_25E98);
  __chkstk_darwin(v226);
  v228 = &v169 - v14;
  v216 = sub_20A0(&qword_36590, &qword_25EA0);
  __chkstk_darwin(v216);
  v218 = &v169 - v15;
  v227 = sub_20A0(&qword_36530, &qword_25E70);
  __chkstk_darwin(v227);
  v219 = &v169 - v16;
  v259 = sub_20A0(&qword_36520, &qword_25E68);
  __chkstk_darwin(v259);
  v229 = &v169 - v17;
  v217 = type metadata accessor for RGParameterConfirmationView(0);
  __chkstk_darwin(v217);
  v214 = &v169 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = sub_2398C();
  v213 = *(v215 - 8);
  __chkstk_darwin(v215);
  v212 = &v169 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = sub_20A0(&qword_36598, &qword_25EA8);
  __chkstk_darwin(v198);
  v201 = &v169 - v20;
  v199 = sub_20A0(&qword_36510, &qword_25E60);
  __chkstk_darwin(v199);
  v200 = &v169 - v21;
  v22 = sub_20A0(&qword_365A0, &qword_25EB0);
  __chkstk_darwin(v22 - 8);
  v195 = &v169 - v23;
  v197 = sub_2370C();
  v196 = *(v197 - 8);
  __chkstk_darwin(v197);
  v182 = &v169 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v183 = &v169 - v26;
  v206 = sub_20A0(&qword_36500, &qword_25E58);
  __chkstk_darwin(v206);
  v202 = &v169 - v27;
  v203 = sub_20A0(&qword_365A8, &qword_25EB8);
  __chkstk_darwin(v203);
  v205 = &v169 - v28;
  v254 = sub_20A0(&qword_364E8, &qword_25E50);
  __chkstk_darwin(v254);
  v207 = &v169 - v29;
  v204 = type metadata accessor for RGArchivedView(0);
  __chkstk_darwin(v204);
  v191 = &v169 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = sub_2384C();
  v190 = *(v192 - 8);
  __chkstk_darwin(v192);
  v188 = &v169 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v189 = &v169 - v33;
  v249 = type metadata accessor for RGActionConfirmationView(0);
  __chkstk_darwin(v249);
  v233 = &v169 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v234 = sub_2394C();
  v232 = *(v234 - 8);
  __chkstk_darwin(v234);
  v231 = &v169 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v261 = sub_20A0(&qword_365B0, &qword_25EC0);
  __chkstk_darwin(v261);
  v262 = (&v169 - v36);
  v255 = sub_20A0(&qword_365B8, &qword_25EC8);
  __chkstk_darwin(v255);
  v257 = &v169 - v37;
  v250 = sub_20A0(&qword_365C0, &qword_25ED0);
  __chkstk_darwin(v250);
  v252 = &v169 - v38;
  v246 = sub_20A0(&qword_365C8, &qword_25ED8);
  __chkstk_darwin(v246);
  v247 = &v169 - v39;
  v251 = sub_20A0(&qword_364B0, &qword_25E40);
  __chkstk_darwin(v251);
  v248 = &v169 - v40;
  v256 = sub_20A0(&qword_364A0, &qword_25E38);
  __chkstk_darwin(v256);
  v253 = &v169 - v41;
  v260 = sub_20A0(&qword_36490, &qword_25E30);
  __chkstk_darwin(v260);
  v258 = &v169 - v42;
  v242 = type metadata accessor for RGDisambiguationView(0);
  __chkstk_darwin(v242);
  v235 = (&v169 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  v240 = sub_20A0(&qword_365D0, &qword_25EE0);
  __chkstk_darwin(v240);
  v241 = &v169 - v44;
  v224 = sub_237BC();
  v223 = *(v224 - 8);
  __chkstk_darwin(v224);
  v239 = &v169 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = sub_236BC();
  v221 = *(v222 - 8);
  __chkstk_darwin(v222);
  v238 = &v169 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v237 = &v169 - v48;
  v243 = type metadata accessor for RGSFCardView(0);
  __chkstk_darwin(v243);
  v236 = &v169 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v225 = &v169 - v51;
  v245 = sub_20A0(&qword_364C0, &qword_25E48);
  __chkstk_darwin(v245);
  v244 = (&v169 - v52);
  v53 = sub_2389C();
  v54 = *(v53 - 8);
  __chkstk_darwin(v53);
  v56 = (&v169 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = sub_237DC();
  v58 = *(v57 - 8);
  __chkstk_darwin(v57);
  v60 = &v169 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __chkstk_darwin(v61);
  v64 = (&v169 - v63);
  v65 = *(v58 + 16);
  v65(&v169 - v63, a1, v57, v62);
  v66 = (*(v58 + 88))(v64, v57);
  if (v66 != enum case for RGPluginModel.disambiguationModel(_:))
  {
    if (v66 == enum case for RGPluginModel.actionConfirmationModel(_:))
    {
      (*(v58 + 96))(v64, v57);
      v82 = v232;
      v83 = v231;
      v84 = v234;
      (v232[4].count)(v231, v64, v234);
      v85 = v233;
      (v82[2].count)(&v233[*(v249 + 20)], v83, v84);
      sub_2425C();
      v244 = type metadata accessor for RGActionConfirmationView;
      sub_176F8(v85, v247, type metadata accessor for RGActionConfirmationView);
      swift_storeEnumTagMultiPayload();
      sub_16300();
      sub_16868(&qword_364D8, type metadata accessor for RGActionConfirmationView, &unk_25CAC);
      v86 = v248;
      sub_23D1C();
      sub_177C0(v86, v252, &qword_364B0, &qword_25E40);
      swift_storeEnumTagMultiPayload();
      sub_16244();
      sub_163EC();
      v87 = v253;
      sub_23D1C();
      sub_6A44(v86, &qword_364B0, &qword_25E40);
      sub_177C0(v87, v257, &qword_364A0, &qword_25E38);
      swift_storeEnumTagMultiPayload();
      sub_161B8();
      sub_165E0();
      v88 = v258;
      sub_23D1C();
      sub_6A44(v87, &qword_364A0, &qword_25E38);
      sub_177C0(v88, v262, &qword_36490, &qword_25E30);
      swift_storeEnumTagMultiPayload();
      sub_1612C();
      sub_23D1C();
      sub_6A44(v88, &qword_36490, &qword_25E30);
      sub_17760(v85, v244);
      return (v82[1].count)(v83, v84);
    }

    if (v66 == enum case for RGPluginModel.parameterConfirmationModel(_:))
    {
      (*(v58 + 96))(v64, v57);
      v90 = v213;
      v91 = v212;
      v92 = v215;
      (*(v213 + 32))(v212, v64, v215);
      v93 = v214;
      (*(v90 + 16))(&v214[*(v217 + 20)], v91, v92);
      sub_2425C();
      v254 = type metadata accessor for RGParameterConfirmationView;
      sub_176F8(v93, v218, type metadata accessor for RGParameterConfirmationView);
      swift_storeEnumTagMultiPayload();
      sub_16868(&qword_36538, type metadata accessor for RGParameterConfirmationView, &unk_2651C);
      sub_16868(&qword_36540, type metadata accessor for RGToolDisambiguationView, &unk_25A8C);
      v94 = v219;
    }

    else
    {
      if (v66 != enum case for RGPluginModel.toolDisambiguationModel(_:))
      {
        if (v66 == enum case for RGPluginModel.card(_:))
        {
          (*(v58 + 96))(v64, v57);
          v124 = *v64;
          v123 = v64[1];
          (v65)(v60, a1, v57);
          v125 = v195;
          sub_236FC();
          v153 = v196;
          v154 = v197;
          (*(v196 + 56))(v125, 0, 1, v197);
          v155 = v183;
          (*(v153 + 32))(v183, v125, v154);
          v156 = v182;
          (*(v153 + 16))(v182, v155, v154);
          v157 = v200;
          sub_6F18(v156, v200);
          sub_177C0(v157, v201, &qword_36510, &qword_25E60);
          swift_storeEnumTagMultiPayload();
          sub_1652C();
          v158 = v202;
          sub_23D1C();
          sub_6A44(v157, &qword_36510, &qword_25E60);
          (*(v153 + 8))(v155, v154);
          sub_177C0(v158, v205, &qword_36500, &qword_25E58);
          swift_storeEnumTagMultiPayload();
          sub_16868(&qword_364F0, type metadata accessor for RGArchivedView, "ݷ");
          sub_164A8();
          v159 = v207;
          sub_23D1C();
          sub_177C0(v159, v252, &qword_364E8, &qword_25E50);
          swift_storeEnumTagMultiPayload();
          sub_16244();
          sub_163EC();
          v160 = v253;
          sub_23D1C();
          sub_6A44(v159, &qword_364E8, &qword_25E50);
          sub_177C0(v160, v257, &qword_364A0, &qword_25E38);
          swift_storeEnumTagMultiPayload();
          sub_161B8();
          sub_165E0();
          v161 = v258;
          sub_23D1C();
          sub_6A44(v160, &qword_364A0, &qword_25E38);
          sub_177C0(v161, v262, &qword_36490, &qword_25E30);
          swift_storeEnumTagMultiPayload();
          sub_1612C();
          sub_23D1C();
          sub_4C4C(v124, v123);
          sub_6A44(v161, &qword_36490, &qword_25E30);
          return sub_6A44(v158, &qword_36500, &qword_25E58);
        }

        if (v66 == enum case for RGPluginModel.archivedView(_:))
        {
          (*(v58 + 96))(v64, v57);
          v90 = v190;
          v91 = v189;
          v92 = v192;
          (*(v190 + 32))(v189, v64, v192);
          v126 = v188;
          (*(v90 + 16))(v188, v91, v92);
          v127 = v191;
          sub_CE0C(v126, v191);
          v249 = type metadata accessor for RGArchivedView;
          sub_176F8(v127, v205, type metadata accessor for RGArchivedView);
          swift_storeEnumTagMultiPayload();
          sub_16868(&qword_364F0, type metadata accessor for RGArchivedView, "ݷ");
          sub_164A8();
          v128 = v207;
          sub_23D1C();
          sub_177C0(v128, v252, &qword_364E8, &qword_25E50);
          swift_storeEnumTagMultiPayload();
          sub_16244();
          sub_163EC();
          v129 = v253;
          sub_23D1C();
          sub_6A44(v128, &qword_364E8, &qword_25E50);
          sub_177C0(v129, v257, &qword_364A0, &qword_25E38);
          swift_storeEnumTagMultiPayload();
          sub_161B8();
          sub_165E0();
          v130 = v258;
          sub_23D1C();
          sub_6A44(v129, &qword_364A0, &qword_25E38);
          sub_177C0(v130, v262, &qword_36490, &qword_25E30);
          swift_storeEnumTagMultiPayload();
          sub_1612C();
          sub_23D1C();
          sub_6A44(v130, &qword_36490, &qword_25E30);
          v99 = v127;
          v100 = v249;
          goto LABEL_15;
        }

        if (v66 == enum case for RGPluginModel.control(_:))
        {
          (*(v58 + 96))(v64, v57);
          v131 = v181;
          v132 = v193;
          v133 = v194;
          (*(v181 + 32))(v193, v64, v194);
          v134 = v174;
          (*(v131 + 16))(v174, v132, v133);
          v135 = v175;
          sub_237FC();
          v136 = v176;
          sub_240EC();
          v137 = *(v177 + 8);
          v138 = v178;
          v137(v135, v178);
          v139 = v180;
          v140 = sub_240CC();
          (*(v179 + 8))(v136, v139);
          sub_237FC();
          v141 = sub_240DC();
          v137(v135, v138);
          v142 = *(v131 + 8);
          v143 = v134;
          v144 = v194;
          v142(v143, v194);
          v145 = v185;
          *v185 = v140;
          v145[1] = v141;
          v146 = swift_storeEnumTagMultiPayload();
          sub_16814(v146, v147, v148);
          sub_16868(&qword_36560, type metadata accessor for RGSuccessView, &unk_25BAC);
          v149 = v140;
          v150 = v186;
          sub_23D1C();
          sub_177C0(v150, v228, &qword_36550, &qword_25E78);
          swift_storeEnumTagMultiPayload();
          sub_1666C();
          sub_16758();
          v151 = v229;
          sub_23D1C();
          sub_6A44(v150, &qword_36550, &qword_25E78);
          sub_177C0(v151, v257, &qword_36520, &qword_25E68);
          swift_storeEnumTagMultiPayload();
          sub_161B8();
          sub_165E0();
          v152 = v258;
          sub_23D1C();
          sub_6A44(v151, &qword_36520, &qword_25E68);
          sub_177C0(v152, v262, &qword_36490, &qword_25E30);
          swift_storeEnumTagMultiPayload();
          sub_1612C();
          sub_23D1C();

          sub_6A44(v152, &qword_36490, &qword_25E30);
          return (v142)(v193, v144);
        }

        if (v66 != enum case for RGPluginModel.successModel(_:))
        {
          *v262 = sub_23EAC();
          swift_storeEnumTagMultiPayload();
          sub_1612C();
          sub_23D1C();
          return (*(v58 + 8))(v64, v57);
        }

        (*(v58 + 96))(v64, v57);
        v90 = v171;
        v91 = v170;
        v92 = v173;
        (*(v171 + 32))(v170, v64, v173);
        v93 = v172;
        (*(v90 + 16))(v172, v91, v92);
        v254 = type metadata accessor for RGSuccessView;
        sub_176F8(v93, v185, type metadata accessor for RGSuccessView);
        v162 = swift_storeEnumTagMultiPayload();
        sub_16814(v162, v163, v164);
        sub_16868(&qword_36560, type metadata accessor for RGSuccessView, &unk_25BAC);
        v94 = v186;
        sub_23D1C();
        v95 = &qword_36550;
        v96 = &qword_25E78;
        sub_177C0(v94, v228, &qword_36550, &qword_25E78);
LABEL_14:
        swift_storeEnumTagMultiPayload();
        sub_1666C();
        sub_16758();
        v97 = v229;
        sub_23D1C();
        sub_6A44(v94, v95, v96);
        sub_177C0(v97, v257, &qword_36520, &qword_25E68);
        swift_storeEnumTagMultiPayload();
        sub_161B8();
        sub_165E0();
        v98 = v258;
        sub_23D1C();
        sub_6A44(v97, &qword_36520, &qword_25E68);
        sub_177C0(v98, v262, &qword_36490, &qword_25E30);
        swift_storeEnumTagMultiPayload();
        sub_1612C();
        sub_23D1C();
        sub_6A44(v98, &qword_36490, &qword_25E30);
        v99 = v93;
        v100 = v254;
LABEL_15:
        sub_17760(v99, v100);
        return (*(v90 + 8))(v91, v92);
      }

      (*(v58 + 96))(v64, v57);
      v90 = v209;
      v91 = v208;
      v92 = v211;
      (*(v209 + 32))(v208, v64, v211);
      v93 = v210;
      (*(v90 + 16))(v210, v91, v92);
      v254 = type metadata accessor for RGToolDisambiguationView;
      sub_176F8(v93, v218, type metadata accessor for RGToolDisambiguationView);
      swift_storeEnumTagMultiPayload();
      sub_16868(&qword_36538, type metadata accessor for RGParameterConfirmationView, &unk_2651C);
      sub_16868(&qword_36540, type metadata accessor for RGToolDisambiguationView, &unk_25A8C);
      v94 = v219;
    }

    sub_23D1C();
    v95 = &qword_36530;
    v96 = &qword_25E70;
    sub_177C0(v94, v228, &qword_36530, &qword_25E70);
    goto LABEL_14;
  }

  (*(v58 + 96))(v64, v57);
  (*(v54 + 32))(v56, v64, v53);
  sub_4490();
  v68 = v53;
  v69 = v244;
  if (v67)
  {
    v70 = v67;
    v234 = v54;
    v71 = v67 >> 62;
    if (v67 >> 62)
    {
LABEL_50:
      if (sub_245FC())
      {
        goto LABEL_5;
      }
    }

    else if (*(&dword_10 + (v67 & 0xFFFFFFFFFFFFFF8)))
    {
LABEL_5:
      sub_2386C();
      sub_2387C();
      sub_2385C();
      v72 = v236;
      sub_2425C();
      v73 = v243;
      *&v72[*(v243 + 24)] = 0;
      v231 = sub_1744C(&_swiftEmptyArrayStorage);
      *&v72[v73[8]] = 3;
      v74 = &v72[v73[10]];
      *v74 = sub_7844;
      *(v74 + 1) = 0;
      v74[16] = 0;
      v75 = &v72[v73[11]];
      v264 = 0x4059000000000000;
      sub_2400C();
      v76 = v266;
      *v75 = v265;
      *(v75 + 1) = v76;
      v77 = &v72[v73[9]];
      LOBYTE(v264) = 0;
      sub_2400C();
      v78 = v266;
      *v77 = v265;
      *(v77 + 1) = v78;
      v79 = [objc_allocWithZone(SFCard) init];
      sub_4CF4();
      isa = sub_243CC().super.isa;
      [v79 setCardSections:isa];

      *&v72[v73[5]] = v79;
      if (v71)
      {
        v71 = v70 & 0xFFFFFFFFFFFFFF8;
        v81 = sub_245FC();
      }

      else
      {
        v71 = v70 & 0xFFFFFFFFFFFFFF8;
        v81 = *(&dword_10 + (v70 & 0xFFFFFFFFFFFFFF8));
      }

      v232 = v56;
      v233 = v68;
      if (v81)
      {
        v69 = 0;
        v235 = &_swiftEmptyArrayStorage;
        v56 = &SAAceCommand__prots;
        do
        {
          v101 = v69;
          while (1)
          {
            if ((v70 & 0xC000000000000001) != 0)
            {
              v102 = sub_2459C();
            }

            else
            {
              if (v101 >= *(v71 + 16))
              {
                goto LABEL_49;
              }

              v102 = *(v70 + 8 * v101 + 32);
            }

            v68 = v102;
            v69 = (v101 + 1);
            if (__OFADD__(v101, 1))
            {
              __break(1u);
LABEL_49:
              __break(1u);
              goto LABEL_50;
            }

            v103 = sub_10BB8(v101 + 1);
            v104 = [v68 cardSectionId];
            if (v104)
            {
              break;
            }

            v101 = (v101 + 1);
            if (v69 == v81)
            {
              goto LABEL_35;
            }
          }

          v105 = v104;
          v106 = sub_2434C();
          v230 = v107;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v235 = sub_16914(0, v235[2] + 1, 1, v235);
          }

          v109 = v235[2];
          v108 = v235[3];
          v68 = (v109 + 1);
          if (v109 >= v108 >> 1)
          {
            v235 = sub_16914((v108 > 1), v109 + 1, 1, v235);
          }

          v110 = v235;
          v235[2] = v68;
          v111 = &v110[3 * v109];
          v112 = v230;
          v111[4] = v106;
          v111[5] = v112;
          v111[6] = v103;
        }

        while (v69 != v81);
      }

      else
      {
        v235 = &_swiftEmptyArrayStorage;
      }

LABEL_35:

      if (v235[2])
      {
        sub_20A0(&qword_365D8, &qword_25EE8);
        v113 = sub_2463C();
      }

      else
      {
        v113 = &_swiftEmptyDictionarySingleton;
      }

      v114 = v233;
      v69 = v244;
      v265 = v113;

      sub_16C94(v115, 1, &v265);

      v116 = *(v243 + 28);
      (*(v223 + 8))(v239, v224);
      v117 = *(v221 + 8);
      v118 = v222;
      v117(v238, v222);
      v117(v237, v118);

      v119 = v236;
      *&v236[v116] = v265;
      v120 = v225;
      sub_17694(v119, v225);
      sub_176F8(v120, v241, type metadata accessor for RGSFCardView);
      swift_storeEnumTagMultiPayload();
      sub_16868(&qword_364C8, type metadata accessor for RGSFCardView, &unk_25748);
      sub_16868(&qword_364D0, type metadata accessor for RGDisambiguationView, &unk_25F58);
      sub_23D1C();
      sub_17760(v120, type metadata accessor for RGSFCardView);
      v121 = v234;
      v56 = v232;
      v122 = v114;
      goto LABEL_53;
    }

    v54 = v234;
  }

  v165 = v235;
  (*(v54 + 16))(v235, v56, v68);
  sub_176F8(v165, v241, type metadata accessor for RGDisambiguationView);
  swift_storeEnumTagMultiPayload();
  sub_16868(&qword_364C8, type metadata accessor for RGSFCardView, &unk_25748);
  sub_16868(&qword_364D0, type metadata accessor for RGDisambiguationView, &unk_25F58);
  sub_23D1C();
  sub_17760(v165, type metadata accessor for RGDisambiguationView);
  v121 = v54;
  v122 = v68;
LABEL_53:
  sub_177C0(v69, v247, &qword_364C0, &qword_25E48);
  swift_storeEnumTagMultiPayload();
  sub_16300();
  sub_16868(&qword_364D8, type metadata accessor for RGActionConfirmationView, &unk_25CAC);
  v166 = v248;
  sub_23D1C();
  sub_177C0(v166, v252, &qword_364B0, &qword_25E40);
  swift_storeEnumTagMultiPayload();
  sub_16244();
  sub_163EC();
  v167 = v253;
  sub_23D1C();
  sub_6A44(v166, &qword_364B0, &qword_25E40);
  sub_177C0(v167, v257, &qword_364A0, &qword_25E38);
  swift_storeEnumTagMultiPayload();
  sub_161B8();
  sub_165E0();
  v168 = v258;
  sub_23D1C();
  sub_6A44(v167, &qword_364A0, &qword_25E38);
  sub_177C0(v168, v262, &qword_36490, &qword_25E30);
  swift_storeEnumTagMultiPayload();
  sub_1612C();
  sub_23D1C();
  sub_6A44(v168, &qword_36490, &qword_25E30);
  sub_6A44(v69, &qword_364C0, &qword_25E48);
  return (*(v121 + 8))(v56, v122);
}

uint64_t sub_15E80@<X0>(uint64_t *a1@<X8>)
{
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_15EB4(uint64_t a1)
{
  v2 = sub_20A0(&qword_36468, &qword_25E20);
  __chkstk_darwin(v2);
  v4 = &v10 - v3;
  sub_12F44(a1, (&v10 - v3));
  type metadata accessor for CommandThrottle(0);
  v5 = swift_allocObject();
  v11 = 0;
  sub_23ACC();
  sub_16868(&qword_358A0, type metadata accessor for CommandThrottle, &unk_265FC);
  v6 = sub_23AAC();
  v7 = &v4[*(v2 + 36)];
  *v7 = v6;
  v7[1] = v5;
  sub_16014();
  v8 = sub_23EAC();
  sub_6A44(v4, &qword_36468, &qword_25E20);
  return v8;
}

unint64_t sub_16014()
{
  result = qword_36470;
  if (!qword_36470)
  {
    sub_20E8(&qword_36468, &qword_25E20);
    sub_160A0();
    sub_168B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_36470);
  }

  return result;
}

unint64_t sub_160A0()
{
  result = qword_36478;
  if (!qword_36478)
  {
    sub_20E8(&qword_36480, &qword_25E28);
    sub_1612C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_36478);
  }

  return result;
}

unint64_t sub_1612C()
{
  result = qword_36488;
  if (!qword_36488)
  {
    sub_20E8(&qword_36490, &qword_25E30);
    sub_161B8();
    sub_165E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_36488);
  }

  return result;
}

unint64_t sub_161B8()
{
  result = qword_36498;
  if (!qword_36498)
  {
    sub_20E8(&qword_364A0, &qword_25E38);
    sub_16244();
    sub_163EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_36498);
  }

  return result;
}

unint64_t sub_16244()
{
  result = qword_364A8;
  if (!qword_364A8)
  {
    sub_20E8(&qword_364B0, &qword_25E40);
    sub_16300();
    sub_16868(&qword_364D8, type metadata accessor for RGActionConfirmationView, &unk_25CAC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_364A8);
  }

  return result;
}

unint64_t sub_16300()
{
  result = qword_364B8;
  if (!qword_364B8)
  {
    sub_20E8(&qword_364C0, &qword_25E48);
    sub_16868(&qword_364C8, type metadata accessor for RGSFCardView, &unk_25748);
    sub_16868(&qword_364D0, type metadata accessor for RGDisambiguationView, &unk_25F58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_364B8);
  }

  return result;
}

unint64_t sub_163EC()
{
  result = qword_364E0;
  if (!qword_364E0)
  {
    sub_20E8(&qword_364E8, &qword_25E50);
    sub_16868(&qword_364F0, type metadata accessor for RGArchivedView, "ݷ");
    sub_164A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_364E0);
  }

  return result;
}

unint64_t sub_164A8()
{
  result = qword_364F8;
  if (!qword_364F8)
  {
    sub_20E8(&qword_36500, &qword_25E58);
    sub_1652C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_364F8);
  }

  return result;
}

unint64_t sub_1652C()
{
  result = qword_36508;
  if (!qword_36508)
  {
    sub_20E8(&qword_36510, &qword_25E60);
    sub_16868(&qword_364C8, type metadata accessor for RGSFCardView, &unk_25748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_36508);
  }

  return result;
}

unint64_t sub_165E0()
{
  result = qword_36518;
  if (!qword_36518)
  {
    sub_20E8(&qword_36520, &qword_25E68);
    sub_1666C();
    sub_16758();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_36518);
  }

  return result;
}

unint64_t sub_1666C()
{
  result = qword_36528;
  if (!qword_36528)
  {
    sub_20E8(&qword_36530, &qword_25E70);
    sub_16868(&qword_36538, type metadata accessor for RGParameterConfirmationView, &unk_2651C);
    sub_16868(&qword_36540, type metadata accessor for RGToolDisambiguationView, &unk_25A8C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_36528);
  }

  return result;
}

unint64_t sub_16758()
{
  result = qword_36548;
  if (!qword_36548)
  {
    v1 = sub_20E8(&qword_36550, &qword_25E78);
    sub_16814(v1, v2, v3);
    sub_16868(&qword_36560, type metadata accessor for RGSuccessView, &unk_25BAC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_36548);
  }

  return result;
}

unint64_t sub_16814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_36558;
  if (!qword_36558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_36558);
  }

  return result;
}

uint64_t sub_16868(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_168B0()
{
  result = qword_36568;
  if (!qword_36568)
  {
    sub_20E8(&qword_36570, &qword_25E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_36568);
  }

  return result;
}

void *sub_16914(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_20A0(&qword_365E8, &qword_25EF8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_20A0(&qword_365F0, &qword_25F00);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_16A5C(uint64_t a1, uint64_t a2)
{
  sub_246EC();
  sub_2438C();
  v4 = sub_2470C();

  return sub_16B14(a1, a2, v4);
}

unint64_t sub_16AD4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2450C(*(v2 + 40));
  return sub_16BCC(a1, v4);
}

unint64_t sub_16B14(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_246AC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_16BCC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_17838(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_2451C();
      sub_17894(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_16C94(void *a1, char a2, void *a3)
{
  v38 = a1[2];
  if (!v38)
  {
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = v8;
  v11 = sub_16A5C(v7, v6);
  v13 = v9[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v12;
  if (v9[3] < v16)
  {
    sub_17190(v16, v5 & 1);
    v11 = sub_16A5C(v7, v6);
    if ((v17 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v11 = sub_246DC();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v11;
  sub_17024();
  v11 = v20;
  if (v17)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_20A0(&qword_365E0, &qword_25EF0);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = v7;
  v22[1] = v6;
  *(v21[7] + 8 * v11) = v10;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_2457C(30);
    v39._object = 0x8000000000026EC0;
    v39._countAndFlagsBits = 0xD00000000000001BLL;
    sub_2439C(v39);
    sub_245DC();
    v40._countAndFlagsBits = 39;
    v40._object = 0xE100000000000000;
    sub_2439C(v40);
    result = sub_245EC();
    __break(1u);
    return result;
  }

  v21[2] = v24;
  if (v38 != 1)
  {
    v5 = (a1 + 9);
    v25 = 1;
    while (v25 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v26 = *v5;
      v27 = *a3;

      v10 = v26;
      v28 = sub_16A5C(v7, v6);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v15 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v15)
      {
        goto LABEL_23;
      }

      v17 = v29;
      if (v27[3] < v32)
      {
        sub_17190(v32, 1);
        v28 = sub_16A5C(v7, v6);
        if ((v17 & 1) != (v33 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v17)
      {
        goto LABEL_8;
      }

      v34 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      v35 = (v34[6] + 16 * v28);
      *v35 = v7;
      v35[1] = v6;
      *(v34[7] + 8 * v28) = v10;
      v36 = v34[2];
      v15 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v25;
      v34[2] = v37;
      v5 += 3;
      if (v38 == v25)
      {
      }
    }

    goto LABEL_25;
  }
}

id sub_17024()
{
  v1 = v0;
  sub_20A0(&qword_365D8, &qword_25EE8);
  v2 = *v0;
  v3 = sub_2461C();
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

        result = v20;
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

uint64_t sub_17190(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_20A0(&qword_365D8, &qword_25EE8);
  v35 = v4;
  result = sub_2462C();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_246EC();
      sub_2438C();
      result = sub_2470C();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_1744C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_20A0(&qword_365D8, &qword_25EE8);
    v3 = sub_2463C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_16A5C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_17550(uint64_t a1, uint64_t (*a2)(_OWORD *))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_20A0(&qword_365F8, &qword_25F08);
    v5 = sub_2463C();
    v6 = a1 + 32;

    while (1)
    {
      sub_177C0(v6, v15, &qword_362A8, qword_25F10);
      result = a2(v15);
      if (v8)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = v5[6] + 40 * result;
      v10 = v15[0];
      v11 = v15[1];
      *(v9 + 32) = v16;
      *v9 = v10;
      *(v9 + 16) = v11;
      result = sub_17828(&v17, (v5[7] + 32 * result));
      v12 = v5[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v5[2] = v14;
      v6 += 72;
      if (!--v2)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_17694(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RGSFCardView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_176F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_17760(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_177C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_20A0(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_17828(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_17900(uint64_t a1, uint64_t a2, double a3)
{
  v5 = sub_2389C();
  v6 = *(*(v5 - 8) + 48);

  return v6(a1, a2, v5);
}

uint64_t sub_17980(uint64_t a1, uint64_t a2, double a3)
{
  v5 = sub_2389C();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1, a2, a2, v5);
}

uint64_t type metadata accessor for RGDisambiguationView(uint64_t a1)
{
  result = qword_36658;
  if (!qword_36658)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_17A3C(uint64_t a1, double a2)
{
  result = sub_2389C();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

char *sub_17AC4@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result + 1;
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    v5 = *(sub_20A0(&qword_361F8, &qword_25FD0) + 48);
    v6 = sub_10BB8(v3);
    v7 = type metadata accessor for RGDisplayRepresentationView(0);
    v8 = v7[6];
    v9 = sub_2391C();
    (*(*(v9 - 8) + 16))(a2 + v8, &v4[v5], v9);
    *a2 = swift_getKeyPath();
    *(a2 + 8) = 0;
    sub_242FC();
    sub_10248(&qword_358B0, &type metadata accessor for Context, &protocol conformance descriptor for Context);
    *(a2 + 16) = sub_23BDC();
    *(a2 + 24) = v10;
    *(a2 + v7[8]) = v6;
    v11 = v7[7];
    v12 = sub_238AC();
    v13 = *(*(v12 - 8) + 56);

    return v13(a2 + v11, 1, 1, v12);
  }

  return result;
}

uint64_t sub_17C34@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v24 = sub_242DC();
  v1 = *(v24 - 8);
  __chkstk_darwin(v24);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_20A0(&qword_361A8, &unk_25C00);
  v4 = *(v22 - 8);
  __chkstk_darwin(v22);
  v6 = &v21 - v5;
  v7 = sub_2391C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2388C();
  v12 = v11;
  v13 = *(v11 + 16);
  if (!v13)
  {
    *(swift_allocObject() + 16) = v11;
    sub_20A0(&qword_361C0, &qword_25B00);
    sub_100B4();
    sub_241EC();
LABEL_9:
    v17 = &enum case for ComponentStackBottomSpacing.default(_:);
    goto LABEL_10;
  }

  (*(v8 + 16))(v10, v11 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * (v13 - 1), v7);
  v14 = sub_238CC();
  if (v15 >> 60 == 15 && (v14 = sub_238FC(), v15 >> 60 == 15))
  {
    v16 = 0;
  }

  else
  {
    sub_4C38(v14, v15);
    v16 = 1;
  }

  (*(v8 + 8))(v10, v7);
  *(swift_allocObject() + 16) = v12;
  sub_20A0(&qword_361C0, &qword_25B00);
  sub_100B4();
  sub_241EC();
  if ((v16 & 1) == 0)
  {
    goto LABEL_9;
  }

  v17 = &enum case for ComponentStackBottomSpacing.none(_:);
LABEL_10:
  v18 = v24;
  (*(v1 + 104))(v3, *v17, v24);
  sub_3F18(&qword_361D8, &qword_361A8, &unk_25C00, &protocol conformance descriptor for ComponentStack<A>);
  v19 = v22;
  sub_23EFC();
  (*(v1 + 8))(v3, v18);
  return (*(v4 + 8))(v6, v19);
}

uint64_t sub_17FF8(uint64_t a1)
{
  sub_181AC(a1);
  swift_getKeyPath();
  sub_20A0(&qword_361E8, &unk_25B30);
  type metadata accessor for RGDisplayRepresentationView(0);
  sub_3F18(&qword_361F0, &qword_361E8, &unk_25B30, &protocol conformance descriptor for [A]);
  sub_10248(&qword_361D0, type metadata accessor for RGDisplayRepresentationView, &unk_262BC);
  return sub_2409C();
}

uint64_t sub_18118()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_18158@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23BFC();
  *a1 = result;
  return result;
}

void sub_181AC(uint64_t a1)
{
  v48 = sub_20A0(&qword_361F8, &qword_25FD0);
  v2 = *(v48 - 8);
  __chkstk_darwin(v48);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v39 - v6;
  v8 = *(a1 + 16);
  v9 = &_swiftEmptyArrayStorage;
  if (v8)
  {
    v10 = *(v2 + 80);
    v42 = v10;
    v43 = (v10 + 32) & ~v10;
    v11 = &_swiftEmptyArrayStorage + v43;
    v12 = 0;
    v13 = 0;
    v47 = sub_2391C();
    v14 = *(v47 - 8);
    v15 = *(v14 + 16);
    v45 = v14 + 16;
    v46 = v15;
    v16 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v44 = *(v14 + 72);
    v17 = &_swiftEmptyArrayStorage;
    v40 = v8;
    v41 = v2;
    while (1)
    {
      v19 = v47;
      v20 = *(v48 + 48);
      *v4 = v12;
      v46(&v4[v20], v16, v19);
      sub_184FC(v4, v7);
      if (v13)
      {
        v9 = v17;
        v18 = __OFSUB__(v13--, 1);
        if (v18)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v21 = v17[3];
        if (((v21 >> 1) + 0x4000000000000000) < 0)
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          return;
        }

        v22 = v7;
        v23 = v21 & 0xFFFFFFFFFFFFFFFELL;
        if (v23 <= 1)
        {
          v24 = 1;
        }

        else
        {
          v24 = v23;
        }

        sub_20A0(&qword_36690, &qword_26008);
        v25 = *(v2 + 72);
        v26 = v43;
        v9 = swift_allocObject();
        v27 = j__malloc_size(v9);
        if (!v25)
        {
          goto LABEL_34;
        }

        v28 = v27 - v26;
        if (v27 - v26 == 0x8000000000000000 && v25 == -1)
        {
          goto LABEL_35;
        }

        v30 = v28 / v25;
        v9[2] = v24;
        v9[3] = 2 * (v28 / v25);
        v31 = v9 + v26;
        v32 = v17[3] >> 1;
        v33 = v32 * v25;
        if (v17[2])
        {
          if (v9 < v17 || v31 >= v17 + v43 + v33)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v9 != v17)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v17[2] = 0;
        }

        v11 = &v31[v33];
        v35 = (v30 & 0x7FFFFFFFFFFFFFFFLL) - v32;

        v7 = v22;
        v8 = v40;
        v2 = v41;
        v18 = __OFSUB__(v35, 1);
        v13 = v35 - 1;
        if (v18)
        {
LABEL_27:
          __break(1u);
          break;
        }
      }

      ++v12;
      sub_184FC(v7, v11);
      v11 += *(v2 + 72);
      v16 += v44;
      v17 = v9;
      if (v8 == v12)
      {
        goto LABEL_29;
      }
    }
  }

  v13 = 0;
LABEL_29:
  v36 = v9[3];
  if (v36 >= 2)
  {
    v37 = v36 >> 1;
    v18 = __OFSUB__(v37, v13);
    v38 = v37 - v13;
    if (v18)
    {
      goto LABEL_36;
    }

    v9[2] = v38;
  }
}

uint64_t sub_184A8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23BFC();
  *a1 = result;
  return result;
}

uint64_t sub_184FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20A0(&qword_361F8, &qword_25FD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1856C()
{
  sub_20E8(&qword_361A8, &unk_25C00);
  sub_3F18(&qword_361D8, &qword_361A8, &unk_25C00, &protocol conformance descriptor for ComponentStack<A>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_18604(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1864C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_186B4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v1;

  return ControlView.init(control:controlType:)(v3, v2);
}

unint64_t sub_186F8()
{
  result = qword_36698;
  if (!qword_36698)
  {
    sub_2418C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_36698);
  }

  return result;
}

void sub_187A0(uint64_t a1)
{
  sub_2391C();
  if (v1 <= 0x3F)
  {
    sub_1D9D8(319, &qword_36710, &type metadata accessor for SystemPromptResolution, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_18884(319);
      if (v3 <= 0x3F)
      {
        sub_188EC();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_18884(uint64_t a1)
{
  if (!qword_36718)
  {
    sub_2510(255, qword_35810, SAIntentGroupRunSiriKitExecutor_ptr);
    v1 = sub_244DC();
    if (!v2)
    {
      atomic_store(v1, &qword_36718);
    }
  }
}

void sub_188EC()
{
  if (!qword_36720)
  {
    v0 = sub_2404C();
    if (!v1)
    {
      atomic_store(v0, &qword_36720);
    }
  }
}

__n128 sub_1893C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_18948(uint64_t a1, int a2)
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

uint64_t sub_18990(uint64_t result, int a2, int a3)
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

uint64_t sub_189FC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, void *a5@<X8>)
{
  v81 = a3;
  v82 = a4;
  v79 = a1;
  v80 = a2;
  v88 = a5;
  v85 = sub_20A0(&qword_369A8, &qword_26398);
  __chkstk_darwin(v85);
  v87 = &v67 - v6;
  v76 = sub_20A0(&qword_369B0, &qword_263A0);
  __chkstk_darwin(v76);
  v74 = &v67 - v7;
  v86 = sub_20A0(&qword_36900, &qword_26330);
  __chkstk_darwin(v86);
  v78 = &v67 - v8;
  v71 = sub_237EC();
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v69 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_20A0(&qword_36910, &qword_26338);
  __chkstk_darwin(v75);
  v77 = &v67 - v10;
  v11 = sub_20A0(&qword_366A0, qword_260B0);
  __chkstk_darwin(v11 - 8);
  v13 = &v67 - v12;
  v14 = sub_238AC();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v83 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_23C6C();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_2416C();
  v89 = *(v84 - 8);
  __chkstk_darwin(v84);
  v72 = v21;
  v73 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v67 - v23;
  v25 = *v5;
  v26 = *(v5 + 8);
  v90 = v15;
  if ((v26 & 1) == 0)
  {

    sub_2448C();
    v27 = sub_23DEC();
    sub_23A7C();

    sub_23C5C();
    swift_getAtKeyPath();
    sub_1E098(v25, 0);
    (*(v18 + 8))(v20, v17);
  }

  v28 = *(v5 + 16);
  v29 = v89;
  if (v28)
  {
    v30 = v28;
    sub_4CA0(v79, v80);

    sub_2415C();
    v31 = type metadata accessor for RGDisplayRepresentationView(0);
    sub_177C0(v5 + *(v31 + 28), v13, &qword_366A0, qword_260B0);
    v32 = v90;
    if ((*(v90 + 48))(v13, 1, v14) == 1)
    {
      sub_6A44(v13, &qword_366A0, qword_260B0);
      v33 = *(v5 + *(v31 + 32));
      v34 = v84;
      if (v33)
      {
        v35 = v73;
        (*(v29 + 16))(v73, v24, v84);
        v36 = (*(v29 + 80) + 16) & ~*(v29 + 80);
        v37 = swift_allocObject();
        v82 = v24;
        v38 = v37;
        (*(v29 + 32))(v37 + v36, v35, v34);
        v39 = v33;
        v40 = v77;
        sub_2425C();
        v41 = v75;
        v42 = (v40 + *(v75 + 36));
        type metadata accessor for CommandThrottle(0);
        sub_1DD20(&qword_358A0, type metadata accessor for CommandThrottle, &unk_265FC);
        *v42 = sub_23BDC();
        v42[1] = v43;
        v44 = (v40 + v41[10]);
        sub_242FC();
        sub_1DD20(&qword_358B0, &type metadata accessor for Context, &protocol conformance descriptor for Context);
        *v44 = sub_23BDC();
        v44[1] = v45;
        *(v40 + v41[11]) = v39;
        sub_20A0(&qword_369B8, &qword_263A8);
        swift_storeEnumTagMultiPayload();
        v46 = (v40 + v41[12]);
        *v46 = sub_1E0BC;
        v46[1] = v38;
        sub_177C0(v40, v74, &qword_36910, &qword_26338);
        swift_storeEnumTagMultiPayload();
        sub_3F18(&qword_36908, &qword_36910, &qword_26338, &unk_253E8);
        v47 = v78;
        sub_23D1C();
        sub_177C0(v47, v87, &qword_36900, &qword_26330);
        swift_storeEnumTagMultiPayload();
        sub_1DC70();
        sub_1DD20(&qword_36918, &type metadata accessor for PluginView, &protocol conformance descriptor for PluginView);
        sub_23D1C();

        sub_6A44(v47, &qword_36900, &qword_26330);
        v48 = v40;
        v29 = v89;
        v24 = v82;
        sub_6A44(v48, &qword_36910, &qword_26338);
      }

      else
      {
        (*(v29 + 16))(v87, v24, v84);
        swift_storeEnumTagMultiPayload();
        sub_1DC70();
        sub_1DD20(&qword_36918, &type metadata accessor for PluginView, &protocol conformance descriptor for PluginView);
        sub_23D1C();
      }
    }

    else
    {
      v49 = *(v32 + 32);
      v50 = v83;
      v68 = v14;
      v49(v83, v13, v14);
      v51 = v69;
      (*(v32 + 16))(v69, v50, v14);
      v52 = v70;
      v53 = v71;
      (*(v70 + 104))(v51, enum case for MessagePayload.systemPromptResolved(_:), v71);
      v54 = v73;
      v34 = v84;
      (*(v29 + 16))(v73, v24, v84);
      v55 = (*(v29 + 80) + 16) & ~*(v29 + 80);
      v81 = swift_allocObject();
      (*(v29 + 32))(v81 + v55, v54, v34);
      v56 = v77;
      sub_2425C();
      v57 = v75;
      v58 = *(v75 + 36);
      v82 = v24;
      v59 = (v56 + v58);
      type metadata accessor for CommandThrottle(0);
      sub_1DD20(&qword_358A0, type metadata accessor for CommandThrottle, &unk_265FC);
      *v59 = sub_23BDC();
      v59[1] = v60;
      v61 = (v56 + v57[10]);
      sub_242FC();
      sub_1DD20(&qword_358B0, &type metadata accessor for Context, &protocol conformance descriptor for Context);
      *v61 = sub_23BDC();
      v61[1] = v62;
      (*(v52 + 32))(v56 + v57[11], v51, v53);
      sub_20A0(&qword_369B8, &qword_263A8);
      swift_storeEnumTagMultiPayload();
      v63 = (v56 + v57[12]);
      v64 = v81;
      *v63 = sub_1EC4C;
      v63[1] = v64;
      sub_177C0(v56, v74, &qword_36910, &qword_26338);
      swift_storeEnumTagMultiPayload();
      sub_3F18(&qword_36908, &qword_36910, &qword_26338, &unk_253E8);
      v65 = v78;
      sub_23D1C();
      sub_177C0(v65, v87, &qword_36900, &qword_26330);
      swift_storeEnumTagMultiPayload();
      sub_1DC70();
      sub_1DD20(&qword_36918, &type metadata accessor for PluginView, &protocol conformance descriptor for PluginView);
      sub_23D1C();
      v24 = v82;
      sub_6A44(v65, &qword_36900, &qword_26330);
      sub_6A44(v56, &qword_36910, &qword_26338);
      (*(v90 + 8))(v83, v68);
    }

    return (*(v29 + 8))(v24, v34);
  }

  else
  {
    sub_242FC();
    sub_1DD20(&qword_358B0, &type metadata accessor for Context, &protocol conformance descriptor for Context);
    result = sub_23BCC();
    __break(1u);
  }

  return result;
}

uint64_t sub_196BC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v72 = a3;
  v70 = sub_20A0(&qword_369C0, &qword_263B0);
  __chkstk_darwin(v70);
  v68 = &v55 - v7;
  v61 = sub_20A0(&qword_369C8, &qword_263B8);
  __chkstk_darwin(v61);
  v60 = &v55 - v8;
  v71 = sub_20A0(&qword_36938, &qword_26348);
  __chkstk_darwin(v71);
  v62 = &v55 - v9;
  v66 = sub_237EC();
  v58 = *(v66 - 8);
  __chkstk_darwin(v66);
  v57 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_20A0(&qword_36948, &unk_26350);
  __chkstk_darwin(v65);
  v64 = &v55 - v11;
  v12 = sub_20A0(&qword_366A0, qword_260B0);
  __chkstk_darwin(v12 - 8);
  v14 = &v55 - v13;
  v15 = sub_238AC();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v67 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_20A0(&qword_36510, &qword_25E60);
  v63 = *(v69 - 8);
  v18 = *(v63 + 64);
  __chkstk_darwin(v69);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v55 - v21;
  sub_4CA0(a1, a2);
  v23 = v22;
  sub_6C48(a1, a2, v22);
  v24 = type metadata accessor for RGDisplayRepresentationView(0);
  v25 = v4;
  sub_177C0(v4 + *(v24 + 28), v14, &qword_366A0, qword_260B0);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    v27 = v63;
    v26 = v64;
    v28 = v65;
    sub_6A44(v14, &qword_366A0, qword_260B0);
    v29 = *(v25 + *(v24 + 32));
    if (v29)
    {
      v59 = v23;
      sub_177C0(v23, v19, &qword_36510, &qword_25E60);
      v30 = (*(v27 + 80) + 16) & ~*(v27 + 80);
      v31 = swift_allocObject();
      sub_1E0E0(v19, v31 + v30);
      v32 = v29;
      sub_2425C();
      v33 = (v26 + v28[9]);
      type metadata accessor for CommandThrottle(0);
      sub_1DD20(&qword_358A0, type metadata accessor for CommandThrottle, &unk_265FC);
      *v33 = sub_23BDC();
      v33[1] = v34;
      v35 = (v26 + v28[10]);
      sub_242FC();
      sub_1DD20(&qword_358B0, &type metadata accessor for Context, &protocol conformance descriptor for Context);
      *v35 = sub_23BDC();
      v35[1] = v36;
      *(v26 + v28[11]) = v32;
      sub_20A0(&qword_369D0, &qword_263C0);
      swift_storeEnumTagMultiPayload();
      v37 = (v26 + v28[12]);
      *v37 = sub_1E150;
      v37[1] = v31;
      sub_177C0(v26, v60, &qword_36948, &unk_26350);
      swift_storeEnumTagMultiPayload();
      sub_3F18(&qword_36940, &qword_36948, &unk_26350, &unk_253E8);
      v38 = v62;
      sub_23D1C();
      sub_177C0(v38, v68, &qword_36938, &qword_26348);
      swift_storeEnumTagMultiPayload();
      sub_1DDF4();
      sub_1652C();
      sub_23D1C();

      sub_6A44(v38, &qword_36938, &qword_26348);
      v23 = v59;
      sub_6A44(v26, &qword_36948, &unk_26350);
    }

    else
    {
      sub_177C0(v23, v68, &qword_36510, &qword_25E60);
      swift_storeEnumTagMultiPayload();
      sub_1DDF4();
      sub_1652C();
      sub_23D1C();
    }
  }

  else
  {
    v39 = v16;
    v40 = *(v16 + 32);
    v41 = v67;
    v56 = v15;
    v40(v67, v14, v15);
    v42 = v57;
    (*(v16 + 16))(v57, v41, v15);
    v43 = v58;
    (*(v58 + 104))(v42, enum case for MessagePayload.systemPromptResolved(_:), v66);
    v59 = v23;
    sub_177C0(v23, v19, &qword_36510, &qword_25E60);
    v44 = (*(v63 + 80) + 16) & ~*(v63 + 80);
    v45 = swift_allocObject();
    sub_1E0E0(v19, v45 + v44);
    v46 = v64;
    sub_2425C();
    v47 = v65;
    v48 = (v46 + *(v65 + 36));
    type metadata accessor for CommandThrottle(0);
    sub_1DD20(&qword_358A0, type metadata accessor for CommandThrottle, &unk_265FC);
    *v48 = sub_23BDC();
    v48[1] = v49;
    v50 = (v46 + v47[10]);
    sub_242FC();
    sub_1DD20(&qword_358B0, &type metadata accessor for Context, &protocol conformance descriptor for Context);
    *v50 = sub_23BDC();
    v50[1] = v51;
    (*(v43 + 32))(v46 + v47[11], v42, v66);
    sub_20A0(&qword_369D0, &qword_263C0);
    swift_storeEnumTagMultiPayload();
    v52 = (v46 + v47[12]);
    *v52 = sub_1EC50;
    v52[1] = v45;
    sub_177C0(v46, v60, &qword_36948, &unk_26350);
    swift_storeEnumTagMultiPayload();
    sub_3F18(&qword_36940, &qword_36948, &unk_26350, &unk_253E8);
    v53 = v62;
    sub_23D1C();
    sub_177C0(v53, v68, &qword_36938, &qword_26348);
    swift_storeEnumTagMultiPayload();
    sub_1DDF4();
    sub_1652C();
    sub_23D1C();
    sub_6A44(v53, &qword_36938, &qword_26348);
    sub_6A44(v46, &qword_36948, &unk_26350);
    (*(v39 + 8))(v67, v56);
    v23 = v59;
  }

  return sub_6A44(v23, &qword_36510, &qword_25E60);
}

uint64_t sub_1A0E0@<X0>(void *a1@<X8>)
{
  v97 = a1;
  v96 = sub_20A0(&qword_369D8, &qword_263C8);
  __chkstk_darwin(v96);
  v95 = &v78 - v1;
  v85 = sub_20A0(&qword_369E0, &qword_263D0);
  __chkstk_darwin(v85);
  v84 = &v78 - v2;
  v98 = sub_20A0(&qword_36968, &qword_26368);
  __chkstk_darwin(v98);
  v86 = &v78 - v3;
  v4 = sub_237EC();
  v80 = *(v4 - 8);
  v81 = v4;
  __chkstk_darwin(v4);
  v79 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_20A0(&qword_36978, &qword_26370);
  __chkstk_darwin(v82);
  v83 = &v78 - v6;
  v7 = sub_20A0(&qword_366A0, qword_260B0);
  __chkstk_darwin(v7 - 8);
  v93 = &v78 - v8;
  v9 = sub_238AC();
  v99 = *(v9 - 8);
  v100 = v9;
  __chkstk_darwin(v9);
  v94 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_20A0(&qword_369E8, &qword_263D8);
  __chkstk_darwin(v90);
  v89 = (&v78 - v11);
  v12 = sub_2369C();
  __chkstk_darwin(v12 - 8);
  v13 = sub_2423C();
  v101 = *(v13 - 8);
  v102 = v13;
  __chkstk_darwin(v13);
  v91 = v14;
  v92 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v78 - v16;
  v88 = type metadata accessor for RGDisplayRepresentationView(0);
  sub_238EC();
  v18 = sub_23E8C();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  KeyPath = swift_getKeyPath();
  v125 = v18;
  v126 = v20;
  v26 = v22 & 1;
  v127 = v22 & 1;
  v128 = v24;
  v129 = KeyPath;
  v130 = 1;
  v131 = 0;
  sub_20A0(&qword_359C8, &unk_26410);
  sub_6B00();
  v27 = sub_23EAC();
  sub_6BB8(v18, v20, v26);
  v28 = v17;

  v128 = &type metadata for AnyView;
  v129 = &protocol witness table for AnyView;
  v125 = v27;
  v29 = v87;
  sub_4D80(v124);
  v123 = 0;
  v121 = 0u;
  v122 = 0u;
  v120 = 0;
  v118 = 0u;
  v119 = 0u;
  v117 = 0;
  v115 = 0u;
  v116 = 0u;
  v114 = 0;
  v112 = 0u;
  v113 = 0u;
  v111 = 0;
  v109 = 0u;
  v110 = 0u;
  v108 = 0;
  v106 = 0u;
  v107 = 0u;
  v30 = v89;
  sub_504C(v89);
  sub_1E424(&qword_369F0, &qword_369E8, &qword_263D8, sub_1E4A0);
  v31 = sub_23EAC();
  sub_6A44(v30, &qword_369E8, &qword_263D8);
  v104 = &type metadata for AnyView;
  v105 = &protocol witness table for AnyView;
  v103 = v31;
  sub_2422C();
  v32 = v88;
  v33 = v29;
  v34 = v93;
  sub_177C0(v29 + *(v88 + 28), v93, &qword_366A0, qword_260B0);
  v35 = v99;
  v36 = v34;
  v37 = v34;
  v38 = v100;
  if ((v99[6])(v37, 1) == 1)
  {
    v39 = v92;
    v41 = v101;
    v40 = v102;
    sub_6A44(v36, &qword_366A0, qword_260B0);
    v42 = *(v33 + *(v32 + 32));
    if (v42)
    {
      v43 = v39;
      v44 = v40;
      (*(v41 + 16))(v39, v28, v40);
      v45 = (*(v41 + 80) + 16) & ~*(v41 + 80);
      v46 = swift_allocObject();
      (*(v41 + 32))(v46 + v45, v43, v44);
      v47 = v42;
      v99 = v47;
      v48 = v83;
      sub_2425C();
      v49 = v82;
      v50 = *(v82 + 36);
      v100 = v28;
      v51 = (v48 + v50);
      type metadata accessor for CommandThrottle(0);
      sub_1DD20(&qword_358A0, type metadata accessor for CommandThrottle, &unk_265FC);
      *v51 = sub_23BDC();
      v51[1] = v52;
      v53 = (v48 + v49[10]);
      sub_242FC();
      sub_1DD20(&qword_358B0, &type metadata accessor for Context, &protocol conformance descriptor for Context);
      *v53 = sub_23BDC();
      v53[1] = v54;
      *(v48 + v49[11]) = v47;
      sub_20A0(&qword_36A08, &qword_26438);
      swift_storeEnumTagMultiPayload();
      v55 = (v48 + v49[12]);
      *v55 = sub_1E544;
      v55[1] = v46;
      sub_177C0(v48, v84, &qword_36978, &qword_26370);
      swift_storeEnumTagMultiPayload();
      sub_3F18(&qword_36970, &qword_36978, &qword_26370, &unk_253E8);
      v56 = v86;
      sub_23D1C();
      sub_177C0(v56, v95, &qword_36968, &qword_26368);
      swift_storeEnumTagMultiPayload();
      sub_1DF60();
      sub_1DD20(&qword_36980, &type metadata accessor for SimpleItemRichView, &protocol conformance descriptor for SimpleItemRichView);
      v57 = v102;
      sub_23D1C();

      v28 = v100;
      sub_6A44(v56, &qword_36968, &qword_26368);
      sub_6A44(v48, &qword_36978, &qword_26370);
    }

    else
    {
      v57 = v40;
      (*(v41 + 16))(v95, v28, v40);
      swift_storeEnumTagMultiPayload();
      sub_1DF60();
      sub_1DD20(&qword_36980, &type metadata accessor for SimpleItemRichView, &protocol conformance descriptor for SimpleItemRichView);
      sub_23D1C();
    }
  }

  else
  {
    v58 = v94;
    v35[4](v94, v36, v38);
    v59 = v79;
    v35[2](v79, v58, v38);
    v61 = v80;
    v60 = v81;
    (*(v80 + 104))(v59, enum case for MessagePayload.systemPromptResolved(_:), v81);
    v62 = v101;
    v63 = v102;
    v64 = v92;
    (*(v101 + 16))(v92, v28, v102);
    v65 = v62;
    v66 = (*(v62 + 80) + 16) & ~*(v62 + 80);
    v67 = swift_allocObject();
    (*(v65 + 32))(v67 + v66, v64, v63);
    v68 = v83;
    sub_2425C();
    v69 = v82;
    v70 = (v68 + *(v82 + 36));
    type metadata accessor for CommandThrottle(0);
    sub_1DD20(&qword_358A0, type metadata accessor for CommandThrottle, &unk_265FC);
    *v70 = sub_23BDC();
    v70[1] = v71;
    v72 = (v68 + v69[10]);
    sub_242FC();
    sub_1DD20(&qword_358B0, &type metadata accessor for Context, &protocol conformance descriptor for Context);
    *v72 = sub_23BDC();
    v72[1] = v73;
    (*(v61 + 32))(v68 + v69[11], v59, v60);
    sub_20A0(&qword_36A08, &qword_26438);
    swift_storeEnumTagMultiPayload();
    v74 = (v68 + v69[12]);
    *v74 = sub_1EC54;
    v74[1] = v67;
    sub_177C0(v68, v84, &qword_36978, &qword_26370);
    swift_storeEnumTagMultiPayload();
    sub_3F18(&qword_36970, &qword_36978, &qword_26370, &unk_253E8);
    v75 = v86;
    sub_23D1C();
    sub_177C0(v75, v95, &qword_36968, &qword_26368);
    swift_storeEnumTagMultiPayload();
    sub_1DF60();
    sub_1DD20(&qword_36980, &type metadata accessor for SimpleItemRichView, &protocol conformance descriptor for SimpleItemRichView);
    v76 = v102;
    sub_23D1C();
    sub_6A44(v75, &qword_36968, &qword_26368);
    sub_6A44(v68, &qword_36978, &qword_26370);
    (v99[1])(v94, v100);
    v57 = v76;
    v41 = v101;
  }

  return (*(v41 + 8))(v28, v57);
}

uint64_t sub_1AE1C@<X0>(void *a1@<X8>)
{
  v46 = sub_20A0(&qword_36928, &qword_26340);
  __chkstk_darwin(v46);
  v44 = (&v39 - v2);
  v51 = sub_20A0(&qword_36950, &qword_26360);
  __chkstk_darwin(v51);
  v41 = (&v39 - v3);
  v52 = sub_20A0(&qword_36990, &qword_26380);
  v43 = *(v52 - 8);
  __chkstk_darwin(v52);
  v42 = &v39 - v4;
  v48 = sub_20A0(&qword_36998, &qword_26388);
  __chkstk_darwin(v48);
  v50 = &v39 - v5;
  v6 = sub_20A0(&qword_369A0, &qword_26390);
  __chkstk_darwin(v6);
  v8 = &v39 - v7;
  v49 = sub_20A0(&qword_368E0, &qword_26320);
  __chkstk_darwin(v49);
  v45 = &v39 - v9;
  v10 = sub_20A0(&qword_368F0, &qword_26328);
  __chkstk_darwin(v10);
  v12 = (&v39 - v11);
  type metadata accessor for RGDisplayRepresentationView(0);
  v13 = sub_238BC();
  v47 = a1;
  if (v14)
  {
    v15 = v13;
    v16 = v14;
    v17 = sub_238CC();
    if (v18 >> 60 != 15)
    {
      v36 = v18;
      v40 = v17;
      sub_189FC(v17, v18, v15, v16, v12);

      v31 = &qword_368F0;
      v32 = &qword_26328;
      sub_177C0(v12, v8, &qword_368F0, &qword_26328);
      swift_storeEnumTagMultiPayload();
      sub_1DBB4();
      sub_1DD68();
      v37 = v45;
      sub_23D1C();
      sub_177C0(v37, v50, &qword_368E0, &qword_26320);
      swift_storeEnumTagMultiPayload();
      sub_1DB28();
      v38 = sub_1DEA4();
      v53 = v51;
      v54 = v38;
      swift_getOpaqueTypeConformance2();
      sub_23D1C();
      sub_4C38(v40, v36);
      sub_6A44(v37, &qword_368E0, &qword_26320);
      v35 = v12;
      return sub_6A44(v35, v31, v32);
    }
  }

  v19 = sub_238FC();
  if (v20 >> 60 == 15)
  {
    v21 = v41;
    sub_1A0E0(v41);
    v22 = sub_1DEA4();
    v23 = v42;
    v24 = v51;
    sub_23EEC();
    sub_6A44(v21, &qword_36950, &qword_26360);
    v25 = v43;
    v26 = v52;
    (*(v43 + 16))(v50, v23, v52);
    swift_storeEnumTagMultiPayload();
    sub_1DB28();
    v53 = v24;
    v54 = v22;
    swift_getOpaqueTypeConformance2();
    sub_23D1C();
    return (*(v25 + 8))(v23, v26);
  }

  v28 = v44;
  v29 = v19;
  v30 = v20;
  sub_196BC(v19, v20, v44);
  v31 = &qword_36928;
  v32 = &qword_26340;
  sub_177C0(v28, v8, &qword_36928, &qword_26340);
  swift_storeEnumTagMultiPayload();
  sub_1DBB4();
  sub_1DD68();
  v33 = v45;
  sub_23D1C();
  sub_177C0(v33, v50, &qword_368E0, &qword_26320);
  swift_storeEnumTagMultiPayload();
  sub_1DB28();
  v34 = sub_1DEA4();
  v53 = v51;
  v54 = v34;
  swift_getOpaqueTypeConformance2();
  sub_23D1C();
  sub_4C38(v29, v30);
  sub_6A44(v33, &qword_368E0, &qword_26320);
  v35 = v28;
  return sub_6A44(v35, v31, v32);
}

id sub_1B494@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v6 = sub_2371C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20A0(&qword_368B8, &qword_26310);
  __chkstk_darwin(v10);
  v12 = &v20 - v11;
  sub_1AE1C((&v20 - v11));
  (*(v7 + 104))(v9, enum case for SeparatorStyle.insetLeading(_:), v6);
  sub_1E424(&qword_368C0, &qword_368B8, &qword_26310, sub_1DA58);
  sub_23ECC();
  (*(v7 + 8))(v9, v6);
  sub_1E010(v12);
  v13 = a1[6];
  v14 = a1[7];
  v21 = *(v2 + a1[8]);
  v15 = a2 + *(sub_20A0(&qword_36988, &qword_26378) + 36);
  v16 = sub_2391C();
  (*(*(v16 - 8) + 16))(v15, v4 + v13, v16);
  v17 = type metadata accessor for RGDisplayRepresentationDebugIndicatorModifier(0);
  sub_177C0(v4 + v14, v15 + *(v17 + 20), &qword_366A0, qword_260B0);
  v18 = v21;
  *(v15 + *(v17 + 24)) = v21;

  return v18;
}

uint64_t sub_1B700@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_20A0(&qword_367E0, &qword_26280);
  __chkstk_darwin(v10 - 8);
  v12 = &v45 - v11;
  v51 = a1;
  v52 = a2;
  sub_6AA4(v13, v14, v15);

  v16 = sub_23E9C();
  v18 = v17;
  LOBYTE(a1) = v19;
  v20 = sub_23E6C();
  v47 = v21;
  v48 = v20;
  v46 = v22;
  v49 = v23;
  sub_6BB8(v16, v18, a1 & 1);

  v51 = a3;
  v52 = a4;

  v24 = sub_23E9C();
  v26 = v25;
  LOBYTE(v18) = v27;
  v28 = sub_23E3C();
  (*(*(v28 - 8) + 56))(v12, 1, 1, v28);
  sub_23E4C();
  sub_6A44(v12, &qword_367E0, &qword_26280);
  v29 = sub_23E7C();
  v31 = v30;
  v33 = v32;

  sub_6BB8(v24, v26, v18 & 1);

  v34 = sub_23E5C();
  v36 = v35;
  LOBYTE(v26) = v37;
  v39 = v38;
  sub_6BB8(v29, v31, v33 & 1);

  v40 = v46 & 1;
  v50 = v46 & 1;
  LOBYTE(v51) = v46 & 1;
  LOBYTE(v29) = v26 & 1;
  v53 = v26 & 1;
  v42 = v47;
  v41 = v48;
  *a5 = v48;
  *(a5 + 8) = v42;
  *(a5 + 16) = v40;
  *(a5 + 24) = v49;
  *(a5 + 32) = v34;
  *(a5 + 40) = v36;
  *(a5 + 48) = v29;
  *(a5 + 56) = v39;
  v43 = v41;
  sub_1D4E8(v41, v42, v40);

  sub_1D4E8(v34, v36, v29);

  sub_6BB8(v34, v36, v29);

  sub_6BB8(v43, v42, v50);
}

__n128 sub_1B9C4@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = sub_23CBC();
  sub_1B700(v3, v4, v6, v5, v10);
  *&v9[55] = v10[3];
  *&v9[39] = v10[2];
  *&v9[23] = v10[1];
  *&v9[7] = v10[0];
  *(a1 + 33) = *&v9[16];
  result = *&v9[32];
  *(a1 + 49) = *&v9[32];
  *(a1 + 65) = *&v9[48];
  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 80) = *&v9[63];
  *(a1 + 17) = *v9;
  return result;
}

uint64_t sub_1BA8C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v49 = a2;
  v43 = sub_23D4C();
  v51 = *(v43 - 8);
  __chkstk_darwin(v43);
  v42 = (&v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for RGDisplayRepresentationDebugIndicatorView(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  __chkstk_darwin(v4);
  v40 = v7;
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_20A0(&qword_35428, &qword_26200);
  v48 = *(v44 - 8);
  __chkstk_darwin(v44);
  v50 = &v37 - v9;
  v47 = sub_20A0(&qword_36770, &qword_26208);
  v46 = *(v47 - 8);
  __chkstk_darwin(v47);
  v45 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v41 = &v37 - v12;
  v13 = sub_23FCC();
  sub_240AC();
  sub_23B6C();
  v54 = v13;
  v55 = v60;
  v56 = v61;
  v57 = v62;
  v58 = v63;
  v59 = v64;
  sub_1CD24(a1, v8);
  v14 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v15 = swift_allocObject();
  sub_1CD8C(v8, v15 + v14);
  v38 = sub_20A0(&qword_35438, &unk_26210);
  v16 = sub_2130();
  sub_23F6C();

  v17 = (a1 + *(v5 + 36));
  v18 = *v17;
  v19 = *(v17 + 1);
  v52 = v18;
  v53 = v19;
  sub_20A0(&qword_36768, &qword_261F8);
  sub_2403C();
  v39 = v56;
  sub_240BC();
  v20 = v42;
  *v42 = v21;
  v20[1] = v22;
  v23 = v43;
  (*(v51 + 104))(v20, enum case for PopoverAttachmentAnchor.point(_:), v43);
  sub_1CD24(a1, v8);
  v24 = swift_allocObject();
  sub_1CD8C(v8, v24 + v14);
  sub_23E1C();
  sub_20A0(&qword_35430, &qword_25330);
  v54 = v38;
  v55 = v16;
  swift_getOpaqueTypeConformance2();
  sub_21B4();
  v25 = v44;
  v26 = v41;
  v27 = v50;
  sub_23F5C();

  (*(v51 + 8))(v20, v23);
  (*(v48 + 8))(v27, v25);
  v28 = v46;
  v29 = *(v46 + 16);
  v30 = v45;
  v31 = v47;
  v29(v45, v26, v47);
  v32 = v49;
  *v49 = 0;
  *(v32 + 8) = 1;
  v33 = v32;
  v34 = sub_20A0(&qword_36778, &qword_26228);
  v29(&v33[*(v34 + 48)], v30, v31);
  v35 = *(v28 + 8);
  v35(v26, v31);
  return (v35)(v30, v31);
}

double sub_1C0A0@<D0>(uint64_t a2@<X8>)
{
  sub_23DFC();
  sub_20A0(&qword_36780, &qword_26230);
  sub_3F18(&qword_36788, &qword_36780, &qword_26230, &protocol conformance descriptor for TupleView<A>);
  sub_23B0C();
  v3 = sub_23E0C();
  v4 = a2 + *(sub_20A0(&qword_35430, &qword_25330) + 36);
  *v4 = v3;
  result = 0.0;
  *(v4 + 8) = 0u;
  *(v4 + 24) = 0u;
  *(v4 + 40) = 1;
  return result;
}

uint64_t sub_1C198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_20A0(&qword_36790, &qword_26238);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v15 - v8;
  *v9 = sub_23C7C();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = sub_20A0(&qword_36798, &qword_26240);
  sub_1C538(a1, &v9[*(v10 + 44)]);
  v16 = sub_23CBC();
  v29 = 1;
  sub_1C8FC(a1, &v25);
  v34 = *&v26[48];
  v35 = *&v26[64];
  v36 = *&v26[80];
  v37 = *&v26[96];
  v30 = v25;
  v31 = *v26;
  v32 = *&v26[16];
  v33 = *&v26[32];
  v38[0] = v25;
  v38[1] = *v26;
  v38[2] = *&v26[16];
  v38[3] = *&v26[32];
  v38[4] = *&v26[48];
  v38[5] = *&v26[64];
  v38[6] = *&v26[80];
  v38[7] = *&v26[96];
  sub_177C0(&v30, v24, &qword_367A0, &qword_26248);
  sub_6A44(v38, &qword_367A0, &qword_26248);
  *&v28[71] = v34;
  *&v28[87] = v35;
  *&v28[103] = v36;
  *&v28[119] = v37;
  *&v28[7] = v30;
  *&v28[23] = v31;
  *&v28[39] = v32;
  *&v28[55] = v33;
  v11 = v29;
  sub_240AC();
  sub_23BBC();
  sub_177C0(v9, v6, &qword_36790, &qword_26238);
  sub_177C0(v6, a2, &qword_36790, &qword_26238);
  v12 = *(sub_20A0(&qword_367A8, &qword_26250) + 48);
  *(&v24[12] + 1) = *&v28[80];
  *(&v24[14] + 1) = *&v28[96];
  *(&v24[16] + 1) = *&v28[112];
  *(&v24[4] + 1) = *&v28[16];
  *(&v24[6] + 1) = *&v28[32];
  *(&v24[8] + 1) = *&v28[48];
  *(&v24[10] + 1) = *&v28[64];
  *(&v24[2] + 1) = *v28;
  *&v24[25] = v20;
  *&v24[27] = v21;
  *&v24[29] = v22;
  *&v24[31] = v23;
  *&v24[19] = v17;
  *&v24[21] = v18;
  v13 = v16;
  v24[0] = v16;
  v24[1] = 0;
  LOBYTE(v24[2]) = v11;
  v24[18] = *&v28[127];
  *&v24[23] = v19;
  memcpy((a2 + v12), v24, 0x108uLL);
  sub_177C0(v24, &v25, &qword_367B0, &qword_26258);
  sub_6A44(v9, &qword_36790, &qword_26238);
  *&v26[81] = *&v28[80];
  *&v26[97] = *&v28[96];
  *v27 = *&v28[112];
  *&v26[17] = *&v28[16];
  *&v26[33] = *&v28[32];
  *&v26[49] = *&v28[48];
  *&v26[65] = *&v28[64];
  *&v26[1] = *v28;
  *&v27[71] = v20;
  *&v27[87] = v21;
  *&v27[103] = v22;
  *&v27[119] = v23;
  *&v27[23] = v17;
  *&v27[39] = v18;
  v25 = v13;
  v26[0] = v11;
  *&v27[15] = *&v28[127];
  *&v27[55] = v19;
  sub_6A44(&v25, &qword_367B0, &qword_26258);
  return sub_6A44(v6, &qword_36790, &qword_26238);
}

uint64_t sub_1C538@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v30 = a2;
  v3 = type metadata accessor for RGDisplayRepresentationDebugIndicatorView(0);
  v28 = *(v3 - 8);
  v4 = *(v28 + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_20A0(&qword_367C0, &qword_26268);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v29 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  v11 = sub_23C8C();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  sub_1CD24(a1, &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v19 = swift_allocObject();
  sub_1CD8C(&v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  v31 = v11;
  v32 = v13;
  v33 = v15 & 1;
  v34 = v17;
  v35 = 0x6B72616D78;
  v36 = 0xE500000000000000;
  sub_20A0(&qword_367C8, &qword_26270);
  sub_3F18(&qword_367D0, &qword_367C8, &qword_26270, &protocol conformance descriptor for Label<A, B>);
  sub_2405C();

  v20 = *(v6 + 16);
  v21 = v29;
  v20(v29, v10, v5);
  v22 = v30;
  *v30 = 0;
  *(v22 + 8) = 1;
  v23 = v22;
  v24 = sub_20A0(&qword_367D8, &qword_26278);
  v20(&v23[*(v24 + 48)], v21, v5);
  v25 = *(v6 + 8);
  v25(v10, v5);
  return (v25)(v21, v5);
}

uint64_t sub_1C850(uint64_t a1)
{
  type metadata accessor for RGDisplayRepresentationDebugIndicatorView(0);

  sub_20A0(&qword_36768, &qword_261F8);
  sub_2401C();
  sub_2402C();
}

uint64_t sub_1C8FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_20A0(&qword_366A0, qword_260B0);
  __chkstk_darwin(v4);
  v6 = &v22[-v5];
  v7 = sub_2391C();
  v8 = __chkstk_darwin(v7);
  (*(v10 + 16))(&v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v7, v8);
  v11 = sub_2436C();
  v13 = v12;
  v14 = type metadata accessor for RGDisplayRepresentationDebugIndicatorView(0);
  sub_177C0(a1 + *(v14 + 20), v6, &qword_366A0, qword_260B0);
  v15 = sub_2436C();
  v17 = v16;
  v23 = *(a1 + *(v14 + 24));
  v18 = v23;
  sub_20A0(&qword_367B8, &qword_26260);
  v19 = sub_2436C();
  v22[16] = 1;
  v22[8] = 1;
  *a2 = 0xD000000000000015;
  *(a2 + 8) = 0x8000000000026F00;
  *(a2 + 16) = v11;
  *(a2 + 24) = v13;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  strcpy((a2 + 48), "systemCommand");
  *(a2 + 62) = -4864;
  *(a2 + 64) = v15;
  *(a2 + 72) = v17;
  *(a2 + 80) = 0;
  *(a2 + 88) = 1;
  strcpy((a2 + 96), "siriKitCommand");
  *(a2 + 111) = -18;
  *(a2 + 112) = v19;
  *(a2 + 120) = v20;
}

uint64_t sub_1CB74(uint64_t a1)
{
  type metadata accessor for RGDisplayRepresentationDebugIndicatorView(0);
  sub_20A0(&qword_36768, &qword_261F8);
  return sub_2402C();
}

uint64_t sub_1CBE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  *a2 = sub_23C7C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v6 = sub_20A0(&qword_36758, &qword_261E8);
  sub_1BA8C(v2, (a2 + *(v6 + 44)));
  sub_1CD24(v2, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_1CD8C(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  result = sub_20A0(&qword_36760, &qword_261F0);
  v10 = (a2 + *(result + 36));
  *v10 = 0;
  v10[1] = 0;
  v10[2] = sub_1CDF0;
  v10[3] = v8;
  return result;
}

uint64_t sub_1CD24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RGDisplayRepresentationDebugIndicatorView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CD8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RGDisplayRepresentationDebugIndicatorView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CDF0()
{
  v1 = *(type metadata accessor for RGDisplayRepresentationDebugIndicatorView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1CB74(v2);
}

uint64_t sub_1CE50()
{
  v1 = type metadata accessor for RGDisplayRepresentationDebugIndicatorView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = sub_2391C();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = *(v1 + 20);
  v8 = sub_238AC();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

double sub_1CFD0@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for RGDisplayRepresentationDebugIndicatorView(0);

  return sub_1C0A0(a1);
}

void *sub_1D0A0(uint64_t a1)
{
  v3 = sub_20A0(&qword_36AD0, qword_264D8);
  __chkstk_darwin(v3);
  v5 = &v16[-v4];
  v6 = type metadata accessor for RGDisplayRepresentationDebugIndicatorView(0);
  __chkstk_darwin(v6);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2510(0, &qword_36AD8, NSUserDefaults_ptr);
  if (sub_244AC())
  {
    v9 = sub_2391C();
    (*(*(v9 - 8) + 16))(v8, a1, v9);
    v10 = type metadata accessor for RGDisplayRepresentationDebugIndicatorModifier(0);
    sub_177C0(a1 + *(v10 + 20), &v8[v6[5]], &qword_366A0, qword_260B0);
    v11 = *(a1 + *(v10 + 24));
    *&v8[v6[6]] = v11;
    v12 = &v8[v6[7]];
    v16[15] = 0;
    v13 = v11;
    sub_2400C();
    v14 = v17;
    *v12 = v16[16];
    *(v12 + 1) = v14;
    sub_1CD24(v8, v5);
    swift_storeEnumTagMultiPayload();
    sub_1DD20(&qword_36AE0, type metadata accessor for RGDisplayRepresentationDebugIndicatorView, &unk_26194);
    sub_23D1C();
    return sub_1EAE0(v8);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1DD20(&qword_36AE0, type metadata accessor for RGDisplayRepresentationDebugIndicatorView, &unk_26194);
    return sub_23D1C();
  }
}

uint64_t sub_1D364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_240AC();
  v7 = v6;
  v8 = a2 + *(sub_20A0(&qword_36AB8, &qword_264C0) + 36);
  sub_1D0A0(v2);
  v9 = (v8 + *(sub_20A0(&qword_36AC0, &qword_264C8) + 36));
  *v9 = v5;
  v9[1] = v7;
  v10 = sub_20A0(&qword_36AC8, &qword_264D0);
  v11 = *(*(v10 - 8) + 16);

  return v11(a2, a1, v10);
}

uint64_t sub_1D440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return Label<>.init(_:systemImage:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1D4E8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1D4FC()
{
  result = qword_367E8;
  if (!qword_367E8)
  {
    sub_20E8(&qword_36760, &qword_261F0);
    sub_3F18(&qword_367F0, &qword_367F8, &qword_26288, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_367E8);
  }

  return result;
}

uint64_t sub_1D60C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_2391C();
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 24);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_20A0(&qword_366A0, qword_260B0);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1D75C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v8 = sub_2391C();
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
      v13 = sub_20A0(&qword_366A0, qword_260B0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1D8AC(uint64_t a1)
{
  sub_1D9D8(319, &unk_36878, type metadata accessor for VRXMode, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_2920(319);
    if (v2 <= 0x3F)
    {
      sub_2391C();
      if (v3 <= 0x3F)
      {
        sub_1D9D8(319, &qword_36710, &type metadata accessor for SystemPromptResolution, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_18884(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D9D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1DA58()
{
  result = qword_368C8;
  if (!qword_368C8)
  {
    sub_20E8(&qword_368D0, &qword_26318);
    sub_1DB28();
    sub_20E8(&qword_36950, &qword_26360);
    sub_1DEA4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_368C8);
  }

  return result;
}

unint64_t sub_1DB28()
{
  result = qword_368D8;
  if (!qword_368D8)
  {
    sub_20E8(&qword_368E0, &qword_26320);
    sub_1DBB4();
    sub_1DD68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_368D8);
  }

  return result;
}

unint64_t sub_1DBB4()
{
  result = qword_368E8;
  if (!qword_368E8)
  {
    sub_20E8(&qword_368F0, &qword_26328);
    sub_1DC70();
    sub_1DD20(&qword_36918, &type metadata accessor for PluginView, &protocol conformance descriptor for PluginView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_368E8);
  }

  return result;
}

unint64_t sub_1DC70()
{
  result = qword_368F8;
  if (!qword_368F8)
  {
    sub_20E8(&qword_36900, &qword_26330);
    sub_3F18(&qword_36908, &qword_36910, &qword_26338, &unk_253E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_368F8);
  }

  return result;
}

uint64_t sub_1DD20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1DD68()
{
  result = qword_36920;
  if (!qword_36920)
  {
    sub_20E8(&qword_36928, &qword_26340);
    sub_1DDF4();
    sub_1652C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_36920);
  }

  return result;
}

unint64_t sub_1DDF4()
{
  result = qword_36930;
  if (!qword_36930)
  {
    sub_20E8(&qword_36938, &qword_26348);
    sub_3F18(&qword_36940, &qword_36948, &unk_26350, &unk_253E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_36930);
  }

  return result;
}

unint64_t sub_1DEA4()
{
  result = qword_36958;
  if (!qword_36958)
  {
    sub_20E8(&qword_36950, &qword_26360);
    sub_1DF60();
    sub_1DD20(&qword_36980, &type metadata accessor for SimpleItemRichView, &protocol conformance descriptor for SimpleItemRichView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_36958);
  }

  return result;
}

unint64_t sub_1DF60()
{
  result = qword_36960;
  if (!qword_36960)
  {
    sub_20E8(&qword_36968, &qword_26368);
    sub_3F18(&qword_36970, &qword_36978, &qword_26370, &unk_253E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_36960);
  }

  return result;
}

uint64_t sub_1E010(uint64_t a1)
{
  v2 = sub_20A0(&qword_368B8, &qword_26310);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E098(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_1E0E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20A0(&qword_36510, &qword_25E60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E154()
{
  v1 = *(sub_20A0(&qword_36510, &qword_25E60) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  v6 = type metadata accessor for RGSFCardView(0);
  if (!(*(*(v6 - 1) + 48))(v0 + v3, 1, v6))
  {
    v7 = sub_2426C();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);

    sub_1E0D8(*(v5 + v6[10]), *(v5 + v6[10] + 8));
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1E35C@<X0>(uint64_t a1@<X8>)
{
  result = sub_23C3C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1E390@<X0>(uint64_t a1@<X8>)
{
  result = sub_23C3C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1E424(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_20E8(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E4A0()
{
  result = qword_369F8;
  if (!qword_369F8)
  {
    sub_20E8(&qword_36A00, &unk_26420);
    sub_5BF0();
    sub_5C6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_369F8);
  }

  return result;
}

uint64_t sub_1E55C(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_1E5EC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 16);
  v7 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return v6(a2, v7, v4);
}

uint64_t sub_1E67C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2391C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_20A0(&qword_366A0, qword_260B0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
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