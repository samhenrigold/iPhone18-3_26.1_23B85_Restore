uint64_t sub_2521C63B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2521DB9E0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2521C6424(uint64_t a1, uint64_t a2)
{
  v4 = sub_2521DB9E0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2521C6494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2521DB9B0();
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_2521C655C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2521DB9B0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_2521C6614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2521DB9B0();
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

uint64_t sub_2521C66D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2521DB9B0();
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

uint64_t sub_2521C6788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2521DB9B0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_2521DBAD0();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2521C6878(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2521DB9B0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_2521DBAD0();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_2521C69DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2521DB8C0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_2521CCC34(0, &qword_27F4D4D20, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

void sub_2521C6B18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2521DB8C0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_2521CCC34(0, &qword_27F4D4D20, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
    v14 = *(v13 - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return;
    }

    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  v11(v12, a2, a2, v10);
}

uint64_t sub_2521C6C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_2521DBAD0();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_2521C6CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_2521DBAD0();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_2521C6D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for HeartRateAppChartViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2521C6E10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for HeartRateAppChartViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_2521C6EC8()
{
  sub_2521D1738(255);
  sub_2521D28EC(255);
  sub_2521D1908(255);
  sub_2521D6418(255, &qword_27F4D4CD8, MEMORY[0x277D83B88], MEMORY[0x277D83BA0], MEMORY[0x277D83638]);
  sub_2521D1A5C(255);
  sub_2521D21EC(255);
  sub_2521D1B30(255);
  sub_2521D20E8(255);
  sub_2521D6D3C(&qword_27F4D4DF0, sub_2521D1B30, MEMORY[0x277CBB3F8]);
  sub_2521D217C();
  swift_getOpaqueTypeConformance2();
  sub_2521D6D3C(&qword_27F4D4E70, sub_2521D21EC, MEMORY[0x277CBB460]);
  swift_getOpaqueTypeConformance2();
  sub_2521D2850();
  swift_getOpaqueTypeConformance2();
  sub_2521D2F78();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2521C70BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2521DB9B0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2521C7128(uint64_t a1, uint64_t a2)
{
  v4 = sub_2521DB9B0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2521C71B8()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2521C7208(uint64_t a1, uint64_t a2)
{
  sub_2521D5998(0, &qword_27F4D4F40, MEMORY[0x277CBB378]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2521C7288(uint64_t a1, uint64_t a2)
{
  sub_2521D6BFC(0, &qword_27F4D4F48, sub_2521D5A54, MEMORY[0x277CBB378]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2521C731C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2521C735C()
{
  v1 = *(type metadata accessor for HeartRateAppChartView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64) + v3;
  v5 = v0 + v3;

  v6 = type metadata accessor for HeartRateAppChartViewModel(0);
  v7 = *(v6 + 24);
  v8 = sub_2521DB8C0();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  return MEMORY[0x2821FE8E8](v0, v4 + 1, v2 | 7);
}

uint64_t sub_2521C7490()
{
  v1 = *(type metadata accessor for HeartRateAppChartView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for HeartRateAppChartViewModel(0);
  v6 = *(v5 + 24);
  v7 = sub_2521DB8C0();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2521C75B8(uint64_t a1, uint64_t a2)
{
  sub_2521D22F4(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2521C761C(uint64_t a1)
{
  sub_2521D22F4(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2521C7678(uint64_t a1, uint64_t a2)
{
  sub_2521D22F4(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2521C76DC()
{
  sub_2521D57FC(255);
  sub_2521DBDF0();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2521C77F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for HeartRateSummaryStatistics(0);
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

uint64_t sub_2521C78B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for HeartRateSummaryStatistics(0);
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

uint64_t sub_2521C796C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2521DB8C0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_2521C7A2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2521DB8C0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2521C7AE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeartRateSummaryStatistics(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2521C7B54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeartRateSummaryStatistics(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2521C7C10(uint64_t a1, uint64_t a2)
{
  sub_2521DB5E0(0, &qword_27F4D50C0, MEMORY[0x277CBB378]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2521C7C90()
{
  v1 = *(type metadata accessor for HeartRateChartData(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_2521DB9B0();
  (*(*(v6 - 8) + 8))(v5, v6);

  return MEMORY[0x2821FE8E8](v0, v4 + 48, v2 | 7);
}

uint64_t sub_2521C7DA0()
{
  result = type metadata accessor for HeartRateBPMRange(0);
  if (__OFSUB__(*(v0 + *(result + 20) + 8), 1))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2521C7E2C@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t HeartRateDaySummary.init(statistics:chartHeight:isLatestHeartRateInDateInterval:currentDate:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>)
{
  LODWORD(v92) = a2;
  v71 = a4;
  v77 = type metadata accessor for HeartRateChartPoint(0);
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v79 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_2521DBAD0();
  v9 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v11 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for HeartRateSummaryStatisticsBucket(0);
  v90 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2521DB8C0();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2521DB9B0();
  v19 = MEMORY[0x28223BE20](v18);
  v78 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v89 = &v67 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v67 - v24;
  MEMORY[0x28223BE20](v23);
  v73 = v26;
  v27 = *(v26 + 16);
  v91 = &v67 - v28;
  v70 = a3;
  v75 = v26 + 16;
  v74 = v27;
  v27();
  v68 = v15;
  v29 = *(v15 + 16);
  v69 = v14;
  v29(v17, a1, v14);
  v72 = a1;
  if (v92)
  {
    sub_2521DB8B0();
    result = type metadata accessor for HeartRateSummaryStatistics(0);
    v31 = *(a1 + *(result + 28));
    v88 = *(v31 + 16);
    if (v88)
    {
      v32 = 0;
      v33 = *(v87 + 20);
      v86 = v31 + ((*(v90 + 80) + 32) & ~*(v90 + 80));
      v87 = v33;
      v34 = (v73 + 8);
      v92 = (v9 + 16);
      v83 = (v9 + 8);
      v80 = 0x7FFFFFFFFFFFFFFFLL;
      v81 = 0x8000000000000000;
      v82 = MEMORY[0x277D84F90];
      v84 = v31;
      v85 = v17;
      while (v32 < *(v31 + 16))
      {
        sub_2521CB1C8(v86 + *(v90 + 72) * v32, v13, type metadata accessor for HeartRateSummaryStatisticsBucket);
        v35 = v89;
        sub_2521DB890();
        sub_2521DB960();
        v36 = *v34;
        (*v34)(v35, v18);
        v37 = *v92;
        v38 = v11;
        v39 = v11;
        v40 = v93;
        (*v92)(v38, &v13[v87], v93);
        sub_2521CBA5C(&qword_27F4D4C50, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
        if (sub_2521DC080())
        {
          v11 = v39;
          if (sub_2521DBA90())
          {
            (*v83)(v39, v93);
            v36(v25, v18);
            result = sub_2521CB168(v13, type metadata accessor for HeartRateSummaryStatisticsBucket);
          }

          else
          {
            result = sub_2521DBA60();
            if (v41)
            {
              goto LABEL_40;
            }

            v42 = v81;
            if (result > v81)
            {
              v42 = result;
            }

            v81 = v42;
            result = sub_2521DBA70();
            if (v43)
            {
              goto LABEL_39;
            }

            v44 = v80;
            if (result < v80)
            {
              v44 = result;
            }

            v80 = v44;
            v45 = v78;
            sub_2521DB960();
            v46 = v79;
            (v74)(v79, v45, v18);
            v37((v46 + *(v77 + 20)), v11, v93);
            v47 = v82;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v47 = sub_2521C9DD8(0, v47[2] + 1, 1, v47, &qword_27F4D4CF0, type metadata accessor for HeartRateChartPoint, type metadata accessor for HeartRateChartPoint);
            }

            v49 = v47[2];
            v48 = v47[3];
            v82 = v47;
            if (v49 >= v48 >> 1)
            {
              v82 = sub_2521C9DD8((v48 > 1), v49 + 1, 1, v82, &qword_27F4D4CF0, type metadata accessor for HeartRateChartPoint, type metadata accessor for HeartRateChartPoint);
            }

            v36(v78, v18);
            (*v83)(v11, v93);
            v36(v25, v18);
            sub_2521CB168(v13, type metadata accessor for HeartRateSummaryStatisticsBucket);
            v50 = v82;
            v82[2] = v49 + 1;
            result = sub_2521CB250(v79, v50 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v49, type metadata accessor for HeartRateChartPoint);
          }
        }

        else
        {
          (*v83)(v39, v40);
          v36(v25, v18);
          result = sub_2521CB168(v13, type metadata accessor for HeartRateSummaryStatisticsBucket);
          v11 = v39;
        }

        ++v32;
        v31 = v84;
        v17 = v85;
        if (v88 == v32)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
      goto LABEL_38;
    }

    v80 = 0x7FFFFFFFFFFFFFFFLL;
    v81 = 0x8000000000000000;
    v82 = MEMORY[0x277D84F90];
  }

  else
  {
    v80 = 0x7FFFFFFFFFFFFFFFLL;
    v81 = 0x8000000000000000;
    v82 = MEMORY[0x277D84F90];
  }

LABEL_23:
  sub_2521C88D0(0);
  v51 = sub_2521DC0D0();
  v51[2] = 25;
  v52 = MEMORY[0x277D84F90];
  v51[4] = MEMORY[0x277D84F90];
  v51[5] = v52;
  v51[6] = v52;
  v51[7] = v52;
  v51[8] = v52;
  v51[9] = v52;
  v51[10] = v52;
  v51[11] = v52;
  v51[12] = v52;
  v51[13] = v52;
  v51[14] = v52;
  v51[15] = v52;
  v51[16] = v52;
  v51[17] = v52;
  v51[18] = v52;
  v51[19] = v52;
  v51[20] = v52;
  v51[21] = v52;
  v51[22] = v52;
  v51[23] = v52;
  v51[24] = v52;
  v51[25] = v52;
  v51[26] = v52;
  v51[27] = v52;
  v54 = v80;
  v53 = v81;
  v55 = v80 == 0x7FFFFFFFFFFFFFFFLL || v81 == 0x8000000000000000;
  v56 = v55;
  v51[28] = v52;
  if (v55)
  {
    v57 = v17;
    v58 = v51;
    v53 = 0;
    v54 = 0;
    v59 = v72;
LABEL_36:
    v94 = v56;
    v95 = v56;
    v61 = v91;
    v62 = sub_2521CAD88(v91, v58);

    v63 = *(v73 + 8);
    v63(v70, v18);
    (*(v68 + 8))(v57, v69);
    v63(v61, v18);
    sub_2521CB168(v59, type metadata accessor for HeartRateSummaryStatistics);

    v64 = v95;
    v65 = v94;
    v66 = v71;
    *v71 = v54;
    *(v66 + 8) = v64;
    v66[2] = v53;
    *(v66 + 24) = v65;
    v66[4] = v62;
    return result;
  }

  v60 = v53 - v54;
  v59 = v72;
  if (!__OFSUB__(v53, v54))
  {
    v57 = v17;
    if (!v60)
    {
      v60 = 10;
    }

    v58 = sub_2521CA174(v82, v53, v60 / a5, 3.0 / a5 * v60);
    goto LABEL_36;
  }

LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

void HeartRateDaySummary.init(heartRateSummary:latestHeartRateSample:chartHeight:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>)
{
  v82 = a2;
  v79 = a3;
  v86 = type metadata accessor for HeartRateChartPoint(0);
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v88 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_2521DBAD0();
  v95 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v8 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for HeartRateSummaryStatisticsBucket(0);
  v101 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v10 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_2521DB8C0();
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v102 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2521DB9B0();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v87 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v93 = &v75 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v104 = &v75 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v75 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v75 - v23;
  v103 = type metadata accessor for HeartRateSummaryStatistics(0);
  v25 = MEMORY[0x28223BE20](v103);
  v27 = &v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v75 - v28;
  v78 = a1;
  sub_2521CB1C8(a1, &v75 - v28, type metadata accessor for HeartRateSummaryStatistics);
  v30 = [v82 startDate];
  sub_2521DB980();

  LOBYTE(v30) = sub_2521DB8A0();
  v31 = *(v13 + 8);
  v100 = v24;
  v91 = v31;
  v92 = v13 + 8;
  v31(v24, v12);
  v75 = v29;
  sub_2521CB1C8(v29, v27, type metadata accessor for HeartRateSummaryStatistics);
  sub_2521DB9A0();
  v32 = *(v13 + 16);
  v77 = v22;
  v84 = v13 + 16;
  v83 = v32;
  v32(v104, v22, v12);
  v33 = v102;
  (*(v80 + 16))(v102, v27, v81);
  v76 = v27;
  if (v30)
  {
    v34 = v33;
    sub_2521DB8B0();
    v35 = *&v27[*(v103 + 28)];
    v99 = *(v35 + 16);
    if (v99)
    {
      v36 = 0;
      v37 = *(v98 + 20);
      v97 = v35 + ((*(v101 + 80) + 32) & ~*(v101 + 80));
      v98 = v37;
      v103 = (v95 + 2);
      ++v95;
      v94 = MEMORY[0x277D84F90];
      v89 = 0x7FFFFFFFFFFFFFFFLL;
      v90 = 0x8000000000000000;
      v39 = v91;
      v38 = v92;
      v40 = v93;
      v96 = v35;
      while (v36 < *(v35 + 16))
      {
        sub_2521CB1C8(v97 + *(v101 + 72) * v36, v10, type metadata accessor for HeartRateSummaryStatisticsBucket);
        v41 = v100;
        sub_2521DB890();
        sub_2521DB960();
        v39(v41, v12);
        v42 = v38;
        v43 = *v103;
        v44 = v8;
        v45 = v8;
        v46 = v105;
        (*v103)(v44, &v10[v98], v105);
        sub_2521CBA5C(&qword_27F4D4C50, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
        if (sub_2521DC080())
        {
          v8 = v45;
          if (sub_2521DBA90())
          {
            (*v95)(v45, v105);
            v38 = v92;
            v40 = v93;
            v39 = v91;
            v91(v93, v12);
            sub_2521CB168(v10, type metadata accessor for HeartRateSummaryStatisticsBucket);
          }

          else
          {
            v47 = sub_2521DBA60();
            if (v48)
            {
              goto LABEL_42;
            }

            v49 = v90;
            if (v47 > v90)
            {
              v49 = v47;
            }

            v90 = v49;
            v50 = sub_2521DBA70();
            if (v51)
            {
              goto LABEL_41;
            }

            v52 = v89;
            if (v50 < v89)
            {
              v52 = v50;
            }

            v89 = v52;
            v53 = v87;
            sub_2521DB960();
            v54 = v88;
            v83(v88, v53, v12);
            v43(v54 + *(v86 + 20), v8, v105);
            v55 = v94;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v55 = sub_2521C9DD8(0, v55[2] + 1, 1, v55, &qword_27F4D4CF0, type metadata accessor for HeartRateChartPoint, type metadata accessor for HeartRateChartPoint);
            }

            v57 = v55[2];
            v56 = v55[3];
            if (v57 >= v56 >> 1)
            {
              v94 = sub_2521C9DD8((v56 > 1), v57 + 1, 1, v55, &qword_27F4D4CF0, type metadata accessor for HeartRateChartPoint, type metadata accessor for HeartRateChartPoint);
            }

            else
            {
              v94 = v55;
            }

            v58 = v91;
            v38 = v92;
            v91(v87, v12);
            (*v95)(v8, v105);
            v59 = v93;
            v58(v93, v12);
            sub_2521CB168(v10, type metadata accessor for HeartRateSummaryStatisticsBucket);
            v60 = v94;
            v94[2] = v57 + 1;
            v61 = v60 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v57;
            v39 = v58;
            v40 = v59;
            sub_2521CB250(v88, v61, type metadata accessor for HeartRateChartPoint);
          }
        }

        else
        {
          (*v95)(v45, v46);
          v39(v40, v12);
          sub_2521CB168(v10, type metadata accessor for HeartRateSummaryStatisticsBucket);
          v8 = v45;
          v38 = v42;
        }

        ++v36;
        v34 = v102;
        v35 = v96;
        if (v99 == v36)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
      goto LABEL_40;
    }

    v94 = MEMORY[0x277D84F90];
    v89 = 0x7FFFFFFFFFFFFFFFLL;
    v90 = 0x8000000000000000;
  }

  else
  {
    v90 = 0x8000000000000000;
    v89 = 0x7FFFFFFFFFFFFFFFLL;
    v94 = MEMORY[0x277D84F90];
    v34 = v33;
  }

  v39 = v91;
LABEL_25:
  sub_2521C88D0(0);
  v62 = sub_2521DC0D0();
  v62[2] = 25;
  v63 = MEMORY[0x277D84F90];
  v62[4] = MEMORY[0x277D84F90];
  v62[5] = v63;
  v62[6] = v63;
  v62[7] = v63;
  v62[8] = v63;
  v62[9] = v63;
  v62[10] = v63;
  v62[11] = v63;
  v62[12] = v63;
  v62[13] = v63;
  v62[14] = v63;
  v62[15] = v63;
  v62[16] = v63;
  v62[17] = v63;
  v62[18] = v63;
  v62[19] = v63;
  v62[20] = v63;
  v62[21] = v63;
  v62[22] = v63;
  v62[23] = v63;
  v62[24] = v63;
  v62[25] = v63;
  v62[26] = v63;
  v62[27] = v63;
  v64 = v89;
  v65 = v90;
  v66 = v89 == 0x7FFFFFFFFFFFFFFFLL || v90 == 0x8000000000000000;
  v67 = v66;
  v62[28] = v63;
  if (v66)
  {
    v68 = v62;
    v65 = 0;
    v64 = 0;
LABEL_38:
    v106 = v67;
    v107 = v67;
    v70 = v104;
    v71 = sub_2521CAD88(v104, v68);

    sub_2521CB168(v78, type metadata accessor for HeartRateSummary);
    (*(v80 + 8))(v34, v81);
    v39(v70, v12);
    v39(v77, v12);
    sub_2521CB168(v75, type metadata accessor for HeartRateSummaryStatistics);
    sub_2521CB168(v76, type metadata accessor for HeartRateSummaryStatistics);

    v72 = v107;
    v73 = v106;
    v74 = v79;
    *v79 = v64;
    *(v74 + 8) = v72;
    v74[2] = v65;
    *(v74 + 24) = v73;
    v74[4] = v71;
    return;
  }

  v69 = v65 - v64;
  if (!__OFSUB__(v65, v64))
  {
    if (!v69)
    {
      v69 = 10;
    }

    v68 = sub_2521CA174(v94, v65, v69 / a4, 3.0 / a4 * v69);
    goto LABEL_38;
  }

LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
}

uint64_t static HeartRateDaySummary.emptyDaySummary()@<X0>(void *a1@<X8>)
{
  v26 = a1;
  v1 = type metadata accessor for HeartRateHourlyData(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2521DBA30();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2521DB9B0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - v14;
  sub_2521DBA00();
  sub_2521DB9A0();
  sub_2521DB9F0();
  v24 = *(v10 + 8);
  v25 = v9;
  v24(v13, v9);
  (*(v6 + 8))(v8, v5);
  v16 = 0;
  v17 = MEMORY[0x277D84F90];
  v18 = 25;
  do
  {
    sub_2521DB960();
    *&v4[*(v1 + 20)] = 0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_2521C9DD8(0, v17[2] + 1, 1, v17, &qword_27F4D4CE8, type metadata accessor for HeartRateHourlyData, type metadata accessor for HeartRateHourlyData);
    }

    v20 = v17[2];
    v19 = v17[3];
    if (v20 >= v19 >> 1)
    {
      v17 = sub_2521C9DD8((v19 > 1), v20 + 1, 1, v17, &qword_27F4D4CE8, type metadata accessor for HeartRateHourlyData, type metadata accessor for HeartRateHourlyData);
    }

    v17[2] = v20 + 1;
    sub_2521CB250(v4, v17 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v20, type metadata accessor for HeartRateHourlyData);
    v16 += 3600;
    --v18;
  }

  while (v18);
  result = (v24)(v15, v25);
  v22 = v26;
  *v26 = 0;
  *(v22 + 8) = 1;
  v22[2] = 0;
  *(v22 + 24) = 1;
  v22[4] = v17;
  return result;
}

uint64_t static HeartRateDaySummary.templateDaySummary(with:chartHeight:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v43 = a1;
  v5 = type metadata accessor for HeartRateChartPoint(0);
  v49 = *(v5 - 8);
  v50 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2521DBA30();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2521DB9B0();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v40 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = v40 - v20;
  sub_2521DBA00();
  sub_2521DB9A0();
  sub_2521DB9F0();
  v22 = *(v13 + 8);
  v48 = v19;
  v51 = v22;
  v52 = v13 + 8;
  v22(v19, v12);
  (*(v9 + 8))(v11, v8);
  v42 = v21;
  sub_2521DB960();
  v23 = sub_2521CB2B8();
  v24 = *(v23 + 16);
  if (v24)
  {
    v41 = a2;
    v46 = sub_2521DBAD0();
    v25 = *(v46 - 8);
    v26 = *(v25 + 80);
    v40[1] = v23;
    v27 = v23 + ((v26 + 32) & ~v26);
    v45 = *(v25 + 72);
    v29 = *(v13 + 16);
    v28 = v13 + 16;
    v44 = v29;
    v30 = (v25 + 16);
    v31 = (v28 + 16);
    v32 = MEMORY[0x277D84F90];
    v47 = v28;
    do
    {
      v44(v7, v16, v12);
      (*v30)(&v7[*(v50 + 20)], v27, v46);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_2521C9DD8(0, v32[2] + 1, 1, v32, &qword_27F4D4CF0, type metadata accessor for HeartRateChartPoint, type metadata accessor for HeartRateChartPoint);
      }

      v34 = v32[2];
      v33 = v32[3];
      if (v34 >= v33 >> 1)
      {
        v32 = sub_2521C9DD8((v33 > 1), v34 + 1, 1, v32, &qword_27F4D4CF0, type metadata accessor for HeartRateChartPoint, type metadata accessor for HeartRateChartPoint);
      }

      v32[2] = v34 + 1;
      sub_2521CB250(v7, v32 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v34, type metadata accessor for HeartRateChartPoint);
      v35 = v48;
      sub_2521DB960();
      v51(v16, v12);
      (*v31)(v16, v35, v12);
      v27 += v45;
      --v24;
    }

    while (v24);

    a2 = v41;
  }

  else
  {

    v32 = MEMORY[0x277D84F90];
  }

  v36 = sub_2521CA174(v32, 173, 119.0 / a3, 3.0 / a3 * 119.0);

  v37 = sub_2521CAD88(v43, v36);

  v38 = v51;
  v51(v16, v12);
  result = v38(v42, v12);
  *a2 = 54;
  *(a2 + 8) = 0;
  *(a2 + 16) = 173;
  *(a2 + 24) = 0;
  *(a2 + 32) = v37;
  return result;
}

void *sub_2521C9DD8(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_2521CBC58(0, a5, a6, MEMORY[0x277D84560]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_2521C9FCC(char *result, int64_t a2, char a3, char *a4)
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
    sub_2521CBCBC(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_2521CA174(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = type metadata accessor for HeartRateBPMRange(0);
  v104 = *(v8 - 1);
  MEMORY[0x28223BE20](v8);
  v10 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_2521DBA10();
  *&v105 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v90 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_2521DBA30();
  v96 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v88 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_2521DB9B0();
  v82 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v100 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for HeartRateChartData(0);
  v86 = *(v87 - 8);
  v14 = MEMORY[0x28223BE20](v87);
  v16 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v99 = &v73 - v18;
  MEMORY[0x28223BE20](v17);
  v98 = &v73 - v19;
  v103 = sub_2521DBAB0();
  v20 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v94 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2521CBBC4(0);
  v93 = v22;
  MEMORY[0x28223BE20](v22);
  v24 = &v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for HeartRateChartPoint(0);
  v25 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v27 = &v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2521C88D0(0);
  v28 = sub_2521DC0D0();
  v28[2] = 25;
  v29 = MEMORY[0x277D84F90];
  v28[4] = MEMORY[0x277D84F90];
  v97 = v28 + 4;
  v28[5] = v29;
  v28[6] = v29;
  v28[7] = v29;
  v28[8] = v29;
  v28[9] = v29;
  v28[10] = v29;
  v28[11] = v29;
  v28[12] = v29;
  v28[13] = v29;
  v28[14] = v29;
  v28[15] = v29;
  v28[16] = v29;
  v28[17] = v29;
  v28[18] = v29;
  v28[19] = v29;
  v28[20] = v29;
  v28[21] = v29;
  v28[22] = v29;
  v28[23] = v29;
  v28[24] = v29;
  v28[25] = v29;
  v28[26] = v29;
  v28[27] = v29;
  v28[28] = v29;
  v95 = v28;
  v85 = *(a1 + 16);
  if (v85)
  {
    v30 = a1;
    v31 = 0;
    v84 = v30 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
    v83 = (v20 + 8);
    v80 = (v82 + 16);
    v79 = (v82 + 8);
    v78 = *MEMORY[0x277CC9980];
    v77 = (v105 + 104);
    v76 = (v105 + 8);
    v75 = (v96 + 8);
    v82 = *(v25 + 72);
    v74 = a2;
    v81 = v16;
    v102 = v27;
    do
    {
      v96 = v31;
      sub_2521CB1C8(v84 + v82 * v31, v27, type metadata accessor for HeartRateChartPoint);
      v32 = v94;
      sub_2521DBAC0();
      sub_2521DBAA0();
      (*v83)(v32, v103);
      v33 = *(v93 + 36);
      sub_2521CBA5C(&qword_27F4D4D00, MEMORY[0x277CC9A18], MEMORY[0x277CC9A20]);
      sub_2521DC120();
      v34 = *&v24[v33];
      v35 = v106;
      v36 = MEMORY[0x277D84F90];
      while (v34 != v35)
      {
        v38 = sub_2521DC140();
        v41 = *v39;
        v40 = v39[1];
        v38(&v106, 0);
        result = sub_2521DC130();
        v43 = *(v36 + 2);
        if (!v43)
        {
          goto LABEL_15;
        }

        v44 = v43 - 1;
        v45 = &v36[16 * v43 - 16];
        v46 = *(v45 + 5);
        v47 = __OFSUB__(v41, v46);
        v48 = v41 - v46;
        if (v47)
        {
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        if (v48 < a4)
        {
          v41 = *(v45 + 4);
          if (v40 < v41)
          {
            goto LABEL_37;
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_2521CA160(v36);
            v36 = result;
          }

          if (v43 > *(v36 + 2))
          {
            goto LABEL_38;
          }
        }

        else
        {
LABEL_15:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v36 = sub_2521C9FCC(0, v43 + 1, 1, v36);
          }

          v44 = *(v36 + 2);
          v49 = *(v36 + 3);
          if (v44 >= v49 >> 1)
          {
            v36 = sub_2521C9FCC((v49 > 1), v44 + 1, 1, v36);
          }

          *(v36 + 2) = v44 + 1;
        }

        v37 = &v36[16 * v44];
        *(v37 + 4) = v41;
        *(v37 + 5) = v40;
        sub_2521DC120();
        v34 = *&v24[v33];
        v35 = v106;
      }

      sub_2521CB168(v24, sub_2521CBBC4);
      v50 = *v80;
      v52 = v100;
      v51 = v101;
      (*v80)(v100, v102, v101);
      v50(v99, v52, v51);
      v53 = *(v36 + 2);
      if (v53)
      {
        v54 = (v36 + 32);
        v55 = MEMORY[0x277D84F90];
        v56 = v74;
        do
        {
          v105 = *v54;
          sub_2521DB9D0();
          *&v10[v8[5]] = v105;
          *&v10[v8[6]] = v56;
          *&v10[v8[7]] = a3;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v55 = sub_2521C9DD8(0, v55[2] + 1, 1, v55, &qword_27F4D4D10, type metadata accessor for HeartRateBPMRange, type metadata accessor for HeartRateBPMRange);
          }

          v58 = v55[2];
          v57 = v55[3];
          if (v58 >= v57 >> 1)
          {
            v55 = sub_2521C9DD8((v57 > 1), v58 + 1, 1, v55, &qword_27F4D4D10, type metadata accessor for HeartRateBPMRange, type metadata accessor for HeartRateBPMRange);
          }

          v55[2] = v58 + 1;
          sub_2521CB250(v10, v55 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v58, type metadata accessor for HeartRateBPMRange);
          ++v54;
          --v53;
        }

        while (v53);
      }

      else
      {
        v55 = MEMORY[0x277D84F90];
      }

      (*v79)(v100, v101);
      v60 = v98;
      v59 = v99;
      *&v99[*(v87 + 20)] = v55;
      sub_2521CB250(v59, v60, type metadata accessor for HeartRateChartData);
      v61 = v88;
      sub_2521DBA00();
      v62 = v90;
      v63 = v91;
      (*v77)(v90, v78, v91);
      v64 = sub_2521DBA20();
      (*v76)(v62, v63);
      (*v75)(v61, v89);
      v65 = v81;
      result = sub_2521CB1C8(v60, v81, type metadata accessor for HeartRateChartData);
      if ((v64 & 0x8000000000000000) != 0)
      {
        goto LABEL_39;
      }

      if (v64 >= v95[2])
      {
LABEL_40:
        __break(1u);
        return result;
      }

      v66 = v97;
      v67 = v97[v64];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v66[v64] = v67;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v67 = sub_2521C9DD8(0, v67[2] + 1, 1, v67, &qword_27F4D4D08, type metadata accessor for HeartRateChartData, type metadata accessor for HeartRateChartData);
        v97[v64] = v67;
      }

      v27 = v102;
      v70 = v67[2];
      v69 = v67[3];
      if (v70 >= v69 >> 1)
      {
        v72 = sub_2521C9DD8((v69 > 1), v70 + 1, 1, v67, &qword_27F4D4D08, type metadata accessor for HeartRateChartData, type metadata accessor for HeartRateChartData);
        v97[v64] = v72;
      }

      v31 = v96 + 1;
      sub_2521CB168(v98, type metadata accessor for HeartRateChartData);
      sub_2521CB168(v27, type metadata accessor for HeartRateChartPoint);
      v71 = v97[v64];
      *(v71 + 16) = v70 + 1;
      sub_2521CB250(v65, v71 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v70, type metadata accessor for HeartRateChartData);
    }

    while (v31 != v85);
  }

  return v95;
}

void *sub_2521CAD88(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for HeartRateHourlyData(0);
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2521DBA30();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_2521DB9B0();
  v10 = *(v32 - 8);
  v11 = MEMORY[0x28223BE20](v32);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - v14;
  sub_2521DBA00();
  v31 = v15;
  sub_2521DB9F0();
  result = (*(v7 + 8))(v9, v6);
  v17 = *(a2 + 16);
  v28 = v10;
  if (v17)
  {
    v18 = 0;
    v19 = (a2 + 32);
    v20 = (v10 + 32);
    v21 = MEMORY[0x277D84F90];
    v22 = 0x91A2B3C4D5E70;
    while (v22)
    {
      v23 = *v19;
      swift_bridgeObjectRetain_n();
      sub_2521DB960();
      v24 = *(v23 + 16);

      if (!v24)
      {

        v23 = 0;
      }

      (*v20)(v5, v13, v32);
      *&v5[*(v30 + 20)] = v23;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_2521C9DD8(0, v21[2] + 1, 1, v21, &qword_27F4D4CE8, type metadata accessor for HeartRateHourlyData, type metadata accessor for HeartRateHourlyData);
      }

      v26 = v21[2];
      v25 = v21[3];
      if (v26 >= v25 >> 1)
      {
        v21 = sub_2521C9DD8((v25 > 1), v26 + 1, 1, v21, &qword_27F4D4CE8, type metadata accessor for HeartRateHourlyData, type metadata accessor for HeartRateHourlyData);
      }

      v21[2] = v26 + 1;
      result = sub_2521CB250(v5, v21 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v26, type metadata accessor for HeartRateHourlyData);
      v18 += 3600;
      --v22;
      ++v19;
      if (!--v17)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
LABEL_13:
    (*(v28 + 8))(v31, v32);
    return v21;
  }

  return result;
}

uint64_t sub_2521CB168(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2521CB1C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2521CB250(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2521CB2B8()
{
  v0 = sub_2521DBAD0();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  sub_2521CBC58(0, &qword_27F4D4CD0, MEMORY[0x277CC9A28], MEMORY[0x277D84560]);
  v9 = 8 * *(v1 + 72);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2521DC510;
  v11 = xmmword_2521DC520;
  sub_2521CBAF0(0, &qword_27F4D4CD8, MEMORY[0x277D83638]);
  sub_2521CBB50();
  sub_2521DBA40();
  v11 = xmmword_2521DC530;
  sub_2521DBA40();
  v11 = xmmword_2521DC540;
  sub_2521DBA40();
  sub_2521DBA80();
  v7 = *(v1 + 8);
  v7(v4, v0);
  v7(v6, v0);
  v11 = xmmword_2521DC550;
  sub_2521DBA40();
  v11 = xmmword_2521DC560;
  sub_2521DBA40();
  sub_2521DBA80();
  v7(v4, v0);
  v7(v6, v0);
  v11 = xmmword_2521DC570;
  sub_2521DBA40();
  v11 = xmmword_2521DC580;
  sub_2521DBA40();
  v11 = xmmword_2521DC590;
  sub_2521DBA40();
  v11 = xmmword_2521DC5A0;
  sub_2521DBA40();
  v11 = xmmword_2521DC5B0;
  sub_2521DBA40();
  sub_2521DBA80();
  v7(v4, v0);
  v7(v6, v0);
  v11 = xmmword_2521DC5C0;
  sub_2521DBA40();
  return v10;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2521CB67C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2521CB6C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2521CB764(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2521CB79C(uint64_t a1)
{
  sub_2521DB9E0();
  if (v1 <= 0x3F)
  {
    sub_2521CBAF0(319, &qword_27F4D4C68, MEMORY[0x277D83D00]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2521CB90C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  sub_2521DB9B0();
  if (v9 <= 0x3F)
  {
    sub_2521CBC58(319, a4, a5, a6);
    if (v10 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2521CB9D8(uint64_t a1)
{
  result = sub_2521DB9B0();
  if (v2 <= 0x3F)
  {
    result = sub_2521DBAD0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2521CBA5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2521CBAF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D83B88], MEMORY[0x277D83BA0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_2521CBB50()
{
  result = qword_27F4D4CE0;
  if (!qword_27F4D4CE0)
  {
    sub_2521CBAF0(255, &qword_27F4D4CD8, MEMORY[0x277D83638]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D4CE0);
  }

  return result;
}

void sub_2521CBBC4(uint64_t a1)
{
  if (!qword_27F4D4CF8)
  {
    sub_2521DBAB0();
    sub_2521CBA5C(&qword_27F4D4D00, MEMORY[0x277CC9A18], MEMORY[0x277CC9A20]);
    v1 = sub_2521DC170();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4D4CF8);
    }
  }
}

void sub_2521CBC58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2521CBCBC(uint64_t a1)
{
  if (!qword_27F4D4D18)
  {
    sub_2521CBAF0(255, &qword_27F4D4C68, MEMORY[0x277D83D00]);
    v1 = sub_2521DC190();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4D4D18);
    }
  }
}

uint64_t HeartRateSummaryStatistics.dateInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2521DB8C0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t HeartRateSummaryStatistics.dateInterval.setter(uint64_t a1)
{
  v3 = sub_2521DB8C0();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t HeartRateSummaryStatistics.sessionUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for HeartRateSummaryStatistics(0) + 20);

  return sub_2521CBE90(v3, a1);
}

uint64_t sub_2521CBE90(uint64_t a1, uint64_t a2)
{
  sub_2521CCC34(0, &qword_27F4D4D20, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t HeartRateSummaryStatistics.sessionUUID.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for HeartRateSummaryStatistics(0) + 20);

  return sub_2521CBF68(a1, v3);
}

uint64_t sub_2521CBF68(uint64_t a1, uint64_t a2)
{
  sub_2521CCC34(0, &qword_27F4D4D20, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t HeartRateSummaryStatistics.numberOfBuckets.setter(uint64_t a1)
{
  result = type metadata accessor for HeartRateSummaryStatistics(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t HeartRateSummaryStatistics.buckets.getter()
{
  type metadata accessor for HeartRateSummaryStatistics(0);
}

uint64_t HeartRateSummaryStatistics.buckets.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HeartRateSummaryStatistics(0) + 28);

  *(v1 + v3) = a1;
  return result;
}

uint64_t HeartRateSummaryStatistics.init(dateInterval:sessionUUID:numberOfBuckets:buckets:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for HeartRateSummaryStatistics(0);
  v11 = v10[5];
  v12 = sub_2521DB9E0();
  (*(*(v12 - 8) + 56))(a5 + v11, 1, 1, v12);
  v13 = sub_2521DB8C0();
  (*(*(v13 - 8) + 32))(a5, a1, v13);
  result = sub_2521CBF68(a2, a5 + v11);
  *(a5 + v10[6]) = a3;
  *(a5 + v10[7]) = a4;
  return result;
}

uint64_t HeartRateSummaryStatistics.init(hkHeartRateSummaryStatistics:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2521CCC34(0, &qword_27F4D4D20, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v26 - v5;
  v7 = sub_2521DB8C0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x277D84F90];
  v11 = swift_allocObject();
  *(v11 + 16) = &v29;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_2521CC7BC;
  *(v12 + 24) = v11;
  aBlock[4] = sub_2521CC868;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2521CC890;
  aBlock[3] = &block_descriptor;
  v13 = _Block_copy(aBlock);

  [a1 enumerateBucketsWithBlock_];
  _Block_release(v13);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }

  else
  {
    v26[1] = v11;
    v15 = [a1 dateInterval];
    v26[0] = v10;
    sub_2521DB870();

    v16 = [a1 sessionUUID];
    v27 = v7;
    v17 = v8;
    if (v16)
    {
      v18 = v16;
      sub_2521DB9C0();

      v19 = 0;
    }

    else
    {
      v19 = 1;
    }

    v20 = sub_2521DB9E0();
    v21 = *(*(v20 - 8) + 56);
    v21(v6, v19, 1, v20);
    v22 = [a1 numberOfBuckets];

    v23 = v29;
    v24 = type metadata accessor for HeartRateSummaryStatistics(0);
    v25 = v24[5];
    v21((a2 + v25), 1, 1, v20);
    (*(v17 + 32))(a2, v26[0], v27);

    sub_2521CBF68(v6, a2 + v25);
    *(a2 + v24[6]) = v22;
    *(a2 + v24[7]) = v23;
  }

  return result;
}

uint64_t sub_2521CC63C(void *a1, void *a2)
{
  v4 = type metadata accessor for HeartRateSummaryStatisticsBucket(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = [a1 bucketIndex];
  v9 = [a1 heartRatesInBeatsPerMinute];
  sub_2521DBA50();

  *v7 = v8;
  v10 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_2521CA0F8(0, v10[2] + 1, 1, v10);
    *a2 = v10;
  }

  v13 = v10[2];
  v12 = v10[3];
  if (v13 >= v12 >> 1)
  {
    v10 = sub_2521CA0F8((v12 > 1), v13 + 1, 1, v10);
    *a2 = v10;
  }

  v10[2] = v13 + 1;
  return sub_2521CCD3C(v7, v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13);
}

void HeartRateSummaryStatisticsBucket.init(hkHeartRateSummaryStatisticsBucket:)(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [a1 bucketIndex];
  v5 = [a1 heartRatesInBeatsPerMinute];
  type metadata accessor for HeartRateSummaryStatisticsBucket(0);
  sub_2521DBA50();

  *a2 = v4;
}

void sub_2521CC890(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t HeartRateSummaryStatisticsBucket.heartRatesInBeatsPerMinute.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HeartRateSummaryStatisticsBucket(0) + 20);
  v4 = sub_2521DBAD0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HeartRateSummaryStatisticsBucket.heartRatesInBeatsPerMinute.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HeartRateSummaryStatisticsBucket(0) + 20);
  v4 = sub_2521DBAD0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HeartRateSummaryStatisticsBucket.init(bucketIndex:heartRatesInBeatsPerMinute:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for HeartRateSummaryStatisticsBucket(0) + 20);
  v6 = sub_2521DBAD0();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

void sub_2521CCB30(uint64_t a1)
{
  sub_2521DB8C0();
  if (v1 <= 0x3F)
  {
    sub_2521CCC34(319, &qword_27F4D4D20, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_2521CCC34(319, &qword_27F4D4D38, type metadata accessor for HeartRateSummaryStatisticsBucket, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2521CCC34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2521CCCC0(uint64_t a1)
{
  result = sub_2521DBAD0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2521CCD3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeartRateSummaryStatisticsBucket(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t HeartRateAppChartView.init(viewModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for HeartRateAppChartView(0);
  v5 = *(v4 + 20);
  sub_2521D6504(a1, a2, type metadata accessor for HeartRateAppChartViewModel);
  if (*(a1 + 8))
  {
    result = sub_2521D68D8(a1, type metadata accessor for HeartRateAppChartViewModel);
    *(a2 + v5) = 1;
    v7 = 0.5;
  }

  else
  {
    v8 = *(a1 + *(type metadata accessor for HeartRateAppChartViewModel(0) + 56));
    if (v8 >> 62)
    {
      v9 = sub_2521DC180();
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    result = sub_2521D68D8(a1, type metadata accessor for HeartRateAppChartViewModel);
    *(a2 + v5) = v9 > 0;
    v7 = 1.0;
    if (v9 > 0)
    {
      v7 = 0.5;
    }
  }

  *(a2 + *(v4 + 24)) = v7;
  return result;
}

uint64_t sub_2521CCED0@<X0>(uint64_t a1@<X8>)
{
  v106 = a1;
  sub_2521D6C84(0, &qword_27F4D4FB8, MEMORY[0x277CBB480], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v105 = &v85 - v3;
  sub_2521D647C(0);
  v91 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v90 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v89 = &v85 - v7;
  sub_2521D20E8(0);
  v97 = v8;
  MEMORY[0x28223BE20](v8);
  v93 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2521D1B30(0);
  v94 = v10;
  v92 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v114 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2521D1A5C(0);
  v98 = v12;
  v96 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v95 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2521D1908(0);
  v101 = v14;
  v100 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v99 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2521D1738(0);
  v104 = v16;
  v103 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v102 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2521DB9B0();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v117 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = (&v85 - v22);
  sub_2521DB9A0();
  sub_2521D80A8(v23, &v124);
  v88 = v19;
  v24 = *(v19 + 8);
  v116 = v23;
  v111 = v24;
  v112 = v19 + 8;
  v24(v23, v18);
  v25 = v124;
  v26 = v125;
  v27 = v126;
  v28 = v127;
  v107 = v128;
  v29 = type metadata accessor for HeartRateAppChartViewModel(0);
  v30 = *(v1 + *(v29 + 32));
  if (v26)
  {
    v31 = 0;
  }

  else
  {
    v31 = v25;
  }

  v115 = sub_2521D8AF8();
  v33 = v32;
  v108 = *(v1 + *(v29 + 56));
  v113 = v28;
  if (v28)
  {
    v34 = 10;
  }

  else
  {
    v34 = v27;
  }

  v35 = v31;
  v36 = v1;
  result = sub_2521D8B88(v35, v34);
  if (__OFADD__(v38, result))
  {
    __break(1u);
  }

  else
  {
    v109 = v38;
    v86 = result;
    v39 = vcvtd_n_f64_s64(v38 + result, 1uLL);
    v40 = v116;
    sub_2521DB890();
    v110 = v18;
    v41 = v117;
    v42 = sub_2521DB880();
    v87 = &v85;
    LOBYTE(v120) = v26;
    LOBYTE(v118) = v113;
    v124 = v25;
    v125 = v26;
    v126 = v27;
    v127 = v113;
    v128 = v107;
    v129 = v30;
    MEMORY[0x28223BE20](v42);
    *(&v85 - 10) = &v124;
    *(&v85 - 9) = v1;
    *(&v85 - 8) = v115;
    *(&v85 - 56) = v33 & 1;
    *(&v85 - 6) = v40;
    *(&v85 - 5) = v41;
    *(&v85 - 4) = v108;
    *(&v85 - 3) = v39;
    *(&v85 - 2) = v30;
    sub_2521D1B94(0);
    sub_2521D1DBC();
    v43 = v30;
    sub_2521DBD30();
    sub_2521D6D3C(&qword_27F4D4C50, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v44 = v110;
    result = sub_2521DC080();
    if (result)
    {
      LODWORD(v108) = v26 & v113;
      v113 = v33 & 1;
      v45 = v88;
      v46 = *(v88 + 16);
      v47 = v89;
      v46(v89, v116, v44);
      v48 = v44;
      v49 = v91;
      v46((v47 + *(v91 + 48)), v117, v48);
      v50 = v90;
      sub_2521D6504(v47, v90, sub_2521D647C);
      v51 = *(v49 + 48);
      v52 = *(v45 + 32);
      v53 = v93;
      v52(v93, v50, v48);
      v54 = v111;
      v111(&v50[v51], v48);
      sub_2521D6740(v47, v50, sub_2521D647C);
      v55 = *(v49 + 48);
      v56 = v97;
      v52((v53 + *(v97 + 36)), &v50[v55], v48);
      v54(v50, v48);
      v57 = sub_2521DBE60();
      v58 = *(v57 - 8);
      v90 = *(v58 + 56);
      v59 = v36;
      v85 = v36;
      v91 = v58 + 56;
      v60 = v105;
      (v90)(v105, 1, 1, v57);
      v61 = sub_2521D6D3C(&qword_27F4D4DF0, sub_2521D1B30, MEMORY[0x277CBB3F8]);
      v62 = sub_2521D217C();
      v63 = v95;
      v64 = v94;
      v65 = v114;
      sub_2521DBF90();
      v107 = MEMORY[0x277CBB480];
      sub_2521D656C(v60, &qword_27F4D4FB8, MEMORY[0x277CBB480]);
      sub_2521D68D8(v53, sub_2521D20E8);
      v66 = (*(v92 + 8))(v65, v64);
      MEMORY[0x28223BE20](v66);
      *(&v85 - 2) = v59;
      sub_2521D21EC(0);
      v68 = v67;
      v120 = v64;
      v121 = v56;
      v122 = v61;
      v123 = v62;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v70 = sub_2521D6D3C(&qword_27F4D4E70, sub_2521D21EC, MEMORY[0x277CBB460]);
      v71 = v99;
      v72 = v98;
      sub_2521DBF70();
      (*(v96 + 8))(v63, v72);
      v73 = v86;
      v118 = v86;
      v119 = v109;
      (v90)(v60, 1, 1, v57);
      sub_2521D6418(0, &qword_27F4D4CD8, MEMORY[0x277D83B88], MEMORY[0x277D83BA0], MEMORY[0x277D83638]);
      v75 = v74;
      v120 = v72;
      v121 = v68;
      v122 = OpaqueTypeConformance2;
      v123 = v70;
      v76 = swift_getOpaqueTypeConformance2();
      v77 = sub_2521D2850();
      v78 = v102;
      v79 = v101;
      sub_2521DBFA0();
      sub_2521D656C(v60, &qword_27F4D4FB8, v107);
      v80 = (*(v100 + 8))(v71, v79);
      MEMORY[0x28223BE20](v80);
      v81 = v109;
      *(&v85 - 6) = v73;
      *(&v85 - 5) = v81;
      *(&v85 - 4) = v85;
      *(&v85 - 24) = v108;
      *(&v85 - 2) = v115;
      *(&v85 - 8) = v113;
      sub_2521D28EC(0);
      v120 = v79;
      v121 = v75;
      v122 = v76;
      v123 = v77;
      swift_getOpaqueTypeConformance2();
      sub_2521D2F78();
      v82 = v104;
      sub_2521DBF80();
      sub_2521D65FC(&v124);
      (*(v103 + 8))(v78, v82);
      v83 = v110;
      v84 = v111;
      v111(v117, v110);
      return v84(v116, v83);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2521CDB2C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>, uint64_t a10@<D0>)
{
  v59 = a8;
  v57 = a6;
  v56 = a5;
  LODWORD(v64) = a4;
  v58 = a3;
  v63 = a9;
  v14 = type metadata accessor for HeartRateAverageLine(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2521D6C84(0, &qword_27F4D4D98, type metadata accessor for HeartRateAverageLine, MEMORY[0x277D83D88]);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v62 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v56 - v21;
  sub_2521D1C44(0);
  v24 = v23;
  v60 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v23);
  v65 = &v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v66 = &v56 - v27;
  sub_2521DC110();
  v61 = sub_2521DC100();
  sub_2521DC0F0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v28 = a1[1];
  v68 = *a1;
  v69 = v28;
  v70 = a1[2];
  type metadata accessor for HeartRateAppChartView(0);
  v29 = a2;
  sub_2521D1CC4();
  sub_2521DBBA0();
  if (v64)
  {
    v30 = 1;
    v31 = v22;
  }

  else
  {
    v32 = sub_2521DB9B0();
    v33 = *(*(v32 - 8) + 16);
    v33(v17, v56, v32);
    v33(&v17[*(v14 + 20)], v57, v32);
    v29 = a2;
    *&v17[*(v14 + 24)] = v58;
    v34 = v17;
    v31 = v22;
    sub_2521D6740(v34, v22, type metadata accessor for HeartRateAverageLine);
    v30 = 0;
  }

  (*(v15 + 56))(v31, v30, 1, v14);
  if (a7 >> 62)
  {
    if (sub_2521DC180())
    {
      goto LABEL_8;
    }

LABEL_16:
    a7 = 0;
    v45 = 0.0;
    v46 = 0;
    v64 = 0;
    v59 = 0;
    v44 = -1;
    goto LABEL_17;
  }

  if (!*((a7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_16;
  }

LABEL_8:
  if (*(v29 + *(type metadata accessor for HeartRateAppChartViewModel(0) + 52)) != 1)
  {
    goto LABEL_13;
  }

  v35 = COERCE_DOUBLE(sub_2521D8C98());
  if (v35 == 0.0)
  {
    goto LABEL_13;
  }

  v36 = v35;
  v37 = sub_2521D8E6C();
  if (!v37)
  {

LABEL_13:
    v64 = 0;
    v41 = 0;
    v36 = *&a10;
    v39 = 1;
    v40 = v59;
    v38 = v59;
    goto LABEL_14;
  }

  v38 = v37;
  v39 = 0;
  v64 = a10;
  v40 = v59;
  v41 = v59;
LABEL_14:
  v42 = v40;

  v59 = v41;
  v44 = v39;
  sub_2521D6E34(v43, *&v36, v38, v64, v41, v39);
  v45 = v36;
  v46 = v38;
LABEL_17:
  v47 = v60;
  v48 = v65;
  (*(v60 + 16))(v65, v66, v24);
  v67[0] = v48;
  v58 = v24;
  v49 = v62;
  sub_2521D58DC(v31, v62, &qword_27F4D4D98, type metadata accessor for HeartRateAverageLine, MEMORY[0x277D83D88]);
  *&v68 = a7;
  *(&v68 + 1) = v45;
  v50 = v31;
  v51 = v64;
  *&v69 = v46;
  *(&v69 + 1) = v64;
  v52 = v59;
  *&v70 = v59;
  BYTE8(v70) = v44;
  v67[1] = v49;
  v67[2] = &v68;
  sub_2521CE0D8(v67, v63);
  sub_2521D6E94(a7, *&v45, v46, v51, v52, v44);
  sub_2521D656C(v50, &qword_27F4D4D98, type metadata accessor for HeartRateAverageLine);
  v53 = *(v47 + 8);
  v54 = v58;
  v53(v66, v58);
  sub_2521D6E94(v68, *(&v68 + 1), v69, *(&v69 + 1), v70, SBYTE8(v70));
  sub_2521D656C(v49, &qword_27F4D4D98, type metadata accessor for HeartRateAverageLine);
  v53(v65, v54);
}

id sub_2521CE0D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2521D6F14(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2521D1C44(0);
  v9 = v8;
  sub_2521D1CC4();
  v10 = *a1;
  v11 = v9;
  v29 = v9;
  v12 = *(v9 - 8);
  (*(v12 + 16))(v7, v10, v11);
  v13 = MEMORY[0x277D83D88];
  v28 = type metadata accessor for HeartRateAverageLine;
  sub_2521D6C84(0, &qword_27F4D4D98, type metadata accessor for HeartRateAverageLine, MEMORY[0x277D83D88]);
  sub_2521D1EBC();
  v27 = *(v5 + 56);
  sub_2521D58DC(a1[1], &v7[v27], &qword_27F4D4D98, type metadata accessor for HeartRateAverageLine, v13);
  sub_2521D1D38(0);
  sub_2521D2DAC(&qword_27F4D4DC8, sub_2521D1D38, sub_2521D1F94, MEMORY[0x277CBB5B8]);
  v14 = &v7[*(v5 + 72)];
  v15 = a1[2];
  v16 = *v15;
  v17 = *(v15 + 8);
  v18 = *(v15 + 16);
  v19 = *(v15 + 24);
  v20 = *(v15 + 32);
  LODWORD(v15) = *(v15 + 40);
  HIDWORD(v26) = v15;
  *v14 = v16;
  *(v14 + 1) = v17;
  *(v14 + 2) = v18;
  *(v14 + 3) = v19;
  *(v14 + 4) = v20;
  v14[40] = v15;
  (*(v12 + 32))(a2, v7, v29);
  sub_2521D6848(&v7[v27], a2 + *(v5 + 56), &qword_27F4D4D98, v28);
  v21 = a2 + *(v5 + 72);
  v22 = *(v14 + 4);
  v23 = v14[40];
  v24 = *(v14 + 1);
  *v21 = *v14;
  *(v21 + 16) = v24;
  *(v21 + 32) = v22;
  *(v21 + 40) = v23;
  return sub_2521D6FCC(v16, v17, v18, v19, v20, SBYTE4(v26));
}

uint64_t sub_2521CE328(uint64_t a1)
{
  v2 = sub_2521DBC40();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_2521DBBD0();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = type metadata accessor for HeartRateAppChartView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_2521DC110();
  sub_2521DC100();
  sub_2521DC0F0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2521D9040();
  sub_2521D6504(a1, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HeartRateAppChartView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_2521D6740(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for HeartRateAppChartView);
  sub_2521DBBC0();
  sub_2521DBC30();
  sub_2521D6A48(0, &qword_27F4D4E08, MEMORY[0x277CBB378]);
  sub_2521DB9B0();
  sub_2521D24B0();
  sub_2521DBE00();
}

uint64_t sub_2521CE5CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2521D226C(0, &qword_27F4D4E40, sub_2521D237C);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  sub_2521D226C(0, &qword_27F4D4E10, sub_2521D22F4);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - v10;
  sub_2521D6A48(0, &qword_27F4D4E08, MEMORY[0x277CBB378]);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v16 - v13;
  sub_2521DC110();
  sub_2521DC100();
  sub_2521DC0F0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(a2 + *(type metadata accessor for HeartRateAppChartViewModel(0) + 36)) == 1)
  {
    sub_2521CE880(v11);
    sub_2521D6B70(v11, v14, &qword_27F4D4E10, sub_2521D22F4);
  }

  else
  {
    sub_2521CF080(a1, v8);
    sub_2521D6B70(v8, v14, &qword_27F4D4E40, sub_2521D237C);
  }

  sub_2521D6A48(0, &qword_27F4D4FE0, MEMORY[0x277CBB370]);
  swift_storeEnumTagMultiPayload();
  sub_2521D6AF0(v14, a3, &qword_27F4D4E08, sub_2521D6A48);
}

uint64_t sub_2521CE880@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v1 = sub_2521DBC90();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_2521DBD20();
  MEMORY[0x28223BE20](v2 - 8);
  sub_2521D6418(0, &qword_27F4D4E30, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CBB330]);
  v52 = v3;
  v54 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v48 - v4;
  sub_2521D237C(0);
  v53 = v6;
  v51 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v50 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2521D22F4(0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v61 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v48 - v11;
  v13 = sub_2521DBDB0();
  MEMORY[0x28223BE20](v13 - 8);
  v60 = sub_2521DBDD0();
  v57 = *(v60 - 8);
  v14 = MEMORY[0x28223BE20](v60);
  v59 = v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = v48 - v16;
  v58 = sub_2521DBAF0();
  v55 = *(v58 - 8);
  v18 = MEMORY[0x28223BE20](v58);
  v56 = v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v67 = 0;
  v65 = 0u;
  v66 = 0u;
  v63 = v48 - v20;
  sub_2521DBAE0();
  sub_2521DBDA0();
  v21 = v17;
  sub_2521DBDC0();
  if (!sub_2521DBE30())
  {
    sub_2521DC050();
    v49 = v27;
    v28 = sub_2521DBD10();
    MEMORY[0x28223BE20](v28);
    sub_2521DBC80();
    v47 = MEMORY[0x277CE0BC8];
    v45 = &v44;
    v46 = MEMORY[0x277CE0BD8];
    v44 = sub_2521D6C64;
    sub_2521DBBE0();
    v26 = v5;
    goto LABEL_5;
  }

  v22 = 1;
  if (sub_2521DBE30() == 2)
  {
    sub_2521DC060();
    v49 = v23;
    v48[1] = v24;
    v25 = sub_2521DBD10();
    MEMORY[0x28223BE20](v25);
    sub_2521DBC80();
    v47 = MEMORY[0x277CE0BC8];
    v45 = &v44;
    v46 = MEMORY[0x277CE0BD8];
    v44 = sub_2521D6BDC;
    v26 = v5;
    sub_2521DBBE0();
LABEL_5:
    sub_2521D242C();
    v29 = v50;
    v30 = v52;
    sub_2521DBD90();
    (*(v54 + 8))(v26, v30);
    (*(v51 + 32))(v12, v29, v53);
    sub_2521D6BFC(0, &qword_27F4D4FE8, sub_2521D237C, MEMORY[0x277CBB370]);
    swift_storeEnumTagMultiPayload();
    v22 = 0;
  }

  sub_2521D6BFC(0, &qword_27F4D4E20, sub_2521D237C, MEMORY[0x277CBB378]);
  (*(*(v31 - 8) + 56))(v12, v22, 1, v31);
  v32 = v55;
  v33 = v56;
  v34 = v58;
  (*(v55 + 16))(v56, v63, v58);
  v64[0] = v33;
  v35 = v57;
  v36 = v59;
  v37 = v21;
  v38 = v21;
  v39 = v60;
  (*(v57 + 16))(v59, v38, v60);
  v64[1] = v36;
  v40 = v61;
  sub_2521C75B8(v12, v61);
  v64[2] = v40;
  sub_2521D0CF4(v64, v62);
  sub_2521C761C(v12);
  v41 = *(v35 + 8);
  v41(v37, v39);
  v42 = *(v32 + 8);
  v42(v63, v34);
  sub_2521C761C(v40);
  v41(v36, v39);
  return (v42)(v33, v34);
}

uint64_t sub_2521CF080@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a1;
  v53 = a2;
  v2 = sub_2521DBC90();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_2521DBD20();
  MEMORY[0x28223BE20](v3 - 8);
  sub_2521D6418(0, &qword_27F4D4E30, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CBB330]);
  v48 = v4;
  v46 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v40 - v5;
  sub_2521D237C(0);
  v49 = *(v7 - 8);
  v50 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v47 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - v10;
  v12 = sub_2521DBDB0();
  MEMORY[0x28223BE20](v12 - 8);
  v45 = sub_2521DBDD0();
  v44 = *(v45 - 8);
  v13 = MEMORY[0x28223BE20](v45);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v40 - v16;
  v43 = sub_2521DBAF0();
  v18 = *(v43 - 8);
  v19 = MEMORY[0x28223BE20](v43);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v59 = 0;
  v57 = 0u;
  v58 = 0u;
  v23 = &v40 - v22;
  v41 = &v40 - v22;
  sub_2521DBAE0();
  sub_2521DBDA0();
  sub_2521DBDC0();
  sub_2521DBD10();
  v54 = v51;
  v55 = v52;
  sub_2521DBC80();
  sub_2521DBBE0();
  sub_2521D242C();
  v24 = v48;
  sub_2521DBD90();
  (*(v46 + 8))(v6, v24);
  v25 = *(v18 + 16);
  v42 = v21;
  v26 = v23;
  v27 = v43;
  v25(v21, v26, v43);
  v56[0] = v21;
  v28 = v44;
  v29 = *(v44 + 16);
  v40 = v15;
  v30 = v45;
  v29(v15, v17, v45);
  v56[1] = v15;
  v31 = v49;
  v32 = v50;
  v33 = v47;
  (*(v49 + 16))(v47, v11, v50);
  v56[2] = v33;
  sub_2521D0EF4(v56, v53);
  v34 = *(v31 + 8);
  v35 = v11;
  v36 = v32;
  v34(v35, v32);
  v37 = *(v28 + 8);
  v37(v17, v30);
  v38 = *(v18 + 8);
  v38(v41, v27);
  v34(v33, v36);
  v37(v40, v30);
  return (v38)(v42, v27);
}

uint64_t sub_2521CF668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v57 = a6;
  v58 = a5;
  v53 = a4;
  v50 = a1;
  v51 = a2;
  v61 = a7;
  sub_2521D6650(0);
  v60 = v8;
  MEMORY[0x28223BE20](v8);
  v59 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2521D6C84(0, &qword_27F4D4ED8, sub_2521D2EE8, MEMORY[0x277D83D88]);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v56 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v54 = &v48 - v13;
  v14 = sub_2521DBBD0();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = type metadata accessor for HeartRateAppChartView(0);
  v49 = *(v15 - 8);
  v16 = *(v49 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2521DBC40();
  MEMORY[0x28223BE20](v18 - 8);
  sub_2521D2990(0);
  v52 = v19;
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v48 - v24;
  sub_2521DC110();
  v55 = sub_2521DC100();
  sub_2521DC0F0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2521DBBC0();
  sub_2521D66F0();
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_2521DC7E0;
  v27 = v51;
  *(v26 + 32) = v50;
  *(v26 + 40) = v27;
  sub_2521D6504(a3, &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HeartRateAppChartView);
  v28 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v29 = v28 + v16;
  v30 = swift_allocObject();
  sub_2521D6740(v17, v30 + v28, type metadata accessor for HeartRateAppChartView);
  *(v30 + v29) = v53 & 1;
  sub_2521DBBC0();
  sub_2521D2A8C(0);
  sub_2521D2B68(255);
  v32 = v31;
  v33 = sub_2521D2DAC(&qword_27F4D4EC0, sub_2521D2B68, sub_2521D2E1C, MEMORY[0x277CBB5C0]);
  v62 = v32;
  v63 = MEMORY[0x277CE0F78];
  v64 = v33;
  v65 = MEMORY[0x277CE0F60];
  swift_getOpaqueTypeConformance2();
  v34 = v25;
  v48 = v25;
  sub_2521DBE00();
  v35 = v54;
  sub_2521D03DC(v58, v57 & 1, v54);
  v36 = v20;
  v37 = *(v20 + 16);
  v38 = v34;
  v39 = v52;
  v37(v23, v38, v52);
  v40 = MEMORY[0x277D83D88];
  v41 = v56;
  sub_2521D58DC(v35, v56, &qword_27F4D4ED8, sub_2521D2EE8, MEMORY[0x277D83D88]);
  sub_2521D6D3C(&qword_27F4D4EF0, sub_2521D2990, MEMORY[0x277CBB460]);
  v42 = v59;
  v37(v59, v23, v39);
  sub_2521D3030();
  v43 = v60;
  v44 = *(v60 + 48);
  sub_2521D58DC(v41, &v42[v44], &qword_27F4D4ED8, sub_2521D2EE8, v40);
  v45 = v61;
  (*(v36 + 32))(v61, v42, v39);
  sub_2521D6848(&v42[v44], v45 + *(v43 + 48), &qword_27F4D4ED8, sub_2521D2EE8);
  sub_2521D656C(v35, &qword_27F4D4ED8, sub_2521D2EE8);
  v46 = *(v36 + 8);
  v46(v48, v39);
  sub_2521D656C(v41, &qword_27F4D4ED8, sub_2521D2EE8);
  v46(v23, v39);
}

uint64_t sub_2521CFCE4(uint64_t a1, uint64_t a2, char a3)
{
  sub_2521D2B68(0);
  MEMORY[0x28223BE20](v5);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2521DC110();
  sub_2521DC100();
  sub_2521DC0F0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2521CFED4(a3 & 1, v7);
  v8 = *(a2 + *(type metadata accessor for HeartRateAppChartViewModel(0) + 32));
  sub_2521DBFE0();
  type metadata accessor for HeartRateAppChartView(0);
  v9 = sub_2521DC000();

  v11[1] = v9;
  sub_2521D2DAC(&qword_27F4D4EC0, sub_2521D2B68, sub_2521D2E1C, MEMORY[0x277CBB5C0]);
  sub_2521DBD80();

  sub_2521D68D8(v7, sub_2521D2B68);
}

uint64_t sub_2521CFED4@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  v31 = a2;
  sub_2521D6418(0, &qword_27F4D4E30, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CBB330]);
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v28 - v4;
  v6 = sub_2521DBC90();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_2521DBD20();
  MEMORY[0x28223BE20](v7 - 8);
  sub_2521D2C78(0);
  v9 = v8;
  v28 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2521D2BDC(0, &qword_27F4D4EA0, MEMORY[0x277CBB378]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = &v28 - v15;
  if (a1 & 1) != 0 || (sub_2521DBE20(), (v32))
  {
    v17 = 1;
    v18 = v31;
  }

  else
  {
    if (sub_2521DBE30() == 1)
    {
      v19 = sub_2521DBD10();
      MEMORY[0x28223BE20](v19);
      sub_2521DBC80();
      sub_2521D6418(0, &qword_27F4D4EB0, MEMORY[0x277CE0BD8], MEMORY[0x277CDF758], MEMORY[0x277CDFAB8]);
      v26 = v20;
      v27 = sub_2521D2D08();
      v24 = sub_2521D69C0;
      v25 = &v24;
      sub_2521DBBE0();
      (*(v28 + 32))(v16, v11, v9);
    }

    else
    {
      v21 = sub_2521DBD10();
      MEMORY[0x28223BE20](v21);
      sub_2521DBC80();
      v27 = MEMORY[0x277CE0BC8];
      v25 = &v24;
      v26 = MEMORY[0x277CE0BD8];
      v24 = sub_2521D6938;
      sub_2521DBBE0();
      (*(v29 + 32))(v16, v5, v30);
    }

    sub_2521D2BDC(0, &qword_27F4D4FD8, MEMORY[0x277CBB370]);
    swift_storeEnumTagMultiPayload();
    v22 = v31;
    sub_2521D6940(v16, v31);
    v18 = v22;
    v17 = 0;
  }

  return (*(v14 + 56))(v18, v17, 1, v13);
}

uint64_t sub_2521D03DC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_2521DBBD0();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_2521DBC40();
  MEMORY[0x28223BE20](v7 - 8);
  sub_2521D2EE8(0);
  v9 = v8;
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v13 = *(v10 + 56);

    return v13(a3, 1, 1, v9);
  }

  else
  {
    v17 = v10;
    sub_2521DBBC0();
    sub_2521D66F0();
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_2521DC7F0;
    *(v15 + 32) = a1;
    *(swift_allocObject() + 16) = a1;
    sub_2521DBBC0();
    sub_2521D6418(0, &qword_27F4D4E30, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CBB330]);
    sub_2521D242C();
    sub_2521DBE00();
    (*(v17 + 32))(a3, v12, v9);
    return (*(v17 + 56))(a3, 0, 1, v9);
  }
}

uint64_t sub_2521D0694(uint64_t a1)
{
  v2 = v1;
  v47 = a1;
  v3 = sub_2521DB930();
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x28223BE20](v3);
  v42 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_2521DB900();
  v5 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_2521DB910();
  v8 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2521DB950();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v42 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v42 - v19;
  v21 = *(v2 + *(type metadata accessor for HeartRateAppChartViewModel(0) + 48));
  v22 = (v5 + 8);
  v23 = (v8 + 8);
  v24 = (v12 + 8);
  if (v21 == 1)
  {
    MEMORY[0x25309B630]();
    sub_2521DB8F0();
    sub_2521DB8E0();
    (*v22)(v7, v46);
    sub_2521DB8D0();
    (*v23)(v10, v45);
    v25 = *v24;
    (*v24)(v18, v11);
    sub_2521D6D3C(&qword_27F4D5000, MEMORY[0x277CC9428], MEMORY[0x277CC9420]);
    sub_2521DB990();
    v25(v20, v11);
    v52 = 0;
    v53 = 0xE000000000000000;
    v26 = HIBYTE(v55) & 0xF;
    if ((v55 & 0x2000000000000000) == 0)
    {
      v26 = v54 & 0xFFFFFFFFFFFFLL;
    }

    v48 = v54;
    v49 = v55;
    v50 = 0;
    v51 = v26;
    v27 = sub_2521DC0B0();
    v29 = v28;
    if (v28)
    {
      v30 = v27;
      sub_2521DC110();
      do
      {
        sub_2521DC100();
        sub_2521DC0F0();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v32 = sub_2521DC070();

        if ((v32 & 1) == 0)
        {
          MEMORY[0x25309BE70](v30, v29);
        }

        v30 = sub_2521DC0B0();
        v29 = v31;
      }

      while (v31);
LABEL_20:
      v29 = v52;
    }
  }

  else
  {
    MEMORY[0x25309B630]();
    sub_2521DB8F0();
    sub_2521DB8E0();
    (*v22)(v7, v46);
    sub_2521DB8D0();
    (*v23)(v10, v45);
    v33 = *v24;
    (*v24)(v15, v11);
    v34 = v42;
    sub_2521DB920();
    sub_2521DB940();
    (*(v43 + 8))(v34, v44);
    v33(v18, v11);
    sub_2521D6D3C(&qword_27F4D5000, MEMORY[0x277CC9428], MEMORY[0x277CC9420]);
    sub_2521DB990();
    v33(v20, v11);
    v52 = 0;
    v53 = 0xE000000000000000;
    v35 = HIBYTE(v55) & 0xF;
    if ((v55 & 0x2000000000000000) == 0)
    {
      v35 = v54 & 0xFFFFFFFFFFFFLL;
    }

    v48 = v54;
    v49 = v55;
    v50 = 0;
    v51 = v35;
    v36 = sub_2521DC0B0();
    v29 = v37;
    if (v37)
    {
      v38 = v36;
      sub_2521DC110();
      do
      {
        sub_2521DC100();
        sub_2521DC0F0();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v40 = sub_2521DC070();

        if ((v40 & 1) == 0)
        {
          MEMORY[0x25309BE70](v38, v29);
        }

        v38 = sub_2521DC0B0();
        v29 = v39;
      }

      while (v39);
      goto LABEL_20;
    }
  }

  return v29;
}

uint64_t sub_2521D0CF4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2521D6DA4(0, &qword_27F4D5008, sub_2521D22F4);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - v6;
  v8 = sub_2521DBAF0();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, *a1, v8);
  v10 = sub_2521DBDD0();
  v11 = *(v5 + 56);
  v12 = *(v10 - 8);
  (*(v12 + 16))(&v7[v11], a1[1], v10);
  sub_2521D22F4(0);
  sub_2521D2DAC(&qword_27F4D4E58, sub_2521D22F4, sub_2521D2640, MEMORY[0x277CBB5C0]);
  v13 = *(v5 + 72);
  sub_2521C75B8(a1[2], &v7[v13]);
  (*(v9 + 32))(a2, v7, v8);
  (*(v12 + 32))(a2 + *(v5 + 56), &v7[v11], v10);
  return sub_2521C7678(&v7[v13], a2 + *(v5 + 72));
}

uint64_t sub_2521D0EF4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2521D6DA4(0, &qword_27F4D5010, sub_2521D237C);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - v6;
  v8 = sub_2521DBAF0();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, *a1, v8);
  v10 = sub_2521DBDD0();
  v11 = *(v5 + 56);
  v20 = v11;
  v12 = *(v10 - 8);
  (*(v12 + 16))(&v7[v11], a1[1], v10);
  sub_2521D237C(0);
  v14 = v13;
  sub_2521D6418(255, &qword_27F4D4E30, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CBB330]);
  sub_2521D242C();
  v15 = *(v5 + 72);
  v16 = a1[2];
  v17 = *(v14 - 8);
  (*(v17 + 16))(&v7[v15], v16, v14);
  (*(v9 + 32))(a2, v7, v8);
  (*(v12 + 32))(a2 + *(v5 + 56), &v7[v20], v10);
  return (*(v17 + 32))(a2 + *(v5 + 72), &v7[v15], v14);
}

uint64_t sub_2521D1140@<X0>(uint64_t a2@<X8>)
{
  sub_2521D6C84(0, &qword_27F4D4FF0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v19 - v4;
  sub_2521DC110();
  sub_2521DC100();
  sub_2521DC0F0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = sub_2521DB9B0();
  sub_2521DBE20();
  v7 = *(v6 - 8);
  result = (*(v7 + 48))(v5, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v9 = sub_2521D0694(v5);
    v11 = v10;
    (*(v7 + 8))(v5, v6);
    v19[0] = v9;
    v19[1] = v11;
    sub_2521D6CE8();
    v12 = sub_2521DBF60();
    v14 = v13;
    v16 = v15;
    v18 = v17;

    *a2 = v12;
    *(a2 + 8) = v14;
    *(a2 + 16) = v16 & 1;
    *(a2 + 24) = v18;
  }

  return result;
}

double sub_2521D1340@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_2521DBEB0();
  MEMORY[0x28223BE20](v3 - 8);
  sub_2521DC110();
  sub_2521DC100();
  sub_2521DC0F0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2521DBEA0();
  sub_2521DBE90();
  sub_2521DBE80();
  sub_2521DBE90();
  sub_2521DBED0();
  v4 = sub_2521DBF50();
  v6 = v5;
  v8 = v7;
  v10 = v9;

  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v10;
  result = 0.0;
  *(a2 + 32) = xmmword_2521DC800;
  return result;
}

uint64_t sub_2521D14D8@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_2521DBEB0();
  MEMORY[0x28223BE20](v3 - 8);
  sub_2521DC110();
  sub_2521DC100();
  sub_2521DC0F0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2521DBEA0();
  sub_2521DBE90();
  sub_2521DBE80();
  sub_2521DBE90();
  sub_2521DBED0();
  v4 = sub_2521DBF50();
  v6 = v5;
  v8 = v7;
  v10 = v9;

  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v10;
  return result;
}

uint64_t sub_2521D16B4(uint64_t a1)
{
  result = type metadata accessor for HeartRateAppChartViewModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2521D1738(uint64_t a1)
{
  if (!qword_27F4D4D60)
  {
    sub_2521D1908(255);
    sub_2521D6418(255, &qword_27F4D4CD8, MEMORY[0x277D83B88], MEMORY[0x277D83BA0], MEMORY[0x277D83638]);
    sub_2521D1A5C(255);
    sub_2521D21EC(255);
    sub_2521D1B30(255);
    sub_2521D20E8(255);
    sub_2521D6D3C(&qword_27F4D4DF0, sub_2521D1B30, MEMORY[0x277CBB3F8]);
    sub_2521D217C();
    swift_getOpaqueTypeConformance2();
    sub_2521D6D3C(&qword_27F4D4E70, sub_2521D21EC, MEMORY[0x277CBB460]);
    swift_getOpaqueTypeConformance2();
    sub_2521D2850();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F4D4D60);
    }
  }
}

void sub_2521D1908(uint64_t a1)
{
  if (!qword_27F4D4D68)
  {
    sub_2521D1A5C(255);
    sub_2521D21EC(255);
    sub_2521D1B30(255);
    sub_2521D20E8(255);
    sub_2521D6D3C(&qword_27F4D4DF0, sub_2521D1B30, MEMORY[0x277CBB3F8]);
    sub_2521D217C();
    swift_getOpaqueTypeConformance2();
    sub_2521D6D3C(&qword_27F4D4E70, sub_2521D21EC, MEMORY[0x277CBB460]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F4D4D68);
    }
  }
}

void sub_2521D1A5C(uint64_t a1)
{
  if (!qword_27F4D4D70)
  {
    sub_2521D1B30(255);
    sub_2521D20E8(255);
    sub_2521D6D3C(&qword_27F4D4DF0, sub_2521D1B30, MEMORY[0x277CBB3F8]);
    sub_2521D217C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F4D4D70);
    }
  }
}

void sub_2521D1B30(uint64_t a1)
{
  if (!qword_27F4D4D78)
  {
    sub_2521D1B94(255);
    sub_2521D1DBC();
    v1 = sub_2521DBD40();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4D4D78);
    }
  }
}

void sub_2521D1B94(uint64_t a1)
{
  if (!qword_27F4D4D80)
  {
    sub_2521D1C44(255);
    sub_2521D6C84(255, &qword_27F4D4D98, type metadata accessor for HeartRateAverageLine, MEMORY[0x277D83D88]);
    sub_2521D1D38(255);
    v1 = sub_2521DBB00();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4D4D80);
    }
  }
}

void sub_2521D1C44(uint64_t a1)
{
  if (!qword_27F4D4D88)
  {
    sub_2521D1CC4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F4D4D88);
    }
  }
}

unint64_t sub_2521D1CC4()
{
  result = qword_27F4D4D90;
  if (!qword_27F4D4D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D4D90);
  }

  return result;
}

void sub_2521D1D38(uint64_t a1)
{
  if (!qword_27F4D4DA0)
  {
    sub_2521D6418(255, &qword_27F4D4DA8, &type metadata for HeartRateHighlightedBreathePoints, &type metadata for HeartRateHighlightedWorkoutPoints, MEMORY[0x277CBB378]);
    v1 = sub_2521DC150();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4D4DA0);
    }
  }
}

unint64_t sub_2521D1DBC()
{
  result = qword_27F4D4DB0;
  if (!qword_27F4D4DB0)
  {
    sub_2521D1B94(255);
    sub_2521D1CC4();
    swift_getOpaqueTypeConformance2();
    sub_2521D1EBC();
    sub_2521D2DAC(&qword_27F4D4DC8, sub_2521D1D38, sub_2521D1F94, MEMORY[0x277CBB5B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D4DB0);
  }

  return result;
}

unint64_t sub_2521D1EBC()
{
  result = qword_27F4D4DB8;
  if (!qword_27F4D4DB8)
  {
    sub_2521D6C84(255, &qword_27F4D4D98, type metadata accessor for HeartRateAverageLine, MEMORY[0x277D83D88]);
    sub_2521D6D3C(&qword_27F4D4DC0, type metadata accessor for HeartRateAverageLine, &unk_2521DCA18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D4DB8);
  }

  return result;
}

unint64_t sub_2521D1F94()
{
  result = qword_27F4D4DD0;
  if (!qword_27F4D4DD0)
  {
    sub_2521D6418(255, &qword_27F4D4DA8, &type metadata for HeartRateHighlightedBreathePoints, &type metadata for HeartRateHighlightedWorkoutPoints, MEMORY[0x277CBB378]);
    sub_2521D2040();
    sub_2521D2094();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D4DD0);
  }

  return result;
}

unint64_t sub_2521D2040()
{
  result = qword_27F4D4DD8;
  if (!qword_27F4D4DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D4DD8);
  }

  return result;
}

unint64_t sub_2521D2094()
{
  result = qword_27F4D4DE0;
  if (!qword_27F4D4DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D4DE0);
  }

  return result;
}

void sub_2521D20E8(uint64_t a1)
{
  if (!qword_27F4D4DE8)
  {
    sub_2521DB9B0();
    sub_2521D6D3C(&qword_27F4D4C50, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v1 = sub_2521DC090();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4D4DE8);
    }
  }
}

unint64_t sub_2521D217C()
{
  result = qword_27F4D4DF8;
  if (!qword_27F4D4DF8)
  {
    sub_2521D20E8(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D4DF8);
  }

  return result;
}

void sub_2521D21EC(uint64_t a1)
{
  if (!qword_27F4D4E00)
  {
    sub_2521D6A48(255, &qword_27F4D4E08, MEMORY[0x277CBB378]);
    sub_2521D24B0();
    v1 = sub_2521DBE10();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4D4E00);
    }
  }
}

void sub_2521D226C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_2521DBAF0();
    sub_2521DBDD0();
    a3(255);
    v5 = sub_2521DBB00();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2521D22F4(uint64_t a1)
{
  if (!qword_27F4D4E18)
  {
    sub_2521D6BFC(255, &qword_27F4D4E20, sub_2521D237C, MEMORY[0x277CBB378]);
    v1 = sub_2521DC150();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4D4E18);
    }
  }
}

void sub_2521D237C(uint64_t a1)
{
  if (!qword_27F4D4E28)
  {
    sub_2521D6418(255, &qword_27F4D4E30, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CBB330]);
    sub_2521D242C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F4D4E28);
    }
  }
}

unint64_t sub_2521D242C()
{
  result = qword_27F4D4E38;
  if (!qword_27F4D4E38)
  {
    sub_2521D6418(255, &qword_27F4D4E30, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CBB330]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D4E38);
  }

  return result;
}

unint64_t sub_2521D24B0()
{
  result = qword_27F4D4E48;
  if (!qword_27F4D4E48)
  {
    sub_2521D6A48(255, &qword_27F4D4E08, MEMORY[0x277CBB378]);
    sub_2521D254C();
    sub_2521D2744();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D4E48);
  }

  return result;
}

unint64_t sub_2521D254C()
{
  result = qword_27F4D4E50;
  if (!qword_27F4D4E50)
  {
    sub_2521D226C(255, &qword_27F4D4E10, sub_2521D22F4);
    sub_2521D2DAC(&qword_27F4D4E58, sub_2521D22F4, sub_2521D2640, MEMORY[0x277CBB5C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D4E50);
  }

  return result;
}

unint64_t sub_2521D2640()
{
  result = qword_27F4D4E60;
  if (!qword_27F4D4E60)
  {
    sub_2521D6BFC(255, &qword_27F4D4E20, sub_2521D237C, MEMORY[0x277CBB378]);
    sub_2521D6418(255, &qword_27F4D4E30, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CBB330]);
    sub_2521D242C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D4E60);
  }

  return result;
}

unint64_t sub_2521D2744()
{
  result = qword_27F4D4E68;
  if (!qword_27F4D4E68)
  {
    sub_2521D226C(255, &qword_27F4D4E40, sub_2521D237C);
    sub_2521D6418(255, &qword_27F4D4E30, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CBB330]);
    sub_2521D242C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D4E68);
  }

  return result;
}

unint64_t sub_2521D2850()
{
  result = qword_27F4D4E78;
  if (!qword_27F4D4E78)
  {
    sub_2521D6418(255, &qword_27F4D4CD8, MEMORY[0x277D83B88], MEMORY[0x277D83BA0], MEMORY[0x277D83638]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D4E78);
  }

  return result;
}

void sub_2521D28EC(uint64_t a1)
{
  if (!qword_27F4D4E80)
  {
    sub_2521D2990(255);
    sub_2521D6C84(255, &qword_27F4D4ED8, sub_2521D2EE8, MEMORY[0x277D83D88]);
    v1 = sub_2521DBB00();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4D4E80);
    }
  }
}

void sub_2521D2990(uint64_t a1)
{
  if (!qword_27F4D4E88)
  {
    sub_2521D2A8C(255);
    sub_2521D2B68(255);
    sub_2521D2DAC(&qword_27F4D4EC0, sub_2521D2B68, sub_2521D2E1C, MEMORY[0x277CBB5C0]);
    swift_getOpaqueTypeConformance2();
    v1 = sub_2521DBE10();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4D4E88);
    }
  }
}

void sub_2521D2A8C(uint64_t a1)
{
  if (!qword_27F4D4E90)
  {
    sub_2521D2B68(255);
    sub_2521D2DAC(&qword_27F4D4EC0, sub_2521D2B68, sub_2521D2E1C, MEMORY[0x277CBB5C0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F4D4E90);
    }
  }
}

void sub_2521D2B68(uint64_t a1)
{
  if (!qword_27F4D4E98)
  {
    sub_2521D2BDC(255, &qword_27F4D4EA0, MEMORY[0x277CBB378]);
    v1 = sub_2521DC150();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4D4E98);
    }
  }
}

void sub_2521D2BDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_2521D2C78(255);
    v7 = v6;
    sub_2521D6418(255, &qword_27F4D4E30, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CBB330]);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2521D2C78(uint64_t a1)
{
  if (!qword_27F4D4EA8)
  {
    sub_2521D6418(255, &qword_27F4D4EB0, MEMORY[0x277CE0BD8], MEMORY[0x277CDF758], MEMORY[0x277CDFAB8]);
    sub_2521D2D08();
    v1 = sub_2521DBBF0();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4D4EA8);
    }
  }
}

unint64_t sub_2521D2D08()
{
  result = qword_27F4D4EB8;
  if (!qword_27F4D4EB8)
  {
    sub_2521D6418(255, &qword_27F4D4EB0, MEMORY[0x277CE0BD8], MEMORY[0x277CDF758], MEMORY[0x277CDFAB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D4EB8);
  }

  return result;
}

uint64_t sub_2521D2DAC(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2521D2E1C()
{
  result = qword_27F4D4EC8;
  if (!qword_27F4D4EC8)
  {
    sub_2521D2BDC(255, &qword_27F4D4EA0, MEMORY[0x277CBB378]);
    sub_2521D6D3C(&qword_27F4D4ED0, sub_2521D2C78, MEMORY[0x277CBB338]);
    sub_2521D242C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D4EC8);
  }

  return result;
}

void sub_2521D2EE8(uint64_t a1)
{
  if (!qword_27F4D4EE0)
  {
    sub_2521D6418(255, &qword_27F4D4E30, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CBB330]);
    sub_2521D242C();
    v1 = sub_2521DBE10();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4D4EE0);
    }
  }
}

unint64_t sub_2521D2F78()
{
  result = qword_27F4D4EE8;
  if (!qword_27F4D4EE8)
  {
    sub_2521D28EC(255);
    sub_2521D6D3C(&qword_27F4D4EF0, sub_2521D2990, MEMORY[0x277CBB460]);
    sub_2521D3030();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D4EE8);
  }

  return result;
}

unint64_t sub_2521D3030()
{
  result = qword_27F4D4EF8;
  if (!qword_27F4D4EF8)
  {
    sub_2521D6C84(255, &qword_27F4D4ED8, sub_2521D2EE8, MEMORY[0x277D83D88]);
    sub_2521D6D3C(&qword_27F4D4F00, sub_2521D2EE8, MEMORY[0x277CBB460]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D4EF8);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2521D311C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2521D3164(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2521D31B4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2521D31FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2521D327C(uint64_t a1)
{
  result = sub_2521DB9B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2521D3314@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  sub_2521D6418(0, &qword_27F4D4F18, MEMORY[0x277D83B88], MEMORY[0x277CBB5A0], MEMORY[0x277CBB340]);
  MEMORY[0x28223BE20](v2 - 8);
  v22 = v20 - v3;
  sub_2521D579C(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v20[1] = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v20[0] = v20 - v7;
  v21 = sub_2521DBDF0();
  v23 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2521D57FC(0);
  v11 = *(v10 - 8);
  v24 = v10;
  v25 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2521DBEC0();
  sub_2521DB9B0();
  sub_2521DBC00();

  sub_2521DBEC0();
  v14 = type metadata accessor for HeartRateAverageLine(0);
  sub_2521DBC00();

  sub_2521DBEC0();
  v30[0] = *(v1 + *(v14 + 24));
  sub_2521DBC00();

  sub_2521DBDE0();
  sub_2521DBE70();
  v15 = MEMORY[0x277CBB450];
  v16 = v21;
  sub_2521DBBB0();
  sub_2521D5880(v30);
  (*(v23 + 8))(v9, v16);
  v17 = sub_2521DBFF0();
  v28 = v15;
  v29 = v17;
  v27 = v16;
  swift_getOpaqueTypeConformance2();
  v18 = v24;
  sub_2521DBB90();

  return (*(v25 + 8))(v13, v18);
}

uint64_t sub_2521D377C()
{
  v0 = sub_2521DBC90();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_2521DBD20();
  MEMORY[0x28223BE20](v1 - 8);
  sub_2521DC110();
  sub_2521DC100();
  sub_2521DC0F0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_2521DBD10();
  MEMORY[0x28223BE20](v2);
  sub_2521DBC80();
  v4[3] = MEMORY[0x277CE0BC8];
  v4[1] = v4;
  v4[2] = MEMORY[0x277CE0BD8];
  v4[0] = sub_2521D68D0;
  sub_2521DBBE0();
}

uint64_t sub_2521D3964@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_2521DBEB0();
  MEMORY[0x28223BE20](v3 - 8);
  sub_2521DC110();
  sub_2521DC100();
  sub_2521DC0F0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2521DBEA0();
  sub_2521DBE90();
  sub_2521DBE80();
  sub_2521DBE90();
  sub_2521DBED0();
  v4 = sub_2521DBF50();
  v6 = v5;
  v8 = v7;
  sub_2521DBFF0();
  v9 = sub_2521DBF30();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_2521D6408(v4, v6, v8 & 1);

  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13 & 1;
  *(a2 + 24) = v15;
  return result;
}

uint64_t sub_2521D3B74@<X0>(void **a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>, double a4@<D0>)
{
  v36 = a2;
  v47 = a3;
  v6 = sub_2521DBCC0();
  v37 = *(v6 - 8);
  v38 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2521DBCF0();
  v10 = MEMORY[0x28223BE20](v9 - 8);
  MEMORY[0x28223BE20](v10);
  v11 = sub_2521DBD00();
  v45 = *(v11 - 8);
  v46 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2521D5B68(0);
  v43 = *(v14 - 8);
  v44 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2521DBC70();
  v41 = *(v17 - 8);
  v42 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2521DB9B0();
  v39 = *(v20 - 8);
  v40 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a1;
  sub_2521DC110();
  v35 = sub_2521DC100();
  sub_2521DC0F0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v24 = [v23 quantity];
  [v24 _beatsPerMinute];
  v26 = v25;

  v27 = round(v26);
  v28 = [v23 date];
  sub_2521DB980();

  if (v27 >= a4)
  {
    sub_2521DBC60();
  }

  else
  {
    sub_2521DBC50();
  }

  sub_2521D5220(v22, v36, v16, *&v27);
  sub_2521DBCB0();
  sub_2521DBCD0();
  (*(v37 + 8))(v8, v38);
  sub_2521DBCE0();
  v29 = sub_2521DBCA0();
  MEMORY[0x28223BE20](v29);
  sub_2521DC040();
  sub_2521D5C30(255);
  v31 = v30;
  v48 = sub_2521DBE50();
  v49 = MEMORY[0x277CE0F78];
  v50 = MEMORY[0x277CBB468];
  v51 = MEMORY[0x277CE0F60];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v48 = v31;
  v49 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v33 = v44;
  sub_2521DBB60();
  (*(v45 + 8))(v13, v46);
  (*(v43 + 8))(v16, v33);
  (*(v41 + 8))(v19, v42);
  (*(v39 + 8))(v22, v40);
}

uint64_t sub_2521D4124()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  swift_getKeyPath();
  v4 = swift_allocObject();
  v4[2] = v1;
  v4[3] = v2;
  v4[4] = v3;
  sub_2521D6C84(0, &qword_27F4D4F30, sub_2521D594C, MEMORY[0x277D83940]);
  sub_2521D5A54(0);
  sub_2521D5CC8();
  sub_2521D6D3C(&qword_27F4D4F78, sub_2521D594C, MEMORY[0x277D85378]);
  sub_2521D5B68(255);
  sub_2521D5C30(255);
  sub_2521DBE50();
  swift_bridgeObjectRetain_n();
  v5 = v3;
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_2521DC020();
}

uint64_t sub_2521D4364@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v96 = a3;
  sub_2521D60AC(0, &qword_27F4D4F68, MEMORY[0x277CBB378]);
  MEMORY[0x28223BE20](v5 - 8);
  v77 = &v74 - v6;
  sub_2521D6BFC(0, &qword_27F4D4F48, sub_2521D5A54, MEMORY[0x277CBB378]);
  MEMORY[0x28223BE20](v7 - 8);
  v79 = &v74 - v8;
  v81 = sub_2521DBCC0();
  v80 = *(v81 - 1);
  MEMORY[0x28223BE20](v81);
  v10 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2521DBCF0();
  v12 = MEMORY[0x28223BE20](v11 - 8);
  MEMORY[0x28223BE20](v12);
  v13 = sub_2521DBD00();
  v85 = *(v13 - 8);
  v86 = v13;
  MEMORY[0x28223BE20](v13);
  v82 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2521D5B68(0);
  v92 = *(v15 - 8);
  v93 = v15;
  MEMORY[0x28223BE20](v15);
  v91 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2521DBC70();
  v83 = *(v17 - 8);
  v84 = v17;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v76 = &v74 - v21;
  sub_2521D5A54(0);
  v87 = *(v22 - 8);
  v88 = v22;
  v23 = MEMORY[0x28223BE20](v22);
  v78 = &v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v75 = &v74 - v25;
  sub_2521D5998(0, &qword_27F4D4F40, MEMORY[0x277CBB378]);
  MEMORY[0x28223BE20](v26 - 8);
  v95 = &v74 - v27;
  v28 = sub_2521DB9B0();
  v89 = *(v28 - 8);
  v90 = v28;
  MEMORY[0x28223BE20](v28);
  v30 = &v74 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *a1;
  sub_2521DC110();
  v94 = sub_2521DC100();
  sub_2521DC0F0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v32 = [v31 quantity];
  [v32 _beatsPerMinute];
  v34 = v33;

  v35 = round(v34);
  v36 = [v31 date];
  sub_2521DB980();

  v38 = *(a2 + 8);
  v37 = *(a2 + 16);
  if ([v38 isEqual_] && objc_msgSend(v31, sel_isEqual_, v38))
  {
    v39 = v76;
    if (*(a2 + 24) <= v35)
    {
      sub_2521DBC60();
    }

    else
    {
      sub_2521DBC50();
    }

    v65 = v91;
    sub_2521D5220(v30, *(a2 + 32), v91, *&v35);
    sub_2521DBCB0();
    sub_2521DBCD0();
    (*(v80 + 8))(v10, v81);
    sub_2521DBCE0();
    v66 = v82;
    v67 = sub_2521DBCA0();
    MEMORY[0x28223BE20](v67);
    sub_2521DC040();
    sub_2521D5C30(255);
    v69 = v68;
    v97 = sub_2521DBE50();
    v98 = MEMORY[0x277CE0F78];
    v99 = MEMORY[0x277CBB468];
    v100 = MEMORY[0x277CE0F60];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v97 = v69;
    v98 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v71 = v93;
    v72 = v75;
    sub_2521DBB60();
    (*(v85 + 8))(v66, v86);
    (*(v92 + 8))(v65, v71);
    (*(v83 + 8))(v39, v84);
    (*(v89 + 8))(v30, v90);
    v49 = v79;
    (*(v87 + 32))(v79, v72, v88);
    sub_2521D6BFC(0, &qword_27F4D4FA8, sub_2521D5A54, MEMORY[0x277CBB370]);
    goto LABEL_15;
  }

  if ([v31 isEqual_])
  {
    v40 = *(a2 + 32);
    sub_2521DBC50();
    v41 = v91;
    sub_2521D5220(v30, v40, v91, *&v35);
    sub_2521DBCB0();
    sub_2521DBCD0();
    (*(v80 + 8))(v10, v81);
    sub_2521DBCE0();
    v42 = v82;
    v43 = sub_2521DBCA0();
    MEMORY[0x28223BE20](v43);
    sub_2521DC040();
    sub_2521D5C30(255);
    v45 = v44;
    v97 = sub_2521DBE50();
    v98 = MEMORY[0x277CE0F78];
    v99 = MEMORY[0x277CBB468];
    v100 = MEMORY[0x277CE0F60];
    v46 = swift_getOpaqueTypeConformance2();
    v97 = v45;
    v98 = v46;
    swift_getOpaqueTypeConformance2();
    v47 = v93;
    v48 = v78;
    sub_2521DBB60();
    (*(v85 + 8))(v42, v86);
    (*(v92 + 8))(v41, v47);
    (*(v83 + 8))(v20, v84);
    (*(v89 + 8))(v30, v90);
    v49 = v79;
    (*(v87 + 32))(v79, v48, v88);
    sub_2521D6BFC(0, &qword_27F4D4FA8, sub_2521D5A54, MEMORY[0x277CBB370]);
LABEL_15:
    swift_storeEnumTagMultiPayload();
    v64 = v95;
    sub_2521C7288(v49, v95);
    goto LABEL_16;
  }

  v50 = [v31 isEqual_];
  v51 = *(a2 + 32);
  if (v50)
  {
    sub_2521DBC60();
    v52 = v91;
    sub_2521D5220(v30, v51, v91, *&v35);
    sub_2521DBCB0();
    sub_2521DBCD0();
    (*(v80 + 8))(v10, v81);
    sub_2521DBCE0();
    v53 = v82;
    v54 = sub_2521DBCA0();
    v81 = &v74;
    MEMORY[0x28223BE20](v54);
    sub_2521DC040();
    sub_2521D5C30(255);
    v56 = v55;
    v97 = sub_2521DBE50();
    v98 = MEMORY[0x277CE0F78];
    v99 = MEMORY[0x277CBB468];
    v100 = MEMORY[0x277CE0F60];
    v57 = swift_getOpaqueTypeConformance2();
    v97 = v56;
    v98 = v57;
    swift_getOpaqueTypeConformance2();
    v58 = v93;
    v59 = v78;
    sub_2521DBB60();
    (*(v85 + 8))(v53, v86);
    (*(v92 + 8))(v52, v58);
    (*(v83 + 8))(v20, v84);
    (*(v89 + 8))(v30, v90);
    v60 = v77;
    (*(v87 + 32))(v77, v59, v88);
    sub_2521D60AC(0, &qword_27F4D4F98, MEMORY[0x277CBB370]);
    swift_storeEnumTagMultiPayload();
    v61 = v60;
  }

  else
  {
    v62 = v91;
    sub_2521D5220(v30, *(a2 + 32), v91, *&v35);
    (*(v89 + 8))(v30, v90);
    v63 = v77;
    (*(v92 + 32))(v77, v62, v93);
    sub_2521D60AC(0, &qword_27F4D4F98, MEMORY[0x277CBB370]);
    swift_storeEnumTagMultiPayload();
    v61 = v63;
  }

  v64 = v95;
  sub_2521D6AF0(v61, v95, &qword_27F4D4F68, sub_2521D60AC);
LABEL_16:
  sub_2521D5998(0, &qword_27F4D4FA0, MEMORY[0x277CBB370]);
  swift_storeEnumTagMultiPayload();
  sub_2521C7208(v64, v96);
}

uint64_t sub_2521D5220@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<D0>)
{
  v24 = a2;
  v25 = a3;
  v20 = a1;
  sub_2521D6418(0, &qword_27F4D4FB0, MEMORY[0x277D839F8], MEMORY[0x277CBB590], MEMORY[0x277CBB340]);
  MEMORY[0x28223BE20](v5 - 8);
  sub_2521D579C(0);
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_2521DBE50();
  v21 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2521D5C30(0);
  v11 = *(v10 - 8);
  v22 = v10;
  v23 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2521DBEC0();
  sub_2521DB9B0();
  sub_2521DBC00();

  sub_2521DBEC0();
  v26 = a4;
  sub_2521DBC00();

  sub_2521DBE40();
  v14 = v24;
  v26 = sub_2521DBFE0();
  v15 = MEMORY[0x277CE0F78];
  v16 = MEMORY[0x277CBB468];
  v17 = MEMORY[0x277CE0F60];
  sub_2521DBB90();

  (*(v21 + 8))(v9, v7);
  v26 = v7;
  v27 = v15;
  v28 = v16;
  v29 = v17;
  swift_getOpaqueTypeConformance2();
  v18 = v22;
  sub_2521DBB70();
  return (*(v23 + 8))(v13, v18);
}

uint64_t sub_2521D55C4()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v12 = *v0;
  v13 = v12;
  swift_getKeyPath();
  v5 = swift_allocObject();
  v5[2] = v12;
  v5[3] = v1;
  v5[4] = v2;
  v5[5] = v3;
  v5[6] = v4;

  v6 = MEMORY[0x277D83940];
  sub_2521D58DC(&v13, v11, &qword_27F4D4F30, sub_2521D594C, MEMORY[0x277D83940]);
  sub_2521D6C84(0, &qword_27F4D4F30, sub_2521D594C, v6);
  sub_2521D5998(0, &qword_27F4D4F40, MEMORY[0x277CBB378]);
  sub_2521D5CC8();
  sub_2521D6D3C(&qword_27F4D4F78, sub_2521D594C, MEMORY[0x277D85378]);
  sub_2521D5D50();
  v7 = v1;
  v8 = v2;
  v9 = v4;
  return sub_2521DC020();
}

void sub_2521D579C(uint64_t a1)
{
  if (!qword_27F4D4F20)
  {
    sub_2521DB9B0();
    v1 = sub_2521DBC10();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4D4F20);
    }
  }
}

void sub_2521D57FC(uint64_t a1)
{
  if (!qword_27F4D4F28)
  {
    sub_2521DBDF0();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F4D4F28);
    }
  }
}

uint64_t sub_2521D58DC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_2521D6C84(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

unint64_t sub_2521D594C()
{
  result = qword_27F4D4F38;
  if (!qword_27F4D4F38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F4D4F38);
  }

  return result;
}

void sub_2521D5998(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_2521D6BFC(255, &qword_27F4D4F48, sub_2521D5A54, MEMORY[0x277CBB378]);
    v7 = v6;
    sub_2521D60AC(255, &qword_27F4D4F68, MEMORY[0x277CBB378]);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2521D5A54(uint64_t a1)
{
  if (!qword_27F4D4F50)
  {
    sub_2521D5B68(255);
    sub_2521D5C30(255);
    sub_2521DBE50();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F4D4F50);
    }
  }
}

void sub_2521D5B68(uint64_t a1)
{
  if (!qword_27F4D4F58)
  {
    sub_2521D5C30(255);
    sub_2521DBE50();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F4D4F58);
    }
  }
}

void sub_2521D5C30(uint64_t a1)
{
  if (!qword_27F4D4F60)
  {
    sub_2521DBE50();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F4D4F60);
    }
  }
}

unint64_t sub_2521D5CC8()
{
  result = qword_27F4D4F70;
  if (!qword_27F4D4F70)
  {
    sub_2521D6C84(255, &qword_27F4D4F30, sub_2521D594C, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D4F70);
  }

  return result;
}

unint64_t sub_2521D5D50()
{
  result = qword_27F4D4F80;
  if (!qword_27F4D4F80)
  {
    sub_2521D5998(255, &qword_27F4D4F40, MEMORY[0x277CBB378]);
    sub_2521D5DEC();
    sub_2521D5F54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D4F80);
  }

  return result;
}

unint64_t sub_2521D5DEC()
{
  result = qword_27F4D4F88;
  if (!qword_27F4D4F88)
  {
    sub_2521D6BFC(255, &qword_27F4D4F48, sub_2521D5A54, MEMORY[0x277CBB378]);
    sub_2521D5B68(255);
    sub_2521D5C30(255);
    sub_2521DBE50();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D4F88);
  }

  return result;
}

unint64_t sub_2521D5F54()
{
  result = qword_27F4D4F90;
  if (!qword_27F4D4F90)
  {
    sub_2521D60AC(255, &qword_27F4D4F68, MEMORY[0x277CBB378]);
    sub_2521D5B68(255);
    sub_2521D5C30(255);
    sub_2521DBE50();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D4F90);
  }

  return result;
}

void sub_2521D60AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_2521D5A54(255);
    v7 = v6;
    sub_2521D5B68(255);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2521D611C@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v6 = *&a2;
  v7 = sub_2521DBEB0();
  MEMORY[0x28223BE20](v7 - 8);
  sub_2521DBEA0();
  sub_2521DBE90();
  if ((v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a2 <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (a2 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_2521DBE80();
  sub_2521DBE90();
  sub_2521DBED0();
  v6 = sub_2521DBF50();
  v2 = v8;
  v3 = v9;
  if (qword_27F4D4C40 != -1)
  {
LABEL_9:
    swift_once();
  }

  v10 = sub_2521DBF40();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_2521D6408(v6, v2, v3 & 1);

  *a1 = v10;
  *(a1 + 8) = v12;
  *(a1 + 16) = v14 & 1;
  *(a1 + 24) = v16;
  return result;
}

uint64_t sub_2521D631C()
{
  v0 = sub_2521DBF00();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2521DBF10();
  sub_2521DBEF0();
  v4 = sub_2521DBF20();
  result = (*(v1 + 8))(v3, v0);
  qword_27F4D5560 = v4;
  return result;
}

uint64_t sub_2521D6408(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void sub_2521D6418(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2521D647C(uint64_t a1)
{
  if (!qword_27F4D4FC0)
  {
    sub_2521DB9B0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F4D4FC0);
    }
  }
}

uint64_t sub_2521D6504(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2521D656C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2521D6C84(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_2521D6650(uint64_t a1)
{
  if (!qword_27F4D4FC8)
  {
    sub_2521D2990(255);
    sub_2521D6C84(255, &qword_27F4D4ED8, sub_2521D2EE8, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F4D4FC8);
    }
  }
}

void sub_2521D66F0()
{
  if (!qword_27F4D4FD0)
  {
    v0 = sub_2521DC190();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4D4FD0);
    }
  }
}

uint64_t sub_2521D6740(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2521D67A8(uint64_t a1)
{
  v3 = *(type metadata accessor for HeartRateAppChartView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v5 = *(v4 + *(v3 + 64));

  return sub_2521CFCE4(a1, v4, v5);
}

uint64_t sub_2521D6848(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2521D6C84(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2521D68D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2521D6940(uint64_t a1, uint64_t a2)
{
  sub_2521D2BDC(0, &qword_27F4D4EA0, MEMORY[0x277CBB378]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2521D69C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for HeartRateAppChartView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2521CE5CC(a1, v6, a2);
}

void sub_2521D6A48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_2521D226C(255, &qword_27F4D4E10, sub_2521D22F4);
    v7 = v6;
    sub_2521D226C(255, &qword_27F4D4E40, sub_2521D237C);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2521D6AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, void))
{
  v6 = a4(0, a3, MEMORY[0x277CBB378]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2521D6B70(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2521D226C(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_2521D6BFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_2521D6C84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2521D6CE8()
{
  result = qword_27F4D4FF8;
  if (!qword_27F4D4FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D4FF8);
  }

  return result;
}

uint64_t sub_2521D6D3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2521D6DA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_2521DBAF0();
    sub_2521DBDD0();
    a3(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

id sub_2521D6E34(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, char a6)
{
  if (a6)
  {

    v7 = a3;
  }

  else
  {

    v9 = a2;
    v10 = a3;
    v7 = a5;
  }

  return v7;
}

void sub_2521D6E94(uint64_t result, void *a2, void *a3, uint64_t a4, void *a5, char a6)
{
  if (a6 != -1)
  {
    sub_2521D6EAC(result, a2, a3, a4, a5, a6 & 1);
  }
}

void sub_2521D6EAC(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, char a6)
{

  if (a6)
  {
    v9 = a3;
  }

  else
  {

    v9 = a5;
  }
}

void sub_2521D6F14(uint64_t a1)
{
  if (!qword_27F4D5018)
  {
    sub_2521D1C44(255);
    sub_2521D6C84(255, &qword_27F4D4D98, type metadata accessor for HeartRateAverageLine, MEMORY[0x277D83D88]);
    sub_2521D1D38(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F4D5018);
    }
  }
}

id sub_2521D6FCC(id result, void *a2, void *a3, uint64_t a4, void *a5, char a6)
{
  if (a6 != -1)
  {
    return sub_2521D6E34(result, a2, a3, a4, a5, a6 & 1);
  }

  return result;
}

void sub_2521D6FE4(uint64_t a1)
{
  if (!qword_27F4D5028)
  {
    sub_2521D6C84(255, &qword_27F4D4F30, sub_2521D594C, MEMORY[0x277D83940]);
    sub_2521D594C();
    sub_2521D5998(255, &qword_27F4D4F40, MEMORY[0x277CBB378]);
    sub_2521D5CC8();
    sub_2521D6D3C(&qword_27F4D4F78, sub_2521D594C, MEMORY[0x277D85378]);
    v1 = sub_2521DC030();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4D5028);
    }
  }
}

unint64_t sub_2521D7104()
{
  result = qword_27F4D5030;
  if (!qword_27F4D5030)
  {
    sub_2521D723C(255);
    sub_2521D5B68(255);
    sub_2521D5C30(255);
    sub_2521DBE50();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D5030);
  }

  return result;
}

void sub_2521D723C(uint64_t a1)
{
  if (!qword_27F4D5038)
  {
    sub_2521D6C84(255, &qword_27F4D4F30, sub_2521D594C, MEMORY[0x277D83940]);
    sub_2521D594C();
    sub_2521D5A54(255);
    sub_2521D5CC8();
    sub_2521D6D3C(&qword_27F4D4F78, sub_2521D594C, MEMORY[0x277D85378]);
    v1 = sub_2521DC030();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4D5038);
    }
  }
}

uint64_t sub_2521D7358(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeartRateSummaryStatistics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2521D73C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeartRateSummaryStatistics(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t HeartRateSummary.workoutRecoveryStatistics.getter()
{
  type metadata accessor for HeartRateSummary(0);
}

uint64_t type metadata accessor for HeartRateSummary(uint64_t a1)
{
  result = qword_27F4D5048;
  if (!qword_27F4D5048)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HeartRateSummary.workoutRecoveryStatistics.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HeartRateSummary(0) + 20);

  *(v1 + v3) = a1;
  return result;
}

uint64_t HeartRateSummary.init(allDayStatistics:workoutRecoveryStatistics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2521D7CB0(a1, a3, type metadata accessor for HeartRateSummaryStatistics);
  result = type metadata accessor for HeartRateSummary(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t HeartRateSummary.init(hkHeartRateSummary:)@<X0>(void *a1@<X0>, uint64_t isEscapingClosureAtFileLocation@<X8>)
{
  sub_2521D7FF0(0, &qword_27F4D4D20, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v38 - v5;
  v49 = sub_2521DB8C0();
  v7 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v52 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HeartRateSummaryWorkoutRecoveryStatistics(0);
  v48 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for HeartRateSummaryStatistics(0);
  MEMORY[0x28223BE20](v47);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  HeartRateSummaryStatistics.init(hkHeartRateSummaryStatistics:)([a1 allDayStatistics], v13);
  v14 = [a1 workoutRecoveryStatistics];
  sub_2521D7C24();
  v15 = sub_2521DC0C0();

  v16 = v15;
  if (v15 >> 62)
  {
    goto LABEL_17;
  }

  v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v17)
  {
    while (1)
    {
      v57 = MEMORY[0x277D84F90];
      result = sub_2521D7C70(0, v17 & ~(v17 >> 63), 0);
      if (v17 < 0)
      {
        break;
      }

      v38 = v13;
      v39 = a1;
      v40 = isEscapingClosureAtFileLocation;
      v19 = 0;
      a1 = v57;
      v20 = v16;
      v45 = v54;
      v46 = v16 & 0xC000000000000001;
      v41 = v7 + 4;
      v43 = v16;
      v44 = v11;
      v42 = v17;
      while (1)
      {
        v21 = v46 ? MEMORY[0x25309BF30](v19, v20) : *(v20 + 8 * v19 + 32);
        v7 = v21;
        v56 = MEMORY[0x277D84F90];
        v22 = swift_allocObject();
        *(v22 + 16) = &v56;
        v16 = swift_allocObject();
        *(v16 + 16) = sub_2521CC7BC;
        *(v16 + 24) = v22;
        v54[2] = sub_2521D7C90;
        v55 = v16;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        v54[0] = sub_2521CC890;
        v54[1] = &block_descriptor_0;
        v23 = _Block_copy(aBlock);
        v13 = v55;

        [v7 enumerateBucketsWithBlock_];
        _Block_release(v23);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          break;
        }

        v24 = [v7 dateInterval];
        sub_2521DB870();

        v25 = [v7 sessionUUID];
        v50 = v19;
        v51 = a1;
        if (v25)
        {
          v26 = v25;
          sub_2521DB9C0();

          v27 = 0;
        }

        else
        {
          v27 = 1;
        }

        v11 = sub_2521DB9E0();
        v28 = *(*(v11 - 1) + 56);
        v28(v6, v27, 1, v11);
        v29 = [v7 numberOfBuckets];

        v30 = v56;
        v31 = v6;
        v32 = v47;
        v33 = *(v47 + 20);
        v34 = v44;
        v28(&v44[v33], 1, 1, v11);
        (*v41)(v34, v52, v49);

        v35 = v34 + v33;
        v6 = v31;
        sub_2521CBF68(v31, v35);
        *(v34 + *(v32 + 24)) = v29;
        *(v34 + *(v32 + 28)) = v30;

        a1 = v51;
        v57 = v51;
        v37 = v51[2];
        v36 = v51[3];
        if (v37 >= v36 >> 1)
        {
          sub_2521D7C70((v36 > 1), v37 + 1, 1);
          a1 = v57;
        }

        v19 = v50 + 1;
        a1[2] = v37 + 1;
        sub_2521D7CB0(v34, a1 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v37, type metadata accessor for HeartRateSummaryWorkoutRecoveryStatistics);
        v20 = v43;
        if (v42 == v19)
        {

          isEscapingClosureAtFileLocation = v40;
          v13 = v38;
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_17:
      v17 = sub_2521DC180();
      if (!v17)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    a1 = MEMORY[0x277D84F90];
LABEL_19:
    sub_2521D7CB0(v13, isEscapingClosureAtFileLocation, type metadata accessor for HeartRateSummaryStatistics);
    result = type metadata accessor for HeartRateSummary(0);
    *(isEscapingClosureAtFileLocation + *(result + 20)) = a1;
  }

  return result;
}

unint64_t sub_2521D7C24()
{
  result = qword_27F4D5040;
  if (!qword_27F4D5040)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F4D5040);
  }

  return result;
}

void *sub_2521D7C70(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2521D7DF4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2521D7CB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2521D7D40(uint64_t a1)
{
  type metadata accessor for HeartRateSummaryStatistics(319);
  if (v1 <= 0x3F)
  {
    sub_2521D7FF0(319, &qword_27F4D5058, type metadata accessor for HeartRateSummaryWorkoutRecoveryStatistics, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void *sub_2521D7DF4(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_2521D7FF0(0, &qword_27F4D5060, type metadata accessor for HeartRateSummaryWorkoutRecoveryStatistics, MEMORY[0x277D84560]);
  v10 = *(type metadata accessor for HeartRateSummaryWorkoutRecoveryStatistics(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for HeartRateSummaryWorkoutRecoveryStatistics(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_2521D7FF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2521D80A8(uint64_t (**a1)(char *, char *, uint64_t)@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v103 = a1;
  v79 = a2;
  v87 = type metadata accessor for HeartRateChartPoint(0);
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v89 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2521DBAD0();
  v6 = *(v5 - 8);
  v93 = v5;
  v94 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HeartRateSummaryStatisticsBucket(0);
  v102 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_2521DB8C0();
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v13 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2521DB9B0();
  v80 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v88 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v99 = &v77 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v77 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v77 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v77 - v25;
  v27 = type metadata accessor for HeartRateSummaryStatistics(0);
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v77 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *v3;
  if (!*v3)
  {
    v59 = v79;

    static HeartRateDaySummary.emptyDaySummary()(v59);
    return;
  }

  v96 = v9;
  v83 = v30;
  v97 = v28;
  v77 = v31;
  HeartRateSummaryStatistics.init(hkHeartRateSummaryStatistics:)(v77, v83);
  v32 = *(v3 + *(type metadata accessor for HeartRateAppChartViewModel(0) + 44));
  v33 = v80;
  v35 = v80 + 16;
  v34 = *(v80 + 16);
  v34(v26, v103, v14);
  v100 = v24;
  v78 = v26;
  v85 = v35;
  v84 = v34;
  v34(v24, v26, v14);
  (*(v81 + 16))(v13, v83, v82);
  v101 = v13;
  sub_2521DB8B0();
  v36 = *&v83[*(v97 + 28)];
  v98 = *(v36 + 16);
  if (v98)
  {
    v37 = 0;
    v38 = *(v96 + 20);
    v96 = v36 + ((*(v102 + 80) + 32) & ~*(v102 + 80));
    v97 = v38;
    v39 = (v33 + 8);
    v40 = v93;
    v103 = (v94 + 2);
    ++v94;
    v90 = 0x7FFFFFFFFFFFFFFFLL;
    v91 = 0x8000000000000000;
    v92 = MEMORY[0x277D84F90];
    v95 = v36;
    while (v37 < *(v36 + 16))
    {
      sub_2521D98A8(v96 + *(v102 + 72) * v37, v11);
      v41 = v99;
      sub_2521DB890();
      sub_2521DB960();
      v42 = *v39;
      (*v39)(v41, v14);
      v43 = *v103;
      (*v103)(v8, &v11[v97], v40);
      sub_2521D990C();
      if (sub_2521DC080())
      {
        if (sub_2521DBA90())
        {
          v40 = v93;
          (*v94)(v8, v93);
          v42(v21, v14);
          sub_2521D9964(v11, type metadata accessor for HeartRateSummaryStatisticsBucket);
        }

        else
        {
          v44 = sub_2521DBA60();
          if (v45)
          {
            goto LABEL_42;
          }

          v46 = v91;
          if (v44 > v91)
          {
            v46 = v44;
          }

          v91 = v46;
          v47 = sub_2521DBA70();
          if (v48)
          {
            goto LABEL_41;
          }

          v49 = v90;
          if (v47 < v90)
          {
            v49 = v47;
          }

          v90 = v49;
          v50 = v88;
          sub_2521DB960();
          v51 = v89;
          v84(v89, v50, v14);
          v43((v51 + *(v87 + 20)), v8, v93);
          v52 = v92;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v52 = sub_2521CA0C4(0, v52[2] + 1, 1, v52);
          }

          v54 = v52[2];
          v53 = v52[3];
          v92 = v52;
          if (v54 >= v53 >> 1)
          {
            v92 = sub_2521CA0C4((v53 > 1), v54 + 1, 1, v92);
          }

          v42(v88, v14);
          v55 = v8;
          v56 = v8;
          v57 = v93;
          (*v94)(v55, v93);
          v42(v21, v14);
          sub_2521D9964(v11, type metadata accessor for HeartRateSummaryStatisticsBucket);
          v58 = v92;
          v92[2] = v54 + 1;
          v40 = v57;
          v8 = v56;
          sub_2521D99C4(v89, v58 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v54);
        }
      }

      else
      {
        (*v94)(v8, v40);
        v42(v21, v14);
        sub_2521D9964(v11, type metadata accessor for HeartRateSummaryStatisticsBucket);
      }

      ++v37;
      v36 = v95;
      if (v98 == v37)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
    goto LABEL_40;
  }

  v90 = 0x7FFFFFFFFFFFFFFFLL;
  v91 = 0x8000000000000000;
  v92 = MEMORY[0x277D84F90];
LABEL_25:
  sub_2521C88D0(0);
  v60 = sub_2521DC0D0();
  v60[2] = 25;
  v61 = MEMORY[0x277D84F90];
  v60[4] = MEMORY[0x277D84F90];
  v60[5] = v61;
  v60[6] = v61;
  v60[7] = v61;
  v60[8] = v61;
  v60[9] = v61;
  v60[10] = v61;
  v60[11] = v61;
  v60[12] = v61;
  v60[13] = v61;
  v60[14] = v61;
  v60[15] = v61;
  v60[16] = v61;
  v60[17] = v61;
  v60[18] = v61;
  v60[19] = v61;
  v60[20] = v61;
  v60[21] = v61;
  v60[22] = v61;
  v60[23] = v61;
  v60[24] = v61;
  v60[25] = v61;
  v60[26] = v61;
  v60[27] = v61;
  v63 = v90;
  v62 = v91;
  v64 = v90 == 0x7FFFFFFFFFFFFFFFLL || v91 == 0x8000000000000000;
  v65 = v64;
  v60[28] = v61;
  if (v64)
  {
    v66 = v60;
    v62 = 0;
    v63 = 0;
    v67 = v82;
    v68 = v81;
    v70 = v100;
    v69 = v101;
LABEL_38:
    v104 = v65;
    v105 = v65;
    v72 = sub_2521CAD88(v70, v66);

    (*(v68 + 8))(v69, v67);
    v73 = *(v80 + 8);
    v73(v70, v14);
    v73(v78, v14);
    sub_2521D9964(v83, type metadata accessor for HeartRateSummaryStatistics);

    v74 = v105;
    v75 = v104;
    v76 = v79;
    *v79 = v63;
    *(v76 + 8) = v74;
    v76[2] = v62;
    *(v76 + 24) = v75;
    v76[4] = v72;
    return;
  }

  v71 = v62 - v63;
  v67 = v82;
  v68 = v81;
  v70 = v100;
  if (!__OFSUB__(v62, v63))
  {
    if (!v71)
    {
      v71 = 10;
    }

    v69 = v101;
    v66 = sub_2521CA174(v92, v62, v71 / v32, 3.0 / v32 * v71);
    goto LABEL_38;
  }

LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
}

id sub_2521D8AF8()
{
  if (!*(v0 + 8))
  {
    return 0;
  }

  result = [*(v0 + 8) _beatsPerMinute];
  v3 = round(v2);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v3 > -9.22337204e18)
  {
    if (v3 < 9.22337204e18)
    {
      return v3;
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2521D8B88(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    if (__OFSUB__(result, 5))
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    a2 = result + 5;
    if (__OFADD__(result, 5))
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (a2 < result - 5)
    {
LABEL_26:
      __break(1u);
      return result;
    }

    result -= 5;
  }

  else if (a2 < result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v2 = result;
  v3 = a2;
  v4 = result - a2 + 10.0;
  if (v4 > 0.0)
  {
    v5 = v4 * 0.5;
    v2 = v2 - floor(v5);
    v3 = ceil(v5) + v3;
  }

  if (v2 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_19;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  result = v2;
  if (v3 < v2)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  return result;
}

void *sub_2521D8C98()
{
  v1 = type metadata accessor for HeartRateAppChartViewModel(0);
  v2 = *(v0 + *(v1 + 56));
  if (v2 >> 62)
  {
    goto LABEL_23;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    v4 = v2 & 0xC000000000000001;
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_30;
    }

LABEL_4:
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v5 = *(v2 + 32);
      goto LABEL_6;
    }

    __break(1u);
    do
    {
      v3 = v1;
      v4 = v2 & 0xC000000000000001;
      if ((v2 & 0xC000000000000001) == 0)
      {
        goto LABEL_4;
      }

LABEL_30:
      v5 = MEMORY[0x25309BF30](0, v2);
LABEL_6:
      v6 = v5;
      if (v3 == 1)
      {
        return v6;
      }

      v8 = 1;
      while (1)
      {
        if (v4)
        {
          v9 = MEMORY[0x25309BF30](v8, v2);
        }

        else
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_21;
          }

          if (v8 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v9 = *(v2 + 8 * v8 + 32);
        }

        v7 = v9;
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        v11 = [v6 quantity];
        [v11 _beatsPerMinute];
        v13 = v12;

        v14 = [v7 quantity];
        [v14 _beatsPerMinute];
        v16 = v15;

        if (v13 < v16)
        {

          v6 = v7;
          ++v8;
          if (v10 == v3)
          {
            return v7;
          }
        }

        else
        {

          ++v8;
          if (v10 == v3)
          {
            return v6;
          }
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      if (!sub_2521DC180())
      {
        return 0;
      }

      v1 = sub_2521DC180();
    }

    while (v1);
    __break(1u);
  }

  return 0;
}

void *sub_2521D8E6C()
{
  v1 = type metadata accessor for HeartRateAppChartViewModel(0);
  v2 = *(v0 + *(v1 + 56));
  if (v2 >> 62)
  {
    goto LABEL_23;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    v4 = v2 & 0xC000000000000001;
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_30;
    }

LABEL_4:
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v5 = *(v2 + 32);
      goto LABEL_6;
    }

    __break(1u);
    do
    {
      v3 = v1;
      v4 = v2 & 0xC000000000000001;
      if ((v2 & 0xC000000000000001) == 0)
      {
        goto LABEL_4;
      }

LABEL_30:
      v5 = MEMORY[0x25309BF30](0, v2);
LABEL_6:
      v6 = v5;
      if (v3 == 1)
      {
        return v6;
      }

      v8 = 1;
      while (1)
      {
        if (v4)
        {
          v9 = MEMORY[0x25309BF30](v8, v2);
        }

        else
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_21;
          }

          if (v8 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v9 = *(v2 + 8 * v8 + 32);
        }

        v7 = v9;
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        v11 = [v9 quantity];
        [v11 _beatsPerMinute];
        v13 = v12;

        v14 = [v6 quantity];
        [v14 _beatsPerMinute];
        v16 = v15;

        if (v13 < v16)
        {

          v6 = v7;
          ++v8;
          if (v10 == v3)
          {
            return v7;
          }
        }

        else
        {

          ++v8;
          if (v10 == v3)
          {
            return v6;
          }
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      if (!sub_2521DC180())
      {
        return 0;
      }

      v1 = sub_2521DC180();
    }

    while (v1);
    __break(1u);
  }

  return 0;
}

char *sub_2521D9040()
{
  v1 = v0;
  v2 = sub_2521DB9B0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v34 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v45 = &v34 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v34 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  v17 = type metadata accessor for HeartRateAppChartViewModel(0);
  if (!*(v1 + *(v17 + 28)))
  {
    return MEMORY[0x277D84F90];
  }

  v42 = v9;
  v18 = *(v17 + 24);
  sub_2521DB8B0();
  v43 = v18;
  sub_2521DB890();
  v40 = *(v3 + 16);
  v41 = v3 + 16;
  v40(v14, v16, v2);
  v19 = sub_2521CA12C(0, 1, 1, MEMORY[0x277D84F90]);
  v21 = *(v19 + 2);
  v20 = *(v19 + 3);
  if (v21 >= v20 >> 1)
  {
    v19 = sub_2521CA12C((v20 > 1), v21 + 1, 1, v19);
  }

  *(v19 + 2) = v21 + 1;
  v39 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v38 = *(v3 + 72);
  v36 = *(v3 + 32);
  v37 = v3 + 32;
  v36(&v19[v39 + v38 * v21], v14, v2);
  v22 = v45;
  sub_2521DB880();
  v23 = sub_2521DB970();
  v24 = *(v3 + 8);
  v44 = v3 + 8;
  v24(v22, v2);
  if (v23)
  {
    v35 = v6;
    v25 = v42;
    do
    {
      v26 = v1;
      sub_2521DB960();
      v40(v6, v25, v2);
      v28 = *(v19 + 2);
      v27 = *(v19 + 3);
      if (v28 >= v27 >> 1)
      {
        v19 = sub_2521CA12C((v27 > 1), v28 + 1, 1, v19);
      }

      v24(v16, v2);
      *(v19 + 2) = v28 + 1;
      v29 = &v19[v39 + v28 * v38];
      v6 = v35;
      v30 = v36;
      v36(v29, v35, v2);
      v25 = v42;
      v30(v16, v42, v2);
      v1 = v26;
      v31 = v45;
      sub_2521DB880();
      v32 = sub_2521DB970();
      v24(v31, v2);
    }

    while ((v32 & 1) != 0);
  }

  v24(v16, v2);
  return v19;
}

uint64_t HeartRateAppChartViewModel.init(statistics:allDayHeartRate:dateInterval:numberOfSections:tintColor:useMinMaxTimeLabels:onUnavailableChartTap:chartHeight:isShortTimeLabel:isBreatheChart:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, double a10@<D0>, char a11, char a12)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  v19 = type metadata accessor for HeartRateAppChartViewModel(0);
  v20 = v19[6];
  v21 = sub_2521DB8C0();
  v22 = *(v21 - 8);
  v30 = a3;
  (*(v22 + 16))(&a9[v20], a3, v21);
  *&a9[v19[7]] = a4;
  *&a9[v19[8]] = a5;
  a9[v19[9]] = a6;
  v23 = &a9[v19[10]];
  *v23 = a7;
  *(v23 + 1) = a8;
  *&a9[v19[11]] = a10;
  a9[v19[12]] = a11;
  a9[v19[13]] = a12;
  if (a1 && (v24 = [a1 highlightedReadings]) != 0)
  {
    v25 = v24;
    sub_2521D9810(0, &qword_27F4D4F38, 0x277CCD510);
    v26 = sub_2521DC0C0();
  }

  else
  {
    v26 = MEMORY[0x277D84F90];
  }

  result = (*(v22 + 8))(v30, v21);
  *&a9[v19[14]] = v26;
  return result;
}

uint64_t type metadata accessor for HeartRateAppChartViewModel(uint64_t a1)
{
  result = qword_27F4D5068;
  if (!qword_27F4D5068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2521D9614(uint64_t a1)
{
  sub_2521D97A8(319, &qword_27F4D5078, &qword_27F4D5080, 0x277CCD518, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_2521D97A8(319, &qword_27F4D5088, &qword_27F4D5090, 0x277CCD7E8, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_2521DB8C0();
      if (v3 <= 0x3F)
      {
        sub_2521D9810(319, &qword_27F4D5098, 0x277D75348);
        if (v4 <= 0x3F)
        {
          sub_2521D9858();
          if (v5 <= 0x3F)
          {
            sub_2521D97A8(319, &qword_27F4D4F30, &qword_27F4D4F38, 0x277CCD510, MEMORY[0x277D83940]);
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

void sub_2521D97A8(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2521D9810(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2521D9810(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_2521D9858()
{
  result = qword_27F4D50A0;
  if (!qword_27F4D50A0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27F4D50A0);
  }

  return result;
}

uint64_t sub_2521D98A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeartRateSummaryStatisticsBucket(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2521D990C()
{
  result = qword_27F4D4C50;
  if (!qword_27F4D4C50)
  {
    sub_2521DB9B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D4C50);
  }

  return result;
}

uint64_t sub_2521D9964(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2521D99C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeartRateChartPoint(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2521D9A64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeartRateSummaryStatistics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for HeartRateSummaryWorkoutRecoveryStatistics(uint64_t a1)
{
  result = qword_27F4D50A8;
  if (!qword_27F4D50A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2521D9B3C(uint64_t a1)
{
  result = type metadata accessor for HeartRateSummaryStatistics(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void __swiftcall HeartRateBasicChart.init(heartRateSummary:tintColor:)(HeartHealthUI::HeartRateBasicChart *__return_ptr retstr, HeartHealthUI::HeartRateDaySummary *heartRateSummary, UIColor tintColor)
{
  is_nil = heartRateSummary->dailyLowBPM.is_nil;
  v4 = *(&heartRateSummary->dailyHighBPM.value + 7);
  rawValue = heartRateSummary->heartRateDataByHour._rawValue;
  value = heartRateSummary[1].dailyLowBPM.value;
  retstr->heartRateSummary.dailyLowBPM.value = heartRateSummary->dailyLowBPM.value;
  retstr->heartRateSummary.dailyLowBPM.is_nil = is_nil;
  *(&retstr->heartRateSummary.dailyHighBPM.value + 7) = v4;
  LOBYTE(retstr->heartRateSummary.heartRateDataByHour._rawValue) = rawValue;
  retstr->tintColor.super.isa = value;
  retstr[1].heartRateSummary.dailyLowBPM.value = tintColor.super.isa;
}

uint64_t HeartRateBasicChart.body.getter()
{
  v1 = v0[1];
  v7[0] = *v0;
  v7[1] = v1;
  v7[2] = v0[2];
  v8[0] = v7[0];
  v8[1] = v1;
  v9 = *(v0 + 4);
  v6 = v9;
  v2 = swift_allocObject();
  v3 = v0[1];
  v2[1] = *v0;
  v2[2] = v3;
  v2[3] = v0[2];
  sub_2521DA2B8(v8, v5);
  sub_2521DA314(v7, v5);
  sub_2521DA55C(0, &qword_27F4D50B8, type metadata accessor for HeartRateHourlyData);
  sub_2521DB9B0();
  sub_2521DB5E0(0, &qword_27F4D50C0, MEMORY[0x277CBB378]);
  sub_2521DA744(&qword_27F4D50F8, &qword_27F4D50B8, type metadata accessor for HeartRateHourlyData);
  sub_2521DA794();
  sub_2521DA6FC(&qword_27F4D5118, type metadata accessor for HeartRateHourlyData, &unk_2521DC714);
  return sub_2521DC010();
}

uint64_t sub_2521D9D68@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a3;
  sub_2521DA34C(0);
  v23 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2521DB80C(0, &qword_27F4D4F18, MEMORY[0x277D83B88], MEMORY[0x277CBB5A0]);
  MEMORY[0x28223BE20](v9 - 8);
  sub_2521D579C(0);
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_2521DBD70();
  v21 = *(v11 - 8);
  v22 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2521DB5E0(0, &qword_27F4D50C0, MEMORY[0x277CBB378]);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v21 - v15;
  sub_2521DC110();
  v24 = sub_2521DC100();
  sub_2521DC0F0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = *(a1 + *(type metadata accessor for HeartRateHourlyData(0) + 20));
  if (v17)
  {
    v26[6] = v17;
    v18 = swift_allocObject();
    v19 = a2[1];
    v18[1] = *a2;
    v18[2] = v19;
    v18[3] = a2[2];

    sub_2521DA314(a2, v26);
    sub_2521DA55C(0, &qword_27F4D4C48, type metadata accessor for HeartRateChartData);
    sub_2521DB9B0();
    sub_2521DA454(0);
    sub_2521DA744(&qword_27F4D50F0, &qword_27F4D4C48, type metadata accessor for HeartRateChartData);
    sub_2521DA860();
    sub_2521DA6FC(&qword_27F4D5138, type metadata accessor for HeartRateChartData, &unk_2521DC6A4);
    sub_2521DC010();
    (*(v6 + 32))(v16, v8, v23);
  }

  else
  {
    sub_2521DBEC0();
    sub_2521DB9B0();
    sub_2521DBC00();

    sub_2521DBEC0();
    v26[0] = 0;
    sub_2521DBC00();

    sub_2521DBD50();
    (*(v21 + 32))(v16, v13, v22);
  }

  sub_2521DB5E0(0, &qword_27F4D5130, MEMORY[0x277CBB370]);
  swift_storeEnumTagMultiPayload();
  sub_2521C7C10(v16, v25);
}

void sub_2521DA34C(uint64_t a1)
{
  if (!qword_27F4D50C8)
  {
    sub_2521DA55C(255, &qword_27F4D4C48, type metadata accessor for HeartRateChartData);
    sub_2521DB9B0();
    sub_2521DA454(255);
    sub_2521DA744(&qword_27F4D50F0, &qword_27F4D4C48, type metadata accessor for HeartRateChartData);
    sub_2521DA6FC(&qword_27F4D4CB0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    v1 = sub_2521DC030();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4D50C8);
    }
  }
}

void sub_2521DA454(uint64_t a1)
{
  if (!qword_27F4D50D0)
  {
    sub_2521DA55C(255, &qword_27F4D4C98, type metadata accessor for HeartRateBPMRange);
    sub_2521DB9E0();
    sub_2521DA5B0(255);
    sub_2521DA744(&qword_27F4D50E8, &qword_27F4D4C98, type metadata accessor for HeartRateBPMRange);
    sub_2521DA6FC(&qword_27F4D4CB8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v1 = sub_2521DC030();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4D50D0);
    }
  }
}

void sub_2521DA55C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2521DC0E0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2521DA5B0(uint64_t a1)
{
  if (!qword_27F4D50D8)
  {
    sub_2521DA678(255);
    sub_2521DBD70();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F4D50D8);
    }
  }
}

void sub_2521DA678(uint64_t a1)
{
  if (!qword_27F4D50E0)
  {
    sub_2521DBD70();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F4D50E0);
    }
  }
}

uint64_t sub_2521DA6FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2521DA744(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_2521DA55C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2521DA794()
{
  result = qword_27F4D5100;
  if (!qword_27F4D5100)
  {
    sub_2521DB5E0(255, &qword_27F4D50C0, MEMORY[0x277CBB378]);
    sub_2521DB440(&qword_27F4D5108, sub_2521DA34C, sub_2521DA860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D5100);
  }

  return result;
}

unint64_t sub_2521DA860()
{
  result = qword_27F4D5110;
  if (!qword_27F4D5110)
  {
    sub_2521DA454(255);
    sub_2521DA678(255);
    sub_2521DBD70();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D5110);
  }

  return result;
}

uint64_t sub_2521DA968(uint64_t a1, _OWORD *a2)
{
  v4 = type metadata accessor for HeartRateChartData(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_2521DC110();
  sub_2521DC100();
  sub_2521DC0F0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20 = *(a1 + *(v4 + 20));
  sub_2521DB698(a1, &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_2521DB6FC(&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  v9 = (v8 + ((v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = a2[1];
  *v9 = *a2;
  v9[1] = v10;
  v9[2] = a2[2];

  sub_2521DA314(a2, &v16);
  sub_2521DA55C(0, &qword_27F4D4C98, type metadata accessor for HeartRateBPMRange);
  sub_2521DB9E0();
  sub_2521DA5B0(0);
  sub_2521DA744(&qword_27F4D50E8, &qword_27F4D4C98, type metadata accessor for HeartRateBPMRange);
  sub_2521DA678(255);
  v12 = v11;
  v16 = sub_2521DBD70();
  v17 = MEMORY[0x277CBB400];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v16 = v12;
  v17 = MEMORY[0x277CE0F78];
  v18 = OpaqueTypeConformance2;
  v19 = MEMORY[0x277CE0F60];
  swift_getOpaqueTypeConformance2();
  sub_2521DA6FC(&unk_27F4D5140, type metadata accessor for HeartRateBPMRange, &unk_2521DC6DC);
  sub_2521DC010();
}

uint64_t sub_2521DAC5C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a3;
  v42 = a4;
  v5 = sub_2521DBEE0();
  v39 = *(v5 - 8);
  v40 = v5;
  MEMORY[0x28223BE20](v5);
  v38 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2521DB80C(0, &qword_27F4D4FB0, MEMORY[0x277D839F8], MEMORY[0x277CBB590]);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v31 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  sub_2521D579C(0);
  MEMORY[0x28223BE20](v10 - 8);
  v35 = sub_2521DBD70();
  v32 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v30 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2521DA678(0);
  v36 = *(v12 - 8);
  v37 = v12;
  MEMORY[0x28223BE20](v12);
  v34 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2521DC110();
  v33 = sub_2521DC100();
  sub_2521DC0F0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2521DBEC0();
  v29[1] = sub_2521DB9B0();
  sub_2521DBC00();

  sub_2521DBEC0();
  v14 = type metadata accessor for HeartRateBPMRange(0);
  v15 = *(a1 + v14[5]);
  v16 = v15;
  if (v15 == *(a1 + v14[6]))
  {
    v16 = v16 - (*(a1 + v14[7]) + *(a1 + v14[7]));
  }

  v43 = v16;
  sub_2521DBC00();

  sub_2521DBEC0();
  sub_2521C7DA0();
  v43 = v17;
  sub_2521DBC00();

  v18 = v30;
  sub_2521DBD60();
  v20 = v38;
  v19 = v39;
  v21 = v40;
  (*(v39 + 104))(v38, *MEMORY[0x277CE0118], v40);
  v22 = MEMORY[0x277CBB400];
  v24 = v34;
  v23 = v35;
  sub_2521DBB80();
  (*(v19 + 8))(v20, v21);
  (*(v32 + 8))(v18, v23);
  v25 = *(v41 + 40);
  v26 = sub_2521DBFE0();
  v44 = v22;
  v45 = v26;
  v43 = *&v23;
  swift_getOpaqueTypeConformance2();
  v27 = v37;
  sub_2521DBB90();

  (*(v36 + 8))(v24, v27);
}

uint64_t sub_2521DB1F4()
{
  v1 = v0[1];
  v7[0] = *v0;
  v7[1] = v1;
  v7[2] = v0[2];
  v8[0] = v7[0];
  v8[1] = v1;
  v9 = *(v0 + 4);
  v6 = v9;
  v2 = swift_allocObject();
  v3 = v0[1];
  v2[1] = *v0;
  v2[2] = v3;
  v2[3] = v0[2];
  sub_2521DA2B8(v8, v5);
  sub_2521DA314(v7, v5);
  sub_2521DA55C(0, &qword_27F4D50B8, type metadata accessor for HeartRateHourlyData);
  sub_2521DB9B0();
  sub_2521DB5E0(0, &qword_27F4D50C0, MEMORY[0x277CBB378]);
  sub_2521DA744(&qword_27F4D50F8, &qword_27F4D50B8, type metadata accessor for HeartRateHourlyData);
  sub_2521DA794();
  sub_2521DA6FC(&qword_27F4D5118, type metadata accessor for HeartRateHourlyData, &unk_2521DC714);
  return sub_2521DC010();
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2521DB39C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2521DB3E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2521DB440(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2521DB4BC(uint64_t a1)
{
  if (!qword_27F4D5128)
  {
    sub_2521DA55C(255, &qword_27F4D50B8, type metadata accessor for HeartRateHourlyData);
    sub_2521DB9B0();
    sub_2521DB5E0(255, &qword_27F4D50C0, MEMORY[0x277CBB378]);
    sub_2521DA744(&qword_27F4D50F8, &qword_27F4D50B8, type metadata accessor for HeartRateHourlyData);
    sub_2521DA6FC(&qword_27F4D4CB0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    v1 = sub_2521DC030();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4D5128);
    }
  }
}

void sub_2521DB5E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_2521DA34C(255);
    v7 = v6;
    v8 = sub_2521DBD70();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2521DB698(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeartRateChartData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2521DB6FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeartRateChartData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2521DB760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for HeartRateChartData(0) - 8);
  v6 = v2 + ((*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_2521DAC5C(a1, v6, a2);
}

void sub_2521DB80C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = sub_2521DBC10();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}