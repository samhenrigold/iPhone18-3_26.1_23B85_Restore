uint64_t sub_19371EAD0@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.CalendarMatchingPolicy.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19371EAF8@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.CalendarMatchingPolicy.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19371EBE8@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.CalendarRepeatedTimePolicy.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19371EC10@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.CalendarRepeatedTimePolicy.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19371ED00@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.LocaleWeekday.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19371ED28@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.LocaleWeekday.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19371EE18@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleFrequency.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19371EE40@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleFrequency.allCases.getter();
  *a1 = result;
  return result;
}

void ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 28) = 513;
}

uint64_t static ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 29);
  v5 = *(a2 + 8);
  v6 = *(a2 + 29);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  if (*(a1 + 28))
  {
    if (!*(a2 + 28))
    {
      return 0;
    }

LABEL_16:
    if (v4 == 2)
    {
      if (v6 != 2)
      {
        return 0;
      }
    }

    else if (v6 == 2 || ((v6 ^ v4) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  result = 0;
  if ((*(a2 + 28) & 1) == 0 && v2 == *(a2 + 16) && v3 == *(a2 + 24))
  {
    goto LABEL_16;
  }

  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd.hash(into:)()
{
  OUTLINED_FUNCTION_77_1();
  v1 = v0[2];
  v2 = *(v0 + 28);
  v3 = *(v0 + 29);
  if (*(v0 + 8) == 1)
  {
    sub_19393CAD0();
    if (!v2)
    {
LABEL_3:
      sub_19393CAD0();
      MEMORY[0x193B18060](v1);
      sub_19393CAE0();
      goto LABEL_6;
    }
  }

  else
  {
    v4 = *v0;
    sub_19393CAD0();
    MEMORY[0x193B18060](v4);
    if (!v2)
    {
      goto LABEL_3;
    }
  }

  sub_19393CAD0();
LABEL_6:
  if (v3 != 2)
  {
    sub_19393CAD0();
  }

  return sub_19393CAD0();
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd.hashValue.getter()
{
  OUTLINED_FUNCTION_180_7();
  OUTLINED_FUNCTION_93_11(v0);
  v1 = OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_134_0(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19371F180()
{
  OUTLINED_FUNCTION_180_7();
  OUTLINED_FUNCTION_93_11(v0);
  v1 = sub_19393CAB0();
  OUTLINED_FUNCTION_134_0(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd.hash(into:)();
  return sub_19393CB00();
}

void ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleWeekday.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 256;
  *(a1 + 10) = 2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
}

uint64_t static ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleWeekday.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 10);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a2 + 10);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  if (*(a1 + 9))
  {
    if ((*(a2 + 9) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 9))
    {
      return 0;
    }

    OUTLINED_FUNCTION_9_16();
    v8 = ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.LocaleWeekday.rawValue.getter();
    if (v8 != ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.LocaleWeekday.rawValue.getter())
    {
      return 0;
    }
  }

  if (v2 == 2)
  {
    if (v5 != 2)
    {
      return 0;
    }

LABEL_11:
    if (v4)
    {
      if ((v7 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v3 == v6)
      {
        v10 = v7;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        return 0;
      }
    }

    return 1;
  }

  result = 0;
  if (v5 != 2 && ((v5 ^ v2) & 1) == 0)
  {
    goto LABEL_11;
  }

  return result;
}

void ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleWeekday.hash(into:)()
{
  OUTLINED_FUNCTION_272_2();
  OUTLINED_FUNCTION_148_2();
  v1 = *(v0 + 10);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  if (v4 == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_179_0();
    v5 = ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.LocaleWeekday.rawValue.getter();
    MEMORY[0x193B18030](v5);
  }

  if (v1 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if (v3)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v2);
  }

  OUTLINED_FUNCTION_92_7();
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleWeekday.hashValue.getter()
{
  OUTLINED_FUNCTION_151_9();
  v0 = sub_19393CAB0();
  OUTLINED_FUNCTION_134_0(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleWeekday.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19371F438()
{
  OUTLINED_FUNCTION_151_9();
  v0 = sub_19393CAB0();
  OUTLINED_FUNCTION_134_0(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleWeekday.hash(into:)();
  return sub_19393CB00();
}

uint64_t static ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleMonth.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 9);
  v3 = *(a2 + 8);
  v4 = *(a2 + 9);
  if ((*(a1 + 8) & 1) == 0)
  {
    if (*a1 != *a2)
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }

LABEL_7:
    if (v2 == 2)
    {
      if (v4 != 2)
      {
        return 0;
      }
    }

    else if (v4 == 2 || ((v4 ^ v2) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  if (*(a2 + 8))
  {
    goto LABEL_7;
  }

  return 0;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleMonth.hash(into:)()
{
  OUTLINED_FUNCTION_77_1();
  v1 = *(v0 + 9);
  if (*(v0 + 8) == 1)
  {
    sub_19393CAD0();
  }

  else
  {
    v2 = *v0;
    sub_19393CAD0();
    MEMORY[0x193B18060](v2);
  }

  if (v1 != 2)
  {
    sub_19393CAD0();
  }

  return sub_19393CAD0();
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleMonth.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 9);
  OUTLINED_FUNCTION_119();
  sub_19393CAD0();
  if (v1 != 1)
  {
    v3 = OUTLINED_FUNCTION_161();
    MEMORY[0x193B18060](v3);
  }

  if (v2 != 2)
  {
    OUTLINED_FUNCTION_123();
  }

  sub_19393CAD0();
  return sub_19393CB00();
}

uint64_t sub_19371F64C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 9);
  sub_19393CAB0();
  sub_19393CAD0();
  if (v1 != 1)
  {
    v3 = OUTLINED_FUNCTION_161();
    MEMORY[0x193B18060](v3);
  }

  if (v2 != 2)
  {
    OUTLINED_FUNCTION_123();
  }

  sub_19393CAD0();
  return sub_19393CB00();
}

void static ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v1 = v0;
  v3 = v2;
  memcpy(v146, v2, 0x49uLL);
  v133 = *(v3 + 10);
  v132 = *(v3 + 88);
  v4 = *(v3 + 89);
  v135 = *(v3 + 104);
  v123 = *(v3 + 7);
  v122 = *(v3 + 16);
  v129 = v3[70];
  v127 = *(v3 + 12);
  v128 = *(v3 + 34);
  v119 = *(v3 + 18);
  v118 = *(v3 + 152);
  v115 = *(v3 + 168);
  v120 = *(v3 + 169);
  v121 = *(v3 + 153);
  v116 = *(v3 + 20);
  v117 = *(v3 + 22);
  v113 = *(v3 + 24);
  v114 = *(v3 + 23);
  v111 = *(v3 + 26);
  v112 = *(v3 + 25);
  v5 = *(v3 + 29);
  v109 = *(v3 + 28);
  v110 = *(v3 + 27);
  v6 = *(v3 + 30);
  memcpy(v147, v1, 0x49uLL);
  v131 = *(v1 + 10);
  v130 = *(v1 + 88);
  v7 = *(v1 + 89);
  v134 = *(v1 + 104);
  v9 = *(v1 + 14);
  v8 = *(v1 + 15);
  v10 = *(v1 + 16);
  v126 = *(v1 + 70);
  v124 = *(v1 + 12);
  v125 = *(v1 + 34);
  v11 = *(v1 + 18);
  v12 = *(v1 + 152);
  v13 = *(v1 + 153);
  v14 = *(v1 + 20);
  v15 = *(v1 + 168);
  v16 = *(v1 + 169);
  v18 = *(v1 + 22);
  v17 = *(v1 + 23);
  v20 = *(v1 + 24);
  v19 = *(v1 + 25);
  v22 = *(v1 + 26);
  v21 = *(v1 + 27);
  v24 = *(v1 + 28);
  v23 = *(v1 + 29);
  v25 = *(v1 + 30);
  v26 = v146[3];
  *&v145[7] = *v1;
  *&v145[23] = *(v1 + 2);
  v27 = v147[3];
  if (v146[3] == 1)
  {
    if (v147[3] == 1)
    {
      v101 = v9;
      v102 = v8;
      v103 = v10;
      v104 = v13;
      v105 = v12;
      v106 = v11;
      v107 = v16;
      v108 = v15;
      v99 = v14;
      v100 = v18;
      v97 = v20;
      v98 = v17;
      v95 = v22;
      v96 = v19;
      v93 = v24;
      v94 = v21;
      v91 = v25;
      v92 = v23;
      v89 = v6;
      v90 = v5;
      *__src = *v3;
      *&__src[16] = *(v3 + 2);
      *&__src[24] = 1;
      v28 = *(v3 + 3);
      *&__src[32] = *(v3 + 2);
      *&__src[48] = v28;
      *&__src[57] = *(v3 + 57);
      OUTLINED_FUNCTION_75_0();
      sub_193448804(v29, v30, v31, v32);
      OUTLINED_FUNCTION_75_0();
      sub_193448804(v33, v34, v35, v36);
      OUTLINED_FUNCTION_247_2(__src);
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_9_12();
    sub_193448804(v49, v50, v51, v52);
    OUTLINED_FUNCTION_9_12();
    sub_193448804(v53, v54, v55, v56);
LABEL_7:
    OUTLINED_FUNCTION_197_3();
    *v141 = *v145;
    *&v141[15] = *&v145[15];
    v142 = v27;
    v57 = v1[2];
    v58 = v1[3];
    *(v144 + 9) = *(v1 + 57);
    v143 = v57;
    v144[0] = v58;
    sub_19344E6DC(__src, &qword_1EAE41AF8, &qword_193980800);
    goto LABEL_8;
  }

  v101 = v9;
  v102 = v8;
  v103 = v10;
  v104 = v13;
  v105 = v12;
  v106 = v11;
  v107 = v16;
  v108 = v15;
  v99 = v14;
  v100 = v18;
  v97 = v20;
  v98 = v17;
  v95 = v22;
  v96 = v19;
  v93 = v24;
  v94 = v21;
  v91 = v25;
  v92 = v23;
  OUTLINED_FUNCTION_197_3();
  memcpy(__dst, __src, 0x49uLL);
  if (v27 == 1)
  {
    memcpy(v138, __src, 0x49uLL);
    OUTLINED_FUNCTION_9_12();
    sub_193448804(v37, v38, v39, v40);
    OUTLINED_FUNCTION_9_12();
    sub_193448804(v41, v42, v43, v44);
    OUTLINED_FUNCTION_9_12();
    sub_193448804(v45, v46, v47, v48);
    sub_193737738(v138);
    goto LABEL_7;
  }

  v89 = v6;
  v90 = v5;
  v138[0] = *v1;
  v59 = *(v1 + 2);
  v60 = v1[3];
  v138[2] = v1[2];
  v138[3] = v60;
  *(&v138[3] + 9) = *(v1 + 57);
  *&v138[1] = v59;
  *(&v138[1] + 1) = v27;
  OUTLINED_FUNCTION_294(v146, v137);
  OUTLINED_FUNCTION_294(v147, v137);
  OUTLINED_FUNCTION_294(__src, v137);
  static ToolKitToolTypedValue.PrimitiveValue.DateComponents.Calendar.== infix(_:_:)();
  v62 = v61;
  memcpy(v136, v138, 0x49uLL);
  sub_193737738(v136);
  memcpy(v137, __dst, 0x49uLL);
  sub_193737738(v137);
  v138[0] = *v3;
  *&v138[1] = *(v3 + 2);
  *(&v138[1] + 1) = v26;
  v63 = *(v3 + 3);
  v138[2] = *(v3 + 2);
  v138[3] = v63;
  *(&v138[3] + 9) = *(v3 + 57);
  OUTLINED_FUNCTION_15_1();
  sub_19344E6DC(v64, v65, v66);
  if ((v62 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_10:
  if (v4)
  {
    if ((v7 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (v7)
    {
      goto LABEL_8;
    }

    *__src = v133;
    __src[8] = v132 & 1;
    __dst[0] = v131;
    LOBYTE(__dst[1]) = v130 & 1;
    v67 = ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleFrequency.rawValue.getter();
    if (v67 != ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleFrequency.rawValue.getter())
    {
      goto LABEL_8;
    }
  }

  if (v135)
  {
    v69 = v107;
    v68 = v108;
    v70 = v106;
    v72 = v104;
    v71 = v105;
    v73 = v102;
    v74 = v103;
    v75 = v101;
    if (!v134)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v76 = v134;
    if (v127 != v124)
    {
      v76 = 1;
    }

    v69 = v107;
    v68 = v108;
    v70 = v106;
    v72 = v104;
    v71 = v105;
    v73 = v102;
    v74 = v103;
    v75 = v101;
    if (v76)
    {
      goto LABEL_8;
    }
  }

  v77 = v125 | (v126 << 32);
  if (((v128 | (v129 << 32)) & 0xFF0000000000) == 0x30000000000)
  {
    if ((v77 & 0xFF0000000000) != 0x30000000000)
    {
      goto LABEL_8;
    }
  }

  else
  {
    *__src = v123;
    *&__src[16] = v122;
    *&__src[24] = v128;
    *&__src[28] = (v128 | (v129 << 32)) >> 32;
    if ((v77 & 0xFF0000000000) == 0x30000000000)
    {
      goto LABEL_8;
    }

    __dst[0] = v75;
    LOBYTE(__dst[1]) = v73 & 1;
    __dst[2] = v74;
    LODWORD(__dst[3]) = v125;
    BYTE4(__dst[3]) = BYTE4(v77) & 1;
    BYTE5(__dst[3]) = ((v125 | (v126 << 32)) >> 32) >> 8;
    v78 = v68;
    v79 = v69;
    v80 = v70;
    v81 = v71;
    v82 = v72;
    v83 = static ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd.== infix(_:_:)(__src, __dst);
    v72 = v82;
    v71 = v81;
    v70 = v80;
    v69 = v79;
    v68 = v78;
    if ((v83 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  if (v121)
  {
    if ((v72 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (v72)
    {
      goto LABEL_8;
    }

    *__src = v119;
    __src[8] = v118 & 1;
    __dst[0] = v70;
    LOBYTE(__dst[1]) = v71 & 1;
    v84 = v68;
    v85 = v69;
    v86 = ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.CalendarMatchingPolicy.rawValue.getter();
    v87 = ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.CalendarMatchingPolicy.rawValue.getter();
    v69 = v85;
    v68 = v84;
    if (v86 != v87)
    {
      goto LABEL_8;
    }
  }

  if (v120)
  {
    if ((v69 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (v69)
    {
      goto LABEL_8;
    }

    *__src = v116;
    __src[8] = v115 & 1;
    __dst[0] = v99;
    LOBYTE(__dst[1]) = v68 & 1;
    v88 = ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.CalendarRepeatedTimePolicy.rawValue.getter();
    if (v88 != ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.CalendarRepeatedTimePolicy.rawValue.getter())
    {
      goto LABEL_8;
    }
  }

  if (sub_19371495C(v117, v100) & 1) != 0 && (sub_19345007C(v114, v98) & 1) != 0 && (sub_19345007C(v113, v97) & 1) != 0 && (sub_19345007C(v112, v96) & 1) != 0 && (sub_193714A00(v111, v95) & 1) != 0 && (sub_19345007C(v110, v94) & 1) != 0 && (sub_19345007C(v109, v93) & 1) != 0 && (sub_19345007C(v90, v92))
  {
    sub_19345007C(v89, v91);
  }

LABEL_8:
  OUTLINED_FUNCTION_116();
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 3);
  v4 = *(v1 + 10);
  v5 = *(v1 + 88);
  v6 = *(v1 + 89);
  v7 = *(v1 + 104);
  v22 = *(v1 + 12);
  v23 = *(v1 + 15);
  v20 = *(v1 + 14);
  v21 = *(v1 + 16);
  v8 = *(v1 + 70);
  v9 = *(v1 + 34);
  v25 = *(v1 + 18);
  v24 = *(v1 + 152);
  v27 = *(v1 + 20);
  v26 = *(v1 + 168);
  v28 = *(v1 + 153);
  v29 = *(v1 + 169);
  v30 = *(v1 + 23);
  v31 = *(v1 + 24);
  v32 = *(v1 + 25);
  v33 = *(v1 + 26);
  v34 = *(v1 + 27);
  v35 = *(v1 + 28);
  v36 = *(v1 + 29);
  v37 = *(v1 + 30);
  if (v3 == 1)
  {
    OUTLINED_FUNCTION_104_0();
    if (!v6)
    {
LABEL_3:
      OUTLINED_FUNCTION_103_0();
      __dst[0] = v4;
      LOBYTE(__dst[1]) = v5 & 1;
      v10 = ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleFrequency.rawValue.getter();
      MEMORY[0x193B18030](v10);
      goto LABEL_6;
    }
  }

  else
  {
    __src[0] = *v1;
    v11 = *(v1 + 2);
    v12 = v1[3];
    __src[2] = v1[2];
    __src[3] = v12;
    *(&__src[3] + 9) = *(v1 + 57);
    *&__src[1] = v11;
    *(&__src[1] + 1) = v3;
    OUTLINED_FUNCTION_103_0();
    v39 = *v1;
    v40 = *(v1 + 2);
    v41 = v3;
    v13 = v1[3];
    v42 = v1[2];
    v43[0] = v13;
    *(v43 + 9) = *(v1 + 57);
    sub_1936C521C(&v39, __dst);
    ToolKitToolTypedValue.PrimitiveValue.DateComponents.Calendar.hash(into:)();
    memcpy(__dst, __src, 0x49uLL);
    sub_193737738(__dst);
    if (!v6)
    {
      goto LABEL_3;
    }
  }

  OUTLINED_FUNCTION_104_0();
LABEL_6:
  v14 = v9 | (v8 << 32);
  if (v7)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v22);
  }

  if (BYTE5(v14) == 3)
  {
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_103_0();
  if (v23)
  {
    OUTLINED_FUNCTION_104_0();
    if ((v14 & 0x100000000) != 0)
    {
LABEL_12:
      OUTLINED_FUNCTION_104_0();
      goto LABEL_15;
    }
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v20);
    if ((v14 & 0x100000000) != 0)
    {
      goto LABEL_12;
    }
  }

  OUTLINED_FUNCTION_103_0();
  MEMORY[0x193B18060](v21);
  sub_19393CAE0();
LABEL_15:
  if (BYTE5(v14) != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

LABEL_18:
  sub_19393CAD0();
  if (v28)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    __dst[0] = v25;
    LOBYTE(__dst[1]) = v24 & 1;
    v15 = ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.CalendarMatchingPolicy.rawValue.getter();
    MEMORY[0x193B18030](v15);
  }

  if (v29)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    __dst[0] = v27;
    LOBYTE(__dst[1]) = v26 & 1;
    v16 = ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.CalendarRepeatedTimePolicy.rawValue.getter();
    MEMORY[0x193B18030](v16);
  }

  v17 = OUTLINED_FUNCTION_438();
  sub_1937373C0(v17, v18);
  sub_1934D14B8(a1, v30);
  sub_1934D14B8(a1, v31);
  sub_1934D14B8(a1, v32);
  sub_1937372A8(a1, v33);
  sub_1934D14B8(a1, v34);
  sub_1934D14B8(a1, v35);
  sub_1934D14B8(a1, v36);
  return sub_1934D14B8(a1, v37);
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_19372009C()
{
  sub_19393CAB0();
  ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.DateInterval.start.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 12);
  *v1 = *result;
  *(v1 + 8) = v2;
  *(v1 + 12) = v3;
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.DateInterval.duration.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

void ToolKitToolTypedValue.PrimitiveValue.DateInterval.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 12) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 28) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  OUTLINED_FUNCTION_123_2();
}

uint64_t static ToolKitToolTypedValue.PrimitiveValue.DateInterval.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 28);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (*(a1 + 12))
  {
    if (!*(a2 + 12))
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (*(a2 + 12))
    {
      return result;
    }

    if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
    {
      return result;
    }
  }

  if (v5)
  {
    if (!*(a2 + 28))
    {
      return 0;
    }

LABEL_19:
    if (v7)
    {
      if ((*(a2 + 40) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v6 == *(a2 + 32))
      {
        v11 = *(a2 + 40);
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        return 0;
      }
    }

    return 1;
  }

  result = 0;
  if ((*(a2 + 28) & 1) == 0 && v3 == *(a2 + 16) && v4 == *(a2 + 24))
  {
    goto LABEL_19;
  }

  return result;
}

void ToolKitToolTypedValue.PrimitiveValue.DateInterval.hash(into:)()
{
  OUTLINED_FUNCTION_237();
  OUTLINED_FUNCTION_77_1();
  v1 = v0[2];
  v2 = *(v0 + 28);
  v3 = v0[4];
  v4 = *(v0 + 40);
  if (*(v0 + 12) == 1)
  {
    sub_19393CAD0();
    if (!v2)
    {
      goto LABEL_3;
    }

LABEL_9:
    sub_19393CAD0();
    if (!v4)
    {
      goto LABEL_4;
    }

LABEL_10:
    sub_19393CAD0();
    goto LABEL_11;
  }

  v6 = *v0;
  sub_19393CAD0();
  MEMORY[0x193B18060](v6);
  sub_19393CAE0();
  if (v2)
  {
    goto LABEL_9;
  }

LABEL_3:
  sub_19393CAD0();
  MEMORY[0x193B18060](v1);
  sub_19393CAE0();
  if (v4)
  {
    goto LABEL_10;
  }

LABEL_4:
  sub_19393CAD0();
  if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  MEMORY[0x193B18060](v5);
LABEL_11:
  OUTLINED_FUNCTION_236();
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.DateInterval.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  ToolKitToolTypedValue.PrimitiveValue.DateInterval.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_193720374()
{
  sub_19393CAB0();
  ToolKitToolTypedValue.PrimitiveValue.DateInterval.hash(into:)();
  return sub_19393CB00();
}

void ToolKitToolTypedValue.PrimitiveValue.Duration.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
}

uint64_t static ToolKitToolTypedValue.PrimitiveValue.Duration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if (*(a1 + 24))
  {
    if ((*(a2 + 24) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) == *(a2 + 16))
    {
      v4 = *(a2 + 24);
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Duration.hash(into:)()
{
  OUTLINED_FUNCTION_77_1();
  v1 = v0[2];
  v2 = *(v0 + 24);
  if (*(v0 + 8) == 1)
  {
    sub_19393CAD0();
    if (!v2)
    {
LABEL_3:
      sub_19393CAD0();
      return MEMORY[0x193B18060](v1);
    }
  }

  else
  {
    v4 = *v0;
    sub_19393CAD0();
    MEMORY[0x193B18060](v4);
    if (!v2)
    {
      goto LABEL_3;
    }
  }

  return sub_19393CAD0();
}

void ToolKitToolTypedValue.PrimitiveValue.Duration.hashValue.getter()
{
  OUTLINED_FUNCTION_460();
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_119();
  sub_19393CAD0();
  if (v1 != 1)
  {
    v3 = OUTLINED_FUNCTION_264_0();
    MEMORY[0x193B18060](v3);
  }

  sub_19393CAD0();
  if (!v2)
  {
    v4 = OUTLINED_FUNCTION_161();
    MEMORY[0x193B18060](v4);
  }

  sub_19393CB00();
  OUTLINED_FUNCTION_459();
}

void sub_193720584()
{
  OUTLINED_FUNCTION_460();
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  sub_19393CAB0();
  sub_19393CAD0();
  if (v1 != 1)
  {
    v3 = OUTLINED_FUNCTION_264_0();
    MEMORY[0x193B18060](v3);
  }

  sub_19393CAD0();
  if (!v2)
  {
    v4 = OUTLINED_FUNCTION_161();
    MEMORY[0x193B18060](v4);
  }

  sub_19393CB00();
  OUTLINED_FUNCTION_459();
}

uint64_t ToolKitToolTypedValue.EnumerationValue.caseValue.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

void *ToolKitToolTypedValue.EnumerationValue.displayRepresentation.setter()
{
  OUTLINED_FUNCTION_108_13();
  memcpy(v1, (v0 + 24), 0x50uLL);
  sub_19344E6DC(&v3, &qword_1EAE41AB8, &qword_1939807B8);
  return OUTLINED_FUNCTION_276_3((v0 + 24));
}

uint64_t ToolKitToolTypedValue.EntityValue.identifier.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t ToolKitToolTypedValue.EntityValue.properties.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t ToolKitToolTypedValue.EntityValue.displayRepresentation.getter()
{
  OUTLINED_FUNCTION_153_9();
  v2 = OUTLINED_FUNCTION_368_1(v1);
  v3 = OUTLINED_FUNCTION_330_0(v2, (v0 + 32));
  return OUTLINED_FUNCTION_278_3(v3, v4, &qword_1EAE41AB8, &qword_1939807B8, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20);
}

void *ToolKitToolTypedValue.EntityValue.displayRepresentation.setter()
{
  OUTLINED_FUNCTION_108_13();
  OUTLINED_FUNCTION_368_1(v1);
  sub_19344E6DC(&v3, &qword_1EAE41AB8, &qword_1939807B8);
  return OUTLINED_FUNCTION_276_3((v0 + 32));
}

uint64_t ToolKitToolTypedValue.EntityValue.hydratedAppEntity.setter()
{
  OUTLINED_FUNCTION_50_0();
  result = sub_19345012C(*(v1 + 112), *(v1 + 120));
  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
  return result;
}

uint64_t ToolKitToolTypedValue.EntityValue.siriKitEntity.setter()
{
  OUTLINED_FUNCTION_50_0();
  result = sub_19345012C(*(v1 + 128), *(v1 + 136));
  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  return result;
}

__n128 ToolKitToolTypedValue.EntityValue.init()@<Q0>(uint64_t a1@<X8>)
{
  *(a1 + 112) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 120) = xmmword_193980760;
  *(a1 + 136) = 0xF000000000000000;
  v3 = OUTLINED_FUNCTION_114_12();
  sub_193444060(v3);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = v1;
  *(a1 + 24) = sub_19393C510();
  memset(v5, 0, sizeof(v5));
  sub_19344E6DC(v5, &qword_1EAE41AB8, &qword_1939807B8);
  OUTLINED_FUNCTION_139_10(0);
  OUTLINED_FUNCTION_300_1();
  *(a1 + 112) = xmmword_193950B20;
  OUTLINED_FUNCTION_300_1();
  result = xmmword_193950B20;
  *(a1 + 128) = xmmword_193950B20;
  return result;
}

uint64_t sub_193720B50(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_13_20(a1);
  v4 = *(v3 + 16);
  v5 = v2[2];
  v6 = v1 == *v2 && *(v3 + 8) == v2[1];
  if (v6 || (v7 = 0, (sub_19393CA30() & 1) != 0))
  {

    OUTLINED_FUNCTION_143_7(v8, v9, v10, v11, v12, v13, v14, v15, v5, v4);
    v16 = static ToolKitToolTypedValue.== infix(_:_:)();
    v7 = v16;
    OUTLINED_FUNCTION_126_9(v16, v17, v18, v19, v20, v21, v22, v23, v33);

    OUTLINED_FUNCTION_98_15(v24, v25, v26, v27, v28, v29, v30, v31, v34, v35);
  }

  return v7 & 1;
}

void static ToolKitToolTypedValue.EntityValue.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v1 = v0;
  v3 = v2;
  v4 = *v2;
  v105 = v2[1];
  v107 = v2[2];
  memcpy(v127, v2 + 4, sizeof(v127));
  v5 = v3[14];
  v6 = v3[15];
  v103 = v3[17];
  v7 = *v1;
  v104 = v1[1];
  v106 = v1[2];
  memcpy(v128, v1 + 4, sizeof(v128));
  v8 = v1[14];
  v9 = v1[15];
  v10 = v1[17];
  OUTLINED_FUNCTION_147_8();
  if (v15)
  {
    v12 = v10;
    v13 = v11 & ~v7;
    sub_193437C90(v4);
    sub_193437C90(v7);
    if (v13)
    {
LABEL_7:
      sub_193444060(v4);
      sub_193444060(v7);
      goto LABEL_8;
    }

    sub_193444060(v4);
    v10 = v12;
  }

  else
  {
    *&__src[0] = v4;
    if ((v11 & ~v7) == 0)
    {
      sub_193437C90(v4);
      OUTLINED_FUNCTION_94_14(v7);
      goto LABEL_7;
    }

    __dst[0] = v7;
    sub_193437C90(v4);
    sub_193437C90(v7);
    sub_193437C90(v4);
    v14 = static ToolKitToolTypeIdentifier.== infix(_:_:)();

    sub_193444060(v4);
    if ((v14 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  if (!v107)
  {
    if (v106)
    {
      goto LABEL_8;
    }

LABEL_19:
    v16 = OUTLINED_FUNCTION_225();
    if ((sub_193721574(v16, v17) & 1) == 0)
    {
      goto LABEL_8;
    }

    v18 = v5;
    v124 = OUTLINED_FUNCTION_283_1();
    v125 = v19;
    v20 = *(&v127[2] + 1);
    v126 = *&v127[2];
    v21 = *(&v128[2] + 1);
    v121 = *&v128[2];
    v122 = v127[3];
    v123 = v127[4];
    v119 = OUTLINED_FUNCTION_399();
    v120 = v22;
    v117 = v128[3];
    v118 = v128[4];
    if (v20)
    {
      __src[0] = OUTLINED_FUNCTION_283_1();
      __src[1] = v23;
      *&__src[2] = *&v127[2];
      *(&__src[2] + 1) = v20;
      v25 = *(v24 + 64);
      __src[3] = *(v24 + 48);
      __src[4] = v25;
      memcpy(__dst, __src, sizeof(__dst));
      if (v21)
      {
        v110[0] = OUTLINED_FUNCTION_399();
        v110[1] = v26;
        v28 = *(v27 + 64);
        v110[3] = *(v27 + 48);
        v110[4] = v28;
        *&v110[2] = *&v128[2];
        *(&v110[2] + 1) = v21;
        OUTLINED_FUNCTION_75_0();
        sub_193448804(v29, v30, v31, v32);
        OUTLINED_FUNCTION_75_0();
        sub_193448804(v33, v34, v35, v36);
        OUTLINED_FUNCTION_75_0();
        sub_193448804(v37, v38, v39, v40);
        v41 = static ToolKitToolDisplayRepresentation.== infix(_:_:)(__dst, v110);
        memcpy(v108, v110, sizeof(v108));
        sub_1937375CC(v108);
        memcpy(v109, __dst, sizeof(v109));
        sub_1937375CC(v109);
        v110[0] = v124;
        v110[1] = v125;
        *&v110[2] = v126;
        *(&v110[2] + 1) = v20;
        v110[3] = v122;
        v110[4] = v123;
        OUTLINED_FUNCTION_247_2(v110);
        if (!v41)
        {
          goto LABEL_8;
        }

LABEL_29:
        OUTLINED_FUNCTION_340_0();
        if (!v15 & v73)
        {
          if (v9 >> 60 != 15)
          {
LABEL_34:
            v76 = OUTLINED_FUNCTION_158_4();
            sub_19345012C(v76, v77);
            v78 = v8;
            v79 = v9;
            goto LABEL_41;
          }

          v74 = OUTLINED_FUNCTION_158_4();
          sub_19345012C(v74, v75);
        }

        else
        {
          if (v9 >> 60 == 15)
          {
            goto LABEL_34;
          }

          v80 = OUTLINED_FUNCTION_158_4();
          v81 = MEMORY[0x193B172A0](v80);
          sub_19345012C(v8, v9);
          sub_19345012C(v18, v6);
          if ((v81 & 1) == 0)
          {
            goto LABEL_8;
          }
        }

        if (v103 >> 60 == 15)
        {
          if (v10 >> 60 == 15)
          {
            v82 = OUTLINED_FUNCTION_13_0();
            sub_193450268(v82, v83);
            v84 = OUTLINED_FUNCTION_165_1();
            sub_193450268(v84, v85);
            v86 = OUTLINED_FUNCTION_13_0();
            sub_19345012C(v86, v87);
            goto LABEL_8;
          }
        }

        else if (v10 >> 60 != 15)
        {
          v94 = OUTLINED_FUNCTION_127();
          sub_193450268(v94, v95);
          v96 = OUTLINED_FUNCTION_165_1();
          sub_193450268(v96, v97);
          v98 = OUTLINED_FUNCTION_127();
          MEMORY[0x193B172A0](v98);
          v99 = OUTLINED_FUNCTION_165_1();
          sub_19345012C(v99, v100);
          v101 = OUTLINED_FUNCTION_127();
          sub_19345012C(v101, v102);
          goto LABEL_8;
        }

        v88 = OUTLINED_FUNCTION_13_0();
        sub_193450268(v88, v89);
        v90 = OUTLINED_FUNCTION_165_1();
        sub_193450268(v90, v91);
        v92 = OUTLINED_FUNCTION_13_0();
        sub_19345012C(v92, v93);
        v78 = OUTLINED_FUNCTION_165_1();
LABEL_41:
        sub_19345012C(v78, v79);
        goto LABEL_8;
      }

      memcpy(v110, __src, sizeof(v110));
      OUTLINED_FUNCTION_75_0();
      sub_193448804(v50, v51, v52, v53);
      OUTLINED_FUNCTION_75_0();
      sub_193448804(v54, v55, v56, v57);
      OUTLINED_FUNCTION_75_0();
      sub_193448804(v58, v59, v60, v61);
      sub_1937375CC(v110);
    }

    else
    {
      if (!v21)
      {
        __src[0] = OUTLINED_FUNCTION_283_1();
        __src[1] = v62;
        __src[2] = *&v127[2];
        v64 = *(v63 + 64);
        __src[3] = *(v63 + 48);
        __src[4] = v64;
        OUTLINED_FUNCTION_75_0();
        sub_193448804(v65, v66, v67, v68);
        OUTLINED_FUNCTION_75_0();
        sub_193448804(v69, v70, v71, v72);
        OUTLINED_FUNCTION_247_2(__src);
        goto LABEL_29;
      }

      OUTLINED_FUNCTION_75_0();
      sub_193448804(v42, v43, v44, v45);
      OUTLINED_FUNCTION_75_0();
      sub_193448804(v46, v47, v48, v49);
    }

    __src[0] = v124;
    __src[1] = v125;
    *&__src[2] = v126;
    *(&__src[2] + 1) = v20;
    __src[3] = v122;
    __src[4] = v123;
    __src[5] = v119;
    __src[6] = v120;
    v113 = v121;
    v114 = v21;
    v115 = v117;
    v116 = v118;
    sub_19344E6DC(__src, &qword_1EAE41AC0, &qword_1939807C0);
    goto LABEL_8;
  }

  if (v106)
  {
    v15 = v105 == v104 && v107 == v106;
    if (v15 || (sub_19393CA30() & 1) != 0)
    {
      goto LABEL_19;
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_116();
}

uint64_t sub_1937211C8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_12:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    if (!v14)
    {
      return 1;
    }

    v17 = sub_193485250(v15, v14);
    v19 = v18;

    if ((v19 & 1) == 0 || (v20 = *(*(v2 + 56) + 8 * v17), v21 = *(v20 + 16), v21 != *(v16 + 16)))
    {
LABEL_30:

      return 0;
    }

    if (v21)
    {
      v22 = v20 == v16;
    }

    else
    {
      v22 = 1;
    }

    if (!v22)
    {
      v25 = v2;

      v23 = 4;
      while ((v23 - 4) < *(v20 + 16))
      {
        v27 = *(v20 + 8 * v23);
        if ((v23 - 4) >= *(v16 + 16))
        {
          goto LABEL_34;
        }

        v26 = *(v16 + 8 * v23);

        v24 = static ToolKitToolToolDefinition.Version1.Parameter.Relationship.Relation.== infix(_:_:)(&v27, &v26);

        if (!v24)
        {

          goto LABEL_30;
        }

        ++v23;
        if (!--v21)
        {

          v2 = v25;
          goto LABEL_26;
        }
      }

      goto LABEL_33;
    }

LABEL_26:
    ;
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= i)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1937213EC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
LABEL_13:
    v11 = (*(v2 + 48) + 16 * (v8 | (v3 << 6)));
    v13 = *v11;
    v12 = v11[1];

    if (!v12)
    {
      return 1;
    }

    sub_193485250(v13, v12);
    v15 = v14;

    if ((v15 & 1) == 0)
    {

      return 0;
    }

    v16 = static ToolKitToolTypedValueResolvable.== infix(_:_:)();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v2 + 64 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v6 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_193721574(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
LABEL_13:
    v11 = (*(v2 + 48) + 16 * (v8 | (v3 << 6)));
    v13 = *v11;
    v12 = v11[1];

    if (!v12)
    {
      return 1;
    }

    sub_193485250(v13, v12);
    v15 = v14;

    if ((v15 & 1) == 0)
    {

      return 0;
    }

    v16 = static ToolKitToolTypedValue.== infix(_:_:)();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v2 + 64 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v6 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t ToolKitToolTypedValue.EntityValue.hash(into:)()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = v0[9];
  v4 = v0[15];
  v5 = v0[17];
  OUTLINED_FUNCTION_148_8();
  if (!v6)
  {
    __dst[0] = v1;
    OUTLINED_FUNCTION_103_0();

    ToolKitToolTypeIdentifier.hash(into:)();

    if (!v2)
    {
      goto LABEL_6;
    }

LABEL_4:
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_114_0();
    sub_19393C640();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_104_0();
  if (v2)
  {
    goto LABEL_4;
  }

LABEL_6:
  OUTLINED_FUNCTION_104_0();
LABEL_7:
  v7 = OUTLINED_FUNCTION_262_0();
  sub_1937361C8(v7, v8);
  if (v3)
  {
    v9 = *(v0 + 3);
    __src[0] = *(v0 + 2);
    __src[1] = v9;
    v10 = v0[8];
    v11 = *(v0 + 6);
    __src[3] = *(v0 + 5);
    __src[4] = v11;
    *&__src[2] = v10;
    *(&__src[2] + 1) = v3;
    OUTLINED_FUNCTION_103_0();
    v12 = *(v0 + 3);
    v16[0] = *(v0 + 2);
    v16[1] = v12;
    v17 = v0[8];
    v18 = v3;
    v13 = *(v0 + 6);
    v19 = *(v0 + 5);
    v20 = v13;
    sub_1936D0D2C(v16, __dst);
    OUTLINED_FUNCTION_425();
    ToolKitToolDisplayRepresentation.hash(into:)();
    memcpy(__dst, __src, 0x50uLL);
    sub_1937375CC(__dst);
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (v4 >> 60 == 15)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_345_0();
    sub_19393BD50();
  }

  if (v5 >> 60 == 15)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_186_3();
  return sub_19393BD50();
}

uint64_t ToolKitToolTypedValue.EntityValue.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  ToolKitToolTypedValue.EntityValue.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1937218B0()
{
  sub_19393CAB0();
  ToolKitToolTypedValue.EntityValue.hash(into:)();
  return sub_19393CB00();
}

uint64_t ToolKitToolTypedValue.CodableValue.identifier.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ToolKitToolTypedValue.CodableValue.data.setter()
{
  OUTLINED_FUNCTION_50_0();
  result = sub_19345012C(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t sub_1937219E0()
{
  OUTLINED_FUNCTION_153_9();
  v2 = OUTLINED_FUNCTION_368_1(v1);
  v3 = OUTLINED_FUNCTION_330_0(v2, (v0 + 32));
  return OUTLINED_FUNCTION_278_3(v3, v4, &qword_1EAE41AB8, &qword_1939807B8, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20);
}

void *ToolKitToolTypedValue.CodableValue.displayRepresentation.setter()
{
  OUTLINED_FUNCTION_108_13();
  OUTLINED_FUNCTION_368_1(v1);
  sub_19344E6DC(&v3, &qword_1EAE41AB8, &qword_1939807B8);
  return OUTLINED_FUNCTION_276_3((v0 + 32));
}

void ToolKitToolTypedValue.CodableValue.init()(void *a1@<X8>)
{
  OUTLINED_FUNCTION_228_4(a1);
  OUTLINED_FUNCTION_300_1();
  *(v1 + 16) = xmmword_193950B20;
  OUTLINED_FUNCTION_64_17();
  sub_19344E6DC(&v2, &qword_1EAE41AB8, &qword_1939807B8);
  OUTLINED_FUNCTION_139_10(0);
}

void static ToolKitToolTypedValue.CodableValue.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_284_2();
  v3 = *v2;
  v4 = v2[1];
  memcpy(v179, (v0 + 32), sizeof(v179));
  v6 = *v1;
  v5 = v1[1];
  OUTLINED_FUNCTION_368_1(v180);
  if (!v4)
  {
    if (v5)
    {
      goto LABEL_26;
    }

LABEL_10:
    OUTLINED_FUNCTION_282_2();
    if (!v7 & v10)
    {
      OUTLINED_FUNCTION_295_2();
      if (!v7 & v10)
      {
        v8 = OUTLINED_FUNCTION_18_41();
        sub_19345012C(v8, v9);
        goto LABEL_19;
      }
    }

    else
    {
      OUTLINED_FUNCTION_295_2();
      if (!(!v11 & v10))
      {
        OUTLINED_FUNCTION_18_41();
        OUTLINED_FUNCTION_284();
        v16 = MEMORY[0x193B172A0]();
        v17 = OUTLINED_FUNCTION_107_5();
        sub_19345012C(v17, v18);
        v19 = OUTLINED_FUNCTION_175_0();
        sub_19345012C(v19, v20);
        if ((v16 & 1) == 0)
        {
          goto LABEL_26;
        }

LABEL_19:
        v21 = v179[5];
        v22 = v181;
        if (v179[5])
        {
          OUTLINED_FUNCTION_307_0();
          v32 = OUTLINED_FUNCTION_183_3(v23, v24, v25, v26, v27, v28, v29, v30, *(v0 + 80), *(v0 + 96), v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, *__src, *&__src[8], v150, *(&v150 + 1), v151, v152, v153[0], v153[1], v154, *(&v154 + 1), v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165[0], v166, v167, v168, v31, v21, v171, v172);
          if (v22)
          {
            v40 = *(v1 + 3);
            *__src = *(v1 + 2);
            v150 = v40;
            v41 = v1[8];
            v42 = *(v1 + 6);
            *v153 = *(v1 + 5);
            v154 = v42;
            v151 = v41;
            OUTLINED_FUNCTION_202_3(v179, v33, v34, v35, v36, v37, v38, v39, v129, v130, v131);
            OUTLINED_FUNCTION_202_3(v180, v43, v44, v45, v46, v47, v48, v49, v129, v130, v131);
            v57 = OUTLINED_FUNCTION_202_3(v165, v50, v51, v52, v53, v54, v55, v56, v129, v130, v131);
            v65 = OUTLINED_FUNCTION_410(v57, v58, v59, v60, v61, v62, v63, v64, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, *__src, *&__src[8], v150, *(&v150 + 1), v151, v22, v153[0], v153[1], v154, *(&v154 + 1), v155);
            v67 = static ToolKitToolDisplayRepresentation.== infix(_:_:)(v65, v66);
            OUTLINED_FUNCTION_297_2(v67, v68, v69, v70, v71, v72, v73, v74, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, __src[0]);
            v75 = sub_1937375CC(&v129);
            OUTLINED_FUNCTION_290_1(v75, v76, v77, v78, v79, v80, v81, v82, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, *__src, *&__src[8], v150, *(&v150 + 1), v151, v152, v153[0], v153[1], v154, *(&v154 + 1));
            sub_1937375CC(&v139);
            v83 = *(v0 + 48);
            *__src = *(v0 + 32);
            v150 = v83;
            v151 = *(v0 + 64);
            v152 = v21;
            OUTLINED_FUNCTION_409();
            OUTLINED_FUNCTION_188_4();
            sub_19344E6DC(v84, v85, v86);
            goto LABEL_26;
          }

          OUTLINED_FUNCTION_285_2(v32, v33, v34, v35, v36, v37, v38, v39, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, __src[0], *&__src[8], v150, *(&v150 + 1), v151, v152, v153[0], v153[1], v154, *(&v154 + 1), v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165[0]);
          OUTLINED_FUNCTION_9_12();
          sub_193448804(v95, v96, v97, v98);
          OUTLINED_FUNCTION_9_12();
          v103 = sub_193448804(v99, v100, v101, v102);
          OUTLINED_FUNCTION_225_3(v103, v104, v105, v106, v107, v108, v109, v110, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, *__src, *&__src[8], v150, *(&v150 + 1), v151, v152, v153[0], v153[1], v154, *(&v154 + 1), v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165[0]);
          OUTLINED_FUNCTION_9_12();
          sub_193448804(v111, v112, v113, v114);
          sub_1937375CC(__src);
        }

        else
        {
          if (!v181)
          {
            OUTLINED_FUNCTION_307_0();
            v169 = v119;
            v170 = 0;
            v120 = *(v0 + 96);
            v171 = *(v0 + 80);
            v172 = v120;
            OUTLINED_FUNCTION_75_0();
            sub_193448804(v121, v122, v123, v124);
            OUTLINED_FUNCTION_75_0();
            sub_193448804(v125, v126, v127, v128);
            OUTLINED_FUNCTION_247_2(v165);
            goto LABEL_26;
          }

          OUTLINED_FUNCTION_9_12();
          sub_193448804(v87, v88, v89, v90);
          OUTLINED_FUNCTION_9_12();
          sub_193448804(v91, v92, v93, v94);
        }

        OUTLINED_FUNCTION_307_0();
        v169 = v115;
        v170 = v21;
        v116 = *(v0 + 96);
        v171 = *(v0 + 80);
        v172 = v116;
        v117 = *(v1 + 3);
        v173 = *(v1 + 2);
        v174 = v117;
        v175 = v1[8];
        v176 = v22;
        v118 = *(v1 + 6);
        v177 = *(v1 + 5);
        v178 = v118;
        sub_19344E6DC(v165, &qword_1EAE41AC0, &qword_1939807C0);
        goto LABEL_26;
      }
    }

    v12 = OUTLINED_FUNCTION_18_41();
    sub_19345012C(v12, v13);
    v14 = OUTLINED_FUNCTION_107_5();
    sub_19345012C(v14, v15);
    goto LABEL_26;
  }

  if (v5)
  {
    v7 = v3 == v6 && v4 == v5;
    if (v7)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_165_1();
    if (sub_19393CA30())
    {
      goto LABEL_10;
    }
  }

LABEL_26:
  OUTLINED_FUNCTION_116();
}

uint64_t ToolKitToolTypedValue.CollectionValue.values.setter()
{
  result = OUTLINED_FUNCTION_458();
  *(v1 + 8) = v0;
  return result;
}

uint64_t ToolKitToolTypedValue.CollectionValue.typeInstance.setter()
{
  v2 = OUTLINED_FUNCTION_339();
  result = sub_193444060(v2);
  *(v1 + 16) = v0;
  return result;
}

uint64_t ToolKitToolTypedValue.CollectionValue.init()()
{
  v2 = OUTLINED_FUNCTION_53_23();
  sub_193444060(v2);
  v3 = MEMORY[0x1E69E7CC0];
  *v0 = v1;
  v0[1] = v3;
  result = sub_193444060(0xF000000000000007);
  v0[2] = v1;
  return result;
}

uint64_t ToolKitToolTypedValue.CollectionValue.hashValue.getter()
{
  OUTLINED_FUNCTION_337_0();
  v0 = sub_19393CAB0();
  v8 = OUTLINED_FUNCTION_255_2(v0, v1, v2, v3, v4, v5, v6, v7, v10);
  ToolKitToolTypedValue.CollectionValue.hash(into:)(v8);
  return sub_19393CB00();
}

uint64_t sub_1937221FC()
{
  OUTLINED_FUNCTION_337_0();
  v0 = sub_19393CAB0();
  v8 = OUTLINED_FUNCTION_255_2(v0, v1, v2, v3, v4, v5, v6, v7, v10);
  ToolKitToolTypedValue.CollectionValue.hash(into:)(v8);
  return sub_19393CB00();
}

uint64_t ToolKitToolTypedValue.QueryValue.query.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = *(v1 + 40);
  return sub_1936C6B18(v2);
}

__n128 ToolKitToolTypedValue.QueryValue.query.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  sub_1936EAC3C(*(v1 + 8));
  result = *a1;
  *(v1 + 24) = *(a1 + 16);
  *(v1 + 8) = result;
  *(v1 + 40) = v3;
  return result;
}

double ToolKitToolTypedValue.QueryValue.init()@<D0>(uint64_t a1@<X8>)
{
  sub_193444060(0xF000000000000007);
  sub_1936EAC3C(0xE000000000000007);
  result = -3.10503618e231;
  *a1 = xmmword_193980770;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  return result;
}

BOOL static ToolKitToolTypedValue.QueryValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *a2;
  v8 = *(a2 + 8);
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  OUTLINED_FUNCTION_252_2();
  if (!v15)
  {
    v53 = v3;
    if ((v12 & ~v9) == 0)
    {
      sub_193437C90(v3);
      OUTLINED_FUNCTION_446(v9);

      goto LABEL_7;
    }

    v48 = v14;
    v49 = v13;
    v50 = v9;
    sub_193437C90(v3);
    OUTLINED_FUNCTION_446(v9);
    v24 = static ToolKitToolTypeIdentifier.== infix(_:_:)();

    sub_193444060(v3);
    if ((v24 & 1) == 0)
    {
      return 0;
    }

LABEL_9:
    if ((v2 & 0xF000000000000007) == 0xE000000000000007)
    {
      v25 = OUTLINED_FUNCTION_10_54();
      sub_1936C6B18(v25);
      OUTLINED_FUNCTION_196_4();
      OUTLINED_FUNCTION_423();
      sub_1936C6B18(v26);
      if ((v8 & 0xF000000000000007) == 0xE000000000000007)
      {
        v27 = OUTLINED_FUNCTION_10_54();
        sub_1936EAC3C(v27);
        return 1;
      }
    }

    else
    {
      v53 = v2;
      v54 = v5;
      v55 = v4;
      v56 = v6;
      LOBYTE(v57) = v7;
      if ((v8 & 0xF000000000000007) != 0xE000000000000007)
      {
        LOWORD(v51) = v49 & 0x1FF;
        LOBYTE(v52) = v11 & 1;
        v34 = OUTLINED_FUNCTION_10_54();
        sub_1936C6B18(v34);
        OUTLINED_FUNCTION_423();
        sub_1936C6B18(v35);
        v36 = OUTLINED_FUNCTION_10_54();
        sub_1936C6B18(v36);
        static ToolKitToolQuery.== infix(_:_:)(&v53, &v50, v37, v38, v39, v40, v41, v42, v46, v47, v48, v49, v8, v48, v51, v10, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61);
        v44 = v43;
        sub_193444048(v8);
        sub_193444048(v2);
        v45 = OUTLINED_FUNCTION_10_54();
        sub_1936EAC3C(v45);
        return (v44 & 1) != 0;
      }

      v28 = OUTLINED_FUNCTION_10_54();
      sub_1936C6B18(v28);
      OUTLINED_FUNCTION_196_4();
      OUTLINED_FUNCTION_423();
      sub_1936C6B18(v29);
      v30 = OUTLINED_FUNCTION_10_54();
      sub_1936C6B18(v30);
      sub_193444048(v2);
    }

    v31 = OUTLINED_FUNCTION_10_54();
    sub_1936EAC3C(v31);
    OUTLINED_FUNCTION_196_4();
    OUTLINED_FUNCTION_423();
    sub_1936EAC3C(v32);
    return 0;
  }

  v48 = v14;
  v49 = v13;
  v47 = v2;
  v16 = v8;
  v17 = v5;
  v18 = v4;
  v19 = v6;
  v20 = v7;
  v21 = v10;
  v22 = v11;
  v23 = v12 & ~v9;
  sub_193437C90(v3);
  sub_193437C90(v9);
  if (!v23)
  {
    sub_193444060(v3);
    v11 = v22;
    v10 = v21;
    v7 = v20;
    v6 = v19;
    v4 = v18;
    v5 = v17;
    v8 = v16;
    v2 = v47;
    goto LABEL_9;
  }

LABEL_7:
  sub_193444060(v3);
  sub_193444060(v9);
  return 0;
}

uint64_t ToolKitToolTypedValue.QueryValue.hash(into:)()
{
  v3 = *(v0 + 8);
  OUTLINED_FUNCTION_179_5();
  if (v1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();

    OUTLINED_FUNCTION_425();
    ToolKitToolTypeIdentifier.hash(into:)();
  }

  if ((v3 & 0xF000000000000007) == 0xE000000000000007)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_103_0();
  sub_19344BF2C(v3);
  OUTLINED_FUNCTION_425();
  ToolKitToolQuery.hash(into:)();

  return sub_193444048(v3);
}

uint64_t ToolKitToolTypedValue.QueryValue.hashValue.getter()
{
  OUTLINED_FUNCTION_159_6();
  v0 = OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_149_5(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  ToolKitToolTypedValue.QueryValue.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19372272C()
{
  OUTLINED_FUNCTION_159_6();
  v0 = sub_19393CAB0();
  OUTLINED_FUNCTION_149_5(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  ToolKitToolTypedValue.QueryValue.hash(into:)();
  return sub_19393CB00();
}

uint64_t _s27IntelligencePlatformLibrary07ToolKitD10TypedValueO011EnumerationG0V21displayRepresentationAA0ded7DisplayJ0VSgvg_0()
{
  OUTLINED_FUNCTION_153_9();
  v2 = memcpy(v1, (v0 + 24), 0x50uLL);
  v3 = OUTLINED_FUNCTION_330_0(v2, (v0 + 24));
  return OUTLINED_FUNCTION_278_3(v3, v4, &qword_1EAE41AB8, &qword_1939807B8, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20);
}

void _s27IntelligencePlatformLibrary07ToolKitD10TypedValueO011EnumerationG0VAEycfC_0()
{
  v2 = OUTLINED_FUNCTION_53_23();
  sub_193444060(v2);
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  *v0 = v1;
  OUTLINED_FUNCTION_64_17();
  sub_19344E6DC(&v4, &qword_1EAE41AB8, &qword_1939807B8);
  OUTLINED_FUNCTION_315_0(0);
  *(v0 + 72) = v3;
  *(v0 + 88) = v3;
}

void _s27IntelligencePlatformLibrary07ToolKitD10TypedValueO011EnumerationG0V2eeoiySbAE_AEtFZ_0()
{
  OUTLINED_FUNCTION_237();
  v1 = v0;
  v4 = *v2;
  v3 = v2[1];
  v5 = v2[2];
  memcpy(v174, v2 + 3, sizeof(v174));
  v7 = *v1;
  v6 = v1[1];
  v8 = v1[2];
  memcpy(v175, v1 + 3, sizeof(v175));
  OUTLINED_FUNCTION_179_5();
  if (v20)
  {
    v10 = v9 & ~v7;
    OUTLINED_FUNCTION_348(v4);
    if (v10)
    {
LABEL_7:
      sub_193444060(v4);
      sub_193444060(v7);
      goto LABEL_8;
    }

    v11 = sub_193444060(v4);
  }

  else
  {
    *v152 = v4;
    if ((v9 & ~v7) == 0)
    {
      OUTLINED_FUNCTION_95_14();

      goto LABEL_7;
    }

    *__src = v7;
    OUTLINED_FUNCTION_95_14();
    v19 = static ToolKitToolTypeIdentifier.== infix(_:_:)();

    v11 = sub_193444060(v4);
    if ((v19 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  if (!v5)
  {
    if (v8)
    {
      goto LABEL_8;
    }

LABEL_19:
    v171 = v174[0];
    v172 = v174[1];
    v23 = *(&v174[2] + 1);
    v173 = *&v174[2];
    v24 = *(&v175[2] + 1);
    v168 = *&v175[2];
    v169 = v174[3];
    v170 = v174[4];
    v166 = v175[0];
    v167 = v175[1];
    v164 = v175[3];
    v165 = v175[4];
    if (*(&v174[2] + 1))
    {
      v25 = OUTLINED_FUNCTION_183_3(v11, v12, v13, v14, v15, v16, v17, v18, v174[3], v174[4], v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, *v136, *&v136[8], v137, *(&v137 + 1), v138, v139, v140[0], v140[1], v141, *(&v141 + 1), __src[0], v143, v144, v145, v146, v147, v148, v149, v150, v151, v174[0], *(&v174[0] + 1), *&v174[1], *(&v174[1] + 1), *&v174[2], *(&v174[2] + 1), v156, v157);
      if (v24)
      {
        *v136 = v175[0];
        v137 = v175[1];
        *v140 = v175[3];
        v141 = v175[4];
        v138 = *&v175[2];
        OUTLINED_FUNCTION_75_0();
        sub_193448804(v33, v34, v35, v36);
        OUTLINED_FUNCTION_75_0();
        v41 = sub_193448804(v37, v38, v39, v40);
        OUTLINED_FUNCTION_225_3(v41, v42, v43, v44, v45, v46, v47, v48, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, *v136, *&v136[8], v137, *(&v137 + 1), v138, v24, v140[0], v140[1], v141, *(&v141 + 1), *__src, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152[0]);
        OUTLINED_FUNCTION_75_0();
        v53 = sub_193448804(v49, v50, v51, v52);
        v61 = OUTLINED_FUNCTION_410(v53, v54, v55, v56, v57, v58, v59, v60, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, *v136, *&v136[8], v137, *(&v137 + 1), v138, v139, v140[0], v140[1], v141, *(&v141 + 1), __src[0]);
        v63 = static ToolKitToolDisplayRepresentation.== infix(_:_:)(v61, v62);
        OUTLINED_FUNCTION_297_2(v63, v64, v65, v66, v67, v68, v69, v70, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136[0]);
        v71 = sub_1937375CC(&v116);
        OUTLINED_FUNCTION_290_1(v71, v72, v73, v74, v75, v76, v77, v78, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, *v136, *&v136[8], v137, *(&v137 + 1), v138, v139, v140[0], v140[1], v141, *(&v141 + 1));
        sub_1937375CC(&v126);
        *v136 = v171;
        v137 = v172;
        v138 = v173;
        v139 = v23;
        OUTLINED_FUNCTION_409();
        OUTLINED_FUNCTION_247_2(v79);
        goto LABEL_8;
      }

      OUTLINED_FUNCTION_285_2(v25, v26, v27, v28, v29, v30, v31, v32, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136[0], *&v136[8], v137, *(&v137 + 1), v138, v139, v140[0], v140[1], v141, *(&v141 + 1), *__src, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152[0]);
      OUTLINED_FUNCTION_75_0();
      sub_193448804(v88, v89, v90, v91);
      OUTLINED_FUNCTION_75_0();
      v96 = sub_193448804(v92, v93, v94, v95);
      OUTLINED_FUNCTION_225_3(v96, v97, v98, v99, v100, v101, v102, v103, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, *v136, *&v136[8], v137, *(&v137 + 1), v138, v139, v140[0], v140[1], v141, *(&v141 + 1), *__src, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152[0]);
      OUTLINED_FUNCTION_75_0();
      sub_193448804(v104, v105, v106, v107);
      sub_1937375CC(v136);
    }

    else
    {
      if (!*(&v175[2] + 1))
      {
        *v152 = v174[0];
        v153 = v174[1];
        v154 = *&v174[2];
        v155 = 0;
        v156 = v174[3];
        v157 = v174[4];
        OUTLINED_FUNCTION_75_0();
        sub_193448804(v108, v109, v110, v111);
        OUTLINED_FUNCTION_75_0();
        sub_193448804(v112, v113, v114, v115);
        OUTLINED_FUNCTION_247_2(v152);
        goto LABEL_8;
      }

      OUTLINED_FUNCTION_75_0();
      sub_193448804(v80, v81, v82, v83);
      OUTLINED_FUNCTION_75_0();
      sub_193448804(v84, v85, v86, v87);
    }

    *v152 = v171;
    v153 = v172;
    v154 = v173;
    v155 = v23;
    v156 = v169;
    v157 = v170;
    v158 = v166;
    v159 = v167;
    v160 = v168;
    v161 = v24;
    v162 = v164;
    v163 = v165;
    sub_19344E6DC(v152, &qword_1EAE41AC0, &qword_1939807C0);
    goto LABEL_8;
  }

  if (v8)
  {
    v20 = v3 == v6 && v5 == v8;
    if (v20)
    {
      goto LABEL_19;
    }

    v21 = OUTLINED_FUNCTION_13_0();
    v11 = OUTLINED_FUNCTION_5_5(v21, v22);
    if (v11)
    {
      goto LABEL_19;
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_236();
}

uint64_t _s27IntelligencePlatformLibrary07ToolKitD10TypedValueO011EnumerationG0V4hash4intoys6HasherVz_tF_0()
{
  OUTLINED_FUNCTION_168_5();
  v2 = *v0;
  v3 = v0[2];
  v4 = v0[8];
  OUTLINED_FUNCTION_252_2();
  if (v5)
  {
    OUTLINED_FUNCTION_104_0();
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v22[0] = v2;
    OUTLINED_FUNCTION_103_0();

    ToolKitToolTypeIdentifier.hash(into:)();

    if (!v3)
    {
LABEL_7:
      OUTLINED_FUNCTION_104_0();
      if (!v4)
      {
        return OUTLINED_FUNCTION_104_0();
      }

LABEL_5:
      v16 = *(v1 + 24);
      OUTLINED_FUNCTION_182_6();
      v6 = *(v1 + 40);
      v17[0] = *(v1 + 24);
      v17[1] = v6;
      v18 = *(v1 + 56);
      v19 = v4;
      v7 = *(v1 + 88);
      v20 = *(v1 + 72);
      v21 = v7;
      sub_1936D0D2C(v17, v22);
      OUTLINED_FUNCTION_39_20();
      ToolKitToolDisplayRepresentation.hash(into:)();
      OUTLINED_FUNCTION_316_1(v22, v8, v9, v10, v11, v12, v13, v14, v16);
      return sub_1937375CC(v22);
    }
  }

  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_97_10();
  sub_19393C640();
  if (v4)
  {
    goto LABEL_5;
  }

  return OUTLINED_FUNCTION_104_0();
}

uint64_t sub_193722CDC()
{
  OUTLINED_FUNCTION_149_9();
  v0(v2);
  return sub_19393CB00();
}

uint64_t sub_193722D34()
{
  OUTLINED_FUNCTION_320_0();
  v0(v2);
  return sub_19393CB00();
}

uint64_t ToolKitToolTypedValue.DeferredValue.expectedTypeInstance.setter(uint64_t *a1)
{
  v2 = *a1;
  result = sub_193444060(*(v1 + 8));
  *(v1 + 8) = v2;
  return result;
}

uint64_t ToolKitToolTypedValue.DeferredValue.storage.setter()
{
  v2 = OUTLINED_FUNCTION_339();
  result = sub_19347549C(v2);
  *(v1 + 16) = v0;
  return result;
}

uint64_t ToolKitToolTypedValue.DeferredValue.init()()
{
  v2 = OUTLINED_FUNCTION_53_23();
  sub_193444060(v2);
  sub_193444060(0xF000000000000007);
  *v0 = vdupq_n_s64(v1);
  result = sub_19347549C(0xF000000000000007);
  v0[1].i64[0] = v1;
  return result;
}

uint64_t ToolKitToolTypedValue.DeferredValue.Storage.ContentItemPropertyStorage.propertyKey.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

double ToolKitToolTypedValue.DeferredValue.Storage.ContentItemPropertyStorage.init()()
{
  v1 = OUTLINED_FUNCTION_8_4();
  sub_19345012C(v1, 0xF000000000000000);
  result = 0.0;
  *v0 = xmmword_193950B20;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  return result;
}

uint64_t ToolKitToolTypedValue.DeferredValue.Storage.ActionParameterDefaultValueStorage.actionIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ToolKitToolTypedValue.DeferredValue.hashValue.getter()
{
  OUTLINED_FUNCTION_62_20();
  v0 = sub_19393CAB0();
  v8 = OUTLINED_FUNCTION_134_0(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11);
  ToolKitToolTypedValue.DeferredValue.hash(into:)(v8);
  return sub_19393CB00();
}

uint64_t sub_1937233F0()
{
  OUTLINED_FUNCTION_62_20();
  v0 = sub_19393CAB0();
  v8 = OUTLINED_FUNCTION_134_0(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11);
  ToolKitToolTypedValue.DeferredValue.hash(into:)(v8);
  return sub_19393CB00();
}

uint64_t ToolKitToolTypeInstance.Optional.defaultValue.setter(uint64_t *a1)
{
  v2 = *a1;
  result = sub_193444060(*(v1 + 8));
  *(v1 + 8) = v2;
  return result;
}

int64x2_t ToolKitToolTypeInstance.Optional.init()()
{
  v2 = OUTLINED_FUNCTION_53_23();
  sub_193444060(v2);
  sub_193444060(0xF000000000000007);
  result = vdupq_n_s64(v1);
  *v0 = result;
  return result;
}

uint64_t ToolKitToolTypeInstance.Union.items.setter()
{
  OUTLINED_FUNCTION_301_1();

  *v1 = v0;
  return result;
}

uint64_t sub_193723668()
{
  v0 = OUTLINED_FUNCTION_119();
  v8 = OUTLINED_FUNCTION_62_0(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11);
  sub_193737244(v8);
  return sub_19393CB00();
}

uint64_t sub_1937236CC()
{
  v0 = sub_19393CAB0();
  v8 = OUTLINED_FUNCTION_62_0(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11);
  sub_193737244(v8);
  return sub_19393CB00();
}

uint64_t ToolKitToolTypeInstance.Restricted.context.setter()
{
  result = OUTLINED_FUNCTION_458();
  *(v1 + 8) = v0;
  return result;
}

uint64_t ToolKitToolTypeInstance.Restricted.init()()
{
  v2 = OUTLINED_FUNCTION_53_23();
  result = sub_193444060(v2);
  v4 = MEMORY[0x1E69E7CC0];
  *v0 = v1;
  v0[1] = v4;
  return result;
}

uint64_t ToolKitToolTypeInstance.Deferred.init()()
{
  v2 = OUTLINED_FUNCTION_53_23();
  result = sub_193444060(v2);
  *v0 = v1;
  return result;
}

uint64_t sub_193723B88(uint64_t (*a1)(char *))
{
  v3 = *v1;
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_251_0();
  if (v4)
  {
    v22 = OUTLINED_FUNCTION_456();
  }

  else
  {
    OUTLINED_FUNCTION_123();

    v13 = OUTLINED_FUNCTION_298_1(v5, v6, v7, v8, v9, v10, v11, v12, v3, v33);
    v14 = a1(v13);
    OUTLINED_FUNCTION_126_9(v14, v15, v16, v17, v18, v19, v20, v21, v32);
  }

  v29 = OUTLINED_FUNCTION_99(v22, v23, ToolKitToolRestrictionContext.hash(into:), v24, v25, v26, v27, v28, v31, v33);
  sub_193737244(v29);
  return sub_19393CB00();
}

uint64_t sub_193723C38(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v5 = sub_19393CAB0();
  v13 = OUTLINED_FUNCTION_432(v5, v6, v7, v8, v9, v10, v11, v12, v15, v16);
  a4(v13);
  return sub_19393CB00();
}

uint64_t sub_193723CCC@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolRestrictionContext.PersonReachableAs.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193723CF4@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolRestrictionContext.PersonReachableAs.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193723DE4@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolRestrictionContext.DateExpressibleAs.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193723E0C@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolRestrictionContext.DateExpressibleAs.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t ToolKitToolRestrictionContext.InSet.definition.getter()
{
  OUTLINED_FUNCTION_324_0(v4);
  v0 = OUTLINED_FUNCTION_13_0();
  memcpy(v0, v1, 0xD8uLL);
  return sub_193448804(v4, v3, &qword_1EAE41B00, &qword_193980808);
}

void *ToolKitToolRestrictionContext.InSet.definition.setter()
{
  OUTLINED_FUNCTION_59_19();
  memcpy(v0, v1, 0xD8uLL);
  sub_19344E6DC(&v5, &qword_1EAE41B00, &qword_193980808);
  v2 = OUTLINED_FUNCTION_13_5();
  return memcpy(v2, v3, 0xD8uLL);
}

uint64_t ToolKitToolRestrictionContext.InSet.templates.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 216), sizeof(__dst));
  memcpy(a1, (v1 + 216), 0x48uLL);
  return sub_193448804(__dst, &v4, &qword_1EAE41AC8, &qword_1939807C8);
}

void *ToolKitToolRestrictionContext.InSet.templates.setter(const void *a1)
{
  memcpy(__dst, (v1 + 216), sizeof(__dst));
  sub_19344E6DC(__dst, &qword_1EAE41AC8, &qword_1939807C8);
  return memcpy((v1 + 216), a1, 0x48uLL);
}

double ToolKitToolRestrictionContext.InSet.init()@<D0>(uint64_t a1@<X8>)
{
  sub_193737768(v3);
  memcpy(__dst, v3, sizeof(__dst));
  sub_19344E6DC(__dst, &qword_1EAE41B00, &qword_193980808);
  memcpy(a1, v3, 0xD8uLL);
  memset(v5, 0, sizeof(v5));
  v6 = 0;
  sub_19344E6DC(v5, &qword_1EAE41AC8, &qword_1939807C8);
  result = 0.0;
  *(a1 + 216) = 0u;
  a1 += 216;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  return result;
}

uint64_t ToolKitToolRestrictionContext.InSet.ValueSet.bundleIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ToolKitToolRestrictionContext.InSet.ValueSet.dynamicEnumeration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 16);
  *(a1 + 8) = *(v1 + 24);
  *(a1 + 24) = v2;
}

__n128 ToolKitToolRestrictionContext.InSet.ValueSet.dynamicEnumeration.setter(uint64_t a1)
{

  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  return result;
}

uint64_t ToolKitToolRestrictionContext.InSet.ValueSet.contentPropertyPossibleValues.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 48);
  *a1 = v3;
  *(a1 + 16) = v2;
  sub_193438388(v3);
}

__n128 ToolKitToolRestrictionContext.InSet.ValueSet.contentPropertyPossibleValues.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_u64[0];
  sub_1934354B4(*(v1 + 48));

  result = v4;
  *(v1 + 48) = v4;
  *(v1 + 64) = v2;
  return result;
}

uint64_t ToolKitToolRestrictionContext.InSet.ValueSet.linkQuery.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[7].n128_i64[0];
  *a1 = v1[4].n128_u64[1];
  OUTLINED_FUNCTION_374_0(v2, a1, v1[5], v1[6]);
}

__n128 ToolKitToolRestrictionContext.InSet.ValueSet.linkQuery.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  result = *a1;
  *(v1 + 88) = *(a1 + 16);
  *(v1 + 72) = result;
  *(v1 + 104) = v3;
  *(v1 + 112) = v4;
  return result;
}

uint64_t ToolKitToolRestrictionContext.InSet.ValueSet.standaloneLinkQuery.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 120) = v2;
  *(v1 + 128) = v0;
  return result;
}

uint64_t ToolKitToolRestrictionContext.InSet.ValueSet.linkQueryOnParameter.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[11].n128_i64[0];
  *a1 = v1[8].n128_u64[1];
  OUTLINED_FUNCTION_374_0(v2, a1, v1[9], v1[10]);
}

__n128 ToolKitToolRestrictionContext.InSet.ValueSet.linkQueryOnParameter.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  result = *a1;
  *(v1 + 152) = *(a1 + 16);
  *(v1 + 136) = result;
  *(v1 + 168) = v3;
  *(v1 + 176) = v4;
  return result;
}

uint64_t ToolKitToolRestrictionContext.InSet.ValueSet.dynamicEnumerationOnTrigger.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 208);
  *a1 = *(v1 + 184);
  *(a1 + 8) = *(v1 + 192);
  *(a1 + 24) = v2;
}

__n128 ToolKitToolRestrictionContext.InSet.ValueSet.dynamicEnumerationOnTrigger.setter(uint64_t a1)
{

  result = *a1;
  *(v1 + 200) = *(a1 + 16);
  *(v1 + 184) = result;
  return result;
}

double ToolKitToolRestrictionContext.InSet.ValueSet.init()@<D0>(_OWORD *a1@<X8>)
{
  OUTLINED_FUNCTION_209_1(a1);
  v3 = OUTLINED_FUNCTION_114_12();
  sub_1934354B4(v3);
  *(v1 + 48) = v2;
  result = 0.0;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 104) = 0u;
  *(v1 + 120) = 0;
  *(v1 + 128) = 0xE000000000000000;
  *(v1 + 136) = 0u;
  *(v1 + 152) = 0u;
  *(v1 + 168) = 0u;
  *(v1 + 184) = 0u;
  *(v1 + 200) = 0u;
  return result;
}

uint64_t ToolKitToolRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues.init()()
{
  v2 = OUTLINED_FUNCTION_53_23();
  result = sub_1934354B4(v2);
  v0[1] = 0;
  v0[2] = 0;
  *v0 = v1;
  return result;
}

uint64_t ToolKitToolRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues.contentItemClass.setter(uint64_t *a1)
{
  v2 = *a1;
  result = sub_1934354B4(*v1);
  *v1 = v2;
  return result;
}

uint64_t ToolKitToolRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues.propertyName.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

void ToolKitToolRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues.hash(into:)()
{
  OUTLINED_FUNCTION_389();
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_148_8();
  if (v2)
  {
    OUTLINED_FUNCTION_104_0();
    if (!v1)
    {
LABEL_8:
      OUTLINED_FUNCTION_104_0();
      OUTLINED_FUNCTION_351_1();
      return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_203_3();

    OUTLINED_FUNCTION_161();
    ToolKitToolContentItemClassDescriptor.hash(into:)();

    if (!v1)
    {
      goto LABEL_8;
    }
  }

  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_58_19();
  OUTLINED_FUNCTION_351_1();

  sub_19393C640();
}

uint64_t ToolKitToolRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[2];
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_251_0();
  if (v3)
  {
    OUTLINED_FUNCTION_456();
  }

  else
  {
    OUTLINED_FUNCTION_123();

    OUTLINED_FUNCTION_298_1(v4, v5, v6, v7, v8, v9, v10, v11, v1, v22);
    ToolKitToolContentItemClassDescriptor.hash(into:)();
  }

  if (v2)
  {
    v12 = sub_19393CAD0();
    OUTLINED_FUNCTION_38_30(v12, v13, v14, v15, v16, v17, v18, v19, v21, v22);
    sub_19393C640();
  }

  else
  {
    sub_19393CAD0();
  }

  return sub_19393CB00();
}

uint64_t sub_193724A38()
{
  OUTLINED_FUNCTION_62_20();
  v0 = sub_19393CAB0();
  OUTLINED_FUNCTION_134_0(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  ToolKitToolRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues.hash(into:)();
  return sub_19393CB00();
}

uint64_t ToolKitToolRestrictionContext.InSet.ValueSet.LinkQuery.queryIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

void static ToolKitToolRestrictionContext.InSet.ValueSet.LinkQuery.== infix(_:_:)()
{
  OUTLINED_FUNCTION_237();
  v1 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[5];
  v6 = v5[1];
  v7 = v5[2];
  v9 = v5[3];
  v8 = v5[4];
  v10 = v5[5];
  if (v0[1])
  {
    if (!v6)
    {
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_155(v0);
    v13 = v13 && v11 == v12;
    if (!v13 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (v6)
  {
    goto LABEL_26;
  }

  if (v3)
  {
    if (!v9)
    {
      goto LABEL_26;
    }

    if (v1 != v7 || v3 != v9)
    {
      OUTLINED_FUNCTION_32_4();
      OUTLINED_FUNCTION_333();
      if ((sub_19393CA30() & 1) == 0)
      {
        goto LABEL_26;
      }
    }
  }

  else if (v9)
  {
    goto LABEL_26;
  }

  if (v4 && v10 && (v2 != v8 || v4 != v10))
  {
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_46_14();
    sub_19393CA30();
  }

LABEL_26:
  OUTLINED_FUNCTION_236();
}

void ToolKitToolRestrictionContext.InSet.ValueSet.LinkQuery.hash(into:)()
{
  OUTLINED_FUNCTION_237();
  OUTLINED_FUNCTION_77_1();
  v1 = v0[3];
  v2 = v0[5];
  if (v0[1])
  {
    sub_19393CAD0();
    OUTLINED_FUNCTION_185();
    sub_19393C640();
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_19393CAD0();
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_9:
    sub_19393CAD0();
    OUTLINED_FUNCTION_236();
    return;
  }

  sub_19393CAD0();
  if (!v1)
  {
    goto LABEL_8;
  }

LABEL_3:
  sub_19393CAD0();
  sub_19393C640();
  if (!v2)
  {
    goto LABEL_9;
  }

LABEL_4:
  sub_19393CAD0();
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_236();

  sub_19393C640();
}

void static ToolKitToolRestrictionContext.InSet.ValueSet.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_454();
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  v4 = v0[15];
  v5 = v0[16];
  if (v6)
  {
    if (!v0[1])
    {
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_181_7();
    OUTLINED_FUNCTION_155(v7);
    v10 = v10 && v8 == v9;
    if (!v10 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    OUTLINED_FUNCTION_181_7();
    if (v11)
    {
      goto LABEL_20;
    }
  }

  v12 = OUTLINED_FUNCTION_338_0();
  if (static ToolKitToolTypedValue.DeferredValue.Storage.ActionParameterDefaultValueStorage.== infix(_:_:)(v12))
  {
    sub_193438388(v19);

    sub_193438388(v20);

    v13 = OUTLINED_FUNCTION_338_0();
    v14 = static ToolKitToolRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues.== infix(_:_:)(v13);
    sub_1934354B4(v20);

    sub_1934354B4(v19);

    if (v14)
    {
      OUTLINED_FUNCTION_338_0();
      static ToolKitToolRestrictionContext.InSet.ValueSet.LinkQuery.== infix(_:_:)();
      if (v15)
      {
        v16 = v2 == v4 && v3 == v5;
        if (v16 || (OUTLINED_FUNCTION_13_0(), OUTLINED_FUNCTION_9_12(), (sub_19393CA30() & 1) != 0))
        {
          OUTLINED_FUNCTION_338_0();
          static ToolKitToolRestrictionContext.InSet.ValueSet.LinkQuery.== infix(_:_:)();
          if (v17)
          {
            v18 = OUTLINED_FUNCTION_338_0();
            static ToolKitToolTypedValue.DeferredValue.Storage.ActionParameterDefaultValueStorage.== infix(_:_:)(v18);
          }
        }
      }
    }
  }

LABEL_20:
  OUTLINED_FUNCTION_116();
}

void ToolKitToolRestrictionContext.InSet.ValueSet.hash(into:)()
{
  OUTLINED_FUNCTION_234_3();
  v1 = v0[3];
  v8 = v0[5];
  v9 = v0[8];
  v10 = v0[10];
  v11 = v0[12];
  v12 = v0[14];
  v13 = v0[18];
  v2 = v0[22];
  v3 = v0[24];
  v4 = v0[26];
  v7 = v0[20];
  if (v0[1])
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_188_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (v1)
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_102_4();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (v8)
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_345_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_179_5();
  if (v5)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();

    ToolKitToolContentItemClassDescriptor.hash(into:)();
  }

  if (v9)
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_186_3();
    sub_19393C640();
    if (v10)
    {
      goto LABEL_15;
    }
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
    if (v10)
    {
LABEL_15:
      OUTLINED_FUNCTION_103_0();
      OUTLINED_FUNCTION_259_1();
      sub_19393C640();
      if (v11)
      {
        goto LABEL_16;
      }

LABEL_20:
      OUTLINED_FUNCTION_104_0();
      if (v12)
      {
        goto LABEL_17;
      }

      goto LABEL_21;
    }
  }

  OUTLINED_FUNCTION_104_0();
  if (!v11)
  {
    goto LABEL_20;
  }

LABEL_16:
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_263_1();
  sub_19393C640();
  if (v12)
  {
LABEL_17:
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_261_0();
    sub_19393C640();
    goto LABEL_22;
  }

LABEL_21:
  OUTLINED_FUNCTION_104_0();
LABEL_22:
  sub_19393C640();
  if (v13)
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_439();
    sub_19393C640();
    if (v7)
    {
LABEL_24:
      OUTLINED_FUNCTION_103_0();
      sub_19393C640();
      goto LABEL_27;
    }
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
    if (v7)
    {
      goto LABEL_24;
    }
  }

  OUTLINED_FUNCTION_104_0();
LABEL_27:
  if (v2)
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_344();
    sub_19393C640();
    if (v3)
    {
      goto LABEL_29;
    }

LABEL_34:
    OUTLINED_FUNCTION_104_0();
    if (v4)
    {
      goto LABEL_30;
    }

LABEL_35:
    OUTLINED_FUNCTION_104_0();
    OUTLINED_FUNCTION_160_8();
    return;
  }

  OUTLINED_FUNCTION_104_0();
  if (!v3)
  {
    goto LABEL_34;
  }

LABEL_29:
  OUTLINED_FUNCTION_103_0();
  sub_19393C640();
  if (!v4)
  {
    goto LABEL_35;
  }

LABEL_30:
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_438();
  OUTLINED_FUNCTION_160_8();

  sub_19393C640();
}

uint64_t ToolKitToolRestrictionContext.InSet.ValueSet.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  ToolKitToolRestrictionContext.InSet.ValueSet.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_193725254()
{
  sub_19393CAB0();
  ToolKitToolRestrictionContext.InSet.ValueSet.hash(into:)();
  return sub_19393CB00();
}

uint64_t static ToolKitToolRestrictionContext.InSet.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284_2();
  OUTLINED_FUNCTION_321_1(v133);
  memcpy(__dst, (v0 + 216), sizeof(__dst));
  OUTLINED_FUNCTION_324_0(v135);
  memcpy(v136, (v1 + 216), sizeof(v136));
  OUTLINED_FUNCTION_321_1(__src);
  OUTLINED_FUNCTION_324_0(&__src[13] + 8);
  OUTLINED_FUNCTION_321_1(v137);
  if (sub_1936C8078(v137) == 1)
  {
    OUTLINED_FUNCTION_324_0(v130);
    if (sub_1936C8078(v130) == 1)
    {
      OUTLINED_FUNCTION_321_1(v131);
      OUTLINED_FUNCTION_75_0();
      sub_193448804(v2, v3, v4, v5);
      OUTLINED_FUNCTION_75_0();
      sub_193448804(v6, v7, v8, v9);
      OUTLINED_FUNCTION_247_2(v131);
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_75_0();
    sub_193448804(v22, v23, v24, v25);
    OUTLINED_FUNCTION_75_0();
    sub_193448804(v26, v27, v28, v29);
LABEL_7:
    memcpy(v130, __src, sizeof(v130));
    v30 = &unk_1EAE41B08;
    v31 = &unk_193980810;
    v32 = v130;
LABEL_16:
    sub_19344E6DC(v32, v30, v31);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_321_1(v131);
  OUTLINED_FUNCTION_324_0(v130);
  if (sub_1936C8078(v130) == 1)
  {
    OUTLINED_FUNCTION_321_1(v129);
    OUTLINED_FUNCTION_75_0();
    sub_193448804(v10, v11, v12, v13);
    OUTLINED_FUNCTION_75_0();
    sub_193448804(v14, v15, v16, v17);
    OUTLINED_FUNCTION_75_0();
    sub_193448804(v18, v19, v20, v21);
    sub_193737770(v129);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_9_12();
  sub_193448804(v33, v34, v35, v36);
  OUTLINED_FUNCTION_9_12();
  sub_193448804(v37, v38, v39, v40);
  OUTLINED_FUNCTION_9_12();
  sub_193448804(v41, v42, v43, v44);
  OUTLINED_FUNCTION_13_0();
  static ToolKitToolRestrictionContext.InSet.ValueSet.== infix(_:_:)();
  v46 = v45;
  OUTLINED_FUNCTION_324_0(&v101);
  sub_193737770(&v101);
  OUTLINED_FUNCTION_321_1(v124);
  sub_193737770(v124);
  OUTLINED_FUNCTION_321_1(v129);
  OUTLINED_FUNCTION_175();
  sub_19344E6DC(v47, v48, v49);
  if ((v46 & 1) == 0)
  {
LABEL_17:
    v71 = 0;
    return v71 & 1;
  }

LABEL_9:
  v50 = __dst[0];
  v101 = *&__dst[1];
  v102 = *&__dst[3];
  v103 = *&__dst[5];
  v104 = *&__dst[7];
  v51 = v136[0];
  v125 = *&v136[1];
  v126 = *&v136[3];
  v127 = *&v136[5];
  v128 = *&v136[7];
  if (!__dst[0])
  {
    if (!v136[0])
    {
      *&__src[0] = 0;
      *(__src + 8) = *&__dst[1];
      *(&__src[1] + 8) = *&__dst[3];
      OUTLINED_FUNCTION_435(__dst);
      OUTLINED_FUNCTION_75_0();
      sub_193448804(v93, v94, v95, v96);
      OUTLINED_FUNCTION_75_0();
      sub_193448804(v97, v98, v99, v100);
      OUTLINED_FUNCTION_247_2(__src);
      v71 = 1;
      return v71 & 1;
    }

    OUTLINED_FUNCTION_75_0();
    sub_193448804(v72, v73, v74, v75);
    OUTLINED_FUNCTION_75_0();
    sub_193448804(v76, v77, v78, v79);
    goto LABEL_15;
  }

  *&__src[0] = __dst[0];
  *(__src + 8) = *&__dst[1];
  *(&__src[1] + 8) = *&__dst[3];
  OUTLINED_FUNCTION_435(__dst);
  memcpy(v130, __src, 0x48uLL);
  if (!v51)
  {
    memcpy(v131, __src, 0x48uLL);
    OUTLINED_FUNCTION_75_0();
    sub_193448804(v80, v81, v82, v83);
    OUTLINED_FUNCTION_75_0();
    sub_193448804(v84, v85, v86, v87);
    OUTLINED_FUNCTION_75_0();
    sub_193448804(v88, v89, v90, v91);
    sub_193737618(v131);
LABEL_15:
    *(__src + 8) = v101;
    *(&__src[1] + 8) = v102;
    *(&__src[2] + 8) = v103;
    *(&__src[3] + 8) = v104;
    *&__src[0] = v50;
    *(&__src[4] + 1) = v51;
    __src[5] = v125;
    __src[6] = v126;
    __src[7] = v127;
    __src[8] = v128;
    v30 = &unk_1EAE41AD0;
    v31 = &unk_1939807D0;
    v32 = __src;
    goto LABEL_16;
  }

  *&v131[1] = *&v136[1];
  *&v131[3] = *&v136[3];
  *&v131[5] = *&v136[5];
  *&v131[7] = *&v136[7];
  v131[0] = v51;
  OUTLINED_FUNCTION_75_0();
  sub_193448804(v52, v53, v54, v55);
  OUTLINED_FUNCTION_75_0();
  sub_193448804(v56, v57, v58, v59);
  OUTLINED_FUNCTION_75_0();
  sub_193448804(v60, v61, v62, v63);
  static ToolKitToolTypeDefinition.Version1.Query.PredicateTemplates.== infix(_:_:)(v130, v131, v64, v65, v66, v67, v68, v69, v101, *(&v101 + 1), v102, *(&v102 + 1), v103, *(&v103 + 1), v104, *(&v104 + 1), v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124[0], v124[1], v124[2], v124[3], v124[4], v124[5], v124[6]);
  v71 = v70;
  memcpy(v124, v131, 0x48uLL);
  sub_193737618(v124);
  memcpy(v129, v130, 0x48uLL);
  sub_193737618(v129);
  v131[0] = v50;
  *&v131[1] = v101;
  *&v131[3] = v102;
  *&v131[5] = v103;
  *&v131[7] = v104;
  OUTLINED_FUNCTION_247_2(v131);
  return v71 & 1;
}

uint64_t ToolKitToolRestrictionContext.InSet.hash(into:)()
{
  OUTLINED_FUNCTION_168_5();
  v2 = *(v0 + 216);
  OUTLINED_FUNCTION_324_0(v11);
  if (sub_1936C8078(v11) == 1)
  {
    OUTLINED_FUNCTION_104_0();
    if (v2)
    {
LABEL_3:
      v3 = v1[15];
      *&v8[1] = v1[14];
      *&v8[3] = v3;
      v4 = v1[17];
      *&v8[5] = v1[16];
      *&v8[7] = v4;
      v8[0] = v2;
      OUTLINED_FUNCTION_103_0();
      v9[0] = v2;
      v5 = v1[15];
      *&v9[1] = v1[14];
      *&v9[3] = v5;
      v6 = v1[17];
      *&v9[5] = v1[16];
      *&v9[7] = v6;
      sub_1936C1BDC(v9, __dst);
      OUTLINED_FUNCTION_39_20();
      ToolKitToolTypeDefinition.Version1.Query.PredicateTemplates.hash(into:)();
      memcpy(__dst, v8, 0x48uLL);
      return sub_193737618(__dst);
    }
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    memcpy(v9, v1, sizeof(v9));
    sub_1936C8404(v9, __dst);
    ToolKitToolRestrictionContext.InSet.ValueSet.hash(into:)();
    memcpy(__dst, v1, sizeof(__dst));
    sub_193737770(__dst);
    if (v2)
    {
      goto LABEL_3;
    }
  }

  return OUTLINED_FUNCTION_104_0();
}

uint64_t ToolKitToolRestrictionContext.InSet.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  ToolKitToolRestrictionContext.InSet.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1937258A8()
{
  sub_19393CAB0();
  ToolKitToolRestrictionContext.InSet.hash(into:)();
  return sub_19393CB00();
}

uint64_t static ToolKitToolRestrictionContext.InInclusiveRange.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if (*(a1 + 24))
  {
    if ((*(a2 + 24) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t ToolKitToolRestrictionContext.InInclusiveRange.hash(into:)()
{
  OUTLINED_FUNCTION_77_1();
  v1 = v0[2];
  v2 = *(v0 + 24);
  if (*(v0 + 8) != 1)
  {
    v5 = *v0;
    sub_19393CAD0();
    if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    MEMORY[0x193B18060](v6);
    if (!v2)
    {
      goto LABEL_3;
    }

    return sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v2)
  {
    return sub_19393CAD0();
  }

LABEL_3:
  sub_19393CAD0();
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v3 = v1;
  }

  else
  {
    v3 = 0;
  }

  return MEMORY[0x193B18060](v3);
}

uint64_t ToolKitToolRestrictionContext.InInclusiveRange.hashValue.getter()
{
  OUTLINED_FUNCTION_180_7();
  OUTLINED_FUNCTION_93_11(v0);
  v1 = OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_134_0(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  ToolKitToolRestrictionContext.InInclusiveRange.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_193725A58()
{
  OUTLINED_FUNCTION_180_7();
  OUTLINED_FUNCTION_93_11(v0);
  v1 = sub_19393CAB0();
  OUTLINED_FUNCTION_134_0(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  ToolKitToolRestrictionContext.InInclusiveRange.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_193725AF4(void (*a1)(char *))
{
  v2 = OUTLINED_FUNCTION_119();
  v10 = OUTLINED_FUNCTION_62_0(v2, v3, v4, v5, v6, v7, v8, v9, v12, v13);
  a1(v10);
  return sub_19393CB00();
}

uint64_t sub_193725B58(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v5 = sub_19393CAB0();
  v13 = OUTLINED_FUNCTION_62_0(v5, v6, v7, v8, v9, v10, v11, v12, v15, v16);
  a4(v13);
  return sub_19393CB00();
}

uint64_t ToolKitToolRestrictionContext.MeasurementExpressibleAs.unit.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

IntelligencePlatformLibrary::ToolKitToolRestrictionContext::MeasurementExpressibleAs __swiftcall ToolKitToolRestrictionContext.MeasurementExpressibleAs.init()()
{
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 514;
  return result;
}

uint64_t static ToolKitToolRestrictionContext.MeasurementExpressibleAs.== infix(_:_:)()
{
  OUTLINED_FUNCTION_454();
  v1 = *(v0 + 16);
  v2 = *(v0 + 17);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 17);
  if (v7)
  {
    if (!v4)
    {
      return 0;
    }

    OUTLINED_FUNCTION_155(v0);
    v10 = v10 && v8 == v9;
    if (!v10 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  if (v1 == 2)
  {
    if (v5 != 2)
    {
      return 0;
    }

LABEL_15:
    if (v2 == 2)
    {
      if (v6 != 2)
      {
        return 0;
      }
    }

    else if (v6 == 2 || ((v6 ^ v2) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  result = 0;
  if (v5 != 2 && ((v5 ^ v1) & 1) == 0)
  {
    goto LABEL_15;
  }

  return result;
}

uint64_t ToolKitToolRestrictionContext.MeasurementExpressibleAs.hash(into:)()
{
  OUTLINED_FUNCTION_77_1();
  v1 = *(v0 + 16);
  v2 = *(v0 + 17);
  if (*(v0 + 8))
  {
    sub_19393CAD0();
    OUTLINED_FUNCTION_225();
    sub_19393C640();
  }

  else
  {
    sub_19393CAD0();
  }

  if (v1 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v2 != 2)
  {
    sub_19393CAD0();
  }

  return sub_19393CAD0();
}

uint64_t ToolKitToolRestrictionContext.MeasurementExpressibleAs.hashValue.getter()
{
  v0 = OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_134_0(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  ToolKitToolRestrictionContext.MeasurementExpressibleAs.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_193725E2C()
{
  v0 = sub_19393CAB0();
  OUTLINED_FUNCTION_134_0(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  ToolKitToolRestrictionContext.MeasurementExpressibleAs.hash(into:)();
  return sub_19393CB00();
}

uint64_t ToolKitToolRestrictionContext.TextTypedWith.autocorrectionType.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *(v1 + 24) = *result;
  *(v1 + 32) = v2;
  *(v1 + 33) = v3;
  return result;
}

uint64_t ToolKitToolRestrictionContext.TextTypedWith.capitalizationType.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *(v1 + 40) = *result;
  *(v1 + 48) = v2;
  *(v1 + 49) = v3;
  return result;
}

void ToolKitToolRestrictionContext.TextTypedWith.init()(uint64_t a1@<X8>)
{
  *a1 = 514;
  *(a1 + 2) = 2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 256;
  *(a1 + 24) = 0;
  *(a1 + 32) = 256;
  *(a1 + 40) = 0;
  *(a1 + 48) = 256;
  OUTLINED_FUNCTION_123_2();
}

uint64_t sub_19372600C@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolRestrictionContext.TextTypedWith.AutocorrectionType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193726034@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolRestrictionContext.TextTypedWith.AutocorrectionType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193726124@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolRestrictionContext.TextTypedWith.KeyboardType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19372614C@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolRestrictionContext.TextTypedWith.KeyboardType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19372623C@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolRestrictionContext.TextTypedWith.CapitalizationType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193726264@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolRestrictionContext.TextTypedWith.CapitalizationType.allCases.getter();
  *a1 = result;
  return result;
}

void static ToolKitToolRestrictionContext.TextTypedWith.== infix(_:_:)()
{
  OUTLINED_FUNCTION_329_0();
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[33];
  v6 = v0[49];
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v10 = v1[33];
  v11 = v1[49];
  if (v2 == 2)
  {
    if (v7 != 2)
    {
      goto LABEL_29;
    }
  }

  else if (v7 == 2 || ((v7 ^ v2) & 1) != 0)
  {
    goto LABEL_29;
  }

  if (v3 == 2)
  {
    if (v8 != 2)
    {
      goto LABEL_29;
    }
  }

  else if (v8 == 2 || ((v8 ^ v3) & 1) != 0)
  {
    goto LABEL_29;
  }

  if (v4 == 2)
  {
    if (v9 != 2)
    {
      goto LABEL_29;
    }
  }

  else if (v9 == 2 || ((v9 ^ v4) & 1) != 0)
  {
    goto LABEL_29;
  }

  if (v0[17])
  {
    if ((v1[17] & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if (v1[17])
    {
      goto LABEL_29;
    }

    OUTLINED_FUNCTION_331_0();
    v13 = ToolKitToolRestrictionContext.TextTypedWith.KeyboardType.rawValue.getter();
    if (v13 != ToolKitToolRestrictionContext.TextTypedWith.KeyboardType.rawValue.getter())
    {
      goto LABEL_29;
    }
  }

  if (v5)
  {
    if ((v10 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if (v10)
    {
      goto LABEL_29;
    }

    OUTLINED_FUNCTION_331_0();
    v12 = ToolKitToolRestrictionContext.TextTypedWith.AutocorrectionType.rawValue.getter();
    if (v12 != ToolKitToolRestrictionContext.TextTypedWith.AutocorrectionType.rawValue.getter())
    {
      goto LABEL_29;
    }
  }

  if ((v6 & 1) == 0 && (v11 & 1) == 0)
  {
    OUTLINED_FUNCTION_331_0();
    ToolKitToolRestrictionContext.TextTypedWith.CapitalizationType.rawValue.getter();
    ToolKitToolRestrictionContext.TextTypedWith.CapitalizationType.rawValue.getter();
  }

LABEL_29:
  OUTLINED_FUNCTION_328();
}

void ToolKitToolRestrictionContext.TextTypedWith.hash(into:)()
{
  OUTLINED_FUNCTION_195();
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[17];
  v4 = v0[33];
  v5 = v0[49];
  if (*v0 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if (v1 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if (v2 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if (v3)
  {
    OUTLINED_FUNCTION_104_0();
    if (!v4)
    {
      goto LABEL_9;
    }

LABEL_12:
    OUTLINED_FUNCTION_104_0();
    if (!v5)
    {
      goto LABEL_10;
    }

LABEL_13:
    OUTLINED_FUNCTION_104_0();
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_103_0();
  v8 = ToolKitToolRestrictionContext.TextTypedWith.KeyboardType.rawValue.getter();
  MEMORY[0x193B18030](v8);
  if (v4)
  {
    goto LABEL_12;
  }

LABEL_9:
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_312_0();
  v6 = ToolKitToolRestrictionContext.TextTypedWith.AutocorrectionType.rawValue.getter();
  MEMORY[0x193B18030](v6);
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_10:
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_312_0();
  v7 = ToolKitToolRestrictionContext.TextTypedWith.CapitalizationType.rawValue.getter();
  MEMORY[0x193B18030](v7);
LABEL_14:
  OUTLINED_FUNCTION_194();
}

uint64_t ToolKitToolRestrictionContext.TextTypedWith.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  ToolKitToolRestrictionContext.TextTypedWith.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1937266DC()
{
  sub_19393CAB0();
  ToolKitToolRestrictionContext.TextTypedWith.hash(into:)();
  return sub_19393CB00();
}

uint64_t ToolKitToolComparisonPredicate.comparison.setter(uint64_t *a1)
{
  v2 = *a1;
  result = sub_193444048(*(v1 + 40));
  *(v1 + 40) = v2;
  return result;
}

uint64_t ToolKitToolComparisonPredicate.rawGroupId.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t ToolKitToolComparisonPredicate.contentItemClass.setter(uint64_t *a1)
{
  v2 = *a1;
  result = sub_1934354B4(*(v1 + 64));
  *(v1 + 64) = v2;
  return result;
}

uint64_t sub_193726C90(void (*a1)(char *))
{
  v2 = OUTLINED_FUNCTION_119();
  v10 = OUTLINED_FUNCTION_432(v2, v3, v4, v5, v6, v7, v8, v9, v12, v13);
  a1(v10);
  return sub_19393CB00();
}

uint64_t sub_193726CF8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v5 = sub_19393CAB0();
  v13 = OUTLINED_FUNCTION_432(v5, v6, v7, v8, v9, v10, v11, v12, v15, v16);
  a4(v13);
  return sub_19393CB00();
}

void sub_193726DC4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  sub_1937377A0(v2, v3, v4, v5, v6);
}

__n128 sub_193726DE4()
{
  OUTLINED_FUNCTION_346_0();
  sub_1937377F4(*v1, v1[1], v1[2], v1[3], v1[4]);
  result = *v0;
  v4 = *(v0 + 16);
  *v1 = *v0;
  *(v1 + 1) = v4;
  v1[4] = v2;
  return result;
}

uint64_t sub_193726EA8@<X0>(void (*a1)(unint64_t)@<X0>, uint64_t a2@<X8>)
{
  v4 = OUTLINED_FUNCTION_107_13();
  sub_1937377F4(v4, v5, v6, v7, 0);
  *a2 = xmmword_1939526A0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  a1(0xF000000000000007);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0xF000000000000007;
  result = sub_1934354B4(0xF000000000000007);
  *(a2 + 64) = 0xF000000000000007;
  return result;
}

uint64_t sub_193726F88()
{
  OUTLINED_FUNCTION_149_9();
  v0(v2);
  return sub_19393CB00();
}

uint64_t sub_193726FE4()
{
  OUTLINED_FUNCTION_320_0();
  v0(v2);
  return sub_19393CB00();
}

void sub_193727068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t (*a13)(unint64_t *, unint64_t *), uint64_t a14, uint64_t a15, void (*a16)(unint64_t), uint64_t a17, uint64_t a18, uint64_t a19, unint64_t a20, unint64_t a21, unint64_t a22, unint64_t a23, uint64_t a24, unint64_t a25, unint64_t a26, unint64_t a27, unint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_234_3();
  a41 = v42;
  a42 = v44;
  v45 = v43[1];
  v47 = v43[2];
  v46 = v43[3];
  v48 = v43[4];
  v120 = v49;
  v121 = v43[5];
  v51 = *v50;
  v52 = v50[1];
  v54 = v50[2];
  v53 = v50[3];
  v55 = v50[4];
  v119 = v50[5];
  if (v45 == 1)
  {
    OUTLINED_FUNCTION_413();
    OUTLINED_FUNCTION_173();
    OUTLINED_FUNCTION_69_1();
    sub_1937377A0(v56, v57, v58, v59, v48);
    if (v52 == 1)
    {
      OUTLINED_FUNCTION_46_14();
      sub_1937377A0(v60, v61, v62, v63, v55);
      OUTLINED_FUNCTION_173();
      OUTLINED_FUNCTION_69_1();
      sub_1937377F4(v64, v65, v66, v67, v48);
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_46_14();
    sub_1937377A0(v82, v83, v84, v85, v55);
LABEL_7:
    v86 = OUTLINED_FUNCTION_29_27();
    sub_1937377F4(v86, v87, v88, v89, v90);
    OUTLINED_FUNCTION_46_14();
    sub_1937377F4(v91, v92, v93, v94, v55);
    goto LABEL_15;
  }

  a25 = *v43;
  a26 = v45;
  a27 = v47;
  a28 = v46;
  a29 = v48;
  if (v52 == 1)
  {
    v68 = OUTLINED_FUNCTION_29_27();
    sub_1937377A0(v68, v69, v70, v71, v72);
    OUTLINED_FUNCTION_46_14();
    sub_1937377A0(v73, v74, v75, v76, v55);
    v77 = OUTLINED_FUNCTION_29_27();
    sub_1937377A0(v77, v78, v79, v80, v81);

    sub_193444060(v48);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_413();
  a20 = v51;
  a21 = v52;
  a22 = v54;
  a23 = v53;
  a24 = v55;
  v95 = OUTLINED_FUNCTION_29_27();
  sub_1937377A0(v95, v96, v97, v98, v99);
  OUTLINED_FUNCTION_46_14();
  sub_1937377A0(v100, v101, v102, v103, v55);
  v104 = OUTLINED_FUNCTION_29_27();
  sub_1937377A0(v104, v105, v106, v107, v108);
  v109 = static ToolKitToolTypeDefinition.Version1.Entity.Property.== infix(_:_:)(&a25, &a20);

  sub_193444060(v55);

  sub_193444060(v48);
  v110 = OUTLINED_FUNCTION_29_27();
  sub_1937377F4(v110, v111, v112, v113, v114);
  if ((v109 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_9:
  if ((~v121 & 0xF000000000000007) != 0)
  {
    a25 = v121;
    v115 = v119;
    if ((~v119 & 0xF000000000000007) != 0)
    {
      a20 = v119;
      v120(v121);
      v120(v119);
      v120(v121);
      v116 = a13(&a25, &a20);

      a16(v121);
      if ((v116 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_17;
    }

    v120(v121);
    v120(v119);
    v120(v121);

LABEL_14:
    a16(v121);
    a16(v115);
    goto LABEL_15;
  }

  v115 = v119;
  v120(v121);
  v120(v119);
  if ((~v119 & 0xF000000000000007) != 0)
  {
    goto LABEL_14;
  }

  a16(v121);
LABEL_17:
  if (a15)
  {
    if (a14)
    {
      v117 = a10 == a9 && a15 == a14;
      if (v117 || (sub_19393CA30() & 1) != 0)
      {
LABEL_26:
        if ((~a12 & 0xF000000000000007) != 0)
        {
          a25 = a12;
          v118 = a11;
          if ((~a11 & 0xF000000000000007) != 0)
          {
            a20 = a11;
            sub_193438388(a12);
            sub_193438388(a11);
            sub_193438388(a12);
            static ToolKitToolContentItemClassDescriptor.== infix(_:_:)(&a25, &a20);

            sub_1934354B4(a12);
            goto LABEL_15;
          }

          sub_193438388(a12);
          sub_193438388(a11);
          sub_193438388(a12);
        }

        else
        {
          v118 = a11;
          sub_193438388(a12);
          sub_193438388(a11);
          if ((~a11 & 0xF000000000000007) == 0)
          {
            sub_1934354B4(a12);
            goto LABEL_15;
          }
        }

        sub_1934354B4(a12);
        sub_1934354B4(v118);
      }
    }
  }

  else if (!a14)
  {
    goto LABEL_26;
  }

LABEL_15:
  OUTLINED_FUNCTION_160_8();
}

uint64_t sub_193727454(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = *(v2 + 56);
  sub_193737848();
  OUTLINED_FUNCTION_252_2();
  if (!v5)
  {
    OUTLINED_FUNCTION_103_0();

    v6 = OUTLINED_FUNCTION_161();
    a2(v6);

    if (!v4)
    {
      goto LABEL_6;
    }

LABEL_4:
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_58_19();
    sub_19393C640();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_104_0();
  if (v4)
  {
    goto LABEL_4;
  }

LABEL_6:
  OUTLINED_FUNCTION_104_0();
LABEL_7:
  OUTLINED_FUNCTION_380();
  if (v5)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_103_0();

  OUTLINED_FUNCTION_161();
  ToolKitToolContentItemClassDescriptor.hash(into:)();
}

uint64_t ToolKitToolCompoundPredicate.operands.setter()
{
  result = OUTLINED_FUNCTION_457();
  *(v1 + 16) = v0;
  return result;
}

void ToolKitToolCompoundPredicate.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 256;
  OUTLINED_FUNCTION_365_1(a1);
}

uint64_t sub_193727628@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolCompoundPredicate.OperatorType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193727650@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolCompoundPredicate.OperatorType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t static ToolKitToolCompoundPredicate.== infix(_:_:)()
{
  OUTLINED_FUNCTION_414();
  if (v1)
  {
    if ((v0 & 1) == 0)
    {
LABEL_7:
      v3 = 0;
      return v3 & 1;
    }
  }

  else
  {
    if (v0)
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_9_16();
    v2 = ToolKitToolCompoundPredicate.OperatorType.rawValue.getter();
    if (v2 != ToolKitToolCompoundPredicate.OperatorType.rawValue.getter())
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_187();
  sub_193714770();
  return v3 & 1;
}

void ToolKitToolCompoundPredicate.hash(into:)()
{
  OUTLINED_FUNCTION_389();
  OUTLINED_FUNCTION_148_2();
  if (v0 == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_179_0();
    v1 = ToolKitToolCompoundPredicate.OperatorType.rawValue.getter();
    MEMORY[0x193B18030](v1);
  }

  OUTLINED_FUNCTION_165_8();
  v2 = OUTLINED_FUNCTION_187();
  sub_193736FC4(v2, v3);
  OUTLINED_FUNCTION_351_1();
}

uint64_t ToolKitToolCompoundPredicate.hashValue.getter()
{
  v1 = *(v0 + 9);
  v2 = *(v0 + 16);
  sub_19393CAB0();
  sub_19393CAD0();
  if (v1 != 1)
  {
    v3 = ToolKitToolCompoundPredicate.OperatorType.rawValue.getter();
    MEMORY[0x193B18030](v3);
  }

  OUTLINED_FUNCTION_165_8();
  sub_193736FC4(v5, v2);
  return sub_19393CB00();
}

uint64_t sub_193727954()
{
  OUTLINED_FUNCTION_57_13();
  v0 = sub_19393CAB0();
  OUTLINED_FUNCTION_255_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  ToolKitToolCompoundPredicate.hash(into:)();
  return sub_19393CB00();
}

uint64_t ToolKitToolIdSearchPredicate.identifier.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

IntelligencePlatformLibrary::ToolKitToolIdSearchPredicate __swiftcall ToolKitToolIdSearchPredicate.init()()
{
  *v0 = 0;
  v0[1] = 0;
  OUTLINED_FUNCTION_365_1(v0);
  result.identifiers._rawValue = v3;
  result.identifier.value._object = v2;
  result.identifier.value._countAndFlagsBits = v1;
  return result;
}

BOOL _s27IntelligencePlatformLibrary07ToolKitD12TypeInstanceO8DeferredV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  OUTLINED_FUNCTION_147_8();
  if (!v6)
  {
    OUTLINED_FUNCTION_287_2();
    if (!v6)
    {
      v9 = OUTLINED_FUNCTION_44_22();
      OUTLINED_FUNCTION_143_7(v9, v10, v11, v12, v13, v14, v15, v16, v3, v36);
      v17 = static ToolKitToolTypeInstance.== infix(_:_:)();
      v18 = v17;
      OUTLINED_FUNCTION_126_9(v17, v19, v20, v21, v22, v23, v24, v25, v34);

      OUTLINED_FUNCTION_98_15(v26, v27, v28, v29, v30, v31, v32, v33, v35, v37);

      sub_193444060(v2);
      return (v18 & 1) != 0;
    }

    OUTLINED_FUNCTION_44_22();

LABEL_8:
    v7 = OUTLINED_FUNCTION_267_2();
    sub_193444060(v7);
    return 0;
  }

  v5 = v4 & ~v3;
  OUTLINED_FUNCTION_120_8();
  if (v5)
  {
    goto LABEL_8;
  }

  sub_193444060(v2);
  return 1;
}

uint64_t _s27IntelligencePlatformLibrary07ToolKitD12TypeInstanceO8DeferredV4hash4intoys6HasherVz_tF_0()
{
  v1 = *v0;
  OUTLINED_FUNCTION_179_5();
  if (v2)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_103_0();

  OUTLINED_FUNCTION_161();
  v4 = ToolKitToolTypeInstance.hash(into:)();
  OUTLINED_FUNCTION_98_15(v4, v5, v6, v7, v8, v9, v10, v11, v12, v1);
}

uint64_t _s27IntelligencePlatformLibrary07ToolKitD12TypeInstanceO8DeferredV9hashValueSivg_0()
{
  v1 = *v0;
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_147_8();
  if (v2)
  {
    OUTLINED_FUNCTION_456();
  }

  else
  {
    OUTLINED_FUNCTION_123();

    OUTLINED_FUNCTION_298_1(v3, v4, v5, v6, v7, v8, v9, v10, v1, v21);
    v11 = ToolKitToolTypeInstance.hash(into:)();
    OUTLINED_FUNCTION_126_9(v11, v12, v13, v14, v15, v16, v17, v18, v20);
  }

  return sub_19393CB00();
}

uint64_t sub_193727C80(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *))
{
  OUTLINED_FUNCTION_317();
  sub_19393CAB0();
  a4(&v6);
  return sub_19393CB00();
}

uint64_t ToolKitToolQuery.predicate.setter(uint64_t *a1)
{
  v2 = *a1;
  result = sub_193444048(*v1);
  *v1 = v2;
  return result;
}

uint64_t ToolKitToolQuery.limit.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

double ToolKitToolQuery.init()@<D0>(uint64_t a1@<X8>)
{
  sub_193444048(0xF000000000000007);
  result = -3.10503618e231;
  *a1 = xmmword_193980780;
  *(a1 + 16) = 256;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  return result;
}

uint64_t sub_193727EF0@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolQuery.SortOrder.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193727F18@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolQuery.SortOrder.allCases.getter();
  *a1 = result;
  return result;
}

void static ToolKitToolQuery.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_195();
  a25 = v26;
  a26 = v27;
  v29 = *v28;
  v30 = *(v28 + 8);
  v31 = *(v28 + 16);
  v33 = *v32;
  v34 = *(v32 + 8);
  v35 = *(v32 + 16);
  OUTLINED_FUNCTION_147_8();
  if (v39)
  {
    v42 = v38;
    v43 = v37;
    v40 = v36 & ~v33;
    sub_19344BF2C(v29);
    sub_19344BF2C(v33);
    if (v40)
    {
LABEL_7:
      sub_193444048(v29);
      sub_193444048(v33);
      goto LABEL_8;
    }

    sub_193444048(v29);
  }

  else
  {
    a13 = v29;
    if ((v36 & ~v33) == 0)
    {
      sub_19344BF2C(v29);
      sub_19344BF2C(v33);
      sub_19344BF2C(v29);

      goto LABEL_7;
    }

    v42 = v38;
    v43 = v37;
    a11 = v33;
    sub_19344BF2C(v29);
    sub_19344BF2C(v33);
    sub_19344BF2C(v29);
    v41 = static ToolKitToolQuery.AnyPredicate.== infix(_:_:)(&a13, &a11);

    sub_193444048(v29);
    if ((v41 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  if ((v43 & 1) == 0 && (v42 & 1) == 0)
  {
    a13 = v30;
    a14 = v31 & 1;
    a11 = v34;
    a12 = v35 & 1;
    ToolKitToolQuery.SortOrder.rawValue.getter();
    ToolKitToolQuery.SortOrder.rawValue.getter();
  }

LABEL_8:
  OUTLINED_FUNCTION_194();
}

void ToolKitToolQuery.hash(into:)()
{
  OUTLINED_FUNCTION_272_2();
  v1 = *(v0 + 17);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  if ((~*v0 & 0xF000000000000007) == 0)
  {
    OUTLINED_FUNCTION_104_0();
    if (!v1)
    {
      goto LABEL_3;
    }

LABEL_6:
    OUTLINED_FUNCTION_104_0();
    if (!v3)
    {
      goto LABEL_4;
    }

LABEL_7:
    OUTLINED_FUNCTION_104_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_103_0();

  v5 = OUTLINED_FUNCTION_39_20();
  ToolKitToolQuery.AnyPredicate.hash(into:)(v5);

  if (v1)
  {
    goto LABEL_6;
  }

LABEL_3:
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_179_0();
  v4 = ToolKitToolQuery.SortOrder.rawValue.getter();
  MEMORY[0x193B18030](v4);
  if (v3)
  {
    goto LABEL_7;
  }

LABEL_4:
  OUTLINED_FUNCTION_103_0();
  MEMORY[0x193B18060](v2);
LABEL_8:
  OUTLINED_FUNCTION_92_7();
}

uint64_t ToolKitToolQuery.hashValue.getter()
{
  OUTLINED_FUNCTION_163_8();
  v0 = sub_19393CAB0();
  OUTLINED_FUNCTION_149_5(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  ToolKitToolQuery.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_193728308()
{
  OUTLINED_FUNCTION_163_8();
  v0 = sub_19393CAB0();
  OUTLINED_FUNCTION_149_5(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  ToolKitToolQuery.hash(into:)();
  return sub_19393CB00();
}

void ToolKitToolRuntimePlatformVersion.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 4) = 1;
  *(a1 + 8) = 0;
  *(a1 + 12) = 1;
  *(a1 + 16) = 0;
  *(a1 + 20) = 513;
}

uint64_t static ToolKitToolRuntimePlatformVersion.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 12);
  v4 = *(a1 + 16);
  v5 = *(a1 + 20);
  v6 = *(a1 + 21);
  v7 = *(a2 + 21);
  if ((*(a1 + 4) & 1) == 0)
  {
    if (*a1 == *a2)
    {
      v8 = *(a2 + 4);
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }

LABEL_8:
    if (v3)
    {
      if (!*(a2 + 12))
      {
        return 0;
      }
    }

    else
    {
      if (v2 == *(a2 + 8))
      {
        v9 = *(a2 + 12);
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        return 0;
      }
    }

    if (v5)
    {
      if (!*(a2 + 20))
      {
        return 0;
      }
    }

    else
    {
      if (v4 == *(a2 + 16))
      {
        v10 = *(a2 + 20);
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        return 0;
      }
    }

    if (v6 == 2)
    {
      if (v7 != 2)
      {
        return 0;
      }
    }

    else if (v7 == 2 || ((v7 ^ v6) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  if (*(a2 + 4))
  {
    goto LABEL_8;
  }

  return 0;
}

void ToolKitToolRuntimePlatformVersion.hash(into:)()
{
  OUTLINED_FUNCTION_237();
  OUTLINED_FUNCTION_77_1();
  v1 = v0[12];
  v2 = v0[20];
  v3 = v0[21];
  if (v0[4] == 1)
  {
    sub_19393CAD0();
    if (!v1)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_19393CAD0();
    if (!v2)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  sub_19393CAD0();
  sub_19393CAE0();
  if (v1)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_19393CAD0();
  sub_19393CAE0();
  if (!v2)
  {
LABEL_4:
    sub_19393CAD0();
    sub_19393CAE0();
    goto LABEL_8;
  }

LABEL_7:
  sub_19393CAD0();
LABEL_8:
  if (v3 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_236();
}

uint64_t ToolKitToolRuntimePlatformVersion.hashValue.getter()
{
  OUTLINED_FUNCTION_136_9();
  v0 = sub_19393CAB0();
  OUTLINED_FUNCTION_255_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  ToolKitToolRuntimePlatformVersion.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1937285F8()
{
  OUTLINED_FUNCTION_136_9();
  v0 = sub_19393CAB0();
  OUTLINED_FUNCTION_255_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  ToolKitToolRuntimePlatformVersion.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_193728644@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolRuntimeRequirement.DeviceState.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19372866C@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolRuntimeRequirement.DeviceState.allCases.getter();
  *a1 = result;
  return result;
}

__n128 ToolKitToolRuntimeRequirement.AvailabilityAnnotation.introducingVersion.setter(__n128 *a1)
{
  v2 = a1[1].n128_u32[0];
  v3 = a1[1].n128_u16[2];
  result = *a1;
  *(v1 + 12) = *a1;
  *(v1 + 32) = v3;
  *(v1 + 28) = v2;
  return result;
}

__n128 ToolKitToolRuntimeRequirement.AvailabilityAnnotation.deprecatingVersion.setter(__n128 *a1)
{
  v2 = a1[1].n128_u32[0];
  v3 = a1[1].n128_u16[2];
  result = *a1;
  *(v1 + 36) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 52) = v2;
  return result;
}

__n128 ToolKitToolRuntimeRequirement.AvailabilityAnnotation.obsoletingVersion.setter(__n128 *a1)
{
  v2 = a1[1].n128_u32[0];
  v3 = a1[1].n128_u16[2];
  result = *a1;
  *(v1 + 60) = *a1;
  *(v1 + 80) = v3;
  *(v1 + 76) = v2;
  return result;
}

void ToolKitToolRuntimeRequirement.AvailabilityAnnotation.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 256;
  *(a1 + 20) = 0;
  *(a1 + 12) = 0;
  *(a1 + 28) = 0;
  *(a1 + 32) = 768;
  *(a1 + 44) = 0;
  *(a1 + 36) = 0;
  *(a1 + 52) = 0;
  *(a1 + 56) = 768;
  *(a1 + 68) = 0;
  *(a1 + 60) = 0;
  *(a1 + 76) = 0;
  *(a1 + 80) = 768;
  OUTLINED_FUNCTION_123_2();
}

void static ToolKitToolRuntimeRequirement.AvailabilityAnnotation.== infix(_:_:)()
{
  OUTLINED_FUNCTION_327();
  if (*(v1 + 9))
  {
    if ((*(v0 + 9) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (*(v0 + 9))
    {
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_178_0();
    v18 = ToolKitToolRuntimePlatform.rawValue.getter();
    if (v18 != ToolKitToolRuntimePlatform.rawValue.getter())
    {
      goto LABEL_23;
    }
  }

  OUTLINED_FUNCTION_313_1();
  if (v4)
  {
    if ((v2 & 0xFF0000000000) != v3)
    {
      goto LABEL_23;
    }
  }

  else
  {
    OUTLINED_FUNCTION_135_9();
    if (v4)
    {
      goto LABEL_23;
    }

    v6 = OUTLINED_FUNCTION_77_15(v5);
    if ((static ToolKitToolRuntimePlatformVersion.== infix(_:_:)(v6, v7) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  OUTLINED_FUNCTION_313_1();
  if (v4)
  {
    if ((v8 & 0xFF0000000000) != v9)
    {
      goto LABEL_23;
    }
  }

  else
  {
    OUTLINED_FUNCTION_135_9();
    if (v10)
    {
      goto LABEL_23;
    }

    v12 = OUTLINED_FUNCTION_77_15(v11);
    if ((static ToolKitToolRuntimePlatformVersion.== infix(_:_:)(v12, v13) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  OUTLINED_FUNCTION_313_1();
  if (!v4)
  {
    OUTLINED_FUNCTION_135_9();
    if (!v14)
    {
      v16 = OUTLINED_FUNCTION_77_15(v15);
      static ToolKitToolRuntimePlatformVersion.== infix(_:_:)(v16, v17);
    }
  }

LABEL_23:
  OUTLINED_FUNCTION_232_4();
}

void ToolKitToolRuntimeRequirement.AvailabilityAnnotation.hash(into:)()
{
  OUTLINED_FUNCTION_329_0();
  OUTLINED_FUNCTION_148_2();
  v1 = *(v0 + 28) | (*(v0 + 32) << 32);
  v2 = *(v0 + 56);
  v3 = *(v0 + 52);
  v4 = *(v0 + 80);
  v9 = *(v0 + 76);
  if (v5 == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    v6 = ToolKitToolRuntimePlatform.rawValue.getter();
    MEMORY[0x193B18030](v6);
  }

  v7 = v3 | (v2 << 32);
  if ((v1 & 0xFF0000000000) == 0x30000000000)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_334_0();
    ToolKitToolRuntimePlatformVersion.hash(into:)();
  }

  v8 = v9 | (v4 << 32);
  if ((v7 & 0xFF0000000000) == 0x30000000000)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_334_0();
    ToolKitToolRuntimePlatformVersion.hash(into:)();
  }

  if ((v8 & 0xFF0000000000) == 0x30000000000)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_334_0();
    ToolKitToolRuntimePlatformVersion.hash(into:)();
  }

  OUTLINED_FUNCTION_328();
}

uint64_t ToolKitToolRuntimeRequirement.AvailabilityAnnotation.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  ToolKitToolRuntimeRequirement.AvailabilityAnnotation.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_193728CF8()
{
  sub_19393CAB0();
  ToolKitToolRuntimeRequirement.AvailabilityAnnotation.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_193728D44@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolRuntimeRequirement.DeviceCapability.DeviceCapabilityType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193728D6C@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolRuntimeRequirement.DeviceCapability.DeviceCapabilityType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t ToolKitToolRuntimeRequirement.DeviceCapability.MobileGestalt.key.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

IntelligencePlatformLibrary::ToolKitToolRuntimeRequirement::DeviceCapability::MobileGestalt __swiftcall ToolKitToolRuntimeRequirement.DeviceCapability.MobileGestalt.init()()
{
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 2;
  return result;
}

uint64_t static ToolKitToolRuntimeRequirement.DeviceCapability.MobileGestalt.== infix(_:_:)()
{
  OUTLINED_FUNCTION_454();
  v1 = *(v0 + 16);
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  if (v5)
  {
    if (!v3)
    {
      return 0;
    }

    OUTLINED_FUNCTION_155(v0);
    v8 = v8 && v6 == v7;
    if (!v8 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }

LABEL_10:
    if (v1 == 2)
    {
      if (v4 != 2)
      {
        return 0;
      }
    }

    else if (v4 == 2 || ((v4 ^ v1) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  if (!v3)
  {
    goto LABEL_10;
  }

  return 0;
}

uint64_t ToolKitToolRuntimeRequirement.DeviceCapability.MobileGestalt.hash(into:)()
{
  OUTLINED_FUNCTION_77_1();
  v1 = *(v0 + 16);
  if (*(v0 + 8))
  {
    sub_19393CAD0();
    OUTLINED_FUNCTION_225();
    sub_19393C640();
  }

  else
  {
    sub_19393CAD0();
  }

  if (v1 != 2)
  {
    sub_19393CAD0();
  }

  return sub_19393CAD0();
}

uint64_t ToolKitToolRuntimeRequirement.DeviceCapability.MobileGestalt.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  OUTLINED_FUNCTION_119();
  if (v1)
  {
    v3 = sub_19393CAD0();
    OUTLINED_FUNCTION_38_30(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);
    sub_19393C640();
  }

  else
  {
    sub_19393CAD0();
  }

  if (v2 != 2)
  {
    OUTLINED_FUNCTION_123();
  }

  sub_19393CAD0();
  return sub_19393CB00();
}

uint64_t sub_19372908C()
{
  v0 = sub_19393CAB0();
  OUTLINED_FUNCTION_134_0(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  ToolKitToolRuntimeRequirement.DeviceCapability.MobileGestalt.hash(into:)();
  return sub_19393CB00();
}

uint64_t ToolKitToolRuntimeRequirement.FeatureFlag.domain.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ToolKitToolRuntimeRequirement.FeatureFlag.feature.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

void __swiftcall ToolKitToolRuntimeRequirement.FeatureFlag.init()(IntelligencePlatformLibrary::ToolKitToolRuntimeRequirement::FeatureFlag *__return_ptr retstr)
{
  retstr->domain = 0u;
  retstr->feature = 0u;
  retstr->value.value = 2;
}

uint64_t static ToolKitToolRuntimeRequirement.FeatureFlag.== infix(_:_:)()
{
  OUTLINED_FUNCTION_436();
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v5 = *(v4 + 8);
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(v4 + 32);
  if (v9)
  {
    if (!v5)
    {
      return 0;
    }

    OUTLINED_FUNCTION_155(v1);
    v12 = v12 && v10 == v11;
    if (!v12 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (v2)
  {
    if (!v7)
    {
      return 0;
    }

    if (v0 != v6 || v2 != v7)
    {
      OUTLINED_FUNCTION_13_0();
      OUTLINED_FUNCTION_46_14();
      if ((sub_19393CA30() & 1) == 0)
      {
        return 0;
      }
    }

LABEL_19:
    if (v3 == 2)
    {
      if (v8 != 2)
      {
        return 0;
      }
    }

    else if (v8 == 2 || ((v8 ^ v3) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  if (!v7)
  {
    goto LABEL_19;
  }

  return 0;
}

uint64_t ToolKitToolRuntimeRequirement.FeatureFlag.hash(into:)()
{
  OUTLINED_FUNCTION_77_1();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  if (*(v0 + 8))
  {
    sub_19393CAD0();
    sub_19393C640();
    if (v1)
    {
LABEL_3:
      sub_19393CAD0();
      OUTLINED_FUNCTION_13_5();
      sub_19393C640();
      goto LABEL_6;
    }
  }

  else
  {
    sub_19393CAD0();
    if (v1)
    {
      goto LABEL_3;
    }
  }

  sub_19393CAD0();
LABEL_6:
  if (v2 != 2)
  {
    sub_19393CAD0();
  }

  return sub_19393CAD0();
}

uint64_t ToolKitToolRuntimeRequirement.FeatureFlag.hashValue.getter()
{
  OUTLINED_FUNCTION_159_6();
  v0 = OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_149_5(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  ToolKitToolRuntimeRequirement.FeatureFlag.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_193729404()
{
  OUTLINED_FUNCTION_159_6();
  v0 = sub_19393CAB0();
  OUTLINED_FUNCTION_149_5(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  ToolKitToolRuntimeRequirement.FeatureFlag.hash(into:)();
  return sub_19393CB00();
}

uint64_t ToolKitToolToolSummaryString.hash(into:)()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  result = MEMORY[0x193B18030](v2);
  if (v2)
  {
    v4 = (v1 + 32);
    do
    {
      v5 = *v4++;

      OUTLINED_FUNCTION_161();
      v6 = ToolKitToolToolSummaryString.Component.hash(into:)();
      OUTLINED_FUNCTION_417(v6, v7, v8, v9, v10, v11, v12, v13, v14, v5);

      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t ToolKitToolToolInvocationSignature.visibleParameterKeys.setter()
{
  OUTLINED_FUNCTION_301_1();

  *v1 = v0;
  return result;
}

IntelligencePlatformLibrary::ToolKitToolToolInvocationSignature __swiftcall ToolKitToolToolInvocationSignature.init()()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7CC0];
  *v0 = MEMORY[0x1E69E7CC0];
  v0[1] = v2;
  v3 = sub_19393C510();
  v1[2] = v3;
  result.valueConstraints._rawValue = v5;
  result.invisibleParameterKeys._rawValue = v4;
  result.visibleParameterKeys._rawValue = v3;
  return result;
}

void sub_19372970C(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  OUTLINED_FUNCTION_365_1(a1);
}

uint64_t sub_193729720(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_13_20(a1);
  v4 = v1 == *v2 && *(v3 + 8) == v2[1];
  if (v4 || (v5 = 0, (sub_19393CA30() & 1) != 0))
  {

    OUTLINED_FUNCTION_162_9();
    v6 = OUTLINED_FUNCTION_13_5();
    v5 = sub_1937148A0(v6, v7, v8);
  }

  return v5 & 1;
}

uint64_t sub_1937297A4()
{
  sub_19393C640();
  OUTLINED_FUNCTION_47_24();
  v0 = OUTLINED_FUNCTION_13_0();
  return sub_193737244(v0);
}

uint64_t sub_1937297DC()
{
  OUTLINED_FUNCTION_210_1();
  v0 = sub_19393CAB0();
  OUTLINED_FUNCTION_38_30(v0, v1, v2, v3, v4, v5, v6, v7, v18, v20);
  sub_19393C640();
  OUTLINED_FUNCTION_47_24();
  v16 = OUTLINED_FUNCTION_62_0(v8, v9, v10, v11, v12, v13, v14, v15, v19, v21);
  sub_193737244(v16);
  return sub_19393CB00();
}

uint64_t sub_193729838()
{
  OUTLINED_FUNCTION_210_1();
  v0 = sub_19393CAB0();
  OUTLINED_FUNCTION_38_30(v0, v1, v2, v3, v4, v5, v6, v7, v18, v20);
  sub_19393C640();
  OUTLINED_FUNCTION_47_24();
  v16 = OUTLINED_FUNCTION_62_0(v8, v9, v10, v11, v12, v13, v14, v15, v19, v21);
  sub_193737244(v16);
  return sub_19393CB00();
}

uint64_t static ToolKitToolToolInvocationSignature.== infix(_:_:)(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_102_8(*a1);
  if ((sub_19344FC94(v1, v2) & 1) == 0)
  {
    return 0;
  }

  v3 = OUTLINED_FUNCTION_115_0();
  if ((sub_19344FC94(v3, v4) & 1) == 0)
  {
    return 0;
  }

  v5 = OUTLINED_FUNCTION_13_0();

  return sub_1937211C8(v5, v6);
}

uint64_t ToolKitToolToolInvocationSignature.hash(into:)(uint64_t a1)
{
  sub_1934D11C8(a1, *v1);
  v2 = OUTLINED_FUNCTION_187();
  sub_1934D11C8(v2, v3);
  v4 = OUTLINED_FUNCTION_13_0();

  return sub_193735EB0(v4, v5);
}

uint64_t ToolKitToolToolInvocationSignature.hashValue.getter()
{
  OUTLINED_FUNCTION_210_1();
  v1 = sub_19393CAB0();
  v9 = OUTLINED_FUNCTION_99(v1, v2, v3, v4, v5, v6, v7, v8, v22, v24[0]);
  sub_1934D11C8(v9, v10);
  v11 = sub_1934D11C8(v24, v0);
  v19 = OUTLINED_FUNCTION_62_0(v11, v12, v13, v14, v15, v16, v17, v18, v23, v24[0]);
  sub_193735EB0(v19, v20);
  return sub_19393CB00();
}

uint64_t sub_1937299B8()
{
  OUTLINED_FUNCTION_210_1();
  v1 = sub_19393CAB0();
  v9 = OUTLINED_FUNCTION_99(v1, v2, v3, v4, v5, v6, v7, v8, v22, v24[0]);
  sub_1934D11C8(v9, v10);
  v11 = sub_1934D11C8(v24, v0);
  v19 = OUTLINED_FUNCTION_62_0(v11, v12, v13, v14, v15, v16, v17, v18, v23, v24[0]);
  sub_193735EB0(v19, v20);
  return sub_19393CB00();
}

uint64_t ToolKitToolSampleInvocationDefinition.phrases.setter()
{
  OUTLINED_FUNCTION_301_1();

  *v1 = v0;
  return result;
}

uint64_t ToolKitToolSampleInvocationDefinition.expectedResult.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t ToolKitToolSampleInvocationDefinition.negativePhrases.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

IntelligencePlatformLibrary::ToolKitToolSampleInvocationDefinition __swiftcall ToolKitToolSampleInvocationDefinition.init()()
{
  v1 = MEMORY[0x1E69E7CC0];
  *v0 = MEMORY[0x1E69E7CC0];
  v0[1] = 0;
  v0[2] = 0;
  v0[3] = v1;
  return result;
}

uint64_t static ToolKitToolSampleInvocationDefinition.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = OUTLINED_FUNCTION_102_8(*a1);
  if ((sub_19344FC94(v6, v7) & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (v5)
    {
      if (v2 == v4 && v3 == v5)
      {
        goto LABEL_9;
      }

      OUTLINED_FUNCTION_175_0();
      OUTLINED_FUNCTION_284();
      if (sub_19393CA30())
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  if (v5)
  {
    return 0;
  }

LABEL_9:
  v9 = OUTLINED_FUNCTION_13_0();

  return sub_19344FC94(v9, v10);
}

uint64_t ToolKitToolSampleInvocationDefinition.hash(into:)(uint64_t a1)
{
  v4 = v1[2];
  v3 = v1[3];
  sub_1934D11C8(a1, *v1);
  if (v4)
  {
    OUTLINED_FUNCTION_293();
    OUTLINED_FUNCTION_175();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_302();
  }

  return sub_1934D11C8(a1, v3);
}

uint64_t sub_193729CC4()
{
  v0 = sub_19393CAB0();
  v8 = OUTLINED_FUNCTION_134_0(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11);
  ToolKitToolSampleInvocationDefinition.hash(into:)(v8);
  return sub_19393CB00();
}

void ToolKitToolAssistantSchemaVersion.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
}

uint64_t static ToolKitToolAssistantSchemaVersion.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) == *(a2 + 16))
    {
      v3 = *(a2 + 24);
    }

    else
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  if (*(a1 + 40))
  {
    if ((*(a2 + 40) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) == *(a2 + 32))
    {
      v5 = *(a2 + 40);
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t ToolKitToolAssistantSchemaVersion.hash(into:)()
{
  OUTLINED_FUNCTION_77_1();
  v1 = v0[2];
  v2 = *(v0 + 24);
  v3 = v0[4];
  v4 = *(v0 + 40);
  if (*(v0 + 8) == 1)
  {
    sub_19393CAD0();
    if (!v2)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_19393CAD0();
    if (!v4)
    {
      goto LABEL_4;
    }

    return sub_19393CAD0();
  }

  v6 = *v0;
  sub_19393CAD0();
  MEMORY[0x193B18060](v6);
  if (v2)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_19393CAD0();
  MEMORY[0x193B18060](v1);
  if (!v4)
  {
LABEL_4:
    sub_19393CAD0();
    return MEMORY[0x193B18060](v3);
  }

  return sub_19393CAD0();
}

void ToolKitToolAssistantSchemaVersion.hashValue.getter()
{
  OUTLINED_FUNCTION_51_15();
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);
  OUTLINED_FUNCTION_119();
  sub_19393CAD0();
  if (v2 != 1)
  {
    MEMORY[0x193B18060](v1);
  }

  sub_19393CAD0();
  if (!v3)
  {
    v5 = OUTLINED_FUNCTION_264_0();
    MEMORY[0x193B18060](v5);
  }

  sub_19393CAD0();
  if (!v4)
  {
    v6 = OUTLINED_FUNCTION_161();
    MEMORY[0x193B18060](v6);
  }

  sub_19393CB00();
  OUTLINED_FUNCTION_50_14();
}

void sub_193729F9C()
{
  OUTLINED_FUNCTION_51_15();
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);
  sub_19393CAB0();
  sub_19393CAD0();
  if (v2 != 1)
  {
    MEMORY[0x193B18060](v1);
  }

  sub_19393CAD0();
  if (!v3)
  {
    v5 = OUTLINED_FUNCTION_264_0();
    MEMORY[0x193B18060](v5);
  }

  sub_19393CAD0();
  if (!v4)
  {
    v6 = OUTLINED_FUNCTION_161();
    MEMORY[0x193B18060](v6);
  }

  sub_19393CB00();
  OUTLINED_FUNCTION_50_14();
}

__n128 ToolKitToolAssistantSchemaIdentifier.version.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 57);
  result = *(v1 + 16);
  v6 = *(v1 + 32);
  *a1 = result;
  *(a1 + 16) = v6;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  *(a1 + 41) = v4;
  return result;
}

void ToolKitToolAssistantSchemaIdentifier.version.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v3;
  OUTLINED_FUNCTION_124_8(v2);
}

uint64_t ToolKitToolAssistantSchemaIdentifier.domain.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

double ToolKitToolAssistantSchemaIdentifier.init()@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 41) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 57) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  return result;
}

void static ToolKitToolAssistantSchemaIdentifier.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22, __int128 a23, __int128 a24, uint64_t a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  OUTLINED_FUNCTION_234_3();
  a40 = v41;
  a41 = v42;
  OUTLINED_FUNCTION_454();
  v44 = *(v43 + 16);
  v45 = *(v43 + 32);
  v46 = *(v43 + 48);
  v47 = *(v43 + 56);
  v48 = *(v43 + 57);
  v49 = *(v43 + 64);
  v50 = *(v43 + 72);
  v52 = *(v51 + 8);
  v53 = *(v51 + 16);
  v54 = *(v51 + 24);
  v55 = *(v51 + 32);
  v57 = *(v51 + 40);
  v56 = *(v51 + 48);
  v58 = *(v51 + 56);
  v59 = *(v51 + 57);
  v61 = *(v51 + 64);
  v60 = *(v51 + 72);
  if (v62)
  {
    if (!v52)
    {
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_155(v43);
    v65 = v65 && v63 == v64;
    if (!v65)
    {
      v77 = v60;
      v78 = v61;
      v75 = v53;
      v76 = v50;
      v66 = v49;
      v67 = v58;
      v68 = v54;
      v73 = v45;
      v74 = v44;
      v69 = sub_19393CA30();
      v45 = v73;
      v44 = v74;
      LOBYTE(v54) = v68;
      v58 = v67;
      v49 = v66;
      v53 = v75;
      v50 = v76;
      v60 = v77;
      v61 = v78;
      if ((v69 & 1) == 0)
      {
        goto LABEL_22;
      }
    }
  }

  else if (v52)
  {
    goto LABEL_22;
  }

  if (v48)
  {
    if ((v59 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    a23 = v44;
    a24 = v45;
    a25 = v46;
    a26 = v47;
    a27 = 0;
    if (v59)
    {
      goto LABEL_22;
    }

    a17 = v53;
    a18 = v54 & 1;
    a19 = v55;
    a20 = v57 & 1;
    a21 = v56;
    a22 = v58 & 1;
    v70 = v49;
    v71 = static ToolKitToolAssistantSchemaVersion.== infix(_:_:)(&a23, &a17);
    v49 = v70;
    if ((v71 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  if (v50 && v60 && (v49 != v61 || v50 != v60))
  {
    OUTLINED_FUNCTION_444();
  }

LABEL_22:
  OUTLINED_FUNCTION_160_8();
}

void ToolKitToolAssistantSchemaIdentifier.hash(into:)()
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_77_1();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 56);
  v6 = *(v0 + 57);
  v7 = *(v0 + 72);
  v9 = *(v0 + 48);
  if (*(v0 + 8))
  {
    sub_19393CAD0();
    OUTLINED_FUNCTION_2_14();
    sub_19393C640();
    if (v6)
    {
LABEL_12:
      sub_19393CAD0();
      if (v7)
      {
        goto LABEL_13;
      }

LABEL_9:
      sub_19393CAD0();
      OUTLINED_FUNCTION_114();
      return;
    }
  }

  else
  {
    sub_19393CAD0();
    if (v6)
    {
      goto LABEL_12;
    }
  }

  sub_19393CAD0();
  if (v2)
  {
    sub_19393CAD0();
    if ((v4 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_19393CAD0();
    MEMORY[0x193B18060](v1);
    if ((v4 & 1) == 0)
    {
LABEL_7:
      sub_19393CAD0();
      MEMORY[0x193B18060](v3);
      if (v5)
      {
        goto LABEL_12;
      }

      goto LABEL_8;
    }
  }

  sub_19393CAD0();
  if (v5)
  {
    goto LABEL_12;
  }

LABEL_8:
  sub_19393CAD0();
  MEMORY[0x193B18060](v9);
  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_13:
  sub_19393CAD0();
  OUTLINED_FUNCTION_114();

  sub_19393C640();
}

uint64_t ToolKitToolAssistantToolSchemaDefinition.identifier.getter()
{
  OUTLINED_FUNCTION_142_10();
  memcpy(v0, v1, 0x50uLL);
  v2 = OUTLINED_FUNCTION_13_0();
  v4 = memcpy(v2, v3, 0x50uLL);
  return OUTLINED_FUNCTION_278_3(v4, v5, &qword_1EAE41AA8, &qword_1939807A8, v6, v7, v8, v9, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21);
}

void *ToolKitToolAssistantToolSchemaDefinition.identifier.setter()
{
  OUTLINED_FUNCTION_59_19();
  memcpy(v0, v1, 0x50uLL);
  sub_19344E6DC(&v5, &qword_1EAE41AA8, &qword_1939807A8);
  v2 = OUTLINED_FUNCTION_13_5();
  return memcpy(v2, v3, 0x50uLL);
}

uint64_t ToolKitToolAssistantToolSchemaDefinition.name.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t ToolKitToolAssistantToolSchemaDefinition.description.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t ToolKitToolAssistantToolSchemaDefinition.parameters.setter(uint64_t a1)
{

  *(v1 + 112) = a1;
  return result;
}

uint64_t ToolKitToolAssistantToolSchemaDefinition.sampleInvocations.setter(uint64_t a1)
{

  *(v1 + 120) = a1;
  return result;
}

uint64_t ToolKitToolAssistantToolSchemaDefinition.outputType.setter(uint64_t *a1)
{
  v2 = *a1;
  result = sub_193444060(*(v1 + 128));
  *(v1 + 128) = v2;
  return result;
}

uint64_t ToolKitToolAssistantToolSchemaDefinition.init()@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  *&v4 = OUTLINED_FUNCTION_208_1(a2, xmmword_1939526A0);
  *(a1 + 64) = v4;
  OUTLINED_FUNCTION_276_3(v8);
  sub_19344E6DC(v8, &qword_1EAE41AA8, &qword_1939807A8);
  *a1 = xmmword_1939526A0;
  *(a1 + 16) = 0u;
  OUTLINED_FUNCTION_139_10(0);
  v5 = MEMORY[0x1E69E7CC0];
  *(a1 + 112) = MEMORY[0x1E69E7CC0];
  *(a1 + 120) = v5;
  v6 = OUTLINED_FUNCTION_114_12();
  result = sub_193444060(v6);
  *(a1 + 128) = v2;
  return result;
}

void static ToolKitToolAssistantToolSchemaDefinition.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v2 = v1;
  OUTLINED_FUNCTION_440(v3);
  v4 = v0[11];
  v133 = v0[10];
  v138 = v0[13];
  v123 = v0[12];
  v128 = v0[14];
  v118 = v0[15];
  v5 = v0[16];
  memcpy(v153, v2, 0x50uLL);
  v6 = v2[5].n128_u64[0];
  v7 = v2[5].n128_u64[1];
  v8 = v151;
  v9 = v152;
  v10 = v153[0];
  v11 = v153[1];
  if (v152 == 1)
  {
    if (v153[1] == 1)
    {
      v94 = v2[6].n128_i64[0];
      v100 = v2[7].n128_i64[0];
      v107 = v5;
      v112 = v2[6].n128_i64[1];
      v82 = v2[8].n128_i64[0];
      v88 = v2[7].n128_i64[1];
      *v147 = v151;
      v148 = 1;
      OUTLINED_FUNCTION_4_62();
      OUTLINED_FUNCTION_449(&v151, v146);
      OUTLINED_FUNCTION_449(v153, v146);
      sub_19344E6DC(v147, &qword_1EAE41AA8, &qword_1939807A8);
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_75_0();
    sub_193448804(v38, v39, v40, v41);
    OUTLINED_FUNCTION_75_0();
    sub_193448804(v42, v43, v44, v45);
LABEL_7:
    *v147 = v8;
    v148 = v9;
    OUTLINED_FUNCTION_4_62();
    v149 = v10;
    v150 = v11;
    OUTLINED_FUNCTION_431(v2[1], v2[2]);
    OUTLINED_FUNCTION_429(v2[3], v2[4]);
    sub_19344E6DC(v147, &qword_1EAE41AB0, &qword_1939807B0);
    goto LABEL_8;
  }

  v95 = v2[6].n128_i64[0];
  v101 = v2[7].n128_i64[0];
  v113 = v2[6].n128_i64[1];
  v83 = v2[8].n128_i64[0];
  v89 = v2[7].n128_i64[1];
  v148 = v152;
  OUTLINED_FUNCTION_4_62();
  OUTLINED_FUNCTION_452(v146, v12, v13, v14, v15, v16, v17, v18, v83, v89, v95, v101, v106, v113, v118, v123, v128, v133, v138, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], v144[0], v144[1], v144[2], v144[3], v144[4], v144[5], v144[6], v144[7], v144[8], v144[9], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], v146[0], v146[1], v146[2], v146[3], v146[4], v146[5], v146[6], v146[7], v146[8], v146[9], v151);
  if (v11 == 1)
  {
    OUTLINED_FUNCTION_452(__src, v19, v20, v21, v22, v23, v24, v25, v84, v90, v96, v102, v108, v114, v119, v124, v129, v134, v139, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], v144[0], v144[1], v144[2], v144[3], v144[4], v144[5], v144[6], v144[7], v144[8], v144[9], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], v146[0], v146[1], v146[2], v146[3], v146[4], v146[5], v146[6], v146[7], v146[8], v146[9], v147[0]);
    OUTLINED_FUNCTION_75_0();
    sub_193448804(v26, v27, v28, v29);
    OUTLINED_FUNCTION_75_0();
    sub_193448804(v30, v31, v32, v33);
    OUTLINED_FUNCTION_75_0();
    sub_193448804(v34, v35, v36, v37);
    sub_193731678(__src);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_105_15();
  OUTLINED_FUNCTION_104_12();
  static ToolKitToolAssistantSchemaIdentifier.== infix(_:_:)(v146, __src, v46, v47, v48, v49, v50, v51, v84, v90, v96, v102, v5, v114, v119, v124, v129, v134, v139, __dst[0], __dst[1], __dst[2], *&__dst[3], *&__dst[5], __dst[7], __dst[8], SBYTE1(__dst[8]), __dst[9], v144[0], v144[1], v144[2], v144[3], v144[4], v144[5], v144[6], v144[7], v144[8], v144[9], v10, v11, __src[2]);
  v53 = v52;
  memcpy(__dst, __src, sizeof(__dst));
  OUTLINED_FUNCTION_367_1(&v151, v54, v55, v56, v57, v58, v59, v60, v85, v91, v97, v103, v109, v115, v120, v125, v130, v135, v140, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], v144[0]);
  OUTLINED_FUNCTION_367_1(v153, v61, v62, v63, v64, v65, v66, v67, v86, v92, v98, v104, v110, v116, v121, v126, v131, v136, v141, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], v144[0]);
  OUTLINED_FUNCTION_367_1(v147, v68, v69, v70, v71, v72, v73, v74, v87, v93, v99, v105, v111, v117, v122, v127, v132, v137, v142, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], v144[0]);
  sub_193731678(__dst);
  memcpy(v144, v146, sizeof(v144));
  sub_193731678(v144);
  __src[0] = v8;
  __src[1] = v9;
  OUTLINED_FUNCTION_105_15();
  OUTLINED_FUNCTION_104_12();
  sub_19344E6DC(__src, &qword_1EAE41AA8, &qword_1939807A8);
  if ((v53 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_10:
  if (v4)
  {
    v75 = v107;
    if (!v7)
    {
      goto LABEL_8;
    }

    v76 = v133 == v6 && v4 == v7;
    if (!v76 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v75 = v107;
    if (v7)
    {
      goto LABEL_8;
    }
  }

  if (v138)
  {
    if (!v112)
    {
      goto LABEL_8;
    }

    v77 = v123 == v94 && v138 == v112;
    if (!v77 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (v112)
  {
    goto LABEL_8;
  }

  if (sub_193713748(v128, v100) & 1) != 0 && (sub_1937139C8(v118, v88))
  {
    OUTLINED_FUNCTION_147_8();
    if (!v76)
    {
      *v147 = v75;
      v80 = v82;
      if ((v78 & ~v82) != 0)
      {
        v146[0] = v82;
        OUTLINED_FUNCTION_258_2();
        sub_193437C90(v75);
        static ToolKitToolTypeInstance.== infix(_:_:)();

        sub_193444060(v75);
        goto LABEL_8;
      }

      sub_193437C90(v75);
      OUTLINED_FUNCTION_94_14(v82);
      v79 = v75;
      goto LABEL_36;
    }

    v79 = v75;
    v80 = v82;
    v81 = v78 & ~v82;
    sub_193437C90(v79);
    sub_193437C90(v82);
    if (v81)
    {
LABEL_36:
      sub_193444060(v79);
      sub_193444060(v80);
      goto LABEL_8;
    }

    sub_193444060(v79);
  }

LABEL_8:
  OUTLINED_FUNCTION_116();
}

uint64_t ToolKitToolAssistantTypeSchemaDefinition.Enumeration.identifier.getter()
{
  OUTLINED_FUNCTION_142_10();
  memcpy(v0, v1, 0x50uLL);
  v2 = OUTLINED_FUNCTION_13_0();
  v4 = memcpy(v2, v3, 0x50uLL);
  return OUTLINED_FUNCTION_278_3(v4, v5, &qword_1EAE41AA8, &qword_1939807A8, v6, v7, v8, v9, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21);
}

void *ToolKitToolAssistantTypeSchemaDefinition.Enumeration.identifier.setter()
{
  OUTLINED_FUNCTION_59_19();
  memcpy(v0, v1, 0x50uLL);
  sub_19344E6DC(&v5, &qword_1EAE41AA8, &qword_1939807A8);
  v2 = OUTLINED_FUNCTION_13_5();
  return memcpy(v2, v3, 0x50uLL);
}

uint64_t ToolKitToolAssistantTypeSchemaDefinition.Enumeration.cases.setter(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

__n128 sub_19372ADF8()
{
  OUTLINED_FUNCTION_346_0();
  sub_193613BF4(v1[11], v1[12], v1[13], v1[14], v1[15]);
  result = *v0;
  *(v1 + 13) = *(v0 + 16);
  *(v1 + 11) = result;
  v1[15] = v2;
  return result;
}

double sub_19372AE5C@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  *&v3 = OUTLINED_FUNCTION_208_1(a2, xmmword_1939526A0);
  *(a1 + 64) = v3;
  OUTLINED_FUNCTION_276_3(v11);
  sub_19344E6DC(v11, &qword_1EAE41AA8, &qword_1939807A8);
  *&v5 = OUTLINED_FUNCTION_208_1(v4, xmmword_1939526A0);
  *(a1 + 64) = v5;
  *(a1 + 80) = MEMORY[0x1E69E7CC0];
  v6 = OUTLINED_FUNCTION_169_3();
  sub_193613BF4(v6, v7, v8, v9, 0);
  *(a1 + 120) = 0;
  result = 0.0;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  return result;
}

void sub_19372AF04()
{
  OUTLINED_FUNCTION_117();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_440(v5);
  v6 = v0[10];
  v116 = v0[11];
  v118 = v0[12];
  v120 = v0[13];
  v7 = v0[14];
  v114 = v0[15];
  OUTLINED_FUNCTION_268_1(&v135);
  v8 = v4[5].n128_u64[0];
  v10 = v133;
  v9 = v134;
  v12 = v135;
  v11 = v136;
  if (v134 != 1)
  {
    v100 = v4[5].n128_i64[1];
    v103 = v4[6].n128_i64[1];
    v106 = v4[7].n128_i64[1];
    v109 = v4[6].n128_i64[0];
    v112 = v4[7].n128_i64[0];
    v127 = v134;
    OUTLINED_FUNCTION_4_62();
    OUTLINED_FUNCTION_452(v125, v21, v22, v23, v24, v25, v26, v27, v94, v96, v100, v103, v106, v109, v112, v114, v116, v118, v120, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], v123[0], v123[1], v123[2], v123[3], v123[4], v123[5], v123[6], v123[7], v123[8], v123[9], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], v125[0], v125[1], v125[2], v125[3], v125[4], v125[5], v125[6], v125[7], v125[8], v125[9], v133);
    if (v11 != 1)
    {
      OUTLINED_FUNCTION_105_15();
      OUTLINED_FUNCTION_104_12();
      static ToolKitToolAssistantSchemaIdentifier.== infix(_:_:)(v125, __src, v35, v36, v37, v38, v39, v40, v95, v7, v101, v104, v107, v110, v113, v115, v117, v119, v121, __dst[0], __dst[1], __dst[2], *&__dst[3], *&__dst[5], __dst[7], __dst[8], SBYTE1(__dst[8]), __dst[9], v123[0], v123[1], v123[2], v123[3], v123[4], v123[5], v123[6], v123[7], v123[8], v123[9], v12, v11, __src[2]);
      v42 = v41;
      memcpy(__dst, __src, sizeof(__dst));
      OUTLINED_FUNCTION_95_3();
      sub_193448804(v43, v44, v45, v46);
      OUTLINED_FUNCTION_95_3();
      sub_193448804(v47, v48, v49, v50);
      OUTLINED_FUNCTION_95_3();
      sub_193448804(v51, v52, v53, v54);
      sub_193731678(__dst);
      memcpy(v123, v125, sizeof(v123));
      sub_193731678(v123);
      __src[0] = v10;
      __src[1] = v9;
      OUTLINED_FUNCTION_105_15();
      OUTLINED_FUNCTION_104_12();
      sub_19344E6DC(__src, &qword_1EAE41AA8, &qword_1939807A8);
      if ((v42 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_452(__src, v28, v29, v30, v31, v32, v33, v34, v95, v98, v101, v104, v107, v110, v113, v115, v117, v119, v121, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], v123[0], v123[1], v123[2], v123[3], v123[4], v123[5], v123[6], v123[7], v123[8], v123[9], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], v125[0], v125[1], v125[2], v125[3], v125[4], v125[5], v125[6], v125[7], v125[8], v125[9], v126[0]);
    OUTLINED_FUNCTION_294(&v133, v123);
    OUTLINED_FUNCTION_294(&v135, v123);
    OUTLINED_FUNCTION_294(v126, v123);
    sub_193731678(__src);
LABEL_7:
    *v126 = v10;
    v127 = v9;
    OUTLINED_FUNCTION_4_62();
    v131 = v12;
    v132 = v11;
    OUTLINED_FUNCTION_431(v4[1], v4[2]);
    OUTLINED_FUNCTION_429(v4[3], v4[4]);
    sub_19344E6DC(v126, &qword_1EAE41AB0, &qword_1939807B0);
    goto LABEL_17;
  }

  if (v136 != 1)
  {
    OUTLINED_FUNCTION_294(&v133, v126);
    OUTLINED_FUNCTION_294(&v135, v126);
    goto LABEL_7;
  }

  v99 = v4[5].n128_i64[1];
  v102 = v4[6].n128_i64[1];
  v105 = v4[7].n128_i64[1];
  v108 = v4[6].n128_i64[0];
  v111 = v4[7].n128_i64[0];
  v97 = v7;
  *v126 = v133;
  v127 = 1;
  OUTLINED_FUNCTION_4_62();
  OUTLINED_FUNCTION_75_0();
  sub_193448804(v13, v14, v15, v16);
  OUTLINED_FUNCTION_75_0();
  sub_193448804(v17, v18, v19, v20);
  OUTLINED_FUNCTION_247_2(v126);
LABEL_9:
  if (v2(v6, v8))
  {
    if (v114)
    {
      *v126 = v116;
      v127 = v118;
      v128 = v120;
      v129 = v97;
      v130 = v114;
      if (v105)
      {
        v125[0] = v99;
        v125[1] = v108;
        v125[2] = v102;
        v125[3] = v111;
        v125[4] = v105;
        static ToolKitToolTypeDisplayRepresentation.== infix(_:_:)(v126, v125);
        v55 = OUTLINED_FUNCTION_12_39();
        sub_1936161E4(v55, v56, v57, v58, v114);
        v59 = OUTLINED_FUNCTION_165_1();
        sub_1936161E4(v59, v60, v102, v111, v105);
        v61 = OUTLINED_FUNCTION_12_39();
        sub_1936161E4(v61, v62, v63, v64, v114);

        v65 = OUTLINED_FUNCTION_12_39();
        sub_193613BF4(v65, v66, v67, v68, v114);
        goto LABEL_17;
      }

      v76 = OUTLINED_FUNCTION_40_26();
      v71 = 0;
      sub_1936161E4(v76, v77, v78, v97, v114);
      v72 = v111;
      OUTLINED_FUNCTION_177_5();
      sub_1936161E4(v79, v80, v81, v111, 0);
      v82 = OUTLINED_FUNCTION_40_26();
      sub_1936161E4(v82, v83, v84, v97, v114);
    }

    else
    {
      v69 = OUTLINED_FUNCTION_55();
      sub_1936161E4(v69, v70, v120, v97, 0);
      v71 = v105;
      if (!v105)
      {
        sub_1936161E4(v99, v108, v102, v111, 0);
        v91 = OUTLINED_FUNCTION_40_26();
        sub_193613BF4(v91, v92, v93, v97, 0);
        goto LABEL_17;
      }

      v72 = v111;
      OUTLINED_FUNCTION_177_5();
      sub_1936161E4(v73, v74, v75, v111, v105);
    }

    v85 = OUTLINED_FUNCTION_40_26();
    sub_193613BF4(v85, v86, v87, v97, v114);
    OUTLINED_FUNCTION_177_5();
    sub_193613BF4(v88, v89, v90, v72, v71);
  }

LABEL_17:
  OUTLINED_FUNCTION_116();
}

void sub_19372B348()
{
  OUTLINED_FUNCTION_231_3();
  v2 = v1;
  OUTLINED_FUNCTION_59_19();
  memcpy(v3, v4, 0x50uLL);
  v5 = v0[12];
  v7 = v0[14];
  v6 = v0[15];
  OUTLINED_FUNCTION_39_20();
  sub_193737464();
  v8 = OUTLINED_FUNCTION_114_0();
  v2(v8);
  if (!v6)
  {
    OUTLINED_FUNCTION_104_0();
    OUTLINED_FUNCTION_196();
    return;
  }

  OUTLINED_FUNCTION_103_0();
  if (!v5)
  {
    OUTLINED_FUNCTION_104_0();
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_7:
    OUTLINED_FUNCTION_104_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_146();
  sub_19393C640();
  if (!v7)
  {
    goto LABEL_7;
  }

LABEL_4:
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_97_10();
  sub_19393C640();
LABEL_8:
  OUTLINED_FUNCTION_187();
  OUTLINED_FUNCTION_196();

  sub_1934D11C8(v9, v10);
}

uint64_t sub_19372B424()
{
  OUTLINED_FUNCTION_149_9();
  v0(v2);
  return sub_19393CB00();
}

uint64_t sub_19372B480()
{
  OUTLINED_FUNCTION_320_0();
  v0(v2);
  return sub_19393CB00();
}

BOOL static ToolKitToolSystemToolProtocol.ConditionallyEnabled.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 != 2)
  {
    return v3 != 2 && ((v3 ^ v2) & 1) == 0;
  }

  return v3 == 2;
}

uint64_t ToolKitToolSystemToolProtocol.ConditionallyEnabled.hash(into:)()
{
  OUTLINED_FUNCTION_77_1();
  if (*v0 != 2)
  {
    sub_19393CAD0();
  }

  return sub_19393CAD0();
}

uint64_t ToolKitToolSystemToolProtocol.ConditionallyEnabled.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_119();
  if (v1 != 2)
  {
    OUTLINED_FUNCTION_123();
  }

  sub_19393CAD0();
  return sub_19393CB00();
}

void *ToolKitToolSystemToolProtocol.AssistantSchema.identifier.setter()
{
  OUTLINED_FUNCTION_59_19();
  memcpy(v0, v1, 0x50uLL);
  sub_19373797C(&v5);
  v2 = OUTLINED_FUNCTION_13_5();
  return memcpy(v2, v3, 0x50uLL);
}

double sub_19372B7A4(double (*a1)(_BYTE *), double a2)
{
  OUTLINED_FUNCTION_424(a2, xmmword_1939526A0);
  OUTLINED_FUNCTION_268_1(v5);
  v3 = a1(v5);
  return OUTLINED_FUNCTION_424(v3, xmmword_1939526A0);
}

void _s27IntelligencePlatformLibrary07ToolKitD18SystemTypeProtocolO15AssistantSchemaV2eeoiySbAE_AEtFZ_0()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_284_2();
  OUTLINED_FUNCTION_276_3(&v149);
  OUTLINED_FUNCTION_268_1(&v151);
  v2 = v149;
  v3 = v150;
  v5 = v151;
  v4 = v152;
  if (v150 == 1)
  {
    if (v152 == 1)
    {
      *__src = v149;
      v136 = 1;
      OUTLINED_FUNCTION_193_2();
      OUTLINED_FUNCTION_294(&v149, &v125);
      OUTLINED_FUNCTION_294(&v151, &v125);
      OUTLINED_FUNCTION_15_1();
LABEL_9:
      sub_19344E6DC(v6, v7, v8);
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_9_12();
    sub_193448804(v45, v46, v47, v48);
    OUTLINED_FUNCTION_9_12();
    sub_193448804(v49, v50, v51, v52);
  }

  else
  {
    *__src = v149;
    OUTLINED_FUNCTION_280_1();
    v17 = OUTLINED_FUNCTION_183_3(v9, v10, v11, v12, v13, v14, v15, v16, *(v0 + 48), *(v0 + 64), v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, *(&v114 + 1), v115, *(&v115 + 1), v116, v117, *v118, v119, v120[0], v120[1], v121, *(&v121 + 1), v122[0], v122[1], v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, __src[0], v3, v137, v138, v139, v140, v141, v142);
    if (v4 != 1)
    {
      v55 = OUTLINED_FUNCTION_410(v17, v18, v19, v20, v21, v22, v23, v24, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, *(&v114 + 1), v115, *(&v115 + 1), v116, v117, v5, v4, v1[2], v1[3], v1[4], v1[5], v1[6], v1[7], v1[8], v1[9], v125);
      static ToolKitToolAssistantSchemaIdentifier.== infix(_:_:)(v55, v56, v57, v58, v59, v60, v61, v62, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, SBYTE1(v117), *v118, v119, v120[0], v120[1], v121, *(&v121 + 1), v122[0], v122[1], v123, v124, v125, v126, v127, v128);
      OUTLINED_FUNCTION_297_2(v63, v64, v65, v66, v67, v68, v69, v70, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, *(&v114 + 1), v115, *(&v115 + 1), v116, v117, v118[0]);
      OUTLINED_FUNCTION_9_12();
      sub_193448804(v71, v72, v73, v74);
      OUTLINED_FUNCTION_9_12();
      v79 = sub_193448804(v75, v76, v77, v78);
      OUTLINED_FUNCTION_225_3(v79, v80, v81, v82, v83, v84, v85, v86, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, *(&v114 + 1), v115, *(&v115 + 1), v116, v117, *v118, v119, v120[0], v120[1], v121, *(&v121 + 1), v122[0], v122[1], v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, __src[0]);
      OUTLINED_FUNCTION_9_12();
      sub_193448804(v87, v88, v89, v90);
      v91 = sub_193731678(&v100);
      OUTLINED_FUNCTION_290_1(v91, v92, v93, v94, v95, v96, v97, v98, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, *(&v114 + 1), v115, *(&v115 + 1), v116, v117, *v118, v119, v120[0], v120[1], v121, *(&v121 + 1), v122[0], v122[1], v123, v124);
      sub_193731678(&v110);
      *v118 = v2;
      v119 = v3;
      v99 = *(v0 + 32);
      *v120 = *(v0 + 16);
      v121 = v99;
      OUTLINED_FUNCTION_409();
      OUTLINED_FUNCTION_175();
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_285_2(v17, v18, v19, v20, v21, v22, v23, v24, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, *(&v114 + 1), v115, *(&v115 + 1), v116, v117, v118[0], v119, v120[0], v120[1], v121, *(&v121 + 1), v122[0], v122[1], v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, __src[0]);
    OUTLINED_FUNCTION_9_12();
    sub_193448804(v25, v26, v27, v28);
    OUTLINED_FUNCTION_9_12();
    v33 = sub_193448804(v29, v30, v31, v32);
    OUTLINED_FUNCTION_225_3(v33, v34, v35, v36, v37, v38, v39, v40, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, *(&v114 + 1), v115, *(&v115 + 1), v116, v117, *v118, v119, v120[0], v120[1], v121, *(&v121 + 1), v122[0], v122[1], v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, __src[0]);
    OUTLINED_FUNCTION_9_12();
    sub_193448804(v41, v42, v43, v44);
    sub_193731678(v118);
  }

  *__src = v2;
  v136 = v3;
  OUTLINED_FUNCTION_193_2();
  v143 = v5;
  v144 = v4;
  v53 = *(v1 + 2);
  v145 = *(v1 + 1);
  v146 = v53;
  v54 = *(v1 + 4);
  v147 = *(v1 + 3);
  v148 = v54;
  sub_19344E6DC(__src, &qword_1EAE41AB0, &qword_1939807B0);
LABEL_10:
  OUTLINED_FUNCTION_116();
}

uint64_t _s27IntelligencePlatformLibrary07ToolKitD18SystemTypeProtocolO15AssistantSchemaV9hashValueSivg_0()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_433(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  sub_193737464();
  return sub_19393CB00();
}

uint64_t sub_19372BA48()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = sub_19393CAB0();
  OUTLINED_FUNCTION_433(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  sub_193737464();
  return sub_19393CB00();
}

uint64_t _s27IntelligencePlatformLibrary07ToolKitD18RestrictionContextO15RepresentableAsV4hash4intoys6HasherVz_tF_0()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  result = MEMORY[0x193B18030](v2);
  if (v2)
  {
    v4 = v1 + 40;
    do
    {

      OUTLINED_FUNCTION_127();
      sub_19393C640();

      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.id.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.name.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.parameters.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.outputType.setter(uint64_t *a1)
{
  v2 = *a1;
  result = sub_193444060(*(v1 + 56));
  *(v1 + 56) = v2;
  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.outputResultName.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.sourceApplication.getter()
{
  OUTLINED_FUNCTION_342();
  v2 = memcpy(v1, (v0 + 80), 0x70uLL);
  v3 = OUTLINED_FUNCTION_455(v2, (v0 + 80));
  return OUTLINED_FUNCTION_394(v3, v4, &qword_1EAE41B10, &qword_193980818, v5);
}

void *ToolKitToolToolDefinition.Version1.sourceApplication.setter()
{
  OUTLINED_FUNCTION_108_13();
  memcpy(v1, (v0 + 80), 0x70uLL);
  sub_19344E6DC(&v3, &qword_1EAE41B10, &qword_193980818);
  return OUTLINED_FUNCTION_395((v0 + 80));
}

uint64_t ToolKitToolToolDefinition.Version1.descriptionSummary.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 192) = v2;
  *(v1 + 200) = v0;
  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.categories.setter(uint64_t a1)
{

  *(v1 + 208) = a1;
  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.searchKeywords.setter(uint64_t a1)
{

  *(v1 + 216) = a1;
  return result;
}

void ToolKitToolToolDefinition.Version1.deprecationDefinition.getter(uint64_t *a1@<X8>)
{
  v2 = v1[28];
  v3 = v1[29];
  v4 = v1[30];
  v5 = v1[31];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  sub_1934D1694(v2, v3, v4, v5);
}

__n128 ToolKitToolToolDefinition.Version1.deprecationDefinition.setter(uint64_t a1)
{
  sub_1934D16DC(v1[28], v1[29], v1[30], v1[31]);
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 14) = *a1;
  *(v1 + 15) = v4;
  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.requirements.setter(uint64_t a1)
{

  *(v1 + 256) = a1;
  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.flags.setter(uint64_t a1)
{

  *(v1 + 264) = a1;
  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.authenticationPolicy.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *(v1 + 272) = *result;
  *(v1 + 280) = v2;
  *(v1 + 281) = v3;
  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.sampleInvocations.setter(uint64_t a1)
{

  *(v1 + 288) = a1;
  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.systemProtocols.setter(uint64_t a1)
{

  *(v1 + 296) = a1;
  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.customIcon.setter(uint64_t *a1)
{
  v2 = *a1;
  result = sub_1934354B4(*(v1 + 304));
  *(v1 + 304) = v2;
  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.hiddenParameters.setter(uint64_t a1)
{

  *(v1 + 312) = a1;
  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.sourceContainer.getter()
{
  OUTLINED_FUNCTION_342();
  v2 = memcpy(v1, (v0 + 320), 0x70uLL);
  v3 = OUTLINED_FUNCTION_455(v2, (v0 + 320));
  return OUTLINED_FUNCTION_394(v3, v4, &qword_1EAE41A98, &qword_193980798, v5);
}

void *ToolKitToolToolDefinition.Version1.sourceContainer.setter()
{
  OUTLINED_FUNCTION_108_13();
  memcpy(v1, (v0 + 320), 0x70uLL);
  sub_19344E6DC(&v3, &qword_1EAE41A98, &qword_193980798);
  return OUTLINED_FUNCTION_395((v0 + 320));
}

uint64_t ToolKitToolToolDefinition.Version1.attributionContainer.getter()
{
  OUTLINED_FUNCTION_342();
  v2 = memcpy(v1, (v0 + 432), 0x70uLL);
  v3 = OUTLINED_FUNCTION_455(v2, (v0 + 432));
  return OUTLINED_FUNCTION_394(v3, v4, &qword_1EAE41A98, &qword_193980798, v5);
}

void *ToolKitToolToolDefinition.Version1.attributionContainer.setter()
{
  OUTLINED_FUNCTION_108_13();
  memcpy(v1, (v0 + 432), 0x70uLL);
  sub_19344E6DC(&v3, &qword_1EAE41A98, &qword_193980798);
  return OUTLINED_FUNCTION_395((v0 + 432));
}

uint64_t ToolKitToolToolDefinition.Version1.visibilityFlags.setter(uint64_t a1)
{

  *(v1 + 544) = a1;
  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.descriptionAttribution.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 552) = v2;
  *(v1 + 560) = v0;
  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.descriptionResult.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 568) = v2;
  *(v1 + 576) = v0;
  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.descriptionNote.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 584) = v2;
  *(v1 + 592) = v0;
  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.descriptionRequires.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 600) = v2;
  *(v1 + 608) = v0;
  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.backingLinkActionIdentifiers.setter(uint64_t a1)
{

  *(v1 + 616) = a1;
  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.additionalAttributionContainers.setter(uint64_t a1)
{

  *(v1 + 624) = a1;
  return result;
}

double ToolKitToolToolDefinition.Version1.init()@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 56) = 0xF000000000000007;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 80) = 0u;
  v2 = (a1 + 80);
  *(a1 + 224) = xmmword_1939526A0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 256;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 304) = 0xF000000000000007;
  v3 = (a1 + 552);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 25) = 0u;
  bzero((a1 + 320), 0xE0uLL);
  *(a1 + 41) = 1;
  v4 = MEMORY[0x1E69E7CC0];
  *(a1 + 48) = MEMORY[0x1E69E7CC0];
  sub_193444060(0xF000000000000007);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0xF000000000000007;
  memcpy(__dst, v2, sizeof(__dst));
  sub_19344E6DC(__dst, &qword_1EAE41B10, &qword_193980818);
  *v2 = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = v4;
  *(a1 + 216) = v4;
  sub_1934D16DC(*(a1 + 224), *(a1 + 232), *(a1 + 240), *(a1 + 248));
  *(a1 + 224) = xmmword_1939526A0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = v4;
  *(a1 + 264) = v4;
  *(a1 + 272) = 0;
  *(a1 + 280) = 256;
  *(a1 + 288) = v4;
  *(a1 + 296) = v4;
  sub_1934354B4(*(a1 + 304));
  *(a1 + 304) = 0xF000000000000007;
  *(a1 + 312) = v4;
  memcpy(v13, (a1 + 320), sizeof(v13));
  OUTLINED_FUNCTION_188_4();
  sub_19344E6DC(v5, v6, v7);
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  memcpy(v14, (a1 + 432), sizeof(v14));
  OUTLINED_FUNCTION_188_4();
  sub_19344E6DC(v8, v9, v10);
  result = 0.0;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = v4;
  *v3 = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = v4;
  *(a1 + 624) = v4;
  return result;
}

uint64_t sub_19372C874@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolToolDefinition.Version1.ToolType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19372C89C@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolToolDefinition.Version1.ToolType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19372C98C@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolToolDefinition.Version1.Flag.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19372C9B4@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolToolDefinition.Version1.Flag.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19372CAA4@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolToolDefinition.Version1.VisibilityFlag.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19372CACC@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolToolDefinition.Version1.VisibilityFlag.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19372CBBC@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolToolDefinition.Version1.AuthenticationPolicy.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19372CBE4@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolToolDefinition.Version1.AuthenticationPolicy.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.Parameter.key.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.Parameter.name.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.Parameter.description.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.Parameter.valueType.setter(uint64_t *a1)
{
  v2 = *a1;
  result = sub_193444060(*(v1 + 48));
  *(v1 + 48) = v2;
  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.Parameter.relationships.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.Parameter.sampleInvocations.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.Parameter.flags.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.Parameter.parentToolMetadata.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[10];
  v3 = v1[11];
  v4 = v1[12];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_1937379AC(v2, v3, v4);
}

__n128 ToolKitToolToolDefinition.Version1.Parameter.parentToolMetadata.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_i64[0];
  sub_19344B604(v1[10], v1[11], v1[12]);
  result = v4;
  *(v1 + 5) = v4;
  v1[12] = v2;
  return result;
}

void ToolKitToolToolDefinition.Version1.Parameter.BOOLeanMetadata.getter(uint64_t *a1@<X8>)
{
  v2 = v1[13];
  v3 = v1[14];
  v4 = v1[15];
  v5 = v1[16];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  sub_1934D1694(v2, v3, v4, v5);
}

__n128 ToolKitToolToolDefinition.Version1.Parameter.BOOLeanMetadata.setter(uint64_t a1)
{
  sub_1934D16DC(v1[13], v1[14], v1[15], v1[16]);
  result = *a1;
  *(v1 + 15) = *(a1 + 16);
  *(v1 + 13) = result;
  return result;
}

double ToolKitToolToolDefinition.Version1.Parameter.init()@<D0>(_OWORD *a1@<X8>)
{
  OUTLINED_FUNCTION_209_1(a1);
  v3 = OUTLINED_FUNCTION_114_12();
  sub_193444060(v3);
  v4 = MEMORY[0x1E69E7CC0];
  *(v1 + 48) = v2;
  *(v1 + 56) = v4;
  *(v1 + 64) = v4;
  *(v1 + 72) = v4;
  sub_19344B604(0, 0, 0);
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  *(v1 + 96) = 0;
  v5 = OUTLINED_FUNCTION_107_13();
  sub_1934D16DC(v5, v6, v7, v8);
  result = 0.0;
  *(v1 + 104) = xmmword_1939526A0;
  *(v1 + 120) = 0;
  *(v1 + 128) = 0;
  return result;
}

uint64_t sub_19372D0A8@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolToolDefinition.Version1.Parameter.ParameterFlags.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19372D0D0@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolToolDefinition.Version1.Parameter.ParameterFlags.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.Parameter.Relationship.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_228_4(a1);
  v3 = OUTLINED_FUNCTION_114_12();
  result = sub_193444060(v3);
  *(v1 + 16) = v2;
  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan.values.setter()
{
  OUTLINED_FUNCTION_301_1();

  *v1 = v0;
  return result;
}

IntelligencePlatformLibrary::ToolKitToolToolDefinition::Version1::Parameter::Relationship::Relation::GreaterThan __swiftcall ToolKitToolToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan.init()()
{
  *v0 = MEMORY[0x1E69E7CC0];
  *(v0 + 8) = 2;
  return result;
}

BOOL _s27IntelligencePlatformLibrary07ToolKitdD10DefinitionV8Version1V9ParameterV12RelationshipV8RelationO11GreaterThanV2eeoiySbAM_AMtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  OUTLINED_FUNCTION_49_21();
  v5 = OUTLINED_FUNCTION_102_8(v4);
  if ((sub_1937148A0(v5, v6, v7) & 1) == 0)
  {
    return 0;
  }

  if (v2 != 2)
  {
    return v3 != 2 && ((v3 ^ v2) & 1) == 0;
  }

  return v3 == 2;
}

uint64_t _s27IntelligencePlatformLibrary07ToolKitdD10DefinitionV8Version1V9ParameterV12RelationshipV8RelationO11GreaterThanV4hash4intoys6HasherVz_tF_0()
{
  v1 = *(v0 + 8);
  OUTLINED_FUNCTION_48_21();
  sub_193737244(v2);
  if (v1 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  return sub_19393CAD0();
}

uint64_t _s27IntelligencePlatformLibrary07ToolKitdD10DefinitionV8Version1V9ParameterV12RelationshipV8RelationO11GreaterThanV9hashValueSivg_0()
{
  v1 = *(v0 + 8);
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_48_21();
  v10 = OUTLINED_FUNCTION_99(v2, v3, v4, v5, v6, v7, v8, v9, v12, v13);
  sub_193737244(v10);
  if (v1 != 2)
  {
    OUTLINED_FUNCTION_123();
  }

  sub_19393CAD0();
  return sub_19393CB00();
}

uint64_t sub_19372D49C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  OUTLINED_FUNCTION_180_7();
  v5 = sub_19393CAB0();
  v13 = OUTLINED_FUNCTION_432(v5, v6, v7, v8, v9, v10, v11, v12, v15, v16);
  a4(v13);
  return sub_19393CB00();
}

BOOL static ToolKitToolToolDefinition.Version1.Parameter.Relationship.== infix(_:_:)()
{
  OUTLINED_FUNCTION_436();
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  if (v5)
  {
    if (!v3)
    {
      return 0;
    }

    OUTLINED_FUNCTION_155(v1);
    v8 = v8 && v6 == v7;
    if (!v8 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  OUTLINED_FUNCTION_147_8();
  if (!v8)
  {
    OUTLINED_FUNCTION_287_2();
    if (!v11)
    {
      v14 = OUTLINED_FUNCTION_44_22();
      v22 = OUTLINED_FUNCTION_143_7(v14, v15, v16, v17, v18, v19, v20, v21, v4, v43);
      v24 = static ToolKitToolToolDefinition.Version1.Parameter.Relationship.Relation.== infix(_:_:)(v22, v23);
      v25 = v24;
      OUTLINED_FUNCTION_126_9(v24, v26, v27, v28, v29, v30, v31, v32, v41);

      OUTLINED_FUNCTION_98_15(v33, v34, v35, v36, v37, v38, v39, v40, v42, v44);

      sub_193444060(v0);
      return v25;
    }

    OUTLINED_FUNCTION_44_22();

LABEL_17:
    v12 = OUTLINED_FUNCTION_267_2();
    sub_193444060(v12);
    return 0;
  }

  v10 = v9 & ~v4;
  OUTLINED_FUNCTION_120_8();
  if (v10)
  {
    goto LABEL_17;
  }

  sub_193444060(v0);
  return 1;
}

uint64_t ToolKitToolToolDefinition.Version1.Parameter.Relationship.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  OUTLINED_FUNCTION_119();
  if (v1)
  {
    v3 = sub_19393CAD0();
    OUTLINED_FUNCTION_38_30(v3, v4, v5, v6, v7, v8, v9, v10, v29, v31);
    sub_19393C640();
  }

  else
  {
    sub_19393CAD0();
  }

  OUTLINED_FUNCTION_251_0();
  if (v11)
  {
    OUTLINED_FUNCTION_456();
  }

  else
  {
    OUTLINED_FUNCTION_123();

    OUTLINED_FUNCTION_298_1(v12, v13, v14, v15, v16, v17, v18, v19, v2, v31);
    v20 = ToolKitToolToolDefinition.Version1.Parameter.Relationship.Relation.hash(into:)();
    OUTLINED_FUNCTION_126_9(v20, v21, v22, v23, v24, v25, v26, v27, v30);
  }

  return sub_19393CB00();
}

uint64_t sub_19372D7EC()
{
  OUTLINED_FUNCTION_62_20();
  v0 = sub_19393CAB0();
  v8 = OUTLINED_FUNCTION_134_0(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11);
  ToolKitToolToolDefinition.Version1.Parameter.Relationship.hash(into:)(v8);
  return sub_19393CB00();
}

uint64_t _s27IntelligencePlatformLibrary07ToolKitD17IdSearchPredicateV2eeoiySbAC_ACtFZ_0()
{
  OUTLINED_FUNCTION_436();
  v2 = *(v1 + 8);
  if (v3)
  {
    if (v2)
    {
      OUTLINED_FUNCTION_155(v0);
      v6 = v6 && v4 == v5;
      if (v6 || (sub_19393CA30() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v2)
  {
    return 0;
  }

LABEL_8:
  v7 = OUTLINED_FUNCTION_13_0();

  return sub_19344FC94(v7, v8);
}

uint64_t _s27IntelligencePlatformLibrary07ToolKitD17IdSearchPredicateV4hash4intoys6HasherVz_tF_0(uint64_t a1)
{
  v3 = *(v1 + 16);
  if (*(v1 + 8))
  {
    sub_19393CAD0();
    OUTLINED_FUNCTION_1_55();
    sub_19393C640();
  }

  else
  {
    sub_19393CAD0();
  }

  return sub_1934D11C8(a1, v3);
}

uint64_t _s27IntelligencePlatformLibrary07ToolKitD17IdSearchPredicateV9hashValueSivg_0()
{
  v1 = *(v0 + 8);
  OUTLINED_FUNCTION_119();
  if (v1)
  {
    sub_19393CAD0();
    OUTLINED_FUNCTION_175();
    v2 = sub_19393C640();
  }

  else
  {
    v2 = sub_19393CAD0();
  }

  v10 = OUTLINED_FUNCTION_99(v2, v3, v4, v5, v6, v7, v8, v9, v13, v14);
  sub_1934D11C8(v10, v11);
  return sub_19393CB00();
}

uint64_t sub_19372D9BC()
{
  v1 = *(v0 + 8);
  sub_19393CAB0();
  if (v1)
  {
    sub_19393CAD0();
    OUTLINED_FUNCTION_175();
    v2 = sub_19393C640();
  }

  else
  {
    v2 = sub_19393CAD0();
  }

  v10 = OUTLINED_FUNCTION_99(v2, v3, v4, v5, v6, v7, v8, v9, v13, v14);
  sub_1934D11C8(v10, v11);
  return sub_19393CB00();
}

void static ToolKitToolToolDefinition.Version1.Parameter.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  OUTLINED_FUNCTION_271_1();
  a49 = v50;
  a50 = v52;
  v54 = v53;
  v55 = v51[1];
  v218 = v51[2];
  v56 = v51[3];
  v58 = v51[5];
  v57 = v51[6];
  v59 = v51[8];
  v61 = v51[9];
  v60 = v51[10];
  v62 = v51[11];
  v63 = v51[12];
  v64 = v51[13];
  v65 = v51[14];
  v214 = v51[15];
  v66 = v51[16];
  v67 = v54[1];
  v68 = v54[3];
  v215 = v54[4];
  v216 = v54[2];
  v69 = v54[6];
  v221 = v54[5];
  v70 = v54[8];
  v71 = v54[9];
  v72 = v54[10];
  v73 = v54[11];
  v74 = v54[12];
  v76 = v54[13];
  v75 = v54[14];
  v77 = v54[15];
  v213 = v54[16];
  if (!v55)
  {
    v212 = v51[4];
    if (v67)
    {
      goto LABEL_56;
    }

LABEL_10:
    if (v56)
    {
      if (!v68)
      {
        goto LABEL_56;
      }

      if (v218 != v216 || v56 != v68)
      {
        v197 = v61;
        v201 = v71;
        v193 = v66;
        v86 = v62;
        v219 = v60;
        v184 = v74;
        v187 = v64;
        v189 = v73;
        v87 = v63;
        v88 = v72;
        v89 = v57;
        v205 = v70;
        v209 = v59;
        v90 = sub_19393CA30();
        v71 = v201;
        v70 = v205;
        v59 = v209;
        v57 = v89;
        v66 = v193;
        v61 = v197;
        v72 = v88;
        v63 = v87;
        v73 = v189;
        v74 = v184;
        v64 = v187;
        v60 = v219;
        v62 = v86;
        if ((v90 & 1) == 0)
        {
          goto LABEL_56;
        }
      }
    }

    else if (v68)
    {
      goto LABEL_56;
    }

    if (v58)
    {
      if (!v221)
      {
        goto LABEL_56;
      }

      if (v212 != v215 || v58 != v221)
      {
        v198 = v61;
        v202 = v71;
        v194 = v66;
        v92 = v62;
        v93 = v60;
        v185 = v74;
        v188 = v64;
        v190 = v73;
        v94 = v63;
        v95 = v72;
        v96 = v57;
        v206 = v70;
        v210 = v59;
        v97 = sub_19393CA30();
        v71 = v202;
        v70 = v206;
        v59 = v210;
        v57 = v96;
        v66 = v194;
        v61 = v198;
        v72 = v95;
        v63 = v94;
        v73 = v190;
        v74 = v185;
        v64 = v188;
        v60 = v93;
        v62 = v92;
        if ((v97 & 1) == 0)
        {
          goto LABEL_56;
        }
      }
    }

    else if (v221)
    {
      goto LABEL_56;
    }

    if ((~v57 & 0xF000000000000007) != 0)
    {
      a34 = v57;
      if ((~v69 & 0xF000000000000007) != 0)
      {
        v203 = v71;
        v207 = v70;
        v211 = v59;
        v195 = v66;
        v199 = v61;
        v220 = v60;
        v222 = v72;
        v217 = v63;
        v179 = v76;
        v181 = v77;
        v98 = v62;
        v177 = v65;
        v100 = v57;
        sub_193437C90(v57);
        OUTLINED_FUNCTION_258_2();
        v101 = static ToolKitToolTypeInstance.== infix(_:_:)();

        sub_193444060(v100);
        if ((v101 & 1) == 0)
        {
          goto LABEL_56;
        }

LABEL_35:
        v102 = OUTLINED_FUNCTION_208();
        if ((sub_193713D4C(v102, v103) & 1) == 0 || (sub_1937139C8(v211, v207) & 1) == 0 || (sub_193714598(v199, v203, ToolKitToolToolDefinition.Version1.Parameter.ParameterFlags.rawValue.getter, v104) & 1) == 0)
        {
          goto LABEL_56;
        }

        if (v217)
        {
          if (v74)
          {
            if (v98)
            {
              if (!v73 || (v220 == v222 ? (v105 = v98 == v73) : (v105 = 0), !v105 && (sub_19393CA30() & 1) == 0))
              {
                v106 = v98;
LABEL_54:
                sub_1937379AC(v220, v106, v217);
                OUTLINED_FUNCTION_146();
                sub_1937379AC(v122, v123, v124);
                sub_1937379AC(v220, v106, v217);
                OUTLINED_FUNCTION_146();
                sub_19344B604(v125, v126, v127);

                OUTLINED_FUNCTION_194_3();
                goto LABEL_55;
              }
            }

            else if (v73)
            {
              v106 = 0;
              goto LABEL_54;
            }

            v128 = OUTLINED_FUNCTION_82();
            v130 = sub_19344FC94(v128, v129);
            v131 = OUTLINED_FUNCTION_145_9();
            sub_1937379AC(v131, v132, v133);
            OUTLINED_FUNCTION_146();
            sub_1937379AC(v134, v135, v136);
            v137 = OUTLINED_FUNCTION_145_9();
            sub_1937379AC(v137, v138, v139);
            OUTLINED_FUNCTION_146();
            sub_19344B604(v140, v141, v142);

            v143 = OUTLINED_FUNCTION_145_9();
            sub_19344B604(v143, v144, v145);
            if ((v130 & 1) == 0)
            {
              goto LABEL_56;
            }

LABEL_60:
            if (v177 == 1)
            {
              v146 = v64;
              v147 = v75;
              v148 = v64;
              v149 = v195;
              sub_1934D1694(v146, 1, v214, v195);
              v150 = v179;
              if (v147 == 1)
              {
                v151 = OUTLINED_FUNCTION_37_7();
                sub_1934D1694(v151, v152, v181, v213);
                sub_1934D16DC(v148, 1, v214, v195);
                goto LABEL_56;
              }

              v155 = v181;
              sub_1934D1694(v179, v147, v181, v213);
            }

            else
            {
              a34 = v64;
              a35 = v177;
              a36 = v214;
              a37 = v195;
              v150 = v179;
              if (v75 != 1)
              {
                static ToolKitToolTypedValue.DeferredValue.Storage.ActionParameterDefaultValueStorage.== infix(_:_:)(&a34);
                OUTLINED_FUNCTION_253_2();
                sub_1934D1694(v162, v163, v164, v165);
                OUTLINED_FUNCTION_333();
                sub_1934D1694(v166, v167, v168, v169);
                OUTLINED_FUNCTION_10_0();
                sub_1934D1694(v170, v171, v172, v195);

                OUTLINED_FUNCTION_10_0();
                sub_1934D16DC(v173, v174, v175, v195);
                goto LABEL_56;
              }

              v153 = v64;
              v147 = 1;
              v149 = v195;
              sub_1934D1694(v153, v177, v214, v195);
              v154 = OUTLINED_FUNCTION_37_7();
              v155 = v181;
              sub_1934D1694(v154, v156, v181, v213);
              v157 = OUTLINED_FUNCTION_1_55();
              sub_1934D1694(v157, v158, v159, v195);
            }

            v160 = OUTLINED_FUNCTION_24_1();
            sub_1934D16DC(v160, v161, v214, v149);
            sub_1934D16DC(v150, v147, v155, v213);
            goto LABEL_56;
          }

          OUTLINED_FUNCTION_194_3();
          sub_1937379AC(v110, v111, v112);
          sub_1937379AC(v222, v73, 0);
          OUTLINED_FUNCTION_194_3();
          sub_1937379AC(v113, v114, v115);
        }

        else
        {
          sub_1937379AC(v220, v98, 0);
          if (!v74)
          {
            sub_1937379AC(v222, v73, 0);
            sub_19344B604(v220, v98, 0);
            goto LABEL_60;
          }

          OUTLINED_FUNCTION_146();
          sub_1937379AC(v107, v108, v109);
        }

        OUTLINED_FUNCTION_194_3();
        sub_19344B604(v116, v117, v118);
        OUTLINED_FUNCTION_146();
LABEL_55:
        sub_19344B604(v119, v120, v121);
        goto LABEL_56;
      }

      v99 = v57;
      sub_193437C90(v57);
      OUTLINED_FUNCTION_161_7(v69);
    }

    else
    {
      v203 = v71;
      v207 = v70;
      v211 = v59;
      v195 = v66;
      v199 = v61;
      v220 = v60;
      v222 = v72;
      v217 = v63;
      v179 = v76;
      v181 = v77;
      v98 = v62;
      v177 = v65;
      v99 = v57;
      sub_193437C90(v57);
      sub_193437C90(v69);
      if ((~v69 & 0xF000000000000007) == 0)
      {
        sub_193444060(v99);
        goto LABEL_35;
      }
    }

    sub_193444060(v99);
    sub_193444060(v69);
    goto LABEL_56;
  }

  if (v67)
  {
    v212 = v51[4];
    if (*v51 == *v54 && v55 == v67)
    {
      goto LABEL_10;
    }

    v196 = v51[9];
    v200 = v54[9];
    v178 = v54[13];
    v180 = v54[15];
    v191 = v54[14];
    v176 = v51[14];
    v183 = v54[12];
    v186 = v51[13];
    v192 = v51[16];
    v79 = v51[11];
    v80 = v51[10];
    v81 = v51[12];
    v82 = v54[10];
    v83 = v51[6];
    v204 = v54[8];
    v208 = v51[8];
    v182 = v54[6];
    v84 = sub_19393CA30();
    v71 = v200;
    v70 = v204;
    v59 = v208;
    v57 = v83;
    v66 = v192;
    v61 = v196;
    v72 = v82;
    v63 = v81;
    v69 = v182;
    v74 = v183;
    v60 = v80;
    v62 = v79;
    v65 = v176;
    v76 = v178;
    v64 = v186;
    v75 = v191;
    v77 = v180;
    if (v84)
    {
      goto LABEL_10;
    }
  }

LABEL_56:
  OUTLINED_FUNCTION_269_2();
}

void ToolKitToolToolDefinition.Version1.Parameter.hash(into:)()
{
  OUTLINED_FUNCTION_231_3();
  v1 = v0[3];
  v2 = v0[5];
  v3 = v0[12];
  v13 = v0[11];
  v14 = v0[14];
  v4 = v0[16];
  if (v0[1])
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_187();
    sub_19393C640();
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_6:
    OUTLINED_FUNCTION_104_0();
    if (v2)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  OUTLINED_FUNCTION_104_0();
  if (!v1)
  {
    goto LABEL_6;
  }

LABEL_3:
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_97_10();
  sub_19393C640();
  if (v2)
  {
LABEL_4:
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_263_1();
    sub_19393C640();
    goto LABEL_8;
  }

LABEL_7:
  OUTLINED_FUNCTION_104_0();
LABEL_8:
  OUTLINED_FUNCTION_380();
  if (v5)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();

    ToolKitToolTypeInstance.hash(into:)();
  }

  v6 = OUTLINED_FUNCTION_261_0();
  sub_193736820(v6, v7);
  v8 = OUTLINED_FUNCTION_439();
  sub_1937364D0(v8, v9);
  OUTLINED_FUNCTION_54_15();
  sub_193736ED4();
  if (v3)
  {
    OUTLINED_FUNCTION_103_0();
    if (v13)
    {
      OUTLINED_FUNCTION_103_0();
      OUTLINED_FUNCTION_259_1();
      sub_19393C640();
    }

    else
    {
      OUTLINED_FUNCTION_104_0();
    }

    v10 = OUTLINED_FUNCTION_114_0();
    sub_1934D11C8(v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (v14 == 1)
  {
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_103_0();
  if (!v14)
  {
    OUTLINED_FUNCTION_104_0();
    if (v4)
    {
      goto LABEL_20;
    }

LABEL_24:
    OUTLINED_FUNCTION_104_0();
    OUTLINED_FUNCTION_196();
    return;
  }

  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_345_0();
  sub_19393C640();
  if (!v4)
  {
    goto LABEL_24;
  }

LABEL_20:
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_186_3();
  OUTLINED_FUNCTION_196();

  sub_19393C640();
}

uint64_t sub_19372E36C()
{
  OUTLINED_FUNCTION_149_9();
  v0(v2);
  return sub_19393CB00();
}

uint64_t sub_19372E3C8()
{
  OUTLINED_FUNCTION_320_0();
  v0(v2);
  return sub_19393CB00();
}

uint64_t sub_19372E434@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolToolDefinition.Version1.ToolIcon.ToolSymbolIconStyle.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19372E45C@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolToolDefinition.Version1.ToolIcon.ToolSymbolIconStyle.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.ToolIcon.ToolSymbolIcon.name.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.ToolIcon.ToolSymbolIcon.foreground.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.ToolIcon.ToolSymbolIcon.background.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

double ToolKitToolToolDefinition.Version1.ToolIcon.ToolSymbolIcon.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 256;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  return result;
}

void static ToolKitToolToolDefinition.Version1.ToolIcon.ToolSymbolIcon.== infix(_:_:)()
{
  OUTLINED_FUNCTION_329_0();
  v1 = *(v0 + 25);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v7 = *(v6 + 8);
  v8 = *(v6 + 25);
  v10 = *(v6 + 32);
  v9 = *(v6 + 40);
  v11 = *(v6 + 48);
  v12 = *(v6 + 56);
  if (*(v0 + 8))
  {
    if (!v7)
    {
      goto LABEL_31;
    }

    OUTLINED_FUNCTION_155(v0);
    v15 = v15 && v13 == v14;
    if (!v15)
    {
      v37 = v11;
      v38 = v3;
      v36 = v12;
      v16 = v5;
      v17 = v4;
      v18 = v2;
      v19 = v9;
      v20 = v10;
      v21 = sub_19393CA30();
      v10 = v20;
      v9 = v19;
      v2 = v18;
      v4 = v17;
      v5 = v16;
      v12 = v36;
      v11 = v37;
      v3 = v38;
      if ((v21 & 1) == 0)
      {
        goto LABEL_31;
      }
    }
  }

  else if (v7)
  {
    goto LABEL_31;
  }

  if (v1)
  {
    if ((v8 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (v8)
    {
      goto LABEL_31;
    }

    OUTLINED_FUNCTION_331_0();
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v30 = ToolKitToolToolDefinition.Version1.ToolIcon.ToolSymbolIconStyle.rawValue.getter();
    v31 = ToolKitToolToolDefinition.Version1.ToolIcon.ToolSymbolIconStyle.rawValue.getter();
    v10 = v29;
    v9 = v27;
    v2 = v25;
    v4 = v23;
    if (v30 != v31)
    {
      goto LABEL_31;
    }
  }

  if (v3)
  {
    if (!v9)
    {
      goto LABEL_31;
    }

    if (v2 != v10 || v3 != v9)
    {
      v33 = v4;
      v34 = sub_19393CA30();
      v4 = v33;
      if ((v34 & 1) == 0)
      {
        goto LABEL_31;
      }
    }
  }

  else if (v9)
  {
    goto LABEL_31;
  }

  if (v5 && v12 && (v4 != v11 || v5 != v12))
  {
    OUTLINED_FUNCTION_146();
    sub_19393CA30();
  }

LABEL_31:
  OUTLINED_FUNCTION_328();
}

void ToolKitToolToolDefinition.Version1.ToolIcon.ToolSymbolIcon.hash(into:)()
{
  OUTLINED_FUNCTION_108_0();
  v1 = *(v0 + 25);
  v2 = *(v0 + 40);
  v3 = *(v0 + 56);
  if (*(v0 + 8))
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_262_0();
    sub_19393C640();
    if (v1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
    if (v1)
    {
LABEL_3:
      OUTLINED_FUNCTION_104_0();
      if (v2)
      {
        goto LABEL_4;
      }

LABEL_10:
      OUTLINED_FUNCTION_104_0();
      if (v3)
      {
        goto LABEL_5;
      }

LABEL_11:
      OUTLINED_FUNCTION_104_0();
      OUTLINED_FUNCTION_107();
      return;
    }
  }

  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_177_1();
  v5 = ToolKitToolToolDefinition.Version1.ToolIcon.ToolSymbolIconStyle.rawValue.getter();
  MEMORY[0x193B18030](v5);
  if (!v2)
  {
    goto LABEL_10;
  }

LABEL_4:
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_10_0();
  sub_19393C640();
  if (!v3)
  {
    goto LABEL_11;
  }

LABEL_5:
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_186_3();
  OUTLINED_FUNCTION_107();

  sub_19393C640();
}

uint64_t _s27IntelligencePlatformLibrary07ToolKitD10TypedValueO08DeferredG0V7StorageO022ActionParameterDefaultgI0V2eeoiySbAI_AItFZ_0()
{
  OUTLINED_FUNCTION_436();
  v2 = *(v1 + 24);
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  if (v7)
  {
    if (!v4)
    {
      return 0;
    }

    OUTLINED_FUNCTION_155(v1);
    v10 = v10 && v8 == v9;
    if (!v10 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  if (v2)
  {
    if (v6)
    {
      if (v0 == v5 && v2 == v6)
      {
        return 1;
      }

      OUTLINED_FUNCTION_13_0();
      OUTLINED_FUNCTION_46_14();
      if (sub_19393CA30())
      {
        return 1;
      }
    }
  }

  else if (!v6)
  {
    return 1;
  }

  return 0;
}

uint64_t _s27IntelligencePlatformLibrary07ToolKitD10TypedValueO08DeferredG0V7StorageO022ActionParameterDefaultgI0V4hash4intoys6HasherVz_tF_0()
{
  v1 = *(v0 + 24);
  if (!*(v0 + 8))
  {
    OUTLINED_FUNCTION_302();
    if (v1)
    {
      goto LABEL_3;
    }

    return OUTLINED_FUNCTION_302();
  }

  OUTLINED_FUNCTION_293();
  OUTLINED_FUNCTION_32_4();
  sub_19393C640();
  if (!v1)
  {
    return OUTLINED_FUNCTION_302();
  }

LABEL_3:
  OUTLINED_FUNCTION_293();
  OUTLINED_FUNCTION_15_1();

  return sub_19393C640();
}

void static ToolKitToolToolDefinition.Version1.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v1 = v0;
  v3 = v2;
  v4 = *v2;
  v5 = v2[1];
  v238 = v2[2];
  v242 = v2[3];
  v233 = v2[4];
  v232 = *(v2 + 40);
  LODWORD(v241) = *(v2 + 41);
  v235 = v2[6];
  v229 = v2[7];
  v225 = v2[8];
  v227 = v2[9];
  memcpy(__dst, v2 + 10, sizeof(__dst));
  v217 = v3[24];
  v219 = v3[26];
  v215 = v3[27];
  v243 = v3[28];
  v221 = v3[25];
  v222 = v3[30];
  v223 = v3[31];
  v208 = v3[32];
  v209 = v3[29];
  v206 = v3[33];
  v200 = v3[34];
  v199 = *(v3 + 280);
  v204 = *(v3 + 281);
  v202 = v3[36];
  v195 = v3[37];
  v6 = v3[38];
  v193 = v3[39];
  memcpy(v259, v3 + 40, sizeof(v259));
  memcpy(v260, v3 + 54, sizeof(v260));
  v181 = v3[68];
  v182 = v3[70];
  v183 = v3[69];
  v184 = v3[72];
  v185 = v3[71];
  v186 = v3[74];
  v187 = v3[73];
  v188 = v3[76];
  v189 = v3[75];
  v190 = v3[77];
  v191 = v3[78];
  v8 = *v1;
  v7 = *(v1 + 8);
  v9 = *(v1 + 24);
  v237 = *(v1 + 16);
  v231 = *(v1 + 32);
  v230 = *(v1 + 40);
  v239 = *(v1 + 41);
  v234 = *(v1 + 48);
  v228 = *(v1 + 56);
  v224 = *(v1 + 64);
  v226 = *(v1 + 72);
  memcpy(__src, (v1 + 80), sizeof(__src));
  v216 = *(v1 + 192);
  v220 = *(v1 + 200);
  v218 = *(v1 + 208);
  v213 = *(v1 + 232);
  v214 = *(v1 + 216);
  v210 = *(v1 + 224);
  v211 = *(v1 + 240);
  v212 = *(v1 + 248);
  v207 = *(v1 + 256);
  v205 = *(v1 + 264);
  v198 = *(v1 + 272);
  v197 = *(v1 + 280);
  v203 = *(v1 + 281);
  v201 = *(v1 + 288);
  v194 = *(v1 + 296);
  v196 = *(v1 + 304);
  v192 = *(v1 + 312);
  memcpy(v262, (v1 + 320), sizeof(v262));
  memcpy(v263, (v1 + 432), sizeof(v263));
  v10 = *(v1 + 544);
  v11 = *(v1 + 560);
  v12 = *(v1 + 568);
  v13 = *(v1 + 600);
  v14 = *(v1 + 624);
  if (!v5)
  {
    if (v7)
    {
      goto LABEL_32;
    }

LABEL_10:
    if (v242)
    {
      v19 = v243;
      if (!v9)
      {
        goto LABEL_32;
      }

      if (v238 != v237 || v242 != v9)
      {
        v8 = v13;
        v1 = v11;
        v9 = v14;
        v19 = v243;
        if ((sub_19393CA30() & 1) == 0)
        {
          goto LABEL_32;
        }
      }
    }

    else
    {
      v19 = v243;
      if (v9)
      {
        goto LABEL_32;
      }
    }

    if (v241)
    {
      OUTLINED_FUNCTION_251_1();
      if ((v239 & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v239)
      {
        goto LABEL_32;
      }

      OUTLINED_FUNCTION_251_1();
      *v252 = v233;
      v252[8] = v232 & 1;
      *v248 = v231;
      LOBYTE(v249) = v230 & 1;
      v21 = v11;
      v22 = v12;
      v23 = ToolKitToolToolDefinition.Version1.ToolType.rawValue.getter();
      v19 = v243;
      v15 = v23 == ToolKitToolToolDefinition.Version1.ToolType.rawValue.getter();
      v12 = v22;
      v11 = v21;
      if (!v15)
      {
        goto LABEL_32;
      }
    }

    if ((sub_193713748(v235, v234) & 1) == 0)
    {
      goto LABEL_32;
    }

    if ((~v229 & 0xF000000000000007) != 0)
    {
      *v252 = v229;
      v24 = v228;
      if ((~v228 & 0xF000000000000007) != 0)
      {
        v240 = v12;
        *v248 = v228;
        OUTLINED_FUNCTION_446(v229);
        sub_193437C90(v229);
        v25 = static ToolKitToolTypeInstance.== infix(_:_:)();

        sub_193444060(v229);
        if ((v25 & 1) == 0)
        {
          goto LABEL_32;
        }

LABEL_34:
        if (v227)
        {
          if (!v226)
          {
            goto LABEL_32;
          }

          v26 = v225 == v224 && v227 == v226;
          if (!v26 && (sub_19393CA30() & 1) == 0)
          {
            goto LABEL_32;
          }
        }

        else if (v226)
        {
          goto LABEL_32;
        }

        memcpy(v257, __dst, sizeof(v257));
        v27 = __dst[13];
        memcpy(v256, __src, sizeof(v256));
        v28 = __src[13];
        if (__dst[13])
        {
          memcpy(v252, __dst, sizeof(v252));
          v253 = __dst[13];
          OUTLINED_FUNCTION_358_1(v248);
          if (v28)
          {
            v180 = v6;
            memcpy(v246, __src, sizeof(v246));
            v247 = v28;
            OUTLINED_FUNCTION_420();
            sub_193448804(v29, v30, v31, v32);
            OUTLINED_FUNCTION_420();
            sub_193448804(v33, v34, v35, v36);
            OUTLINED_FUNCTION_332_0();
            OUTLINED_FUNCTION_420();
            sub_193448804(v37, v38, v39, v40);
            static ToolKitToolAppDefinition.== infix(_:_:)();
            v42 = v41;
            OUTLINED_FUNCTION_356_1();
            sub_1937379F0(v244);
            OUTLINED_FUNCTION_355_1();
            sub_1937379F0(v245);
            OUTLINED_FUNCTION_357_0();
            v247 = v27;
            sub_19344E6DC(v246, &qword_1EAE41B10, &qword_193980818);
            if ((v42 & 1) == 0)
            {
              goto LABEL_32;
            }

LABEL_53:
            if (v221)
            {
              v55 = v222;
              v56 = v223;
              if (!v220)
              {
                goto LABEL_32;
              }

              v57 = v217 == v216 && v221 == v220;
              if (!v57 && (sub_19393CA30() & 1) == 0)
              {
                goto LABEL_32;
              }
            }

            else
            {
              v55 = v222;
              v56 = v223;
              if (v220)
              {
                goto LABEL_32;
              }
            }

            if ((sub_193713858(v219, v218) & 1) == 0 || (sub_19344FC94(v215, v214) & 1) == 0)
            {
              goto LABEL_32;
            }

            v236 = v8;
            if (v209 == 1)
            {
              OUTLINED_FUNCTION_173();
              OUTLINED_FUNCTION_75_0();
              sub_1934D1694(v58, v59, v60, v61);
              if (v213 == 1)
              {
                sub_1934D1694(v210, 1, v211, v212);
                OUTLINED_FUNCTION_173();
                OUTLINED_FUNCTION_75_0();
                sub_1934D16DC(v62, v63, v64, v65);
                goto LABEL_72;
              }

              sub_1934D1694(v210, v213, v211, v212);
            }

            else
            {
              *v252 = v19;
              *&v252[8] = v209;
              *&v252[16] = v55;
              *&v252[24] = v56;
              if (v213 != 1)
              {
                *v248 = v210;
                v249 = v213;
                v250 = v211;
                v251 = v212;
                v82 = static ToolKitToolTypedValue.DeferredValue.Storage.ActionParameterDefaultValueStorage.== infix(_:_:)(v252);
                v83 = OUTLINED_FUNCTION_61_21();
                sub_1934D1694(v83, v84, v85, v86);
                OUTLINED_FUNCTION_146();
                sub_1934D1694(v87, v88, v89, v212);
                v90 = OUTLINED_FUNCTION_61_21();
                sub_1934D1694(v90, v91, v92, v93);

                v94 = OUTLINED_FUNCTION_61_21();
                sub_1934D16DC(v94, v95, v96, v97);
                if ((v82 & 1) == 0)
                {
                  goto LABEL_32;
                }

LABEL_72:
                if ((sub_193713908(v208, v207) & 1) == 0 || (sub_193714598(v206, v205, ToolKitToolToolDefinition.Version1.Flag.rawValue.getter, v98) & 1) == 0)
                {
                  goto LABEL_32;
                }

                if (v204)
                {
                  if ((v203 & 1) == 0)
                  {
                    goto LABEL_32;
                  }
                }

                else
                {
                  if (v203)
                  {
                    goto LABEL_32;
                  }

                  *v252 = v200;
                  v252[8] = v199 & 1;
                  *v248 = v198;
                  LOBYTE(v249) = v197 & 1;
                  v99 = ToolKitToolToolDefinition.Version1.AuthenticationPolicy.rawValue.getter();
                  if (v99 != ToolKitToolToolDefinition.Version1.AuthenticationPolicy.rawValue.getter())
                  {
                    goto LABEL_32;
                  }
                }

                if ((sub_1937139C8(v202, v201) & 1) == 0 || !sub_193713B7C(v195, v194))
                {
                  goto LABEL_32;
                }

                if ((~v180 & 0xF000000000000007) != 0)
                {
                  *v252 = v180;
                  if ((~v196 & 0xF000000000000007) != 0)
                  {
                    *v248 = v196;
                    sub_193438388(v180);
                    sub_193438388(v196);
                    sub_193438388(v180);
                    v100 = static ToolKitToolToolDefinition.Version1.ToolIcon.== infix(_:_:)(v252, v248);

                    sub_1934354B4(v180);
                    if ((v100 & 1) == 0)
                    {
                      goto LABEL_32;
                    }

LABEL_88:
                    if ((sub_193713748(v193, v192) & 1) == 0)
                    {
                      goto LABEL_32;
                    }

                    memcpy(v257, v259, sizeof(v257));
                    v101 = v259[13];
                    memcpy(v256, v262, sizeof(v256));
                    v102 = v262[13];
                    if (v259[13])
                    {
                      memcpy(v252, v259, sizeof(v252));
                      v253 = v259[13];
                      OUTLINED_FUNCTION_358_1(v248);
                      if (!v102)
                      {
LABEL_103:
                        OUTLINED_FUNCTION_358_1(v246);
                        OUTLINED_FUNCTION_9_12();
                        sub_193448804(v154, v155, v156, v157);
                        OUTLINED_FUNCTION_9_12();
                        sub_193448804(v158, v159, v160, v161);
                        OUTLINED_FUNCTION_332_0();
                        OUTLINED_FUNCTION_9_12();
                        sub_193448804(v162, v163, v164, v165);
                        sub_193713244(v246);
                        goto LABEL_104;
                      }

                      memcpy(v246, v262, sizeof(v246));
                      v247 = v102;
                      OUTLINED_FUNCTION_9_12();
                      sub_193448804(v103, v104, v105, v106);
                      OUTLINED_FUNCTION_9_12();
                      sub_193448804(v107, v108, v109, v110);
                      OUTLINED_FUNCTION_332_0();
                      OUTLINED_FUNCTION_9_12();
                      sub_193448804(v111, v112, v113, v114);
                      static ToolKitToolContainerDefinition.== infix(_:_:)();
                      v116 = v115;
                      OUTLINED_FUNCTION_356_1();
                      sub_193713244(v244);
                      OUTLINED_FUNCTION_355_1();
                      sub_193713244(v245);
                      OUTLINED_FUNCTION_357_0();
                      v247 = v101;
                      OUTLINED_FUNCTION_175();
                      sub_19344E6DC(v117, v118, v119);
                      if ((v116 & 1) == 0)
                      {
                        goto LABEL_32;
                      }
                    }

                    else
                    {
                      if (v262[13])
                      {
                        goto LABEL_102;
                      }

                      memcpy(v252, v259, sizeof(v252));
                      v253 = 0;
                      OUTLINED_FUNCTION_75_0();
                      sub_193448804(v120, v121, v122, v123);
                      OUTLINED_FUNCTION_75_0();
                      sub_193448804(v124, v125, v126, v127);
                      OUTLINED_FUNCTION_247_2(v252);
                    }

                    memcpy(v257, v260, sizeof(v257));
                    v101 = v260[13];
                    memcpy(v256, v263, sizeof(v256));
                    v102 = v263[13];
                    if (v260[13])
                    {
                      memcpy(v252, v260, sizeof(v252));
                      v253 = v260[13];
                      OUTLINED_FUNCTION_358_1(v248);
                      if (v102)
                      {
                        memcpy(v246, v263, sizeof(v246));
                        v247 = v102;
                        OUTLINED_FUNCTION_9_12();
                        sub_193448804(v128, v129, v130, v131);
                        OUTLINED_FUNCTION_9_12();
                        sub_193448804(v132, v133, v134, v135);
                        OUTLINED_FUNCTION_332_0();
                        OUTLINED_FUNCTION_9_12();
                        sub_193448804(v136, v137, v138, v139);
                        static ToolKitToolContainerDefinition.== infix(_:_:)();
                        v141 = v140;
                        OUTLINED_FUNCTION_356_1();
                        sub_193713244(v244);
                        OUTLINED_FUNCTION_355_1();
                        sub_193713244(v245);
                        OUTLINED_FUNCTION_357_0();
                        v247 = v101;
                        OUTLINED_FUNCTION_175();
                        sub_19344E6DC(v142, v143, v144);
                        if ((v141 & 1) == 0)
                        {
                          goto LABEL_32;
                        }

LABEL_106:
                        if ((sub_193714598(v181, v10, ToolKitToolToolDefinition.Version1.VisibilityFlag.rawValue.getter, v145) & 1) == 0)
                        {
                          goto LABEL_32;
                        }

                        if (v182)
                        {
                          if (!v11)
                          {
                            goto LABEL_32;
                          }

                          v174 = v183 == v1 && v182 == v11;
                          if (!v174 && (sub_19393CA30() & 1) == 0)
                          {
                            goto LABEL_32;
                          }
                        }

                        else if (v11)
                        {
                          goto LABEL_32;
                        }

                        if (v184)
                        {
                          if (!v237)
                          {
                            goto LABEL_32;
                          }

                          v175 = v185 == v240 && v184 == v237;
                          if (!v175 && (sub_19393CA30() & 1) == 0)
                          {
                            goto LABEL_32;
                          }
                        }

                        else if (v237)
                        {
                          goto LABEL_32;
                        }

                        if (v186)
                        {
                          if (!v238)
                          {
                            goto LABEL_32;
                          }

                          v176 = v187 == v236 && v186 == v238;
                          if (!v176 && (sub_19393CA30() & 1) == 0)
                          {
                            goto LABEL_32;
                          }
                        }

                        else if (v238)
                        {
                          goto LABEL_32;
                        }

                        if (v188)
                        {
                          if (!v242)
                          {
                            goto LABEL_32;
                          }

                          v177 = v189 == v241 && v188 == v242;
                          if (!v177 && (sub_19393CA30() & 1) == 0)
                          {
                            goto LABEL_32;
                          }
                        }

                        else if (v242)
                        {
                          goto LABEL_32;
                        }

                        if (sub_19344FC94(v190, v178))
                        {
                          sub_193713C3C(v191, v9);
                        }

                        goto LABEL_32;
                      }

                      goto LABEL_103;
                    }

                    if (!v263[13])
                    {
                      memcpy(v252, v260, sizeof(v252));
                      v253 = 0;
                      OUTLINED_FUNCTION_75_0();
                      sub_193448804(v166, v167, v168, v169);
                      OUTLINED_FUNCTION_75_0();
                      sub_193448804(v170, v171, v172, v173);
                      OUTLINED_FUNCTION_247_2(v252);
                      goto LABEL_106;
                    }

LABEL_102:
                    OUTLINED_FUNCTION_9_12();
                    sub_193448804(v146, v147, v148, v149);
                    OUTLINED_FUNCTION_9_12();
                    sub_193448804(v150, v151, v152, v153);
LABEL_104:
                    memcpy(v252, v257, sizeof(v252));
                    v253 = v101;
                    memcpy(v254, v256, sizeof(v254));
                    v255 = v102;
                    v45 = &qword_1EAE41AA0;
                    v46 = &qword_1939807A0;
                    goto LABEL_51;
                  }

                  sub_193438388(v180);
                  sub_193438388(v196);
                  sub_193438388(v180);
                }

                else
                {
                  sub_193438388(v180);
                  sub_193438388(v196);
                  if ((~v196 & 0xF000000000000007) == 0)
                  {
                    sub_1934354B4(v180);
                    goto LABEL_88;
                  }
                }

                sub_1934354B4(v180);
                sub_1934354B4(v196);
                goto LABEL_32;
              }

              v66 = OUTLINED_FUNCTION_61_21();
              sub_1934D1694(v66, v67, v68, v69);
              sub_1934D1694(v210, 1, v211, v212);
              v70 = OUTLINED_FUNCTION_61_21();
              sub_1934D1694(v70, v71, v72, v73);
            }

            OUTLINED_FUNCTION_75_0();
            sub_1934D16DC(v74, v75, v76, v77);
            OUTLINED_FUNCTION_46_14();
            sub_1934D16DC(v78, v79, v80, v81);
            goto LABEL_32;
          }

          OUTLINED_FUNCTION_358_1(v246);
          OUTLINED_FUNCTION_393(__dst, v245);
          OUTLINED_FUNCTION_393(__src, v245);
          v43 = OUTLINED_FUNCTION_332_0();
          OUTLINED_FUNCTION_393(v43, v44);
          sub_1937379F0(v246);
        }

        else
        {
          if (!__src[13])
          {
            v180 = v6;
            memcpy(v252, __dst, sizeof(v252));
            v253 = 0;
            OUTLINED_FUNCTION_75_0();
            sub_193448804(v47, v48, v49, v50);
            OUTLINED_FUNCTION_75_0();
            sub_193448804(v51, v52, v53, v54);
            OUTLINED_FUNCTION_247_2(v252);
            goto LABEL_53;
          }

          OUTLINED_FUNCTION_393(__dst, v252);
          OUTLINED_FUNCTION_393(__src, v252);
        }

        memcpy(v252, v257, sizeof(v252));
        v253 = v27;
        memcpy(v254, v256, sizeof(v254));
        v255 = v28;
        v45 = &unk_1EAE41B18;
        v46 = &unk_193980820;
LABEL_51:
        sub_19344E6DC(v252, v45, v46);
        goto LABEL_32;
      }

      sub_193437C90(v229);
      OUTLINED_FUNCTION_161_7(v228);
    }

    else
    {
      v240 = v12;
      v24 = v228;
      OUTLINED_FUNCTION_446(v229);
      if ((~v228 & 0xF000000000000007) == 0)
      {
        sub_193444060(v229);
        goto LABEL_34;
      }
    }

    sub_193444060(v229);
    sub_193444060(v24);
    goto LABEL_32;
  }

  if (v7)
  {
    v15 = v4 == v8 && v5 == v7;
    if (v15)
    {
      goto LABEL_10;
    }

    v178 = *(v1 + 616);
    v16 = *(v1 + 600);
    v8 = *(v1 + 608);
    v179 = *(v1 + 544);
    v17 = *(v1 + 624);
    v1 = *(v1 + 592);
    v18 = sub_19393CA30();
    v14 = v17;
    v10 = v179;
    v13 = v16;
    if (v18)
    {
      goto LABEL_10;
    }
  }

LABEL_32:
  OUTLINED_FUNCTION_116();
}

void ToolKitToolToolDefinition.Version1.hash(into:)()
{
  OUTLINED_FUNCTION_117();
  v2 = v1;
  v3 = *(v0 + 8);
  v4 = *(v0 + 24);
  v80 = *(v0 + 32);
  HIDWORD(v76) = *(v0 + 40);
  HIDWORD(v99) = *(v0 + 41);
  v5 = *(v0 + 56);
  v100 = *(v0 + 48);
  v92 = *(v0 + 16);
  v93 = *(v0 + 64);
  v94 = *(v0 + 192);
  v102 = *(v0 + 184);
  v103 = *(v0 + 200);
  v104 = *(v0 + 208);
  v105 = *(v0 + 216);
  v106 = *(v0 + 72);
  v122 = *(v0 + 232);
  v68 = *(v0 + 224);
  v72 = *(v0 + 240);
  v108 = *(v0 + 248);
  v109 = *(v0 + 256);
  v110 = *(v0 + 264);
  v88 = *(v0 + 272);
  HIDWORD(v84) = *(v0 + 280);
  HIDWORD(v111) = *(v0 + 281);
  v112 = *(v0 + 288);
  v113 = *(v0 + 296);
  v6 = *(v0 + 304);
  v115 = *(v0 + 312);
  memcpy(__dst, (v0 + 320), sizeof(__dst));
  v116 = *(v0 + 424);
  memcpy(v130, (v0 + 432), sizeof(v130));
  v7 = *(v0 + 536);
  v114 = *(v0 + 560);
  v95 = *(v0 + 552);
  v96 = *(v0 + 568);
  v8 = *(v0 + 576);
  v97 = *(v0 + 584);
  v98 = *(v0 + 600);
  v117 = *(v0 + 544);
  v118 = *(v0 + 608);
  v119 = *(v0 + 592);
  v120 = *(v0 + 616);
  v121 = *(v0 + 624);
  if (v3)
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_187();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v101 = v6;
  if (v4)
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_344();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v9 = v106;
  if (HIDWORD(v99))
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    *v127 = v80;
    v128 = BYTE4(v76) & 1;
    v10 = ToolKitToolToolDefinition.Version1.ToolType.rawValue.getter();
    MEMORY[0x193B18030](v10);
  }

  v107 = v7;
  sub_193736770(v2, v100);
  OUTLINED_FUNCTION_380();
  v11 = v114;
  if (v12)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    *v127 = v5;
    OUTLINED_FUNCTION_103_0();

    ToolKitToolTypeInstance.hash(into:)();
  }

  v13 = v118;
  v14 = v119;
  v15 = v108;
  v16 = v103;
  if (v9)
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (v102)
  {
    memcpy(v123, (v0 + 80), sizeof(v123));
    v124 = v102;
    sub_19393CAD0();
    memcpy(v125, (v0 + 80), sizeof(v125));
    v126 = v102;
    sub_1936D02FC(v125, v127);
    v24 = ToolKitToolAppDefinition.hash(into:)(v2, v17, v18, v19, v20, v21, v22, v23, v64, v68, v72, v76, v80, v84, v88, SHIDWORD(v88));
    OUTLINED_FUNCTION_373_1(v24, v25, v26, v27, v28, v29, v30, v31, v65, v69, v73, v77, v81, v85, v89, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123[0]);
    sub_1937379F0(v127);
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (v16)
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_438();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  sub_1937366D4(v2, v104);
  sub_1934D11C8(v2, v105);
  if (v122 == 1)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_103_0();
  if (v122)
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_186_3();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (!v15)
  {
LABEL_28:
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_259_1();
    sub_19393C640();
  }

  sub_193736658(v2, v109);
  OUTLINED_FUNCTION_54_15();
  sub_193736ED4();
  v32 = v107;
  if ((v111 & 0x100000000) != 0)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    *v127 = v88;
    v128 = BYTE4(v84) & 1;
    v33 = ToolKitToolToolDefinition.Version1.AuthenticationPolicy.rawValue.getter();
    MEMORY[0x193B18030](v33);
  }

  sub_1937364D0(v2, v112);
  sub_193736454(v2, v113);
  OUTLINED_FUNCTION_251_0();
  if (v12)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    *v127 = v101;
    OUTLINED_FUNCTION_103_0();

    ToolKitToolToolDefinition.Version1.ToolIcon.hash(into:)();
  }

  sub_193736770(v2, v115);
  if (v116)
  {
    memcpy(v123, __dst, sizeof(v123));
    v124 = v116;
    OUTLINED_FUNCTION_103_0();
    memcpy(v125, __dst, sizeof(v125));
    v126 = v116;
    sub_1936D0610(v125, v127);
    v41 = ToolKitToolContainerDefinition.hash(into:)(v2, v34, v35, v36, v37, v38, v39, v40, v64, v68, v72, v76, v80, v84, v88, SHIDWORD(v88));
    OUTLINED_FUNCTION_373_1(v41, v42, v43, v44, v45, v46, v47, v48, v66, v70, v74, v78, v82, v86, v90, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123[0]);
    sub_193713244(v127);
    if (v32)
    {
LABEL_37:
      OUTLINED_FUNCTION_448(v123);
      v124 = v32;
      OUTLINED_FUNCTION_103_0();
      OUTLINED_FUNCTION_448(v125);
      v126 = v32;
      sub_1936D0610(v125, v127);
      v56 = ToolKitToolContainerDefinition.hash(into:)(v2, v49, v50, v51, v52, v53, v54, v55, v64, v68, v72, v76, v80, v84, v88, SHIDWORD(v88));
      OUTLINED_FUNCTION_373_1(v56, v57, v58, v59, v60, v61, v62, v63, v67, v71, v75, v79, v83, v87, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123[0]);
      sub_193713244(v127);
      goto LABEL_40;
    }
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
    if (v107)
    {
      goto LABEL_37;
    }
  }

  OUTLINED_FUNCTION_104_0();
LABEL_40:
  OUTLINED_FUNCTION_54_15();
  sub_193736ED4();
  if (v11)
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
    if (v8)
    {
      goto LABEL_42;
    }
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
    if (v8)
    {
LABEL_42:
      OUTLINED_FUNCTION_103_0();
      sub_19393C640();
      if (v14)
      {
        goto LABEL_43;
      }

LABEL_47:
      OUTLINED_FUNCTION_104_0();
      if (v13)
      {
        goto LABEL_44;
      }

LABEL_48:
      OUTLINED_FUNCTION_104_0();
      goto LABEL_49;
    }
  }

  OUTLINED_FUNCTION_104_0();
  if (!v14)
  {
    goto LABEL_47;
  }

LABEL_43:
  OUTLINED_FUNCTION_103_0();
  sub_19393C640();
  if (!v13)
  {
    goto LABEL_48;
  }

LABEL_44:
  OUTLINED_FUNCTION_103_0();
  sub_19393C640();
LABEL_49:
  sub_1934D11C8(v2, v120);
  sub_1937363A4(v2, v121);
  OUTLINED_FUNCTION_116();
}