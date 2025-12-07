void sub_109440(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = *(*(*(a4 + 16) - 8) + 64) + ((v9 + 16) & ~v9) + 1;
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (*(*(*(a4 + 16) - 8) + 64) + ((v9 + 16) & ~v9) != -1)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
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
  v19 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v7 & 0x80000000) != 0)
  {
    v21 = *(v6 + 56);

    v21((v19 + v9 + 8) & ~v9);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v20 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v20 = a2 - 1;
    }

    *v19 = v20;
  }
}

uint64_t sub_10969C(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  sub_1173A0();
  sub_47A1C(&qword_187350, &qword_12CD58);
  swift_getWitnessTable();
  sub_116E30();
  sub_103558();
  swift_getWitnessTable();
  sub_115DD0();
  sub_47A1C(&qword_184160, &unk_127D70);
  swift_getWitnessTable();
  sub_7DDE8();
  swift_getOpaqueTypeMetadata2();
  sub_47A1C(&qword_187370, &unk_12CD78);
  swift_getOpaqueTypeConformance2();
  sub_48800(&qword_187378, &qword_187370, &unk_12CD78, &protocol conformance descriptor for AxisMarks<A>);
  swift_getOpaqueTypeMetadata2();
  sub_47A1C(&qword_1841B8, &qword_1285E0);
  swift_getOpaqueTypeConformance2();
  sub_7E000();
  swift_getOpaqueTypeMetadata2();
  sub_47A1C(&qword_187380, &qword_12CD88);
  swift_getOpaqueTypeConformance2();
  sub_48800(&qword_187388, &qword_187380, &qword_12CD88, &protocol conformance descriptor for AxisMarks<A>);
  swift_getOpaqueTypeMetadata2();
  sub_47A1C(&qword_185150, &qword_12CD90);
  swift_getOpaqueTypeConformance2();
  sub_48800(&qword_185160, &qword_185150, &qword_12CD90, &protocol conformance descriptor for GeometryReader<A>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_109A60()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = sub_115A20();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v8 = *(*(type metadata accessor for DailyUsageTimeView(0, v1, v2, v7) - 8) + 80);
  v9 = (v6 + v8) & ~v8;
  (*(v4 + 8))(v0 + v5, v3);

  v10 = sub_116DC0();
  (*(*(v1 - 8) + 8))(v0 + v9 + *(v10 + 32), v1);

  return swift_deallocObject();
}

uint64_t sub_109BE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(sub_115A20() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = v8 + *(v7 + 64);
  v11 = *(type metadata accessor for DailyUsageTimeView(0, v5, v6, v10) - 8);
  v12 = v2 + ((v9 + *(v11 + 80)) & ~*(v11 + 80));

  return sub_108A4C(a1, v2 + v8, v12, v5, v6, a2);
}

uint64_t sub_109CE0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = sub_115A20();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v8 = *(*(type metadata accessor for DailyUsageTimeView(0, v1, v2, v7) - 8) + 80);
  v9 = (v6 + v8) & ~v8;
  (*(v4 + 8))(v0 + v5, v3);

  v10 = sub_116DC0();
  (*(*(v1 - 8) + 8))(v0 + v9 + *(v10 + 32), v1);

  return swift_deallocObject();
}

void sub_109E60(double a1)
{
  v3 = *(v1 + 2);
  v4 = *(v1 + 3);
  v5 = *(sub_115A20() - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v9 = *(type metadata accessor for DailyUsageTimeView(0, v3, v4, v8) - 8);
  v10 = v1[4];
  v11 = v1[5];
  v12 = v1[6];
  v13 = v1[7];
  v14 = v1 + ((v7 + *(v9 + 80)) & ~*(v9 + 80));

  sub_108EB0(v1 + v6, a1, v10, v11, v12, v13, v14, v3, v4);
}

uint64_t sub_109F60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for DailyUsageTimeView(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_106850(a1, v9, v6, v7, a3);
}

unint64_t sub_109FFC()
{
  result = qword_1873A0;
  if (!qword_1873A0)
  {
    sub_47A1C(&qword_1873A8, &qword_12CE80);
    sub_10A0E0(&qword_1873B0, &qword_1873B8, &qword_12CE88, sub_10A2A0);
    sub_10A0E0(&qword_187430, &qword_187438, &qword_12CEC8, sub_10A4C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1873A0);
  }

  return result;
}

uint64_t sub_10A0E0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_47A1C(a2, a3);
    sub_10A164();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10A164()
{
  result = qword_1873C0;
  if (!qword_1873C0)
  {
    sub_47A1C(&qword_1873C8, &qword_12CE90);
    sub_48800(&qword_1873D0, &qword_1873D8, &qword_12CE98, &protocol conformance descriptor for AxisValueLabel<A>);
    sub_10A224();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1873C0);
  }

  return result;
}

unint64_t sub_10A224()
{
  result = qword_1873E0;
  if (!qword_1873E0)
  {
    sub_47A1C(&qword_1873E8, &qword_12CEA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1873E0);
  }

  return result;
}

uint64_t sub_10A2D0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_47A1C(a2, a3);
    sub_48800(&qword_187400, &qword_187408, &qword_12CEB0, &protocol conformance descriptor for AxisValueLabel<A>);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10A3B8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_47A1C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10A434()
{
  result = qword_187420;
  if (!qword_187420)
  {
    sub_47A1C(&qword_187428, &qword_12CEC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_187420);
  }

  return result;
}

uint64_t sub_10A4F8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_8D8B4()[3];
  isa = sub_1156B0().super.isa;
  v4 = [v2 stringFromDate:isa];

  sub_1171B0();
  sub_4869C(v5, v6, v7);
  result = sub_116900();
  *a1 = result;
  *(a1 + 8) = v9;
  *(a1 + 16) = v10 & 1;
  *(a1 + 24) = v11;
  *(a1 + 32) = 257;
  return result;
}

double sub_10A5B4@<D0>(uint64_t a1@<X8>)
{
  v36 = sub_1163E0();
  v42 = 1;
  v2 = sub_8D8B4();
  v3 = v2[3];
  isa = sub_1156B0().super.isa;
  v5 = [v3 stringFromDate:isa];

  v6 = sub_1171B0();
  v8 = v7;

  *v41 = v6;
  *&v41[8] = v8;
  sub_4869C(v9, v10, v11);
  v12 = sub_116900();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = v2[5];
  v20 = sub_1156B0().super.isa;
  v21 = [v19 stringFromDate:v20];

  v22 = sub_1171B0();
  v24 = v23;

  *v41 = v22;
  *&v41[8] = v24;
  v25 = sub_116900();
  v27 = v26;
  v29 = v28;
  v41[0] = v16 & 1;
  LOBYTE(v21) = v30 & 1;
  v35 = v30 & 1;
  sub_488B8(v12, v14, v16 & 1);

  sub_488B8(v25, v27, v21);

  sub_48928(v25, v27, v21);

  sub_48928(v12, v14, v16 & 1);

  *(&v44 + 1) = *v40;
  DWORD1(v44) = *&v40[3];
  *(&v45 + 2) = v38;
  WORD3(v45) = v39;
  *&v46[12] = *&v37[3];
  *&v46[9] = *v37;
  *&v43 = v12;
  *(&v43 + 1) = v14;
  LOBYTE(v44) = v16 & 1;
  *(&v44 + 1) = v18;
  v47[0] = v12;
  v47[1] = v14;
  LOWORD(v45) = 257;
  *(&v45 + 1) = v25;
  *v46 = v27;
  v46[8] = v35;
  *&v46[16] = v29;
  *&v46[24] = 257;
  v48 = v16 & 1;
  *v49 = *v40;
  *&v49[3] = *&v40[3];
  v50 = v18;
  v51 = 257;
  v53 = v39;
  v52 = v38;
  v54 = v25;
  v55 = v27;
  v56 = v35;
  *&v57[3] = *&v37[3];
  *v57 = *v37;
  v58 = v29;
  v59 = 257;
  sub_479B4(&v43, v41, &qword_187498, &qword_12CF20);
  sub_488C8(v47, &qword_187498, &qword_12CF20);
  *&v41[65] = *&v46[10];
  *&v41[55] = *v46;
  *&v41[39] = v45;
  *&v41[23] = v44;
  *&v41[7] = v43;
  v31 = *&v41[48];
  *(a1 + 49) = *&v41[32];
  *(a1 + 65) = v31;
  *(a1 + 81) = *&v41[64];
  result = *&v41[16];
  v33 = *v41;
  *(a1 + 33) = *&v41[16];
  v34 = v42;
  *a1 = v36;
  *(a1 + 8) = 0;
  *(a1 + 16) = v34;
  *(a1 + 97) = v41[80];
  *(a1 + 17) = v33;
  return result;
}

unint64_t sub_10A8C8()
{
  result = qword_1874A8;
  if (!qword_1874A8)
  {
    sub_47A1C(&qword_1874A0, &qword_12CF28);
    sub_10A3B8(&qword_1874B0, &qword_1874B8, &qword_12CF30, sub_8C9D0);
    sub_115A40();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1874A8);
  }

  return result;
}

uint64_t sub_10A9CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(type metadata accessor for DailyUsageTimeView(0, v5, *(v4 + 24), a4) - 8);
  v7 = v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  v8 = sub_116DC0();
  (*(*(v5 - 8) + 8))(v7 + *(v8 + 32), v5);

  return swift_deallocObject();
}

uint64_t sub_10AAC4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *(v4 + 16);
  v9 = *(v4 + 24);
  v10 = *(type metadata accessor for DailyUsageTimeView(0, v8, v9, a3) - 8);
  v11 = v4 + ((*(v10 + 80) + 32) & ~*(v10 + 80));

  return sub_103D34(a1, a2, v11, v8, v9, a4);
}

uint64_t sub_10AB68()
{

  return swift_deallocObject();
}

uint64_t sub_10ABAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10ABF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_46F9C(&qword_187368, &unk_12CD60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for BUIChartIconMark(uint64_t a1)
{
  result = qword_191860;
  if (!qword_191860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10ACC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for BUIChartIconMark(0);
  v9 = v8[6];
  v10 = sub_5A754();
  swift_beginAccess();
  *(a4 + v9) = *v10;
  sub_10AD60(a1, a4);
  *(a4 + v8[7]) = a2;
  *(a4 + v8[5]) = a3;
}

uint64_t sub_10AD60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BUIChartViewData.ChargingIntervalElement(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10ADC4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_46F9C(&qword_1874E0, &qword_12CF80);
  __chkstk_darwin(v4);
  v105 = &v77 - v5;
  v6 = sub_46F9C(&qword_1874E8, &unk_12CF88);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v77 - v8;
  v10 = sub_115760();
  v112 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_46F9C(&qword_1843C8, &qword_128140);
  __chkstk_darwin(v13 - 8);
  v102 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v108 = sub_115EF0();
  v113 = *(v108 - 8);
  __chkstk_darwin(v108);
  v101 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v77 - v18;
  v106 = sub_46F9C(&qword_1874F0, &qword_12CF98);
  v111 = *(v106 - 8);
  __chkstk_darwin(v106);
  v99 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v95 = &v77 - v22;
  v100 = sub_46F9C(&qword_1874F8, &qword_12CFA0);
  v110 = *(v100 - 8);
  __chkstk_darwin(v100);
  v97 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v96 = &v77 - v25;
  v94 = sub_46F9C(&qword_187500, &qword_12CFA8);
  v104 = *(v94 - 8);
  __chkstk_darwin(v94);
  v103 = &v77 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v107 = &v77 - v28;
  __chkstk_darwin(v29);
  v98 = &v77 - v30;
  __chkstk_darwin(v31);
  v109 = &v77 - v32;
  sub_10BB5C(v2, &v115);
  if (*(&v116 + 1))
  {
    v86 = v19;
    v89 = v9;
    v90 = v4;
    v91 = v7;
    v92 = v6;
    v93 = a1;
    v123[0] = v115;
    v123[1] = v116;
    v124 = v117;
    v121[0] = v118;
    v121[1] = v119;
    v122 = v120;
    v33 = type metadata accessor for BUIChartIconMark(0);
    (*(**(v2 + *(v33 + 28)) + 384))();
    v82 = sub_116BE0();
    v34 = sub_116370();
    sub_D35C0(v34);
    sub_115C60();

    v35 = v112 + 8;
    v85 = *(v112 + 8);
    v36 = v85(v12, v10);
    LOBYTE(v115) = 1;
    v84 = sub_5822C(v36, v37, v38);
    sub_F59F0(&type metadata for PerfPowerServices, v84);
    v87 = v33;
    v39 = *(v2 + *(v33 + 24));
    v112 = v35;
    v88 = v12;
    v83 = v39;
    v40 = v86;
    v78 = v10;
    v41 = sub_115EE0();
    v44 = sub_10BCF4(v41, v42, v43);
    v45 = v95;
    v46 = v108;
    sub_115B60();
    v47 = *(v113 + 8);
    v113 += 8;
    v81 = v47;
    v47(v40, v46);
    v114 = v82;
    *&v115 = v46;
    *(&v115 + 1) = &type metadata for AnyChartSymbolShape;
    *&v116 = &protocol witness table for PointMark;
    *(&v116 + 1) = v44;
    v86 = v44;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v49 = v96;
    v50 = v106;
    sub_115AF0();
    v51 = *(v111 + 8);
    v111 += 8;
    v80 = v51;
    v51(v45, v50);
    sub_D3670();
    *&v115 = v50;
    *(&v115 + 1) = &type metadata for Color;
    v95 = OpaqueTypeConformance2;
    *&v116 = OpaqueTypeConformance2;
    *(&v116 + 1) = &protocol witness table for Color;
    v52 = swift_getOpaqueTypeConformance2();
    v53 = v100;
    v79 = v52;
    sub_115B30();

    v54 = *(v110 + 8);
    v110 += 8;
    v82 = v54;
    v54(v49, v53);
    v87 = *(v2 + *(v87 + 20));
    v55 = sub_116370();
    v56 = v88;
    v96 = v2;
    sub_D35C0(v55);
    v57 = v78;
    sub_115C60();

    v85(v56, v57);
    LOBYTE(v115) = 1;
    sub_F59F0(&type metadata for PerfPowerServices, v84);
    v58 = v94;
    v59 = v101;
    sub_115EE0();
    v60 = v99;
    v61 = v108;
    sub_115B60();
    v81(v59, v61);
    *&v115 = v87;
    v62 = v97;
    v63 = v106;
    sub_115AF0();
    v80(v60, v63);
    sub_D3670();
    v64 = v98;
    sub_115B30();

    v82(v62, v53);
    v65 = v104;
    v66 = *(v104 + 16);
    v67 = v107;
    v66(v107, v109, v58);
    v68 = v103;
    v66(v103, v64, v58);
    v69 = v105;
    v66(v105, v67, v58);
    v70 = v90;
    v71 = *(v90 + 48);
    v66(&v69[v71], v68, v58);
    v72 = *(v65 + 32);
    v73 = v89;
    v72(v89, v69, v58);
    v72((v73 + *(v70 + 48)), &v69[v71], v58);
    v74 = *(v65 + 8);
    v74(v64, v58);
    v74(v109, v58);
    sub_10BD48(v121);
    sub_10BD48(v123);
    v74(v68, v58);
    v74(v107, v58);
    v75 = v93;
    sub_10BD9C(v73, v93);
    return (*(v91 + 56))(v75, 0, 1, v92);
  }

  else
  {
    sub_10BC8C(&v115);
    return (*(v7 + 56))(a1, 1, 1, v6);
  }
}

double sub_10BB5C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for BUIChartViewData.ChargingIntervalElement(0);
  if (*(a1 + *(v4 + 24)))
  {
    if (*(a1 + *(v4 + 24)) == 1)
    {
      nullsub_4();
      *(&v25 + 1) = &type metadata for PauseSymbol;
      v26 = sub_10BEB4(v5, v6, v7);
      sub_115CE0();
      nullsub_4();
      sub_10BF08(v8, v9, v10);
    }

    else
    {
      nullsub_4();
      *(&v25 + 1) = &type metadata for StopSymbol;
      v26 = sub_10BE0C(v17, v18, v19);
      sub_115CE0();
      nullsub_4();
      sub_10BE60(v20, v21, v22);
    }
  }

  else
  {
    nullsub_4();
    *(&v25 + 1) = &type metadata for BoltSymbol;
    v26 = sub_10BF5C(v11, v12, v13);
    sub_115CE0();
    nullsub_4();
    sub_10BFB0(v14, v15, v16);
  }

  sub_115CE0();
  *a2 = v27;
  *(a2 + 16) = v28;
  *(a2 + 32) = v29;
  result = *&v24;
  *(a2 + 40) = v24;
  *(a2 + 56) = v25;
  *(a2 + 72) = v26;
  return result;
}

uint64_t sub_10BC8C(uint64_t a1)
{
  v2 = sub_46F9C(&qword_187508, &qword_12CFB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10BCF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_187510;
  if (!qword_187510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_187510);
  }

  return result;
}

uint64_t sub_10BD9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_46F9C(&qword_1874E8, &unk_12CF88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10BE0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_187518;
  if (!qword_187518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_187518);
  }

  return result;
}

unint64_t sub_10BE60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_187520;
  if (!qword_187520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_187520);
  }

  return result;
}

unint64_t sub_10BEB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_187528;
  if (!qword_187528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_187528);
  }

  return result;
}

unint64_t sub_10BF08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_187530;
  if (!qword_187530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_187530);
  }

  return result;
}

unint64_t sub_10BF5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_187538;
  if (!qword_187538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_187538);
  }

  return result;
}

unint64_t sub_10BFB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_187540;
  if (!qword_187540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_187540);
  }

  return result;
}

uint64_t sub_10C064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BUIChartViewData.ChargingIntervalElement(0);
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

uint64_t sub_10C134(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for BUIChartViewData.ChargingIntervalElement(0);
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

uint64_t sub_10C1EC(uint64_t a1)
{
  result = type metadata accessor for BUIChartViewData.ChargingIntervalElement(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for BUIChartViewConfig(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for BUIChartViewModel(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_10C294()
{
  result = qword_1875D0;
  if (!qword_1875D0)
  {
    sub_47A1C(&qword_1875D8, &qword_12D038);
    sub_10C318();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1875D0);
  }

  return result;
}

unint64_t sub_10C318()
{
  result = qword_1875E0;
  if (!qword_1875E0)
  {
    sub_47A1C(&qword_1874E8, &unk_12CF88);
    sub_47A1C(&qword_1874F8, &qword_12CFA0);
    sub_47A1C(&qword_1874F0, &qword_12CF98);
    v1 = sub_115EF0();
    sub_10BCF4(v1, v2, v3);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1875E0);
  }

  return result;
}

uint64_t sub_10C49C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "BATTERY_HEALTH_TITLE";
  v4 = 0xD00000000000001BLL;
  if (v2 == 1)
  {
    v5 = 0xD00000000000001BLL;
  }

  else
  {
    v5 = 0xD00000000000001FLL;
  }

  if (v2 == 1)
  {
    v6 = "BATTERY_HEALTH_TITLE";
  }

  else
  {
    v6 = "CHARGING_OPTIONS_IDENTIFIER";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000014;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "DailyUsageTimeBarBG";
  }

  if (*a2 != 1)
  {
    v4 = 0xD00000000000001FLL;
    v3 = "CHARGING_OPTIONS_IDENTIFIER";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000014;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "DailyUsageTimeBarBG";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1179E0();
  }

  return v11 & 1;
}

Swift::Int sub_10C574()
{
  sub_117A90();
  sub_117200();

  return sub_117AD0();
}

uint64_t sub_10C610(uint64_t a1)
{
  sub_117200();
}

Swift::Int sub_10C698(uint64_t a1)
{
  sub_117A90();
  sub_117200();

  return sub_117AD0();
}

unint64_t sub_10C730@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10D9B8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_10C760(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000014;
  v3 = "BATTERY_HEALTH_TITLE";
  v4 = 0xD00000000000001BLL;
  if (*v1 != 1)
  {
    v4 = 0xD00000000000001FLL;
    v3 = "CHARGING_OPTIONS_IDENTIFIER";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "DailyUsageTimeBarBG";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

void sub_10C7CC(uint64_t a1)
{
  v2 = sub_115990();
  __chkstk_darwin(v2 - 8);
  v3 = sub_115970();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_54960(0, &qword_1876E0, &off_161D10);
  v7 = [objc_allocWithZone(PSSpecifier) init];
  [v7 setProperty:a1 forKey:PSListControllerCellHighlightingSelectionInvocationRelayKey];
  sub_115980();
  sub_115960();
  v8 = sub_117170();
  v9 = BatteryUILocalization(v8);

  if (v9)
  {
    v10 = sub_1171B0();
    v12 = v11;

    v16[0] = v10;
    v16[1] = v12;
    v13 = sub_10D8C4(&qword_1875F8, &type metadata accessor for PreferencesControllerView, &protocol conformance descriptor for PreferencesControllerView);
    sub_4869C(v13, v14, v15);
    sub_116A40();

    (*(v4 + 8))(v6, v3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10CA14()
{

  return swift_deallocObject();
}

uint64_t sub_10CA54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_115990();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_116110();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  sub_46F9C(&qword_1876A8, &qword_12D128);
  v3[12] = swift_task_alloc();
  v6 = sub_1154E0();
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();
  v7 = sub_115650();
  v3[16] = v7;
  v3[17] = *(v7 - 8);
  v3[18] = swift_task_alloc();
  sub_1173F0();
  v3[19] = sub_1173E0();
  v9 = sub_1173D0();

  return _swift_task_switch(sub_10CCA4, v9, v8);
}

uint64_t sub_10CCA4()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];

  sub_117010();
  sub_1154C0();
  v4 = (*(v2 + 48))(v3, 1, v1);
  v5 = v0[18];
  if (v4 == 1)
  {
    v6 = v0[11];
    v7 = v0[8];
    v8 = v0[9];
    sub_10D694(v0[12]);
    v9 = swift_task_alloc();
    *(v9 + 16) = v5;
    sub_A7800(sub_10D6FC, v9);

    sub_117000();
    sub_117020();
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    (*(v0[14] + 32))(v0[15], v0[12], v0[13]);
    sub_117000();
    result = sub_115610();
    v11 = result;
    v12 = 0;
    v13 = *(result + 16);
    v14 = result + 40;
    v15 = _swiftEmptyArrayStorage;
LABEL_4:
    v16 = (v14 + 16 * v12);
    while (v13 != v12)
    {
      if (v12 >= *(v11 + 16))
      {
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        return result;
      }

      v17 = v16 + 2;
      ++v12;
      v18 = *(v16 - 1);
      v19 = *v16;

      v20._rawValue = &off_16A180;
      v53._countAndFlagsBits = v18;
      v53._object = v19;
      v21 = sub_117890(v20, v53);

      v16 = v17;
      if (v21 < 3)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_10D7D0(0, *(v15 + 2) + 1, 1, v15);
          v15 = result;
        }

        v23 = *(v15 + 2);
        v22 = *(v15 + 3);
        if (v23 >= v22 >> 1)
        {
          result = sub_10D7D0((v22 > 1), v23 + 1, 1, v15);
          v15 = result;
        }

        *(v15 + 2) = v23 + 1;
        v15[v23 + 32] = v21;
        goto LABEL_4;
      }
    }

    v24 = *(v15 + 2);
    if (v24)
    {
      v25 = 0;
      v26 = (v0[6] + 8);
      v51 = PSListControllerCellHighlightingSelectionInvocationRelayKey;
      while (v25 < *(v15 + 2))
      {
        v29 = v15[v25 + 32];
        v30 = [objc_allocWithZone(PSSpecifier) init];
        v31 = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
        [v30 setProperty:v31 forKey:v51];
        if (v29)
        {
          if (v29 == 1)
          {
            result = MobileGestalt_get_current_device();
            if (!result)
            {
              goto LABEL_40;
            }

            v32 = result;
            deviceClassNumber = MobileGestalt_get_deviceClassNumber();

            if (deviceClassNumber == 3)
            {
              goto LABEL_32;
            }

            v34 = &unk_1876C0;
            v35 = off_161CF8;
          }

          else
          {
            result = MobileGestalt_get_current_device();
            if (!result)
            {
              goto LABEL_39;
            }

            v36 = result;
            v37 = MobileGestalt_get_deviceClassNumber();

            if (v37 == 3)
            {
LABEL_32:

              goto LABEL_33;
            }

            v34 = &unk_1876B0;
            v35 = off_161D08;
          }
        }

        else
        {
          v34 = &unk_1876C8;
          v35 = off_161D00;
        }

        sub_54960(0, v34, v35);
        v38 = v30;
        sub_115980();
        if (v25 == *(v15 + 2) - 1)
        {
          sub_1154D0();
          if (v39)
          {
            v40 = sub_117170();

            [v31 setSpecifierIdentifierToScrollAndHighlight:v40];
          }
        }

        ++v25;
        v27 = v0[7];
        v28 = v0[5];
        sub_10D8C4(&qword_1876B8, &type metadata accessor for PreferencesControllerRecipe, &protocol conformance descriptor for PreferencesControllerRecipe);
        sub_116100();

        result = (*v26)(v27, v28);
        if (v24 == v25)
        {

          goto LABEL_33;
        }
      }

      goto LABEL_38;
    }

    sub_1154D0();
    if (v41)
    {
      v42 = v0[4];
      v43 = sub_117170();

      [v42 setSpecifierIdentifierToScrollAndHighlight:v43];
    }

LABEL_33:
    v45 = v0[14];
    v44 = v0[15];
    v46 = v0[13];
    v48 = v0[9];
    v47 = v0[10];
    v49 = v0[8];
    sub_117020();
    (*(v48 + 8))(v47, v49);
    (*(v45 + 8))(v44, v46);
  }

  (*(v0[17] + 8))(v0[18], v0[16]);

  v50 = v0[1];

  return v50();
}

unint64_t sub_10D22C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_187608;
  if (!qword_187608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_187608);
  }

  return result;
}

uint64_t sub_10D29C()
{
  v1 = sub_46F9C(&qword_1875E8, &qword_12D040);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v14 - v3;
  v5 = *v0;
  *(swift_allocObject() + 16) = v5;
  v6 = v5;
  sub_46F9C(&qword_1875F0, &qword_12D048);
  v7 = sub_115970();
  v8 = sub_10D8C4(&qword_1875F8, &type metadata accessor for PreferencesControllerView, &protocol conformance descriptor for PreferencesControllerView);
  v11 = sub_4869C(v8, v9, v10);
  v14[0] = v7;
  v14[1] = &type metadata for String;
  v14[2] = v8;
  v14[3] = v11;
  swift_getOpaqueTypeConformance2();
  sub_117030();
  *(swift_allocObject() + 16) = v6;
  sub_48800(&qword_187600, &qword_1875E8, &qword_12D040, &protocol conformance descriptor for SettingsPane<A>);
  v12 = v6;
  sub_116FF0();
  return (*(v2 + 8))(v4, v1);
}

id sub_10D4DC@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
  *a1 = result;
  return result;
}

uint64_t sub_10D54C()
{
  sub_47A1C(&qword_1875E8, &qword_12D040);
  sub_48800(&qword_187600, &qword_1875E8, &qword_12D040, &protocol conformance descriptor for SettingsPane<A>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10D5E4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_5447C;

  return sub_10CA54(a1, a2, v6);
}

uint64_t sub_10D694(uint64_t a1)
{
  v2 = sub_46F9C(&qword_1876A8, &qword_12D128);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10D6FC()
{
  sub_117710(55);
  v1._object = 0x8000000000136D40;
  v1._countAndFlagsBits = 0xD000000000000035;
  sub_117220(v1);
  sub_115650();
  sub_10D8C4(&qword_1876D8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v2._countAndFlagsBits = sub_1179B0();
  sub_117220(v2);

  return 0;
}

char *sub_10D7D0(char *result, int64_t a2, char a3, char *a4)
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
    sub_46F9C(&qword_1876D0, &unk_12D130);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
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

uint64_t sub_10D8C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10D964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_191A70[0];
  if (!qword_191A70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_191A70);
  }

  return result;
}

unint64_t sub_10D9B8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_16A0F0;
  v6._object = a2;
  v4 = sub_117890(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t type metadata accessor for LastChargeInfoResponse(uint64_t a1)
{
  result = qword_191B80;
  if (!qword_191B80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10DA5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_46F9C(&qword_182EF0, &unk_124BB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10DACC()
{
  v0 = swift_allocObject();
  sub_10DB04();
  return v0;
}

void *sub_10DB04()
{
  v8[0] = sub_117530();
  v1 = *(v8[0] - 8);
  __chkstk_darwin(v8[0]);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_117520();
  __chkstk_darwin(v4);
  v5 = sub_116FE0();
  __chkstk_darwin(v5 - 8);
  v0[3] = [objc_opt_self() weakObjectsHashTable];
  sub_54960(0, &qword_182EC8, OS_dispatch_queue_ptr);
  sub_116FD0();
  v8[1] = _swiftEmptyArrayStorage;
  sub_10DD68(v6);
  sub_46F9C(&qword_187700, &qword_12D238);
  sub_10DDC0();
  sub_117680();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v8[0]);
  v0[4] = sub_117560();
  v0[2] = [objc_allocWithZone(PLBatteryUIBackendModel) init];
  sub_10DE24();
  return v0;
}

unint64_t sub_10DD68(__n128 a1)
{
  result = qword_1876F8;
  if (!qword_1876F8)
  {
    sub_117520();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1876F8);
  }

  return result;
}

unint64_t sub_10DDC0()
{
  result = qword_187708;
  if (!qword_187708)
  {
    sub_47A1C(&qword_187700, &qword_12D238);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_187708);
  }

  return result;
}

void sub_10DE24()
{
  v1 = v0;
  out_token = 0;
  sub_54960(0, &qword_182EC8, OS_dispatch_queue_ptr);
  v2 = sub_117540();
  v3 = swift_allocObject();
  swift_weakInit();
  v14 = sub_10E0AC;
  v15 = v3;
  aBlock = _NSConcreteStackBlock;
  v11 = 1107296256;
  v12 = sub_10E228;
  v13 = &unk_16A318;
  v4 = _Block_copy(&aBlock);

  notify_register_dispatch("com.apple.system.powersources.source", &out_token, v2, v4);
  _Block_release(v4);

  v9 = 0;
  v5 = sub_117540();
  v6 = swift_allocObject();
  swift_weakInit();
  v14 = sub_10E294;
  v15 = v6;
  aBlock = _NSConcreteStackBlock;
  v11 = 1107296256;
  v12 = sub_10E228;
  v13 = &unk_16A340;
  v7 = _Block_copy(&aBlock);

  notify_register_dispatch("com.apple.system.powersources.percent", &v9, v5, v7);
  _Block_release(v7);

  v8 = [objc_opt_self() defaultCenter];
  [v8 addObserver:v1 selector:"handleLPMChangedForAllObserversWithSelector:" name:NSProcessInfoPowerStateDidChangeNotification object:0];
}

uint64_t sub_10E074()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void sub_10E0AC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = [*(Strong + 24) allObjects];
    v2 = sub_117310();

    if (v2 >> 62)
    {
      v3 = sub_117840();
      if (v3)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
      if (v3)
      {
LABEL_4:
        if (v3 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v3; ++i)
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            v5 = sub_117730();
          }

          else
          {
            v5 = *(v2 + 8 * i + 32);
            swift_unknownObjectRetain();
          }

          swift_unknownObjectRetain();
          swift_getObjectType();
          v6 = swift_conformsToProtocol2();
          if (v6)
          {
            if (v5)
            {
              v7 = v6;
              ObjectType = swift_getObjectType();
              (*(v7 + 8))(ObjectType, v7);
            }
          }

          swift_unknownObjectRelease_n();
        }
      }
    }
  }
}

double sub_10E228(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

uint64_t sub_10E27C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10E294()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = [*(Strong + 24) allObjects];
    v2 = sub_117310();

    if (v2 >> 62)
    {
      v3 = sub_117840();
      if (v3)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
      if (v3)
      {
LABEL_4:
        if (v3 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v3; ++i)
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            v5 = sub_117730();
          }

          else
          {
            v5 = *(v2 + 8 * i + 32);
            swift_unknownObjectRetain();
          }

          swift_unknownObjectRetain();
          swift_getObjectType();
          v6 = swift_conformsToProtocol2();
          if (v6)
          {
            if (v5)
            {
              v7 = v6;
              ObjectType = swift_getObjectType();
              (*(v7 + 16))(ObjectType, v7);
            }
          }

          swift_unknownObjectRelease_n();
        }
      }
    }
  }
}

void sub_10E44C(void *a1@<X8>)
{
  v33 = a1;
  v2 = sub_46F9C(&qword_182EF0, &unk_124BB0);
  __chkstk_darwin(v2 - 8);
  v32 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v31 - v5;
  v7 = sub_115760();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 1, 1, v7);
  v38 = 0;
  v9 = *(v1 + 32);
  v10 = swift_allocObject();
  v10[2] = v1;
  v10[3] = 0x40F5180000000000;
  v10[4] = &v38;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_10F008;
  *(v11 + 24) = v10;
  aBlock[4] = sub_AA5C4;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10EBE4;
  aBlock[3] = &unk_16A3B8;
  v12 = _Block_copy(aBlock);

  dispatch_sync(v9, v12);
  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v15 = v38;
    if (v38)
    {
      __chkstk_darwin(v14);
      *(&v31 - 2) = v15;

      sub_A77E8(sub_10F090, (&v31 - 4));
      v34 = 0xD000000000000018;
      v35 = 0x8000000000134510;
      sub_1176C0();
      if (*(v15 + 16) && (v16 = sub_10ED78(aBlock), (v17 & 1) != 0))
      {
        sub_6AD00(*(v15 + 56) + 32 * v16, v36);
        sub_10F12C(aBlock);

        sub_46F9C(&qword_187710, &qword_12D240);
        if (swift_dynamicCast())
        {
          v18 = v34;
          v34 = 0xD000000000000013;
          v35 = 0x8000000000134000;
          sub_1176C0();
          if (v18[2] && (v19 = sub_10ED78(aBlock), (v20 & 1) != 0))
          {
            sub_6AD00(v18[7] + 32 * v19, v36);
            sub_10F12C(aBlock);
            sub_54960(0, &qword_1831C0, NSNumber_ptr);
            if (swift_dynamicCast())
            {
              v21 = v34;
              [v34 doubleValue];
              v23 = v22;

              goto LABEL_15;
            }
          }

          else
          {
            sub_10F12C(aBlock);
          }

          v23 = 0;
LABEL_15:
          v34 = 0xD000000000000017;
          v35 = 0x8000000000134020;
          sub_1176C0();
          if (v18[2] && (v25 = sub_10ED78(aBlock), (v26 & 1) != 0))
          {
            sub_6AD00(v18[7] + 32 * v25, v36);
            sub_10F12C(aBlock);

            sub_54960(0, &qword_1831C0, NSNumber_ptr);
            if (swift_dynamicCast())
            {
              v27 = v34;
              [v34 doubleValue];
              v28 = v32;
              sub_115700();

              sub_10F028(v6);
              v8(v28, 0, 1, v7);
              sub_10DA5C(v28, v6);
            }
          }

          else
          {

            sub_10F12C(aBlock);
          }

          ChargeInfoResponse = type metadata accessor for LastChargeInfoResponse(0);
          v30 = v33;
          sub_10DA5C(v6, v33 + *(ChargeInfoResponse + 20));
          *v30 = v23;
          (*(*(ChargeInfoResponse - 8) + 56))(v30, 0, 1, ChargeInfoResponse);
          goto LABEL_12;
        }
      }

      else
      {

        sub_10F12C(aBlock);
      }
    }

    sub_10F028(v6);
    v24 = type metadata accessor for LastChargeInfoResponse(0);
    (*(*(v24 - 8) + 56))(v33, 1, 1, v24);
LABEL_12:

    return;
  }

  __break(1u);
}

uint64_t sub_10EA14(uint64_t a1, uint64_t *a2, double a3)
{
  v6 = sub_115760();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  [v11 resetQuery];
  [v11 addSkipPlistWriteKey];
  v12 = [v11 endOfHour];
  if (v12)
  {
    v13 = v12;
    sub_115730();

    v14.super.isa = sub_1156B0().super.isa;
    (*(v7 + 8))(v10, v6);
  }

  else
  {
    v14.super.isa = 0;
  }

  [v11 runQuery];
  v15 = [v11 queryResult];
  if (v15)
  {
    v16 = v15;
    v17 = sub_117070();
  }

  else
  {
    v17 = 0;
  }

  *a2 = v17;
}

uint64_t sub_10EC0C()
{

  return swift_deallocClassInstance();
}

id sub_10ECFC()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 isLowPowerModeEnabled];

  return v1;
}

unint64_t sub_10ED78(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1176A0(*(v2 + 40));

  return sub_10EDBC(a1, v4);
}

unint64_t sub_10EDBC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10F354(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_1176B0();
      sub_10F12C(v8);
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

void sub_10EE84()
{
  v1 = [*(v0 + 24) allObjects];
  v2 = sub_117310();

  if (v2 >> 62)
  {
    v3 = sub_117840();
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v3; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = sub_117730();
    }

    else
    {
      v5 = *(v2 + 8 * i + 32);
      swift_unknownObjectRetain();
    }

    swift_unknownObjectRetain();
    swift_getObjectType();
    v6 = swift_conformsToProtocol2();
    if (v6 && v5)
    {
      v7 = v6;
      ObjectType = swift_getObjectType();
      (*(v7 + 24))(ObjectType, v7);
    }

    swift_unknownObjectRelease_n();
  }

LABEL_13:
}

uint64_t sub_10EFD0()
{

  return swift_deallocObject();
}

uint64_t sub_10F028(uint64_t a1)
{
  v2 = sub_46F9C(&qword_182EF0, &unk_124BB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10F090()
{
  sub_117710(42);

  v1._countAndFlagsBits = sub_117080();
  sub_117220(v1);

  return 0xD000000000000028;
}

uint64_t sub_10F194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_46F9C(&qword_182EF0, &unk_124BB0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_10F22C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_46F9C(&qword_182EF0, &unk_124BB0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_10F2B4(uint64_t a1)
{
  sub_6A2B0(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_10F718(uint64_t a1, int a2, os_log_t log)
{
  v3[0] = 67109378;
  v3[1] = a2;
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "Error querying if type %hd is actionable: %@", v3, 0x12u);
}

void sub_10F7B4(NSObject *a1)
{
  objc_opt_class();
  sub_CB48();
  v3 = v2;
  _os_log_error_impl(&dword_0, a1, OS_LOG_TYPE_ERROR, "err: failed to init %@", v4, 0xCu);
}

void sub_10F850()
{
  sub_CB9C();
  sub_CB60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10F88C(void *a1)
{
  [a1 count];
  sub_CB48();
  sub_CB6C(&dword_0, v1, v2, "populated last10 with %lu items", v3, v4, v5, v6);
}

void sub_10F904()
{
  sub_CB48();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10F974()
{
  sub_CB48();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10F9E4()
{
  sub_CB48();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10FAD8(void *a1)
{
  [a1 count];
  sub_CB48();
  sub_CB6C(&dword_0, v1, v2, "Got %lu 10d UISoC", v3, v4, v5, v6);
}

void sub_10FB50(void *a1)
{
  [a1 count];
  sub_CB48();
  sub_CB6C(&dword_0, v1, v2, "Got %lu 10d usage times", v3, v4, v5, v6);
}

void sub_10FBC8()
{
  sub_CB48();
  sub_CB60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10FC38()
{
  sub_CB9C();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10FC74()
{
  sub_CB9C();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10FCB0()
{
  sub_CB9C();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10FCEC()
{
  sub_CB48();
  sub_CB60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10FD5C()
{
  sub_CB48();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10FDCC()
{
  sub_CB9C();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10FE08(void *a1)
{
  [a1 smartChargingState];
  sub_CB48();
  sub_CB6C(&dword_0, v1, v2, "Smart charging state: %lu", v3, v4, v5, v6);
}

void sub_10FE80()
{
  sub_CB48();
  sub_CB60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10FEF0()
{
  sub_CB48();
  sub_CB60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10FF60()
{
  sub_CB48();
  sub_CB60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10FFD0()
{
  sub_CB48();
  sub_CB60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_110040()
{
  sub_CB8C();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1100B0()
{
  sub_CB8C();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_110120()
{
  sub_CB8C();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_110190()
{
  sub_CB8C();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_110274()
{
  sub_CB9C();
  sub_CB60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1102B0()
{
  sub_CB9C();
  sub_CB60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1102EC()
{
  sub_CB9C();
  sub_CB60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_110328()
{
  sub_CB48();
  sub_CB60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1105CC()
{
  sub_CB48();
  sub_CB60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_11063C()
{
  sub_CB48();
  sub_CB60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_110748(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"AABConstraints";
  sub_13D24(&dword_0, a1, a3, "Property %@ is not of the expected NSDictionary class to get default L0b Threshold for Device Type", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1107C0(uint64_t a1, NSObject *a2)
{
  v2 = 138412546;
  v3 = a1;
  v4 = 2048;
  v5 = qword_182B28;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "defaultL0bThreshold value is %@. Returned value with 15 percent padding added is O %f", &v2, 0x16u);
}

void sub_11084C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"AABConstraints";
  sub_13D24(&dword_0, a1, a3, "Property L0b in %@ is not of the expected NSDictionary class to get default L0b Threshold for Device Type", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1108C4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"AABConstraints";
  sub_13D24(&dword_0, a1, a3, "Unable to get %@ property to obtain default L0b Threshold for Device Type", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_110B54(void *a1)
{
  [a1 section];
  sub_CB48();
  sub_17F74();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_110BD4(void *a1)
{
  [a1 row];
  sub_CB48();
  sub_17F74();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_110FE0(void *a1)
{
  [a1 manualChargingState];
  [a1 smartChargingState];
  sub_17F74();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_111204()
{
  sub_23A50();
  sub_23A34();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_111278()
{
  sub_23A50();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1112EC()
{
  sub_23A50();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_111360()
{
  sub_23A50();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1113D4()
{
  sub_CB48();
  sub_CB60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_111478()
{
  sub_CB48();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1114E8()
{
  sub_CB9C();
  sub_CB60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_111524(uint64_t a1, void *a2)
{
  v3 = a2;
  [sub_23A44() intValue];
  sub_23A08();
  sub_23A14(&dword_0, v4, v5, "Maximum Charge Capacity from UI %d", v6, v7, v8, v9);
}

void sub_111610()
{
  sub_CB48();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1116B4()
{
  sub_CB48();
  sub_CB60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1117C0(void *a1)
{
  v2 = a1;
  [sub_23A44() batteryHealthServiceState];
  sub_23A08();
  sub_23A14(&dword_0, v3, v4, "Current service recommended option from UI %d", v5, v6, v7, v8);
}

void sub_111844(void *a1)
{
  v2 = a1;
  [sub_23A44() batteryHealthServiceState];
  sub_23A08();
  _os_log_error_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "error: unexpected service state %d found", v3, 8u);
}

void sub_1118D8(void *a1)
{
  v2 = a1;
  [sub_23A44() batteryHealthServiceState];
  sub_23A08();
  _os_log_fault_impl(&dword_0, v1, OS_LOG_TYPE_FAULT, "Unhandled Service State: %d", v3, 8u);
}

void sub_111A3C()
{
  sub_CB48();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_111AE0()
{
  sub_CB9C();
  sub_CB60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_111B1C()
{
  sub_CB9C();
  sub_CB60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_111B58()
{
  sub_CB9C();
  sub_CB60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_111B94()
{
  sub_CB9C();
  sub_CB60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_111BD0()
{
  sub_CB9C();
  sub_CB60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_111C0C()
{
  sub_CB9C();
  sub_CB60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_111DE0()
{
  sub_CB48();
  sub_CB60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_111F08()
{
  sub_CB48();
  sub_23A34();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_112190()
{
  sub_23A08();
  sub_CB60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_112234()
{
  sub_23A08();
  sub_CB60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_11230C()
{
  sub_CB48();
  sub_23A34();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_112424()
{
  sub_CB48();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_112494(void *a1)
{
  [a1 curChargingMode];
  sub_CB48();
  sub_CB6C(&dword_0, v1, v2, "Set Cur Charging mode: %lu", v3, v4, v5, v6);
}

void sub_112574()
{
  sub_CB48();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1125E4()
{
  sub_CB48();
  sub_CB60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_112654()
{
  sub_CB48();
  sub_CB60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1127D8()
{
  sub_CB48();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_112848()
{
  sub_CB48();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1128B8()
{
  sub_CB48();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_112928()
{
  sub_CB48();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_112E80(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "PLUrsaUtilities: failed to create Ursa directory: %{public}@", &v2, 0xCu);
}

void sub_112EF8(os_log_t log)
{
  v1 = 138543362;
  v2 = @"/var/mobile/Library/Ursa";
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "PLUrsaUtilities: created Ursa directory at: %{public}@", &v1, 0xCu);
}

void sub_112FB0(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "PLUrsaUtilities: failed to create metadata: %{public}@", &v2, 0xCu);
}

void sub_1130F8(void *a1, NSObject *a2)
{
  v3 = [a1 absoluteString];
  v4 = 138543362;
  v5 = v3;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "PLUrsaUtilities: generated TTR URL: %{public}@", &v4, 0xCu);
}

void sub_1132E8(void *a1)
{
  v1 = [a1 table];
  [v1 contentSize];
  sub_17F74();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_11337C()
{
  sub_CB9C();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_113438(void *a1)
{
  v2 = [a1 table];
  [v2 contentOffset];
  v3 = [a1 table];
  [v3 contentOffset];
  sub_3852C();
  sub_17F74();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_1134FC(void *a1)
{
  v1 = [a1 table];
  [v1 contentSize];
  sub_17F74();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_113590(void *a1, NSObject *a2)
{
  v4 = [a1 view];
  [v4 frame];
  v5 = [a1 view];
  v6 = [v5 window];
  [v6 frame];
  sub_3852C();
  v9 = v7;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "View height: %f, window height: %f", v8, 0x16u);
}

void sub_11366C(void *a1)
{
  v2 = [a1 table];
  [v2 contentOffset];
  v3 = [a1 table];
  [v3 contentOffset];
  sub_3852C();
  sub_17F74();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_113730(void *a1)
{
  v1 = [a1 table];
  [v1 contentOffset];
  sub_17F74();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_11383C()
{
  sub_CB9C();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_113878()
{
  sub_CB9C();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1138B4()
{
  sub_CB9C();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1138F0()
{
  sub_CB48();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_113960(void *a1)
{
  v1 = [a1 currentDictionary];
  sub_CB48();
  sub_17F74();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1139EC(void *a1)
{
  v1 = [a1 currentGraphDictionary];
  sub_CB48();
  sub_17F74();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_113A78()
{
  sub_CB9C();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_113AB4()
{
  sub_CB48();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_113B24()
{
  sub_CB9C();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_113BD8()
{
  sub_CB9C();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_113C88(os_log_t log)
{
  v1[0] = 67109120;
  v1[1] = 8;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "error: unexpected service state %d found", v1, 8u);
}

void sub_113D08(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_fault_impl(&dword_0, a2, OS_LOG_TYPE_FAULT, "Unhandled Service State: %d", v2, 8u);
}

void sub_113D80()
{
  sub_CB48();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_113DF0()
{
  sub_CB9C();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_113E2C()
{
  sub_CB9C();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_113E68()
{
  sub_CB9C();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_113EA4()
{
  sub_CB9C();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_113EE0()
{
  sub_CB9C();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_113F1C()
{
  sub_CB9C();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_113F58()
{
  sub_CB9C();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_113F94()
{
  sub_CB9C();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_113FD0()
{
  sub_CB9C();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_11400C(void *a1)
{
  [a1 curChargingMode];
  sub_CB48();
  sub_17F74();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_11408C()
{
  sub_CB9C();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1140C8()
{
  sub_CB9C();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_114104()
{
  sub_CB48();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1142AC(uint64_t a1)
{
  v1 = [*(a1 + 32) stateProvider];
  sub_CB48();
  sub_17F74();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_11433C()
{
  sub_CB48();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1145A8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "State of chargingStatusDictionary post converting to ObjC %@", &v2, 0xCu);
}

void sub_1147C8(NSObject *a1)
{
  v2[0] = 67109120;
  v2[1] = _os_feature_enabled_impl();
  _os_log_debug_impl(&dword_0, a1, OS_LOG_TYPE_DEBUG, "isIBLMSupported=%d", v2, 8u);
}

void sub_114864(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "note=%@", &v3, 0xCu);
}

void sub_1148E0(uint64_t a1, char a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 1024;
  v6 = a2 & 1;
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "animating specifier=%@ toState=%d", &v3, 0x12u);
}

void sub_114980(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_fault_impl(&dword_0, a2, OS_LOG_TYPE_FAULT, "Unhandled icon uttype identifier for suggestion type %d", v2, 8u);
}

void sub_1149F8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_0, a2, OS_LOG_TYPE_FAULT, "Unhandled icon for non app entity %@", &v2, 0xCu);
}

void sub_114AAC(void *a1)
{
  [a1 intValue];
  sub_23A08();
  sub_41564(&dword_0, v1, v2, "Overriding Service State in Demo mode: %d", v3, v4, v5, v6);
}

void sub_114B24(void *a1)
{
  [a1 intValue];
  sub_23A08();
  sub_41564(&dword_0, v1, v2, "Overriding Service Flag in Demo mode: %d", v3, v4, v5, v6);
}

void sub_114B9C()
{
  sub_23A08();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_114C0C()
{
  sub_23A08();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_114CF4()
{
  sub_CB9C();
  sub_CB60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_114E7C()
{
  sub_CB9C();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_114EB8()
{
  sub_CB9C();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_114EF4()
{
  sub_CB9C();
  sub_CB60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_114F30()
{
  sub_CB9C();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_114F6C()
{
  sub_23A08();
  sub_CB60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_114FDC()
{
  sub_23A08();
  sub_CB60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_11504C()
{
  sub_CB9C();
  sub_CB60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1151F8(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412546;
  v4 = @"com.apple.systemcontainer";
  v5 = 2048;
  v6 = v2;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Error fetching group containers for %@ : %llu", &v3, 0x16u);
}

void sub_1152B0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "date=%@", &v2, 0xCu);
}

void sub_115328(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "result=%@", &v2, 0xCu);
}