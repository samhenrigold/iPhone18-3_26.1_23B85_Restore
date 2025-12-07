uint64_t sub_17E8()
{
  v0 = sub_6850();
  sub_185C(v0, qword_10548);
  sub_18C0(v0, qword_10548);
  return sub_6840();
}

uint64_t *sub_185C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_18C0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_190C()
{
  sub_548C();
  v2 = sub_6790();

  return sub_194C(v1, v0, v2);
}

uint64_t sub_1988()
{
  sub_548C();
  sub_6790();
  v0 = sub_54C0();

  return sub_19C0(v0, v1, v2, v3);
}

uint64_t sub_1A08(uint64_t a1)
{
  result = sub_6790();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A90@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AttributionButtonView(0);
  sub_5414();
  __chkstk_darwin(v4);
  sub_5424();
  v93 = v6 - v5;
  v7 = sub_212C(&qword_10160, &qword_6FE8);
  v8 = sub_5480(v7);
  __chkstk_darwin(v8);
  sub_5464();
  v96 = v9 - v10;
  __chkstk_darwin(v11);
  v13 = &v87 - v12;
  v14 = type metadata accessor for MessageAccumulationView(0);
  v15 = sub_5480(v14);
  __chkstk_darwin(v15);
  sub_5424();
  v92 = v17 - v16;
  v94 = sub_212C(&qword_10168, &qword_6FF0);
  sub_5414();
  __chkstk_darwin(v18);
  sub_5464();
  v91 = v19 - v20;
  __chkstk_darwin(v21);
  v90 = &v87 - v22;
  v23 = sub_212C(&qword_10170, &qword_6FF8);
  sub_5480(v23);
  sub_5474();
  __chkstk_darwin(v24);
  v26 = &v87 - v25;
  v27 = sub_67E0();
  sub_5400();
  v29 = v28;
  __chkstk_darwin(v30);
  sub_5424();
  v33 = v32 - v31;
  v34 = sub_212C(&qword_10178, &qword_7000);
  v35 = sub_5480(v34);
  __chkstk_darwin(v35);
  sub_5464();
  v38 = v36 - v37;
  __chkstk_darwin(v39);
  v41 = &v87 - v40;
  v95 = v1;
  sub_6780();
  if (sub_194C(v26, 1, v27) == 1)
  {
    sub_52E0(v26, &qword_10170, &qword_6FF8);
LABEL_10:
    v66 = 1;
    v56 = v94;
    goto LABEL_11;
  }

  (*(v29 + 32))(v33, v26, v27);
  v42 = *(sub_67D0() + 16);

  if (!v42)
  {
    (*(v29 + 8))(v33, v27);
    goto LABEL_10;
  }

  v88 = v3;
  v89 = a1;
  (*(v29 + 16))(v92, v33, v27);
  sub_212C(&qword_10188, &unk_7010);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_6F40;
  v44 = sub_6960();
  *(inited + 32) = v44;
  v45 = sub_6970();
  *(inited + 33) = v45;
  v46 = sub_6980();
  sub_6980();
  if (sub_6980() != v44)
  {
    v46 = sub_6980();
  }

  sub_6980();
  if (sub_6980() != v45)
  {
    v46 = sub_6980();
  }

  v3 = v88;
  a1 = v89;
  sub_6860();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  (*(v29 + 8))(v33, v27);
  v55 = v91;
  sub_2174(v92, v91, type metadata accessor for MessageAccumulationView);
  v56 = v94;
  v57 = v55 + *(v94 + 36);
  *v57 = v46;
  *(v57 + 8) = v48;
  *(v57 + 16) = v50;
  *(v57 + 24) = v52;
  *(v57 + 32) = v54;
  *(v57 + 40) = 0;
  sub_54B4();
  sub_5238(v58, v59, v60, v61);
  sub_54B4();
  sub_5238(v62, v63, v64, v65);
  v66 = 0;
LABEL_11:
  v67 = 1;
  sub_19C0(v41, v66, 1, v56);
  v68 = *(sub_6770() + 16);

  if (v68)
  {
    v69 = sub_6770();
    v70 = v93;
    sub_6B10();
    v71 = v70 + *(v3 + 20);
    v97 = 0;
    sub_6A60();
    v72 = v99;
    *v71 = v98;
    *(v71 + 8) = v72;
    *(v70 + *(v3 + 24)) = v69;
    sub_544C();
    v73 = sub_54A8();
    sub_2174(v73, v74, v75);
    v67 = 0;
  }

  sub_19C0(v13, v67, 1, v3);
  sub_54B4();
  sub_5284(v76, v77, v78, v79);
  v80 = v96;
  sub_5284(v13, v96, &qword_10160, &qword_6FE8);
  sub_54B4();
  sub_5284(v81, v82, v83, v84);
  v85 = sub_212C(&qword_10180, &qword_7008);
  sub_5284(v80, a1 + *(v85 + 48), &qword_10160, &qword_6FE8);
  sub_52E0(v13, &qword_10160, &qword_6FE8);
  sub_52E0(v41, &qword_10178, &qword_7000);
  sub_52E0(v80, &qword_10160, &qword_6FE8);
  return sub_52E0(v38, &qword_10178, &qword_7000);
}

uint64_t sub_20F4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_212C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2174(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_5414();
  v4 = sub_549C();
  v5(v4);
  return a2;
}

uint64_t sub_21E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_6B20();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_194C(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_22A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_548C();
  result = sub_6B20();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = sub_54C0();

    return sub_19C0(v9, v10, v11, v12);
  }

  else
  {
    *(v5 + *(a4 + 24)) = (v4 - 1);
  }

  return result;
}

void sub_2338(uint64_t a1)
{
  sub_6B20();
  if (v1 <= 0x3F)
  {
    sub_241C(319, &qword_101F8, &type metadata for Bool, &type metadata accessor for State);
    if (v2 <= 0x3F)
    {
      sub_241C(319, &unk_10200, &type metadata for String, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_241C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_24B0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2514@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v58 = sub_6880();
  sub_5400();
  v59 = v2;
  __chkstk_darwin(v3);
  sub_5424();
  v6 = v5 - v4;
  v7 = type metadata accessor for AttributionButtonView(0);
  v8 = *(v7 - 8);
  v54 = v7 - 8;
  __chkstk_darwin(v7 - 8);
  v50 = v9;
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_212C(&qword_10248, &qword_7090);
  sub_5400();
  v53 = v11;
  sub_5474();
  __chkstk_darwin(v12);
  v14 = &v45 - v13;
  v56 = sub_212C(&qword_10250, &qword_7098);
  sub_5400();
  v55 = v15;
  sub_5474();
  __chkstk_darwin(v16);
  v47 = &v45 - v17;
  v52 = sub_212C(&qword_10258, &qword_70A0);
  sub_5414();
  sub_5474();
  __chkstk_darwin(v18);
  v20 = &v45 - v19;
  v60 = sub_212C(&qword_10260, &qword_70A8);
  sub_5400();
  v61 = v21;
  sub_5474();
  __chkstk_darwin(v22);
  v57 = &v45 - v23;
  v46 = v1;
  v48 = v10;
  sub_3CB8(v1, v10);
  v24 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  swift_allocObject();
  sub_544C();
  v49 = v25;
  sub_2174(v10, v26 + v24, v27);
  v63 = v1;
  sub_212C(&qword_10268, &qword_70B0);
  v28 = sub_24B0(&qword_10270, &qword_70B8);
  v29 = sub_3D84();
  __src[0] = v28;
  __src[1] = v29;
  swift_getOpaqueTypeConformance2();
  sub_6A90();
  v30 = v6;
  sub_6870();
  sub_3FD8(&qword_102E0, &qword_10248, &qword_7090, &protocol conformance descriptor for Button<A>);
  sub_518C(&qword_102E8, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v31 = v47;
  v32 = v51;
  v33 = v58;
  sub_6A10();
  (*(v59 + 8))(v30, v33);
  (*(v53 + 8))(v14, v32);
  sub_6AB0();
  sub_6890();
  (*(v55 + 32))(v20, v31, v56);
  v34 = v52;
  memcpy(&v20[*(v52 + 36)], __src, 0x70uLL);
  v35 = v46;
  v36 = v46 + *(v54 + 28);
  v37 = *v36;
  v38 = *(v36 + 8);
  LOBYTE(v64) = v37;
  v65 = v38;
  sub_212C(&qword_102F0, &qword_70F0);
  sub_6A70();
  LOBYTE(v64) = v68;
  v39 = v48;
  sub_3CB8(v35, v48);
  v40 = swift_allocObject();
  sub_2174(v39, v40 + v24, v49);
  v41 = sub_418C();
  v42 = v57;
  sub_6A30();

  sub_42D8(v20);
  v64 = v34;
  v65 = &type metadata for Bool;
  v66 = v41;
  v67 = &protocol witness table for Bool;
  sub_5434();
  swift_getOpaqueTypeConformance2();
  v43 = v60;
  sub_69D0();
  return (*(v61 + 8))(v42, v43);
}

uint64_t sub_2BE8(uint64_t a1)
{
  type metadata accessor for AttributionButtonView(0);

  sub_212C(&qword_102F0, &qword_70F0);
  sub_6A70();
  sub_6A80();
}

uint64_t sub_2C94(uint64_t a1)
{
  v2 = sub_212C(&qword_10270, &qword_70B8);
  __chkstk_darwin(v2);
  v4 = &v12 - v3;
  *v4 = sub_6930();
  *(v4 + 1) = 0x4000000000000000;
  v4[16] = 0;
  v5 = sub_212C(&qword_10318, &qword_70F8);
  sub_2E0C(a1, &v4[*(v5 + 44)]);
  KeyPath = swift_getKeyPath();
  v7 = &v4[*(sub_212C(&qword_10298, &qword_70C8) + 36)];
  *v7 = KeyPath;
  v7[8] = 0;
  LODWORD(KeyPath) = sub_6950();
  *&v4[*(sub_212C(&qword_10288, &qword_70C0) + 36)] = KeyPath;
  v8 = sub_69A0();
  v9 = swift_getKeyPath();
  v10 = &v4[*(v2 + 36)];
  *v10 = v9;
  v10[1] = v8;
  sub_6990();
  sub_3D84();
  sub_6A00();
  return sub_52E0(v4, &qword_10270, &qword_70B8);
}

uint64_t sub_2E0C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v59 = a2;
  v3 = sub_6AF0();
  v57 = *(v3 - 8);
  v58 = v3;
  __chkstk_darwin(v3);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_6AD0();
  v7 = *(v6 - 8);
  v55 = v6;
  v56 = v7;
  __chkstk_darwin(v6);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_212C(&qword_10320, &qword_7160);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = (&v49 - v12);
  v14 = sub_212C(&qword_10328, &qword_7168);
  v15 = v14 - 8;
  v16 = __chkstk_darwin(v14);
  v54 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v49 - v19;
  __chkstk_darwin(v18);
  v22 = &v49 - v21;
  v23 = sub_331C();
  if (v24)
  {
    v26 = v23;
  }

  else
  {
    v26 = 0;
  }

  v27 = 0xE000000000000000;
  if (v24)
  {
    v27 = v24;
  }

  v60 = v26;
  v61 = v27;
  sub_50D4(v23, v24, v25);
  v28 = sub_69B0();
  v50 = v29;
  v51 = v28;
  v52 = v30;
  v53 = v31;
  v32 = (a1 + *(type metadata accessor for AttributionButtonView(0) + 20));
  v33 = *v32;
  v34 = *(v32 + 1);
  LOBYTE(v60) = v33;
  v61 = v34;
  sub_212C(&qword_102F0, &qword_70F0);
  sub_6A70();
  v35 = sub_6A40();
  v36 = (v13 + *(v11 + 44));
  v37 = *(sub_212C(&qword_10338, &qword_7170) + 28);
  v38 = enum case for Image.Scale.small(_:);
  v39 = sub_6A50();
  (*(*(v39 - 8) + 104))(v36 + v37, v38, v39);
  *v36 = swift_getKeyPath();
  *v13 = v35;
  sub_6AC0();
  sub_6AE0();
  v40 = &v20[*(v15 + 44)];
  sub_212C(&qword_10340, &qword_71A8);
  sub_518C(&qword_10348, &type metadata accessor for ReplaceSymbolEffect, &protocol conformance descriptor for ReplaceSymbolEffect);
  v41 = v55;
  sub_68A0();
  (*(v57 + 8))(v5, v58);
  (*(v56 + 8))(v9, v41);
  *v40 = swift_getKeyPath();
  sub_5238(v13, v20, &qword_10320, &qword_7160);
  sub_5238(v20, v22, &qword_10328, &qword_7168);
  v42 = v54;
  sub_5284(v22, v54, &qword_10328, &qword_7168);
  v43 = v59;
  v45 = v50;
  v44 = v51;
  *v59 = v51;
  v43[1] = v45;
  LOBYTE(v41) = v52 & 1;
  *(v43 + 16) = v52 & 1;
  v43[3] = v53;
  v46 = v43;
  v47 = sub_212C(&qword_10350, &qword_71E0);
  sub_5284(v42, v46 + *(v47 + 48), &qword_10328, &qword_7168);
  sub_52D0(v44, v45, v41);

  sub_52E0(v22, &qword_10328, &qword_7168);
  sub_52E0(v42, &qword_10328, &qword_7168);
  sub_5338(v44, v45, v41);
}

uint64_t sub_331C()
{
  v33 = &_swiftEmptySetSingleton;
  result = type metadata accessor for AttributionButtonView(0);
  v2 = *(v0 + *(result + 24));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v31 = &_swiftEmptyArrayStorage;
    while (v4 < *(v2 + 16))
    {
      v5 = (v2 + 32 + 16 * v4);
      v7 = *v5;
      v6 = v5[1];
      v8 = v33;
      if (v33[2])
      {
        sub_6C30();

        sub_6B70();
        v9 = sub_6C50();
        v10 = ~(-1 << *(v8 + 32));
        while (1)
        {
          v11 = v9 & v10;
          if (((*(v8 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> (v9 & v10)) & 1) == 0)
          {
            break;
          }

          v12 = (v8[6] + 16 * v11);
          if (*v12 != v7 || v12[1] != v6)
          {
            v14 = sub_6BD0();
            v9 = v11 + 1;
            if ((v14 & 1) == 0)
            {
              continue;
            }
          }

          goto LABEL_20;
        }
      }

      else
      {
      }

      v15 = objc_allocWithZone(LSApplicationRecord);

      v16 = sub_54A8();
      v18 = sub_4338(v16, v17, 1);
      v19 = v18;
      if (v18)
      {
        v20 = [v18 localizedName];
        v21 = sub_6B60();
        v30 = v22;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_4414(0, *(v31 + 2) + 1, 1, v31);
        }

        v24 = *(v31 + 2);
        v23 = *(v31 + 3);
        if (v24 >= v23 >> 1)
        {
          v31 = sub_4414((v23 > 1), v24 + 1, 1, v31);
        }

        *(v31 + 2) = v24 + 1;
        v25 = &v31[16 * v24];
        *(v25 + 4) = v21;
        *(v25 + 5) = v30;
        sub_4634(&v32, v7, v6);
      }

LABEL_20:

      if (++v4 == v3)
      {
        v26 = v31;
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  else
  {
    v26 = &_swiftEmptyArrayStorage;
LABEL_23:

    if (*(v26 + 2))
    {
      v27 = objc_opt_self();
      isa = sub_6B80().super.isa;

      v29 = [v27 localizedStringByJoiningStrings:isa];

      sub_6B60();
    }

    else
    {
    }

    return sub_549C();
  }

  return result;
}

void sub_361C(uint64_t a1, char *a2)
{
  v3 = sub_6B40();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a2;
  v8 = sub_38D4(*a2);
  if (v8)
  {
    v9 = v8;
    if (qword_100C8 != -1)
    {
      swift_once();
    }

    v10 = sub_6850();
    sub_18C0(v10, qword_10548);
    v11 = sub_6830();
    v12 = sub_6B90();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 67109120;
      *(v13 + 4) = v7;
      _os_log_impl(&dword_0, v11, v12, "Sending command to update expansion to: %{BOOL}d", v13, 8u);
    }

    sub_6B00();
    v14 = v9;
    sub_6B30();

    (*(v4 + 8))(v6, v3);
  }

  else
  {
    if (qword_100C8 != -1)
    {
      swift_once();
    }

    v15 = sub_6850();
    sub_18C0(v15, qword_10548);
    v20 = sub_6830();
    v16 = sub_6BA0();
    if (os_log_type_enabled(v20, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_0, v20, v16, "Unable to build snippet update command", v17, 2u);
    }

    v18 = v20;
  }
}

id sub_38D4(char a1)
{
  sub_6810();
  sub_5400();
  v34[1] = v2;
  v34[2] = v3;
  __chkstk_darwin(v2);
  sub_5424();
  v34[0] = v5 - v4;
  v6 = sub_6750();
  sub_5400();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_5424();
  v12 = v11 - v10;
  v13 = sub_67F0();
  sub_5400();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_5464();
  v19 = v17 - v18;
  __chkstk_darwin(v20);
  v22 = v34 - v21;
  v23 = &enum case for UpdatePresentation.PresentationStyle.expanded(_:);
  if ((a1 & 1) == 0)
  {
    v23 = &enum case for UpdatePresentation.PresentationStyle.collapsed(_:);
  }

  (*(v15 + 104))(v34 - v21, *v23, v13);
  v24 = [objc_allocWithZone(SAUIUpdateVisualResponseSnippet) init];
  sub_6740();
  v25 = sub_6730();
  v27 = v26;
  (*(v8 + 8))(v12, v6);
  sub_4F8C(v25, v27, v24, &selRef_setAceId_);

  (*(v15 + 16))(v19, v22, v13);
  sub_6800();
  sub_518C(&qword_10300, &type metadata accessor for UpdatePresentation, &protocol conformance descriptor for UpdatePresentation);
  sub_518C(&qword_10308, &type metadata accessor for UpdatePresentation, &protocol conformance descriptor for UpdatePresentation);
  sub_518C(&qword_10310, &type metadata accessor for UpdatePresentation, &protocol conformance descriptor for UpdatePresentation);
  v28 = sub_6820();
  v30 = v29;
  v31 = sub_54A8();
  v32(v31);
  sub_4F34(v28, v30, v24);
  sub_4F8C(0xD000000000000033, 0x80000000000074B0, v24, &selRef_setViewId_);
  sub_4FF8(v28, v30);
  (*(v15 + 8))(v22, v13);
  return v24;
}

uint64_t sub_3CB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributionButtonView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3D20()
{
  v1 = type metadata accessor for AttributionButtonView(0);
  sub_5480(v1);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return sub_2BE8(v3);
}

unint64_t sub_3D84()
{
  result = qword_10278;
  if (!qword_10278)
  {
    sub_24B0(&qword_10270, &qword_70B8);
    sub_3E3C();
    sub_3FD8(&qword_102D0, &qword_102D8, &qword_72F0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10278);
  }

  return result;
}

unint64_t sub_3E3C()
{
  result = qword_10280;
  if (!qword_10280)
  {
    sub_24B0(&qword_10288, &qword_70C0);
    sub_3EF4();
    sub_3FD8(&qword_102C0, &qword_102C8, &unk_70E0, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10280);
  }

  return result;
}

unint64_t sub_3EF4()
{
  result = qword_10290;
  if (!qword_10290)
  {
    sub_24B0(&qword_10298, &qword_70C8);
    sub_3FD8(&qword_102A0, &qword_102A8, &qword_70D0, &protocol conformance descriptor for HStack<A>);
    sub_3FD8(&qword_102B0, &qword_102B8, &qword_70D8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10290);
  }

  return result;
}

uint64_t sub_3FD8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_24B0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_4020()
{
  v1 = *(type metadata accessor for AttributionButtonView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  sub_6B20();
  sub_5414();
  (*(v5 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_4110(uint64_t a1, char *a2)
{
  v4 = type metadata accessor for AttributionButtonView(0);
  sub_5480(v4);

  sub_361C(a1, a2);
}

unint64_t sub_418C()
{
  result = qword_102F8;
  if (!qword_102F8)
  {
    sub_24B0(&qword_10258, &qword_70A0);
    sub_24B0(&qword_10248, &qword_7090);
    sub_6880();
    sub_3FD8(&qword_102E0, &qword_10248, &qword_7090, &protocol conformance descriptor for Button<A>);
    sub_518C(&qword_102E8, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_102F8);
  }

  return result;
}

uint64_t sub_42D8(uint64_t a1)
{
  sub_212C(&qword_10258, &qword_70A0);
  sub_5414();
  (*(v2 + 8))(a1);
  return a1;
}

id sub_4338(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_6B50();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_6710();

    swift_willThrow();
  }

  return v6;
}

char *sub_4414(char *result, int64_t a2, char a3, char *a4)
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
    sub_212C(&qword_10360, &unk_71F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_451C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_68F0();
  *a1 = result;
  return result;
}

uint64_t sub_4574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  sub_5400();
  sub_5474();
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

BOOL sub_4634(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = *v3;
  sub_6C30();
  sub_6B70();
  v8 = sub_6C50();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_6BD0() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  sub_49DC(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

uint64_t sub_4780(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_212C(&qword_10358, &qword_71E8);
  result = sub_6BC0();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_4B44(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_6C30();
    sub_6B70();
    result = sub_6C50();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_49DC(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_4780(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_4D00(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_6C30();
      sub_6B70();
      result = sub_6C50();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_6BD0() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_4BA8();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_6BE0();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_4B44(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_6F50;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void *sub_4BA8()
{
  v1 = v0;
  sub_212C(&qword_10358, &qword_71E8);
  v2 = *v0;
  v3 = sub_6BB0();
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
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

uint64_t sub_4D00(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_212C(&qword_10358, &qword_71E8);
  result = sub_6BC0();
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_6C30();

        sub_6B70();
        result = sub_6C50();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

void sub_4F34(uint64_t a1, uint64_t a2, void *a3)
{
  isa = sub_6720().super.isa;
  [a3 setStateData:isa];
}

void sub_4F8C(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_6B50();

  [a3 *a4];
}

uint64_t sub_4FF8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_5050@<X0>(_BYTE *a1@<X8>)
{
  result = sub_68D0();
  *a1 = result;
  return result;
}

uint64_t sub_50A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_68F0();
  *a1 = result;
  return result;
}

unint64_t sub_50D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10330;
  if (!qword_10330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10330);
  }

  return result;
}

uint64_t sub_518C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_5238(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_54D4(a1, a2, a3, a4);
  sub_5414();
  v5 = sub_549C();
  v6(v5);
  return v4;
}

uint64_t sub_5284(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_54D4(a1, a2, a3, a4);
  sub_5414();
  v5 = sub_549C();
  v6(v5);
  return v4;
}

uint64_t sub_52D0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_52E0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_212C(a2, a3);
  sub_5414();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_5338(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_534C()
{
  sub_24B0(&qword_10260, &qword_70A8);
  sub_24B0(&qword_10258, &qword_70A0);
  sub_418C();
  sub_5434();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_54D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_212C(a3, a4);
}

uint64_t sub_5508(uint64_t a1, uint64_t a2)
{
  v4 = sub_67E0();

  return sub_194C(a1, a2, v4);
}

uint64_t sub_5564(uint64_t a1, uint64_t a2)
{
  v4 = sub_67E0();

  return sub_19C0(a1, a2, a2, v4);
}

uint64_t type metadata accessor for MessageAccumulationView(uint64_t a1)
{
  result = qword_103C0;
  if (!qword_103C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_55FC(uint64_t a1)
{
  result = sub_67E0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_5684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29 = a5;
  v9 = sub_212C(&qword_10440, &qword_7298);
  v27 = *(v9 - 8);
  v28 = v9;
  __chkstk_darwin(v9);
  v26 = &v23 - v10;
  v11 = sub_212C(&qword_10448, &qword_72A0);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v23 - v13;
  v15 = sub_6950();
  v16 = sub_69A0();
  KeyPath = swift_getKeyPath();
  v24 = a1;
  v25 = a4;
  __src[0] = a1;
  __src[1] = a2;
  LOBYTE(__src[2]) = a3 & 1;
  __src[3] = a4;
  LODWORD(__src[4]) = v15;
  __src[5] = KeyPath;
  __src[6] = v16;
  sub_52D0(a1, a2, a3 & 1);

  sub_6990();
  sub_212C(&qword_10450, &qword_72D8);
  sub_5D64();
  v18 = v26;
  sub_6A00();
  sub_5338(v24, a2, a3 & 1);

  sub_6AB0();
  sub_6890();
  (*(v27 + 32))(v14, v18, v28);
  memcpy(&v14[*(v12 + 44)], __src, 0x70uLL);
  v19 = swift_getKeyPath();
  v20 = v29;
  sub_5F3C(v14, v29);
  result = sub_212C(&qword_10430, &qword_7288);
  v22 = v20 + *(result + 36);
  *v22 = v19;
  *(v22 + 8) = 1;
  *(v22 + 16) = 0;
  return result;
}

uint64_t sub_592C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_6940();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_212C(&qword_103F8, &qword_7268);
  sub_67D0();
  sub_212C(&qword_10400, &qword_7270);
  sub_212C(&qword_10408, &qword_7278);
  sub_3FD8(&qword_10410, &qword_10400, &qword_7270, &protocol conformance descriptor for [A]);
  sub_3FD8(&qword_10418, &qword_10408, &qword_7278, &protocol conformance descriptor for HStack<A>);
  sub_5C3C();
  return sub_6AA0();
}

uint64_t sub_5A78@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_6930();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v3 = sub_212C(&qword_10428, &qword_7280);
  return sub_5AD0((a2 + *(v3 + 44)));
}

uint64_t sub_5AD0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_212C(&qword_10430, &qword_7288);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v19[-v6];
  sub_67B0();
  v8 = sub_6A40();
  v20 = sub_67A0();
  v21 = v9;
  sub_50D4(v20, v9, v10);
  v11 = sub_69B0();
  v13 = v12;
  v15 = v14;
  sub_5684(v11, v12, v14 & 1, v16, v7);
  sub_5338(v11, v13, v15 & 1);

  sub_5C94(v7, v5);
  *a1 = v8;
  v17 = sub_212C(&qword_10438, &qword_7290);
  sub_5C94(v5, a1 + *(v17 + 48));

  sub_5CFC(v7);
  sub_5CFC(v5);
}

unint64_t sub_5C3C()
{
  result = qword_10420;
  if (!qword_10420)
  {
    sub_67C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10420);
  }

  return result;
}

uint64_t sub_5C94(uint64_t a1, uint64_t a2)
{
  sub_212C(&qword_10430, &qword_7288);
  sub_5414();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_5CFC(uint64_t a1)
{
  sub_212C(&qword_10430, &qword_7288);
  sub_5414();
  (*(v2 + 8))(a1);
  return a1;
}

unint64_t sub_5D64()
{
  result = qword_10458;
  if (!qword_10458)
  {
    sub_24B0(&qword_10450, &qword_72D8);
    sub_5E1C();
    sub_3FD8(&qword_102D0, &qword_102D8, &qword_72F0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10458);
  }

  return result;
}

unint64_t sub_5E1C()
{
  result = qword_10460;
  if (!qword_10460)
  {
    sub_24B0(&qword_10468, &unk_72E0);
    sub_3FD8(&qword_102C0, &qword_102C8, &unk_70E0, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10460);
  }

  return result;
}

uint64_t sub_5ED4@<X0>(uint64_t a1@<X8>)
{
  result = sub_6910();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_5F3C(uint64_t a1, uint64_t a2)
{
  sub_212C(&qword_10448, &qword_72A0);
  sub_5414();
  (*(v4 + 32))(a2, a1);
  return a2;
}

uint64_t sub_5FF8(uint64_t a1)
{
  sub_6070(a1, v4);
  if (!v2)
  {
    sub_6490(v4, v4[3]);
    v1 = sub_69C0();
    sub_64D4(v4);
  }

  return v1;
}

uint64_t sub_6070@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_6760();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == enum case for SearchToolSnippetPluginModel.attribution(_:))
  {
    (*(v5 + 96))(v7, v4);
    a2[3] = type metadata accessor for AttributionView(0);
    a2[4] = sub_63E8(&qword_10538, type metadata accessor for AttributionView, "=V");
    v11 = sub_6430(a2);
    v12 = sub_6790();
    return (*(*(v12 - 8) + 32))(v11, v7, v12);
  }

  else
  {
    sub_6394(v8, v9, v10);
    swift_allocError();
    swift_willThrow();
    return (*(v5 + 8))(v7, v4);
  }
}

Swift::Int sub_6304()
{
  sub_6C30();
  sub_6C40(0);
  return sub_6C50();
}

uint64_t sub_6348@<X0>(uint64_t *a1@<X8>)
{
  result = sub_5FE8();
  *a1 = result;
  return result;
}

unint64_t sub_6394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10530;
  if (!qword_10530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10530);
  }

  return result;
}

uint64_t sub_63E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *sub_6430(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

void *sub_6490(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_64D4(void *a1)
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

uint64_t getEnumTagSinglePayload for SearchToolUIPluginError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for SearchToolUIPluginError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x6614);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_665C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10540;
  if (!qword_10540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10540);
  }

  return result;
}

Swift::Int sub_66C0(uint64_t a1)
{
  sub_6C30();
  sub_6C40(0);
  return sub_6C50();
}