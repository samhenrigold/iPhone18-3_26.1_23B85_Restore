uint64_t sub_10001ECA8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = sub_100063774();
  v48 = *(v3 - 8);
  v49 = v3;
  v4 = __chkstk_darwin(v3);
  v47 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v46 = &v43 - v6;
  v7 = sub_100064094();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v45 = &v43 - v13;
  v51 = a1;
  v54 = *(a1 + 16);
  v44 = *(v54 - 8);
  __chkstk_darwin(v12);
  v50 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100064134();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v43 - v20;
  v22 = sub_1000021D4(&qword_100085800, &unk_100067120);
  __chkstk_darwin(v22 - 8);
  v24 = &v43 - v23;
  sub_100063934();
  v25 = sub_100064064();
  v26 = (*(*(v25 - 8) + 48))(v24, 1, v25);
  sub_10001F1F0(v24);
  if (v26 == 1 && (sub_1000639B4(), sub_100064114(), sub_10001F258(), v27 = sub_100064274(), v28 = *(v16 + 8), v28(v19, v15), v28(v21, v15), (v27 & 1) == 0))
  {
    v30 = v44;
    v31 = v52;
    (*(v44 + 16))(v50, v52, v54);
    v32 = v46;
    sub_1000638D4();
    v34 = v47;
    v33 = v48;
    v35 = v49;
    (*(v48 + 104))(v47, enum case for ColorScheme.dark(_:), v49);
    v36 = sub_100063764();
    v37 = *(v33 + 8);
    v37(v34, v35);
    v37(v32, v35);
    v38 = 36;
    if (v36)
    {
      v38 = 40;
    }

    v39 = v31 + *(v51 + v38);
    v40 = v45;
    (*(v8 + 16))(v45, v39, v7);
    v41 = v54;
    v42 = v50;
    sub_100063754();
    (*(v8 + 8))(v40, v7);
    return (*(v30 + 8))(v42, v41);
  }

  else
  {
    (*(v8 + 104))(v11, enum case for BlendMode.normal(_:), v7);
    sub_100063754();
    return (*(v8 + 8))(v11, v7);
  }
}

uint64_t sub_10001F1F0(uint64_t a1)
{
  v2 = sub_1000021D4(&qword_100085800, &unk_100067120);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10001F258()
{
  result = qword_100085808[0];
  if (!qword_100085808[0])
  {
    sub_100064134();
    result = swift_getWitnessTable();
    atomic_store(result, qword_100085808);
  }

  return result;
}

uint64_t sub_10001F2E0(void *a1)
{
  sub_100063B64();

  return swift_getWitnessTable();
}

uint64_t sub_10001F328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_100063B34();
  __chkstk_darwin(v7);
  (*(*(a2 - 8) + 16))(&v10 - v8, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_100063B44();
}

uint64_t sub_10001F420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_100063B34();
  __chkstk_darwin(v7);
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_100063B44();
}

uint64_t sub_10001F520(uint64_t a1)
{
  result = sub_100063454();
  if (v2 <= 0x3F)
  {
    result = sub_10001F5C0();
    if (v3 <= 0x3F)
    {
      result = sub_10001F610();
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_10001F5C0()
{
  result = qword_100085890;
  if (!qword_100085890)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_100085890);
  }

  return result;
}

unint64_t sub_10001F610()
{
  result = qword_100085898[0];
  if (!qword_100085898[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_100085898);
  }

  return result;
}

void sub_10001F674(uint64_t a1)
{
  sub_10001FD18(319);
  if (v2 <= 0x3F)
  {
    v3 = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      type metadata accessor for WidgetCTAView.CTAInteraction(319, v3, *(a1 + 24), v4);
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10001F724(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_100064134() - 8) + 64);
  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(sub_100063454() - 8);
  v13 = 40;
  if (*(v12 + 64) > 0x28uLL)
  {
    v13 = *(v12 + 64);
  }

  v14 = *(v9 + 80);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v11)
  {
    goto LABEL_31;
  }

  v15 = *(v12 + 80) & 0xF8 | 7;
  v16 = v13 + (((((v7 & 0xFFFFFFFFFFFFFFF8) + v14 + 16) & ~v14) + *(v9 + 64) + v15) & ~v15) + 1;
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v20 = ((a2 - v11 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v20))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v20 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v20 < 2)
    {
LABEL_31:
      v22 = ((a1 + v7 + 8) & 0xFFFFFFFFFFFFFFF8);
      if ((v10 & 0x80000000) != 0)
      {
        v24 = *(v9 + 48);

        return v24((v22 + v14 + 8) & ~v14, v10, v8);
      }

      else
      {
        v23 = *v22;
        if (v23 >= 0xFFFFFFFF)
        {
          LODWORD(v23) = -1;
        }

        return (v23 + 1);
      }
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_31;
  }

LABEL_20:
  v21 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v21 = 0;
  }

  if (v16)
  {
    if (v16 > 3)
    {
      LODWORD(v16) = 4;
    }

    if (v16 > 2)
    {
      if (v16 == 3)
      {
        LODWORD(v16) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v16) = *a1;
      }
    }

    else if (v16 == 1)
    {
      LODWORD(v16) = *a1;
    }

    else
    {
      LODWORD(v16) = *a1;
    }
  }

  return v11 + (v16 | v21) + 1;
}

void sub_10001F9C8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_100064134() - 8) + 64);
  if (v8 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(a4 + 16);
  v11 = *(v10 - 8);
  v28 = v11;
  v12 = *(v11 + 84);
  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  v14 = *(sub_100063454() - 8);
  v15 = 40;
  if (*(v14 + 64) > 0x28uLL)
  {
    v15 = *(v14 + 64);
  }

  v16 = *(v11 + 80);
  v17 = *(v14 + 80) & 0xF8 | 7;
  v18 = v15 + (((((v9 & 0xFFFFFFFFFFFFFFF8) + v16 + 16) & ~v16) + *(v11 + 64) + v17) & ~v17) + 1;
  if (a3 <= v13)
  {
    v19 = 0;
  }

  else if (v18 <= 3)
  {
    v22 = ((a3 - v13 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
    if (HIWORD(v22))
    {
      v19 = 4;
    }

    else
    {
      if (v22 < 0x100)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }

      if (v22 >= 2)
      {
        v19 = v23;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    v19 = 1;
  }

  if (v13 < a2)
  {
    v20 = ~v13 + a2;
    if (v18 < 4)
    {
      v21 = (v20 >> (8 * v18)) + 1;
      if (v18)
      {
        v24 = v20 & ~(-1 << (8 * v18));
        bzero(a1, v18);
        if (v18 != 3)
        {
          if (v18 == 2)
          {
            *a1 = v24;
            if (v19 > 1)
            {
LABEL_52:
              if (v19 == 2)
              {
                *&a1[v18] = v21;
              }

              else
              {
                *&a1[v18] = v21;
              }

              return;
            }
          }

          else
          {
            *a1 = v20;
            if (v19 > 1)
            {
              goto LABEL_52;
            }
          }

          goto LABEL_49;
        }

        *a1 = v24;
        a1[2] = BYTE2(v24);
      }

      if (v19 > 1)
      {
        goto LABEL_52;
      }
    }

    else
    {
      bzero(a1, v18);
      *a1 = v20;
      v21 = 1;
      if (v19 > 1)
      {
        goto LABEL_52;
      }
    }

LABEL_49:
    if (v19)
    {
      a1[v18] = v21;
    }

    return;
  }

  if (v19 > 1)
  {
    if (v19 != 2)
    {
      *&a1[v18] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

    *&a1[v18] = 0;
  }

  else if (v19)
  {
    a1[v18] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return;
  }

LABEL_36:
  v25 = (&a1[v9 + 8] & 0xFFFFFFFFFFFFFFF8);
  if ((v12 & 0x80000000) != 0)
  {
    v27 = *(v28 + 56);

    v27((v25 + v16 + 8) & ~v16, a2, v12, v10);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v26 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v26 = (a2 - 1);
    }

    *v25 = v26;
  }
}

void sub_10001FD18(uint64_t a1)
{
  if (!qword_100085258)
  {
    sub_100064134();
    v1 = sub_100063784();
    if (!v2)
    {
      atomic_store(v1, &qword_100085258);
    }
  }
}

uint64_t sub_10001FDB4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v118 = a2;
  v3 = sub_100064134();
  v4 = __chkstk_darwin(v3 - 8);
  v115 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = *(*(a1 + 16) - 8);
  __chkstk_darwin(v4);
  v110 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 24);
  v114 = v8;
  v109 = v7;
  v10 = type metadata accessor for BackgroundModifier(0, v8, v7, v9);
  v113 = *(v10 - 8);
  __chkstk_darwin(v10);
  v112 = &v87 - v11;
  v105 = sub_100063B84();
  v103 = *(v105 - 8);
  __chkstk_darwin(v105);
  v99 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_1000021D4(&qword_100085920, &qword_1000671D0);
  __chkstk_darwin(v89);
  v14 = &v87 - v13;
  v15 = sub_100063D94();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000021D4(&qword_100085928, &qword_1000671D8);
  __chkstk_darwin(v19);
  v21 = &v87 - v20;
  v88 = sub_1000021D4(&qword_100085930, &qword_1000671E0);
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v23 = &v87 - v22;
  v90 = sub_1000021D4(&qword_100085938, &qword_1000671E8);
  __chkstk_darwin(v90);
  v25 = &v87 - v24;
  v94 = sub_1000021D4(&qword_100085940, &qword_1000671F0);
  __chkstk_darwin(v94);
  v91 = &v87 - v26;
  v96 = sub_1000021D4(&qword_100085948, &qword_1000671F8);
  v93 = *(v96 - 8);
  __chkstk_darwin(v96);
  v92 = &v87 - v27;
  v28 = sub_1000021D4(&qword_100085950, &qword_100067200);
  v97 = *(v28 - 8);
  __chkstk_darwin(v28);
  v95 = &v87 - v29;
  v98 = v30;
  v117 = v10;
  v31 = sub_100063834();
  v104 = *(v31 - 8);
  __chkstk_darwin(v31);
  v100 = &v87 - v32;
  v106 = v33;
  v108 = sub_100063834();
  v107 = *(v108 - 8);
  v34 = __chkstk_darwin(v108);
  v101 = &v87 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v102 = &v87 - v36;
  v116 = a1;
  sub_100020C24(a1, v21);
  sub_100063DB4();
  (*(v16 + 104))(v18, enum case for Font.Leading.tight(_:), v15);
  v37 = sub_100063DA4();

  (*(v16 + 8))(v18, v15);
  KeyPath = swift_getKeyPath();
  v39 = &v21[*(v19 + 36)];
  *v39 = KeyPath;
  v39[1] = v37;
  v40 = sub_100021F60();
  sub_100063F34();
  sub_10000494C(v21, &qword_100085928, &qword_1000671D8);
  v41 = enum case for DynamicTypeSize.xxLarge(_:);
  v42 = sub_100063814();
  (*(*(v42 - 8) + 104))(v14, v41, v42);
  sub_100022FDC(&qword_1000859A0, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = sub_100064274();
  if (result)
  {
    *&v126 = v19;
    *(&v126 + 1) = v40;
    swift_getOpaqueTypeConformance2();
    sub_100009F14(&qword_1000859A8, &qword_100085920, &qword_1000671D0, &protocol conformance descriptor for PartialRangeThrough<A>);
    v44 = v88;
    sub_100063EE4();
    sub_10000494C(v14, &qword_100085920, &qword_1000671D0);
    (*(v87 + 8))(v23, v44);
    v45 = sub_100063CB4();
    sub_100063714();
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v54 = &v25[*(sub_1000021D4(&qword_1000859B0, &qword_100067260) + 36)];
    *v54 = v45;
    *(v54 + 1) = v47;
    *(v54 + 2) = v49;
    *(v54 + 3) = v51;
    *(v54 + 4) = v53;
    v54[40] = 0;
    sub_100064084();
    sub_100063874();
    v55 = &v25[*(v90 + 36)];
    v56 = v131;
    *(v55 + 4) = v130;
    *(v55 + 5) = v56;
    *(v55 + 6) = v132;
    v57 = v127;
    *v55 = v126;
    *(v55 + 1) = v57;
    v58 = v129;
    *(v55 + 2) = v128;
    *(v55 + 3) = v58;
    v59 = v99;
    sub_100063B74();
    sub_1000221B4();
    sub_100022FDC(&qword_1000859C8, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
    v60 = v91;
    v61 = v105;
    sub_100063EB4();
    (*(v103 + 8))(v59, v61);
    sub_10000494C(v25, &qword_100085938, &qword_1000671E8);
    v62 = (v60 + *(sub_1000021D4(&qword_1000859D0, &qword_100067268) + 36));
    sub_1000021D4(&qword_1000859D8, &qword_100067270);
    sub_100063884();
    *v62 = swift_getKeyPath();
    v63 = sub_100063F74();
    v64 = v94;
    *(v60 + *(v94 + 36)) = v63;
    v65 = sub_100022494();
    v66 = v92;
    sub_100063EA4();
    sub_10000494C(v60, &qword_100085940, &qword_1000671F0);
    v124 = v64;
    v125 = v65;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v68 = v95;
    v69 = v96;
    sub_100063E24();
    (*(v93 + 8))(v66, v69);
    v70 = v110;
    v71 = v114;
    (*(v111 + 16))(v110, v119 + *(v116 + 40), v114);
    v72 = v115;
    sub_1000309E0(v115);
    v73 = v112;
    sub_100021544(v70, v72, v71, v112, v109);
    v124 = v69;
    v125 = OpaqueTypeConformance2;
    v74 = swift_getOpaqueTypeConformance2();
    v75 = v100;
    v76 = v98;
    v77 = v117;
    sub_100063F54();
    (*(v113 + 8))(v73, v77);
    (*(v97 + 8))(v68, v76);
    sub_100063F64();
    sub_100063F84();

    WitnessTable = swift_getWitnessTable();
    v122 = v74;
    v123 = WitnessTable;
    v79 = v106;
    v80 = swift_getWitnessTable();
    v81 = v101;
    sub_100063F44();

    (*(v104 + 8))(v75, v79);
    v120 = v80;
    v121 = &protocol witness table for _ShadowEffect;
    v82 = v108;
    swift_getWitnessTable();
    v83 = v107;
    v84 = *(v107 + 16);
    v85 = v102;
    v84(v102, v81, v82);
    v86 = *(v83 + 8);
    v86(v81, v82);
    v84(v118, v85, v82);
    return (v86)(v85, v82);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100020C24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v55 = sub_1000021D4(&qword_100085998, &unk_100067250);
  v49 = *(v55 - 8);
  __chkstk_darwin(v55);
  v48 = &v43 - v3;
  v51 = sub_1000021D4(&qword_100085A08, &qword_1000672B0);
  __chkstk_darwin(v51);
  v53 = &v43 - v4;
  v45 = sub_1000021D4(qword_100085A10, &qword_1000672B8);
  __chkstk_darwin(v45);
  v44 = &v43 - v5;
  v52 = sub_1000021D4(&qword_100085978, &qword_100067240);
  __chkstk_darwin(v52);
  v47 = &v43 - v6;
  v46 = sub_1000021D4(&qword_100085988, &qword_100067248);
  v43 = *(v46 - 8);
  __chkstk_darwin(v46);
  v8 = &v43 - v7;
  v9 = sub_100063454();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v43 - v14;
  v17 = *(a1 + 16);
  v16 = *(a1 + 24);
  v19 = type metadata accessor for WidgetCTAView.CTAInteraction(0, v17, v16, v18);
  __chkstk_darwin(v19);
  v21 = (&v43 - v20);
  v22 = *(a1 + 44);
  v23 = v50;
  (*(v24 + 16))(v21, v50 + v22, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      __chkstk_darwin(EnumCaseMultiPayload);
      *(&v43 - 4) = v17;
      *(&v43 - 3) = v16;
      *(&v43 - 2) = v23;

      v26 = v48;
      sub_100064044();
      v27 = v49;
      v28 = v55;
      (*(v49 + 16))(v44, v26, v55);
      swift_storeEnumTagMultiPayload();
      sub_100009F14(&qword_100085980, &qword_100085988, &qword_100067248, &protocol conformance descriptor for Link<A>);
      sub_100009F14(&qword_100085990, &qword_100085998, &unk_100067250, &protocol conformance descriptor for Button<A>);
      v29 = v47;
      sub_100063B44();
      sub_10002273C(v29, v53);
      swift_storeEnumTagMultiPayload();
      sub_1000220D0();
      sub_100063B44();

      sub_10000494C(v29, &qword_100085978, &qword_100067240);
      return (*(v27 + 8))(v26, v28);
    }

    else
    {
      sub_100022690(v21, v56);
      v35 = sub_1000226A8(v56, v56[3]);
      __chkstk_darwin(v35);
      v38 = (*(v37 + 16))(&v43 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
      __chkstk_darwin(v38);
      *(&v43 - 4) = v17;
      *(&v43 - 3) = v16;
      *(&v43 - 2) = v39;
      v40 = v48;
      sub_100064034();
      v41 = v49;
      v42 = v55;
      (*(v49 + 16))(v53, v40, v55);
      swift_storeEnumTagMultiPayload();
      sub_1000220D0();
      sub_100009F14(&qword_100085990, &qword_100085998, &unk_100067250, &protocol conformance descriptor for Button<A>);
      sub_100063B44();
      (*(v41 + 8))(v40, v42);
      return sub_1000226EC(v56);
    }
  }

  else
  {
    (*(v10 + 32))(v15, v21, v9);
    v31 = (*(v10 + 16))(v13, v15, v9);
    __chkstk_darwin(v31);
    *(&v43 - 4) = v17;
    *(&v43 - 3) = v16;
    *(&v43 - 2) = v23;
    sub_100063DC4();
    v32 = v43;
    v33 = v46;
    (*(v43 + 16))(v44, v8, v46);
    swift_storeEnumTagMultiPayload();
    sub_100009F14(&qword_100085980, &qword_100085988, &qword_100067248, &protocol conformance descriptor for Link<A>);
    sub_100009F14(&qword_100085990, &qword_100085998, &unk_100067250, &protocol conformance descriptor for Button<A>);
    v34 = v47;
    sub_100063B44();
    sub_10002273C(v34, v53);
    swift_storeEnumTagMultiPayload();
    sub_1000220D0();
    sub_100063B44();
    sub_10000494C(v34, &qword_100085978, &qword_100067240);
    (*(v32 + 8))(v8, v33);
    return (*(v10 + 8))(v15, v9);
  }
}

uint64_t sub_100021544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  v10 = *(type metadata accessor for BackgroundModifier(0, a3, a5, v9) + 36);
  v11 = sub_100064134();
  v12 = *(*(v11 - 8) + 32);

  return v12(a4 + v10, a2, v11);
}

uint64_t sub_100021620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a1;
  v59 = a3;
  swift_getWitnessTable();
  v4 = sub_100063B94();
  sub_10000221C(&qword_100085A98, &qword_100067338);
  v5 = sub_100063834();
  v54 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v52 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v53 = v50 - v8;
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = sub_100022F88();
  v50[2] = v10;
  v76 = v10;
  v77 = &type metadata for Circle;
  v50[3] = v9;
  v78 = v9;
  v79 = v11;
  v50[1] = v11;
  v60 = sub_100063C54();
  v61 = v4;
  v12 = sub_100063834();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v51 = v50 - v17;
  v18 = sub_100064134();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_100063B54();
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v56 = v50 - v22;
  sub_100064124();
  sub_100022FDC(qword_100085808, &type metadata accessor for WidgetRenderingMode, &protocol conformance descriptor for WidgetRenderingMode);
  LOBYTE(a2) = sub_100064274();
  (*(v19 + 8))(v21, v18);
  if (a2)
  {
    sub_100064084();
    sub_1000021D4(&qword_100085AB0, &qword_100067340);
    WitnessTable = swift_getWitnessTable();
    v24 = sub_10000221C(&qword_100085AB8, &qword_100067348);
    v25 = sub_100023024();
    v76 = v24;
    v77 = v25;
    swift_getOpaqueTypeConformance2();
    v26 = v52;
    sub_100063E64();
    v27 = sub_100009F14(&qword_100085AA8, &qword_100085A98, &qword_100067338, &protocol conformance descriptor for _BackgroundModifier<A>);
    v64 = WitnessTable;
    v65 = v27;
    v55 = swift_getWitnessTable();
    v28 = v54;
    v29 = *(v54 + 16);
    v30 = v53;
    v29(v53, v26, v5);
    v31 = *(v28 + 8);
    v31(v26, v5);
    v29(v26, v30, v5);
    v32 = swift_getWitnessTable();
    v62 = WitnessTable;
    v63 = v32;
    v33 = swift_getWitnessTable();
    v34 = v56;
    sub_10001F420(v26, v12, v5, v33, v55);
    v31(v26, v5);
    v31(v30, v5);
  }

  else
  {
    v35 = swift_getWitnessTable();
    sub_100063E74();
    v36 = swift_getWitnessTable();
    v74 = v35;
    v75 = v36;
    v55 = swift_getWitnessTable();
    v37 = *(v13 + 16);
    v38 = v51;
    v37(v51, v16, v12);
    v39 = *(v13 + 8);
    v39(v16, v12);
    v37(v16, v38, v12);
    v40 = sub_100009F14(&qword_100085AA8, &qword_100085A98, &qword_100067338, &protocol conformance descriptor for _BackgroundModifier<A>);
    v72 = v35;
    v73 = v40;
    v41 = swift_getWitnessTable();
    v34 = v56;
    sub_10001F328(v16, v12, v5, v55, v41);
    v39(v16, v12);
    v39(v38, v12);
  }

  v42 = swift_getWitnessTable();
  v43 = swift_getWitnessTable();
  v70 = v42;
  v71 = v43;
  v44 = swift_getWitnessTable();
  v45 = sub_100009F14(&qword_100085AA8, &qword_100085A98, &qword_100067338, &protocol conformance descriptor for _BackgroundModifier<A>);
  v68 = v42;
  v69 = v45;
  v46 = swift_getWitnessTable();
  v66 = v44;
  v67 = v46;
  v47 = v58;
  swift_getWitnessTable();
  v48 = v57;
  (*(v57 + 16))(v59, v34, v47);
  return (*(v48 + 8))(v34, v47);
}

uint64_t sub_100021EA0(uint64_t a1)
{
  sub_100063F64();
  sub_1000021D4(&qword_100085AB8, &qword_100067348);
  sub_100023024();
  sub_100063E24();
}

unint64_t sub_100021F60()
{
  result = qword_100085958;
  if (!qword_100085958)
  {
    sub_10000221C(&qword_100085928, &qword_1000671D8);
    sub_100022018();
    sub_100009F14(&qword_100085398, &qword_1000853A0, &qword_100066A90, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085958);
  }

  return result;
}

unint64_t sub_100022018()
{
  result = qword_100085960;
  if (!qword_100085960)
  {
    sub_10000221C(&qword_100085968, &qword_100067238);
    sub_1000220D0();
    sub_100009F14(&qword_100085990, &qword_100085998, &unk_100067250, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085960);
  }

  return result;
}

unint64_t sub_1000220D0()
{
  result = qword_100085970;
  if (!qword_100085970)
  {
    sub_10000221C(&qword_100085978, &qword_100067240);
    sub_100009F14(&qword_100085980, &qword_100085988, &qword_100067248, &protocol conformance descriptor for Link<A>);
    sub_100009F14(&qword_100085990, &qword_100085998, &unk_100067250, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085970);
  }

  return result;
}

unint64_t sub_1000221B4()
{
  result = qword_1000859B8;
  if (!qword_1000859B8)
  {
    sub_10000221C(&qword_100085938, &qword_1000671E8);
    sub_100022240();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000859B8);
  }

  return result;
}

unint64_t sub_100022240()
{
  result = qword_1000859C0;
  if (!qword_1000859C0)
  {
    sub_10000221C(&qword_1000859B0, &qword_100067260);
    sub_10000221C(&qword_100085930, &qword_1000671E0);
    sub_10000221C(&qword_100085920, &qword_1000671D0);
    sub_10000221C(&qword_100085928, &qword_1000671D8);
    sub_100021F60();
    swift_getOpaqueTypeConformance2();
    sub_100009F14(&qword_1000859A8, &qword_100085920, &qword_1000671D0, &protocol conformance descriptor for PartialRangeThrough<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000859C0);
  }

  return result;
}

uint64_t sub_1000223C8(uint64_t a1)
{
  v2 = sub_100063894();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_100063924();
}

unint64_t sub_100022494()
{
  result = qword_1000859E0;
  if (!qword_1000859E0)
  {
    sub_10000221C(&qword_100085940, &qword_1000671F0);
    sub_10002254C();
    sub_100009F14(&qword_1000859F8, &qword_100085A00, &qword_1000672A8, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000859E0);
  }

  return result;
}

unint64_t sub_10002254C()
{
  result = qword_1000859E8;
  if (!qword_1000859E8)
  {
    sub_10000221C(&qword_1000859D0, &qword_100067268);
    sub_10000221C(&qword_100085938, &qword_1000671E8);
    sub_100063B84();
    sub_1000221B4();
    sub_100022FDC(&qword_1000859C8, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100009F14(&qword_1000859F0, &qword_1000859D8, &qword_100067270, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000859E8);
  }

  return result;
}

uint64_t sub_100022690(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_1000226A8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000226EC(void *a1)
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

uint64_t sub_10002273C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000021D4(&qword_100085978, &qword_100067240);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000227AC@<X0>(uint64_t a1@<X3>, void *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  *a2 = *(v5 + *(type metadata accessor for WidgetCTAView(0, v3, v4, a1) + 36));
}

uint64_t sub_1000227F8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_100064134();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100022880(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_100064134();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(*(v8 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v23 = *(v6 + 48);

          return v23(a1, v7, v5);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_100022AE4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_100064134() - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v8 + 64) + v13;
  v15 = (v14 & ~v13) + *(v10 + 64);
  if (a3 <= v12)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v12 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v23 = *(v24 + 56);

    v23(a1, a2, v9, v7);
  }

  else
  {
    v22 = *(v10 + 56);

    v22(&a1[v14] & ~v13, a2);
  }
}

uint64_t sub_100022DD4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_10000221C(&qword_100085950, &qword_100067200);
  type metadata accessor for BackgroundModifier(255, v1, v2, v3);
  sub_100063834();
  sub_100063834();
  sub_10000221C(&qword_100085948, &qword_1000671F8);
  sub_10000221C(&qword_100085940, &qword_1000671F0);
  sub_100022494();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_100022F88()
{
  result = qword_100085AA0;
  if (!qword_100085AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085AA0);
  }

  return result;
}

uint64_t sub_100022FDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100023024()
{
  result = qword_100085AC0;
  if (!qword_100085AC0)
  {
    sub_10000221C(&qword_100085AB8, &qword_100067348);
    sub_1000230B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085AC0);
  }

  return result;
}

unint64_t sub_1000230B0()
{
  result = qword_100085AC8;
  if (!qword_100085AC8)
  {
    sub_10000221C(&qword_100085AD0, &qword_100067350);
    sub_100009F14(&qword_100085AD8, &qword_100085AE0, &qword_100067358, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085AC8);
  }

  return result;
}

uint64_t sub_100023168(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for BackgroundModifier(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  sub_100063B94();
  sub_100022F88();
  sub_100063C54();
  sub_100063834();
  sub_10000221C(&qword_100085A98, &qword_100067338);
  sub_100063834();
  sub_100063B54();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_100009F14(&qword_100085AA8, &qword_100085A98, &qword_100067338, &protocol conformance descriptor for _BackgroundModifier<A>);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

void sub_10002339C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006CC60;
  v8._countAndFlagsBits = 0x6C616E72756F4ALL;
  v6._object = 0x800000010006CC40;
  v6._countAndFlagsBits = 0xD000000000000016;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._object = 0xE700000000000000;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD000000000000024, v5);
  v4 = v3;

  qword_100090330 = v2;
  *algn_100090338 = v4;
}

void sub_100023460()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006CC20;
  v8._countAndFlagsBits = 0x72746E452077654ELL;
  v6._countAndFlagsBits = 0xD00000000000001ALL;
  v6._object = 0x800000010006CC00;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._object = 0xE900000000000079;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD000000000000017, v5);
  v4 = v3;

  qword_100090340 = v2;
  *algn_100090348 = v4;
}

void sub_100023528()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006D160;
  v6._countAndFlagsBits = 0xD000000000000020;
  v6._object = 0x800000010006D0F0;
  v8._countAndFlagsBits = 0xD000000000000031;
  v8._object = 0x800000010006D120;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD00000000000001DLL, v5);
  v4 = v3;

  qword_100090350 = v2;
  *algn_100090358 = v4;
}

void sub_1000235EC()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006CCC0;
  v8._countAndFlagsBits = 0x72746E452077654ELL;
  v6._object = 0x800000010006CD40;
  v6._countAndFlagsBits = 0xD000000000000023;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._object = 0xE900000000000079;
  v2 = sub_100063374(v6, v7, v1, v8, 0x1000000000000070, v5);
  v4 = v3;

  qword_100090360 = v2;
  *algn_100090368 = v4;
}

void sub_1000236B0()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006CCC0;
  v8._countAndFlagsBits = 0x6F7250207478654ELL;
  v8._object = 0xEB0000000074706DLL;
  v6._object = 0x800000010006CC90;
  v6._countAndFlagsBits = 0xD000000000000024;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, 0x1000000000000070, v5);
  v4 = v3;

  qword_100090370 = v2;
  *algn_100090378 = v4;
}

void sub_100023778()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100072660;
  v6._object = 0x8000000100072600;
  v8._countAndFlagsBits = 0xD00000000000002ALL;
  v8._object = 0x8000000100072630;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD000000000000050, v5);
  v4 = v3;

  qword_100090380 = v2;
  *algn_100090388 = v4;
}

void sub_10002383C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x80000001000725B0;
  v6._object = 0x8000000100072550;
  v8._countAndFlagsBits = 0xD000000000000027;
  v8._object = 0x8000000100072580;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD00000000000004DLL, v5);
  v4 = v3;

  qword_100090390 = v2;
  *algn_100090398 = v4;
}

void sub_100023900()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x80000001000724F0;
  v6._object = 0x8000000100072480;
  v8._countAndFlagsBits = 0xD000000000000031;
  v8._object = 0x80000001000724B0;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD000000000000057, v5);
  v4 = v3;

  qword_1000903A0 = v2;
  *algn_1000903A8 = v4;
}

void sub_1000239C4()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100072420;
  v6._object = 0x80000001000723B0;
  v8._countAndFlagsBits = 0xD000000000000035;
  v8._object = 0x80000001000723E0;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD00000000000005BLL, v5);
  v4 = v3;

  qword_1000903B0 = v2;
  *algn_1000903B8 = v4;
}

void sub_100023A88()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100072350;
  v6._object = 0x80000001000722E0;
  v8._countAndFlagsBits = 0xD000000000000031;
  v8._object = 0x8000000100072310;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD000000000000057, v5);
  v4 = v3;

  qword_1000903C0 = v2;
  *algn_1000903C8 = v4;
}

void sub_100023B4C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100072290;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x8000000100072230;
  v8._object = 0x8000000100072260;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000020;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD000000000000046, v5);
  v4 = v3;

  qword_1000903D0 = v2;
  *algn_1000903D8 = v4;
}

void sub_100023C10()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x80000001000721D0;
  v6._object = 0x8000000100072170;
  v8._countAndFlagsBits = 0xD00000000000002ELL;
  v8._object = 0x80000001000721A0;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD000000000000054, v5);
  v4 = v3;

  qword_1000903E0 = v2;
  *algn_1000903E8 = v4;
}

void sub_100023CD4()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006D740;
  v6._object = 0x800000010006D6E0;
  v8._object = 0x800000010006D710;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000022;
  v2 = sub_100063374(v6, v7, v1, v8, 0x1000000000000048, v5);
  v4 = v3;

  qword_1000903F0 = v2;
  *algn_1000903F8 = v4;
}

void sub_100023D9C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006D690;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x800000010006D640;
  v8._object = 0x800000010006D670;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD00000000000001CLL;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD000000000000042, v5);
  v4 = v3;

  qword_100090400 = v2;
  *algn_100090408 = v4;
}

void sub_100023E60()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006DBA0;
  v6._object = 0x800000010006DB40;
  v8._object = 0x800000010006DB70;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x100000000000002ALL;
  v2 = sub_100063374(v6, v7, v1, v8, 0x1000000000000050, v5);
  v4 = v3;

  qword_100090410 = v2;
  *algn_100090418 = v4;
}

void sub_100023F28()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006DAF0;
  v6._object = 0x800000010006DA90;
  v8._countAndFlagsBits = 0xD000000000000027;
  v8._object = 0x800000010006DAC0;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD00000000000004DLL, v5);
  v4 = v3;

  qword_100090420 = v2;
  *algn_100090428 = v4;
}

void sub_100023FEC()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100072110;
  v6._object = 0x80000001000720A0;
  v8._object = 0x80000001000720D0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000036;
  v2 = sub_100063374(v6, v7, v1, v8, 0x100000000000005CLL, v5);
  v4 = v3;

  qword_100090430 = v2;
  *algn_100090438 = v4;
}

void sub_1000240B4()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100072050;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x8000000100071FF0;
  v8._object = 0x8000000100072020;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000025;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD00000000000004BLL, v5);
  v4 = v3;

  qword_100090440 = v2;
  *algn_100090448 = v4;
}

void sub_100024178()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100071FA0;
  v6._object = 0x8000000100071F40;
  v8._countAndFlagsBits = 0xD000000000000028;
  v8._object = 0x8000000100071F70;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD00000000000004ELL, v5);
  v4 = v3;

  qword_100090450 = v2;
  *algn_100090458 = v4;
}

void sub_10002423C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100071EF0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x8000000100071EA0;
  v8._object = 0x8000000100071ED0;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD00000000000001FLL;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD000000000000045, v5);
  v4 = v3;

  qword_100090460 = v2;
  *algn_100090468 = v4;
}

void sub_100024300()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100071E50;
  v6._object = 0x8000000100071DF0;
  v8._object = 0x8000000100071E20;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000026;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD00000000000004CLL, v5);
  v4 = v3;

  qword_100090470 = v2;
  *algn_100090478 = v4;
}

void sub_1000243C8()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100071DA0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x8000000100071D40;
  v8._object = 0x8000000100071D70;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000025;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD00000000000004BLL, v5);
  v4 = v3;

  qword_100090480 = v2;
  *algn_100090488 = v4;
}

void sub_10002448C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100071CF0;
  v6._object = 0x8000000100071C90;
  v8._object = 0x8000000100071CC0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000026;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD00000000000004CLL, v5);
  v4 = v3;

  qword_100090490 = v2;
  *algn_100090498 = v4;
}

void sub_100024554()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100071C40;
  v6._object = 0x8000000100071BE0;
  v8._object = 0x8000000100071C10;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000026;
  v2 = sub_100063374(v6, v7, v1, v8, 0x100000000000004CLL, v5);
  v4 = v3;

  qword_1000904A0 = v2;
  *algn_1000904A8 = v4;
}

void sub_10002461C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100071B90;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x8000000100071B30;
  v8._object = 0x8000000100071B60;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000023;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD000000000000049, v5);
  v4 = v3;

  qword_1000904B0 = v2;
  *algn_1000904B8 = v4;
}

void sub_1000246E0()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100071AE0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x8000000100071A80;
  v8._object = 0x8000000100071AB0;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000021;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD000000000000047, v5);
  v4 = v3;

  qword_1000904C0 = v2;
  *algn_1000904C8 = v4;
}

uint64_t sub_1000247A4()
{
  if (qword_1000844E0 != -1)
  {
    swift_once();
  }

  qword_1000904D0 = qword_1000903D0;
  *algn_1000904D8 = *algn_1000903D8;
}

void sub_100024810()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100071A30;
  v6._object = 0x80000001000719D0;
  v8._object = 0x8000000100071A00;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000024;
  v2 = sub_100063374(v6, v7, v1, v8, 0x100000000000004ALL, v5);
  v4 = v3;

  qword_1000904E0 = v2;
  *algn_1000904E8 = v4;
}

void sub_1000248D8()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100071980;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x8000000100071920;
  v8._object = 0x8000000100071950;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000021;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD000000000000047, v5);
  v4 = v3;

  qword_1000904F0 = v2;
  *algn_1000904F8 = v4;
}

uint64_t sub_10002499C()
{
  if (qword_1000844F0 != -1)
  {
    swift_once();
  }

  qword_100090500 = qword_1000903F0;
  *algn_100090508 = *algn_1000903F8;
}

void sub_100024A08()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006DEE0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x800000010006DE80;
  v8._object = 0x800000010006DEB0;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000022;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD000000000000048, v5);
  v4 = v3;

  qword_100090510 = v2;
  *algn_100090518 = v4;
}

void sub_100024ACC()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x80000001000718D0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x8000000100071880;
  v8._object = 0x80000001000718B0;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD00000000000001DLL;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD000000000000043, v5);
  v4 = v3;

  qword_100090520 = v2;
  *algn_100090528 = v4;
}

uint64_t sub_100024B90()
{
  if (qword_1000844F8 != -1)
  {
    swift_once();
  }

  qword_100090530 = qword_100090400;
  *algn_100090538 = *algn_100090408;
}

void sub_100024BFC()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100071830;
  v6._object = 0x80000001000717D0;
  v8._object = 0x8000000100071800;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000020;
  v2 = sub_100063374(v6, v7, v1, v8, 0x1000000000000046, v5);
  v4 = v3;

  qword_100090540 = v2;
  *algn_100090548 = v4;
}

void sub_100024CC4()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100071780;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x8000000100071730;
  v8._object = 0x8000000100071760;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD00000000000001DLL;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD000000000000043, v5);
  v4 = v3;

  qword_100090550 = v2;
  *algn_100090558 = v4;
}

void sub_100024D88()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x80000001000716F0;
  v6._object = 0x80000001000716A0;
  v8._object = 0x80000001000716D0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000018;
  v2 = sub_100063374(v6, v7, v1, v8, 0x100000000000003ELL, v5);
  v4 = v3;

  qword_100090560 = v2;
  *algn_100090568 = v4;
}

void sub_100024E54()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100071660;
  v6._object = 0x8000000100071610;
  v8._object = 0x8000000100071640;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000016;
  v2 = sub_100063374(v6, v7, v1, v8, 0x100000000000003CLL, v5);
  v4 = v3;

  qword_100090570 = v2;
  *algn_100090578 = v4;
}

void sub_100024F1C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x80000001000715D0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x8000000100071580;
  v8._object = 0x80000001000715B0;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000014;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD00000000000003ALL, v5);
  v4 = v3;

  qword_100090580 = v2;
  *algn_100090588 = v4;
}

void sub_100024FE0()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100071540;
  v6._object = 0x80000001000714F0;
  v8._object = 0x8000000100071520;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000014;
  v2 = sub_100063374(v6, v7, v1, v8, 0x100000000000003ALL, v5);
  v4 = v3;

  qword_100090590 = v2;
  *algn_100090598 = v4;
}

void sub_1000250A8()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006E250;
  v6._object = 0x800000010006E200;
  v8._object = 0x800000010006E230;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000014;
  v2 = sub_100063374(v6, v7, v1, v8, 0x100000000000003ALL, v5);
  v4 = v3;

  qword_1000905A0 = v2;
  *algn_1000905A8 = v4;
}

void sub_100025170()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006E1C0;
  v6._object = 0x800000010006E170;
  v8._object = 0x800000010006E1A0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000012;
  v2 = sub_100063374(v6, v7, v1, v8, 0x1000000000000038, v5);
  v4 = v3;

  qword_1000905B0 = v2;
  *algn_1000905B8 = v4;
}

void sub_100025238()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x80000001000714B0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x8000000100071460;
  v8._object = 0x8000000100071490;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000015;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD00000000000003BLL, v5);
  v4 = v3;

  qword_1000905C0 = v2;
  *algn_1000905C8 = v4;
}

void sub_1000252FC()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100071420;
  v6._object = 0x80000001000713D0;
  v8._object = 0x8000000100071400;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000010;
  v2 = sub_100063374(v6, v7, v1, v8, 0x1000000000000036, v5);
  v4 = v3;

  qword_1000905D0 = v2;
  *algn_1000905D8 = v4;
}

void sub_1000253C8()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100071380;
  v6._object = 0x8000000100071320;
  v8._countAndFlagsBits = 0xD000000000000028;
  v8._object = 0x8000000100071350;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD00000000000004ELL, v5);
  v4 = v3;

  qword_1000905E0 = v2;
  *algn_1000905E8 = v4;
}

void sub_10002548C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x80000001000712D0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x8000000100071280;
  v8._object = 0x80000001000712B0;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD00000000000001ELL;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD000000000000044, v5);
  v4 = v3;

  qword_1000905F0 = v2;
  *algn_1000905F8 = v4;
}

void sub_100025550()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100071220;
  v6._object = 0x80000001000711C0;
  v8._object = 0x80000001000711F0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x100000000000002FLL;
  v2 = sub_100063374(v6, v7, v1, v8, 0x1000000000000055, v5);
  v4 = v3;

  qword_100090600 = v2;
  *algn_100090608 = v4;
}

void sub_100025618()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100071160;
  v6._object = 0x80000001000710F0;
  v8._object = 0x8000000100071120;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000035;
  v2 = sub_100063374(v6, v7, v1, v8, 0x100000000000005BLL, v5);
  v4 = v3;

  qword_100090610 = v2;
  *algn_100090618 = v4;
}

void sub_1000256E0()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100071090;
  v6._object = 0x8000000100071020;
  v8._object = 0x8000000100071050;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000033;
  v2 = sub_100063374(v6, v7, v1, v8, 0x1000000000000059, v5);
  v4 = v3;

  qword_100090620 = v2;
  *algn_100090628 = v4;
}

void sub_1000257A8()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100070FC0;
  v6._object = 0x8000000100070F50;
  v8._countAndFlagsBits = 0xD000000000000034;
  v8._object = 0x8000000100070F80;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD00000000000005ALL, v5);
  v4 = v3;

  qword_100090630 = v2;
  *algn_100090638 = v4;
}

void sub_10002586C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100070EF0;
  v6._object = 0x8000000100070E90;
  v8._countAndFlagsBits = 0xD00000000000002CLL;
  v8._object = 0x8000000100070EC0;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD000000000000052, v5);
  v4 = v3;

  qword_100090640 = v2;
  *algn_100090648 = v4;
}

void sub_100025930()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100070E30;
  v6._object = 0x8000000100070DC0;
  v8._countAndFlagsBits = 0xD000000000000030;
  v8._object = 0x8000000100070DF0;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD000000000000056, v5);
  v4 = v3;

  qword_100090650 = v2;
  *algn_100090658 = v4;
}

void sub_1000259F4()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006D5E0;
  v6._object = 0x800000010006D580;
  v8._countAndFlagsBits = 0xD00000000000002DLL;
  v8._object = 0x800000010006D5B0;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD000000000000053, v5);
  v4 = v3;

  qword_100090660 = v2;
  *algn_100090668 = v4;
}

void sub_100025AB8()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006D530;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x800000010006D4D0;
  v8._object = 0x800000010006D500;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000025;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD00000000000004BLL, v5);
  v4 = v3;

  qword_100090670 = v2;
  *algn_100090678 = v4;
}

void sub_100025B7C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006DA30;
  v6._object = 0x800000010006D9C0;
  v8._object = 0x800000010006D9F0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000031;
  v2 = sub_100063374(v6, v7, v1, v8, 0x1000000000000057, v5);
  v4 = v3;

  qword_100090680 = v2;
  *algn_100090688 = v4;
}

void sub_100025C44()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006D970;
  v6._object = 0x800000010006D910;
  v8._object = 0x800000010006D940;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000028;
  v2 = sub_100063374(v6, v7, v1, v8, 0x100000000000004ELL, v5);
  v4 = v3;

  qword_100090690 = v2;
  *algn_100090698 = v4;
}

void sub_100025D0C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100070D70;
  v6._object = 0x8000000100070D10;
  v8._object = 0x8000000100070D40;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000025;
  v2 = sub_100063374(v6, v7, v1, v8, 0x100000000000004BLL, v5);
  v4 = v3;

  qword_1000906A0 = v2;
  *algn_1000906A8 = v4;
}

void sub_100025DD4()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100070CB0;
  v6._object = 0x8000000100070C50;
  v8._object = 0x8000000100070C80;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x100000000000002ALL;
  v2 = sub_100063374(v6, v7, v1, v8, 0x1000000000000050, v5);
  v4 = v3;

  qword_1000906B0 = v2;
  *algn_1000906B8 = v4;
}

void sub_100025E9C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100070BF0;
  v6._object = 0x8000000100070B90;
  v8._countAndFlagsBits = 0xD00000000000002CLL;
  v8._object = 0x8000000100070BC0;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD000000000000052, v5);
  v4 = v3;

  qword_1000906C0 = v2;
  *algn_1000906C8 = v4;
}

void sub_100025F60()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100070B30;
  v6._object = 0x8000000100070AC0;
  v8._object = 0x8000000100070AF0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000031;
  v2 = sub_100063374(v6, v7, v1, v8, 0x1000000000000057, v5);
  v4 = v3;

  qword_1000906D0 = v2;
  *algn_1000906D8 = v4;
}

void sub_100026028()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100070A60;
  v6._object = 0x8000000100070A00;
  v8._countAndFlagsBits = 0xD00000000000002FLL;
  v8._object = 0x8000000100070A30;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD000000000000055, v5);
  v4 = v3;

  qword_1000906E0 = v2;
  *algn_1000906E8 = v4;
}

void sub_1000260F0()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x80000001000709B0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x8000000100070950;
  v8._object = 0x8000000100070980;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000023;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD000000000000049, v5);
  v4 = v3;

  qword_1000906F0 = v2;
  *algn_1000906F8 = v4;
}

void sub_1000261B4()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x80000001000708F0;
  v6._object = 0x8000000100070890;
  v8._object = 0x80000001000708C0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x100000000000002ELL;
  v2 = sub_100063374(v6, v7, v1, v8, 0x1000000000000054, v5);
  v4 = v3;

  qword_100090700 = v2;
  *algn_100090708 = v4;
}

void sub_10002627C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006DD90;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x800000010006DD40;
  v8._object = 0x800000010006DD70;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD00000000000001DLL;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD000000000000043, v5);
  v4 = v3;

  qword_100090710 = v2;
  *algn_100090718 = v4;
}

void sub_100026340()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006DE30;
  v6._object = 0x800000010006DDE0;
  v8._object = 0x800000010006DE10;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x100000000000001CLL;
  v2 = sub_100063374(v6, v7, v1, v8, 0x1000000000000042, v5);
  v4 = v3;

  qword_100090720 = v2;
  *algn_100090728 = v4;
}

void sub_100026408()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100070830;
  v6._object = 0x80000001000707C0;
  v8._object = 0x80000001000707F0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000030;
  v2 = sub_100063374(v6, v7, v1, v8, 0x1000000000000056, v5);
  v4 = v3;

  qword_100090730 = v2;
  *algn_100090738 = v4;
}

void sub_1000264D0()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100070770;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x8000000100070710;
  v8._object = 0x8000000100070740;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000021;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD000000000000047, v5);
  v4 = v3;

  qword_100090740 = v2;
  *algn_100090748 = v4;
}

void sub_100026594()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x80000001000706C0;
  v6._object = 0x8000000100070660;
  v8._countAndFlagsBits = 0xD000000000000028;
  v8._object = 0x8000000100070690;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD00000000000004ELL, v5);
  v4 = v3;

  qword_100090750 = v2;
  *algn_100090758 = v4;
}

void sub_100026658()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100070600;
  v6._object = 0x80000001000705A0;
  v8._object = 0x80000001000705D0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x100000000000002FLL;
  v2 = sub_100063374(v6, v7, v1, v8, 0x1000000000000055, v5);
  v4 = v3;

  qword_100090760 = v2;
  *algn_100090768 = v4;
}

void sub_100026720()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100070540;
  v6._object = 0x80000001000704E0;
  v8._countAndFlagsBits = 0xD00000000000002BLL;
  v8._object = 0x8000000100070510;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD000000000000051, v5);
  v4 = v3;

  qword_100090770 = v2;
  *algn_100090778 = v4;
}

void sub_1000267E4()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100070490;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x8000000100070440;
  v8._object = 0x8000000100070470;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD00000000000001BLL;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD000000000000041, v5);
  v4 = v3;

  qword_100090780 = v2;
  *algn_100090788 = v4;
}

void sub_1000268A8()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x80000001000703E0;
  v6._object = 0x8000000100070380;
  v8._countAndFlagsBits = 0xD00000000000002CLL;
  v8._object = 0x80000001000703B0;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD000000000000052, v5);
  v4 = v3;

  qword_100090790 = v2;
  *algn_100090798 = v4;
}

void sub_10002696C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100070320;
  v6._object = 0x80000001000702C0;
  v8._object = 0x80000001000702F0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x100000000000002DLL;
  v2 = sub_100063374(v6, v7, v1, v8, 0x1000000000000053, v5);
  v4 = v3;

  qword_1000907A0 = v2;
  *algn_1000907A8 = v4;
}

void sub_100026A34()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100070280;
  v6._object = 0x8000000100070230;
  v8._object = 0x8000000100070260;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000016;
  v2 = sub_100063374(v6, v7, v1, v8, 0x100000000000003CLL, v5);
  v4 = v3;

  qword_1000907B0 = v2;
  *algn_1000907B8 = v4;
}

void sub_100026AFC()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x80000001000701E0;
  v6._object = 0x8000000100070180;
  v8._object = 0x80000001000701B0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000020;
  v2 = sub_100063374(v6, v7, v1, v8, 0x1000000000000046, v5);
  v4 = v3;

  qword_1000907C0 = v2;
  *algn_1000907C8 = v4;
}

uint64_t sub_100026BC4()
{
  if (qword_1000845F0 != -1)
  {
    swift_once();
  }

  qword_1000907D0 = qword_1000905F0;
  *algn_1000907D8 = *algn_1000905F8;
}

void sub_100026C30()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100070130;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x80000001000700D0;
  v8._object = 0x8000000100070100;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000020;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD000000000000046, v5);
  v4 = v3;

  qword_1000907E0 = v2;
  *algn_1000907E8 = v4;
}

void sub_100026CF4()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100070080;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x8000000100070020;
  v8._object = 0x8000000100070050;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000024;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD00000000000004ALL, v5);
  v4 = v3;

  qword_1000907F0 = v2;
  *algn_1000907F8 = v4;
}

void sub_100026DB8()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006FFD0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x800000010006FF70;
  v8._object = 0x800000010006FFA0;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000023;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD000000000000049, v5);
  v4 = v3;

  qword_100090800 = v2;
  *algn_100090808 = v4;
}

uint64_t sub_100026E7C()
{
  if (qword_100084688 != -1)
  {
    swift_once();
  }

  qword_100090810 = qword_100090720;
  *algn_100090818 = *algn_100090728;
}

uint64_t sub_100026EE8()
{
  if (qword_100084680 != -1)
  {
    swift_once();
  }

  qword_100090820 = qword_100090710;
  *algn_100090828 = *algn_100090718;
}

void sub_100026F54()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006FF20;
  v6._object = 0x800000010006FEC0;
  v8._object = 0x800000010006FEF0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000025;
  v2 = sub_100063374(v6, v7, v1, v8, 0x100000000000004BLL, v5);
  v4 = v3;

  qword_100090830 = v2;
  *algn_100090838 = v4;
}

void sub_10002701C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006FE70;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x800000010006FE10;
  v8._object = 0x800000010006FE40;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000020;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD000000000000046, v5);
  v4 = v3;

  qword_100090840 = v2;
  *algn_100090848 = v4;
}

void sub_1000270E0()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006FDC0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x800000010006FD70;
  v8._object = 0x800000010006FDA0;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD00000000000001FLL;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD000000000000045, v5);
  v4 = v3;

  qword_100090850 = v2;
  *algn_100090858 = v4;
}

void sub_1000271A4()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006FD30;
  v6._object = 0x800000010006FCE0;
  v8._object = 0x800000010006FD10;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000012;
  v2 = sub_100063374(v6, v7, v1, v8, 0x1000000000000038, v5);
  v4 = v3;

  qword_100090860 = v2;
  *algn_100090868 = v4;
}

void sub_10002726C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006E0A0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x800000010006E050;
  v8._object = 0x800000010006E080;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000011;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD000000000000037, v5);
  v4 = v3;

  qword_100090870 = v2;
  *algn_100090878 = v4;
}

void sub_100027334()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006FCA0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x800000010006FC50;
  v8._object = 0x800000010006FC80;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000015;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD00000000000003BLL, v5);
  v4 = v3;

  qword_100090880 = v2;
  *algn_100090888 = v4;
}

void sub_1000273F8()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006FC10;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x800000010006FBC0;
  v8._object = 0x800000010006FBF0;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000011;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD000000000000037, v5);
  v4 = v3;

  qword_100090890 = v2;
  *algn_100090898 = v4;
}

void sub_1000274C0()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006E130;
  v6._object = 0x800000010006E0E0;
  v8._object = 0x800000010006E110;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000016;
  v2 = sub_100063374(v6, v7, v1, v8, 0x100000000000003CLL, v5);
  v4 = v3;

  qword_1000908A0 = v2;
  *algn_1000908A8 = v4;
}

uint64_t sub_100027588()
{
  if (qword_100084730 != -1)
  {
    swift_once();
  }

  qword_1000908B0 = qword_100090870;
  *algn_1000908B8 = *algn_100090878;
}

uint64_t sub_1000275F4()
{
  if (qword_100084738 != -1)
  {
    swift_once();
  }

  qword_1000908C0 = qword_100090880;
  *algn_1000908C8 = *algn_100090888;
}

uint64_t sub_100027660()
{
  if (qword_100084740 != -1)
  {
    swift_once();
  }

  qword_1000908D0 = qword_100090890;
  *algn_1000908D8 = *algn_100090898;
}

uint64_t sub_1000276CC()
{
  if (qword_1000845E8 != -1)
  {
    swift_once();
  }

  qword_1000908E0 = qword_1000905E0;
  *algn_1000908E8 = *algn_1000905E8;
}

void sub_100027738()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006FB60;
  v6._object = 0x800000010006FB00;
  v8._countAndFlagsBits = 0xD00000000000002FLL;
  v8._object = 0x800000010006FB30;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD000000000000055, v5);
  v4 = v3;

  qword_1000908F0 = v2;
  *algn_1000908F8 = v4;
}

void sub_100027800()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006FAA0;
  v6._object = 0x800000010006FA30;
  v8._object = 0x800000010006FA60;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000033;
  v2 = sub_100063374(v6, v7, v1, v8, 0x1000000000000059, v5);
  v4 = v3;

  qword_100090900 = v2;
  *algn_100090908 = v4;
}

void sub_1000278C8()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006F9D0;
  v6._object = 0x800000010006F960;
  v8._object = 0x800000010006F990;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000033;
  v2 = sub_100063374(v6, v7, v1, v8, 0x1000000000000059, v5);
  v4 = v3;

  qword_100090910 = v2;
  *algn_100090918 = v4;
}

void sub_100027990()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006F900;
  v6._object = 0x800000010006F890;
  v8._object = 0x800000010006F8C0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000033;
  v2 = sub_100063374(v6, v7, v1, v8, 0x1000000000000059, v5);
  v4 = v3;

  qword_100090920 = v2;
  *algn_100090928 = v4;
}

void sub_100027A58()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006F840;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x800000010006F7E0;
  v8._object = 0x800000010006F810;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000023;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD000000000000049, v5);
  v4 = v3;

  qword_100090930 = v2;
  *algn_100090938 = v4;
}

void sub_100027B1C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006F780;
  v6._object = 0x800000010006F710;
  v8._object = 0x800000010006F740;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000030;
  v2 = sub_100063374(v6, v7, v1, v8, 0x1000000000000056, v5);
  v4 = v3;

  qword_100090940 = v2;
  *algn_100090948 = v4;
}

void sub_100027BE4()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006F6C0;
  v6._object = 0x800000010006F660;
  v8._object = 0x800000010006F690;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000026;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD00000000000004CLL, v5);
  v4 = v3;

  qword_100090950 = v2;
  *algn_100090958 = v4;
}

void sub_100027CAC()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006F600;
  v6._object = 0x800000010006F590;
  v8._object = 0x800000010006F5C0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000036;
  v2 = sub_100063374(v6, v7, v1, v8, 0x100000000000005CLL, v5);
  v4 = v3;

  qword_100090960 = v2;
  *algn_100090968 = v4;
}

void sub_100027D74()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006F530;
  v6._object = 0x800000010006F4C0;
  v8._countAndFlagsBits = 0xD000000000000030;
  v8._object = 0x800000010006F4F0;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD000000000000056, v5);
  v4 = v3;

  qword_100090970 = v2;
  *algn_100090978 = v4;
}

void sub_100027E38()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006F460;
  v6._object = 0x800000010006F400;
  v8._countAndFlagsBits = 0xD00000000000002CLL;
  v8._object = 0x800000010006F430;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD000000000000052, v5);
  v4 = v3;

  qword_100090980 = v2;
  *algn_100090988 = v4;
}

void sub_100027EFC()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006F3A0;
  v6._object = 0x800000010006F330;
  v8._countAndFlagsBits = 0xD000000000000034;
  v8._object = 0x800000010006F360;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD00000000000005ALL, v5);
  v4 = v3;

  qword_100090990 = v2;
  *algn_100090998 = v4;
}

void sub_100027FC0()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006F2D0;
  v6._object = 0x800000010006F260;
  v8._object = 0x800000010006F290;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000030;
  v2 = sub_100063374(v6, v7, v1, v8, 0x1000000000000056, v5);
  v4 = v3;

  qword_1000909A0 = v2;
  *algn_1000909A8 = v4;
}

void sub_100028088()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006F200;
  v6._object = 0x800000010006F1A0;
  v8._countAndFlagsBits = 0xD00000000000002ELL;
  v8._object = 0x800000010006F1D0;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD000000000000054, v5);
  v4 = v3;

  qword_1000909B0 = v2;
  *algn_1000909B8 = v4;
}

void sub_10002814C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006F150;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x800000010006F0F0;
  v8._object = 0x800000010006F120;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000021;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD000000000000047, v5);
  v4 = v3;

  qword_1000909C0 = v2;
  *algn_1000909C8 = v4;
}

void sub_100028210()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006D470;
  v6._object = 0x800000010006D400;
  v8._object = 0x800000010006D430;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000031;
  v2 = sub_100063374(v6, v7, v1, v8, 0x1000000000000057, v5);
  v4 = v3;

  qword_1000909D0 = v2;
  *algn_1000909D8 = v4;
}

void sub_1000282D8()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006D3B0;
  v6._object = 0x800000010006D350;
  v8._countAndFlagsBits = 0xD000000000000029;
  v8._object = 0x800000010006D380;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD00000000000004FLL, v5);
  v4 = v3;

  qword_1000909E0 = v2;
  *algn_1000909E8 = v4;
}

void sub_10002839C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006D8C0;
  v6._object = 0x800000010006D860;
  v8._countAndFlagsBits = 0xD000000000000028;
  v8._object = 0x800000010006D890;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD00000000000004ELL, v5);
  v4 = v3;

  qword_1000909F0 = v2;
  *algn_1000909F8 = v4;
}

void sub_100028460()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006D800;
  v6._object = 0x800000010006D790;
  v8._object = 0x800000010006D7C0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000031;
  v2 = sub_100063374(v6, v7, v1, v8, 0x1000000000000057, v5);
  v4 = v3;

  qword_100090A00 = v2;
  *algn_100090A08 = v4;
}

void sub_100028528()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006F090;
  v6._object = 0x800000010006F030;
  v8._countAndFlagsBits = 0xD00000000000002BLL;
  v8._object = 0x800000010006F060;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD000000000000051, v5);
  v4 = v3;

  qword_100090A10 = v2;
  *algn_100090A18 = v4;
}

void sub_1000285EC()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006EFE0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x800000010006EF90;
  v8._object = 0x800000010006EFC0;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD00000000000001ALL;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD000000000000040, v5);
  v4 = v3;

  qword_100090A20 = v2;
  *algn_100090A28 = v4;
}

void sub_1000286B0()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006EF40;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x800000010006EEE0;
  v8._object = 0x800000010006EF10;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000025;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD00000000000004BLL, v5);
  v4 = v3;

  qword_100090A30 = v2;
  *algn_100090A38 = v4;
}

void sub_100028774()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006DCF0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x800000010006DCA0;
  v8._object = 0x800000010006DCD0;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD00000000000001DLL;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD000000000000043, v5);
  v4 = v3;

  qword_100090A40 = v2;
  *algn_100090A48 = v4;
}

void sub_100028838()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006EE80;
  v6._object = 0x800000010006EE20;
  v8._object = 0x800000010006EE50;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x100000000000002CLL;
  v2 = sub_100063374(v6, v7, v1, v8, 0x1000000000000052, v5);
  v4 = v3;

  qword_100090A50 = v2;
  *algn_100090A58 = v4;
}

void sub_100028900()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006EDC0;
  v6._object = 0x800000010006ED60;
  v8._countAndFlagsBits = 0xD00000000000002DLL;
  v8._object = 0x800000010006ED90;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD000000000000053, v5);
  v4 = v3;

  qword_100090A60 = v2;
  *algn_100090A68 = v4;
}

void sub_1000289C4()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006ED10;
  v6._object = 0x800000010006ECB0;
  v8._object = 0x800000010006ECE0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000026;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD00000000000004CLL, v5);
  v4 = v3;

  qword_100090A70 = v2;
  *algn_100090A78 = v4;
}

void sub_100028A8C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006EC60;
  v6._object = 0x800000010006EC00;
  v8._object = 0x800000010006EC30;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000022;
  v2 = sub_100063374(v6, v7, v1, v8, 0x1000000000000048, v5);
  v4 = v3;

  qword_100090A80 = v2;
  *algn_100090A88 = v4;
}

void sub_100028B54()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006EBA0;
  v6._object = 0x800000010006EB40;
  v8._countAndFlagsBits = 0xD00000000000002ELL;
  v8._object = 0x800000010006EB70;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD000000000000054, v5);
  v4 = v3;

  qword_100090A90 = v2;
  *algn_100090A98 = v4;
}

uint64_t sub_100028C18()
{
  if (qword_1000847D8 != -1)
  {
    swift_once();
  }

  qword_100090AA0 = qword_1000909C0;
  *algn_100090AA8 = *algn_1000909C8;
}

void sub_100028C84()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006EAF0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x800000010006EA90;
  v8._object = 0x800000010006EAC0;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000021;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD000000000000047, v5);
  v4 = v3;

  qword_100090AB0 = v2;
  *algn_100090AB8 = v4;
}

void sub_100028D48()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006EA40;
  v6._object = 0x800000010006E9E0;
  v8._object = 0x800000010006EA10;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000026;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD00000000000004CLL, v5);
  v4 = v3;

  qword_100090AC0 = v2;
  *algn_100090AC8 = v4;
}

void sub_100028E10()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006E990;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x800000010006E940;
  v8._object = 0x800000010006E970;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD00000000000001ELL;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD000000000000044, v5);
  v4 = v3;

  qword_100090AD0 = v2;
  *algn_100090AD8 = v4;
}

void sub_100028ED4()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006E8F0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x800000010006E890;
  v8._object = 0x800000010006E8C0;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000024;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD00000000000004ALL, v5);
  v4 = v3;

  qword_100090AE0 = v2;
  *algn_100090AE8 = v4;
}

void sub_100028F98()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006E840;
  v6._object = 0x800000010006E7E0;
  v8._object = 0x800000010006E810;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000020;
  v2 = sub_100063374(v6, v7, v1, v8, 0x1000000000000046, v5);
  v4 = v3;

  qword_100090AF0 = v2;
  *algn_100090AF8 = v4;
}

uint64_t sub_100029060()
{
  if (qword_100084818 != -1)
  {
    swift_once();
  }

  qword_100090B00 = qword_100090A40;
  *algn_100090B08 = *algn_100090A48;
}

void sub_1000290CC()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006DC50;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x800000010006DC00;
  v8._object = 0x800000010006DC30;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD00000000000001DLL;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD000000000000043, v5);
  v4 = v3;

  qword_100090B10 = v2;
  *algn_100090B18 = v4;
}

void sub_100029190()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006E790;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x800000010006E730;
  v8._object = 0x800000010006E760;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000022;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD000000000000048, v5);
  v4 = v3;

  qword_100090B20 = v2;
  *algn_100090B28 = v4;
}

uint64_t sub_100029254()
{
  if (qword_100084808 != -1)
  {
    swift_once();
  }

  qword_100090B30 = qword_100090A20;
  *algn_100090B38 = *algn_100090A28;
}

void sub_1000292C0()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006E6E0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x800000010006E680;
  v8._object = 0x800000010006E6B0;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000020;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD000000000000046, v5);
  v4 = v3;

  qword_100090B40 = v2;
  *algn_100090B48 = v4;
}

void sub_100029384()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006E010;
  v6._object = 0x800000010006DFC0;
  v8._object = 0x800000010006DFF0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000013;
  v2 = sub_100063374(v6, v7, v1, v8, 0x1000000000000039, v5);
  v4 = v3;

  qword_100090B50 = v2;
  *algn_100090B58 = v4;
}

void sub_10002944C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006DF80;
  v6._object = 0x800000010006DF30;
  v8._object = 0x800000010006DF60;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000016;
  v2 = sub_100063374(v6, v7, v1, v8, 0x100000000000003CLL, v5);
  v4 = v3;

  qword_100090B60 = v2;
  *algn_100090B68 = v4;
}

void sub_100029514()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006E640;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x800000010006E5F0;
  v8._object = 0x800000010006E620;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000014;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD00000000000003ALL, v5);
  v4 = v3;

  qword_100090B70 = v2;
  *algn_100090B78 = v4;
}

void sub_1000295D8()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006E5B0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x800000010006E560;
  v8._object = 0x800000010006E590;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000014;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD00000000000003ALL, v5);
  v4 = v3;

  qword_100090B80 = v2;
  *algn_100090B88 = v4;
}

void sub_10002969C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006E520;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x800000010006E4D0;
  v8._object = 0x800000010006E500;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000012;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD000000000000038, v5);
  v4 = v3;

  qword_100090B90 = v2;
  *algn_100090B98 = v4;
}

void sub_100029760()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006E490;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x800000010006E440;
  v8._object = 0x800000010006E470;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000015;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD00000000000003BLL, v5);
  v4 = v3;

  qword_100090BA0 = v2;
  *algn_100090BA8 = v4;
}

uint64_t sub_100029824()
{
  if (qword_1000848A0 != -1)
  {
    swift_once();
  }

  qword_100090BB0 = qword_100090B50;
  *algn_100090BB8 = *algn_100090B58;
}

uint64_t sub_100029890()
{
  if (qword_1000848A8 != -1)
  {
    swift_once();
  }

  qword_100090BC0 = qword_100090B60;
  *algn_100090BC8 = *algn_100090B68;
}

void sub_1000298FC()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006E400;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x800000010006E3B0;
  v8._object = 0x800000010006E3E0;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000013;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD000000000000039, v5);
  v4 = v3;

  qword_100090BD0 = v2;
  *algn_100090BD8 = v4;
}

uint64_t sub_1000299C0()
{
  if (qword_1000848B8 != -1)
  {
    swift_once();
  }

  qword_100090BE0 = qword_100090B80;
  *algn_100090BE8 = *algn_100090B88;
}

void sub_100029A2C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006E370;
  v6._object = 0x800000010006E320;
  v8._object = 0x800000010006E350;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000015;
  v2 = sub_100063374(v6, v7, v1, v8, 0x100000000000003BLL, v5);
  v4 = v3;

  qword_100090BF0 = v2;
  *algn_100090BF8 = v4;
}

void sub_100029AF4()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006E2E0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x800000010006E290;
  v8._object = 0x800000010006E2C0;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000014;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD00000000000003ALL, v5);
  v4 = v3;

  qword_100090C00 = v2;
  *algn_100090C08 = v4;
}

void sub_100029BB8()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006D1C0;
  v6._countAndFlagsBits = 0xD000000000000018;
  v6._object = 0x800000010006D180;
  v8._object = 0x800000010006D1A0;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000016;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD00000000000002ALL, v5);
  v4 = v3;

  qword_100090C10 = v2;
  *algn_100090C18 = v4;
}

void sub_100029C7C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006CDD0;
  v6._object = 0x800000010006CD70;
  v8._countAndFlagsBits = 0xD000000000000039;
  v8._object = 0x800000010006CD90;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD00000000000001ELL;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD000000000000030, v5);
  v4 = v3;

  qword_100090C20 = v2;
  *algn_100090C28 = v4;
}

void sub_100029D40()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006D210;
  v8._countAndFlagsBits = 0x736F746F6850;
  v6._object = 0x800000010006D1F0;
  v6._countAndFlagsBits = 0xD000000000000013;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._object = 0xE600000000000000;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD00000000000001ALL, v5);
  v4 = v3;

  qword_100090C30 = v2;
  *algn_100090C38 = v4;
}

void sub_100029E00()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006CE70;
  v6._object = 0x800000010006CE10;
  v8._countAndFlagsBits = 0xD000000000000036;
  v8._object = 0x800000010006CE30;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000019;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD000000000000020, v5);
  v4 = v3;

  qword_100090C40 = v2;
  *algn_100090C48 = v4;
}

void sub_100029EC4()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006D250;
  v8._countAndFlagsBits = 0x6172656D6143;
  v6._object = 0x800000010006D230;
  v6._countAndFlagsBits = 0xD000000000000013;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._object = 0xE600000000000000;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD00000000000001ALL, v5);
  v4 = v3;

  qword_100090C50 = v2;
  *algn_100090C58 = v4;
}

void sub_100029F84()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006CF00;
  v6._object = 0x800000010006CEA0;
  v8._countAndFlagsBits = 0xD00000000000003DLL;
  v8._object = 0x800000010006CEC0;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000019;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD000000000000020, v5);
  v4 = v3;

  qword_100090C60 = v2;
  *algn_100090C68 = v4;
}

void sub_10002A04C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006D290;
  v8._countAndFlagsBits = 0x6552206F69647541;
  v8._object = 0xEF676E6964726F63;
  v6._object = 0x800000010006D270;
  v6._countAndFlagsBits = 0xD00000000000001CLL;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD000000000000023, v5);
  v4 = v3;

  qword_100090C70 = v2;
  *algn_100090C78 = v4;
}

void sub_10002A11C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006CFA0;
  v6._object = 0x800000010006CF30;
  v8._countAndFlagsBits = 0xD000000000000035;
  v8._object = 0x800000010006CF60;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000022;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD000000000000029, v5);
  v4 = v3;

  qword_100090C80 = v2;
  *algn_100090C88 = v4;
}

void sub_10002A1E0()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006D2E0;
  v8._countAndFlagsBits = 0x736563616C50;
  v6._object = 0x800000010006D2C0;
  v6._countAndFlagsBits = 0xD000000000000016;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._object = 0xE600000000000000;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD00000000000001ALL, v5);
  v4 = v3;

  qword_100090C90 = v2;
  *algn_100090C98 = v4;
}

void sub_10002A2A0()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006D020;
  v6._object = 0x800000010006CFD0;
  v8._countAndFlagsBits = 0xD000000000000029;
  v8._object = 0x800000010006CFF0;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD00000000000001CLL;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD000000000000020, v5);
  v4 = v3;

  qword_100090CA0 = v2;
  *algn_100090CA8 = v4;
}

void sub_10002A364()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006D320;
  v8._countAndFlagsBits = 0x666F206574617453;
  v8._object = 0xED0000646E694D20;
  v6._object = 0x800000010006D300;
  v6._countAndFlagsBits = 0xD00000000000001ALL;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD000000000000021, v5);
  v4 = v3;

  qword_100090CB0 = v2;
  *algn_100090CB8 = v4;
}

void sub_10002A434()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006D0C0;
  v6._object = 0x800000010006D050;
  v8._countAndFlagsBits = 0xD000000000000033;
  v8._object = 0x800000010006D080;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000020;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, 0xD000000000000027, v5);
  v4 = v3;

  qword_100090CC0 = v2;
  *algn_100090CC8 = v4;
}

uint64_t sub_10002A568()
{
  v0 = sub_1000021D4(&qword_100084D88, &qword_100065990);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1000633F4();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000635E4();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100064294();
  __chkstk_darwin(v7 - 8);
  v8 = sub_100063404();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_100063244();
  sub_100009DBC(v10, qword_100090CD0);
  sub_1000049B4(v10, qword_100090CD0);
  sub_100064284();
  sub_1000635D4();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_100063414();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_100063234();
}

uint64_t sub_10002A85C@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = sub_1000021D4(&qword_100084DB8, "̷");
  __chkstk_darwin(v1 - 8);
  v32 = v25 - v2;
  v3 = sub_1000021D4(&qword_100084D88, &qword_100065990);
  __chkstk_darwin(v3 - 8);
  v31 = v25 - v4;
  v5 = sub_1000633F4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000635E4();
  __chkstk_darwin(v9 - 8);
  v10 = sub_100064294();
  __chkstk_darwin(v10 - 8);
  v27 = sub_100063404();
  v11 = *(v27 - 8);
  v12 = __chkstk_darwin(v27);
  v29 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v28 = v25 - v14;
  sub_100064284();
  sub_1000635D4();
  v15 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v16 = *(v6 + 104);
  v25[0] = v5;
  v16(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  v25[1] = "Always Use Moment Date";
  v26 = v16;
  sub_100063414();
  sub_100064284();
  sub_1000635D4();
  v16(v8, v15, v5);
  v17 = v31;
  sub_100063414();
  (*(v11 + 56))(v17, 0, 1, v27);
  v18 = v32;
  sub_1000630F4();
  v19 = sub_100063114();
  (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
  sub_1000021D4(&qword_100084DC0, &qword_1000659B0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100065BA0;
  sub_100064284();
  sub_1000635D4();
  v20 = v15;
  v21 = v15;
  v22 = v25[0];
  v23 = v26;
  v26(v8, v21, v25[0]);
  sub_100063414();
  sub_100064284();
  sub_1000635D4();
  v23(v8, v20, v22);
  sub_100063414();
  sub_100064284();
  sub_1000635D4();
  v23(v8, v20, v22);
  sub_100063414();
  return sub_100063124();
}

uint64_t sub_10002AE5C()
{
  v0 = sub_100063404();
  sub_100009DBC(v0, qword_100090CE8);
  sub_1000049B4(v0, qword_100090CE8);
  return sub_1000633E4();
}

uint64_t sub_10002AEC0()
{
  v0 = sub_1000021D4(&qword_100084E10, &unk_100065A30);
  sub_100009DBC(v0, qword_100090D00);
  v1 = sub_1000049B4(v0, qword_100090D00);
  sub_100063064();
  v2 = sub_100063074();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10002AF80()
{
  result = swift_getKeyPath();
  qword_100090D18 = result;
  return result;
}

uint64_t sub_10002AFA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a1;
  sub_1000021D4(&qword_100084DE0, &qword_1000659E0);
  v5[10] = swift_task_alloc();
  sub_1000021D4(&qword_100084DE8, &qword_1000659E8);
  v5[11] = swift_task_alloc();
  sub_1000021D4(&qword_100085CC0, &qword_100067CD0);
  v5[12] = swift_task_alloc();
  v7 = sub_100062E34();
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();
  v8 = sub_1000021D4(&qword_100085CC8, &qword_100067CD8);
  v5[16] = v8;
  v5[17] = *(v8 - 8);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  if (a2)
  {
    swift_getObjectType();
    v9 = sub_100064334();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v5[20] = v9;
  v5[21] = v11;

  return _swift_task_switch(sub_10002B1C0, v9);
}

uint64_t sub_10002B1C0()
{
  sub_100062E84();
  v1 = swift_task_alloc();
  *(v0 + 176) = v1;
  v2 = sub_10002C544();
  *v1 = v0;
  v1[1] = sub_10002B290;
  v3 = *(v0 + 152);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v3, v0 + 16, sub_10002EC34, 0, &type metadata for SaveToPhotosEntity, v2);
}

uint64_t sub_10002B290()
{
  v1 = *v0;

  v2 = *(v1 + 160);

  return _swift_task_switch(sub_10002B3B0, v2);
}

uint64_t sub_10002B3B0()
{
  sub_100062E84();
  v1 = *(v0 + 24);
  *(v0 + 32) = v1;
  *(v0 + 184) = v1;
  sub_100062E84();
  *(v0 + 217) = *(v0 + 216);
  if (qword_100084978 != -1)
  {
    swift_once();
  }

  v2 = qword_100090D18;
  *(v0 + 192) = qword_100090D18;

  v3 = swift_task_alloc();
  *(v0 + 200) = v3;
  v4 = sub_100009F14(&qword_100085CB0, &qword_100085CB8, &qword_100067CC0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v3 = v0;
  v3[1] = sub_10002B510;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 217, v2, &type metadata for Bool, v4);
}

uint64_t sub_10002B510()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 160);
  if (v0)
  {
    v4 = sub_100006034;
  }

  else
  {
    v4 = sub_10002B664;
  }

  return _swift_task_switch(v4, v3);
}

uint64_t sub_10002B664()
{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v10 = v0[18];
  v11 = v0[15];
  v12 = v0[14];
  v13 = v0[13];
  v4 = v0[10];
  v5 = v0[11];
  sub_100062E84();
  v0[6] = v0[5];
  v6 = sub_100063224();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = sub_100063254();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_1000193BC();
  sub_10002C758();
  sub_100062E04();
  (*(v2 + 16))(v10, v1, v3);
  sub_100062E24();
  sub_100062E44();
  (*(v12 + 8))(v11, v13);

  (*(v2 + 8))(v1, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10002B8D0()
{
  v0 = sub_1000021D4(&qword_100085CD0, &qword_100067CE0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_100084978 != -1)
  {
    swift_once();
  }

  sub_1000630E4();

  sub_10002C758();
  sub_100009F14(&qword_100085CD8, &qword_100085CD0, &qword_100067CE0, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1000630D4();
  return (*(v1 + 8))(v3, v0);
}

uint64_t (*sub_10002BA44(uint64_t *a1))()
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
  *(v2 + 32) = sub_100062E74();
  return sub_100006368;
}

uint64_t (*sub_10002BAB8(uint64_t *a1))()
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
  *(v2 + 32) = sub_100062E74();
  return sub_10000A08C;
}

uint64_t sub_10002BB2C()
{
  if (qword_100084978 != -1)
  {
    swift_once();
  }
}

unint64_t sub_10002BB8C()
{
  result = qword_100085BA0;
  if (!qword_100085BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085BA0);
  }

  return result;
}

unint64_t sub_10002BBE4()
{
  result = qword_100085BA8;
  if (!qword_100085BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085BA8);
  }

  return result;
}

uint64_t sub_10002BCBC@<X0>(uint64_t a1@<X8>)
{
  if (qword_100084970 != -1)
  {
    swift_once();
  }

  v2 = sub_1000021D4(&qword_100084E10, &unk_100065A30);
  v3 = sub_1000049B4(v2, qword_100090D00);

  return sub_100009E78(v3, a1);
}

uint64_t sub_10002BD40(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  return _swift_task_switch(sub_10002BD68, 0);
}

uint64_t sub_10002BD68()
{
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_100006768;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return sub_10002AFA8(v4, 0, 0, v2, v3);
}

uint64_t sub_10002BE08@<X0>(uint64_t *a2@<X8>)
{
  result = sub_10002DF20();
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_10002BE50()
{
  result = qword_100085BB0;
  if (!qword_100085BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085BB0);
  }

  return result;
}

unint64_t sub_10002BEA8()
{
  result = qword_100085BB8;
  if (!qword_100085BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085BB8);
  }

  return result;
}

uint64_t sub_10002BEFC(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_100063684();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_10002BFBC, 0);
}

uint64_t sub_10002BFBC()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_100009E20();
  v5 = sub_100064394();
  (*(v2 + 104))(v1, enum case for SettingsKey.saveToPhotos(_:), v3);
  sub_100063674();
  (*(v2 + 8))(v1, v3);
  v6 = sub_1000642A4();

  LOBYTE(v3) = [v5 BOOLForKey:v6];

  *v4 = v3;

  v7 = v0[1];

  return v7();
}

uint64_t sub_10002C0E0(uint64_t a1, _BYTE *a2)
{
  v4 = sub_100063684();
  *(v2 + 16) = v4;
  *(v2 + 24) = *(v4 - 8);
  *(v2 + 32) = swift_task_alloc();
  *(v2 + 40) = *a2;

  return _swift_task_switch(sub_10002C1A8, 0);
}

uint64_t sub_10002C1A8()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_100009E20();
  v4 = sub_100064394();
  isa = sub_100064324().super.super.isa;
  (*(v2 + 104))(v1, enum case for SettingsKey.saveToPhotos(_:), v3);
  sub_100063674();
  (*(v2 + 8))(v1, v3);
  v6 = sub_1000642A4();

  [v4 setValue:isa forKey:v6];

  v7 = v0[1];

  return v7();
}

uint64_t sub_10002C2DC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10000A088;

  return sub_10002E384(0, 0);
}

unint64_t sub_10002C38C()
{
  result = qword_100085BC0;
  if (!qword_100085BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085BC0);
  }

  return result;
}

uint64_t sub_10002C3E0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10002C9F4();
  *v4 = v2;
  v4[1] = sub_100006EE4;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_10002C494()
{
  result = qword_100085BC8;
  if (!qword_100085BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085BC8);
  }

  return result;
}

unint64_t sub_10002C4EC()
{
  result = qword_100085BD0;
  if (!qword_100085BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085BD0);
  }

  return result;
}

unint64_t sub_10002C544()
{
  result = qword_100085BD8;
  if (!qword_100085BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085BD8);
  }

  return result;
}

uint64_t sub_10002C598(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10002C9F4();
  *v5 = v2;
  v5[1] = sub_10000A0B4;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_10002C64C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10002C9F4();
  *v4 = v2;
  v4[1] = sub_10000A088;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_10002C700()
{
  result = qword_100085BE0;
  if (!qword_100085BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085BE0);
  }

  return result;
}

unint64_t sub_10002C758()
{
  result = qword_100085BE8;
  if (!qword_100085BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085BE8);
  }

  return result;
}

unint64_t sub_10002C7B0()
{
  result = qword_100085BF0;
  if (!qword_100085BF0)
  {
    sub_10000221C(&qword_100085BF8, qword_100067680);
    sub_10002C758();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085BF0);
  }

  return result;
}

uint64_t sub_10002C834(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10002C38C();
  *v5 = v2;
  v5[1] = sub_100002CE4;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_10002C8EC()
{
  result = qword_100085C00;
  if (!qword_100085C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085C00);
  }

  return result;
}

unint64_t sub_10002C944()
{
  result = qword_100085C08;
  if (!qword_100085C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085C08);
  }

  return result;
}

unint64_t sub_10002C99C()
{
  result = qword_100085C10;
  if (!qword_100085C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085C10);
  }

  return result;
}

unint64_t sub_10002C9F4()
{
  result = qword_100085C18;
  if (!qword_100085C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085C18);
  }

  return result;
}

unint64_t sub_10002CA4C()
{
  result = qword_100085C20;
  if (!qword_100085C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085C20);
  }

  return result;
}

uint64_t sub_10002CAA0(uint64_t a1)
{
  v2 = sub_10002C544();

  return EntityURLRepresentation.init(_:)(0xD00000000000004CLL, 0x8000000100072940, a1, v2);
}

unint64_t sub_10002CB08()
{
  result = qword_100085C28;
  if (!qword_100085C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085C28);
  }

  return result;
}

unint64_t sub_10002CB60()
{
  result = qword_100085C30;
  if (!qword_100085C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085C30);
  }

  return result;
}

unint64_t sub_10002CBB8()
{
  result = qword_100085C38;
  if (!qword_100085C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085C38);
  }

  return result;
}

uint64_t sub_10002CC0C@<X0>(uint64_t *a2@<X8>)
{
  sub_10002BEA8();
  result = sub_100062E64();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10002CC4C(uint64_t a1)
{
  sub_10002EBA8();
  v2 = sub_100063194();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_10002CD34(uint64_t a1)
{
  v2 = sub_10002C544();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10002CD84()
{
  result = qword_100085C50;
  if (!qword_100085C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085C50);
  }

  return result;
}

uint64_t sub_10002CDDC(uint64_t a1)
{
  v2 = sub_10002CBB8();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10002CE2C()
{
  result = qword_100085C58;
  if (!qword_100085C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085C58);
  }

  return result;
}

uint64_t sub_10002CE80()
{
  v0 = sub_100063404();
  sub_100009DBC(v0, qword_100090D20);
  sub_1000049B4(v0, qword_100090D20);
  return sub_1000633E4();
}

uint64_t sub_10002CEE4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000021D4(&qword_100084D88, &qword_100065990);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3];
  v5 = sub_1000633F4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1000635E4();
  __chkstk_darwin(v9 - 8);
  v10 = sub_100064294();
  __chkstk_darwin(v10 - 8);
  v11 = sub_100063404();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  sub_100064284();
  sub_1000635D4();
  (*(v6 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  sub_100063414();
  (*(v12 + 56))(v4, 1, 1, v11);
  sub_100063084();
  v13 = sub_100063074();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

uint64_t (*sub_10002D1E0(uint64_t *a1))()
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
  *(v2 + 32) = sub_100062E74();
  return sub_10000A08C;
}

unint64_t sub_10002D258()
{
  result = qword_100085C60;
  if (!qword_100085C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085C60);
  }

  return result;
}

uint64_t sub_10002D2AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002EB00();
  v5 = sub_10002EBA8();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_10002D314()
{
  v0 = qword_100085B80;

  return v0;
}

unint64_t sub_10002D350()
{
  result = qword_100085C68;
  if (!qword_100085C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085C68);
  }

  return result;
}

unint64_t sub_10002D3A8()
{
  result = qword_100085C70;
  if (!qword_100085C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085C70);
  }

  return result;
}

uint64_t sub_10002D4A4(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_10002EB00();
  v6 = sub_10002EB54();
  v7 = sub_10002EBA8();
  *v4 = v2;
  v4[1] = sub_10000858C;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_10002D570@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10002E6A4();
  *a1 = result;
  return result;
}

uint64_t sub_10002D598(uint64_t a1)
{
  v2 = sub_10002D258();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_10002D69C@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v1 = sub_1000021D4(&qword_100084E18, &unk_100067D70);
  v16 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v15 - v2;
  v4 = sub_1000021D4(&qword_100084E20, &unk_100065AB0);
  v17 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v15 - v5;
  v7 = sub_1000021D4(&qword_100084E28, &unk_100067D80);
  v8 = *(v7 - 8);
  v18 = v7;
  v19 = v8;
  __chkstk_darwin(v7);
  v10 = &v15 - v9;
  swift_getKeyPath();
  sub_10002BEA8();
  sub_100064184();
  sub_100063A34();
  v11 = sub_100009F14(&qword_100084E30, &qword_100084E18, &unk_100067D70, &protocol conformance descriptor for ControlToggle<A>);
  sub_100063B04();

  (*(v16 + 8))(v3, v1);
  sub_100063A34();
  v21 = v1;
  v22 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_100063AB4();

  (*(v17 + 8))(v6, v4);
  v21 = v4;
  v22 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v13 = v18;
  sub_100063B24();
  return (*(v19 + 8))(v10, v13);
}

uint64_t sub_10002DA94@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000633F4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000635E4();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100064294();
  __chkstk_darwin(v7 - 8);
  v8 = sub_100063404();
  __chkstk_darwin(v8 - 8);
  sub_100064284();
  sub_1000635D4();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_100063414();
  result = sub_100063E04();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_10002DCA8@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_1000633F4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000635E4();
  __chkstk_darwin(v7 - 8);
  v8 = sub_100064294();
  __chkstk_darwin(v8 - 8);
  v9 = sub_100063404();
  __chkstk_darwin(v9 - 8);
  sub_100064284();
  sub_1000635D4();
  (*(v4 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v3);
  sub_100063414();
  result = sub_100063E04();
  *a2 = result;
  *(a2 + 8) = v11;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v13;
  return result;
}

uint64_t sub_10002DF20()
{
  v0 = sub_1000021D4(&qword_100084D78, &unk_100065980);
  __chkstk_darwin(v0 - 8);
  v30 = &v22 - v1;
  v31 = sub_1000631F4();
  v2 = *(v31 - 8);
  __chkstk_darwin(v31);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000021D4(&qword_100084D80, &unk_100065EE0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v22 - v9;
  v11 = sub_1000021D4(&qword_100084D88, &qword_100065990);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = sub_100063404();
  v29 = v14;
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v23 = sub_1000021D4(&qword_100085C90, &qword_100067CA0);
  sub_1000633E4();
  v16 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v16;
  v16(v13, 1, 1, v14);
  v33 = 0;
  v17 = sub_100062E34();
  v18 = *(*(v17 - 8) + 56);
  v18(v10, 1, 1, v17);
  v18(v8, 1, 1, v17);
  v26 = enum case for InputConnectionBehavior.default(_:);
  v19 = *(v2 + 104);
  v24 = v2 + 104;
  v25 = v19;
  v19(v4);
  sub_10002C544();
  v23 = sub_100062EB4();
  sub_1000021D4(&qword_100084D98, &unk_1000659A0);
  sub_1000633E4();
  v28(v13, 1, 1, v29);
  v32 = 2;
  v20 = sub_100064314();
  (*(*(v20 - 8) + 56))(v30, 1, 1, v20);
  v18(v10, 1, 1, v17);
  v25(v4, v26, v31);
  sub_100062EC4();
  return v23;
}

uint64_t sub_10002E384(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000633F4();
  v2[2] = v4;
  v2[3] = *(v4 - 8);
  v2[4] = swift_task_alloc();
  sub_1000635E4();
  v2[5] = swift_task_alloc();
  sub_100064294();
  v2[6] = swift_task_alloc();
  sub_100063404();
  v2[7] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v5 = sub_100064334();
  }

  else
  {
    v5 = 0;
  }

  return _swift_task_switch(sub_10002E4F0, v5);
}

uint64_t sub_10002E4F0()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = v0[3];
  sub_1000021D4(&qword_100085B98, qword_1000673E0);
  sub_100064284();
  sub_1000635D4();
  (*(v3 + 104))(v1, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_100063414();
  sub_100009F14(&qword_100085CB0, &qword_100085CB8, &qword_100067CC0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v4 = sub_100063284();

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_10002E6A4()
{
  v0 = sub_1000631F4();
  v24 = *(v0 - 8);
  v25 = v0;
  __chkstk_darwin(v0);
  v23 = v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1000021D4(&qword_100084D80, &unk_100065EE0);
  v3 = __chkstk_darwin(v2 - 8);
  v22 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = v21 - v5;
  v7 = sub_1000021D4(&qword_100084D88, &qword_100065990);
  __chkstk_darwin(v7 - 8);
  v9 = v21 - v8;
  v10 = sub_1000633F4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000635E4();
  __chkstk_darwin(v14 - 8);
  v15 = sub_100064294();
  __chkstk_darwin(v15 - 8);
  v16 = sub_100063404();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v21[1] = sub_1000021D4(&qword_100085C90, &qword_100067CA0);
  sub_100064284();
  sub_1000635D4();
  (*(v11 + 104))(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  sub_100063414();
  (*(v17 + 56))(v9, 1, 1, v16);
  v26 = 0;
  v18 = sub_100062E34();
  v19 = *(*(v18 - 8) + 56);
  v19(v6, 1, 1, v18);
  v19(v22, 1, 1, v18);
  (*(v24 + 104))(v23, enum case for InputConnectionBehavior.default(_:), v25);
  sub_10002C544();
  return sub_100062EB4();
}

unint64_t sub_10002EB00()
{
  result = qword_100085C98;
  if (!qword_100085C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085C98);
  }

  return result;
}

unint64_t sub_10002EB54()
{
  result = qword_100085CA0;
  if (!qword_100085CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085CA0);
  }

  return result;
}

unint64_t sub_10002EBA8()
{
  result = qword_100085CA8;
  if (!qword_100085CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085CA8);
  }

  return result;
}

uint64_t sub_10002EC68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000021D4(&qword_100085CE0, &unk_100067D90);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    started = type metadata accessor for StartWritingWidgetTimelineEntry(0);
    v11 = *(*(started - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, started);
  }
}

uint64_t sub_10002ED78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000021D4(&qword_100085CE0, &unk_100067D90);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    started = type metadata accessor for StartWritingWidgetTimelineEntry(0);
    v13 = *(*(started - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, started);
  }
}

uint64_t type metadata accessor for StartWritingWidgetView(uint64_t a1)
{
  result = qword_100085D40;
  if (!qword_100085D40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10002EECC(uint64_t a1)
{
  sub_10002EF50(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for StartWritingWidgetTimelineEntry(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10002EF50(uint64_t a1)
{
  if (!qword_100085D50)
  {
    sub_100064154();
    v1 = sub_100063784();
    if (!v2)
    {
      atomic_store(v1, &qword_100085D50);
    }
  }
}

uint64_t sub_10002F014@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v2 = sub_1000021D4(&qword_100084BC0, qword_100064C60);
  __chkstk_darwin(v2 - 8);
  v50 = &v43 - v3;
  v4 = sub_100064154();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v43 - v9;
  v43 = type metadata accessor for AppLaunchAction(0);
  __chkstk_darwin(v43);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1000021D4(&qword_100085D80, &qword_100067E10);
  __chkstk_darwin(v44);
  v14 = &v43 - v13;
  v15 = sub_1000021D4(&qword_100085D88, &unk_100067E18);
  v48 = *(v15 - 8);
  v49 = v15;
  __chkstk_darwin(v15);
  v47 = &v43 - v16;
  v45 = v14;
  sub_10002F6F8(v14);
  v52 = v1;
  sub_1000307E0(&qword_100084C00, &qword_100066BB0, &type metadata accessor for WidgetFamily, v10);
  v17 = *(v5 + 104);
  v56 = enum case for WidgetFamily.accessoryCircular(_:);
  v54 = v17;
  v55 = v5 + 104;
  v17(v8);
  v53 = sub_100030E7C(&qword_100085768, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
  v18 = sub_100064274();
  v46 = v5;
  v19 = *(v5 + 8);
  v19(v8, v4);
  v19(v10, v4);
  v20 = 0;
  v21 = 0;
  if ((v18 & 1) == 0)
  {
    v22 = v52 + *(type metadata accessor for StartWritingWidgetView(0) + 20);
    v23 = v22 + *(type metadata accessor for StartWritingWidgetTimelineEntry(0) + 20);
    v20 = *(v23 + 16);
    v21 = *(v23 + 24);
  }

  v24 = sub_1000021D4(&qword_100084BC8, &qword_1000669D0);
  v25 = *(v24 + 48);
  *v12 = v20;
  *(v12 + 1) = v21;
  v26 = v52;
  sub_1000307E0(&qword_100084C00, &qword_100066BB0, &type metadata accessor for WidgetFamily, v10);
  v54(v8, v56, v4);
  v27 = sub_100064274();
  v19(v8, v4);
  v19(v10, v4);
  if (v27)
  {
    v28 = type metadata accessor for CanvasContentInputType(0);
    (*(*(v28 - 8) + 56))(&v12[v25], 1, 1, v28);
  }

  else
  {
    v12[v25] = 1;
    v29 = type metadata accessor for CanvasContentInputType(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v29 - 8) + 56))(&v12[v25], 0, 1, v29);
  }

  v30 = *(v24 + 64);
  sub_1000307E0(&qword_100084C00, &qword_100066BB0, &type metadata accessor for WidgetFamily, v10);
  v54(v8, v56, v4);
  v31 = sub_100064274();
  v19(v8, v4);
  v19(v10, v4);
  if (v31)
  {
    v32 = 1;
  }

  else
  {
    sub_1000307E0(&qword_100084C00, &qword_100066BB0, &type metadata accessor for WidgetFamily, &v12[v30]);
    v32 = 0;
  }

  (*(v46 + 56))(&v12[v30], v32, 1, v4);
  swift_storeEnumTagMultiPayload();
  v33 = v50;
  sub_1000197E8(v50);
  sub_1000310C4(v12, type metadata accessor for AppLaunchAction);
  sub_100030A30();
  v34 = v47;
  v35 = v45;
  sub_100063E34();
  sub_10000494C(v33, &qword_100084BC0, qword_100064C60);
  sub_10000494C(v35, &qword_100085D80, &qword_100067E10);
  v36 = v26 + *(type metadata accessor for StartWritingWidgetView(0) + 20);
  v37 = *(v36 + *(type metadata accessor for StartWritingWidgetTimelineEntry(0) + 28));
  KeyPath = swift_getKeyPath();
  v39 = swift_allocObject();
  *(v39 + 16) = v37;
  v40 = v51;
  (*(v48 + 32))(v51, v34, v49);
  result = sub_1000021D4(&qword_100085E00, &unk_100067E78);
  v42 = (v40 + *(result + 36));
  *v42 = KeyPath;
  v42[1] = sub_100030E74;
  v42[2] = v39;
  return result;
}

uint64_t sub_10002F6F8@<X0>(uint64_t a1@<X8>)
{
  v68 = a1;
  v57 = sub_1000021D4(&qword_100085E08, &qword_100067E88);
  __chkstk_darwin(v57);
  v58 = &v49 - v2;
  v71 = sub_1000021D4(&qword_100085DF0, &qword_100067E40);
  __chkstk_darwin(v71);
  v60 = &v49 - v3;
  started = type metadata accessor for StartWritingWidgetSystemMediumView(0);
  __chkstk_darwin(started);
  v59 = (&v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v62 = type metadata accessor for StartWritingWidgetSystemSmallView(0);
  __chkstk_darwin(v62);
  v6 = (&v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v66 = sub_1000021D4(&qword_100085E10, &qword_100067E90);
  __chkstk_darwin(v66);
  v8 = &v49 - v7;
  v65 = sub_1000021D4(&qword_100085DD0, &qword_100067E38);
  __chkstk_darwin(v65);
  v67 = &v49 - v9;
  v61 = type metadata accessor for StartWritingWidgetAccessoryRectangularView(0);
  __chkstk_darwin(v61);
  v51 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1000021D4(&qword_100085E18, &qword_100067E98);
  __chkstk_darwin(v70);
  v12 = &v49 - v11;
  v63 = sub_1000021D4(&qword_100085E20, &qword_100067EA0);
  __chkstk_darwin(v63);
  v14 = &v49 - v13;
  v53 = sub_1000021D4(&qword_100085E28, &qword_100067EA8);
  __chkstk_darwin(v53);
  v54 = &v49 - v15;
  v64 = sub_1000021D4(&qword_100085DB0, &qword_100067E30);
  __chkstk_darwin(v64);
  v55 = &v49 - v16;
  v69 = sub_1000021D4(&qword_100085DA0, &qword_100067E28);
  __chkstk_darwin(v69);
  v18 = &v49 - v17;
  v52 = type metadata accessor for StartWritingWidgetAccessoryInlineView(0);
  __chkstk_darwin(v52);
  v50 = (&v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_100064154();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v24 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v49 - v25;
  sub_1000307E0(&qword_100084C00, &qword_100066BB0, &type metadata accessor for WidgetFamily, &v49 - v25);
  v27 = (*(v21 + 88))(v26, v20);
  if (v27 == enum case for WidgetFamily.systemSmall(_:))
  {
    v28 = type metadata accessor for StartWritingWidgetView(0);
    v29 = v62;
    sub_10003105C(v1 + *(v28 + 20), v6 + *(v62 + 24), type metadata accessor for StartWritingWidgetTimelineEntry);
    *v6 = swift_getKeyPath();
    sub_1000021D4(&qword_1000853F0, &qword_100067EB0);
    swift_storeEnumTagMultiPayload();
    v30 = *(v29 + 20);
    *(v6 + v30) = swift_getKeyPath();
    sub_1000021D4(&qword_100085318, &qword_100066A08);
    swift_storeEnumTagMultiPayload();
    sub_10003105C(v6, v8, type metadata accessor for StartWritingWidgetSystemSmallView);
    swift_storeEnumTagMultiPayload();
    sub_100030E7C(&qword_100085DD8, type metadata accessor for StartWritingWidgetAccessoryRectangularView, &unk_10006A3DC);
    sub_100030E7C(&qword_100085DE0, type metadata accessor for StartWritingWidgetSystemSmallView, &unk_10006A024);
    v31 = v67;
    sub_100063B44();
    sub_100016718(v31, v14, &qword_100085DD0, &qword_100067E38);
    swift_storeEnumTagMultiPayload();
    sub_100030B48();
    sub_100030C58();
    sub_100063B44();
    sub_10000494C(v31, &qword_100085DD0, &qword_100067E38);
    sub_100016718(v18, v12, &qword_100085DA0, &qword_100067E28);
    swift_storeEnumTagMultiPayload();
    sub_100030ABC();
    sub_100030D44();
    sub_100063B44();
    sub_10000494C(v18, &qword_100085DA0, &qword_100067E28);
    v32 = type metadata accessor for StartWritingWidgetSystemSmallView;
    v33 = v6;
  }

  else
  {
    v34 = v1;
    v35 = v67;
    v49 = v12;
    if (v27 == enum case for WidgetFamily.systemMedium(_:))
    {
      v36 = type metadata accessor for StartWritingWidgetView(0);
      v37 = started;
      v38 = v59;
      sub_10003105C(v34 + *(v36 + 20), v59 + *(started + 28), type metadata accessor for StartWritingWidgetTimelineEntry);
      *v38 = swift_getKeyPath();
      sub_1000021D4(&qword_1000853F0, &qword_100067EB0);
      swift_storeEnumTagMultiPayload();
      v39 = *(v37 + 20);
      *(v38 + v39) = swift_getKeyPath();
      sub_1000021D4(&qword_100085318, &qword_100066A08);
      swift_storeEnumTagMultiPayload();
      v40 = *(v37 + 24);
      *(v38 + v40) = swift_getKeyPath();
      sub_1000021D4(&qword_100085E38, &qword_100067F20);
      swift_storeEnumTagMultiPayload();
      sub_10003105C(v38, v58, type metadata accessor for StartWritingWidgetSystemMediumView);
      swift_storeEnumTagMultiPayload();
      sub_100030E7C(&qword_100085DF8, type metadata accessor for StartWritingWidgetSystemMediumView, &unk_1000668D4);
      v41 = v60;
      sub_100063B44();
      sub_100016718(v41, v49, &qword_100085DF0, &qword_100067E40);
      swift_storeEnumTagMultiPayload();
      sub_100030ABC();
      sub_100030D44();
      sub_100063B44();
      sub_10000494C(v41, &qword_100085DF0, &qword_100067E40);
      v42 = type metadata accessor for StartWritingWidgetSystemMediumView;
    }

    else
    {
      if (v27 == enum case for WidgetFamily.accessoryCircular(_:))
      {
        swift_storeEnumTagMultiPayload();
        sub_100030E7C(&qword_100085DB8, type metadata accessor for StartWritingWidgetAccessoryInlineView, &unk_100065BD8);
        sub_100030C04();
        v44 = v55;
        sub_100063B44();
        sub_100016718(v44, v14, &qword_100085DB0, &qword_100067E30);
        swift_storeEnumTagMultiPayload();
        sub_100030B48();
        sub_100030C58();
        sub_100063B44();
        sub_10000494C(v44, &qword_100085DB0, &qword_100067E30);
        sub_100016718(v18, v49, &qword_100085DA0, &qword_100067E28);
        swift_storeEnumTagMultiPayload();
        sub_100030ABC();
        sub_100030D44();
        sub_100063B44();
        return sub_10000494C(v18, &qword_100085DA0, &qword_100067E28);
      }

      if (v27 == enum case for WidgetFamily.accessoryRectangular(_:))
      {
        v45 = type metadata accessor for StartWritingWidgetView(0);
        v46 = v51;
        sub_10003105C(v34 + *(v45 + 20), v51, type metadata accessor for StartWritingWidgetTimelineEntry);
        sub_10003105C(v46, v8, type metadata accessor for StartWritingWidgetAccessoryRectangularView);
        swift_storeEnumTagMultiPayload();
        sub_100030E7C(&qword_100085DD8, type metadata accessor for StartWritingWidgetAccessoryRectangularView, &unk_10006A3DC);
        sub_100030E7C(&qword_100085DE0, type metadata accessor for StartWritingWidgetSystemSmallView, &unk_10006A024);
        sub_100063B44();
        sub_100016718(v35, v14, &qword_100085DD0, &qword_100067E38);
        swift_storeEnumTagMultiPayload();
        sub_100030B48();
        sub_100030C58();
        sub_100063B44();
        sub_10000494C(v35, &qword_100085DD0, &qword_100067E38);
        sub_100016718(v18, v49, &qword_100085DA0, &qword_100067E28);
        swift_storeEnumTagMultiPayload();
        sub_100030ABC();
        sub_100030D44();
        sub_100063B44();
        sub_10000494C(v18, &qword_100085DA0, &qword_100067E28);
        v32 = type metadata accessor for StartWritingWidgetAccessoryRectangularView;
        v33 = v46;
        return sub_1000310C4(v33, v32);
      }

      if (v27 != enum case for WidgetFamily.accessoryInline(_:))
      {
        v72 = 0;
        v73 = 0xE000000000000000;
        sub_100064434(27);

        v72 = 0xD000000000000019;
        v73 = 0x8000000100072CC0;
        sub_1000307E0(&qword_100084C00, &qword_100066BB0, &type metadata accessor for WidgetFamily, v24);
        sub_100030E7C(&qword_100085E30, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
        v74._countAndFlagsBits = sub_100064584();
        sub_1000642D4(v74);

        (*(v21 + 8))(v24, v20);
        result = sub_100064474();
        __break(1u);
        return result;
      }

      v47 = type metadata accessor for StartWritingWidgetView(0);
      v38 = v50;
      sub_10003105C(v34 + *(v47 + 20), v50, type metadata accessor for StartWritingWidgetTimelineEntry);
      sub_10003105C(v38, v54, type metadata accessor for StartWritingWidgetAccessoryInlineView);
      swift_storeEnumTagMultiPayload();
      sub_100030E7C(&qword_100085DB8, type metadata accessor for StartWritingWidgetAccessoryInlineView, &unk_100065BD8);
      sub_100030C04();
      v48 = v55;
      sub_100063B44();
      sub_100016718(v48, v14, &qword_100085DB0, &qword_100067E30);
      swift_storeEnumTagMultiPayload();
      sub_100030B48();
      sub_100030C58();
      sub_100063B44();
      sub_10000494C(v48, &qword_100085DB0, &qword_100067E30);
      sub_100016718(v18, v49, &qword_100085DA0, &qword_100067E28);
      swift_storeEnumTagMultiPayload();
      sub_100030ABC();
      sub_100030D44();
      sub_100063B44();
      sub_10000494C(v18, &qword_100085DA0, &qword_100067E28);
      v42 = type metadata accessor for StartWritingWidgetAccessoryInlineView;
    }

    v32 = v42;
    v33 = v38;
  }

  return sub_1000310C4(v33, v32);
}

uint64_t sub_1000307E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_1000639F4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000021D4(a1, a2);
  __chkstk_darwin(v14);
  v16 = &v20 - v15;
  sub_100016718(v8, &v20 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    sub_100064384();
    v19 = sub_100063C64();
    sub_1000636D4();

    sub_1000639E4();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

unint64_t sub_100030A30()
{
  result = qword_100085D90;
  if (!qword_100085D90)
  {
    sub_10000221C(&qword_100085D80, &qword_100067E10);
    sub_100030ABC();
    sub_100030D44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085D90);
  }

  return result;
}

unint64_t sub_100030ABC()
{
  result = qword_100085D98;
  if (!qword_100085D98)
  {
    sub_10000221C(&qword_100085DA0, &qword_100067E28);
    sub_100030B48();
    sub_100030C58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085D98);
  }

  return result;
}

unint64_t sub_100030B48()
{
  result = qword_100085DA8;
  if (!qword_100085DA8)
  {
    sub_10000221C(&qword_100085DB0, &qword_100067E30);
    sub_100030E7C(&qword_100085DB8, type metadata accessor for StartWritingWidgetAccessoryInlineView, &unk_100065BD8);
    sub_100030C04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085DA8);
  }

  return result;
}

unint64_t sub_100030C04()
{
  result = qword_100085DC0;
  if (!qword_100085DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085DC0);
  }

  return result;
}

unint64_t sub_100030C58()
{
  result = qword_100085DC8;
  if (!qword_100085DC8)
  {
    sub_10000221C(&qword_100085DD0, &qword_100067E38);
    sub_100030E7C(&qword_100085DD8, type metadata accessor for StartWritingWidgetAccessoryRectangularView, &unk_10006A3DC);
    sub_100030E7C(&qword_100085DE0, type metadata accessor for StartWritingWidgetSystemSmallView, &unk_10006A024);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085DC8);
  }

  return result;
}

unint64_t sub_100030D44()
{
  result = qword_100085DE8;
  if (!qword_100085DE8)
  {
    sub_10000221C(&qword_100085DF0, &qword_100067E40);
    sub_100030E7C(&qword_100085DF8, type metadata accessor for StartWritingWidgetSystemMediumView, &unk_1000668D4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085DE8);
  }

  return result;
}

uint64_t sub_100030E7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100030F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_10003105C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000310C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100031128()
{
  result = qword_100085E40;
  if (!qword_100085E40)
  {
    sub_10000221C(&qword_100085E00, &unk_100067E78);
    sub_10000221C(&qword_100085D80, &qword_100067E10);
    sub_100030A30();
    swift_getOpaqueTypeConformance2();
    sub_1000311F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085E40);
  }

  return result;
}

unint64_t sub_1000311F0()
{
  result = qword_100085E48;
  if (!qword_100085E48)
  {
    sub_10000221C(&qword_100085E50, &qword_100067F28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085E48);
  }

  return result;
}

uint64_t type metadata accessor for CanvasContentInputType(uint64_t a1)
{
  result = qword_100085EC8;
  if (!qword_100085EC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000312A0(uint64_t a1)
{
  sub_100031314();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_100031314()
{
  if (!qword_1000856B0)
  {
    sub_10003135C(0);
    if (!v1)
    {
      atomic_store(v0, &qword_1000856B0);
    }
  }
}

void sub_10003135C(uint64_t a1)
{
  if (!qword_1000856B8)
  {
    sub_1000635A4();
    v1 = sub_1000643A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1000856B8);
    }
  }
}

uint64_t sub_1000313D0@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_100031418(uint64_t a1)
{
  v2 = sub_100035BAC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100031454(uint64_t a1)
{
  v2 = sub_100035BAC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000314DC(void *a1, int a2)
{
  v18 = a2;
  v3 = sub_1000021D4(&qword_1000860B0, &qword_1000681D0);
  v16 = *(v3 - 8);
  v17 = v3;
  __chkstk_darwin(v3);
  v5 = &v15 - v4;
  v15 = sub_1000021D4(&qword_1000860B8, &qword_1000681D8);
  v6 = *(v15 - 8);
  __chkstk_darwin(v15);
  v8 = &v15 - v7;
  v9 = sub_1000021D4(&qword_1000860C0, &qword_1000681E0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - v11;
  sub_1000226A8(a1, a1[3]);
  sub_100035B58();
  sub_100064604();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_100035BAC();
    sub_100064524();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_100035C00();
    sub_100064524();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

uint64_t sub_100031798()
{
  if (*v0)
  {
    return 2036625250;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_1000317C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v6 || (sub_100064594() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100064594();

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

uint64_t sub_1000318AC(uint64_t a1)
{
  v2 = sub_100035B58();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000318E8(uint64_t a1)
{
  v2 = sub_100035B58();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100031924(uint64_t a1)
{
  v2 = sub_100035C00();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100031960(uint64_t a1)
{
  v2 = sub_100035C00();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_10003199C()
{
  v1 = *v0;
  sub_1000645B4();
  sub_1000645C4(v1);
  return sub_1000645E4();
}

Swift::Int sub_1000319E4(uint64_t a1)
{
  v2 = *v1;
  sub_1000645B4();
  sub_1000645C4(v2);
  return sub_1000645E4();
}

uint64_t sub_100031A28@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_10003571C(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

unint64_t sub_100031A78()
{
  result = qword_100085F00;
  if (!qword_100085F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085F00);
  }

  return result;
}

uint64_t sub_100031ACC(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000014;
    v7 = 0x7055776F6C6C6F66;
    if (a1 != 10)
    {
      v7 = 0x776F6C667265766FLL;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000011;
    if (a1 == 7)
    {
      v8 = 0x6E6F697461636F6CLL;
    }

    if (a1 == 6)
    {
      v8 = 0x6369506F69647561;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x7475706E496F6ELL;
    v2 = 0xD000000000000010;
    v3 = 0x6369506F746F6870;
    if (a1 != 4)
    {
      v3 = 0x69506172656D6163;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6472616F6279656BLL;
    if (a1 != 1)
    {
      v4 = 0xD000000000000010;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_100031C90(void *a1)
{
  v2 = sub_1000021D4(&qword_100086000, &qword_100068140);
  v87 = *(v2 - 8);
  v88 = v2;
  __chkstk_darwin(v2);
  v86 = &v54 - v3;
  v4 = sub_1000021D4(&qword_100086008, &qword_100068148);
  v84 = *(v4 - 8);
  v85 = v4;
  __chkstk_darwin(v4);
  v83 = &v54 - v5;
  v6 = sub_1000021D4(&qword_100086010, &qword_100068150);
  v81 = *(v6 - 8);
  v82 = v6;
  __chkstk_darwin(v6);
  v80 = &v54 - v7;
  v8 = sub_1000021D4(&qword_100086018, &qword_100068158);
  v78 = *(v8 - 8);
  v79 = v8;
  __chkstk_darwin(v8);
  v77 = &v54 - v9;
  v10 = sub_1000021D4(&qword_100086020, &qword_100068160);
  v75 = *(v10 - 8);
  v76 = v10;
  __chkstk_darwin(v10);
  v73 = &v54 - v11;
  v74 = sub_1000021D4(&qword_100086028, &qword_100068168);
  v72 = *(v74 - 8);
  __chkstk_darwin(v74);
  v71 = &v54 - v12;
  v70 = sub_1000021D4(&qword_100086030, &qword_100068170);
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v66 = &v54 - v13;
  v65 = sub_1000021D4(&qword_100086038, &qword_100068178);
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v62 = &v54 - v14;
  v68 = sub_1000021D4(&qword_100086040, &qword_100068180);
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v64 = &v54 - v15;
  v16 = sub_1000021D4(&qword_100085600, &qword_100066EC0);
  __chkstk_darwin(v16 - 8);
  v61 = &v54 - v17;
  v60 = sub_1000021D4(&qword_100086048, &qword_100068188);
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v56 = &v54 - v18;
  v58 = sub_1000021D4(&qword_100086050, &qword_100068190);
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v20 = &v54 - v19;
  v21 = sub_1000021D4(&qword_100086058, &qword_100068198);
  v55 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v54 - v22;
  v24 = type metadata accessor for CanvasContentInputType(0);
  __chkstk_darwin(v24);
  v26 = &v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1000021D4(&qword_100086060, &unk_1000681A0);
  v28 = *(v27 - 8);
  v91 = v27;
  v92 = v28;
  __chkstk_darwin(v27);
  v30 = &v54 - v29;
  sub_1000226A8(a1, a1[3]);
  sub_100034B84();
  v90 = v30;
  sub_100064604();
  sub_100034A40(v89, v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 8)
    {
      if (EnumCaseMultiPayload == 9)
      {
        v103 = 9;
        sub_100034C80();
        v37 = v80;
        v38 = v90;
        v39 = v91;
        sub_100064524();
        v41 = v81;
        v40 = v82;
      }

      else if (EnumCaseMultiPayload == 10)
      {
        v104 = 10;
        sub_100034C2C();
        v37 = v83;
        v38 = v90;
        v39 = v91;
        sub_100064524();
        v41 = v84;
        v40 = v85;
      }

      else
      {
        v105 = 11;
        sub_100034BD8();
        v37 = v86;
        v38 = v90;
        v39 = v91;
        sub_100064524();
        v41 = v87;
        v40 = v88;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 6)
      {
        v99 = 5;
        sub_100034DD0();
        v48 = v66;
        v38 = v90;
        v39 = v91;
        sub_100064524();
        (*(v69 + 8))(v48, v70);
        return (*(v92 + 8))(v38, v39);
      }

      if (EnumCaseMultiPayload == 7)
      {
        v101 = 7;
        sub_100034D28();
        v37 = v73;
        v38 = v90;
        v39 = v91;
        sub_100064524();
        v41 = v75;
        v40 = v76;
      }

      else
      {
        v102 = 8;
        sub_100034CD4();
        v37 = v77;
        v38 = v90;
        v39 = v91;
        sub_100064524();
        v41 = v78;
        v40 = v79;
      }
    }

    (*(v41 + 8))(v37, v40);
    return (*(v92 + 8))(v38, v39);
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v93 = 0;
      sub_100034FC8();
      v50 = v90;
      v49 = v91;
      sub_100064524();
      (*(v55 + 8))(v23, v21);
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        v96 = 2;
        sub_100034ECC();
        v42 = v56;
        v43 = v90;
        v44 = v91;
        sub_100064524();
        (*(v59 + 8))(v42, v60);
        return (*(v92 + 8))(v43, v44);
      }

      v98 = 4;
      sub_100034E24();
      v53 = v62;
      v50 = v90;
      v49 = v91;
      sub_100064524();
      (*(v63 + 8))(v53, v65);
    }

    return (*(v92 + 8))(v50, v49);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v32 = v61;
        sub_100034AA4(v26, v61);
        v97 = 3;
        sub_100034E78();
        v33 = v64;
        v35 = v90;
        v34 = v91;
        sub_100064524();
        sub_1000635A4();
        sub_1000356D4(&qword_100086068, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v36 = v68;
        sub_100064544();
        (*(v67 + 8))(v33, v36);
        sub_10000494C(v32, &qword_100085600, &qword_100066EC0);
      }

      else
      {
        v100 = 6;
        sub_100034D7C();
        v51 = v71;
        v35 = v90;
        v34 = v91;
        sub_100064524();
        v52 = v74;
        sub_100064564();
        (*(v72 + 8))(v51, v52);
      }
    }

    else
    {
      v46 = *v26;
      v95 = 1;
      sub_100034F20();
      v35 = v90;
      v34 = v91;
      sub_100064524();
      v94 = v46;
      sub_10003501C();
      v47 = v58;
      sub_100064574();
      (*(v57 + 8))(v20, v47);
    }

    return (*(v92 + 8))(v35, v34);
  }
}

void sub_1000329EC(uint64_t a1)
{
  v2 = sub_1000635A4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000021D4(&qword_100085600, &qword_100066EC0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v19 - v10;
  v12 = type metadata accessor for CanvasContentInputType(0);
  __chkstk_darwin(v12);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100034A40(v1, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 8)
    {
      if (EnumCaseMultiPayload == 9)
      {
        v16 = 9;
      }

      else if (EnumCaseMultiPayload == 10)
      {
        v16 = 10;
      }

      else
      {
        v16 = 11;
      }
    }

    else if (EnumCaseMultiPayload == 6)
    {
      v16 = 5;
    }

    else if (EnumCaseMultiPayload == 7)
    {
      v16 = 7;
    }

    else
    {
      v16 = 8;
    }

    goto LABEL_25;
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v16 = 0;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v16 = 2;
    }

    else
    {
      v16 = 4;
    }

    goto LABEL_25;
  }

  if (!EnumCaseMultiPayload)
  {
    v17 = *v14;
    sub_1000645C4(1uLL);
    v16 = v17;
LABEL_25:
    sub_1000645C4(v16);
    return;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_100034AA4(v14, v11);
    sub_1000645C4(3uLL);
    sub_100034B14(v11, v9);
    if ((*(v3 + 48))(v9, 1, v2) == 1)
    {
      sub_1000645D4(0);
    }

    else
    {
      (*(v3 + 32))(v5, v9, v2);
      sub_1000645D4(1u);
      sub_1000356D4(&qword_100085F10, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      sub_100064244();
      (*(v3 + 8))(v5, v2);
    }

    sub_10000494C(v11, &qword_100085600, &qword_100066EC0);
  }

  else
  {
    v18 = *v14;
    sub_1000645C4(6uLL);
    sub_1000645D4(v18);
  }
}

uint64_t sub_100032D40@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v128 = a2;
  v114 = sub_1000021D4(&qword_100085F18, &qword_1000680D0);
  v127 = *(v114 - 8);
  __chkstk_darwin(v114);
  v123 = &v85 - v3;
  v113 = sub_1000021D4(&qword_100085F20, &qword_1000680D8);
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v122 = &v85 - v4;
  v111 = sub_1000021D4(&qword_100085F28, &qword_1000680E0);
  v110 = *(v111 - 8);
  __chkstk_darwin(v111);
  v119 = &v85 - v5;
  v109 = sub_1000021D4(&qword_100085F30, &qword_1000680E8);
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v121 = &v85 - v6;
  v107 = sub_1000021D4(&qword_100085F38, &qword_1000680F0);
  v106 = *(v107 - 8);
  __chkstk_darwin(v107);
  v120 = &v85 - v7;
  v105 = sub_1000021D4(&qword_100085F40, &qword_1000680F8);
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v126 = &v85 - v8;
  v103 = sub_1000021D4(&qword_100085F48, &qword_100068100);
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v118 = &v85 - v9;
  v100 = sub_1000021D4(&qword_100085F50, &qword_100068108);
  v98 = *(v100 - 8);
  __chkstk_darwin(v100);
  v117 = &v85 - v10;
  v99 = sub_1000021D4(&qword_100085F58, &qword_100068110);
  v101 = *(v99 - 8);
  __chkstk_darwin(v99);
  v125 = &v85 - v11;
  v97 = sub_1000021D4(&qword_100085F60, &qword_100068118);
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v115 = &v85 - v12;
  v95 = sub_1000021D4(&qword_100085F68, &qword_100068120);
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v116 = &v85 - v13;
  v92 = sub_1000021D4(&qword_100085F70, &qword_100068128);
  v93 = *(v92 - 8);
  __chkstk_darwin(v92);
  v124 = &v85 - v14;
  v15 = sub_1000021D4(&qword_100085F78, &qword_100068130);
  v129 = *(v15 - 8);
  v130 = v15;
  __chkstk_darwin(v15);
  v17 = &v85 - v16;
  v18 = type metadata accessor for CanvasContentInputType(0);
  v19 = __chkstk_darwin(v18);
  v21 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v24 = &v85 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = &v85 - v26;
  __chkstk_darwin(v25);
  v29 = &v85 - v28;
  v30 = a1[3];
  v132 = a1;
  sub_1000226A8(a1, v30);
  sub_100034B84();
  v31 = v131;
  sub_1000645F4();
  if (!v31)
  {
    v86 = v27;
    v87 = v21;
    v32 = v124;
    v88 = v24;
    v34 = v125;
    v33 = v126;
    v90 = 0;
    v35 = v127;
    v91 = v18;
    v89 = v29;
    v36 = v128;
    v131 = v17;
    v37 = sub_100064514();
    if (*(v37 + 16) != 1 || (v38 = *(v37 + 32), v38 == 12))
    {
      v44 = sub_100064454();
      swift_allocError();
      v46 = v45;
      sub_1000021D4(&qword_100085F88, &qword_100068138);
      *v46 = v91;
      v48 = v130;
      v47 = v131;
      sub_1000644B4();
      sub_100064444();
      (*(*(v44 - 8) + 104))(v46, enum case for DecodingError.typeMismatch(_:), v44);
      swift_willThrow();
      goto LABEL_11;
    }

    if (*(v37 + 32) <= 5u)
    {
      if (*(v37 + 32) <= 2u)
      {
        v39 = v90;
        if (*(v37 + 32))
        {
          v127 = v37;
          v40 = v130;
          if (v38 == 1)
          {
            v135 = 1;
            sub_100034F20();
            v41 = v116;
            v42 = v131;
            sub_1000644A4();
            v43 = v129;
            if (v39)
            {
              (*(v129 + 8))(v42, v40);
LABEL_12:
              swift_unknownObjectRelease();
              return sub_1000226EC(v132);
            }

            sub_100034F74();
            v80 = v95;
            sub_100064504();
            (*(v94 + 8))(v41, v80);
            (*(v43 + 8))(v42, v40);
            swift_unknownObjectRelease();
            v83 = v86;
            *v86 = v134;
            goto LABEL_50;
          }

          v136 = 2;
          sub_100034ECC();
          v73 = v115;
          v74 = v131;
          sub_1000644A4();
          v75 = v129;
          if (v39)
          {
            (*(v129 + 8))(v74, v40);
            goto LABEL_12;
          }

          (*(v96 + 8))(v73, v97);
          (*(v75 + 8))(v74, v40);
          swift_unknownObjectRelease();
          v56 = v89;
LABEL_46:
          swift_storeEnumTagMultiPayload();
LABEL_52:
          v53 = v36;
          goto LABEL_53;
        }

        v133 = 0;
        sub_100034FC8();
        v48 = v130;
        v47 = v131;
        sub_1000644A4();
        if (!v39)
        {
          (*(v93 + 8))(v32, v92);
          (*(v129 + 8))(v47, v48);
          swift_unknownObjectRelease();
          v56 = v89;
          goto LABEL_46;
        }

LABEL_11:
        (*(v129 + 8))(v47, v48);
        goto LABEL_12;
      }

      v57 = v90;
      if (v38 != 3)
      {
        v58 = v129;
        v59 = v131;
        if (v38 == 4)
        {
          v138 = 4;
          sub_100034E24();
          v60 = v117;
          v61 = v130;
          sub_1000644A4();
          if (!v57)
          {
            v53 = v36;
            (*(v98 + 8))(v60, v100);
            (*(v58 + 8))(v59, v61);
            swift_unknownObjectRelease();
            v56 = v89;
            swift_storeEnumTagMultiPayload();
            goto LABEL_53;
          }
        }

        else
        {
          v139 = 5;
          sub_100034DD0();
          v77 = v118;
          v61 = v130;
          sub_1000644A4();
          if (!v57)
          {
            v53 = v36;
            (*(v102 + 8))(v77, v103);
            (*(v58 + 8))(v59, v61);
            swift_unknownObjectRelease();
            v56 = v89;
            swift_storeEnumTagMultiPayload();
            goto LABEL_53;
          }
        }

        (*(v58 + 8))(v59, v61);
        goto LABEL_12;
      }

      v137 = 3;
      sub_100034E78();
      v68 = v34;
      v63 = v130;
      v52 = v131;
      sub_1000644A4();
      v51 = v129;
      if (!v57)
      {
        sub_1000635A4();
        sub_1000356D4(&qword_100085FD8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v69 = v88;
        v70 = v99;
        sub_1000644D4();
        (*(v101 + 8))(v68, v70);
        (*(v51 + 8))(v52, v130);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v84 = v69;
LABEL_51:
        v56 = v89;
        sub_10001BF8C(v84, v89);
        goto LABEL_52;
      }

LABEL_34:
      (*(v51 + 8))(v52, v63);
      goto LABEL_12;
    }

    v51 = v129;
    v50 = v130;
    v52 = v131;
    if (*(v37 + 32) <= 8u)
    {
      if (v38 == 6)
      {
        v140 = 6;
        sub_100034D7C();
        v65 = v33;
        v63 = v50;
        v66 = v90;
        sub_1000644A4();
        if (!v66)
        {
          v67 = v105;
          v81 = sub_1000644F4();
          (*(v104 + 8))(v65, v67);
          (*(v51 + 8))(v52, v130);
          swift_unknownObjectRelease();
          v82 = v81 & 1;
          v83 = v87;
          *v87 = v82;
LABEL_50:
          swift_storeEnumTagMultiPayload();
          v84 = v83;
          goto LABEL_51;
        }

        goto LABEL_34;
      }

      v53 = v36;
      v54 = v90;
      if (v38 == 7)
      {
        v141 = 7;
        sub_100034D28();
        v55 = v120;
        sub_1000644A4();
        if (!v54)
        {
          (*(v106 + 8))(v55, v107);
          (*(v51 + 8))(v52, v130);
          swift_unknownObjectRelease();
          v56 = v89;
          swift_storeEnumTagMultiPayload();
          goto LABEL_53;
        }
      }

      else
      {
        v142 = 8;
        sub_100034CD4();
        v76 = v121;
        sub_1000644A4();
        if (!v54)
        {
          (*(v108 + 8))(v76, v109);
          (*(v51 + 8))(v52, v130);
          swift_unknownObjectRelease();
          v56 = v89;
          swift_storeEnumTagMultiPayload();
          goto LABEL_53;
        }
      }

      (*(v51 + 8))(v52, v130);
      goto LABEL_12;
    }

    v53 = v36;
    if (v38 == 9)
    {
      v143 = 9;
      sub_100034C80();
      v71 = v119;
      v63 = v50;
      v72 = v90;
      sub_1000644A4();
      if (!v72)
      {
        (*(v110 + 8))(v71, v111);
        (*(v51 + 8))(v52, v50);
        swift_unknownObjectRelease();
        v56 = v89;
        swift_storeEnumTagMultiPayload();
        goto LABEL_53;
      }

      goto LABEL_34;
    }

    if (v38 == 10)
    {
      v144 = 10;
      sub_100034C2C();
      v62 = v122;
      v63 = v50;
      v64 = v90;
      sub_1000644A4();
      if (!v64)
      {
        (*(v112 + 8))(v62, v113);
        (*(v51 + 8))(v52, v50);
        swift_unknownObjectRelease();
        v56 = v89;
        swift_storeEnumTagMultiPayload();
        goto LABEL_53;
      }

      goto LABEL_34;
    }

    v145 = 11;
    sub_100034BD8();
    v78 = v123;
    v79 = v90;
    sub_1000644A4();
    if (v79)
    {
      (*(v51 + 8))(v52, v50);
      swift_unknownObjectRelease();
      return sub_1000226EC(v132);
    }

    (*(v35 + 8))(v78, v114);
    (*(v51 + 8))(v52, v50);
    swift_unknownObjectRelease();
    v56 = v89;
    swift_storeEnumTagMultiPayload();
    v53 = v36;
LABEL_53:
    sub_10001BF8C(v56, v53);
  }

  return sub_1000226EC(v132);
}

uint64_t sub_1000340F4(uint64_t a1)
{
  v2 = sub_100034D7C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100034130(uint64_t a1)
{
  v2 = sub_100034D7C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003416C(uint64_t a1)
{
  v2 = sub_100034DD0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000341A8(uint64_t a1)
{
  v2 = sub_100034DD0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100034200@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100036C2C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100034234(uint64_t a1)
{
  v2 = sub_100034B84();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100034270(uint64_t a1)
{
  v2 = sub_100034B84();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000342AC(uint64_t a1)
{
  v2 = sub_100034ECC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000342E8(uint64_t a1)
{
  v2 = sub_100034ECC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100034324(uint64_t a1)
{
  v2 = sub_100034C2C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100034360(uint64_t a1)
{
  v2 = sub_100034C2C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000343D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_100064594();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100034450(uint64_t a1)
{
  v2 = sub_100034F20();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003448C(uint64_t a1)
{
  v2 = sub_100034F20();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000344C8(uint64_t a1)
{
  v2 = sub_100034D28();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100034504(uint64_t a1)
{
  v2 = sub_100034D28();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100034540(uint64_t a1)
{
  v2 = sub_100034FC8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003457C(uint64_t a1)
{
  v2 = sub_100034FC8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000345B8(uint64_t a1)
{
  v2 = sub_100034BD8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000345F4(uint64_t a1)
{
  v2 = sub_100034BD8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100034630(uint64_t a1)
{
  v2 = sub_100034E24();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003466C(uint64_t a1)
{
  v2 = sub_100034E24();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000346A8(uint64_t a1)
{
  v2 = sub_100034C80();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000346E4(uint64_t a1)
{
  v2 = sub_100034C80();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100034720(uint64_t a1)
{
  v2 = sub_100034CD4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003475C(uint64_t a1)
{
  v2 = sub_100034CD4();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100034798()
{
  sub_1000645B4();
  sub_1000645C4(0);
  return sub_1000645E4();
}

Swift::Int sub_1000347DC(uint64_t a1)
{
  sub_1000645B4();
  sub_1000645C4(0);
  return sub_1000645E4();
}

uint64_t sub_100034838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x8000000100072D90 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_100064594();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1000348CC(uint64_t a1)
{
  v2 = sub_100034E78();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100034908(uint64_t a1)
{
  v2 = sub_100034E78();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100034944()
{
  sub_1000645B4();
  sub_1000329EC(v1);
  return sub_1000645E4();
}

Swift::Int sub_100034988(uint64_t a1)
{
  sub_1000645B4();
  sub_1000329EC(v2);
  return sub_1000645E4();
}

uint64_t sub_100034A40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CanvasContentInputType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100034AA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000021D4(&qword_100085600, &qword_100066EC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100034B14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000021D4(&qword_100085600, &qword_100066EC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100034B84()
{
  result = qword_100085F80;
  if (!qword_100085F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085F80);
  }

  return result;
}

unint64_t sub_100034BD8()
{
  result = qword_100085F90;
  if (!qword_100085F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085F90);
  }

  return result;
}

unint64_t sub_100034C2C()
{
  result = qword_100085F98;
  if (!qword_100085F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085F98);
  }

  return result;
}

unint64_t sub_100034C80()
{
  result = qword_100085FA0;
  if (!qword_100085FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085FA0);
  }

  return result;
}

unint64_t sub_100034CD4()
{
  result = qword_100085FA8;
  if (!qword_100085FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085FA8);
  }

  return result;
}

unint64_t sub_100034D28()
{
  result = qword_100085FB0;
  if (!qword_100085FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085FB0);
  }

  return result;
}

unint64_t sub_100034D7C()
{
  result = qword_100085FB8;
  if (!qword_100085FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085FB8);
  }

  return result;
}

unint64_t sub_100034DD0()
{
  result = qword_100085FC0;
  if (!qword_100085FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085FC0);
  }

  return result;
}

unint64_t sub_100034E24()
{
  result = qword_100085FC8;
  if (!qword_100085FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085FC8);
  }

  return result;
}

unint64_t sub_100034E78()
{
  result = qword_100085FD0;
  if (!qword_100085FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085FD0);
  }

  return result;
}

unint64_t sub_100034ECC()
{
  result = qword_100085FE0;
  if (!qword_100085FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085FE0);
  }

  return result;
}

unint64_t sub_100034F20()
{
  result = qword_100085FE8;
  if (!qword_100085FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085FE8);
  }

  return result;
}

unint64_t sub_100034F74()
{
  result = qword_100085FF0;
  if (!qword_100085FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085FF0);
  }

  return result;
}

unint64_t sub_100034FC8()
{
  result = qword_100085FF8;
  if (!qword_100085FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085FF8);
  }

  return result;
}

unint64_t sub_10003501C()
{
  result = qword_100086070;
  if (!qword_100086070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086070);
  }

  return result;
}

uint64_t sub_100035070(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000635A4();
  v40 = *(v4 - 8);
  v41 = v4;
  __chkstk_darwin(v4);
  v38 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000021D4(&qword_100085600, &qword_100066EC0);
  __chkstk_darwin(v6 - 8);
  v39 = &v38 - v7;
  v8 = sub_1000021D4(&qword_100085750, &qword_100067088);
  __chkstk_darwin(v8);
  v10 = &v38 - v9;
  v11 = type metadata accessor for CanvasContentInputType(0);
  v12 = __chkstk_darwin(v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v38 - v16;
  __chkstk_darwin(v15);
  v19 = &v38 - v18;
  v20 = sub_1000021D4(&qword_100086078, &qword_1000681B0);
  v21 = __chkstk_darwin(v20 - 8);
  v23 = &v38 - v22;
  v24 = *(v21 + 56);
  sub_100034A40(a1, &v38 - v22);
  sub_100034A40(a2, &v23[v24]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 8)
    {
      if (EnumCaseMultiPayload == 9)
      {
        if (swift_getEnumCaseMultiPayload() == 9)
        {
          goto LABEL_38;
        }
      }

      else if (EnumCaseMultiPayload == 10)
      {
        if (swift_getEnumCaseMultiPayload() == 10)
        {
          goto LABEL_38;
        }
      }

      else if (swift_getEnumCaseMultiPayload() == 11)
      {
        goto LABEL_38;
      }
    }

    else if (EnumCaseMultiPayload == 6)
    {
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        goto LABEL_38;
      }
    }

    else if (EnumCaseMultiPayload == 7)
    {
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_38;
      }
    }

    else if (swift_getEnumCaseMultiPayload() == 8)
    {
      goto LABEL_38;
    }

    goto LABEL_40;
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        goto LABEL_38;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        goto LABEL_38;
      }
    }

    else if (swift_getEnumCaseMultiPayload() == 5)
    {
      goto LABEL_38;
    }

    goto LABEL_40;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_100034A40(v23, v17);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v26 = *(v8 + 48);
        sub_100034AA4(v17, v10);
        sub_100034AA4(&v23[v24], &v10[v26]);
        v28 = v40;
        v27 = v41;
        v29 = *(v40 + 48);
        if (v29(v10, 1, v41) == 1)
        {
          if (v29(&v10[v26], 1, v27) == 1)
          {
            sub_10000494C(v10, &qword_100085600, &qword_100066EC0);
LABEL_38:
            sub_100035678(v23);
            v32 = 1;
            return v32 & 1;
          }
        }

        else
        {
          v34 = v39;
          sub_100034B14(v10, v39);
          if (v29(&v10[v26], 1, v27) != 1)
          {
            v35 = v38;
            (*(v28 + 32))(v38, &v10[v26], v27);
            sub_1000356D4(&qword_100085770, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v36 = sub_100064274();
            v37 = *(v28 + 8);
            v37(v35, v27);
            v37(v34, v27);
            sub_10000494C(v10, &qword_100085600, &qword_100066EC0);
            if (v36)
            {
              goto LABEL_38;
            }

            goto LABEL_46;
          }

          (*(v28 + 8))(v34, v27);
        }

        sub_10000494C(v10, &qword_100085750, &qword_100067088);
LABEL_46:
        sub_100035678(v23);
        goto LABEL_41;
      }

      sub_10000494C(v17, &qword_100085600, &qword_100066EC0);
LABEL_40:
      sub_10000494C(v23, &qword_100086078, &qword_1000681B0);
LABEL_41:
      v32 = 0;
      return v32 & 1;
    }

    sub_100034A40(v23, v14);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_40;
    }

    v30 = *v14;
  }

  else
  {
    sub_100034A40(v23, v19);
    if (swift_getEnumCaseMultiPayload())
    {
      goto LABEL_40;
    }

    v30 = *v19;
  }

  v31 = v30 ^ v23[v24];
  sub_100035678(v23);
  v32 = v31 ^ 1;
  return v32 & 1;
}

uint64_t sub_100035678(uint64_t a1)
{
  v2 = type metadata accessor for CanvasContentInputType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000356D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10003571C(void *a1)
{
  v24 = sub_1000021D4(&qword_100086080, &qword_1000681B8);
  v22 = *(v24 - 8);
  __chkstk_darwin(v24);
  v3 = v20 - v2;
  v4 = sub_1000021D4(&qword_100086088, &qword_1000681C0);
  v23 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v20 - v5;
  v7 = sub_1000021D4(&qword_100086090, &qword_1000681C8);
  v25 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v20 - v8;
  sub_1000226A8(a1, a1[3]);
  sub_100035B58();
  v10 = v26;
  sub_1000645F4();
  if (v10)
  {
    return sub_1000226EC(a1);
  }

  v21 = v4;
  v26 = a1;
  v12 = v23;
  v11 = v24;
  v13 = v9;
  v14 = sub_100064514();
  if (*(v14 + 16) != 1)
  {
    v16 = sub_100064454();
    swift_allocError();
    v18 = v17;
    sub_1000021D4(&qword_100085F88, &qword_100068138);
    *v18 = &type metadata for CanvasContentInputType.KeyboardFocus;
    sub_1000644B4();
    sub_100064444();
    (*(*(v16 - 8) + 104))(v18, enum case for DecodingError.typeMismatch(_:), v16);
    swift_willThrow();
    (*(v25 + 8))(v13, v7);
    swift_unknownObjectRelease();
    a1 = v26;
    return sub_1000226EC(a1);
  }

  v20[1] = v14;
  v27 = *(v14 + 32);
  if (v27)
  {
    v29 = 1;
    sub_100035BAC();
    sub_1000644A4();
    v15 = v25;
    (*(v22 + 8))(v3, v11);
  }

  else
  {
    v28 = 0;
    sub_100035C00();
    sub_1000644A4();
    v15 = v25;
    (*(v12 + 8))(v6, v21);
  }

  (*(v15 + 8))(v9, v7);
  swift_unknownObjectRelease();
  sub_1000226EC(v26);
  return v27;
}

unint64_t sub_100035B58()
{
  result = qword_100086098;
  if (!qword_100086098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086098);
  }

  return result;
}

unint64_t sub_100035BAC()
{
  result = qword_1000860A0;
  if (!qword_1000860A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000860A0);
  }

  return result;
}

unint64_t sub_100035C00()
{
  result = qword_1000860A8;
  if (!qword_1000860A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000860A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CanvasContentInputType.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CanvasContentInputType.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100035E48(unsigned int *a1, int a2)
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

_WORD *sub_100035E98(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_100035F78()
{
  result = qword_1000860C8;
  if (!qword_1000860C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000860C8);
  }

  return result;
}

unint64_t sub_100035FD0()
{
  result = qword_1000860D0;
  if (!qword_1000860D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000860D0);
  }

  return result;
}

unint64_t sub_100036028()
{
  result = qword_1000860D8;
  if (!qword_1000860D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000860D8);
  }

  return result;
}

unint64_t sub_100036080()
{
  result = qword_1000860E0;
  if (!qword_1000860E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000860E0);
  }

  return result;
}

unint64_t sub_1000360D8()
{
  result = qword_1000860E8;
  if (!qword_1000860E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000860E8);
  }

  return result;
}

unint64_t sub_100036130()
{
  result = qword_1000860F0;
  if (!qword_1000860F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000860F0);
  }

  return result;
}

unint64_t sub_100036188()
{
  result = qword_1000860F8;
  if (!qword_1000860F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000860F8);
  }

  return result;
}

unint64_t sub_1000361E0()
{
  result = qword_100086100;
  if (!qword_100086100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086100);
  }

  return result;
}

unint64_t sub_100036238()
{
  result = qword_100086108;
  if (!qword_100086108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086108);
  }

  return result;
}

unint64_t sub_100036290()
{
  result = qword_100086110;
  if (!qword_100086110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086110);
  }

  return result;
}

unint64_t sub_1000362E8()
{
  result = qword_100086118;
  if (!qword_100086118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086118);
  }

  return result;
}

unint64_t sub_100036340()
{
  result = qword_100086120;
  if (!qword_100086120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086120);
  }

  return result;
}

unint64_t sub_100036398()
{
  result = qword_100086128;
  if (!qword_100086128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086128);
  }

  return result;
}

unint64_t sub_1000363F0()
{
  result = qword_100086130;
  if (!qword_100086130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086130);
  }

  return result;
}

unint64_t sub_100036448()
{
  result = qword_100086138;
  if (!qword_100086138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086138);
  }

  return result;
}

unint64_t sub_1000364A0()
{
  result = qword_100086140;
  if (!qword_100086140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086140);
  }

  return result;
}

unint64_t sub_1000364F8()
{
  result = qword_100086148;
  if (!qword_100086148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086148);
  }

  return result;
}

unint64_t sub_100036550()
{
  result = qword_100086150;
  if (!qword_100086150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086150);
  }

  return result;
}

unint64_t sub_1000365A8()
{
  result = qword_100086158;
  if (!qword_100086158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086158);
  }

  return result;
}

unint64_t sub_100036600()
{
  result = qword_100086160;
  if (!qword_100086160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086160);
  }

  return result;
}

unint64_t sub_100036658()
{
  result = qword_100086168;
  if (!qword_100086168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086168);
  }

  return result;
}

unint64_t sub_1000366B0()
{
  result = qword_100086170;
  if (!qword_100086170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086170);
  }

  return result;
}

unint64_t sub_100036708()
{
  result = qword_100086178;
  if (!qword_100086178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086178);
  }

  return result;
}

unint64_t sub_100036760()
{
  result = qword_100086180;
  if (!qword_100086180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086180);
  }

  return result;
}

unint64_t sub_1000367B8()
{
  result = qword_100086188;
  if (!qword_100086188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086188);
  }

  return result;
}

unint64_t sub_100036810()
{
  result = qword_100086190;
  if (!qword_100086190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086190);
  }

  return result;
}

unint64_t sub_100036868()
{
  result = qword_100086198;
  if (!qword_100086198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086198);
  }

  return result;
}

unint64_t sub_1000368C0()
{
  result = qword_1000861A0;
  if (!qword_1000861A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000861A0);
  }

  return result;
}

unint64_t sub_100036918()
{
  result = qword_1000861A8;
  if (!qword_1000861A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000861A8);
  }

  return result;
}

unint64_t sub_100036970()
{
  result = qword_1000861B0;
  if (!qword_1000861B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000861B0);
  }

  return result;
}

unint64_t sub_1000369C8()
{
  result = qword_1000861B8;
  if (!qword_1000861B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000861B8);
  }

  return result;
}

unint64_t sub_100036A20()
{
  result = qword_1000861C0;
  if (!qword_1000861C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000861C0);
  }

  return result;
}

unint64_t sub_100036A78()
{
  result = qword_1000861C8;
  if (!qword_1000861C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000861C8);
  }

  return result;
}

unint64_t sub_100036AD0()
{
  result = qword_1000861D0;
  if (!qword_1000861D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000861D0);
  }

  return result;
}

unint64_t sub_100036B28()
{
  result = qword_1000861D8;
  if (!qword_1000861D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000861D8);
  }

  return result;
}

unint64_t sub_100036B80()
{
  result = qword_1000861E0;
  if (!qword_1000861E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000861E0);
  }

  return result;
}

unint64_t sub_100036BD8()
{
  result = qword_1000861E8;
  if (!qword_1000861E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000861E8);
  }

  return result;
}

uint64_t sub_100036C2C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7475706E496F6ELL && a2 == 0xE700000000000000;
  if (v4 || (sub_100064594() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6472616F6279656BLL && a2 == 0xE800000000000000 || (sub_100064594() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100072D10 == a2 || (sub_100064594() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100072D30 == a2 || (sub_100064594() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6369506F746F6870 && a2 == 0xEB0000000072656BLL || (sub_100064594() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x69506172656D6163 && a2 == 0xEC00000072656B63 || (sub_100064594() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6369506F69647561 && a2 == 0xEB0000000072656BLL || (sub_100064594() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEE0072656B636950 || (sub_100064594() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100072D50 == a2 || (sub_100064594() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000100072D70 == a2 || (sub_100064594() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x7055776F6C6C6F66 && a2 == -1192481450101870000 || (sub_100064594() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x776F6C667265766FLL && a2 == 0xEC0000006D657449)
  {

    return 11;
  }

  else
  {
    v6 = sub_100064594();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_100037068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100063574();
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
    v11 = sub_1000021D4(&qword_1000861F0, &unk_100068FA0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1000371B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100063574();
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
    v11 = sub_1000021D4(&qword_1000861F0, &unk_100068FA0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t type metadata accessor for StartWritingWidgetTimelineEntry(uint64_t a1)
{
  result = qword_100086250;
  if (!qword_100086250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100037330(uint64_t a1)
{
  sub_100063574();
  if (v1 <= 0x3F)
  {
    sub_1000373D4(319);
    if (v2 <= 0x3F)
    {
      sub_10003742C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000373D4(uint64_t a1)
{
  if (!qword_100086260)
  {
    sub_100064204();
    v1 = sub_1000643A4();
    if (!v2)
    {
      atomic_store(v1, &qword_100086260);
    }
  }
}

void sub_10003742C()
{
  if (!qword_100086268)
  {
    v0 = sub_1000643A4();
    if (!v1)
    {
      atomic_store(v0, &qword_100086268);
    }
  }
}

uint64_t sub_10003748C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000021D4(&qword_1000861F0, &unk_100068FA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100037544()
{
  v0 = sub_1000021D4(&qword_100084D88, &qword_100065990);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1000633F4();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000635E4();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100064294();
  __chkstk_darwin(v7 - 8);
  v8 = sub_100063404();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_100063244();
  sub_100009DBC(v10, qword_100090D38);
  sub_1000049B4(v10, qword_100090D38);
  sub_100064284();
  sub_1000635D4();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_100063414();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_100063234();
}

uint64_t sub_100037834@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = sub_1000021D4(&qword_100084DB8, "̷");
  __chkstk_darwin(v1 - 8);
  v33 = v25 - v2;
  v3 = sub_1000021D4(&qword_100084D88, &qword_100065990);
  __chkstk_darwin(v3 - 8);
  v32 = v25 - v4;
  v5 = sub_1000633F4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000635E4();
  __chkstk_darwin(v9 - 8);
  v10 = sub_100064294();
  __chkstk_darwin(v10 - 8);
  v28 = sub_100063404();
  v11 = *(v28 - 8);
  v12 = __chkstk_darwin(v28);
  v30 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v29 = v25 - v14;
  sub_100064284();
  sub_1000635D4();
  v15 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v16 = *(v6 + 104);
  v16(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  v25[2] = "Always Use Moment Date";
  v26 = v16;
  v25[1] = v6 + 104;
  sub_100063414();
  sub_100064284();
  sub_1000635D4();
  v17 = v5;
  v16(v8, v15, v5);
  v18 = v32;
  sub_100063414();
  (*(v11 + 56))(v18, 0, 1, v28);
  v19 = v33;
  sub_1000630F4();
  v20 = sub_100063114();
  (*(*(v20 - 8) + 56))(v19, 0, 1, v20);
  sub_1000021D4(&qword_100084DC0, &qword_1000659B0);
  v27 = 2 * *(v11 + 72);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_100066C80;
  sub_100064284();
  sub_1000635D4();
  v21 = v15;
  v22 = v15;
  v23 = v26;
  v26(v8, v22, v17);
  sub_100063414();
  sub_100064284();
  sub_1000635D4();
  v23(v8, v21, v17);
  sub_100063414();
  sub_100064284();
  sub_1000635D4();
  v23(v8, v21, v17);
  sub_100063414();
  sub_100064284();
  sub_1000635D4();
  v23(v8, v21, v17);
  sub_100063414();
  return sub_100063124();
}

uint64_t sub_100037EA4()
{
  v0 = sub_100063404();
  sub_100009DBC(v0, qword_100090D50);
  sub_1000049B4(v0, qword_100090D50);
  return sub_1000633E4();
}

uint64_t sub_100037F08()
{
  v0 = sub_1000021D4(&qword_100084E10, &unk_100065A30);
  sub_100009DBC(v0, qword_100090D68);
  v1 = sub_1000049B4(v0, qword_100090D68);
  sub_100063064();
  v2 = sub_100063074();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100037FC8()
{
  result = swift_getKeyPath();
  qword_100090D80 = result;
  return result;
}

uint64_t sub_100037FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a1;
  sub_1000021D4(&qword_100084DE0, &qword_1000659E0);
  v5[10] = swift_task_alloc();
  sub_1000021D4(&qword_100084DE8, &qword_1000659E8);
  v5[11] = swift_task_alloc();
  sub_1000021D4(&qword_1000863E0, &qword_100069900);
  v5[12] = swift_task_alloc();
  v7 = sub_100062E34();
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();
  v8 = sub_1000021D4(&qword_1000863E8, &qword_100069908);
  v5[16] = v8;
  v5[17] = *(v8 - 8);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  if (a2)
  {
    swift_getObjectType();
    v9 = sub_100064334();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v5[20] = v9;
  v5[21] = v11;

  return _swift_task_switch(sub_100038208, v9);
}

uint64_t sub_100038208()
{
  sub_100062E84();
  v1 = swift_task_alloc();
  *(v0 + 176) = v1;
  v2 = sub_10003958C();
  *v1 = v0;
  v1[1] = sub_1000382D8;
  v3 = *(v0 + 152);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v3, v0 + 16, sub_10003BC88, 0, &type metadata for SkipJournalingSuggestionsEntity, v2);
}

uint64_t sub_1000382D8()
{
  v1 = *v0;

  v2 = *(v1 + 160);

  return _swift_task_switch(sub_1000383F8, v2);
}

uint64_t sub_1000383F8()
{
  sub_100062E84();
  v1 = *(v0 + 24);
  *(v0 + 32) = v1;
  *(v0 + 184) = v1;
  sub_100062E84();
  *(v0 + 217) = *(v0 + 216);
  if (qword_1000849A0 != -1)
  {
    swift_once();
  }

  v2 = qword_100090D80;
  *(v0 + 192) = qword_100090D80;

  v3 = swift_task_alloc();
  *(v0 + 200) = v3;
  v4 = sub_100009F14(&qword_1000863D0, &qword_1000863D8, &qword_1000698F0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v3 = v0;
  v3[1] = sub_100038558;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 217, v2, &type metadata for Bool, v4);
}

uint64_t sub_100038558()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 160);
  if (v0)
  {
    v4 = sub_100006034;
  }

  else
  {
    v4 = sub_1000386AC;
  }

  return _swift_task_switch(v4, v3);
}

uint64_t sub_1000386AC()
{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v10 = v0[18];
  v11 = v0[15];
  v12 = v0[14];
  v13 = v0[13];
  v4 = v0[10];
  v5 = v0[11];
  sub_100062E84();
  v0[6] = v0[5];
  v6 = sub_100063224();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = sub_100063254();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_100019368();
  sub_1000397A0();
  sub_100062E04();
  (*(v2 + 16))(v10, v1, v3);
  sub_100062E24();
  sub_100062E44();
  (*(v12 + 8))(v11, v13);

  (*(v2 + 8))(v1, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100038918()
{
  v0 = sub_1000021D4(&qword_1000863F0, &qword_100069910);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_1000849A0 != -1)
  {
    swift_once();
  }

  sub_1000630E4();

  sub_1000397A0();
  sub_100009F14(&qword_1000863F8, &qword_1000863F0, &qword_100069910, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1000630D4();
  return (*(v1 + 8))(v3, v0);
}

uint64_t (*sub_100038A8C(uint64_t *a1))()
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
  *(v2 + 32) = sub_100062E74();
  return sub_100006368;
}

uint64_t (*sub_100038B00(uint64_t *a1))()
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
  *(v2 + 32) = sub_100062E74();
  return sub_10000A08C;
}

uint64_t sub_100038B74()
{
  if (qword_1000849A0 != -1)
  {
    swift_once();
  }
}

unint64_t sub_100038BD4()
{
  result = qword_1000862C0;
  if (!qword_1000862C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000862C0);
  }

  return result;
}

unint64_t sub_100038C2C()
{
  result = qword_1000862C8;
  if (!qword_1000862C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000862C8);
  }

  return result;
}

uint64_t sub_100038D04@<X0>(uint64_t a1@<X8>)
{
  if (qword_100084998 != -1)
  {
    swift_once();
  }

  v2 = sub_1000021D4(&qword_100084E10, &unk_100065A30);
  v3 = sub_1000049B4(v2, qword_100090D68);

  return sub_100009E78(v3, a1);
}

uint64_t sub_100038D88(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  return _swift_task_switch(sub_100038DB0, 0);
}

uint64_t sub_100038DB0()
{
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_100006768;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return sub_100037FF0(v4, 0, 0, v2, v3);
}

uint64_t sub_100038E50@<X0>(uint64_t *a2@<X8>)
{
  result = sub_10003AF6C();
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_100038E98()
{
  result = qword_1000862D0;
  if (!qword_1000862D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000862D0);
  }

  return result;
}

unint64_t sub_100038EF0()
{
  result = qword_1000862D8;
  if (!qword_1000862D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000862D8);
  }

  return result;
}

uint64_t sub_100038F44(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_100063684();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_100039004, 0);
}

uint64_t sub_100039004()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_100009E20();
  v5 = sub_100064394();
  (*(v2 + 104))(v1, enum case for SettingsKey.skipJournalingSuggestions(_:), v3);
  sub_100063674();
  (*(v2 + 8))(v1, v3);
  v6 = sub_1000642A4();

  LOBYTE(v3) = [v5 BOOLForKey:v6];

  *v4 = v3;

  v7 = v0[1];

  return v7();
}

uint64_t sub_100039128(uint64_t a1, _BYTE *a2)
{
  v4 = sub_100063684();
  *(v2 + 16) = v4;
  *(v2 + 24) = *(v4 - 8);
  *(v2 + 32) = swift_task_alloc();
  *(v2 + 40) = *a2;

  return _swift_task_switch(sub_1000391F0, 0);
}

uint64_t sub_1000391F0()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_100009E20();
  v4 = sub_100064394();
  isa = sub_100064324().super.super.isa;
  (*(v2 + 104))(v1, enum case for SettingsKey.skipJournalingSuggestions(_:), v3);
  sub_100063674();
  (*(v2 + 8))(v1, v3);
  v6 = sub_1000642A4();

  [v4 setValue:isa forKey:v6];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100039324(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10000A088;

  return sub_10003B3E0(0, 0);
}

unint64_t sub_1000393D4()
{
  result = qword_1000862E0;
  if (!qword_1000862E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000862E0);
  }

  return result;
}

uint64_t sub_100039428(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100039A3C();
  *v4 = v2;
  v4[1] = sub_100006EE4;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_1000394DC()
{
  result = qword_1000862E8;
  if (!qword_1000862E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000862E8);
  }

  return result;
}

unint64_t sub_100039534()
{
  result = qword_1000862F0;
  if (!qword_1000862F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000862F0);
  }

  return result;
}

unint64_t sub_10003958C()
{
  result = qword_1000862F8;
  if (!qword_1000862F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000862F8);
  }

  return result;
}

uint64_t sub_1000395E0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100039A3C();
  *v5 = v2;
  v5[1] = sub_10000A0B4;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_100039694(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100039A3C();
  *v4 = v2;
  v4[1] = sub_10000A088;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_100039748()
{
  result = qword_100086300;
  if (!qword_100086300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086300);
  }

  return result;
}

unint64_t sub_1000397A0()
{
  result = qword_100086308;
  if (!qword_100086308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086308);
  }

  return result;
}

unint64_t sub_1000397F8()
{
  result = qword_100086310;
  if (!qword_100086310)
  {
    sub_10000221C(&qword_100086318, qword_1000692A0);
    sub_1000397A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086310);
  }

  return result;
}

uint64_t sub_10003987C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000393D4();
  *v5 = v2;
  v5[1] = sub_100002CE4;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_100039934()
{
  result = qword_100086320;
  if (!qword_100086320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086320);
  }

  return result;
}

unint64_t sub_10003998C()
{
  result = qword_100086328;
  if (!qword_100086328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086328);
  }

  return result;
}

unint64_t sub_1000399E4()
{
  result = qword_100086330;
  if (!qword_100086330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086330);
  }

  return result;
}

unint64_t sub_100039A3C()
{
  result = qword_100086338;
  if (!qword_100086338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086338);
  }

  return result;
}

unint64_t sub_100039A94()
{
  result = qword_100086340;
  if (!qword_100086340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086340);
  }

  return result;
}

uint64_t sub_100039AE8(uint64_t a1)
{
  v2 = sub_10003958C();

  return EntityURLRepresentation.init(_:)(0xD00000000000004FLL, 0x8000000100073100, a1, v2);
}

unint64_t sub_100039B50()
{
  result = qword_100086348;
  if (!qword_100086348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086348);
  }

  return result;
}

unint64_t sub_100039BA8()
{
  result = qword_100086350;
  if (!qword_100086350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086350);
  }

  return result;
}

unint64_t sub_100039C00()
{
  result = qword_100086358;
  if (!qword_100086358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086358);
  }

  return result;
}

uint64_t sub_100039C54@<X0>(uint64_t *a2@<X8>)
{
  sub_100038EF0();
  result = sub_100062E64();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100039C94(uint64_t a1)
{
  sub_10003BBFC();
  v2 = sub_100063194();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_100039D7C(uint64_t a1)
{
  v2 = sub_10003958C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100039DCC()
{
  result = qword_100086370;
  if (!qword_100086370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086370);
  }

  return result;
}

uint64_t sub_100039E24(uint64_t a1)
{
  v2 = sub_100039C00();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100039E74()
{
  result = qword_100086378;
  if (!qword_100086378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086378);
  }

  return result;
}

uint64_t sub_100039EC8()
{
  v0 = sub_100063404();
  sub_100009DBC(v0, qword_100090D88);
  sub_1000049B4(v0, qword_100090D88);
  return sub_1000633E4();
}

uint64_t sub_100039F2C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000021D4(&qword_100084D88, &qword_100065990);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3];
  v5 = sub_1000633F4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1000635E4();
  __chkstk_darwin(v9 - 8);
  v10 = sub_100064294();
  __chkstk_darwin(v10 - 8);
  v11 = sub_100063404();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  sub_100064284();
  sub_1000635D4();
  (*(v6 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  sub_100063414();
  (*(v12 + 56))(v4, 1, 1, v11);
  sub_100063084();
  v13 = sub_100063074();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

uint64_t (*sub_10003A228(uint64_t *a1))()
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
  *(v2 + 32) = sub_100062E74();
  return sub_10000A08C;
}

unint64_t sub_10003A2A0()
{
  result = qword_100086380;
  if (!qword_100086380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086380);
  }

  return result;
}

uint64_t sub_10003A2F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003BB54();
  v5 = sub_10003BBFC();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_10003A35C()
{
  v0 = qword_1000862A0;

  return v0;
}

unint64_t sub_10003A398()
{
  result = qword_100086388;
  if (!qword_100086388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086388);
  }

  return result;
}

unint64_t sub_10003A3F0()
{
  result = qword_100086390;
  if (!qword_100086390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086390);
  }

  return result;
}

uint64_t sub_10003A4EC(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_10003BB54();
  v6 = sub_10003BBA8();
  v7 = sub_10003BBFC();
  *v4 = v2;
  v4[1] = sub_10000858C;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_10003A5B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10003B6F8();
  *a1 = result;
  return result;
}

uint64_t sub_10003A5E0(uint64_t a1)
{
  v2 = sub_10003A2A0();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_10003A6E4@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v1 = sub_1000021D4(&qword_100084E18, &unk_100067D70);
  v16 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v15 - v2;
  v4 = sub_1000021D4(&qword_100084E20, &unk_100065AB0);
  v17 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v15 - v5;
  v7 = sub_1000021D4(&qword_100084E28, &unk_100067D80);
  v8 = *(v7 - 8);
  v18 = v7;
  v19 = v8;
  __chkstk_darwin(v7);
  v10 = &v15 - v9;
  swift_getKeyPath();
  sub_100038EF0();
  sub_100064184();
  sub_100063A34();
  v11 = sub_100009F14(&qword_100084E30, &qword_100084E18, &unk_100067D70, &protocol conformance descriptor for ControlToggle<A>);
  sub_100063B04();

  (*(v16 + 8))(v3, v1);
  sub_100063A34();
  v21 = v1;
  v22 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_100063AB4();

  (*(v17 + 8))(v6, v4);
  v21 = v4;
  v22 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v13 = v18;
  sub_100063B24();
  return (*(v19 + 8))(v10, v13);
}

uint64_t sub_10003AAE0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000633F4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000635E4();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100064294();
  __chkstk_darwin(v7 - 8);
  v8 = sub_100063404();
  __chkstk_darwin(v8 - 8);
  sub_100064284();
  sub_1000635D4();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_100063414();
  result = sub_100063E04();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_10003ACF4@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_1000633F4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000635E4();
  __chkstk_darwin(v7 - 8);
  v8 = sub_100064294();
  __chkstk_darwin(v8 - 8);
  v9 = sub_100063404();
  __chkstk_darwin(v9 - 8);
  sub_100064284();
  sub_1000635D4();
  (*(v4 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v3);
  sub_100063414();
  result = sub_100063E04();
  *a2 = result;
  *(a2 + 8) = v11;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v13;
  return result;
}

uint64_t sub_10003AF6C()
{
  v0 = sub_1000021D4(&qword_100084D78, &unk_100065980);
  __chkstk_darwin(v0 - 8);
  v30 = &v22 - v1;
  v31 = sub_1000631F4();
  v2 = *(v31 - 8);
  __chkstk_darwin(v31);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000021D4(&qword_100084D80, &unk_100065EE0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v22 - v9;
  v11 = sub_1000021D4(&qword_100084D88, &qword_100065990);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v22 = &v22 - v12;
  v14 = sub_100063404();
  v29 = v14;
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v24 = sub_1000021D4(&qword_1000863B0, &qword_1000698D0);
  sub_1000633E4();
  v28 = *(v15 + 56);
  v28(v13, 1, 1, v14);
  v33 = 0;
  v16 = sub_100062E34();
  v17 = *(*(v16 - 8) + 56);
  v23 = v10;
  v17(v10, 1, 1, v16);
  v17(v8, 1, 1, v16);
  v27 = enum case for InputConnectionBehavior.default(_:);
  v18 = *(v2 + 104);
  v25 = v2 + 104;
  v26 = v18;
  v18(v4);
  sub_10003958C();
  v19 = v22;
  v24 = sub_100062EB4();
  sub_1000021D4(&qword_100084D98, &unk_1000659A0);
  sub_1000633E4();
  v28(v19, 1, 1, v29);
  v32 = 2;
  v20 = sub_100064314();
  (*(*(v20 - 8) + 56))(v30, 1, 1, v20);
  v17(v23, 1, 1, v16);
  v26(v4, v27, v31);
  sub_100062EC4();
  return v24;
}

uint64_t sub_10003B3E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000633F4();
  v2[2] = v4;
  v2[3] = *(v4 - 8);
  v2[4] = swift_task_alloc();
  sub_1000635E4();
  v2[5] = swift_task_alloc();
  sub_100064294();
  v2[6] = swift_task_alloc();
  sub_100063404();
  v2[7] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v5 = sub_100064334();
  }

  else
  {
    v5 = 0;
  }

  return _swift_task_switch(sub_10003B54C, v5);
}

uint64_t sub_10003B54C()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = v0[3];
  sub_1000021D4(&qword_1000862B8, qword_100069000);
  sub_100064284();
  sub_1000635D4();
  (*(v3 + 104))(v1, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_100063414();
  sub_100009F14(&qword_1000863D0, &qword_1000863D8, &qword_1000698F0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v4 = sub_100063284();

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_10003B6F8()
{
  v0 = sub_1000631F4();
  v24 = *(v0 - 8);
  v25 = v0;
  __chkstk_darwin(v0);
  v23 = v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1000021D4(&qword_100084D80, &unk_100065EE0);
  v3 = __chkstk_darwin(v2 - 8);
  v22 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = v21 - v5;
  v7 = sub_1000021D4(&qword_100084D88, &qword_100065990);
  __chkstk_darwin(v7 - 8);
  v9 = v21 - v8;
  v10 = sub_1000633F4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000635E4();
  __chkstk_darwin(v14 - 8);
  v15 = sub_100064294();
  __chkstk_darwin(v15 - 8);
  v16 = sub_100063404();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v21[1] = sub_1000021D4(&qword_1000863B0, &qword_1000698D0);
  sub_100064284();
  sub_1000635D4();
  (*(v11 + 104))(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  sub_100063414();
  (*(v17 + 56))(v9, 1, 1, v16);
  v26 = 0;
  v18 = sub_100062E34();
  v19 = *(*(v18 - 8) + 56);
  v19(v6, 1, 1, v18);
  v19(v22, 1, 1, v18);
  (*(v24 + 104))(v23, enum case for InputConnectionBehavior.default(_:), v25);
  sub_10003958C();
  return sub_100062EB4();
}