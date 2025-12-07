id sub_10018A29C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10018A344()
{

  return _swift_deallocObject(v0, 24);
}

double sub_10018A390(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

__n128 sub_10018A3A8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 47) = *(a2 + 47);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10018A3C4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 51))
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

uint64_t sub_10018A420(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 50) = 0;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 51) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 51) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_10018A4B4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100005AD4(&qword_1003B4DE0, &qword_1002E3BA8);
  __chkstk_darwin(v3);
  v5 = v21 - v4;
  v6 = sub_100005AD4(&qword_1003B4DE8, &qword_1002E3BB0);
  __chkstk_darwin(v6);
  v8 = v21 - v7;
  v9 = sub_100005AD4(&qword_1003B4DF0, &qword_1002E3BB8);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v21 - v12;
  if (qword_1003A91F0 != -1)
  {
    v11 = swift_once();
  }

  if (byte_1003D26A0 == 1)
  {
    v21[3] = v21;
    __chkstk_darwin(v11);
    v21[-2] = v1;
    v21[1] = sub_100005AD4(&qword_1003B4E28, &unk_1002E3BD8);
    v14 = sub_100005EA8(&qword_1003B4E00, &qword_1002E3BC0);
    v21[2] = a1;
    v15 = v14;
    v16 = type metadata accessor for BorderedButtonStyle();
    v17 = sub_10018CFB4();
    v18 = sub_10018D570(&qword_1003B05F8, &type metadata accessor for BorderedButtonStyle, &protocol conformance descriptor for BorderedButtonStyle);
    v22 = v3;
    v23 = v16;
    v24 = v17;
    v25 = v18;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v22 = v15;
    v23 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    MaterialEffectContainer_V1<A>.init(content:)();
    (*(v10 + 16))(v8, v13, v9);
    swift_storeEnumTagMultiPayload();
    sub_10018CE60();
    _ConditionalContent<>.init(storage:)();
    return (*(v10 + 8))(v13, v9);
  }

  else
  {
    sub_10018AE34(v5);
    sub_10018CDF0(v5, v8);
    swift_storeEnumTagMultiPayload();
    sub_10018CE60();
    sub_10018CFB4();
    _ConditionalContent<>.init(storage:)();
    return sub_10018D124(v5);
  }
}

uint64_t sub_10018A848@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v45 = type metadata accessor for Material._GlassVariant.Size();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v38 = &v34 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for Material._GlassVariant();
  v2 = *(v44 - 8);
  v3 = __chkstk_darwin(v44);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v40 = &v34 - v7;
  __chkstk_darwin(v6);
  v42 = &v34 - v8;
  v9 = sub_100005AD4(&qword_1003B2F18, &qword_1002E0330);
  __chkstk_darwin(v9 - 8);
  v41 = &v34 - v10;
  v11 = type metadata accessor for MaterialEffectItemConfiguration_V1();
  v46 = *(v11 - 8);
  v47 = v11;
  __chkstk_darwin(v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for BorderedButtonStyle();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_100005AD4(&qword_1003B4DE0, &qword_1002E3BA8);
  __chkstk_darwin(v36);
  v19 = &v34 - v18;
  v37 = sub_100005AD4(&qword_1003B4E00, &qword_1002E3BC0);
  v39 = *(v37 - 8);
  __chkstk_darwin(v37);
  v21 = &v34 - v20;
  sub_10018AE34(v19);
  BorderedButtonStyle.init()();
  v35 = sub_10018CFB4();
  v34 = sub_10018D570(&qword_1003B05F8, &type metadata accessor for BorderedButtonStyle, &protocol conformance descriptor for BorderedButtonStyle);
  View.buttonStyle<A>(_:)();
  (*(v15 + 8))(v17, v14);
  sub_10018D124(v19);
  MaterialEffectItemConfiguration_V1.init()();
  static Material._GlassVariant.regular.getter();
  v22 = v43;
  v23 = v38;
  v24 = v45;
  (*(v43 + 104))(v38, enum case for Material._GlassVariant.Size.large(_:), v45);
  v25 = v40;
  Material._GlassVariant.size(_:)();
  (*(v22 + 8))(v23, v24);
  v26 = *(v2 + 8);
  v27 = v5;
  v28 = v44;
  v26(v27, v44);
  v29 = v42;
  Material._GlassVariant.contentLensing(_:)();
  v26(v25, v28);
  v30 = v41;
  static Material._glass(_:)();
  v26(v29, v28);
  v31 = type metadata accessor for Material();
  (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
  MaterialEffectItemConfiguration_V1.material.setter();
  sub_10013EF74();
  MaterialEffectItemConfiguration_V1.setShape<A>(_:)();
  v49 = v36;
  v50 = v14;
  v51 = v35;
  v52 = v34;
  swift_getOpaqueTypeConformance2();
  v32 = v37;
  View.materialEffectItem_v1(_:)();
  (*(v46 + 8))(v13, v47);
  return (*(v39 + 8))(v21, v32);
}

uint64_t sub_10018AE34@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v3 = type metadata accessor for MenuOrder();
  v35 = *(v3 - 8);
  v36 = v3;
  __chkstk_darwin(v3);
  v34 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for DynamicTypeSize();
  v27 = *(v29 - 8);
  __chkstk_darwin(v29);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005AD4(&qword_1003B4E18, &qword_1002E3BD0);
  v28 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v26 - v8;
  v10 = sub_100005AD4(&qword_1003B4E10, &qword_1002E3BC8);
  v11 = *(v10 - 8);
  v30 = v10;
  v31 = v11;
  __chkstk_darwin(v10);
  v13 = &v26 - v12;
  v14 = sub_100005AD4(&qword_1003B4E30, &qword_1002E3BE8);
  v15 = *(v14 - 8);
  v32 = v14;
  v33 = v15;
  __chkstk_darwin(v14);
  v17 = &v26 - v16;
  v38 = v2;
  sub_100005AD4(&qword_1003B4E38, &qword_1002E3BF0);
  sub_100005AD4(&qword_1003B4E40, &qword_1002E3BF8);
  sub_10018D19C();
  sub_10001BAEC(&qword_1003B4E68, &qword_1003B4E40, &qword_1002E3BF8, &protocol conformance descriptor for TupleView<A>);
  Menu.init(content:label:)();
  v18 = v27;
  v19 = v29;
  (*(v27 + 104))(v6, enum case for DynamicTypeSize.large(_:), v29);
  v20 = sub_10001BAEC(&qword_1003B4E20, &qword_1003B4E18, &qword_1002E3BD0, &protocol conformance descriptor for Menu<A, B>);
  View.dynamicTypeSize(_:)();
  (*(v18 + 8))(v6, v19);
  (*(v28 + 8))(v9, v7);
  v21 = v34;
  static MenuOrder.fixed.getter();
  v39 = v7;
  v40 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = v30;
  View.menuOrder(_:)();
  (*(v35 + 8))(v21, v36);
  (*(v31 + 8))(v13, v23);
  v39 = v23;
  v40 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v24 = v32;
  View.accessibilityIdentifier(_:)();
  return (*(v33 + 8))(v17, v24);
}

void sub_10018B340(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v126 = a2;
  v122 = sub_100005AD4(&qword_1003B4E78, &qword_1002E3C40);
  __chkstk_darwin(v122);
  v4 = &v97 - v3;
  v123 = sub_100005AD4(&qword_1003B4E80, &unk_1002E3C48);
  __chkstk_darwin(v123);
  v6 = &v97 - v5;
  v7 = sub_100005AD4(&qword_1003ADA30, &qword_1002D8220);
  __chkstk_darwin(v7 - 8);
  v102 = &v97 - v8;
  v9 = sub_100005AD4(&qword_1003AA3C0, &qword_1002D3FB8);
  v104 = *(v9 - 8);
  __chkstk_darwin(v9);
  v103 = &v97 - v10;
  v109 = sub_100005AD4(&qword_1003AA3E0, &unk_1002D3FD0);
  v108 = *(v109 - 1);
  __chkstk_darwin(v109);
  v101 = &v97 - v11;
  v12 = sub_100005AD4(&qword_1003B4E88, &qword_1002E3C58);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v117 = &v97 - v16;
  v17 = sub_100005AD4(&qword_1003B4E90, &qword_1002E3C60);
  v18 = __chkstk_darwin(v17 - 8);
  v125 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v97 - v20;
  v22 = type metadata accessor for Divider();
  v135 = *(v22 - 8);
  v23 = __chkstk_darwin(v22);
  v25 = &v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v23);
  v131 = &v97 - v27;
  __chkstk_darwin(v26);
  v29 = &v97 - v28;
  type metadata accessor for ConversationContext(0);
  sub_10018D570(&unk_1003BC490, type metadata accessor for ConversationContext, &unk_1002D86C0);
  v133 = EnvironmentObject.init()();
  v121 = v30;
  v140 = &type metadata for TranslateFeatures;
  v141 = sub_100009DF8();
  LOBYTE(v137) = 8;
  v31 = isFeatureEnabled(_:)();
  sub_100008664(&v137);
  v136 = v29;
  if ((v31 & 1) != 0 && (*(a1 + 50) & 1) != 0 && *(a1 + 40) == 2)
  {
    v114 = v9;
    v110 = v15;
    v105 = v6;
    if (!*(a1 + 16))
    {
LABEL_38:
      type metadata accessor for SceneContext(0);
      sub_10018D570(&qword_1003AC860, type metadata accessor for SceneContext, &unk_1002E8C28);
      EnvironmentObject.error()();
      __break(1u);
      goto LABEL_39;
    }

    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (v137)
    {
      v120 = 0;
      v119 = 0;
      v118 = 0;
    }

    else
    {
      type metadata accessor for SceneContext(0);
      sub_10018D570(&qword_1003AC860, type metadata accessor for SceneContext, &unk_1002E8C28);
      EnvironmentObject.projectedValue.getter();
      swift_getKeyPath();
      EnvironmentObject.Wrapper.subscript.getter();

      v95 = v138;
      v118 = v139;
      v120 = v137;

      v119 = v95;
    }

    v6 = v105;
    v15 = v110;
    v9 = v114;
  }

  else
  {
    v120 = 0;
    v119 = 0;
    v118 = 0;
  }

  Divider.init()();
  v32 = *(a1 + 40);
  v132 = v21;
  v134 = v25;
  if (v32 != 2)
  {
    v38 = v21;
    if ([objc_opt_self() isGenderDisambiguationEnabled])
    {
      v39 = v22;
      if (v32 <= 5 && ((1 << v32) & 0x2A) != 0)
      {
        v40 = 0;
        v41 = 0;
        v42 = 0;
        v43 = 0;
      }

      else
      {
        type metadata accessor for SharedTranslationOptions(0);
        sub_10018D570(&qword_1003AE918, type metadata accessor for SharedTranslationOptions, &unk_1002E997C);
        v96 = EnvironmentObject.projectedValue.getter();
        swift_getKeyPath();
        EnvironmentObject.Wrapper.subscript.getter();

        v41 = v137;
        v42 = v138;
        v43 = v139;

        v40 = 3;
      }
    }

    else
    {
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v39 = v22;
    }

    *v4 = v40;
    *(v4 + 1) = v41;
    *(v4 + 2) = v42;
    v4[24] = v43;
    swift_storeEnumTagMultiPayload();
    sub_100005AD4(&qword_1003B4E98, &qword_1002E3C68);
    sub_10001BAEC(&qword_1003B4EA0, &qword_1003B4E80, &unk_1002E3C48, &protocol conformance descriptor for TupleView<A>);
    sub_10018D3A0();
    _ConditionalContent<>.init(storage:)();
    v45.n128_f64[0] = sub_10018D478(v40, v41, v42);
    v46 = v135;
    goto LABEL_34;
  }

  v114 = v9;
  v110 = v15;
  v105 = v6;
  v124 = v22;
  v33 = *a1;
  type metadata accessor for SharedTranslationOptions(0);
  sub_10018D570(&qword_1003AE918, type metadata accessor for SharedTranslationOptions, &unk_1002E997C);
  v34 = EnvironmentObject.projectedValue.getter();
  swift_getKeyPath();
  EnvironmentObject.Wrapper.subscript.getter();

  v116 = v137;
  v107 = v138;
  v99 = v139;
  v35 = *(a1 + 48);
  v100 = v4;
  if ((v35 & 1) == 0)
  {
    if (!v33)
    {
      goto LABEL_39;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v36 = v33;
    static Published.subscript.getter();

    if (v137)
    {
      v37 = EnvironmentObject.projectedValue.getter();
      swift_getKeyPath();
      EnvironmentObject.Wrapper.subscript.getter();

      v130 = v137;
      v115 = v138;
      v98 = v139;
LABEL_23:
      swift_getKeyPath();
      swift_getKeyPath();
      v47 = v36;
      static Published.subscript.getter();

      v44 = v137 ^ 1;
LABEL_24:
      KeyPath = swift_getKeyPath();
      v128 = swift_allocObject();
      *(v128 + 16) = v44 & 1;
      if (*(a1 + 16))
      {
        swift_getKeyPath();
        swift_getKeyPath();

        static Published.subscript.getter();

        if (v137)
        {
          v48 = 0;
          v127 = 0;
          v49 = 0;
          v112 = 0;
          v113 = 0;
          v111 = 0;
          v106 = 0;
          v50 = v117;
          v51 = v114;
        }

        else
        {
          v50 = v117;
          v51 = v114;
          if (v35)
          {
            v142[0] = 0;
            static Binding.constant(_:)();
          }

          else
          {
            v52 = EnvironmentObject.projectedValue.getter();
            swift_getKeyPath();
            EnvironmentObject.Wrapper.subscript.getter();
          }

          v49 = v138;
          v127 = v137;
          v53 = v139;
          v54 = swift_getKeyPath();
          v55 = swift_allocObject();
          *(v55 + 16) = v35;
          v112 = v53;

          v113 = v54;

          v106 = v55;

          v111 = sub_10005E368;
          v48 = 2;
        }

        v114 = v49;
        Divider.init()();
        v56 = 1;
        if (*(a1 + 49))
        {
          v57 = v102;
          static ButtonRole.destructive.getter();
          v58 = type metadata accessor for ButtonRole();
          (*(*(v58 - 8) + 56))(v57, 0, 1, v58);
          v59 = swift_allocObject();
          v60 = *(a1 + 16);
          *(v59 + 16) = *a1;
          *(v59 + 32) = v60;
          *(v59 + 48) = *(a1 + 32);
          *(v59 + 63) = *(a1 + 47);
          sub_10018D6E0(a1, &v137);
          sub_100005AD4(&qword_1003A93D8, &unk_1002D3FC0);
          sub_10001BAEC(&qword_1003AA3C8, &qword_1003A93D8, &unk_1002D3FC0, &protocol conformance descriptor for Label<A, B>);
          v61 = v103;
          Button.init(role:action:label:)();
          sub_10001BAEC(&qword_1003AA3D0, &qword_1003AA3C0, &qword_1002D3FB8, &protocol conformance descriptor for Button<A>);
          v62 = v101;
          View.accessibilityIdentifier(_:)();
          (*(v104 + 8))(v61, v51);
          sub_10018D718(v62, v50);
          v56 = 0;
        }

        (*(v108 + 56))(v50, v56, 1, v109);
        LOBYTE(v137) = v99;
        v142[0] = v98;
        v63 = v134;
        v64 = *(v135 + 16);
        v65 = v124;
        v64(v134, v131);
        sub_10001F620(v50, v110, &qword_1003B4E88, &qword_1002E3C58);
        v66 = v137;
        v67 = v105;
        *v105 = 0;
        v68 = v107;
        *(v67 + 8) = v116;
        *(v67 + 16) = v68;
        *(v67 + 24) = v66;
        v69 = v142[0];
        *(v67 + 32) = 1;
        v70 = v130;
        v71 = v115;
        *(v67 + 40) = v130;
        *(v67 + 48) = v71;
        *(v67 + 56) = v69;
        v72 = v128;
        *(v67 + 64) = KeyPath;
        *(v67 + 72) = sub_10005CDFC;
        *(v67 + 80) = v72;
        *(v67 + 88) = v48;
        v73 = v127;
        v74 = v114;
        *(v67 + 96) = v127;
        *(v67 + 104) = v74;
        v75 = v113;
        *(v67 + 112) = v112;
        *(v67 + 120) = v75;
        v76 = v106;
        *(v67 + 128) = v111;
        *(v67 + 136) = v76;
        v77 = sub_100005AD4(&qword_1003B4EC0, &qword_1002E3D88);
        (v64)(v67 + *(v77 + 80), v63, v65);
        v78 = v67 + *(v77 + 96);
        v79 = v110;
        sub_10001F620(v110, v78, &qword_1003B4E88, &qword_1002E3C58);
        v130 = v70;
        swift_retain_n();
        v115 = v71;
        swift_retain_n();
        swift_retain_n();
        swift_retain_n();
        swift_retain_n();
        swift_retain_n();
        v97 = v48;
        v80 = v114;
        v81 = v112;
        v82 = v113;
        v83 = v111;
        v84 = v106;
        sub_10018D5C0(v48, v73, v114, v112, v113, v111, v106);
        sub_100009EBC(v79, &qword_1003B4E88, &qword_1002E3C58);
        v127 = v73;
        v109 = *(v135 + 8);
        v110 = (v135 + 8);
        v109(v134, v124);
        sub_10018D624(v48, v73, v80, v81, v82, v83, v84);

        sub_10001F620(v67, v100, &qword_1003B4E80, &unk_1002E3C48);
        swift_storeEnumTagMultiPayload();
        sub_100005AD4(&qword_1003B4E98, &qword_1002E3C68);
        sub_10001BAEC(&qword_1003B4EA0, &qword_1003B4E80, &unk_1002E3C48, &protocol conformance descriptor for TupleView<A>);
        sub_10018D3A0();
        v38 = v132;
        v46 = v135;
        v39 = v124;
        _ConditionalContent<>.init(storage:)();
        sub_10018D624(v97, v127, v114, v112, v113, v111, v84);

        sub_100009EBC(v67, &qword_1003B4E80, &unk_1002E3C48);
        sub_100009EBC(v117, &qword_1003B4E88, &qword_1002E3C58);
        v109(v131, v39);
LABEL_34:
        v86 = v125;
        v85 = v126;
        v87 = v46;
        v135 = *(v46 + 16);
        v88 = v134;
        (v135)(v134, v136, v39, v45);
        sub_10001F620(v38, v86, &qword_1003B4E90, &qword_1002E3C60);
        v89 = v121;
        *v85 = v133;
        *(v85 + 8) = v89;
        v90 = v120;
        v91 = v119;
        *(v85 + 16) = v120;
        *(v85 + 24) = v91;
        *(v85 + 32) = v118;
        v92 = v85;
        v93 = sub_100005AD4(&qword_1003B4EB8, &qword_1002E3C70);
        (v135)(v92 + *(v93 + 64), v88, v39);
        sub_10001F620(v86, v92 + *(v93 + 80), &qword_1003B4E90, &qword_1002E3C60);

        sub_10018D4BC(v90, v91);
        sub_10018D4FC(v90, v91);
        sub_100009EBC(v132, &qword_1003B4E90, &qword_1002E3C60);
        v94 = *(v87 + 8);
        v94(v136, v39);
        sub_100009EBC(v86, &qword_1003B4E90, &qword_1002E3C60);
        v94(v88, v39);
        sub_10018D4FC(v90, v91);

        return;
      }

      goto LABEL_38;
    }
  }

  v142[0] = 0;
  static Binding.constant(_:)();
  v130 = v137;
  v115 = v138;
  v98 = v139;
  if (v35)
  {
    v44 = 1;
    goto LABEL_24;
  }

  if (v33)
  {
    v36 = v33;
    goto LABEL_23;
  }

LABEL_39:
  EnvironmentObject.error()();
  __break(1u);
}

uint64_t sub_10018C76C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return static Published.subscript.setter();
  }

  else
  {
    type metadata accessor for SceneContext(0);
    sub_10018D570(&qword_1003AC860, type metadata accessor for SceneContext, &unk_1002E8C28);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10018C894@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10018C90C@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(_internalSystemName:)();
  *a1 = result;
  return result;
}

double sub_10018C944@<D0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = type metadata accessor for IconOnlyLabelStyle();
  v28 = *(v1 - 8);
  v29 = v1;
  __chkstk_darwin(v1);
  v3 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100005AD4(&qword_1003A93D8, &unk_1002D3FC0);
  v4 = *(v26 - 8);
  __chkstk_darwin(v26);
  v6 = v25 - v5;
  v7 = sub_100005AD4(&qword_1003B4E50, &qword_1002E3C00);
  __chkstk_darwin(v7);
  v9 = v25 - v8;
  v27 = sub_100005AD4(&qword_1003B4E70, &qword_1002E3C08);
  v10 = *(v27 - 8);
  __chkstk_darwin(v27);
  v12 = v25 - v11;
  v13 = LocalizedStringKey.init(stringLiteral:)();
  if (qword_1003A91F0 != -1)
  {
    v25[1] = v14;
    v25[2] = v13;
    v25[0] = v15;
    swift_once();
  }

  Label<>.init(_:systemImage:)();
  v16 = &v9[*(v7 + 36)];
  v17 = *(sub_100005AD4(&qword_1003AB620, &qword_1002D5350) + 28);
  v18 = enum case for Image.Scale.large(_:);
  v19 = type metadata accessor for Image.Scale();
  (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
  *v16 = swift_getKeyPath();
  (*(v4 + 32))(v9, v6, v26);
  IconOnlyLabelStyle.init()();
  sub_10018D2B4();
  sub_10018D570(&qword_1003B4E60, &type metadata accessor for IconOnlyLabelStyle, &protocol conformance descriptor for IconOnlyLabelStyle);
  v20 = v29;
  View.labelStyle<A>(_:)();
  (*(v28 + 8))(v3, v20);
  sub_100009EBC(v9, &qword_1003B4E50, &qword_1002E3C00);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v21 = v30;
  (*(v10 + 32))(v30, v12, v27);
  v22 = (v21 + *(sub_100005AD4(&qword_1003B4E38, &qword_1002E3BF0) + 36));
  v23 = v32;
  *v22 = v31;
  v22[1] = v23;
  result = *&v33;
  v22[2] = v33;
  return result;
}

uint64_t sub_10018CDF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003B4DE0, &qword_1002E3BA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10018CE60()
{
  result = qword_1003B4DF8;
  if (!qword_1003B4DF8)
  {
    sub_100005EA8(&qword_1003B4DF0, &qword_1002E3BB8);
    sub_100005EA8(&qword_1003B4E00, &qword_1002E3BC0);
    sub_100005EA8(&qword_1003B4DE0, &qword_1002E3BA8);
    type metadata accessor for BorderedButtonStyle();
    sub_10018CFB4();
    sub_10018D570(&qword_1003B05F8, &type metadata accessor for BorderedButtonStyle, &protocol conformance descriptor for BorderedButtonStyle);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B4DF8);
  }

  return result;
}

unint64_t sub_10018CFB4()
{
  result = qword_1003B4E08;
  if (!qword_1003B4E08)
  {
    sub_100005EA8(&qword_1003B4DE0, &qword_1002E3BA8);
    sub_100005EA8(&qword_1003B4E10, &qword_1002E3BC8);
    sub_100005EA8(&qword_1003B4E18, &qword_1002E3BD0);
    sub_10001BAEC(&qword_1003B4E20, &qword_1003B4E18, &qword_1002E3BD0, &protocol conformance descriptor for Menu<A, B>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10018D570(&qword_1003AA3E8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B4E08);
  }

  return result;
}

uint64_t sub_10018D124(uint64_t a1)
{
  v2 = sub_100005AD4(&qword_1003B4DE0, &qword_1002E3BA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10018D19C()
{
  result = qword_1003B4E48;
  if (!qword_1003B4E48)
  {
    sub_100005EA8(&qword_1003B4E38, &qword_1002E3BF0);
    sub_100005EA8(&qword_1003B4E50, &qword_1002E3C00);
    type metadata accessor for IconOnlyLabelStyle();
    sub_10018D2B4();
    sub_10018D570(&qword_1003B4E60, &type metadata accessor for IconOnlyLabelStyle, &protocol conformance descriptor for IconOnlyLabelStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B4E48);
  }

  return result;
}

unint64_t sub_10018D2B4()
{
  result = qword_1003B4E58;
  if (!qword_1003B4E58)
  {
    sub_100005EA8(&qword_1003B4E50, &qword_1002E3C00);
    sub_10001BAEC(&qword_1003AA3C8, &qword_1003A93D8, &unk_1002D3FC0, &protocol conformance descriptor for Label<A, B>);
    sub_10001BAEC(&qword_1003AB648, &qword_1003AB620, &qword_1002D5350, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B4E58);
  }

  return result;
}

unint64_t sub_10018D3A0()
{
  result = qword_1003B4EA8;
  if (!qword_1003B4EA8)
  {
    sub_100005EA8(&qword_1003B4E98, &qword_1002E3C68);
    sub_10018D424();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B4EA8);
  }

  return result;
}

unint64_t sub_10018D424()
{
  result = qword_1003B4EB0;
  if (!qword_1003B4EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B4EB0);
  }

  return result;
}

double sub_10018D478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

double sub_10018D4BC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

double sub_10018D4FC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_10018D570(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_10018D5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
  }

  return result;
}

double sub_10018D624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_10018D688()
{

  if (*(v0 + 56) >= 6uLL)
  {
  }

  return _swift_deallocObject(v0, 67);
}

uint64_t sub_10018D718(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003AA3E0, &unk_1002D3FD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10018D7A4()
{
  result = qword_1003B4EC8;
  if (!qword_1003B4EC8)
  {
    sub_100005EA8(&qword_1003B4ED0, &qword_1002E3E28);
    sub_10018CE60();
    sub_10018CFB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B4EC8);
  }

  return result;
}

__n128 sub_10018D834(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_10018D848(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_10018D890(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10018D900@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v10 = 0xD000000000000012;
      result = LocalizedStringKey.init(stringLiteral:)();
      v9 = 0x80000001002F6ED0;
      v7 = "globe.and.sparkles";
      v8 = 0xD000000000000014;
    }

    else
    {
      result = LocalizedStringKey.init(stringLiteral:)();
      v7 = "ATION_TOGGLE_TITLE";
      v8 = 0xD00000000000001ALL;
      v9 = 0xED0000656C626275;
      v10 = 0x622E6E6F73726570;
    }
  }

  else if (a1)
  {
    v10 = 0xD000000000000012;
    result = LocalizedStringKey.init(stringLiteral:)();
    v9 = 0x80000001002F6F30;
    v7 = "mic.badge.infinity";
    v8 = 0xD000000000000013;
  }

  else
  {
    result = LocalizedStringKey.init(stringLiteral:)();
    v7 = "autoTranslateButton";
    v8 = 0xD000000000000016;
    v9 = 0xE400000000000000;
    v10 = 2036427888;
  }

  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  *(a2 + 32) = v10;
  *(a2 + 40) = v9;
  *(a2 + 48) = v8;
  *(a2 + 56) = v7 | 0x8000000000000000;
  return result;
}

uint64_t sub_10018DB00@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  sub_10018D900(a1, &v7);

  result = Text.init(_:tableName:bundle:comment:)();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_10018DBA0@<X0>(unsigned __int8 a1@<W0>, uint64_t *a2@<X8>)
{
  sub_10018D900(a1, &v4);

  result = Image.init(_internalSystemName:)();
  *a2 = result;
  return result;
}

uint64_t sub_10018DC14@<X0>(uint64_t a1@<X8>)
{
  v11[1] = a1;
  v2 = sub_100005AD4(&qword_1003B4ED8, &qword_1002E3EC8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v11 - v4;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *v1;
  v16[0] = *(v1 + 8);
  v6 = v16[0];
  v16[1] = v7;
  v17 = v8;
  sub_100005AD4(&qword_1003BA760, &qword_1002DC950);
  Binding.projectedValue.getter();
  v12 = v9;
  v13 = v6;
  v14 = v7;
  v15 = v8;
  sub_100005AD4(&qword_1003A93D8, &unk_1002D3FC0);
  sub_10001BAEC(&qword_1003AA3C8, &qword_1003A93D8, &unk_1002D3FC0, &protocol conformance descriptor for Label<A, B>);
  Toggle.init(isOn:label:)();
  sub_10018D900(v9, v16);

  sub_10001BAEC(&qword_1003B4EE0, &qword_1003B4ED8, &qword_1002E3EC8, &protocol conformance descriptor for Toggle<A>);
  View.accessibilityIdentifier(_:)();

  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_10018DE80()
{
  result = qword_1003B4EE8;
  if (!qword_1003B4EE8)
  {
    sub_100005EA8(&qword_1003B4EF0, qword_1002E3EE0);
    sub_10001BAEC(&qword_1003B4EE0, &qword_1003B4ED8, &qword_1002E3EC8, &protocol conformance descriptor for Toggle<A>);
    sub_10001BBF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B4EE8);
  }

  return result;
}

unint64_t sub_10018DF3C()
{
  result = qword_1003B4EF8;
  if (!qword_1003B4EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B4EF8);
  }

  return result;
}

NSString sub_10018E06C()
{
  result = String._bridgeToObjectiveC()();
  qword_1003D2968 = result;
  return result;
}

Swift::Int sub_10018E0DC(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_10018E140(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10018E0B4(v3, *v1);
  return Hasher._finalize()();
}

BOOL sub_10018E180(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 == 3)
  {
    return a2 == 3;
  }

  if (a1 == 4)
  {
    return a2 == 4;
  }

  if (a2 - 3 < 2)
  {
    return 0;
  }

  return a1 == a2;
}

id sub_10018E204(uint64_t *a1)
{
  v2 = *a1;
  v3 = swift_isaMask;
  v4 = objc_allocWithZone(UIPanGestureRecognizer);
  type metadata accessor for NewTranslationController(0, *((v3 & v2) + 0x50), *((v3 & v2) + 0x58), *((v3 & v2) + 0x60));
  v5 = [v4 initWithTarget:_bridgeAnythingToObjectiveC<A>(_:)() action:"textCardPanWithRecognizer:"];
  swift_unknownObjectRelease();
  [v5 setDelegate:a1];
  return v5;
}

char *sub_10018E318(uint64_t a1)
{
  v1 = sub_100005AD4(&qword_1003AFCE0, &qword_1002D5B00);
  __chkstk_darwin(v1 - 8);
  v3 = &v21 - v2;
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TranslateInputCard(0);
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v9 = sub_100280BB8();
  [v9 setTag:202];

  swift_unknownObjectWeakAssign();
  v10 = sub_10018E1E4();
  [v8 addGestureRecognizer:v10];

  v11 = OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard____lazy_storage___textInput;
  v12 = *&v8[OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard____lazy_storage___textInput];
  sub_1002816F8();
  v13 = sub_10026DB48();
  v14 = String._bridgeToObjectiveC()();

  [v13 setText:v14];

  v15 = *&v8[v11];
  sub_1000E1D20(&v8[OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard_selectedEditingLocale], v3);
  v16 = *(v5 + 48);
  if (v16(v3, 1, v4) == 1)
  {
    v17 = v15;
    static Locale.current.getter();
    if (v16(v3, 1, v4) != 1)
    {
      sub_100009EBC(v3, &qword_1003AFCE0, &qword_1002D5B00);
    }
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    v17 = v15;
  }

  v18 = Locale.isRTL()();
  (*(v5 + 8))(v7, v4);
  if (v18)
  {
    v19 = 2;
  }

  else
  {
    v19 = 0;
  }

  [v17 setTextAlignment:v19];

  return v8;
}

id sub_10018E624(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

char *sub_10018E688(uint64_t a1)
{
  v1 = [objc_allocWithZone(type metadata accessor for LegacyInlineTranslationTabErrorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator35LegacyInlineTranslationTabErrorView_languageDownloadPresenter + 8] = &off_1003876B0;
  swift_unknownObjectWeakAssign();
  return v1;
}

void sub_10018E6FC(uint64_t a1)
{
  v2 = *(v1 + qword_1003B4F18);
  *(v1 + qword_1003B4F18) = a1;
}

void sub_10018E710(uint64_t a1)
{
  v2 = *(v1 + qword_1003B4F20);
  *(v1 + qword_1003B4F20) = a1;
}

BOOL sub_10018E744()
{
  if (!*(v0 + qword_1003B4F40))
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if (v3 >> 62)
  {
    v1 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v1 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v1 != 0;
}

uint64_t sub_10018E864(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_1003B4F90);
  *v3 = a1;
  v3[1] = a2;
}

void sub_10018E8B4()
{
  v1 = type metadata accessor for NewTranslationController(0, *((swift_isaMask & *v0) + 0x50), *((swift_isaMask & *v0) + 0x58), *((swift_isaMask & *v0) + 0x60));
  v10.receiver = v0;
  v10.super_class = v1;
  objc_msgSendSuper2(&v10, "viewDidLoad");
  *(v0 + qword_1003B4F28) = sub_100190380();
  sub_10018F104();
  sub_10018F434();
  v2 = objc_opt_self();
  v3 = [v2 defaultCenter];
  [v3 addObserver:v0 selector:"keyboardWillChangeFrame:" name:UIKeyboardWillChangeFrameNotification object:0];

  v4 = [v2 defaultCenter];
  [v4 addObserver:v0 selector:"keyboardWillAppear" name:UIKeyboardWillShowNotification object:0];

  v5 = [v2 defaultCenter];
  [v5 addObserver:v0 selector:"keyboardWillDisappear" name:UIKeyboardWillHideNotification object:0];

  v6 = [v2 defaultCenter];
  if (qword_1003A91B0 != -1)
  {
    swift_once();
  }

  [v6 addObserver:v0 selector:? name:? object:?];

  v7 = [objc_allocWithZone(UIScribbleInteraction) initWithDelegate:v0];
  v8 = sub_10018E2F8();
  v9 = sub_100280BB8();

  [v9 addInteraction:v7];
}

void sub_10018EB04(void *a1)
{
  v1 = a1;
  sub_10018E8B4();
}

void sub_10018EBB8(char a1)
{
  v3 = type metadata accessor for NewTranslationController(0, *((swift_isaMask & *v1) + 0x50), *((swift_isaMask & *v1) + 0x58), *((swift_isaMask & *v1) + 0x60));
  v4.receiver = v1;
  v4.super_class = v3;
  objc_msgSendSuper2(&v4, "viewWillAppear:", a1 & 1);
  if (*(v1 + qword_1003B4F48))
  {
    swift_unknownObjectWeakAssign();
  }

  if (*(v1 + qword_1003B4F80))
  {
    sub_1001904E0(*(v1 + qword_1003B4F80));
  }
}

void sub_10018EC7C(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_10018EBB8(a3);
}

void sub_10018ECD0(char a1)
{
  v3 = type metadata accessor for NewTranslationController(0, *((swift_isaMask & *v1) + 0x50), *((swift_isaMask & *v1) + 0x58), *((swift_isaMask & *v1) + 0x60));
  v7.receiver = v1;
  v7.super_class = v3;
  objc_msgSendSuper2(&v7, "viewWillDisappear:", a1 & 1);
  sub_100195714();
  v4 = *(v1 + qword_1003B4F30);
  if (v4)
  {
    v5 = v4;
    sub_10020BB08();
    if (*&v5[OBJC_IVAR____TtC17SequoiaTranslator19ConversationManager_turnData])
    {
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (v6)
      {
        [v6 endAudio];
      }
    }
  }
}

void sub_10018EDE4(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_10018ECD0(a3);
}

id sub_10018EE38()
{
  v1 = type metadata accessor for NewTranslationController(0, *((swift_isaMask & *v0) + 0x50), *((swift_isaMask & *v0) + 0x58), *((swift_isaMask & *v0) + 0x60));
  v6.receiver = v0;
  v6.super_class = v1;
  objc_msgSendSuper2(&v6, "viewDidLayoutSubviews");
  v2 = [v0 traitCollection];
  v3 = [v2 horizontalSizeClass];

  if (v3 == 2)
  {
    v4 = 201.0;
  }

  else
  {
    v4 = 211.0;
  }

  return [*(v0 + qword_1003B4F88) setAdditionalSafeAreaInsets:{0.0, 0.0, v4, 0.0}];
}

void sub_10018EF40(void *a1)
{
  v1 = a1;
  sub_10018EE38();
}

void sub_10018EF88(uint64_t a1)
{
  v2 = *(v1 + qword_1003B4FA0);
  *(v1 + qword_1003B4FA0) = a1;
}

void sub_10018EF9C(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for NewTranslationController(0, *((swift_isaMask & *v2) + 0x50), *((swift_isaMask & *v2) + 0x58), *((swift_isaMask & *v2) + 0x60));
  v8.receiver = v2;
  v8.super_class = v5;
  objc_msgSendSuper2(&v8, "willTransitionToTraitCollection:withTransitionCoordinator:", a1, a2);
  v6 = *(v2 + qword_1003B4FA0);
  if (v6)
  {
    v7 = v6;
    [v7 setActive:{objc_msgSend(a1, "horizontalSizeClass") != 1}];
  }
}

void sub_10018F084(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = a1;
  sub_10018EF9C(v6, a4);

  swift_unknownObjectRelease();
}

void sub_10018F104()
{
  v1 = *&v0[qword_1003B4F88];
  [v0 addChildViewController:v1];
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v2;
  v4 = [v1 view];
  if (!v4)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = v4;
  [v3 addSubview:v4];

  [v1 didMoveToParentViewController:v0];
  v6 = [v0 view];
  if (!v6)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = v6;
  v8 = sub_10018E2F8();
  [v7 addSubview:v8];

  v9 = sub_10018E604();
  [v9 setHidden:1];

  v10 = [v0 view];
  if (!v10)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v11 = v10;
  [v10 addSubview:*&v0[qword_1003B4F10]];
}

id sub_10018F270()
{
  v17 = *(v0 + qword_1003B4F88);
  v1 = v17;
  sub_100005AD4(&qword_1003B5170, &qword_1002E4448);
  if (swift_dynamicCast())
  {
    sub_100051124(v15, v18);
    v2 = v19;
    v3 = v20;
    sub_1000085CC(v18, v19);
    (*(v3 + 8))(v2, v3);
    result = [v1 view];
    if (result)
    {
      v5 = result;
      [result frame];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;

      v21.origin.x = v7;
      v21.origin.y = v9;
      v21.size.width = v11;
      v21.size.height = v13;
      CGRectGetMinY(v21);
      result = [v1 view];
      if (result)
      {
        v14 = result;
        [result safeAreaInsets];

        return sub_100008664(v18);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    return sub_100009EBC(v15, &qword_1003B5178, &unk_1002E4450);
  }

  return result;
}

void sub_10018F434()
{
  v1 = v0;
  v125 = *&v0[qword_1003B4F88];
  v2 = [v125 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_26;
  }

  v3 = v2;
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = sub_10018E2F8();
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = sub_10018E604();
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = qword_1003B4F08;
  v7 = [*&v1[qword_1003B4F08] topAnchor];
  v8 = [v1 view];
  if (!v8)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v9 = v8;
  v10 = [v8 safeAreaLayoutGuide];

  v11 = [v10 topAnchor];
  v12 = [v7 constraintEqualToAnchor:v11 constant:0.0];

  v13 = *&v1[qword_1003B4F18];
  *&v1[qword_1003B4F18] = v12;

  v14 = *&v1[qword_1003B4F18];
  if (v14)
  {
    type metadata accessor for UILayoutPriority(0);
    sub_100196AF4(&qword_1003ABB28, type metadata accessor for UILayoutPriority, &protocol conformance descriptor for UILayoutPriority);
    v15 = v14;
    static _UIKitNumericRawRepresentable.+ infix(_:_:)();
    LODWORD(v16) = v126;
    [v15 setPriority:v16];
  }

  v17 = [v1 view];
  if (!v17)
  {
    goto LABEL_27;
  }

  v18 = v17;
  v19 = [v17 safeAreaLayoutGuide];

  v20 = [v19 bottomAnchor];
  v21 = [*&v1[v6] topAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:203.0];

  v23 = *&v1[qword_1003B4F20];
  *&v1[qword_1003B4F20] = v22;

  v25 = *&v1[qword_1003B4F20];
  if (v25)
  {
    LODWORD(v24) = 1144750080;
    [v25 setPriority:v24];
  }

  v26 = qword_1003B4F10;
  v27 = [*&v1[qword_1003B4F10] topAnchor];
  v28 = [*&v1[v6] topAnchor];
  v123 = [v27 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:v28 multiplier:3.0];

  v29 = [*&v1[v26] centerYAnchor];
  v30 = [v1 view];
  if (!v30)
  {
    goto LABEL_28;
  }

  v31 = v30;
  v32 = [v30 centerYAnchor];

  v33 = [v29 constraintEqualToAnchor:v32];
  LODWORD(v34) = 1132068864;
  v121 = v33;
  [v33 setPriority:v34];
  v35 = [*&v1[v6] centerXAnchor];
  v36 = [v1 view];
  if (!v36)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v37 = v36;
  v38 = [v36 centerXAnchor];

  v39 = [v35 constraintEqualToAnchor:v38];
  type metadata accessor for UILayoutPriority(0);
  sub_100196AF4(&qword_1003ABB28, type metadata accessor for UILayoutPriority, &protocol conformance descriptor for UILayoutPriority);
  static _UIKitNumericRawRepresentable.+ infix(_:_:)();
  LODWORD(v40) = v126;
  v119 = v39;
  [v39 setPriority:v40];
  v41 = [*&v1[v6] widthAnchor];
  v42 = [v1 view];
  if (!v42)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v43 = v42;
  v44 = [v42 readableContentGuide];

  v45 = [v44 widthAnchor];
  v46 = [v41 constraintEqualToAnchor:v45 multiplier:1.0];

  static _UIKitNumericRawRepresentable.+ infix(_:_:)();
  LODWORD(v47) = v126;
  [v46 setPriority:v47];
  v48 = [v1 traitCollection];
  v49 = [v48 horizontalSizeClass];

  [v46 setActive:v49 != 1];
  v50 = *&v1[qword_1003B4FA0];
  *&v1[qword_1003B4FA0] = v46;
  v118 = v46;

  v51 = [*&v1[v6] leadingAnchor];
  v52 = [v1 view];
  if (!v52)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v53 = v52;
  v54 = [v52 leadingAnchor];

  v55 = [v51 constraintEqualToAnchor:v54];
  static _UIKitNumericRawRepresentable.+ infix(_:_:)();
  LODWORD(v56) = v126;
  [v55 setPriority:v56];
  v57 = [*&v1[v6] trailingAnchor];
  v58 = [v1 view];
  if (!v58)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v59 = v58;
  v60 = [v58 trailingAnchor];

  v61 = [v57 constraintEqualToAnchor:v60];
  LODWORD(v62) = 1144750080;
  [v61 setPriority:v62];
  sub_100005AD4(&unk_1003AFCC0, &unk_1002D54E0);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_1002E3F50;
  *(v63 + 32) = v55;
  *(v63 + 40) = v61;
  *(v63 + 48) = v119;
  v64 = *&v1[v6];
  v117 = v55;
  v115 = v61;
  v120 = v119;
  v65 = [v64 bottomAnchor];
  v66 = sub_10019014C(v1);
  v67 = [v65 constraintEqualToAnchor:v66];

  *(v63 + 56) = v67;
  *(v63 + 64) = v123;
  *(v63 + 72) = v121;
  v68 = *&v1[v26];
  v124 = v123;
  v122 = v121;
  v69 = [v68 bottomAnchor];
  v70 = [v1 view];
  if (!v70)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v71 = v70;
  v72 = [v70 safeAreaLayoutGuide];

  v73 = [v72 bottomAnchor];
  v74 = [v69 constraintLessThanOrEqualToAnchor:v73];

  *(v63 + 80) = v74;
  v75 = [*&v1[v26] leadingAnchor];
  v76 = [*&v1[v6] leadingAnchor];
  v77 = [v75 constraintEqualToSystemSpacingAfterAnchor:v76 multiplier:3.0];

  *(v63 + 88) = v77;
  v78 = [*&v1[v6] trailingAnchor];
  v79 = [*&v1[v26] trailingAnchor];
  v80 = [v78 constraintEqualToSystemSpacingAfterAnchor:v79 multiplier:3.0];

  *(v63 + 96) = v80;
  v81 = [v125 view];
  if (!v81)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v82 = v81;
  v83 = [v81 bottomAnchor];

  v84 = [v1 view];
  if (!v84)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v85 = v84;
  v86 = [v84 safeAreaLayoutGuide];

  v87 = [v86 bottomAnchor];
  v88 = [v1 traitCollection];
  v89 = [v88 horizontalSizeClass];

  v90 = 0.0;
  if (v89 == 2)
  {
    v90 = -10.0;
  }

  v91 = [v83 constraintEqualToAnchor:v87 constant:{v90, v115}];

  *(v63 + 104) = v91;
  v92 = [v125 view];
  if (!v92)
  {
    goto LABEL_36;
  }

  v93 = v92;
  v94 = [v92 topAnchor];

  v95 = [v1 view];
  if (!v95)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v96 = v95;
  v97 = [v95 topAnchor];

  v98 = [v94 constraintEqualToAnchor:v97];
  *(v63 + 112) = v98;
  v99 = [v125 view];
  if (!v99)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v100 = v99;
  v101 = [v99 trailingAnchor];

  v102 = [v1 view];
  if (!v102)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v103 = v102;
  v104 = [v102 trailingAnchor];

  v105 = [v101 constraintEqualToAnchor:v104];
  *(v63 + 120) = v105;
  v106 = [v125 view];
  if (!v106)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v107 = v106;
  v108 = [v106 leadingAnchor];

  v109 = [v1 view];
  if (v109)
  {
    v110 = v109;
    v111 = objc_opt_self();
    v112 = [v110 leadingAnchor];

    v113 = [v108 constraintEqualToAnchor:v112];
    *(v63 + 128) = v113;
    sub_10000A2CC(0, &qword_1003B3480, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v111 activateConstraints:isa];

    return;
  }

LABEL_41:
  __break(1u);
}

id sub_10019014C(void *a1)
{
  v2 = [a1 traitCollection];
  v3 = [v2 horizontalSizeClass];

  result = [a1 view];
  v5 = result;
  if (v3 == 1)
  {
    if (result)
    {
      v6 = [result bottomAnchor];
LABEL_6:
      v8 = v6;

      return v8;
    }

    __break(1u);
  }

  else if (result)
  {
    v7 = [result safeAreaLayoutGuide];

    v6 = [v7 bottomAnchor];
    v5 = v7;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void sub_100190234(char a1)
{
  if (a1 == 3)
  {
    v2 = [v1 view];
    if (v2)
    {
      v3 = v2;
      [v2 frame];
      v5 = v4;
      v7 = v6;
      v9 = v8;
      v11 = v10;

      v17.origin.x = v5;
      v17.origin.y = v7;
      v17.size.width = v9;
      v17.size.height = v11;
      CGRectGetHeight(v17);
      v12 = [v1 view];
      if (v12)
      {
        v13 = v12;
        [v12 safeAreaInsets];

        v14 = [v1 view];
        if (v14)
        {
          v15 = v14;
          [v14 safeAreaInsets];

          return;
        }

LABEL_13:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_13;
  }

  if (a1 != 4)
  {

    sub_10018F270();
  }
}

uint64_t sub_100190380()
{
  if (!*(v0 + qword_1003B4F40))
  {
    return 0;
  }

  v1 = sub_10018E2F8();
  v2 = sub_100280BB8();

  v3 = [v2 text];
  if (v3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v4 & 0xFFFFFFFFFFFFLL;
    }

    v8 = v7 != 0;
  }

  else
  {
    v8 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v11 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v10 == 0 || v8)
  {
    return 0;
  }

  else
  {
    return 3;
  }
}

void sub_1001904E0(char a1)
{
  v2 = *(v1 + qword_1003B4F30);
  if (!v2)
  {
    return;
  }

  v3 = v1;
  v5 = v2;
  v28 = sub_100097D4C();

  if (!a1)
  {
    v13 = sub_10018E604();
    [v13 setHidden:1];

LABEL_10:
    v31 = 0;
    v29 = 0u;
    v30 = 0u;
LABEL_11:
    UIViewController.contentUnavailableConfiguration.setter();
LABEL_12:
    if (*(v3 + qword_1003B4F48))
    {
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v29) = 1;

      static Published.subscript.setter();
    }

    v16 = sub_10018E2F8();
    v16[OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard_uiVisible] = 0;
    v17 = OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard_closeButtonVisible;
    v16[OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard_closeButtonVisible] = 0;
    v18 = sub_10028195C();
    [v18 setHidden:(v16[v17] & 1) == 0];

    v19 = sub_100280BB8();
    [v19 setHidden:1];

    if (*(v3 + qword_1003B4F28) - 1 <= 1)
    {
      v20 = sub_100190380();
      sub_100191F40(v20, 1, 0.0);
    }

    return;
  }

  if (a1 == 1)
  {
    v6 = sub_10018E744();
    v7 = sub_10018E604();
    v8 = v7;
    if (!v6)
    {
      [v7 setHidden:1];

      *(&v30 + 1) = type metadata accessor for UIContentUnavailableConfiguration();
      v31 = &protocol witness table for UIContentUnavailableConfiguration;
      v21 = sub_100050D60(&v29);
      sub_1000E6C4C(v28, v21);
      goto LABEL_11;
    }

    v9 = &v7[OBJC_IVAR____TtC17SequoiaTranslator35LegacyInlineTranslationTabErrorView_errorType];
    v10 = *&v7[OBJC_IVAR____TtC17SequoiaTranslator35LegacyInlineTranslationTabErrorView_errorType];
    v11 = v28;
    *v9 = v28;
    v12 = v9[8];
    v9[8] = 0;
    goto LABEL_9;
  }

  if (sub_10018E744())
  {
    v8 = sub_10018E604();
    v14 = &v8[OBJC_IVAR____TtC17SequoiaTranslator35LegacyInlineTranslationTabErrorView_errorType];
    v10 = *&v8[OBJC_IVAR____TtC17SequoiaTranslator35LegacyInlineTranslationTabErrorView_errorType];
    v11 = v28;
    *v14 = v28;
    v12 = v14[8];
    v14[8] = 1;
LABEL_9:
    v15 = v11;
    sub_10011C8FC(v10, v12);
    sub_100149214();

    [*(v3 + qword_1003B4F10) setHidden:0];
    goto LABEL_10;
  }

  v22 = *(v3 + qword_1003B4F48);
  if (v22)
  {

    v23 = sub_10018E604();
    [v23 setHidden:1];

    *(&v30 + 1) = type metadata accessor for UIContentUnavailableConfiguration();
    v31 = &protocol witness table for UIContentUnavailableConfiguration;
    sub_100050D60(&v29);
    sub_1000E7224(v22);
    UIViewController.contentUnavailableConfiguration.setter();

    goto LABEL_12;
  }

  if (qword_1003A9220 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_1000078E8(v24, qword_1003D2770);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "Error: Missing ConversationContext", v27, 2u);
  }
}

id sub_1001908CC()
{
  v1 = type metadata accessor for Locale();
  v2 = __chkstk_darwin(v1);
  v5 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + qword_1003B4F30);
  if (v6)
  {
    v77 = v3;
    v73 = v2;
    v78 = v6;
    v74 = v0;
    v7 = sub_10018E2F8();
    v8 = sub_100280BB8();

    v9 = [v8 font];
    if (!v9)
    {
      v10 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle1 compatibleWithTraitCollection:0];
      v11 = objc_opt_self();
      [v10 pointSize];
      v12 = [v11 systemFontOfSize:? weight:?];
      v13 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleTitle1];
      v9 = [v13 scaledFontForFont:v12 maximumPointSize:1.79769313e308];
    }

    sub_100005AD4(&unk_1003BBD30, &unk_1002D7570);
    inited = swift_initStackObject();
    v75 = xmmword_1002D1370;
    *(inited + 16) = xmmword_1002D1370;
    *(inited + 32) = NSFontAttributeName;
    v15 = sub_10000A2CC(0, qword_1003B2390, UIFont_ptr);
    *(inited + 40) = v9;
    *(inited + 64) = v15;
    *(inited + 72) = NSForegroundColorAttributeName;
    v16 = qword_1003A9310;
    v17 = NSFontAttributeName;
    v18 = NSForegroundColorAttributeName;
    v72 = v17;
    v71 = v18;
    v19 = v9;
    if (v16 != -1)
    {
      swift_once();
    }

    v20 = qword_1003D2B28;
    v21 = sub_10000A2CC(0, &qword_1003B2990, UIColor_ptr);
    *(inited + 104) = v21;
    *(inited + 80) = v20;
    v22 = v20;
    v76 = sub_100292588(inited);
    swift_setDeallocating();
    sub_100005AD4(&qword_1003B3490, &qword_1002D6F80);
    swift_arrayDestroy();
    v23 = swift_initStackObject();
    v24 = v71;
    *(v23 + 32) = v72;
    *(v23 + 16) = v75;
    *(v23 + 40) = v19;
    *(v23 + 64) = v15;
    *(v23 + 72) = v24;
    *(v23 + 104) = v21;
    *(v23 + 80) = v22;
    v72 = v19;
    *&v75 = sub_100292588(v23);
    swift_setDeallocating();
    swift_arrayDestroy();
    v25 = [objc_allocWithZone(NSMutableParagraphStyle) init];
    [v25 setAlignment:2];
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    LOBYTE(v23) = Locale.isRTL()();
    v26 = v77 + 8;
    v27 = v73;
    v28 = *(v77 + 8);
    v28(v5, v73);
    if (v23)
    {
      v82 = sub_10000A2CC(0, &unk_1003B5160, NSMutableParagraphStyle_ptr);
      *&v81 = v25;
      sub_10005128C(&v81, v80);
      v29 = v25;
      v30 = v76;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v79 = v30;
      sub_100291800(v80, NSParagraphStyleAttributeName, isUniquelyReferenced_nonNull_native);
      v76 = v79;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v32 = Locale.isRTL()();
    v28(v5, v27);
    v71 = v25;
    if (v32)
    {
      v82 = sub_10000A2CC(0, &unk_1003B5160, NSMutableParagraphStyle_ptr);
      *&v81 = v25;
      sub_10005128C(&v81, v80);
      v33 = v25;
      v34 = v75;
      v35 = swift_isUniquelyReferenced_nonNull_native();
      v79 = v34;
      sub_100291800(v80, NSParagraphStyleAttributeName, v35);
      *&v75 = v79;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v36 = objc_opt_self();
    v37 = [v36 mainBundle];
    v38._countAndFlagsBits = 0x617A696C61636F4CLL;
    v38._object = 0xEB00000000656C62;
    v39._countAndFlagsBits = 0x4E494E455453494CLL;
    v39._object = 0xE900000000000047;
    Locale.ltLocalizedAppString(_:table:bundle:)(v39, v38, v37);

    v69 = v28;
    v28(v5, v27);
    v40 = objc_allocWithZone(NSAttributedString);
    v77 = v26;
    v41 = v40;
    v42 = String._bridgeToObjectiveC()();

    type metadata accessor for Key(0);
    sub_100196AF4(&qword_1003A98E0, type metadata accessor for Key, &unk_1002D2CD0);
    v43 = v27;
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v70 = [v41 initWithString:v42 attributes:isa];

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v45 = [v36 mainBundle];
    v46._countAndFlagsBits = 0x4E494E455453494CLL;
    v46._object = 0xE900000000000047;
    v47._countAndFlagsBits = 0x617A696C61636F4CLL;
    v47._object = 0xEB00000000656C62;
    Locale.ltLocalizedAppString(_:table:bundle:)(v46, v47, v45);

    v69(v5, v43);
    v48 = objc_allocWithZone(NSAttributedString);
    v49 = String._bridgeToObjectiveC()();

    v50 = Dictionary._bridgeToObjectiveC()().super.isa;

    v51 = [v48 initWithString:v49 attributes:v50];

    v52 = v78;
    v53 = objc_allocWithZone(NSAttributedString);
    v54 = String._bridgeToObjectiveC()();
    v55 = Dictionary._bridgeToObjectiveC()().super.isa;

    v56 = [v53 initWithString:v54 attributes:v55];

    if (*(v74 + qword_1003B4F48))
    {

      v57 = sub_100097D4C();
      v58 = sub_100080134(v57);

      if (v58)
      {
        v59 = objc_allocWithZone(NSMutableAttributedString);
        v60 = v70;
        v61 = [v59 initWithAttributedString:v70];
        [v61 appendAttributedString:v56];
        [v61 appendAttributedString:v51];

        v62 = v51;
        v63 = v60;
        v64 = v71;
        v65 = v72;
LABEL_18:

        return v61;
      }
    }

    v66 = sub_1000966CC();
    v67 = objc_allocWithZone(NSMutableAttributedString);
    if (v66)
    {
      v65 = v70;
      v61 = [v67 initWithAttributedString:v70];

      v62 = v51;
      v63 = v71;
      v64 = v72;
    }

    else
    {
      v61 = [v67 initWithAttributedString:v51];

      v62 = v56;
      v56 = v70;
      v63 = v71;
      v64 = v72;
      v65 = v51;
    }

    goto LABEL_18;
  }

  return 0;
}

void sub_10019128C(int a1)
{
  v2 = v1;
  v4 = sub_100005AD4(&qword_1003AFCE0, &qword_1002D5B00);
  __chkstk_darwin(v4 - 8);
  v6 = &v66[-v5];
  v7 = type metadata accessor for Locale();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v10 = __chkstk_darwin(v9);
  v12 = &v66[-v11];
  __chkstk_darwin(v10);
  v15 = &v66[-v14];
  v16 = *&v2[qword_1003B4F30];
  if (v16)
  {
    v69 = v6;
    v70 = v13;
    v72 = a1;
    v17 = v16;
    v18 = sub_10018E2F8();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v19 = objc_allocWithZone(_LTLocalePair);
    isa = Locale._bridgeToObjectiveC()().super.isa;
    v21 = Locale._bridgeToObjectiveC()().super.isa;
    v22 = [v19 initWithSourceLocale:isa targetLocale:v21];

    v71 = v8;
    v23 = *(v8 + 8);
    v23(v12, v7);
    v68 = v23;
    v23(v15, v7);
    v24 = *&v18[OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard_editingPair];
    *&v18[OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard_editingPair] = v22;

    v25 = qword_1003B4F08;
    v26 = *&v2[qword_1003B4F08];
    v27 = sub_100280EA4();

    [v27 setHidden:1];
    swift_getKeyPath();
    swift_getKeyPath();
    v73 = v17;
    static Published.subscript.getter();

    v28 = v79;
    sub_1000968EC(&aBlock);
    if (v28 == 2)
    {
      v41 = sub_1001908CC();
      v42 = *&v2[v25];
      v43 = sub_100280BB8();

      if (v41)
      {
        v35 = sub_10026DB48();
        [v35 setAttributedText:v41];
      }

      else
      {
        v47 = [objc_opt_self() mainBundle];
        v80._object = 0x80000001002F7240;
        v48._countAndFlagsBits = 0x4E494E455453494CLL;
        v48._object = 0xE900000000000047;
        v49._countAndFlagsBits = 0;
        v49._object = 0xE000000000000000;
        v80._countAndFlagsBits = 0xD000000000000016;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v48, 0, v47, v49, v80);

        v50 = sub_10026DB48();
        v35 = String._bridgeToObjectiveC()();

        [v50 setText:v35];
      }
    }

    else
    {
      v67 = v28;
      v29 = *&v2[v25];
      v30 = sub_100280BB8();

      v31 = *&v2[v25];
      sub_1002816F8();

      v32 = sub_10026DB48();
      v33 = String._bridgeToObjectiveC()();

      [v32 setText:v33];

      v34 = *&v2[v25];
      v35 = sub_100280BB8();

      v36 = *&v2[v25];
      v37 = v69;
      sub_1000E1D20(v36 + OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard_selectedEditingLocale, v69);
      v38 = *(v71 + 48);
      if (v38(v37, 1, v7) == 1)
      {
        v39 = v36;
        v40 = v70;
        static Locale.current.getter();
        if (v38(v37, 1, v7) != 1)
        {
          sub_100009EBC(v37, &qword_1003AFCE0, &qword_1002D5B00);
        }
      }

      else
      {
        v40 = v70;
        (*(v71 + 32))(v70, v37, v7);
        v44 = v36;
      }

      v45 = Locale.isRTL()();

      v68(v40, v7);
      if (v45)
      {
        v46 = 2;
      }

      else
      {
        v46 = 0;
      }

      [v35 setTextAlignment:v46];
      v28 = v67;
    }

    v51 = *&v2[v25];
    v52 = sub_100280BB8();

    [v52 setUserInteractionEnabled:v28 != 2];
    if (v72 > 2u)
    {
      if (v72 != 3)
      {

        return;
      }

      v60 = *&v2[v25];
      sub_100282884();

      if (*&v2[qword_1003B4F48])
      {
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(aBlock) = 0;

        static Published.subscript.setter();
      }

      v57 = objc_opt_self();
      v61 = swift_allocObject();
      *(v61 + 16) = v2;
      v78 = sub_100196E80;
      v79 = v61;
      aBlock = _NSConcreteStackBlock;
      v75 = 1107296256;
      v59 = &unk_100387990;
    }

    else if (v72 - 1 >= 2)
    {
      v62 = *&v2[v25];
      sub_100282884();

      if (*&v2[qword_1003B4F48])
      {
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(aBlock) = 0;

        static Published.subscript.setter();
      }

      v57 = objc_opt_self();
      v63 = swift_allocObject();
      *(v63 + 16) = v2;
      v78 = sub_100196A84;
      v79 = v63;
      aBlock = _NSConcreteStackBlock;
      v75 = 1107296256;
      v59 = &unk_100387940;
    }

    else
    {
      v53 = *&v2[v25];
      v54 = OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard_closeButtonVisible;
      v53[OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard_closeButtonVisible] = 1;
      v55 = v53;
      v56 = sub_10028195C();
      [v56 setHidden:(v53[v54] & 1) == 0];

      v57 = objc_opt_self();
      v58 = swift_allocObject();
      *(v58 + 16) = v2;
      v78 = sub_100196A64;
      v79 = v58;
      aBlock = _NSConcreteStackBlock;
      v75 = 1107296256;
      v59 = &unk_1003878F0;
    }

    v76 = sub_100096948;
    v77 = v59;
    v64 = _Block_copy(&aBlock);
    v65 = v2;

    [v57 animateWithDuration:v64 animations:0.25];

    _Block_release(v64);
  }
}

void sub_100191BA0(void *a1, double a2)
{
  v3 = [a1 tabBarController];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 tabBar];

    [v5 setAlpha:a2];
  }
}

uint64_t sub_100191C44(unsigned __int8 a1)
{
  v3 = sub_100005AD4(&qword_1003AFCE0, &qword_1002D5B00);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v19 - v8;
  result = __chkstk_darwin(v7);
  v12 = &v19 - v11;
  v13 = *(v1 + qword_1003B4F30);
  if (v13)
  {
    if (a1 > 2u)
    {
      if (a1 == 4)
      {
        return result;
      }
    }

    else if (a1 >= 2u)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v14 = v13;
      static Published.subscript.getter();

      v15 = type metadata accessor for Locale();
      v16 = *(v15 - 8);
      if ((*(v16 + 48))(v6, 1, v15) != 1)
      {

        v12 = v6;
        return sub_100009EBC(v12, &qword_1003AFCE0, &qword_1002D5B00);
      }

      sub_100009EBC(v6, &qword_1003AFCE0, &qword_1002D5B00);
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      (*(v16 + 56))(v12, 0, 1, v15);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000E1D20(v12, v9);
LABEL_8:
      static Published.subscript.setter();
      return sub_100009EBC(v12, &qword_1003AFCE0, &qword_1002D5B00);
    }

    v17 = type metadata accessor for Locale();
    (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000E1D20(v12, v9);
    v18 = v13;
    goto LABEL_8;
  }

  return result;
}

void sub_100191F40(int a1, char a2, double a3)
{
  sub_1001932F4();
  v7 = *&v3[qword_1003B4F18];
  if (v7)
  {
    [v7 setActive:0];
  }

  v8 = *&v3[qword_1003B4F20];
  if (v8)
  {
    [v8 setActive:0];
  }

  if (a1 == 3)
  {
    v9 = *&v3[qword_1003B4F20];
    if (v9)
    {
      [v9 setActive:1];
    }
  }

  else
  {
    v10 = *&v3[qword_1003B4F18];
    if (v10)
    {
      [v10 setActive:1];
      v11 = *&v3[qword_1003B4F18];
      if (v11)
      {
        v12 = v11;
        sub_100190234(a1);
        [v12 setConstant:?];
      }
    }
  }

  v13 = sub_10018E2F8();
  v14 = *&v13[OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard_textInputTopAnchor];

  v15 = 0.0;
  if (((a1 - 1) & 0xFE) == 0)
  {
    v15 = 20.0;
  }

  [v14 setConstant:v15];

  sub_10019128C(a1);
  v16 = v3[qword_1003B4F28];
  if (v16 == 3)
  {
    if (a1 == 3)
    {
      return;
    }
  }

  else if (v16 == 4)
  {
    if (a1 == 4)
    {
      return;
    }
  }

  else if ((a1 - 5) <= 0xFDu && v16 == a1)
  {
    return;
  }

  sub_100191C44(a1);
  v3[qword_1003B4F28] = a1;
  if (a2)
  {
    [*&v3[qword_1003B4F08] frame];
    MinY = CGRectGetMinY(v40);
    sub_100190234(v3[qword_1003B4F28]);
    if (vabdd_f64(v18, MinY) >= 0.01)
    {
      v19 = a3 / (v18 - MinY);
    }

    else
    {
      v19 = 0.0;
    }

    v20 = [objc_allocWithZone(CASpringAnimation) init];
    [v20 setStiffness:333.333333];
    [v20 stiffness];
    v22 = sqrt(v21);
    [v20 setDamping:(v22 + v22) * 4.56435465];
    [v20 setInitialVelocity:v19];
    [v20 settlingDuration];
    v24 = v23;
    v25 = [v3 view];
    if (v25)
    {
      v26 = v25;
      [v25 _removeAllAnimations:1];

      v27 = objc_opt_self();
      v28 = swift_allocObject();
      *(v28 + 16) = v3;
      v38 = sub_100196A10;
      v39 = v28;
      v34 = _NSConcreteStackBlock;
      v35 = 1107296256;
      v36 = sub_100096948;
      v37 = &unk_100387850;
      v29 = _Block_copy(&v34);
      v30 = v3;

      v31 = swift_allocObject();
      *(v31 + 16) = a1;
      *(v31 + 24) = v30;
      v38 = sub_100196A50;
      v39 = v31;
      v34 = _NSConcreteStackBlock;
      v35 = 1107296256;
      v36 = sub_1001D1870;
      v37 = &unk_1003878A0;
      v32 = _Block_copy(&v34);
      v33 = v30;

      [v27 animateWithDuration:2 delay:v29 usingSpringWithDamping:v32 initialSpringVelocity:v24 options:0.0 animations:4.56435465 completion:v19];
      _Block_release(v32);
      _Block_release(v29);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100192370(void *a1)
{
  v1 = [a1 view];
  if (v1)
  {
    v2 = v1;
    [v1 layoutIfNeeded];
  }

  else
  {
    __break(1u);
  }
}

void sub_1001923CC(char a1, char a2)
{
  if ((a1 & 1) != 0 && a2 == 2)
  {
    v3 = sub_10018E2F8();
    v4 = sub_100280BB8();

    [v4 becomeFirstResponder];
  }
}

void sub_100192480(void *a1)
{
  if (!*&v1[qword_1003B4F40])
  {
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if (v39 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3 < 1)
  {
    goto LABEL_39;
  }

  v4 = [v1 view];
  [a1 translationInView:v4];
  v6 = v5;

  v7 = [v1 view];
  [a1 velocityInView:v7];
  v9 = v8;

  v10 = [a1 state];
  if (v10 > 2)
  {
    if (v10 != 3)
    {
      if (v10 != 4)
      {
        goto LABEL_39;
      }

      v16 = v1[qword_1003B4FB8];
      v17 = v9;
LABEL_38:
      sub_100191F40(v16, 1, v17);
      goto LABEL_39;
    }

    sub_100190234(3);
    v32 = v31;
    sub_10018F270();
    v34 = v32 - v33;
    v35 = v1[qword_1003B4FB8];
    if ((v35 - 3) >= 2)
    {
      if (fabs(v6) >= v34 * 0.25)
      {
        goto LABEL_25;
      }
    }

    else if (v35 != 3 || v34 * 0.25 >= fabs(v6))
    {
LABEL_25:
      if (v9 <= 500.0 && v9 < -500.0)
      {
LABEL_27:
        v16 = sub_100190380();
        if (v1[qword_1003B4FB8] <= 1u)
        {
          if (v1[qword_1003B4FB8])
          {
            v16 = 1;
          }
        }

        else if (v1[qword_1003B4FB8] - 2 < 2)
        {
          v16 = 2;
        }

LABEL_37:
        v17 = v9;
        goto LABEL_38;
      }

LABEL_32:
      v36 = &v1[qword_1003B4F90];
      *v36 = 0;
      *(v36 + 1) = 0;

      if (*&v1[qword_1003B4F48])
      {
        swift_getKeyPath();
        swift_getKeyPath();

        static Published.subscript.setter();
      }

      v37 = *&v1[qword_1003B4F30];
      if (v37)
      {
        v38 = v37;
        sub_10009BAC0(0, 0, 0);
      }

      v16 = sub_100190380();
      goto LABEL_37;
    }

    if (v9 <= 500.0)
    {
      goto LABEL_27;
    }

    goto LABEL_32;
  }

  if (v10 == 1)
  {
    v1[qword_1003B4FB8] = v1[qword_1003B4F28];
    v1[qword_1003B4F28] = 4;
    v18 = *&v1[qword_1003B4F20];
    if (v18)
    {
      [v18 setActive:0];
    }

    v19 = *&v1[qword_1003B4F18];
    if (v19)
    {
      [v19 setActive:1];
    }

    v20 = sub_10018E2F8();
    [v20 frame];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;

    v40.origin.x = v22;
    v40.origin.y = v24;
    v40.size.width = v26;
    v40.size.height = v28;
    *&v1[qword_1003B4FB0] = CGRectGetMinY(v40);
    v29 = *&v1[qword_1003B4F08];
    v30 = sub_100280BB8();

    [v30 resignFirstResponder];
    goto LABEL_39;
  }

  if (v10 != 2 || (v11 = *&v1[qword_1003B4F18]) == 0)
  {
LABEL_39:

    return;
  }

  v12 = v6 + *&v1[qword_1003B4FB0];
  v13 = v11;
  sub_10018F270();
  if (v14 > v12)
  {
    v12 = v14;
  }

  sub_100190234(3);
  if (v15 >= v12)
  {
    v15 = v12;
  }

  [v13 setConstant:v15];
}

void sub_1001928EC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_100192480(v4);
}

void sub_100192954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v45 = a4;
  v9 = sub_100005AD4(&qword_1003AFCE0, &qword_1002D5B00);
  v10 = __chkstk_darwin(v9 - 8);
  v46 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v39 - v12;
  v14 = type metadata accessor for Locale();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v39 - v19;
  sub_100191F40(2, 1, 0.0);
  v21 = *(v4 + qword_1003B4F30);
  if (v21)
  {
    v42 = v5;
    v44 = a2;
    v22 = *(v15 + 16);
    v22(v20, a3, v14);
    swift_getKeyPath();
    v41 = a3;
    swift_getKeyPath();
    v40 = v13;
    v22(v18, v20, v14);
    v23 = v21;
    static Published.subscript.setter();
    sub_10009786C();
    v43 = a1;
    v39 = *(v15 + 8);
    v39(v20, v14);
    v22(v20, v45, v14);
    swift_getKeyPath();
    swift_getKeyPath();
    v22(v18, v20, v14);
    v24 = v23;
    static Published.subscript.setter();
    sub_100097A18();
    v39(v20, v14);
    v25 = v40;
    v22(v40, v41, v14);
    v5 = v42;
    (*(v15 + 56))(v25, 0, 1, v14);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000E1D20(v25, v46);
    static Published.subscript.setter();
    sub_100009EBC(v25, &qword_1003AFCE0, &qword_1002D5B00);
  }

  v26 = sub_10018E2F8();
  v27 = sub_100280BB8();

  v28 = String._bridgeToObjectiveC()();
  [v27 setText:v28];

  v29 = qword_1003B4F08;
  v30 = *(v5 + qword_1003B4F08);
  v31 = sub_100280BB8();

  v32 = [v31 text];
  if (v32)
  {
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;
  }

  else
  {
    v33 = 0;
    v35 = 0;
  }

  v36 = (v5 + qword_1003B4F90);
  *v36 = v33;
  v36[1] = v35;

  v37 = *(v5 + v29);
  v38 = sub_100280BB8();

  [v38 setSelectedRange:{0, String.count.getter()}];
}

uint64_t sub_100192DB0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = type metadata accessor for Locale();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v19 - v11;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = a1;
  sub_100192954(v13, v15, v12, v10);

  v17 = *(v7 + 8);
  v17(v10, v6);
  return (v17)(v12, v6);
}

void sub_100192F14(uint64_t a1)
{
  v2 = *(v1 + qword_1003B4FC0);
  *(v1 + qword_1003B4FC0) = a1;
}

void sub_100192F28(void *a1)
{
  if (!*&v1[qword_1003B4FC0])
  {
    v2 = v1;
    *&v1[qword_1003B4FC0] = a1;
    v3 = a1;
    v4 = [v1 parentViewController];
    [v4 addChildViewController:v3];

    v5 = [v3 view];
    if (v5)
    {
      v6 = v5;
      [v5 setAlpha:0.0];

      v7 = [v2 parentViewController];
      if (v7)
      {
        v8 = v7;
        v9 = [v7 view];

        if (!v9)
        {
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        v10 = [v3 view];
        if (!v10)
        {
LABEL_17:
          __break(1u);
          goto LABEL_18;
        }

        v11 = v10;
        [v9 addSubview:v10];
      }

      v12 = [v3 view];
      if (v12)
      {
        v13 = v12;
        [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

        v14 = [v2 parentViewController];
        if (!v14)
        {
LABEL_12:
          v19 = objc_opt_self();
          v20 = swift_allocObject();
          *(v20 + 16) = v3;
          v31 = sub_100196BB4;
          v32 = v20;
          v27 = _NSConcreteStackBlock;
          v28 = 1107296256;
          v29 = sub_100096948;
          v30 = &unk_1003879E0;
          v21 = _Block_copy(&v27);
          v22 = v3;

          v23 = swift_allocObject();
          *(v23 + 16) = v22;
          *(v23 + 24) = v2;
          v31 = sub_100196C14;
          v32 = v23;
          v27 = _NSConcreteStackBlock;
          v28 = 1107296256;
          v29 = sub_1001D1870;
          v30 = &unk_100387A30;
          v24 = _Block_copy(&v27);
          v25 = v22;
          v26 = v2;

          [v19 animateWithDuration:v21 animations:v24 completion:0.4];
          _Block_release(v24);
          _Block_release(v21);
          return;
        }

        v15 = v14;
        v16 = [v14 view];

        if (v16)
        {
          v17 = [v3 view];
          if (v17)
          {
            v18 = v17;
            sub_1002C31A4(v17);

            goto LABEL_12;
          }

LABEL_19:
          __break(1u);
          return;
        }

LABEL_18:
        __break(1u);
        goto LABEL_19;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_16;
  }
}

uint64_t sub_10019325C(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a4)
  {
    v6 = a3;
    v7 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v11, 0, sizeof(v11));
    v8 = a3;
    v9 = a1;
  }

  sub_100192F28(a3);

  return sub_100009EBC(v11, &unk_1003AB9C0, &unk_1002D36F0);
}

void sub_1001932F4()
{
  v1 = *&v0[qword_1003B4FC0];
  if (v1)
  {
    v2 = v1;
    [v2 willMoveToParentViewController:0];
    v3 = objc_opt_self();
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    v15 = sub_1001969E0;
    v16 = v4;
    v11 = _NSConcreteStackBlock;
    v12 = 1107296256;
    v13 = sub_100096948;
    v14 = &unk_1003877B0;
    v5 = _Block_copy(&v11);
    v6 = v2;

    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v7 + 24) = v0;
    v15 = sub_100196A00;
    v16 = v7;
    v11 = _NSConcreteStackBlock;
    v12 = 1107296256;
    v13 = sub_1001D1870;
    v14 = &unk_100387800;
    v8 = _Block_copy(&v11);
    v9 = v6;
    v10 = v0;

    [v3 animateWithDuration:v5 animations:v8 completion:0.4];
    _Block_release(v8);
    _Block_release(v5);
  }
}

void sub_1001934B8(void *a1, double a2)
{
  v3 = [a1 view];
  if (v3)
  {
    v4 = v3;
    [v3 setAlpha:a2];
  }

  else
  {
    __break(1u);
  }
}

void sub_100193524(int a1, id a2, uint64_t a3)
{
  v5 = [a2 view];
  if (v5)
  {
    v6 = v5;
    [v5 removeFromSuperview];

    [a2 removeFromParentViewController];
    v7 = *(a3 + qword_1003B4FC0);
    *(a3 + qword_1003B4FC0) = 0;
  }

  else
  {
    __break(1u);
  }
}

void sub_1001935B4()
{
  v1 = v0;
  v2 = Notification.userInfo.getter();
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = v2;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v3 + 16) || (v4 = sub_10028DF68(v25), (v5 & 1) == 0))
  {

    sub_100078028(v25);
LABEL_8:
    v26 = 0u;
    v27 = 0u;
    goto LABEL_9;
  }

  sub_10000A37C(*(v3 + 56) + 32 * v4, &v26);
  sub_100078028(v25);

  if (!*(&v27 + 1))
  {
LABEL_9:
    sub_100009EBC(&v26, &unk_1003AB9C0, &unk_1002D36F0);
    return;
  }

  sub_10000A2CC(0, &qword_1003B5150, NSValue_ptr);
  if (swift_dynamicCast())
  {
    v6 = v25[0];
    v7 = sub_10018E2F8();
    v8 = sub_100280BB8();

    [v8 frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v28.origin.x = v10;
    v28.origin.y = v12;
    v28.size.width = v14;
    v28.size.height = v16;
    Height = CGRectGetHeight(v28);
    v18 = qword_1003B4F08;
    v19 = *(v1 + qword_1003B4F08);
    v20 = sub_100280BB8();

    [v6 CGRectValue];
    [v20 convertRect:0 fromView:?];
    v22 = v21;

    v23 = *(v1 + v18);
    v24 = sub_100280BB8();

    [v24 setContentInset:{0.0, 0.0, Height - v22 + 20.0, 0.0}];
  }
}

void sub_100193814()
{
  v0 = Notification.userInfo.getter();
  if (!v0)
  {
    goto LABEL_8;
  }

  v1 = v0;
  AnyHashable.init<A>(_:)();
  if (!*(v1 + 16) || (v2 = sub_10028DF68(v9), (v3 & 1) == 0))
  {

    sub_100078028(v9);
LABEL_8:
    v10 = 0u;
    v11 = 0u;
    goto LABEL_9;
  }

  sub_10000A37C(*(v1 + 56) + 32 * v2, &v10);
  sub_100078028(v9);

  if (!*(&v11 + 1))
  {
LABEL_9:
    sub_100009EBC(&v10, &unk_1003AB9C0, &unk_1002D36F0);
    return;
  }

  type metadata accessor for CGSize(0);
  if (swift_dynamicCast())
  {
    v4 = v9[0];
    v5 = v9[1];
    v6 = sub_10018E2F8();
    v7 = sub_100280BB8();

    v8 = &v7[OBJC_IVAR____TtC17SequoiaTranslator23TextViewWithPlaceHolder_minSourceTextSize];
    *v8 = v4;
    *(v8 + 1) = v5;
  }
}

Class sub_10019399C(void *a1)
{
  v1 = a1;
  v2 = sub_100193A0C();

  if (v2)
  {
    type metadata accessor for Locale();
    v3.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  return v3.super.isa;
}

void *sub_100193A0C()
{
  v1 = *(v0 + qword_1003B4F30);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100005AD4(qword_1003B5180, &unk_1002D7DC0);
  type metadata accessor for Locale();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1002D1370;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v1;
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v2;
}

uint64_t sub_100193BA0(uint64_t a1)
{
  v2 = *(a1 - 8);
  __chkstk_darwin(a1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4);
  v5 = type metadata accessor for Locale();
  v6 = (*(*(v5 - 8) + 48))(v4, 2, v5);
  if (v6)
  {
    if (v6 == 1)
    {
      return 0x7373696D736964;
    }

    else
    {
      return 0x6B61657073;
    }
  }

  else
  {
    (*(v2 + 8))(v4, a1);
    return 0x6769626D61736964;
  }
}

void sub_100193D08(uint64_t a1)
{
  v35 = a1;
  v2 = *((swift_isaMask & *v1) + 0x50);
  v3 = *((swift_isaMask & *v1) + 0x58);
  v37 = *((swift_isaMask & *v1) + 0x60);
  v36 = type metadata accessor for NewTranslationController.LIDAction(0, v2, v3, v37);
  v4 = *(v36 - 8);
  __chkstk_darwin(v36);
  v34 = &v30 - v5;
  v6 = type metadata accessor for Locale();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v30 - v11;
  v13 = *(v1 + qword_1003B4F30);
  if (v13)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v33 = v2;
    v32 = v13;
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v14 = objc_allocWithZone(_LTLocalePair);
    isa = Locale._bridgeToObjectiveC()().super.isa;
    v16.super.isa = Locale._bridgeToObjectiveC()().super.isa;
    v31 = v3;
    v17 = v16.super.isa;
    v18 = [v14 initWithSourceLocale:isa targetLocale:v16.super.isa];

    v19 = *(v7 + 8);
    v19(v10, v6);
    v19(v12, v6);
    v20 = String._bridgeToObjectiveC()();
    v21 = v34;
    v22 = v36;
    (*(v4 + 16))(v34, v35, v36);
    v23 = (*(v4 + 80) + 56) & ~*(v4 + 80);
    v24 = swift_allocObject();
    v25 = v32;
    v26 = v31;
    *(v24 + 2) = v33;
    *(v24 + 3) = v26;
    *(v24 + 4) = v37;
    *(v24 + 5) = v25;
    *(v24 + 6) = v18;
    (*(v4 + 32))(&v24[v23], v21, v22);
    aBlock[4] = sub_1001967B8;
    aBlock[5] = v24;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100241654;
    aBlock[3] = &unk_100387760;
    v27 = _Block_copy(aBlock);
    v28 = v25;
    v29 = v18;

    AnalyticsSendEventLazy();
    _Block_release(v27);
  }
}

uint64_t sub_100194118(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v42 = a2;
  v43 = a3;
  v38 = a1;
  v6 = type metadata accessor for NewTranslationController.LIDAction(0, a4, a5, a6);
  v44 = *(v6 - 8);
  __chkstk_darwin(v6);
  v39 = &v37 - v7;
  v8 = type metadata accessor for Locale();
  v40 = *(v8 - 8);
  v9 = v40;
  v10 = __chkstk_darwin(v8);
  v37 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v37 - v13;
  __chkstk_darwin(v12);
  v16 = &v37 - v15;
  sub_100005AD4(&qword_1003B5138, &qword_1002E4350);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002D3550;
  *(inited + 32) = 0x6F4C656372756F73;
  v41 = inited + 32;
  *(inited + 40) = 0xEC000000656C6163;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  Locale.ltIdentifier.getter();
  v18 = v6;
  v19 = *(v9 + 8);
  v19(v16, v8);
  v20 = String._bridgeToObjectiveC()();

  *(inited + 48) = v20;
  strcpy((inited + 56), "targetLocale");
  *(inited + 69) = 0;
  *(inited + 70) = -5120;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v21 = v39;

  Locale.ltIdentifier.getter();
  v38 = v19;
  v19(v14, v8);
  v22 = String._bridgeToObjectiveC()();

  *(inited + 72) = v22;
  *(inited + 80) = 0x6150656C61636F6CLL;
  *(inited + 88) = 0xEA00000000007269;
  sub_100003754();
  v23 = String._bridgeToObjectiveC()();

  *(inited + 96) = v23;
  *(inited + 104) = 0x6E6F69746361;
  *(inited + 112) = 0xE600000000000000;
  swift_getWitnessTable();
  v24 = v43;
  dispatch thunk of CustomStringConvertible.description.getter();
  v25 = String._bridgeToObjectiveC()();

  *(inited + 120) = v25;
  v26 = v44;
  v27 = sub_100292A30(inited);
  swift_setDeallocating();
  sub_100005AD4(&unk_1003B5140, &unk_1002E4358);
  swift_arrayDestroy();
  v28 = v24;
  v29 = v40;
  (*(v26 + 16))(v21, v28, v18);
  v30 = v8;
  if ((*(v29 + 48))(v21, 2, v8))
  {
    (*(v26 + 8))(v21, v18);
  }

  else
  {
    v31 = v37;
    (*(v29 + 32))(v37, v21, v30);
    Locale.ltIdentifier.getter();
    v32 = String._bridgeToObjectiveC()();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = v27;
    sub_100291C68(v32, 0x6F4C6E65736F6863, 0xEC000000656C6163, isUniquelyReferenced_nonNull_native);
    v27 = v45;
    v38(v31, v30);
  }

  sub_1001A7B38(v27);
  v35 = v34;

  return v35;
}

void sub_10019464C(uint64_t a1)
{
  v3 = type metadata accessor for NewTranslationController.LIDAction(0, *((swift_isaMask & *v1) + 0x50), *((swift_isaMask & *v1) + 0x58), *((swift_isaMask & *v1) + 0x60));
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Locale();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 2, v7);
  sub_100193D08(v6);
  (*(v4 + 8))(v6, v3);
  sub_1001932F4();
  v9 = *(v1 + qword_1003B4F30);
  if (v9)
  {
    v10 = v9;
    sub_100099FB0(a1);
  }
}

uint64_t sub_100194844(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t), void (*a6)(char *))
{
  v10 = (a4)(0, a2);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - v12;
  a5(a3);
  v14 = a1;
  a6(v13);

  return (*(v11 + 8))(v13, v10);
}

void sub_100194944()
{
  v1 = type metadata accessor for NewTranslationController.LIDAction(0, *((swift_isaMask & *v0) + 0x50), *((swift_isaMask & *v0) + 0x58), *((swift_isaMask & *v0) + 0x60));
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8 - v3;
  v5 = type metadata accessor for Locale();
  (*(*(v5 - 8) + 56))(v4, 1, 2, v5);
  sub_100193D08(v4);
  (*(v2 + 8))(v4, v1);
  sub_1001932F4();
  v6 = *(v0 + qword_1003B4F30);
  if (v6)
  {
    v7 = v6;
    sub_10009BAC0(0, 0, 0);
  }
}

void sub_100194ABC(void *a1)
{
  v1 = a1;
  sub_100194944();
}

void sub_100194B04()
{
  if (*(v0 + qword_1003B4F48))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.setter();
  }

  sub_100191F40(2, 1, 0.0);
}

void sub_100194B94(void *a1)
{
  v1 = a1;
  sub_100194B04();
}

void sub_100194BDC()
{
  if (*(v0 + qword_1003B4F48))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.setter();
  }

  v1 = sub_100190380();
  sub_100191F40(v1, 1, 0.0);
}

void sub_100194C68(void *a1)
{
  v1 = a1;
  sub_100194BDC();
}

uint64_t sub_100194CB0(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v7 = sub_100005AD4(&qword_1003B5130, &unk_1002E4220);
  __chkstk_darwin(v7 - 8);
  v9 = &v39 - v8;
  v10 = sub_100005AD4(&qword_1003AFCE0, &qword_1002D5B00);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v39 - v14;
  v16 = type metadata accessor for Locale();
  v17 = *(v16 - 8);
  result = __chkstk_darwin(v16);
  v43 = v3;
  v44 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v3 + qword_1003B4F30);
  if (v20)
  {
    v41 = a1;
    v42 = a2;
    swift_getKeyPath();
    swift_getKeyPath();
    v21 = v20;
    static Published.subscript.getter();

    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {

      return sub_100009EBC(v15, &qword_1003AFCE0, &qword_1002D5B00);
    }

    else
    {
      v40 = v21;
      v22 = v44;
      (*(v17 + 32))(v44, v15, v16);
      Date.init()();
      v23 = type metadata accessor for Date();
      (*(*(v23 - 8) + 56))(v9, 0, 1, v23);
      v24 = OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_start;
      swift_beginAccess();
      sub_10003BD84(v9, &a3[v24], &qword_1003B5130, &unk_1002E4220);
      swift_endAccess();
      v25 = v43;
      if (*(v43 + qword_1003B4F48))
      {
        swift_getKeyPath();
        swift_getKeyPath();

        static Published.subscript.getter();

        v22 = v44;

        v26 = v46;
      }

      else
      {
        v26 = 0;
      }

      a3[OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_airplaneModeEnabled] = v26;
      sub_10000A2CC(0, &qword_1003A9B80, NSUserDefaults_ptr);
      v27 = static NSUserDefaults.translationGroupDefaults.getter();
      v28 = NSUserDefaults.onDeviceOnly.getter();

      a3[OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_onDeviceModeEnabled] = v28 & 1;
      (*(v17 + 16))(v13, v22, v16);
      (*(v17 + 56))(v13, 0, 1, v16);
      v29 = OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_sourceLocale;
      swift_beginAccess();
      sub_10003BD84(v13, &a3[v29], &qword_1003AFCE0, &qword_1002D5B00);
      swift_endAccess();
      v30 = *(v25 + qword_1003B4F48);
      if (v30)
      {
        v32 = *(v30 + OBJC_IVAR____TtC17SequoiaTranslator19ConversationContext__autoplayTTS + 16);
        v46 = *(v30 + OBJC_IVAR____TtC17SequoiaTranslator19ConversationContext__autoplayTTS);
        v31 = v46;

        v33 = v31;

        swift_getAtKeyPath();
        v22 = v44;

        v34 = v45;
        if (v45 == 2)
        {
          v34 = v32;
        }

        v25 = v43;
        if (v34)
        {
          v30 = 8;
        }

        else
        {
          v30 = 0;
        }
      }

      v35 = swift_allocObject();
      *(v35 + 16) = a3;
      v36 = a3;
      v37 = v30;
      v38 = v40;
      sub_10009AAAC(v41, v42, 0, 0, v22, v37, sub_100196628, v35);

      if (*(v25 + qword_1003B4F48))
      {
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v46) = 0;

        static Published.subscript.setter();
      }

      return (*(v17 + 8))(v22, v16);
    }
  }

  return result;
}

void sub_100195240(uint64_t a1, char *a2)
{
  v4 = sub_100005AD4(&qword_1003B5130, &unk_1002E4220);
  __chkstk_darwin(v4 - 8);
  v6 = aBlock - v5;
  Date.init()();
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_start;
  swift_beginAccess();
  sub_10003BD84(v6, &a2[v8], &qword_1003B5130, &unk_1002E4220);
  swift_endAccess();
  sub_1002BD444(a1);
  v9 = String._bridgeToObjectiveC()();
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  aBlock[4] = sub_100196630;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100241654;
  aBlock[3] = &unk_100387710;
  v11 = _Block_copy(aBlock);
  v12 = a2;

  AnalyticsSendEventLazy();
  _Block_release(v11);
}

uint64_t sub_100195428(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = a4;
  v10 = a1;
  sub_100194CB0(v6, v8, v9);
}

void sub_1001954A0()
{
  v1 = v0;
  v2 = sub_10018E2F8();
  v3 = sub_100280BB8();

  v4 = [v3 text];
  if (!v4)
  {
    __break(1u);
    goto LABEL_17;
  }

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = objc_allocWithZone(type metadata accessor for TypedInputInstrumentation(0));
    v10 = sub_1002BDBF4(0);
    v11 = qword_1003B4F08;
    v12 = *(v1 + qword_1003B4F08);
    v13 = sub_100280BB8();

    v14 = [v13 text];
    if (v14)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v15 = String.count.getter();

      *&v10[OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_characterCount] = v15;
      v16 = *(v1 + qword_1003B4F30);
      if (v16)
      {
        v17 = v16;
        v18 = sub_100097D4C();
      }

      else
      {
        v18 = 0;
      }

      v19 = *&v10[OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_localePair];
      *&v10[OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_localePair] = v18;

      v20 = *(v1 + v11);
      v21 = sub_100280BB8();

      v22 = [v21 text];
      if (v22)
      {
        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = v24;

        sub_100194CB0(v23, v25, v10);

        return;
      }

LABEL_18:
      __break(1u);
      return;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_100194BDC();
}

void sub_1001956CC(void *a1)
{
  v1 = a1;
  sub_1001954A0();
}

void sub_100195714()
{
  v1 = v0;
  v2 = (v0 + qword_1003B4F90);
  *v2 = 0;
  v2[1] = 0;

  v3 = *(v0 + qword_1003B4F30);
  if (v3)
  {
    v4 = v3;
    sub_10009BAC0(0, 0, 0);
  }

  v5 = sub_10018E2F8();
  sub_100282680();

  if (*(v1 + qword_1003B4F48))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.setter();
  }

  v6 = sub_100190380();
  sub_100191F40(v6, 1, 0.0);
}

void sub_100195800(void *a1)
{
  v1 = a1;
  sub_100195714();
}

BOOL sub_100195848()
{
  v1 = *(v0 + qword_1003B4F30);
  if (v1)
  {
    v2 = v1;
    sub_10020BB08();
    if (*&v2[OBJC_IVAR____TtC17SequoiaTranslator19ConversationManager_turnData])
    {
      objc_opt_self();
      v3 = swift_dynamicCastObjCClass();
      if (v3)
      {
        [v3 endAudio];
      }
    }
  }

  return v1 != 0;
}

BOOL sub_1001958F0(void *a1)
{
  v1 = a1;
  v2 = sub_100195848();

  return v2;
}

void sub_100195924(uint64_t a1, double a2, double a3)
{
  v7 = type metadata accessor for NewTranslationController(0, *((swift_isaMask & *v3) + 0x50), *((swift_isaMask & *v3) + 0x58), *((swift_isaMask & *v3) + 0x60));
  v9.receiver = v3;
  v9.super_class = v7;
  objc_msgSendSuper2(&v9, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v8 = sub_10018E2F8();
  [v8 endEditing:1];
}

void sub_1001959EC(void *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_100195924(a3, a4, a5);
  swift_unknownObjectRelease();
}

void sub_100195A6C(void *a1)
{
  v2 = v1;
  if (qword_1003A9270 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000078E8(v4, qword_1003D2860);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "scribbleInteractionDidFinishWriting %{public}@", v8, 0xCu);
    sub_100009EBC(v9, &unk_1003AECA0, &unk_1002D3F10);
  }

  if (*(v2 + qword_1003B4F48))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.setter();
  }
}

void sub_100195C08(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_100195A6C(v4);
}

void sub_100195C70(void *a1)
{
  if (*&v1[qword_1003B4F48])
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.setter();
    if (*&v1[qword_1003B4F48])
    {
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.setter();
    }
  }

  if (v1[qword_1003B4F78] == 1)
  {
    v3 = [v1 view];
    if (!v3)
    {
      __break(1u);
      return;
    }

    v4 = v3;
    [v3 endEditing:1];
  }

  if (qword_1003A9270 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000078E8(v5, qword_1003D2860);
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "scribbleInteractionWillBeginWriting %{public}@", v9, 0xCu);
    sub_100009EBC(v10, &unk_1003AECA0, &unk_1002D3F10);
  }
}

void sub_100195EA8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_100195C70(v4);
}

void sub_100195F38(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;

  sub_100196B84();
}

id sub_100195FC8()
{
  v1 = type metadata accessor for NewTranslationController(0, *((swift_isaMask & *v0) + 0x50), *((swift_isaMask & *v0) + 0x58), *((swift_isaMask & *v0) + 0x60));
  v3.receiver = v0;
  v3.super_class = v1;
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_10019604C(uint64_t a1)
{

  v2 = *(a1 + qword_1003B4FC0);
}

uint64_t sub_1001961C4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_20;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 3)
  {
    v8 = v7 - 2;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100196264(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFC)
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_10019631C(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_100196330(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

void sub_100196358()
{
  if (*(v0 + qword_1003B4F48))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.setter();
  }
}

uint64_t sub_1001965F0()
{

  return _swift_deallocObject(v0, 24);
}

double sub_100196654(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100196694()
{
  v1 = *(type metadata accessor for NewTranslationController.LIDAction(0, *(v0 + 16), *(v0 + 24), *(v0 + 32)) - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = *(v1 + 64);

  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 2, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1001967B8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(type metadata accessor for NewTranslationController.LIDAction(0, v1, v2, v3) - 8);
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0 + ((*(v4 + 80) + 56) & ~*(v4 + 80));

  return sub_100194118(v5, v6, v7, v1, v2, v3);
}

void sub_10019684C()
{
  *(v0 + qword_1003B4F00) = 0;
  *(v0 + qword_1003B4F08) = 0;
  *(v0 + qword_1003B4F10) = 0;
  *(v0 + qword_1003B4F18) = 0;
  *(v0 + qword_1003B4F20) = 0;
  *(v0 + qword_1003B4F28) = 3;
  *(v0 + qword_1003B4F30) = 0;
  *(v0 + qword_1003B4F38) = 0;
  *(v0 + qword_1003B4F40) = 0;
  *(v0 + qword_1003B4F48) = 0;
  *(v0 + qword_1003B4F50) = 0;
  *(v0 + qword_1003B4F58) = 0;
  *(v0 + qword_1003B4F60) = 0;
  *(v0 + qword_1003B4F68) = 0;
  *(v0 + qword_1003B4F70) = 0;
  *(v0 + qword_1003B4F78) = 0;
  *(v0 + qword_1003B4F80) = 0;
  v1 = (v0 + qword_1003B4F90);
  *v1 = 0;
  v1[1] = 0;
  v2 = v0 + qword_1003B4F98;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 1;
  *(v0 + qword_1003B4FA0) = 0;
  *(v0 + qword_1003B4FA8) = 0;
  *(v0 + qword_1003B4FB0) = 0;
  *(v0 + qword_1003B4FB8) = 3;
  *(v0 + qword_1003B4FC0) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100196A18()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100196AF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100196BD4()
{

  return _swift_deallocObject(v0, 32);
}

void sub_100196C14()
{
  v1 = *(v0 + 16);
  v2 = [*(v0 + 24) parentViewController];
  [v1 didMoveToParentViewController:v2];
}

uint64_t sub_100196C7C(uint64_t a1)
{
  v1 = type metadata accessor for Locale();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_100196CE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Locale();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100196D68(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for Locale();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_100196EC4@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v23 = a1;
  v27 = a3;
  v28 = type metadata accessor for KeyboardShortcut();
  v26 = *(v28 - 8);
  __chkstk_darwin(v28);
  v25 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  ActionButtonStyle = type metadata accessor for NextActionButtonStyle(0);
  __chkstk_darwin(ActionButtonStyle);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005AD4(&qword_1003AA540, &unk_1002DAA90);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - v9;
  v11 = sub_100005AD4(&qword_1003B5290, &qword_1002E45C0);
  __chkstk_darwin(v11);
  v13 = &v23 - v12;
  v24 = sub_100005AD4(&qword_1003B5298, &qword_1002E45C8);
  v14 = *(v24 - 8);
  __chkstk_darwin(v24);
  v16 = &v23 - v15;

  Button.init(action:label:)();
  sub_10001BAEC(&qword_1003AA548, &qword_1003AA540, &unk_1002DAA90, &protocol conformance descriptor for Button<A>);
  View.accessibilityIdentifier(_:)();
  (*(v8 + 8))(v10, v7);
  *v6 = swift_getKeyPath();
  v6[8] = 0;
  v17 = *(ActionButtonStyle + 20);
  *&v6[v17] = swift_getKeyPath();
  sub_100005AD4(&qword_1003B52A0, &unk_1002E4630);
  swift_storeEnumTagMultiPayload();
  v18 = sub_100198298();
  v19 = sub_1001987A4(&qword_1003B52B0, type metadata accessor for NextActionButtonStyle, "i^\t");
  View.buttonStyle<A>(_:)();
  sub_100198380(v6);
  sub_100009EBC(v13, &qword_1003B5290, &qword_1002E45C0);
  v20 = v25;
  static KeyboardShortcut.defaultAction.getter();
  v29 = v11;
  v30 = ActionButtonStyle;
  v31 = v18;
  v32 = v19;
  swift_getOpaqueTypeConformance2();
  v21 = v24;
  View.keyboardShortcut(_:)();
  (*(v26 + 8))(v20, v28);
  return (*(v14 + 8))(v16, v21);
}

uint64_t sub_100197334@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1001973A0()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10002F620(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_1001974E8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005AD4(&qword_1003B52A0, &unk_1002E4630);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  ActionButtonStyle = type metadata accessor for NextActionButtonStyle(0);
  sub_100198A14(v1 + *(ActionButtonStyle + 20), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorScheme();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t type metadata accessor for NextActionButtonStyle(uint64_t a1)
{
  result = qword_1003B5318;
  if (!qword_1003B5318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10019772C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *&v102 = a1;
  v96 = a2;
  v3 = type metadata accessor for Capsule();
  __chkstk_darwin(v3 - 8);
  v95 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_100005AD4(&qword_1003B5358, &qword_1002E4690);
  __chkstk_darwin(v94);
  v92 = &v82 - v5;
  v90 = sub_100005AD4(&qword_1003B5360, &qword_1002E4698);
  __chkstk_darwin(v90);
  v91 = &v82 - v6;
  v88 = sub_100005AD4(&qword_1003AB5F8, &unk_1002DEBE0);
  __chkstk_darwin(v88);
  v8 = &v82 - v7;
  v9 = sub_100005AD4(&qword_1003AB618, &qword_1002D5348);
  __chkstk_darwin(v9);
  v11 = &v82 - v10;
  v99 = sub_100005AD4(&qword_1003B5368, &qword_1002E46A0);
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v13 = &v82 - v12;
  v97 = sub_100005AD4(&qword_1003B5370, &qword_1002E46A8);
  __chkstk_darwin(v97);
  v15 = &v82 - v14;
  v100 = sub_100005AD4(&qword_1003B5378, &qword_1002E46B0);
  __chkstk_darwin(v100);
  v17 = &v82 - v16;
  v85 = sub_100005AD4(&qword_1003B5380, &qword_1002E46B8);
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v101 = &v82 - v18;
  v83 = sub_100005AD4(&qword_1003B5388, &qword_1002E46C0);
  __chkstk_darwin(v83);
  v89 = &v82 - v19;
  v86 = sub_100005AD4(&qword_1003B5390, &qword_1002E46C8);
  __chkstk_darwin(v86);
  v87 = &v82 - v20;
  v21 = type metadata accessor for ColorScheme();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = v2;
  sub_1001974E8(v24);
  v25 = (*(v22 + 88))(v24, v21);
  if (v25 == enum case for ColorScheme.light(_:))
  {
    if (ButtonStyleConfiguration.isPressed.getter())
    {
      v26 = 0.75;
    }

    else
    {
      v26 = 1.0;
    }

    if (ButtonStyleConfiguration.isPressed.getter())
    {
      v27 = 0.65;
    }

    else
    {
      v27 = 1.0;
    }
  }

  else
  {
    v26 = 1.0;
    v27 = 1.0;
    if (v25 != enum case for ColorScheme.dark(_:))
    {
      if (ButtonStyleConfiguration.isPressed.getter())
      {
        v26 = 0.75;
      }

      else
      {
        v26 = 1.0;
      }

      if (ButtonStyleConfiguration.isPressed.getter())
      {
        v27 = 0.65;
      }

      else
      {
        v27 = 1.0;
      }

      (*(v22 + 8))(v24, v21);
    }
  }

  ButtonStyleConfiguration.label.getter();
  v28 = static Font.body.getter();
  KeyPath = swift_getKeyPath();
  v30 = &v11[*(v9 + 36)];
  *v30 = KeyPath;
  v30[1] = v28;
  static Font.Weight.semibold.getter();
  sub_10002F4F0();
  View.fontWeight(_:)();
  sub_100009EBC(v11, &qword_1003AB618, &qword_1002D5348);
  sub_100005AD4(&qword_1003B5398, &qword_1002E4708);
  inited = swift_initStackObject();
  v102 = xmmword_1002D1370;
  *(inited + 16) = xmmword_1002D1370;
  v32 = static Edge.Set.leading.getter();
  *(inited + 32) = v32;
  v33 = static Edge.Set.trailing.getter();
  *(inited + 33) = v33;
  v34 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v32)
  {
    v34 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v33)
  {
    v34 = Edge.Set.init(rawValue:)();
  }

  v35 = v100;
  EdgeInsets.init(_all:)();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  (*(v98 + 32))(v15, v13, v99);
  v44 = &v15[*(v97 + 36)];
  *v44 = v34;
  *(v44 + 1) = v37;
  *(v44 + 2) = v39;
  *(v44 + 3) = v41;
  *(v44 + 4) = v43;
  v44[40] = 0;
  v45 = swift_initStackObject();
  *(v45 + 16) = v102;
  v46 = static Edge.Set.top.getter();
  *(v45 + 32) = v46;
  v47 = static Edge.Set.bottom.getter();
  *(v45 + 33) = v47;
  v48 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v46)
  {
    v48 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v47)
  {
    v48 = Edge.Set.init(rawValue:)();
  }

  v49 = v101;
  EdgeInsets.init(_all:)();
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  sub_100023BD4(v15, v17, &qword_1003B5370, &qword_1002E46A8);
  v58 = &v17[*(v35 + 36)];
  *v58 = v48;
  *(v58 + 1) = v51;
  *(v58 + 2) = v53;
  *(v58 + 3) = v55;
  *(v58 + 4) = v57;
  v58[40] = 0;
  v59 = enum case for DynamicTypeSize.xLarge(_:);
  v60 = type metadata accessor for DynamicTypeSize();
  (*(*(v60 - 8) + 104))(v8, v59, v60);
  sub_1001987A4(&qword_1003AB628, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    sub_1001987EC();
    sub_10001BAEC(&qword_1003AB650, &qword_1003AB5F8, &unk_1002DEBE0, &protocol conformance descriptor for PartialRangeThrough<A>);
    View.dynamicTypeSize<A>(_:)();
    sub_100009EBC(v8, &qword_1003AB5F8, &unk_1002DEBE0);
    sub_100198940(v17);
    if (sub_1001973A0())
    {
      v62 = static Color.translateAccentColor.getter();
    }

    else
    {
      v62 = static Color.quaternaryTranslateAccentColor.getter();
    }

    v63 = v62;
    v64 = v95;
    v65 = v89;
    v66 = swift_getKeyPath();
    (*(v84 + 32))(v65, v49, v85);
    v67 = (v65 + *(v83 + 36));
    *v67 = v66;
    v67[1] = v63;
    v68 = enum case for RoundedCornerStyle.continuous(_:);
    v69 = type metadata accessor for RoundedCornerStyle();
    (*(*(v69 - 8) + 104))(v64, v68, v69);
    if (sub_1001973A0())
    {
      v70 = static Color.enabledCardButtonFillColor.getter();
    }

    else
    {
      v70 = static Color.disabledCardButtonFillColor.getter();
    }

    v71 = v70;
    v72 = v92;
    sub_1001989B0(v64, v92);
    v73 = v94;
    *(v72 + *(v94 + 52)) = v71;
    *(v72 + *(v73 + 56)) = 256;
    v74 = v91;
    sub_100023BD4(v72, v91, &qword_1003B5358, &qword_1002E4690);
    *(v74 + *(v90 + 36)) = v27;
    v75 = static Alignment.center.getter();
    v77 = v76;
    v78 = v87;
    v79 = &v87[*(v86 + 36)];
    sub_100023BD4(v74, v79, &qword_1003B5360, &qword_1002E4698);
    v80 = (v79 + *(sub_100005AD4(&qword_1003B53B0, &qword_1002E4740) + 36));
    *v80 = v75;
    v80[1] = v77;
    sub_100023BD4(v65, v78, &qword_1003B5388, &qword_1002E46C0);
    v81 = v96;
    sub_100023BD4(v78, v96, &qword_1003B5390, &qword_1002E46C8);
    result = sub_100005AD4(&qword_1003B53B8, &qword_1002E4748);
    *(v81 + *(result + 36)) = v26;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100198298()
{
  result = qword_1003B52A8;
  if (!qword_1003B52A8)
  {
    sub_100005EA8(&qword_1003B5290, &qword_1002E45C0);
    sub_10001BAEC(&qword_1003AA548, &qword_1003AA540, &unk_1002DAA90, &protocol conformance descriptor for Button<A>);
    sub_1001987A4(&qword_1003AA3E8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B52A8);
  }

  return result;
}

uint64_t sub_100198380(uint64_t a1)
{
  ActionButtonStyle = type metadata accessor for NextActionButtonStyle(0);
  (*(*(ActionButtonStyle - 8) + 8))(a1, ActionButtonStyle);
  return a1;
}

uint64_t sub_1001983F0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100005AD4(&qword_1003B52B8, &qword_1002E6110);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1001984B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = sub_100005AD4(&qword_1003B52B8, &qword_1002E6110);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100198564(uint64_t a1)
{
  sub_1001985E8();
  if (v1 <= 0x3F)
  {
    sub_100198638(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1001985E8()
{
  if (!qword_1003B25E8)
  {
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_1003B25E8);
    }
  }
}

void sub_100198638(uint64_t a1)
{
  if (!qword_1003B5328)
  {
    type metadata accessor for ColorScheme();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_1003B5328);
    }
  }
}

uint64_t sub_100198690()
{
  sub_100005EA8(&qword_1003B5298, &qword_1002E45C8);
  sub_100005EA8(&qword_1003B5290, &qword_1002E45C0);
  type metadata accessor for NextActionButtonStyle(255);
  sub_100198298();
  sub_1001987A4(&qword_1003B52B0, type metadata accessor for NextActionButtonStyle, "i^\t");
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1001987A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1001987EC()
{
  result = qword_1003B53A0;
  if (!qword_1003B53A0)
  {
    sub_100005EA8(&qword_1003B5378, &qword_1002E46B0);
    sub_100198878();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B53A0);
  }

  return result;
}

unint64_t sub_100198878()
{
  result = qword_1003B53A8;
  if (!qword_1003B53A8)
  {
    sub_100005EA8(&qword_1003B5370, &qword_1002E46A8);
    sub_100005EA8(&qword_1003AB618, &qword_1002D5348);
    sub_10002F4F0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B53A8);
  }

  return result;
}

uint64_t sub_100198940(uint64_t a1)
{
  v2 = sub_100005AD4(&qword_1003B5378, &qword_1002E46B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001989B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Capsule();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100198A14(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003B52A0, &unk_1002E4630);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100198A88()
{
  result = qword_1003B53C0;
  if (!qword_1003B53C0)
  {
    sub_100005EA8(&qword_1003B53B8, &qword_1002E4748);
    sub_100198B14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B53C0);
  }

  return result;
}

unint64_t sub_100198B14()
{
  result = qword_1003B53C8;
  if (!qword_1003B53C8)
  {
    sub_100005EA8(&qword_1003B5390, &qword_1002E46C8);
    sub_100198BCC();
    sub_10001BAEC(&qword_1003B53D8, &qword_1003B53B0, &qword_1002E4740, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B53C8);
  }

  return result;
}

unint64_t sub_100198BCC()
{
  result = qword_1003B53D0;
  if (!qword_1003B53D0)
  {
    sub_100005EA8(&qword_1003B5388, &qword_1002E46C0);
    sub_100005EA8(&qword_1003B5378, &qword_1002E46B0);
    sub_100005EA8(&qword_1003AB5F8, &unk_1002DEBE0);
    sub_1001987EC();
    sub_10001BAEC(&qword_1003AB650, &qword_1003AB5F8, &unk_1002DEBE0, &protocol conformance descriptor for PartialRangeThrough<A>);
    swift_getOpaqueTypeConformance2();
    sub_10001BAEC(&qword_1003AA870, &qword_1003AA878, &qword_1002D5BE0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B53D0);
  }

  return result;
}

id sub_100198D20(uint64_t a1)
{
  v3 = [objc_allocWithZone(NSTextEncapsulation) init];
  [v3 setStyle:1];
  [v3 setColor:a1];
  sub_100005AD4(&unk_1003BBD30, &unk_1002D7570);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002D1370;
  *(inited + 32) = NSForegroundColorAttributeName;
  v5 = objc_opt_self();
  v6 = NSForegroundColorAttributeName;
  v7 = [v5 clearColor];
  v8 = sub_10000A2CC(0, &qword_1003B2990, UIColor_ptr);
  *(inited + 40) = v7;
  v9 = NSTextEncapsulationAttributeName;
  *(inited + 64) = v8;
  *(inited + 72) = v9;
  *(inited + 104) = sub_10000A2CC(0, &qword_1003B53E0, NSTextEncapsulation_ptr);
  *(inited + 80) = v3;
  v10 = v9;
  v11 = v3;
  sub_100292588(inited);
  swift_setDeallocating();
  sub_100005AD4(&qword_1003B3490, &qword_1002D6F80);
  swift_arrayDestroy();
  v12 = [v1 string];
  if (!v12)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = String._bridgeToObjectiveC()();
  }

  v13 = objc_allocWithZone(NSAttributedString);
  type metadata accessor for Key(0);
  sub_10013B81C();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v15 = [v13 initWithString:v12 attributes:isa];

  return v15;
}

unint64_t sub_100198F60()
{
  result = qword_1003BA6F0;
  if (!qword_1003BA6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BA6F0);
  }

  return result;
}

uint64_t sub_100198FB4@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v23 = a1;
  v6 = type metadata accessor for LanguageModel();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  if (v10)
  {
    v20 = v7;
    v21 = a3;
    v12 = *(v7 + 16);
    v11 = v7 + 16;
    v22 = v12;
    v13 = (v11 - 8);
    v14 = a2 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    while (1)
    {
      v22(v9, v14, v6);
      v16 = v23(v9);
      if (v3)
      {
        return (*v13)(v9, v6);
      }

      if (v16)
      {
        break;
      }

      (*v13)(v9, v6);
      v14 += v15;
      if (!--v10)
      {
        v17 = 1;
        v7 = v20;
        a3 = v21;
        return (*(v7 + 56))(a3, v17, 1, v6);
      }
    }

    v7 = v20;
    a3 = v21;
    (*(v20 + 32))(v21, v9, v6);
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  return (*(v7 + 56))(a3, v17, 1, v6);
}

uint64_t sub_100199188(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_16:
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            return v7;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(a3 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        v12 = v7;
        v9 = a1(&v12);
        if (v3)
        {
          goto LABEL_14;
        }

        if (v9)
        {
          return v7;
        }

        ++v6;
      }

      while (v8 != v5);
    }
  }

  return 0;
}

char *sub_1001992AC@<X0>(uint64_t *a1@<X0>, void **a2@<X1>, char *a3@<X8>)
{
  v93 = a3;
  v5 = type metadata accessor for LanguageState();
  v6 = *(v5 - 8);
  v91 = v5;
  v92 = v6;
  v7 = __chkstk_darwin(v5);
  v90 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v89 = &v82 - v9;
  v105 = type metadata accessor for Locale();
  v10 = *(v105 - 8);
  v11 = __chkstk_darwin(v105);
  v94 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v82 - v13;
  v15 = type metadata accessor for LanguageModel();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v96 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v86 = &v82 - v20;
  v21 = __chkstk_darwin(v19);
  v87 = &v82 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v82 - v24;
  v26 = __chkstk_darwin(v23);
  v88 = &v82 - v27;
  result = __chkstk_darwin(v26);
  v95 = &v82 - v29;
  v30 = *a1;
  v100 = *(*a1 + 16);
  if (v100)
  {
    v31 = 0;
    v32 = *a2;
    v103 = v16 + 16;
    v104 = v32;
    v101 = (v16 + 8);
    v102 = (v10 + 8);
    v106 = v15;
    v99 = v30;
    while (1)
    {
      if (v31 >= *(v30 + 16))
      {
        __break(1u);
        goto LABEL_25;
      }

      v33 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v97 = *(v16 + 72);
      v98 = *(v16 + 16);
      v98(v25, v30 + v33 + v97 * v31, v15);
      v34 = LanguageModel.id.getter();
      v36 = v35;
      v37 = [v104 sourceLocale];
      static Locale._unconditionallyBridgeFromObjectiveC(_:)();

      v38 = Locale.ltIdentifier.getter();
      v40 = v39;
      v41 = *v102;
      (*v102)(v14, v105);
      if (v34 == v38 && v36 == v40)
      {
        break;
      }

      v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v42)
      {
        goto LABEL_10;
      }

      ++v31;
      v15 = v106;
      result = (*v101)(v25, v106);
      v30 = v99;
      if (v100 == v31)
      {
        goto LABEL_22;
      }
    }

LABEL_10:
    v43 = *(v16 + 32);
    v44 = v88;
    v45 = v25;
    v46 = v106;
    v43(v88, v45, v106);
    v47 = v95;
    v88 = v43;
    v43(v95, v44, v46);
    v48 = v89;
    LanguageModel.state.getter();
    v49 = v92;
    v50 = *(v92 + 104);
    v51 = v90;
    v83 = enum case for LanguageState.installed(_:);
    v52 = v91;
    v84 = v92 + 104;
    v82 = v50;
    v50(v90);
    v53 = static LanguageState.== infix(_:_:)();
    v55 = *(v49 + 8);
    v54 = v49 + 8;
    v55(v51, v52);
    v85 = v55;
    result = (v55)(v48, v52);
    if ((v53 & 1) == 0)
    {
      result = (*v101)(v47, v106);
      goto LABEL_22;
    }

    v92 = v54;
    v56 = 0;
    v57 = v99;
    v58 = v99 + v33;
    v59 = v106;
    while (v56 < *(v57 + 16))
    {
      v98(v96, v58, v59);
      v60 = LanguageModel.id.getter();
      v62 = v61;
      v63 = [v104 targetLocale];
      v64 = v94;
      static Locale._unconditionallyBridgeFromObjectiveC(_:)();

      v65 = Locale.ltIdentifier.getter();
      v67 = v66;
      v41(v64, v105);
      if (v60 == v65 && v62 == v67)
      {

LABEL_20:
        v70 = v86;
        v71 = v106;
        v72 = v88;
        (v88)(v86, v96, v106);
        v73 = v87;
        v72(v87, v70, v71);
        v74 = v89;
        LanguageModel.state.getter();
        v76 = v90;
        v75 = v91;
        v82(v90, v83, v91);
        v77 = static LanguageState.== infix(_:_:)();
        v78 = v76;
        v79 = v85;
        v85(v78, v75);
        v79(v74, v75);
        v80 = *v101;
        (*v101)(v73, v71);
        result = v80(v95, v71);
        if ((v77 & 1) == 0)
        {
          goto LABEL_22;
        }

        v81 = 1;
        goto LABEL_23;
      }

      v68 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v68)
      {
        goto LABEL_20;
      }

      ++v56;
      v69 = *v101;
      v59 = v106;
      (*v101)(v96, v106);
      v58 += v97;
      v57 = v99;
      result = v95;
      if (v100 == v56)
      {
        result = v69(v95, v59);
        goto LABEL_22;
      }
    }

LABEL_25:
    __break(1u);
  }

  else
  {
LABEL_22:
    v81 = 0;
LABEL_23:
    *v93 = v81;
  }

  return result;
}

_BYTE *sub_100199A24@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, char *a4@<X8>)
{
  if (*a2 & 1 | ((*result & 1) == 0))
  {
    v4 = *a3 & ~*a2 & 1;
  }

  else
  {
    v4 = 2;
  }

  *a4 = v4;
  return result;
}

void sub_100199A54(void *a1@<X8>)
{
  v2 = objc_allocWithZone(_LTLocalePair);
  isa = Locale._bridgeToObjectiveC()().super.isa;
  v4 = Locale._bridgeToObjectiveC()().super.isa;
  v5 = [v2 initWithSourceLocale:isa targetLocale:v4];

  *a1 = v5;
}

uint64_t sub_100199B28(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v52 = a5;
  v50 = a4;
  v47 = a3;
  v48 = a1;
  v5 = sub_100005AD4(&qword_1003B53E8, &qword_1002E47D8);
  v6 = *(v5 - 8);
  v59 = v5;
  v60 = v6;
  __chkstk_darwin(v5);
  v57 = &v40 - v7;
  v56 = sub_100005AD4(&qword_1003B53F0, &qword_1002E47E0);
  v58 = *(v56 - 8);
  __chkstk_darwin(v56);
  v55 = &v40 - v8;
  v9 = sub_100005AD4(&qword_1003AD850, &unk_1002D7880);
  v10 = *(v9 - 8);
  v53 = v9;
  v54 = v10;
  __chkstk_darwin(v9);
  v51 = &v40 - v11;
  v12 = sub_100005AD4(&qword_1003AD858, &qword_1002DCB90);
  v46 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v42 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v40 - v15;
  v17 = sub_100005AD4(&qword_1003B53F8, &qword_1002E47E8);
  v18 = *(v17 - 8);
  v44 = v17;
  v45 = v18;
  __chkstk_darwin(v17);
  v41 = &v40 - v19;
  v20 = sub_100005AD4(&unk_1003BC4E0, &unk_1002E47F0);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v40 - v22;
  swift_beginAccess();
  sub_100005AD4(&unk_1003B8DF0, &unk_1002D7960);
  Published.projectedValue.getter();
  swift_endAccess();
  v40 = &protocol conformance descriptor for Published<A>.Publisher;
  sub_10001BAEC(&qword_1003AD900, &unk_1003BC4E0, &unk_1002E47F0, &protocol conformance descriptor for Published<A>.Publisher);
  v49 = Publisher.eraseToAnyPublisher()();
  v24 = *(v21 + 8);
  v24(v23, v20);
  swift_beginAccess();
  Published.projectedValue.getter();
  swift_endAccess();
  v43 = Publisher.eraseToAnyPublisher()();
  v24(v23, v20);
  swift_beginAccess();
  sub_100005AD4(&qword_1003AED90, &unk_1002D7970);
  Published.projectedValue.getter();
  swift_endAccess();
  swift_beginAccess();
  v25 = v42;
  Published.projectedValue.getter();
  swift_endAccess();
  sub_10019A3E8();
  v26 = v40;
  sub_10001BAEC(&qword_1003BA720, &qword_1003AD858, &qword_1002DCB90, v40);
  v27 = v41;
  Publisher.combineLatest<A, B>(_:_:)();
  v28 = *(v46 + 8);
  v28(v25, v12);
  v28(v16, v12);
  sub_10001BAEC(&qword_1003B5400, &qword_1003B53F8, &qword_1002E47E8, &protocol conformance descriptor for Publishers.Map<A, B>);
  v29 = v44;
  v30 = Publisher.eraseToAnyPublisher()();
  (*(v45 + 8))(v27, v29);

  v31 = v51;
  LanguagesService.$models.getter();

  sub_10001BAEC(&qword_1003B01A8, &qword_1003AD850, &unk_1002D7880, v26);
  v32 = v53;
  v33 = Publisher.eraseToAnyPublisher()();
  (*(v54 + 8))(v31, v32);
  v61 = v30;
  v62 = v33;
  sub_100005AD4(&qword_1003B01B0, &unk_1002DCB68);
  sub_100005AD4(&qword_1003B5408, &unk_1002E4800);
  sub_10001BAEC(&qword_1003B01B8, &qword_1003B01B0, &unk_1002DCB68, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_10001BAEC(&qword_1003B5410, &qword_1003B5408, &unk_1002E4800, &protocol conformance descriptor for AnyPublisher<A, B>);
  v34 = v55;
  Publisher.combineLatest<A, B>(_:_:)();
  v61 = v49;
  v62 = v43;
  sub_100005AD4(&qword_1003AE448, &qword_1002D8800);
  sub_10001BAEC(&qword_1003AE450, &qword_1003AE448, &qword_1002D8800, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_10001BAEC(&qword_1003B5418, &qword_1003B53F0, &qword_1002E47E0, &protocol conformance descriptor for Publishers.Map<A, B>);
  v36 = v56;
  v35 = v57;
  Publisher.combineLatest<A, B, C>(_:_:_:)();
  sub_10001BAEC(&qword_1003B5420, &qword_1003B53E8, &qword_1002E47D8, &protocol conformance descriptor for Publishers.Map<A, B>);
  v37 = v59;
  v38 = Publisher.eraseToAnyPublisher()();

  (*(v60 + 8))(v35, v37);
  (*(v58 + 8))(v34, v36);
  return v38;
}

unint64_t sub_10019A3E8()
{
  result = qword_1003B3EC0;
  if (!qword_1003B3EC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003B3EC0);
  }

  return result;
}

id sub_10019A438(char a1)
{
  v3 = type metadata accessor for TranslationTaskHint();
  __chkstk_darwin(v3);
  v5 = OBJC_IVAR____TtC17SequoiaTranslator20OnBoardingController_languagesService;
  (*(v6 + 104))(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for TranslationTaskHint.speech(_:));
  type metadata accessor for LanguagesService();
  swift_allocObject();
  *&v1[v5] = LanguagesService.init(task:)();
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator20OnBoardingController____lazy_storage___onBoardingController] = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator20OnBoardingController_oBDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC17SequoiaTranslator20OnBoardingController_whatsNew] = a1;
  v7 = type metadata accessor for OnBoardingController();
  v10.receiver = v1;
  v10.super_class = v7;
  v8 = objc_msgSendSuper2(&v10, "initWithNibName:bundle:", 0, 0);
  [v8 setModalPresentationStyle:2];
  return v8;
}

id sub_10019A6F4()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator20OnBoardingController____lazy_storage___onBoardingController;
  v2 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator20OnBoardingController____lazy_storage___onBoardingController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator20OnBoardingController____lazy_storage___onBoardingController);
  }

  else
  {
    sub_10019A758(v0);
    v4 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_10019A758(uint64_t a1)
{
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v116 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = a1;
  v6 = *(a1 + OBJC_IVAR____TtC17SequoiaTranslator20OnBoardingController_whatsNew);
  v7 = [objc_opt_self() mainBundle];
  if (v6 == 1)
  {
    v8 = 0xD000000000000010;
    v115 = 0x80000001002F77C0;
    v9 = 0x454E5F5354414857;
    v10 = 0xEF454C5449545F57;
  }

  else
  {
    v8 = 0xD000000000000011;
    v9 = 0xD000000000000012;
    v115 = 0x80000001002F73B0;
    v10 = 0x80000001002F7390;
  }

  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  object = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v9, 0, v7, v11, *&v8)._object;

  v13 = objc_allocWithZone(OBWelcomeController);
  v121 = object;
  v14 = String._bridgeToObjectiveC()();
  v123 = [v13 initWithTitle:v14 detailText:0 icon:0];

  if (v6)
  {
    v119 = v3;
    v120 = v2;
    v15 = objc_opt_self();
    v16 = [v15 mainBundle];
    v128._object = 0x80000001002F75E0;
    v17._object = 0x80000001002F75C0;
    v128._countAndFlagsBits = 0xD000000000000024;
    v17._countAndFlagsBits = 0xD000000000000016;
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v16, v18, v128);

    v19 = String._bridgeToObjectiveC()();

    v20 = [v15 mainBundle];
    v129._object = 0x80000001002F7630;
    v21._countAndFlagsBits = 0xD00000000000001BLL;
    v21._object = 0x80000001002F7610;
    v129._countAndFlagsBits = 0xD00000000000002CLL;
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v21, 0, v20, v22, v129);

    v23 = String._bridgeToObjectiveC()();

    v24 = String._bridgeToObjectiveC()();
    v25 = objc_opt_self();
    v26 = [v25 _systemImageNamed:v24];

    if (!v26)
    {
      v26 = [objc_allocWithZone(UIImage) init];
    }

    [v123 addBulletedListItemWithTitle:v19 description:v23 image:v26];

    v27 = [v15 mainBundle];
    v130._object = 0x80000001002F76A0;
    v28._object = 0x80000001002F7680;
    v130._countAndFlagsBits = 0xD000000000000024;
    v28._countAndFlagsBits = 0xD000000000000016;
    v29._countAndFlagsBits = 0;
    v29._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v28, 0, v27, v29, v130);

    v30 = String._bridgeToObjectiveC()();

    v31 = [v15 mainBundle];
    v131._object = 0x80000001002F76F0;
    v32._countAndFlagsBits = 0xD00000000000001BLL;
    v32._object = 0x80000001002F76D0;
    v131._countAndFlagsBits = 0xD00000000000002CLL;
    v33._countAndFlagsBits = 0;
    v33._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v32, 0, v31, v33, v131);

    v34 = String._bridgeToObjectiveC()();

    v35 = String._bridgeToObjectiveC()();
    v36 = [v25 _systemImageNamed:v35];

    if (!v36)
    {
      v36 = [objc_allocWithZone(UIImage) init];
    }

    [v123 addBulletedListItemWithTitle:v30 description:v34 image:v36];

    v37 = [v15 mainBundle];
    v132._object = 0x80000001002F7740;
    v38._object = 0x80000001002F7720;
    v132._countAndFlagsBits = 0xD000000000000024;
    v38._countAndFlagsBits = 0xD000000000000016;
    v39._countAndFlagsBits = 0;
    v39._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v38, 0, v37, v39, v132);

    v40 = String._bridgeToObjectiveC()();

    v41 = [v15 mainBundle];
    v133._object = 0x80000001002F7790;
    v42._countAndFlagsBits = 0xD00000000000001BLL;
    v42._object = 0x80000001002F7770;
    v133._countAndFlagsBits = 0xD00000000000002CLL;
    v43._countAndFlagsBits = 0;
    v43._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v42, 0, v41, v43, v133);

    v44 = String._bridgeToObjectiveC()();

    Locale.init(identifier:)();
    isa = Locale._bridgeToObjectiveC()().super.isa;
    (*(v119 + 8))(v5, v120);
    v46 = [objc_opt_self() configurationWithLocale:isa];

    v47 = String._bridgeToObjectiveC()();
    v48 = [v25 systemImageNamed:v47 withConfiguration:v46];

    if (!v48)
    {
      v48 = [objc_allocWithZone(UIImage) init];
    }
  }

  else
  {
    v49 = objc_opt_self();
    v50 = [v49 currentDevice];
    v51 = [v50 userInterfaceIdiom];

    if (v51 == 1)
    {
      v120 = 0x80000001002F75A0;

      v52 = String._bridgeToObjectiveC()();
      v53 = MGGetSInt32Answer();

      if (v53)
      {
        v54 = 1684107369;
      }

      else
      {
        v54 = 0x6D6F682E64617069;
      }

      v55 = 0xE400000000000000;
      if (!v53)
      {
        v55 = 0xEF6E6F7474756265;
      }

      v118 = v55;
      v119 = v54;
      v117 = 0xD000000000000016;
    }

    else
    {
      v56 = [v49 currentDevice];
      v57 = [v56 model];

      v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v60 = v59;

      v126 = v58;
      v127 = v60;
      v124 = 0x656E6F685069;
      v125 = 0xE600000000000000;
      sub_10001F278();
      LOBYTE(v58) = StringProtocol.contains<A>(_:)();

      if (v58)
      {

        v61 = String._bridgeToObjectiveC()();
        v62 = MGGetSInt32Answer();

        v63 = 0x656E6F687069;
        if (!v62)
        {
          v63 = 0xD000000000000011;
        }

        v119 = v63;
        if (v62)
        {
          v64 = 0xE600000000000000;
        }

        else
        {
          v64 = 0x80000001002F7580;
        }

        v118 = v64;
        v117 = 0xD000000000000018;
        v120 = 0x80000001002F7540;
      }

      else
      {
        v117 = 0;
        v118 = 0xE000000000000000;
        v119 = 0;
        v120 = 0xE000000000000000;
      }
    }

    v65 = objc_opt_self();
    v66 = [v65 mainBundle];
    v134._object = 0x80000001002F73D0;
    v67._object = 0xEC000000315F4552;
    v134._countAndFlagsBits = 0xD00000000000001BLL;
    v67._countAndFlagsBits = 0x55544145465F424FLL;
    v68._countAndFlagsBits = 0;
    v68._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v67, 0, v66, v68, v134);

    v69 = String._bridgeToObjectiveC()();

    v70 = [v65 mainBundle];
    v135._object = 0x80000001002F7410;
    v71._object = 0x80000001002F73F0;
    v135._countAndFlagsBits = 0xD000000000000021;
    v71._countAndFlagsBits = 0xD000000000000011;
    v72._countAndFlagsBits = 0;
    v72._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v71, 0, v70, v72, v135);

    v73 = String._bridgeToObjectiveC()();

    v74 = String._bridgeToObjectiveC()();

    v75 = objc_opt_self();
    v76 = [v75 _systemImageNamed:v74];

    if (!v76)
    {
      v76 = [objc_allocWithZone(UIImage) init];
    }

    [v123 addBulletedListItemWithTitle:v69 description:v73 image:v76];

    v77 = [v65 mainBundle];
    v136._object = 0x80000001002F7440;
    v78._object = 0xEC000000325F4552;
    v136._countAndFlagsBits = 0xD00000000000001BLL;
    v78._countAndFlagsBits = 0x55544145465F424FLL;
    v79._countAndFlagsBits = 0;
    v79._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v78, 0, v77, v79, v136);

    v80 = String._bridgeToObjectiveC()();

    v81 = [v65 mainBundle];
    v137._object = 0x80000001002F7480;
    v82._object = 0x80000001002F7460;
    v137._countAndFlagsBits = 0xD000000000000021;
    v82._countAndFlagsBits = 0xD000000000000011;
    v83._countAndFlagsBits = 0;
    v83._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v82, 0, v81, v83, v137);

    v84 = String._bridgeToObjectiveC()();

    v85 = String._bridgeToObjectiveC()();
    v86 = [v75 _systemImageNamed:v85];

    if (!v86)
    {
      v86 = [objc_allocWithZone(UIImage) init];
    }

    [v123 addBulletedListItemWithTitle:v80 description:v84 image:v86];

    v87 = [v65 mainBundle];
    v138._object = 0x80000001002F74B0;
    v88._object = 0xEC000000335F4552;
    v138._countAndFlagsBits = 0xD00000000000001BLL;
    v88._countAndFlagsBits = 0x55544145465F424FLL;
    v89._countAndFlagsBits = 0;
    v89._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v88, 0, v87, v89, v138);

    v40 = String._bridgeToObjectiveC()();

    v90 = [v65 mainBundle];
    v139._object = 0x80000001002F74D0;
    v139._countAndFlagsBits = 0xD000000000000021;
    v91._countAndFlagsBits = v117;
    v91._object = v120;
    v92._countAndFlagsBits = 0;
    v92._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v91, 0, v90, v92, v139);

    v44 = String._bridgeToObjectiveC()();

    v93 = String._bridgeToObjectiveC()();

    v48 = [v75 systemImageNamed:v93];

    if (!v48)
    {
      v48 = [objc_allocWithZone(UIImage) init];
    }
  }

  [v123 addBulletedListItemWithTitle:v40 description:v44 image:v48];

  v94 = v123;
  v95 = [v123 buttonTray];
  v96 = Array._bridgeToObjectiveC()().super.isa;
  [v95 setPrivacyLinkForBundles:v96];

  v97 = [objc_opt_self() boldButton];
  [v97 addTarget:v122 action:"continueButtonPressed" forControlEvents:0x2000];
  v98 = objc_opt_self();
  v99 = v97;
  v100 = [v98 mainBundle];
  v140._countAndFlagsBits = 0xD000000000000015;
  v140._object = 0x80000001002F7500;
  v101._countAndFlagsBits = 0x49544E4F435F424FLL;
  v101._object = 0xEB0000000045554ELL;
  v102._countAndFlagsBits = 0;
  v102._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v101, 0, v100, v102, v140);

  v103 = String._bridgeToObjectiveC()();

  [v99 setTitle:v103 forState:0];

  v104 = objc_opt_self();
  v105 = [v104 whiteColor];
  [v99 setTitleColor:v105 forState:0];

  v106 = String._bridgeToObjectiveC()();
  v107 = [v104 colorNamed:v106];

  [v99 setTintColor:v107];
  [v99 setRole:1];

  v108 = v99;
  v109 = String._bridgeToObjectiveC()();
  [v108 setAccessibilityIdentifier:v109];

  v110 = [v94 buttonTray];
  [v110 addButton:v108];

  v111 = v94;
  [v111 setModalInPresentation:1];
  v112 = [v111 view];

  if (v112)
  {

    v113 = String._bridgeToObjectiveC()();
    v114 = [v104 colorNamed:v113];

    [v112 setTintColor:v114];
  }

  else
  {
    __break(1u);
  }
}

void sub_10019BAF8()
{
  v1 = [v0 viewControllers];
  sub_10000A2CC(0, &qword_1003B5470, UIViewController_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3 == 1)
  {
    if (*(v0 + OBJC_IVAR____TtC17SequoiaTranslator20OnBoardingController_whatsNew) == 1)
    {

      sub_10019BCF4();
    }

    else
    {
      sub_10019BED8();
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_10019DE48(v0);

        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_10019BCF4()
{
  [v0 dismissViewControllerAnimated:1 completion:0];
  v1 = objc_opt_self();
  v2 = [v1 standardUserDefaults];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 BOOLForKey:v3];

  if ((v4 & 1) == 0)
  {
    v5 = [v1 standardUserDefaults];
    v6 = String._bridgeToObjectiveC()();
    [v5 setBool:1 forKey:v6];
  }

  v7 = [v1 standardUserDefaults];
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 BOOLForKey:v8];

  if ((v9 & 1) == 0)
  {
    v10 = [v1 standardUserDefaults];
    v11 = String._bridgeToObjectiveC()();
    [v10 setBool:1 forKey:v11];
  }
}

uint64_t sub_10019BED8()
{
  v54 = type metadata accessor for Locale();
  v0 = *(v54 - 8);
  v1 = __chkstk_darwin(v54 - 8);
  v3 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v53 = &v47 - v4;
  v52 = type metadata accessor for LocalePair();
  v5 = *(v52 - 8);
  v6 = __chkstk_darwin(v52);
  v55 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v51 = &v47 - v9;
  __chkstk_darwin(v8);
  v11 = &v47 - v10;
  static Locale.preferredLanguages.getter();
  LanguagesService.models.getter();
  Array<A>.defaultPair(userLanguages:)();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = v53;
    LocalePair.sourceLocale.getter();
    LocalePair.targetLocale.getter();
    v15 = objc_allocWithZone(_LTLocalePair);
    v16.super.isa = Locale._bridgeToObjectiveC()().super.isa;
    v50 = v11;
    isa = v16.super.isa;
    v18 = Locale._bridgeToObjectiveC()().super.isa;
    v19 = [v15 initWithSourceLocale:isa targetLocale:v18];

    v20 = v54;
    v21 = *(v0 + 8);
    v21(v3, v20);
    v11 = v50;
    v21(v14, v20);
    v22 = *(v13 + OBJC_IVAR____TtC17SequoiaTranslator19OnBoardingPresenter_initialLocalePair);
    *(v13 + OBJC_IVAR____TtC17SequoiaTranslator19OnBoardingPresenter_initialLocalePair) = v19;
    swift_unknownObjectRelease();
  }

  if (qword_1003A9260 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_1000078E8(v23, qword_1003D2830);
  v24 = *(v5 + 16);
  v25 = v51;
  v26 = v52;
  v24(v51, v11, v52);
  v24(v55, v11, v26);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = v26;
    v30 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v56 = v50;
    *v30 = 136446466;
    v31 = v53;
    v49 = v27;
    LocalePair.sourceLocale.getter();
    v32 = Locale.identifier.getter();
    v34 = v33;
    v48 = v28;
    v47 = *(v0 + 8);
    v47(v31, v54);
    v35 = *(v5 + 8);
    v36 = v25;
    v37 = v29;
    v35(v36, v29);
    v38 = sub_10028D78C(v32, v34, &v56);

    *(v30 + 4) = v38;
    *(v30 + 12) = 2082;
    v39 = v55;
    LocalePair.targetLocale.getter();
    v40 = Locale.identifier.getter();
    v42 = v41;
    v47(v31, v54);
    v35(v39, v37);
    v43 = sub_10028D78C(v40, v42, &v56);

    *(v30 + 14) = v43;
    v44 = v49;
    _os_log_impl(&_mh_execute_header, v49, v48, "Default app locale pair: %{public}s -> %{public}s", v30, 0x16u);
    swift_arrayDestroy();

    return (v35)(v11, v37);
  }

  else
  {

    v46 = *(v5 + 8);
    v46(v55, v26);
    v46(v25, v26);
    return (v46)(v11, v26);
  }
}

id sub_10019C4B0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for OnBoardingController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_10019C58C()
{
  v1 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator19OnBoardingPresenter_dataSharingPresenter);
  [v1 setPresentationDelegate:v0];
  v2 = [v1 dataSharingOptInTextWelcomeControllerForViewStyle:2];
  result = [v2 view];
  if (result)
  {
    v4 = result;
    sub_10005CEB0();
    v5 = static UIColor.translateAccentColor.getter();
    [v4 setTintColor:v5];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10019C64C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003B5558, &qword_1002E48E8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  v8 = *(a2 + OBJC_IVAR____TtC17SequoiaTranslator19OnBoardingPresenter_settingsConnection);
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v7, v4);
  aBlock[4] = sub_10019E49C;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10019C888;
  aBlock[3] = &unk_100387C98;
  v11 = _Block_copy(aBlock);

  [v8 getSiriDataSharingOptInStatusWithCompletion:v11];
  _Block_release(v11);
}

uint64_t sub_10019C808(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    swift_errorRetain();
    sub_100005AD4(&qword_1003B5558, &qword_1002E48E8);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100005AD4(&qword_1003B5558, &qword_1002E48E8);
    return CheckedContinuation.resume(returning:)();
  }
}

void sub_10019C888(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v5(a2, a3);
}

uint64_t sub_10019C900()
{
  v1[9] = v0;
  type metadata accessor for MainActor();
  v1[10] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[11] = v3;
  v1[12] = v2;

  return _swift_task_switch(sub_10019C998, v3, v2);
}

uint64_t sub_10019C998()
{
  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 launchedToTest];

  if (v2)
  {

    if (qword_1003A9260 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000078E8(v3, qword_1003D2830);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_7;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "Ignoring onboarding UI since app is running in a test";
LABEL_6:
    _os_log_impl(&_mh_execute_header, v4, v5, v7, v6, 2u);

LABEL_7:

    v8 = 0;
LABEL_25:
    v29 = v0[1];

    return v29(v8);
  }

  v9 = objc_opt_self();
  v10 = [v9 standardUserDefaults];
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 BOOLForKey:v11];

  if ((v12 & 1) == 0)
  {

    if (qword_1003A9260 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000078E8(v17, qword_1003D2830);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Showing onboarding controller", v20, 2u);
    }

    v21 = objc_allocWithZone(type metadata accessor for OnBoardingController());
    v22 = 0;
    goto LABEL_24;
  }

  v13 = [v9 standardUserDefaults];
  v14 = String._bridgeToObjectiveC()();
  v15 = [v13 BOOLForKey:v14];

  if ((v15 & 1) == 0)
  {

    if (qword_1003A9260 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_1000078E8(v23, qword_1003D2830);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Showing what's new controller", v26, 2u);
    }

    v27 = objc_allocWithZone(type metadata accessor for OnBoardingController());
    v22 = 1;
LABEL_24:
    v28 = sub_10019A438(v22);
    *&v28[OBJC_IVAR____TtC17SequoiaTranslator20OnBoardingController_oBDelegate + 8] = &off_100387C58;
    swift_unknownObjectWeakAssign();
    v8 = v28;
    goto LABEL_25;
  }

  v0[5] = &type metadata for AssistantFeatures;
  v0[6] = sub_10019E3AC();
  v16 = isFeatureEnabled(_:)();
  sub_100008664(v0 + 2);
  if ((v16 & 1) == 0)
  {

    if (qword_1003A9260 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_1000078E8(v30, qword_1003D2830);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_7;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "Ignoring Siri Data Sharing onboarding UI since Siri data sharing prompt isn't available";
    goto LABEL_6;
  }

  return _swift_task_switch(sub_10019CEB4, 0, 0);
}

uint64_t sub_10019CEB4()
{
  v1 = v0[9];
  v2 = swift_task_alloc();
  v0[13] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[14] = v3;
  v4 = sub_100005AD4(&qword_1003B5550, &qword_1002E48E0);
  *v3 = v0;
  v3[1] = sub_10019CFBC;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 7, 0, 0, 0xD000000000000011, 0x80000001002F7970, sub_10019E400, v2, v4);
}

uint64_t sub_10019CFBC()
{

  if (v0)
  {

    v1 = sub_10019D104;
  }

  else
  {

    v1 = sub_10019D180;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_10019D11C()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_10019D180()
{
  *(v0 + 120) = *(v0 + 56);
  *(v0 + 65) = *(v0 + 64);
  return _swift_task_switch(sub_10019D1A8, *(v0 + 88), *(v0 + 96));
}

uint64_t sub_10019D1A8()
{
  v1 = *(v0 + 65);

  if ((v1 & 1) != 0 || (v2 = *(v0 + 120), (*(*(v0 + 72) + OBJC_IVAR____TtC17SequoiaTranslator19OnBoardingPresenter_optInStatus) = v2) != 0))
  {
    v3 = 0;
  }

  else
  {
    v6 = sub_10019C58C();
    [v6 setModalPresentationStyle:2];
    [v6 setModalInPresentation:1];
    v3 = v6;
  }

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_10019D264(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for MainActor();
  v2[5] = static MainActor.shared.getter();
  v3 = swift_task_alloc();
  v2[6] = v3;
  *v3 = v2;
  v3[1] = sub_10019D314;

  return sub_10019C900();
}

uint64_t sub_10019D314(uint64_t a1)
{
  v2 = *v1;
  v2[7] = a1;

  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[8] = v4;
  v2[9] = v3;

  return _swift_task_switch(sub_10019D460, v4, v3);
}

uint64_t sub_10019D460()
{
  v1 = v0[7];
  if (v1)
  {
    if (qword_1003A9260 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000078E8(v2, qword_1003D2830);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Presenting onboarding UI", v5, 2u);
    }

    v6 = v0[3];
    v7 = v0[2];

    [v7 presentViewController:v1 animated:1 completion:0];
    v8 = static MainActor.shared.getter();
    v0[10] = v8;
    v9 = swift_task_alloc();
    v0[11] = v9;
    *(v9 + 16) = v6;
    v10 = swift_task_alloc();
    v0[12] = v10;
    *v10 = v0;
    v10[1] = sub_10019D688;

    return withCheckedContinuation<A>(isolation:function:_:)(v10, v8, &protocol witness table for MainActor, 0xD000000000000014, 0x80000001002F7950, sub_10019E3A4, v9, &type metadata for () + 8);
  }

  else
  {

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_10019D688()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_10019D7E8, v3, v2);
}

uint64_t sub_10019D7E8()
{
  v1 = v0[2];

  [v1 dismissViewControllerAnimated:1 completion:0];
  v2 = objc_opt_self();
  v3 = [v2 standardUserDefaults];
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 BOOLForKey:v4];

  if ((v5 & 1) == 0)
  {
    v6 = [v2 standardUserDefaults];
    v7 = String._bridgeToObjectiveC()();
    [v6 setBool:1 forKey:v7];
  }

  v8 = [v2 standardUserDefaults];
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 BOOLForKey:v9];

  v11 = v0[7];
  if ((v10 & 1) == 0)
  {
    v12 = [v2 standardUserDefaults];
    v13 = String._bridgeToObjectiveC()();
    [v12 setBool:1 forKey:v13];
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_10019D9E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003B5540, &qword_1002E48D8);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_100005AD4(&qword_1003B54D8, &qword_1002E48B0);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC17SequoiaTranslator19OnBoardingPresenter_presentationContinuation;
  swift_beginAccess();
  sub_10019E118(v6, a2 + v9);
  return swift_endAccess();
}

id sub_10019DB1C()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator19OnBoardingPresenter_settingsConnection;
  *&v0[v1] = [objc_allocWithZone(AFSettingsConnection) init];
  v2 = OBJC_IVAR____TtC17SequoiaTranslator19OnBoardingPresenter_dataSharingPresenter;
  *&v0[v2] = [objc_allocWithZone(VTUISiriDataSharingOptInPresenter) init];
  *&v0[OBJC_IVAR____TtC17SequoiaTranslator19OnBoardingPresenter_optInStatus] = 0;
  *&v0[OBJC_IVAR____TtC17SequoiaTranslator19OnBoardingPresenter_initialLocalePair] = 0;
  v3 = OBJC_IVAR____TtC17SequoiaTranslator19OnBoardingPresenter_presentationContinuation;
  v4 = sub_100005AD4(&qword_1003B54D8, &qword_1002E48B0);
  (*(*(v4 - 8) + 56))(&v0[v3], 1, 1, v4);
  v6.receiver = v0;
  v6.super_class = type metadata accessor for OnBoardingPresenter(0);
  return objc_msgSendSuper2(&v6, "init");
}

id sub_10019DC34()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OnBoardingPresenter(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for OnBoardingPresenter(uint64_t a1)
{
  result = qword_1003B54C0;
  if (!qword_1003B54C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10019DD2C(uint64_t a1)
{
  sub_10019DDE4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10019DDE4(uint64_t a1)
{
  if (!qword_1003B54D0)
  {
    sub_100005EA8(&qword_1003B54D8, &qword_1002E48B0);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1003B54D0);
    }
  }
}

void sub_10019DE48(void *a1)
{
  if (([*(v1 + OBJC_IVAR____TtC17SequoiaTranslator19OnBoardingPresenter_dataSharingPresenter) shouldShowSiriDataSharingOptInView] & 1) != 0 || *(v1 + OBJC_IVAR____TtC17SequoiaTranslator19OnBoardingPresenter_optInStatus) != 1)
  {
    v8 = sub_10019C58C();
  }

  else
  {
    v3 = [objc_opt_self() mainBundle];
    v12._object = 0x80000001002F79B0;
    v4._countAndFlagsBits = 0x5F45564F52504D49;
    v4._object = 0xED00004543494F56;
    v5._countAndFlagsBits = 0;
    v5._object = 0xE000000000000000;
    v12._countAndFlagsBits = 0xD00000000000002FLL;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v12);

    v6 = objc_allocWithZone(type metadata accessor for TempOptInReprompt());
    v7 = String._bridgeToObjectiveC()();

    v9 = [v6 initWithTitle:v7];

    *&v9[OBJC_IVAR____TtC17SequoiaTranslator17TempOptInReprompt_delegate + 8] = &off_100387C48;
    swift_unknownObjectWeakAssign();
    v8 = v9;
  }

  v10 = v8;
  [a1 pushViewController:? animated:?];
}

uint64_t sub_10019E040(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003B5540, &qword_1002E48D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10019E0B0(uint64_t a1)
{
  v2 = sub_100005AD4(&qword_1003B5540, &qword_1002E48D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10019E118(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003B5540, &qword_1002E48D8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10019E188()
{
  v1 = v0;
  v2 = sub_100005AD4(&qword_1003B54D8, &qword_1002E48B0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14[-v4];
  v6 = sub_100005AD4(&qword_1003B5540, &qword_1002E48D8);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v14[-v10];
  v12 = OBJC_IVAR____TtC17SequoiaTranslator19OnBoardingPresenter_presentationContinuation;
  swift_beginAccess();
  sub_10019E040(v1 + v12, v11);
  if ((*(v3 + 48))(v11, 1, v2))
  {
    sub_10019E0B0(v11);
  }

  else
  {
    (*(v3 + 16))(v5, v11, v2);
    sub_10019E0B0(v11);
    CheckedContinuation.resume(returning:)();
    (*(v3 + 8))(v5, v2);
  }

  (*(v3 + 56))(v9, 1, 1, v2);
  swift_beginAccess();
  sub_10019E118(v9, v1 + v12);
  return swift_endAccess();
}

unint64_t sub_10019E3AC()
{
  result = qword_1003B5548;
  if (!qword_1003B5548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B5548);
  }

  return result;
}

uint64_t sub_10019E408()
{
  v1 = sub_100005AD4(&qword_1003B5558, &qword_1002E48E8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10019E49C(uint64_t a1, uint64_t a2)
{
  sub_100005AD4(&qword_1003B5558, &qword_1002E48E8);

  return sub_10019C808(a1, a2);
}

double sub_10019E528(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_10019E554()
{
  result = qword_1003B5560[0];
  if (!qword_1003B5560[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1003B5560);
  }

  return result;
}

NSString sub_10019E638()
{
  result = String._bridgeToObjectiveC()();
  qword_1003D2978 = result;
  return result;
}

uint64_t sub_10019E6A4(void *a1)
{
  v1 = a1;
  v2 = sub_10019E6D8();

  return v2;
}

uint64_t sub_10019E6D8()
{
  v1 = swift_isaMask & *v0;
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3)
  {
    locked = type metadata accessor for OrientationLockedController(0, *(v1 + qword_1003D2980), *(v1 + qword_1003D2980 + 8), v4);
    v12.receiver = v0;
    v12.super_class = locked;
    return objc_msgSendSuper2(&v12, "supportedInterfaceOrientations");
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v9 != 6)
  {
    if (v9 == 2)
    {
      sub_10000A948(v8, 2uLL);
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if ((v8 & 1) == 0)
      {
        v10 = &type metadata for TranslateFeatures;
        v11 = sub_100009DF8();
        LOBYTE(v8) = 2;
        v7 = isFeatureEnabled(_:)();
        sub_100008664(&v8);
        if ((v7 & 1) == 0)
        {
          return 26;
        }
      }
    }

    else
    {
      sub_10000A948(v8, v9);
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v8)
  {
    swift_unknownObjectRelease();
    return 26;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v8)
    {
      return 26;
    }

    else
    {
      return 2;
    }
  }
}

void sub_10019E9D0(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  locked = type metadata accessor for OrientationLockedController(0, *((swift_isaMask & *v4) + qword_1003D2980), *((swift_isaMask & *v4) + qword_1003D2980 + 8), a4);
  v18.receiver = v4;
  v18.super_class = locked;
  objc_msgSendSuper2(&v18, "viewWillAppear:", a1 & 1);
  v7 = [v4 view];
  if (v7)
  {
    v8 = v7;
    [v7 frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v19.origin.x = v10;
    v19.origin.y = v12;
    v19.size.width = v14;
    v19.size.height = v16;
    Width = CGRectGetWidth(v19);
    sub_10019F098(Width);
  }

  else
  {
    __break(1u);
  }
}

void sub_10019EAC8(void *a1, uint64_t a2, char a3)
{
  v6 = a1;
  sub_10019E9D0(a3, v6, v4, v5);
}

id sub_10019EB1C(uint64_t a1, double a2, double a3)
{
  v7 = swift_isaMask & *v3;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v13 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v13 = 0;

    static Published.subscript.setter();
    v8 = [objc_opt_self() mainScreen];
    [v8 bounds];

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();
  }

  sub_10019F098(a2);
  locked = type metadata accessor for OrientationLockedController(0, *(v7 + qword_1003D2980), *(v7 + qword_1003D2980 + 8), v9);
  v12.receiver = v3;
  v12.super_class = locked;
  return objc_msgSendSuper2(&v12, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
}

void sub_10019EE0C(void *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_10019EB1C(a3, a4, a5);
  swift_unknownObjectRelease();
}

void sub_10019EE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  locked = type metadata accessor for OrientationLockedController(0, *((swift_isaMask & *v4) + qword_1003D2980), *((swift_isaMask & *v4) + qword_1003D2980 + 8), a4);
  v7.receiver = v4;
  v7.super_class = locked;
  objc_msgSendSuper2(&v7, "viewDidLayoutSubviews");
  v6 = [objc_opt_self() defaultCenter];
  if (qword_1003A92D0 != -1)
  {
    swift_once();
  }

  [v6 postNotificationName:qword_1003D2978 object:0];

  sub_10019F28C();
}

void sub_10019EF88(void *a1)
{
  v4 = a1;
  sub_10019EE8C(v4, v1, v2, v3);
}

void sub_10019EFD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  locked = type metadata accessor for OrientationLockedController(0, *((swift_isaMask & *v4) + qword_1003D2980), *((swift_isaMask & *v4) + qword_1003D2980 + 8), a4);
  v6.receiver = v4;
  v6.super_class = locked;
  objc_msgSendSuper2(&v6, "viewSafeAreaInsetsDidChange");
  sub_10019F28C();
}

void sub_10019F050(void *a1)
{
  v4 = a1;
  sub_10019EFD0(v4, v1, v2, v3);
}

void sub_10019F098(double a1)
{
  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (v2 == 1)
  {
    v3 = [objc_opt_self() mainScreen];
    [v3 bounds];
    v5 = v4;

    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.setter();
    if (v5 * 0.5 + -10.0 > v5 * 0.5 + 10.0)
    {
      __break(1u);
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.setter();
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.setter();
    }
  }
}

void sub_10019F28C()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 window];

    if (v3)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v4 = v3;
      [v4 safeAreaInsets];
      v6.f64[1] = v5;
      v8.f64[1] = v7;
      if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v9, v6), vceqq_f64(v10, v8)))))
      {
      }

      else
      {
        [v4 safeAreaInsets];

        swift_getKeyPath();
        swift_getKeyPath();

        static Published.subscript.setter();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10019F4B4()
{
}

id sub_10019F5B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  locked = type metadata accessor for OrientationLockedController(0, *((swift_isaMask & *v4) + qword_1003D2980), *((swift_isaMask & *v4) + qword_1003D2980 + 8), a4);
  v7.receiver = v4;
  v7.super_class = locked;
  return objc_msgSendSuper2(&v7, "dealloc");
}

uint64_t sub_10019F62C(void *a1)
{
}

double sub_10019F794@<D0>(double *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10019F814(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

double sub_10019F890@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v4;
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_10019F910(_OWORD *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void sub_10019F988()
{
  *(v0 + *((swift_isaMask & *v0) + qword_1003D2980 + 32)) = _swiftEmptyArrayStorage;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10019FB5C(void *a1, float a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 32);
  v7 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 32) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_10028C84C(0, v6[2] + 1, 1, v6);
    *(v3 + 32) = v6;
  }

  v10 = v6[2];
  v9 = v6[3];
  if (v10 >= v9 >> 1)
  {
    v6 = sub_10028C84C((v9 > 1), v10 + 1, 1, v6);
  }

  v6[2] = v10 + 1;
  v11 = &v6[2 * v10];
  *(v11 + 4) = v7;
  v11[10] = a2;
  *(v3 + 32) = v6;
  swift_endAccess();
  v12 = [v7 frameLength];
  v13 = [v7 format];
  [v13 sampleRate];
  v15 = v14;

  *(v3 + 24) = v12 / v15 + *(v3 + 24);
  if (qword_1003A92B8 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1000078E8(v16, qword_1003D2938);
  v17 = v7;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 134217984;
    v21 = [v17 frameLength];
    v22 = [v17 format];
    [v22 sampleRate];
    v24 = v23;

    *(v20 + 4) = v21 / v24;
    _os_log_impl(&_mh_execute_header, v18, v19, "New audioBuffer duration: %f", v20, 0xCu);
  }

  v25 = *(v3 + 32);
  v26 = v25[2];
  if (v26)
  {
    v27 = *(v3 + 24);
    do
    {
      if (*(v3 + 16) >= v27)
      {
        break;
      }

      swift_beginAccess();
      v33 = v25[4];
      v34 = swift_isUniquelyReferenced_nonNull_native();
      *(v3 + 32) = v25;
      if (!v34 || (v26 - 1) > v25[3] >> 1)
      {
        v25 = sub_10028C84C(v34, v26, 1, v25);
        *(v3 + 32) = v25;
      }

      sub_1001A02A4((v25 + 4));
      v28 = v25[2];
      memmove(v25 + 4, v25 + 6, 16 * v28 - 16);
      v25[2] = v28 - 1;
      *(v3 + 32) = v25;
      swift_endAccess();
      v29 = [v33 frameLength];
      v30 = [v33 format];
      [v30 sampleRate];
      v32 = v31;

      v27 = *(v3 + 24) - v29 / v32;
      *(v3 + 24) = v27;
      v25 = *(v3 + 32);
      v26 = v25[2];
    }

    while (v26);
  }

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 134218240;
    *(v37 + 4) = *(v3 + 24);
    *(v37 + 12) = 2048;
    *(v37 + 14) = *(*(v3 + 32) + 16);

    _os_log_impl(&_mh_execute_header, v35, v36, "CurrentAudioDuration: %f audioBuffer count: %ld after adding to cache", v37, 0x16u);
  }

  else
  {
  }
}

uint64_t sub_10019FF68()
{

  return swift_deallocClassInstance();
}

void sub_10019FFC4(uint64_t a1, void (*a2)(void, id, float))
{
  if (qword_1003A92B8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000078E8(v4, qword_1003D2938);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134218240;
    *(v7 + 4) = *(a1 + 24);
    *(v7 + 12) = 2048;
    swift_beginAccess();
    *(v7 + 14) = *(*(a1 + 32) + 16);

    _os_log_impl(&_mh_execute_header, v5, v6, "CurrentAudioDuration: %f audioBuffer count: %ld at cache drain", v7, 0x16u);
  }

  else
  {
  }

  swift_beginAccess();
  v8 = *(*(a1 + 32) + 16);
  if (v8)
  {
    v9 = ( + 40);
    do
    {
      v10 = *v9;
      v11 = *(v9 - 1);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "Forward cached OVAD audio to resultHandler", v14, 2u);
      }

      a2(0, v11, v10);
      v9 += 2;
      --v8;
    }

    while (v8);
  }

  *(a1 + 32) = _swiftEmptyArrayStorage;

  *(a1 + 24) = 0;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Done draining audio cache", v17, 2u);
  }
}

uint64_t sub_1001A02A4(uint64_t a1)
{
  v2 = sub_100005AD4(&qword_1003B56F8, &qword_1002E4CF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_1001A030C(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for StoredTranslationResult();
  v64 = *(v5 - 8);
  v65 = v5;
  v6 = __chkstk_darwin(v5);
  v63 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v70 = &v56 - v8;
  v9 = type metadata accessor for SpeechResultOrigin();
  v60 = *(v9 - 8);
  v61 = v9;
  __chkstk_darwin(v9);
  v57 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for StoredSpeechResult();
  v56 = *(v59 - 8);
  v11 = __chkstk_darwin(v59);
  v66 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v56 - v13;
  v15 = type metadata accessor for Locale();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v56 - v20;
  *&v2[OBJC_IVAR____TtC17SequoiaTranslator16ConversationTurn_lid] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC17SequoiaTranslator16ConversationTurn_speech] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC17SequoiaTranslator16ConversationTurn_translation] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC17SequoiaTranslator16ConversationTurn_request] = a1;
  *&v2[OBJC_IVAR____TtC17SequoiaTranslator16ConversationTurn_options] = a2;
  v22 = &v2[OBJC_IVAR____TtC17SequoiaTranslator16ConversationTurn_completion];
  *v22 = 0;
  *(v22 + 1) = 0;
  v23 = type metadata accessor for ConversationTurn();
  v74.receiver = v2;
  v74.super_class = v23;
  v24 = a1;
  v25 = objc_msgSendSuper2(&v74, "init");
  v26 = [v24 text];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v27 = [v24 localePair];
  v67 = v24;

  v28 = [v27 sourceLocale];
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  v62 = v16;
  v29 = v16;
  v30 = v56;
  v31 = *(v29 + 16);
  v68 = v21;
  v69 = v15;
  v58 = v31;
  v31(v19, v21, v15);
  (*(v60 + 13))(v57, enum case for SpeechResultOrigin.text(_:), v61);
  v61 = v19;
  StoredSpeechResult.init(text:sanitizedText:locale:origin:)();
  v32 = *(v30 + 16);
  v60 = v14;
  v33 = v59;
  v57 = v32;
  (v32)(v66, v14);
  v34 = OBJC_IVAR____TtC17SequoiaTranslator16ConversationTurn_speech;
  swift_beginAccess();
  v35 = *&v25[v34];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v25[v34] = v35;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v35 = sub_10028CCDC(0, v35[2] + 1, 1, v35);
    *&v25[v34] = v35;
  }

  v38 = v35[2];
  v37 = v35[3];
  if (v38 >= v37 >> 1)
  {
    v35 = sub_10028CCDC((v37 > 1), v38 + 1, 1, v35);
  }

  v72 = v33;
  v73 = sub_100100EB8(&unk_1003AECB0, &type metadata accessor for StoredSpeechResult, &protocol conformance descriptor for StoredSpeechResult);
  v39 = sub_100050D60(&v71);
  v40 = v66;
  (v57)(v39, v66, v33);
  v35[2] = v38 + 1;
  sub_100051124(&v71, &v35[5 * v38 + 4]);
  *&v25[v34] = v35;
  swift_endAccess();
  v41 = *(v30 + 8);
  v41(v60, v33);
  v41(v40, v33);
  v42 = [v67 text];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v58(v61, v68, v69);
  v43 = v70;
  StoredTranslationResult.init(text:locale:isOffline:romanization:)();
  v45 = v63;
  v44 = v64;
  v46 = *(v64 + 16);
  v47 = v65;
  v46(v63, v43, v65);
  v48 = OBJC_IVAR____TtC17SequoiaTranslator16ConversationTurn_translation;
  swift_beginAccess();
  v49 = *&v25[v48];
  v50 = swift_isUniquelyReferenced_nonNull_native();
  *&v25[v48] = v49;
  if ((v50 & 1) == 0)
  {
    v49 = sub_10028CD00(0, v49[2] + 1, 1, v49);
    *&v25[v48] = v49;
  }

  v52 = v49[2];
  v51 = v49[3];
  if (v52 >= v51 >> 1)
  {
    v49 = sub_10028CD00((v51 > 1), v52 + 1, 1, v49);
  }

  v72 = v47;
  v73 = sub_100100EB8(&qword_1003AED00, &type metadata accessor for StoredTranslationResult, &protocol conformance descriptor for StoredTranslationResult);
  v53 = sub_100050D60(&v71);
  v46(v53, v45, v47);
  v49[2] = v52 + 1;
  sub_100051124(&v71, &v49[5 * v52 + 4]);
  *&v25[v48] = v49;
  swift_endAccess();

  v54 = *(v44 + 8);
  v54(v70, v47);
  (*(v62 + 8))(v68, v69);
  v54(v45, v47);

  return v25;
}

id sub_1001A0AB4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PassthroughTextTurn();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1001A0B0C(uint64_t a1, double a2, double a3)
{
  v13.receiver = v3;
  v13.super_class = type metadata accessor for PassthroughWindow();
  v7 = objc_msgSendSuper2(&v13, "hitTest:withEvent:", a1, a2, a3);
  if (v7)
  {
    v8 = [v3 rootViewController];
    v9 = [v8 view];

    if (!v9 || (sub_1001A0DF8(), v10 = v7, v11 = static NSObject.== infix(_:_:)(), v9, v10, (v11 & 1) == 0))
    {

      return 0;
    }
  }

  return v7;
}

id sub_1001A0DA0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PassthroughWindow();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_1001A0DF8()
{
  result = qword_1003AFCF0;
  if (!qword_1003AFCF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003AFCF0);
  }

  return result;
}

void sub_1001A0EF8()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  v4 = type metadata accessor for UIHostingControllerSizingOptions();
  __chkstk_darwin(v4);
  v6 = type metadata accessor for PersonalTranslationActivitesHostingController(0, *((v3 & v2) + 0x50), *((v3 & v2) + 0x58), v5);
  v45.receiver = v0;
  v45.super_class = v6;
  objc_msgSendSuper2(&v45, "viewDidLoad");
  v7 = *(v0 + qword_1003B5750);
  sub_100005AD4(&unk_1003BA350, qword_1002EB440);
  *(swift_allocObject() + 16) = xmmword_1002D1370;
  static UIHostingControllerSizingOptions.preferredContentSize.getter();
  static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
  sub_1001A1654();
  sub_100005AD4(&unk_1003BA360, &unk_1002E4DA0);
  sub_1001A16AC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of UIHostingController.sizingOptions.setter();
  [v0 addChildViewController:v7];
  v8 = [v0 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_14;
  }

  v9 = v8;
  v10 = [v7 view];
  if (!v10)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = v10;
  [v9 addSubview:v10];

  v12 = [v7 view];
  if (!v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = v12;
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

  [v7 didMoveToParentViewController:v1];
  sub_100005AD4(&unk_1003AFCC0, &unk_1002D54E0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1002D53E0;
  v15 = [v7 view];
  if (!v15)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v16 = v15;
  v17 = [v15 leadingAnchor];

  v18 = [v1 view];
  if (!v18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19 = v18;
  v20 = [v18 leadingAnchor];

  v21 = [v17 constraintEqualToAnchor:v20];
  *(v14 + 32) = v21;
  v22 = [v7 view];
  if (!v22)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v23 = v22;
  v24 = [v22 trailingAnchor];

  v25 = [v1 view];
  if (!v25)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v26 = v25;
  v27 = [v25 trailingAnchor];

  v28 = [v24 constraintEqualToAnchor:v27];
  *(v14 + 40) = v28;
  v29 = [v7 view];
  if (!v29)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v30 = v29;
  v31 = [v29 topAnchor];

  v32 = [v1 view];
  if (!v32)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v33 = v32;
  v34 = [v32 topAnchor];

  v35 = [v31 constraintEqualToAnchor:v34];
  *(v14 + 48) = v35;
  v36 = [v7 view];
  if (!v36)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v37 = v36;
  v38 = [v36 bottomAnchor];

  v39 = [v1 view];
  if (v39)
  {
    v40 = v39;
    v41 = objc_opt_self();
    v42 = [v40 bottomAnchor];

    v43 = [v38 constraintEqualToAnchor:v42];
    *(v14 + 56) = v43;
    sub_100033604();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v41 activateConstraints:isa];

    return;
  }

LABEL_23:
  __break(1u);
}

void sub_1001A1470(void *a1)
{
  v1 = a1;
  sub_1001A0EF8();
}

void sub_1001A14C0(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;

  sub_1001A1624();
}

id sub_1001A1530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for PersonalTranslationActivitesHostingController(0, *((swift_isaMask & *v4) + 0x50), *((swift_isaMask & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

unint64_t sub_1001A1654()
{
  result = qword_1003B5AB0;
  if (!qword_1003B5AB0)
  {
    type metadata accessor for UIHostingControllerSizingOptions();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B5AB0);
  }

  return result;
}

unint64_t sub_1001A16AC()
{
  result = qword_1003B5AC0;
  if (!qword_1003B5AC0)
  {
    sub_100005EA8(&unk_1003BA360, &unk_1002E4DA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B5AC0);
  }

  return result;
}

uint64_t sub_1001A171C(uint64_t a1)
{
  v2 = sub_1001A4230();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001A1758(uint64_t a1)
{
  v2 = sub_1001A4230();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001A186C@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_1001A189C(uint64_t a1)
{
  v2 = sub_1001A4284();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001A18D8(uint64_t a1)
{
  v2 = sub_1001A4284();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001A1958(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t a7)
{
  v9 = sub_100005AD4(a4, a5);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v14 - v11;
  sub_1000085CC(a1, a1[3]);
  a6();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v10 + 8))(v12, v9);
}

id sub_1001A1A78()
{
  result = [objc_allocWithZone(type metadata accessor for PersonalTranslationActivityManager()) init];
  qword_1003D2990 = result;
  return result;
}

void sub_1001A1B0C(uint64_t a1)
{
  v2 = v1;
  v52 = type metadata accessor for ActivityPresentationOptions();
  v4 = *(v52 - 8);
  __chkstk_darwin(v52);
  v56 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100005AD4(&qword_1003B5130, &unk_1002E4220);
  __chkstk_darwin(v6 - 8);
  v8 = &v49 - v7;
  v9 = sub_100005AD4(&qword_1003B5880, &qword_1002E4FA8);
  v53 = *(v9 - 8);
  v54 = v9;
  __chkstk_darwin(v9);
  v11 = &v49 - v10;
  sub_1001A2440(0);
  v12 = OBJC_IVAR____TtC17SequoiaTranslator34PersonalTranslationActivityManager_currentViewModel;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator34PersonalTranslationActivityManager_currentViewModel] = a1;

  if (qword_1003A92B0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v55 = sub_1000078E8(v13, qword_1003D2920);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Requesting begin activity", v16, 2u);
  }

  v17 = type metadata accessor for Date();
  (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
  sub_1001A40D4();
  sub_1001A412C();
  sub_1001A4184();
  v57 = v11;
  ActivityContent.init(state:staleDate:relevanceScore:)();
  v18 = sub_1001B2964();
  sub_100005AD4(&qword_1003B5888, &qword_1002EAD90);
  v19 = type metadata accessor for ActivityPresentationOptions.ActivityPresentationDestination();
  v20 = *(v19 - 8);
  v21 = *(v20 + 72);
  v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v23 = (v20 + 104);
  if (v18)
  {
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1002D1370;
    v25 = v24 + v22;
    v26 = *v23;
    (*v23)(v25, enum case for ActivityPresentationOptions.ActivityPresentationDestination.systemAperture(_:), v19);
    v27 = enum case for ActivityPresentationOptions.ActivityPresentationDestination.banner(_:);
    v28 = v25 + v21;
  }

  else
  {
    v51 = v4;
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1002E4DB0;
    v30 = v29 + v22;
    v26 = *v23;
    (*v23)(v30, enum case for ActivityPresentationOptions.ActivityPresentationDestination.systemAperture(_:), v19);
    v26(v30 + v21, enum case for ActivityPresentationOptions.ActivityPresentationDestination.lockscreen(_:), v19);
    v27 = enum case for ActivityPresentationOptions.ActivityPresentationDestination.banner(_:);
    v28 = v30 + 2 * v21;
    v4 = v51;
  }

  v26(v28, v27, v19);
  v31 = v56;
  ActivityPresentationOptions.init(destinations:)();
  ActivityPresentationOptions.isActionButtonInitiated.setter();
  ActivityPresentationOptions.shouldSuppressAlertContentOnLockScreen.setter();
  sub_100005AD4(&qword_1003B5890, &qword_1002E4FB0);
  v32 = static Activity.request(attributes:content:presentationOptions:platterTarget:contentSourceRequests:isEphemeral:isUnbounded:isMomentary:)();
  v33 = OBJC_IVAR____TtC17SequoiaTranslator34PersonalTranslationActivityManager_currentActivity;
  *&v2[OBJC_IVAR____TtC17SequoiaTranslator34PersonalTranslationActivityManager_currentActivity] = v32;

  v34 = v2;
  v35 = v2;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  v38 = os_log_type_enabled(v36, v37);
  v50 = v35;
  v51 = v33;
  if (v38)
  {
    v49 = v12;
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v58[0] = v40;
    *v39 = 136446210;
    if (!*&v35[v33])
    {

      __break(1u);
      goto LABEL_17;
    }

    v41 = v40;

    v42 = Activity.id.getter();
    v44 = v43;

    v45 = sub_10028D78C(v42, v44, v58);

    *(v39 + 4) = v45;
    _os_log_impl(&_mh_execute_header, v36, v37, "Requested an activity successfully [id: %{public}s]", v39, 0xCu);
    sub_100008664(v41);

    (*(v4 + 8))(v56, v52);
    (*(v53 + 8))(v57, v54);
  }

  else
  {

    (*(v4 + 8))(v31, v52);
    (*(v53 + 8))(v57, v54);
  }

  if (SBUIIsSystemApertureEnabled())
  {
    return;
  }

  if (!*&v50[v51])
  {
LABEL_17:
    __break(1u);
    return;
  }

  v46 = Activity.id.getter();
  v48 = v47;

  sub_1001A2C04(v46, v48);
}

double sub_1001A2440(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ActivityUIDismissalPolicy();
  v61 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005AD4(&qword_1003B5870, &qword_1002E4FA0);
  __chkstk_darwin(v7 - 8);
  v9 = &v57 - v8;
  v10 = type metadata accessor for ActivityState();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v57 - v15;
  if (a1)
  {
    v60 = v4;
    goto LABEL_5;
  }

  if (*(v2 + OBJC_IVAR____TtC17SequoiaTranslator34PersonalTranslationActivityManager_currentActivity))
  {
    v60 = v4;

LABEL_5:

    dispatch thunk of Activity.activityState.getter();
    (*(v11 + 104))(v14, enum case for ActivityState.dismissed(_:), v10);
    sub_1001A4874();
    v17 = dispatch thunk of static Equatable.== infix(_:_:)();
    v18 = *(v11 + 8);
    v18(v14, v10);
    v18(v16, v10);
    if (v17)
    {
      if (qword_1003A92B0 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_1000078E8(v19, qword_1003D2920);

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v20, v21))
      {

        return result;
      }

      v22 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *v22 = 136315394;
      v23 = Activity.id.getter();
      v25 = sub_10028D78C(v23, v24, &v62);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2080;
      dispatch thunk of Activity.activityState.getter();
      v26 = String.init<A>(describing:)();
      v28 = sub_10028D78C(v26, v27, &v62);

      *(v22 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v20, v21, "Skipping end activity [id: %s activityState: %s] ", v22, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      if (qword_1003A92B0 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      sub_1000078E8(v29, qword_1003D2920);

      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v59 = v2;
        v33 = v32;
        v58 = swift_slowAlloc();
        v62 = v58;
        *v33 = 136315394;
        v34 = Activity.id.getter();
        v36 = sub_10028D78C(v34, v35, &v62);

        *(v33 + 4) = v36;
        *(v33 + 12) = 2080;
        dispatch thunk of Activity.activityState.getter();
        v37 = String.init<A>(describing:)();
        v39 = sub_10028D78C(v37, v38, &v62);

        *(v33 + 14) = v39;
        _os_log_impl(&_mh_execute_header, v30, v31, "Requesting end activity [id: %s activityState: %s]", v33, 0x16u);
        swift_arrayDestroy();

        v2 = v59;
      }

      v40 = SBUIIsSystemApertureEnabled();
      v41 = v60;
      if ((v40 & 1) == 0)
      {
        v42 = Activity.id.getter();
        sub_1001A39F4(v42, v43);
      }

      v44 = sub_100005AD4(&qword_1003B5880, &qword_1002E4FA8);
      (*(*(v44 - 8) + 56))(v9, 1, 1, v44);
      static ActivityUIDismissalPolicy.immediate.getter();
      dispatch thunk of Activity.endSync(_:dismissalPolicy:)();
      (v61[1].isa)(v6, v41);
      sub_100009EBC(v9, &qword_1003B5870, &qword_1002E4FA0);
      v45 = OBJC_IVAR____TtC17SequoiaTranslator34PersonalTranslationActivityManager_currentActivity;
      if (*(v2 + OBJC_IVAR____TtC17SequoiaTranslator34PersonalTranslationActivityManager_currentActivity))
      {

        v46 = Activity.id.getter();
        v48 = v47;

        v49 = Activity.id.getter();
        if (v48)
        {
          if (v46 == v49 && v48 == v50)
          {
          }

          else
          {
            v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v56 & 1) == 0)
            {
              return result;
            }
          }

          *(v2 + v45) = 0;

          *(v2 + OBJC_IVAR____TtC17SequoiaTranslator34PersonalTranslationActivityManager_currentViewModel) = 0;
          goto LABEL_33;
        }
      }

      else
      {
        Activity.id.getter();
      }
    }

LABEL_33:

    return result;
  }

  if (qword_1003A92B0 != -1)
  {
    swift_once();
  }

  v52 = type metadata accessor for Logger();
  sub_1000078E8(v52, qword_1003D2920);
  v61 = Logger.logObject.getter();
  v53 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v61, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&_mh_execute_header, v61, v53, "Skipping end activity no activity to end.", v54, 2u);
  }

  v55 = v61;

  return result;
}

void sub_1001A2C04(uint64_t a1, unint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v88 = type metadata accessor for ActivityState();
  v90 = *(v88 - 8);
  v8 = __chkstk_darwin(v88);
  v87 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v86 = &v79 - v10;
  v11 = OBJC_IVAR____TtC17SequoiaTranslator34PersonalTranslationActivityManager_assertion;
  v12 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator34PersonalTranslationActivityManager_assertion);
  if (v12)
  {
    v13 = v12;
    v14 = [v13 sessionIdentifier];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    if (v15 == a1 && v17 == a2)
    {

      if (!*(v5 + v11))
      {
        goto LABEL_20;
      }

      goto LABEL_10;
    }

    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v19)
    {

      if (!*(v5 + v11))
      {
        goto LABEL_20;
      }

LABEL_10:
      if (qword_1003A92B0 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_1000078E8(v20, qword_1003D2920);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "Not taking assertion as it is non-nil", v23, 2u);
      }

      goto LABEL_45;
    }

    if (qword_1003A92B0 != -1)
    {
      swift_once();
    }

    v85 = v3;
    v24 = type metadata accessor for Logger();
    sub_1000078E8(v24, qword_1003D2920);
    v25 = v13;

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();

    v84 = v26;
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      aBlock[0] = v83;
      *v28 = 136446466;
      v29 = [v25 sessionIdentifier];
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      LODWORD(v82) = v27;
      v32 = v31;

      v33 = sub_10028D78C(v30, v32, aBlock);

      *(v28 + 4) = v33;
      *(v28 + 12) = 2082;
      *(v28 + 14) = sub_10028D78C(a1, a2, aBlock);
      v34 = v84;
      _os_log_impl(&_mh_execute_header, v84, v82, "Releasing assertion for other activity [id: %{public}s] in favour of new assertion for activity [id: %{public}s]", v28, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v35 = [v25 sessionIdentifier];
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    sub_1001A39F4(v36, v38);

    v4 = v85;
    if (*(v5 + v11))
    {
      goto LABEL_10;
    }
  }

LABEL_20:
  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v40 = swift_allocObject();
  v40[2] = v39;
  v40[3] = a1;
  v40[4] = a2;
  v41 = objc_allocWithZone(SNAProminentPresentationAssertion);

  v42 = String._bridgeToObjectiveC()();
  v43 = String._bridgeToObjectiveC()();
  aBlock[4] = sub_1001A4350;
  aBlock[5] = v40;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10024704C;
  aBlock[3] = &unk_100387F30;
  v44 = _Block_copy(aBlock);

  v45 = [v41 initWithExplanation:v42 sessionIdentifier:v43 invalidationHandler:v44];
  _Block_release(v44);

  if ([v45 state] == 1)
  {
    v46 = *(v5 + v11);
    *(v5 + v11) = v45;
    v47 = v45;

    if (qword_1003A92B0 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_1000078E8(v48, qword_1003D2920);

    v21 = v47;
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      aBlock[0] = v52;
      *v51 = 136446466;
      *(v51 + 4) = sub_10028D78C(a1, a2, aBlock);
      *(v51 + 12) = 2050;
      *(v51 + 14) = [v21 state];

      _os_log_impl(&_mh_execute_header, v49, v50, "Assertion acquired [id: %{public}s, assertion state %{public}lu]", v51, 0x16u);
      sub_100008664(v52);
    }

    else
    {
    }

LABEL_45:

    return;
  }

  v53 = *(v5 + OBJC_IVAR____TtC17SequoiaTranslator34PersonalTranslationActivityManager_currentActivity);
  if (!v53)
  {
LABEL_39:
    if (qword_1003A92B0 != -1)
    {
      swift_once();
    }

    v73 = type metadata accessor for Logger();
    sub_1000078E8(v73, qword_1003D2920);

    v21 = v45;
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      aBlock[0] = v77;
      *v76 = 136446466;
      *(v76 + 4) = sub_10028D78C(a1, a2, aBlock);
      *(v76 + 12) = 2050;
      *(v76 + 14) = [v21 state];

      _os_log_impl(&_mh_execute_header, v74, v75, "Acquire assertion FAIL [id:%{public}s, assertion state %{public}lu]", v76, 0x16u);
      sub_100008664(v77);
    }

    else
    {
    }

    sub_1001A4374();
    swift_allocError();
    *v78 = 0;
    v78[1] = 0;
    v78[2] = 1;
    swift_willThrow();
    goto LABEL_45;
  }

  v82 = OBJC_IVAR____TtC17SequoiaTranslator34PersonalTranslationActivityManager_currentActivity;
  v83 = v5;
  v85 = v4;

  v54 = Activity.id.getter();
  v81 = a1;
  if (v54 == a1 && v55 == a2)
  {
  }

  else
  {
    v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v56 & 1) == 0)
    {
LABEL_38:

      a1 = v81;
      goto LABEL_39;
    }
  }

  v57 = v86;
  dispatch thunk of Activity.activityState.getter();
  v84 = v53;
  v58 = v90;
  v59 = v87;
  v60 = v88;
  v80 = *(v90 + 104);
  v80(v87, enum case for ActivityState.dismissed(_:), v88);
  v61 = static ActivityState.== infix(_:_:)();
  v62 = *(v58 + 8);
  v62(v59, v60);
  v90 = v58 + 8;
  v62(v57, v60);
  if ((v61 & 1) == 0)
  {
    v63 = v86;
    dispatch thunk of Activity.activityState.getter();
    v64 = v87;
    v65 = v88;
    v80(v87, enum case for ActivityState.ended(_:), v88);
    v66 = static ActivityState.== infix(_:_:)();
    v62(v64, v65);
    v62(v63, v65);
    if ((v66 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  if (qword_1003A92B0 != -1)
  {
    swift_once();
  }

  v67 = type metadata accessor for Logger();
  sub_1000078E8(v67, qword_1003D2920);
  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.default.getter();
  v70 = os_log_type_enabled(v68, v69);
  v71 = v83;
  if (v70)
  {
    v72 = swift_slowAlloc();
    *v72 = 0;
    _os_log_impl(&_mh_execute_header, v68, v69, "Assertion acquisition failed due to activity having already ended", v72, 2u);
  }

  *(v71 + v82) = 0;
}

double sub_1001A36B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100005AD4(&qword_1003AA3B8, &unk_1002D3EF0);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  type metadata accessor for MainActor();

  v15 = a1;
  swift_errorRetain();
  v16 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = &protocol witness table for MainActor;
  v17[4] = v13;
  v17[5] = a4;
  v17[6] = a5;
  v17[7] = v15;
  v17[8] = a2;

  sub_10005E36C(0, 0, v11, &unk_1002E4F90, v17);

  return result;
}

uint64_t sub_1001A3870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  type metadata accessor for MainActor();
  v8[10] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001A3910, v10, v9);
}

uint64_t sub_1001A3910()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1001A44FC(*(v0 + 48), *(v0 + 56), [*(v0 + 64) state], objc_msgSend(*(v0 + 64), "invalidationReason"), 0, *(v0 + 72));
  }

  v3 = *(v0 + 8);

  return v3();
}

void sub_1001A39F4(uint64_t a1, unint64_t a2)
{
  v5 = OBJC_IVAR____TtC17SequoiaTranslator34PersonalTranslationActivityManager_assertion;
  v6 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator34PersonalTranslationActivityManager_assertion);
  if (v6)
  {
    oslog = v6;
    [oslog invalidate];
    v7 = *(v2 + v5);
    *(v2 + v5) = 0;

    if (qword_1003A92B0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000078E8(v8, qword_1003D2920);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      *v11 = 136446210;
      *(v11 + 4) = sub_10028D78C(a1, a2, &v18);
      _os_log_impl(&_mh_execute_header, v9, v10, "Assertion Released [id: %{public}s]", v11, 0xCu);
      sub_100008664(v12);

LABEL_10:
      return;
    }
  }

  else
  {
    if (qword_1003A92B0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000078E8(v13, qword_1003D2920);

    oslog = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136446210;
      *(v15 + 4) = sub_10028D78C(a1, a2, &v18);
      _os_log_impl(&_mh_execute_header, oslog, v14, "Not releasing assertion for session [id: %{public}s] since assertion is nil", v15, 0xCu);
      sub_100008664(v16);

      goto LABEL_10;
    }
  }
}

unint64_t sub_1001A3CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 1)
  {
    return 0xD00000000000001BLL;
  }

  if (a2 > 3)
  {
    if (a2 <= 5)
    {
      if (a2 != 4)
      {
        v5 = "the assertion timed out";
        v6 = 0xD000000000000018;
        goto LABEL_29;
      }

      v7 = "the server disconnected from XPC";
    }

    else
    {
      if (a2 == 6)
      {
        v5 = "quest was denied";
        v6 = 0xD000000000000017;
        goto LABEL_29;
      }

      if (a2 != 7)
      {
        if (a2 == 8)
        {
          v5 = "the assertion was not acquired";
          v6 = 0xD00000000000001ALL;
          goto LABEL_29;
        }

LABEL_28:
        v5 = "Unknown assertion state";
        v6 = 0xD000000000000014;
        goto LABEL_29;
      }

      v7 = "the assertion request was denied";
    }

LABEL_27:
    v5 = (v7 - 32);
    v6 = 0xD000000000000020;
    goto LABEL_29;
  }

  if (a2 <= 1)
  {
    if (!a2)
    {
      if (a1)
      {
        v6 = 0xD000000000000037;
      }

      else
      {
        v6 = 0xD00000000000001ELL;
      }

      if (a1)
      {
        v5 = "validated because ";
      }

      else
      {
        v5 = "ion was not invalidated";
      }

      goto LABEL_29;
    }

    if (a2 != 1)
    {
      goto LABEL_28;
    }

    v7 = "a session was begun successfully";
    goto LABEL_27;
  }

  if (a2 == 2)
  {
    v5 = "ted an invalidation";
    v6 = 0xD00000000000001CLL;
  }

  else
  {
    v5 = "nnected from XPC";
    v6 = 0xD000000000000023;
  }

LABEL_29:
  v8 = 0xE000000000000000;
  _StringGuts.grow(_:)(47);

  v9._object = (v5 | 0x8000000000000000);
  v9._countAndFlagsBits = v6;
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0x3A726F727245202ELL;
  v10._object = 0xE900000000000020;
  String.append(_:)(v10);
  if (a3)
  {
    swift_getErrorValue();
    v11 = Error.localizedDescription.getter();
    v8 = v12;
  }

  else
  {
    v11 = 0;
  }

  v13 = v8;
  String.append(_:)(*&v11);

  return 0xD000000000000022;
}

id sub_1001A3F08()
{
  sub_1001A2440(0);
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PersonalTranslationActivityManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1001A4024()
{
  result = qword_1003B5818;
  if (!qword_1003B5818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B5818);
  }

  return result;
}

unint64_t sub_1001A407C()
{
  result = qword_1003B5820;
  if (!qword_1003B5820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B5820);
  }

  return result;
}

unint64_t sub_1001A40D4()
{
  result = qword_1003B5828;
  if (!qword_1003B5828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B5828);
  }

  return result;
}

unint64_t sub_1001A412C()
{
  result = qword_1003B5830;
  if (!qword_1003B5830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B5830);
  }

  return result;
}

unint64_t sub_1001A4184()
{
  result = qword_1003B5838;
  if (!qword_1003B5838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B5838);
  }

  return result;
}

unint64_t sub_1001A41DC()
{
  result = qword_1003B5840;
  if (!qword_1003B5840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B5840);
  }

  return result;
}

unint64_t sub_1001A4230()
{
  result = qword_1003B5850;
  if (!qword_1003B5850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B5850);
  }

  return result;
}

unint64_t sub_1001A4284()
{
  result = qword_1003B5860;
  if (!qword_1003B5860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B5860);
  }

  return result;
}

uint64_t sub_1001A42D8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1001A4310()
{

  return _swift_deallocObject(v0, 40);
}

double sub_1001A435C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_1001A4374()
{
  result = qword_1003B5868;
  if (!qword_1003B5868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B5868);
  }

  return result;
}

uint64_t sub_1001A43C8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_1001A4420(uint64_t a1)
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
  v11[1] = sub_10001B16C;

  return sub_1001A3870(a1, v4, v5, v6, v7, v8, v9, v10);
}

void sub_1001A44FC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (qword_1003A92B0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000078E8(v12, qword_1003D2920);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = a1;
    v18 = a6;
    v19 = a5;
    v20 = a4;
    v21 = v16;
    v30 = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_10028D78C(v17, a2, &v30);
    _os_log_impl(&_mh_execute_header, v13, v14, "Assertion invalidated [id: %{public}s]", v15, 0xCu);
    sub_100008664(v21);
    a4 = v20;
    a5 = v19;
    a6 = v18;
  }

  if (a3 == 2)
  {
    v22 = 0;
  }

  else
  {
    if (a3 == 1)
    {
      return;
    }

    if (a3)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

    v22 = 7;
  }

  if (a5)
  {
    v23 = v22;
  }

  else
  {
    v23 = a4;
  }

  sub_1001A4374();
  swift_allocError();
  *v24 = a3;
  v24[1] = v23;
  v24[2] = a6;
  swift_willThrow();
  swift_errorRetain();
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    swift_errorRetain();
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v26 + 4) = v28;
    *v27 = v28;
    _os_log_impl(&_mh_execute_header, oslog, v25, "Assertion invalidation reason: %@", v26, 0xCu);
    sub_100009EBC(v27, &unk_1003AECA0, &unk_1002D3F10);
  }

  else
  {
  }
}

unint64_t sub_1001A4874()
{
  result = qword_1003B5878;
  if (!qword_1003B5878)
  {
    type metadata accessor for ActivityState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B5878);
  }

  return result;
}

uint64_t sub_1001A48CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001A48F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 24))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001A494C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

void *sub_1001A49AC(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[2] = a2;
  }

  return result;
}

unint64_t sub_1001A4A20()
{
  result = qword_1003B5898;
  if (!qword_1003B5898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B5898);
  }

  return result;
}

unint64_t sub_1001A4A78()
{
  result = qword_1003B58A0;
  if (!qword_1003B58A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B58A0);
  }

  return result;
}

unint64_t sub_1001A4AD0()
{
  result = qword_1003B58A8;
  if (!qword_1003B58A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B58A8);
  }

  return result;
}

unint64_t sub_1001A4B28()
{
  result = qword_1003B58B0;
  if (!qword_1003B58B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B58B0);
  }

  return result;
}

void sub_1001A4C00()
{
  v1 = sub_1001A5054();
  if (!v1)
  {
    return;
  }

  v2 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator48PersonalTranslationApertureElementViewController_activeLayoutMode);
  if (v2 <= 1)
  {
    if (v2)
    {
      goto LABEL_25;
    }

LABEL_20:
    v13 = v1;
    v10 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator48PersonalTranslationApertureElementViewController_leadingView);
    if (v10)
    {
      [v10 setHidden:0];
    }

    v11 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator48PersonalTranslationApertureElementViewController_trailingView);
    if (v11)
    {
      [v11 setHidden:1];
    }

    v1 = v13;
    goto LABEL_25;
  }

  if ((v2 - 2) < 2)
  {
    goto LABEL_20;
  }

  if (v2 == 4)
  {
    v12 = v1;
    v3 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator48PersonalTranslationApertureElementViewController_leadingView);
    if (v3)
    {
      [v3 setHidden:1];
    }

    v4 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator48PersonalTranslationApertureElementViewController_trailingView);
    if (v4)
    {
      [v4 setHidden:1];
    }

    [*(v0 + OBJC_IVAR____TtC17SequoiaTranslator48PersonalTranslationApertureElementViewController_sizingView) frame];
    v6 = v5;
    v7 = v12;
    dispatch thunk of UIHostingController.rootView.getter();

    if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v14 > -9.22337204e18)
    {
      if (v14 < 9.22337204e18)
      {
        if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v6 > -9.22337204e18)
          {
            if (v6 < 9.22337204e18)
            {
              if (*&v14 != *&v6)
              {
                v8 = dispatch thunk of UIHostingController.rootView.modify();
                *v9 = v6;
                v8(&v14, 0);
              }

              return;
            }

LABEL_33:
            __break(1u);
            return;
          }

LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    __break(1u);
    goto LABEL_30;
  }

LABEL_25:
}

uint64_t sub_1001A4F9C()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator48PersonalTranslationApertureElementViewController____lazy_storage___viewModel;
  v2 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator48PersonalTranslationApertureElementViewController____lazy_storage___viewModel);
  v3 = v2;
  if (v2 == 1)
  {
    if (qword_1003A92D8 == -1)
    {
      v4 = 1;
    }

    else
    {
      swift_once();
      v4 = *(v0 + v1);
    }

    v3 = *(qword_1003D2990 + OBJC_IVAR____TtC17SequoiaTranslator34PersonalTranslationActivityManager_currentViewModel);
    *(v0 + v1) = v3;
    swift_retain_n();
    sub_1001A6880(v4);
  }

  sub_1001A6890(v2);
  return v3;
}

void *sub_1001A5054()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC17SequoiaTranslator48PersonalTranslationApertureElementViewController____lazy_storage___hostingController;
  v3 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator48PersonalTranslationApertureElementViewController____lazy_storage___hostingController);
  v4 = v3;
  if (v3 == 1)
  {
    if (sub_1001A4F9C())
    {
      v5 = objc_allocWithZone(sub_100005AD4(&unk_1003B5AA0, &qword_1002E5268));
      v4 = SecureHostingController.init(rootView:)();
    }

    else
    {
      v4 = 0;
    }

    v6 = *(v1 + v2);
    *(v1 + v2) = v4;
    v7 = v4;
    sub_1000FD6C0(v6);
  }

  sub_1000FDB0C(v3);
  return v4;
}

char *sub_1001A5104(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC17SequoiaTranslator48PersonalTranslationApertureElementViewController_currentActivity] = 0;
  *&v3[OBJC_IVAR____TtC17SequoiaTranslator48PersonalTranslationApertureElementViewController_activeLayoutMode] = 0;
  *&v3[OBJC_IVAR____TtC17SequoiaTranslator48PersonalTranslationApertureElementViewController_contentRole] = 2;
  *&v3[OBJC_IVAR____TtC17SequoiaTranslator48PersonalTranslationApertureElementViewController_preferredLayoutMode] = 3;
  *&v3[OBJC_IVAR____TtC17SequoiaTranslator48PersonalTranslationApertureElementViewController_presentationBehaviors] = 8;
  *&v3[OBJC_IVAR____TtC17SequoiaTranslator48PersonalTranslationApertureElementViewController_maximumLayoutMode] = 4;
  v6 = &v3[OBJC_IVAR____TtC17SequoiaTranslator48PersonalTranslationApertureElementViewController_associatedScenePersistenceIdentifier];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = OBJC_IVAR____TtC17SequoiaTranslator48PersonalTranslationApertureElementViewController_leadingView;
  *&v3[v7] = [objc_allocWithZone(type metadata accessor for PersonalTranslationActivityPlaceholderView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v8 = OBJC_IVAR____TtC17SequoiaTranslator48PersonalTranslationApertureElementViewController_trailingView;
  type metadata accessor for EmptyActivityPlaceholderView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v3[v8] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v10 = OBJC_IVAR____TtC17SequoiaTranslator48PersonalTranslationApertureElementViewController_minimalView;
  *&v3[v10] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v3[OBJC_IVAR____TtC17SequoiaTranslator48PersonalTranslationApertureElementViewController____lazy_storage___viewModel] = 1;
  *&v3[OBJC_IVAR____TtC17SequoiaTranslator48PersonalTranslationApertureElementViewController____lazy_storage___hostingController] = 1;
  v11 = OBJC_IVAR____TtC17SequoiaTranslator48PersonalTranslationApertureElementViewController_sizingView;
  v12 = [objc_allocWithZone(UIView) init];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = [objc_opt_self() clearColor];
  [v12 setBackgroundColor:v13];

  *&v3[v11] = v12;
  if (a2)
  {
    v14 = String._bridgeToObjectiveC()();
  }

  else
  {
    v14 = 0;
  }

  v20.receiver = v3;
  v20.super_class = type metadata accessor for PersonalTranslationApertureElementViewController();
  v15 = objc_msgSendSuper2(&v20, "initWithNibName:bundle:", v14, a3);

  v16 = qword_1003A92D8;
  v17 = v15;
  if (v16 != -1)
  {
    swift_once();
  }

  v18 = qword_1003D2990;

  *&v17[OBJC_IVAR____TtC17SequoiaTranslator48PersonalTranslationApertureElementViewController_currentActivity] = *(v18 + OBJC_IVAR____TtC17SequoiaTranslator34PersonalTranslationActivityManager_currentActivity);

  return v17;
}

void sub_1001A5408()
{
  v1 = v0;
  v2 = type metadata accessor for UIHostingControllerSizingOptions();
  __chkstk_darwin(v2);
  v90.receiver = v0;
  v90.super_class = type metadata accessor for PersonalTranslationApertureElementViewController();
  objc_msgSendSuper2(&v90, "viewDidLoad");
  v3 = sub_1001A5054();
  if (!v3)
  {
    if (qword_1003A92B0 != -1)
    {
      swift_once();
    }

    v85 = type metadata accessor for Logger();
    sub_1000078E8(v85, qword_1003D2920);
    v84.super.isa = Logger.logObject.getter();
    v86 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v84.super.isa, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&_mh_execute_header, v84.super.isa, v86, "Please file a radar Jindo did not show.", v87, 2u);
    }

    goto LABEL_29;
  }

  v4 = v3;
  v5 = [v1 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = v5;
  v88 = v4;
  v7 = *&v1[OBJC_IVAR____TtC17SequoiaTranslator48PersonalTranslationApertureElementViewController_sizingView];
  [v5 addSubview:v7];

  sub_100005AD4(&unk_1003AFCC0, &unk_1002D54E0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1002D53E0;
  v9 = [v7 leadingAnchor];
  v10 = [v1 view];
  if (!v10)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v11 = v10;
  v12 = [v10 leadingAnchor];

  v13 = [v9 constraintEqualToAnchor:v12];
  *(v8 + 32) = v13;
  v14 = [v7 trailingAnchor];
  v15 = [v1 view];
  if (!v15)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v16 = v15;
  v17 = [v15 trailingAnchor];

  v18 = [v14 constraintEqualToAnchor:v17];
  *(v8 + 40) = v18;
  v19 = [v7 topAnchor];
  v20 = [v1 view];
  if (!v20)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v21 = v20;
  v22 = [v20 SBUISA_systemApertureObstructedAreaLayoutGuide];

  v23 = [v22 bottomAnchor];
  v24 = [v19 constraintEqualToAnchor:v23];

  *(v8 + 48) = v24;
  v25 = [v7 bottomAnchor];
  v26 = [v1 view];
  if (!v26)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v27 = v26;
  v28 = objc_opt_self();
  v29 = [v27 bottomAnchor];

  v30 = [v25 constraintEqualToAnchor:v29];
  *(v8 + 56) = v30;
  sub_10000A2CC(0, &qword_1003B3480, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v89 = v28;
  [v28 activateConstraints:isa];

  sub_100005AD4(&unk_1003BA350, qword_1002EB440);
  *(swift_allocObject() + 16) = xmmword_1002D1370;
  v32 = v88;
  static UIHostingControllerSizingOptions.preferredContentSize.getter();
  static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
  sub_1001A6C24(&qword_1003B5AB0, &type metadata accessor for UIHostingControllerSizingOptions, &protocol conformance descriptor for UIHostingControllerSizingOptions);
  sub_100005AD4(&unk_1003BA360, &unk_1002E4DA0);
  sub_1001A16AC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of UIHostingController.sizingOptions.setter();

  v33 = v32;
  [v1 addChildViewController:v33];
  v34 = [v1 view];
  if (!v34)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v35 = v34;
  v36 = [v33 view];
  if (!v36)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v37 = v36;
  [v35 addSubview:v36];

  v38 = [v33 view];
  if (!v38)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  [v38 setTranslatesAutoresizingMaskIntoConstraints:0];

  [v33 didMoveToParentViewController:v1];
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1002D53E0;
  v40 = [v33 view];

  if (!v40)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v41 = [v40 leadingAnchor];

  v42 = [v1 view];
  if (!v42)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v43 = v42;
  v44 = [v42 leadingAnchor];

  v45 = [v41 constraintEqualToAnchor:v44];
  *(v39 + 32) = v45;
  v46 = [v33 view];

  if (!v46)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v47 = [v46 trailingAnchor];

  v48 = [v1 view];
  if (!v48)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v49 = v48;
  v50 = [v48 trailingAnchor];

  v51 = [v47 constraintEqualToAnchor:v50];
  *(v39 + 40) = v51;
  v52 = [v33 view];

  if (!v52)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v53 = [v52 topAnchor];

  v54 = [v1 view];
  if (!v54)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v55 = v54;
  v56 = [v54 topAnchor];

  v57 = [v53 constraintEqualToAnchor:v56];
  *(v39 + 48) = v57;
  v58 = [v33 view];

  if (!v58)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v59 = [v58 bottomAnchor];

  v60 = [v1 view];
  if (!v60)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v61 = v60;
  v62 = [v60 bottomAnchor];

  v63 = [v59 constraintEqualToAnchor:v62];
  *(v39 + 56) = v63;
  v64 = Array._bridgeToObjectiveC()().super.isa;

  [v89 activateConstraints:v64];

  v65 = [v1 view];
  if (!v65)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v66 = *&v1[OBJC_IVAR____TtC17SequoiaTranslator48PersonalTranslationApertureElementViewController_leadingView];
  if (!v66)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v67 = v65;
  [v65 addSubview:*&v1[OBJC_IVAR____TtC17SequoiaTranslator48PersonalTranslationApertureElementViewController_leadingView]];

  v68 = [v1 view];
  if (!v68)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v69 = *&v1[OBJC_IVAR____TtC17SequoiaTranslator48PersonalTranslationApertureElementViewController_trailingView];
  if (!v69)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v70 = v68;
  [v68 addSubview:*&v1[OBJC_IVAR____TtC17SequoiaTranslator48PersonalTranslationApertureElementViewController_trailingView]];

  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_1002D5560;
  v72 = [v66 leadingAnchor];
  v73 = [v1 view];
  if (!v73)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v74 = v73;
  v75 = [v73 SBUISA_systemApertureLeadingConcentricContentLayoutGuide];

  v76 = [v75 leadingAnchor];
  v77 = [v72 constraintEqualToAnchor:v76];

  *(v71 + 32) = v77;
  v78 = [v69 trailingAnchor];
  v79 = [v1 view];
  if (v79)
  {
    v80 = v79;
    v81 = [v79 SBUISA_systemApertureTrailingConcentricContentLayoutGuide];

    v82 = [v81 trailingAnchor];
    v83 = [v78 constraintEqualToAnchor:v82];

    *(v71 + 40) = v83;
    v84.super.isa = Array._bridgeToObjectiveC()().super.isa;

    [v89 activateConstraints:v84.super.isa];

LABEL_29:
    return;
  }

LABEL_51:
  __break(1u);
}