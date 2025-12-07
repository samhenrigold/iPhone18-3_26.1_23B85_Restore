uint64_t sub_2BC474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFD2F8, &qword_B089D8);
  __chkstk_darwin();
  v78 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v76 = &v71 - v4;
  v73 = sub_AB2F20();
  v5 = *(v73 - 1);
  __chkstk_darwin();
  v7 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFD300, &qword_B089E0);
  __chkstk_darwin();
  v75 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v79 = &v71 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFD308, &qword_B089E8);
  __chkstk_darwin();
  v74 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v71 - v11;
  v13 = qword_DE6AF0;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = qword_E71620;
  v80 = sub_AB75A0();
  v15 = AccessibilityIdentifier.privacyWelcomeImage.unsafeMutableAddressor();
  v16 = *v15;
  v17 = v15[1];
  v18 = v15[2];
  v19 = v15[3];

  View.accessibilityIdentifier(_:)(v16, v17, v18, v19, &type metadata for Image, &protocol witness table for Image);

  v20 = type metadata accessor for WelcomeViewModel(0);
  v71 = a1;
  v72 = v20;
  (*(v5 + 16))(v7, a1 + *(v20 + 24), v73);
  v21 = sub_AB6F10();
  v23 = v22;
  LOBYTE(v16) = v24;
  sub_AB6B60();
  v25 = sub_AB6E80();
  v27 = v26;
  v73 = v12;
  v29 = v28;

  sub_36B74(v21, v23, v16 & 1);

  sub_AB6BD0();
  v30 = sub_AB6E00();
  v32 = v31;
  LOBYTE(v23) = v33;
  v35 = v34;
  sub_36B74(v25, v27, v29 & 1);

  v80 = v30;
  v81 = v32;
  v82 = v23 & 1;
  v83 = v35;
  v36 = AccessibilityIdentifier.privacyWelcomeTitle.unsafeMutableAddressor();
  v37 = *v36;
  v38 = v36[1];
  v39 = v36[2];
  v40 = v36[3];

  View.accessibilityIdentifier(_:)(v37, v38, v39, v40, &type metadata for Text, &protocol witness table for Text);
  sub_36B74(v30, v32, v23 & 1);

  v41 = (v71 + *(v72 + 28));
  v42 = v41[1];
  v80 = *v41;
  v81 = v42;
  sub_36A48();

  v43 = sub_AB6F20();
  v45 = v44;
  LOBYTE(v37) = v46;
  sub_AB6B90();
  v47 = sub_AB6E80();
  v71 = v47;
  v72 = v48;
  v50 = v49;
  LOBYTE(v40) = v51;
  v52 = v48;

  sub_36B74(v43, v45, v37 & 1);

  KeyPath = swift_getKeyPath();
  v80 = v47;
  v81 = v50;
  LOBYTE(v45) = v40 & 1;
  v82 = v40 & 1;
  v83 = v52;
  v84 = KeyPath;
  v85 = 1;
  v54 = AccessibilityIdentifier.privacyWelcomeDescription.unsafeMutableAddressor();
  v55 = *v54;
  v56 = v54[1];
  v57 = v54[2];
  v58 = v54[3];

  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEDBF0, &unk_B08A20);
  v60 = sub_C9170();
  v61 = v76;
  View.accessibilityIdentifier(_:)(v55, v56, v57, v58, v59, v60);
  sub_36B74(v71, v50, v45);

  v63 = v73;
  v62 = v74;
  sub_15F84(v73, v74, &qword_DFD308, &qword_B089E8);
  v64 = v79;
  v65 = v75;
  sub_15F84(v79, v75, &qword_DFD300, &qword_B089E0);
  v66 = v78;
  sub_15F84(v61, v78, &qword_DFD2F8, &qword_B089D8);
  v67 = v77;
  sub_15F84(v62, v77, &qword_DFD308, &qword_B089E8);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFD310, &unk_B08A30);
  sub_15F84(v65, v67 + v68[12], &qword_DFD300, &qword_B089E0);
  v69 = v67 + v68[16];
  *v69 = 0;
  *(v69 + 8) = 1;
  sub_15F84(v66, v67 + v68[20], &qword_DFD2F8, &qword_B089D8);
  sub_12E1C(v61, &qword_DFD2F8, &qword_B089D8);
  sub_12E1C(v64, &qword_DFD300, &qword_B089E0);
  sub_12E1C(v63, &qword_DFD308, &qword_B089E8);
  sub_12E1C(v66, &qword_DFD2F8, &qword_B089D8);
  sub_12E1C(v65, &qword_DFD300, &qword_B089E0);
  return sub_12E1C(v62, &qword_DFD308, &qword_B089E8);
}

uint64_t sub_2BCB80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_AB6900();
  v46 = *(v4 - 8);
  __chkstk_darwin();
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFD2A0, &qword_B08928) - 8;
  __chkstk_darwin();
  v8 = &v45 - v7;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFD2A8, &qword_B08930);
  __chkstk_darwin();
  v48 = &v45 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFD2B0, &qword_B08938);
  __chkstk_darwin();
  v57 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v50 = &v45 - v11;
  sub_AB7A20();
  sub_AB5970();
  v56 = v59;
  v51 = v60;
  v55 = v61;
  v52 = v62;
  v54 = v63;
  v53 = v64;
  LOBYTE(v65) = v60;
  v58[0] = v62;
  v12 = (a1 + *(type metadata accessor for WelcomeViewModel(0) + 32));
  v14 = *v12;
  v13 = v12[1];
  v16 = *a1;
  v15 = a1[1];
  v58[0] = 0;

  sub_307CC(v16, v15);
  sub_AB7630();
  v17 = v65;
  v18 = *(&v65 + 1);
  *&v65 = v14;
  *(&v65 + 1) = v13;
  *&v66 = v16;
  *(&v66 + 1) = v15;
  LOBYTE(v67) = v17;
  *(&v67 + 1) = v18;
  sub_AB68F0();
  sub_2BE04C();
  sub_2BE0A0(&qword_DFD2C0, &type metadata accessor for BorderedProminentButtonStyle, &protocol conformance descriptor for BorderedProminentButtonStyle);
  sub_AB6FB0();
  (*(v46 + 8))(v6, v4);

  sub_17654(v16, v15);

  v19 = sub_AB7430();
  KeyPath = swift_getKeyPath();
  v21 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFD2C8, &unk_B08970) + 36)];
  *v21 = KeyPath;
  v21[1] = v19;
  LOBYTE(v19) = sub_AB6AC0();
  sub_AB5690();
  v22 = &v8[*(v47 + 44)];
  *v22 = v19;
  *(v22 + 1) = v23;
  *(v22 + 2) = v24;
  *(v22 + 3) = v25;
  *(v22 + 4) = v26;
  v22[40] = 0;
  sub_AB7A30();
  sub_AB5E90();
  v27 = v48;
  sub_2BE1E4(v8, v48);
  v28 = v49;
  v29 = (v27 + *(v49 + 36));
  v30 = v70;
  v31 = v71;
  v29[4] = v69;
  v29[5] = v30;
  v29[6] = v31;
  v32 = v66;
  *v29 = v65;
  v29[1] = v32;
  v33 = v68;
  v29[2] = v67;
  v29[3] = v33;
  v34 = AccessibilityIdentifier.privacyTermsAcceptButton.unsafeMutableAddressor();
  v35 = *v34;
  v36 = v34[1];
  v37 = v34[2];
  v38 = v34[3];
  v39 = sub_2BE254();

  v40 = v50;
  View.accessibilityIdentifier(_:)(v35, v36, v37, v38, v28, v39);
  sub_12E1C(v27, &qword_DFD2A8, &qword_B08930);

  v41 = v57;
  sub_15F84(v40, v57, &qword_DFD2B0, &qword_B08938);
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = v56;
  *(a2 + 24) = v51;
  *(a2 + 32) = v55;
  *(a2 + 40) = v52;
  v42 = v53;
  *(a2 + 48) = v54;
  *(a2 + 56) = v42;
  *(a2 + 64) = 256;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFD2E8, &qword_B08980);
  sub_15F84(v41, a2 + *(v43 + 64), &qword_DFD2B0, &qword_B08938);
  sub_12E1C(v40, &qword_DFD2B0, &qword_B08938);
  return sub_12E1C(v41, &qword_DFD2B0, &qword_B08938);
}

char *sub_2BD13C()
{
  type metadata accessor for JSPrivacyLinkViewModel();
  v0 = JSPrivacyLinkViewModel.__allocating_init(nativelyHandledPrivacyLinkIdentifier:)(0xD00000000000001FLL, 0x8000000000B5D500);
  v1 = objc_allocWithZone(type metadata accessor for JSPrivacyLinkViewController());
  return JSPrivacyLinkViewController.init(privacyLinkViewModel:)(v0);
}

uint64_t sub_2BD1E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2BE600();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_2BD248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2BE600();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_2BD2AC(uint64_t a1)
{
  sub_2BE600();
  sub_AB6970();
  __break(1u);
}

void sub_2BD334(void *a1)
{
  v4.receiver = a1;
  v4.super_class = swift_getObjectType();
  v1 = v4.receiver;
  objc_msgSendSuper2(&v4, "viewDidLoad");
  v2 = [v1 navigationController];
  if (v2)
  {
    v3 = v2;
    [v2 setModalInPresentation:1];

    v1 = v3;
  }
}

void sub_2BD3BC()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v16.origin.x = v4;
    v16.origin.y = v6;
    v16.size.width = v8;
    v16.size.height = v10;
    Width = CGRectGetWidth(v16);
    v12 = 16.0;
    if (Width >= 375.0)
    {
      v12 = 24.0;
    }

    if (Width < 400.0)
    {
      v13 = v12;
    }

    else
    {
      v13 = 44.0;
    }

    v17.origin.x = v4;
    v17.origin.y = v6;
    v17.size.width = v8;
    v17.size.height = v10;
    v14 = round(CGRectGetHeight(v17) * 0.09);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510(&v15);

    if (v15 != v13)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v15 = v13;

      sub_AB5520();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510(&v15);

    if (v15 != v14)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v15 = v14;

      sub_AB5520();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_2BD5DC(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "viewDidLayoutSubviews");
  sub_2BD3BC();
}

double sub_2BD694()
{
  sub_2BE4F8(v0 + qword_DFCF78);

  return result;
}

double sub_2BD6D4(uint64_t a1)
{
  sub_2BE4F8(a1 + qword_DFCF78);

  return result;
}

double sub_2BD770(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v3);

  return v3;
}

uint64_t sub_2BD7DC()
{
  v1 = OBJC_IVAR____TtC16MusicApplicationP33_2CCE33B8E3BB7BA60C22C97FF829B42717HostedEnvironment__horizontalInsets;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9C0, &qword_AFDB00);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC16MusicApplicationP33_2CCE33B8E3BB7BA60C22C97FF829B42717HostedEnvironment__topPadding, v2);

  return swift_deallocClassInstance();
}

void sub_2BD8DC(uint64_t a1)
{
  sub_363CC();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2BD980(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_AB2F20();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2BDA40(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_AB2F20();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2BDAE4(uint64_t a1)
{
  sub_E8550(319);
  if (v1 <= 0x3F)
  {
    sub_AB2F20();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2BDB8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WelcomeViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2BDC60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for WelcomeViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_2BDD3C(uint64_t a1)
{
  type metadata accessor for WelcomeViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_2BDDC0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2BDDC0(uint64_t a1)
{
  if (!qword_DFD208)
  {
    type metadata accessor for HostedEnvironment(255);
    sub_2BE0A0(&unk_DFD210, type metadata accessor for HostedEnvironment, &unk_B0885C);
    v1 = sub_AB5B80();
    if (!v2)
    {
      atomic_store(v1, &qword_DFD208);
    }
  }
}

uint64_t sub_2BDE70@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for HostedEnvironment(0);
  result = sub_AB54A0();
  *a1 = result;
  return result;
}

unint64_t sub_2BDEB8()
{
  result = qword_DFD258;
  if (!qword_DFD258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DFD250, &qword_B088A8);
    sub_2BDF44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFD258);
  }

  return result;
}

unint64_t sub_2BDF44()
{
  result = qword_DFD260;
  if (!qword_DFD260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DFD268, &qword_B088B0);
    sub_36A00(&qword_DFD270, &qword_DFD278, &qword_B088B8, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFD260);
  }

  return result;
}

unint64_t sub_2BE04C()
{
  result = qword_DFD2B8;
  if (!qword_DFD2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFD2B8);
  }

  return result;
}

uint64_t sub_2BE0A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_2BE0E8@<D0>(double *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v6);

  result = v6;
  *a4 = v6;
  return result;
}

uint64_t sub_2BE164(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_AB5520();
}

uint64_t sub_2BE1E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFD2A0, &qword_B08928);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2BE254()
{
  result = qword_DFD2D0;
  if (!qword_DFD2D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DFD2A8, &qword_B08930);
    sub_2BE2E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFD2D0);
  }

  return result;
}

unint64_t sub_2BE2E0()
{
  result = qword_DFD2D8;
  if (!qword_DFD2D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DFD2A0, &qword_B08928);
    sub_2BE36C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFD2D8);
  }

  return result;
}

unint64_t sub_2BE36C()
{
  result = qword_DFD2E0;
  if (!qword_DFD2E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DFD2C8, &unk_B08970);
    sub_AB6900();
    sub_2BE04C();
    sub_2BE0A0(&qword_DFD2C0, &type metadata accessor for BorderedProminentButtonStyle, &protocol conformance descriptor for BorderedProminentButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_36A00(&qword_DEB780, &qword_DEB788, &qword_AF9A50, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFD2E0);
  }

  return result;
}

uint64_t sub_2BE4F8(uint64_t a1)
{
  v2 = type metadata accessor for WelcomeViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2BE5AC()
{
  result = qword_DFD328;
  if (!qword_DFD328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFD328);
  }

  return result;
}

unint64_t sub_2BE600()
{
  result = qword_DFD330;
  if (!qword_DFD330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFD330);
  }

  return result;
}

uint64_t sub_2BE684(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v9 = &_swiftEmptySetSingleton;
  v5[26] = &_swiftEmptySetSingleton;
  v10 = sub_13C80(0, &qword_DE7500, UIViewController_ptr);
  v11 = WeakArray.init(_:)(_swiftEmptyArrayStorage, v10);
  v5[29] = 0;
  v5[30] = 0;
  v5[28] = v11;
  if (_swiftEmptyArrayStorage >> 62 && sub_ABB060())
  {
    sub_10DBC(_swiftEmptyArrayStorage);
    v9 = v22;
  }

  v5[31] = v9;
  v12 = *(a3 + 16);
  if (v12)
  {
    v23 = a1;
    v13 = a5;
    sub_6D450(0, v12, 0);
    v14 = (a3 + 32);
    v15 = _swiftEmptyArrayStorage[2];
    do
    {
      v16 = *v14;
      v17 = _swiftEmptyArrayStorage[3];
      if (v15 >= v17 >> 1)
      {
        sub_6D450((v17 > 1), v15 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v15 + 1;
      _swiftEmptyArrayStorage[v15 + 4] = v16;
      ++v14;
      ++v15;
      --v12;
    }

    while (v12);
    a5 = v13;
    a1 = v23;
  }

  v18 = sub_2F3560(_swiftEmptyArrayStorage);

  v5[27] = v18;
  v19 = a1;
  v20 = a5();
  *&v19[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_delegate + 8] = &off_CF2C30;
  swift_unknownObjectWeakAssign();

  return v20;
}

void *sub_2BE860(void *a1, void *a2, char a3, char a4)
{
  *(v4 + 80) = 0;
  type metadata accessor for ImpressionsBagCoordinator();
  *(v4 + 88) = swift_initStaticObject();
  swift_unknownObjectWeakInit();
  *(v4 + 104) = sub_95FF8(_swiftEmptyArrayStorage);
  *(v4 + 112) = sub_9600C(_swiftEmptyArrayStorage);
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  *(v4 + 168) = 1;
  *(v4 + 176) = 0;
  *(v4 + 184) = 0;
  *(v4 + 192) = 1;
  *(v4 + 200) = 0x3F9999999999999ALL;
  swift_unknownObjectWeakAssign();
  *(v4 + 81) = a4;
  v9 = sub_12E61C();
  swift_unknownObjectWeakAssign();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = objc_allocWithZone(ScrollViewContentOffsetObserver);
  v19[4] = sub_2E47BC;
  v19[5] = v10;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_2DDCF4;
  v19[3] = &block_descriptor_472;
  v12 = _Block_copy(v19);

  v13 = a2;

  v14 = [v11 initWithScrollView:v13 changeHandler:v12];
  _Block_release(v12);

  v15 = v9[15];
  v9[15] = v14;

  v16 = swift_allocObject();
  swift_weakInit();
  v17 = UIApplicationDidBecomeActiveNotification;

  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v9[17] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v17, 0, 1, 1, sub_2E4948, v16);

  if (a3)
  {
    swift_allocObject();

    v9[16] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UIApplicationWillResignActiveNotification, 0, 1, 1, sub_2E36B0, v9);

    if ((a4 & 1) == 0)
    {
      return v9;
    }

    goto LABEL_5;
  }

  if (a4)
  {
LABEL_5:
    swift_beginAccess();
    v9[19] = &_swiftEmptySetSingleton;
  }

  return v9;
}

void *sub_2BEB90(void *a1, void *a2, char a3, char a4)
{
  *(v4 + 80) = 0;
  type metadata accessor for ImpressionsBagCoordinator();
  *(v4 + 88) = swift_initStaticObject();
  swift_unknownObjectWeakInit();
  *(v4 + 104) = sub_96030(_swiftEmptyArrayStorage);
  *(v4 + 112) = sub_96044(_swiftEmptyArrayStorage);
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  *(v4 + 168) = 1;
  *(v4 + 176) = 0;
  *(v4 + 184) = 0;
  *(v4 + 192) = 1;
  *(v4 + 200) = 0x3F9999999999999ALL;
  swift_unknownObjectWeakAssign();
  *(v4 + 81) = a4;
  v9 = sub_12E61C();
  swift_unknownObjectWeakAssign();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = objc_allocWithZone(ScrollViewContentOffsetObserver);
  v19[4] = sub_2E47BC;
  v19[5] = v10;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_2DDCF4;
  v19[3] = &block_descriptor_270;
  v12 = _Block_copy(v19);

  v13 = a2;

  v14 = [v11 initWithScrollView:v13 changeHandler:v12];
  _Block_release(v12);

  v15 = v9[15];
  v9[15] = v14;

  v16 = swift_allocObject();
  swift_weakInit();
  v17 = UIApplicationDidBecomeActiveNotification;

  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v9[17] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v17, 0, 1, 1, sub_2E4948, v16);

  if (a3)
  {
    swift_allocObject();

    v9[16] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UIApplicationWillResignActiveNotification, 0, 1, 1, sub_2E2924, v9);

    if ((a4 & 1) == 0)
    {
      return v9;
    }

    goto LABEL_5;
  }

  if (a4)
  {
LABEL_5:
    swift_beginAccess();
    v9[19] = &_swiftEmptySetSingleton;
  }

  return v9;
}

void *sub_2BEEC0(void *a1, void *a2, char a3, char a4)
{
  *(v4 + 80) = 0;
  type metadata accessor for ImpressionsBagCoordinator();
  *(v4 + 88) = swift_initStaticObject();
  swift_unknownObjectWeakInit();
  *(v4 + 104) = sub_96248(_swiftEmptyArrayStorage);
  *(v4 + 112) = sub_9625C(_swiftEmptyArrayStorage);
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  *(v4 + 168) = 1;
  *(v4 + 176) = 0;
  *(v4 + 184) = 0;
  *(v4 + 192) = 1;
  *(v4 + 200) = 0x3F9999999999999ALL;
  swift_unknownObjectWeakAssign();
  *(v4 + 81) = a4;
  v9 = sub_12E61C();
  swift_unknownObjectWeakAssign();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = objc_allocWithZone(ScrollViewContentOffsetObserver);
  v19[4] = sub_2E47BC;
  v19[5] = v10;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_2DDCF4;
  v19[3] = &block_descriptor_543;
  v12 = _Block_copy(v19);

  v13 = a2;

  v14 = [v11 initWithScrollView:v13 changeHandler:v12];
  _Block_release(v12);

  v15 = v9[15];
  v9[15] = v14;

  v16 = swift_allocObject();
  swift_weakInit();
  v17 = UIApplicationDidBecomeActiveNotification;

  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v9[17] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v17, 0, 1, 1, sub_2E4948, v16);

  if (a3)
  {
    swift_allocObject();

    v9[16] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UIApplicationWillResignActiveNotification, 0, 1, 1, sub_2E3C04, v9);

    if ((a4 & 1) == 0)
    {
      return v9;
    }

    goto LABEL_5;
  }

  if (a4)
  {
LABEL_5:
    swift_beginAccess();
    v9[19] = &_swiftEmptySetSingleton;
  }

  return v9;
}

void *sub_2BF1F0(void *a1, void *a2, char a3, char a4)
{
  *(v4 + 80) = 0;
  type metadata accessor for ImpressionsBagCoordinator();
  *(v4 + 88) = swift_initStaticObject();
  swift_unknownObjectWeakInit();
  *(v4 + 104) = sub_96280(_swiftEmptyArrayStorage);
  *(v4 + 112) = sub_96294(_swiftEmptyArrayStorage);
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  *(v4 + 168) = 1;
  *(v4 + 176) = 0;
  *(v4 + 184) = 0;
  *(v4 + 192) = 1;
  *(v4 + 200) = 0x3F9999999999999ALL;
  swift_unknownObjectWeakAssign();
  *(v4 + 81) = a4;
  v9 = sub_12E61C();
  swift_unknownObjectWeakAssign();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = objc_allocWithZone(ScrollViewContentOffsetObserver);
  v19[4] = sub_2E47BC;
  v19[5] = v10;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_2DDCF4;
  v19[3] = &block_descriptor_577;
  v12 = _Block_copy(v19);

  v13 = a2;

  v14 = [v11 initWithScrollView:v13 changeHandler:v12];
  _Block_release(v12);

  v15 = v9[15];
  v9[15] = v14;

  v16 = swift_allocObject();
  swift_weakInit();
  v17 = UIApplicationDidBecomeActiveNotification;

  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v9[17] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v17, 0, 1, 1, sub_2E4948, v16);

  if (a3)
  {
    swift_allocObject();

    v9[16] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UIApplicationWillResignActiveNotification, 0, 1, 1, sub_2E3F10, v9);

    if ((a4 & 1) == 0)
    {
      return v9;
    }

    goto LABEL_5;
  }

  if (a4)
  {
LABEL_5:
    swift_beginAccess();
    v9[19] = &_swiftEmptySetSingleton;
  }

  return v9;
}

void *sub_2BF520(void *a1, void *a2, char a3, char a4)
{
  *(v4 + 80) = 0;
  type metadata accessor for ImpressionsBagCoordinator();
  *(v4 + 88) = swift_initStaticObject();
  swift_unknownObjectWeakInit();
  *(v4 + 104) = sub_962B8(_swiftEmptyArrayStorage);
  *(v4 + 112) = sub_962CC(_swiftEmptyArrayStorage);
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  *(v4 + 168) = 1;
  *(v4 + 176) = 0;
  *(v4 + 184) = 0;
  *(v4 + 192) = 1;
  *(v4 + 200) = 0x3F9999999999999ALL;
  swift_unknownObjectWeakAssign();
  *(v4 + 81) = a4;
  v9 = sub_12E61C();
  swift_unknownObjectWeakAssign();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = objc_allocWithZone(ScrollViewContentOffsetObserver);
  v19[4] = sub_2E47BC;
  v19[5] = v10;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_2DDCF4;
  v19[3] = &block_descriptor_613;
  v12 = _Block_copy(v19);

  v13 = a2;

  v14 = [v11 initWithScrollView:v13 changeHandler:v12];
  _Block_release(v12);

  v15 = v9[15];
  v9[15] = v14;

  v16 = swift_allocObject();
  swift_weakInit();
  v17 = UIApplicationDidBecomeActiveNotification;

  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v9[17] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v17, 0, 1, 1, sub_2E4948, v16);

  if (a3)
  {
    swift_allocObject();

    v9[16] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UIApplicationWillResignActiveNotification, 0, 1, 1, sub_2E42FC, v9);

    if ((a4 & 1) == 0)
    {
      return v9;
    }

    goto LABEL_5;
  }

  if (a4)
  {
LABEL_5:
    swift_beginAccess();
    v9[19] = &_swiftEmptySetSingleton;
  }

  return v9;
}

void *sub_2BF850(void *a1, void *a2, char a3, char a4)
{
  *(v4 + 80) = 0;
  type metadata accessor for ImpressionsBagCoordinator();
  *(v4 + 88) = swift_initStaticObject();
  swift_unknownObjectWeakInit();
  *(v4 + 104) = sub_962F0(_swiftEmptyArrayStorage);
  *(v4 + 112) = sub_96304(_swiftEmptyArrayStorage);
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  *(v4 + 168) = 1;
  *(v4 + 176) = 0;
  *(v4 + 184) = 0;
  *(v4 + 192) = 1;
  *(v4 + 200) = 0x3F9999999999999ALL;
  swift_unknownObjectWeakAssign();
  *(v4 + 81) = a4;
  v9 = sub_12E61C();
  swift_unknownObjectWeakAssign();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = objc_allocWithZone(ScrollViewContentOffsetObserver);
  v19[4] = sub_2E47BC;
  v19[5] = v10;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_2DDCF4;
  v19[3] = &block_descriptor_306;
  v12 = _Block_copy(v19);

  v13 = a2;

  v14 = [v11 initWithScrollView:v13 changeHandler:v12];
  _Block_release(v12);

  v15 = v9[15];
  v9[15] = v14;

  v16 = swift_allocObject();
  swift_weakInit();
  v17 = UIApplicationDidBecomeActiveNotification;

  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v9[17] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v17, 0, 1, 1, sub_2E4948, v16);

  if (a3)
  {
    swift_allocObject();

    v9[16] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UIApplicationWillResignActiveNotification, 0, 1, 1, sub_2E2B80, v9);

    if ((a4 & 1) == 0)
    {
      return v9;
    }

    goto LABEL_5;
  }

  if (a4)
  {
LABEL_5:
    swift_beginAccess();
    v9[19] = &_swiftEmptySetSingleton;
  }

  return v9;
}

void *sub_2BFB80(void *a1, void *a2, char a3, char a4)
{
  *(v4 + 80) = 0;
  type metadata accessor for ImpressionsBagCoordinator();
  *(v4 + 88) = swift_initStaticObject();
  swift_unknownObjectWeakInit();
  *(v4 + 104) = sub_96328(_swiftEmptyArrayStorage);
  *(v4 + 112) = sub_9633C(_swiftEmptyArrayStorage);
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  *(v4 + 168) = 1;
  *(v4 + 176) = 0;
  *(v4 + 184) = 0;
  *(v4 + 192) = 1;
  *(v4 + 200) = 0x3F9999999999999ALL;
  swift_unknownObjectWeakAssign();
  *(v4 + 81) = a4;
  v9 = sub_12E61C();
  swift_unknownObjectWeakAssign();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = objc_allocWithZone(ScrollViewContentOffsetObserver);
  v19[4] = sub_2E2E8C;
  v19[5] = v10;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_2DDCF4;
  v19[3] = &block_descriptor_343;
  v12 = _Block_copy(v19);

  v13 = a2;

  v14 = [v11 initWithScrollView:v13 changeHandler:v12];
  _Block_release(v12);

  v15 = v9[15];
  v9[15] = v14;

  v16 = swift_allocObject();
  swift_weakInit();
  v17 = UIApplicationDidBecomeActiveNotification;

  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v9[17] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v17, 0, 1, 1, sub_2E2EA8, v16);

  if (a3)
  {
    swift_allocObject();

    v9[16] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UIApplicationWillResignActiveNotification, 0, 1, 1, sub_2E2EC4, v9);

    if ((a4 & 1) == 0)
    {
      return v9;
    }

    goto LABEL_5;
  }

  if (a4)
  {
LABEL_5:
    swift_beginAccess();
    v9[19] = &_swiftEmptySetSingleton;
  }

  return v9;
}

void *sub_2BFEB0(void *a1, void *a2, char a3, char a4)
{
  *(v4 + 80) = 0;
  type metadata accessor for ImpressionsBagCoordinator();
  *(v4 + 88) = swift_initStaticObject();
  swift_unknownObjectWeakInit();
  *(v4 + 104) = sub_96360(_swiftEmptyArrayStorage);
  *(v4 + 112) = sub_96374(_swiftEmptyArrayStorage);
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  *(v4 + 168) = 1;
  *(v4 + 176) = 0;
  *(v4 + 184) = 0;
  *(v4 + 192) = 1;
  *(v4 + 200) = 0x3F9999999999999ALL;
  swift_unknownObjectWeakAssign();
  *(v4 + 81) = a4;
  v9 = sub_12E61C();
  swift_unknownObjectWeakAssign();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = objc_allocWithZone(ScrollViewContentOffsetObserver);
  v19[4] = sub_2E47BC;
  v19[5] = v10;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_2DDCF4;
  v19[3] = &block_descriptor_380;
  v12 = _Block_copy(v19);

  v13 = a2;

  v14 = [v11 initWithScrollView:v13 changeHandler:v12];
  _Block_release(v12);

  v15 = v9[15];
  v9[15] = v14;

  v16 = swift_allocObject();
  swift_weakInit();
  v17 = UIApplicationDidBecomeActiveNotification;

  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v9[17] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v17, 0, 1, 1, sub_2E4948, v16);

  if (a3)
  {
    swift_allocObject();

    v9[16] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UIApplicationWillResignActiveNotification, 0, 1, 1, sub_2E3150, v9);

    if ((a4 & 1) == 0)
    {
      return v9;
    }

    goto LABEL_5;
  }

  if (a4)
  {
LABEL_5:
    swift_beginAccess();
    v9[19] = &_swiftEmptySetSingleton;
  }

  return v9;
}

void *sub_2C01E0(void *a1, void *a2, char a3, char a4)
{
  *(v4 + 80) = 0;
  type metadata accessor for ImpressionsBagCoordinator();
  *(v4 + 88) = swift_initStaticObject();
  swift_unknownObjectWeakInit();
  *(v4 + 104) = sub_96398(_swiftEmptyArrayStorage);
  *(v4 + 112) = sub_963AC(_swiftEmptyArrayStorage);
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  *(v4 + 168) = 1;
  *(v4 + 176) = 0;
  *(v4 + 184) = 0;
  *(v4 + 192) = 1;
  *(v4 + 200) = 0x3F9999999999999ALL;
  swift_unknownObjectWeakAssign();
  *(v4 + 81) = a4;
  v9 = sub_12E61C();
  swift_unknownObjectWeakAssign();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = objc_allocWithZone(ScrollViewContentOffsetObserver);
  v19[4] = sub_2E47BC;
  v19[5] = v10;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_2DDCF4;
  v19[3] = &block_descriptor_319;
  v12 = _Block_copy(v19);

  v13 = a2;

  v14 = [v11 initWithScrollView:v13 changeHandler:v12];
  _Block_release(v12);

  v15 = v9[15];
  v9[15] = v14;

  v16 = swift_allocObject();
  swift_weakInit();
  v17 = UIApplicationDidBecomeActiveNotification;

  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v9[17] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v17, 0, 1, 1, sub_2E4948, v16);

  if (a3)
  {
    swift_allocObject();

    v9[16] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UIApplicationWillResignActiveNotification, 0, 1, 1, sub_2E2CCC, v9);

    if ((a4 & 1) == 0)
    {
      return v9;
    }

    goto LABEL_5;
  }

  if (a4)
  {
LABEL_5:
    swift_beginAccess();
    v9[19] = &_swiftEmptySetSingleton;
  }

  return v9;
}

void *sub_2C0510(void *a1, void *a2, char a3, char a4)
{
  *(v4 + 80) = 0;
  type metadata accessor for ImpressionsBagCoordinator();
  *(v4 + 88) = swift_initStaticObject();
  swift_unknownObjectWeakInit();
  *(v4 + 104) = sub_963D0(_swiftEmptyArrayStorage);
  *(v4 + 112) = sub_963E4(_swiftEmptyArrayStorage);
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  *(v4 + 168) = 1;
  *(v4 + 176) = 0;
  *(v4 + 184) = 0;
  *(v4 + 192) = 1;
  *(v4 + 200) = 0x3F9999999999999ALL;
  swift_unknownObjectWeakAssign();
  *(v4 + 81) = a4;
  v9 = sub_12E61C();
  swift_unknownObjectWeakAssign();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = objc_allocWithZone(ScrollViewContentOffsetObserver);
  v19[4] = sub_2E47BC;
  v19[5] = v10;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_2DDCF4;
  v19[3] = &block_descriptor_233;
  v12 = _Block_copy(v19);

  v13 = a2;

  v14 = [v11 initWithScrollView:v13 changeHandler:v12];
  _Block_release(v12);

  v15 = v9[15];
  v9[15] = v14;

  v16 = swift_allocObject();
  swift_weakInit();
  v17 = UIApplicationDidBecomeActiveNotification;

  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v9[17] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v17, 0, 1, 1, sub_2E4948, v16);

  if (a3)
  {
    swift_allocObject();

    v9[16] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UIApplicationWillResignActiveNotification, 0, 1, 1, sub_2E26E8, v9);

    if ((a4 & 1) == 0)
    {
      return v9;
    }

    goto LABEL_5;
  }

  if (a4)
  {
LABEL_5:
    swift_beginAccess();
    v9[19] = &_swiftEmptySetSingleton;
  }

  return v9;
}

void *sub_2C0840(void *a1, void *a2, char a3, char a4)
{
  *(v4 + 80) = 0;
  type metadata accessor for ImpressionsBagCoordinator();
  *(v4 + 88) = swift_initStaticObject();
  swift_unknownObjectWeakInit();
  *(v4 + 104) = sub_96408(_swiftEmptyArrayStorage);
  *(v4 + 112) = sub_9641C(_swiftEmptyArrayStorage);
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  *(v4 + 168) = 1;
  *(v4 + 176) = 0;
  *(v4 + 184) = 0;
  *(v4 + 192) = 1;
  *(v4 + 200) = 0x3F9999999999999ALL;
  swift_unknownObjectWeakAssign();
  *(v4 + 81) = a4;
  v9 = sub_12E61C();
  swift_unknownObjectWeakAssign();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = objc_allocWithZone(ScrollViewContentOffsetObserver);
  v19[4] = sub_2E47BC;
  v19[5] = v10;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_2DDCF4;
  v19[3] = &block_descriptor_531;
  v12 = _Block_copy(v19);

  v13 = a2;

  v14 = [v11 initWithScrollView:v13 changeHandler:v12];
  _Block_release(v12);

  v15 = v9[15];
  v9[15] = v14;

  v16 = swift_allocObject();
  swift_weakInit();
  v17 = UIApplicationDidBecomeActiveNotification;

  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v9[17] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v17, 0, 1, 1, sub_2E4948, v16);

  if (a3)
  {
    swift_allocObject();

    v9[16] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UIApplicationWillResignActiveNotification, 0, 1, 1, sub_2E3AB8, v9);

    if ((a4 & 1) == 0)
    {
      return v9;
    }

    goto LABEL_5;
  }

  if (a4)
  {
LABEL_5:
    swift_beginAccess();
    v9[19] = &_swiftEmptySetSingleton;
  }

  return v9;
}

void *sub_2C0B70(void *a1, void *a2, char a3, char a4)
{
  *(v4 + 80) = 0;
  type metadata accessor for ImpressionsBagCoordinator();
  *(v4 + 88) = swift_initStaticObject();
  swift_unknownObjectWeakInit();
  *(v4 + 104) = sub_96430(_swiftEmptyArrayStorage);
  *(v4 + 112) = sub_96444(_swiftEmptyArrayStorage);
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  *(v4 + 168) = 1;
  *(v4 + 176) = 0;
  *(v4 + 184) = 0;
  *(v4 + 192) = 1;
  *(v4 + 200) = 0x3F9999999999999ALL;
  swift_unknownObjectWeakAssign();
  *(v4 + 81) = a4;
  v9 = sub_12E61C();
  swift_unknownObjectWeakAssign();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = objc_allocWithZone(ScrollViewContentOffsetObserver);
  v19[4] = sub_2E47BC;
  v19[5] = v10;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_2DDCF4;
  v19[3] = &block_descriptor_565;
  v12 = _Block_copy(v19);

  v13 = a2;

  v14 = [v11 initWithScrollView:v13 changeHandler:v12];
  _Block_release(v12);

  v15 = v9[15];
  v9[15] = v14;

  v16 = swift_allocObject();
  swift_weakInit();
  v17 = UIApplicationDidBecomeActiveNotification;

  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v9[17] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v17, 0, 1, 1, sub_2E4948, v16);

  if (a3)
  {
    swift_allocObject();

    v9[16] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UIApplicationWillResignActiveNotification, 0, 1, 1, sub_2E3DC4, v9);

    if ((a4 & 1) == 0)
    {
      return v9;
    }

    goto LABEL_5;
  }

  if (a4)
  {
LABEL_5:
    swift_beginAccess();
    v9[19] = &_swiftEmptySetSingleton;
  }

  return v9;
}

void *sub_2C0EA0(void *a1, void *a2, char a3, char a4)
{
  *(v4 + 80) = 0;
  type metadata accessor for ImpressionsBagCoordinator();
  *(v4 + 88) = swift_initStaticObject();
  swift_unknownObjectWeakInit();
  *(v4 + 104) = sub_96468(_swiftEmptyArrayStorage);
  *(v4 + 112) = sub_9647C(_swiftEmptyArrayStorage);
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  *(v4 + 168) = 1;
  *(v4 + 176) = 0;
  *(v4 + 184) = 0;
  *(v4 + 192) = 1;
  *(v4 + 200) = 0x3F9999999999999ALL;
  swift_unknownObjectWeakAssign();
  *(v4 + 81) = a4;
  v9 = sub_12E61C();
  swift_unknownObjectWeakAssign();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = objc_allocWithZone(ScrollViewContentOffsetObserver);
  v19[4] = sub_2E47BC;
  v19[5] = v10;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_2DDCF4;
  v19[3] = &block_descriptor_509;
  v12 = _Block_copy(v19);

  v13 = a2;

  v14 = [v11 initWithScrollView:v13 changeHandler:v12];
  _Block_release(v12);

  v15 = v9[15];
  v9[15] = v14;

  v16 = swift_allocObject();
  swift_weakInit();
  v17 = UIApplicationDidBecomeActiveNotification;

  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v9[17] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v17, 0, 1, 1, sub_2E4948, v16);

  if (a3)
  {
    swift_allocObject();

    v9[16] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UIApplicationWillResignActiveNotification, 0, 1, 1, sub_2E38F8, v9);

    if ((a4 & 1) == 0)
    {
      return v9;
    }

    goto LABEL_5;
  }

  if (a4)
  {
LABEL_5:
    swift_beginAccess();
    v9[19] = &_swiftEmptySetSingleton;
  }

  return v9;
}

void *sub_2C11D0(void *a1, void *a2, char a3, char a4)
{
  *(v4 + 80) = 0;
  type metadata accessor for ImpressionsBagCoordinator();
  *(v4 + 88) = swift_initStaticObject();
  swift_unknownObjectWeakInit();
  *(v4 + 104) = sub_96490(_swiftEmptyArrayStorage);
  *(v4 + 112) = sub_964A4(_swiftEmptyArrayStorage);
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  *(v4 + 168) = 1;
  *(v4 + 176) = 0;
  *(v4 + 184) = 0;
  *(v4 + 192) = 1;
  *(v4 + 200) = 0x3F9999999999999ALL;
  swift_unknownObjectWeakAssign();
  *(v4 + 81) = a4;
  v9 = sub_12E61C();
  swift_unknownObjectWeakAssign();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = objc_allocWithZone(ScrollViewContentOffsetObserver);
  v19[4] = sub_2E47BC;
  v19[5] = v10;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_2DDCF4;
  v19[3] = &block_descriptor_449;
  v12 = _Block_copy(v19);

  v13 = a2;

  v14 = [v11 initWithScrollView:v13 changeHandler:v12];
  _Block_release(v12);

  v15 = v9[15];
  v9[15] = v14;

  v16 = swift_allocObject();
  swift_weakInit();
  v17 = UIApplicationDidBecomeActiveNotification;

  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v9[17] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v17, 0, 1, 1, sub_2E4948, v16);

  if (a3)
  {
    swift_allocObject();

    v9[16] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UIApplicationWillResignActiveNotification, 0, 1, 1, sub_2E34F0, v9);

    if ((a4 & 1) == 0)
    {
      return v9;
    }

    goto LABEL_5;
  }

  if (a4)
  {
LABEL_5:
    swift_beginAccess();
    v9[19] = &_swiftEmptySetSingleton;
  }

  return v9;
}

void *sub_2C1500(void *a1, void *a2, char a3, char a4)
{
  *(v4 + 80) = 0;
  type metadata accessor for ImpressionsBagCoordinator();
  *(v4 + 88) = swift_initStaticObject();
  swift_unknownObjectWeakInit();
  *(v4 + 104) = sub_973F8(_swiftEmptyArrayStorage);
  *(v4 + 112) = sub_9740C(_swiftEmptyArrayStorage);
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  *(v4 + 168) = 1;
  *(v4 + 176) = 0;
  *(v4 + 184) = 0;
  *(v4 + 192) = 1;
  *(v4 + 200) = 0x3F9999999999999ALL;
  swift_unknownObjectWeakAssign();
  *(v4 + 81) = a4;
  v9 = sub_12E61C();
  swift_unknownObjectWeakAssign();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = objc_allocWithZone(ScrollViewContentOffsetObserver);
  v19[4] = sub_2E47BC;
  v19[5] = v10;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_2DDCF4;
  v19[3] = &block_descriptor_101;
  v12 = _Block_copy(v19);

  v13 = a2;

  v14 = [v11 initWithScrollView:v13 changeHandler:v12];
  _Block_release(v12);

  v15 = v9[15];
  v9[15] = v14;

  v16 = swift_allocObject();
  swift_weakInit();
  v17 = UIApplicationDidBecomeActiveNotification;

  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v9[17] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v17, 0, 1, 1, sub_2E4948, v16);

  if (a3)
  {
    swift_allocObject();

    v9[16] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UIApplicationWillResignActiveNotification, 0, 1, 1, sub_2E2218, v9);

    if ((a4 & 1) == 0)
    {
      return v9;
    }

    goto LABEL_5;
  }

  if (a4)
  {
LABEL_5:
    swift_beginAccess();
    v9[19] = &_swiftEmptySetSingleton;
  }

  return v9;
}

void *sub_2C1830(void *a1, void *a2, char a3, char a4)
{
  *(v4 + 80) = 0;
  type metadata accessor for ImpressionsBagCoordinator();
  *(v4 + 88) = swift_initStaticObject();
  swift_unknownObjectWeakInit();
  *(v4 + 104) = sub_97550(_swiftEmptyArrayStorage);
  *(v4 + 112) = sub_97564(_swiftEmptyArrayStorage);
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  *(v4 + 168) = 1;
  *(v4 + 176) = 0;
  *(v4 + 184) = 0;
  *(v4 + 192) = 1;
  *(v4 + 200) = 0x3F9999999999999ALL;
  swift_unknownObjectWeakAssign();
  *(v4 + 81) = a4;
  v9 = sub_12E61C();
  swift_unknownObjectWeakAssign();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = objc_allocWithZone(ScrollViewContentOffsetObserver);
  v19[4] = sub_2E47BC;
  v19[5] = v10;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_2DDCF4;
  v19[3] = &block_descriptor_210;
  v12 = _Block_copy(v19);

  v13 = a2;

  v14 = [v11 initWithScrollView:v13 changeHandler:v12];
  _Block_release(v12);

  v15 = v9[15];
  v9[15] = v14;

  v16 = swift_allocObject();
  swift_weakInit();
  v17 = UIApplicationDidBecomeActiveNotification;

  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v9[17] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v17, 0, 1, 1, sub_2E4948, v16);

  if (a3)
  {
    swift_allocObject();

    v9[16] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UIApplicationWillResignActiveNotification, 0, 1, 1, sub_2E2594, v9);

    if ((a4 & 1) == 0)
    {
      return v9;
    }

    goto LABEL_5;
  }

  if (a4)
  {
LABEL_5:
    swift_beginAccess();
    v9[19] = &_swiftEmptySetSingleton;
  }

  return v9;
}

void (*sub_2C1B60(void (*result)(__int128 *), uint64_t a2, uint64_t a3))(__int128 *)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 32); ; ++i)
    {
      v7 = *i;
      swift_unknownObjectRetain();
      v5(&v7);
      if (v3)
      {
        break;
      }

      result = swift_unknownObjectRelease();
      if (!--v4)
      {
        return result;
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_2C1BF8(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_ABAC10();
    type metadata accessor for ImpressionTracker();
    sub_2E3084();
    sub_AB9BC0();
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v20 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));

    if (v17)
    {
      while (1)
      {
        v26 = v17;
        a1(&v26);

        if (v4)
        {
          break;
        }

        v8 = v15;
        v9 = v16;
        v5 = v20;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!sub_ABAC90())
        {
          goto LABEL_19;
        }

        type metadata accessor for ImpressionTracker();
        swift_unknownObjectRetain();
        swift_dynamicCast();
        v17 = v26;
        swift_unknownObjectRelease();
        v15 = v8;
        v16 = v9;
        if (!v17)
        {
          goto LABEL_21;
        }
      }

      v18 = v20;
    }

    else
    {
LABEL_21:
      v5 = v20;
LABEL_19:
      v18 = v5;
    }

    sub_2BB88(v18);
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_2C1E14(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = a3 + 56;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 56);
  v8 = (v5 + 63) >> 6;
  v17 = a3;

  v9 = 0;
  if (v7)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:
      v11 = (*(v17 + 48) + 24 * (__clz(__rbit64(v7)) | (v10 << 6)));
      v12 = *v11;
      v13 = v11[1];
      v14 = v11[2];
      v16[0] = v12;
      v16[1] = v13;
      v16[2] = v14;
      sub_2BB90(v12, v13, v14);
      a1(v16);
      if (v3)
      {
        break;
      }

      v7 &= v7 - 1;
      sub_2BBCC(v12, v13, v14);
      v9 = v10;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

    sub_2BBCC(v12, v13, v14);
LABEL_12:
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v8)
      {
        goto LABEL_12;
      }

      v7 = *(v4 + 8 * v10);
      ++v9;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_2C1F68(char a1, double a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_6A8C4(0, *(v5 + 16) + 1, 1, v5);
    v5 = result;
  }

  v8 = *(v5 + 16);
  v7 = *(v5 + 24);
  if (v8 >= v7 >> 1)
  {
    result = sub_6A8C4((v7 > 1), v8 + 1, 1, v5);
    v5 = result;
  }

  *(v5 + 16) = v8 + 1;
  v9 = v5 + 16 * v8;
  *(v9 + 32) = a2;
  *(v9 + 40) = a1 & 1;
  *v2 = v5;
  return result;
}

void sub_2C2020()
{
  swift_beginAccess();
  *(v0 + 104) = _swiftEmptyDictionarySingleton;

  v1 = *(v0 + 32);
  v2 = *(v1 + 16);

  if (v2)
  {
    v3 = 0;
    v4 = (v1 + 40);
    while (v3 < *(v1 + 16))
    {
      ++v3;
      v5 = *v4;
      ObjectType = swift_getObjectType();
      v7 = *(v5 + 104);
      swift_unknownObjectRetain();
      v7(ObjectType, v5);
      swift_unknownObjectRelease();
      v4 += 2;
      if (v2 == v3)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }
}

uint64_t sub_2C2238(uint64_t a1, void (*a2)(void), uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), __n128 a6)
{
  v10 = v6;
  v12 = (a1 + 16);
  v13 = *(a1 + 88);
  if (*(a1 + 144))
  {
    v14 = *(a1 + 16);
  }

  else
  {
    v14 = 0;
  }

  if (*(a1 + 144))
  {
    v15 = *(a1 + 24);
  }

  else
  {
    v15 = 0;
  }

  if (v13)
  {
    v16 = (v13 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
    v14 = *v16;
    v15 = v16[1];
LABEL_10:

    goto LABEL_11;
  }

  if (v15)
  {
    goto LABEL_10;
  }

  *&v42 = *(a1 + 56);
  v14 = sub_ABB330();
  v15 = v37;
LABEL_11:
  swift_beginAccess();
  v17 = *(v10 + 104);
  if (*(v17 + 16))
  {

    v18 = sub_2EBF88(v14, v15);
    if (v19)
    {
      v20 = *(*(v17 + 56) + 8 * v18);

      goto LABEL_31;
    }
  }

  v21 = v12[7];
  v48 = v12[6];
  v49 = v21;
  *v50 = v12[8];
  *&v50[9] = *(v12 + 137);
  v22 = v12[3];
  v44 = v12[2];
  v45 = v22;
  v23 = v12[5];
  v46 = v12[4];
  v47 = v23;
  v24 = v12[1];
  v42 = *v12;
  v43 = v24;
  if (*(a1 + 184))
  {
    sub_465F4(&v42, v41);
    if (qword_DE6D70 != -1)
    {
      swift_once();
    }

    UnfairLock.locked<A>(_:)(a2);
    v25 = qword_E0A760;
  }

  else
  {
    v25 = *(a1 + 176);
    sub_465F4(&v42, v41);
  }

  v26 = v50[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v20 = swift_allocObject();
  v27 = v49;
  v28 = *v50;
  v29 = v47;
  *(v20 + 112) = v48;
  *(v20 + 128) = v27;
  *(v20 + 144) = v28;
  *(v20 + 153) = *&v50[9];
  v30 = v45;
  v31 = v46;
  v32 = v43;
  *(v20 + 48) = v44;
  *(v20 + 64) = v30;
  *(v20 + 192) = 513;
  *(v20 + 80) = v31;
  *(v20 + 96) = v29;
  *(v20 + 16) = v42;
  *(v20 + 32) = v32;
  *(v20 + 200) = _swiftEmptyArrayStorage;
  *(v20 + 176) = v25;
  *(v20 + 184) = 0;
  if (v26)
  {
    v33 = v42;
  }

  else
  {
    v33 = 0;
  }

  if (v26)
  {
    v34 = *(&v42 + 1);
  }

  else
  {
    v34 = 0;
  }

  if (*(&v46 + 1))
  {
    v33 = *(*(&v46 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
    v34 = *(*(&v46 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);
  }

  else if (!v34)
  {
    v41[0] = *(&v44 + 1);

    v33 = sub_ABB330();
    v34 = v38;
    goto LABEL_30;
  }

LABEL_30:
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = *(v10 + 104);
  *(v10 + 104) = 0x8000000000000000;
  a5(v20, v33, v34, isUniquelyReferenced_nonNull_native);

  *(v10 + 104) = v40;
  swift_endAccess();
LABEL_31:
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    *(v20 + 184) = *(v10 + 64);
    *(v20 + 192) = 0;
  }

  return v20;
}

uint64_t sub_2C2590(uint64_t a1, void (*a2)(void), uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), __n128 a6)
{
  v10 = v6;
  v12 = (a1 + 16);
  v13 = *(a1 + 88);
  if (*(a1 + 144))
  {
    v14 = *(a1 + 16);
  }

  else
  {
    v14 = 0;
  }

  if (*(a1 + 144))
  {
    v15 = *(a1 + 24);
  }

  else
  {
    v15 = 0;
  }

  if (v13)
  {
    v16 = (v13 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
    v14 = *v16;
    v15 = v16[1];
LABEL_10:

    goto LABEL_11;
  }

  if (v15)
  {
    goto LABEL_10;
  }

  *&v42 = *(a1 + 56);
  v14 = sub_ABB330();
  v15 = v37;
LABEL_11:
  swift_beginAccess();
  v17 = *(v10 + 104);
  if (*(v17 + 16))
  {

    v18 = sub_2EBF88(v14, v15);
    if (v19)
    {
      v20 = *(*(v17 + 56) + 8 * v18);

      goto LABEL_31;
    }
  }

  v21 = v12[7];
  v48 = v12[6];
  v49 = v21;
  *v50 = v12[8];
  *&v50[9] = *(v12 + 137);
  v22 = v12[3];
  v44 = v12[2];
  v45 = v22;
  v23 = v12[5];
  v46 = v12[4];
  v47 = v23;
  v24 = v12[1];
  v42 = *v12;
  v43 = v24;
  if (*(a1 + 184))
  {
    sub_465F4(&v42, v41);
    if (qword_DE6D70 != -1)
    {
      swift_once();
    }

    UnfairLock.locked<A>(_:)(a2);
    v25 = qword_E0A760;
  }

  else
  {
    v25 = *(a1 + 176);
    sub_465F4(&v42, v41);
  }

  v26 = v50[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v20 = swift_allocObject();
  v27 = v49;
  v28 = *v50;
  v29 = v47;
  *(v20 + 112) = v48;
  *(v20 + 128) = v27;
  *(v20 + 144) = v28;
  *(v20 + 153) = *&v50[9];
  v30 = v45;
  v31 = v46;
  v32 = v43;
  *(v20 + 48) = v44;
  *(v20 + 64) = v30;
  *(v20 + 192) = 513;
  *(v20 + 80) = v31;
  *(v20 + 96) = v29;
  *(v20 + 16) = v42;
  *(v20 + 32) = v32;
  *(v20 + 200) = _swiftEmptyArrayStorage;
  *(v20 + 176) = v25;
  *(v20 + 184) = 0;
  if (v26)
  {
    v33 = v42;
  }

  else
  {
    v33 = 0;
  }

  if (v26)
  {
    v34 = *(&v42 + 1);
  }

  else
  {
    v34 = 0;
  }

  if (*(&v46 + 1))
  {
    v33 = *(*(&v46 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
    v34 = *(*(&v46 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);
  }

  else if (!v34)
  {
    v41[0] = *(&v44 + 1);

    v33 = sub_ABB330();
    v34 = v38;
    goto LABEL_30;
  }

LABEL_30:
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = *(v10 + 104);
  *(v10 + 104) = 0x8000000000000000;
  a5(v20, v33, v34, isUniquelyReferenced_nonNull_native);

  *(v10 + 104) = v40;
  swift_endAccess();
LABEL_31:
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    *(v20 + 184) = *(v10 + 64);
    *(v20 + 192) = 0;
  }

  return v20;
}

void sub_2C28E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v63 = a2;
  v5 = sub_AB3430();
  v64 = *(v5 - 8);
  v65 = v5;
  __chkstk_darwin();
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v9 = &v60 - v8;
  v10 = sub_AB3820();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_15F84(a1, v9, &unk_DE8E20, &qword_AF7990);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_12E1C(v9, &unk_DE8E20, &qword_AF7990);
    return;
  }

  (*(v11 + 32))(v13, v9, v10);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_48;
  }

  v15 = Strong;
  sub_28C480(v68);

  v76 = v68[6];
  v77 = v68[7];
  *v78 = v69[0];
  *&v78[9] = *(v69 + 9);
  v72 = v68[2];
  v73 = v68[3];
  v74 = v68[4];
  v75 = v68[5];
  v70 = v68[0];
  v71 = v68[1];
  if (sub_A996C(&v70) == 1)
  {
    goto LABEL_48;
  }

  v85 = v76;
  v86 = v77;
  v87[0] = *v78;
  *(v87 + 9) = *&v78[9];
  v81 = v72;
  v82 = v73;
  v83 = v74;
  v84 = v75;
  v79 = v70;
  v80 = v71;
  v61 = v78[0];
  if (v78[0])
  {
    v16 = v70;
  }

  else
  {
    v16 = 0;
  }

  if (v78[0])
  {
    v17 = *(&v70 + 1);
  }

  else
  {
    v17 = 0;
  }

  v18 = *(&v83 + 1);
  if (*(&v83 + 1))
  {
    v16 = *(*(&v83 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
    v17 = *(*(&v83 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);
LABEL_14:

    goto LABEL_15;
  }

  if (v17)
  {
    goto LABEL_14;
  }

  v67[0] = *(&v81 + 1);
  v16 = sub_ABB330();
  v17 = v57;
LABEL_15:
  swift_beginAccess();
  v62 = v3;
  if (*(*(v3 + 104) + 16))
  {

    sub_2EBF88(v16, v17);
    if (v19)
    {

      sub_12E1C(v68, qword_DF1340, &unk_B07BD0);

LABEL_48:
      (*(v11 + 8))(v13, v10);
      return;
    }
  }

  v20 = v62;
  swift_beginAccess();
  v21 = *(v20 + 112);
  if (!*(v21 + 16))
  {
LABEL_27:
    sub_465F4(&v79, v67);
    if (qword_DE6D70 != -1)
    {
      swift_once();
    }

    v60 = v18;
    UnfairLock.locked<A>(_:)(sub_13303C);
    v36 = qword_E0A760;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFDEB0, &qword_B08CF8);
    v37 = swift_allocObject();
    *(v37 + 192) = 513;
    v38 = v86;
    *(v37 + 112) = v85;
    *(v37 + 128) = v38;
    *(v37 + 144) = v87[0];
    *(v37 + 153) = *(v87 + 9);
    v39 = v82;
    *(v37 + 48) = v81;
    *(v37 + 64) = v39;
    v40 = v84;
    *(v37 + 80) = v83;
    *(v37 + 96) = v40;
    v41 = v80;
    *(v37 + 16) = v79;
    *(v37 + 32) = v41;
    *(v37 + 200) = _swiftEmptyArrayStorage;
    v42 = (v37 + 200);
    *(v37 + 176) = v36;
    *(v37 + 184) = 0;
    v43 = v62;
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      *(v37 + 184) = *(v43 + 64);
      *(v37 + 192) = 0;
    }

    v44 = v64;
    v45 = v65;
    (*(v64 + 16))(v7, v63, v65);
    sub_AB33D0();
    v47 = v46;
    (*(v44 + 8))(v7, v45);
    swift_beginAccess();
    v48 = *v42;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v42 = v48;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v48 = sub_6A7FC(0, *(v48 + 2) + 1, 1, v48);
      *v42 = v48;
    }

    v50 = v60;
    v52 = *(v48 + 2);
    v51 = *(v48 + 3);
    if (v52 >= v51 >> 1)
    {
      v48 = sub_6A7FC((v51 > 1), v52 + 1, 1, v48);
    }

    *(v48 + 2) = v52 + 1;
    v53 = &v48[16 * v52];
    *(v53 + 4) = v47;
    v53[40] = 0;
    *v42 = v48;
    swift_endAccess();
    if (v61)
    {
      v54 = v79;
    }

    else
    {
      v54 = 0;
    }

    if (v61)
    {
      v55 = *(&v79 + 1);
    }

    else
    {
      v55 = 0;
    }

    if (v50)
    {
      v54 = *(v50 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
      v55 = *(v50 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);

      v56 = v62;
    }

    else
    {
      v56 = v62;
      if (v55)
      {
      }

      else
      {
        v67[0] = *(&v81 + 1);
        v54 = sub_ABB330();
        v55 = v58;
      }
    }

    swift_beginAccess();

    v59 = swift_isUniquelyReferenced_nonNull_native();
    v66 = *(v56 + 104);
    *(v56 + 104) = 0x8000000000000000;
    sub_9150C(v37, v54, v55, v59);

    *(v56 + 104) = v66;
    swift_endAccess();

    sub_12E1C(v68, qword_DF1340, &unk_B07BD0);
    goto LABEL_48;
  }

  v22 = sub_2EC048(v13);
  if ((v23 & 1) == 0)
  {

    goto LABEL_27;
  }

  v24 = *(*(v21 + 56) + 8 * v22);

  v26 = sub_2C2238(v24, sub_13303C, &unk_DFDEB0, &qword_B08CF8, sub_9150C, v25);
  v27 = v64;
  v28 = v65;
  (*(v64 + 16))(v7, v63, v65);
  sub_AB33D0();
  v30 = v29;
  (*(v27 + 8))(v7, v28);
  swift_beginAccess();
  v31 = *(v26 + 200);
  v32 = swift_isUniquelyReferenced_nonNull_native();
  *(v26 + 200) = v31;
  if ((v32 & 1) == 0)
  {
    v31 = sub_6A7FC(0, *(v31 + 2) + 1, 1, v31);
    *(v26 + 200) = v31;
  }

  v34 = *(v31 + 2);
  v33 = *(v31 + 3);
  if (v34 >= v33 >> 1)
  {
    v31 = sub_6A7FC((v33 > 1), v34 + 1, 1, v31);
  }

  *(v31 + 2) = v34 + 1;
  v35 = &v31[16 * v34];
  *(v35 + 4) = v30;
  v35[40] = 0;
  *(v26 + 200) = v31;
  swift_endAccess();
  sub_12E1C(v68, qword_DF1340, &unk_B07BD0);
  (*(v11 + 8))(v13, v10);
}

void sub_2C3170(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v63 = a2;
  v5 = sub_AB3430();
  v64 = *(v5 - 8);
  v65 = v5;
  __chkstk_darwin();
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v9 = &v60 - v8;
  v10 = sub_AB3820();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_15F84(a1, v9, &unk_DE8E20, &qword_AF7990);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_12E1C(v9, &unk_DE8E20, &qword_AF7990);
    return;
  }

  (*(v11 + 32))(v13, v9, v10);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_48;
  }

  v15 = Strong;
  sub_4B2998(v68);

  v76 = v68[6];
  v77 = v68[7];
  *v78 = v69[0];
  *&v78[9] = *(v69 + 9);
  v72 = v68[2];
  v73 = v68[3];
  v74 = v68[4];
  v75 = v68[5];
  v70 = v68[0];
  v71 = v68[1];
  if (sub_A996C(&v70) == 1)
  {
    goto LABEL_48;
  }

  v85 = v76;
  v86 = v77;
  v87[0] = *v78;
  *(v87 + 9) = *&v78[9];
  v81 = v72;
  v82 = v73;
  v83 = v74;
  v84 = v75;
  v79 = v70;
  v80 = v71;
  v61 = v78[0];
  if (v78[0])
  {
    v16 = v70;
  }

  else
  {
    v16 = 0;
  }

  if (v78[0])
  {
    v17 = *(&v70 + 1);
  }

  else
  {
    v17 = 0;
  }

  v18 = *(&v83 + 1);
  if (*(&v83 + 1))
  {
    v16 = *(*(&v83 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
    v17 = *(*(&v83 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);
LABEL_14:

    goto LABEL_15;
  }

  if (v17)
  {
    goto LABEL_14;
  }

  v67[0] = *(&v81 + 1);
  v16 = sub_ABB330();
  v17 = v57;
LABEL_15:
  swift_beginAccess();
  v62 = v3;
  if (*(*(v3 + 104) + 16))
  {

    sub_2EBF88(v16, v17);
    if (v19)
    {

      sub_12E1C(v68, qword_DF1340, &unk_B07BD0);

LABEL_48:
      (*(v11 + 8))(v13, v10);
      return;
    }
  }

  v20 = v62;
  swift_beginAccess();
  v21 = *(v20 + 112);
  if (!*(v21 + 16))
  {
LABEL_27:
    sub_465F4(&v79, v67);
    if (qword_DE6D70 != -1)
    {
      swift_once();
    }

    v60 = v18;
    UnfairLock.locked<A>(_:)(sub_13303C);
    v36 = qword_E0A760;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFDDD8, &unk_B08C18);
    v37 = swift_allocObject();
    *(v37 + 192) = 513;
    v38 = v86;
    *(v37 + 112) = v85;
    *(v37 + 128) = v38;
    *(v37 + 144) = v87[0];
    *(v37 + 153) = *(v87 + 9);
    v39 = v82;
    *(v37 + 48) = v81;
    *(v37 + 64) = v39;
    v40 = v84;
    *(v37 + 80) = v83;
    *(v37 + 96) = v40;
    v41 = v80;
    *(v37 + 16) = v79;
    *(v37 + 32) = v41;
    *(v37 + 200) = _swiftEmptyArrayStorage;
    v42 = (v37 + 200);
    *(v37 + 176) = v36;
    *(v37 + 184) = 0;
    v43 = v62;
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      *(v37 + 184) = *(v43 + 64);
      *(v37 + 192) = 0;
    }

    v44 = v64;
    v45 = v65;
    (*(v64 + 16))(v7, v63, v65);
    sub_AB33D0();
    v47 = v46;
    (*(v44 + 8))(v7, v45);
    swift_beginAccess();
    v48 = *v42;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v42 = v48;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v48 = sub_6A810(0, *(v48 + 2) + 1, 1, v48);
      *v42 = v48;
    }

    v50 = v60;
    v52 = *(v48 + 2);
    v51 = *(v48 + 3);
    if (v52 >= v51 >> 1)
    {
      v48 = sub_6A810((v51 > 1), v52 + 1, 1, v48);
    }

    *(v48 + 2) = v52 + 1;
    v53 = &v48[16 * v52];
    *(v53 + 4) = v47;
    v53[40] = 0;
    *v42 = v48;
    swift_endAccess();
    if (v61)
    {
      v54 = v79;
    }

    else
    {
      v54 = 0;
    }

    if (v61)
    {
      v55 = *(&v79 + 1);
    }

    else
    {
      v55 = 0;
    }

    if (v50)
    {
      v54 = *(v50 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
      v55 = *(v50 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);

      v56 = v62;
    }

    else
    {
      v56 = v62;
      if (v55)
      {
      }

      else
      {
        v67[0] = *(&v81 + 1);
        v54 = sub_ABB330();
        v55 = v58;
      }
    }

    swift_beginAccess();

    v59 = swift_isUniquelyReferenced_nonNull_native();
    v66 = *(v56 + 104);
    *(v56 + 104) = 0x8000000000000000;
    sub_91538(v37, v54, v55, v59);

    *(v56 + 104) = v66;
    swift_endAccess();

    sub_12E1C(v68, qword_DF1340, &unk_B07BD0);
    goto LABEL_48;
  }

  v22 = sub_2EC048(v13);
  if ((v23 & 1) == 0)
  {

    goto LABEL_27;
  }

  v24 = *(*(v21 + 56) + 8 * v22);

  v26 = sub_2C2238(v24, sub_13303C, &qword_DFDDD8, &unk_B08C18, sub_91538, v25);
  v27 = v64;
  v28 = v65;
  (*(v64 + 16))(v7, v63, v65);
  sub_AB33D0();
  v30 = v29;
  (*(v27 + 8))(v7, v28);
  swift_beginAccess();
  v31 = *(v26 + 200);
  v32 = swift_isUniquelyReferenced_nonNull_native();
  *(v26 + 200) = v31;
  if ((v32 & 1) == 0)
  {
    v31 = sub_6A810(0, *(v31 + 2) + 1, 1, v31);
    *(v26 + 200) = v31;
  }

  v34 = *(v31 + 2);
  v33 = *(v31 + 3);
  if (v34 >= v33 >> 1)
  {
    v31 = sub_6A810((v33 > 1), v34 + 1, 1, v31);
  }

  *(v31 + 2) = v34 + 1;
  v35 = &v31[16 * v34];
  *(v35 + 4) = v30;
  v35[40] = 0;
  *(v26 + 200) = v31;
  swift_endAccess();
  sub_12E1C(v68, qword_DF1340, &unk_B07BD0);
  (*(v11 + 8))(v13, v10);
}

void sub_2C39F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v63 = a2;
  v5 = sub_AB3430();
  v64 = *(v5 - 8);
  v65 = v5;
  __chkstk_darwin();
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v9 = &v60 - v8;
  v10 = sub_AB3820();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_15F84(a1, v9, &unk_DE8E20, &qword_AF7990);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_12E1C(v9, &unk_DE8E20, &qword_AF7990);
    return;
  }

  (*(v11 + 32))(v13, v9, v10);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_48;
  }

  v15 = Strong;
  sub_58A30(v68);

  v76 = v68[6];
  v77 = v68[7];
  *v78 = v69[0];
  *&v78[9] = *(v69 + 9);
  v72 = v68[2];
  v73 = v68[3];
  v74 = v68[4];
  v75 = v68[5];
  v70 = v68[0];
  v71 = v68[1];
  if (sub_A996C(&v70) == 1)
  {
    goto LABEL_48;
  }

  v85 = v76;
  v86 = v77;
  v87[0] = *v78;
  *(v87 + 9) = *&v78[9];
  v81 = v72;
  v82 = v73;
  v83 = v74;
  v84 = v75;
  v79 = v70;
  v80 = v71;
  v61 = v78[0];
  if (v78[0])
  {
    v16 = v70;
  }

  else
  {
    v16 = 0;
  }

  if (v78[0])
  {
    v17 = *(&v70 + 1);
  }

  else
  {
    v17 = 0;
  }

  v18 = *(&v83 + 1);
  if (*(&v83 + 1))
  {
    v16 = *(*(&v83 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
    v17 = *(*(&v83 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);
LABEL_14:

    goto LABEL_15;
  }

  if (v17)
  {
    goto LABEL_14;
  }

  v67[0] = *(&v81 + 1);
  v16 = sub_ABB330();
  v17 = v57;
LABEL_15:
  swift_beginAccess();
  v62 = v3;
  if (*(*(v3 + 104) + 16))
  {

    sub_2EBF88(v16, v17);
    if (v19)
    {

      sub_12E1C(v68, qword_DF1340, &unk_B07BD0);

LABEL_48:
      (*(v11 + 8))(v13, v10);
      return;
    }
  }

  v20 = v62;
  swift_beginAccess();
  v21 = *(v20 + 112);
  if (!*(v21 + 16))
  {
LABEL_27:
    sub_465F4(&v79, v67);
    if (qword_DE6D70 != -1)
    {
      swift_once();
    }

    v60 = v18;
    UnfairLock.locked<A>(_:)(sub_13303C);
    v36 = qword_E0A760;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFDED8, &qword_B08D50);
    v37 = swift_allocObject();
    *(v37 + 192) = 513;
    v38 = v86;
    *(v37 + 112) = v85;
    *(v37 + 128) = v38;
    *(v37 + 144) = v87[0];
    *(v37 + 153) = *(v87 + 9);
    v39 = v82;
    *(v37 + 48) = v81;
    *(v37 + 64) = v39;
    v40 = v84;
    *(v37 + 80) = v83;
    *(v37 + 96) = v40;
    v41 = v80;
    *(v37 + 16) = v79;
    *(v37 + 32) = v41;
    *(v37 + 200) = _swiftEmptyArrayStorage;
    v42 = (v37 + 200);
    *(v37 + 176) = v36;
    *(v37 + 184) = 0;
    v43 = v62;
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      *(v37 + 184) = *(v43 + 64);
      *(v37 + 192) = 0;
    }

    v44 = v64;
    v45 = v65;
    (*(v64 + 16))(v7, v63, v65);
    sub_AB33D0();
    v47 = v46;
    (*(v44 + 8))(v7, v45);
    swift_beginAccess();
    v48 = *v42;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v42 = v48;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v48 = sub_6A824(0, *(v48 + 2) + 1, 1, v48);
      *v42 = v48;
    }

    v50 = v60;
    v52 = *(v48 + 2);
    v51 = *(v48 + 3);
    if (v52 >= v51 >> 1)
    {
      v48 = sub_6A824((v51 > 1), v52 + 1, 1, v48);
    }

    *(v48 + 2) = v52 + 1;
    v53 = &v48[16 * v52];
    *(v53 + 4) = v47;
    v53[40] = 0;
    *v42 = v48;
    swift_endAccess();
    if (v61)
    {
      v54 = v79;
    }

    else
    {
      v54 = 0;
    }

    if (v61)
    {
      v55 = *(&v79 + 1);
    }

    else
    {
      v55 = 0;
    }

    if (v50)
    {
      v54 = *(v50 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
      v55 = *(v50 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);

      v56 = v62;
    }

    else
    {
      v56 = v62;
      if (v55)
      {
      }

      else
      {
        v67[0] = *(&v81 + 1);
        v54 = sub_ABB330();
        v55 = v58;
      }
    }

    swift_beginAccess();

    v59 = swift_isUniquelyReferenced_nonNull_native();
    v66 = *(v56 + 104);
    *(v56 + 104) = 0x8000000000000000;
    sub_91564(v37, v54, v55, v59);

    *(v56 + 104) = v66;
    swift_endAccess();

    sub_12E1C(v68, qword_DF1340, &unk_B07BD0);
    goto LABEL_48;
  }

  v22 = sub_2EC048(v13);
  if ((v23 & 1) == 0)
  {

    goto LABEL_27;
  }

  v24 = *(*(v21 + 56) + 8 * v22);

  v26 = sub_2C2238(v24, sub_13303C, &qword_DFDED8, &qword_B08D50, sub_91564, v25);
  v27 = v64;
  v28 = v65;
  (*(v64 + 16))(v7, v63, v65);
  sub_AB33D0();
  v30 = v29;
  (*(v27 + 8))(v7, v28);
  swift_beginAccess();
  v31 = *(v26 + 200);
  v32 = swift_isUniquelyReferenced_nonNull_native();
  *(v26 + 200) = v31;
  if ((v32 & 1) == 0)
  {
    v31 = sub_6A824(0, *(v31 + 2) + 1, 1, v31);
    *(v26 + 200) = v31;
  }

  v34 = *(v31 + 2);
  v33 = *(v31 + 3);
  if (v34 >= v33 >> 1)
  {
    v31 = sub_6A824((v33 > 1), v34 + 1, 1, v31);
  }

  *(v31 + 2) = v34 + 1;
  v35 = &v31[16 * v34];
  *(v35 + 4) = v30;
  v35[40] = 0;
  *(v26 + 200) = v31;
  swift_endAccess();
  sub_12E1C(v68, qword_DF1340, &unk_B07BD0);
  (*(v11 + 8))(v13, v10);
}

void sub_2C4280(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v63 = a2;
  v5 = sub_AB3430();
  v64 = *(v5 - 8);
  v65 = v5;
  __chkstk_darwin();
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v9 = &v60 - v8;
  v10 = sub_AB3820();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_15F84(a1, v9, &unk_DE8E20, &qword_AF7990);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_12E1C(v9, &unk_DE8E20, &qword_AF7990);
    return;
  }

  (*(v11 + 32))(v13, v9, v10);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_48;
  }

  v15 = Strong;
  sub_40220(v68);

  v76 = v68[6];
  v77 = v68[7];
  *v78 = v69[0];
  *&v78[9] = *(v69 + 9);
  v72 = v68[2];
  v73 = v68[3];
  v74 = v68[4];
  v75 = v68[5];
  v70 = v68[0];
  v71 = v68[1];
  if (sub_A996C(&v70) == 1)
  {
    goto LABEL_48;
  }

  v85 = v76;
  v86 = v77;
  v87[0] = *v78;
  *(v87 + 9) = *&v78[9];
  v81 = v72;
  v82 = v73;
  v83 = v74;
  v84 = v75;
  v79 = v70;
  v80 = v71;
  v61 = v78[0];
  if (v78[0])
  {
    v16 = v70;
  }

  else
  {
    v16 = 0;
  }

  if (v78[0])
  {
    v17 = *(&v70 + 1);
  }

  else
  {
    v17 = 0;
  }

  v18 = *(&v83 + 1);
  if (*(&v83 + 1))
  {
    v16 = *(*(&v83 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
    v17 = *(*(&v83 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);
LABEL_14:

    goto LABEL_15;
  }

  if (v17)
  {
    goto LABEL_14;
  }

  v67[0] = *(&v81 + 1);
  v16 = sub_ABB330();
  v17 = v57;
LABEL_15:
  swift_beginAccess();
  v62 = v3;
  if (*(*(v3 + 104) + 16))
  {

    sub_2EBF88(v16, v17);
    if (v19)
    {

      sub_12E1C(v68, qword_DF1340, &unk_B07BD0);

LABEL_48:
      (*(v11 + 8))(v13, v10);
      return;
    }
  }

  v20 = v62;
  swift_beginAccess();
  v21 = *(v20 + 112);
  if (!*(v21 + 16))
  {
LABEL_27:
    sub_465F4(&v79, v67);
    if (qword_DE6D70 != -1)
    {
      swift_once();
    }

    v60 = v18;
    UnfairLock.locked<A>(_:)(sub_13303C);
    v36 = qword_E0A760;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFDEE8, &unk_B08D80);
    v37 = swift_allocObject();
    *(v37 + 192) = 513;
    v38 = v86;
    *(v37 + 112) = v85;
    *(v37 + 128) = v38;
    *(v37 + 144) = v87[0];
    *(v37 + 153) = *(v87 + 9);
    v39 = v82;
    *(v37 + 48) = v81;
    *(v37 + 64) = v39;
    v40 = v84;
    *(v37 + 80) = v83;
    *(v37 + 96) = v40;
    v41 = v80;
    *(v37 + 16) = v79;
    *(v37 + 32) = v41;
    *(v37 + 200) = _swiftEmptyArrayStorage;
    v42 = (v37 + 200);
    *(v37 + 176) = v36;
    *(v37 + 184) = 0;
    v43 = v62;
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      *(v37 + 184) = *(v43 + 64);
      *(v37 + 192) = 0;
    }

    v44 = v64;
    v45 = v65;
    (*(v64 + 16))(v7, v63, v65);
    sub_AB33D0();
    v47 = v46;
    (*(v44 + 8))(v7, v45);
    swift_beginAccess();
    v48 = *v42;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v42 = v48;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v48 = sub_6A838(0, *(v48 + 2) + 1, 1, v48);
      *v42 = v48;
    }

    v50 = v60;
    v52 = *(v48 + 2);
    v51 = *(v48 + 3);
    if (v52 >= v51 >> 1)
    {
      v48 = sub_6A838((v51 > 1), v52 + 1, 1, v48);
    }

    *(v48 + 2) = v52 + 1;
    v53 = &v48[16 * v52];
    *(v53 + 4) = v47;
    v53[40] = 0;
    *v42 = v48;
    swift_endAccess();
    if (v61)
    {
      v54 = v79;
    }

    else
    {
      v54 = 0;
    }

    if (v61)
    {
      v55 = *(&v79 + 1);
    }

    else
    {
      v55 = 0;
    }

    if (v50)
    {
      v54 = *(v50 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
      v55 = *(v50 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);

      v56 = v62;
    }

    else
    {
      v56 = v62;
      if (v55)
      {
      }

      else
      {
        v67[0] = *(&v81 + 1);
        v54 = sub_ABB330();
        v55 = v58;
      }
    }

    swift_beginAccess();

    v59 = swift_isUniquelyReferenced_nonNull_native();
    v66 = *(v56 + 104);
    *(v56 + 104) = 0x8000000000000000;
    sub_91590(v37, v54, v55, v59);

    *(v56 + 104) = v66;
    swift_endAccess();

    sub_12E1C(v68, qword_DF1340, &unk_B07BD0);
    goto LABEL_48;
  }

  v22 = sub_2EC048(v13);
  if ((v23 & 1) == 0)
  {

    goto LABEL_27;
  }

  v24 = *(*(v21 + 56) + 8 * v22);

  v26 = sub_2C2238(v24, sub_13303C, &qword_DFDEE8, &unk_B08D80, sub_91590, v25);
  v27 = v64;
  v28 = v65;
  (*(v64 + 16))(v7, v63, v65);
  sub_AB33D0();
  v30 = v29;
  (*(v27 + 8))(v7, v28);
  swift_beginAccess();
  v31 = *(v26 + 200);
  v32 = swift_isUniquelyReferenced_nonNull_native();
  *(v26 + 200) = v31;
  if ((v32 & 1) == 0)
  {
    v31 = sub_6A838(0, *(v31 + 2) + 1, 1, v31);
    *(v26 + 200) = v31;
  }

  v34 = *(v31 + 2);
  v33 = *(v31 + 3);
  if (v34 >= v33 >> 1)
  {
    v31 = sub_6A838((v33 > 1), v34 + 1, 1, v31);
  }

  *(v31 + 2) = v34 + 1;
  v35 = &v31[16 * v34];
  *(v35 + 4) = v30;
  v35[40] = 0;
  *(v26 + 200) = v31;
  swift_endAccess();
  sub_12E1C(v68, qword_DF1340, &unk_B07BD0);
  (*(v11 + 8))(v13, v10);
}

void sub_2C4B08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v63 = a2;
  v5 = sub_AB3430();
  v64 = *(v5 - 8);
  v65 = v5;
  __chkstk_darwin();
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v9 = &v60 - v8;
  v10 = sub_AB3820();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_15F84(a1, v9, &unk_DE8E20, &qword_AF7990);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_12E1C(v9, &unk_DE8E20, &qword_AF7990);
    return;
  }

  (*(v11 + 32))(v13, v9, v10);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_48;
  }

  v15 = Strong;
  sub_3BD82C(v68);

  v76 = v68[6];
  v77 = v68[7];
  *v78 = v69[0];
  *&v78[9] = *(v69 + 9);
  v72 = v68[2];
  v73 = v68[3];
  v74 = v68[4];
  v75 = v68[5];
  v70 = v68[0];
  v71 = v68[1];
  if (sub_A996C(&v70) == 1)
  {
    goto LABEL_48;
  }

  v85 = v76;
  v86 = v77;
  v87[0] = *v78;
  *(v87 + 9) = *&v78[9];
  v81 = v72;
  v82 = v73;
  v83 = v74;
  v84 = v75;
  v79 = v70;
  v80 = v71;
  v61 = v78[0];
  if (v78[0])
  {
    v16 = v70;
  }

  else
  {
    v16 = 0;
  }

  if (v78[0])
  {
    v17 = *(&v70 + 1);
  }

  else
  {
    v17 = 0;
  }

  v18 = *(&v83 + 1);
  if (*(&v83 + 1))
  {
    v16 = *(*(&v83 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
    v17 = *(*(&v83 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);
LABEL_14:

    goto LABEL_15;
  }

  if (v17)
  {
    goto LABEL_14;
  }

  v67[0] = *(&v81 + 1);
  v16 = sub_ABB330();
  v17 = v57;
LABEL_15:
  swift_beginAccess();
  v62 = v3;
  if (*(*(v3 + 104) + 16))
  {

    sub_2EBF88(v16, v17);
    if (v19)
    {

      sub_12E1C(v68, qword_DF1340, &unk_B07BD0);

LABEL_48:
      (*(v11 + 8))(v13, v10);
      return;
    }
  }

  v20 = v62;
  swift_beginAccess();
  v21 = *(v20 + 112);
  if (!*(v21 + 16))
  {
LABEL_27:
    sub_465F4(&v79, v67);
    if (qword_DE6D70 != -1)
    {
      swift_once();
    }

    v60 = v18;
    UnfairLock.locked<A>(_:)(sub_13303C);
    v36 = qword_E0A760;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_DFDEF8, &qword_B08D90);
    v37 = swift_allocObject();
    *(v37 + 192) = 513;
    v38 = v86;
    *(v37 + 112) = v85;
    *(v37 + 128) = v38;
    *(v37 + 144) = v87[0];
    *(v37 + 153) = *(v87 + 9);
    v39 = v82;
    *(v37 + 48) = v81;
    *(v37 + 64) = v39;
    v40 = v84;
    *(v37 + 80) = v83;
    *(v37 + 96) = v40;
    v41 = v80;
    *(v37 + 16) = v79;
    *(v37 + 32) = v41;
    *(v37 + 200) = _swiftEmptyArrayStorage;
    v42 = (v37 + 200);
    *(v37 + 176) = v36;
    *(v37 + 184) = 0;
    v43 = v62;
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      *(v37 + 184) = *(v43 + 64);
      *(v37 + 192) = 0;
    }

    v44 = v64;
    v45 = v65;
    (*(v64 + 16))(v7, v63, v65);
    sub_AB33D0();
    v47 = v46;
    (*(v44 + 8))(v7, v45);
    swift_beginAccess();
    v48 = *v42;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v42 = v48;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v48 = sub_6A84C(0, *(v48 + 2) + 1, 1, v48);
      *v42 = v48;
    }

    v50 = v60;
    v52 = *(v48 + 2);
    v51 = *(v48 + 3);
    if (v52 >= v51 >> 1)
    {
      v48 = sub_6A84C((v51 > 1), v52 + 1, 1, v48);
    }

    *(v48 + 2) = v52 + 1;
    v53 = &v48[16 * v52];
    *(v53 + 4) = v47;
    v53[40] = 0;
    *v42 = v48;
    swift_endAccess();
    if (v61)
    {
      v54 = v79;
    }

    else
    {
      v54 = 0;
    }

    if (v61)
    {
      v55 = *(&v79 + 1);
    }

    else
    {
      v55 = 0;
    }

    if (v50)
    {
      v54 = *(v50 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
      v55 = *(v50 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);

      v56 = v62;
    }

    else
    {
      v56 = v62;
      if (v55)
      {
      }

      else
      {
        v67[0] = *(&v81 + 1);
        v54 = sub_ABB330();
        v55 = v58;
      }
    }

    swift_beginAccess();

    v59 = swift_isUniquelyReferenced_nonNull_native();
    v66 = *(v56 + 104);
    *(v56 + 104) = 0x8000000000000000;
    sub_915BC(v37, v54, v55, v59);

    *(v56 + 104) = v66;
    swift_endAccess();

    sub_12E1C(v68, qword_DF1340, &unk_B07BD0);
    goto LABEL_48;
  }

  v22 = sub_2EC048(v13);
  if ((v23 & 1) == 0)
  {

    goto LABEL_27;
  }

  v24 = *(*(v21 + 56) + 8 * v22);

  v26 = sub_2C2238(v24, sub_13303C, qword_DFDEF8, &qword_B08D90, sub_915BC, v25);
  v27 = v64;
  v28 = v65;
  (*(v64 + 16))(v7, v63, v65);
  sub_AB33D0();
  v30 = v29;
  (*(v27 + 8))(v7, v28);
  swift_beginAccess();
  v31 = *(v26 + 200);
  v32 = swift_isUniquelyReferenced_nonNull_native();
  *(v26 + 200) = v31;
  if ((v32 & 1) == 0)
  {
    v31 = sub_6A84C(0, *(v31 + 2) + 1, 1, v31);
    *(v26 + 200) = v31;
  }

  v34 = *(v31 + 2);
  v33 = *(v31 + 3);
  if (v34 >= v33 >> 1)
  {
    v31 = sub_6A84C((v33 > 1), v34 + 1, 1, v31);
  }

  *(v31 + 2) = v34 + 1;
  v35 = &v31[16 * v34];
  *(v35 + 4) = v30;
  v35[40] = 0;
  *(v26 + 200) = v31;
  swift_endAccess();
  sub_12E1C(v68, qword_DF1340, &unk_B07BD0);
  (*(v11 + 8))(v13, v10);
}

void sub_2C5390(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v63 = a2;
  v5 = sub_AB3430();
  v64 = *(v5 - 8);
  v65 = v5;
  __chkstk_darwin();
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v9 = &v60 - v8;
  v10 = sub_AB3820();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_15F84(a1, v9, &unk_DE8E20, &qword_AF7990);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_12E1C(v9, &unk_DE8E20, &qword_AF7990);
    return;
  }

  (*(v11 + 32))(v13, v9, v10);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_48;
  }

  v15 = Strong;
  sub_49388C(v13, v68);

  v76 = v68[6];
  v77 = v68[7];
  *v78 = v69[0];
  *&v78[9] = *(v69 + 9);
  v72 = v68[2];
  v73 = v68[3];
  v74 = v68[4];
  v75 = v68[5];
  v70 = v68[0];
  v71 = v68[1];
  if (sub_A996C(&v70) == 1)
  {
    goto LABEL_48;
  }

  v85 = v76;
  v86 = v77;
  v87[0] = *v78;
  *(v87 + 9) = *&v78[9];
  v81 = v72;
  v82 = v73;
  v83 = v74;
  v84 = v75;
  v79 = v70;
  v80 = v71;
  v61 = v78[0];
  if (v78[0])
  {
    v16 = v70;
  }

  else
  {
    v16 = 0;
  }

  if (v78[0])
  {
    v17 = *(&v70 + 1);
  }

  else
  {
    v17 = 0;
  }

  v18 = *(&v83 + 1);
  if (*(&v83 + 1))
  {
    v16 = *(*(&v83 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
    v17 = *(*(&v83 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);
LABEL_14:

    goto LABEL_15;
  }

  if (v17)
  {
    goto LABEL_14;
  }

  v67[0] = *(&v81 + 1);
  v16 = sub_ABB330();
  v17 = v57;
LABEL_15:
  swift_beginAccess();
  v62 = v3;
  if (*(*(v3 + 104) + 16))
  {

    sub_2EBF88(v16, v17);
    if (v19)
    {

      sub_12E1C(v68, qword_DF1340, &unk_B07BD0);

LABEL_48:
      (*(v11 + 8))(v13, v10);
      return;
    }
  }

  v20 = v62;
  swift_beginAccess();
  v21 = *(v20 + 112);
  if (!*(v21 + 16))
  {
LABEL_27:
    sub_465F4(&v79, v67);
    if (qword_DE6D70 != -1)
    {
      swift_once();
    }

    v60 = v18;
    UnfairLock.locked<A>(_:)(sub_13303C);
    v36 = qword_E0A760;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFDDE8, &qword_B08C28);
    v37 = swift_allocObject();
    *(v37 + 192) = 513;
    v38 = v86;
    *(v37 + 112) = v85;
    *(v37 + 128) = v38;
    *(v37 + 144) = v87[0];
    *(v37 + 153) = *(v87 + 9);
    v39 = v82;
    *(v37 + 48) = v81;
    *(v37 + 64) = v39;
    v40 = v84;
    *(v37 + 80) = v83;
    *(v37 + 96) = v40;
    v41 = v80;
    *(v37 + 16) = v79;
    *(v37 + 32) = v41;
    *(v37 + 200) = _swiftEmptyArrayStorage;
    v42 = (v37 + 200);
    *(v37 + 176) = v36;
    *(v37 + 184) = 0;
    v43 = v62;
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      *(v37 + 184) = *(v43 + 64);
      *(v37 + 192) = 0;
    }

    v44 = v64;
    v45 = v65;
    (*(v64 + 16))(v7, v63, v65);
    sub_AB33D0();
    v47 = v46;
    (*(v44 + 8))(v7, v45);
    swift_beginAccess();
    v48 = *v42;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v42 = v48;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v48 = sub_6A860(0, *(v48 + 2) + 1, 1, v48);
      *v42 = v48;
    }

    v50 = v60;
    v52 = *(v48 + 2);
    v51 = *(v48 + 3);
    if (v52 >= v51 >> 1)
    {
      v48 = sub_6A860((v51 > 1), v52 + 1, 1, v48);
    }

    *(v48 + 2) = v52 + 1;
    v53 = &v48[16 * v52];
    *(v53 + 4) = v47;
    v53[40] = 0;
    *v42 = v48;
    swift_endAccess();
    if (v61)
    {
      v54 = v79;
    }

    else
    {
      v54 = 0;
    }

    if (v61)
    {
      v55 = *(&v79 + 1);
    }

    else
    {
      v55 = 0;
    }

    if (v50)
    {
      v54 = *(v50 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
      v55 = *(v50 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);

      v56 = v62;
    }

    else
    {
      v56 = v62;
      if (v55)
      {
      }

      else
      {
        v67[0] = *(&v81 + 1);
        v54 = sub_ABB330();
        v55 = v58;
      }
    }

    swift_beginAccess();

    v59 = swift_isUniquelyReferenced_nonNull_native();
    v66 = *(v56 + 104);
    *(v56 + 104) = 0x8000000000000000;
    sub_915E8(v37, v54, v55, v59);

    *(v56 + 104) = v66;
    swift_endAccess();

    sub_12E1C(v68, qword_DF1340, &unk_B07BD0);
    goto LABEL_48;
  }

  v22 = sub_2EC048(v13);
  if ((v23 & 1) == 0)
  {

    goto LABEL_27;
  }

  v24 = *(*(v21 + 56) + 8 * v22);

  v26 = sub_2C2238(v24, sub_13303C, &qword_DFDDE8, &qword_B08C28, sub_915E8, v25);
  v27 = v64;
  v28 = v65;
  (*(v64 + 16))(v7, v63, v65);
  sub_AB33D0();
  v30 = v29;
  (*(v27 + 8))(v7, v28);
  swift_beginAccess();
  v31 = *(v26 + 200);
  v32 = swift_isUniquelyReferenced_nonNull_native();
  *(v26 + 200) = v31;
  if ((v32 & 1) == 0)
  {
    v31 = sub_6A860(0, *(v31 + 2) + 1, 1, v31);
    *(v26 + 200) = v31;
  }

  v34 = *(v31 + 2);
  v33 = *(v31 + 3);
  if (v34 >= v33 >> 1)
  {
    v31 = sub_6A860((v33 > 1), v34 + 1, 1, v31);
  }

  *(v31 + 2) = v34 + 1;
  v35 = &v31[16 * v34];
  *(v35 + 4) = v30;
  v35[40] = 0;
  *(v26 + 200) = v31;
  swift_endAccess();
  sub_12E1C(v68, qword_DF1340, &unk_B07BD0);
  (*(v11 + 8))(v13, v10);
}

void sub_2C5C18(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v63 = a2;
  v5 = sub_AB3430();
  v64 = *(v5 - 8);
  v65 = v5;
  __chkstk_darwin();
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v9 = &v60 - v8;
  v10 = sub_AB3820();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_15F84(a1, v9, &unk_DE8E20, &qword_AF7990);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_12E1C(v9, &unk_DE8E20, &qword_AF7990);
    return;
  }

  (*(v11 + 32))(v13, v9, v10);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_48;
  }

  v15 = Strong;
  sub_445BFC(v68);

  v76 = v68[6];
  v77 = v68[7];
  *v78 = v69[0];
  *&v78[9] = *(v69 + 9);
  v72 = v68[2];
  v73 = v68[3];
  v74 = v68[4];
  v75 = v68[5];
  v70 = v68[0];
  v71 = v68[1];
  if (sub_A996C(&v70) == 1)
  {
    goto LABEL_48;
  }

  v85 = v76;
  v86 = v77;
  v87[0] = *v78;
  *(v87 + 9) = *&v78[9];
  v81 = v72;
  v82 = v73;
  v83 = v74;
  v84 = v75;
  v79 = v70;
  v80 = v71;
  v61 = v78[0];
  if (v78[0])
  {
    v16 = v70;
  }

  else
  {
    v16 = 0;
  }

  if (v78[0])
  {
    v17 = *(&v70 + 1);
  }

  else
  {
    v17 = 0;
  }

  v18 = *(&v83 + 1);
  if (*(&v83 + 1))
  {
    v16 = *(*(&v83 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
    v17 = *(*(&v83 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);
LABEL_14:

    goto LABEL_15;
  }

  if (v17)
  {
    goto LABEL_14;
  }

  v67[0] = *(&v81 + 1);
  v16 = sub_ABB330();
  v17 = v57;
LABEL_15:
  swift_beginAccess();
  v62 = v3;
  if (*(*(v3 + 104) + 16))
  {

    sub_2EBF88(v16, v17);
    if (v19)
    {

      sub_12E1C(v68, qword_DF1340, &unk_B07BD0);

LABEL_48:
      (*(v11 + 8))(v13, v10);
      return;
    }
  }

  v20 = v62;
  swift_beginAccess();
  v21 = *(v20 + 112);
  if (!*(v21 + 16))
  {
LABEL_27:
    sub_465F4(&v79, v67);
    if (qword_DE6D70 != -1)
    {
      swift_once();
    }

    v60 = v18;
    UnfairLock.locked<A>(_:)(sub_13303C);
    v36 = qword_E0A760;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFDE10, &qword_B08C80);
    v37 = swift_allocObject();
    *(v37 + 192) = 513;
    v38 = v86;
    *(v37 + 112) = v85;
    *(v37 + 128) = v38;
    *(v37 + 144) = v87[0];
    *(v37 + 153) = *(v87 + 9);
    v39 = v82;
    *(v37 + 48) = v81;
    *(v37 + 64) = v39;
    v40 = v84;
    *(v37 + 80) = v83;
    *(v37 + 96) = v40;
    v41 = v80;
    *(v37 + 16) = v79;
    *(v37 + 32) = v41;
    *(v37 + 200) = _swiftEmptyArrayStorage;
    v42 = (v37 + 200);
    *(v37 + 176) = v36;
    *(v37 + 184) = 0;
    v43 = v62;
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      *(v37 + 184) = *(v43 + 64);
      *(v37 + 192) = 0;
    }

    v44 = v64;
    v45 = v65;
    (*(v64 + 16))(v7, v63, v65);
    sub_AB33D0();
    v47 = v46;
    (*(v44 + 8))(v7, v45);
    swift_beginAccess();
    v48 = *v42;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v42 = v48;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v48 = sub_6A874(0, *(v48 + 2) + 1, 1, v48);
      *v42 = v48;
    }

    v50 = v60;
    v52 = *(v48 + 2);
    v51 = *(v48 + 3);
    if (v52 >= v51 >> 1)
    {
      v48 = sub_6A874((v51 > 1), v52 + 1, 1, v48);
    }

    *(v48 + 2) = v52 + 1;
    v53 = &v48[16 * v52];
    *(v53 + 4) = v47;
    v53[40] = 0;
    *v42 = v48;
    swift_endAccess();
    if (v61)
    {
      v54 = v79;
    }

    else
    {
      v54 = 0;
    }

    if (v61)
    {
      v55 = *(&v79 + 1);
    }

    else
    {
      v55 = 0;
    }

    if (v50)
    {
      v54 = *(v50 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
      v55 = *(v50 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);

      v56 = v62;
    }

    else
    {
      v56 = v62;
      if (v55)
      {
      }

      else
      {
        v67[0] = *(&v81 + 1);
        v54 = sub_ABB330();
        v55 = v58;
      }
    }

    swift_beginAccess();

    v59 = swift_isUniquelyReferenced_nonNull_native();
    v66 = *(v56 + 104);
    *(v56 + 104) = 0x8000000000000000;
    sub_91614(v37, v54, v55, v59);

    *(v56 + 104) = v66;
    swift_endAccess();

    sub_12E1C(v68, qword_DF1340, &unk_B07BD0);
    goto LABEL_48;
  }

  v22 = sub_2EC048(v13);
  if ((v23 & 1) == 0)
  {

    goto LABEL_27;
  }

  v24 = *(*(v21 + 56) + 8 * v22);

  v26 = sub_2C2238(v24, sub_13303C, &unk_DFDE10, &qword_B08C80, sub_91614, v25);
  v27 = v64;
  v28 = v65;
  (*(v64 + 16))(v7, v63, v65);
  sub_AB33D0();
  v30 = v29;
  (*(v27 + 8))(v7, v28);
  swift_beginAccess();
  v31 = *(v26 + 200);
  v32 = swift_isUniquelyReferenced_nonNull_native();
  *(v26 + 200) = v31;
  if ((v32 & 1) == 0)
  {
    v31 = sub_6A874(0, *(v31 + 2) + 1, 1, v31);
    *(v26 + 200) = v31;
  }

  v34 = *(v31 + 2);
  v33 = *(v31 + 3);
  if (v34 >= v33 >> 1)
  {
    v31 = sub_6A874((v33 > 1), v34 + 1, 1, v31);
  }

  *(v31 + 2) = v34 + 1;
  v35 = &v31[16 * v34];
  *(v35 + 4) = v30;
  v35[40] = 0;
  *(v26 + 200) = v31;
  swift_endAccess();
  sub_12E1C(v68, qword_DF1340, &unk_B07BD0);
  (*(v11 + 8))(v13, v10);
}

void sub_2C64A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v63 = a2;
  v5 = sub_AB3430();
  v64 = *(v5 - 8);
  v65 = v5;
  __chkstk_darwin();
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v9 = &v60 - v8;
  v10 = sub_AB3820();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_15F84(a1, v9, &unk_DE8E20, &qword_AF7990);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_12E1C(v9, &unk_DE8E20, &qword_AF7990);
    return;
  }

  (*(v11 + 32))(v13, v9, v10);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_48;
  }

  v15 = Strong;
  sub_34F674(v68);

  v76 = v68[6];
  v77 = v68[7];
  *v78 = v69[0];
  *&v78[9] = *(v69 + 9);
  v72 = v68[2];
  v73 = v68[3];
  v74 = v68[4];
  v75 = v68[5];
  v70 = v68[0];
  v71 = v68[1];
  if (sub_A996C(&v70) == 1)
  {
    goto LABEL_48;
  }

  v85 = v76;
  v86 = v77;
  v87[0] = *v78;
  *(v87 + 9) = *&v78[9];
  v81 = v72;
  v82 = v73;
  v83 = v74;
  v84 = v75;
  v79 = v70;
  v80 = v71;
  v61 = v78[0];
  if (v78[0])
  {
    v16 = v70;
  }

  else
  {
    v16 = 0;
  }

  if (v78[0])
  {
    v17 = *(&v70 + 1);
  }

  else
  {
    v17 = 0;
  }

  v18 = *(&v83 + 1);
  if (*(&v83 + 1))
  {
    v16 = *(*(&v83 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
    v17 = *(*(&v83 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);
LABEL_14:

    goto LABEL_15;
  }

  if (v17)
  {
    goto LABEL_14;
  }

  v67[0] = *(&v81 + 1);
  v16 = sub_ABB330();
  v17 = v57;
LABEL_15:
  swift_beginAccess();
  v62 = v3;
  if (*(*(v3 + 104) + 16))
  {

    sub_2EBF88(v16, v17);
    if (v19)
    {

      sub_12E1C(v68, qword_DF1340, &unk_B07BD0);

LABEL_48:
      (*(v11 + 8))(v13, v10);
      return;
    }
  }

  v20 = v62;
  swift_beginAccess();
  v21 = *(v20 + 112);
  if (!*(v21 + 16))
  {
LABEL_27:
    sub_465F4(&v79, v67);
    if (qword_DE6D70 != -1)
    {
      swift_once();
    }

    v60 = v18;
    UnfairLock.locked<A>(_:)(sub_13303C);
    v36 = qword_E0A760;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFDE38, &qword_B08CA0);
    v37 = swift_allocObject();
    *(v37 + 192) = 513;
    v38 = v86;
    *(v37 + 112) = v85;
    *(v37 + 128) = v38;
    *(v37 + 144) = v87[0];
    *(v37 + 153) = *(v87 + 9);
    v39 = v82;
    *(v37 + 48) = v81;
    *(v37 + 64) = v39;
    v40 = v84;
    *(v37 + 80) = v83;
    *(v37 + 96) = v40;
    v41 = v80;
    *(v37 + 16) = v79;
    *(v37 + 32) = v41;
    *(v37 + 200) = _swiftEmptyArrayStorage;
    v42 = (v37 + 200);
    *(v37 + 176) = v36;
    *(v37 + 184) = 0;
    v43 = v62;
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      *(v37 + 184) = *(v43 + 64);
      *(v37 + 192) = 0;
    }

    v44 = v64;
    v45 = v65;
    (*(v64 + 16))(v7, v63, v65);
    sub_AB33D0();
    v47 = v46;
    (*(v44 + 8))(v7, v45);
    swift_beginAccess();
    v48 = *v42;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v42 = v48;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v48 = sub_6A888(0, *(v48 + 2) + 1, 1, v48);
      *v42 = v48;
    }

    v50 = v60;
    v52 = *(v48 + 2);
    v51 = *(v48 + 3);
    if (v52 >= v51 >> 1)
    {
      v48 = sub_6A888((v51 > 1), v52 + 1, 1, v48);
    }

    *(v48 + 2) = v52 + 1;
    v53 = &v48[16 * v52];
    *(v53 + 4) = v47;
    v53[40] = 0;
    *v42 = v48;
    swift_endAccess();
    if (v61)
    {
      v54 = v79;
    }

    else
    {
      v54 = 0;
    }

    if (v61)
    {
      v55 = *(&v79 + 1);
    }

    else
    {
      v55 = 0;
    }

    if (v50)
    {
      v54 = *(v50 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
      v55 = *(v50 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);

      v56 = v62;
    }

    else
    {
      v56 = v62;
      if (v55)
      {
      }

      else
      {
        v67[0] = *(&v81 + 1);
        v54 = sub_ABB330();
        v55 = v58;
      }
    }

    swift_beginAccess();

    v59 = swift_isUniquelyReferenced_nonNull_native();
    v66 = *(v56 + 104);
    *(v56 + 104) = 0x8000000000000000;
    sub_91640(v37, v54, v55, v59);

    *(v56 + 104) = v66;
    swift_endAccess();

    sub_12E1C(v68, qword_DF1340, &unk_B07BD0);
    goto LABEL_48;
  }

  v22 = sub_2EC048(v13);
  if ((v23 & 1) == 0)
  {

    goto LABEL_27;
  }

  v24 = *(*(v21 + 56) + 8 * v22);

  v26 = sub_2C2238(v24, sub_13303C, &qword_DFDE38, &qword_B08CA0, sub_91640, v25);
  v27 = v64;
  v28 = v65;
  (*(v64 + 16))(v7, v63, v65);
  sub_AB33D0();
  v30 = v29;
  (*(v27 + 8))(v7, v28);
  swift_beginAccess();
  v31 = *(v26 + 200);
  v32 = swift_isUniquelyReferenced_nonNull_native();
  *(v26 + 200) = v31;
  if ((v32 & 1) == 0)
  {
    v31 = sub_6A888(0, *(v31 + 2) + 1, 1, v31);
    *(v26 + 200) = v31;
  }

  v34 = *(v31 + 2);
  v33 = *(v31 + 3);
  if (v34 >= v33 >> 1)
  {
    v31 = sub_6A888((v33 > 1), v34 + 1, 1, v31);
  }

  *(v31 + 2) = v34 + 1;
  v35 = &v31[16 * v34];
  *(v35 + 4) = v30;
  v35[40] = 0;
  *(v26 + 200) = v31;
  swift_endAccess();
  sub_12E1C(v68, qword_DF1340, &unk_B07BD0);
  (*(v11 + 8))(v13, v10);
}

void sub_2C6D28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v63 = a2;
  v5 = sub_AB3430();
  v64 = *(v5 - 8);
  v65 = v5;
  __chkstk_darwin();
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v9 = &v60 - v8;
  v10 = sub_AB3820();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_15F84(a1, v9, &unk_DE8E20, &qword_AF7990);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_12E1C(v9, &unk_DE8E20, &qword_AF7990);
    return;
  }

  (*(v11 + 32))(v13, v9, v10);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_48;
  }

  v15 = Strong;
  sub_464698(v68);

  v76 = v68[6];
  v77 = v68[7];
  *v78 = v69[0];
  *&v78[9] = *(v69 + 9);
  v72 = v68[2];
  v73 = v68[3];
  v74 = v68[4];
  v75 = v68[5];
  v70 = v68[0];
  v71 = v68[1];
  if (sub_A996C(&v70) == 1)
  {
    goto LABEL_48;
  }

  v85 = v76;
  v86 = v77;
  v87[0] = *v78;
  *(v87 + 9) = *&v78[9];
  v81 = v72;
  v82 = v73;
  v83 = v74;
  v84 = v75;
  v79 = v70;
  v80 = v71;
  v61 = v78[0];
  if (v78[0])
  {
    v16 = v70;
  }

  else
  {
    v16 = 0;
  }

  if (v78[0])
  {
    v17 = *(&v70 + 1);
  }

  else
  {
    v17 = 0;
  }

  v18 = *(&v83 + 1);
  if (*(&v83 + 1))
  {
    v16 = *(*(&v83 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
    v17 = *(*(&v83 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);
LABEL_14:

    goto LABEL_15;
  }

  if (v17)
  {
    goto LABEL_14;
  }

  v67[0] = *(&v81 + 1);
  v16 = sub_ABB330();
  v17 = v57;
LABEL_15:
  swift_beginAccess();
  v62 = v3;
  if (*(*(v3 + 104) + 16))
  {

    sub_2EBF88(v16, v17);
    if (v19)
    {

      sub_12E1C(v68, qword_DF1340, &unk_B07BD0);

LABEL_48:
      (*(v11 + 8))(v13, v10);
      return;
    }
  }

  v20 = v62;
  swift_beginAccess();
  v21 = *(v20 + 112);
  if (!*(v21 + 16))
  {
LABEL_27:
    sub_465F4(&v79, v67);
    if (qword_DE6D70 != -1)
    {
      swift_once();
    }

    v60 = v18;
    UnfairLock.locked<A>(_:)(sub_13303C);
    v36 = qword_E0A760;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFDE00, &qword_B08C60);
    v37 = swift_allocObject();
    *(v37 + 192) = 513;
    v38 = v86;
    *(v37 + 112) = v85;
    *(v37 + 128) = v38;
    *(v37 + 144) = v87[0];
    *(v37 + 153) = *(v87 + 9);
    v39 = v82;
    *(v37 + 48) = v81;
    *(v37 + 64) = v39;
    v40 = v84;
    *(v37 + 80) = v83;
    *(v37 + 96) = v40;
    v41 = v80;
    *(v37 + 16) = v79;
    *(v37 + 32) = v41;
    *(v37 + 200) = _swiftEmptyArrayStorage;
    v42 = (v37 + 200);
    *(v37 + 176) = v36;
    *(v37 + 184) = 0;
    v43 = v62;
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      *(v37 + 184) = *(v43 + 64);
      *(v37 + 192) = 0;
    }

    v44 = v64;
    v45 = v65;
    (*(v64 + 16))(v7, v63, v65);
    sub_AB33D0();
    v47 = v46;
    (*(v44 + 8))(v7, v45);
    swift_beginAccess();
    v48 = *v42;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v42 = v48;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v48 = sub_6A89C(0, *(v48 + 2) + 1, 1, v48);
      *v42 = v48;
    }

    v50 = v60;
    v52 = *(v48 + 2);
    v51 = *(v48 + 3);
    if (v52 >= v51 >> 1)
    {
      v48 = sub_6A89C((v51 > 1), v52 + 1, 1, v48);
    }

    *(v48 + 2) = v52 + 1;
    v53 = &v48[16 * v52];
    *(v53 + 4) = v47;
    v53[40] = 0;
    *v42 = v48;
    swift_endAccess();
    if (v61)
    {
      v54 = v79;
    }

    else
    {
      v54 = 0;
    }

    if (v61)
    {
      v55 = *(&v79 + 1);
    }

    else
    {
      v55 = 0;
    }

    if (v50)
    {
      v54 = *(v50 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
      v55 = *(v50 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);

      v56 = v62;
    }

    else
    {
      v56 = v62;
      if (v55)
      {
      }

      else
      {
        v67[0] = *(&v81 + 1);
        v54 = sub_ABB330();
        v55 = v58;
      }
    }

    swift_beginAccess();

    v59 = swift_isUniquelyReferenced_nonNull_native();
    v66 = *(v56 + 104);
    *(v56 + 104) = 0x8000000000000000;
    sub_9166C(v37, v54, v55, v59);

    *(v56 + 104) = v66;
    swift_endAccess();

    sub_12E1C(v68, qword_DF1340, &unk_B07BD0);
    goto LABEL_48;
  }

  v22 = sub_2EC048(v13);
  if ((v23 & 1) == 0)
  {

    goto LABEL_27;
  }

  v24 = *(*(v21 + 56) + 8 * v22);

  v26 = sub_2C2238(v24, sub_13303C, &unk_DFDE00, &qword_B08C60, sub_9166C, v25);
  v27 = v64;
  v28 = v65;
  (*(v64 + 16))(v7, v63, v65);
  sub_AB33D0();
  v30 = v29;
  (*(v27 + 8))(v7, v28);
  swift_beginAccess();
  v31 = *(v26 + 200);
  v32 = swift_isUniquelyReferenced_nonNull_native();
  *(v26 + 200) = v31;
  if ((v32 & 1) == 0)
  {
    v31 = sub_6A89C(0, *(v31 + 2) + 1, 1, v31);
    *(v26 + 200) = v31;
  }

  v34 = *(v31 + 2);
  v33 = *(v31 + 3);
  if (v34 >= v33 >> 1)
  {
    v31 = sub_6A89C((v33 > 1), v34 + 1, 1, v31);
  }

  *(v31 + 2) = v34 + 1;
  v35 = &v31[16 * v34];
  *(v35 + 4) = v30;
  v35[40] = 0;
  *(v26 + 200) = v31;
  swift_endAccess();
  sub_12E1C(v68, qword_DF1340, &unk_B07BD0);
  (*(v11 + 8))(v13, v10);
}

void sub_2C75B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v63 = a2;
  v5 = sub_AB3430();
  v64 = *(v5 - 8);
  v65 = v5;
  __chkstk_darwin();
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v9 = &v60 - v8;
  v10 = sub_AB3820();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_15F84(a1, v9, &unk_DE8E20, &qword_AF7990);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_12E1C(v9, &unk_DE8E20, &qword_AF7990);
    return;
  }

  (*(v11 + 32))(v13, v9, v10);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_48;
  }

  v15 = Strong;
  sub_23120C(v68);

  v76 = v68[6];
  v77 = v68[7];
  *v78 = v69[0];
  *&v78[9] = *(v69 + 9);
  v72 = v68[2];
  v73 = v68[3];
  v74 = v68[4];
  v75 = v68[5];
  v70 = v68[0];
  v71 = v68[1];
  if (sub_A996C(&v70) == 1)
  {
    goto LABEL_48;
  }

  v85 = v76;
  v86 = v77;
  v87[0] = *v78;
  *(v87 + 9) = *&v78[9];
  v81 = v72;
  v82 = v73;
  v83 = v74;
  v84 = v75;
  v79 = v70;
  v80 = v71;
  v61 = v78[0];
  if (v78[0])
  {
    v16 = v70;
  }

  else
  {
    v16 = 0;
  }

  if (v78[0])
  {
    v17 = *(&v70 + 1);
  }

  else
  {
    v17 = 0;
  }

  v18 = *(&v83 + 1);
  if (*(&v83 + 1))
  {
    v16 = *(*(&v83 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
    v17 = *(*(&v83 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);
LABEL_14:

    goto LABEL_15;
  }

  if (v17)
  {
    goto LABEL_14;
  }

  v67[0] = *(&v81 + 1);
  v16 = sub_ABB330();
  v17 = v57;
LABEL_15:
  swift_beginAccess();
  v62 = v3;
  if (*(*(v3 + 104) + 16))
  {

    sub_2EBF88(v16, v17);
    if (v19)
    {

      sub_12E1C(v68, qword_DF1340, &unk_B07BD0);

LABEL_48:
      (*(v11 + 8))(v13, v10);
      return;
    }
  }

  v20 = v62;
  swift_beginAccess();
  v21 = *(v20 + 112);
  if (!*(v21 + 16))
  {
LABEL_27:
    sub_465F4(&v79, v67);
    if (qword_DE6D70 != -1)
    {
      swift_once();
    }

    v60 = v18;
    UnfairLock.locked<A>(_:)(sub_13303C);
    v36 = qword_E0A760;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFDDB8, &qword_B08BE8);
    v37 = swift_allocObject();
    *(v37 + 192) = 513;
    v38 = v86;
    *(v37 + 112) = v85;
    *(v37 + 128) = v38;
    *(v37 + 144) = v87[0];
    *(v37 + 153) = *(v87 + 9);
    v39 = v82;
    *(v37 + 48) = v81;
    *(v37 + 64) = v39;
    v40 = v84;
    *(v37 + 80) = v83;
    *(v37 + 96) = v40;
    v41 = v80;
    *(v37 + 16) = v79;
    *(v37 + 32) = v41;
    *(v37 + 200) = _swiftEmptyArrayStorage;
    v42 = (v37 + 200);
    *(v37 + 176) = v36;
    *(v37 + 184) = 0;
    v43 = v62;
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      *(v37 + 184) = *(v43 + 64);
      *(v37 + 192) = 0;
    }

    v44 = v64;
    v45 = v65;
    (*(v64 + 16))(v7, v63, v65);
    sub_AB33D0();
    v47 = v46;
    (*(v44 + 8))(v7, v45);
    swift_beginAccess();
    v48 = *v42;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v42 = v48;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v48 = sub_6A8B0(0, *(v48 + 2) + 1, 1, v48);
      *v42 = v48;
    }

    v50 = v60;
    v52 = *(v48 + 2);
    v51 = *(v48 + 3);
    if (v52 >= v51 >> 1)
    {
      v48 = sub_6A8B0((v51 > 1), v52 + 1, 1, v48);
    }

    *(v48 + 2) = v52 + 1;
    v53 = &v48[16 * v52];
    *(v53 + 4) = v47;
    v53[40] = 0;
    *v42 = v48;
    swift_endAccess();
    if (v61)
    {
      v54 = v79;
    }

    else
    {
      v54 = 0;
    }

    if (v61)
    {
      v55 = *(&v79 + 1);
    }

    else
    {
      v55 = 0;
    }

    if (v50)
    {
      v54 = *(v50 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
      v55 = *(v50 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);

      v56 = v62;
    }

    else
    {
      v56 = v62;
      if (v55)
      {
      }

      else
      {
        v67[0] = *(&v81 + 1);
        v54 = sub_ABB330();
        v55 = v58;
      }
    }

    swift_beginAccess();

    v59 = swift_isUniquelyReferenced_nonNull_native();
    v66 = *(v56 + 104);
    *(v56 + 104) = 0x8000000000000000;
    sub_91698(v37, v54, v55, v59);

    *(v56 + 104) = v66;
    swift_endAccess();

    sub_12E1C(v68, qword_DF1340, &unk_B07BD0);
    goto LABEL_48;
  }

  v22 = sub_2EC048(v13);
  if ((v23 & 1) == 0)
  {

    goto LABEL_27;
  }

  v24 = *(*(v21 + 56) + 8 * v22);

  v26 = sub_2C2238(v24, sub_13303C, &qword_DFDDB8, &qword_B08BE8, sub_91698, v25);
  v27 = v64;
  v28 = v65;
  (*(v64 + 16))(v7, v63, v65);
  sub_AB33D0();
  v30 = v29;
  (*(v27 + 8))(v7, v28);
  swift_beginAccess();
  v31 = *(v26 + 200);
  v32 = swift_isUniquelyReferenced_nonNull_native();
  *(v26 + 200) = v31;
  if ((v32 & 1) == 0)
  {
    v31 = sub_6A8B0(0, *(v31 + 2) + 1, 1, v31);
    *(v26 + 200) = v31;
  }

  v34 = *(v31 + 2);
  v33 = *(v31 + 3);
  if (v34 >= v33 >> 1)
  {
    v31 = sub_6A8B0((v33 > 1), v34 + 1, 1, v31);
  }

  *(v31 + 2) = v34 + 1;
  v35 = &v31[16 * v34];
  *(v35 + 4) = v30;
  v35[40] = 0;
  *(v26 + 200) = v31;
  swift_endAccess();
  sub_12E1C(v68, qword_DF1340, &unk_B07BD0);
  (*(v11 + 8))(v13, v10);
}

void sub_2C7E38(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_AB3430();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v13 = Strong;
  sub_A0C94(a1, v52);

  v60 = v52[6];
  v61 = v52[7];
  *v62 = v53[0];
  *&v62[9] = *(v53 + 9);
  v56 = v52[2];
  v57 = v52[3];
  v58 = v52[4];
  v59 = v52[5];
  v54 = v52[0];
  v55 = v52[1];
  if (sub_A996C(&v54) == 1)
  {
    return;
  }

  v69 = v60;
  v70 = v61;
  v71[0] = *v62;
  *(v71 + 9) = *&v62[9];
  v65 = v56;
  v66 = v57;
  v67 = v58;
  v68 = v59;
  v63 = v54;
  v64 = v55;
  HIDWORD(v48) = v62[0];
  if (v62[0])
  {
    v14 = v54;
  }

  else
  {
    v14 = 0;
  }

  if (v62[0])
  {
    v15 = *(&v54 + 1);
  }

  else
  {
    v15 = 0;
  }

  v49 = *(&v67 + 1);
  if (*(&v67 + 1))
  {
    v14 = *(*(&v67 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
    v15 = *(*(&v67 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);
LABEL_13:

    goto LABEL_14;
  }

  if (v15)
  {
    goto LABEL_13;
  }

  v51[0] = *(&v65 + 1);
  v14 = sub_ABB330();
  v15 = v46;
LABEL_14:
  swift_beginAccess();
  if (*(v4[13] + 16))
  {

    sub_2EBF88(v14, v15);
    v17 = v16;

    if (v17)
    {
      goto LABEL_44;
    }
  }

  else
  {
  }

  swift_beginAccess();
  if (!*(v4[14] + 16) || (sub_2F5A90(a1), (v18 & 1) == 0))
  {
    sub_465F4(&v63, v51);
    if (qword_DE6D70 != -1)
    {
      swift_once();
    }

    UnfairLock.locked<A>(_:)(sub_13303C);
    v29 = qword_E0A760;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFDDC8, &qword_B08BF8);
    v30 = swift_allocObject();
    *(v30 + 192) = 513;
    v31 = v70;
    *(v30 + 112) = v69;
    *(v30 + 128) = v31;
    *(v30 + 144) = v71[0];
    *(v30 + 153) = *(v71 + 9);
    v32 = v66;
    *(v30 + 48) = v65;
    *(v30 + 64) = v32;
    v33 = v68;
    *(v30 + 80) = v67;
    *(v30 + 96) = v33;
    v34 = v64;
    *(v30 + 16) = v63;
    *(v30 + 32) = v34;
    *(v30 + 200) = _swiftEmptyArrayStorage;
    v35 = (v30 + 200);
    *(v30 + 176) = v29;
    *(v30 + 184) = 0;
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      *(v30 + 184) = v4[8];
      *(v30 + 192) = 0;
    }

    (*(v9 + 16))(v11, a3, v8);
    sub_AB33D0();
    v37 = v36;
    (*(v9 + 8))(v11, v8);
    swift_beginAccess();
    v38 = *v35;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v35 = v38;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v38 = sub_6A8C4(0, *(v38 + 2) + 1, 1, v38);
      *v35 = v38;
    }

    v41 = *(v38 + 2);
    v40 = *(v38 + 3);
    if (v41 >= v40 >> 1)
    {
      v38 = sub_6A8C4((v40 > 1), v41 + 1, 1, v38);
    }

    *(v38 + 2) = v41 + 1;
    v42 = &v38[16 * v41];
    *(v42 + 4) = v37;
    v42[40] = 0;
    *v35 = v38;
    swift_endAccess();
    if ((v48 & 0x100000000) != 0)
    {
      v43 = v63;
    }

    else
    {
      v43 = 0;
    }

    if ((v48 & 0x100000000) != 0)
    {
      v44 = *(&v63 + 1);
    }

    else
    {
      v44 = 0;
    }

    if (v49)
    {
      v43 = *(v49 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
      v44 = *(v49 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);
    }

    else if (!v44)
    {
      v51[0] = *(&v65 + 1);
      v43 = sub_ABB330();
      v44 = v47;
      goto LABEL_43;
    }

LABEL_43:
    swift_beginAccess();

    v45 = swift_isUniquelyReferenced_nonNull_native();
    v50 = v4[13];
    v4[13] = 0x8000000000000000;
    sub_916C4(v30, v43, v44, v45);

    v4[13] = v50;
    swift_endAccess();

LABEL_44:
    sub_12E1C(v52, qword_DF1340, &unk_B07BD0);
    return;
  }

  v21 = sub_2C2238(v19, sub_13303C, &qword_DFDDC8, &qword_B08BF8, sub_916C4, v20);
  (*(v9 + 16))(v11, a3, v8);
  sub_AB33D0();
  v23 = v22;
  (*(v9 + 8))(v11, v8);
  swift_beginAccess();
  v24 = *(v21 + 200);
  v25 = swift_isUniquelyReferenced_nonNull_native();
  *(v21 + 200) = v24;
  if ((v25 & 1) == 0)
  {
    v24 = sub_6A8C4(0, *(v24 + 2) + 1, 1, v24);
    *(v21 + 200) = v24;
  }

  v27 = *(v24 + 2);
  v26 = *(v24 + 3);
  if (v27 >= v26 >> 1)
  {
    v24 = sub_6A8C4((v26 > 1), v27 + 1, 1, v24);
  }

  *(v24 + 2) = v27 + 1;
  v28 = &v24[16 * v27];
  *(v28 + 4) = v23;
  v28[40] = 0;
  *(v21 + 200) = v24;
  swift_endAccess();
  sub_12E1C(v52, qword_DF1340, &unk_B07BD0);
}

void sub_2C84E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v63 = a2;
  v5 = sub_AB3430();
  v64 = *(v5 - 8);
  v65 = v5;
  __chkstk_darwin();
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v9 = &v60 - v8;
  v10 = sub_AB3820();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_15F84(a1, v9, &unk_DE8E20, &qword_AF7990);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_12E1C(v9, &unk_DE8E20, &qword_AF7990);
    return;
  }

  (*(v11 + 32))(v13, v9, v10);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_48;
  }

  v15 = Strong;
  sub_46B3D0(v13, v68);

  v76 = v68[6];
  v77 = v68[7];
  *v78 = v69[0];
  *&v78[9] = *(v69 + 9);
  v72 = v68[2];
  v73 = v68[3];
  v74 = v68[4];
  v75 = v68[5];
  v70 = v68[0];
  v71 = v68[1];
  if (sub_A996C(&v70) == 1)
  {
    goto LABEL_48;
  }

  v85 = v76;
  v86 = v77;
  v87[0] = *v78;
  *(v87 + 9) = *&v78[9];
  v81 = v72;
  v82 = v73;
  v83 = v74;
  v84 = v75;
  v79 = v70;
  v80 = v71;
  v61 = v78[0];
  if (v78[0])
  {
    v16 = v70;
  }

  else
  {
    v16 = 0;
  }

  if (v78[0])
  {
    v17 = *(&v70 + 1);
  }

  else
  {
    v17 = 0;
  }

  v18 = *(&v83 + 1);
  if (*(&v83 + 1))
  {
    v16 = *(*(&v83 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
    v17 = *(*(&v83 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);
LABEL_14:

    goto LABEL_15;
  }

  if (v17)
  {
    goto LABEL_14;
  }

  v67[0] = *(&v81 + 1);
  v16 = sub_ABB330();
  v17 = v57;
LABEL_15:
  swift_beginAccess();
  v62 = v3;
  if (*(*(v3 + 104) + 16))
  {

    sub_2EBF88(v16, v17);
    if (v19)
    {

      sub_12E1C(v68, qword_DF1340, &unk_B07BD0);

LABEL_48:
      (*(v11 + 8))(v13, v10);
      return;
    }
  }

  v20 = v62;
  swift_beginAccess();
  v21 = *(v20 + 112);
  if (!*(v21 + 16))
  {
LABEL_27:
    sub_465F4(&v79, v67);
    if (qword_DE6D70 != -1)
    {
      swift_once();
    }

    v60 = v18;
    UnfairLock.locked<A>(_:)(sub_13303C);
    v36 = qword_E0A760;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFDDF0, &qword_B08C40);
    v37 = swift_allocObject();
    *(v37 + 192) = 513;
    v38 = v86;
    *(v37 + 112) = v85;
    *(v37 + 128) = v38;
    *(v37 + 144) = v87[0];
    *(v37 + 153) = *(v87 + 9);
    v39 = v82;
    *(v37 + 48) = v81;
    *(v37 + 64) = v39;
    v40 = v84;
    *(v37 + 80) = v83;
    *(v37 + 96) = v40;
    v41 = v80;
    *(v37 + 16) = v79;
    *(v37 + 32) = v41;
    *(v37 + 200) = _swiftEmptyArrayStorage;
    v42 = (v37 + 200);
    *(v37 + 176) = v36;
    *(v37 + 184) = 0;
    v43 = v62;
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      *(v37 + 184) = *(v43 + 64);
      *(v37 + 192) = 0;
    }

    v44 = v64;
    v45 = v65;
    (*(v64 + 16))(v7, v63, v65);
    sub_AB33D0();
    v47 = v46;
    (*(v44 + 8))(v7, v45);
    swift_beginAccess();
    v48 = *v42;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v42 = v48;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v48 = sub_6A8D8(0, *(v48 + 2) + 1, 1, v48);
      *v42 = v48;
    }

    v50 = v60;
    v52 = *(v48 + 2);
    v51 = *(v48 + 3);
    if (v52 >= v51 >> 1)
    {
      v48 = sub_6A8D8((v51 > 1), v52 + 1, 1, v48);
    }

    *(v48 + 2) = v52 + 1;
    v53 = &v48[16 * v52];
    *(v53 + 4) = v47;
    v53[40] = 0;
    *v42 = v48;
    swift_endAccess();
    if (v61)
    {
      v54 = v79;
    }

    else
    {
      v54 = 0;
    }

    if (v61)
    {
      v55 = *(&v79 + 1);
    }

    else
    {
      v55 = 0;
    }

    if (v50)
    {
      v54 = *(v50 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
      v55 = *(v50 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);

      v56 = v62;
    }

    else
    {
      v56 = v62;
      if (v55)
      {
      }

      else
      {
        v67[0] = *(&v81 + 1);
        v54 = sub_ABB330();
        v55 = v58;
      }
    }

    swift_beginAccess();

    v59 = swift_isUniquelyReferenced_nonNull_native();
    v66 = *(v56 + 104);
    *(v56 + 104) = 0x8000000000000000;
    sub_916F0(v37, v54, v55, v59);

    *(v56 + 104) = v66;
    swift_endAccess();

    sub_12E1C(v68, qword_DF1340, &unk_B07BD0);
    goto LABEL_48;
  }

  v22 = sub_2EC048(v13);
  if ((v23 & 1) == 0)
  {

    goto LABEL_27;
  }

  v24 = *(*(v21 + 56) + 8 * v22);

  v26 = sub_2C2238(v24, sub_13303C, &unk_DFDDF0, &qword_B08C40, sub_916F0, v25);
  v27 = v64;
  v28 = v65;
  (*(v64 + 16))(v7, v63, v65);
  sub_AB33D0();
  v30 = v29;
  (*(v27 + 8))(v7, v28);
  swift_beginAccess();
  v31 = *(v26 + 200);
  v32 = swift_isUniquelyReferenced_nonNull_native();
  *(v26 + 200) = v31;
  if ((v32 & 1) == 0)
  {
    v31 = sub_6A8D8(0, *(v31 + 2) + 1, 1, v31);
    *(v26 + 200) = v31;
  }

  v34 = *(v31 + 2);
  v33 = *(v31 + 3);
  if (v34 >= v33 >> 1)
  {
    v31 = sub_6A8D8((v33 > 1), v34 + 1, 1, v31);
  }

  *(v31 + 2) = v34 + 1;
  v35 = &v31[16 * v34];
  *(v35 + 4) = v30;
  v35[40] = 0;
  *(v26 + 200) = v31;
  swift_endAccess();
  sub_12E1C(v68, qword_DF1340, &unk_B07BD0);
  (*(v11 + 8))(v13, v10);
}

void sub_2C8D6C(unint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_AB3430();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v13 = Strong;
  sub_17B314(a1, v52);

  v60 = v52[6];
  v61 = v52[7];
  *v62 = v53[0];
  *&v62[9] = *(v53 + 9);
  v56 = v52[2];
  v57 = v52[3];
  v58 = v52[4];
  v59 = v52[5];
  v54 = v52[0];
  v55 = v52[1];
  if (sub_A996C(&v54) == 1)
  {
    return;
  }

  v69 = v60;
  v70 = v61;
  v71[0] = *v62;
  *(v71 + 9) = *&v62[9];
  v65 = v56;
  v66 = v57;
  v67 = v58;
  v68 = v59;
  v63 = v54;
  v64 = v55;
  HIDWORD(v48) = v62[0];
  if (v62[0])
  {
    v14 = v54;
  }

  else
  {
    v14 = 0;
  }

  if (v62[0])
  {
    v15 = *(&v54 + 1);
  }

  else
  {
    v15 = 0;
  }

  v49 = *(&v67 + 1);
  if (*(&v67 + 1))
  {
    v14 = *(*(&v67 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
    v15 = *(*(&v67 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);
LABEL_13:

    goto LABEL_14;
  }

  if (v15)
  {
    goto LABEL_13;
  }

  v51[0] = *(&v65 + 1);
  v14 = sub_ABB330();
  v15 = v46;
LABEL_14:
  swift_beginAccess();
  if (*(v4[13] + 16))
  {

    sub_2EBF88(v14, v15);
    v17 = v16;

    if (v17)
    {
      goto LABEL_44;
    }
  }

  else
  {
  }

  swift_beginAccess();
  if (!*(v4[14] + 16) || (sub_2F5A90(a1), (v18 & 1) == 0))
  {
    sub_465F4(&v63, v51);
    if (qword_DE6D70 != -1)
    {
      swift_once();
    }

    UnfairLock.locked<A>(_:)(sub_13303C);
    v29 = qword_E0A760;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFDEC8, &qword_B08D20);
    v30 = swift_allocObject();
    *(v30 + 192) = 513;
    v31 = v70;
    *(v30 + 112) = v69;
    *(v30 + 128) = v31;
    *(v30 + 144) = v71[0];
    *(v30 + 153) = *(v71 + 9);
    v32 = v66;
    *(v30 + 48) = v65;
    *(v30 + 64) = v32;
    v33 = v68;
    *(v30 + 80) = v67;
    *(v30 + 96) = v33;
    v34 = v64;
    *(v30 + 16) = v63;
    *(v30 + 32) = v34;
    *(v30 + 200) = _swiftEmptyArrayStorage;
    v35 = (v30 + 200);
    *(v30 + 176) = v29;
    *(v30 + 184) = 0;
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      *(v30 + 184) = v4[8];
      *(v30 + 192) = 0;
    }

    (*(v9 + 16))(v11, a3, v8);
    sub_AB33D0();
    v37 = v36;
    (*(v9 + 8))(v11, v8);
    swift_beginAccess();
    v38 = *v35;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v35 = v38;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v38 = sub_6A8EC(0, *(v38 + 2) + 1, 1, v38);
      *v35 = v38;
    }

    v41 = *(v38 + 2);
    v40 = *(v38 + 3);
    if (v41 >= v40 >> 1)
    {
      v38 = sub_6A8EC((v40 > 1), v41 + 1, 1, v38);
    }

    *(v38 + 2) = v41 + 1;
    v42 = &v38[16 * v41];
    *(v42 + 4) = v37;
    v42[40] = 0;
    *v35 = v38;
    swift_endAccess();
    if ((v48 & 0x100000000) != 0)
    {
      v43 = v63;
    }

    else
    {
      v43 = 0;
    }

    if ((v48 & 0x100000000) != 0)
    {
      v44 = *(&v63 + 1);
    }

    else
    {
      v44 = 0;
    }

    if (v49)
    {
      v43 = *(v49 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
      v44 = *(v49 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);
    }

    else if (!v44)
    {
      v51[0] = *(&v65 + 1);
      v43 = sub_ABB330();
      v44 = v47;
      goto LABEL_43;
    }

LABEL_43:
    swift_beginAccess();

    v45 = swift_isUniquelyReferenced_nonNull_native();
    v50 = v4[13];
    v4[13] = 0x8000000000000000;
    sub_9171C(v30, v43, v44, v45);

    v4[13] = v50;
    swift_endAccess();

LABEL_44:
    sub_12E1C(v52, qword_DF1340, &unk_B07BD0);
    return;
  }

  v21 = sub_2C2238(v19, sub_13303C, &qword_DFDEC8, &qword_B08D20, sub_9171C, v20);
  (*(v9 + 16))(v11, a3, v8);
  sub_AB33D0();
  v23 = v22;
  (*(v9 + 8))(v11, v8);
  swift_beginAccess();
  v24 = *(v21 + 200);
  v25 = swift_isUniquelyReferenced_nonNull_native();
  *(v21 + 200) = v24;
  if ((v25 & 1) == 0)
  {
    v24 = sub_6A8EC(0, *(v24 + 2) + 1, 1, v24);
    *(v21 + 200) = v24;
  }

  v27 = *(v24 + 2);
  v26 = *(v24 + 3);
  if (v27 >= v26 >> 1)
  {
    v24 = sub_6A8EC((v26 > 1), v27 + 1, 1, v24);
  }

  *(v24 + 2) = v27 + 1;
  v28 = &v24[16 * v27];
  *(v28 + 4) = v23;
  v28[40] = 0;
  *(v21 + 200) = v24;
  swift_endAccess();
  sub_12E1C(v52, qword_DF1340, &unk_B07BD0);
}

void sub_2C9418(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_AB3430();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v13 = Strong;
  sub_29330C(a1, v52);

  v60 = v52[6];
  v61 = v52[7];
  *v62 = v53[0];
  *&v62[9] = *(v53 + 9);
  v56 = v52[2];
  v57 = v52[3];
  v58 = v52[4];
  v59 = v52[5];
  v54 = v52[0];
  v55 = v52[1];
  if (sub_A996C(&v54) == 1)
  {
    return;
  }

  v69 = v60;
  v70 = v61;
  v71[0] = *v62;
  *(v71 + 9) = *&v62[9];
  v65 = v56;
  v66 = v57;
  v67 = v58;
  v68 = v59;
  v63 = v54;
  v64 = v55;
  HIDWORD(v48) = v62[0];
  if (v62[0])
  {
    v14 = v54;
  }

  else
  {
    v14 = 0;
  }

  if (v62[0])
  {
    v15 = *(&v54 + 1);
  }

  else
  {
    v15 = 0;
  }

  v49 = *(&v67 + 1);
  if (*(&v67 + 1))
  {
    v14 = *(*(&v67 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
    v15 = *(*(&v67 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);
LABEL_13:

    goto LABEL_14;
  }

  if (v15)
  {
    goto LABEL_13;
  }

  v51[0] = *(&v65 + 1);
  v14 = sub_ABB330();
  v15 = v46;
LABEL_14:
  swift_beginAccess();
  if (*(v4[13] + 16))
  {

    sub_2EBF88(v14, v15);
    v17 = v16;

    if (v17)
    {
      goto LABEL_44;
    }
  }

  else
  {
  }

  swift_beginAccess();
  if (!*(v4[14] + 16) || (sub_2F5A90(a1), (v18 & 1) == 0))
  {
    sub_465F4(&v63, v51);
    if (qword_DE6D70 != -1)
    {
      swift_once();
    }

    UnfairLock.locked<A>(_:)(sub_13303C);
    v29 = qword_E0A760;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFDE20, &qword_B08C88);
    v30 = swift_allocObject();
    *(v30 + 192) = 513;
    v31 = v70;
    *(v30 + 112) = v69;
    *(v30 + 128) = v31;
    *(v30 + 144) = v71[0];
    *(v30 + 153) = *(v71 + 9);
    v32 = v66;
    *(v30 + 48) = v65;
    *(v30 + 64) = v32;
    v33 = v68;
    *(v30 + 80) = v67;
    *(v30 + 96) = v33;
    v34 = v64;
    *(v30 + 16) = v63;
    *(v30 + 32) = v34;
    *(v30 + 200) = _swiftEmptyArrayStorage;
    v35 = (v30 + 200);
    *(v30 + 176) = v29;
    *(v30 + 184) = 0;
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      *(v30 + 184) = v4[8];
      *(v30 + 192) = 0;
    }

    (*(v9 + 16))(v11, a3, v8);
    sub_AB33D0();
    v37 = v36;
    (*(v9 + 8))(v11, v8);
    swift_beginAccess();
    v38 = *v35;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v35 = v38;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v38 = sub_6A900(0, *(v38 + 2) + 1, 1, v38);
      *v35 = v38;
    }

    v41 = *(v38 + 2);
    v40 = *(v38 + 3);
    if (v41 >= v40 >> 1)
    {
      v38 = sub_6A900((v40 > 1), v41 + 1, 1, v38);
    }

    *(v38 + 2) = v41 + 1;
    v42 = &v38[16 * v41];
    *(v42 + 4) = v37;
    v42[40] = 0;
    *v35 = v38;
    swift_endAccess();
    if ((v48 & 0x100000000) != 0)
    {
      v43 = v63;
    }

    else
    {
      v43 = 0;
    }

    if ((v48 & 0x100000000) != 0)
    {
      v44 = *(&v63 + 1);
    }

    else
    {
      v44 = 0;
    }

    if (v49)
    {
      v43 = *(v49 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
      v44 = *(v49 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);
    }

    else if (!v44)
    {
      v51[0] = *(&v65 + 1);
      v43 = sub_ABB330();
      v44 = v47;
      goto LABEL_43;
    }

LABEL_43:
    swift_beginAccess();

    v45 = swift_isUniquelyReferenced_nonNull_native();
    v50 = v4[13];
    v4[13] = 0x8000000000000000;
    sub_91748(v30, v43, v44, v45);

    v4[13] = v50;
    swift_endAccess();

LABEL_44:
    sub_12E1C(v52, qword_DF1340, &unk_B07BD0);
    return;
  }

  v21 = sub_2C2238(v19, sub_13303C, &unk_DFDE20, &qword_B08C88, sub_91748, v20);
  (*(v9 + 16))(v11, a3, v8);
  sub_AB33D0();
  v23 = v22;
  (*(v9 + 8))(v11, v8);
  swift_beginAccess();
  v24 = *(v21 + 200);
  v25 = swift_isUniquelyReferenced_nonNull_native();
  *(v21 + 200) = v24;
  if ((v25 & 1) == 0)
  {
    v24 = sub_6A900(0, *(v24 + 2) + 1, 1, v24);
    *(v21 + 200) = v24;
  }

  v27 = *(v24 + 2);
  v26 = *(v24 + 3);
  if (v27 >= v26 >> 1)
  {
    v24 = sub_6A900((v26 > 1), v27 + 1, 1, v24);
  }

  *(v24 + 2) = v27 + 1;
  v28 = &v24[16 * v27];
  *(v28 + 4) = v23;
  v28[40] = 0;
  *(v21 + 200) = v24;
  swift_endAccess();
  sub_12E1C(v52, qword_DF1340, &unk_B07BD0);
}

void sub_2C9AC4(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_AB3430();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v13 = Strong;
  sub_2D46E0(a1, v52);

  v60 = v52[6];
  v61 = v52[7];
  *v62 = v53[0];
  *&v62[9] = *(v53 + 9);
  v56 = v52[2];
  v57 = v52[3];
  v58 = v52[4];
  v59 = v52[5];
  v54 = v52[0];
  v55 = v52[1];
  if (sub_A996C(&v54) == 1)
  {
    return;
  }

  v69 = v60;
  v70 = v61;
  v71[0] = *v62;
  *(v71 + 9) = *&v62[9];
  v65 = v56;
  v66 = v57;
  v67 = v58;
  v68 = v59;
  v63 = v54;
  v64 = v55;
  HIDWORD(v48) = v62[0];
  if (v62[0])
  {
    v14 = v54;
  }

  else
  {
    v14 = 0;
  }

  if (v62[0])
  {
    v15 = *(&v54 + 1);
  }

  else
  {
    v15 = 0;
  }

  v49 = *(&v67 + 1);
  if (*(&v67 + 1))
  {
    v14 = *(*(&v67 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
    v15 = *(*(&v67 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);
LABEL_13:

    goto LABEL_14;
  }

  if (v15)
  {
    goto LABEL_13;
  }

  v51[0] = *(&v65 + 1);
  v14 = sub_ABB330();
  v15 = v46;
LABEL_14:
  swift_beginAccess();
  if (*(v4[13] + 16))
  {

    sub_2EBF88(v14, v15);
    v17 = v16;

    if (v17)
    {
      goto LABEL_44;
    }
  }

  else
  {
  }

  swift_beginAccess();
  if (!*(v4[14] + 16) || (sub_2F5A90(a1), (v18 & 1) == 0))
  {
    sub_465F4(&v63, v51);
    if (qword_DE6D70 != -1)
    {
      swift_once();
    }

    UnfairLock.locked<A>(_:)(sub_2BA50);
    v29 = qword_E0A760;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFDD80, &qword_B08B78);
    v30 = swift_allocObject();
    *(v30 + 192) = 513;
    v31 = v70;
    *(v30 + 112) = v69;
    *(v30 + 128) = v31;
    *(v30 + 144) = v71[0];
    *(v30 + 153) = *(v71 + 9);
    v32 = v66;
    *(v30 + 48) = v65;
    *(v30 + 64) = v32;
    v33 = v68;
    *(v30 + 80) = v67;
    *(v30 + 96) = v33;
    v34 = v64;
    *(v30 + 16) = v63;
    *(v30 + 32) = v34;
    *(v30 + 200) = _swiftEmptyArrayStorage;
    v35 = (v30 + 200);
    *(v30 + 176) = v29;
    *(v30 + 184) = 0;
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      *(v30 + 184) = v4[8];
      *(v30 + 192) = 0;
    }

    (*(v9 + 16))(v11, a3, v8);
    sub_AB33D0();
    v37 = v36;
    (*(v9 + 8))(v11, v8);
    swift_beginAccess();
    v38 = *v35;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v35 = v38;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v38 = sub_6AFAC(0, *(v38 + 2) + 1, 1, v38);
      *v35 = v38;
    }

    v41 = *(v38 + 2);
    v40 = *(v38 + 3);
    if (v41 >= v40 >> 1)
    {
      v38 = sub_6AFAC((v40 > 1), v41 + 1, 1, v38);
    }

    *(v38 + 2) = v41 + 1;
    v42 = &v38[16 * v41];
    *(v42 + 4) = v37;
    v42[40] = 0;
    *v35 = v38;
    swift_endAccess();
    if ((v48 & 0x100000000) != 0)
    {
      v43 = v63;
    }

    else
    {
      v43 = 0;
    }

    if ((v48 & 0x100000000) != 0)
    {
      v44 = *(&v63 + 1);
    }

    else
    {
      v44 = 0;
    }

    if (v49)
    {
      v43 = *(v49 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
      v44 = *(v49 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);
    }

    else if (!v44)
    {
      v51[0] = *(&v65 + 1);
      v43 = sub_ABB330();
      v44 = v47;
      goto LABEL_43;
    }

LABEL_43:
    swift_beginAccess();

    v45 = swift_isUniquelyReferenced_nonNull_native();
    v50 = v4[13];
    v4[13] = 0x8000000000000000;
    sub_929A4(v30, v43, v44, v45);

    v4[13] = v50;
    swift_endAccess();

LABEL_44:
    sub_12E1C(v52, qword_DF1340, &unk_B07BD0);
    return;
  }

  v21 = sub_2C2590(v19, sub_13303C, &qword_DFDD80, &qword_B08B78, sub_929A4, v20);
  (*(v9 + 16))(v11, a3, v8);
  sub_AB33D0();
  v23 = v22;
  (*(v9 + 8))(v11, v8);
  swift_beginAccess();
  v24 = *(v21 + 200);
  v25 = swift_isUniquelyReferenced_nonNull_native();
  *(v21 + 200) = v24;
  if ((v25 & 1) == 0)
  {
    v24 = sub_6AFAC(0, *(v24 + 2) + 1, 1, v24);
    *(v21 + 200) = v24;
  }

  v27 = *(v24 + 2);
  v26 = *(v24 + 3);
  if (v27 >= v26 >> 1)
  {
    v24 = sub_6AFAC((v26 > 1), v27 + 1, 1, v24);
  }

  *(v24 + 2) = v27 + 1;
  v28 = &v24[16 * v27];
  *(v28 + 4) = v23;
  v28[40] = 0;
  *(v21 + 200) = v24;
  swift_endAccess();
  sub_12E1C(v52, qword_DF1340, &unk_B07BD0);
}

void sub_2CA170(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_AB3430();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v13 = Strong;
  sub_2D4FDC(a1, v52);

  v60 = v52[6];
  v61 = v52[7];
  *v62 = v53[0];
  *&v62[9] = *(v53 + 9);
  v56 = v52[2];
  v57 = v52[3];
  v58 = v52[4];
  v59 = v52[5];
  v54 = v52[0];
  v55 = v52[1];
  if (sub_A996C(&v54) == 1)
  {
    return;
  }

  v69 = v60;
  v70 = v61;
  v71[0] = *v62;
  *(v71 + 9) = *&v62[9];
  v65 = v56;
  v66 = v57;
  v67 = v58;
  v68 = v59;
  v63 = v54;
  v64 = v55;
  HIDWORD(v48) = v62[0];
  if (v62[0])
  {
    v14 = v54.n128_u64[0];
  }

  else
  {
    v14 = 0;
  }

  if (v62[0])
  {
    v15 = v54.n128_i64[1];
  }

  else
  {
    v15 = 0;
  }

  v49 = v67.n128_u64[1];
  if (v67.n128_u64[1])
  {
    v14 = *(v67.n128_u64[1] + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
    v15 = *(v67.n128_u64[1] + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);
LABEL_13:

    goto LABEL_14;
  }

  if (v15)
  {
    goto LABEL_13;
  }

  v51[0] = v65.n128_u64[1];
  v14 = sub_ABB330();
  v15 = v46;
LABEL_14:
  swift_beginAccess();
  if (*(v4[13] + 16))
  {

    sub_2EBF88(v14, v15);
    v17 = v16;

    if (v17)
    {
      goto LABEL_44;
    }
  }

  else
  {
  }

  swift_beginAccess();
  if (!*(v4[14] + 16) || (sub_2F5A90(a1), (v18 & 1) == 0))
  {
    sub_465F4(&v63, v51);
    if (qword_DE6D70 != -1)
    {
      swift_once();
    }

    UnfairLock.locked<A>(_:)(sub_13303C);
    v29 = qword_E0A760;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFDDA0, &qword_B08BB8);
    v30 = swift_allocObject();
    *(v30 + 192) = 513;
    v31 = v70;
    *(v30 + 112) = v69;
    *(v30 + 128) = v31;
    *(v30 + 144) = v71[0];
    *(v30 + 153) = *(v71 + 9);
    v32 = v66;
    *(v30 + 48) = v65;
    *(v30 + 64) = v32;
    v33 = v68;
    *(v30 + 80) = v67;
    *(v30 + 96) = v33;
    v34 = v64;
    *(v30 + 16) = v63;
    *(v30 + 32) = v34;
    *(v30 + 200) = _swiftEmptyArrayStorage;
    v35 = (v30 + 200);
    *(v30 + 176) = v29;
    *(v30 + 184) = 0;
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      *(v30 + 184) = v4[8];
      *(v30 + 192) = 0;
    }

    (*(v9 + 16))(v11, a3, v8);
    sub_AB33D0();
    v37 = v36;
    (*(v9 + 8))(v11, v8);
    swift_beginAccess();
    v38 = *v35;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v35 = v38;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v38 = sub_6AFE4(0, *(v38 + 2) + 1, 1, v38);
      *v35 = v38;
    }

    v41 = *(v38 + 2);
    v40 = *(v38 + 3);
    if (v41 >= v40 >> 1)
    {
      v38 = sub_6AFE4((v40 > 1), v41 + 1, 1, v38);
    }

    *(v38 + 2) = v41 + 1;
    v42 = &v38[16 * v41];
    *(v42 + 4) = v37;
    v42[40] = 0;
    *v35 = v38;
    swift_endAccess();
    if ((v48 & 0x100000000) != 0)
    {
      v43 = v63.n128_u64[0];
    }

    else
    {
      v43 = 0;
    }

    if ((v48 & 0x100000000) != 0)
    {
      v44 = v63.n128_i64[1];
    }

    else
    {
      v44 = 0;
    }

    if (v49)
    {
      v43 = *(v49 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
      v44 = *(v49 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);
    }

    else if (!v44)
    {
      v51[0] = v65.n128_u64[1];
      v43 = sub_ABB330();
      v44 = v47;
      goto LABEL_43;
    }

LABEL_43:
    swift_beginAccess();

    v45 = swift_isUniquelyReferenced_nonNull_native();
    v50 = v4[13];
    v4[13] = 0x8000000000000000;
    sub_929D0(v30, v43, v44, v45);

    v4[13] = v50;
    swift_endAccess();

LABEL_44:
    sub_12E1C(v52, qword_DF1340, &unk_B07BD0);
    return;
  }

  v21 = sub_2C2590(v19, sub_13303C, &qword_DFDDA0, &qword_B08BB8, sub_929D0, v20);
  (*(v9 + 16))(v11, a3, v8);
  sub_AB33D0();
  v23 = v22;
  (*(v9 + 8))(v11, v8);
  swift_beginAccess();
  v24 = *(v21 + 200);
  v25 = swift_isUniquelyReferenced_nonNull_native();
  *(v21 + 200) = v24;
  if ((v25 & 1) == 0)
  {
    v24 = sub_6AFE4(0, *(v24 + 2) + 1, 1, v24);
    *(v21 + 200) = v24;
  }

  v27 = *(v24 + 2);
  v26 = *(v24 + 3);
  if (v27 >= v26 >> 1)
  {
    v24 = sub_6AFE4((v26 > 1), v27 + 1, 1, v24);
  }

  *(v24 + 2) = v27 + 1;
  v28 = &v24[16 * v27];
  *(v28 + 4) = v23;
  v28[40] = 0;
  *(v21 + 200) = v24;
  swift_endAccess();
  sub_12E1C(v52, qword_DF1340, &unk_B07BD0);
}

uint64_t sub_2CA81C(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_AB7C80();
  v34 = *(v7 - 8);
  __chkstk_darwin();
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_AB3430();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = 0;
  if (*(*(v3 + 104) + 16))
  {
    v15 = 1;
  }

  else
  {
    v15 = (a1 & 4) == 0;
  }

  if (v15)
  {
    v31 = a1;
    sub_2C28E8(a3, a2);
    v16 = dispatch_semaphore_create(1);
    v33 = v7;
    v17 = v16;
    v18 = swift_allocObject();
    *(v18 + 16) = _swiftEmptyArrayStorage;
    v30[1] = v18 + 16;
    v32 = *(v3 + 88);
    v19 = swift_allocObject();
    swift_weakInit();
    (*(v11 + 16))(v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
    v20 = (*(v11 + 80) + 40) & ~*(v11 + 80);
    v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    *(v22 + 16) = v31;
    *(v22 + 24) = v18;
    *(v22 + 32) = v19;
    (*(v11 + 32))(v22 + v20, v13, v10);
    *(v22 + v21) = v17;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_2E37FC;
    *(v23 + 24) = v22;

    v24 = v17;

    sub_48CAE8(sub_2E47B8, v23);

    sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
    static OS_dispatch_queue.UIFeedbackDeadline.getter();
    sub_ABA2F0();
    (*(v34 + 8))(v9, v33);
    if (sub_AB7BF0())
    {

      swift_beginAccess();
      v25 = *(v18 + 16);

      return v25;
    }

    else
    {
      if (qword_DE6888 != -1)
      {
        swift_once();
      }

      v26 = sub_AB4BC0();
      __swift_project_value_buffer(v26, qword_E70EB0);
      v27 = sub_AB4BA0();
      v28 = sub_AB9F30();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_0, v27, v28, "Semaphore returned a non-success code.  No impressions were generated", v29, 2u);
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_2CAC5C(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_AB7C80();
  v34 = *(v7 - 8);
  __chkstk_darwin();
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_AB3430();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = 0;
  if (*(*(v3 + 104) + 16))
  {
    v15 = 1;
  }

  else
  {
    v15 = (a1 & 4) == 0;
  }

  if (v15)
  {
    v31 = a1;
    sub_2C3170(a3, a2);
    v16 = dispatch_semaphore_create(1);
    v33 = v7;
    v17 = v16;
    v18 = swift_allocObject();
    *(v18 + 16) = _swiftEmptyArrayStorage;
    v30[1] = v18 + 16;
    v32 = *(v3 + 88);
    v19 = swift_allocObject();
    swift_weakInit();
    (*(v11 + 16))(v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
    v20 = (*(v11 + 80) + 40) & ~*(v11 + 80);
    v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    *(v22 + 16) = v31;
    *(v22 + 24) = v18;
    *(v22 + 32) = v19;
    (*(v11 + 32))(v22 + v20, v13, v10);
    *(v22 + v21) = v17;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_2E2A70;
    *(v23 + 24) = v22;

    v24 = v17;

    sub_48CAE8(sub_2E47B8, v23);

    sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
    static OS_dispatch_queue.UIFeedbackDeadline.getter();
    sub_ABA2F0();
    (*(v34 + 8))(v9, v33);
    if (sub_AB7BF0())
    {

      swift_beginAccess();
      v25 = *(v18 + 16);

      return v25;
    }

    else
    {
      if (qword_DE6888 != -1)
      {
        swift_once();
      }

      v26 = sub_AB4BC0();
      __swift_project_value_buffer(v26, qword_E70EB0);
      v27 = sub_AB4BA0();
      v28 = sub_AB9F30();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_0, v27, v28, "Semaphore returned a non-success code.  No impressions were generated", v29, 2u);
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_2CB09C(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_AB7C80();
  v34 = *(v7 - 8);
  __chkstk_darwin();
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_AB3430();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = 0;
  if (*(*(v3 + 104) + 16))
  {
    v15 = 1;
  }

  else
  {
    v15 = (a1 & 4) == 0;
  }

  if (v15)
  {
    v31 = a1;
    sub_2C39F8(a3, a2);
    v16 = dispatch_semaphore_create(1);
    v33 = v7;
    v17 = v16;
    v18 = swift_allocObject();
    *(v18 + 16) = _swiftEmptyArrayStorage;
    v30[1] = v18 + 16;
    v32 = *(v3 + 88);
    v19 = swift_allocObject();
    swift_weakInit();
    (*(v11 + 16))(v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
    v20 = (*(v11 + 80) + 40) & ~*(v11 + 80);
    v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    *(v22 + 16) = v31;
    *(v22 + 24) = v18;
    *(v22 + 32) = v19;
    (*(v11 + 32))(v22 + v20, v13, v10);
    *(v22 + v21) = v17;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_2E3D50;
    *(v23 + 24) = v22;

    v24 = v17;

    sub_48CAE8(sub_2E47B8, v23);

    sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
    static OS_dispatch_queue.UIFeedbackDeadline.getter();
    sub_ABA2F0();
    (*(v34 + 8))(v9, v33);
    if (sub_AB7BF0())
    {

      swift_beginAccess();
      v25 = *(v18 + 16);

      return v25;
    }

    else
    {
      if (qword_DE6888 != -1)
      {
        swift_once();
      }

      v26 = sub_AB4BC0();
      __swift_project_value_buffer(v26, qword_E70EB0);
      v27 = sub_AB4BA0();
      v28 = sub_AB9F30();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_0, v27, v28, "Semaphore returned a non-success code.  No impressions were generated", v29, 2u);
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_2CB4DC(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_AB7C80();
  v34 = *(v7 - 8);
  __chkstk_darwin();
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_AB3430();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = 0;
  if (*(*(v3 + 104) + 16))
  {
    v15 = 1;
  }

  else
  {
    v15 = (a1 & 4) == 0;
  }

  if (v15)
  {
    v31 = a1;
    sub_2C4280(a3, a2);
    v16 = dispatch_semaphore_create(1);
    v33 = v7;
    v17 = v16;
    v18 = swift_allocObject();
    *(v18 + 16) = _swiftEmptyArrayStorage;
    v30[1] = v18 + 16;
    v32 = *(v3 + 88);
    v19 = swift_allocObject();
    swift_weakInit();
    (*(v11 + 16))(v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
    v20 = (*(v11 + 80) + 40) & ~*(v11 + 80);
    v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    *(v22 + 16) = v31;
    *(v22 + 24) = v18;
    *(v22 + 32) = v19;
    (*(v11 + 32))(v22 + v20, v13, v10);
    *(v22 + v21) = v17;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_2E405C;
    *(v23 + 24) = v22;

    v24 = v17;

    sub_48CAE8(sub_2E47B8, v23);

    sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
    static OS_dispatch_queue.UIFeedbackDeadline.getter();
    sub_ABA2F0();
    (*(v34 + 8))(v9, v33);
    if (sub_AB7BF0())
    {

      swift_beginAccess();
      v25 = *(v18 + 16);

      return v25;
    }

    else
    {
      if (qword_DE6888 != -1)
      {
        swift_once();
      }

      v26 = sub_AB4BC0();
      __swift_project_value_buffer(v26, qword_E70EB0);
      v27 = sub_AB4BA0();
      v28 = sub_AB9F30();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_0, v27, v28, "Semaphore returned a non-success code.  No impressions were generated", v29, 2u);
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_2CB91C(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_AB7C80();
  v34 = *(v7 - 8);
  __chkstk_darwin();
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_AB3430();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = 0;
  if (*(*(v3 + 104) + 16))
  {
    v15 = 1;
  }

  else
  {
    v15 = (a1 & 4) == 0;
  }

  if (v15)
  {
    v31 = a1;
    sub_2C4B08(a3, a2);
    v16 = dispatch_semaphore_create(1);
    v33 = v7;
    v17 = v16;
    v18 = swift_allocObject();
    *(v18 + 16) = _swiftEmptyArrayStorage;
    v30[1] = v18 + 16;
    v32 = *(v3 + 88);
    v19 = swift_allocObject();
    swift_weakInit();
    (*(v11 + 16))(v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
    v20 = (*(v11 + 80) + 40) & ~*(v11 + 80);
    v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    *(v22 + 16) = v31;
    *(v22 + 24) = v18;
    *(v22 + 32) = v19;
    (*(v11 + 32))(v22 + v20, v13, v10);
    *(v22 + v21) = v17;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_2E41B0;
    *(v23 + 24) = v22;

    v24 = v17;

    sub_48CAE8(sub_2E47B8, v23);

    sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
    static OS_dispatch_queue.UIFeedbackDeadline.getter();
    sub_ABA2F0();
    (*(v34 + 8))(v9, v33);
    if (sub_AB7BF0())
    {

      swift_beginAccess();
      v25 = *(v18 + 16);

      return v25;
    }

    else
    {
      if (qword_DE6888 != -1)
      {
        swift_once();
      }

      v26 = sub_AB4BC0();
      __swift_project_value_buffer(v26, qword_E70EB0);
      v27 = sub_AB4BA0();
      v28 = sub_AB9F30();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_0, v27, v28, "Semaphore returned a non-success code.  No impressions were generated", v29, 2u);
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_2CBD5C(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_AB7C80();
  v34 = *(v7 - 8);
  __chkstk_darwin();
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_AB3430();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = 0;
  if (*(*(v3 + 104) + 16))
  {
    v15 = 1;
  }

  else
  {
    v15 = (a1 & 4) == 0;
  }

  if (v15)
  {
    v31 = a1;
    sub_2C5390(a3, a2);
    v16 = dispatch_semaphore_create(1);
    v33 = v7;
    v17 = v16;
    v18 = swift_allocObject();
    *(v18 + 16) = _swiftEmptyArrayStorage;
    v30[1] = v18 + 16;
    v32 = *(v3 + 88);
    v19 = swift_allocObject();
    swift_weakInit();
    (*(v11 + 16))(v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
    v20 = (*(v11 + 80) + 40) & ~*(v11 + 80);
    v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    *(v22 + 16) = v31;
    *(v22 + 24) = v18;
    *(v22 + 32) = v19;
    (*(v11 + 32))(v22 + v20, v13, v10);
    *(v22 + v21) = v17;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_2E2B0C;
    *(v23 + 24) = v22;

    v24 = v17;

    sub_48CAE8(sub_2E47B8, v23);

    sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
    static OS_dispatch_queue.UIFeedbackDeadline.getter();
    sub_ABA2F0();
    (*(v34 + 8))(v9, v33);
    if (sub_AB7BF0())
    {

      swift_beginAccess();
      v25 = *(v18 + 16);

      return v25;
    }

    else
    {
      if (qword_DE6888 != -1)
      {
        swift_once();
      }

      v26 = sub_AB4BC0();
      __swift_project_value_buffer(v26, qword_E70EB0);
      v27 = sub_AB4BA0();
      v28 = sub_AB9F30();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_0, v27, v28, "Semaphore returned a non-success code.  No impressions were generated", v29, 2u);
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_2CC19C(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_AB7C80();
  v34 = *(v7 - 8);
  __chkstk_darwin();
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_AB3430();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = 0;
  if (*(*(v3 + 104) + 16))
  {
    v15 = 1;
  }

  else
  {
    v15 = (a1 & 4) == 0;
  }

  if (v15)
  {
    v31 = a1;
    sub_2C5C18(a3, a2);
    v16 = dispatch_semaphore_create(1);
    v33 = v7;
    v17 = v16;
    v18 = swift_allocObject();
    *(v18 + 16) = _swiftEmptyArrayStorage;
    v30[1] = v18 + 16;
    v32 = *(v3 + 88);
    v19 = swift_allocObject();
    swift_weakInit();
    (*(v11 + 16))(v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
    v20 = (*(v11 + 80) + 40) & ~*(v11 + 80);
    v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    *(v22 + 16) = v31;
    *(v22 + 24) = v18;
    *(v22 + 32) = v19;
    (*(v11 + 32))(v22 + v20, v13, v10);
    *(v22 + v21) = v17;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_2E3010;
    *(v23 + 24) = v22;

    v24 = v17;

    sub_48CAE8(sub_2E47B8, v23);

    sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
    static OS_dispatch_queue.UIFeedbackDeadline.getter();
    sub_ABA2F0();
    (*(v34 + 8))(v9, v33);
    if (sub_AB7BF0())
    {

      swift_beginAccess();
      v25 = *(v18 + 16);

      return v25;
    }

    else
    {
      if (qword_DE6888 != -1)
      {
        swift_once();
      }

      v26 = sub_AB4BC0();
      __swift_project_value_buffer(v26, qword_E70EB0);
      v27 = sub_AB4BA0();
      v28 = sub_AB9F30();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_0, v27, v28, "Semaphore returned a non-success code.  No impressions were generated", v29, 2u);
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_2CC5DC(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_AB7C80();
  v34 = *(v7 - 8);
  __chkstk_darwin();
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_AB3430();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = 0;
  if (*(*(v3 + 104) + 16))
  {
    v15 = 1;
  }

  else
  {
    v15 = (a1 & 4) == 0;
  }

  if (v15)
  {
    v31 = a1;
    sub_2C64A0(a3, a2);
    v16 = dispatch_semaphore_create(1);
    v33 = v7;
    v17 = v16;
    v18 = swift_allocObject();
    *(v18 + 16) = _swiftEmptyArrayStorage;
    v30[1] = v18 + 16;
    v32 = *(v3 + 88);
    v19 = swift_allocObject();
    swift_weakInit();
    (*(v11 + 16))(v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
    v20 = (*(v11 + 80) + 40) & ~*(v11 + 80);
    v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    *(v22 + 16) = v31;
    *(v22 + 24) = v18;
    *(v22 + 32) = v19;
    (*(v11 + 32))(v22 + v20, v13, v10);
    *(v22 + v21) = v17;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_2E30DC;
    *(v23 + 24) = v22;

    v24 = v17;

    sub_48CAE8(sub_2E47B8, v23);

    sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
    static OS_dispatch_queue.UIFeedbackDeadline.getter();
    sub_ABA2F0();
    (*(v34 + 8))(v9, v33);
    if (sub_AB7BF0())
    {

      swift_beginAccess();
      v25 = *(v18 + 16);

      return v25;
    }

    else
    {
      if (qword_DE6888 != -1)
      {
        swift_once();
      }

      v26 = sub_AB4BC0();
      __swift_project_value_buffer(v26, qword_E70EB0);
      v27 = sub_AB4BA0();
      v28 = sub_AB9F30();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_0, v27, v28, "Semaphore returned a non-success code.  No impressions were generated", v29, 2u);
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_2CCA1C(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_AB7C80();
  v34 = *(v7 - 8);
  __chkstk_darwin();
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_AB3430();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = 0;
  if (*(*(v3 + 104) + 16))
  {
    v15 = 1;
  }

  else
  {
    v15 = (a1 & 4) == 0;
  }

  if (v15)
  {
    v31 = a1;
    sub_2C6D28(a3, a2);
    v16 = dispatch_semaphore_create(1);
    v33 = v7;
    v17 = v16;
    v18 = swift_allocObject();
    *(v18 + 16) = _swiftEmptyArrayStorage;
    v30[1] = v18 + 16;
    v32 = *(v3 + 88);
    v19 = swift_allocObject();
    swift_weakInit();
    (*(v11 + 16))(v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
    v20 = (*(v11 + 80) + 40) & ~*(v11 + 80);
    v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    *(v22 + 16) = v31;
    *(v22 + 24) = v18;
    *(v22 + 32) = v19;
    (*(v11 + 32))(v22 + v20, v13, v10);
    *(v22 + v21) = v17;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_2E2E18;
    *(v23 + 24) = v22;

    v24 = v17;

    sub_48CAE8(sub_2E47B8, v23);

    sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
    static OS_dispatch_queue.UIFeedbackDeadline.getter();
    sub_ABA2F0();
    (*(v34 + 8))(v9, v33);
    if (sub_AB7BF0())
    {

      swift_beginAccess();
      v25 = *(v18 + 16);

      return v25;
    }

    else
    {
      if (qword_DE6888 != -1)
      {
        swift_once();
      }

      v26 = sub_AB4BC0();
      __swift_project_value_buffer(v26, qword_E70EB0);
      v27 = sub_AB4BA0();
      v28 = sub_AB9F30();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_0, v27, v28, "Semaphore returned a non-success code.  No impressions were generated", v29, 2u);
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_2CCE5C(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_AB7C80();
  v34 = *(v7 - 8);
  __chkstk_darwin();
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_AB3430();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = 0;
  if (*(*(v3 + 104) + 16))
  {
    v15 = 1;
  }

  else
  {
    v15 = (a1 & 4) == 0;
  }

  if (v15)
  {
    v31 = a1;
    sub_2C75B0(a3, a2);
    v16 = dispatch_semaphore_create(1);
    v33 = v7;
    v17 = v16;
    v18 = swift_allocObject();
    *(v18 + 16) = _swiftEmptyArrayStorage;
    v30[1] = v18 + 16;
    v32 = *(v3 + 88);
    v19 = swift_allocObject();
    swift_weakInit();
    (*(v11 + 16))(v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
    v20 = (*(v11 + 80) + 40) & ~*(v11 + 80);
    v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    *(v22 + 16) = v31;
    *(v22 + 24) = v18;
    *(v22 + 32) = v19;
    (*(v11 + 32))(v22 + v20, v13, v10);
    *(v22 + v21) = v17;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_2E2834;
    *(v23 + 24) = v22;

    v24 = v17;

    sub_48CAE8(sub_2E2870, v23);

    sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
    static OS_dispatch_queue.UIFeedbackDeadline.getter();
    sub_ABA2F0();
    (*(v34 + 8))(v9, v33);
    if (sub_AB7BF0())
    {

      swift_beginAccess();
      v25 = *(v18 + 16);

      return v25;
    }

    else
    {
      if (qword_DE6888 != -1)
      {
        swift_once();
      }

      v26 = sub_AB4BC0();
      __swift_project_value_buffer(v26, qword_E70EB0);
      v27 = sub_AB4BA0();
      v28 = sub_AB9F30();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_0, v27, v28, "Semaphore returned a non-success code.  No impressions were generated", v29, 2u);
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_2CD29C(unsigned __int16 a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = sub_AB7C80();
  v34 = *(v9 - 8);
  v35 = v9;
  __chkstk_darwin();
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_AB3430();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = 0;
  if (*(*(v4 + 104) + 16))
  {
    v17 = 1;
  }

  else
  {
    v17 = (a1 & 4) == 0;
  }

  if (v17)
  {
    v32 = a1;
    sub_2C7E38(a3, a4 & 1, a2);
    v18 = dispatch_semaphore_create(1);
    v19 = swift_allocObject();
    *(v19 + 16) = _swiftEmptyArrayStorage;
    v31[1] = v19 + 16;
    v33 = *(v4 + 88);
    v20 = swift_allocObject();
    swift_weakInit();
    (*(v13 + 16))(v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v12);
    v21 = (*(v13 + 80) + 40) & ~*(v13 + 80);
    v22 = (v14 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    *(v23 + 16) = v32;
    *(v23 + 24) = v19;
    *(v23 + 32) = v20;
    (*(v13 + 32))(v23 + v21, v15, v12);
    *(v23 + v22) = v18;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_2E28B0;
    *(v24 + 24) = v23;

    v25 = v18;

    sub_48CAE8(sub_2E47B8, v24);

    sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
    static OS_dispatch_queue.UIFeedbackDeadline.getter();
    sub_ABA2F0();
    (*(v34 + 8))(v11, v35);
    if (sub_AB7BF0())
    {

      swift_beginAccess();
      v26 = *(v19 + 16);

      return v26;
    }

    else
    {
      if (qword_DE6888 != -1)
      {
        swift_once();
      }

      v27 = sub_AB4BC0();
      __swift_project_value_buffer(v27, qword_E70EB0);
      v28 = sub_AB4BA0();
      v29 = sub_AB9F30();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_0, v28, v29, "Semaphore returned a non-success code.  No impressions were generated", v30, 2u);
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_2CD6DC(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_AB7C80();
  v34 = *(v7 - 8);
  __chkstk_darwin();
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_AB3430();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = 0;
  if (*(*(v3 + 104) + 16))
  {
    v15 = 1;
  }

  else
  {
    v15 = (a1 & 4) == 0;
  }

  if (v15)
  {
    v31 = a1;
    sub_2C84E4(a3, a2);
    v16 = dispatch_semaphore_create(1);
    v33 = v7;
    v17 = v16;
    v18 = swift_allocObject();
    *(v18 + 16) = _swiftEmptyArrayStorage;
    v30[1] = v18 + 16;
    v32 = *(v3 + 88);
    v19 = swift_allocObject();
    swift_weakInit();
    (*(v11 + 16))(v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
    v20 = (*(v11 + 80) + 40) & ~*(v11 + 80);
    v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    *(v22 + 16) = v31;
    *(v22 + 24) = v18;
    *(v22 + 32) = v19;
    (*(v11 + 32))(v22 + v20, v13, v10);
    *(v22 + v21) = v17;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_2E3884;
    *(v23 + 24) = v22;

    v24 = v17;

    sub_48CAE8(sub_2E47B8, v23);

    sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
    static OS_dispatch_queue.UIFeedbackDeadline.getter();
    sub_ABA2F0();
    (*(v34 + 8))(v9, v33);
    if (sub_AB7BF0())
    {

      swift_beginAccess();
      v25 = *(v18 + 16);

      return v25;
    }

    else
    {
      if (qword_DE6888 != -1)
      {
        swift_once();
      }

      v26 = sub_AB4BC0();
      __swift_project_value_buffer(v26, qword_E70EB0);
      v27 = sub_AB4BA0();
      v28 = sub_AB9F30();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_0, v27, v28, "Semaphore returned a non-success code.  No impressions were generated", v29, 2u);
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_2CDB1C(unsigned __int16 a1, uint64_t a2, unint64_t a3, char a4)
{
  v9 = sub_AB7C80();
  v34 = *(v9 - 8);
  v35 = v9;
  __chkstk_darwin();
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_AB3430();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = 0;
  if (*(*(v4 + 104) + 16))
  {
    v17 = 1;
  }

  else
  {
    v17 = (a1 & 4) == 0;
  }

  if (v17)
  {
    v32 = a1;
    sub_2C8D6C(a3, a4 & 1, a2);
    v18 = dispatch_semaphore_create(1);
    v19 = swift_allocObject();
    *(v19 + 16) = _swiftEmptyArrayStorage;
    v31[1] = v19 + 16;
    v33 = *(v4 + 88);
    v20 = swift_allocObject();
    swift_weakInit();
    (*(v13 + 16))(v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v12);
    v21 = (*(v13 + 80) + 40) & ~*(v13 + 80);
    v22 = (v14 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    *(v23 + 16) = v32;
    *(v23 + 24) = v19;
    *(v23 + 32) = v20;
    (*(v13 + 32))(v23 + v21, v15, v12);
    *(v23 + v22) = v18;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_2E3A44;
    *(v24 + 24) = v23;

    v25 = v18;

    sub_48CAE8(sub_2E47B8, v24);

    sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
    static OS_dispatch_queue.UIFeedbackDeadline.getter();
    sub_ABA2F0();
    (*(v34 + 8))(v11, v35);
    if (sub_AB7BF0())
    {

      swift_beginAccess();
      v26 = *(v19 + 16);

      return v26;
    }

    else
    {
      if (qword_DE6888 != -1)
      {
        swift_once();
      }

      v27 = sub_AB4BC0();
      __swift_project_value_buffer(v27, qword_E70EB0);
      v28 = sub_AB4BA0();
      v29 = sub_AB9F30();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_0, v28, v29, "Semaphore returned a non-success code.  No impressions were generated", v30, 2u);
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_2CDF5C(unsigned __int16 a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = sub_AB7C80();
  v34 = *(v9 - 8);
  v35 = v9;
  __chkstk_darwin();
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_AB3430();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = 0;
  if (*(*(v4 + 104) + 16))
  {
    v17 = 1;
  }

  else
  {
    v17 = (a1 & 4) == 0;
  }

  if (v17)
  {
    v32 = a1;
    sub_2C9418(a3, a4 & 1, a2);
    v18 = dispatch_semaphore_create(1);
    v19 = swift_allocObject();
    *(v19 + 16) = _swiftEmptyArrayStorage;
    v31[1] = v19 + 16;
    v33 = *(v4 + 88);
    v20 = swift_allocObject();
    swift_weakInit();
    (*(v13 + 16))(v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v12);
    v21 = (*(v13 + 80) + 40) & ~*(v13 + 80);
    v22 = (v14 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    *(v23 + 16) = v32;
    *(v23 + 24) = v19;
    *(v23 + 32) = v20;
    (*(v13 + 32))(v23 + v21, v15, v12);
    *(v23 + v22) = v18;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_2E363C;
    *(v24 + 24) = v23;

    v25 = v18;

    sub_48CAE8(sub_2E47B8, v24);

    sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
    static OS_dispatch_queue.UIFeedbackDeadline.getter();
    sub_ABA2F0();
    (*(v34 + 8))(v11, v35);
    if (sub_AB7BF0())
    {

      swift_beginAccess();
      v26 = *(v19 + 16);

      return v26;
    }

    else
    {
      if (qword_DE6888 != -1)
      {
        swift_once();
      }

      v27 = sub_AB4BC0();
      __swift_project_value_buffer(v27, qword_E70EB0);
      v28 = sub_AB4BA0();
      v29 = sub_AB9F30();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_0, v28, v29, "Semaphore returned a non-success code.  No impressions were generated", v30, 2u);
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_2CE39C(unsigned __int16 a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(uint64_t, void, uint64_t, __n128), uint64_t a6, uint64_t a7, void (*a8)(uint64_t, double))
{
  v38 = a7;
  v39 = a8;
  v36 = a5;
  v37 = a6;
  v35 = a3;
  v12 = sub_AB7C80();
  v40 = *(v12 - 8);
  v41 = v12;
  __chkstk_darwin();
  v14 = &v33[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_AB3430();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin();
  swift_beginAccess();
  v18 = 0;
  if (*(*(v8 + 104) + 16))
  {
    v19 = 1;
  }

  else
  {
    v19 = (a1 & 4) == 0;
  }

  if (v19)
  {
    v34 = a1;
    v20 = a2;
    (v36)(v35, a4 & 1, a2);
    v21 = dispatch_semaphore_create(1);
    v22 = swift_allocObject();
    *(v22 + 16) = _swiftEmptyArrayStorage;
    v23 = *(v8 + 88);
    v35 = v22 + 16;
    v36 = v23;
    v24 = swift_allocObject();
    swift_weakInit();
    (*(v16 + 16))(&v33[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)], v20, v15);
    v25 = (*(v16 + 80) + 40) & ~*(v16 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = v34;
    *(v26 + 24) = v22;
    *(v26 + 32) = v24;
    (*(v16 + 32))(v26 + v25, &v33[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)], v15);
    *(v26 + ((v17 + v25 + 7) & 0xFFFFFFFFFFFFFFF8)) = v21;

    v27 = v21;
    sub_48C8C4(v39, v26);

    sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
    static OS_dispatch_queue.UIFeedbackDeadline.getter();
    sub_ABA2F0();
    (*(v40 + 8))(v14, v41);
    if (sub_AB7BF0())
    {

      swift_beginAccess();
      v18 = *(v22 + 16);
    }

    else
    {
      if (qword_DE6888 != -1)
      {
        swift_once();
      }

      v28 = sub_AB4BC0();
      __swift_project_value_buffer(v28, qword_E70EB0);
      v29 = sub_AB4BA0();
      v30 = sub_AB9F30();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_0, v29, v30, "Semaphore returned a non-success code.  No impressions were generated", v31, 2u);
      }

      return 0;
    }
  }

  return v18;
}

void sub_2CE798(uint64_t a1, uint64_t (*a2)(uint64_t, char *, char *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1330, &qword_AF9120);
  __chkstk_darwin();
  v5 = &v37 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v7 = &v37 - v6;
  v8 = *(sub_AB3430() - 8);
  __chkstk_darwin();
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_DE6D68 != -1)
  {
    v36 = v9;
    swift_once();
    v9 = v36;
  }

  if ((byte_E71A90 & 1) == 0 && *(v2 + 145) == 1)
  {
    v42 = 0;
    memset(v41, 0, sizeof(v41));
    v12 = v9;
    sub_AB3420();
    v38 = v5;
    sub_15F84(v41, v40, &qword_DF2BD0, &unk_AFDC00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF2BD0, &unk_AFDC00);
    v13 = sub_AB3820();
    v14 = swift_dynamicCast();
    (*(*(v13 - 8) + 56))(v7, v14 ^ 1u, 1, v13);
    v39 = v2;
    v15 = a2(2, v11, v7);
    (*(v8 + 8))(v11, v12);
    v16 = v38;
    sub_12E1C(v41, &qword_DF2BD0, &unk_AFDC00);
    sub_12E1C(v7, &unk_DE8E20, &qword_AF7990);
    if (v15)
    {
      if (v15 >> 62)
      {
        if (!sub_ABB060())
        {
          goto LABEL_29;
        }
      }

      else if (!*(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8)))
      {
LABEL_29:

        return;
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v18 = Strong;
        ObjectType = swift_getObjectType();
        v20 = swift_conformsToProtocol2();
        if (!v20)
        {
          goto LABEL_34;
        }

        (*(v20 + 24))(ObjectType, v20);
      }

      else
      {
        v21 = type metadata accessor for MetricsPageProperties(0);
        (*(*(v21 - 8) + 56))(v16, 1, 1, v21);
      }

      v22 = *MetricsReportingController.shared.unsafeMutableAddressor();
      if (v15 >> 62)
      {
        v23 = sub_ABB060();
        if (v23)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v23 = *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8));
        if (v23)
        {
LABEL_14:
          *&v41[0] = _swiftEmptyArrayStorage;
          v24 = v22;
          sub_6D410(0, v23 & ~(v23 >> 63), 0);
          if ((v23 & 0x8000000000000000) == 0)
          {
            v26 = *&v41[0];
            if ((v15 & 0xC000000000000001) != 0)
            {
              for (i = 0; i != v23; ++i)
              {
                v28 = *(sub_35FC58(i, v15, v25) + OBJC_IVAR____TtC11MusicJSCore12JSImpression_fields);

                swift_unknownObjectRelease();
                *&v41[0] = v26;
                v30 = v26[2];
                v29 = v26[3];
                if (v30 >= v29 >> 1)
                {
                  sub_6D410((v29 > 1), v30 + 1, 1);
                  v26 = *&v41[0];
                }

                v26[2] = v30 + 1;
                v26[v30 + 4] = v28;
              }
            }

            else
            {
              v32 = (v15 + 32);
              do
              {
                v33 = *(*v32 + OBJC_IVAR____TtC11MusicJSCore12JSImpression_fields);
                *&v41[0] = v26;
                v35 = v26[2];
                v34 = v26[3];

                if (v35 >= v34 >> 1)
                {
                  sub_6D410((v34 > 1), v35 + 1, 1);
                  v26 = *&v41[0];
                }

                v26[2] = v35 + 1;
                v26[v35 + 4] = v33;
                ++v32;
                --v23;
              }

              while (v23);
            }

            v16 = v38;
            goto LABEL_28;
          }

          __break(1u);
LABEL_34:
          __break(1u);
          return;
        }
      }

      v31 = v22;
      v26 = _swiftEmptyArrayStorage;
LABEL_28:
      (*(&stru_68.flags + (swift_isaMask & *v22)))(v26, v16, 0, 0, 0, 0, 0);

      sub_2C2020();
      sub_12E1C(v16, &unk_DF1330, &qword_AF9120);
      goto LABEL_29;
    }
  }
}

void sub_2CED10(uint64_t a1, uint64_t (*a2)(uint64_t, char *, uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1330, &qword_AF9120);
  __chkstk_darwin();
  v5 = &v34 - v4;
  v6 = *(sub_AB3430() - 8);
  __chkstk_darwin();
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_DE6D68 != -1)
  {
    v33 = v7;
    swift_once();
    v7 = v33;
  }

  if ((byte_E71A90 & 1) == 0 && *(v2 + 145) == 1)
  {
    v10 = v7;
    v41 = 0;
    memset(v40, 0, sizeof(v40));
    sub_AB3420();
    sub_15F84(v40, v39, &qword_DF2BD0, &unk_AFDC00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF2BD0, &unk_AFDC00);
    v11 = swift_dynamicCast();
    if (v11)
    {
      v12 = v37;
    }

    else
    {
      v12 = 0;
      v37 = 0;
    }

    v38 = v11 ^ 1;
    v36 = v2;
    v13 = a2(2, v9, v12);
    (*(v6 + 8))(v9, v10);
    sub_12E1C(v40, &qword_DF2BD0, &unk_AFDC00);
    if (v13)
    {
      if (v13 >> 62)
      {
        if (!sub_ABB060())
        {
          goto LABEL_32;
        }
      }

      else if (!*(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)))
      {
LABEL_32:

        return;
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v15 = Strong;
        ObjectType = swift_getObjectType();
        v17 = swift_conformsToProtocol2();
        if (!v17)
        {
          goto LABEL_37;
        }

        (*(v17 + 24))(ObjectType, v17);
      }

      else
      {
        v18 = type metadata accessor for MetricsPageProperties(0);
        (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
      }

      v19 = *MetricsReportingController.shared.unsafeMutableAddressor();
      if (v13 >> 62)
      {
        v20 = sub_ABB060();
        if (v20)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v20 = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8));
        if (v20)
        {
LABEL_17:
          *&v40[0] = _swiftEmptyArrayStorage;
          v21 = v19;
          sub_6D410(0, v20 & ~(v20 >> 63), 0);
          if ((v20 & 0x8000000000000000) == 0)
          {
            v35 = v19;
            v23 = *&v40[0];
            if ((v13 & 0xC000000000000001) != 0)
            {
              for (i = 0; i != v20; ++i)
              {
                v25 = *(sub_35FC58(i, v13, v22) + OBJC_IVAR____TtC11MusicJSCore12JSImpression_fields);

                swift_unknownObjectRelease();
                *&v40[0] = v23;
                v27 = v23[2];
                v26 = v23[3];
                if (v27 >= v26 >> 1)
                {
                  sub_6D410((v26 > 1), v27 + 1, 1);
                  v23 = *&v40[0];
                }

                v23[2] = v27 + 1;
                v23[v27 + 4] = v25;
              }
            }

            else
            {
              v29 = (v13 + 32);
              do
              {
                v30 = *(*v29 + OBJC_IVAR____TtC11MusicJSCore12JSImpression_fields);
                *&v40[0] = v23;
                v32 = v23[2];
                v31 = v23[3];

                if (v32 >= v31 >> 1)
                {
                  sub_6D410((v31 > 1), v32 + 1, 1);
                  v23 = *&v40[0];
                }

                v23[2] = v32 + 1;
                v23[v32 + 4] = v30;
                ++v29;
                --v20;
              }

              while (v20);
            }

            v19 = v35;
            goto LABEL_31;
          }

          __break(1u);
LABEL_37:
          __break(1u);
          return;
        }
      }

      v28 = v19;
      v23 = _swiftEmptyArrayStorage;
LABEL_31:
      (*(&stru_68.flags + (swift_isaMask & *v19)))(v23, v5, 0, 0, 0, 0, 0);

      sub_2C2020();
      sub_12E1C(v5, &unk_DF1330, &qword_AF9120);
      goto LABEL_32;
    }
  }
}

void sub_2CF1FC(uint64_t a1, void (*a2)(uint64_t, void, uint64_t, __n128), uint64_t a3, uint64_t a4, void (*a5)(uint64_t, double))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1330, &qword_AF9120);
  __chkstk_darwin();
  v11 = &v41 - v10;
  v12 = *(sub_AB3430() - 8);
  __chkstk_darwin();
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_DE6D68 != -1)
  {
    v40 = v13;
    swift_once();
    v13 = v40;
  }

  if ((byte_E71A90 & 1) == 0 && *(v5 + 145) == 1)
  {
    v42 = v11;
    v16 = v13;
    v48 = 0;
    memset(v47, 0, sizeof(v47));
    sub_AB3420();
    sub_15F84(v47, v46, &qword_DF2BD0, &unk_AFDC00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF2BD0, &unk_AFDC00);
    v17 = swift_dynamicCast();
    if (v17)
    {
      v18 = v44;
    }

    else
    {
      v18 = 0;
      v44 = 0;
    }

    v45 = v17 ^ 1;
    v43 = v5;
    v19 = sub_2CE39C(2u, v15, v18, v17 ^ 1u, a2, a3, a4, a5);
    (*(v12 + 8))(v15, v16);
    sub_12E1C(v47, &qword_DF2BD0, &unk_AFDC00);
    v20 = v42;
    if (v19)
    {
      if (v19 >> 62)
      {
        if (!sub_ABB060())
        {
          goto LABEL_32;
        }
      }

      else if (!*(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8)))
      {
LABEL_32:

        return;
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v22 = Strong;
        ObjectType = swift_getObjectType();
        v24 = swift_conformsToProtocol2();
        if (!v24)
        {
          goto LABEL_37;
        }

        (*(v24 + 24))(ObjectType, v24);
      }

      else
      {
        v25 = type metadata accessor for MetricsPageProperties(0);
        (*(*(v25 - 8) + 56))(v20, 1, 1, v25);
      }

      v26 = *MetricsReportingController.shared.unsafeMutableAddressor();
      if (v19 >> 62)
      {
        v27 = sub_ABB060();
        if (v27)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v27 = *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8));
        if (v27)
        {
LABEL_17:
          *&v47[0] = _swiftEmptyArrayStorage;
          v28 = v26;
          sub_6D410(0, v27 & ~(v27 >> 63), 0);
          if ((v27 & 0x8000000000000000) == 0)
          {
            v30 = *&v47[0];
            if ((v19 & 0xC000000000000001) != 0)
            {
              for (i = 0; i != v27; ++i)
              {
                v32 = *(sub_35FC58(i, v19, v29) + OBJC_IVAR____TtC11MusicJSCore12JSImpression_fields);

                swift_unknownObjectRelease();
                *&v47[0] = v30;
                v34 = v30[2];
                v33 = v30[3];
                if (v34 >= v33 >> 1)
                {
                  sub_6D410((v33 > 1), v34 + 1, 1);
                  v30 = *&v47[0];
                }

                v30[2] = v34 + 1;
                v30[v34 + 4] = v32;
              }
            }

            else
            {
              v36 = (v19 + 32);
              do
              {
                v37 = *(*v36 + OBJC_IVAR____TtC11MusicJSCore12JSImpression_fields);
                *&v47[0] = v30;
                v39 = v30[2];
                v38 = v30[3];

                if (v39 >= v38 >> 1)
                {
                  sub_6D410((v38 > 1), v39 + 1, 1);
                  v30 = *&v47[0];
                }

                v30[2] = v39 + 1;
                v30[v39 + 4] = v37;
                ++v36;
                --v27;
              }

              while (v27);
            }

            v20 = v42;
            goto LABEL_31;
          }

          __break(1u);
LABEL_37:
          __break(1u);
          return;
        }
      }

      v35 = v26;
      v30 = _swiftEmptyArrayStorage;
LABEL_31:
      (*(&stru_68.flags + (swift_isaMask & *v26)))(v30, v20, 0, 0, 0, 0, 0);

      sub_2C2020();
      sub_12E1C(v20, &unk_DF1330, &qword_AF9120);
      goto LABEL_32;
    }
  }
}

uint64_t sub_2CF704(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_AB3430();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v11 = Strong;
  sub_2D4608(&qword_DFDD88, &unk_B08B80, sub_2C1500, v10);

  if (a3)
  {
    v21 = 0;
    memset(v20, 0, sizeof(v20));
  }

  else
  {
    v19[0] = a2;
    sub_ABAD10();
  }

  sub_AB3420();
  sub_15F84(v20, v19, &qword_DF2BD0, &unk_AFDC00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF2BD0, &unk_AFDC00);
  v13 = swift_dynamicCast();
  if (v13)
  {
    v14 = v17;
  }

  else
  {
    v14 = 0;
    v17 = 0;
  }

  v18 = v13 ^ 1;
  v12 = sub_2CE39C(1u, v8, v14, v13 ^ 1u, sub_2C9AC4, &unk_D09008, &unk_D09030, sub_2E0F6C);
  (*(v6 + 8))(v8, v5);
  sub_12E1C(v20, &qword_DF2BD0, &unk_AFDC00);

  return v12;
}

uint64_t sub_2CF950(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_AB3430();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v11 = Strong;
  sub_2D4608(&qword_DFDDA8, &qword_B08BC0, sub_2C1830, v10);

  if (a3)
  {
    v21 = 0;
    memset(v20, 0, sizeof(v20));
  }

  else
  {
    v19[0] = a2;
    sub_ABAD10();
  }

  sub_AB3420();
  sub_15F84(v20, v19, &qword_DF2BD0, &unk_AFDC00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF2BD0, &unk_AFDC00);
  v13 = swift_dynamicCast();
  if (v13)
  {
    v14 = v17;
  }

  else
  {
    v14 = 0;
    v17 = 0;
  }

  v18 = v13 ^ 1;
  v12 = sub_2CE39C(1u, v8, v14, v13 ^ 1u, sub_2CA170, &unk_D091C0, &unk_D091E8, sub_2E24C4);
  (*(v6 + 8))(v8, v5);
  sub_12E1C(v20, &qword_DF2BD0, &unk_AFDC00);

  return v12;
}

double sub_2CFB9C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_DE6D68 != -1)
    {
      swift_once();
    }

    if ((byte_E71A90 & 1) == 0 && v4[145] == 1)
    {
      (*(*v4 + 776))();
    }
  }

  return result;
}

double sub_2CFC64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_AB2BD0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30, &unk_AF79A0);
  __chkstk_darwin();
  v11 = &v18 - v10;
  v12 = sub_AB9990();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  swift_weakInit();
  (*(v8 + 16))(&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  sub_AB9940();

  v14 = sub_AB9930();
  v15 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = v14;
  *(v16 + 3) = &protocol witness table for MainActor;
  *(v16 + 4) = v13;
  (*(v8 + 32))(&v16[v15], &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);

  sub_DC3A0(0, 0, v11, a5, v16);

  return result;
}

void sub_2CFE88(int a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, uint64_t a6, unint64_t a7, uint64_t *a8, void (*a9)(uint64_t, uint64_t, uint64_t), void (*a10)(__int128 *))
{
  v12 = (a2 + 16);
  if ((a1 & 4) != 0)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v27 = Strong;
      swift_beginAccess();
      v28 = *(v27 + 104);

      if (a1)
      {
        v30 = sub_2DDE5C(v28, a7, a8);

        v28 = v30;
      }

      v31 = __chkstk_darwin();
      LOBYTE(v39) = v32;
      BYTE1(v39) = a1 & 1;
      v40 = a4;
      v41 = *&a5;
      sub_2E0C2C(v28, a9, v31);
      v29 = v33;
    }

    else
    {
      v29 = 0;
    }

    swift_beginAccess();
    *v12 = v29;

    goto LABEL_17;
  }

  swift_beginAccess();
  v13 = swift_weakLoadStrong();
  if (!v13)
  {
LABEL_17:
    sub_ABA300();
    return;
  }

  v14 = v13;
  swift_retain_n();
  swift_getObjectType();
  v15 = &off_CFADC8;
  v16 = sub_13002C();
  v18 = v17;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (v16)
  {
    do
    {
      v15 = v18;
      swift_unknownObjectRelease();
      ObjectType = swift_getObjectType();
      v20 = (*(v18 + 32))(ObjectType, v18);
      v18 = v21;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
    }

    while (v20);
  }

  swift_beginAccess();
  if (*v12)
  {
    v34 = a1 | 4u;
    v35 = swift_getObjectType();
    v44 = 0;
    memset(v43, 0, sizeof(v43));
    v36 = sub_21CCAC(v34, a4, v43, v35, v15);
    sub_12E1C(v43, &qword_DF2BD0, &unk_AFDC00);
    if (v36)
    {
      sub_19500(v36);
    }

    v37 = (v15[7])(v35, v15);
    __chkstk_darwin();
    v39 = v14;
    LOWORD(v40) = v34;
    v41 = a4;
    v42 = v12;
    sub_2C1B60(a10, &v38, v37);

    swift_endAccess();
    swift_unknownObjectRelease();

    goto LABEL_17;
  }

  __break(1u);
}

void *sub_2D01E0(uint64_t a1)
{
  v2 = v1;
  *(v1 + *&stru_248.sectname[swift_isaMask & *v1]) = 0;
  *(v1 + *&stru_248.segname[(swift_isaMask & *v1) - 8]) = 0;
  v4 = *&stru_248.segname[swift_isaMask & *v1];
  *(v1 + v4) = sub_23DD70();
  *(v1 + *&stru_248.segname[(swift_isaMask & *v1) + 8]) = 0;
  *(v1 + *&stru_248.segname[(swift_isaMask & *v1) + 16]) = 0;
  *(v1 + *(&stru_248.size + (swift_isaMask & *v1))) = 0;
  *(v1 + *(&stru_248.offset + (swift_isaMask & *v1))) = 0;
  v5 = *(&stru_248.flags + (swift_isaMask & *v1));
  v6 = objc_allocWithZone(type metadata accessor for JSVerticalStackViewController(0));
  *(v1 + v5) = sub_9F704(_swiftEmptyArrayStorage);
  v7 = *(&stru_248.reserved2 + (swift_isaMask & *v1));
  *(v1 + v7) = [objc_allocWithZone(type metadata accessor for DetailHeader()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v8 = *&stru_298.sectname[swift_isaMask & *v1];
  *(v1 + v8) = 0;
  v9 = v2 + *&stru_298.segname[(swift_isaMask & *v2) - 8];
  *(v9 + 1) = 0;
  *(v9 + 2) = 0;
  *v9 = 0;
  v9[24] = 1;
  v10 = v2 + *&stru_298.segname[(swift_isaMask & *v2) + 8];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 2) = 0u;
  *(v10 + 3) = 0u;
  *(v10 + 8) = 0;
  *(v1 + *&stru_298.segname[(swift_isaMask & *v1) + 16]) = 0;
  *(v1 + *(&stru_298.size + (swift_isaMask & *v1))) = 0;
  v11 = *(&stru_298.offset + (swift_isaMask & *v1));
  type metadata accessor for ModelRequestFilteringController();
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = [objc_allocWithZone(NSOperationQueue) init];
  v12[5] = _swiftEmptyDictionarySingleton;
  v12[7] = 0;
  v12[8] = 0;
  v12[6] = 2;
  *(v2 + v11) = v12;
  *(v2 + *(&stru_298.reloff + (swift_isaMask & *v2))) = 0;
  v13 = *(&stru_298.flags + (swift_isaMask & *v2));
  v14 = type metadata accessor for MetricsEvent.Page(0);
  (*(*(v14 - 8) + 56))(v2 + v13, 1, 1, v14);
  *(v2 + *(&stru_298.reserved2 + (swift_isaMask & *v2))) = 0;
  *(v2 + *&stru_2E8.sectname[swift_isaMask & *v2]) = 0;
  *(v2 + *&stru_2E8.segname[(swift_isaMask & *v2) - 8]) = 0;
  *(v2 + *&stru_2E8.segname[swift_isaMask & *v2]) = 0;
  *(v2 + *&stru_2E8.segname[(swift_isaMask & *v2) + 8]) = _swiftEmptyArrayStorage;
  *(v2 + *&stru_2E8.segname[(swift_isaMask & *v2) + 16]) = 0;
  *(v2 + *(&stru_2E8.size + (swift_isaMask & *v2))) = 0;
  *(v2 + *(&stru_2E8.offset + (swift_isaMask & *v2))) = 0;
  *(v2 + *(&stru_2E8.reloff + (swift_isaMask & *v2))) = 0;
  *(v2 + *(&stru_2E8.flags + (swift_isaMask & *v2))) = 0;
  *(v2 + *(&stru_2E8.reserved2 + (swift_isaMask & *v2))) = 0;
  v15 = *&stru_338.sectname[swift_isaMask & *v2];
  type metadata accessor for TextDrawing.Cache();
  swift_allocObject();
  *(v2 + v15) = TextDrawing.Cache.init()();
  *(v2 + *&stru_338.segname[(swift_isaMask & *v2) - 8]) = 0;
  v16 = (v2 + *&stru_338.segname[swift_isaMask & *v2]);
  *v16 = 0;
  v16[1] = 0;
  *(v2 + *&stru_338.segname[(swift_isaMask & *v2) + 8]) = 0;
  v17 = *&stru_338.segname[(swift_isaMask & *v2) + 16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE6ED0, &unk_B05CE0);
  swift_allocObject();
  *(v2 + v17) = ArtworkVideoReportingController.init()();
  *(v2 + *(&stru_338.size + (swift_isaMask & *v2))) = 3;
  *(v2 + *(&stru_338.offset + (swift_isaMask & *v2))) = 0;
  *(v2 + *(&stru_338.reloff + (swift_isaMask & *v2))) = 0;
  v18 = v2 + *(&stru_338.flags + (swift_isaMask & *v2));
  *v18 = 0;
  v18[8] = 1;
  v19 = (v2 + *(&stru_338.reserved2 + (swift_isaMask & *v2)));
  *v19 = 0;
  v19[1] = 0;
  *(v2 + *&stru_388.sectname[swift_isaMask & *v2]) = 0;
  *(v2 + *&stru_388.segname[(swift_isaMask & *v2) - 8]) = 1;
  *(v2 + *&stru_388.segname[swift_isaMask & *v2]) = 0;
  v20 = (v2 + *&stru_388.segname[(swift_isaMask & *v2) + 8]);
  *v20 = 0;
  v20[1] = 0;
  *(v2 + *&stru_388.segname[(swift_isaMask & *v2) + 16]) = 0;
  v21 = (v2 + *&stru_298.segname[swift_isaMask & *v2]);
  v22 = *(a1 + 64);
  v21[3] = *(a1 + 48);
  v21[4] = v22;
  v23 = *(a1 + 32);
  v21[1] = *(a1 + 16);
  v21[2] = v23;
  *v21 = *a1;
  v110 = *(a1 + 48);
  v24 = *(v2 + v8);
  *(v2 + v8) = v110;
  sub_70EB0(a1, v109);
  sub_15F84(&v110, v109, &qword_DFDD58, &qword_B08B68);

  type metadata accessor for LibraryAddKeepLocalStatusObserver();
  swift_allocObject();
  *(v2 + *(&stru_1F8.reserved2 + (swift_isaMask & *v2))) = sub_259C34();
  v25 = [objc_allocWithZone(type metadata accessor for AlbumDetailSongsViewController(0)) init];
  *(v2 + *(&stru_248.reloff + (swift_isaMask & *v2))) = v25;
  v26 = *(v2 + v8);
  v27 = *&v25[qword_E08848];
  *&v25[qword_E08848] = v26;
  v28 = v26;
  v29 = v25;

  v29[qword_E08860] = 0;
  (*&stru_6A8.segname[(swift_isaMask & *v29) - 8])();

  v30 = sub_4D3A88(_swiftEmptyArrayStorage);
  v31 = [v30 navigationItem];
  v32 = [v30 parentViewController];
  if (v32)
  {
    v33 = v32;
    while (1)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      v34 = v33;
      v35 = [v34 navigationItem];

      v33 = [v34 parentViewController];
      v31 = v35;
      if (!v33)
      {
        goto LABEL_8;
      }
    }
  }

  v35 = v31;
LABEL_8:
  [v35 setLargeTitleDisplayMode:2];
  v36 = sub_387998();
  if (v36 <= 1)
  {
    if (!v36)
    {

      goto LABEL_18;
    }

LABEL_14:
    v37 = sub_ABB3C0();

    if (v37)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  if (v36 == 2 || v36 == 3)
  {
    goto LABEL_14;
  }

LABEL_15:
  if (qword_DE6B20 != -1)
  {
    swift_once();
  }

  v38 = qword_E01290;
  v39 = sub_AB9260();
  objc_setAssociatedObject(v35, v38, v39, &dword_0 + 1);

  [v35 _setManualScrollEdgeAppearanceEnabled:1];
  [v35 _setManualScrollEdgeAppearanceProgress:1.0];
  [v35 _setManualScrollEdgeAppearanceEnabled:0];
  [v35 _setAutoScrollEdgeTransitionDistance:0.0];
LABEL_18:
  v40 = sub_23E05C();
  if (qword_DE6B28 != -1)
  {
    swift_once();
  }

  objc_setAssociatedObject(v35, qword_E01298, v40, &dword_0 + 1);

  v108 = v30 + *&stru_298.segname[swift_isaMask & *v30];
  v41 = *(v108 + 4);
  if (v41)
  {
    v42 = *&stru_1F8.segname[(*v41 & swift_isaMask) + 8];
    v43 = v30;
    v44 = v41;
    v42(v30, &off_D04A90);
  }

  v45 = *(a1 + 8);
  if (v45)
  {
    v46 = &v45[OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_containerDetailDelegate];
    swift_beginAccess();
    *(v46 + 1) = &off_D04A48;
    swift_unknownObjectWeakAssign();
    v47 = v30;
    v48 = v45;
    sub_2D6724();
    v49 = v48;
    sub_12AFE8();
    v106 = v45;
    v51 = v50;
    v52 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v107 = a1;
    v53 = swift_allocObject();
    *(v53 + 16) = v52;
    *(v53 + 24) = 0;
    *(v53 + 32) = 1;
    type metadata accessor for JSModelMetricsReporter();
    v54 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v54[6] = 0;
    v54[5] = 0;
    v54[2] = v49;
    v54[3] = &protocol witness table for JSContainerDetail;
    swift_beginAccess();
    v54[5] = sub_2E0EEC;
    v54[6] = v53;
    swift_beginAccess();
    swift_unknownObjectWeakAssign();

    v55 = (v47 + *&stru_388.segname[(swift_isaMask & *v47) + 8]);
    *v55 = v54;
    v55[1] = &protocol witness table for JSModelMetricsReporter;
    swift_unknownObjectRelease();
    v56 = *(v47 + *(&stru_248.reloff + (swift_isaMask & *v47)));
    v57 = v49;
    v105 = v56;
    sub_12AFE8();
    v59 = v58;
    type metadata accessor for ContainerDetailSongsMetricsReporter();
    v60 = swift_allocObject();
    v61 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v62 = swift_allocObject();
    *(v62 + 16) = v61;
    *(v62 + 24) = 0;
    *(v62 + 32) = 1;
    v63 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v63[6] = 0;
    v63[5] = 0;
    v63[2] = v57;
    v63[3] = &protocol witness table for JSContainerDetail;
    swift_beginAccess();
    v63[5] = sub_2E48E8;
    v63[6] = v62;
    swift_beginAccess();
    swift_unknownObjectWeakAssign();

    *(v60 + 16) = v63;
    v45 = v106;
    v64 = &v105[qword_E719A0];
    *v64 = v60;
    v64[1] = &off_D049D0;
    a1 = v107;

    swift_unknownObjectRelease();
  }

  v65 = *(&stru_248.reloff + (swift_isaMask & *v30));
  *(*(v30 + v65) + qword_E08808 + 8) = &off_D049A0;
  swift_unknownObjectWeakAssign();
  v66 = *(v30 + *(&stru_1F8.reserved2 + (swift_isaMask & *v30)));
  v67 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v66 + 32) = sub_2DC6FC;
  *(v66 + 40) = v67;
  v68 = v30;

  v69 = *(v30 + v65);
  v70 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v71 = v69;

  v72 = &v71[qword_E08810];
  v73 = *&v71[qword_E08810];
  v74 = *&v71[qword_E08810 + 8];
  *v72 = sub_2DC704;
  v72[1] = v70;

  sub_17654(v73, v74);

  v75 = v108;
  v76 = *(v108 + 4);
  if (v76)
  {
    v77 = *&stru_B8.segname[(swift_isaMask & *v76) + 8];
    v78 = v76;
    v75 = v108;
    v79 = v77();

    type metadata accessor for JSContainerDetailModelRequest();
    if (swift_dynamicCastClass())
    {
      v80 = (*(&stru_1F8.size + (swift_isaMask & *v79)))();
      if (v80 || (v80 = (*(&stru_1A8.reserved2 + (swift_isaMask & *v79)))()) != 0)
      {
        v81 = v80;

        if (sub_24F798())
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }

      v82 = (*(&stru_2E8.size + (swift_isaMask & *v79)))();
      if (v82)
      {
        v83 = v82;
        v84 = (*&stru_B8.segname[(swift_isaMask & *v82) + 16])() & 1;

        if (v84 == (sub_24F798() & 1))
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }
    }
  }

  if (sub_24F798())
  {
LABEL_35:
    sub_2D597C(0, _swiftEmptyArrayStorage);
  }

LABEL_36:
  objc_opt_self();
  v85 = swift_dynamicCastObjCClass();
  if (v85)
  {
    if (*(v75 + 2))
    {
      v86 = v85;
      objc_opt_self();
      v87 = swift_dynamicCastObjCClass();
      if (v87)
      {
        if (*(v75 + 1))
        {
          [v86 updateAlbumLibraryDataIfNeededWithModelAlbum:v87 containerDetailViewModel:?];
        }
      }
    }
  }

  if (v45)
  {
    v88 = v45;
    v89 = *JSContainerDetail.NotificationName.storeItemMetadataDidChange.unsafeMutableAddressor();
    v90 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v91 = swift_allocObject();
    *(v91 + 16) = v90;
    *(v91 + 24) = v88;
    type metadata accessor for NotificationObserver();
    swift_allocObject();
    v92 = v88;
    *(v68 + *&stru_388.segname[(swift_isaMask & *v68) + 16]) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v89, v45, 1, 1, sub_2E0E98, v91);
  }

  v93 = *&stru_338.segname[(swift_isaMask & *v68) + 16];
  v94 = *(v68 + *&stru_338.segname[(swift_isaMask & *v68) + 8]);
  if (v94)
  {
    v95 = *(v94 + 56);
  }

  else
  {
    v95 = 0;
  }

  v96 = *(**(v68 + v93) + 136);

  v96(v95);

  v97 = *(v68 + v93);
  v98 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v99 = *(*v97 + 160);
  v100 = v68;

  v99(sub_2E0910, v98);

  v101 = [v100 traitCollection];

  LOBYTE(v98) = UITraitCollection.isMediaPicker.getter(v102);
  if (v98)
  {

    sub_70F0C(a1);
  }

  else
  {
    v103 = sub_11438(&off_CEFBF8);
    sub_2D380C(v103, 0);
    sub_70F0C(a1);
  }

  return v100;
}

void *sub_2D15C8(uint64_t a1)
{
  v2 = v1;
  *(v1 + *&stru_248.sectname[swift_isaMask & *v1]) = 0;
  *(v1 + *&stru_248.segname[(swift_isaMask & *v1) - 8]) = 0;
  v4 = *&stru_248.segname[swift_isaMask & *v1];
  *(v1 + v4) = sub_23DD70();
  *(v1 + *&stru_248.segname[(swift_isaMask & *v1) + 8]) = 0;
  *(v1 + *&stru_248.segname[(swift_isaMask & *v1) + 16]) = 0;
  *(v1 + *(&stru_248.size + (swift_isaMask & *v1))) = 0;
  *(v1 + *(&stru_248.offset + (swift_isaMask & *v1))) = 0;
  v5 = *(&stru_248.flags + (swift_isaMask & *v1));
  v6 = objc_allocWithZone(type metadata accessor for JSVerticalStackViewController(0));
  *(v1 + v5) = sub_9F704(_swiftEmptyArrayStorage);
  v7 = *(&stru_248.reserved2 + (swift_isaMask & *v1));
  *(v1 + v7) = [objc_allocWithZone(type metadata accessor for DetailHeader()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v8 = *&stru_298.sectname[swift_isaMask & *v1];
  *(v1 + v8) = 0;
  v9 = v2 + *&stru_298.segname[(swift_isaMask & *v2) - 8];
  *(v9 + 1) = 0;
  *(v9 + 2) = 0;
  *v9 = 0;
  v9[24] = 1;
  v10 = v2 + *&stru_298.segname[(swift_isaMask & *v2) + 8];
  sub_2E2464(v115);
  v11 = v115[3];
  *(v10 + 2) = v115[2];
  *(v10 + 3) = v11;
  v10[128] = v116;
  v12 = v115[7];
  *(v10 + 6) = v115[6];
  *(v10 + 7) = v12;
  v13 = v115[5];
  *(v10 + 4) = v115[4];
  *(v10 + 5) = v13;
  v14 = v115[1];
  *v10 = v115[0];
  *(v10 + 1) = v14;
  *(v1 + *&stru_298.segname[(swift_isaMask & *v1) + 16]) = 0;
  *(v1 + *(&stru_298.size + (swift_isaMask & *v1))) = 0;
  v15 = *(&stru_298.offset + (swift_isaMask & *v1));
  type metadata accessor for ModelRequestFilteringController();
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = [objc_allocWithZone(NSOperationQueue) init];
  v16[5] = _swiftEmptyDictionarySingleton;
  v16[7] = 0;
  v16[8] = 0;
  v16[6] = 2;
  *(v2 + v15) = v16;
  *(v2 + *(&stru_298.reloff + (swift_isaMask & *v2))) = 0;
  v17 = *(&stru_298.flags + (swift_isaMask & *v2));
  v18 = type metadata accessor for MetricsEvent.Page(0);
  (*(*(v18 - 8) + 56))(v2 + v17, 1, 1, v18);
  *(v2 + *(&stru_298.reserved2 + (swift_isaMask & *v2))) = 0;
  *(v2 + *&stru_2E8.sectname[swift_isaMask & *v2]) = 0;
  *(v2 + *&stru_2E8.segname[(swift_isaMask & *v2) - 8]) = 0;
  *(v2 + *&stru_2E8.segname[swift_isaMask & *v2]) = 0;
  *(v2 + *&stru_2E8.segname[(swift_isaMask & *v2) + 8]) = _swiftEmptyArrayStorage;
  *(v2 + *&stru_2E8.segname[(swift_isaMask & *v2) + 16]) = 0;
  *(v2 + *(&stru_2E8.size + (swift_isaMask & *v2))) = 0;
  *(v2 + *(&stru_2E8.offset + (swift_isaMask & *v2))) = 0;
  *(v2 + *(&stru_2E8.reloff + (swift_isaMask & *v2))) = 0;
  *(v2 + *(&stru_2E8.flags + (swift_isaMask & *v2))) = 0;
  *(v2 + *(&stru_2E8.reserved2 + (swift_isaMask & *v2))) = 0;
  v19 = *&stru_338.sectname[swift_isaMask & *v2];
  type metadata accessor for TextDrawing.Cache();
  swift_allocObject();
  *(v2 + v19) = TextDrawing.Cache.init()();
  *(v2 + *&stru_338.segname[(swift_isaMask & *v2) - 8]) = 0;
  v20 = (v2 + *&stru_338.segname[swift_isaMask & *v2]);
  *v20 = 0;
  v20[1] = 0;
  *(v2 + *&stru_338.segname[(swift_isaMask & *v2) + 8]) = 0;
  v21 = *&stru_338.segname[(swift_isaMask & *v2) + 16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE6ED0, &unk_B05CE0);
  swift_allocObject();
  *(v2 + v21) = ArtworkVideoReportingController.init()();
  *(v2 + *(&stru_338.size + (swift_isaMask & *v2))) = 3;
  *(v2 + *(&stru_338.offset + (swift_isaMask & *v2))) = 0;
  *(v2 + *(&stru_338.reloff + (swift_isaMask & *v2))) = 0;
  v22 = v2 + *(&stru_338.flags + (swift_isaMask & *v2));
  *v22 = 0;
  v22[8] = 1;
  v23 = (v2 + *(&stru_338.reserved2 + (swift_isaMask & *v2)));
  *v23 = 0;
  v23[1] = 0;
  *(v2 + *&stru_388.sectname[swift_isaMask & *v2]) = 0;
  *(v2 + *&stru_388.segname[(swift_isaMask & *v2) - 8]) = 1;
  *(v2 + *&stru_388.segname[swift_isaMask & *v2]) = 0;
  v24 = (v2 + *&stru_388.segname[(swift_isaMask & *v2) + 8]);
  *v24 = 0;
  v24[1] = 0;
  *(v2 + *&stru_388.segname[(swift_isaMask & *v2) + 16]) = 0;
  v25 = (v2 + *&stru_298.segname[swift_isaMask & *v2]);
  v26 = *(a1 + 64);
  v25[3] = *(a1 + 48);
  v25[4] = v26;
  v27 = *(a1 + 32);
  v25[1] = *(a1 + 16);
  v25[2] = v27;
  *v25 = *a1;
  v114 = *(a1 + 48);
  v28 = *(v2 + v8);
  *(v2 + v8) = v114;
  sub_70EB0(a1, v113);
  sub_15F84(&v114, v113, &qword_DFDD58, &qword_B08B68);

  type metadata accessor for LibraryAddKeepLocalStatusObserver();
  swift_allocObject();
  *(v2 + *(&stru_1F8.reserved2 + (swift_isaMask & *v2))) = sub_259C34();
  v29 = [objc_allocWithZone(type metadata accessor for PlaylistDetailSongsViewController(0)) init];
  *(v2 + *(&stru_248.reloff + (swift_isaMask & *v2))) = v29;
  v30 = *(v2 + v8);
  v31 = *&v29[qword_E08848];
  *&v29[qword_E08848] = v30;
  v32 = v30;
  v33 = v29;

  v33[qword_E08860] = 0;
  (*&stru_6A8.segname[(swift_isaMask & *v33) - 8])();

  v34 = sub_4D3A88(_swiftEmptyArrayStorage);
  v35 = [v34 navigationItem];
  v36 = [v34 parentViewController];
  if (v36)
  {
    v37 = v36;
    while (1)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      v38 = v37;
      v39 = [v38 navigationItem];

      v37 = [v38 parentViewController];
      v35 = v39;
      if (!v37)
      {
        goto LABEL_8;
      }
    }
  }

  v39 = v35;
LABEL_8:
  [v39 setLargeTitleDisplayMode:2];
  v40 = sub_387998();
  if (v40 <= 1)
  {
    if (!v40)
    {

      goto LABEL_18;
    }

LABEL_14:
    v41 = sub_ABB3C0();

    if (v41)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  if (v40 == 2 || v40 == 3)
  {
    goto LABEL_14;
  }

LABEL_15:
  if (qword_DE6B20 != -1)
  {
    swift_once();
  }

  v42 = qword_E01290;
  v43 = sub_AB9260();
  objc_setAssociatedObject(v39, v42, v43, &dword_0 + 1);

  [v39 _setManualScrollEdgeAppearanceEnabled:1];
  [v39 _setManualScrollEdgeAppearanceProgress:1.0];
  [v39 _setManualScrollEdgeAppearanceEnabled:0];
  [v39 _setAutoScrollEdgeTransitionDistance:0.0];
LABEL_18:
  v44 = sub_23E05C();
  if (qword_DE6B28 != -1)
  {
    swift_once();
  }

  objc_setAssociatedObject(v39, qword_E01298, v44, &dword_0 + 1);

  v112 = v34 + *&stru_298.segname[swift_isaMask & *v34];
  v45 = *(v112 + 4);
  if (v45)
  {
    v46 = *&stru_1F8.segname[(*v45 & swift_isaMask) + 8];
    v47 = v34;
    v48 = v45;
    v46(v34, &off_D04A90);
  }

  v49 = *(a1 + 8);
  if (v49)
  {
    v50 = &v49[OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_containerDetailDelegate];
    swift_beginAccess();
    *(v50 + 1) = &off_D04A48;
    swift_unknownObjectWeakAssign();
    v51 = v34;
    v52 = v49;
    sub_2D68F8();
    v53 = v52;
    sub_12AFE8();
    v110 = v49;
    v55 = v54;
    v56 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v111 = a1;
    v57 = swift_allocObject();
    *(v57 + 16) = v56;
    *(v57 + 24) = 0;
    *(v57 + 32) = 1;
    type metadata accessor for JSModelMetricsReporter();
    v58 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v58[6] = 0;
    v58[5] = 0;
    v58[2] = v53;
    v58[3] = &protocol witness table for JSContainerDetail;
    swift_beginAccess();
    v58[5] = sub_2E24B8;
    v58[6] = v57;
    swift_beginAccess();
    swift_unknownObjectWeakAssign();

    v59 = (v51 + *&stru_388.segname[(swift_isaMask & *v51) + 8]);
    *v59 = v58;
    v59[1] = &protocol witness table for JSModelMetricsReporter;
    swift_unknownObjectRelease();
    v60 = *(v51 + *(&stru_248.reloff + (swift_isaMask & *v51)));
    v61 = v53;
    v109 = v60;
    sub_12AFE8();
    v63 = v62;
    type metadata accessor for ContainerDetailSongsMetricsReporter();
    v64 = swift_allocObject();
    v65 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v66 = swift_allocObject();
    *(v66 + 16) = v65;
    *(v66 + 24) = 0;
    *(v66 + 32) = 1;
    v67 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v67[6] = 0;
    v67[5] = 0;
    v67[2] = v61;
    v67[3] = &protocol witness table for JSContainerDetail;
    swift_beginAccess();
    v67[5] = sub_2E48EC;
    v67[6] = v66;
    swift_beginAccess();
    swift_unknownObjectWeakAssign();

    *(v64 + 16) = v67;
    v49 = v110;
    v68 = &v109[qword_E719A0];
    *v68 = v64;
    v68[1] = &off_D049D0;
    a1 = v111;

    swift_unknownObjectRelease();
  }

  v69 = *(&stru_248.reloff + (swift_isaMask & *v34));
  *(*(v34 + v69) + qword_E08808 + 8) = &off_D049A0;
  swift_unknownObjectWeakAssign();
  v70 = *(v34 + *(&stru_1F8.reserved2 + (swift_isaMask & *v34)));
  v71 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v70 + 32) = sub_2E2480;
  *(v70 + 40) = v71;
  v72 = v34;

  v73 = *(v34 + v69);
  v74 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v75 = v73;

  v76 = &v75[qword_E08810];
  v77 = *&v75[qword_E08810];
  v78 = *&v75[qword_E08810 + 8];
  *v76 = sub_2E2488;
  v76[1] = v74;

  sub_17654(v77, v78);

  v79 = v112;
  v80 = *(v112 + 4);
  if (v80)
  {
    v81 = *&stru_B8.segname[(swift_isaMask & *v80) + 8];
    v82 = v80;
    v79 = v112;
    v83 = v81();

    type metadata accessor for JSContainerDetailModelRequest();
    if (swift_dynamicCastClass())
    {
      v84 = (*(&stru_1F8.size + (swift_isaMask & *v83)))();
      if (v84 || (v84 = (*(&stru_1A8.reserved2 + (swift_isaMask & *v83)))()) != 0)
      {
        v85 = v84;

        if (sub_24F798())
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }

      v86 = (*(&stru_2E8.size + (swift_isaMask & *v83)))();
      if (v86)
      {
        v87 = v86;
        v88 = (*&stru_B8.segname[(swift_isaMask & *v86) + 16])() & 1;

        if (v88 == (sub_24F798() & 1))
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }
    }
  }

  if (sub_24F798())
  {
LABEL_35:
    (*(&stru_6F8.offset + (swift_isaMask & *v72)))(0, _swiftEmptyArrayStorage);
  }

LABEL_36:
  objc_opt_self();
  v89 = swift_dynamicCastObjCClass();
  if (v89)
  {
    if (*(v79 + 2))
    {
      v90 = v89;
      objc_opt_self();
      v91 = swift_dynamicCastObjCClass();
      if (v91)
      {
        if (*(v79 + 1))
        {
          [v90 updateAlbumLibraryDataIfNeededWithModelAlbum:v91 containerDetailViewModel:?];
        }
      }
    }
  }

  if (v49)
  {
    v92 = v49;
    v93 = *JSContainerDetail.NotificationName.storeItemMetadataDidChange.unsafeMutableAddressor();
    v94 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v95 = swift_allocObject();
    *(v95 + 16) = v94;
    *(v95 + 24) = v92;
    type metadata accessor for NotificationObserver();
    swift_allocObject();
    v96 = v92;
    *(v72 + *&stru_388.segname[(swift_isaMask & *v72) + 16]) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v93, v49, 1, 1, sub_2E4950, v95);
  }

  v97 = *&stru_338.segname[(swift_isaMask & *v72) + 16];
  v98 = *(v72 + *&stru_338.segname[(swift_isaMask & *v72) + 8]);
  if (v98)
  {
    v99 = *(v98 + 56);
  }

  else
  {
    v99 = 0;
  }

  v100 = *(**(v72 + v97) + 136);

  v100(v99);

  v101 = *(v72 + v97);
  v102 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v103 = *(*v101 + 160);
  v104 = v72;

  v103(sub_2E48F4, v102);

  v105 = [v104 traitCollection];

  LOBYTE(v102) = UITraitCollection.isMediaPicker.getter(v106);
  if (v102)
  {

    sub_70F0C(a1);
  }

  else
  {
    v107 = sub_1144C(&off_CEFC20);
    sub_2D3ABC(v107, 0);
    sub_70F0C(a1);
  }

  return v104;
}