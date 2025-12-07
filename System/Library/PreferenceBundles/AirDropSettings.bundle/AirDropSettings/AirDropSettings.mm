uint64_t sub_16C8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_284C(&qword_18430, &qword_E258);
  v4 = __chkstk_darwin(v3);
  v7 = v19 - v6;
  if (*(v1 + 81) == 1)
  {
    v20 = a1;
    v21 = v5;
    v19[1] = v19;
    __chkstk_darwin(v4);
    v19[0] = &v19[-4];
    sub_D5F8();
    if (qword_18400 != -1)
    {
      swift_once();
    }

    v8 = qword_19180;
    v26 = sub_D688();
    v27 = v9;
    v28 = v10 & 1;
    v29 = v11;
    sub_D5F8();
    v12 = v8;
    v22 = sub_D688();
    v23 = v13;
    v24 = v14 & 1;
    v25 = v15;
    sub_284C(&qword_18438, &unk_E260);
    sub_2A64();
    sub_D7E8();
    v16 = v20;
    (*(v21 + 32))(v20, v7, v3);
    return (*(v21 + 56))(v16, 0, 1, v3);
  }

  else
  {
    v18 = *(v5 + 56);

    return v18(a1, 1, 1, v3);
  }
}

uint64_t sub_1A04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v39 = sub_D5C8();
  v38 = *(v39 - 8);
  __chkstk_darwin(v39);
  v37 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_284C(&qword_18468, &qword_E270);
  __chkstk_darwin(v4 - 8);
  v53 = &v37 - v5;
  v52 = sub_D398();
  v6 = *(v52 - 8);
  __chkstk_darwin(v52);
  v45 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_D3B8();
  __chkstk_darwin(v8 - 8);
  v51 = sub_D348();
  v9 = *(v51 - 8);
  __chkstk_darwin(v51);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_D8F8();
  __chkstk_darwin(v12 - 8);
  v42 = sub_D358();
  v41 = *(v42 - 8);
  __chkstk_darwin(v42);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_284C(&qword_18410, &qword_E5D0);
  v43 = *(v44 - 8);
  __chkstk_darwin(v44);
  v40 = &v37 - v15;
  v16 = sub_284C(&qword_18470, &qword_E278);
  v47 = *(v16 - 8);
  v48 = v16;
  __chkstk_darwin(v16);
  v46 = &v37 - v17;
  v18 = a1[8];
  v19 = a1[9];
  v49 = a1;
  v20 = *(a1 + 80);
  v54[0] = v18;
  v54[1] = v19;
  v55 = v20;
  sub_284C(&qword_18478, &unk_E280);
  sub_D7C8();
  v56 = v59;
  v57 = v60;
  v58 = v61;
  sub_D8E8();
  if (qword_18400 != -1)
  {
    swift_once();
  }

  v21 = [qword_19180 bundleURL];
  sub_D378();

  (*(v9 + 104))(v11, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v51);
  sub_D3A8();
  sub_D368();
  v22 = v53;
  sub_D388();
  v23 = v52;
  result = (*(v6 + 48))(v22, 1, v52);
  if (result != 1)
  {
    v25 = v45;
    (*(v6 + 32))(v45, v22, v23);
    v26 = v49;
    sub_6ABC(v54);
    sub_D7D8();
    sub_2C84(v54);
    (*(v6 + 8))(v25, v23);
    (*(v41 + 8))(v14, v42);

    v27 = v40;
    sub_D798();
    v28 = v46;
    (*(v43 + 32))(v46, v27, v44);
    *&v28[*(sub_284C(&qword_18418, &qword_DFF0) + 36)] = 257;
    v29 = *v26;
    v30 = *(v26 + 8);

    if ((v30 & 1) == 0)
    {
      sub_D998();
      v31 = sub_D668();
      sub_D498();

      v32 = v37;
      sub_D5B8();
      swift_getAtKeyPath();

      (*(v38 + 8))(v32, v39);
      v29 = v54[0];
    }

    swift_getKeyPath();
    v54[0] = v29;
    sub_2CF4(&qword_18488, type metadata accessor for AirDropSettingsListHighlighter, &unk_EA54);
    sub_D3D8();

    v33 = *(v29 + 16);

    if (v33 > 1)
    {
      if (v33 != 2)
      {
LABEL_11:
        v35 = 0;
LABEL_14:
        v36 = v50;
        (*(v47 + 32))(v50, v28, v48);
        result = sub_284C(&qword_18438, &unk_E260);
        *(v36 + *(result + 36)) = v35;
        return result;
      }
    }

    else if (v33)
    {

      goto LABEL_13;
    }

    v34 = sub_DA38();

    if ((v34 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_13:
    v54[0] = sub_D738();
    v35 = sub_D7A8();
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_22F0@<X0>(uint64_t a1@<X8>)
{
  sub_D5F8();
  if (qword_18400 != -1)
  {
    swift_once();
  }

  v2 = qword_19180;
  result = sub_D688();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_23D8(uint64_t *a1)
{
  if (sub_CE10(2, 26, 0, 0))
  {
    sub_D638();

    return sub_D538();
  }

  else
  {
    sub_D568();
    swift_getWitnessTable();
    sub_D628();
    sub_D538();
    sub_D9C8();
    swift_getWitnessTable();
    sub_D568();
    swift_getWitnessTable();
    sub_D628();
    return sub_D538();
  }
}

uint64_t sub_253C(uint64_t *a1)
{
  if (sub_CE10(2, 26, 0, 0))
  {
    sub_D638();
    sub_D538();
  }

  else
  {
    sub_D568();
    swift_getWitnessTable();
    sub_D628();
    sub_D538();
    sub_D9C8();
    swift_getWitnessTable();
    sub_D568();
    swift_getWitnessTable();
    sub_D628();
    sub_D538();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

Swift::Int sub_2764()
{
  v1 = *v0;
  sub_DA48();
  sub_DA58(v1);
  return sub_DA68();
}

Swift::Int sub_27D8(uint64_t a1)
{
  v2 = *v1;
  sub_DA48();
  sub_DA58(v2);
  return sub_DA68();
}

void *sub_2830@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_284C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2894(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void type metadata accessor for SFAirDropDiscoverableMode()
{
  if (!qword_18420)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_18420);
    }
  }
}

uint64_t sub_2900(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_2924(uint64_t a1, uint64_t a2)
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

uint64_t sub_2948(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 82))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2990(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 82) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 82) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2A64()
{
  result = qword_18440;
  if (!qword_18440)
  {
    sub_2BA0(&qword_18438, &unk_E260);
    sub_2BA0(&qword_18410, &qword_E5D0);
    sub_2C3C(&qword_18448, &qword_18410, &qword_E5D0, &protocol conformance descriptor for Toggle<A>);
    sub_2BE8();
    swift_getOpaqueTypeConformance2();
    sub_2C3C(&qword_18458, &qword_18460, &qword_E3C0, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18440);
  }

  return result;
}

uint64_t sub_2BA0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_2BE8()
{
  result = qword_18450;
  if (!qword_18450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18450);
  }

  return result;
}

uint64_t sub_2C3C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2BA0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2C84(uint64_t a1)
{
  v2 = sub_284C(&qword_18480, qword_E300);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2CF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2D40()
{
  result = qword_18490;
  if (!qword_18490)
  {
    sub_2BA0(&qword_18498, qword_E2B8);
    sub_2DC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18490);
  }

  return result;
}

unint64_t sub_2DC4()
{
  result = qword_184A0;
  if (!qword_184A0)
  {
    sub_2BA0(&qword_18430, &qword_E258);
    sub_2A64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184A0);
  }

  return result;
}

uint64_t sub_2E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_284C(&qword_184A8, &unk_E2D0);
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
    v12 = *(a1 + *(a3 + 28) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_2F4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_284C(&qword_184A8, &unk_E2D0);
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
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for AirDropDiscoveryModeSection(uint64_t a1)
{
  result = qword_18508;
  if (!qword_18508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_3064(uint64_t a1)
{
  sub_3214(319, &qword_18518, type metadata accessor for AirDropSettingsListHighlighter, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_3214(319, &qword_18520, &type metadata accessor for WithCurrentHostingControllerAction, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_31B0(319);
      if (v3 <= 0x3F)
      {
        sub_3214(319, &unk_18530, type metadata accessor for SFAirDropDiscoverableMode, &type metadata accessor for Binding);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_31B0(uint64_t a1)
{
  if (!qword_18528)
  {
    sub_2BA0(&qword_18480, qword_E300);
    v1 = sub_D4A8();
    if (!v2)
    {
      atomic_store(v1, &qword_18528);
    }
  }
}

void sub_3214(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_3294@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v3 = sub_D5E8();
  v71 = *(v3 - 8);
  v72 = v3;
  __chkstk_darwin(v3);
  v69 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_D5C8();
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v50 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_284C(&qword_18468, &qword_E270);
  __chkstk_darwin(v6 - 8);
  v76 = &v50 - v7;
  v75 = sub_D398();
  v8 = *(v75 - 8);
  __chkstk_darwin(v75);
  v59 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_D3B8();
  __chkstk_darwin(v10 - 8);
  v74 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_D348();
  v12 = *(v73 - 8);
  __chkstk_darwin(v73);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_D8F8();
  __chkstk_darwin(v15 - 8);
  v58 = sub_D358();
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_284C(&qword_185B0, &qword_E3B8);
  v63 = *(v66 - 8);
  __chkstk_darwin(v66);
  v61 = &v50 - v18;
  v65 = sub_284C(&qword_18598, &qword_E3B0);
  __chkstk_darwin(v65);
  v60 = &v50 - v19;
  v68 = sub_284C(&qword_18590, &qword_E3A8);
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v64 = &v50 - v20;
  v56 = sub_D5F8();
  v55 = v21;
  v53 = v22;
  v54 = v23;
  v24 = *(type metadata accessor for AirDropDiscoveryModeSection(0) + 28);
  v62 = a1;
  v25 = a1 + v24;
  v26 = *v25;
  v27 = *(v25 + 2);
  v77 = v26;
  v78 = v27;
  sub_284C(&qword_185E8, &qword_E3E0);
  sub_D7C8();
  v79 = v81;
  v80 = v82;
  sub_D8E8();
  if (qword_18400 != -1)
  {
    swift_once();
  }

  v28 = [qword_19180 bundleURL];
  sub_D378();

  (*(v12 + 104))(v14, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v73);
  sub_D3A8();
  sub_D368();
  v29 = v76;
  sub_D388();
  v30 = v75;
  result = (*(v8 + 48))(v29, 1, v75);
  if (result != 1)
  {
    v32 = v59;
    (*(v8 + 32))(v59, v29, v30);
    v33 = v62;
    sub_6ABC(&v77);
    sub_D7D8();
    sub_5980(&v77, &qword_18480, qword_E300);
    (*(v8 + 8))(v32, v30);
    (*(v57 + 8))(v17, v58);

    v77 = v81;
    v78 = v82;
    __chkstk_darwin(v34);
    type metadata accessor for SFAirDropDiscoverableMode();
    sub_284C(&qword_185F0, &qword_E3E8);
    sub_2CF4(&qword_185F8, type metadata accessor for SFAirDropDiscoverableMode, &unk_E1A8);
    sub_2C3C(&qword_18600, &qword_185F0, &qword_E3E8, &protocol conformance descriptor for _TuplePickerContent<A, B>);
    v35 = v61;
    sub_D788();
    v36 = *v33;
    v37 = *(v33 + 8);

    if ((v37 & 1) == 0)
    {
      sub_D998();
      v38 = sub_D668();
      sub_D498();

      v39 = v50;
      sub_D5B8();
      swift_getAtKeyPath();

      (*(v51 + 8))(v39, v52);
      v36 = v77;
    }

    swift_getKeyPath();
    *&v77 = v36;
    sub_2CF4(&qword_18488, type metadata accessor for AirDropSettingsListHighlighter, &unk_EA54);
    sub_D3D8();

    v40 = *(v36 + 16);

    if (v40 > 1)
    {
      if (v40 != 2)
      {
        goto LABEL_12;
      }
    }

    else if (!v40)
    {

LABEL_11:
      *&v77 = sub_D738();
      v42 = sub_D7A8();
LABEL_13:
      v43 = v60;
      (*(v63 + 32))(v60, v35, v66);
      v44 = v65;
      *(v43 + *(v65 + 36)) = v42;
      v45 = sub_55E4();
      v46 = v64;
      sub_D6F8();
      sub_58A0(v43);
      v47 = v69;
      sub_D5D8();
      *&v77 = v44;
      *(&v77 + 1) = v45;
      swift_getOpaqueTypeConformance2();
      v48 = v68;
      v49 = v72;
      sub_D6E8();
      (*(v71 + 8))(v47, v49);
      return (*(v67 + 8))(v46, v48);
    }

    v41 = sub_DA38();

    if (v41)
    {
      goto LABEL_11;
    }

LABEL_12:
    v42 = 0;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_3E44@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a1;
  v33 = a2;
  v34 = sub_284C(&qword_18608, &qword_E418);
  v32 = *(v34 - 8);
  __chkstk_darwin(v34);
  v36 = &v28 - v2;
  v3 = sub_284C(&qword_18610, &qword_E420);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v28 - v5;
  v7 = sub_284C(&qword_18618, &qword_E428);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v28 - v11;
  v13 = sub_284C(&qword_18620, &qword_E430);
  v30 = *(v13 - 8);
  v31 = v13;
  __chkstk_darwin(v13);
  v15 = &v28 - v14;
  v41 = 0;
  type metadata accessor for SFAirDropDiscoverableMode();
  sub_284C(&qword_18628, &qword_E438);
  sub_2CF4(&qword_185F8, type metadata accessor for SFAirDropDiscoverableMode, &unk_E1A8);
  v16 = sub_2BE8();
  v37 = &type metadata for Text;
  v38 = &type metadata for HighlightableItem;
  v39 = &protocol witness table for Text;
  v40 = v16;
  v17 = 1;
  swift_getOpaqueTypeConformance2();
  v35 = v15;
  sub_D4C8();
  if ((PSIsInEDUMode() & 1) == 0)
  {
    v37 = &dword_0 + 1;
    sub_D4C8();
    (*(v4 + 32))(v12, v6, v3);
    v17 = 0;
  }

  v28 = v6;
  v18 = 1;
  v19 = (*(v4 + 56))(v12, v17, 1, v3);
  v37 = &dword_0 + 2;
  __chkstk_darwin(v19);
  *(&v28 - 2) = v29;
  sub_284C(&qword_185D8, &unk_E3D0);
  sub_5804();
  sub_D4C8();
  sub_2C3C(&qword_18630, &qword_18620, &qword_E430, &protocol conformance descriptor for PickerOption<A, B>);
  v20 = v33;
  v21 = v31;
  sub_D508();
  v22 = *(sub_284C(&qword_18638, &qword_E440) + 48);
  sub_5910(v12, v10);
  if ((*(v4 + 48))(v10, 1, v3) != 1)
  {
    v23 = v28;
    (*(v4 + 32))(v28, v10, v3);
    sub_2C3C(&qword_18650, &qword_18610, &qword_E420, &protocol conformance descriptor for PickerOption<A, B>);
    sub_D508();
    (*(v4 + 8))(v23, v3);
    v18 = 0;
  }

  v24 = sub_284C(&qword_18640, &qword_E448);
  (*(*(v24 - 8) + 56))(v20 + v22, v18, 1, v24);
  sub_2C3C(&qword_18648, &qword_18608, &qword_E418, &protocol conformance descriptor for PickerOption<A, B>);
  v25 = v36;
  v26 = v34;
  sub_D508();
  (*(v32 + 8))(v25, v26);
  sub_5980(v12, &qword_18618, &qword_E428);
  return (*(v30 + 8))(v35, v21);
}

uint64_t sub_4488@<X0>(uint64_t a1@<X8>)
{
  sub_D5F8();
  if (qword_18400 != -1)
  {
    swift_once();
  }

  v2 = qword_19180;
  result = sub_D688();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  *(a1 + 32) = 256;
  return result;
}

uint64_t sub_4580@<X0>(uint64_t a1@<X8>)
{
  sub_D5F8();
  if (qword_18400 != -1)
  {
    swift_once();
  }

  v2 = qword_19180;
  result = sub_D688();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

double sub_4670@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + *(type metadata accessor for AirDropDiscoveryModeSection(0) + 32)) == 1)
  {
    sub_D5F8();
    if (qword_18400 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  sub_D5F8();
  if (qword_18400 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  v3 = qword_19180;
  sub_D688();
  sub_D618();
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  return result;
}

id sub_485C@<X0>(uint64_t a2@<X8>)
{
  v3 = PSIsInEDUMode();
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v5 = result;
    wapiCapability = MobileGestalt_get_wapiCapability();

    if (v3)
    {
      if (wapiCapability)
      {
        sub_D5F8();
        if (qword_18400 == -1)
        {
          goto LABEL_12;
        }
      }

      else
      {
        sub_D5F8();
        if (qword_18400 == -1)
        {
          goto LABEL_12;
        }
      }
    }

    else if (wapiCapability)
    {
      sub_D5F8();
      if (qword_18400 == -1)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_D5F8();
      if (qword_18400 == -1)
      {
LABEL_12:
        v7 = qword_19180;
        v8 = sub_D688();
        v10 = v9;
        v12 = v11 & 1;
        sub_2894(v8, v9, v11 & 1);

        sub_D618();
        sub_284C(&qword_185D8, &unk_E3D0);
        sub_5804();
        sub_D618();
        sub_5880(v8, v10, v12);

        *a2 = v13;
        *(a2 + 16) = v14;
        *(a2 + 32) = v15;
        *(a2 + 33) = v16;
        return result;
      }
    }

    swift_once();
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_4D14(uint64_t a1)
{
  v2 = sub_D4F8();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_D598();
}

uint64_t sub_4DDC()
{
  v0 = sub_D658();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for AirDropDiscoveryModeSection(0);
  sub_6C90(v3);
  sub_D648();
  (*(v1 + 8))(v3, v0);
  return sub_D4D8();
}

void sub_4EE4(uint64_t a1)
{
  if (qword_18408 != -1)
  {
    swift_once();
  }

  v2 = [qword_19188 identifier];
  if (v2)
  {
    v3 = v2;
    sub_D918();

    v4 = sub_D908();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_opt_self() presenterForPrivacySplashWithIdentifier:v4];

  v6 = v5;
  [v6 setPresentingViewController:a1];
  [v6 present];
}

uint64_t sub_500C(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(a1 - 8);
  v4 = sub_284C(&qword_18570, &qword_E358);
  __chkstk_darwin(v4);
  v6 = &v20 - v5;
  v22 = v1;
  sub_485C(&v23);
  v7 = v25;
  v8 = v26;
  v20 = v24;
  v21 = v23;
  KeyPath = swift_getKeyPath();
  sub_52E8(v1, &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v11 = swift_allocObject();
  sub_5500(&v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  v12 = &v6[*(v4 + 36)];
  sub_284C(&qword_18580, &qword_E398);
  sub_D4E8();
  *v12 = KeyPath;
  v13 = v20;
  *v6 = v21;
  *(v6 + 1) = v13;
  v6[32] = v7;
  v6[33] = v8;
  sub_284C(&qword_18588, &qword_E3A0);
  v14 = sub_2BA0(&qword_18590, &qword_E3A8);
  v15 = sub_D5E8();
  v16 = sub_2BA0(&qword_18598, &qword_E3B0);
  v17 = sub_55E4();
  *&v23 = v16;
  *(&v23 + 1) = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v23 = v14;
  *(&v23 + 1) = v15;
  *&v24 = OpaqueTypeConformance2;
  *(&v24 + 1) = &protocol witness table for InlinePickerStyle;
  swift_getOpaqueTypeConformance2();
  sub_56C8();
  return sub_D7F8();
}

uint64_t sub_52E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AirDropDiscoveryModeSection(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_534C()
{
  v1 = type metadata accessor for AirDropDiscoveryModeSection(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 20);
  sub_284C(&qword_18578, &qword_E390);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_D658();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v5 + *(v1 + 24);
  if (*(v8 + 40))
  {
    if (*(v8 + 24))
    {
      sub_54B4(v8);
    }
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_54B4(void *a1)
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

uint64_t sub_5500(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AirDropDiscoveryModeSection(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_5564()
{
  type metadata accessor for AirDropDiscoveryModeSection(0);

  return sub_4DDC();
}

unint64_t sub_55E4()
{
  result = qword_185A0;
  if (!qword_185A0)
  {
    sub_2BA0(&qword_18598, &qword_E3B0);
    sub_2C3C(&qword_185A8, &qword_185B0, &qword_E3B8, &protocol conformance descriptor for Picker<A, B, C>);
    sub_2C3C(&qword_18458, &qword_18460, &qword_E3C0, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185A0);
  }

  return result;
}

unint64_t sub_56C8()
{
  result = qword_185B8;
  if (!qword_185B8)
  {
    sub_2BA0(&qword_18570, &qword_E358);
    sub_5780();
    sub_2C3C(&qword_185E0, &qword_18580, &qword_E398, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185B8);
  }

  return result;
}

unint64_t sub_5780()
{
  result = qword_185C0;
  if (!qword_185C0)
  {
    sub_2BA0(&qword_185C8, &qword_E3C8);
    sub_5804();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185C0);
  }

  return result;
}

unint64_t sub_5804()
{
  result = qword_185D0;
  if (!qword_185D0)
  {
    sub_2BA0(&qword_185D8, &unk_E3D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185D0);
  }

  return result;
}

uint64_t sub_5880(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_58A0(uint64_t a1)
{
  v2 = sub_284C(&qword_18598, &qword_E3B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_5910(uint64_t a1, uint64_t a2)
{
  v4 = sub_284C(&qword_18618, &qword_E428);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_5980(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_284C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_59E4()
{
  result = qword_18658;
  if (!qword_18658)
  {
    sub_2BA0(&qword_18660, &unk_E450);
    sub_2BA0(&qword_18590, &qword_E3A8);
    sub_D5E8();
    sub_2BA0(&qword_18598, &qword_E3B0);
    sub_55E4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_56C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18658);
  }

  return result;
}

__n128 sub_5B14(uint64_t a1, uint64_t a2)
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

uint64_t sub_5B38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_5B80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_5C04@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_284C(&qword_18668, &qword_E5C8);
  v14 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v15[-1] - v3;
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v6 = result;
    hasBaseband = MobileGestalt_get_hasBaseband();

    if (hasBaseband)
    {
      __chkstk_darwin(v8);
      sub_D5F8();
      if (qword_18400 != -1)
      {
        swift_once();
      }

      v9 = qword_19180;
      v15[5] = sub_D688();
      v15[6] = v10;
      v16 = v11 & 1;
      v17 = v12;
      sub_68B0(v15);
      sub_284C(&qword_18438, &unk_E260);
      sub_284C(&qword_185D8, &unk_E3D0);
      sub_2A64();
      sub_5804();
      sub_D7E8();
      (*(v14 + 32))(a1, v4, v2);
      return (*(v14 + 56))(a1, 0, 1, v2);
    }

    else
    {
      v13 = *(v14 + 56);

      return v13(a1, 1, 1, v2);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_5EFC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v39 = sub_D5C8();
  v38 = *(v39 - 8);
  __chkstk_darwin(v39);
  v37 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_284C(&qword_18468, &qword_E270);
  __chkstk_darwin(v4 - 8);
  v53 = &v37 - v5;
  v52 = sub_D398();
  v6 = *(v52 - 8);
  __chkstk_darwin(v52);
  v45 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_D3B8();
  __chkstk_darwin(v8 - 8);
  v51 = sub_D348();
  v9 = *(v51 - 8);
  __chkstk_darwin(v51);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_D8F8();
  __chkstk_darwin(v12 - 8);
  v42 = sub_D358();
  v41 = *(v42 - 8);
  __chkstk_darwin(v42);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_284C(&qword_18410, &qword_E5D0);
  v43 = *(v44 - 8);
  __chkstk_darwin(v44);
  v40 = &v37 - v15;
  v16 = sub_284C(&qword_18470, &qword_E278);
  v47 = *(v16 - 8);
  v48 = v16;
  __chkstk_darwin(v16);
  v46 = &v37 - v17;
  v18 = a1[8];
  v19 = a1[9];
  v49 = a1;
  v20 = *(a1 + 80);
  v54[0] = v18;
  v54[1] = v19;
  v55 = v20;
  sub_284C(&qword_18478, &unk_E280);
  sub_D7C8();
  v56 = v59;
  v57 = v60;
  v58 = v61;
  sub_D8E8();
  if (qword_18400 != -1)
  {
    swift_once();
  }

  v21 = [qword_19180 bundleURL];
  sub_D378();

  (*(v9 + 104))(v11, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v51);
  sub_D3A8();
  sub_D368();
  v22 = v53;
  sub_D388();
  v23 = v52;
  result = (*(v6 + 48))(v22, 1, v52);
  if (result != 1)
  {
    v25 = v45;
    (*(v6 + 32))(v45, v22, v23);
    v26 = v49;
    sub_6ABC(v54);
    sub_D7D8();
    sub_2C84(v54);
    (*(v6 + 8))(v25, v23);
    (*(v41 + 8))(v14, v42);

    v27 = v40;
    sub_D798();
    v28 = v46;
    (*(v43 + 32))(v46, v27, v44);
    *&v28[*(sub_284C(&qword_18418, &qword_DFF0) + 36)] = 258;
    v29 = *v26;
    v30 = *(v26 + 8);

    if ((v30 & 1) == 0)
    {
      sub_D998();
      v31 = sub_D668();
      sub_D498();

      v32 = v37;
      sub_D5B8();
      swift_getAtKeyPath();

      (*(v38 + 8))(v32, v39);
      v29 = v54[0];
    }

    swift_getKeyPath();
    v54[0] = v29;
    sub_6C38();
    sub_D3D8();

    v33 = *(v29 + 16);

    if (v33 > 1)
    {
      if (v33 == 2)
      {

LABEL_11:
        v54[0] = sub_D738();
        v35 = sub_D7A8();
LABEL_13:
        v36 = v50;
        (*(v47 + 32))(v50, v28, v48);
        result = sub_284C(&qword_18438, &unk_E260);
        *(v36 + *(result + 36)) = v35;
        return result;
      }
    }

    else
    {
      v34 = sub_DA38();

      if (v34)
      {
        goto LABEL_11;
      }
    }

    v35 = 0;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_67C8@<X0>(uint64_t a1@<X8>)
{
  sub_D5F8();
  if (qword_18400 != -1)
  {
    swift_once();
  }

  v2 = qword_19180;
  result = sub_D688();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

void *sub_68B0@<X0>(uint64_t a2@<X8>)
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v4 = result;
    wapiCapability = MobileGestalt_get_wapiCapability();

    if (wapiCapability)
    {
      sub_D5F8();
      if (qword_18400 == -1)
      {
        goto LABEL_6;
      }
    }

    else
    {
      sub_D5F8();
      if (qword_18400 == -1)
      {
LABEL_6:
        v6 = qword_19180;
        sub_D688();
        result = sub_D618();
        *a2 = v7;
        *(a2 + 16) = v8;
        *(a2 + 32) = v9;
        return result;
      }
    }

    swift_once();
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_6ABC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_D5C8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_6E90(v2, v11, &qword_18670, &unk_E600);
  if (v13 == 1)
  {
    v9 = v11[1];
    *a1 = v11[0];
    *(a1 + 16) = v9;
    *(a1 + 32) = v12;
  }

  else
  {
    sub_D998();
    v10 = sub_D668();
    sub_D498();

    sub_D5B8();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

unint64_t sub_6C38()
{
  result = qword_18488;
  if (!qword_18488)
  {
    type metadata accessor for AirDropSettingsListHighlighter(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18488);
  }

  return result;
}

uint64_t sub_6C90@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_D5C8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_284C(&qword_18578, &qword_E390);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_6E90(v2, &v14 - v9, &qword_18578, &qword_E390);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_D658();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_D998();
    v13 = sub_D668();
    sub_D498();

    sub_D5B8();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_6E90(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_284C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_6EFC()
{
  result = qword_18678;
  if (!qword_18678)
  {
    sub_2BA0(&qword_18680, &unk_E610);
    sub_6F80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18678);
  }

  return result;
}

unint64_t sub_6F80()
{
  result = qword_18688;
  if (!qword_18688)
  {
    sub_2BA0(&qword_18668, &qword_E5C8);
    sub_2A64();
    sub_5804();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18688);
  }

  return result;
}

id sub_704C()
{
  type metadata accessor for FindAirDropSettingsClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_19180 = result;
  return result;
}

void sub_70A4()
{
  v0 = sub_D908();
  v1 = [objc_opt_self() bundleWithIdentifier:v0];

  if (v1)
  {
    qword_19188 = v1;
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_7144()
{
  result = qword_187C0;
  if (!qword_187C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_187C0);
  }

  return result;
}

uint64_t sub_71B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_D528();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_D398();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  sub_284C(&qword_187E0, &qword_E6F8);
  v3[11] = swift_task_alloc();
  v6 = sub_D328();
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();
  sub_D968();
  v3[15] = sub_D958();
  v8 = sub_D948();

  return _swift_task_switch(sub_739C, v8, v7);
}

uint64_t sub_739C()
{
  v1 = v0[12];
  v2 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v6 = v0[9];

  sub_D8A8();
  sub_D308();
  (*(v6 + 8))(v4, v5);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_7A8C(v0[11]);
  }

  else
  {
    (*(v0[13] + 32))(v0[14], v0[11], v0[12]);
    v7 = sub_D318();
    if (v8 && (v9 = v7, v10 = v8, v11._rawValue = &off_14BF8, v22._countAndFlagsBits = v9, v22._object = v10, v12 = sub_DA28(v11, v22), , v12 < 3))
    {
      v14 = v0[13];
      v13 = v0[14];
      v15 = v0[12];
      sub_A8E4(v12);
      (*(v14 + 8))(v13, v15);
    }

    else
    {
      (*(v0[13] + 8))(v0[14], v0[12]);
    }
  }

  v17 = v0[6];
  v16 = v0[7];
  v18 = v0[5];
  sub_D898();
  sub_D8B8();
  (*(v17 + 8))(v16, v18);

  v19 = v0[1];

  return v19();
}

uint64_t sub_7580()
{
  v1 = sub_284C(&qword_187C8, &qword_E6E0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - v3;
  v5 = *v0;
  v6 = v0[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  type metadata accessor for AirDropSettingsList(0);
  sub_77E8();

  v8 = v6;
  sub_D8C8();
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  *(v9 + 24) = v8;
  sub_7A28();

  v10 = v8;
  sub_D888();
  return (*(v2 + 8))(v4, v1);
}

id sub_7724@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AirDropSettingsListHighlighter(0);
  v2 = swift_allocObject();
  *(v2 + 16) = 3;
  sub_D3E8();
  result = [objc_allocWithZone(sub_D488()) init];
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_7794@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);

  v5 = v3;

  return sub_7BFC(v4, v5, a1);
}

unint64_t sub_77E8()
{
  result = qword_187D0;
  if (!qword_187D0)
  {
    type metadata accessor for AirDropSettingsList(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_187D0);
  }

  return result;
}

uint64_t sub_7840()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_7880(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_7934;

  return sub_71B4(a1, a2, v6);
}

uint64_t sub_7934()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_7A28()
{
  result = qword_187D8;
  if (!qword_187D8)
  {
    sub_2BA0(&qword_187C8, &qword_E6E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_187D8);
  }

  return result;
}

uint64_t sub_7A8C(uint64_t a1)
{
  v2 = sub_284C(&qword_187E0, &qword_E6F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_7AF4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_7B00(uint64_t *a1, int a2)
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

uint64_t sub_7B48(uint64_t result, int a2, int a3)
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

uint64_t sub_7B94()
{
  sub_2BA0(&qword_187C8, &qword_E6E0);
  sub_7A28();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_7BFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_D3B8();
  __chkstk_darwin(v6 - 8);
  v7 = sub_D348();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_D8F8();
  __chkstk_darwin(v11 - 8);
  type metadata accessor for AirDropSettingsList(0);
  sub_D8E8();
  if (qword_18400 != -1)
  {
    swift_once();
  }

  v12 = [qword_19180 bundleURL];
  sub_D378();

  (*(v8 + 104))(v10, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v7);
  sub_D3A8();
  sub_D368();
  v16 = a1;
  type metadata accessor for AirDropSettingsListHighlighter(0);

  sub_D748();
  v13 = v18;
  *a3 = v17;
  a3[1] = v13;
  v16 = a2;
  sub_D488();
  sub_D748();

  v15 = v18;
  a3[2] = v17;
  a3[3] = v15;
  return result;
}

uint64_t type metadata accessor for AirDropSettingsList(uint64_t a1)
{
  result = qword_18840;
  if (!qword_18840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_7EE4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_D358();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_7FA4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_D358();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_8048(uint64_t a1)
{
  sub_811C(319, &qword_18850, type metadata accessor for AirDropSettingsListHighlighter);
  if (v1 <= 0x3F)
  {
    sub_811C(319, &unk_18858, &type metadata accessor for AirDropSettingsState);
    if (v2 <= 0x3F)
    {
      sub_D358();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_811C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_D778();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_818C@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v2 = sub_284C(&qword_18468, &qword_E270);
  __chkstk_darwin(v2 - 8);
  v62 = &v48 - v3;
  v4 = sub_D398();
  v60 = *(v4 - 8);
  v61 = v4;
  __chkstk_darwin(v4);
  v53 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_D878();
  v65 = *(v6 - 8);
  v66 = v6;
  __chkstk_darwin(v6);
  v64 = (&v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = type metadata accessor for AirDropSettingsList(0);
  v8 = *(v50 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v50);
  v10 = sub_284C(&qword_18890, &qword_E7B0);
  v11 = *(v10 - 8);
  v58 = v10;
  v59 = v11;
  __chkstk_darwin(v10);
  v13 = &v48 - v12;
  v52 = sub_284C(&qword_18898, &qword_E7B8);
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v63 = &v48 - v14;
  v15 = sub_284C(&qword_188A0, &qword_E7C0);
  v54 = *(v15 - 8);
  v55 = v15;
  __chkstk_darwin(v15);
  v49 = &v48 - v16;
  sub_A4DC(v1, &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AirDropSettingsList);
  v17 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v18 = swift_allocObject();
  sub_9BEC(&v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  v19 = sub_D808();
  v57 = v1;
  v21 = v1[1];
  v67 = *v1;
  v20 = v67;
  v68 = v21;
  sub_284C(&qword_188A8, &qword_E7C8);
  sub_D758();
  v22 = v71;
  swift_getKeyPath();
  v67 = v22;
  v23 = sub_A328(&qword_18488, type metadata accessor for AirDropSettingsListHighlighter, &unk_EA54);
  sub_D3D8();

  v24 = *(v22 + 16);

  v67 = sub_9C50;
  v68 = v18;
  v69 = v19;
  LOBYTE(v70) = v24;
  v25 = sub_284C(&qword_188B0, &qword_E7F8);
  v26 = sub_9CD8();
  sub_D698();

  v67 = v20;
  v68 = v21;
  v27 = v60;
  sub_D758();
  v28 = type metadata accessor for AirDropSettingsListHighlighter(0);
  v67 = v25;
  v68 = v26;
  v29 = v61;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = v58;
  v48 = v23;
  sub_D6D8();

  (*(v59 + 8))(v13, v31);
  v32 = v64;
  *v64 = 0xD00000000000001ELL;
  v32[1] = 0x800000000000F140;
  (*(v65 + 104))();
  sub_9948();
  v33 = v62;
  sub_D388();
  result = (*(v27 + 48))(v33, 1, v29);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v35 = v53;
    (*(v27 + 32))(v53, v33, v29);
    v67 = v31;
    v68 = v28;
    v69 = OpaqueTypeConformance2;
    v70 = v48;
    v36 = swift_getOpaqueTypeConformance2();
    v37 = v49;
    v38 = v63;
    v39 = v64;
    v40 = v52;
    sub_D6A8();

    (*(v27 + 8))(v35, v29);
    (*(v65 + 8))(v39, v66);
    (*(v51 + 8))(v38, v40);
    sub_D5F8();
    if (qword_18400 != -1)
    {
      swift_once();
    }

    v41 = qword_19180;
    v42 = sub_D688();
    v44 = v43;
    v46 = v45;
    v67 = v40;
    v68 = v36;
    swift_getOpaqueTypeConformance2();
    v47 = v55;
    sub_D718();
    sub_5880(v42, v44, v46 & 1);

    return (*(v54 + 8))(v37, v47);
  }

  return result;
}

uint64_t sub_89DC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a1;
  v28 = a3;
  v4 = type metadata accessor for AirDropSettingsList(0);
  v25 = *(v4 - 8);
  v5 = *(v25 + 64);
  __chkstk_darwin(v4 - 8);
  v23 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_D558();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = sub_284C(&qword_188E8, &qword_E818);
  v10 = *(v9 - 8);
  v26 = v9;
  v27 = v10;
  __chkstk_darwin(v9);
  v12 = &v23 - v11;
  v29 = a2;
  sub_284C(&qword_188F0, &qword_E820);
  sub_2C3C(&qword_188F8, &qword_188F0, &qword_E820, &protocol conformance descriptor for TupleView<A>);
  sub_D678();
  v13 = a2[1];
  v31 = *a2;
  v32 = v13;
  sub_284C(&qword_188A8, &qword_E7C8);
  sub_D758();
  v14 = v30;
  swift_getKeyPath();
  v31 = v14;
  sub_A328(&qword_18488, type metadata accessor for AirDropSettingsListHighlighter, &unk_EA54);
  sub_D3D8();

  v15 = *(v14 + 16);

  LOBYTE(v31) = v15;
  (*(v7 + 16))(&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v24, v6);
  v16 = a2;
  v17 = v23;
  sub_A4DC(v16, v23, type metadata accessor for AirDropSettingsList);
  v18 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v19 = (v8 + *(v25 + 80) + v18) & ~*(v25 + 80);
  v20 = swift_allocObject();
  (*(v7 + 32))(v20 + v18, &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  sub_9BEC(v17, v20 + v19);
  sub_284C(&qword_18900, &qword_E828);
  sub_2C3C(&qword_18908, &qword_188E8, &qword_E818, &protocol conformance descriptor for List<A, B>);
  sub_A02C();
  v21 = v26;
  sub_D728();

  return (*(v27 + 8))(v12, v21);
}

uint64_t sub_8E0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = type metadata accessor for AirDropDiscoveryModeSection(0);
  v4 = (v3 - 8);
  v5 = __chkstk_darwin(v3);
  v45 = &v38[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v8 = &v38[-v7];
  v9 = *(a1 + 16);
  v40 = *(a1 + 24);
  *&v50 = v9;
  *(&v50 + 1) = v40;
  v10 = v9;
  sub_284C(&qword_18940, &qword_E838);
  sub_D768();
  v11 = v59;
  v12 = v60;
  v13 = KeyPath;
  swift_getKeyPath();
  v59 = v11;
  v60 = v12;
  KeyPath = v13;
  v47 = sub_284C(&qword_18948, &qword_E870);
  sub_D7B8();

  v42 = v50;
  v41 = v51;

  v14 = v40;
  v52 = v10;
  v53 = v40;
  sub_D758();
  v15 = v48[0];
  LOBYTE(v11) = sub_D478();

  type metadata accessor for AirDropSettingsListHighlighter(0);
  v43 = sub_A328(&qword_18488, type metadata accessor for AirDropSettingsListHighlighter, &unk_EA54);
  *v8 = sub_D4B8();
  v8[8] = v16 & 1;
  v17 = v4[7];
  *&v8[v17] = swift_getKeyPath();
  sub_284C(&qword_18578, &qword_E390);
  swift_storeEnumTagMultiPayload();
  v18 = &v8[v4[8]];
  *v18 = swift_getKeyPath();
  v18[40] = 0;
  v19 = v4[9];
  v44 = v8;
  v20 = &v8[v19];
  *v20 = v42;
  *(v20 + 2) = v41;
  v8[v4[10]] = v11 & 1;
  *&v50 = v10;
  *(&v50 + 1) = v14;
  v21 = v10;
  v22 = v14;
  sub_D768();
  v23 = v59;
  v24 = v60;
  v25 = KeyPath;
  swift_getKeyPath();
  *&v50 = v23;
  *(&v50 + 1) = v24;
  v51 = v25;
  sub_D7B8();

  v41 = v53;
  *&v42 = v52;
  v39 = v54;

  v59 = v21;
  v60 = v14;
  sub_D758();
  v26 = v48[0];
  LOBYTE(v14) = sub_D468();

  v59 = sub_D4B8();
  LOBYTE(v60) = v27 & 1;
  KeyPath = swift_getKeyPath();
  v62 = 0;
  v63 = v42;
  v64 = v41;
  v65 = v39;
  v66 = v14 & 1;
  v52 = v21;
  v53 = v22;
  sub_D768();
  v28 = v50;
  v29 = v51;
  swift_getKeyPath();
  v50 = v28;
  v51 = v29;
  sub_D7B8();

  v30 = v48[0];
  v31 = v48[1];
  LOBYTE(v25) = v49;

  v52 = sub_D4B8();
  LOBYTE(v53) = v32 & 1;
  v54 = swift_getKeyPath();
  v55 = 0;
  v56 = v30;
  v57 = v31;
  v58 = v25;
  v34 = v44;
  v33 = v45;
  sub_A4DC(v44, v45, type metadata accessor for AirDropDiscoveryModeSection);
  sub_A544(&v59, &v50);
  sub_A5A0(&v52, v48);
  v35 = v46;
  sub_A4DC(v33, v46, type metadata accessor for AirDropDiscoveryModeSection);
  v36 = sub_284C(&qword_18950, &unk_E940);
  sub_A544(&v50, v35 + *(v36 + 48));
  sub_A5A0(v48, v35 + *(v36 + 64));
  sub_A5FC(&v52);
  sub_A650(&v59);
  sub_A6A4(v34);
  sub_A5FC(v48);
  sub_A650(&v50);
  return sub_A6A4(v33);
}

uint64_t sub_92C8(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v36 = a4;
  v6 = sub_D818();
  v39 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_D838();
  v37 = *(v9 - 8);
  v38 = v9;
  __chkstk_darwin(v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AirDropSettingsList(0);
  v35 = *(v12 - 8);
  v13 = *(v35 + 64);
  __chkstk_darwin(v12 - 8);
  v14 = sub_D858();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v16);
  v21 = &v31 - v20;
  if (*a2 != 3)
  {
    v33 = v8;
    v34 = v6;
    v22 = __chkstk_darwin(result);
    *(&v31 - 2) = a3;
    *(&v31 - 8) = v23;
    v24 = v22;
    sub_D808();
    sub_D518();

    sub_A164();
    v31 = sub_D9B8();
    sub_D848();
    sub_D868();
    v32 = *(v15 + 8);
    v32(v18, v24);
    sub_A4DC(v36, &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AirDropSettingsList);
    v25 = (*(v35 + 80) + 16) & ~*(v35 + 80);
    v26 = swift_allocObject();
    sub_9BEC(&v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25);
    aBlock[4] = sub_A2B0;
    aBlock[5] = v26;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_9904;
    aBlock[3] = &unk_14F00;
    v27 = _Block_copy(aBlock);

    sub_D828();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_A328(&qword_18928, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_284C(&qword_18930, &qword_E830);
    sub_2C3C(&qword_18938, &qword_18930, &qword_E830, &protocol conformance descriptor for [A]);
    v28 = v33;
    v29 = v34;
    sub_D9E8();
    v30 = v31;
    sub_D9A8();
    _Block_release(v27);

    (*(v39 + 8))(v28, v29);
    (*(v37 + 8))(v11, v38);
    return (v32)(v21, v24);
  }

  return result;
}

uint64_t sub_97BC(void *a1)
{
  sub_284C(&qword_188A8, &qword_E7C8);
  sub_D758();
  if (*(v3 + 16) != 3)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_A328(&qword_18488, type metadata accessor for AirDropSettingsListHighlighter, &unk_EA54);
    sub_D3C8();
  }
}

uint64_t sub_9904(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_9948()
{
  v0 = sub_D3B8();
  __chkstk_darwin(v0 - 8);
  v1 = sub_D348();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_D8F8();
  __chkstk_darwin(v5 - 8);
  sub_284C(&qword_188E0, &qword_E810);
  sub_D358();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_E730;
  sub_D8E8();
  if (qword_18400 != -1)
  {
    swift_once();
  }

  v7 = [qword_19180 bundleURL];
  sub_D378();

  (*(v2 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v1);
  sub_D3A8();
  sub_D368();
  return v6;
}

uint64_t sub_9BEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AirDropSettingsList(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_9C50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AirDropSettingsList(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_89DC(a1, v6, a2);
}

unint64_t sub_9CD8()
{
  result = qword_188B8;
  if (!qword_188B8)
  {
    sub_2BA0(&qword_188B0, &qword_E7F8);
    sub_2C3C(&qword_188C0, &qword_188C8, &qword_E800, &protocol conformance descriptor for ScrollViewReader<A>);
    sub_2C3C(&qword_188D0, &qword_188D8, &qword_E808, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_188B8);
  }

  return result;
}

uint64_t sub_9DC4()
{
  v1 = sub_D558();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for AirDropSettingsList(0) - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*v6 + 64);
  v10 = v3 | v7;
  (*(v2 + 8))(v0 + v4, v1);

  v11 = v6[8];
  v12 = sub_D358();
  (*(*(v12 - 8) + 8))(v0 + v8 + v11, v12);

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}

uint64_t sub_9F48(uint64_t a1, _BYTE *a2)
{
  v5 = *(sub_D558() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for AirDropSettingsList(0) - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_92C8(a1, a2, v2 + v6, v9);
}

unint64_t sub_A02C()
{
  result = qword_18910;
  if (!qword_18910)
  {
    sub_2BA0(&qword_18900, &qword_E828);
    sub_A0B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18910);
  }

  return result;
}

unint64_t sub_A0B0()
{
  result = qword_18918;
  if (!qword_18918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18918);
  }

  return result;
}

unint64_t sub_A164()
{
  result = qword_18920;
  if (!qword_18920)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_18920);
  }

  return result;
}

uint64_t sub_A1B0()
{
  v1 = (type metadata accessor for AirDropSettingsList(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  v6 = sub_D358();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_A2B0()
{
  v1 = *(type metadata accessor for AirDropSettingsList(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_97BC(v2);
}

uint64_t sub_A310(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_A328(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_A390@<X0>(uint64_t *a1@<X8>)
{
  result = sub_D408();
  *a1 = result;
  return result;
}

uint64_t sub_A42C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_D448();
  *a1 = result & 1;
  return result;
}

uint64_t sub_A484@<X0>(_BYTE *a1@<X8>)
{
  result = sub_D428();
  *a1 = result & 1;
  return result;
}

uint64_t sub_A4DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_A6A4(uint64_t a1)
{
  v2 = type metadata accessor for AirDropDiscoveryModeSection(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_A700()
{
  sub_2BA0(&qword_188A0, &qword_E7C0);
  sub_2BA0(&qword_18898, &qword_E7B8);
  sub_2BA0(&qword_18890, &qword_E7B0);
  type metadata accessor for AirDropSettingsListHighlighter(255);
  sub_2BA0(&qword_188B0, &qword_E7F8);
  sub_9CD8();
  swift_getOpaqueTypeConformance2();
  sub_A328(&qword_18488, type metadata accessor for AirDropSettingsListHighlighter, &unk_EA54);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_A874()
{
  swift_getKeyPath();
  sub_6C38();
  sub_D3D8();

  return *(v0 + 16);
}

uint64_t sub_A8E4(uint64_t result)
{
  v2 = result;
  v3 = *(v1 + 16);
  if (v3 == 3)
  {
    if (result == 3)
    {
      goto LABEL_27;
    }

LABEL_5:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_6C38();
    sub_D3C8();
  }

  if (result == 3)
  {
    goto LABEL_5;
  }

  v5 = 0x800000000000EB20;
  v6 = 0xD000000000000019;
  if (v3 == 1)
  {
    v6 = 0x5F504F5244524941;
    v5 = 0xEE0044495F43464ELL;
  }

  if (*(v1 + 16))
  {
    v7 = v6;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (*(v1 + 16))
  {
    v8 = v5;
  }

  else
  {
    v8 = 0x800000000000EB00;
  }

  if (v2)
  {
    if (v2 == 1)
    {
      v9 = 0x5F504F5244524941;
    }

    else
    {
      v9 = 0xD000000000000019;
    }

    if (v2 == 1)
    {
      v10 = 0xEE0044495F43464ELL;
    }

    else
    {
      v10 = 0x800000000000EB20;
    }

    if (v7 != v9)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v10 = 0x800000000000EB00;
    if (v7 != 0xD000000000000010)
    {
      goto LABEL_26;
    }
  }

  if (v8 == v10)
  {

    goto LABEL_27;
  }

LABEL_26:
  v11 = sub_DA38();

  if ((v11 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_27:
  *(v1 + 16) = v2;
  return result;
}

uint64_t sub_AAB8(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEE0044495F43464ELL;
  v3 = 0x5F504F5244524941;
  v4 = *a1;
  if (v4 == 1)
  {
    v5 = 0x5F504F5244524941;
  }

  else
  {
    v5 = 0xD000000000000019;
  }

  if (v4 == 1)
  {
    v6 = 0xEE0044495F43464ELL;
  }

  else
  {
    v6 = 0x800000000000EB20;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x800000000000EB00;
  }

  if (*a2 != 1)
  {
    v3 = 0xD000000000000019;
    v2 = 0x800000000000EB20;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD000000000000010;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x800000000000EB00;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_DA38();
  }

  return v11 & 1;
}

unint64_t sub_ABA0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_B23C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_ABD0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE0044495F43464ELL;
  v4 = 0x5F504F5244524941;
  if (v2 != 1)
  {
    v4 = 0xD000000000000019;
    v3 = 0x800000000000EB20;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  if (v5)
  {
    v3 = 0x800000000000EB00;
  }

  *a1 = v6;
  a1[1] = v3;
}

Swift::Int sub_AC44()
{
  sub_DA48();
  sub_D938();

  return sub_DA68();
}

uint64_t sub_ACFC(uint64_t a1)
{
  sub_D938();
}

Swift::Int sub_ADA0(uint64_t a1)
{
  sub_DA48();
  sub_D938();

  return sub_DA68();
}

uint64_t sub_AE54@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_6C38();
  sub_D3D8();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_AEFC()
{
  v1 = OBJC_IVAR____TtC15AirDropSettings30AirDropSettingsListHighlighter___observationRegistrar;
  v2 = sub_D3F8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for AirDropSettingsListHighlighter(uint64_t a1)
{
  result = qword_18988;
  if (!qword_18988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_AFEC(uint64_t a1)
{
  result = sub_D3F8();
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

uint64_t getEnumTagSinglePayload for HighlightableItem(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HighlightableItem(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_B23C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_14BF8;
  v6._object = a2;
  v4 = sub_DA28(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_B288()
{
  v1 = OBJC_IVAR____TtC15AirDropSettings19AirDropSettingsRoot____lazy_storage___airDropSettingsListHighlighter;
  if (*(v0 + OBJC_IVAR____TtC15AirDropSettings19AirDropSettingsRoot____lazy_storage___airDropSettingsListHighlighter))
  {
    v2 = *(v0 + OBJC_IVAR____TtC15AirDropSettings19AirDropSettingsRoot____lazy_storage___airDropSettingsListHighlighter);
  }

  else
  {
    type metadata accessor for AirDropSettingsListHighlighter(0);
    v2 = swift_allocObject();
    *(v2 + 16) = 3;
    sub_D3E8();
    *(v0 + v1) = v2;
  }

  return v2;
}

id sub_B314()
{
  v1 = OBJC_IVAR____TtC15AirDropSettings19AirDropSettingsRoot____lazy_storage___airDropSettingsState;
  v2 = *(v0 + OBJC_IVAR____TtC15AirDropSettings19AirDropSettingsRoot____lazy_storage___airDropSettingsState);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15AirDropSettings19AirDropSettingsRoot____lazy_storage___airDropSettingsState);
  }

  else
  {
    v4 = [objc_allocWithZone(sub_D488()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_B388()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for AirDropSettingsList(0);
  __chkstk_darwin(v3 - 8);
  v5 = (&v23.receiver - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23.receiver = v1;
  v23.super_class = ObjectType;
  objc_msgSendSuper2(&v23, "viewDidLoad");
  v6 = sub_B288();
  v7 = sub_B314();
  sub_7BFC(v6, v7, v5);
  v8 = objc_allocWithZone(sub_284C(&qword_18A68, &qword_EB18));
  v9 = sub_D608();
  if (qword_18400 != -1)
  {
    swift_once();
  }

  v10.super.isa = qword_19180;
  v22._countAndFlagsBits = 0x800000000000EDD0;
  v24._countAndFlagsBits = 0x706F7244726941;
  v24._object = 0xE700000000000000;
  v25.value._countAndFlagsBits = 0;
  v25.value._object = 0;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  sub_D338(v24, v25, v10, v26, 0xD000000000000010, v22);
  v11 = sub_D908();

  [v1 setTitle:v11];

  v12 = [v9 view];
  if (!v12)
  {
    v13 = v9;
    goto LABEL_8;
  }

  v13 = v12;
  v14 = [v1 view];
  if (v14)
  {
    v15 = v14;
    [v14 addSubview:v13];

    v16 = [v1 view];
    if (v16)
    {
      v17 = v16;
      [v16 bounds];
      v19 = v18;
      v21 = v20;

      [v13 setFrame:{0.0, 0.0, v19, v21}];
      [v13 setAutoresizingMask:18];
      [v1 addChildViewController:v9];
      [v9 didMoveToParentViewController:v1];

LABEL_8:
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_B660(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  sub_D968();
  v2[15] = sub_D958();
  v4 = sub_D948();

  return _swift_task_switch(sub_B6F8, v4, v3);
}

uint64_t sub_B6F8()
{
  v1 = *(v0 + 104);

  if (!v1)
  {
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    goto LABEL_11;
  }

  *(v0 + 88) = 1752457584;
  v2 = *(v0 + 104);
  *(v0 + 96) = 0xE400000000000000;
  sub_DA18();
  if (!*(v2 + 16) || (v3 = sub_CB40(v0 + 16), (v4 & 1) == 0))
  {
    sub_CC4C(v0 + 16);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    goto LABEL_11;
  }

  sub_CD44(*(v2 + 56) + 32 * v3, v0 + 56);
  sub_CC4C(v0 + 16);
  if (!*(v0 + 80))
  {
LABEL_11:
    sub_5980(v0 + 56, &qword_18A58, &qword_EB10);
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    *(v0 + 56) = 35;
    *(v0 + 64) = 0xE100000000000000;
    sub_CCA0();
    v5 = sub_D9D8();

    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = (v5 + 16 + 16 * v6);
      v8 = *v7;
      v9 = v7[1];

      v10._rawValue = &off_14BF8;
      v17._countAndFlagsBits = v8;
      v17._object = v9;
      v11 = sub_DA28(v10, v17);

      if (v11 < 3)
      {
        v12 = *(v0 + 112);
        v13 = swift_task_alloc();
        *(v13 + 16) = v12;
        *(v13 + 24) = v11;
        sub_D808();
        sub_D518();
      }
    }

    else
    {
    }
  }

LABEL_12:
  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_BAB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_D968();
  v3[5] = sub_D958();
  v5 = sub_D948();

  return _swift_task_switch(sub_BB50, v5, v4);
}

uint64_t sub_BB50()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  *(v0 + 48) = _Block_copy(v2);
  if (v1)
  {
    v1 = sub_D8D8();
  }

  *(v0 + 56) = v1;
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_BC38;

  return sub_B660(v1);
}

uint64_t sub_BC38()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 32);
  v4 = *v0;

  if (v2)
  {
    v5 = *(v1 + 48);
    v5[2](v5);
    _Block_release(v5);
  }

  v6 = *(v4 + 8);

  return v6();
}

id sub_BF08()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_BFB0()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_BFF8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_7934;

  return sub_BAB4(v2, v3, v4);
}

uint64_t sub_C0AC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_CE04;

  return v6();
}

uint64_t sub_C198()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_CE04;

  return sub_C0AC(v2, v3, v4);
}

uint64_t sub_C258(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_7934;

  return v7();
}

uint64_t sub_C340()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_C380(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_CE04;

  return sub_C258(a1, v4, v5, v6);
}

uint64_t sub_C44C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_284C(&qword_18A50, &qword_EAB8);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_C738(a3, v23 - v10);
  v12 = sub_D988();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_5980(v11, &qword_18A50, &qword_EAB8);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_D978();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_D948();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_D928() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_5980(a3, &qword_18A50, &qword_EAB8);

    return v21;
  }

LABEL_8:
  sub_5980(a3, &qword_18A50, &qword_EAB8);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_C738(uint64_t a1, uint64_t a2)
{
  v4 = sub_284C(&qword_18A50, &qword_EAB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_C7A8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_C8A0;

  return v6(a1);
}

uint64_t sub_C8A0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_C998()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_C9D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_CE04;

  return sub_C7A8(a1, v4);
}

uint64_t sub_CA88(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_7934;

  return sub_C7A8(a1, v4);
}

unint64_t sub_CB40(uint64_t a1)
{
  v2 = v1;
  v4 = sub_D9F8(*(v2 + 40));

  return sub_CB84(a1, v4);
}

unint64_t sub_CB84(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_CDA0(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_DA08();
      sub_CC4C(v8);
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

unint64_t sub_CCA0()
{
  result = qword_18A60;
  if (!qword_18A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18A60);
  }

  return result;
}

uint64_t sub_CCF4()
{
  v1 = *(v0 + 24);
  sub_B288();
  sub_A8E4(v1);
}

uint64_t sub_CD44(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_CE10(int a1, int a2, int a3, int a4)
{
  if (qword_19170 == -1)
  {
    if (qword_19178)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_D2D8();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_19178)
    {
      return _availability_version_check();
    }
  }

  if (qword_19168 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_D2F0();
    a3 = v10;
    a4 = v9;
    v8 = dword_19158 < v11;
    if (dword_19158 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_1915C > a3)
      {
        return 1;
      }

      if (dword_1915C >= a3)
      {
        return dword_19160 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_19158 < a2;
  if (dword_19158 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_CFA4(uint64_t result)
{
  v1 = qword_19178;
  if (qword_19178)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_19178 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_19158, &dword_1915C, &dword_19160);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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
  }

  return result;
}