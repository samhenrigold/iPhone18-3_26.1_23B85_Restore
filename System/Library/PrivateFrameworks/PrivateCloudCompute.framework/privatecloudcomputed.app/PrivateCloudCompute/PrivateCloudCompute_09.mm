uint64_t sub_1000E4660@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_1001CFD60();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001D0240();
  v9 = sub_1001CFCD0();
  (*(v6 + 8))(v8, v5);
  v10 = sub_1001D0260();
  v11 = *(v10 - 8);
  if (v9)
  {
    v12 = 1;
  }

  else
  {
    (*(*(v10 - 8) + 16))(a3, a1, v10);
    v12 = 0;
  }

  return (*(v11 + 56))(a3, v12, 1, v10);
}

unint64_t sub_1000E47D4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_1001D1900() != a1 || v9 != a2)
  {
    v10 = sub_1001D2470();

    if (v10)
    {
      return v8;
    }

    v8 = sub_1001D18A0();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_1000E48C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_100006028(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10000F934();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for ValidatedAttestation(0);
    v19 = *(v12 - 8);
    sub_1000E5130(v11 + *(v19 + 72) * v8, a3, type metadata accessor for ValidatedAttestation);
    sub_10001994C(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for ValidatedAttestation(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_1000E4A30@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_100006478(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v19 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10000FD18();
      v9 = v19;
    }

    v10 = *(v9 + 56);
    v11 = type metadata accessor for RateLimitTimingDetails(0);
    v18 = *(v11 - 8);
    sub_1000E5130(v10 + *(v18 + 72) * v7, a2, type metadata accessor for RateLimitTimingDetails);
    sub_100019964(v7, v9);
    *v3 = v9;
    v12 = *(v18 + 56);
    v13 = a2;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    v16 = type metadata accessor for RateLimitTimingDetails(0);
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a2;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

uint64_t sub_1000E4BC8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1000064E4(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v19 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10000FFC0();
      v9 = v19;
    }

    v10 = *(v9 + 56);
    v11 = sub_1001D0260();
    v18 = *(v11 - 8);
    (*(v18 + 32))(a2, v10 + *(v18 + 72) * v7, v11);
    sub_100019CD4(v7, v9);
    *v3 = v9;
    v12 = *(v18 + 56);
    v13 = a2;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    v16 = sub_1001D0260();
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a2;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

uint64_t sub_1000E4D64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_100006028(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100010764();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = sub_1001CFD60();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_10001A084(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = sub_1001CFD60();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_1000E4ED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_100006028(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100010A14();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_10001A290(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_1000E505C(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (a1 == a5 && a2 == a6 && !(a3 >> 16) && v7 == a4 >> 16)
  {
    return 1;
  }

  else
  {
    return sub_1001D2380() & 1;
  }
}

uint64_t sub_1000E50C8(uint64_t a1)
{
  v2 = sub_100011AC0(&qword_100227E08, &unk_1001D3B30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000E5130(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *sub_1000E51A8(void *a1)
{
  v3 = sub_100011AC0(&qword_10022C348, &qword_1001DC3A8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  sub_1000DABDC(_swiftEmptyArrayStorage);

  v7 = sub_100024DC8(a1, a1[3]);
  sub_1000E533C();
  sub_1001D25E0();
  if (v1)
  {
    sub_100011CF0(a1);
  }

  else
  {
    sub_100011AC0(&qword_10022C358, &qword_1001DC3B0);
    sub_1000E5390();
    sub_1001D2290();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_100011CF0(a1);
  }

  return v7;
}

unint64_t sub_1000E533C()
{
  result = qword_10022C350;
  if (!qword_10022C350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C350);
  }

  return result;
}

unint64_t sub_1000E5390()
{
  result = qword_10022C360;
  if (!qword_10022C360)
  {
    sub_100011DF4(&qword_10022C358, &qword_1001DC3B0);
    sub_1000E544C();
    sub_1000E55B0(&qword_10022C370, &type metadata accessor for RateLimitInfo, &protocol conformance descriptor for RateLimitInfo);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C360);
  }

  return result;
}

unint64_t sub_1000E544C()
{
  result = qword_10022C368;
  if (!qword_10022C368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C368);
  }

  return result;
}

unint64_t sub_1000E54A0()
{
  result = qword_10022C380;
  if (!qword_10022C380)
  {
    sub_100011DF4(&qword_10022C358, &qword_1001DC3B0);
    sub_1000E555C();
    sub_1000E55B0(&qword_10022C390, &type metadata accessor for RateLimitInfo, &protocol conformance descriptor for RateLimitInfo);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C380);
  }

  return result;
}

unint64_t sub_1000E555C()
{
  result = qword_10022C388;
  if (!qword_10022C388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C388);
  }

  return result;
}

uint64_t sub_1000E55B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000E560C()
{
  result = qword_10022C398;
  if (!qword_10022C398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C398);
  }

  return result;
}

unint64_t sub_1000E5664()
{
  result = qword_10022C3A0;
  if (!qword_10022C3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C3A0);
  }

  return result;
}

unint64_t sub_1000E56BC()
{
  result = qword_10022C3A8;
  if (!qword_10022C3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C3A8);
  }

  return result;
}

uint64_t sub_1000E5724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for RateLimitTimingDetails(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000E5804(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for RateLimitTimingDetails(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000E58C8(uint64_t a1)
{
  result = type metadata accessor for RateLimitTimingDetails(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 sub_1000E5944(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1000E5960(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000E59A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000E5A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_1001CFD60();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1000E5AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_1001CFD60();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1000E5B20(uint64_t a1)
{
  result = sub_1001CFD60();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000E5BA4@<X0>(uint64_t a1@<X0>, double *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v181 = a3;
  v182 = a1;
  v178 = a4;
  v161 = sub_100011AC0(&qword_1002292A0, &qword_1001D6410);
  v160 = *(v161 - 8);
  v5 = __chkstk_darwin(v161);
  v154 = &v145 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v159 = &v145 - v8;
  __chkstk_darwin(v7);
  v165 = &v145 - v9;
  v10 = sub_100011AC0(&qword_10022BF10, &qword_1001DB9A8);
  v11 = __chkstk_darwin(v10 - 8);
  v158 = &v145 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v157 = &v145 - v13;
  v174 = sub_1001D0900();
  v175 = *(v174 - 8);
  v14 = __chkstk_darwin(v174);
  v164 = &v145 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v163 = &v145 - v16;
  v17 = sub_100011AC0(&qword_10022BF08, &qword_1001DB9A0);
  v18 = __chkstk_darwin(v17 - 8);
  v162 = &v145 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v155 = &v145 - v20;
  v21 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration.Rate(0);
  v156 = *(v21 - 8);
  v22 = __chkstk_darwin(v21);
  v24 = &v145 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v145 - v25;
  v27 = sub_1001CFD60();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v145 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for RateLimitTimingDetails(0);
  v32 = __chkstk_darwin(v31);
  v34 = &v145 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v36 = &v145 - v35;
  v37 = sub_100011AC0(&qword_10022BDF0, &qword_1001DB888);
  v38 = __chkstk_darwin(v37);
  if (*(a2 + 7))
  {
    sub_100011CF0(v181);
    (*(v28 + 8))(v182, v27);
    sub_1000EA78C(a2, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
    v40 = type metadata accessor for RateLimitConfiguration(0);
    v41 = *(*(v40 - 8) + 56);
    v42 = v40;
    v43 = v178;

    return v41(v43, 1, 1, v42);
  }

  else
  {
    v172 = &v145 - v39;
    v173 = v38;
    v180 = v26;
    v166 = v21;
    v145 = v24;
    v167 = v30;
    v170 = v34;
    v152 = v31;
    v168 = v28;
    v153 = v36;
    v169 = v27;
    v45 = *(a2 + 1);
    v46 = HIBYTE(v45) & 0xF;
    if ((v45 & 0x2000000000000000) == 0)
    {
      v46 = *a2 & 0xFFFFFFFFFFFFLL;
    }

    v47 = a2;
    if (v46)
    {
      v151 = *a2;
      v150 = v45;
    }

    else
    {
      v151 = 0;
      v150 = 0;
    }

    v48 = v180;
    v49 = v173;
    v50 = v172;
    v51 = *(v47 + 3);
    v52 = HIBYTE(v51) & 0xF;
    if ((v51 & 0x2000000000000000) == 0)
    {
      v52 = v47[2] & 0xFFFFFFFFFFFFLL;
    }

    if (v52)
    {
      v149 = *(v47 + 2);
      v148 = v51;
    }

    else
    {
      v149 = 0;
      v148 = 0;
    }

    v53 = *(v47 + 5);
    v54 = HIBYTE(v53) & 0xF;
    if ((v53 & 0x2000000000000000) == 0)
    {
      v54 = v47[4] & 0xFFFFFFFFFFFFLL;
    }

    if (v54)
    {
      v147 = *(v47 + 4);
      v146 = v53;
    }

    else
    {
      v147 = 0;
      v146 = 0;
    }

    v55 = *(v47 + 6);
    v58 = *(v55 + 64);
    v57 = v55 + 64;
    v56 = v58;
    v59 = 1 << *(*(v47 + 6) + 32);
    v60 = -1;
    if (v59 < 64)
    {
      v60 = ~(-1 << v59);
    }

    v61 = v60 & v56;
    v62 = (v59 + 63) >> 6;
    v179 = *(v47 + 6);

    v63 = v61;
    v64 = v62;
    v65 = v57;
    v66 = 0;
    v67 = _swiftEmptyArrayStorage;
    v176 = v62;
    v177 = v57;
    v171 = v47;
    while (v63)
    {
LABEL_30:
      v184 = v66;
      v185 = v63;
      v74 = __clz(__rbit64(v63)) | (v66 << 6);
      v75 = *(v179 + 56);
      v76 = (*(v179 + 48) + 16 * v74);
      v77 = *v76;
      v78 = v76[1];
      v79 = v75 + *(*(type metadata accessor for Proto_Ropes_RateLimit_Values(0) - 8) + 72) * v74;
      v80 = *(v49 + 48);
      sub_1000EABBC(v79, v50 + v80, type metadata accessor for Proto_Ropes_RateLimit_Values);
      *v50 = v77;
      v50[1] = v78;
      v81 = *(v50 + v80);
      v82 = *(v81 + 16);
      if (v82)
      {
        v183 = v67;
        v187 = _swiftEmptyArrayStorage;

        sub_100151604(0, v82, 0);
        v83 = v187;
        v84 = (v81 + 40);
        do
        {
          v86 = *(v84 - 1);
          v85 = *v84;
          v187 = v83;
          v87 = v83[2];
          v88 = v83[3];

          if (v87 >= v88 >> 1)
          {
            sub_100151604((v88 > 1), v87 + 1, 1);
            v83 = v187;
          }

          v83[2] = v87 + 1;
          v89 = &v83[4 * v87];
          v89[4] = v77;
          v89[5] = v78;
          v89[6] = v86;
          v89[7] = v85;
          v84 += 2;
          --v82;
        }

        while (v82);
        v47 = v171;
        v67 = v183;
        v49 = v173;
        v50 = v172;
      }

      else
      {

        v83 = _swiftEmptyArrayStorage;
      }

      result = sub_100011F00(v50, &qword_10022BDF0, &qword_1001DB888);
      v90 = v83[2];
      v91 = *(v67 + 2);
      v92 = v91 + v90;
      v48 = v180;
      if (__OFADD__(v91, v90))
      {
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
        return result;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0 || v92 > *(v67 + 3) >> 1)
      {
        if (v91 <= v92)
        {
          v93 = v91 + v90;
        }

        else
        {
          v93 = v91;
        }

        result = sub_1000094BC(result, v93, 1, v67);
        v67 = result;
      }

      if (v83[2])
      {
        if ((*(v67 + 3) >> 1) - *(v67 + 2) < v90)
        {
          goto LABEL_80;
        }

        v94 = (v185 - 1) & v185;
        swift_arrayInitWithCopy();

        v63 = v94;
        v64 = v176;
        v65 = v177;
        v66 = v184;
        if (v90)
        {
          v95 = *(v67 + 2);
          v96 = __OFADD__(v95, v90);
          v97 = v95 + v90;
          if (v96)
          {
            goto LABEL_81;
          }

          *(v67 + 2) = v97;
        }
      }

      else
      {
        v68 = (v185 - 1) & v185;

        v63 = v68;
        v64 = v176;
        v65 = v177;
        v66 = v184;
        if (v90)
        {
          goto LABEL_79;
        }
      }
    }

    v69 = v169;
    v70 = v168;
    v71 = v167;
    v72 = v166;
    while (1)
    {
      v73 = v66 + 1;
      if (__OFADD__(v66, 1))
      {
        __break(1u);
        goto LABEL_78;
      }

      if (v73 >= v64)
      {
        break;
      }

      v63 = *(v65 + 8 * v73);
      ++v66;
      if (v63)
      {
        v66 = v73;
        goto LABEL_30;
      }
    }

    (*(v70 + 16))(v71, v182, v69);
    v98 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration(0);
    v99 = *(v98 + 44);
    v100 = v155;
    sub_10001208C(v47 + v99, v155, &qword_10022BF08, &qword_1001DB9A0);
    v101 = *(v156 + 48);
    if (v101(v100, 1, v72) == 1)
    {
      *v48 = 0;
      _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
      (*(v175 + 56))(&v48[*(v72 + 24)], 1, 1, v174);
      v102 = v101(v100, 1, v72) == 1;
      v103 = v100;
      v104 = v165;
      v105 = v162;
      if (!v102)
      {
        sub_100011F00(v103, &qword_10022BF08, &qword_1001DB9A0);
      }
    }

    else
    {
      sub_1000EA7EC(v100, v48, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration.Rate);
      v104 = v165;
      v105 = v162;
    }

    v185 = *v48;
    sub_1000EA78C(v48, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration.Rate);
    sub_10001208C(v47 + v99, v105, &qword_10022BF08, &qword_1001DB9A0);
    if (v101(v105, 1, v72) == 1)
    {
      v106 = v145;
      *v145 = 0;
      _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
      v107 = *(v72 + 24);
      v108 = v72;
      v109 = v105;
      v110 = v175;
      (*(v175 + 56))(&v106[v107], 1, 1, v174);
      if (v101(v109, 1, v108) != 1)
      {
        sub_100011F00(v109, &qword_10022BF08, &qword_1001DB9A0);
      }
    }

    else
    {
      v106 = v145;
      sub_1000EA7EC(v105, v145, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration.Rate);
      v110 = v175;
    }

    v111 = &v106[*(v166 + 24)];
    v112 = v106;
    v113 = v157;
    sub_10001208C(v111, v157, &qword_10022BF10, &qword_1001DB9A8);
    v114 = *(v110 + 48);
    v115 = v174;
    v116 = v114(v113, 1, v174);
    v183 = v67;
    if (v116 == 1)
    {
      v117 = v163;
      sub_1001D08F0();
      sub_1000EA78C(v112, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration.Rate);
      if (v114(v113, 1, v115) != 1)
      {
        sub_100011F00(v113, &qword_10022BF10, &qword_1001DB9A8);
      }
    }

    else
    {
      sub_1000EA78C(v112, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration.Rate);
      v117 = v163;
      (*(v110 + 32))(v163, v113, v115);
    }

    sub_1001D08E0();
    v119 = v118;
    v120 = v175;
    v121 = *(v175 + 8);
    v121(v117, v115);
    v122 = v158;
    sub_10001208C(v47 + *(v98 + 48), v158, &qword_10022BF10, &qword_1001DB9A8);
    if (v114(v122, 1, v115) == 1)
    {
      v123 = v164;
      sub_1001D08F0();
      v124 = v114(v122, 1, v115);
      v125 = v170;
      if (v124 != 1)
      {
        sub_100011F00(v122, &qword_10022BF10, &qword_1001DB9A8);
      }
    }

    else
    {
      v123 = v164;
      (*(v120 + 32))(v164, v122, v115);
      v125 = v170;
    }

    sub_1001D08E0();
    v121(v123, v115);
    v126 = v47[9];
    sub_100044698(v181, &v187);
    *v125 = v185;
    if (v119 < 0.0)
    {
      v119 = 0.0;
    }

    sub_100024DC8(&v187, v188);
    sub_1001D0510();
    sub_1001D0210();
    v127 = *(v160 + 8);
    v128 = v161;
    v127(v104, v161);
    if (v186 < v119)
    {
      v119 = v186;
    }

    *(v170 + 1) = v119;
    sub_100024DC8(&v187, v188);
    v129 = v159;
    sub_1001D04A0();
    v130 = v170;
    sub_1001D0210();
    v127(v129, v128);
    v131 = v152;
    v132 = v167;
    sub_1001CFCE0();
    if (v126 == 0.0)
    {
      sub_100024DC8(&v187, v188);
      v133 = v154;
      sub_1001D0490();
      sub_1001D0210();
      sub_100011CF0(v181);
      v134 = *(v168 + 8);
      v135 = v169;
      v134(v182, v169);
      v130 = v170;
      v127(v133, v128);
      v134(v132, v135);
      v126 = v186;
    }

    else
    {
      sub_100011CF0(v181);
      v136 = *(v168 + 8);
      v137 = v169;
      v136(v182, v169);
      v136(v132, v137);
    }

    v138 = v153;
    v139 = 1.0;
    if (v126 <= 1.0)
    {
      v139 = v126;
    }

    if (v126 < 0.0)
    {
      v139 = 0.0;
    }

    *(v130 + *(v131 + 28)) = v119 * v139;
    sub_1000EA7EC(v130, v138, type metadata accessor for RateLimitTimingDetails);
    sub_100011CF0(&v187);
    v140 = v178;
    v141 = v150;
    *v178 = v151;
    v140[1] = v141;
    v142 = v148;
    v140[2] = v149;
    v140[3] = v142;
    v143 = v146;
    v140[4] = v147;
    v140[5] = v143;
    v140[6] = v183;
    v144 = type metadata accessor for RateLimitConfiguration(0);
    sub_1000EA7EC(v138, v140 + *(v144 + 20), type metadata accessor for RateLimitTimingDetails);
    sub_1000EA78C(v171, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
    return (*(*(v144 - 8) + 56))(v140, 0, 1, v144);
  }
}

uint64_t sub_1000E6D20(void *a1)
{
  v3 = v1[1];
  if (v3)
  {
    v4 = *v1 == *a1 && v3 == a1[1];
    if (!v4 && (sub_1001D2470() & 1) == 0)
    {
      return 0;
    }
  }

  v5 = v1[3];
  if (v5)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v1[2];
    if ((v8 != v6 || v5 != v7) && (sub_1001D2470() & 1) == 0)
    {
      sub_1000E47D4(46, 0xE100000000000000, v6, v7);
      if (v13)
      {
        return 0;
      }

      v14 = sub_1001D1920();
      v18 = sub_1000E505C(v8, v5, v14, v15, v16, v17);

      if ((v18 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v1[5];
  if (v10 && (v1[4] != a1[4] || v10 != a1[5]) && (sub_1001D2470() & 1) == 0)
  {
    return 0;
  }

  v11 = a1[6];

  return sub_1000E79D0(v11);
}

uint64_t sub_1000E6E74(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = sub_100011AC0(&qword_10022C618, &qword_1001DCC98);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_100024DC8(a1, a1[3]);
  sub_1000EBE9C();
  sub_1001D25F0();
  v14 = 0;
  sub_1001D2300();
  if (!v5)
  {
    v13 = 1;
    sub_1001D2300();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1000E7010()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 7955819;
  }
}

uint64_t sub_1000E7040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v5 || (sub_1001D2470() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1001D2470();

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

uint64_t sub_1000E7124(uint64_t a1)
{
  v2 = sub_1000EBE9C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000E7160(uint64_t a1)
{
  v2 = sub_1000EBE9C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000E719C(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1001D2470(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1001D2470();
    }
  }

  return result;
}

Swift::Int sub_1000E7240()
{
  sub_1001D2580();
  sub_1001D1880();
  sub_1001D1880();
  return sub_1001D25C0();
}

uint64_t sub_1000E72A8(uint64_t a1)
{
  sub_1001D1880();

  return sub_1001D1880();
}

Swift::Int sub_1000E72F8()
{
  sub_1001D2580();
  sub_1001D1880();
  sub_1001D1880();
  return sub_1001D25C0();
}

uint64_t sub_1000E735C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1000EAC78(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_1000E73AC(void *a1)
{
  v3 = v1;
  v5 = sub_100011AC0(&qword_10022C550, &qword_1001DC7A0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_100024DC8(a1, a1[3]);
  sub_1000EB2EC();
  sub_1001D25F0();
  v14 = 0;
  sub_1001D22C0();
  if (!v2)
  {
    v13 = 1;
    sub_1001D22C0();
    v12 = 2;
    sub_1001D22C0();
    v11 = *(v3 + 48);
    v10[15] = 3;
    sub_100011AC0(&qword_10022C538, &qword_1001DC798);
    sub_1000EB394(&qword_10022C558, sub_1000EB40C, &protocol conformance descriptor for <A> [A]);
    sub_1001D2340();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_1000E75F0(uint64_t a1)
{
  if (v1[1])
  {
    sub_1001D25A0(1u);
    sub_1001D1880();
    if (v1[3])
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_1001D25A0(0);
    if (v1[5])
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  sub_1001D25A0(0);
  if (!v1[3])
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1001D25A0(1u);
  sub_1001D1880();
  if (v1[5])
  {
LABEL_4:
    sub_1001D25A0(1u);
    sub_1001D1880();
    goto LABEL_8;
  }

LABEL_7:
  sub_1001D25A0(0);
LABEL_8:
  v2 = v1[6];
  v3 = *(v2 + 16);
  sub_1001D2590(v3);
  if (v3)
  {
    v4 = v2 + 56;
    do
    {

      sub_1001D1880();

      sub_1001D1880();
      swift_bridgeObjectRelease_n();

      v4 += 32;
      --v3;
    }

    while (v3);
  }
}

uint64_t sub_1000E7750()
{
  v1 = 0x4449656C646E7562;
  if (*v0)
  {
    v1 = 0x4965727574616566;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0x64616F6C6B726F77;
  }
}

uint64_t sub_1000E77E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000EAE5C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000E7814(uint64_t a1)
{
  v2 = sub_1000EB2EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000E7850(uint64_t a1)
{
  v2 = sub_1000EB2EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000E788C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_1000EA854(v5, v7) & 1;
}

Swift::Int sub_1000E78E8()
{
  sub_1001D2580();
  sub_1000E75F0(v1);
  return sub_1001D25C0();
}

Swift::Int sub_1000E792C()
{
  sub_1001D2580();
  sub_1000E75F0(v1);
  return sub_1001D25C0();
}

double sub_1000E7968@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1000EAFD0(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t sub_1000E79D0(uint64_t a1)
{
  v2 = *(v1 + 48);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return 1;
  }

  v5 = (v2 + 56);
  while (*(a1 + 16))
  {
    v7 = *(v5 - 1);
    v6 = *v5;
    v9 = *(v5 - 3);
    v8 = *(v5 - 2);

    v10 = sub_100006028(v9, v8);
    if ((v11 & 1) == 0)
    {

      return 0;
    }

    v12 = (*(a1 + 56) + 16 * v10);
    if (*v12 == v7 && v12[1] == v6)
    {
    }

    else
    {
      v14 = sub_1001D2470();

      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }

    v5 += 4;
    if (!--v3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1000E7AC8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {
    if (!a4)
    {
      v17 = v4[1];
      if (v17)
      {
        if (*v4 != a1 || v17 != a2)
        {

          return sub_1001D2470();
        }
      }

      return 1;
    }

    v5 = v4[1];
    if (v5)
    {
      if (*v4 != a1 || v5 != a2)
      {
        v7 = a3;
        v8 = a4;
        v9 = sub_1001D2470();
        a3 = v7;
        a4 = v8;
        if ((v9 & 1) == 0)
        {
          return 0;
        }
      }
    }

    v10 = v4[3];
    if (!v10)
    {
      return 1;
    }

    v11 = v4[2];
    if (v11 == a3 && v10 == a4)
    {
      return 1;
    }
  }

  else
  {
    if (!a4)
    {
      return 1;
    }

    v10 = v4[3];
    if (!v10)
    {
      return 1;
    }

    v11 = v4[2];
    if (v11 == a3 && v10 == a4)
    {
      return 1;
    }
  }

  v13 = a3;
  v14 = a4;
  if (sub_1001D2470())
  {
    return 1;
  }

  sub_1000E47D4(46, 0xE100000000000000, v13, v14);
  if (v15)
  {
    return 0;
  }

  v19 = sub_1001D1920();
  v23 = sub_1000E505C(v11, v10, v19, v20, v21, v22);

  return v23 & 1;
}

uint64_t sub_1000E7C60(void *a1)
{
  v3 = sub_100011AC0(&qword_10022C578, &qword_1001DC7B0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100024DC8(a1, a1[3]);
  sub_1000EB460();
  sub_1001D25F0();
  v8[15] = 0;
  sub_1001D2330();
  if (!v1)
  {
    v8[14] = 1;
    sub_1001D2310();
    type metadata accessor for RateLimitTimingDetails(0);
    v8[13] = 2;
    sub_1001CFD60();
    sub_1000E8ECC(&qword_100228918, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_1001D2340();
    v8[12] = 3;
    sub_1001D2310();
  }

  return (*(v4 + 8))(v6, v3);
}

void sub_1000E7EA4(uint64_t a1)
{
  sub_1001D2590(*v1);
  v2 = *(v1 + 8);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  sub_1001D25B0(*&v2);
  v3 = type metadata accessor for RateLimitTimingDetails(0);
  sub_1001CFD60();
  sub_1000E8ECC(&qword_100229788, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_1001D1740();
  v4 = *(v1 + *(v3 + 28));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  sub_1001D25B0(*&v4);
}

uint64_t sub_1000E7F84@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_1001CFD60();
  v28 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_100011AC0(&qword_10022C568, &qword_1001DC7A8);
  v27 = *(v29 - 8);
  __chkstk_darwin(v29);
  v7 = &v23 - v6;
  v8 = type metadata accessor for RateLimitTimingDetails(0);
  __chkstk_darwin(v8);
  v10 = (&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100024DC8(a1, a1[3]);
  sub_1000EB460();
  v30 = v7;
  v11 = v31;
  sub_1001D25E0();
  if (v11)
  {
    return sub_100011CF0(a1);
  }

  v31 = v8;
  v12 = a1;
  v13 = v27;
  v14 = v28;
  v35 = 0;
  *v10 = sub_1001D2280();
  v34 = 1;
  sub_1001D2260();
  v25 = v10;
  v10[1] = v15;
  v33 = 2;
  sub_1000E8ECC(&qword_100228910, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v16 = v5;
  sub_1001D2290();
  v17 = v31;
  v18 = *(v14 + 32);
  v19 = v25;
  v24 = *(v31 + 24);
  v18(v25 + v24, v16, v3);
  v32 = 3;
  sub_1001D2260();
  v21 = v20;
  (*(v13 + 8))(v30, v29);
  *(v19 + *(v17 + 28)) = v21;
  sub_1000EABBC(v19, v26, type metadata accessor for RateLimitTimingDetails);
  sub_100011CF0(v12);
  return sub_1000EA78C(v19, type metadata accessor for RateLimitTimingDetails);
}

uint64_t sub_1000E836C(void *a1)
{
  v3 = v1;
  v5 = sub_100011AC0(&qword_10022C510, &qword_1001DC788);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_100024DC8(a1, a1[3]);
  sub_1000EAB14();
  sub_1001D25F0();
  v9 = v3[5];
  v10 = v3[6];
  v14 = *v3;
  v11 = *(v3 + 3);
  v15 = *(v3 + 1);
  v16 = v11;
  v17 = v9;
  v18 = v10;
  v19 = 0;
  sub_1000EAC24();

  sub_1001D2340();

  if (!v2)
  {
    type metadata accessor for RateLimitConfiguration(0);
    LOBYTE(v14) = 1;
    type metadata accessor for RateLimitTimingDetails(0);
    sub_1000E8ECC(&qword_10022C520, type metadata accessor for RateLimitTimingDetails, &unk_1001DC558);
    sub_1001D2340();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000E85AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v19 = type metadata accessor for RateLimitTimingDetails(0);
  __chkstk_darwin(v19);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100011AC0(&qword_10022C4F0, &qword_1001DC780);
  v20 = *(v6 - 8);
  v21 = v6;
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for RateLimitConfiguration(0);
  __chkstk_darwin(v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100024DC8(a1, a1[3]);
  sub_1000EAB14();
  sub_1001D25E0();
  if (v2)
  {
    return sub_100011CF0(a1);
  }

  v16 = v9;
  v17 = a1;
  v26 = 0;
  sub_1000EAB68();
  v12 = v21;
  sub_1001D2290();
  v13 = v25;
  v14 = v23;
  *v11 = v22;
  *(v11 + 1) = v14;
  *(v11 + 2) = v24;
  *(v11 + 6) = v13;
  LOBYTE(v22) = 1;
  sub_1000E8ECC(&qword_10022C508, type metadata accessor for RateLimitTimingDetails, &unk_1001DC580);
  sub_1001D2290();
  (*(v20 + 8))(v8, v12);
  sub_1000EA7EC(v5, &v11[*(v16 + 20)], type metadata accessor for RateLimitTimingDetails);
  sub_1000EABBC(v11, v18, type metadata accessor for RateLimitConfiguration);
  sub_100011CF0(v17);
  return sub_1000EA78C(v11, type metadata accessor for RateLimitConfiguration);
}

uint64_t sub_1000E8908()
{
  v1 = 0x746E756F63;
  v2 = 0x72697078456C7474;
  if (*v0 != 2)
  {
    v2 = 0x72657474696ALL;
  }

  if (*v0)
  {
    v1 = 0x6E6F697461727564;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1000E8988@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000EB9D8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000E89B0(uint64_t a1)
{
  v2 = sub_1000EB460();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000E89EC(uint64_t a1)
{
  v2 = sub_1000EB460();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1000E8A2C()
{
  sub_1001D2580();
  sub_1000E7EA4(v1);
  return sub_1001D25C0();
}

Swift::Int sub_1000E8A70()
{
  sub_1001D2580();
  sub_1000E7EA4(v1);
  return sub_1001D25C0();
}

unint64_t sub_1000E8B28()
{
  result = qword_10022C4E0;
  if (!qword_10022C4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C4E0);
  }

  return result;
}

uint64_t sub_1000E8B7C()
{
  if (*v0)
  {
    return 0x676E696D6974;
  }

  else
  {
    return 0x7265746C6966;
  }
}

uint64_t sub_1000E8BA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7265746C6966 && a2 == 0xE600000000000000;
  if (v6 || (sub_1001D2470() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x676E696D6974 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1001D2470();

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

uint64_t sub_1000E8C7C(uint64_t a1)
{
  v2 = sub_1000EAB14();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000E8CB8(uint64_t a1)
{
  v2 = sub_1000EAB14();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1000E8CF8()
{
  sub_1001D2580();
  v1 = v0[1];
  v4 = *v0;
  v5 = v1;
  v6 = v0[2];
  v7 = *(v0 + 6);
  sub_1000E75F0(v3);
  sub_1000E7EA4(v3);
  return sub_1001D25C0();
}

Swift::Int sub_1000E8DDC()
{
  sub_1001D2580();
  v1 = v0[1];
  v4 = *v0;
  v5 = v1;
  v6 = v0[2];
  v7 = *(v0 + 6);
  sub_1000E75F0(v3);
  sub_1000E7EA4(v3);
  return sub_1001D25C0();
}

uint64_t sub_1000E8ECC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000E8F14(void *a1, uint64_t a2)
{
  v4 = sub_100011AC0(&qword_10022C5F8, &qword_1001DCC88);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_100024DC8(a1, a1[3]);
  sub_1000EBCD0();
  sub_1001D25F0();
  v9[1] = a2;
  sub_100011AC0(&qword_10022C5E8, &qword_1001DCC80);
  sub_1000EBDE0();
  sub_1001D2340();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1000E9094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x72756769666E6F63 && a2 == 0xEE00736E6F697461)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1001D2470();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1000E9124(uint64_t a1)
{
  v2 = sub_1000EBCD0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000E9160(uint64_t a1)
{
  v2 = sub_1000EBCD0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1000E919C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1000EBB3C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000E91E4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *&v35 = a4;
  *&v34 = a3;
  *&v36 = a2;
  v37 = a5;
  v6 = sub_1001CFD60();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100011AC0(&qword_10022C580, &unk_1001DC7B8);
  v11 = __chkstk_darwin(v10);
  v33 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v32 - v13;
  sub_10001208C(a1, &v32 - v13, &qword_10022C580, &unk_1001DC7B8);

  v15 = &v14[*(v10 + 48)];
  v16 = type metadata accessor for RateLimitTimingDetails(0);
  (*(v7 + 16))(v9, v15 + *(v16 + 24), v6);
  sub_1000EA78C(v15, type metadata accessor for RateLimitTimingDetails);
  LOBYTE(v15) = sub_1001CFCD0();
  (*(v7 + 8))(v9, v6);
  if (v15)
  {
    *v34 = 1;
    v17 = type metadata accessor for RateLimitConfiguration(0);
    v18 = *(*(v17 - 8) + 56);
    v19 = v37;
  }

  else
  {
    v20 = v37;
    v21 = a1[1];
    v38 = *a1;
    v39 = v21;
    v40 = a1[2];
    v41 = *(a1 + 6);
    if (sub_1000E6D20(v35))
    {
      sub_10001208C(a1, v14, &qword_10022C580, &unk_1001DC7B8);
      v22 = *(v14 + 2);
      v23 = *(v14 + 6);
      v24 = *(v10 + 48);
      v25 = *(v14 + 1);
      v35 = *v14;
      v36 = v22;
      v34 = v25;
      v26 = a1;
      v27 = v33;
      sub_10001208C(v26, v33, &qword_10022C580, &unk_1001DC7B8);

      v28 = *(v10 + 48);
      v29 = v34;
      *v20 = v35;
      *(v20 + 16) = v29;
      *(v20 + 32) = v36;
      *(v20 + 48) = v23;
      v30 = type metadata accessor for RateLimitConfiguration(0);
      sub_1000EA7EC(v27 + v28, v20 + *(v30 + 20), type metadata accessor for RateLimitTimingDetails);
      sub_1000EA78C(&v14[v24], type metadata accessor for RateLimitTimingDetails);
      return (*(*(v30 - 8) + 56))(v20, 0, 1, v30);
    }

    v17 = type metadata accessor for RateLimitConfiguration(0);
    v18 = *(*(v17 - 8) + 56);
    v19 = v20;
  }

  return v18(v19, 1, 1, v17);
}

char *sub_1000E95B0(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v54 = a1;
  v55 = a2;
  v6 = sub_100011AC0(&qword_100229348, &unk_1001D64C0);
  __chkstk_darwin(v6 - 8);
  v8 = &v43 - v7;
  v50 = type metadata accessor for RateLimitConfiguration(0);
  v9 = *(v50 - 8);
  v10 = __chkstk_darwin(v50);
  v45 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v43 = &v43 - v12;
  v52 = sub_100011AC0(&qword_10022C580, &unk_1001DC7B8);
  __chkstk_darwin(v52);
  v14 = &v43 - v13;
  v15 = a3 + 64;
  v16 = 1 << *(a3 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a3 + 64);
  v19 = (v16 + 63) >> 6;
  v44 = v9;
  v47 = (v9 + 48);
  v56 = a3;

  v21 = 0;
  v46 = _swiftEmptyArrayStorage;
  v48 = v19;
  v49 = v15;
  v53 = v8;
  v51 = v14;
LABEL_4:
  v22 = v21;
  if (!v18)
  {
    goto LABEL_6;
  }

  do
  {
    v59 = v4;
    v21 = v22;
LABEL_10:
    v23 = __clz(__rbit64(v18)) | (v21 << 6);
    v24 = *(v56 + 56);
    v25 = (*(v56 + 48) + 56 * v23);
    v26 = *v25;
    v27 = v25[1];
    v28 = v25[2];
    v29 = v25[3];
    v30 = v25[5];
    v57 = v25[4];
    v58 = v28;
    v31 = v25[6];
    v32 = v24 + *(*(type metadata accessor for RateLimitTimingDetails(0) - 8) + 72) * v23;
    v33 = v51;
    sub_1000EABBC(v32, v51 + *(v52 + 48), type metadata accessor for RateLimitTimingDetails);
    *v33 = v26;
    v33[1] = v27;
    v34 = v57;
    v33[2] = v58;
    v33[3] = v29;
    v33[4] = v34;
    v33[5] = v30;
    v33[6] = v31;

    v35 = v53;
    v36 = v59;
    v54(v33);
    v4 = v36;
    if (v36)
    {
      sub_100011F00(v33, &qword_10022C580, &unk_1001DC7B8);

LABEL_20:

      return v46;
    }

    v18 &= v18 - 1;
    sub_100011F00(v33, &qword_10022C580, &unk_1001DC7B8);
    v37 = (*v47)(v35, 1, v50);
    v19 = v48;
    if (v37 != 1)
    {
      v38 = v43;
      sub_1000EA7EC(v35, v43, type metadata accessor for RateLimitConfiguration);
      sub_1000EA7EC(v38, v45, type metadata accessor for RateLimitConfiguration);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v46 = sub_1000097E0(0, v46[2] + 1, 1, v46);
      }

      v40 = v46[2];
      v39 = v46[3];
      if (v40 >= v39 >> 1)
      {
        v46 = sub_1000097E0((v39 > 1), v40 + 1, 1, v46);
      }

      v41 = v45;
      v42 = v46;
      v46[2] = v40 + 1;
      result = sub_1000EA7EC(v41, v42 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v40, type metadata accessor for RateLimitConfiguration);
      v15 = v49;
      goto LABEL_4;
    }

    result = sub_100011F00(v35, &qword_100229348, &unk_1001D64C0);
    v22 = v21;
    v15 = v49;
  }

  while (v18);
LABEL_6:
  while (1)
  {
    v21 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v21 >= v19)
    {
      goto LABEL_20;
    }

    v18 = *(v15 + 8 * v21);
    ++v22;
    if (v18)
    {
      v59 = v4;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000E9A28(uint64_t a1, void *a2, uint64_t a3)
{
  v76 = a2;
  v73 = a1;
  v72 = sub_1001CFD60();
  v4 = *(v72 - 8);
  __chkstk_darwin(v72);
  v71 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_100011AC0(&qword_10022C580, &unk_1001DC7B8);
  v6 = __chkstk_darwin(v83);
  v70 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v82 = (&v65 - v9);
  __chkstk_darwin(v8);
  v69 = &v65 - v10;
  v11 = a3 + 64;
  v12 = 1 << *(a3 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a3 + 64);
  v15 = (v12 + 63) >> 6;
  v67 = (v4 + 8);
  v68 = (v4 + 16);
  v78 = a3;

  v17 = 0;
  v65 = v15;
  for (i = a3 + 64; ; v11 = i)
  {
    if (!v14)
    {
      while (1)
      {
        v18 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v18 >= v15)
        {

          return 0;
        }

        v14 = *(v11 + 8 * v18);
        ++v17;
        if (v14)
        {
          v17 = v18;
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_44;
    }

LABEL_11:
    v19 = __clz(__rbit64(v14)) | (v17 << 6);
    v20 = *(v78 + 56);
    v21 = (*(v78 + 48) + 56 * v19);
    v23 = *v21;
    v22 = v21[1];
    v25 = v21[2];
    v24 = v21[3];
    v26 = v21[4];
    v27 = v21[5];
    v28 = v21[6];
    v84 = v22;
    v85 = v28;
    v29 = type metadata accessor for RateLimitTimingDetails(0);
    v30 = *(v29 - 8);
    v81 = v29 - 8;
    v31 = v20 + *(v30 + 72) * v19;
    v32 = *(v83 + 48);
    v33 = v83;
    v34 = v69;
    sub_1000EABBC(v31, &v69[v32], type metadata accessor for RateLimitTimingDetails);
    v36 = v84;
    v35 = v85;
    *v34 = v23;
    v34[1] = v36;
    v34[2] = v25;
    v34[3] = v24;
    v34[4] = v26;
    v34[5] = v27;
    v34[6] = v35;
    v37 = *(v33 + 48);
    v38 = v82;
    v77 = v23;
    *v82 = v23;
    v38[1] = v36;
    v74 = v26;
    v75 = v25;
    v38[2] = v25;
    v38[3] = v24;
    v38[4] = v26;
    v38[5] = v27;
    v38[6] = v35;
    sub_1000EA7EC(v34 + v32, v38 + v37, type metadata accessor for RateLimitTimingDetails);
    v39 = v70;
    sub_10001208C(v38, v70, &qword_10022C580, &unk_1001DC7B8);

    v80 = v24;

    v79 = v27;

    v40 = v39 + *(v83 + 48);
    v42 = v71;
    v41 = v72;
    (*v68)(v71, v40 + *(v81 + 32), v72);
    sub_1000EA78C(v40, type metadata accessor for RateLimitTimingDetails);
    sub_1000E8ECC(&qword_100230230, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    LOBYTE(v40) = sub_1001D1770();
    result = (*v67)(v42, v41);
    if (v40)
    {
      if (!v84 || v77 == *v76 && v84 == v76[1] || (result = sub_1001D2470(), (result & 1) != 0))
      {
        if (!v80 || (v43 = v76[2], v44 = v76[3], v75 == v43) && v80 == v44 || (result = sub_1001D2470(), (result & 1) != 0) || (sub_1000E47D4(46, 0xE100000000000000, v43, v44), (v59 & 1) == 0) && (v60 = sub_1001D1920(), v64 = sub_1000E505C(v75, v80, v60, v61, v62, v63), result = , (v64 & 1) != 0))
        {
          if (!v79 || v74 == v76[4] && v79 == v76[5])
          {
            break;
          }

          result = sub_1001D2470();
          if (result)
          {
            break;
          }
        }
      }
    }

LABEL_5:
    v14 &= v14 - 1;
    result = sub_100011F00(v82, &qword_10022C580, &unk_1001DC7B8);
    v15 = v65;
  }

  v45 = v85;
  v46 = *(v85 + 16);
  if (!v46)
  {
LABEL_41:

    sub_100011F00(v82, &qword_10022C580, &unk_1001DC7B8);
    return 1;
  }

  v47 = 0;
  v48 = v76[6];
  v49 = (v85 + 56);
  while (v47 < *(v45 + 16))
  {
    if (!*(v48 + 16))
    {
      goto LABEL_5;
    }

    v51 = *(v49 - 1);
    v50 = *v49;
    v53 = *(v49 - 3);
    v52 = *(v49 - 2);

    v54 = sub_100006028(v53, v52);
    if ((v55 & 1) == 0)
    {

      goto LABEL_5;
    }

    v56 = (*(v48 + 56) + 16 * v54);
    if (*v56 == v51 && v56[1] == v50)
    {
    }

    else
    {
      v58 = sub_1001D2470();

      if ((v58 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    ++v47;
    v49 += 4;
    v45 = v85;
    if (v46 == v47)
    {
      goto LABEL_41;
    }
  }

LABEL_44:
  __break(1u);
  return result;
}

char *sub_1000EA074(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v58 = a5;
  v57 = a4;
  v56 = a3;
  v55 = a2;
  v69 = a1;
  v6 = sub_100011AC0(&qword_100229348, &unk_1001D64C0);
  __chkstk_darwin(v6 - 8);
  v8 = &v50 - v7;
  v9 = type metadata accessor for RateLimitConfiguration(0);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v52 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v50 = &v50 - v13;
  v65 = sub_100011AC0(&qword_10022C580, &unk_1001DC7B8);
  __chkstk_darwin(v65);
  v15 = &v50 - v14;
  v53 = v5;
  v16 = *v5;
  v17 = *v5 + 64;
  v18 = 1 << *(*v5 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(*v5 + 64);
  v21 = (v18 + 63) >> 6;
  v61 = (v10 + 56);
  v51 = v10;
  v60 = (v10 + 48);

  v23 = 0;
  v59 = 0;
  v54 = _swiftEmptyArrayStorage;
  v63 = v17;
  v62 = v21;
  v67 = v9;
  v68 = v8;
  v66 = v16;
  v64 = v15;
  while (1)
  {
    v24 = v23;
    if (!v20)
    {
      break;
    }

LABEL_8:
    v25 = __clz(__rbit64(v20)) | (v23 << 6);
    v26 = *(v16 + 56);
    v27 = (*(v16 + 48) + 56 * v25);
    v29 = *v27;
    v28 = v27[1];
    v30 = v27[2];
    v31 = v27[3];
    v32 = v27[5];
    v70 = v27[4];
    v71 = v30;
    v33 = v27[6];
    v34 = v26 + *(*(type metadata accessor for RateLimitTimingDetails(0) - 8) + 72) * v25;
    v35 = v64;
    v36 = v64 + *(v65 + 48);
    sub_1000EABBC(v34, v36, type metadata accessor for RateLimitTimingDetails);
    *v35 = v29;
    v35[1] = v28;
    v37 = v70;
    v35[2] = v71;
    v35[3] = v31;
    v35[4] = v37;
    v35[5] = v32;
    v35[6] = v33;
    v76 = v33;
    v38 = *(v35 + 2);
    v74 = *(v35 + 1);
    v75 = v38;
    v73 = *v35;

    if (sub_1001CFCD0())
    {
      v39 = *v61;
      v59 = 1;
      v41 = v67;
      v40 = v68;
      v39(v68, 1, 1, v67);
    }

    else
    {
      v42 = sub_1000E7AC8(v55, v56, v57, v58);
      v41 = v67;
      v40 = v68;
      if (v42)
      {
        sub_1000EABBC(v36, &v68[*(v67 + 20)], type metadata accessor for RateLimitTimingDetails);
        v43 = v74;
        *v40 = v73;
        *(v40 + 16) = v43;
        *(v40 + 32) = v75;
        *(v40 + 48) = v76;
        (*v61)(v40, 0, 1, v41);
        sub_10001B9AC(&v73, v72);
      }

      else
      {
        (*v61)(v68, 1, 1, v67);
      }
    }

    v16 = v66;
    v17 = v63;
    v21 = v62;
    v20 &= v20 - 1;
    sub_100011F00(v35, &qword_10022C580, &unk_1001DC7B8);
    if ((*v60)(v40, 1, v41) == 1)
    {
      result = sub_100011F00(v40, &qword_100229348, &unk_1001D64C0);
    }

    else
    {
      v44 = v50;
      sub_1000EA7EC(v40, v50, type metadata accessor for RateLimitConfiguration);
      sub_1000EA7EC(v44, v52, type metadata accessor for RateLimitConfiguration);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = sub_1000097E0(0, v54[2] + 1, 1, v54);
      }

      v46 = v54[2];
      v45 = v54[3];
      if (v46 >= v45 >> 1)
      {
        v54 = sub_1000097E0((v45 > 1), v46 + 1, 1, v54);
      }

      v47 = v54;
      v54[2] = v46 + 1;
      result = sub_1000EA7EC(v52, v47 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v46, type metadata accessor for RateLimitConfiguration);
    }
  }

  while (1)
  {
    v23 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
      return result;
    }

    if (v23 >= v21)
    {
      break;
    }

    v20 = *(v17 + 8 * v23);
    ++v24;
    if (v20)
    {
      goto LABEL_8;
    }
  }

  if (v59)
  {
    __chkstk_darwin(v48);
    *(&v50 - 2) = v69;
    v49 = sub_1000EC8BC(sub_1000EB4B4, (&v50 - 4), v16);

    *v53 = v49;
  }

  return v54;
}

uint64_t sub_1000EA6CC@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for RateLimitTimingDetails(0);
  if (sub_1001CFCD0())
  {
    v6 = 1;
  }

  else
  {
    sub_1000EABBC(a1, a3, type metadata accessor for RateLimitTimingDetails);
    v6 = 0;
  }

  return (*(*(v5 - 8) + 56))(a3, v6, 1, v5);
}

uint64_t sub_1000EA78C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000EA7EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000EA854(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = sub_1001D2470();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = a1[3];
  v10 = a2[3];
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    if (a1[2] != a2[2] || v9 != v10)
    {
      v11 = a1;
      v12 = a2;
      v13 = sub_1001D2470();
      a2 = v12;
      v14 = v13;
      a1 = v11;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  v15 = a1[5];
  v16 = a2[5];
  if (v15)
  {
    if (v16)
    {
      if (a1[4] == a2[4] && v15 == v16)
      {
        goto LABEL_22;
      }

      v17 = a1;
      v18 = a2;
      v19 = sub_1001D2470();
      a2 = v18;
      v20 = v19;
      a1 = v17;
      if (v20)
      {
        goto LABEL_22;
      }
    }

    return 0;
  }

  if (v16)
  {
    return 0;
  }

LABEL_22:
  v21 = a1[6];
  v22 = a2[6];

  return sub_1000AF96C(v21, v22);
}

BOOL sub_1000EA998(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v4;
  v11[2] = *(a1 + 32);
  v12 = *(a1 + 48);
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v13[2] = *(a2 + 32);
  v14 = *(a2 + 48);
  result = 0;
  if (sub_1000EA854(v11, v13))
  {
    v6 = *(type metadata accessor for RateLimitConfiguration(0) + 20);
    v7 = a1 + v6;
    v8 = a2 + v6;
    if (*v7 == *(a2 + v6) && *(v7 + 8) == *(v8 + 8))
    {
      v9 = type metadata accessor for RateLimitTimingDetails(0);
      if ((sub_1001CFD30() & 1) != 0 && *(v7 + *(v9 + 28)) == *(v8 + *(v9 + 28)))
      {
        return 1;
      }
    }
  }

  return result;
}

BOOL sub_1000EAA80(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 8) == *(a2 + 8))
  {
    v4 = type metadata accessor for RateLimitTimingDetails(0);
    if (sub_1001CFD30())
    {
      return *(a1 + *(v4 + 28)) == *(a2 + *(v4 + 28));
    }
  }

  return 0;
}

unint64_t sub_1000EAB14()
{
  result = qword_10022C4F8;
  if (!qword_10022C4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C4F8);
  }

  return result;
}

unint64_t sub_1000EAB68()
{
  result = qword_10022C500;
  if (!qword_10022C500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C500);
  }

  return result;
}

uint64_t sub_1000EABBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1000EAC24()
{
  result = qword_10022C518;
  if (!qword_10022C518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C518);
  }

  return result;
}

uint64_t sub_1000EAC78(void *a1)
{
  v3 = sub_100011AC0(&qword_10022C608, &qword_1001DCC90);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_100024DC8(a1, a1[3]);
  sub_1000EBE9C();
  sub_1001D25E0();
  if (!v1)
  {
    v11 = 0;
    v7 = sub_1001D2250();
    v10 = 1;
    sub_1001D2250();
    (*(v4 + 8))(v6, v3);
  }

  sub_100011CF0(a1);
  return v7;
}

uint64_t sub_1000EAE5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_1001D2470() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4965727574616566 && a2 == 0xE900000000000044 || (sub_1001D2470() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64616F6C6B726F77 && a2 == 0xEC00000065707954 || (sub_1001D2470() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64616F6C6B726F77 && a2 == 0xEC00000073676154)
  {

    return 3;
  }

  else
  {
    v6 = sub_1001D2470();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1000EAFD0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100011AC0(&qword_10022C528, &qword_1001DC790);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - v7;
  sub_100024DC8(a1, a1[3]);
  sub_1000EB2EC();
  sub_1001D25E0();
  if (v2)
  {
    sub_100011CF0(a1);
  }

  else
  {
    v31 = 0;
    v9 = sub_1001D2210();
    v11 = v10;
    v26 = v9;
    v30 = 1;
    v12 = sub_1001D2210();
    v14 = v13;
    v24 = v12;
    v25 = a2;
    v29 = 2;
    v15 = sub_1001D2210();
    v17 = v16;
    v23 = v15;
    sub_100011AC0(&qword_10022C538, &qword_1001DC798);
    v28 = 3;
    sub_1000EB394(&qword_10022C540, sub_1000EB340, &protocol conformance descriptor for <A> [A]);
    sub_1001D2290();
    (*(v6 + 8))(v8, v5);
    v18 = v27;

    sub_100011CF0(a1);

    v20 = v25;
    *v25 = v26;
    v20[1] = v11;
    v21 = v23;
    v20[2] = v24;
    v20[3] = v14;
    v20[4] = v21;
    v20[5] = v17;
    v20[6] = v18;
  }

  return result;
}

unint64_t sub_1000EB2EC()
{
  result = qword_10022C530;
  if (!qword_10022C530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C530);
  }

  return result;
}

unint64_t sub_1000EB340()
{
  result = qword_10022C548;
  if (!qword_10022C548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C548);
  }

  return result;
}

uint64_t sub_1000EB394(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_100011DF4(&qword_10022C538, &qword_1001DC798);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000EB40C()
{
  result = qword_10022C560;
  if (!qword_10022C560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C560);
  }

  return result;
}

unint64_t sub_1000EB460()
{
  result = qword_10022C570;
  if (!qword_10022C570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C570);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RateLimiter.RateLimitModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RateLimiter.RateLimitModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000EB66C()
{
  result = qword_10022C588;
  if (!qword_10022C588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C588);
  }

  return result;
}

unint64_t sub_1000EB6C4()
{
  result = qword_10022C590;
  if (!qword_10022C590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C590);
  }

  return result;
}

unint64_t sub_1000EB71C()
{
  result = qword_10022C598;
  if (!qword_10022C598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C598);
  }

  return result;
}

unint64_t sub_1000EB774()
{
  result = qword_10022C5A0;
  if (!qword_10022C5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C5A0);
  }

  return result;
}

unint64_t sub_1000EB7CC()
{
  result = qword_10022C5A8;
  if (!qword_10022C5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C5A8);
  }

  return result;
}

unint64_t sub_1000EB824()
{
  result = qword_10022C5B0;
  if (!qword_10022C5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C5B0);
  }

  return result;
}

unint64_t sub_1000EB87C()
{
  result = qword_10022C5B8;
  if (!qword_10022C5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C5B8);
  }

  return result;
}

unint64_t sub_1000EB8D4()
{
  result = qword_10022C5C0;
  if (!qword_10022C5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C5C0);
  }

  return result;
}

unint64_t sub_1000EB92C()
{
  result = qword_10022C5C8;
  if (!qword_10022C5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C5C8);
  }

  return result;
}

unint64_t sub_1000EB984()
{
  result = qword_10022C5D0;
  if (!qword_10022C5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C5D0);
  }

  return result;
}

uint64_t sub_1000EB9D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E756F63 && a2 == 0xE500000000000000;
  if (v4 || (sub_1001D2470() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_1001D2470() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72697078456C7474 && a2 == 0xED00006E6F697461 || (sub_1001D2470() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x72657474696ALL && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1001D2470();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void *sub_1000EBB3C(void *a1)
{
  v3 = sub_100011AC0(&qword_10022C5D8, &qword_1001DCC78);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  sub_1000DADF8(_swiftEmptyArrayStorage);

  v7 = sub_100024DC8(a1, a1[3]);
  sub_1000EBCD0();
  sub_1001D25E0();
  if (v1)
  {
    sub_100011CF0(a1);
  }

  else
  {
    sub_100011AC0(&qword_10022C5E8, &qword_1001DCC80);
    sub_1000EBD24();
    sub_1001D2290();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_100011CF0(a1);
  }

  return v7;
}

unint64_t sub_1000EBCD0()
{
  result = qword_10022C5E0;
  if (!qword_10022C5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C5E0);
  }

  return result;
}

unint64_t sub_1000EBD24()
{
  result = qword_10022C5F0;
  if (!qword_10022C5F0)
  {
    sub_100011DF4(&qword_10022C5E8, &qword_1001DCC80);
    sub_1000EAB68();
    sub_1000E8ECC(&qword_10022C508, type metadata accessor for RateLimitTimingDetails, &unk_1001DC580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C5F0);
  }

  return result;
}

unint64_t sub_1000EBDE0()
{
  result = qword_10022C600;
  if (!qword_10022C600)
  {
    sub_100011DF4(&qword_10022C5E8, &qword_1001DCC80);
    sub_1000EAC24();
    sub_1000E8ECC(&qword_10022C520, type metadata accessor for RateLimitTimingDetails, &unk_1001DC558);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C600);
  }

  return result;
}

unint64_t sub_1000EBE9C()
{
  result = qword_10022C610;
  if (!qword_10022C610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C610);
  }

  return result;
}

unint64_t sub_1000EBF1C()
{
  result = qword_10022C620;
  if (!qword_10022C620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C620);
  }

  return result;
}

unint64_t sub_1000EBF74()
{
  result = qword_10022C628;
  if (!qword_10022C628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C628);
  }

  return result;
}

unint64_t sub_1000EBFCC()
{
  result = qword_10022C630;
  if (!qword_10022C630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C630);
  }

  return result;
}

unint64_t sub_1000EC024()
{
  result = qword_10022C638;
  if (!qword_10022C638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C638);
  }

  return result;
}

unint64_t sub_1000EC07C()
{
  result = qword_10022C640;
  if (!qword_10022C640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C640);
  }

  return result;
}

unint64_t sub_1000EC0D4()
{
  result = qword_10022C648;
  if (!qword_10022C648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C648);
  }

  return result;
}

uint64_t sub_1000EC158(void (*a1)(uint64_t *__return_ptr, char *))
{
  v12 = a1;
  v3 = sub_1001CFDA0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100011AC0(&qword_1002288B0, &qword_1001D5FC0);
  __chkstk_darwin(v7 - 8);
  v9 = &v11 - v8;
  sub_10001208C(v1, &v11 - v8, &qword_1002288B0, &qword_1001D5FC0);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    return 0;
  }

  (*(v4 + 32))(v6, v9, v3);
  v12(&v11, v6);
  if (v2)
  {
    result = (*(v4 + 8))(v6, v3);
    __break(1u);
  }

  else
  {
    (*(v4 + 8))(v6, v3);
    return v11;
  }

  return result;
}

void *sub_1000EC344(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v64 = a1;
  v65 = a2;
  v6 = sub_100011AC0(&qword_100227E08, &unk_1001D3B30);
  __chkstk_darwin(v6 - 8);
  v8 = &v51 - v7;
  v9 = sub_1001D0260();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v55 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v53 = &v51 - v13;
  v66 = sub_100011AC0(&qword_10022C7C8, &qword_1001DD048);
  v14 = __chkstk_darwin(v66);
  v54 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v74 = &v51 - v17;
  __chkstk_darwin(v16);
  v61 = &v51 - v18;
  v20 = a3 + 64;
  v19 = *(a3 + 64);
  v21 = 1 << *(a3 + 32);
  v22 = -1;
  v56 = &_swiftEmptyDictionarySingleton;
  v77 = &_swiftEmptyDictionarySingleton;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v19;
  v24 = (v21 + 63) >> 6;
  v60 = v10 + 16;
  v59 = (v10 + 48);
  v52 = (v10 + 32);
  v62 = v10;
  v51 = (v10 + 8);
  v67 = a3;

  v26 = 0;
  v58 = v20;
  v57 = v24;
  v63 = v8;
LABEL_4:
  v27 = v26;
  if (!v23)
  {
    goto LABEL_6;
  }

  do
  {
    v73 = v4;
    v26 = v27;
LABEL_10:
    v28 = __clz(__rbit64(v23)) | (v26 << 6);
    v29 = v66;
    v30 = *(v67 + 56);
    v31 = (*(v67 + 48) + 56 * v28);
    v32 = v31[1];
    v70 = *v31;
    v33 = v31[3];
    v69 = v31[2];
    v34 = v31[5];
    v68 = v31[4];
    v35 = v31[6];
    v71 = v34;
    v72 = v35;
    v36 = v61;
    (*(v62 + 16))(&v61[*(v66 + 48)], v30 + *(v62 + 72) * v28, v9);
    v37 = v69;
    *v36 = v70;
    v36[1] = v32;
    v36[2] = v37;
    v36[3] = v33;
    v36[4] = v68;
    v36[5] = v34;
    v36[6] = v35;
    v38 = v36;
    v39 = v74;
    sub_1000DBEF4(v38, v74, &qword_10022C7C8, &qword_1001DD048);
    v40 = *(v29 + 48);

    v41 = v39 + v40;
    v42 = v63;
    v43 = v73;
    v64(v41);
    v4 = v43;
    if (v43)
    {
      sub_100011F00(v74, &qword_10022C7C8, &qword_1001DD048);
      v50 = v56;

      return v50;
    }

    v23 &= v23 - 1;
    if ((*v59)(v42, 1, v9) != 1)
    {
      v44 = *v52;
      v45 = v53;
      (*v52)(v53, v42, v9);
      sub_1000DBEF4(v74, v54, &qword_10022C7C8, &qword_1001DD048);
      v44(v55, v45, v9);
      v46 = v56[2];
      if (v56[3] <= v46)
      {
        sub_10000CB50(v46 + 1, 1);
      }

      v47 = *(v66 + 48);
      v48 = v54;
      v49 = *(v54 + 16);
      v75[0] = *v54;
      v75[1] = v49;
      v75[2] = *(v54 + 32);
      v76 = *(v54 + 48);
      v56 = v77;
      sub_1000F2370(v75, v55, v77);
      result = (*v51)(v48 + v47, v9);
      v20 = v58;
      v24 = v57;
      goto LABEL_4;
    }

    sub_100011F00(v74, &qword_10022C7C8, &qword_1001DD048);
    result = sub_100011F00(v42, &qword_100227E08, &unk_1001D3B30);
    v27 = v26;
    v20 = v58;
    v24 = v57;
  }

  while (v23);
LABEL_6:
  while (1)
  {
    v26 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v26 >= v24)
    {

      return v56;
    }

    v23 = *(v20 + 8 * v26);
    ++v27;
    if (v23)
    {
      v73 = v4;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void *sub_1000EC8BC(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v70 = a2;
  v69 = a1;
  v6 = sub_100011AC0(&qword_100227DF8, &qword_1001DD020);
  __chkstk_darwin(v6 - 8);
  v8 = &v56 - v7;
  v65 = type metadata accessor for RateLimitTimingDetails(0);
  v9 = *(v65 - 8);
  v10 = __chkstk_darwin(v65);
  v59 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v57 = &v56 - v12;
  v71 = sub_100011AC0(&qword_10022C580, &unk_1001DC7B8);
  v13 = __chkstk_darwin(v71);
  v58 = (&v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __chkstk_darwin(v13);
  v76 = &v56 - v16;
  __chkstk_darwin(v15);
  v66 = &v56 - v17;
  v19 = a3 + 64;
  v18 = *(a3 + 64);
  v60 = &_swiftEmptyDictionarySingleton;
  v82 = &_swiftEmptyDictionarySingleton;
  v20 = 1 << *(a3 + 32);
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & v18;
  v23 = (v20 + 63) >> 6;
  v67 = v9;
  v63 = (v9 + 48);
  v72 = a3;

  v25 = 0;
  v62 = v19;
  v64 = v23;
  v68 = v8;
LABEL_5:
  v26 = v25;
  if (!v22)
  {
    goto LABEL_7;
  }

  do
  {
    v75 = v4;
    v25 = v26;
LABEL_11:
    v27 = __clz(__rbit64(v22)) | (v25 << 6);
    v28 = *(v72 + 56);
    v29 = (*(v72 + 48) + 56 * v27);
    v31 = *v29;
    v30 = v29[1];
    v32 = v29[3];
    v74 = v29[2];
    v33 = v29[5];
    v73 = v29[4];
    v34 = v29[6];
    v61 = *(v67 + 72);
    v35 = v71;
    v36 = v66;
    sub_1000F43C0(v28 + v61 * v27, &v66[*(v71 + 48)], type metadata accessor for RateLimitTimingDetails);
    *v36 = v31;
    v36[1] = v30;
    v37 = v73;
    v36[2] = v74;
    v36[3] = v32;
    v36[4] = v37;
    v36[5] = v33;
    v36[6] = v34;
    v38 = v36;
    v39 = v76;
    sub_1000DBEF4(v38, v76, &qword_10022C580, &unk_1001DC7B8);
    v40 = *(v35 + 48);

    v41 = v39 + v40;
    v42 = v68;
    v43 = v75;
    v69(v41);
    v4 = v43;
    if (v43)
    {
      sub_100011F00(v76, &qword_10022C580, &unk_1001DC7B8);
      v55 = v60;

      return v55;
    }

    v22 &= v22 - 1;
    v44 = (*v63)(v42, 1, v65);
    v23 = v64;
    if (v44 != 1)
    {
      v45 = v57;
      sub_1000F4428(v42, v57, type metadata accessor for RateLimitTimingDetails);
      sub_1000DBEF4(v76, v58, &qword_10022C580, &unk_1001DC7B8);
      sub_1000F4428(v45, v59, type metadata accessor for RateLimitTimingDetails);
      v46 = v60;
      v47 = v60[2];
      if (v60[3] <= v47)
      {
        sub_10000C638(v47 + 1, 1);
        v46 = v82;
      }

      v48 = *(v71 + 48);
      v49 = v58;
      v50 = v58[2];
      v79 = v58[1];
      v80 = v50;
      v81 = *(v58 + 6);
      v78 = *v58;
      sub_1001D2580();
      sub_1000E75F0(v77);
      sub_1001D25C0();
      v51 = sub_1001D1FD0();
      *(v46 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v51;
      v52 = v46[6] + 56 * v51;
      v53 = v79;
      *v52 = v78;
      *(v52 + 16) = v53;
      *(v52 + 32) = v80;
      *(v52 + 48) = v81;
      sub_1000F4428(v59, v46[7] + v51 * v61, type metadata accessor for RateLimitTimingDetails);
      v54 = v46[2] + 1;
      v60 = v46;
      v46[2] = v54;
      result = sub_1000F4490(v49 + v48, type metadata accessor for RateLimitTimingDetails);
      v19 = v62;
      goto LABEL_5;
    }

    sub_100011F00(v76, &qword_10022C580, &unk_1001DC7B8);
    result = sub_100011F00(v42, &qword_100227DF8, &qword_1001DD020);
    v26 = v25;
    v19 = v62;
  }

  while (v22);
LABEL_7:
  while (1)
  {
    v25 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v25 >= v23)
    {

      return v60;
    }

    v22 = *(v19 + 8 * v25);
    ++v26;
    if (v22)
    {
      v75 = v4;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000ECEEC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a3;
  v17 = a5;
  v9 = sub_100011AC0(&qword_10022C798, &qword_1001DD030);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - v11;
  sub_100024DC8(a1, a1[3]);
  sub_1000F4068();
  sub_1001D25F0();
  v19 = a2;
  v18 = 0;
  sub_1000F420C();
  sub_1001D2340();
  if (!v5)
  {
    v13 = v17;
    v19 = v16;
    v18 = 1;
    sub_1000F4260();
    sub_1001D2340();
    v19 = a4;
    v18 = 2;
    sub_1000F42B4();
    sub_1001D2340();
    v19 = v13;
    v18 = 3;
    sub_1000F4308();
    sub_1001D2340();
  }

  return (*(v10 + 8))(v12, v9);
}

unint64_t sub_1000ED104()
{
  v1 = 0x4C74736575716572;
  v2 = 0x6F4C6465696E6564;
  if (*v0 != 2)
  {
    v2 = 0x4C6E6F6973736573;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1000ED188@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000F3BE8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000ED1B0(uint64_t a1)
{
  v2 = sub_1000F4068();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000ED1EC(uint64_t a1)
{
  v2 = sub_1000F4068();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000ED228@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1000F3D70(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_1000ED298()
{
  v1 = (v0[9] + OBJC_IVAR____TtC20privatecloudcomputed11RateLimiter_model);
  swift_beginAccess();
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v0[2] = *v1;
  v0[3] = v2;
  v0[4] = v3;
  v0[5] = v4;
  sub_1000EED08();

  v5 = sub_1001CF940();
  v7 = v6;
  v0[10] = v5;
  v0[11] = v6;
  v8 = v0[9];

  v9 = swift_allocObject();
  v0[12] = v9;
  v9[2] = v5;
  v9[3] = v7;
  v9[4] = v8;
  sub_100012038(v5, v7);
  v10 = qword_100227960;

  if (v10 != -1)
  {
    swift_once();
  }

  v0[13] = blockingIOQueue;

  return _swift_task_switch(sub_1000ED574, 0, 0);
}

uint64_t sub_1000ED574()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = swift_task_alloc();
  v0[14] = v3;
  v3[2] = v1;
  v3[3] = sub_1000F2340;
  v3[4] = v2;
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_1000ED67C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000024, 0x80000001001E3340, sub_10001582C, v3, &type metadata for () + 8);
}

uint64_t sub_1000ED67C()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_1000ED970;
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 72);

    v3 = sub_1000ED7B0;
    v4 = v5;
  }

  return _swift_task_switch(v3, v4, 0);
}

uint64_t sub_1000ED7B0()
{
  v14 = v0;

  v1 = sub_1001D0E50();
  v2 = sub_1001D1DD0();

  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[10];
  v4 = v0[11];
  if (v3)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    sub_1001CFB10();
    sub_1000F4520(&qword_1002302F0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v8 = sub_1001D23A0();
    v10 = sub_1000954E0(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "wrote persisted ratelimiter, file=%s", v6, 0xCu);
    sub_100011CF0(v7);
  }

  sub_100011E48(v5, v4);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000ED970()
{
  v1 = *(v0 + 72);

  return _swift_task_switch(sub_1000ED9E8, v1, 0);
}

uint64_t sub_1000ED9E8()
{
  v23 = v0;

  swift_errorRetain();
  v1 = sub_1001D0E50();
  v2 = sub_1001D1DE0();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v22 = v5;
    *v3 = 136315394;
    sub_1001CFB10();
    sub_1000F4520(&qword_1002302F0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v6 = sub_1001D23A0();
    v8 = sub_1000954E0(v6, v7, &v22);

    *(v3 + 4) = v8;
    *(v3 + 12) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v9;
    *v4 = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "unable to write persisted ratelimiter, file=%s, error=%@", v3, 0x16u);
    sub_100011F00(v4, &unk_1002301D0, &qword_1001D4F50);

    sub_100011CF0(v5);
  }

  else
  {
  }

  v10 = sub_1001D0E50();
  v11 = sub_1001D1DD0();

  v12 = os_log_type_enabled(v10, v11);
  v14 = v0[10];
  v13 = v0[11];
  if (v12)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v22 = v16;
    *v15 = 136315138;
    sub_1001CFB10();
    sub_1000F4520(&qword_1002302F0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v17 = sub_1001D23A0();
    v19 = sub_1000954E0(v17, v18, &v22);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v10, v11, "wrote persisted ratelimiter, file=%s", v15, 0xCu);
    sub_100011CF0(v16);
  }

  sub_100011E48(v14, v13);

  v20 = v0[1];

  return v20();
}

uint64_t sub_1000EDD68()
{

  v1 = OBJC_IVAR____TtC20privatecloudcomputed11RateLimiter_logger;
  v2 = sub_1001D0E60();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC20privatecloudcomputed11RateLimiter_file;
  v4 = sub_1001CFB10();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_100011CF0((v0 + OBJC_IVAR____TtC20privatecloudcomputed11RateLimiter_config));
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for RateLimiter(uint64_t a1)
{
  result = qword_10022C6A0;
  if (!qword_10022C6A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000EDECC(uint64_t a1)
{
  result = sub_1001D0E60();
  if (v2 <= 0x3F)
  {
    result = sub_1001CFB10();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1000EDFD0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1000EE018(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1000EE068(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_1000EE088, v3, 0);
}

uint64_t sub_1000EE088()
{
  sub_1000EE0E8(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000EE0E8(uint64_t a1)
{
  v2 = sub_100011AC0(&qword_100227DF8, &qword_1001DD020);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - v3;
  v5 = type metadata accessor for RateLimitConfiguration(0);
  v6 = __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v20 - v9;
  sub_1000F43C0(a1, &v20 - v9, type metadata accessor for RateLimitConfiguration);
  sub_1000F43C0(a1, v8, type metadata accessor for RateLimitConfiguration);
  v11 = sub_1001D0E50();
  v12 = sub_1001D1DC0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134218240;
    v14 = *(v5 + 20);
    v21 = v5;
    v15 = *&v10[v14];
    sub_1000F4490(v10, type metadata accessor for RateLimitConfiguration);
    *(v13 + 4) = v15;
    v5 = v21;
    *(v13 + 12) = 2048;
    v16 = *&v8[*(v5 + 20) + 8];
    sub_1000F4490(v8, type metadata accessor for RateLimitConfiguration);
    *(v13 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v11, v12, "rate limit discovered for rate with count=%lu, duration=%f", v13, 0x16u);
  }

  else
  {
    sub_1000F4490(v10, type metadata accessor for RateLimitConfiguration);

    sub_1000F4490(v8, type metadata accessor for RateLimitConfiguration);
  }

  swift_beginAccess();
  v17 = *(a1 + 32);
  v23[1] = *(a1 + 16);
  v23[2] = v17;
  v24 = *(a1 + 48);
  v23[0] = *a1;
  sub_1000F43C0(a1 + *(v5 + 20), v4, type metadata accessor for RateLimitTimingDetails);
  v18 = type metadata accessor for RateLimitTimingDetails(0);
  (*(*(v18 - 8) + 56))(v4, 0, 1, v18);
  sub_10001B9AC(v23, v22);
  sub_100017758(v4, v23);
  sub_1000E3E7C(a1);
  return swift_endAccess();
}

uint64_t sub_1000EE40C(uint64_t a1)
{
  v2 = v1;
  v78 = a1;
  v3 = sub_100011AC0(&qword_10022C7C0, &qword_1001DD040);
  __chkstk_darwin(v3 - 8);
  v5 = &v66 - v4;
  v81 = type metadata accessor for RequestLog.Element(0);
  v79 = *(v81 - 8);
  v6 = __chkstk_darwin(v81);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v66 - v10;
  __chkstk_darwin(v9);
  v13 = &v66 - v12;
  v14 = sub_1001CFD60();
  v73 = *(v14 - 8);
  v74 = v14;
  v15 = __chkstk_darwin(v14);
  v70 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v80 = &v66 - v17;
  v18 = sub_100011AC0(&qword_1002292A0, &qword_1001D6410);
  v19 = *(v18 - 8);
  v76 = v18;
  v77 = v19;
  v20 = __chkstk_darwin(v18);
  v69 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v75 = &v66 - v22;
  v23 = sub_1001D0E50();
  v24 = sub_1001D1DD0();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "ratelimiter undergoing trim", v25, 2u);
  }

  v26 = (v2 + OBJC_IVAR____TtC20privatecloudcomputed11RateLimiter_model);
  v27 = swift_beginAccess();
  __chkstk_darwin(v27);
  *(&v66 - 2) = v78;
  v29 = sub_1000EC8BC(sub_1000EB4B4, (&v66 - 4), v28);
  v71 = 0;
  *v26 = v29;

  v72 = v2;
  v30 = *(v2 + OBJC_IVAR____TtC20privatecloudcomputed11RateLimiter_config + 24);
  v68 = (v2 + OBJC_IVAR____TtC20privatecloudcomputed11RateLimiter_config);
  sub_100024DC8((v2 + OBJC_IVAR____TtC20privatecloudcomputed11RateLimiter_config), v30);
  v31 = v75;
  sub_1001D04A0();
  sub_1001D0210();
  v32 = *(v77 + 8);
  v77 += 8;
  v67 = v32;
  v32(v31, v76);
  result = sub_1001CFCF0();
  v75 = v26;
  v35 = v26 + 1;
  v34 = v26[1];
  v37 = v34 + 3;
  v36 = v34[3];
  if (v36)
  {
    v38 = (v79 + 56);
    while (v36 >= 1)
    {
      v40 = v34[4];
      v41 = v34[2];
      if (v40 < v41)
      {
        v41 = 0;
      }

      v42 = (*(v79 + 80) + 40) & ~*(v79 + 80);
      v43 = *(v79 + 72);
      sub_1000F43C0(v34 + v42 + (v40 - v41) * v43, v8, type metadata accessor for RequestLog.Element);
      sub_1000F4428(v8, v11, type metadata accessor for RequestLog.Element);
      sub_1000F4428(v11, v13, type metadata accessor for RequestLog.Element);
      if ((sub_1001CFCD0() & 1) == 0)
      {
        sub_1000F4490(v13, type metadata accessor for RequestLog.Element);
        goto LABEL_20;
      }

      if (*v37 <= 0)
      {
        v39 = 1;
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100118F1C();
        }

        v44 = *v35;
        result = sub_1000F4428(*v35 + v42 + *(*v35 + 32) * v43, v5, type metadata accessor for RequestLog.Element);
        v45 = v44[4];
        v46 = __OFADD__(v45, 1);
        v47 = v45 + 1;
        if (v46)
        {
          goto LABEL_26;
        }

        v48 = v44[3];
        if (v47 >= v44[2])
        {
          v47 = 0;
        }

        v44[4] = v47;
        if (__OFSUB__(v48, 1))
        {
          goto LABEL_27;
        }

        v39 = 0;
        v44[3] = v48 - 1;
      }

      sub_1000F4490(v13, type metadata accessor for RequestLog.Element);
      (*v38)(v5, v39, 1, v81);
      result = sub_100011F00(v5, &qword_10022C7C0, &qword_1001DD040);
      v34 = *v35;
      v37 = (*v35 + 24);
      v36 = *v37;
      if (!*v37)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

LABEL_20:
  v49 = v74;
  v50 = *(v73 + 8);
  v50(v80, v74);
  swift_endAccess();
  v51 = v75;
  v52 = *v75;
  v53 = *(v72 + OBJC_IVAR____TtC20privatecloudcomputed11RateLimiter_rateLimitUnmatchedRequestStorageTimeout);
  v54 = swift_beginAccess();
  __chkstk_darwin(v54);
  *(&v66 - 4) = v78;
  *(&v66 - 3) = v53;
  *(&v66 - 2) = v52;

  v55 = sub_10005EAC4(sub_1000F435C, (&v66 - 6));
  result = *(v51 + 1);
  v56 = *(result + 24);
  if (v56 < v55)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v55 < 0)
  {
LABEL_29:
    __break(1u);
    return result;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_100118F1C();
  }

  v57 = v75;
  sub_1000F3280(v55, v56, (*(v75 + 1) + 16), *(v75 + 1) + ((*(v79 + 80) + 40) & ~*(v79 + 80)));
  swift_endAccess();

  swift_beginAccess();
  sub_100024DC8(v68, v68[3]);
  v58 = v69;
  sub_1001D0430();
  sub_1001D0210();
  v67(v58, v76);
  v59 = v70;
  v60 = v78;
  v61 = sub_1001CFCF0();
  v62 = *(v57 + 3);
  __chkstk_darwin(v61);
  *(&v66 - 2) = v59;
  v63 = sub_1000F2568(sub_1000F4384, (&v66 - 4), v62);

  *(v57 + 3) = v63;
  v64 = (v50)(v59, v49);
  __chkstk_darwin(v64);
  *(&v66 - 2) = v60;
  *(v57 + 2) = sub_1000EC344(sub_1000F43A4, (&v66 - 4), v65);
  swift_endAccess();
}

uint64_t sub_1000EEC78()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000130E0;

  return sub_1000ED278();
}

unint64_t sub_1000EED08()
{
  result = qword_10022C760;
  if (!qword_10022C760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C760);
  }

  return result;
}

uint64_t sub_1000EED5C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v238 = a3;
  v219 = a2;
  v217 = a4;
  v6 = sub_100011AC0(&qword_10022C7C0, &qword_1001DD040);
  v7 = __chkstk_darwin(v6 - 8);
  v208 = &v198 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v211 = &v198 - v9;
  v10 = sub_100011AC0(&qword_1002288B0, &qword_1001D5FC0);
  v11 = __chkstk_darwin(v10 - 8);
  v206 = &v198 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v259 = (&v198 - v13);
  v225 = sub_100011AC0(&qword_1002292A8, &qword_1001D6418);
  isa = *(v225 - 8);
  __chkstk_darwin(v225);
  v224 = &v198 - v14;
  v246 = type metadata accessor for RequestLog.Element(0);
  v253 = *(v246 - 8);
  __chkstk_darwin(v246);
  v257 = &v198 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v244 = sub_1001CFD60();
  v258 = *(v244 - 8);
  v16 = __chkstk_darwin(v244);
  v207 = &v198 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v210 = &v198 - v19;
  v20 = __chkstk_darwin(v18);
  v205 = &v198 - v21;
  v22 = __chkstk_darwin(v20);
  v230 = &v198 - v23;
  v24 = __chkstk_darwin(v22);
  v256 = &v198 - v25;
  v26 = __chkstk_darwin(v24);
  v209 = &v198 - v27;
  __chkstk_darwin(v26);
  v215 = &v198 - v28;
  v236 = type metadata accessor for RateLimitConfiguration(0);
  v233 = *(v236 - 8);
  v29 = __chkstk_darwin(v236);
  v202 = &v198 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v223 = &v198 - v32;
  v33 = __chkstk_darwin(v31);
  v227 = &v198 - v34;
  v35 = __chkstk_darwin(v33);
  v222 = &v198 - v36;
  v37 = __chkstk_darwin(v35);
  v204 = &v198 - v38;
  v39 = __chkstk_darwin(v37);
  v203 = &v198 - v40;
  v41 = __chkstk_darwin(v39);
  v212 = (&v198 - v42);
  __chkstk_darwin(v41);
  v44 = (&v198 - v43);
  v45 = sub_100011AC0(&qword_100227E08, &unk_1001D3B30);
  v46 = __chkstk_darwin(v45 - 8);
  v213 = &v198 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v49 = &v198 - v48;
  v50 = sub_1001D0260();
  v51 = *(v50 - 8);
  v52 = __chkstk_darwin(v50);
  v214 = &v198 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v55 = &v198 - v54;
  v56 = (v4 + OBJC_IVAR____TtC20privatecloudcomputed11RateLimiter_model);
  swift_beginAccess();
  v57 = a1;
  v58 = a1;
  v59 = v219;
  sub_1000E3ADC(v58, v219, v49);
  swift_endAccess();
  if ((*(v51 + 48))(v49, 1, v50) != 1)
  {
    v66 = *(v51 + 32);
    v66(v55, v49, v50);
    v67 = sub_1001D0E50();
    v68 = sub_1001D1DE0();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&_mh_execute_header, v67, v68, "rate limit applied from cached denials", v69, 2u);
    }

    v70 = v217;
    v66(v217, v55, v50);
    return (*(v51 + 56))(v70, 0, 1, v50);
  }

  v240 = v4;
  v201 = v50;
  sub_100011F00(v49, &qword_100227E08, &unk_1001D3B30);
  v60 = swift_allocObject();
  *(v60 + 16) = 0;
  v237 = v60;
  *(v60 + 24) = 1;
  v61 = swift_beginAccess();
  v261[0] = 0;
  __chkstk_darwin(v61);
  *(&v198 - 4) = v57;
  *(&v198 - 3) = v261;
  *(&v198 - 2) = v59;
  v63 = sub_1000E95B0(sub_1000F4500, (&v198 - 6), v62);
  v232 = v63;
  v239 = v57;
  v231 = v56;
  if (v261[0] == 1)
  {
    __chkstk_darwin(v63);
    *(&v198 - 2) = v57;
    v65 = sub_1000EC8BC(sub_1000F492C, (&v198 - 4), v64);
    v198 = 0;
    *v56 = v65;
  }

  else
  {
    v198 = 0;
  }

  v72 = v244;
  v73 = v253;
  v74 = v259;
  v75 = v227;
  result = swift_endAccess();
  v77 = v232;
  v78 = *(v232 + 2);
  v218 = OBJC_IVAR____TtC20privatecloudcomputed11RateLimiter_logger;
  v229 = v78;
  if (!v78)
  {
LABEL_77:
    v141 = v77;

    v142 = sub_1001D0E50();
    v143 = sub_1001D1DC0();
    if (os_log_type_enabled(v142, v143))
    {
      v144 = swift_slowAlloc();
      *v144 = 134217984;
      v145 = *(v141 + 2);

      *(v144 + 4) = v145;

      _os_log_impl(&_mh_execute_header, v142, v143, "no rate limit applied from among matching configurations with count=%ld", v144, 0xCu);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    (*(v51 + 56))(v217, 1, 1, v201);
  }

  v79 = 0;
  v221 = (v240 + OBJC_IVAR____TtC20privatecloudcomputed11RateLimiter_config);
  v199 = v75 + 8;
  v235 = v258 + 1;
  v220 = (isa + 8);
  v216 = v258 + 2;
  *&v76 = 134218496;
  v200 = v76;
  v234 = v51;
  v228 = v44;
LABEL_12:
  if (v79 >= *(v77 + 2))
  {
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
    return result;
  }

  sub_1000F43C0(&v77[((*(v233 + 80) + 32) & ~*(v233 + 80)) + *(v233 + 72) * v79], v44, type metadata accessor for RateLimitConfiguration);
  v80 = (v44 + *(v236 + 20));
  if (!*v80)
  {

    v146 = sub_1001D0E50();
    v147 = sub_1001D1DE0();
    v148 = os_log_type_enabled(v146, v147);
    v149 = v215;
    if (v148)
    {
      v150 = swift_slowAlloc();
      *v150 = 0;
      _os_log_impl(&_mh_execute_header, v146, v147, "rate limit applied for rate with count=0", v150, 2u);
    }

    v151 = v209;
    sub_1001CFCE0();
    type metadata accessor for RateLimitTimingDetails(0);
    sub_1000F24C4(0.0, 1.0);
    sub_1001CFCE0();
    isa = v235->isa;
    (isa)(v151, v72);
    v152 = v212;
    sub_1000F43C0(v44, v212, type metadata accessor for RateLimitConfiguration);
    (v216->isa)(v151, v149, v72);
    v153 = v214;
    sub_1000F18AC(v152, v151, v214);
    swift_beginAccess();
    v154 = v213;
    v155 = v201;
    (*(v51 + 16))(v213, v153, v201);
    v259 = *(v51 + 56);
    (v259)(v154, 0, 1, v155);
    v156 = v219;
    sub_10001BB84(v219, &v262);
    sub_100017918(v154, v156);
    swift_endAccess();
    (isa)(v215, v72);
    sub_1000F4490(v44, type metadata accessor for RateLimitConfiguration);
    v157 = v217;
    (*(v51 + 32))(v217, v153, v155);
    (v259)(v157, 0, 1, v155);
  }

  v243 = *v80;
  v241 = v79 + 1;
  v81 = v231[1];
  v226 = v80;
  v82 = v44[1];
  v252 = *v44;
  v255 = v82;
  v83 = v44[3];
  v251 = v44[2];
  v250 = v83;
  v84 = v44[5];
  v248 = v44[4];
  v258 = v84;
  v85 = v44[6];

  v86 = v256;
  sub_1001CFCF0();
  v44 = v81[4];
  if (v81[2] >= v44 + v81[3])
  {
    v87 = (v44 + v81[3]);
  }

  else
  {
    v87 = v81[2];
  }

  v88 = (*(v73 + 80) + 40) & ~*(v73 + 80);
  *&v262 = v81;
  *(&v262 + 1) = v44;
  *&v263 = v87;
  v242 = v81;

  v249 = 0;
  v247 = v85;
  v245 = (v85 + 56);
  v90 = v257;
  v254 = v88;
  while (1)
  {
    if (v44 == v87)
    {
      v91 = sub_1000FA2C0(v89);
      v92 = v262;
      if ((v91 & 1) == 0)
      {

        isa = v235->isa;
        (isa)(v86, v72);
        v120 = v239;
        if (sub_1000F15B8(v237))
        {
          sub_100024DC8(v221, v221[3]);
          v121 = v224;
          sub_1001D0530();
          v122 = v223;
          sub_1001D0210();
          v123 = v121;
          v124 = v230;
          result = (*v220)(v123, v225);
          v51 = v234;
          v44 = v228;
          if (v249 >= v243)
          {
            v125 = v262;
            if (v262 <= 1)
            {
              v125 = 1;
            }

            v126 = v125 - 1;
            v127 = __CFADD__(v243, v126);
            v128 = v243 + v126;
            if (v127)
            {
              goto LABEL_97;
            }

            if (v249 >= v128)
            {
              v166 = v120;
              sub_1000F43C0(v228, v122, type metadata accessor for RateLimitConfiguration);
              v74 = v202;
              sub_1000F43C0(v44, v202, type metadata accessor for RateLimitConfiguration);
              v73 = v206;
              sub_10001208C(v238, v206, &qword_1002288B0, &qword_1001D5FC0);
              v104 = v205;
              (v216->isa)(v205, v166, v72);

              v167 = sub_1001D0E50();
              LODWORD(v258) = sub_1001D1DE0();
              v259 = v167;
              v97 = v122;
              if (!os_log_type_enabled(v167, v258))
              {
                goto LABEL_91;
              }

              v168 = swift_slowAlloc();
              *v168 = v200;
              v169 = v74;
              v170 = v236;
              v171 = *(v97 + *(v236 + 20));
              v172 = v237;

              sub_1000F4490(v97, type metadata accessor for RateLimitConfiguration);
              *(v168 + 4) = v171;
              *(v168 + 12) = 2048;
              v173 = *(v169 + *(v170 + 20) + 8);
              sub_1000F4490(v169, type metadata accessor for RateLimitConfiguration);
              *(v168 + 14) = v173;
              *(v168 + 22) = 2048;
              v174 = v206;
              v175 = v205;
              v176 = sub_1000F15B8(v172);
              sub_100011F00(v174, &qword_1002288B0, &qword_1001D5FC0);
              v177 = v175;
              v178 = isa;
              (isa)(v177, v72);
              *(v168 + 24) = v176;
              v51 = v234;

              v179 = v259;
              _os_log_impl(&_mh_execute_header, v259, v258, "rate limit applied for rate with count=%lu, duration=%f, sessionProgress=%lu", v168, 0x20u);

              goto LABEL_92;
            }

            sub_1000F43C0(v228, v222, type metadata accessor for RateLimitConfiguration);
            sub_1000F43C0(v44, v227, type metadata accessor for RateLimitConfiguration);
            sub_10001208C(v238, v74, &qword_1002288B0, &qword_1001D5FC0);
            (v216->isa)(v124, v120, v72);

            v129 = sub_1001D0E50();
            v130 = sub_1001D1DC0();
            v258 = v129;
            if (os_log_type_enabled(v129, v130))
            {
              v131 = swift_slowAlloc();
              *v131 = v200;
              v132 = v236;
              v133 = *(v236 + 20);
              LODWORD(v255) = v130;
              v134 = v222;
              v135 = *(v222 + v133);
              v136 = v237;

              sub_1000F4490(v134, type metadata accessor for RateLimitConfiguration);
              *(v131 + 4) = v135;
              *(v131 + 12) = 2048;
              v137 = *(v132 + 20);
              v74 = v259;
              v138 = *(v199 + v137);
              sub_1000F4490(v227, type metadata accessor for RateLimitConfiguration);
              *(v131 + 14) = v138;
              *(v131 + 22) = 2048;
              v139 = sub_1000F15B8(v136);
              sub_100011F00(v74, &qword_1002288B0, &qword_1001D5FC0);
              (isa)(v230, v72);
              *(v131 + 24) = v139;

              v73 = v253;

              v140 = v258;
              _os_log_impl(&_mh_execute_header, v258, v255, "rate limit softened for rate with count=%lu, duration=%f, sessionProgress=%lu", v131, 0x20u);
            }

            else
            {

              sub_100011F00(v74, &qword_1002288B0, &qword_1001D5FC0);
              (isa)(v124, v72);
              sub_1000F4490(v222, type metadata accessor for RateLimitConfiguration);

              sub_1000F4490(v227, type metadata accessor for RateLimitConfiguration);
            }

            v51 = v234;
          }
        }

        else
        {
          v51 = v234;
          v44 = v228;
          if (v249 >= v243)
          {
            v158 = v203;
            sub_1000F43C0(v228, v203, type metadata accessor for RateLimitConfiguration);
            v159 = v204;
            sub_1000F43C0(v44, v204, type metadata accessor for RateLimitConfiguration);
            v160 = sub_1001D0E50();
            v161 = sub_1001D1DE0();
            if (os_log_type_enabled(v160, v161))
            {
              v162 = swift_slowAlloc();
              *v162 = 134218240;
              v163 = v236;
              v164 = *(v158 + *(v236 + 20));
              sub_1000F4490(v158, type metadata accessor for RateLimitConfiguration);
              *(v162 + 4) = v164;
              *(v162 + 12) = 2048;
              v165 = *(v159 + *(v163 + 20) + 8);
              sub_1000F4490(v159, type metadata accessor for RateLimitConfiguration);
              *(v162 + 14) = v165;
              _os_log_impl(&_mh_execute_header, v160, v161, "rate limit applied for rate with count=%lu, duration=%f", v162, 0x16u);
            }

            else
            {
              sub_1000F4490(v158, type metadata accessor for RateLimitConfiguration);

              sub_1000F4490(v159, type metadata accessor for RateLimitConfiguration);
            }

            v180 = v211;
            v181 = v208;
            v178 = isa;
            goto LABEL_93;
          }
        }

        result = sub_1000F4490(v44, type metadata accessor for RateLimitConfiguration);
        v79 = v241;
        v77 = v232;
        if (v241 == v229)
        {
          goto LABEL_77;
        }

        goto LABEL_12;
      }
    }

    else
    {
      v92 = v262;
    }

    v93 = *(&v262 + 1);
    v44 = ++*(&v262 + 1);
    sub_1000F43C0(v92 + v88 + *(v73 + 72) * v93, v90, type metadata accessor for RequestLog.Element);
    sub_1000F4520(&qword_100230230, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    if (sub_1001D1770())
    {
      break;
    }

LABEL_21:
    v89 = sub_1000F4490(v90, type metadata accessor for RequestLog.Element);
    v87 = v263;
  }

  v94 = *v90;
  v51 = *(*v90 + 24);
  v95 = *(*v90 + 32);
  v96 = *(*v90 + 40);
  v97 = v94[6];
  v98 = v94[7];
  v99 = v94[8];
  if (v255)
  {
    v100 = v252 == v94[2] && v255 == v51;
    if (!v100 && (sub_1001D2470() & 1) == 0)
    {
      v73 = v253;
      v74 = v259;
      goto LABEL_20;
    }
  }

  isa = v98;
  v101 = v250;
  if (!v250 || (v251 == v95 ? (v102 = v250 == v96) : (v102 = 0), v102 || (sub_1001D2470() & 1) != 0))
  {

    v103 = isa;

    v74 = v259;
  }

  else
  {

    sub_1000E47D4(46, 0xE100000000000000, v95, v96);
    if (v114)
    {

LABEL_60:
      v74 = v259;
      goto LABEL_19;
    }

    v115 = sub_1001D1920();
    v119 = sub_1000E505C(v251, v101, v115, v116, v117, v118);

    v74 = v259;
    v103 = isa;
    if ((v119 & 1) == 0)
    {
LABEL_18:

LABEL_19:

      v73 = v253;
LABEL_20:
      v90 = v257;
      v86 = v256;
      v88 = v254;
      goto LABEL_21;
    }
  }

  if (v258 && (v248 != v97 || v258 != v103) && (sub_1001D2470() & 1) == 0)
  {
    goto LABEL_18;
  }

  v104 = *(v247 + 16);
  if (v104)
  {
    v105 = v245;
    do
    {
      if (!*(v99 + 16))
      {
LABEL_55:

        v72 = v244;
        goto LABEL_60;
      }

      v106 = *(v105 - 1);
      v97 = *v105;
      v107 = *(v105 - 3);
      v108 = *(v105 - 2);

      v109 = sub_100006028(v107, v108);
      if ((v110 & 1) == 0)
      {

        v72 = v244;
        v74 = v259;
        goto LABEL_19;
      }

      v111 = (*(v99 + 56) + 16 * v109);
      if (*v111 == v106 && v111[1] == v97)
      {
      }

      else
      {
        v113 = sub_1001D2470();

        if ((v113 & 1) == 0)
        {
          goto LABEL_55;
        }
      }

      v105 += 4;
      --v104;
    }

    while (v104);

    v72 = v244;
    v74 = v259;
  }

  else
  {
  }

  v73 = v253;
  if (v249 != -1)
  {
    ++v249;
    goto LABEL_20;
  }

  __break(1u);
LABEL_91:

  sub_100011F00(v73, &qword_1002288B0, &qword_1001D5FC0);
  v182 = v104;
  v183 = isa;
  (isa)(v182, v72);
  sub_1000F4490(v97, type metadata accessor for RateLimitConfiguration);

  v178 = v183;
  sub_1000F4490(v74, type metadata accessor for RateLimitConfiguration);
LABEL_92:
  v180 = v211;
  v181 = v208;
LABEL_93:
  v184 = v231[1];
  v185 = *(v44 + 1);
  v262 = *v44;
  v263 = v185;
  v264 = *(v44 + 2);
  v265 = v44[6];

  v186 = v215;
  sub_1001CFCF0();
  sub_1000F6E7C(v186, &v262, v184, v180);

  v178(v186, v72);
  sub_10001208C(v180, v181, &qword_10022C7C0, &qword_1001DD040);
  v187 = v246;
  result = (*(v253 + 48))(v181, 1, v246);
  if (result == 1)
  {
    goto LABEL_98;
  }

  v188 = *(v187 + 20);
  v189 = v216->isa;
  (v216->isa)(v186, v181 + v188, v72);
  sub_1000F4490(v181, type metadata accessor for RequestLog.Element);
  v190 = v207;
  sub_1001CFCE0();
  v178(v186, v72);
  type metadata accessor for RateLimitTimingDetails(0);
  sub_1000F24C4(0.0, 1.0);
  v191 = v210;
  sub_1001CFCE0();
  v178(v190, v72);
  v192 = v212;
  sub_1000F43C0(v44, v212, type metadata accessor for RateLimitConfiguration);
  v189(v186, v191, v72);
  v193 = v214;
  sub_1000F18AC(v192, v186, v214);
  swift_beginAccess();
  v194 = v213;
  v195 = v201;
  (*(v51 + 16))(v213, v193, v201);
  v259 = *(v51 + 56);
  (v259)(v194, 0, 1, v195);
  v196 = v219;
  sub_10001BB84(v219, v261);
  sub_100017918(v194, v196);
  swift_endAccess();
  (isa)(v210, v72);
  sub_100011F00(v211, &qword_10022C7C0, &qword_1001DD040);
  sub_1000F4490(v44, type metadata accessor for RateLimitConfiguration);
  v197 = v217;
  (*(v51 + 32))(v217, v193, v195);
  (v259)(v197, 0, 1, v195);
}

uint64_t sub_1000F0CD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[17] = a3;
  v4[18] = v3;
  v4[15] = a1;
  v4[16] = a2;
  sub_100011AC0(&qword_1002288B0, &qword_1001D5FC0);
  v4[19] = swift_task_alloc();
  v5 = sub_1001CFDA0();
  v4[20] = v5;
  v4[21] = *(v5 - 8);
  v4[22] = swift_task_alloc();
  v6 = type metadata accessor for RequestLog.Element(0);
  v4[23] = v6;
  v4[24] = *(v6 - 8);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();

  return _swift_task_switch(sub_1000F0E5C, v3, 0);
}

uint64_t sub_1000F0E5C(uint64_t a1)
{
  v2 = sub_1001D0E50();
  v3 = sub_1001D1DD0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "ratelimiter remembering completed request", v4, 2u);
  }

  v5 = v1[24];
  v6 = v1[18];
  v7 = v1[15];

  v8 = v6 + OBJC_IVAR____TtC20privatecloudcomputed11RateLimiter_model;
  swift_beginAccess();
  v9 = *(v8 + 8);
  v63 = v5;
  v64 = v9;
  v10 = *(v5 + 80);
  v11 = v9[4];
  if (v9[2] >= v9[3] + v11)
  {
    v12 = v9[3] + v11;
  }

  else
  {
    v12 = v9[2];
  }

  v62 = (v10 + 40) & ~v10;
  v65 = *(v8 + 8);
  v66 = v9[4];
  v67 = v12;

  while (1)
  {
    if (v11 == v12)
    {
      if ((sub_1000FA2C0(v13) & 1) == 0)
      {
        v29 = v1 + 26;
        v30 = v1[26];
        v31 = v1[23];
        v32 = v1[17];
        v33 = v1[15];

        v34 = *(v31 + 20);
        v35 = sub_1001CFD60();
        (*(*(v35 - 8) + 16))(v30 + v34, v32, v35);
        type metadata accessor for RequestLog.Element.Storage();
        v36 = swift_allocObject();
        v38 = *(v33 + 16);
        v37 = *(v33 + 32);
        v39 = *v33;
        *(v36 + 64) = *(v33 + 48);
        *(v36 + 32) = v38;
        *(v36 + 48) = v37;
        *(v36 + 16) = v39;
        *v30 = v36;
        sub_10001BB84(v33, (v1 + 2));
        sub_1000F6648(v30);
        goto LABEL_30;
      }

      v11 = v66;
      v64 = v65;
    }

    v16 = v1[27];
    v17 = v1[25];
    v18 = v1[15];
    v19 = v64 + v62 + *(v63 + 72) * v11++;
    v66 = v11;
    sub_1000F43C0(v19, v16, type metadata accessor for RequestLog.Element);
    sub_1000F4428(v16, v17, type metadata accessor for RequestLog.Element);
    v20 = *(*v17 + 16);
    v21 = *(*v17 + 24);
    v23 = *(*v17 + 32);
    v22 = *(*v17 + 40);
    v25 = *(*v17 + 48);
    v24 = *(*v17 + 56);
    v26 = v20 == *v18 && v21 == v7[1];
    if (v26 || (sub_1001D2470() & 1) != 0)
    {
      v27 = v23 == v7[2] && v22 == v7[3];
      if (v27 || (sub_1001D2470() & 1) != 0)
      {
        v28 = v25 == v7[4] && v24 == v7[5];
        if (v28 || (sub_1001D2470() & 1) != 0)
        {
          v14 = v7[6];

          LOBYTE(v14) = sub_1000CF830(v15, v14);

          if (v14)
          {
            break;
          }
        }
      }
    }

    v13 = sub_1000F4490(v1[25], type metadata accessor for RequestLog.Element);
    v12 = v67;
  }

  v29 = v1 + 29;
  v40 = v1[29];
  v41 = v1[28];
  v43 = v1[25];
  v42 = v1[26];
  v44 = v1[23];
  v45 = v1[17];

  sub_1000F4428(v43, v41, type metadata accessor for RequestLog.Element);
  sub_1000F4428(v41, v40, type metadata accessor for RequestLog.Element);
  v46 = *v40;
  v47 = *(v44 + 20);
  v48 = sub_1001CFD60();
  (*(*(v48 - 8) + 16))(&v42[v47], v45, v48);
  *v42 = v46;

  sub_1000F6648(v42);
  sub_1000F4490(v42, type metadata accessor for RequestLog.Element);
LABEL_30:
  v49 = *v29;
  v51 = v1[20];
  v50 = v1[21];
  v52 = v1[19];
  v53 = v1[16];
  sub_1000F4490(v49, type metadata accessor for RequestLog.Element);
  swift_endAccess();
  sub_10001208C(v53, v52, &qword_1002288B0, &qword_1001D5FC0);
  if ((*(v50 + 48))(v52, 1, v51) == 1)
  {
    sub_100011F00(v1[19], &qword_1002288B0, &qword_1001D5FC0);
  }

  else
  {
    v54 = v1[21];
    v55 = v1[22];
    v56 = v1[20];
    v58 = v1[17];
    v57 = v1[18];
    (*(v54 + 32))(v55, v1[19], v56);
    v59 = OBJC_IVAR____TtC20privatecloudcomputed11RateLimiter_config;
    swift_beginAccess();
    sub_1000FA2C8(v55, v58, (v57 + v59));
    swift_endAccess();
    (*(v54 + 8))(v55, v56);
  }

  v60 = swift_task_alloc();
  v1[30] = v60;
  *v60 = v1;
  v60[1] = sub_1000F13E8;

  return sub_1000ED278();
}

uint64_t sub_1000F13E8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000F15B8(uint64_t a1)
{
  v3 = a1 + 16;
  result = *(a1 + 16);
  if (*(v3 + 8) == 1)
  {
    __chkstk_darwin(result);
    v4 = sub_1000EC158(sub_1000F4568);
    if (v5)
    {
      v6 = 0;
    }

    else
    {
      v6 = v4;
    }

    swift_beginAccess();
    result = v6;
    *(a1 + 16) = v6;
    *(a1 + 24) = 0;
  }

  return result;
}

uint64_t sub_1000F1678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v20 = a4;
  v16[1] = a3;
  v18 = a1;
  v19 = sub_1001CFD60();
  v17 = *(v19 - 8);
  __chkstk_darwin(v19);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100011AC0(&qword_1002292A0, &qword_1001D6410);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v16 - v9;
  v11 = a2 + OBJC_IVAR____TtC20privatecloudcomputed11RateLimiter_model;
  swift_beginAccess();
  v12 = *(v11 + 24);
  sub_100024DC8((a2 + OBJC_IVAR____TtC20privatecloudcomputed11RateLimiter_config), *(a2 + OBJC_IVAR____TtC20privatecloudcomputed11RateLimiter_config + 24));

  sub_1001D0430();
  sub_1001D0210();
  (*(v8 + 8))(v10, v7);
  sub_1001CFCF0();
  v13 = sub_1000FB3F4(v6, v18, v12);

  result = (*(v17 + 8))(v6, v19);
  v15 = v20;
  *v20 = v13;
  *(v15 + 8) = 0;
  return result;
}

uint64_t sub_1000F18AC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v33 = sub_1001D0230();
  v5 = *(v33 - 8);
  __chkstk_darwin(v33);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001CFD60();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v31 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = a1[1];
  v13 = a1[3];
  v29 = a1[2];
  v30 = v11;
  v14 = a1[5];
  v28 = a1[4];
  v15 = a1[6];
  v16 = *(v15 + 16);
  if (v16)
  {
    v24 = v9;
    v25 = v8;
    v26 = a2;
    v27 = a1;
    v34 = _swiftEmptyArrayStorage;
    v23[2] = v12;
    v17 = v14;

    v23[1] = v13;

    v23[0] = v17;

    sub_100151624(0, v16, 0);
    v18 = v34;
    v19 = v15 + 56;
    do
    {

      sub_1001D0220();
      v34 = v18;
      v21 = v18[2];
      v20 = v18[3];
      if (v21 >= v20 >> 1)
      {
        sub_100151624((v20 > 1), v21 + 1, 1);
        v18 = v34;
      }

      v18[2] = v21 + 1;
      (*(v5 + 32))(v18 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v21, v7, v33);
      v19 += 32;
      --v16;
    }

    while (v16);
    a2 = v26;
    a1 = v27;
    v9 = v24;
    v8 = v25;
  }

  else
  {
  }

  type metadata accessor for RateLimitConfiguration(0);
  (*(v9 + 16))(v31, a2, v8);
  sub_1001D0250();
  (*(v9 + 8))(a2, v8);
  return sub_1000F4490(a1, type metadata accessor for RateLimitConfiguration);
}

uint64_t sub_1000F1BF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a4;
  v43 = sub_1001D0150();
  v7 = *(v43 - 8);
  __chkstk_darwin(v43);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for RateLimitTimingDetails(0);
  __chkstk_darwin(v38);
  v37 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001CFD60();
  v34 = *(v11 - 8);
  v35 = v11;
  __chkstk_darwin(v11);
  v36 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = *(a1 + 48);
  v14 = *(v13 + 16);
  if (v14)
  {
    v31 = a2;
    v32 = a1;
    v33 = a3;
    *&v40[0] = _swiftEmptyArrayStorage;
    sub_1001516AC(0, v14, 0);
    v15 = *&v40[0];
    v16 = v13 + 56;
    do
    {

      sub_1001D0140();
      *&v40[0] = v15;
      v18 = *(v15 + 16);
      v17 = *(v15 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1001516AC((v17 > 1), v18 + 1, 1);
        v15 = *&v40[0];
      }

      *(v15 + 16) = v18 + 1;
      (*(v7 + 32))(v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v18, v9, v43);
      v16 += 32;
      --v14;
    }

    while (v14);
    a1 = v32;
    a2 = v31;
  }

  v19 = a2 + OBJC_IVAR____TtC20privatecloudcomputed11RateLimiter_model;
  swift_beginAccess();
  v20 = *(v19 + 8);
  v21 = (a1 + *(type metadata accessor for RateLimitConfiguration(0) + 20));
  v22 = *(a1 + 16);
  v40[0] = *a1;
  v40[1] = v22;
  v41 = *(a1 + 32);
  v42 = *(a1 + 48);
  v43 = *&v40[0];
  v32 = v41;
  v33 = v22;

  v23 = v36;
  sub_1001CFCF0();
  v31 = sub_1000F69E4(v23, v40, v20);

  v25 = v34;
  v24 = v35;
  (*(v34 + 8))(v23, v35);
  v30 = *v21;
  v26 = v38;
  v27 = v21;
  v28 = v37;
  sub_1000F43C0(v27, v37, type metadata accessor for RateLimitTimingDetails);
  (*(v25 + 32))(v23, v28 + *(v26 + 24), v24);

  return sub_1001D0130();
}

uint64_t sub_1000F205C(uint64_t a1)
{
  v2 = sub_1001D0E50();
  v3 = sub_1001D1DC0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "ratelimiter is being reset", v4, 2u);
  }

  v5 = *(v1 + 40);

  v6 = (v5 + OBJC_IVAR____TtC20privatecloudcomputed11RateLimiter_model);
  swift_beginAccess();
  v7 = sub_1000DADF8(_swiftEmptyArrayStorage);

  *v6 = v7;
  v8 = *sub_1001D0110();

  v6[1] = v8;
  v9 = sub_1000DABDC(_swiftEmptyArrayStorage);

  v6[2] = v9;
  v6[3] = sub_1000DB010(_swiftEmptyArrayStorage);
  swift_endAccess();

  v10 = swift_task_alloc();
  *(v1 + 48) = v10;
  *v10 = v1;
  v10[1] = sub_1000F220C;

  return sub_1000ED278();
}

uint64_t sub_1000F220C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000F2300()
{
  sub_100011E48(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000F2370(void *a1, uint64_t a2, void *a3)
{
  sub_1001D2580();
  v6 = a1[6];
  sub_1001D1880();
  sub_1001D1880();
  sub_1001D1880();
  sub_10001B6B8(v13, v6);
  sub_1001D25C0();
  v7 = sub_1001D1FD0();
  *(a3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
  v8 = a3[6] + 56 * v7;
  v9 = *(a1 + 1);
  *v8 = *a1;
  *(v8 + 16) = v9;
  *(v8 + 32) = *(a1 + 2);
  *(v8 + 48) = a1[6];
  v10 = a3[7];
  v11 = sub_1001D0260();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * v7, a2, v11);
  ++a3[2];
  return result;
}

void sub_1000F24C4(double a1, double a2)
{
  if (a1 == a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = a2 - a1;
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return;
  }

  swift_stdlib_random();
  if (v4 * vcvtd_n_f64_u64(0, 0x35uLL) + a1 == a2)
  {
    sub_1000F24C4(a1, a2);
  }
}

void *sub_1000F2568(uint64_t (*a1)(char *, char *), uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a3 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v9 = &v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = sub_1000F26E8(v9, v7, a3, v5);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v11 = swift_slowAlloc();
  v12 = sub_1000F2A28(v11, v7, a3, v5);

  if (!v3)
  {
    return v12;
  }

  return result;
}

uint64_t sub_1000F26E8(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(char *, char *))
{
  v40 = a4;
  v32 = a2;
  v33 = a1;
  v5 = type metadata accessor for SessionLog.Element(0);
  v39 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v38 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001CFDA0();
  result = __chkstk_darwin(v7);
  v41 = a3;
  v42 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v14 = a3[8];
  v13 = a3 + 8;
  v12 = v14;
  v15 = 1 << *(v13 - 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;
  v36 = v9 + 16;
  v37 = v9;
  v34 = 0;
  v35 = (v9 + 8);
  while (v17)
  {
    v43 = (v17 - 1) & v17;
    v19 = __clz(__rbit64(v17)) | (v11 << 6);
    v20 = v42;
LABEL_11:
    v23 = v41;
    (*(v37 + 16))(v20, v41[6] + *(v37 + 72) * v19, v7);
    v24 = v19;
    v25 = v23[7] + *(v39 + 72) * v19;
    v26 = v7;
    v27 = v38;
    sub_1000F43C0(v25, v38, type metadata accessor for SessionLog.Element);
    v28 = v44;
    v29 = v40(v20, v27);
    v44 = v28;
    if (v28)
    {
      sub_1000F4490(v27, type metadata accessor for SessionLog.Element);
      return (*v35)(v20, v26);
    }

    v30 = v29;
    sub_1000F4490(v27, type metadata accessor for SessionLog.Element);
    result = (*v35)(v20, v26);
    v7 = v26;
    v17 = v43;
    if (v30)
    {
      *(v33 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      if (__OFADD__(v34++, 1))
      {
        __break(1u);
        return sub_1000F2AB8(v33, v32, v34, v41);
      }
    }
  }

  v21 = v11;
  v20 = v42;
  while (1)
  {
    v11 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v11 >= v18)
    {
      return sub_1000F2AB8(v33, v32, v34, v41);
    }

    v22 = v13[v11];
    ++v21;
    if (v22)
    {
      v43 = (v22 - 1) & v22;
      v19 = __clz(__rbit64(v22)) | (v11 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1000F2A28(void *result, uint64_t a2, void *a3, uint64_t (*a4)(char *, char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1000F26E8(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1000F2AB8(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for SessionLog.Element(0);
  v48 = *(v8 - 8);
  v9 = __chkstk_darwin(v8 - 8);
  v55 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v47 = v43 - v11;
  v54 = sub_1001CFDA0();
  v52 = *(v54 - 8);
  v12 = __chkstk_darwin(v54);
  v14 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v46 = v43 - v15;
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_100011AC0(&qword_100227B90, &qword_1001DD050);
  result = sub_1001D21C0();
  v17 = result;
  if (a2 < 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = *a1;
  }

  v19 = 0;
  v43[1] = v52 + 16;
  v44 = a2;
  v53 = v52 + 32;
  v20 = result + 64;
  v45 = a1;
  v43[0] = a4;
  v21 = v54;
  while (v18)
  {
    v22 = v14;
    v23 = __clz(__rbit64(v18));
    v49 = (v18 - 1) & v18;
LABEL_16:
    v26 = v23 | (v19 << 6);
    v27 = a4[6];
    v28 = v52;
    v51 = *(v52 + 72);
    v29 = v46;
    (*(v52 + 16))(v46, v27 + v51 * v26, v21);
    v30 = a4[7];
    v50 = *(v48 + 72);
    v31 = v30 + v50 * v26;
    v32 = v47;
    sub_1000F43C0(v31, v47, type metadata accessor for SessionLog.Element);
    v33 = *(v28 + 32);
    v14 = v22;
    v33(v22, v29, v21);
    sub_1000F4428(v32, v55, type metadata accessor for SessionLog.Element);
    sub_1000F4520(&qword_100227AD8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    result = sub_1001D1730();
    v34 = -1 << *(v17 + 32);
    v35 = result & ~v34;
    v36 = v35 >> 6;
    if (((-1 << v35) & ~*(v20 + 8 * (v35 >> 6))) == 0)
    {
      v38 = 0;
      v39 = (63 - v34) >> 6;
      a2 = v44;
      a1 = v45;
      while (++v36 != v39 || (v38 & 1) == 0)
      {
        v40 = v36 == v39;
        if (v36 == v39)
        {
          v36 = 0;
        }

        v38 |= v40;
        v41 = *(v20 + 8 * v36);
        if (v41 != -1)
        {
          v37 = __clz(__rbit64(~v41)) + (v36 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v37 = __clz(__rbit64((-1 << v35) & ~*(v20 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
    a2 = v44;
    a1 = v45;
LABEL_26:
    *(v20 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
    v33((*(v17 + 48) + v37 * v51), v14, v54);
    result = sub_1000F4428(v55, *(v17 + 56) + v37 * v50, type metadata accessor for SessionLog.Element);
    ++*(v17 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v43[0];
    v18 = v49;
    if (!a3)
    {
      return v17;
    }
  }

  v24 = v19;
  while (1)
  {
    v19 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v19 >= a2)
    {
      return v17;
    }

    v25 = a1[v19];
    ++v24;
    if (v25)
    {
      v22 = v14;
      v23 = __clz(__rbit64(v25));
      v49 = (v25 - 1) & v25;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1000F2F48(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_100011AC0(&qword_100227B00, &qword_1001DB950);
  result = sub_1001D21C0();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v35 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = 16 * (v13 | (v11 << 6));
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = (v17 + v16);
    v22 = v21[1];
    v36 = *v21;
    sub_1001D2580();

    sub_1001D1880();
    result = sub_1001D25C0();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = 16 * v26;
    v32 = (*(v9 + 48) + v31);
    *v32 = v19;
    v32[1] = v20;
    v33 = (*(v9 + 56) + v31);
    *v33 = v36;
    v33[1] = v22;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v35;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1000F31A0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a3[2];
  v7 = v6 + result;
  v8 = *a3;
  if (v6 + result >= *a3)
  {
    v9 = *a3;
  }

  else
  {
    v9 = 0;
  }

  v10 = v6 + a2;
  if (v10 >= v8)
  {
    v11 = *a3;
  }

  else
  {
    v11 = 0;
  }

  v12 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
  }

  else
  {
    v14 = v7 - v9;
    v15 = v10 - v11;
    if (v12)
    {
      v16 = v14 < v15;
    }

    else
    {
      v16 = 1;
    }

    v17 = v16;
    v18 = type metadata accessor for RequestLog.Element(0);
    v20 = *(v18 - 8);
    result = v18 - 8;
    v19 = v20;
    if (v17 == 1)
    {
      v21 = 0;
      v15 = 0;
LABEL_18:
      *a5 = a4 + *(v19 + 72) * v14;
      *(a5 + 8) = v12;
      *(a5 + 16) = v21;
      *(a5 + 24) = v15;
      *(a5 + 32) = v17;
      return result;
    }

    v12 = v8 - v14;
    if (!__OFSUB__(v8, v14))
    {
      v21 = a4;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1000F3280(unint64_t a1, unint64_t a2, uint64_t *a3, unint64_t a4)
{
  sub_1000F31A0(a1, a2, a3, a4, v12);
  if (v12[3])
  {
    v8 = v13;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = v12[2];
  }

  if (v12[0])
  {
    type metadata accessor for RequestLog.Element(0);
    swift_arrayDestroy();
  }

  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = 1;
  }

  if ((v10 & 1) == 0)
  {
    type metadata accessor for RequestLog.Element(0);
    swift_arrayDestroy();
  }

  return sub_1000F3364(a1, a2, a3, a4);
}

unint64_t sub_1000F3364(unint64_t result, unint64_t a2, uint64_t *a3, unint64_t a4)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
    goto LABEL_171;
  }

  if (v4 < 1)
  {
    return result;
  }

  v6 = a3[1];
  v7 = a3[2];
  v8 = v7 + result;
  v9 = *a3;
  if ((v7 + result) >= *a3)
  {
    v10 = *a3;
  }

  else
  {
    v10 = 0;
  }

  v11 = v7 + a2;
  if ((v7 + a2) >= v9)
  {
    v12 = *a3;
  }

  else
  {
    v12 = 0;
  }

  v13 = v6 - a2;
  if (__OFSUB__(v6, a2))
  {
    goto LABEL_169;
  }

  v15 = a2 - result;
  v16 = v8 - v10;
  v17 = v11 - v12;
  if (v13 > result)
  {
    v13 = v7 + v4;
    if (!__OFADD__(v7, v4))
    {
      v18 = __OFSUB__(v13, v9);
      if (v13 >= v9)
      {
        v13 -= v9;
        if (v18)
        {
          goto LABEL_174;
        }
      }

      if (!result)
      {
        goto LABEL_126;
      }

      if (v17 <= 0)
      {
        v19 = *a3;
      }

      else
      {
        v19 = v11 - v12;
      }

      if (v16 <= 0)
      {
        v20 = *a3;
      }

      else
      {
        v20 = v8 - v10;
      }

      if (v7 < v20)
      {
        if (v19 >= v13)
        {
          if (result <= 0)
          {
            goto LABEL_126;
          }

          v17 = result;
          v40 = *(*(type metadata accessor for RequestLog.Element(0) - 8) + 72);
          v41 = v40 * v13;
          result = a4 + v40 * v13;
          v42 = v40 * v7;
          v43 = a4 + v40 * v7 + v40 * v17;
          if (v41 >= v42 && result < v43)
          {
            if (v41 != v42)
            {
              goto LABEL_124;
            }

            goto LABEL_126;
          }

LABEL_125:
          result = swift_arrayInitWithTakeFrontToBack();
          goto LABEL_126;
        }

        if (v17 <= 0)
        {
          goto LABEL_113;
        }

        v21 = result;
        v15 = v9 - v4;
        v22 = *(*(type metadata accessor for RequestLog.Element(0) - 8) + 72);
        v23 = v22 * v15;
        v24 = a4 + v22 * v15 + v22 * v17;
        if (v23 <= 0 && v24 > a4)
        {
          result = v21;
          if (!v23)
          {
LABEL_113:
            v18 = __OFSUB__(result, v17);
            v17 = result - v17;
            if (!v18)
            {
              goto LABEL_120;
            }

            __break(1u);
LABEL_164:
            result = swift_arrayInitWithTakeFrontToBack();
            goto LABEL_165;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        else
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        result = v21;
        goto LABEL_113;
      }

      if (v19 < v13)
      {
        v35 = result;
        if (v16 > 0)
        {
          v36 = *(*(type metadata accessor for RequestLog.Element(0) - 8) + 72);
          if (v36 * v4 < 0 || v36 * v4 >= v36 * v16)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v36)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v49 = *a3 - v4;
        result = type metadata accessor for RequestLog.Element(0);
        v50 = *(*(result - 8) + 72);
        if (v50 * v49 <= 0 && a4 + v50 * v49 + v50 * v4 > a4)
        {
          if (v50 * v49)
          {
            result = swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          result = swift_arrayInitWithTakeFrontToBack();
        }

        v52 = v35 - v17;
        if (__OFSUB__(v35, v17))
        {
          goto LABEL_176;
        }

        if (v52 < 1)
        {
          goto LABEL_126;
        }

        result = a4 + v50 * v13;
        v53 = a3[2] * v50;
        if (v50 * v13 >= v53 && result < a4 + v53 + v50 * v52)
        {
          if (v50 * v13 != v53)
          {
            goto LABEL_124;
          }

          goto LABEL_126;
        }

        goto LABEL_125;
      }

      if (__OFSUB__(0, v16))
      {
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
        goto LABEL_177;
      }

      if (v16 > 0)
      {
        v15 = result;
        v45 = *(*(type metadata accessor for RequestLog.Element(0) - 8) + 72);
        v46 = v45 * (v17 - v16);
        if (v46 < 0 || v46 >= v45 * v16)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          result = v15;
          if (!v46)
          {
            goto LABEL_119;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        result = v15;
      }

LABEL_119:
      v17 = result - v16;
      if (__OFSUB__(result, v16))
      {
LABEL_180:
        __break(1u);
        goto LABEL_181;
      }

LABEL_120:
      if (v17 < 1)
      {
        goto LABEL_126;
      }

      v54 = a3[2];
      v55 = *(*(type metadata accessor for RequestLog.Element(0) - 8) + 72);
      result = a4 + v55 * v13;
      if (v55 * v13 >= v55 * v54 && result < a4 + v55 * v54 + v55 * v17)
      {
        if (v55 * v13 != v55 * v54)
        {
LABEL_124:
          result = swift_arrayInitWithTakeBackToFront();
        }

LABEL_126:
        a3[2] = v13;
        v56 = a3[1];
        v18 = __OFSUB__(v56, v4);
        v57 = v56 - v4;
        if (!v18)
        {
          goto LABEL_166;
        }

        __break(1u);
        goto LABEL_129;
      }

      goto LABEL_125;
    }

    goto LABEL_170;
  }

  v26 = v7 + v6;
  if (__OFADD__(v7, v6))
  {
LABEL_171:
    __break(1u);
    goto LABEL_172;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    v27 = __OFSUB__(v26, v9);
    if (v26 < v9)
    {
      goto LABEL_37;
    }

    v26 -= v9;
    if (!v27)
    {
      goto LABEL_37;
    }

    __break(1u);
  }

  if (v26 < 0)
  {
    v18 = __OFADD__(v26, v9);
    v26 += v9;
    if (v18)
    {
      goto LABEL_182;
    }
  }

LABEL_37:
  v18 = __OFSUB__(v6, v4);
  v28 = v6 - v4;
  if (v18)
  {
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

  v29 = v28 + v7;
  if (v29 >= v9)
  {
    v30 = v9;
  }

  else
  {
    v30 = 0;
  }

  if (!v13)
  {
    goto LABEL_165;
  }

  v31 = v29 - v30;
  if (v29 - v30 <= 0)
  {
    v32 = v9;
  }

  else
  {
    v32 = v29 - v30;
  }

  if (v26 <= 0)
  {
    v33 = v9;
  }

  else
  {
    v33 = v26;
  }

  if (v17 >= v33)
  {
    v37 = v9 - v17;
    v38 = __OFSUB__(v9, v17);
    if (v32 >= v16)
    {
      if (v38)
      {
LABEL_179:
        __break(1u);
        goto LABEL_180;
      }

      if (v37 > 0)
      {
        v48 = *(*(type metadata accessor for RequestLog.Element(0) - 8) + 72);
        result = a4 + v48 * v16;
        if (v48 * v16 < v48 * v17 || result >= a4 + v48 * v17 + v48 * v37)
        {
          result = swift_arrayInitWithTakeFrontToBack();
        }

        else if (v48 * v16 != v48 * v17)
        {
          result = swift_arrayInitWithTakeBackToFront();
        }

        v18 = __OFADD__(v16, v37);
        v16 += v37;
        if (v18)
        {
          goto LABEL_185;
        }

        v64 = __OFSUB__(v16, *a3);
        if (v16 >= *a3)
        {
          v16 -= *a3;
          if (v64)
          {
            goto LABEL_189;
          }
        }
      }

      if (v26 < 1)
      {
        goto LABEL_165;
      }

      result = type metadata accessor for RequestLog.Element(0);
      v65 = *(*(result - 8) + 72);
      v66 = v65 * v16;
      if (((v65 * v16) & 0x8000000000000000) == 0 && v66 < v65 * v26)
      {
        if (!v66)
        {
          goto LABEL_165;
        }

        goto LABEL_163;
      }
    }

    else
    {
      if (v38)
      {
LABEL_178:
        __break(1u);
        goto LABEL_179;
      }

      if (v37 > 0)
      {
        v39 = *(*(type metadata accessor for RequestLog.Element(0) - 8) + 72);
        result = a4 + v39 * v16;
        if (v39 * v16 < v39 * v17 || result >= a4 + v39 * v17 + v39 * v37)
        {
          result = swift_arrayInitWithTakeFrontToBack();
        }

        else if (v39 * v16 != v39 * v17)
        {
          result = swift_arrayInitWithTakeBackToFront();
        }

        v18 = __OFADD__(v16, v37);
        v16 += v37;
        if (v18)
        {
          goto LABEL_184;
        }

        v61 = __OFSUB__(v16, *a3);
        if (v16 >= *a3)
        {
          v16 -= *a3;
          if (v61)
          {
            goto LABEL_188;
          }
        }
      }

      result = type metadata accessor for RequestLog.Element(0);
      v62 = *(*(result - 8) + 72);
      v63 = v62 * v16;
      if (v62 * v16 < 0 || v63 >= v62 * v4)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (v63)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      if (v4 >= *a3)
      {
        v15 = v4 - *a3;
        if (__OFSUB__(v4, *a3))
        {
          goto LABEL_186;
        }
      }

      if (v31 <= 0)
      {
        goto LABEL_165;
      }

      if (v15 * v62 <= 0 && a4 + v15 * v62 + v62 * v31 > a4)
      {
        if (!(v15 * v62))
        {
          goto LABEL_165;
        }

        goto LABEL_163;
      }
    }

    goto LABEL_164;
  }

  if (v32 >= v16)
  {
    if (v13 <= 0)
    {
      goto LABEL_165;
    }

    v47 = *(*(type metadata accessor for RequestLog.Element(0) - 8) + 72);
    result = a4 + v47 * v16;
    if (v47 * v16 >= v47 * v17 && result < a4 + v47 * v17 + v47 * v13)
    {
      if (v47 * v16 == v47 * v17)
      {
        goto LABEL_165;
      }

LABEL_163:
      result = swift_arrayInitWithTakeBackToFront();
      goto LABEL_165;
    }

    goto LABEL_164;
  }

  v15 = v9 - v16;
  if (__OFSUB__(v9, v16))
  {
LABEL_177:
    __break(1u);
    goto LABEL_178;
  }

  if (v15 > 0)
  {
    v34 = *(*(type metadata accessor for RequestLog.Element(0) - 8) + 72);
    result = a4 + v34 * v16;
    if (v34 * v16 >= v34 * v17 && result < a4 + v34 * v17 + v34 * v15)
    {
      if (v34 * v16 != v34 * v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      goto LABEL_130;
    }

LABEL_129:
    result = swift_arrayInitWithTakeFrontToBack();
LABEL_130:
    v18 = __OFADD__(v17, v15);
    v17 += v15;
    if (v18)
    {
LABEL_183:
      __break(1u);
LABEL_184:
      __break(1u);
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
      return result;
    }

    v58 = __OFSUB__(v17, *a3);
    if (v17 >= *a3)
    {
      v17 -= *a3;
      if (v58)
      {
        goto LABEL_187;
      }
    }
  }

  v59 = v13 - v15;
  if (__OFSUB__(v13, v15))
  {
LABEL_181:
    __break(1u);
LABEL_182:
    __break(1u);
    goto LABEL_183;
  }

  if (v59 >= 1)
  {
    result = type metadata accessor for RequestLog.Element(0);
    v60 = *(*(result - 8) + 72);
    if (v60 * v17 <= 0 && a4 + v60 * v17 + v60 * v59 > a4)
    {
      if (!(v60 * v17))
      {
        goto LABEL_165;
      }

      goto LABEL_163;
    }

    goto LABEL_164;
  }

LABEL_165:
  v67 = a3[1];
  v18 = __OFSUB__(v67, v4);
  v57 = v67 - v4;
  if (v18)
  {
LABEL_173:
    __break(1u);
LABEL_174:
    __break(1u);
    goto LABEL_175;
  }

LABEL_166:
  a3[1] = v57;
  return result;
}

uint64_t sub_1000F3BE8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000017 && 0x80000001001E5150 == a2 || (sub_1001D2470() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4C74736575716572 && a2 == 0xEA0000000000676FLL || (sub_1001D2470() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F4C6465696E6564 && a2 == 0xE900000000000067 || (sub_1001D2470() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4C6E6F6973736573 && a2 == 0xEA0000000000676FLL)
  {

    return 3;
  }

  else
  {
    v5 = sub_1001D2470();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1000F3D70(void *a1)
{
  v3 = sub_100011AC0(&qword_10022C768, &qword_1001DD028);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = a1[3];
  sub_100024DC8(a1, v7);
  sub_1000F4068();
  sub_1001D25E0();
  if (!v1)
  {
    v10 = 0;
    sub_1000F40BC();
    sub_1001D2290();
    v7 = v11;
    v10 = 1;
    sub_1000F4110();
    sub_1001D2290();
    v10 = 2;
    sub_1000F4164();
    v9 = 0;
    sub_1001D2290();
    v10 = 3;
    sub_1000F41B8();
    sub_1001D2290();
    (*(v4 + 8))(v6, v3);
  }

  sub_100011CF0(a1);
  return v7;
}

unint64_t sub_1000F4068()
{
  result = qword_10022C770;
  if (!qword_10022C770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C770);
  }

  return result;
}

unint64_t sub_1000F40BC()
{
  result = qword_10022C778;
  if (!qword_10022C778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C778);
  }

  return result;
}

unint64_t sub_1000F4110()
{
  result = qword_10022C780;
  if (!qword_10022C780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C780);
  }

  return result;
}

unint64_t sub_1000F4164()
{
  result = qword_10022C788;
  if (!qword_10022C788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C788);
  }

  return result;
}

unint64_t sub_1000F41B8()
{
  result = qword_10022C790;
  if (!qword_10022C790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C790);
  }

  return result;
}

unint64_t sub_1000F420C()
{
  result = qword_10022C7A0;
  if (!qword_10022C7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C7A0);
  }

  return result;
}

unint64_t sub_1000F4260()
{
  result = qword_10022C7A8;
  if (!qword_10022C7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C7A8);
  }

  return result;
}

unint64_t sub_1000F42B4()
{
  result = qword_10022C7B0;
  if (!qword_10022C7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C7B0);
  }

  return result;
}

unint64_t sub_1000F4308()
{
  result = qword_10022C7B8;
  if (!qword_10022C7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C7B8);
  }

  return result;
}

uint64_t sub_1000F43C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000F4428(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000F4490(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000F4520(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000F4588(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v2 = sub_1001CFA40();
  v22 = v2;
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001CFB10();
  v24 = *(v6 - 8);
  v25 = v6;
  v7 = __chkstk_darwin(v6);
  v23 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v21 - v9;
  v27 = 0xD000000000000017;
  v28 = 0x80000001001E5130;
  v11 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v12 = *(v3 + 104);
  v12(v5, enum case for URL.DirectoryHint.inferFromPath(_:), v2);
  sub_100011EAC();
  sub_1001CFB00();
  v13 = *(v3 + 8);
  v14 = v22;
  v13(v5, v22);
  v27 = 0xD000000000000017;
  v28 = 0x80000001001E5130;
  v12(v5, v11, v14);
  v15 = v23;
  sub_1001CFB00();
  v13(v5, v14);
  v16 = v15;
  sub_10014D240(v10, v15);
  v17 = *(v24 + 8);
  v18 = v16;
  v19 = v25;
  v17(v18, v25);
  return (v17)(v10, v19);
}

unint64_t sub_1000F4828()
{
  result = qword_10022C7D0;
  if (!qword_10022C7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C7D0);
  }

  return result;
}

unint64_t sub_1000F4880()
{
  result = qword_10022C7D8;
  if (!qword_10022C7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C7D8);
  }

  return result;
}

unint64_t sub_1000F48D8()
{
  result = qword_10022C7E0;
  if (!qword_10022C7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C7E0);
  }

  return result;
}

uint64_t sub_1000F4944(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1000F498C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000F49E8(void *a1)
{
  v3 = v1;
  v5 = sub_100011AC0(&qword_10022C808, &qword_1001DD2C8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_100024DC8(a1, a1[3]);
  sub_1000F5358();
  sub_1001D25F0();
  v14 = 0;
  sub_1001D2300();
  if (!v2)
  {
    v13 = 1;
    sub_1001D2300();
    v12 = 2;
    sub_1001D2300();
    v11 = *(v3 + 48);
    v10[15] = 3;
    sub_100011AC0(&qword_1002292B8, &qword_1001DD2C0);
    sub_1000F53AC(&qword_1002292C0, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
    sub_1001D2340();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000F4C20(uint64_t a1)
{
  v2 = sub_1000F5358();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F4C5C(uint64_t a1)
{
  v2 = sub_1000F5358();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F4C98(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v6 = a1[5];
  v5 = a1[6];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[6];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1001D2470() & 1) == 0 || (v2 != v7 || v4 != v8) && (sub_1001D2470() & 1) == 0 || (v3 != v9 || v6 != v10) && (sub_1001D2470() & 1) == 0)
  {
    return 0;
  }

  return sub_1000CF830(v5, v11);
}

Swift::Int sub_1000F4DA8()
{
  v1 = *(v0 + 48);
  sub_1001D2580();
  sub_1001D1880();
  sub_1001D1880();
  sub_1001D1880();
  sub_10001B6B8(v3, v1);
  return sub_1001D25C0();
}

void sub_1000F4E44(uint64_t a1)
{
  v3 = *(v1 + 48);
  sub_1001D1880();
  sub_1001D1880();
  sub_1001D1880();

  sub_10001B6B8(a1, v3);
}

Swift::Int sub_1000F4EC0()
{
  v1 = *(v0 + 48);
  sub_1001D2580();
  sub_1001D1880();
  sub_1001D1880();
  sub_1001D1880();
  sub_10001B6B8(v3, v1);
  return sub_1001D25C0();
}

double sub_1000F4F58@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1000F5018(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

unint64_t sub_1000F4FC4()
{
  result = qword_10022C7E8;
  if (!qword_10022C7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C7E8);
  }

  return result;
}

uint64_t sub_1000F5018@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100011AC0(&qword_10022C7F0, &qword_1001DD2B8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - v7;
  sub_100024DC8(a1, a1[3]);
  sub_1000F5358();
  sub_1001D25E0();
  if (v2)
  {
    return sub_100011CF0(a1);
  }

  v29 = 0;
  v9 = sub_1001D2250();
  v11 = v10;
  v23 = v9;
  v28 = 1;
  v12 = sub_1001D2250();
  v24 = v13;
  v21 = v12;
  v27 = 2;
  v20 = sub_1001D2250();
  v22 = v14;
  sub_100011AC0(&qword_1002292B8, &qword_1001DD2C0);
  v26 = 3;
  sub_1000F53AC(&qword_10022C800, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
  sub_1001D2290();
  (*(v6 + 8))(v8, v5);
  v15 = v25;

  v16 = v24;

  v17 = v22;

  sub_100011CF0(a1);

  *a2 = v23;
  a2[1] = v11;
  v19 = v20;
  a2[2] = v21;
  a2[3] = v16;
  a2[4] = v19;
  a2[5] = v17;
  a2[6] = v15;
  return result;
}

unint64_t sub_1000F5358()
{
  result = qword_10022C7F8;
  if (!qword_10022C7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C7F8);
  }

  return result;
}

uint64_t sub_1000F53AC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_100011DF4(&qword_1002292B8, &qword_1001DD2C0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000F542C()
{
  result = qword_10022C810;
  if (!qword_10022C810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C810);
  }

  return result;
}

unint64_t sub_1000F5484()
{
  result = qword_10022C818;
  if (!qword_10022C818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C818);
  }

  return result;
}

unint64_t sub_1000F54DC()
{
  result = qword_10022C820;
  if (!qword_10022C820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C820);
  }

  return result;
}

uint64_t sub_1000F5530()
{

  return swift_deallocClassInstance();
}

Swift::Int sub_1000F55C0()
{
  sub_1001D2580();
  v1 = *(*v0 + 64);

  sub_1001D1880();
  sub_1001D1880();
  sub_1001D1880();
  sub_10001B6B8(v3, v1);

  sub_1001CFD60();
  sub_1000FA208(&qword_100229788, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_1001D1740();
  return sub_1001D25C0();
}

uint64_t sub_1000F5704(uint64_t a1)
{
  v3 = *(*v1 + 64);

  sub_1001D1880();
  sub_1001D1880();
  sub_1001D1880();
  sub_10001B6B8(a1, v3);

  sub_1001CFD60();
  sub_1000FA208(&qword_100229788, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  return sub_1001D1740();
}

Swift::Int sub_1000F5830()
{
  sub_1001D2580();
  v1 = *(*v0 + 64);

  sub_1001D1880();
  sub_1001D1880();
  sub_1001D1880();
  sub_10001B6B8(v3, v1);

  sub_1001CFD60();
  sub_1000FA208(&qword_100229788, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_1001D1740();
  return sub_1001D25C0();
}

uint64_t sub_1000F59F0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = v3[3];
  if (v5 != v4[3])
  {
    return 0;
  }

  if (v3 == v4 || v5 == 0)
  {
    return 1;
  }

  else
  {
    return sub_1000F73E4(v4, v3);
  }
}

uint64_t sub_1000F5A2C()
{
  if (*v0)
  {
    return 0x617461646174656DLL;
  }

  else
  {
    return 6778732;
  }
}

uint64_t sub_1000F5A60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 6778732 && a2 == 0xE300000000000000;
  if (v5 || (sub_1001D2470() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1001D2470();

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

uint64_t sub_1000F5B3C(uint64_t a1)
{
  v2 = sub_1000F65F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F5B78(uint64_t a1)
{
  v2 = sub_1000F65F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F5BB4()
{
  if (*v0)
  {
    return 0x6D617473656D6974;
  }

  else
  {
    return 0x617461646174656DLL;
  }
}

uint64_t sub_1000F5C00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x617461646174656DLL && a2 == 0xED00007865646E49;
  if (v6 || (sub_1001D2470() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1001D2470();

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

uint64_t sub_1000F5CEC(uint64_t a1)
{
  v2 = sub_1000F9258();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F5D28(uint64_t a1)
{
  v2 = sub_1000F9258();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F5D64(void *a1, void *a2)
{
  v3 = v2;
  v63 = sub_100011AC0(&qword_10022C8C8, &qword_1001DD490);
  v85 = *(v63 - 8);
  __chkstk_darwin(v63);
  v66 = &v59 - v6;
  v64 = type metadata accessor for RequestLog.Element(0);
  v70 = *(v64 - 8);
  v7 = __chkstk_darwin(v64);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v69 = &v59 - v10;
  v11 = sub_100011AC0(&qword_10022C8D0, &qword_1001DD498);
  v60 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v59 - v12;
  sub_100024DC8(a1, a1[3]);
  sub_1000F65F4();
  v14 = v9;
  sub_1001D25F0();
  LOBYTE(v73[0]) = 0;
  sub_1001D22B0();
  LOBYTE(v73[0]) = 1;
  v61 = v11;
  v59 = v13;
  sub_1001D22B0();
  v15 = sub_1000DB22C(_swiftEmptyArrayStorage);
  v16 = a2[4];
  if (a2[2] >= a2[3] + v16)
  {
    v17 = a2[3] + v16;
  }

  else
  {
    v17 = a2[2];
  }

  v68 = (*(v70 + 80) + 40) & ~*(v70 + 80);
  v74 = a2;
  v75 = v16;
  v76 = v17;
  v65 = (v85 + 1);
  v18 = v63;

  v62 = v14;
  if (v16 == v17)
  {
LABEL_5:
    if (sub_1000F7970())
    {
      goto LABEL_6;
    }

    (*(v60 + 8))(v59, v61);

LABEL_29:

    sub_100011CF0(v77);
    return sub_100011CF0(v78);
  }

  while (1)
  {
LABEL_6:
    v19 = v75;
    v72 = ++v75;
    v67 = v74;
    v20 = v69;
    sub_10005EF28(v74 + v68 + *(v70 + 72) * v19, v69);
    sub_10005EFE8(v20, v14);
    v21 = *v14;
    v22 = *(*v14 + 16);
    v23 = *(*v14 + 32);
    v24 = *(*v14 + 48);
    v84 = *(*v14 + 64);
    v83[1] = v23;
    v83[2] = v24;
    v83[0] = v22;
    v25 = *(v15 + 16);
    v85 = v15;
    if (v25)
    {
      sub_10001BB84(v83, v73);
      sub_1000064E4(v83);
      v27 = v26;
      sub_10001BB30(v83);
      if (v27)
      {
        v28 = v66;
        goto LABEL_22;
      }
    }

    v29 = v21[3];
    v30 = v21[4];
    v31 = v21[5];
    v32 = v21[6];
    v33 = v21[7];
    v34 = v21[8];
    v73[0] = v21[2];
    v73[1] = v29;
    v73[2] = v30;
    v73[3] = v31;
    v73[4] = v32;
    v73[5] = v33;
    v73[6] = v34;
    v71 = v77[4];
    sub_1000F9208(v77, v77[3]);
    sub_1000E555C();

    sub_1001D2420();
    if (v3)
    {

      (*(v60 + 8))(v59, v61);
      v57 = v62;
      goto LABEL_28;
    }

    v35 = v85;
    v36 = v85[2];
    v38 = *(v21 + 1);
    v37 = *(v21 + 2);
    v39 = *(v21 + 3);
    v82 = v21[8];
    v80 = v37;
    v81 = v39;
    v79 = v38;
    sub_10001BB84(&v79, v73);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v73[0] = v35;
    v42 = sub_1000064E4(&v79);
    v43 = v35[2];
    v44 = (v41 & 1) == 0;
    v45 = v43 + v44;
    if (__OFADD__(v43, v44))
    {
      break;
    }

    v46 = v41;
    if (v35[3] >= v45)
    {
      v28 = v66;
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v41 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        sub_1000105BC();
        if ((v46 & 1) == 0)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      sub_10000D63C(v45, isUniquelyReferenced_nonNull_native);
      v47 = sub_1000064E4(&v79);
      v28 = v66;
      if ((v46 & 1) != (v48 & 1))
      {
        goto LABEL_33;
      }

      v42 = v47;
      if ((v46 & 1) == 0)
      {
LABEL_19:
        v49 = v73[0];
        *(v73[0] + 8 * (v42 >> 6) + 64) |= 1 << v42;
        v50 = v49[6] + 56 * v42;
        v51 = v82;
        v53 = v80;
        v52 = v81;
        *v50 = v79;
        *(v50 + 16) = v53;
        *(v50 + 32) = v52;
        *(v50 + 48) = v51;
        *(v49[7] + 8 * v42) = v36;
        v54 = v49[2];
        v55 = __OFADD__(v54, 1);
        v56 = v54 + 1;
        if (v55)
        {
          goto LABEL_32;
        }

        v49[2] = v56;
        goto LABEL_21;
      }
    }

    sub_10001BB30(&v79);
    v49 = v73[0];
    *(*(v73[0] + 56) + 8 * v42) = v36;
LABEL_21:
    v85 = v49;
    v14 = v62;
    v18 = v63;
LABEL_22:
    sub_1000F9208(v78, v78[3]);
    sub_1000F9258();
    sub_1001D2410();
    LOBYTE(v73[0]) = 0;
    sub_1001D2320();
    if (v3)
    {
      (*v65)(v28, v18);
      (*(v60 + 8))(v59, v61);
      v57 = v14;
LABEL_28:
      sub_10005EF8C(v57);

      goto LABEL_29;
    }

    LOBYTE(v73[0]) = 1;
    sub_1001CFD60();
    sub_1000FA208(&qword_100228918, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_1001D2340();
    (*v65)(v28, v18);
    sub_10005EF8C(v14);
    v15 = v85;
    if (v72 == v76)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_1001D24F0();
  __break(1u);
  return result;
}

uint64_t sub_1000F64E0(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
LABEL_8:
    sub_1001D2190();
LABEL_9:
    result = sub_1001D2050();
    v3 = result;
    goto LABEL_10;
  }

  if (a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_9;
  }

LABEL_10:
  *v1 = v3;
  return result;
}

uint64_t sub_1000F657C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1000F92AC(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t type metadata accessor for RequestLog.Element(uint64_t a1)
{
  result = qword_10022C978;
  if (!qword_10022C978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000F65F4()
{
  result = qword_10022C8D8;
  if (!qword_10022C8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C8D8);
  }

  return result;
}

void *sub_1000F6648(uint64_t a1)
{
  v3 = type metadata accessor for RequestLog.Element(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_100011AC0(&qword_10022C7C0, &qword_1001DD040);
  result = __chkstk_darwin(v7 - 8);
  v10 = &v20[-v9];
  v11 = *v1;
  v12 = *(*v1 + 24);
  if (v12)
  {
    v13 = v12 - 1;
    if (__OFSUB__(v12, 1))
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    if (v13 < 0)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    if (v13 >= v12)
    {
LABEL_17:
      __break(1u);
      return result;
    }

    v14 = v11[4] + v13;
    v15 = v11[2];
    if (v14 < v15)
    {
      v15 = 0;
    }

    sub_10005EF28(v11 + ((*(v4 + 80) + 40) & ~*(v4 + 80)) + (v14 - v15) * *(v4 + 72), v6);
    sub_10005EFE8(v6, v10);
    (*(v4 + 56))(v10, 0, 1, v3);
  }

  else
  {
    (*(v4 + 56))(v10, 1, 1, v3);
  }

  result = sub_1000F9CAC(v10);
  v16 = v11[3];
  v17 = v16 + 1;
  if (__OFADD__(v16, 1))
  {
    __break(1u);
    goto LABEL_15;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v1;
  if (*(*v1 + 16) < v17 || (isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1000F7E2C(isUniquelyReferenced_nonNull_native, v17, 0, type metadata accessor for RequestLog.Element, &qword_10022C8F8, &unk_1001DD4B0, type metadata accessor for RequestLog.Element);
    v19 = *v1;
  }

  return sub_1000F80A0((v19 + 16), v19 + ((*(v4 + 80) + 40) & ~*(v4 + 80)), a1);
}

uint64_t sub_1000F6880(uint64_t *a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = sub_1001CFD60();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  type metadata accessor for RequestLog.Element(0);
  sub_1001CFCF0();
  v11 = sub_1001CFCD0();
  (*(v8 + 8))(v10, v7);
  v12 = *a1;
  v13 = *(*a1 + 16);
  v14 = *(*a1 + 48);
  v18[1] = *(*a1 + 32);
  v18[2] = v14;
  v19 = *(v12 + 64);
  v18[0] = v13;
  sub_10001BB84(v18, v17);
  LODWORD(a3) = sub_1000E9A28(a2, v18, a3);
  sub_10001BB30(v18);
  return v11 & ~a3 & 1;
}

uint64_t sub_1000F69E4(uint64_t a1, void *a2, void *a3)
{
  v6 = type metadata accessor for RequestLog.Element(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a3[4];
  if (a3[2] >= a3[3] + v10)
  {
    v11 = a3[3] + v10;
  }

  else
  {
    v11 = a3[2];
  }

  v12 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v58 = a3;
  v59 = v10;
  v60 = v11;

  v51 = 0;
  v52 = v6;
  v49 = a2;
  v53 = a1;
  v54 = v12;
  v55 = v7;
  while (1)
  {
    if (v10 == v11)
    {
      v13 = sub_1000F7970();
      v14 = v58;
      if ((v13 & 1) == 0)
      {

        return v51;
      }
    }

    else
    {
      v14 = v58;
    }

    v15 = v59;
    v10 = ++v59;
    sub_10005EF28(v14 + v12 + *(v7 + 72) * v15, v9);
    sub_1001CFD60();
    sub_1000FA208(&qword_100230230, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    if (sub_1001D1770())
    {
      break;
    }

LABEL_8:
    sub_10005EF8C(v9);
    v11 = v60;
  }

  v16 = *v9;
  v17 = *(*v9 + 24);
  v18 = *(*v9 + 32);
  v20 = *(*v9 + 40);
  v19 = *(*v9 + 48);
  v21 = *(*v9 + 64);
  v57 = *(*v9 + 56);
  v22 = a2[1];
  if (v22)
  {
    if (*a2 != *(v16 + 16) || v22 != v17)
    {
      v24 = v17;
      v25 = sub_1001D2470();
      v17 = v24;
      if ((v25 & 1) == 0)
      {
LABEL_7:
        v12 = v54;
        v7 = v55;
        goto LABEL_8;
      }
    }
  }

  v26 = a2[3];
  v56 = v17;
  if (!v26 || ((v27 = a2[2], v27 == v18) ? (v28 = v26 == v20) : (v28 = 0), v28))
  {
  }

  else
  {
    v50 = sub_1001D2470();

    if ((v50 & 1) == 0)
    {
      sub_1000E47D4(46, 0xE100000000000000, v18, v20);
      if (v29)
      {
        goto LABEL_5;
      }

      v30 = sub_1001D1920();
      v34 = sub_1000E505C(v27, v26, v30, v31, v32, v33);

      if ((v34 & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  v35 = a2[5];
  if (v35 && (a2[4] != v19 || v35 != v57) && (sub_1001D2470() & 1) == 0)
  {
LABEL_5:

LABEL_6:

    goto LABEL_7;
  }

  v36 = a2[6];
  v37 = *(v36 + 16);
  if (!v37)
  {

    goto LABEL_50;
  }

  v38 = (v36 + 56);
  while (2)
  {
    if (!*(v21 + 16))
    {
LABEL_45:

LABEL_48:
      a2 = v49;
      goto LABEL_6;
    }

    v40 = *(v38 - 1);
    v39 = *v38;
    v41 = *(v38 - 3);
    v42 = *(v38 - 2);

    v43 = sub_100006028(v41, v42);
    if ((v44 & 1) == 0)
    {

      v57 = v20;
      v56 = v42;
      goto LABEL_48;
    }

    v45 = (*(v21 + 56) + 16 * v43);
    if (*v45 == v40 && v45[1] == v39)
    {
    }

    else
    {
      v47 = sub_1001D2470();

      if ((v47 & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    v38 += 4;
    if (--v37)
    {
      continue;
    }

    break;
  }

  a2 = v49;
LABEL_50:

  if (v51 != -1)
  {
    ++v51;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000F6E7C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v67 = a2;
  v65 = a1;
  v56 = a4;
  v5 = type metadata accessor for RequestLog.Element(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v68 = (&v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v10 = &v56 - v9;
  v11 = a3[4];
  if (a3[2] >= a3[3] + v11)
  {
    v12 = a3[3] + v11;
  }

  else
  {
    v12 = a3[2];
  }

  v13 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v69 = a3;
  v70 = v11;
  v71 = v12;

  v57 = v5;
  v58 = v6;
  v59 = v13;
  v60 = v10;
  while (1)
  {
    if (v11 == v12)
    {
      v14 = sub_1000F7970();
      v15 = v69;
      if ((v14 & 1) == 0)
      {

        return (*(v6 + 56))(v56, 1, 1, v5);
      }
    }

    else
    {
      v15 = v69;
    }

    v16 = v70;
    v11 = ++v70;
    sub_10005EF28(v15 + v13 + *(v6 + 72) * v16, v10);
    sub_10005EFE8(v10, v68);
    sub_1001CFD60();
    sub_1000FA208(&qword_100230230, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    if (sub_1001D1770())
    {
      v17 = *v68;
      v18 = *(*v68 + 24);
      v19 = *(*v68 + 32);
      v20 = *(*v68 + 40);
      v21 = *(*v68 + 56);
      v22 = *(*v68 + 64);
      v62 = *(*v68 + 48);
      v63 = v21;
      v23 = v67[1];
      v66 = v20;
      if (!v23)
      {
        break;
      }

      if (*v67 == *(v17 + 16) && v23 == v18)
      {
        break;
      }

      v25 = v19;
      v26 = v11;
      v27 = v6;
      v28 = v5;
      v29 = v18;
      v30 = sub_1001D2470();
      v20 = v66;
      v18 = v29;
      v5 = v28;
      v6 = v27;
      v11 = v26;
      v19 = v25;
      if (v30)
      {
        break;
      }
    }

LABEL_7:
    sub_10005EF8C(v68);
    v12 = v71;
  }

  v61 = v11;
  v31 = v67[3];
  v64 = v18;
  if (!v31 || (v32 = v67[2], v32 == v19) && v31 == v20)
  {

    v33 = v63;
  }

  else
  {
    v47 = sub_1001D2470();

    v33 = v63;

    if ((v47 & 1) == 0)
    {
      sub_1000E47D4(46, 0xE100000000000000, v19, v66);
      if (v48)
      {
        goto LABEL_5;
      }

      v49 = sub_1001D1920();
      v53 = sub_1000E505C(v32, v31, v49, v50, v51, v52);

      if ((v53 & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  v34 = v67[5];
  if (v34 && (v67[4] != v62 || v34 != v33) && (sub_1001D2470() & 1) == 0)
  {
LABEL_5:

LABEL_6:
    v13 = v59;
    v10 = v60;
    v11 = v61;

    goto LABEL_7;
  }

  v35 = v67[6];
  v36 = *(v35 + 16);
  if (v36)
  {
    v37 = (v35 + 56);
    while (*(v22 + 16))
    {
      v39 = *(v37 - 1);
      v38 = *v37;
      v41 = *(v37 - 3);
      v40 = *(v37 - 2);

      v42 = sub_100006028(v41, v40);
      if ((v43 & 1) == 0)
      {

        v66 = v64;
        v64 = v40;
        goto LABEL_44;
      }

      v44 = (*(v22 + 56) + 16 * v42);
      if (*v44 == v39 && v44[1] == v38)
      {
      }

      else
      {
        v46 = sub_1001D2470();

        if ((v46 & 1) == 0)
        {
          break;
        }
      }

      v37 += 4;
      if (!--v36)
      {

        v5 = v57;
        goto LABEL_46;
      }
    }

LABEL_44:
    v5 = v57;
    v6 = v58;
    goto LABEL_6;
  }

LABEL_46:

  v54 = v56;
  sub_10005EFE8(v68, v56);
  return (*(v58 + 56))(v54, 0, 1, v5);
}

uint64_t sub_1000F73E4(void *a1, void *a2)
{
  v4 = type metadata accessor for RequestLog.Element(0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v56 - v9;
  v64 = sub_100011AC0(&qword_10022C9E8, &unk_1001DD7F0);
  __chkstk_darwin(v64);
  v12 = &v56 - v11;
  v13 = sub_100011AC0(&qword_10022C7C0, &qword_1001DD040);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v56 - v17;
  v19 = *(v5 + 80);
  v20 = a2[4];
  v21 = a2[3] + v20;
  if (a2[2] < v21)
  {
    v21 = a2[2];
  }

  v72 = a2;
  v73 = v20;
  v74 = v21;
  v22 = a1[4];
  v23 = a1[3] + v22;
  if (a1[2] < v23)
  {
    v23 = a1[2];
  }

  v65 = (v19 + 40) & ~v19;
  v66 = v5;
  v69 = a1;
  v70 = v22;
  v71 = v23;
  v63 = (v5 + 56);
  v24 = (v5 + 48);

  v59 = v12;
  v60 = v4;
  v61 = v10;
  v62 = v8;
  v57 = v18;
  v58 = v16;
  v56 = (v5 + 48);
  while (1)
  {
    v25 = v73;
    v26 = v63;
    if (v73 != v74)
    {
      goto LABEL_9;
    }

    if (sub_1000F7970())
    {
      v25 = v73;
LABEL_9:
      v73 = v25 + 1;
      sub_10005EF28(v72 + v65 + *(v66 + 72) * v25, v18);
      v27 = 0;
      goto LABEL_11;
    }

    v27 = 1;
LABEL_11:
    v28 = *v26;
    (*v26)(v18, v27, 1, v4);
    v29 = v70;
    if (v70 != v71)
    {
      goto LABEL_14;
    }

    if (sub_1000F7970())
    {
      v29 = v70;
LABEL_14:
      v70 = v29 + 1;
      sub_10005EF28(v69 + v65 + *(v66 + 72) * v29, v16);
      v30 = 0;
      goto LABEL_16;
    }

    v30 = 1;
LABEL_16:
    v28(v16, v30, 1, v4);
    v31 = *(v64 + 48);
    sub_1000FA250(v18, v12);
    sub_1000FA250(v16, &v12[v31]);
    v32 = *v24;
    if ((*v24)(v12, 1, v4) == 1)
    {
      break;
    }

    if (v32(&v12[v31], 1, v4) == 1)
    {

      sub_10005EF8C(v12);
      return 0;
    }

    sub_10005EFE8(v12, v10);
    sub_10005EFE8(&v12[v31], v8);
    v33 = *(*v10 + 16);
    v34 = *(*v10 + 24);
    v35 = *(*v10 + 32);
    v36 = *(*v10 + 40);
    v37 = *(*v10 + 48);
    v38 = *(*v10 + 56);
    v39 = *(*v10 + 64);
    v40 = *v8;
    v41 = *(*v8 + 16);
    v42 = *(*v8 + 24);
    v44 = v40[4];
    v43 = v40[5];
    v46 = v40[6];
    v45 = v40[7];
    v67 = v40[8];
    v68 = v43;
    if ((v33 != v41 || v34 != v42) && (v47 = v37, v48 = sub_1001D2470(), v37 = v47, (v48 & 1) == 0) || (v35 != v44 || v36 != v68) && (v49 = v37, v50 = sub_1001D2470(), v37 = v49, (v50 & 1) == 0) || (v37 != v46 || v38 != v45) && (sub_1001D2470() & 1) == 0 || (, , , , , , , v51 = v67, , v52 = sub_1000CF830(v39, v51), , , , , , , , , (v52 & 1) == 0))
    {
      sub_10005EF8C(v62);
      sub_10005EF8C(v61);
LABEL_31:

      return 0;
    }

    v4 = v60;
    v10 = v61;
    v8 = v62;
    v53 = sub_1001CFD30();
    sub_10005EF8C(v8);
    sub_10005EF8C(v10);
    v16 = v58;
    v12 = v59;
    v24 = v56;
    v18 = v57;
    if ((v53 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  v54 = v32(&v12[v31], 1, v4);
  result = 1;
  if (v54 == 1)
  {
    return result;
  }

  sub_1000F9CAC(&v12[v31]);
  return 0;
}

uint64_t sub_1000F7970()
{
  v1 = *v0;
  v3 = *(*v0 + 24);
  v2 = *(*v0 + 32);
  v6 = __OFADD__(v2, v3);
  v4 = v2 + v3;
  if (v6)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v3 < 0)
  {
LABEL_7:
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }

    v7 = *(v1 + 16);
    v6 = __OFADD__(v4, v7);
    v4 += v7;
    if (!v6)
    {
      goto LABEL_9;
    }

LABEL_14:
    __break(1u);
    return result;
  }

  v5 = *(v1 + 16);
  v6 = __OFSUB__(v4, v5);
  v1 = v4 - v5;
  if (v1 < 0 == v6)
  {
    v4 = v1;
    if (v6)
    {
      __break(1u);
      goto LABEL_7;
    }
  }

LABEL_9:
  if (!v4 || v4 == v0[1])
  {
    return 0;
  }

  v0[1] = 0;
  v0[2] = v4;
  return 1;
}

uint64_t sub_1000F79D8(char a1, Swift::Int a2, char a3)
{
  v4 = *v3;
  v5 = (*v3 + 16);
  v6 = *v5;
  if (*v5 >= a2)
  {
    sub_100011AC0(&qword_10022C900, &qword_1001DE6D0);
    v9 = swift_allocObject();
    v12 = *(v4 + 24);
    *(v9 + 16) = v6;
    *(v9 + 24) = v12;
    if (v12 >= 1)
    {
      sub_1000F8CB8(v9 + 16, v9 + 40, v5, v4 + 40);
    }
  }

  else
  {
    sub_1001D0120(a2, a3 & 1);
    if (a1)
    {
      v8 = *(v4 + 24);
      sub_100011AC0(&qword_10022C900, &qword_1001DE6D0);
      v9 = swift_allocObject();
      v10 = j__malloc_size(v9);
      v11 = v10 - 40;
      if (v10 < 40)
      {
        v11 = v10 - 25;
      }

      *(v9 + 16) = v11 >> 4;
      *(v9 + 24) = v8;
      *(v9 + 32) = 0;
      if (v8 >= 1)
      {
        sub_1000F8380(v9 + 16, (v9 + 40), v5, (v4 + 40));
        *(v4 + 24) = 0;
      }
    }

    else
    {
      sub_100011AC0(&qword_10022C900, &qword_1001DE6D0);
      v9 = swift_allocObject();
      v13 = j__malloc_size(v9);
      v14 = v13 - 40;
      if (v13 < 40)
      {
        v14 = v13 - 25;
      }

      v15 = *(v4 + 24);
      *(v9 + 16) = v14 >> 4;
      *(v9 + 24) = v15;
      *(v9 + 32) = 0;
      if (v15 >= 1)
      {
        sub_1000F890C(v9 + 16, v9 + 40, v5, v4 + 40);
      }
    }
  }

  *v3 = v9;
  return result;
}

size_t sub_1000F7B84(char a1, Swift::Int a2, char a3)
{
  v7 = *v3;
  v8 = (*v3 + 16);
  v9 = *v8;
  v10 = sub_100011AC0(&qword_10022C908, &qword_1001DD4C0);
  v11 = v10;
  if (v9 >= a2)
  {
    v20 = *(*(v10 - 8) + 80);
    sub_100011AC0(&qword_10022C918, &qword_1001DD4D8);
    v17 = swift_allocObject();
    v21 = *(v7 + 24);
    *(v17 + 16) = v9;
    *(v17 + 24) = v21;
    if (v21 >= 1)
    {
      sub_1000F8D8C(v17 + 16, v17 + ((v20 + 40) & ~v20), v8, v7 + ((v20 + 40) & ~v20));
    }

    goto LABEL_19;
  }

  sub_1001D0120(a2, a3 & 1);
  v12 = *(v11 - 8);
  v13 = *(v12 + 80);
  if (a1)
  {
    v14 = *(v7 + 24);
    sub_100011AC0(&qword_10022C918, &qword_1001DD4D8);
    v15 = *(v12 + 72);
    v16 = (v13 + 40) & ~v13;
    v17 = swift_allocObject();
    result = j__malloc_size(v17);
    if (v15)
    {
      if (result - v16 != 0x8000000000000000 || v15 != -1)
      {
        *(v17 + 16) = (result - v16) / v15;
        *(v17 + 24) = v14;
        *(v17 + 32) = 0;
        if (v14 >= 1)
        {
          sub_1000F84A8(v17 + 16, v17 + v16, v8, v7 + v16);
          *(v7 + 24) = 0;
        }

LABEL_19:

        *v3 = v17;
        return result;
      }

      goto LABEL_22;
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_100011AC0(&qword_10022C918, &qword_1001DD4D8);
  v22 = *(v12 + 72);
  v23 = (v13 + 40) & ~v13;
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v22)
  {
    goto LABEL_21;
  }

  if (result - v23 != 0x8000000000000000 || v22 != -1)
  {
    v25 = *(v7 + 24);
    *(v17 + 16) = (result - v23) / v22;
    *(v17 + 24) = v25;
    *(v17 + 32) = 0;
    if (v25 >= 1)
    {
      sub_1000F89F0(v17 + 16, v17 + v23, v8, v7 + v23);
    }

    goto LABEL_19;
  }

LABEL_23:
  __break(1u);
  return result;
}

size_t sub_1000F7E2C(char a1, Swift::Int a2, char a3, uint64_t (*a4)(void), uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v13 = *v7;
  v14 = (*v7 + 16);
  v15 = *v14;
  v16 = a4(0);
  v17 = v16;
  if (v15 >= a2)
  {
    v26 = *(*(v16 - 8) + 80);
    sub_100011AC0(a5, a6);
    v23 = swift_allocObject();
    v27 = *(v13 + 24);
    *(v23 + 16) = v15;
    *(v23 + 24) = v27;
    if (v27 >= 1)
    {
      sub_1000F8F20(v23 + 16, v23 + ((v26 + 40) & ~v26), v14, v13 + ((v26 + 40) & ~v26), a7);
    }

    goto LABEL_19;
  }

  sub_1001D0120(a2, a3 & 1);
  v18 = *(v17 - 8);
  v19 = *(v18 + 80);
  if (a1)
  {
    v20 = *(v13 + 24);
    sub_100011AC0(a5, a6);
    v21 = *(v18 + 72);
    v22 = (v19 + 40) & ~v19;
    v23 = swift_allocObject();
    result = j__malloc_size(v23);
    if (v21)
    {
      if (result - v22 != 0x8000000000000000 || v21 != -1)
      {
        *(v23 + 16) = (result - v22) / v21;
        *(v23 + 24) = v20;
        *(v23 + 32) = 0;
        if (v20 >= 1)
        {
          sub_1000F86B4(v23 + 16, v23 + v22, v14, v13 + v22, a7);
          *(v13 + 24) = 0;
        }

LABEL_19:

        *v7 = v23;
        return result;
      }

      goto LABEL_22;
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_100011AC0(a5, a6);
  v28 = *(v18 + 72);
  v29 = (v19 + 40) & ~v19;
  v23 = swift_allocObject();
  result = j__malloc_size(v23);
  if (!v28)
  {
    goto LABEL_21;
  }

  if (result - v29 != 0x8000000000000000 || v28 != -1)
  {
    v31 = *(v13 + 24);
    *(v23 + 16) = (result - v29) / v28;
    *(v23 + 24) = v31;
    *(v23 + 32) = 0;
    if (v31 >= 1)
    {
      sub_1000F8B64(v23 + 16, v23 + v29, v14, v13 + v29, a7);
    }

    goto LABEL_19;
  }

LABEL_23:
  __break(1u);
  return result;
}

void *sub_1000F80A0(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[1];
  v4 = result[2];
  v5 = v4 + v3;
  if (!__OFADD__(v4, v3))
  {
    v8 = result;
    if ((v3 & 0x8000000000000000) == 0)
    {
      v9 = __OFSUB__(v5, *result);
      if (v5 < *result || (v5 -= *result, !v9))
      {
LABEL_9:
        v10 = type metadata accessor for RequestLog.Element(0);
        result = sub_10005EF28(a3, a2 + *(*(v10 - 8) + 72) * v5);
        v11 = v8[1];
        v9 = __OFADD__(v11, 1);
        v12 = v11 + 1;
        if (!v9)
        {
          v8[1] = v12;
          return result;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v5 < 0)
    {
      v9 = __OFADD__(v5, *result);
      v5 += *result;
      if (v9)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void *sub_1000F815C(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = result[1];
  v5 = result[2];
  v7 = __OFADD__(v5, v4);
  v6 = v5 + v4;
  if (!v7)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      v7 = __OFSUB__(v6, *result);
      if (v6 < *result || (v6 -= *result, !v7))
      {
LABEL_9:
        v8 = (a2 + 16 * v6);
        *v8 = a3;
        v8[1] = a4;
        v7 = __OFADD__(v4, 1);
        v9 = v4 + 1;
        if (!v7)
        {
          result[1] = v9;
          return sub_100012038(a3, a4);
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v6 < 0)
    {
      v7 = __OFADD__(v6, *result);
      v6 += *result;
      if (v7)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void *sub_1000F81E4(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[1];
  v4 = result[2];
  v5 = v4 + v3;
  if (!__OFADD__(v4, v3))
  {
    v8 = result;
    if ((v3 & 0x8000000000000000) == 0)
    {
      v9 = __OFSUB__(v5, *result);
      if (v5 < *result || (v5 -= *result, !v9))
      {
LABEL_9:
        v10 = sub_100011AC0(&qword_10022C908, &qword_1001DD4C0);
        result = sub_1000F9D14(a3, a2 + *(*(v10 - 8) + 72) * v5);
        v11 = v8[1];
        v9 = __OFADD__(v11, 1);
        v12 = v11 + 1;
        if (!v9)
        {
          v8[1] = v12;
          return result;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v5 < 0)
    {
      v9 = __OFADD__(v5, *result);
      v5 += *result;
      if (v9)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void *sub_1000F82AC(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[1];
  v4 = result[2];
  v5 = v4 + v3;
  if (!__OFADD__(v4, v3))
  {
    v8 = result;
    if ((v3 & 0x8000000000000000) == 0)
    {
      v9 = __OFSUB__(v5, *result);
      if (v5 < *result || (v5 -= *result, !v9))
      {
LABEL_9:
        v10 = sub_1001D0720();
        result = (*(*(v10 - 8) + 16))(a2 + *(*(v10 - 8) + 72) * v5, a3, v10);
        v11 = v8[1];
        v9 = __OFADD__(v11, 1);
        v12 = v11 + 1;
        if (!v9)
        {
          v8[1] = v12;
          return result;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v5 < 0)
    {
      v9 = __OFADD__(v5, *result);
      v5 += *result;
      if (v9)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void sub_1000F8380(int a1, char *__dst, void *a3, char *a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_35;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = *a3 - v4;
      v9 = a4;
      goto LABEL_6;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v9 = 0;
  v7 = 0;
  v8 = a3[1];
LABEL_6:
  if (v7)
  {
    v10 = v5 < v6;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v8 < 1)
  {
    v8 = 0;
    goto LABEL_20;
  }

  if (!a4)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v12 = &a4[16 * v4];
  if (v12 != __dst || &v12[16 * v8] <= __dst)
  {
    v14 = __dst;
    memmove(__dst, v12, 16 * v8);
    __dst = v14;
  }

LABEL_20:
  if (v5 >= v6 || v7 < 1)
  {
    return;
  }

  if (!v11)
  {
LABEL_37:
    __break(1u);
    return;
  }

  v16 = &__dst[16 * v8];
  if (v16 != v11 || v16 >= &v11[16 * v7])
  {

    memmove(v16, v11, 16 * v7);
  }
}

void sub_1000F84A8(uint64_t a1, unint64_t a2, void *a3, unint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_35;
  }

  v8 = a3[1];
  v9 = *(sub_100011AC0(&qword_10022C908, &qword_1001DD4C0) - 8);
  if (v5 < v8)
  {
    v10 = v8 - v5;
    if (!__OFSUB__(v8, v5))
    {
      v11 = v5;
      v12 = a4;
      goto LABEL_6;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v12 = 0;
  v10 = 0;
  v11 = v8;
LABEL_6:
  if (v10)
  {
    v13 = v5 < v8;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  if (v11 < 1)
  {
    v11 = 0;
    if (v5 >= v8)
    {
      return;
    }

    goto LABEL_23;
  }

  if (!a4)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v15 = a4 + *(v9 + 72) * v4;
  if (v15 > a2 || v15 + *(*(sub_100011AC0(&qword_10022C908, &qword_1001DD4C0) - 8) + 72) * v11 <= a2)
  {
    sub_100011AC0(&qword_10022C908, &qword_1001DD4C0);
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v15 != a2)
  {
    swift_arrayInitWithTakeBackToFront();
    if (v5 >= v8)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v5 >= v8)
  {
    return;
  }

LABEL_23:
  if (v10 < 1)
  {
    return;
  }

  if (!v14)
  {
LABEL_37:
    __break(1u);
    return;
  }

  v16 = *(*(sub_100011AC0(&qword_10022C908, &qword_1001DD4C0) - 8) + 72);
  v17 = a2 + v16 * v11;
  v18 = v14 + v16 * v10;
  if (v17 < v14 || v17 >= v18)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v17 != v14)
  {
    swift_arrayInitWithTakeBackToFront();
  }
}

void sub_1000F86B4(uint64_t a1, unint64_t a2, void *a3, unint64_t a4, uint64_t (*a5)(void))
{
  v5 = a3[2];
  v6 = *a3 - v5;
  if (__OFSUB__(*a3, v5))
  {
    __break(1u);
    goto LABEL_37;
  }

  v9 = a3[1];
  v10 = *(a5(0) - 8);
  if (v6 < v9)
  {
    v11 = v9 - v6;
    if (!__OFSUB__(v9, v6))
    {
      v12 = v6;
      v13 = a4;
      goto LABEL_6;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v13 = 0;
  v11 = 0;
  v12 = v9;
LABEL_6:
  if (v11)
  {
    v14 = v6 < v9;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(v10 + 72);
  if (v14)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0;
  }

  if (v12 < 1)
  {
    v12 = 0;
    goto LABEL_22;
  }

  if (!a4)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v17 = a4 + v15 * v5;
  if (v17 <= a2 && v17 + v15 * v12 > a2)
  {
    if (v17 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    swift_arrayInitWithTakeFrontToBack();
  }

LABEL_22:
  if (v6 < v9 && v11 >= 1)
  {
    if (v16)
    {
      v20 = a2 + v15 * v12;
      if (v20 < v16 || v20 >= v16 + v15 * v11)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v20 != v16)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      return;
    }

LABEL_39:
    __break(1u);
  }
}

void *sub_1000F884C@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result[2];
  v5 = *result - v4;
  if (__OFSUB__(*result, v4))
  {
    __break(1u);
  }

  else
  {
    v7 = result[1];
    v8 = sub_1001D0720();
    v10 = *(v8 - 8);
    result = (v8 - 8);
    v9 = v10;
    if (v5 >= v7)
    {
      v11 = 0;
      v12 = 0;
      v13 = v7;
LABEL_6:
      *a3 = a2 + *(v9 + 72) * v4;
      *(a3 + 8) = v13;
      *(a3 + 16) = v11;
      *(a3 + 24) = v12;
      *(a3 + 32) = v5 >= v7;
      return result;
    }

    v12 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v13 = v5;
      v11 = a2;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000F890C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = a4;
      if (v5 < 1)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = 0;
  v7 = 0;
  if (v6 >= 1)
  {
LABEL_7:
    if (a4)
    {
      result = swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_9:
  if (v5 < v6 && v7 >= 1)
  {
    if (v8)
    {
      return swift_arrayInitWithCopy();
    }

LABEL_19:
    __break(1u);
  }

  return result;
}

void sub_1000F89F0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = a3[1];
  sub_100011AC0(&qword_10022C908, &qword_1001DD4C0);
  if (v5 < v7)
  {
    v8 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v9 = a4;
      if (v5 < 1)
      {
        goto LABEL_5;
      }

      goto LABEL_8;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = 0;
  v8 = 0;
  if (v7 < 1)
  {
LABEL_5:
    if (v5 >= v7)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_8:
  if (!a4)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_100011AC0(&qword_10022C908, &qword_1001DD4C0);
  swift_arrayInitWithCopy();
  if (v5 >= v7)
  {
    return;
  }

LABEL_10:
  if (v8 < 1)
  {
    return;
  }

  if (!v9)
  {
LABEL_17:
    __break(1u);
    return;
  }

  sub_100011AC0(&qword_10022C908, &qword_1001DD4C0);
  swift_arrayInitWithCopy();
}

void sub_1000F8B64(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = a3[2];
  v6 = *a3 - v5;
  if (__OFSUB__(*a3, v5))
  {
    __break(1u);
    goto LABEL_17;
  }

  v8 = a3[1];
  a5(0);
  if (v6 < v8)
  {
    v9 = v8 - v6;
    if (!__OFSUB__(v8, v6))
    {
      v10 = v6;
      v11 = a4;
      goto LABEL_6;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = 0;
  v9 = 0;
  v10 = v8;
LABEL_6:
  if (v10 < 1)
  {
    goto LABEL_9;
  }

  if (!a4)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  swift_arrayInitWithCopy();
LABEL_9:
  if (v6 < v8 && v9 >= 1)
  {
    if (v11)
    {
      swift_arrayInitWithCopy();
      return;
    }

LABEL_19:
    __break(1u);
  }
}

uint64_t sub_1000F8CB8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v5 >= v6)
  {
    v8 = 0;
    v7 = 0;
    if (v6 < 1)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (a4)
    {
      result = swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = a4;
  if (v5 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v5 < v6 && v7 >= 1)
  {
    if (v8)
    {
      return swift_arrayInitWithCopy();
    }

LABEL_19:
    __break(1u);
  }

  return result;
}