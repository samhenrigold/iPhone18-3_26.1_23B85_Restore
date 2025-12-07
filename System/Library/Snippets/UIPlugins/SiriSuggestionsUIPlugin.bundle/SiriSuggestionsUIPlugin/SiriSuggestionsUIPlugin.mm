uint64_t sub_16A0()
{
  v0 = sub_14568();
  sub_1820(v0, static Logger.uiCategory);
  sub_1750(v0, static Logger.uiCategory);
  sub_14538();
  return sub_14558();
}

uint64_t Logger.uiCategory.unsafeMutableAddressor()
{
  if (qword_20180 != -1)
  {
    sub_1884(&qword_20180);
  }

  v0 = sub_14568();

  return sub_1750(v0, static Logger.uiCategory);
}

uint64_t sub_1750(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t static Logger.uiCategory.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_20180 != -1)
  {
    sub_1884(&qword_20180);
  }

  v2 = sub_14568();
  v3 = sub_1750(v2, static Logger.uiCategory);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t *sub_1820(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1884(uint64_t a1)
{

  return swift_once();
}

uint64_t HintComponentView.init(text1:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = sub_201C(a1, v2);
  __chkstk_darwin(v4, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6);
  v8 = sub_1F34(v6, v2, v3);
  sub_206C(a1);
  return v8;
}

uint64_t HintComponentView.body.getter(uint64_t a1)
{
  sub_14C98();
  sub_20B8();

  v2 = sub_14638();
  v4 = v3;
  sub_149B8();
  sub_14618();
  sub_2104(&qword_20190, &qword_15270);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_15260;
  v6 = sub_14758();
  *(v5 + 32) = v6;
  v7 = sub_14748();
  *(v5 + 33) = v7;
  v8 = sub_14778();
  sub_14778();
  if (sub_14778() != v6)
  {
    v8 = sub_14778();
  }

  sub_14778();
  if (sub_14778() != v7)
  {
    v8 = sub_14778();
  }

  sub_14578();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v34 = 0;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_15260;
  v18 = sub_14768();
  *(v17 + 32) = v18;
  v19 = sub_14788();
  *(v17 + 33) = v19;
  v20 = sub_14778();
  sub_14778();
  if (sub_14778() != v18)
  {
    v20 = sub_14778();
  }

  sub_14778();
  if (sub_14778() != v19)
  {
    v20 = sub_14778();
  }

  sub_14578();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v35 = 0;
  KeyPath = swift_getKeyPath();
  v31[0] = a1;
  v31[1] = v2;
  v31[2] = v4;
  memcpy(&v31[3], __src, 0x70uLL);
  LOBYTE(v31[17]) = v8;
  v31[18] = v10;
  v31[19] = v12;
  v31[20] = v14;
  v31[21] = v16;
  LOBYTE(v31[22]) = 0;
  LOBYTE(v31[23]) = v20;
  v31[24] = v22;
  v31[25] = v24;
  v31[26] = v26;
  v31[27] = v28;
  LOBYTE(v31[28]) = 0;
  v31[29] = KeyPath;
  LOBYTE(v31[30]) = 1;
  sub_2104(&qword_20198, &qword_152A8);
  sub_21A0();
  sub_148F8();
  memcpy(__dst, v31, 0xF1uLL);
  return sub_24DC(__dst);
}

uint64_t sub_1CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_14798();
  v4 = sub_147B8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, enum case for Font.Leading.tight(_:), v4);
  v9 = sub_147D8();

  (*(v5 + 8))(v8, v4);
  KeyPath = swift_getKeyPath();
  v11 = sub_2104(&qword_20200, &qword_15448);
  (*(*(v11 - 8) + 16))(a2, a1, v11);
  v12 = (a2 + *(sub_2104(&qword_20208, &qword_15450) + 36));
  *v12 = KeyPath;
  v12[1] = v9;
  v13 = sub_14908();
  result = sub_2104(&qword_20210, &qword_15458);
  *(a2 + *(result + 36)) = v13;
  return result;
}

uint64_t sub_1EDC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_14688();
  *a1 = result;
  return result;
}

uint64_t sub_1F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 - 8);
  __chkstk_darwin(a1, a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 32))(v6);
  v7 = sub_14B18();
  (*(v4 + 8))(v6, a2);
  return v7;
}

uint64_t sub_201C(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_206C(void *a1)
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

unint64_t sub_20B8()
{
  result = qword_20188;
  if (!qword_20188)
  {
    sub_14C98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20188);
  }

  return result;
}

uint64_t sub_2104(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_214C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_14668();
  *a1 = result;
  return result;
}

unint64_t sub_21A0()
{
  result = qword_201A0;
  if (!qword_201A0)
  {
    sub_2240(&qword_20198, &qword_152A8);
    sub_2288();
    sub_2838(&qword_201F0, &qword_201F8, &qword_152D0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_201A0);
  }

  return result;
}

uint64_t sub_2240(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_2288()
{
  result = qword_201A8;
  if (!qword_201A8)
  {
    sub_2240(&qword_201B0, &qword_152B0);
    sub_2308();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_201A8);
  }

  return result;
}

unint64_t sub_2308()
{
  result = qword_201B8;
  if (!qword_201B8)
  {
    sub_2240(&qword_201C0, &qword_152B8);
    sub_2388();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_201B8);
  }

  return result;
}

unint64_t sub_2388()
{
  result = qword_201C8;
  if (!qword_201C8)
  {
    sub_2240(&qword_201D0, &qword_152C0);
    sub_2408();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_201C8);
  }

  return result;
}

unint64_t sub_2408()
{
  result = qword_201D8;
  if (!qword_201D8)
  {
    sub_2240(&qword_201E0, &qword_152C8);
    sub_2488();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_201D8);
  }

  return result;
}

unint64_t sub_2488()
{
  result = qword_201E8;
  if (!qword_201E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_201E8);
  }

  return result;
}

uint64_t sub_24DC(uint64_t a1)
{
  v2 = sub_2104(&qword_20198, &qword_152A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2570()
{
  sub_2240(&qword_20198, &qword_152A8);
  sub_21A0();
  return swift_getOpaqueTypeConformance2();
}

__n128 sub_25C8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_25D4(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2628(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_26A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_14688();
  *a1 = result;
  return result;
}

unint64_t sub_26D8()
{
  result = qword_20218;
  if (!qword_20218)
  {
    sub_2240(&qword_20210, &qword_15458);
    sub_2778();
    sub_2838(&qword_20240, &qword_20248, &qword_15B10, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20218);
  }

  return result;
}

unint64_t sub_2778()
{
  result = qword_20220;
  if (!qword_20220)
  {
    sub_2240(&qword_20208, &qword_15450);
    sub_2838(&qword_20228, &qword_20200, &qword_15448, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_2838(&qword_20230, &qword_20238, qword_15460, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20220);
  }

  return result;
}

uint64_t sub_2838(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2240(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2894(uint64_t a1, uint64_t a2, int *a3)
{
  sub_C284();
  sub_14328();
  sub_C1AC();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
  }

  else
  {
    if (a2 == 2147483646)
    {
      return sub_C1B8(*(v3 + a3[5]));
    }

    sub_14A68();
    sub_C1AC();
    if (*(v12 + 84) == a2)
    {
      v8 = v11;
      v13 = a3[7];
    }

    else
    {
      v8 = sub_14B98();
      v13 = a3[8];
    }

    v9 = v3 + v13;
  }

  return sub_2990(v9, a2, v8);
}

void sub_29CC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_C284();
  sub_14328();
  sub_C1AC();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(v4 + a4[5]) = a2;
      return;
    }

    sub_14A68();
    sub_C1AC();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[7];
    }

    else
    {
      v10 = sub_14B98();
      v14 = a4[8];
    }

    v11 = v4 + v14;
  }

  sub_2AD0(v11, a2, a2, v10);
}

void sub_2B18(uint64_t a1)
{
  sub_14328();
  if (v1 <= 0x3F)
  {
    sub_2BE4(319);
    if (v2 <= 0x3F)
    {
      sub_2C60();
      if (v3 <= 0x3F)
      {
        sub_14A68();
        if (v4 <= 0x3F)
        {
          sub_14B98();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2BE4(uint64_t a1)
{
  if (!qword_202B8)
  {
    sub_14C98();
    sub_BCEC(&qword_20188, &type metadata accessor for Context, &protocol conformance descriptor for Context);
    v1 = sub_14648();
    if (!v2)
    {
      atomic_store(v1, &qword_202B8);
    }
  }
}

void sub_2C60()
{
  if (!qword_202C0)
  {
    v0 = sub_14978();
    if (!v1)
    {
      atomic_store(v0, &qword_202C0);
    }
  }
}

uint64_t sub_2CC4(unint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    return sub_C1B8(*a1);
  }

  sub_14328();
  sub_C1AC();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a3[5];
  }

  else
  {
    sub_14A68();
    sub_C1AC();
    if (*(v12 + 84) == a2)
    {
      v9 = v11;
      v10 = a3[6];
    }

    else
    {
      v9 = sub_14B98();
      v10 = a3[7];
    }
  }

  return sub_2990(a1 + v10, a2, v9);
}

void *sub_2DD4(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    sub_14328();
    sub_C1AC();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[5];
    }

    else
    {
      sub_14A68();
      sub_C1AC();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[6];
      }

      else
      {
        v10 = sub_14B98();
        v11 = a4[7];
      }
    }

    return sub_2AD0(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_2EF8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2F30(uint64_t a1)
{
  sub_2BE4(319);
  if (v1 <= 0x3F)
  {
    sub_14328();
    if (v2 <= 0x3F)
    {
      sub_14A68();
      if (v3 <= 0x3F)
      {
        sub_14B98();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_3000@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_B80C(*a1, a2, &qword_205A0, &qword_15750);
  v4 = sub_2104(&qword_20618, &qword_157B0);
  sub_B80C(a1[1], a2 + v4[12], &qword_205B0, &qword_15758);
  sub_B80C(a1[2], a2 + v4[16], &qword_205C0, &qword_15768);
  sub_B80C(a1[3], a2 + v4[20], &qword_205C8, &qword_15770);
  sub_B80C(a1[4], a2 + v4[24], &qword_205C0, &qword_15768);
  sub_B80C(a1[5], a2 + v4[28], &qword_205D0, &qword_15778);
  return sub_B80C(a1[6], a2 + v4[32], &qword_205D8, &qword_15780);
}

uint64_t sub_3128@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v1 = sub_14048();
  v17 = v1;
  v2 = *(v1 - 8);
  __chkstk_darwin(v1, v3);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_14068();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SiriHelpSnippetView(0);
  v16[1] = sub_14288();
  (*(v2 + 104))(v5, enum case for ImageElement.ImageStyle.default(_:), v1);
  sub_2104(&qword_20640, &qword_157D0);
  v11 = sub_14038();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_15480;
  (*(v12 + 104))(v14 + v13, enum case for _ProtoIdiom.default(_:), v11);
  sub_A934(v14);
  sub_14058();

  (*(v2 + 8))(v5, v17);
  sub_14108();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_33E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = type metadata accessor for SiriHelpSnippetView(0);
  v43 = *(v3 - 8);
  __chkstk_darwin(v3 - 8, v4);
  v44 = v5;
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_141F8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v11 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_141E8();
  if (!v13)
  {
    v12 = sub_141A8();
  }

  v14 = v12;
  v15 = v13;
  v46 = sub_2104(&qword_20628, &qword_157C0);
  v48 = &v36;
  v47 = *(v46 - 8);
  __chkstk_darwin(v46, v16);
  v41 = &v36 - v17;
  v39 = sub_2104(&qword_20630, &qword_157C8);
  v42 = &v36;
  v40 = *(v39 - 8);
  __chkstk_darwin(v39, v18);
  v36 = &v36 - v19;
  v20 = sub_14C18();
  v38 = &v36;
  v37 = *(v20 - 8);
  __chkstk_darwin(v20, v21);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = &type metadata for String;
  v65 = &protocol witness table for String;
  v62 = v14;
  v63 = v15;
  v61 = 0;
  v59 = 0u;
  v60 = 0u;
  v58 = 0;
  v56 = 0u;
  v57 = 0u;
  v55 = 0;
  v54 = 0u;
  v53 = 0u;
  v52 = 0;
  v51 = 0u;
  v50 = 0u;
  sub_14C08();
  (*(v8 + 16))(&v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  sub_B4C4(v45, v6);
  v24 = *(v8 + 80);
  v45 = a1;
  v25 = v6;
  v26 = (v24 + 16) & ~v24;
  v27 = (v9 + *(v43 + 80) + v26) & ~*(v43 + 80);
  v28 = swift_allocObject();
  (*(v8 + 32))(v28 + v26, v11, v7);
  sub_B520(v25, v28 + v27);
  v29 = sub_BCEC(&qword_20638, &type metadata accessor for SimpleItemReverseRichView, &protocol conformance descriptor for SimpleItemReverseRichView);
  v30 = v36;
  sub_148D8();

  (*(v37 + 8))(v23, v20);
  v62 = v20;
  v63 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = v41;
  v33 = v39;
  sub_14878();
  (*(v40 + 8))(v30, v33);
  sub_141B8();
  v62 = v33;
  v63 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v34 = v46;
  sub_14858();

  return (*(v47 + 8))(v32, v34);
}

void sub_39D0(uint64_t *a1, id *a2)
{
  v51 = a2;
  v3 = sub_14508();
  v49 = *(v3 - 8);
  v50 = v3;
  __chkstk_darwin(v3, v4);
  v48 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_14128();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v47 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_141F8();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_20180 != -1)
  {
    swift_once();
  }

  v15 = sub_14568();
  sub_1750(v15, static Logger.uiCategory);
  (*(v11 + 16))(v14, a1, v10);
  v16 = sub_14548();
  v17 = sub_14DA8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v46 = a1;
    v19 = v18;
    v20 = swift_slowAlloc();
    v45 = v6;
    v21 = v20;
    v52 = v20;
    *v19 = 136315138;
    v22 = sub_141B8();
    if (v23)
    {
      v24 = v22;
    }

    else
    {
      v24 = 0;
    }

    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = 0xE000000000000000;
    }

    (*(v11 + 8))(v14, v10);
    v26 = sub_D340(v24, v25, &v52);

    *(v19 + 4) = v26;
    _os_log_impl(&dword_0, v16, v17, "SiriHelp Component was tapped for suggestionID: %s", v19, 0xCu);
    sub_206C(v21);
    v6 = v45;
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  (*(v7 + 104))(v47, enum case for Command.noOp(_:), v6);
  v27 = sub_14AA8();
  v46 = &v45;
  __chkstk_darwin(v27, v28);
  (*(v30 + 104))(&v45 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for InteractionType.buttonTapped(_:));
  v31 = sub_2104(&qword_20570, &qword_15730);
  __chkstk_darwin(v31 - 8, v32);
  v34 = &v45 - v33;
  sub_14A78();
  v35 = sub_14A88();
  sub_2AD0(v34, 0, 1, v35);
  v36 = v48;
  v37 = v49;
  v38 = v50;
  (*(v49 + 104))(v48, enum case for DeliveryVehicle.siriHelp(_:), v50);
  v39._countAndFlagsBits = sub_141B8();
  if (v39._object)
  {
    object = v39._object;
  }

  else
  {
    v39._countAndFlagsBits = 0;
    object = 0xE000000000000000;
  }

  v39._object = object;
  sub_144F8(v39);

  (*(v37 + 8))(v36, v38);
  v41 = objc_allocWithZone(sub_14BE8());
  v42 = sub_14BD8();
  if (*v51)
  {
    v43 = v42;
    v44 = *v51;
    sub_14C88();
  }

  else
  {
    sub_14C98();
    sub_BCEC(&qword_20188, &type metadata accessor for Context, &protocol conformance descriptor for Context);
    sub_14628();
    __break(1u);
  }
}

uint64_t sub_3F90()
{
  v2 = type metadata accessor for SiriHelpSnippetView(0);
  v3 = sub_C154(v2);
  __chkstk_darwin(v3, v4);
  sub_C23C();
  sub_B4C4(v0, v1);
  v5 = swift_allocObject();
  sub_C290(v5);
  sub_2104(&qword_20580, &qword_15738);
  sub_2838(&qword_20588, &qword_20580, &qword_15738, &protocol conformance descriptor for TupleView<A>);
  return sub_14A98();
}

uint64_t sub_40C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v270 = a2;
  v3 = type metadata accessor for SiriHelpSnippetView(0);
  v4 = v3 - 8;
  v276 = *(v3 - 8);
  v280 = *(v276 + 8);
  __chkstk_darwin(v3, v5);
  v281 = (&v242 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_140F8();
  __chkstk_darwin(v7 - 8, v8);
  v273 = &v242 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2104(&qword_20590, &qword_15740);
  v12 = __chkstk_darwin(v10 - 8, v11);
  v278 = &v242 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v14);
  v272 = &v242 - v15;
  v16 = sub_2104(&qword_20598, &qword_15748);
  __chkstk_darwin(v16 - 8, v17);
  v19 = &v242 - v18;
  v20 = sub_14078();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20, v22);
  v24 = (&v242 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = sub_14098();
  __chkstk_darwin(v25 - 8, v26);
  v274 = &v242 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_2104(&qword_205A0, &qword_15750);
  v29 = *(v28 - 8);
  v271 = (v28 - 8);
  v269 = *(v29 + 64);
  __chkstk_darwin(v28 - 8, v30);
  v32 = &v242 - v31;
  v275 = sub_14AE8();
  v277 = *(v275 - 1);
  __chkstk_darwin(v275, v33);
  v35 = &v242 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v279 = *(v4 + 28);
  *v24 = sub_14238();
  v24[1] = v36;
  (*(v21 + 104))(v24, enum case for SashStandard.Title.text(_:), v20);
  sub_3128(v19);
  v37 = sub_140D8();
  sub_2AD0(v19, 0, 1, v37);
  v38 = sub_14118();
  sub_2AD0(v272, 1, 1, v38);
  sub_2AD0(v278, 1, 1, v38);
  v296 = 0;
  v294 = 0u;
  v295 = 0u;
  sub_14288();
  sub_14088();
  sub_14AD8();
  sub_BCEC(&qword_205A8, &type metadata accessor for SashStandardView, &protocol conformance descriptor for SashStandardView);
  v39 = v275;
  sub_14858();
  v40 = a1;
  v277[1](v35, v39);
  v41 = *(v271 + 15);
  v278 = v32;
  v42 = &v32[v41];
  strcpy(v42, "Response_sash");
  *(v42 + 7) = -4864;
  v43 = sub_2104(&qword_205B0, &qword_15758);
  v44 = *(*(v43 - 8) + 64);
  v46 = __chkstk_darwin(v43, v45);
  v267 = v47;
  v48 = (&v242 - v47);
  v49 = v46;
  v50 = sub_142C8();
  *(&v295 + 1) = &type metadata for String;
  v296 = &protocol witness table for String;
  *&v294 = v50;
  *(&v294 + 1) = v51;
  v301 = 0;
  v299 = 0u;
  v300 = 0u;
  sub_140E8();
  sub_14C58();
  v52 = sub_14798();
  KeyPath = swift_getKeyPath();
  v263 = sub_2104(&qword_205B8, &qword_15760);
  v54 = (v48 + *(v263 + 9));
  *v54 = KeyPath;
  v54[1] = v52;
  v271 = v49;
  v55 = *(v49 + 52);
  v277 = v48;
  v56 = v48 + v55;
  strcpy(v56, "Response-tag");
  v56[13] = 0;
  *(v56 + 7) = -5120;
  v57 = sub_2104(&qword_205C0, &qword_15768);
  v275 = *(*(v57 - 8) + 64);
  __chkstk_darwin(v57, v58);
  v60 = &v242 - v59;
  v61 = v281;
  sub_B4C4(v40, v281);
  v62 = (v276[80] + 16) & ~v276[80];
  v272 = v276[80];
  v63 = swift_allocObject() + v62;
  v64 = v61;
  v65 = v57;
  sub_B520(v64, v63);
  v66 = sub_2104(&qword_20408, &qword_155E8);
  v67 = sub_A81C();
  v266 = v66;
  v264 = v67;
  sub_14A98();
  v68 = *(v57 + 52);
  v276 = v60;
  v69 = &v60[v68];
  strcpy(v69, "Response_full");
  *(v69 + 7) = -4864;
  v70 = sub_2104(&qword_205C8, &qword_15770);
  v265 = *(*(v70 - 8) + 64);
  __chkstk_darwin(v70 - 8, v71);
  v73 = &v242 - v72;
  v74 = v40;
  v75 = *(sub_14258() + 16);

  v268 = v44;
  v274 = v73;
  if (v75)
  {
    __chkstk_darwin(v76, v77);
    v78 = v73;
    v79 = (&v242 - v267);
    v80 = sub_14278();
    *(&v295 + 1) = &type metadata for String;
    v296 = &protocol witness table for String;
    *&v294 = v80;
    *(&v294 + 1) = v81;
    v301 = 0;
    v299 = 0u;
    v300 = 0u;
    sub_140E8();
    sub_14C58();
    v82 = sub_14798();
    v83 = swift_getKeyPath();
    v84 = &v79[*(v263 + 9)];
    *v84 = v83;
    v84[1] = v82;
    v85 = v271;
    v86 = &v79[*(v271 + 13)];
    *v86 = 0xD000000000000013;
    *(v86 + 1) = 0x80000000000175D0;
    sub_B768(v79, v78);
    v87 = sub_2AD0(v78, 0, 1, v85);
  }

  else
  {
    v87 = sub_2AD0(v73, 1, 1, v271);
  }

  v267 = &v242;
  v260 = ~v272;
  __chkstk_darwin(v87, v88);
  v90 = &v242 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = v281;
  sub_B4C4(v40, v281);
  v92 = swift_allocObject();
  sub_B520(v91, v92 + v62);
  sub_14A98();
  v93 = *(v65 + 52);
  v264 = v90;
  v94 = &v90[v93];
  strcpy(v94, "Response_full2");
  v94[15] = -18;
  v95 = sub_2104(&qword_205D0, &qword_15778);
  v266 = &v242;
  v96 = *(*(v95 - 8) + 64);
  __chkstk_darwin(v95 - 8, v97);
  v99 = &v242 - v98;
  sub_14228();
  v273 = v99;
  if (v100)
  {

    v271 = sub_2104(&qword_205D8, &qword_15780);
    __chkstk_darwin(v271, v101);
    v103 = &v242 - v102;
    sub_14228();
    if (v104)
    {
      v263 = &v242;
      v105 = sub_2104(&qword_205E0, &qword_15788);
      v262 = &v242;
      v259 = v105;
      __chkstk_darwin(v105, v106);
      v108 = &v242 - v107;
      v258 = sub_13FD8();
      v110 = v109;

      v111 = sub_2104(&qword_205E8, &qword_15790);
      v113 = v111;
      if (v110 >> 60 == 15)
      {
        sub_2AD0(v108, 1, 1, v111);
      }

      else
      {
        v257 = &v242;
        __chkstk_darwin(v111, v112);
        v256 = &v242 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_B484(0, &qword_20578, SAIntentGroupRunSiriKitExecutor_ptr);
        v117 = v258;
        sub_B16C(v258, v110);
        v118 = sub_67F0(v117, v110);
        if (v118)
        {
          v245 = v118;
          v252 = sub_2104(&qword_205F0, &qword_15798);
          v253 = &v242;
          __chkstk_darwin(v252, v119);
          v250 = (&v242 - v120);
          v121 = sub_2104(&qword_205F8, &qword_157A0);
          v251 = &v242;
          v122 = *(v121 - 8);
          v248 = v121;
          v249 = v122;
          __chkstk_darwin(v121, v123);
          v246 = &v242 - v124;
          v125 = sub_2104(&qword_20600, &qword_157A8);
          v247 = &v242;
          v243 = v125;
          __chkstk_darwin(v125, v126);
          v128 = &v242 - v127;
          *&v294 = sub_14318();
          *(&v294 + 1) = v129;
          sub_A8E0();
          v130 = sub_14818();
          v254 = v113;
          v255 = v74;
          v132 = v131;
          v261 = v96;
          v134 = v133;
          v136 = v135;
          *(&v295 + 1) = &type metadata for Text;
          v296 = &protocol witness table for Text;
          v137 = swift_allocObject();
          *&v294 = v137;
          *(v137 + 16) = v130;
          *(v137 + 24) = v132;
          *(v137 + 32) = v134 & 1;
          *(v137 + 40) = v136;
          v301 = 0;
          v299 = 0u;
          v300 = 0u;
          v293 = 0;
          v291 = 0u;
          v292 = 0u;
          v290 = 0;
          v288 = 0u;
          v289 = 0u;
          v287 = 0;
          v285 = 0u;
          v286 = 0u;
          v284 = 0;
          v282 = 0u;
          v283 = 0u;
          sub_14BF8();
          v138 = sub_147E8();
          v139 = swift_getKeyPath();
          v140 = &v128[*(v125 + 36)];
          *v140 = v139;
          v140[1] = v138;
          v141 = v281;
          sub_B4C4(v255, v281);
          v142 = (v272 + 24) & v260;
          v143 = swift_allocObject();
          v144 = v245;
          *(v143 + 16) = v245;
          sub_B520(v141, v143 + v142);
          v145 = sub_BA6C();
          v146 = v144;
          v244 = v110;
          v245 = v146;
          v147 = v246;
          v148 = v243;
          sub_14868();
          v74 = v255;

          sub_B858(v128, &qword_20600, &qword_157A8);
          *&v294 = v148;
          *(&v294 + 1) = v145;
          v96 = v261;
          swift_getOpaqueTypeConformance2();
          v149 = v250;
          v150 = v248;
          sub_14858();
          (*(v249 + 8))(v147, v150);
          sub_AD60(v258, v244);

          v113 = v254;
          v151 = v252;
          v152 = (v149 + *(v252 + 13));
          *v152 = 0xD000000000000018;
          v152[1] = 0x80000000000175F0;
          v153 = v256;
          sub_BB24(v149, v256, &qword_205F0, &qword_15798);
          sub_2AD0(v153, 0, 1, v151);
        }

        else
        {
          sub_AD60(v258, v110);
          v154 = sub_2104(&qword_205F0, &qword_15798);
          v153 = v256;
          sub_2AD0(v256, 1, 1, v154);
        }

        sub_BB24(v153, v108, &qword_205E8, &qword_15790);
        sub_2AD0(v108, 0, 1, v113);
      }

      sub_BB24(v108, v103, &qword_205E0, &qword_15788);
      sub_2AD0(v103, 0, 1, v259);
      v99 = v273;
    }

    else
    {
      v115 = sub_2104(&qword_205E0, &qword_15788);
      sub_2AD0(v103, 1, 1, v115);
    }

    sub_BB24(v103, v99, &qword_205D8, &qword_15780);
    sub_2AD0(v99, 0, 1, v271);
  }

  else
  {
    v114 = sub_2104(&qword_205D8, &qword_15780);
    sub_2AD0(v99, 1, 1, v114);
  }

  v155 = sub_2104(&qword_205D8, &qword_15780);
  v263 = &v242;
  v262 = *(*(v155 - 8) + 64);
  __chkstk_darwin(v155 - 8, v156);
  v158 = &v242 - v157;
  sub_142E8();
  v271 = v158;
  if (v159)
  {
    v261 = v96;

    v259 = sub_2104(&qword_205E0, &qword_15788);
    __chkstk_darwin(v259, v160);
    v162 = &v242 - v161;
    sub_142E8();
    if (v163)
    {
      v258 = &v242;
      v256 = sub_2104(&qword_205E8, &qword_15790);
      v257 = &v242;
      __chkstk_darwin(v256, v164);
      v166 = &v242 - v165;
      v167 = sub_13FD8();
      v169 = v168;

      if (v169 >> 60 == 15)
      {
        v170 = sub_2104(&qword_205F0, &qword_15798);
        sub_2AD0(v166, 1, 1, v170);
        v171 = v268;
        v172 = v275;
      }

      else
      {
        v253 = sub_2104(&qword_205F0, &qword_15798);
        v254 = &v242;
        __chkstk_darwin(v253, v178);
        v251 = &v242 - v179;
        v180 = sub_2104(&qword_205F8, &qword_157A0);
        v252 = &v242;
        v181 = *(v180 - 8);
        v249 = v180;
        v250 = v181;
        __chkstk_darwin(v180, v182);
        v246 = &v242 - v183;
        v184 = sub_2104(&qword_20600, &qword_157A8);
        v255 = v169;
        v247 = &v242;
        v248 = v166;
        v185 = v184;
        v245 = v184;
        __chkstk_darwin(v184, v186);
        v188 = &v242 - v187;
        v189 = v74;
        *&v294 = sub_142B8();
        *(&v294 + 1) = v190;
        sub_A8E0();
        v191 = sub_14818();
        v193 = v192;
        v195 = v194;
        v197 = v196;
        *(&v295 + 1) = &type metadata for Text;
        v296 = &protocol witness table for Text;
        v198 = swift_allocObject();
        *&v294 = v198;
        *(v198 + 16) = v191;
        *(v198 + 24) = v193;
        *(v198 + 32) = v195 & 1;
        *(v198 + 40) = v197;
        v301 = 0;
        v299 = 0u;
        v300 = 0u;
        v293 = 0;
        v291 = 0u;
        v292 = 0u;
        v290 = 0;
        v288 = 0u;
        v289 = 0u;
        v287 = 0;
        v285 = 0u;
        v286 = 0u;
        v284 = 0;
        v282 = 0u;
        v283 = 0u;
        sub_14BF8();
        v199 = sub_147E8();
        v200 = swift_getKeyPath();
        v201 = &v188[v185[9]];
        *v201 = v200;
        v201[1] = v199;
        v202 = v281;
        sub_B4C4(v189, v281);
        v203 = (v272 + 32) & v260;
        v204 = swift_allocObject();
        v205 = v167;
        v206 = v255;
        *(v204 + 16) = v167;
        *(v204 + 24) = v206;
        v207 = v204 + v203;
        v208 = v202;
        v158 = v271;
        sub_B520(v208, v207);
        sub_B16C(v167, v206);
        v209 = sub_BA6C();
        v211 = v245;
        v210 = v246;
        sub_14868();

        sub_B858(v188, &qword_20600, &qword_157A8);
        v166 = v248;
        *&v294 = v211;
        *(&v294 + 1) = v209;
        v172 = v275;
        swift_getOpaqueTypeConformance2();
        v212 = v251;
        v213 = v249;
        sub_14858();
        v250[1](v210, v213);
        sub_AD60(v205, v255);
        v214 = v253;
        v215 = (v212 + *(v253 + 13));
        *v215 = 0xD000000000000019;
        v215[1] = 0x8000000000017590;
        sub_BB24(v212, v166, &qword_205F0, &qword_15798);
        sub_2AD0(v166, 0, 1, v214);
        v171 = v268;
      }

      sub_BB24(v166, v162, &qword_205E8, &qword_15790);
      sub_2AD0(v162, 0, 1, v256);
    }

    else
    {
      v177 = sub_2104(&qword_205E8, &qword_15790);
      sub_2AD0(v162, 1, 1, v177);
      v171 = v268;
      v172 = v275;
    }

    sub_BB24(v162, v158, &qword_205E0, &qword_15788);
    v174 = sub_2AD0(v158, 0, 1, v259);
    v176 = v261;
  }

  else
  {
    v173 = sub_2104(&qword_205E0, &qword_15788);
    v174 = sub_2AD0(v158, 1, 1, v173);
    v171 = v268;
    v172 = v275;
    v176 = v96;
  }

  v281 = &v242;
  __chkstk_darwin(v174, v175);
  v217 = &v242 - ((v216 + 15) & 0xFFFFFFFFFFFFFFF0);
  v279 = v217;
  v218 = sub_B80C(v278, v217, &qword_205A0, &qword_15750);
  v280 = &v242;
  *&v294 = v217;
  __chkstk_darwin(v218, v219);
  v220 = &v242 - ((v171 + 15) & 0xFFFFFFFFFFFFFFF0);
  v269 = v220;
  v221 = sub_B80C(v277, v220, &qword_205B0, &qword_15758);
  v272 = &v242;
  *(&v294 + 1) = v220;
  __chkstk_darwin(v221, v222);
  v223 = (v172 + 15) & 0xFFFFFFFFFFFFFFF0;
  v260 = &v242 - v223;
  v224 = sub_B80C(v276, &v242 - v223, &qword_205C0, &qword_15768);
  v268 = &v242;
  *&v295 = &v242 - v223;
  __chkstk_darwin(v224, v225);
  v227 = &v242 - ((v226 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = sub_B80C(v274, v227, &qword_205C8, &qword_15770);
  v265 = &v242;
  *(&v295 + 1) = v227;
  __chkstk_darwin(v228, v229);
  v230 = &v242 - v223;
  v231 = v264;
  v232 = sub_B80C(v264, &v242 - v223, &qword_205C0, &qword_15768);
  v275 = &v242;
  v296 = &v242 - v223;
  __chkstk_darwin(v232, v233);
  v234 = &v242 - ((v176 + 15) & 0xFFFFFFFFFFFFFFF0);
  v235 = v273;
  v236 = sub_B80C(v273, v234, &qword_205D0, &qword_15778);
  v261 = &v242;
  v297 = v234;
  __chkstk_darwin(v236, v237);
  v239 = &v242 - ((v238 + 15) & 0xFFFFFFFFFFFFFFF0);
  v240 = v271;
  sub_B80C(v271, v239, &qword_205D8, &qword_15780);
  v298 = v239;
  sub_3000(&v294, v270);
  sub_B858(v240, &qword_205D8, &qword_15780);
  sub_B858(v235, &qword_205D0, &qword_15778);
  sub_B858(v231, &qword_205C0, &qword_15768);
  sub_B858(v274, &qword_205C8, &qword_15770);
  sub_B858(v276, &qword_205C0, &qword_15768);
  sub_B858(v277, &qword_205B0, &qword_15758);
  sub_B858(v278, &qword_205A0, &qword_15750);
  sub_B858(v239, &qword_205D8, &qword_15780);
  sub_B858(v234, &qword_205D0, &qword_15778);
  sub_B858(v230, &qword_205C0, &qword_15768);
  sub_B858(v227, &qword_205C8, &qword_15770);
  sub_B858(v260, &qword_205C0, &qword_15768);
  sub_B858(v269, &qword_205B0, &qword_15758);
  return sub_B858(v279, &qword_205A0, &qword_15750);
}

uint64_t sub_5C58(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for SiriHelpSnippetView(0);
  v7 = sub_C154(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7, v12);
  v16[1] = a2();
  swift_getKeyPath();
  sub_B4C4(a1, v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  sub_B520(v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  sub_2104(&qword_20410, &qword_15620);
  sub_A634();
  sub_A698();
  return sub_149A8();
}

void sub_5DF0(uint64_t a1, uint64_t a2)
{
  sub_C2B0();
  v4 = v3;
  v6 = v5;
  sub_2104(&qword_20620, &qword_157B8);
  sub_C164();
  v8 = v7;
  __chkstk_darwin(v9, v10);
  v12 = &v20 - v11;
  sub_33E4(v4, &v20 - v11);
  v13 = sub_2240(&qword_20628, &qword_157C0);
  v14 = sub_2240(&qword_20630, &qword_157C8);
  v15 = sub_14C18();
  v16 = sub_BCEC(&qword_20638, &type metadata accessor for SimpleItemReverseRichView, &protocol conformance descriptor for SimpleItemReverseRichView);
  v20 = v15;
  v21 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = v14;
  v21 = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeConformance2();
  v20 = v13;
  v21 = v18;
  swift_getOpaqueTypeConformance2();
  v19 = sub_14828();
  (*(v8 + 8))(v12, v2);
  *v6 = v19;
  sub_C2C4();
}

uint64_t sub_5F7C(void *a1)
{
  v2 = sub_2104(&qword_20528, &qword_156F8);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v26 - v4;
  v6 = sub_140A8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2104(&qword_20538, &qword_15700);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_15480;
  v12 = sub_14128();
  *(v11 + 56) = v12;
  *(v11 + 64) = &protocol witness table for Command;
  v13 = sub_B1C4((v11 + 32));
  *v13 = a1;
  *(v13 + 8) = 1;
  (*(*(v12 - 8) + 104))();
  v14 = a1;
  sub_140B8();
  v15 = sub_2104(&qword_20540, &qword_15708);
  __chkstk_darwin(v15 - 8, v16);
  v18 = &v26 - v17;
  type metadata accessor for SiriHelpSnippetView(0);
  sub_14A48();
  v19 = sub_14BC8();
  if (sub_2990(v18, 1, v19) == 1)
  {
    (*(v7 + 8))(v10, v6);
    return sub_B858(v18, &qword_20540, &qword_15708);
  }

  else
  {
    (*(v7 + 16))(v5, v10, v6);
    sub_2AD0(v5, 0, 1, v6);
    v21 = sub_2104(&qword_20548, &qword_15710);
    __chkstk_darwin(v21 - 8, v22);
    v24 = &v26 - v23;
    v25 = sub_14AA8();
    sub_2AD0(v24, 1, 1, v25);
    sub_14BB8();
    sub_B858(v24, &qword_20548, &qword_15710);
    sub_B858(v5, &qword_20528, &qword_156F8);
    (*(v7 + 8))(v10, v6);
    return (*(*(v19 - 8) + 8))(v18, v19);
  }
}

id sub_6334(uint64_t a1, unint64_t a2)
{
  v4 = sub_2104(&qword_20528, &qword_156F8);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v34 - v6;
  v37 = sub_140A8();
  v8 = *(v37 - 8);
  __chkstk_darwin(v37, v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_14128();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12, v14);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B484(0, &qword_20530, SAUIAppPunchOut_ptr);
  sub_B16C(a1, a2);
  result = sub_67F0(a1, a2);
  if (result)
  {
    *v16 = result;
    v16[8] = 0;
    (*(v13 + 104))(v16, enum case for Command.aceCommand(_:), v12);
    sub_2104(&qword_20538, &qword_15700);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_15480;
    *(v18 + 56) = v12;
    *(v18 + 64) = &protocol witness table for Command;
    v19 = sub_B1C4((v18 + 32));
    (*(v13 + 16))(v19, v16, v12);
    sub_140B8();
    v20 = sub_2104(&qword_20540, &qword_15708);
    __chkstk_darwin(v20 - 8, v21);
    v23 = &v34 - v22;
    type metadata accessor for SiriHelpSnippetView(0);
    sub_14A48();
    v24 = sub_14BC8();
    if (sub_2990(v23, 1, v24) == 1)
    {
      (*(v8 + 8))(v11, v37);
      (*(v13 + 8))(v16, v12);
      return sub_B858(v23, &qword_20540, &qword_15708);
    }

    else
    {
      v25 = *(v8 + 16);
      v26 = v11;
      v35 = v11;
      v27 = v8;
      v28 = v37;
      v25(v7, v26, v37);
      sub_2AD0(v7, 0, 1, v28);
      v29 = sub_2104(&qword_20548, &qword_15710);
      v34 = &v34;
      __chkstk_darwin(v29 - 8, v30);
      v36 = &v34;
      v32 = &v34 - v31;
      v33 = sub_14AA8();
      sub_2AD0(v32, 1, 1, v33);
      sub_14BB8();
      sub_B858(v32, &qword_20548, &qword_15710);
      sub_B858(v7, &qword_20528, &qword_156F8);
      (*(v27 + 8))(v35, v28);
      (*(v13 + 8))(v16, v12);
      return (*(*(v24 - 8) + 8))(v23, v24);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_67F0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = sub_13FE8().super.isa;
    sub_AD60(a1, a2);
  }

  v5 = [swift_getObjCClassFromMetadata() aceObjectWithPlistData:isa];

  return v5;
}

uint64_t sub_6890@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v58 = a3;
  v5 = type metadata accessor for SiriHelpSMARTView(0);
  v53 = *(v5 - 8);
  __chkstk_darwin(v5 - 8, v6);
  v54 = v7;
  v56 = &OpaqueTypeConformance2 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_141F8();
  v46 = *(v52 - 8);
  __chkstk_darwin(v52, v8);
  v49 = v9;
  v51 = &OpaqueTypeConformance2 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = a2;
  v45 = a1;
  if ((a2 & 1) != 0 || (v10 = sub_141E8(), !v11))
  {
    v10 = sub_141A8();
  }

  v12 = v10;
  v13 = v11;
  v14 = sub_2104(&qword_20558, &qword_15720);
  v50 = &OpaqueTypeConformance2;
  v15 = *(v14 - 8);
  v47 = v14;
  v48 = v15;
  __chkstk_darwin(v14, v16);
  v43 = &OpaqueTypeConformance2 - v17;
  v59 = sub_2104(&qword_20560, &qword_15728);
  v44 = &OpaqueTypeConformance2;
  v18 = *(v59 - 8);
  __chkstk_darwin(v59, v19);
  v21 = &OpaqueTypeConformance2 - v20;
  v22 = sub_14B48();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22, v24);
  v26 = &OpaqueTypeConformance2 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = &type metadata for String;
  v87 = &protocol witness table for String;
  v84 = v12;
  v85 = v13;
  v83 = 0;
  v81 = 0u;
  v82 = 0u;
  v80 = 0;
  v78 = 0u;
  v79 = 0u;
  v77 = 0;
  v75 = 0u;
  v76 = 0u;
  v74 = 0;
  v72 = 0u;
  v73 = 0u;
  v71 = 0;
  v69 = 0u;
  v70 = 0u;
  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  v65 = 0;
  v63 = 0u;
  v64 = 0u;
  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  sub_14B38();
  sub_147A8();
  v27 = sub_BCEC(&qword_20568, &type metadata accessor for SimpleItemRichView, &protocol conformance descriptor for SimpleItemRichView);
  sub_148B8();
  (*(v23 + 8))(v26, v22);
  v28 = v45;
  sub_141B8();
  v84 = v22;
  v85 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = v59;
  sub_14858();

  (*(v18 + 8))(v21, v29);
  v30 = v46;
  v31 = v51;
  v32 = v28;
  v33 = v52;
  (*(v46 + 16))(v51, v32, v52);
  v34 = v56;
  sub_B4C4(v55, v56);
  v35 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v36 = v35 + v49;
  v37 = (*(v53 + 80) + v35 + v49 + 1) & ~*(v53 + 80);
  v38 = swift_allocObject();
  (*(v30 + 32))(v38 + v35, v31, v33);
  *(v38 + v36) = v57 & 1;
  sub_B520(v34, v38 + v37);
  v84 = v59;
  v85 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v39 = v47;
  v40 = v43;
  sub_14868();

  return (*(v48 + 8))(v40, v39);
}

void sub_6E50(uint64_t *a1, int a2, uint64_t a3)
{
  v66 = a3;
  v65 = a2;
  v4 = sub_14508();
  v63 = *(v4 - 8);
  v64 = v4;
  __chkstk_darwin(v4, v5);
  v62 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_14128();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v61 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_141F8();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_20180 != -1)
  {
    swift_once();
  }

  v16 = sub_14568();
  sub_1750(v16, static Logger.uiCategory);
  (*(v12 + 16))(v15, a1, v11);
  v17 = sub_14548();
  v18 = sub_14DA8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v60 = a1;
    v20 = v19;
    v21 = swift_slowAlloc();
    v59 = v7;
    v22 = v21;
    v67 = v21;
    *v20 = 136315138;
    v23 = sub_141B8();
    if (v24)
    {
      v25 = v23;
    }

    else
    {
      v25 = 0;
    }

    if (v24)
    {
      v26 = v24;
    }

    else
    {
      v26 = 0xE000000000000000;
    }

    (*(v12 + 8))(v15, v11);
    v27 = sub_D340(v25, v26, &v67);

    *(v20 + 4) = v27;
    _os_log_impl(&dword_0, v17, v18, "SiriHelp Component was tapped for suggestionID: %s", v20, 0xCu);
    sub_206C(v22);
    v7 = v59;
  }

  else
  {

    (*(v12 + 8))(v15, v11);
  }

  (*(v8 + 104))(v61, enum case for Command.noOp(_:), v7);
  v28 = sub_14AA8();
  v60 = &v58;
  __chkstk_darwin(v28, v29);
  (*(v31 + 104))(&v58 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for InteractionType.buttonTapped(_:));
  v32 = sub_2104(&qword_20570, &qword_15730);
  v59 = &v58;
  __chkstk_darwin(v32 - 8, v33);
  v35 = &v58 - v34;
  sub_14A78();
  v36 = sub_14A88();
  sub_2AD0(v35, 0, 1, v36);
  v38 = v62;
  v37 = v63;
  v39 = v64;
  (*(v63 + 104))(v62, enum case for DeliveryVehicle.siriHelp(_:), v64);
  v40._countAndFlagsBits = sub_141B8();
  if (v40._object)
  {
    object = v40._object;
  }

  else
  {
    v40._countAndFlagsBits = 0;
    object = 0xE000000000000000;
  }

  v40._object = object;
  sub_144F8(v40);

  (*(v37 + 8))(v38, v39);
  v42 = objc_allocWithZone(sub_14BE8());
  v43 = sub_14BD8();
  v44 = v66;
  if (v65)
  {
    sub_141D8();
    if (v45)
    {
      v46 = sub_13FD8();
      v48 = v47;

      if (v48 >> 60 != 15)
      {
        sub_B484(0, &qword_20578, SAIntentGroupRunSiriKitExecutor_ptr);
        sub_B16C(v46, v48);
        v49 = sub_67F0(v46, v48);
        if (v49)
        {
          v50 = v49;
          v51 = sub_14C48();
          v52 = *(v51 - 8);
          __chkstk_darwin(v51, v53);
          v55 = &v58 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
          type metadata accessor for SiriHelpSMARTView(0);
          sub_14B78();
          sub_14C38();

          sub_AD60(v46, v48);
          (*(v52 + 8))(v55, v51);
        }

        else
        {
          sub_AD60(v46, v48);
        }
      }
    }
  }

  v56 = *(v44 + *(type metadata accessor for SiriHelpSMARTView(0) + 20));
  if (v56)
  {
    v57 = v56;
    sub_14C88();
  }

  else
  {
    sub_14C98();
    sub_BCEC(&qword_20188, &type metadata accessor for Context, &protocol conformance descriptor for Context);
    sub_14628();
    __break(1u);
  }
}

uint64_t sub_7584@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2104(&qword_204B8, &qword_15688);
  sub_C0CC();
  __chkstk_darwin(v3, v4);
  v6 = &v14 - v5;
  v7 = sub_14248();
  sub_C0F0(v7, v8, &type metadata for String);
  v9 = sub_147F8();
  KeyPath = swift_getKeyPath();
  v11 = &v6[*(v2 + 36)];
  *v11 = KeyPath;
  v11[1] = v9;
  sub_ADD4();
  sub_C188();
  sub_14858();
  sub_B858(v6, &qword_204B8, &qword_15688);
  result = sub_2104(&qword_203F8, &qword_155E0);
  v13 = a1 + *(result + 52);
  strcpy(v13, "Response_sash");
  *(v13 + 14) = -4864;
  return result;
}

uint64_t sub_76B8()
{
  v0 = sub_2104(&qword_204B8, &qword_15688);
  sub_C0CC();
  __chkstk_darwin(v1, v2);
  v4 = &v11 - v3;
  v5 = sub_14308();
  sub_C0F0(v5, v6, &type metadata for String);
  v7 = sub_147F8();
  KeyPath = swift_getKeyPath();
  v9 = &v4[*(v0 + 36)];
  *v9 = KeyPath;
  v9[1] = v7;
  sub_ADD4();
  sub_C188();
  sub_14858();
  return sub_B858(v4, &qword_204B8, &qword_15688);
}

uint64_t sub_77AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2104(&qword_20550, &qword_15718);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v18 - v7;
  v9 = sub_142A8();
  sub_6890(a1, v9 & 1, v8);
  v10 = sub_2240(&qword_20558, &qword_15720);
  v11 = sub_2240(&qword_20560, &qword_15728);
  v12 = sub_14B48();
  v13 = sub_BCEC(&qword_20568, &type metadata accessor for SimpleItemRichView, &protocol conformance descriptor for SimpleItemRichView);
  v18 = v12;
  v19 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = v11;
  v19 = OpaqueTypeConformance2;
  v15 = swift_getOpaqueTypeConformance2();
  v18 = v10;
  v19 = v15;
  swift_getOpaqueTypeConformance2();
  v16 = sub_14828();
  result = (*(v5 + 8))(v8, v4);
  *a2 = v16;
  return result;
}

uint64_t sub_7958@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SiriHelpSMARTView(0);
  v83 = *(v4 - 8);
  v5 = *(v83 + 64);
  __chkstk_darwin(v4 - 8, v6);
  v7 = sub_140C8();
  v82 = *(v7 - 8);
  __chkstk_darwin(v7, v8);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_14168();
  __chkstk_darwin(v11 - 8, v12);
  result = sub_142E8();
  if (v14 && (, result = sub_142E8(), v15) && (v16 = sub_13FD8(), v18 = v17, result = , v18 >> 60 != 15))
  {
    v79 = sub_2104(&qword_204D0, &qword_156C8);
    v80 = &v63;
    v78 = *(v79 - 8);
    __chkstk_darwin(v79, v19);
    v76 = &v63 - v20;
    v74 = sub_2104(&qword_204D8, &qword_156D0);
    v77 = &v63;
    v75 = *(v74 - 8);
    __chkstk_darwin(v74, v21);
    v72 = &v63 - v22;
    v70 = sub_2104(&qword_204E0, &qword_156D8);
    v73 = &v63;
    v71 = *(v70 - 8);
    __chkstk_darwin(v70, v23);
    v81 = &v63 - v24;
    v65 = sub_14B08();
    v69 = &v63;
    v68 = *(v65 - 8);
    __chkstk_darwin(v65, v25);
    v63 = &v63 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    v90 = sub_142B8();
    v91 = v27;
    sub_A8E0();
    v28 = sub_14818();
    v67 = v16;
    v30 = v29;
    v64 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v32 = v31;
    v66 = v18;
    v34 = v33;
    v92 = &type metadata for Text;
    v93 = &protocol witness table for Text;
    v35 = swift_allocObject();
    v90 = v35;
    *(v35 + 16) = v28;
    *(v35 + 24) = v30;
    *(v35 + 32) = v32 & 1;
    *(v35 + 40) = v34;
    v89 = 0;
    v87 = 0u;
    v88 = 0u;
    v36 = sub_2104(&qword_204E8, &qword_156E0);
    __chkstk_darwin(v36, v37);
    v39 = &v63 - v38;
    sub_14158();
    sub_14A38();
    *&v39[*(v36 + 36)] = sub_14738();
    sub_AF4C();
    v40 = sub_14828();
    sub_B858(v39, &qword_204E8, &qword_156E0);
    v85 = &type metadata for AnyView;
    v86 = &protocol witness table for AnyView;
    v84 = v40;
    v41 = v63;
    sub_14AF8();
    v42 = v82;
    (*(v82 + 104))(v10, enum case for SeparatorStyle.remove(_:), v7);
    v43 = sub_BCEC(&qword_20510, &type metadata accessor for ReferenceRichView, &protocol conformance descriptor for ReferenceRichView);
    v44 = v65;
    sub_14848();
    (*(v42 + 8))(v10, v7);
    v45 = v44;
    (*(v68 + 8))(v41, v44);
    v46 = v2;
    v47 = v64;
    sub_B4C4(v46, v64);
    v48 = (*(v83 + 80) + 32) & ~*(v83 + 80);
    v49 = swift_allocObject();
    v50 = v67;
    v51 = v66;
    *(v49 + 16) = v67;
    *(v49 + 24) = v51;
    sub_B520(v47, v49 + v48);
    sub_B16C(v50, v51);
    v90 = v45;
    v91 = v43;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v53 = v72;
    v54 = v70;
    v55 = v81;
    sub_14868();

    (*(v71 + 8))(v55, v54);
    v90 = v54;
    v91 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v56 = v76;
    v57 = v74;
    sub_14858();
    (*(v75 + 8))(v53, v57);
    sub_AD60(v50, v51);
    v58 = sub_2104(&qword_20518, &qword_156F0);
    *(a1 + 24) = v58;
    *(a1 + 32) = sub_2838(&qword_20520, &qword_20518, &qword_156F0, &protocol conformance descriptor for IDView<A, B>);
    v59 = sub_B1C4(a1);
    v60 = v78;
    v61 = v79;
    (*(v78 + 16))(v59, v56, v79);
    v62 = (v59 + *(v58 + 52));
    *v62 = 0xD000000000000019;
    v62[1] = 0x8000000000017590;
    return (*(v60 + 8))(v56, v61);
  }

  else
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

id sub_8230(uint64_t a1, unint64_t a2)
{
  v4 = sub_2104(&qword_20528, &qword_156F8);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v34 - v6;
  v37 = sub_140A8();
  v8 = *(v37 - 8);
  __chkstk_darwin(v37, v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_14128();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12, v14);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B484(0, &qword_20530, SAUIAppPunchOut_ptr);
  sub_B16C(a1, a2);
  result = sub_67F0(a1, a2);
  if (result)
  {
    *v16 = result;
    v16[8] = 1;
    (*(v13 + 104))(v16, enum case for Command.aceCommand(_:), v12);
    sub_2104(&qword_20538, &qword_15700);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_15480;
    *(v18 + 56) = v12;
    *(v18 + 64) = &protocol witness table for Command;
    v19 = sub_B1C4((v18 + 32));
    (*(v13 + 16))(v19, v16, v12);
    sub_140B8();
    v20 = sub_2104(&qword_20540, &qword_15708);
    __chkstk_darwin(v20 - 8, v21);
    v23 = &v34 - v22;
    type metadata accessor for SiriHelpSMARTView(0);
    sub_14A48();
    v24 = sub_14BC8();
    if (sub_2990(v23, 1, v24) == 1)
    {
      (*(v8 + 8))(v11, v37);
      (*(v13 + 8))(v16, v12);
      return sub_B858(v23, &qword_20540, &qword_15708);
    }

    else
    {
      v25 = *(v8 + 16);
      v26 = v11;
      v35 = v11;
      v27 = v8;
      v28 = v37;
      v25(v7, v26, v37);
      sub_2AD0(v7, 0, 1, v28);
      v29 = sub_2104(&qword_20548, &qword_15710);
      v34 = &v34;
      __chkstk_darwin(v29 - 8, v30);
      v36 = &v34;
      v32 = &v34 - v31;
      v33 = sub_14AA8();
      sub_2AD0(v32, 1, 1, v33);
      sub_14BB8();
      sub_B858(v32, &qword_20548, &qword_15710);
      sub_B858(v7, &qword_20528, &qword_156F8);
      (*(v27 + 8))(v35, v28);
      (*(v13 + 8))(v16, v12);
      return (*(*(v24 - 8) + 8))(v23, v24);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_86F0()
{
  v2 = type metadata accessor for SiriHelpSMARTView(0);
  v3 = sub_C154(v2);
  __chkstk_darwin(v3, v4);
  sub_C23C();
  sub_B4C4(v0, v1);
  v5 = swift_allocObject();
  sub_C290(v5);
  sub_2104(&qword_20398, &qword_155A8);
  sub_A364();
  return sub_14A98();
}

uint64_t sub_8808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_140C8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v133 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SiriHelpSMARTView(0);
  v10 = *(v9 - 8);
  v11 = v10[8];
  v13 = (a1 + *(__chkstk_darwin(v9 - 8, v12) + 32));
  v14 = *v13;
  v15 = *(v13 + 1);
  LOBYTE(v154) = v14;
  v155 = v15;
  sub_2104(&qword_203E8, &qword_155D0);
  sub_14958();
  v149 = a2;
  if (v151 == 1)
  {
    v144 = sub_2104(&qword_20470, &qword_15660);
    v148 = &v133;
    v150 = *(v144 - 1);
    v16 = v150[8];
    __chkstk_darwin(v144, v17);
    v139 = ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    v146 = (&v133 - v139);
    sub_76B8();
    v18 = sub_2104(&qword_20478, &qword_15668);
    v142 = &v133;
    v143 = v18;
    v147 = *(v18 - 8);
    v19 = v147[8];
    __chkstk_darwin(v18, v20);
    v138 = ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    v145 = (&v133 - v138);
    v21 = sub_2104(&qword_20480, &qword_15670);
    v141 = &v133;
    v22 = *(v21 - 8);
    __chkstk_darwin(v21, v23);
    v24 = v10;
    v26 = &v133 - v25;
    v154 = sub_14268();
    v155 = v27;
    sub_B4C4(a1, &v133 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v28 = (*(v24 + 80) + 16) & ~*(v24 + 80);
    v29 = swift_allocObject();
    sub_B520(&v133 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28);
    sub_A8E0();
    sub_14998();
    sub_2838(&qword_20490, &qword_20480, &qword_15670, &protocol conformance descriptor for Button<A>);
    v30 = v145;
    sub_14888();
    (*(v22 + 8))(v26, v21);
    v136 = sub_2104(&qword_203C0, &qword_155B8);
    v141 = &v133;
    v32 = __chkstk_darwin(v136, v31);
    v34 = &v133 - v33;
    v140 = &v133;
    __chkstk_darwin(v32, v35);
    v36 = (&v133 - v139);
    v37 = v150[2];
    v38 = v144;
    v39 = v37(&v133 - v139, v146, v144);
    v139 = &v133;
    __chkstk_darwin(v39, v40);
    v41 = (&v133 - v138);
    v42 = v147;
    v43 = v147[2];
    v44 = v30;
    v45 = v143;
    v43(&v133 - v138, v44, v143);
    v37(v34, v36, v38);
    v46 = &v34[*(sub_2104(&qword_20498, &qword_15678) + 48)];
    v133 = v34;
    v43(v46, v41, v45);
    v135 = v42[1];
    v147 = v42 + 1;
    v135(v41, v45);
    v47 = v150[1];
    ++v150;
    v138 = v47;
    (v47)(v36, v38);
    v134 = sub_2104(&qword_203B0, &qword_155B0);
    v137 = &v133;
    __chkstk_darwin(v134, v48);
    v50 = &v133 - v49;
    v51 = sub_2104(&qword_20468, &qword_15658);
    __chkstk_darwin(v51, v52);
    sub_B80C(v34, &v133 - v53, &qword_203C0, &qword_155B8);
    swift_storeEnumTagMultiPayload();
    sub_2104(&qword_203D0, &qword_155C0);
    sub_2838(&qword_203B8, &qword_203C0, &qword_155B8, &protocol conformance descriptor for TupleView<A>);
    sub_2838(&qword_203C8, &qword_203D0, &qword_155C0, &protocol conformance descriptor for TupleView<A>);
    sub_14728();
    v54 = sub_2104(&qword_20440, &qword_15640);
    __chkstk_darwin(v54, v55);
    sub_B80C(v50, &v133 - v56, &qword_203B0, &qword_155B0);
    swift_storeEnumTagMultiPayload();
    sub_2104(&qword_203E0, &qword_155C8);
    sub_A404();
    sub_2838(&qword_203D8, &qword_203E0, &qword_155C8, &protocol conformance descriptor for TupleView<A>);
    sub_14728();
    sub_B858(v50, &qword_203B0, &qword_155B0);
    sub_B858(v133, &qword_203C0, &qword_155B8);
    v135(v145, v143);
    return (v138)(v146, v144);
  }

  else
  {
    v146 = (&v133 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v147 = v10;
    v150 = v11;
    if (sub_142A8())
    {
      v58 = sub_2104(&qword_20448, &qword_15648);
      v148 = &v133;
      v144 = *(v58 - 8);
      v145 = v58;
      v59 = v144[8];
      __chkstk_darwin(v58, v60);
      v62 = (&v133 - v61);
      v63 = sub_14B68();
      v142 = &v133;
      v64 = *(v63 - 8);
      v66 = __chkstk_darwin(v63, v65);
      __chkstk_darwin(v66, v67);
      v69 = &v133 - v68;
      v70 = sub_14248();
      v156 = &type metadata for String;
      v157 = &protocol witness table for String;
      v154 = v70;
      v155 = v71;
      v153 = 0;
      v151 = 0u;
      v152 = 0u;
      sub_14B58();
      sub_BCEC(&qword_20450, &type metadata accessor for DisambiguationTitle, &protocol conformance descriptor for DisambiguationTitle);
      v72 = sub_14828();
      (*(v64 + 8))(v69, v63);
      v156 = &type metadata for AnyView;
      v157 = &protocol witness table for AnyView;
      v154 = v72;
      v153 = 0;
      v151 = 0u;
      v152 = 0u;
      sub_14B58();
      v73 = v146;
      sub_B4C4(a1, v146);
      v74 = (*(v147 + 80) + 16) & ~*(v147 + 80);
      v75 = swift_allocObject();
      sub_B520(v73, v75 + v74);
      sub_2104(&qword_20408, &qword_155E8);
      sub_A81C();
      v76 = v62;
      sub_14B28();
      sub_7958(&v151);
      if (*(&v152 + 1))
      {
        sub_A714(&v151, &v154);
        sub_A72C(&v154, v156);
        v77 = sub_14828();

        sub_206C(&v154);
      }

      else
      {
        sub_B858(&v151, &qword_20430, &qword_15630);
        v77 = 0;
      }

      v140 = v77;
      v141 = sub_2104(&qword_203D0, &qword_155C0);
      v150 = &v133;
      v96 = __chkstk_darwin(v141, v95);
      v98 = &v133 - v97;
      v147 = &v133;
      __chkstk_darwin(v96, v99);
      v100 = &v133 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
      v101 = v144;
      v102 = v144[2];
      v103 = v76;
      v143 = v76;
      v104 = v145;
      v102(v100, v103, v145);
      v102(v98, v100, v104);
      *&v98[*(sub_2104(&qword_20460, &qword_15650) + 48)] = v77;
      v146 = v101[1];
      (v146)(v100, v104);
      v142 = sub_2104(&qword_203B0, &qword_155B0);
      v144 = &v133;
      __chkstk_darwin(v142, v105);
      v107 = &v133 - v106;
      v108 = sub_2104(&qword_20468, &qword_15658);
      v139 = &v133;
      __chkstk_darwin(v108, v109);
      sub_B80C(v98, &v133 - v110, &qword_203D0, &qword_155C0);
      swift_storeEnumTagMultiPayload();
      sub_2104(&qword_203C0, &qword_155B8);
      sub_2838(&qword_203B8, &qword_203C0, &qword_155B8, &protocol conformance descriptor for TupleView<A>);
      sub_2838(&qword_203C8, &qword_203D0, &qword_155C0, &protocol conformance descriptor for TupleView<A>);
      sub_14728();
      v111 = sub_2104(&qword_20440, &qword_15640);
      v141 = &v133;
      __chkstk_darwin(v111, v112);
      sub_B80C(v107, &v133 - v113, &qword_203B0, &qword_155B0);
      swift_storeEnumTagMultiPayload();
      sub_2104(&qword_203E0, &qword_155C8);
      sub_A404();
      sub_2838(&qword_203D8, &qword_203E0, &qword_155C8, &protocol conformance descriptor for TupleView<A>);
      sub_14728();

      sub_B858(v107, &qword_203B0, &qword_155B0);
      sub_B858(v98, &qword_203D0, &qword_155C0);
      return (v146)(v143, v145);
    }

    else
    {
      v78 = sub_2104(&qword_203F0, &qword_155D8);
      v148 = &v133;
      v143 = *(v78 - 8);
      v144 = v78;
      v140 = v143[8];
      __chkstk_darwin(v78, v79);
      v81 = (&v133 - v80);
      v82 = sub_2104(&qword_203F8, &qword_155E0);
      v145 = &v133;
      __chkstk_darwin(v82, v83);
      v85 = &v133 - v84;
      sub_7584(&v133 - v84);
      (*(v5 + 104))(v8, enum case for SeparatorStyle.remove(_:), v4);
      sub_2838(&qword_20400, &qword_203F8, &qword_155E0, &protocol conformance descriptor for IDView<A, B>);
      v142 = v81;
      sub_14848();
      (*(v5 + 8))(v8, v4);
      sub_B858(v85, &qword_203F8, &qword_155E0);
      v86 = sub_2104(&qword_20408, &qword_155E8);
      v141 = &v133;
      v145 = v86;
      v87 = *(v86 - 8);
      v88 = v87[8];
      __chkstk_darwin(v86, v89);
      v91 = (&v133 - v90);
      v154 = sub_14298();
      swift_getKeyPath();
      v92 = v146;
      sub_B4C4(a1, v146);
      v93 = (*(v147 + 80) + 16) & ~*(v147 + 80);
      v94 = swift_allocObject();
      sub_B520(v92, v94 + v93);
      sub_2104(&qword_20410, &qword_15620);
      sub_A634();
      sub_A698();
      v150 = v91;
      sub_149A8();
      sub_7958(&v151);
      if (*(&v152 + 1))
      {
        sub_A714(&v151, &v154);
        sub_A72C(&v154, v156);
        v147 = sub_14828();

        sub_206C(&v154);
      }

      else
      {
        sub_B858(&v151, &qword_20430, &qword_15630);
        v147 = 0;
      }

      v138 = sub_2104(&qword_203E0, &qword_155C8);
      v146 = &v133;
      v115 = __chkstk_darwin(v138, v114);
      v117 = &v133 - v116;
      v139 = &v133;
      __chkstk_darwin(v115, v118);
      v120 = &v133 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0);
      v121 = v143[2];
      v122 = v144;
      v123 = v121(v120, v142, v144);
      v140 = &v133;
      __chkstk_darwin(v123, v124);
      v125 = &v133 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
      v126 = v87[2];
      v126(v125, v150, v145);
      v121(v117, v120, v122);
      v127 = sub_2104(&qword_20438, &qword_15638);
      v128 = v145;
      v126(&v117[*(v127 + 48)], v125, v145);
      *&v117[*(v127 + 64)] = v147;
      v137 = v87[1];
      (v137)(v125, v128);
      v129 = v143[1];
      v129(v120, v122);
      v130 = sub_2104(&qword_20440, &qword_15640);
      v143 = &v133;
      __chkstk_darwin(v130, v131);
      sub_B80C(v117, &v133 - v132, &qword_203E0, &qword_155C8);
      swift_storeEnumTagMultiPayload();
      sub_2104(&qword_203B0, &qword_155B0);
      sub_A404();
      sub_2838(&qword_203D8, &qword_203E0, &qword_155C8, &protocol conformance descriptor for TupleView<A>);
      sub_14728();

      sub_B858(v117, &qword_203E0, &qword_155C8);
      (v137)(v150, v145);
      return (v129)(v142, v144);
    }
  }
}

uint64_t sub_9E88(uint64_t a1)
{
  v2 = sub_143E8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(SAUIAddViews) init];
  v8 = [objc_allocWithZone(SAUIPluginSnippet) init];
  v9 = sub_14208();
  sub_AC78(v9, v10, v8);
  v11 = sub_14328();
  (*(*(v11 - 8) + 16))(v6, a1, v11);
  (*(v3 + 104))(v6, enum case for SuggestionsRFDataModels.expandedSuggestionsView(_:), v2);
  sub_BFCC(&qword_204A0, &type metadata accessor for SuggestionsRFDataModels, &protocol conformance descriptor for SuggestionsRFDataModels);
  v12 = sub_14028();
  v14 = v13;
  (*(v3 + 8))(v6, v2);
  isa = 0;
  if (v14 >> 60 != 15)
  {
    isa = sub_13FE8().super.isa;
    sub_AD60(v12, v14);
  }

  [v8 setModelData:isa];

  sub_2104(&qword_204A8, &qword_15680);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_15490;
  *(v16 + 32) = v8;
  v17 = v8;
  sub_ACDC(v16, v7);
  v18 = sub_14C48();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18, v20);
  v22 = &v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SiriHelpSMARTView(0);
  sub_14B78();
  v23 = v7;
  sub_14C28();

  return (*(v19 + 8))(v22, v18);
}

uint64_t sub_A198(uint64_t a1)
{
  v2 = type metadata accessor for SiriHelpSMARTView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8, v5);
  v9[1] = sub_14298();
  swift_getKeyPath();
  sub_B4C4(a1, v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_B520(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  sub_2104(&qword_20410, &qword_15620);
  sub_A634();
  sub_A698();
  return sub_149A8();
}

unint64_t sub_A364()
{
  result = qword_203A0;
  if (!qword_203A0)
  {
    sub_2240(&qword_20398, &qword_155A8);
    sub_A404();
    sub_2838(&qword_203D8, &qword_203E0, &qword_155C8, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_203A0);
  }

  return result;
}

unint64_t sub_A404()
{
  result = qword_203A8;
  if (!qword_203A8)
  {
    sub_2240(&qword_203B0, &qword_155B0);
    sub_2838(&qword_203B8, &qword_203C0, &qword_155B8, &protocol conformance descriptor for TupleView<A>);
    sub_2838(&qword_203C8, &qword_203D0, &qword_155C0, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_203A8);
  }

  return result;
}

uint64_t sub_A4CC@<X0>(uint64_t *a2@<X8>)
{
  result = sub_141B8();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_A4FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_C2B0();
  type metadata accessor for SiriHelpSMARTView(0);
  sub_C0DC();
  v6 = v4 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  sub_14328();
  sub_C0B8();
  (*(v7 + 8))(v6);

  sub_C254();
  v8 = v3[9];
  sub_14A68();
  sub_C0B8();
  (*(v9 + 8))(v6 + v8);
  v10 = v3[10];
  sub_14B98();
  sub_C0B8();
  (*(v11 + 8))(v6 + v10);
  sub_C2C4();

  return _swift_deallocObject(v12);
}

unint64_t sub_A634()
{
  result = qword_20418;
  if (!qword_20418)
  {
    sub_2240(&qword_20410, &qword_15620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20418);
  }

  return result;
}

unint64_t sub_A698()
{
  result = qword_20420;
  if (!qword_20420)
  {
    sub_2240(&qword_20428, &qword_15628);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20420);
  }

  return result;
}

uint64_t sub_A714(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_A72C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_A79C(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v2 = a1(0);
  sub_C17C(v2);
  v4 = sub_C208(*(v3 + 80));

  return a2(v4);
}

unint64_t sub_A81C()
{
  result = qword_20458;
  if (!qword_20458)
  {
    sub_2240(&qword_20408, &qword_155E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20458);
  }

  return result;
}

uint64_t sub_A88C()
{
  v0 = type metadata accessor for SiriHelpSMARTView(0);
  sub_C17C(v0);
  v2 = sub_C208(*(v1 + 80));

  return sub_9E88(v2);
}

unint64_t sub_A8E0()
{
  result = qword_20488;
  if (!qword_20488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20488);
  }

  return result;
}

_BYTE *sub_A934(uint64_t a1)
{
  v2 = sub_14038();
  v34 = *(v2 - 8);
  v4 = __chkstk_darwin(v2, v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4, v7);
  v38 = &v29 - v8;
  if (!*(a1 + 16))
  {
    v10 = &_swiftEmptySetSingleton;
    goto LABEL_15;
  }

  sub_2104(&qword_20648, &qword_157D8);
  result = sub_14DF8();
  v10 = result;
  v33 = *(a1 + 16);
  if (!v33)
  {
LABEL_15:

    return v10;
  }

  v11 = 0;
  v37 = result + 56;
  v12 = *(v34 + 80);
  v31 = a1;
  v32 = a1 + ((v12 + 32) & ~v12);
  v36 = v34 + 16;
  v13 = (v34 + 8);
  v30 = (v34 + 32);
  while (v11 < *(a1 + 16))
  {
    v14 = *(v34 + 72);
    v35 = v11 + 1;
    v15 = *(v34 + 16);
    v15(v38, v32 + v14 * v11, v2);
    sub_BFCC(&qword_20650, &type metadata accessor for _ProtoIdiom, &protocol conformance descriptor for _ProtoIdiom);
    v16 = sub_14CC8();
    v17 = ~(-1 << v10[32]);
    while (1)
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *&v37[8 * v19];
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) == 0)
      {
        break;
      }

      v22 = v10;
      v15(v6, *(v10 + 6) + v18 * v14, v2);
      sub_BFCC(&qword_20658, &type metadata accessor for _ProtoIdiom, &protocol conformance descriptor for _ProtoIdiom);
      v23 = sub_14CD8();
      v24 = *v13;
      (*v13)(v6, v2);
      if (v23)
      {
        result = (v24)(v38, v2);
        v10 = v22;
        goto LABEL_12;
      }

      v16 = v18 + 1;
      v10 = v22;
    }

    v25 = v38;
    *&v37[8 * v19] = v21 | v20;
    result = (*v30)(*(v10 + 6) + v18 * v14, v25, v2);
    v26 = *(v10 + 2);
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_17;
    }

    *(v10 + 2) = v28;
LABEL_12:
    v11 = v35;
    a1 = v31;
    if (v35 == v33)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

void sub_AC78(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_14CE8();

  [a3 setBundleName:v4];
}

void sub_ACDC(uint64_t a1, void *a2)
{
  sub_B484(0, &qword_204B0, SAAceView_ptr);
  isa = sub_14D48().super.isa;

  [a2 setViews:isa];
}

uint64_t sub_AD60(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_AD74(a1, a2);
  }

  return a1;
}

uint64_t sub_AD74(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

unint64_t sub_ADD4()
{
  result = qword_204C0;
  if (!qword_204C0)
  {
    sub_2240(&qword_204B8, &qword_15688);
    sub_BCEC(&qword_204C8, &type metadata accessor for PrimaryHeaderRichView, &protocol conformance descriptor for PrimaryHeaderRichView);
    sub_2838(&qword_20230, &qword_20238, qword_15460, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_204C0);
  }

  return result;
}

uint64_t sub_AE8C()
{
  v0 = type metadata accessor for SiriHelpSMARTView(0);
  sub_C17C(v0);
  v1 = sub_C224();

  return sub_77AC(v1, v2);
}

uint64_t sub_AEF8()
{
  sub_AF3C(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0);
}

uint64_t sub_AF3C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_AF4C()
{
  result = qword_204F0;
  if (!qword_204F0)
  {
    sub_2240(&qword_204E8, &qword_156E0);
    sub_BCEC(&qword_204F8, &type metadata accessor for RFImageView, &protocol conformance descriptor for RFImageView);
    sub_2838(&qword_20500, &qword_20508, &qword_156E8, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_204F0);
  }

  return result;
}

uint64_t sub_B004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_C2B0();
  type metadata accessor for SiriHelpSMARTView(0);
  sub_C0DC();
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  sub_AD74(*(v4 + 16), *(v4 + 24));
  sub_14328();
  sub_C0B8();
  (*(v7 + 8))(v4 + v6);

  sub_C254();
  v8 = v3[9];
  sub_14A68();
  sub_C0B8();
  (*(v9 + 8))(v4 + v6 + v8);
  v10 = v3[10];
  sub_14B98();
  sub_C0B8();
  (*(v11 + 8))(v4 + v6 + v10);
  sub_C2C4();

  return _swift_deallocObject(v12);
}

uint64_t sub_B16C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t *sub_B1C4(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_B224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_C2B0();
  sub_141F8();
  sub_C164();
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = *(v7 + 64);
  type metadata accessor for SiriHelpSMARTView(0);
  sub_C0DC();
  v10 = (v8 + *(v9 + 80) + v6 + 1) & ~*(v9 + 80);
  v11 = sub_C270();
  v12(v11);
  sub_14328();
  sub_C0B8();
  (*(v13 + 8))(v4 + v10);

  sub_C254();
  v14 = v3[9];
  sub_14A68();
  sub_C0B8();
  (*(v15 + 8))(v4 + v10 + v14);
  v16 = v3[10];
  sub_14B98();
  sub_C0B8();
  (*(v17 + 8))(v4 + v10 + v16);
  sub_C2C4();

  return _swift_deallocObject(v18);
}

void sub_B3BC()
{
  v1 = sub_141F8();
  sub_C154(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = v3 + *(v4 + 64);
  v6 = type metadata accessor for SiriHelpSMARTView(0);
  sub_C17C(v6);
  v8 = *(v0 + v5);
  v9 = v0 + ((v5 + *(v7 + 80) + 1) & ~*(v7 + 80));

  sub_6E50((v0 + v3), v8, v9);
}

uint64_t sub_B484(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_B4C4(uint64_t a1, uint64_t a2)
{
  v3 = sub_C284();
  v4(v3);
  sub_C0CC();
  v5 = sub_C218();
  v6(v5);
  return a2;
}

uint64_t sub_B520(uint64_t a1, uint64_t a2)
{
  v3 = sub_C284();
  v4(v3);
  sub_C0CC();
  v5 = sub_C218();
  v6(v5);
  return a2;
}

uint64_t sub_B5A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_C2B0();
  type metadata accessor for SiriHelpSnippetView(0);
  sub_C0DC();
  v7 = (v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80)));

  sub_C308();
  sub_C0B8();
  (*(v8 + 8))(v7 + v5);
  sub_C2F0();
  sub_C0B8();
  (*(v9 + 8))(v7 + v5);
  sub_C2D8();
  sub_C0B8();
  (*(v10 + 8))(v7 + v3);
  sub_C1F8();
  sub_C2C4();

  return _swift_deallocObject(v11);
}

uint64_t sub_B6E8(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SiriHelpSnippetView(0);
  sub_C17C(v6);
  v8 = sub_C208(*(v7 + 80));
  return sub_5C58(v8, a1, a2, a3);
}

uint64_t sub_B768(uint64_t a1, uint64_t a2)
{
  v4 = sub_2104(&qword_205B0, &qword_15758);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_B80C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_C1D8(a1, a2, a3, a4);
  sub_C0CC();
  v5 = sub_C218();
  v6(v5);
  return v4;
}

uint64_t sub_B858(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_2104(a2, a3);
  sub_C0B8();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_B8AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_C2B0();
  type metadata accessor for SiriHelpSnippetView(0);
  sub_C0DC();
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  sub_AD74(*(v4 + 16), *(v4 + 24));

  sub_C308();
  sub_C0B8();
  (*(v8 + 8))(v4 + v7 + v5);
  sub_C2F0();
  sub_C0B8();
  (*(v9 + 8))(v4 + v7 + v5);
  sub_C2D8();
  sub_C0B8();
  (*(v10 + 8))(v4 + v7 + v3);
  sub_C1F8();
  sub_C2C4();

  return _swift_deallocObject(v11);
}

uint64_t sub_B9F0(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v3 = a1(0);
  sub_C17C(v3);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a2(v5, v6, v7);
}

unint64_t sub_BA6C()
{
  result = qword_20608;
  if (!qword_20608)
  {
    sub_2240(&qword_20600, &qword_157A8);
    sub_BCEC(&qword_20610, &type metadata accessor for SimpleItemStandardView, &protocol conformance descriptor for SimpleItemStandardView);
    sub_2838(&qword_20230, &qword_20238, qword_15460, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20608);
  }

  return result;
}

uint64_t sub_BB24(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_C1D8(a1, a2, a3, a4);
  sub_C0CC();
  v5 = sub_C218();
  v6(v5);
  return v4;
}

uint64_t sub_BB70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_C2B0();
  type metadata accessor for SiriHelpSnippetView(0);
  sub_C0DC();
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);

  sub_C308();
  sub_C0B8();
  (*(v8 + 8))(v4 + v7 + v5);
  sub_C2F0();
  sub_C0B8();
  (*(v9 + 8))(v4 + v7 + v5);
  sub_C2D8();
  sub_C0B8();
  (*(v10 + 8))(v4 + v7 + v3);
  sub_C1F8();
  sub_C2C4();

  return _swift_deallocObject(v11);
}

uint64_t sub_BC88()
{
  v1 = type metadata accessor for SiriHelpSnippetView(0);
  sub_C17C(v1);
  v2 = *(v0 + 16);

  return sub_5F7C(v2);
}

uint64_t sub_BCEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_BD34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_C2B0();
  sub_141F8();
  sub_C164();
  v6 = v5;
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = *(v8 + 64);
  type metadata accessor for SiriHelpSnippetView(0);
  sub_C0DC();
  v11 = (v7 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = sub_C270();
  v13(v12);

  sub_C308();
  sub_C0B8();
  (*(v14 + 8))(v4 + v11 + v6);
  sub_C2F0();
  sub_C0B8();
  (*(v15 + 8))(v4 + v11 + v6);
  sub_C2D8();
  sub_C0B8();
  (*(v16 + 8))(v4 + v11 + v3);
  sub_C2C4();

  return _swift_deallocObject(v17);
}

void sub_BEAC()
{
  v1 = sub_141F8();
  sub_C154(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for SiriHelpSnippetView(0);
  sub_C17C(v6);
  v8 = (v0 + ((v3 + v5 + *(v7 + 80)) & ~*(v7 + 80)));

  sub_39D0((v0 + v3), v8);
}

void sub_BF6C()
{
  v0 = type metadata accessor for SiriHelpSnippetView(0);
  sub_C17C(v0);
  v1 = sub_C224();
  sub_5DF0(v1, v2);
}

uint64_t sub_BFCC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_C0F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(v4 - 80) = a3;
  *(v4 - 72) = v3;
  *(v4 - 104) = a1;
  *(v4 - 96) = a2;
  *(v4 - 112) = 0;
  *(v4 - 144) = 0u;
  *(v4 - 128) = 0u;
  *(v4 - 160) = 0;
  *(v4 - 192) = 0u;
  *(v4 - 176) = 0u;
  *(v4 - 208) = 0;
  *(v4 - 240) = 0u;
  *(v4 - 224) = 0u;
  *(v4 - 256) = 0;
  *(v4 - 272) = 0u;
  *(v4 - 288) = 0u;

  return PrimaryHeaderRichView.init(text1:text2:text3:text4:thumbnail:addTint:)(v4 - 104, v4 - 144, v4 - 192, v4 - 240, v4 - 288, 0);
}

uint64_t sub_C1B8@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  v1 = a1 - 1;
  if (v1 < 0)
  {
    v1 = -1;
  }

  return (v1 + 1);
}

uint64_t sub_C1D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_2104(a3, a4);
}

uint64_t sub_C254()
{
}

uint64_t sub_C290(uint64_t a1)
{

  return sub_B520(v2, a1 + v1);
}

uint64_t sub_C2D8()
{

  return sub_14B98();
}

uint64_t sub_C2F0()
{

  return sub_14A68();
}

uint64_t sub_C308()
{

  return sub_14328();
}

uint64_t SiriSuggestionsUIPlugin.__allocating_init()()
{
  sub_14418();
  v0 = sub_14408();
  result = swift_allocObject();
  *(result + 16) = v0;
  return result;
}

uint64_t SiriSuggestionsUIPlugin.__allocating_init(suggestionsFacade:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t SiriSuggestionsUIPlugin.snippet(for:mode:idiom:)(uint64_t a1)
{
  v2 = v1;
  v153 = a1;
  v143 = type metadata accessor for SiriHelpSnippetView(0);
  sub_C0CC();
  __chkstk_darwin(v3, v4);
  sub_DAA8();
  v144 = v5;
  v6 = sub_DB40();
  v145 = type metadata accessor for SiriHelpSMARTView(v6);
  sub_C0CC();
  __chkstk_darwin(v7, v8);
  sub_DAA8();
  v146 = v9;
  sub_DB40();
  sub_14328();
  sub_DA94();
  v148 = v11;
  v149 = v10;
  __chkstk_darwin(v10, v12);
  sub_DB20();
  v137 = v13;
  sub_DB9C();
  __chkstk_darwin(v14, v15);
  v147 = &v133 - v16;
  v17 = sub_DB40();
  v140 = type metadata accessor for SiriFeatureAnnouncementSnippetView(v17);
  sub_C0CC();
  __chkstk_darwin(v18, v19);
  sub_DAA8();
  v141 = v20;
  sub_DB40();
  v142 = sub_143D8();
  sub_DA94();
  v139 = v21;
  __chkstk_darwin(v22, v23);
  sub_DAA8();
  v138 = v24;
  v25 = sub_DB40();
  type metadata accessor for SiriHintsSnippetView(v25);
  sub_C0CC();
  __chkstk_darwin(v26, v27);
  v29 = &v133 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_14368();
  sub_DA94();
  v32 = v31;
  __chkstk_darwin(v33, v34);
  sub_DB20();
  v150 = v35;
  sub_DB9C();
  __chkstk_darwin(v36, v37);
  v151 = (&v133 - v38);
  sub_DB40();
  v154 = sub_143E8();
  sub_DA94();
  v40 = v39;
  __chkstk_darwin(v41, v42);
  sub_DB20();
  v135 = v43;
  sub_DB9C();
  __chkstk_darwin(v44, v45);
  v136 = &v133 - v46;
  sub_DB9C();
  __chkstk_darwin(v47, v48);
  v50 = &v133 - v49;
  if (qword_20180 != -1)
  {
    sub_DAEC();
    swift_once();
  }

  v51 = sub_14568();
  v152 = sub_1750(v51, static Logger.uiCategory);
  v52 = sub_14548();
  v53 = sub_14D98();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = sub_DB84();
    v134 = v32;
    *v54 = 0;
    _os_log_impl(&dword_0, v52, v53, "Running Suggestions UI plugin", v54, 2u);
    v32 = v134;
    sub_DB34();
  }

  v55 = *(v2 + 16);
  if (v55)
  {
    v56 = v40 + 16;
    v57 = v154;
    v134 = *(v40 + 16);
    v134(v50, v153, v154);
    v58 = (*(v40 + 88))(v50, v57);
    if (v58 == enum case for SuggestionsRFDataModels.hintsView(_:))
    {
      (*(v40 + 96))(v50, v57);
      v59 = v151;
      (*(v32 + 4))(v151, v50, v30);
      v60 = v150;
      (*(v32 + 2))(v150, v59, v30);
      v61 = swift_retain_n();
      sub_DF00(v61, v60, v29);
      sub_D9C8(&qword_206A0, type metadata accessor for SiriHintsSnippetView, &unk_158B0);
      sub_14828();
      sub_DB4C();

      sub_D928(v29, type metadata accessor for SiriHintsSnippetView);
      (*(v32 + 1))(v59, v30);
    }

    else if (v58 == enum case for SuggestionsRFDataModels.helpView(_:))
    {
      v68 = sub_DB58();
      v69(v68);
      v71 = v147;
      v70 = v148;
      v72 = v50;
      v73 = v149;
      (*(v148 + 32))(v147, v72, v149);

      v74 = sub_142D8();
      v75 = sub_14548();
      v76 = sub_14D98();
      v77 = sub_DB68(v76);
      if (v74)
      {
        if (v77)
        {
          v78 = sub_DB84();
          sub_DBA8(v78);
          sub_DB00(&dword_0, v79, v80, "returning Siri Help SMART snippet");
          sub_DB34();
        }

        v81 = v146;
        (*(v70 + 16))(v146, v71, v73);
        v60 = sub_142F8();
        v82 = v145;
        v83 = (v81 + *(v145 + 20));
        sub_14C98();
        sub_20B8();
        *v83 = sub_14638();
        v83[1] = v84;
        v85 = v81 + *(v82 + 24);
        v157 = v60 & 1;
        sub_14948();
        v86 = v156;
        *v85 = v155;
        *(v85 + 8) = v86;
        sub_14A58();
        sub_14B88();
        sub_DAD4();
        sub_D9C8(v87, v88, &unk_15554);
        sub_14828();
        sub_DB4C();

        sub_DABC();
        v90 = v81;
      }

      else
      {
        if (v77)
        {
          v98 = sub_DB84();
          sub_DBA8(v98);
          sub_DB00(&dword_0, v99, v100, "returning old RF2 snippet");
          sub_DB34();
        }

        v101 = v144;
        (*(v70 + 16))(v144 + *(v143 + 20), v71, v73);
        v60 = sub_14C98();
        sub_20B8();
        *v101 = sub_14638();
        v101[1] = v102;
        sub_14A58();
        sub_14B88();
        sub_D9C8(&qword_20690, type metadata accessor for SiriHelpSnippetView, &unk_15504);
        sub_14828();
        sub_DB4C();

        v89 = type metadata accessor for SiriHelpSnippetView;
        v90 = v101;
      }

      sub_D928(v90, v89);
      (*(v70 + 8))(v71, v73);
    }

    else if (v58 == enum case for SuggestionsRFDataModels.announcementsView(_:))
    {
      v91 = sub_DB58();
      v92(v91);
      v94 = v138;
      v93 = v139;
      v95 = v142;
      (*(v139 + 32))(v138, v50, v142);
      v96 = v141;
      (*(v93 + 16))(v141 + *(v140 + 20), v94, v95);
      v157 = 1;

      sub_14948();
      v97 = v156;
      *v96 = v155;
      *(v96 + 8) = v97;
      sub_14A58();
      sub_D9C8(&qword_20698, type metadata accessor for SiriFeatureAnnouncementSnippetView, &unk_15A24);
      v60 = sub_14828();

      sub_D928(v96, type metadata accessor for SiriFeatureAnnouncementSnippetView);
      (*(v93 + 8))(v94, v95);
    }

    else if (v58 == enum case for SuggestionsRFDataModels.expandedSuggestionsView(_:))
    {
      v103 = sub_DB58();
      v104(v103);
      v105 = v148;
      v106 = v137;
      v107 = v50;
      v108 = v149;
      (*(v148 + 32))(v137, v107, v149);

      v109 = sub_14548();
      v110 = sub_14D98();
      if (sub_DB68(v110))
      {
        v111 = sub_DB84();
        sub_DBA8(v111);
        sub_DB00(&dword_0, v112, v113, "returning Siri Help SMART snippet with expanded suggestions");
        sub_DB34();
      }

      v114 = v146;
      (*(v105 + 16))(v146, v106, v108);
      v115 = v145;
      v116 = (v114 + *(v145 + 20));
      sub_14C98();
      sub_20B8();
      *v116 = sub_14638();
      v116[1] = v117;
      v60 = v114 + *(v115 + 24);
      v157 = 0;
      sub_14948();
      v118 = v156;
      *v60 = v155;
      *(v60 + 8) = v118;
      sub_14A58();
      sub_14B88();
      sub_DAD4();
      sub_D9C8(v119, v120, &unk_15554);
      sub_14828();
      sub_DB4C();

      sub_DABC();
      sub_D928(v114, v121);
      (*(v105 + 8))(v106, v108);
    }

    else
    {
      v122 = v136;
      v123 = v154;
      v124 = v134;
      v134(v136, v153, v154);
      v153 = v55;

      v125 = sub_14548();
      v126 = sub_14DB8();
      if (os_log_type_enabled(v125, v126))
      {
        v127 = swift_slowAlloc();
        LODWORD(v152) = v126;
        v128 = v127;
        v151 = swift_slowAlloc();
        v155 = v151;
        *v128 = 136315138;
        v124(v135, v122, v123);
        sub_14CF8();
        v129 = sub_DB4C();
        v131 = v130;
        v132 = *(v40 + 8);
        v132(v129, v123);
        sub_D340(v56, v131, &v155);
        sub_DB4C();

        *(v128 + 4) = v56;
        _os_log_impl(&dword_0, v125, v152, "Unknown model type: %s", v128, 0xCu);
        sub_206C(v151);
        sub_DB34();

        sub_DB34();
      }

      else
      {

        v132 = *(v40 + 8);
        v132(v122, v123);
      }

      v60 = sub_14828();

      v132(v50, v123);
    }

    return v60;
  }

  else
  {
    v62 = sub_14548();
    v63 = sub_14DB8();
    if (sub_DB68(v63))
    {
      v64 = sub_DB84();
      sub_DBA8(v64);
      sub_DB00(&dword_0, v65, v66, "Unable to fetch suggestions from facade. Check initalisation errors");
      sub_DB34();
    }

    return sub_14828();
  }
}

uint64_t SiriSuggestionsUIPlugin.__deallocating_deinit()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_D224@<X0>(uint64_t *a1@<X8>)
{
  result = SiriSuggestionsUIPlugin.__allocating_init()();
  *a1 = result;
  return result;
}

uint64_t sub_D270(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_D2E4(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_D340(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_D340(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_D404(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_DA34(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_206C(v11);
  return v7;
}

unint64_t sub_D404(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_D504(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_14E28();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_D504(uint64_t a1, unint64_t a2)
{
  v3 = sub_D550(a1, a2);
  sub_D668(&off_1D1D8);
  return v3;
}

char *sub_D550(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_14D18())
  {
    result = sub_D74C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_14E08();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = sub_14E28();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_D668(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_D7BC(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_D74C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_2104(&qword_20748, qword_15868);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_D7BC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_2104(&qword_20748, qword_15868);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_D8B0(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_D8C0(uint64_t a1)
{
  v2 = sub_2104(&qword_20680, &qword_15800);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_D928(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_C0CC();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_D9C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_DA34(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_DB00(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

BOOL sub_DB68(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_DB84()
{

  return swift_slowAlloc();
}

uint64_t sub_DBC8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_14368();
    v9 = a1 + *(a3 + 40);

    return sub_2990(v9, a2, v8);
  }
}

uint64_t sub_DC64(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_14368();
    v8 = v5 + *(a4 + 40);

    return sub_2AD0(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for SiriHintsSnippetView(uint64_t a1)
{
  result = qword_207A8;
  if (!qword_207A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_DD30(uint64_t a1)
{
  sub_2BE4(319);
  if (v1 <= 0x3F)
  {
    sub_DE34(319, &qword_207B8, &type metadata for String);
    if (v2 <= 0x3F)
    {
      sub_DE34(319, &qword_207C0, &type metadata for CGFloat);
      if (v3 <= 0x3F)
      {
        sub_DE80(319);
        if (v4 <= 0x3F)
        {
          sub_14418();
          if (v5 <= 0x3F)
          {
            sub_14368();
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

void sub_DE34(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_14978();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_DE80(uint64_t a1)
{
  if (!qword_207C8)
  {
    sub_2240(&unk_207D0, &qword_158A8);
    v1 = sub_14978();
    if (!v2)
    {
      atomic_store(v1, &qword_207C8);
    }
  }
}

uint64_t sub_DF00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_14C98();
  sub_10FEC(&qword_20188);
  v6 = sub_14638();
  *a3 = v6;
  *(a3 + 8) = v7;
  sub_11030(v6, v7, v8, v9, v10, v11, v12, v13, v39, 70);
  v14 = sub_14948();
  *(a3 + 16) = v43;
  *(a3 + 32) = v44;
  sub_11030(v14, v15, v16, v17, v18, v19, v20, v21, v40, 17);
  v22 = sub_14948();
  *(a3 + 40) = v43;
  *(a3 + 56) = v44;
  sub_11030(v22, &type metadata for CGFloat, v23, v24, v25, v26, v27, v28, v41, 0);
  sub_14948();
  *(a3 + 64) = v43;
  v29 = sub_2104(&unk_207D0, &qword_158A8);
  sub_11030(v29, v29, v30, v31, v32, v33, v34, v35, v42, 0);
  sub_14948();
  *(a3 + 80) = v43;
  *(a3 + 88) = BYTE8(v43);
  *(a3 + 96) = v44;
  *(a3 + 104) = a1;
  v36 = *(type metadata accessor for SiriHintsSnippetView(0) + 40);
  sub_14368();
  sub_C0CC();
  return (*(v37 + 32))(a3 + v36, a2);
}

uint64_t sub_E080@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v97 = a1;
  type metadata accessor for SiriHintsSnippetView(0);
  sub_C0DC();
  v95 = v4;
  __chkstk_darwin(v5, v6);
  v98 = v7;
  v8 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2104(&qword_20818, &qword_15900);
  sub_C17C(v9);
  sub_10FE0();
  __chkstk_darwin(v10, v11);
  v13 = &v84 - v12;
  v14 = sub_14468();
  sub_DA94();
  v16 = v15;
  v18 = *(v17 + 64);
  v21 = __chkstk_darwin(v19, v20);
  v22 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21, v23);
  v25 = &v84 - v24;
  sub_14338();
  if (sub_2990(v13, 1, v14) == 1)
  {
    sub_10E90(v13, &qword_20818, &qword_15900);
    sub_2104(&qword_20820, &qword_15908);
    v96 = &v84;
    sub_DA94();
    v93 = v27;
    v94 = v26;
    sub_10FE0();
    __chkstk_darwin(v28, v29);
    v91 = &v84 - v30;
    v31 = sub_2104(&qword_20828, &qword_15910);
    v92 = &v84;
    sub_C0CC();
    sub_10FE0();
    __chkstk_darwin(v32, v33);
    sub_1100C();
    v34 = *(v2 + 32);
    v101 = *(v2 + 16);
    *&v102 = v34;
    sub_2104(&qword_20830, &qword_15918);
    sub_14958();
    v35 = sub_14D28();

    sub_104B0(v2, v8);
    v36 = (*(v95 + 80) + 16) & ~*(v95 + 80);
    v37 = swift_allocObject();
    sub_10518(v8, v37 + v36);
    v95 = sub_2104(&qword_20838, &qword_15930);
    v38 = v8;
    v39 = (v1 + *(v95 + 36));
    sub_145E8();
    sub_14D88();
    *v39 = &unk_15928;
    v39[1] = v37;
    *v1 = v35;
    v40 = *(v3 + 72);
    *&v101 = *(v3 + 64);
    *(&v101 + 1) = v40;
    sub_2104(&qword_20840, &qword_15938);
    sub_14958();
    v41 = *(v3 + 88);
    v42 = *(v3 + 96);
    *&v101 = *(v3 + 80);
    BYTE8(v101) = v41;
    *&v102 = v42;
    sub_2104(&qword_20848, &qword_15940);
    sub_14958();
    sub_149B8();
    sub_145B8();
    v43 = (v1 + *(sub_2104(&qword_20850, &qword_15948) + 36));
    v44 = v102;
    *v43 = v101;
    v43[1] = v44;
    v43[2] = v103;
    v45 = sub_147C8();
    KeyPath = swift_getKeyPath();
    v47 = (v1 + *(v31 + 36));
    *v47 = KeyPath;
    v47[1] = v45;
    sub_104B0(v3, v38);
    v48 = swift_allocObject();
    sub_10518(v38, v48 + v36);
    v49 = sub_10758();
    v50 = v91;
    sub_148D8();

    sub_10E90(v1, &qword_20828, &qword_15910);
    sub_2104(&qword_20880, &qword_15988);
    sub_C0CC();
    sub_10FE0();
    __chkstk_darwin(v51, v52);
    (*(v93 + 16))(&v84 - v53, v50, v94);
    swift_storeEnumTagMultiPayload();
    sub_2104(&qword_20888, &qword_15990);
    v54 = sub_10858();
    v99 = v95;
    v100 = v54;
    swift_getOpaqueTypeConformance2();
    v99 = v31;
    v100 = v49;
    swift_getOpaqueTypeConformance2();
    sub_14728();
    v55 = sub_1101C();
    return v56(v55);
  }

  else
  {
    v86 = v8;
    v87 = *(v16 + 4);
    v87(v25, v13, v14);
    sub_2104(&qword_20888, &qword_15990);
    v96 = &v84;
    sub_DA94();
    v92 = v59;
    v93 = v58;
    sub_10FE0();
    __chkstk_darwin(v60, v61);
    v88 = &v84 - v62;
    v85 = sub_2104(&qword_20838, &qword_15930);
    v90 = &v84;
    sub_C0CC();
    sub_10FE0();
    __chkstk_darwin(v63, v64);
    sub_1100C();
    v65 = v25;
    v94 = v25;
    sub_14448();
    v66 = v16;
    v84 = sub_14D28();

    v67 = v14;
    v68 = v86;
    sub_104B0(v3, v86);
    v91 = v66;
    v69 = *(v66 + 2);
    v89 = v67;
    v69(v22, v65, v67);
    v70 = (*(v95 + 80) + 16) & ~*(v95 + 80);
    v95 = v3;
    v71 = (v70 + v98 + v66[80]) & ~v66[80];
    v72 = swift_allocObject();
    sub_10518(v68, v72 + v70);
    v87((v72 + v71), v22, v67);
    v73 = v85;
    v74 = (v1 + *(v85 + 36));
    sub_145E8();
    sub_14D88();
    *v74 = &unk_159A0;
    v74[1] = v72;
    *v1 = v84;
    sub_104B0(v95, v68);
    v75 = swift_allocObject();
    sub_10518(v68, v75 + v70);
    v76 = sub_10858();
    v77 = v88;
    sub_148D8();

    sub_10E90(v1, &qword_20838, &qword_15930);
    sub_2104(&qword_20880, &qword_15988);
    sub_C0CC();
    sub_10FE0();
    __chkstk_darwin(v78, v79);
    sub_1100C();
    (v92[2])(v1, v77, v93);
    swift_storeEnumTagMultiPayload();
    sub_2104(&qword_20820, &qword_15908);
    *&v101 = v73;
    *(&v101 + 1) = v76;
    swift_getOpaqueTypeConformance2();
    v80 = sub_2240(&qword_20828, &qword_15910);
    v81 = sub_10758();
    *&v101 = v80;
    *(&v101 + 1) = v81;
    swift_getOpaqueTypeConformance2();
    sub_14728();
    v82 = sub_1101C();
    v83(v82);
    return (*(v91 + 1))(v94, v89);
  }
}

uint64_t sub_EA38(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  v3 = sub_14488();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  sub_14D78();
  v2[17] = sub_14D68();
  v5 = sub_14D58();

  return _swift_task_switch(sub_EB2C, v5, v4);
}

uint64_t sub_EB2C()
{
  v1 = v0[16];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[12];

  sub_14E18(18);

  sub_14458();
  v5 = sub_14478();
  v7 = v6;
  (*(v3 + 8))(v1, v2);
  v22._countAndFlagsBits = v5;
  v22._object = v7;
  sub_14D08(v22);

  v8 = *(v4 + 40);
  v9 = *(v4 + 48);
  v10 = *(v4 + 56);
  v0[2] = v8;
  v0[3] = v9;
  v0[4] = v10;
  v0[8] = 0xD000000000000010;
  v0[9] = 0x8000000000017670;
  sub_2104(&qword_20830, &qword_15918);
  sub_14968();
  v0[5] = v8;
  v0[6] = v9;
  v0[7] = v10;
  sub_14958();
  v11 = v0[10];
  v12 = v0[11];
  v13 = sub_2104(&qword_20570, &qword_15730);
  sub_C17C(v13);
  swift_task_alloc();
  sub_14A78();
  v14 = sub_14A88();
  v15 = objc_allocWithZone(sub_11094(v14));
  v16 = sub_1105C(v11, v12);

  if (*v4)
  {
    v17 = *v4;
    sub_14C88();

    v18 = v0[1];

    return v18();
  }

  else
  {
    sub_14C98();
    v20 = sub_10FEC(&qword_20188);
    return sub_1103C(v20);
  }
}

void sub_ED68(uint64_t a1)
{
  v2 = sub_14128();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SiriHintsSnippetView(0);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_20180 != -1)
  {
    swift_once();
  }

  v11 = sub_14568();
  sub_1750(v11, static Logger.uiCategory);
  sub_104B0(a1, v10);
  v12 = sub_14548();
  v13 = sub_14DA8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v36 = v6;
    v37[0] = v15;
    v16 = v15;
    *v14 = 136315138;
    v17 = *(v10 + 7);
    v38 = *(v10 + 40);
    v39 = v17;
    sub_2104(&qword_20830, &qword_15918);
    sub_14958();
    v18 = v37[1];
    v19 = v37[2];
    sub_10E34(v10);
    v20 = sub_D340(v18, v19, v37);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_0, v12, v13, "Component was tapped for suggestion with loggingId: %s", v14, 0xCu);
    sub_206C(v16);
    v6 = v36;
  }

  else
  {

    sub_10E34(v10);
  }

  (*(v3 + 104))(v6, enum case for Command.noOp(_:), v2);
  v21 = sub_14AA8();
  __chkstk_darwin(v21, v22);
  (*(v24 + 104))(&v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for InteractionType.buttonTapped(_:));
  v25 = sub_2104(&qword_20570, &qword_15730);
  __chkstk_darwin(v25 - 8, v26);
  v28 = &v35 - v27;
  sub_14A78();
  v29 = sub_14A88();
  sub_2AD0(v28, 0, 1, v29);
  v30 = *(a1 + 56);
  v38 = *(a1 + 40);
  v39 = v30;
  sub_2104(&qword_20830, &qword_15918);
  sub_14958();
  v31 = objc_allocWithZone(sub_14BE8());
  v32 = sub_14BD8();
  if (*a1)
  {
    v33 = v32;
    v34 = *a1;
    sub_14C88();
  }

  else
  {
    sub_14C98();
    sub_10944(&qword_20188, &type metadata accessor for Context, &protocol conformance descriptor for Context);
    sub_14628();
    __break(1u);
  }
}

uint64_t sub_F1F8(uint64_t a1)
{
  v1[30] = a1;
  v2 = sub_14528();
  v1[31] = v2;
  v1[32] = *(v2 - 8);
  v1[33] = swift_task_alloc();
  v3 = sub_144E8();
  v1[34] = v3;
  v1[35] = *(v3 - 8);
  v1[36] = swift_task_alloc();
  v4 = sub_144C8();
  v1[37] = v4;
  v1[38] = *(v4 - 8);
  v1[39] = swift_task_alloc();
  v5 = sub_14508();
  v1[40] = v5;
  v1[41] = *(v5 - 8);
  v1[42] = swift_task_alloc();
  sub_2104(&qword_20890, &qword_159B0);
  v1[43] = swift_task_alloc();
  v6 = sub_14198();
  v1[44] = v6;
  v1[45] = *(v6 - 8);
  v1[46] = swift_task_alloc();
  v1[47] = type metadata accessor for SiriHintsSnippetView(0);
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  sub_2104(&qword_20898, &qword_159B8);
  v1[50] = swift_task_alloc();
  v7 = sub_14018();
  v1[51] = v7;
  v1[52] = *(v7 - 8);
  v1[53] = swift_task_alloc();
  sub_14D78();
  v1[54] = sub_14D68();
  v9 = sub_14D58();
  v1[55] = v9;
  v1[56] = v8;

  return _swift_task_switch(sub_F564, v9, v8);
}

uint64_t sub_F564()
{
  v30 = v0;
  v2 = v0[50];
  v1 = v0[51];
  sub_14358();
  sub_13FF8();

  if (sub_2990(v2, 1, v1) == 1)
  {
    sub_10E90(v0[50], &qword_20898, &qword_159B8);
    if (qword_20180 != -1)
    {
      sub_1884(&qword_20180);
    }

    v3 = v0[49];
    v4 = v0[30];
    v5 = sub_14568();
    sub_1750(v5, static Logger.uiCategory);
    sub_104B0(v4, v3);
    v6 = sub_14548();
    v7 = sub_14DB8();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[49];
    if (v8)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v29 = v11;
      *v10 = 136315138;
      v12 = sub_14358();
      v14 = v13;
      sub_10E34(v9);
      v15 = sub_D340(v12, v14, &v29);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_0, v6, v7, "unable to create requestID from %s", v10, 0xCu);
      sub_206C(v11);
      sub_1107C(v11);
      sub_1107C(v10);
    }

    else
    {

      sub_10E34(v9);
    }

    sub_14008();
  }

  else
  {
    (*(v0[52] + 32))(v0[53], v0[50], v0[51]);
  }

  v17 = v0[41];
  v16 = v0[42];
  v18 = v0[40];
  v19 = enum case for SiriHintsMode.display(_:);
  sub_14498();
  sub_C0CC();
  (*(v20 + 104))(v16, v19);
  (*(v17 + 104))(v16, enum case for DeliveryVehicle.siriHints(_:), v18);
  sub_14348();
  v22 = v21;
  v23 = swift_task_alloc();
  v0[57] = v23;
  *v23 = v0;
  v23[1] = sub_F860;
  v24 = v0[53];
  v26 = v0[42];
  v25 = v0[43];
  v27.n128_u64[0] = v22;

  return SiriSuggestionsFacade.fetchTopPreGeneratedSiriHint(requestUUID:forDeliveryVehicle:timeoutSeconds:)(v25, v24, v26, v27);
}

uint64_t sub_F860()
{
  v1 = *v0;
  v2 = *(*v0 + 336);
  v3 = *(*v0 + 328);
  v4 = *(*v0 + 320);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 448);
  v6 = *(v1 + 440);

  return _swift_task_switch(sub_F9E4, v6, v5);
}

uint64_t sub_F9E4()
{
  v67 = v0;
  v1 = *(v0 + 344);
  v2 = *(v0 + 352);

  if (sub_2990(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 344);
    (*(*(v0 + 416) + 8))(*(v0 + 424), *(v0 + 408));
    sub_10E90(v3, &qword_20890, &qword_159B0);
  }

  else
  {
    v4 = *(v0 + 304);
    v5 = *(v0 + 312);
    v6 = *(v0 + 288);
    v7 = *(v0 + 296);
    v8 = *(v0 + 280);
    v58 = *(v0 + 272);
    v60 = v7;
    v61 = *(v0 + 264);
    v9 = *(v0 + 240);
    v62 = *(v0 + 256);
    v63 = *(v0 + 248);
    (*(*(v0 + 360) + 32))(*(v0 + 368), *(v0 + 344), *(v0 + 352));
    sub_14178();
    sub_144A8();
    v59 = *(v4 + 8);
    v59(v5, v7);
    v10 = sub_144D8();
    v12 = v11;
    (*(v8 + 8))(v6, v58);
    v13 = *(v9 + 32);
    *(v0 + 16) = *(v9 + 16);
    *(v0 + 32) = v13;
    *(v0 + 136) = v10;
    *(v0 + 144) = v12;
    sub_2104(&qword_20830, &qword_15918);
    sub_14968();
    sub_14178();
    sub_144B8();
    v59(v5, v60);
    v14 = sub_14518();
    v16 = v15;
    (*(v62 + 8))(v61, v63);
    v18 = *(v9 + 40);
    v17 = *(v9 + 48);
    v19 = *(v9 + 56);
    *(v0 + 40) = v18;
    *(v0 + 48) = v17;
    *(v0 + 56) = v19;
    *(v0 + 152) = v14;
    *(v0 + 160) = v16;
    sub_14968();
    v20 = *(v9 + 72);
    *(v0 + 168) = *(v9 + 64);
    *(v0 + 176) = v20;
    *(v0 + 232) = 0x7FF0000000000000;
    sub_2104(&qword_20840, &qword_15938);
    sub_14968();
    v21 = *(v9 + 88);
    v22 = *(v9 + 96);
    *(v0 + 64) = *(v9 + 80);
    *(v0 + 72) = v21;
    *(v0 + 80) = v22;
    *(v0 + 216) = 0;
    *(v0 + 224) = 1;
    sub_2104(&qword_20848, &qword_15940);
    sub_14968();
    if (qword_20180 != -1)
    {
      sub_1884(&qword_20180);
    }

    v23 = *(v0 + 384);
    v24 = *(v0 + 240);
    v25 = sub_14568();
    sub_1750(v25, static Logger.uiCategory);
    sub_104B0(v24, v23);
    v26 = sub_14548();
    v27 = sub_14D98();
    v28 = os_log_type_enabled(v26, v27);
    v29 = *(v0 + 384);
    if (v28)
    {
      v30 = swift_slowAlloc();
      v64 = v17;
      v65 = swift_slowAlloc();
      v31 = v65;
      *v30 = 136315138;
      v32 = *(v29 + 56);
      *(v0 + 112) = *(v29 + 40);
      *(v0 + 128) = v32;
      sub_14958();
      v33 = v19;
      v34 = v18;
      v35 = *(v0 + 200);
      v36 = *(v0 + 208);
      sub_10E34(v29);
      v37 = sub_D340(v35, v36, &v65);
      v18 = v34;
      v19 = v33;

      *(v30 + 4) = v37;
      _os_log_impl(&dword_0, v26, v27, "Showing suggestion with loggingId - %s", v30, 0xCu);
      sub_206C(v31);
      v38 = v31;
      v17 = v64;
      sub_1107C(v38);
      sub_1107C(v30);
    }

    else
    {

      sub_10E34(v29);
    }

    v39 = *(v0 + 240);
    v40 = sub_14188();
    v40();

    v65 = 0x746E694869726953;
    v66 = 0xE900000000000023;
    *(v0 + 88) = v18;
    *(v0 + 96) = v17;
    *(v0 + 104) = v19;
    sub_14958();
    sub_14D08(*(v0 + 184));

    v42 = v65;
    v41 = v66;
    v43 = sub_2104(&qword_20570, &qword_15730);
    sub_C17C(v43);
    swift_task_alloc();
    sub_14A78();
    v44 = sub_14A88();
    v45 = objc_allocWithZone(sub_11094(v44));
    v46 = sub_1105C(v42, v41);

    v47 = *v39;
    if (!*v39)
    {
      sub_14C98();
      v57 = sub_10FEC(&qword_20188);
      return sub_1103C(v57);
    }

    v49 = *(v0 + 416);
    v48 = *(v0 + 424);
    v50 = *(v0 + 408);
    v52 = *(v0 + 360);
    v51 = *(v0 + 368);
    v53 = *(v0 + 352);
    v54 = v47;
    sub_14C88();

    (*(v52 + 8))(v51, v53);
    (*(v49 + 8))(v48, v50);
  }

  v55 = *(v0 + 8);

  return v55();
}

void sub_FFE8(uint64_t a1)
{
  v2 = sub_14128();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SiriHintsSnippetView(0);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_20180 != -1)
  {
    swift_once();
  }

  v11 = sub_14568();
  sub_1750(v11, static Logger.uiCategory);
  sub_104B0(a1, v10);
  v12 = sub_14548();
  v13 = sub_14DA8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v35 = v6;
    v36._countAndFlagsBits = v15;
    v16 = v15;
    *v14 = 136315138;
    v17 = *(v10 + 7);
    v37 = *(v10 + 40);
    v38 = v17;
    sub_2104(&qword_20830, &qword_15918);
    sub_14958();
    v18 = v39;
    v19 = v40;
    sub_10E34(v10);
    v20 = sub_D340(v18, v19, &v36._countAndFlagsBits);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_0, v12, v13, "Component was tapped for suggestion with loggingID: %s", v14, 0xCu);
    sub_206C(v16);
    v6 = v35;
  }

  else
  {

    sub_10E34(v10);
  }

  (*(v3 + 104))(v6, enum case for Command.noOp(_:), v2);
  v21 = sub_14AA8();
  __chkstk_darwin(v21, v22);
  (*(v24 + 104))(&v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for InteractionType.buttonTapped(_:));
  v25 = sub_2104(&qword_20570, &qword_15730);
  __chkstk_darwin(v25 - 8, v26);
  v28 = &v35 - v27;
  sub_14A78();
  v29 = sub_14A88();
  sub_2AD0(v28, 0, 1, v29);
  v39 = 0x746E694869726953;
  v40 = 0xE900000000000023;
  v30 = *(a1 + 56);
  v37 = *(a1 + 40);
  v38 = v30;
  sub_2104(&qword_20830, &qword_15918);
  sub_14958();
  sub_14D08(v36);

  v31 = objc_allocWithZone(sub_14BE8());
  v32 = sub_14BD8();
  if (*a1)
  {
    v33 = v32;
    v34 = *a1;
    sub_14C88();
  }

  else
  {
    sub_14C98();
    sub_10944(&qword_20188, &type metadata accessor for Context, &protocol conformance descriptor for Context);
    sub_14628();
    __break(1u);
  }
}

uint64_t sub_104B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriHintsSnippetView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10518(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriHintsSnippetView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1057C()
{
  v2 = type metadata accessor for SiriHintsSnippetView(0);
  sub_C17C(v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10644;

  return sub_F1F8(v0 + v4);
}

uint64_t sub_10644()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_10758()
{
  result = qword_20858;
  if (!qword_20858)
  {
    sub_2240(&qword_20828, &qword_15910);
    sub_107D8();
    sub_1098C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20858);
  }

  return result;
}

unint64_t sub_107D8()
{
  result = qword_20860;
  if (!qword_20860)
  {
    sub_2240(&qword_20850, &qword_15948);
    sub_10858();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20860);
  }

  return result;
}

unint64_t sub_10858()
{
  result = qword_20868;
  if (!qword_20868)
  {
    sub_2240(&qword_20838, &qword_15930);
    sub_108F0();
    sub_10944(&qword_20878, &type metadata accessor for _TaskModifier, &protocol conformance descriptor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20868);
  }

  return result;
}

unint64_t sub_108F0()
{
  result = qword_20870;
  if (!qword_20870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20870);
  }

  return result;
}

uint64_t sub_10944(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1098C()
{
  result = qword_20230;
  if (!qword_20230)
  {
    sub_2240(&qword_20238, qword_15460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20230);
  }

  return result;
}

uint64_t sub_109E4()
{
  v1 = (type metadata accessor for SiriHintsSnippetView(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = sub_14468();
  sub_DA94();
  v6 = v5;
  v7 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);
  v8 = (v0 + v2);

  v9 = v1[12];
  sub_14368();
  sub_C0CC();
  (*(v10 + 8))(v8 + v9);
  (*(v6 + 8))(v0 + v7, v4);

  return _swift_deallocObject(v0);
}

uint64_t sub_10B74()
{
  v2 = *(type metadata accessor for SiriHintsSnippetView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_14468();
  sub_C17C(v5);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_10FDC;

  return sub_EA38(v0 + v3, v0 + v7);
}

uint64_t sub_10CA0()
{
  type metadata accessor for SiriHintsSnippetView(0);
  sub_C0DC();
  v3 = (v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));

  v4 = *(v0 + 48);
  sub_14368();
  sub_C0CC();
  (*(v5 + 8))(v3 + v4);

  return _swift_deallocObject(v1);
}

uint64_t sub_10DC4(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for SiriHintsSnippetView(0);
  sub_C17C(v2);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a1(v4);
}

uint64_t sub_10E34(uint64_t a1)
{
  v2 = type metadata accessor for SiriHintsSnippetView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10E90(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_2104(a2, a3);
  sub_C0CC();
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_10EEC()
{
  result = qword_208A0;
  if (!qword_208A0)
  {
    sub_2240(&qword_208A8, &qword_159C0);
    sub_2240(&qword_20838, &qword_15930);
    sub_10858();
    swift_getOpaqueTypeConformance2();
    sub_2240(&qword_20828, &qword_15910);
    sub_10758();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_208A0);
  }

  return result;
}

uint64_t sub_10FEC(unint64_t *a1)
{

  return sub_10944(a1, &type metadata accessor for Context, &protocol conformance descriptor for Context);
}

uint64_t sub_1103C(uint64_t a1)
{

  return sub_14628();
}

uint64_t sub_1105C(uint64_t a1, uint64_t a2)
{

  return RFComponentShown.init(componentName:componentType:componentIndex:)(a1, a2, v2, 0, 1);
}

uint64_t sub_1107C(uint64_t a1)
{
}

uint64_t sub_11094(uint64_t a1)
{
  sub_2AD0(v1, 0, 1, a1);

  return type metadata accessor for RFComponentShown(0);
}

uint64_t sub_110E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
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
    v9 = sub_143D8();
    if (*(*(v9 - 8) + 84) == a2)
    {
      v10 = v9;
      v11 = *(a3 + 20);
    }

    else
    {
      v10 = sub_14A68();
      v11 = *(a3 + 24);
    }

    return sub_2990(a1 + v11, a2, v10);
  }
}

uint64_t sub_111CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = sub_143D8();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = sub_14A68();
      v10 = *(a4 + 24);
    }

    return sub_2AD0(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t type metadata accessor for SiriFeatureAnnouncementSnippetView(uint64_t a1)
{
  result = qword_20908;
  if (!qword_20908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_112E0(uint64_t a1)
{
  sub_2C60();
  if (v1 <= 0x3F)
  {
    sub_143D8();
    if (v2 <= 0x3F)
    {
      sub_14A68();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_11398(uint64_t *a1@<X8>)
{
  v2 = v1;
  v39 = a1;
  v3 = type metadata accessor for SiriFeatureAnnouncementSnippetView(0);
  v4 = sub_C154(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4, v9);
  v38 = sub_2104(&qword_209B0, &qword_15AF0);
  sub_DA94();
  v11 = v10;
  sub_10FE0();
  __chkstk_darwin(v12, v13);
  v15 = &v38 - v14;
  v16 = sub_2104(&qword_209B8, &qword_15AF8);
  sub_DA94();
  v18 = v17;
  sub_10FE0();
  __chkstk_darwin(v19, v20);
  v22 = &v38 - v21;
  sub_13374(v2, &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v24 = swift_allocObject();
  sub_133DC(&v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);
  sub_2104(&qword_209C0, &qword_15B00);
  sub_13A2C();
  sub_14988();
  v25 = sub_14608();
  sub_DA94();
  v27 = v26;
  __chkstk_darwin(v28, v29);
  sub_13ED8();
  v32 = v31 - v30;
  sub_145F8();
  v33 = sub_2838(&qword_209F0, &qword_209B8, &qword_15AF8, &protocol conformance descriptor for Button<A>);
  v34 = sub_13B6C(&qword_209F8, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  sub_148C8();
  (*(v27 + 8))(v32, v25);
  (*(v18 + 8))(v22, v16);
  v40 = v16;
  v41 = v25;
  v42 = v33;
  v43 = v34;
  swift_getOpaqueTypeConformance2();
  v35 = v38;
  v36 = sub_14828();
  (*(v11 + 8))(v15, v35);
  v37 = v39;
  v39[3] = &type metadata for AnyView;
  v37[4] = &protocol witness table for AnyView;
  *v37 = v36;
  sub_13F5C();
}

uint64_t sub_11724(uint64_t a1)
{
  v31 = a1;
  v32 = sub_149C8();
  v35 = *(v32 - 8);
  __chkstk_darwin(v32, v1);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_149E8();
  v33 = *(v4 - 8);
  v34 = v4;
  __chkstk_darwin(v4, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SiriFeatureAnnouncementSnippetView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8, v11);
  v12 = sub_14A08();
  v30 = v12;
  v13 = *(v12 - 8);
  v15 = __chkstk_darwin(v12, v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v18);
  v20 = &v28 - v19;
  sub_13C00();
  v29 = sub_14DD8();
  sub_149F8();
  sub_14A18();
  v21 = *(v13 + 8);
  v21(v17, v12);
  sub_13374(v31, &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v23 = swift_allocObject();
  sub_133DC(&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
  aBlock[4] = sub_13D4C;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_11BAC;
  aBlock[3] = &unk_1D690;
  v24 = _Block_copy(aBlock);

  sub_149D8();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_13E50(&qword_20A10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_2104(&qword_20A18, &qword_15B58);
  sub_13DEC();
  v25 = v32;
  sub_14DE8();
  v26 = v29;
  sub_14DC8();
  _Block_release(v24);

  (*(v35 + 8))(v3, v25);
  (*(v33 + 8))(v7, v34);
  return (v21)(v20, v30);
}

uint64_t sub_11BAC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_11BF0@<X0>(uint64_t *a1@<X8>)
{
  sub_14918();
  v2 = sub_2104(&qword_20A00, &qword_15B20);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v14 - v4;
  sub_14708();
  v6 = sub_14718();
  sub_2AD0(v5, 0, 1, v6);
  v7 = sub_14928();

  sub_B858(v5, &qword_20A00, &qword_15B20);
  v8 = sub_14908();
  v9 = a1 + *(sub_2104(&qword_209C0, &qword_15B00) + 36);
  v10 = *(sub_2104(&qword_209E8, &qword_15B18) + 28);
  v11 = enum case for Image.Scale.medium(_:);
  v12 = sub_14938();
  (*(*(v12 - 8) + 104))(&v9[v10], v11, v12);
  result = swift_getKeyPath();
  *v9 = result;
  *a1 = v7;
  a1[1] = v8;
  return result;
}

void sub_11D74(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = type metadata accessor for SiriFeatureAnnouncementSnippetView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v9 = sub_2104(&qword_20988, &qword_15AA8);
  sub_C17C(v9);
  sub_10FE0();
  __chkstk_darwin(v10, v11);
  sub_13F24();
  sub_143A8();
  if (!v12)
  {
    if (qword_20180 != -1)
    {
      sub_1884(&qword_20180);
    }

    v18 = sub_14568();
    sub_1750(v18, static Logger.uiCategory);
    v19 = sub_14548();
    v20 = sub_14DB8();
    if (!sub_13F08(v20))
    {
      goto LABEL_15;
    }

    v21 = sub_DB84();
    sub_DBA8(v21);
    v24 = "Button label is nil, returning empty announcement view";
    goto LABEL_14;
  }

  v50 = v6;
  v13 = sub_143B8();
  if (v14)
  {
    v15 = v13;
    v16 = v14;
    sub_13FB8();
    v17 = sub_13FC8();
    if (sub_2990(v2, 1, v17) != 1)
    {
      sub_B858(v2, &qword_20988, &qword_15AA8);
      v48 = sub_2104(&qword_20990, &qword_15AB0);
      v49 = v43;
      sub_10FE0();
      __chkstk_darwin(v28, v29);
      sub_13F24();
      v30 = sub_146E8();
      v47 = v43;
      v31 = sub_C17C(v30);
      __chkstk_darwin(v31, v32);
      sub_13ED8();
      sub_146D8();
      sub_146C8();
      sub_146B8();

      sub_146C8();
      sub_146B8();
      sub_146C8();
      sub_146F8();
      v45 = sub_14808();
      v46 = v33;
      v35 = v34;
      v44 = v36;
      KeyPath = swift_getKeyPath();
      sub_13374(v3, &v43[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)]);
      v38 = (*(v50 + 80) + 16) & ~*(v50 + 80);
      v39 = swift_allocObject();
      sub_133DC(&v43[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v39 + v38);
      v40 = (v39 + ((v7 + v38 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v40 = v15;
      v40[1] = v16;
      v41 = (v2 + *(v48 + 36));
      sub_2104(&qword_20998, &qword_15AE8);
      sub_145D8();
      *v41 = KeyPath;
      *v2 = v45;
      *(v2 + 8) = v35;
      *(v2 + 16) = v44 & 1;
      *(v2 + 24) = v46;
      sub_13830();
      v42 = sub_14828();
      sub_B858(v2, &qword_20990, &qword_15AB0);
      *(a1 + 24) = &type metadata for AnyView;
      *(a1 + 32) = &protocol witness table for AnyView;
      *a1 = v42;
      goto LABEL_16;
    }

    sub_B858(v2, &qword_20988, &qword_15AA8);
  }

  else
  {
  }

  if (qword_20180 != -1)
  {
    sub_1884(&qword_20180);
  }

  v25 = sub_14568();
  sub_1750(v25, static Logger.uiCategory);
  v19 = sub_14548();
  v26 = sub_14DB8();
  if (sub_13F08(v26))
  {
    v27 = sub_DB84();
    sub_DBA8(v27);
    v24 = "Button link is nil, returning empty announcement view";
LABEL_14:
    sub_13EE8(&dword_0, v22, v23, v24);
    sub_13F40();
  }

LABEL_15:

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
LABEL_16:
  sub_13F5C();
}

id sub_12234@<X0>(uint64_t a3@<X8>)
{
  v35[1] = a3;
  v3 = sub_2104(&qword_20988, &qword_15AA8);
  v5 = __chkstk_darwin(v3 - 8, v4);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v10 = v35 - v9;
  v11 = sub_14438();
  v12 = *(v11 - 8);
  v14 = __chkstk_darwin(v11, v13);
  v16 = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v17);
  v19 = v35 - v18;
  type metadata accessor for SiriFeatureAnnouncementSnippetView(0);
  sub_14378();
  (*(v12 + 104))(v16, enum case for FeatureType.panIndia(_:), v11);
  v20 = sub_125D8();
  v21 = *(v12 + 8);
  v21(v16, v11);
  v21(v19, v11);
  if (v20)
  {
    result = [objc_opt_self() defaultWorkspace];
    if (!result)
    {
LABEL_11:
      __break(1u);
      return result;
    }

    v23 = result;
    sub_13FB8();
    v24 = sub_13FC8();
    v26 = 0;
    if (sub_2990(v10, 1, v24) != 1)
    {
      sub_13FA8(v25);
      v26 = v27;
      (*(*(v24 - 8) + 8))(v10, v24);
    }

    v28 = sub_14CB8();
    sub_13990(v26, v28, v23);
  }

  result = [objc_opt_self() defaultWorkspace];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v29 = result;
  sub_13FB8();
  v30 = sub_13FC8();
  v32 = 0;
  if (sub_2990(v7, 1, v30) != 1)
  {
    sub_13FA8(v31);
    v32 = v33;
    (*(*(v30 - 8) + 8))(v7, v30);
  }

  v34 = sub_14CB8();
  sub_13990(v32, v34, v29);

  return sub_145C8();
}

uint64_t sub_125D8()
{
  sub_14438();
  sub_13E50(&qword_20A28, &type metadata accessor for FeatureType, &protocol conformance descriptor for FeatureType);
  sub_14D38();
  sub_14D38();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_14E38();
  }

  return v1 & 1;
}

void sub_126B8(uint64_t a1@<X8>)
{
  sub_14048();
  sub_DA94();
  v122 = v3;
  v123 = v2;
  __chkstk_darwin(v2, v4);
  sub_13ED8();
  v121 = v6 - v5;
  sub_14138();
  sub_DA94();
  v119 = v8;
  v120 = v7;
  __chkstk_darwin(v7, v9);
  sub_13ED8();
  v12 = (v11 - v10);
  v13 = sub_14168();
  v14 = sub_C17C(v13);
  __chkstk_darwin(v14, v15);
  sub_13ED8();
  v118 = v17 - v16;
  v18 = sub_14438();
  sub_DA94();
  v20 = v19;
  v23 = __chkstk_darwin(v21, v22);
  v25 = &v111 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23, v26);
  v28 = &v111 - v27;
  type metadata accessor for SiriFeatureAnnouncementSnippetView(0);
  v29 = sub_143C8();
  if (v30)
  {
    v115 = v29;
    v116 = v30;
    v117 = a1;
    sub_14378();
    (*(v20 + 104))(v25, enum case for FeatureType.panIndia(_:), v18);
    v31 = sub_125D8();
    v32 = *(v20 + 8);
    v32(v25, v18);
    v32(v28, v18);
    if (v31)
    {
      sub_11D74(&v141);
      if (!v143)
      {

        sub_B858(&v141, &qword_20980, &qword_15AA0);
        if (qword_20180 != -1)
        {
          sub_1884(&qword_20180);
        }

        v103 = sub_14568();
        sub_1750(v103, static Logger.uiCategory);
        v104 = sub_14548();
        v105 = sub_14DB8();
        v106 = sub_13F08(v105);
        v107 = v117;
        if (v106)
        {
          v108 = sub_DB84();
          sub_DBA8(v108);
          sub_13EE8(&dword_0, v109, v110, "Announcement button is nil, returning empty announcement view");
          sub_13F40();
        }

        v100 = sub_14C78();
        v101 = v107;
        v102 = 1;
        goto LABEL_14;
      }

      sub_B858(&v141, &qword_20980, &qword_15AA0);
      v141 = sub_14398();
      v142 = v33;
      sub_A8E0();
      v34 = sub_14818();
      v36 = v35;
      v38 = v37;
      v40 = v39;
      v143 = &type metadata for Text;
      v144 = &protocol witness table for Text;
      sub_13F34();
      v41 = swift_allocObject();
      v140 = 0;
      v141 = v41;
      *(v41 + 16) = v34;
      *(v41 + 24) = v36;
      *(v41 + 32) = v38 & 1;
      *(v41 + 40) = v40;
      v138 = 0u;
      v139 = 0u;
      v134 = sub_14388();
      v135 = v42;
      v43 = sub_14818();
      v45 = v44;
      LOBYTE(v40) = v46;
      v48 = v47;
      v136 = &type metadata for Text;
      v137 = &protocol witness table for Text;
      sub_13F34();
      v49 = swift_allocObject();
      v134 = v49;
      *(v49 + 16) = v43;
      *(v49 + 24) = v45;
      *(v49 + 32) = v40 & 1;
      *(v49 + 40) = v48;
      sub_11D74(v132);
    }

    else
    {
      v141 = sub_14398();
      v142 = v61;
      sub_A8E0();
      v62 = sub_14818();
      v64 = v63;
      v66 = v65;
      v68 = v67;
      v143 = &type metadata for Text;
      v144 = &protocol witness table for Text;
      sub_13F34();
      v69 = swift_allocObject();
      v140 = 0;
      v141 = v69;
      *(v69 + 16) = v62;
      *(v69 + 24) = v64;
      *(v69 + 32) = v66 & 1;
      *(v69 + 40) = v68;
      v36 = v132;
      v138 = 0u;
      v139 = 0u;
      v134 = sub_14388();
      v135 = v70;
      v71 = sub_14818();
      v73 = v72;
      LOBYTE(v64) = v74;
      v76 = v75;
      v136 = &type metadata for Text;
      v137 = &protocol witness table for Text;
      sub_13F34();
      v77 = swift_allocObject();
      v134 = v77;
      *(v77 + 16) = v71;
      *(v77 + 24) = v73;
      *(v77 + 32) = v64 & 1;
      *(v77 + 40) = v76;
      v133 = 0;
      memset(v132, 0, sizeof(v132));
    }

    sub_11398(v131);
    v130 = 0;
    v128 = 0u;
    v129 = 0u;
    sub_2104(&qword_20978, &qword_15A98);
    v114 = &v111;
    sub_DA94();
    v112 = v78;
    v113 = v79;
    sub_10FE0();
    __chkstk_darwin(v80, v81);
    sub_13F24();
    v82 = sub_14A28();
    v111 = &v111;
    sub_DA94();
    v84 = v83;
    __chkstk_darwin(v85, v86);
    sub_13ED8();
    v89 = v88 - v87;
    *v12 = sub_14218();
    v12[1] = v90;
    v92 = v119;
    v91 = v120;
    (*(v119 + 104))(v12, enum case for RFImage.Bundle.Location.path(_:), v120);
    sub_14148();

    (*(v92 + 8))(v12, v91);
    sub_14A38();
    v93 = v121;
    v94 = v122;
    v95 = v123;
    (*(v122 + 104))(v121, enum case for ImageElement.ImageStyle.image5(_:), v123);
    v96 = sub_13B6C(&qword_204F8, &type metadata accessor for RFImageView, &protocol conformance descriptor for RFImageView);
    sub_14838();
    (*(v94 + 8))(v93, v95);
    (*(v84 + 8))(v89, v82);
    v124 = v82;
    v125 = v96;
    swift_getOpaqueTypeConformance2();
    v97 = v112;
    v98 = sub_14828();
    (*(v113 + 8))(v36, v97);
    v126 = &type metadata for AnyView;
    v127 = &protocol witness table for AnyView;
    v124 = v98;
    v99 = v117;
    sub_14C68();
    v100 = sub_14C78();
    v101 = v99;
    v102 = 0;
LABEL_14:
    sub_2AD0(v101, v102, 1, v100);
    sub_13F5C();
    return;
  }

  if (qword_20180 != -1)
  {
    sub_1884(&qword_20180);
  }

  v50 = sub_14568();
  sub_1750(v50, static Logger.uiCategory);
  v51 = sub_14548();
  v52 = sub_14DB8();
  if (sub_13F08(v52))
  {
    v53 = sub_DB84();
    sub_DBA8(v53);
    sub_13EE8(&dword_0, v54, v55, "Announcement icon is nil, returning empty announcement view");
    sub_13F40();
  }

  sub_14C78();
  sub_13F5C();

  sub_2AD0(v56, v57, v58, v59);
}

uint64_t sub_12F4C()
{
  v1 = type metadata accessor for SiriFeatureAnnouncementSnippetView(0);
  v2 = sub_C154(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2, v7);
  sub_13374(v0, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  sub_133DC(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  sub_2104(&qword_20948, &qword_15A78);
  sub_134AC();
  return sub_14A98();
}

uint64_t sub_13068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_14438();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 8);
  LOBYTE(v29) = *a1;
  v30 = v9;
  sub_2104(&qword_203E8, &qword_155D0);
  sub_14958();
  v10 = v28;
  v11 = sub_2104(&qword_20970, &qword_15A90);
  v13 = v11;
  if (v10 != 1)
  {
    return sub_2AD0(a2, 1, 1, v11);
  }

  v27 = v24;
  v26 = *(v11 - 8);
  __chkstk_darwin(v11, v12);
  v25 = a2;
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[0] = sub_2104(&qword_20958, &unk_15A80);
  v24[1] = v24;
  __chkstk_darwin(v24[0], v16);
  v18 = v24 - v17;
  sub_126B8(v24 - v17);
  type metadata accessor for SiriFeatureAnnouncementSnippetView(0);
  sub_14378();
  v19 = sub_14428();
  v21 = v20;
  (*(v5 + 8))(v8, v4);
  v29 = 0xD000000000000014;
  v30 = 0x80000000000176B0;
  v31._countAndFlagsBits = v19;
  v31._object = v21;
  sub_14D08(v31);

  sub_13554();
  sub_14858();

  sub_B858(v18, &qword_20958, &unk_15A80);
  v22 = v25;
  (*(v26 + 32))(v25, v15, v13);
  return sub_2AD0(v22, 0, 1, v13);
}

uint64_t sub_13374(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriFeatureAnnouncementSnippetView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_133DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriFeatureAnnouncementSnippetView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_13440@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SiriFeatureAnnouncementSnippetView(0);
  sub_C17C(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_13068(v5, a1);
}

unint64_t sub_134AC()
{
  result = qword_20950;
  if (!qword_20950)
  {
    sub_2240(&qword_20948, &qword_15A78);
    sub_2240(&qword_20958, &unk_15A80);
    sub_13554();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20950);
  }

  return result;
}

unint64_t sub_13554()
{
  result = qword_20960;
  if (!qword_20960)
  {
    sub_2240(&qword_20958, &unk_15A80);
    sub_13B6C(&qword_20968, &type metadata accessor for SummaryItemDetailedTextView, &protocol conformance descriptor for SummaryItemDetailedTextView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20960);
  }

  return result;
}

uint64_t sub_135E4()
{
  sub_AF3C(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  sub_13F34();

  return _swift_deallocObject(v1);
}

uint64_t sub_13670()
{
  type metadata accessor for SiriFeatureAnnouncementSnippetView(0);
  sub_C0DC();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = *(v0 + 28);
  sub_143D8();
  sub_C0B8();
  (*(v5 + 8))(v3 + v4);
  v6 = *(v0 + 32);
  sub_14A68();
  sub_C0B8();
  (*(v7 + 8))(v3 + v6);

  return _swift_deallocObject(v1);
}

id sub_13788@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SiriFeatureAnnouncementSnippetView(0);
  sub_C154(v2);

  return sub_12234(a1);
}

unint64_t sub_13830()
{
  result = qword_209A0;
  if (!qword_209A0)
  {
    sub_2240(&qword_20990, &qword_15AB0);
    sub_2838(&qword_209A8, &qword_20998, &qword_15AE8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_209A0);
  }

  return result;
}

uint64_t sub_138D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  sub_DA94();
  sub_10FE0();
  __chkstk_darwin(v8, v9);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1);
  return a6(v11);
}

id sub_13990(uint64_t a1, uint64_t a2, void *a3)
{
  isa = sub_14CA8().super.isa;

  v6 = [a3 openSensitiveURL:a1 withOptions:isa];

  return v6;
}

unint64_t sub_13A2C()
{
  result = qword_209C8;
  if (!qword_209C8)
  {
    sub_2240(&qword_209C0, &qword_15B00);
    sub_13ACC();
    sub_2838(&qword_209E0, &qword_209E8, &qword_15B18, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_209C8);
  }

  return result;
}

unint64_t sub_13ACC()
{
  result = qword_209D0;
  if (!qword_209D0)
  {
    sub_2240(&qword_209D8, &qword_15B08);
    sub_2838(&qword_20240, &qword_20248, &qword_15B10, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_209D0);
  }

  return result;
}

uint64_t sub_13B6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_13C00()
{
  result = qword_20A08;
  if (!qword_20A08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_20A08);
  }

  return result;
}

uint64_t sub_13C44()
{
  type metadata accessor for SiriFeatureAnnouncementSnippetView(0);
  sub_C0DC();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = *(v0 + 28);
  sub_143D8();
  sub_C0B8();
  (*(v5 + 8))(v3 + v4);
  v6 = *(v0 + 32);
  sub_14A68();
  sub_C0B8();
  (*(v7 + 8))(v3 + v6);

  return _swift_deallocObject(v1);
}

uint64_t sub_13D64(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for SiriFeatureAnnouncementSnippetView(0);
  sub_C17C(v2);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a1(v4);
}

uint64_t sub_13DD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_13DEC()
{
  result = qword_20A20;
  if (!qword_20A20)
  {
    sub_2240(&qword_20A18, &qword_15B58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20A20);
  }

  return result;
}

uint64_t sub_13E50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_13EE8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

BOOL sub_13F08(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_13F40()
{
}